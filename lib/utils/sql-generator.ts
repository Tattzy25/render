import { parseCSVLine, escapeSQLString } from "./csv-parser";

export function generateTableSQL(
  tableName: string,
  headers: string[],
  rows: string[][]
): string {
  let sql = `CREATE TABLE IF NOT EXISTS ${tableName} (\n`;
  
  const columns: string[] = [];
  headers.forEach((header, index) => {
    const sampleValue = rows[0]?.[index] || '';
    const type = inferSQLType(sampleValue, header);
    columns.push(`  ${header} ${type}`);
  });
  
  sql += columns.join(',\n');
  sql += '\n);\n\n';
  
  sql += `TRUNCATE TABLE ${tableName};\n\n`;
  
  rows.forEach((row) => {
    const values = row.map((val, idx) => {
      const trimmed = val.trim();
      return trimmed === '' ? 'NULL' : escapeSQLString(trimmed);
    });
    
    sql += `INSERT INTO ${tableName} (${headers.join(', ')}) VALUES (${values.join(', ')});\n`;
  });
  
  return sql;
}

function inferSQLType(value: string, columnName: string): string {
  if (columnName.toLowerCase().includes('id')) {
    return 'SERIAL PRIMARY KEY';
  }
  
  if (columnName.toLowerCase().includes('rank') || 
      columnName.toLowerCase().includes('level') ||
      columnName.toLowerCase().includes('category_id')) {
    return 'INTEGER';
  }
  
  if (columnName.toLowerCase().includes('is_') || 
      columnName === 'is_common') {
    return 'BOOLEAN';
  }
  
  if (value === 'TRUE' || value === 'FALSE') {
    return 'BOOLEAN';
  }
  
  if (!isNaN(Number(value)) && value !== '') {
    return 'INTEGER';
  }
  
  if (columnName.toLowerCase().includes('url') || 
      columnName.toLowerCase().includes('description')) {
    return 'TEXT';
  }
  
  return 'VARCHAR(500)';
}


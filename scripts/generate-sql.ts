import { readFileSync, writeFileSync } from 'fs';
import { join } from 'path';
import { parseCSVLine } from '../lib/utils/csv-parser';
import { generateTableSQL } from '../lib/utils/sql-generator';

const csvFiles = [
  { file: 'color_data - Sheet1.csv', table: 'colors' },
  { file: 'mood_data - Sheet1.csv', table: 'moods' },
  { file: 'skintone_data - Sheet1.csv', table: 'skintones' },
  { file: 'placement_data - Sheet1.csv', table: 'placements' },
];

csvFiles.forEach(({ file, table }) => {
  const csvPath = join(process.cwd(), '..', file);
  const content = readFileSync(csvPath, 'utf-8');
  const lines = content.split('\n').filter(line => line.trim());
  
  const headers = parseCSVLine(lines[0]);
  const rows = lines.slice(1).map(parseCSVLine);
  
  const sql = generateTableSQL(table, headers, rows);
  const sqlPath = join(process.cwd(), 'scripts', 'sql', `${table}.sql`);
  
  writeFileSync(sqlPath, sql, 'utf-8');
  console.log(`Generated ${sqlPath}`);
});


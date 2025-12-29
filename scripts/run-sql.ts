import { readFileSync } from 'fs';
import { join } from 'path';
import { sql } from '../lib/db/connection';

async function runSQLFile(filePath: string) {
  const sqlContent = readFileSync(filePath, 'utf-8');
  const statements = sqlContent
    .split(';')
    .map(s => s.trim())
    .filter(s => s.length > 0);
  
  for (const statement of statements) {
    try {
      await sql.query(statement);
      console.log(`✓ Executed: ${statement.substring(0, 50)}...`);
    } catch (error) {
      console.error(`✗ Error: ${error}`);
      throw error;
    }
  }
}

async function main() {
  const tables = ['colors', 'moods', 'skintones', 'placements'];
  
  for (const table of tables) {
    const filePath = join(process.cwd(), 'scripts', 'sql', `${table}.sql`);
    console.log(`\nRunning ${table}.sql...`);
    await runSQLFile(filePath);
    console.log(`✓ ${table} completed\n`);
  }
  
  console.log('All SQL files executed successfully!');
  process.exit(0);
}

main().catch((error) => {
  console.error('Failed:', error);
  process.exit(1);
});


import { readFileSync } from 'fs';
import { join } from 'path';
import { neon } from '@neondatabase/serverless';

const DATABASE_URL = process.env.DATABASE_URL;
if (!DATABASE_URL) {
  throw new Error('DATABASE_URL environment variable is required');
}
const sql = neon(DATABASE_URL);

async function runMigration(filePath: string) {
  const sqlContent = readFileSync(filePath, 'utf-8');
  const statements = sqlContent
    .split(';')
    .map(s => s.trim())
    .filter(s => s.length > 0);
  
  for (const statement of statements) {
    try {
      await sql.query(statement);
      console.log(`  ✓ Executed statement`);
    } catch (error: any) {
      console.error(`  ✗ Error: ${error.message}`);
      throw error;
    }
  }
}

async function main() {
  const migrations = [
    '001_create_colors.sql',
    '002_create_moods.sql',
    '003_create_skintones.sql',
    '004_create_placements.sql',
  ];
  
  for (const migration of migrations) {
    const filePath = join(process.cwd(), 'db', 'migrations', migration);
    console.log(`Running ${migration}...`);
    await runMigration(filePath);
    console.log(`✓ ${migration} completed\n`);
  }
  
  console.log('All migrations executed successfully!');
  process.exit(0);
}

main().catch((error) => {
  console.error('Failed:', error);
  process.exit(1);
});


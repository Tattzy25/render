import { createArticlesTable } from "../lib/db/migrations";

async function main() {
  try {
    console.log('Creating table...');
    await createArticlesTable();
    console.log('Done!');
    process.exit(0);
  } catch (error) {
    console.error('Failed to create table:', error);
    process.exit(1);
  }
}

main();


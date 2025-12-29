import { sql } from "@/lib/db/connection";

export async function createArticlesTable() {
  await sql`
    CREATE TABLE IF NOT EXISTS articles (
      id SERIAL PRIMARY KEY,
      title VARCHAR(255) NOT NULL,
      content TEXT,
      author VARCHAR(100),
      blob_url TEXT,
      blob_path VARCHAR(500),
      created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
      published BOOLEAN DEFAULT FALSE
    )
  `;
  
  return { success: true, message: 'Table created successfully' };
}


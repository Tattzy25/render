import { neon } from "@neondatabase/serverless";

export interface Color {
  id: number;
  color_name: string;
  slug: string;
  description: string;
  color_type: string;
  popularity_rank: number;
  source: string | null;
  timestamp: string | null;
  urls: string | null;
}

export async function getColors(limit?: number): Promise<Color[]> {
  const databaseUrl = process.env.DATABASE_URL;
  if (!databaseUrl) {
    throw new Error("DATABASE_URL environment variable is required");
  }

  const sql = neon(databaseUrl);

  const query = sql`
    SELECT * FROM colors
    ORDER BY popularity_rank ASC
    ${limit ? sql`LIMIT ${limit}` : sql``}
  `;

  const result = await query;
  return result as Color[];
}

export async function getColorById(id: number): Promise<Color | null> {
  const databaseUrl = process.env.DATABASE_URL;
  if (!databaseUrl) {
    throw new Error("DATABASE_URL environment variable is required");
  }

  const sql = neon(databaseUrl);

  const result = await sql`
    SELECT * FROM colors WHERE id = ${id}
  `;
  return (result[0] as Color) || null;
}

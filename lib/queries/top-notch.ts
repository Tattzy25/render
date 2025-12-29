import { sql } from "@/lib/db/connection";

export async function topNotch(param1: string, param2: string) {
  const result = await sql`
    SELECT ${param1} as first_param, ${param2} as second_param
  `;
  
  return result;
}


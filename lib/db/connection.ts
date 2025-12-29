import { neon } from "@neondatabase/serverless";
import { DATABASE_URL } from "@/lib/config/env";

export const sql = neon(DATABASE_URL);


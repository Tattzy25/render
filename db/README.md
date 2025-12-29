# Database Setup & Migrations

This directory contains all database migrations and connection configuration for the Neon database.

## Database Connection

### Connection String
The application connects to Neon using the connection string format:
```
postgresql://username:password@host/database?sslmode=require&channel_binding=require
```

### Environment Variables
Set these in your `.env.local` file:
```env
DATABASE_URL=postgresql://neondb_owner:password@ep-silent-cherry-ad7zhlxo-pooler.c-2.us-east-1.aws.neon.tech/neondb?sslmode=require&channel_binding=require
NEON_REST_API_URL=https://ep-silent-cherry-ad7zhlxo.apirest.c-2.us-east-1.aws.neon.tech/neondb/rest/v1
NEON_API_KEY=your_api_key_here
```

## Database Tables

### 1. `colors` Table
Stores tattoo color information.
- **Rows**: 21
- **Columns**: id, color_name, slug, description, color_type, popularity_rank, source, timestamp, urls

### 2. `moods` Table
Stores tattoo mood/aesthetic information.
- **Rows**: 20
- **Columns**: id, mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls

### 3. `skintones` Table
Stores skin tone reference data.
- **Rows**: 15
- **Columns**: id, tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls

### 4. `placements` Table
Stores tattoo placement/body location information.
- **Rows**: 68
- **Columns**: id, placement_name, slug, description, body_area, pain_level, visibility_level, popularity_rank, is_common, source, timestamp, urls

## Running Migrations

### Prerequisites
1. Install dependencies:
```bash
pnpm install
```

2. Set environment variables (see above)

### Execute Migrations
Run all migrations against Neon:
```bash
pnpm migrate
```

This command:
1. Reads SQL files from `db/migrations/` in order
2. Executes each CREATE TABLE statement
3. Truncates existing data (if any)
4. Inserts all rows from the CSV data

### Migration Files
- `001_create_colors.sql` - Creates colors table and inserts 21 rows
- `002_create_moods.sql` - Creates moods table and inserts 20 rows
- `003_create_skintones.sql` - Creates skintones table and inserts 15 rows
- `004_create_placements.sql` - Creates placements table and inserts 68 rows

## REST API Endpoints

### Base URL
```
https://ep-silent-cherry-ad7zhlxo.apirest.c-2.us-east-1.aws.neon.tech/neondb/rest/v1
```

### Authentication
All requests require:
- Header: `apikey: YOUR_API_KEY`
- Header: `Authorization: Bearer YOUR_API_KEY`

### Available Endpoints

#### Read Colors
```bash
GET /colors
GET /colors?popularity_rank=eq.1
```

#### Read Moods
```bash
GET /moods
GET /moods?intensity_level=eq.8
```

#### Read Skintones
```bash
GET /skintones
GET /skintones?category_id=eq.1
```

#### Read Placements
```bash
GET /placements
GET /placements?is_common=eq.true
GET /placements?body_area=eq.Arms
```

### Example cURL Request
```bash
curl -X GET \
  'https://ep-silent-cherry-ad7zhlxo.apirest.c-2.us-east-1.aws.neon.tech/neondb/rest/v1/colors' \
  -H 'apikey: YOUR_API_KEY' \
  -H 'Authorization: Bearer YOUR_API_KEY'
```

## Code Structure

### Connection
Located in `lib/db/connection.ts`:
```typescript
import { neon } from "@neondatabase/serverless";
import { DATABASE_URL } from "@/lib/config/env";

export const sql = neon(DATABASE_URL);
```

### Migration Script
Located in `scripts/run-migrations.ts`:
- Reads SQL files from `db/migrations/`
- Executes statements using `sql.query()`
- Handles errors and provides feedback

### REST API Client
Located in `lib/api/client.ts`:
- Handles authentication headers
- Makes requests to Neon REST API
- Returns JSON responses

## How It Was Run

The migrations were executed using:
```bash
cd render
pnpm migrate
```

The script:
1. Connected to Neon using the connection string
2. Executed each SQL file in sequence
3. Created all 4 tables
4. Inserted all 124 rows of data (21 + 20 + 15 + 68)

## Data Source

All data was imported from CSV files:
- `color_data - Sheet1.csv` → `colors` table
- `mood_data - Sheet1.csv` → `moods` table
- `skintone_data - Sheet1.csv` → `skintones` table
- `placement_data - Sheet1.csv` → `placements` table

**No data was altered** - all rows and columns were preserved exactly as they appeared in the CSV files.


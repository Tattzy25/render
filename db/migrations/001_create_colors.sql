CREATE TABLE IF NOT EXISTS colors (
  id SERIAL PRIMARY KEY,
  color_name VARCHAR(500),
  slug VARCHAR(500),
  description TEXT,
  color_type VARCHAR(500),
  popularity_rank INTEGER,
  source VARCHAR(500),
  timestamp VARCHAR(500),
  urls TEXT
);

TRUNCATE TABLE colors;

INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Monochrome (Purple)', 'monochrome-purple', 'Single-color purple designs with varying shades', 'monochrome', 15, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('black', 'black', 'Solid black ink tattoos', 'standard', 1, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Neon / High-Vibrancy', 'neon-high-vibrancy', 'Extremely bright, fluorescent colors', 'special', 12, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Jewel Tones', 'jewel-tones', 'Rich, saturated colors resembling gemstones', 'standard', 8, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Black & Grey Only', 'black-grey-only', 'Tattoos using only black and grey ink', 'standard', 2, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Duotone', 'duotone', 'Two-color designs with specific color combinations', 'special', 14, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('High-Saturation', 'high-saturation', 'Intensely saturated, vibrant colors', 'standard', 10, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Pastel', 'pastel', 'Soft, muted colors with low saturation', 'special', 16, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Full Color', 'full-color', 'Tattoos utilizing a full spectrum of colors', 'standard', 5, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('blue', 'blue', 'Various shades of blue ink', 'standard', 6, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Black & Grey', 'black-grey', 'Traditional black and grey tattoo style', 'standard', 3, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('green', 'green', 'Various shades of green ink', 'standard', 7, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('white', 'white', 'White ink tattoos, often used for highlights', 'accent', 18, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('yellow', 'yellow', 'Various shades of yellow ink', 'standard', 13, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Sepia', 'sepia', 'Brown-toned colors resembling antique photographs', 'special', 17, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Monochrome (Blue)', 'monochrome-blue', 'Single-color blue designs with varying shades', 'monochrome', 11, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('red', 'red', 'Various shades of red ink', 'standard', 4, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Monochrome (Red)', 'monochrome-red', 'Single-color red designs with varying shades', 'monochrome', 9, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Muted / Earth Tones', 'muted-earth-tones', 'Subdued, natural colors inspired by earth elements', 'standard', 19, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('Monochrome (Green)', 'monochrome-green', 'Single-color green designs with varying shades', 'monochrome', 20, NULL, NULL, NULL);
INSERT INTO colors (color_name, slug, description, color_type, popularity_rank, source, timestamp, urls) VALUES ('White-Ink Accents', 'white-ink-accents', 'White ink used for highlights and accents', 'accent', 21, NULL, NULL, NULL);


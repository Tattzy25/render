CREATE TABLE IF NOT EXISTS skintones (
  id SERIAL PRIMARY KEY,
  tone_name VARCHAR(500),
  display_name VARCHAR(500),
  category_id INTEGER,
  hex_color VARCHAR(500),
  secondary_hex_color VARCHAR(500),
  fitzpatrick_scale VARCHAR(500),
  undertone_type VARCHAR(500),
  popularity_rank INTEGER,
  source VARCHAR(500),
  timestamp VARCHAR(500),
  urls TEXT
);

TRUNCATE TABLE skintones;

INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('porcelain_fair', 'Porcelain Fair', 1, '#FFDBAC', '#F8D4B4', 'I', 'cool', 1, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('ivory_light', 'Ivory Light', 1, '#F3CFA6', '#EBC9A3', 'I-II', 'neutral', 2, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('beige_light', 'Beige Light', 1, '#E8C19A', '#DFB792', 'II', 'warm', 3, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('sand_medium', 'Sand Medium', 2, '#E4BC99', '#D9AF8B', 'III', 'neutral', 4, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('golden_medium', 'Golden Medium', 2, '#D9AF8B', '#CEA27D', 'III-IV', 'warm', 5, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('honey_medium', 'Honey Medium', 2, '#CEA27D', '#C3956F', 'IV', 'warm', 6, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('olive_tan', 'Olive Tan', 3, '#C88F6A', '#BD835E', 'IV', 'olive', 7, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('caramel_tan', 'Caramel Tan', 3, '#BD835E', '#B27752', 'IV-V', 'warm', 8, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('bronze_tan', 'Bronze Tan', 3, '#B27752', '#A76B46', 'V', 'warm', 9, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('cocoa_brown', 'Cocoa Brown', 4, '#A57254', '#9A6648', 'V', 'neutral', 10, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('chestnut_brown', 'Chestnut Brown', 4, '#9A6648', '#8F5A3C', 'V-VI', 'warm', 11, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('mahogany_brown', 'Mahogany Brown', 4, '#8F5A3C', '#844E30', 'VI', 'warm', 12, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('espresso_dark', 'Espresso Dark', 5, '#7C533A', '#71472E', 'VI', 'neutral', 13, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('ebony_dark', 'Ebony Dark', 5, '#71472E', '#663B22', 'VI', 'cool', 14, NULL, NULL, NULL);
INSERT INTO skintones (tone_name, display_name, category_id, hex_color, secondary_hex_color, fitzpatrick_scale, undertone_type, popularity_rank, source, timestamp, urls) VALUES ('midnight_dark', 'Midnight Dark', 5, '#663B22', '#5B2F16', 'VI', 'cool', 15, NULL, NULL, NULL);


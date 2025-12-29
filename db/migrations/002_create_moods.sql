CREATE TABLE IF NOT EXISTS moods (
  id SERIAL PRIMARY KEY,
  mood_name VARCHAR(500),
  slug VARCHAR(500),
  description TEXT,
  color_palette_type VARCHAR(500),
  intensity_level INTEGER,
  popularity_rank INTEGER,
  source VARCHAR(500),
  timestamp VARCHAR(500),
  urls TEXT
);

TRUNCATE TABLE moods;

INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Bold', 'bold', 'Strong, confident designs with heavy lines and striking contrasts', 'vibrant', 8, 1, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Vibrant', 'vibrant', 'Energetic, colorful designs that pop with life and movement', 'vibrant', 9, 2, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Dark', 'dark', 'Mysterious, shadowy designs with gothic or occult influences', 'cool', 7, 3, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Elegant', 'elegant', 'Sophisticated, refined designs with graceful lines and subtle details', 'neutral', 4, 4, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Bohemian', 'bohemian', 'Free-spirited, artistic designs with organic patterns and natural elements', 'warm', 6, 5, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Surreal', 'surreal', 'Dreamlike, fantastical designs that bend reality and imagination', 'vibrant', 7, 6, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Playful', 'playful', 'Fun, whimsical designs with lighthearted themes and cheerful elements', 'warm', 5, 7, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Abstract', 'abstract', 'Non-representational designs focusing on shapes, colors, and forms', 'vibrant', 6, 8, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Romantic', 'romantic', 'Loving, sentimental designs with soft lines and heartfelt themes', 'warm', 4, 9, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Mystic', 'mystic', 'Spiritual, esoteric designs with symbolic and metaphysical elements', 'cool', 6, 10, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Futuristic', 'futuristic', 'High-tech, cyberpunk designs with geometric patterns and metallic themes', 'cool', 8, 11, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Gothic', 'gothic', 'Dark romantic designs with medieval influences and dramatic contrasts', 'cool', 7, 12, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Nostalgic', 'nostalgic', 'Sentimental designs that evoke memories and vintage aesthetics', 'muted', 4, 13, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Energetic', 'energetic', 'Dynamic, active designs that convey movement and excitement', 'vibrant', 9, 14, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Ethereal', 'ethereal', 'Delicate, otherworldly designs with soft, dreamlike qualities', 'neutral', 3, 15, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Vintage', 'vintage', 'Classic, retro designs inspired by historical periods and antique styles', 'muted', 5, 16, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Minimal', 'minimal', 'Simple, clean designs with essential elements and negative space', 'neutral', 2, 17, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Whimsical', 'whimsical', 'Charming, fanciful designs with playful imagination and light humor', 'warm', 5, 18, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Tranquil', 'tranquil', 'Peaceful, calming designs that evoke serenity and balance', 'cool', 3, 19, NULL, NULL, NULL);
INSERT INTO moods (mood_name, slug, description, color_palette_type, intensity_level, popularity_rank, source, timestamp, urls) VALUES ('Melancholic', 'melancholic', 'Thoughtful, introspective designs with emotional depth and somber tones', 'muted', 6, 20, NULL, NULL, NULL);


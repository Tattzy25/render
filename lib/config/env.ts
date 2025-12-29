export const getEnvVar = (key: string, required = true): string => {
  const value = process.env[key];
  
  if (required && (!value || value.trim() === '')) {
    throw new Error(`${key} environment variable is required`);
  }
  
  if (!required) {
    return value || '';
  }
  
  return value as string;
};

export const DATABASE_URL = getEnvVar('DATABASE_URL');
export const NEON_REST_API_URL = getEnvVar('NEON_REST_API_URL');
export const NEON_API_KEY = getEnvVar('NEON_API_KEY');


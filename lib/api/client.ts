import { NEON_REST_API_URL, NEON_API_KEY } from "@/lib/config/env";

interface RestRequestOptions {
  method?: string;
  body?: any;
  headers?: Record<string, string>;
}

export async function restRequest(
  endpoint: string,
  options: RestRequestOptions = {}
): Promise<any> {
  const { method = 'GET', body, headers = {} } = options;

  const response = await fetch(`${NEON_REST_API_URL}${endpoint}`, {
    method,
    headers: {
      'Content-Type': 'application/json',
      'apikey': NEON_API_KEY,
      'Authorization': `Bearer ${NEON_API_KEY}`,
      'Prefer': 'return=representation',
      ...headers,
    },
    body: body ? JSON.stringify(body) : undefined,
  });

  if (!response.ok) {
    const error = await response.text();
    throw new Error(`REST API error: ${response.status} - ${error}`);
  }

  const contentType = response.headers.get('content-type');
  if (contentType?.includes('application/json')) {
    return await response.json();
  }
  
  return null;
}


import { restRequest } from "@/lib/api/client";
import { Article, ArticleFilters } from "@/lib/types/article";

export async function readArticles(filters?: ArticleFilters): Promise<Article[]> {
  let endpoint = '/articles';
  
  if (filters) {
    const params = new URLSearchParams();
    Object.entries(filters).forEach(([key, value]) => {
      params.append(key, `eq.${value}`);
    });
    endpoint += `?${params.toString()}`;
  }

  return await restRequest(endpoint, { method: 'GET' });
}

export async function writeArticle(data: Article): Promise<Article> {
  return await restRequest('/articles', {
    method: 'POST',
    body: data,
  });
}

export async function updateArticle(
  id: number,
  data: Partial<Article>
): Promise<Article> {
  return await restRequest(`/articles?id=eq.${id}`, {
    method: 'PATCH',
    body: data,
  });
}

export async function deleteArticle(id: number): Promise<void> {
  await restRequest(`/articles?id=eq.${id}`, {
    method: 'DELETE',
  });
}


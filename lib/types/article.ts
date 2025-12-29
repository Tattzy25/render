export interface Article {
  id?: number;
  title: string;
  content?: string;
  author?: string;
  blob_url?: string;
  blob_path?: string;
  published?: boolean;
  created_at?: string;
  updated_at?: string;
}

export interface ArticleFilters {
  [key: string]: any;
}

export interface BlobOptions {
  access?: 'public' | 'private';
  contentType?: string;
  addRandomSuffix?: boolean;
}

export interface UploadResult {
  blob: {
    url: string;
    pathname: string;
  };
  article: Article | Article[];
}


import { uploadBlob } from "@/lib/services/blob.service";
import { writeArticle } from "@/lib/services/article.service";
import { Article, BlobOptions, UploadResult } from "@/lib/types/article";

export async function uploadBlobAndSave(
  filename: string,
  content: string | Blob | File | ArrayBuffer,
  articleData: Omit<Article, 'id' | 'created_at' | 'updated_at'>,
  blobOptions?: BlobOptions
): Promise<UploadResult> {
  const { url, pathname } = await uploadBlob(filename, content, blobOptions);

  const article = await writeArticle({
    ...articleData,
    blob_url: url,
    blob_path: pathname,
  });

  return {
    blob: { url, pathname },
    article,
  };
}


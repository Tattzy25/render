import { put } from "@vercel/blob";
import { BlobOptions } from "@/lib/types/article";

export async function uploadBlob(
  filename: string,
  content: string | Blob | File | ArrayBuffer,
  options?: BlobOptions
) {
  return await put(filename, content, {
    access: options?.access || 'public',
    contentType: options?.contentType,
    addRandomSuffix: options?.addRandomSuffix,
  });
}


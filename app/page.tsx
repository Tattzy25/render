import { Button } from "@/components/ui/button"
import { uploadBlobAndSave } from "@/lib/services/integration.service";

export default async function Home() {
  return (
    <div>
      <Button>Click me</Button>
    </div>
  )
}
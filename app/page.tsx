
import { HorizontalScroll } from '@/components/horizontal-scroll';
import { HorizontalScroll2 } from '@/components/horizontal-scroll-2';
import { VerticalScroll } from '@/components/vertical-scroll';
import { VerticalScroll2 } from '@/components/vertical-scroll-2';

export default async function Home() {
  return (
    <div className="flex min-h-screen flex-col items-center justify-center p-4">
      <div className="w-full max-w-4xl mb-[10px]">
        <VerticalScroll2 />
      </div>
      <div className="w-full max-w-4xl mb-[10px]">
        <HorizontalScroll2 />
      </div>
      <div className="w-full max-w-4xl mb-[10px]">
        <VerticalScroll />
      </div>
      <div className="w-full max-w-4xl">
        <HorizontalScroll />
      </div>
    </div>
  )
}

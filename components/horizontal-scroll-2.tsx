import { Scroller } from "@/components/ui/scroller";

export function HorizontalScroll2() {
  return (
    <Scroller orientation="horizontal" className="w-full p-4 bg-transparent" hideScrollbar asChild>
      <div className="flex items-center gap-2.5">
        {Array.from({ length: 8 }).map((_, index) => (
          <div
            key={index}
            className="flex h-32 w-[200px] shrink-0 flex-col items-center justify-center rounded-md bg-accent p-4"
          >
            <div className="font-medium text-lg">Item {index + 1}</div>
            <span className="text-muted-foreground text-sm">
              Second horizontal scroll
            </span>
          </div>
        ))}
      </div>
    </Scroller>
  );
}

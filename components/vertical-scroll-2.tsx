import { Scroller } from "@/components/ui/scroller";

export function VerticalScroll2() {
  return (
    <Scroller className="flex h-[280px] w-full flex-col gap-2.5 p-4" hideScrollbar>
      {Array.from({ length: 15 }).map((_, index) => (
        <div
          key={index}
          className="flex h-32 flex-col rounded-md bg-accent p-4"
        >
          <div className="font-medium text-lg">Entry {index + 1}</div>
          <span className="text-muted-foreground text-sm">
            Second vertical scroll
          </span>
        </div>
      ))}
    </Scroller>
  );
}

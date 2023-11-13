open Utils

@react.component
let make = (~seconds) => {
    <div className="flex items-center justify-center text-4xl relative h-80 w-80 top-0">
        <span className="absolute">{seconds->formatTime->toStr}</span>
    </div>
}
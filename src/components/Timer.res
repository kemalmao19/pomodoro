open Utils

@react.component
let make = (~seconds) => {
    <div>
        <span>{seconds->formatTime->toStr}</span>
    </div>
}
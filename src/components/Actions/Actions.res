open State

@react.component
let make = (~dispatch, ~isTicking) => {
    <div className="flex gap-10">
        <button onClick={_=> dispatch(Reset)}>
            <span className="">{"Reset"->React.string}</span>
        </button>
        {isTicking ? 
        <button onClick={_=> dispatch(Stop)}>
            <span className="">{"Stop"->React.string}</span>
        </button>
        : 
        <button onClick={_=> dispatch(Start)}>
            <span className="">{"Start"->React.string}</span>
        </button>}
    </div>
}
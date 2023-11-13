open State

@react.component
let make = (~dispatch, ~isTicking) => {
    <div className="flex gap-10">
        <button 
            onClick={_=> dispatch(Reset)}
            className="flex justify-center items-center bg-red-500 px-4 py-3 rounded-2xl gap-2 shadow-md"
            >
            <img src="src/styles/reset.svg"/>
            // <span className=" text-xl text-white">{"Reset"->React.string}</span>
        </button>
        {isTicking ? 
        <button 
            onClick={_=> dispatch(Stop)}
            className="flex justify-center items-center bg-red-500 px-4 py-3 rounded-2xl gap-2 shadow-md"
            >
            <img src="src/styles/stop.svg"/>
        </button>
        : 
        <button 
            onClick={_=> dispatch(Start)}
            className="flex justify-center items-center bg-red-500 px-4 py-3 rounded-2xl gap-2 shadow-md"
            >
            <img src="src/styles/start.svg"/>
        </button>}
    </div>
}
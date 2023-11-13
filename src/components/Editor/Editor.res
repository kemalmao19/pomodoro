open Utils

@react.component
let make = (~phase, ~value, ~onChange) => {
    <div className="flex flex-col items-center">
        <span>{toStr(phase)}</span>
        <input 
            className="text-xl text-center"
            type_="number" 
            value={value->string_of_int} 
            onChange={event => ReactEvent.Form.target(event)["value"]->onChange}
        />
    </div>
}
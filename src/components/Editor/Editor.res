open Utils

@react.component
let make = (~phase, ~value, ~onChange) => {
    <div className="flex flex-col gap-4">
        <div className="text-2xl font-body flex justify-center items-center gap-4">
            <img 
                src={toStr(phase) === toStr("Work") ? "src/styles/work.svg" : "src/styles/break.svg"}
            />
            <span>{toStr(phase)}</span>
        </div>
        <input 
            className="text-center py-2 rounded-md font-mono"
            type_="number" 
            value={value->string_of_int} 
            onChange={event => ReactEvent.Form.target(event)["value"]->onChange}
        />
    </div>
}
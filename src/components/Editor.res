open Utils

@react.component
let make = (~phase, ~value, ~onChange) => {
    <div>
        <span>{toStr(phase)}</span>
        <input 
            type_="number" 
            value={value->string_of_int} 
            // onChange={e => e -> ReactReact.Form.target##value->onChange}
        />
    </div>
}
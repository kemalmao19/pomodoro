open State

@react.component
let make = (~seconds, ~dispatch, ~currentPhase) => {
    let label = seconds > 0 ? switch currentPhase {
        | Work => "Work Time"
        | Play => "Break Time"
        }
        : (
            switch currentPhase {
                | Work => "Ready to Work??"
                | Play => "Ready for a break?"
            }
        )

    <h1 
    className="text-3xl font-body cursor-pointer text-red-600" 
    // onClick={seconds == 0 ? _=>dispatch(TogglePhase) : (_=>dispatch(TogglePhase)) }
    onClick = {currentPhase === Work ? _=>dispatch(TogglePhase) : _=>dispatch(TogglePhase)}
    >{label->React.string}</h1> 
}
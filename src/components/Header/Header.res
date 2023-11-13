open State

@react.component
let make = (~seconds, ~dispatch, ~currentPhase) => {
    let label = seconds > 0 ? switch currentPhase {
        | Work => "Time to Work"
        | Play => "Break Time"
        }
        : (
            switch currentPhase {
                | Work => "Ready for a Break?"
                | Play => "Ready for Start Working?"
            }
        )

    <h1 
    className="text-xl cursor-pointer" 
    onClick={seconds == 0 ? _=>dispatch(TogglePhase) : (_=>()) }
    >{label->React.string}</h1> 
}
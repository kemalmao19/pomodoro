open State

@react.component
let make = () => {
    let (state, dispatch) = React.useReducer(reducer, initialState)

    React.useEffect0(() => {
        let timer =Js.Global.setInterval(()=>dispatch(Tick), 1000)
        Some(()=>Js.Global.clearInterval(timer))
    })

    <div>
        <button onClick={_=>dispatch(TogglePhase)}>{"Switch timer"->React.string}</button>
        <Timer seconds={state.seconds}/>
        <button onClick={_=>dispatch(Start)}>{"Start"->React.string}</button>
        <button onClick={_=>dispatch(Stop)}>{"Stop"->React.string}</button>
        <button onClick={_=>dispatch(Reset)}>{"Reset"->React.string}</button>
        <Editor phase="work" value={state.workTime} onChange={e => dispatch(SetTime(Work, e))} />
        <Editor phase="play" value={state.playTime} onChange={e => dispatch(SetTime(Play, e))} />
    </div>
}
%%raw(`import './styles/App.css';`)
open State

@react.component
let make = () => {
    let (state, dispatch) = React.useReducer(reducer, initialState)

    React.useEffect0(() => {
        let timer =Js.Global.setInterval(()=>dispatch(Tick), 1000)
        Some(()=>Js.Global.clearInterval(timer))
    })

    <div className="flex flex-col items-center justify-center h-screen bg-gray-100">
        <Header seconds={state.seconds} dispatch currentPhase={state.currentPhase}/>
        <Timer seconds={state.seconds}/>
        <Actions dispatch isTicking={state.isTicking}/>
        <Editor phase="work" value={state.workTime} onChange={e => dispatch(SetTime(Work, e))} />
        <Editor phase="play" value={state.playTime} onChange={e => dispatch(SetTime(Play, e))} />

    </div>
}
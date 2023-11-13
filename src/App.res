%%raw(`import './styles/App.css';`)
open State

@react.component
let make = () => {
    let (state, dispatch) = React.useReducer(reducer, initialState)

    React.useEffect0(() => {
        let timer =Js.Global.setInterval(()=>dispatch(Tick), 1000)
        Some(()=>Js.Global.clearInterval(timer))
    })

    <div className="flex flex-col gap-5 py-12 px-40 mx-28 my-14 items-center justify-center bg-red-200 rounded-2xl shadow-lg">
        <h1 className="text-5xl font-body">{"Pomodoro Timer"->React.string}</h1>
        <div  className="flex justify-center gap-10">
            <div className="flex flex-col items-center gap-6">
                <Header seconds={state.seconds} dispatch currentPhase={state.currentPhase}/>
                <Timer 
                    seconds={state.seconds} 
                    maxTime={
                        switch state.currentPhase {
                            | Work => state.workTime * 60
                            | Play => state.playTime * 60
                        }
                    }
                />
                <Actions dispatch isTicking={state.isTicking}/>
            </div>
            <div className="flex flex-col justify-center gap-6">
                <Editor phase="Work" value={state.workTime} onChange={e => dispatch(SetTime(Work, e))} />
                <Editor phase="Break" value={state.playTime} onChange={e => dispatch(SetTime(Play, e))} />
            </div>
        </div>

    </div>
}
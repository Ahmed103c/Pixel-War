import './Grid.css'


function changeColor(x:number, y:number){
    console.log(`color of pixel : {${x},${y}} has changed`)
}


function Grid() {
    const pixels = []

    for (let i = 0; i < 800; i++) {
        const x = i % 40
        const y = Math.floor(i / 40)
        pixels.push(
            <div key={i} className="pixel" onClick={() => changeColor(x,y)}></div>
        )
    }



    return (
        <div>
            <div className="title">
                Pixel War
            </div>
            <div className="grid">
                {pixels}
            </div>
        </div>
    )
}

export default Grid
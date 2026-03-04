import './Grid.css'

function Grid() {

    const pixels = []

    for (let i = 0; i < 2500; i++) {
        pixels.push(
            <div key={i} className="pixel"></div>
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
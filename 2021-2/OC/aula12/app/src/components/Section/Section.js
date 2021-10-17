import React from 'react';

function Section(props){

    return(
        <section id="section" className="container">
            <div className="row">
            <div className="col-sm-1"></div>
            <div className="col-sm-10">
                <h1>Página {props.onPage}</h1>
                <h5>{props.onMessage}</h5>
            </div>
            <div className="col-sm-1"></div>
            </div>
            </section>
    );
}

export default Section;

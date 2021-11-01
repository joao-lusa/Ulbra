import React from 'react';

function Nav(props){

    return(
        <nav className="navbar navbar-expand-sm bg-dark navbar-dark">
            <ul className="navbar-nav">
                <li className="nav-item ">
                    <a className="nav-link" href="#header" onClick={()=>props.onSetPage('Home')}>Home</a>
                </li>
                <li className="nav-item">
                    <a className="nav-link" href="#header" onClick={()=>props.onSetPage('Componentes')}>Componentes</a>
                </li>
                <li className="nav-item">
                    <a className="nav-link" href="#header" onClick={()=>props.onSetPage('Props')}>Props</a>
                </li>
                <li className="nav-item">
                    <a className="nav-link " href="#header" onClick={()=>props.onSetPage('State')}>State</a>
                </li>
            </ul>
        </nav>
    );
}

export default Nav;

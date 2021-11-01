import React from 'react';
import {Link} from 'react-router-dom';

function Nav(){

    return(
        <nav className="navbar navbar-expand-sm bg-dark navbar-dark">
            <ul className="navbar-nav">
                <li className="nav-item ">
                    <Link className="nav-link" to="/">Home</Link>
                </li>
                <li className="nav-item">
                <Link className="nav-link" to="/about">Sobre</Link>
                </li>
                <li className="nav-item">
                <Link className="nav-link" to="/products">Produtos</Link>
                </li>
                <li className="nav-item">
                <Link className="nav-link" to="/contact">Contato</Link>
                </li>
            </ul>
        </nav>
    );
}

export default Nav;

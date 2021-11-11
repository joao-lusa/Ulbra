import React from 'react';
import {Link} from 'react-router-dom';
import {deleteToken, isAdmin} from '../../Auth'
import {useHistory} from 'react-router-dom'

function Nav(){
    const history = useHistory();

    const logout = () => {
        deleteToken();
        history.push('/user/login');
        window.location.reload(true);
    }

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

            <ul className="navbar-nav ml-auto">
                {
                    isAdmin() ?
                        <>
                            <li className="nav-item">
                                <Link className="nav-link" to="/contact/view">Lista de contatos</Link>
                            </li>
                            <li className="nav-item">
                                <Link 
                                    className="nav-link"
                                    onClick={logout} 
                                >
                                    Logout
                                </Link>
                            </li>
                        </>
                    :
                        <li className="nav-item">
                            <Link className="nav-link" to="/user/login">Login</Link>
                        </li>
                }
            </ul>
        </nav>
    );
}

export default Nav;

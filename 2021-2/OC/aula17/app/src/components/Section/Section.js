import React from 'react';
import {Switch,
        Route
} from 'react-router-dom';
import Home from '../Home';
import About from '../About';
import Products from '../Products';
import Contact from '../Contact';
import ContactView from '../admin/ContactView';
import Login from '../admin/Login/Login';
import HomeAdm from '../admin/Home'
import { isAdmin } from '../../Auth';

function Section(){

    return(
        <section id="section" className="container">
            <Switch>
                <Route exact path="/">
                    <Home/>
                </Route>
                <Route exact path="/about">
                    <About />
                </Route>
                <Route path="/products"> 
                    <Products/>
                </Route>
                <Route exact path="/contact">
                    <Contact/>
                </Route>
                <Route exact path="/user/login">
                    <Login />
                </Route>

                <PrivateRoute exact path="/contact/view" component={ContactView}/>

                <PrivateRoute exact path="/admin/home" component={HomeAdm}/>

            </Switch>
        </section>
    );
}
export default Section;

function PrivateRoute({component : Component, ...rest}){
    return(
        <Route 
            {...rest}
            render = {
                props =>(
                    isAdmin() ? 
                        <Component{...props} />
                    :
                     console.log('não logado')   
                )
            }
        />
    )
}
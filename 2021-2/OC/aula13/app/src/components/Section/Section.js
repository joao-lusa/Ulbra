import React from 'react';
import {Switch,
        Route} from 'react-router-dom';
import Home from '../home';
import About from '../About';
import Products from '../Products';
import Contact from '../Contact';

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
                <Route exact path="/products"> 
                    <Products/>
                </Route>
                <Route exact path="/contact">
                    <Contact/>
                </Route>
            </Switch>
        </section>
    );
}

export default Section;

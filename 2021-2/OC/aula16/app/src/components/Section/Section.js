import React from 'react';
import {Switch,
        Route
} from 'react-router-dom';
import Home from '../Home';
import About from '../About';
import Products from '../Products';
import Contact from '../Contact';
import ContactView from '../ContactView';

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
                <Route exact path="/contact/view">
                    <ContactView />
                </Route>
            </Switch>
        </section>
    );
}

export default Section;

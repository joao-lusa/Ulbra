import React from 'react';
import './App.css';
import Header from './components/Header'
import Nav from './components/Nav'
import Section from './components/Section';
import Footer from './components/Footer';
import {BrowserRouter as Router} from 'react-router-dom';

function App() {
  return (
    <div>
      <Router>
        <Header />
        <Nav />
        <Section />
        <Footer />
      </Router>
    </div>
  );
}   

export default App;

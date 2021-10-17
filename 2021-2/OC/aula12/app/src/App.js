import './App.css';
import { useEffect, useState } from 'react';
import Header from './components/Header'
import Nav from './components/Nav'
import Section from './components/Section';
import Footer from './components/Footer';

function App() {
  const message = 'Bem vindo ao nosso site!!!';
  const [page, setPage] = useState('Inicial');

  useEffect(()=>{
    console.log(page);
  },[page]);

  return (
    <div>
      <Header />
      <Nav onSetPage={setPage}/>
      <Section onMessage={message} onPage={page}/>
      <Footer />
    </div>
  );
}   

export default App;

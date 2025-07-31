import React from 'react';

import Header from './sections/Header/Header';
import Hero from './sections/Hero/Hero';
import About from './sections/About/About';
import Projects from './sections/Projects/Projects';
import Resume from './sections/Resume/Resume';
import Testimonials from './sections/Testimonials/Testimonials';
import Contact from './sections/Contact/Contact';
function App() {
  return (
    <>
    <Header />
    <main>
      <Hero />
      <About />
      <Projects />
      <Resume />
      <Contact />
    </main>
    </>
  );
}

export default App;

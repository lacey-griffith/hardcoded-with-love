import React from 'react';
import './Hero.css';
import ImageCarousel from '../../components/ImageCarousel';
import Button from '../../components/Button';

function Hero() {
  return (
    <section className="hero neon-yellow section-parent">
      <div className="hero-flex">
        <ImageCarousel />
        <div className="hero-content">
          <h1>Lacey Hay</h1>
          <h2>Your Friendly Neighborhood Developer</h2>
          <p>Pushing pixels, wrangling bugs and hoping nothing breaks</p>
          <div className="hero-buttons">
            <Button href="#contact">Get In Touch</Button>
            <Button href="#projects" variant="secondary">See My Work</Button>
          </div>
        </div>
      </div>
    </section>
  );
}

export default Hero;

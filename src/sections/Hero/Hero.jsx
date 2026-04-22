import React from 'react';
import './Hero.css';
import ImageCarousel from '../../components/ImageCarousel';
import Button from '../../components/Button';

function Hero() {
  return (
    <section className="hero neon-yellow section-parent">
      <span className="doodle" style={{ top: '10px', right: '20px' }}>⚡</span>
      <span className="doodle" style={{ bottom: '14px', left: '16px', transform: 'rotate(12deg)' }}>☆</span>
      <span className="doodle" style={{ top: '16px', left: '50%', transform: 'rotate(-5deg)' }}>✌</span>

      <div className="hero-flex">
        <div className="hero-carousel-wrap">
          <ImageCarousel />
        </div>
        <div className="hero-content">
          <h1>Lacey Hay</h1>
          <h2>Your Friendly Neighborhood Developer</h2>
          <p>Pushing pixels, wrangling bugs &amp; hoping nothing breaks ☕</p>
          <div className="hero-buttons">
            <Button href="#contact">Get In Touch</Button>
            <Button href="#projects" variant="secondary">See My Work</Button>
          </div>
          <div className="hero-socials">
            <a href="https://github.com/lacey-griffith" target="_blank" rel="noopener noreferrer">GitHub</a>
            <a href="https://www.linkedin.com/in/lacey-griffith/" target="_blank" rel="noopener noreferrer">LinkedIn</a>
          </div>
        </div>
      </div>
    </section>
  );
}

export default Hero;

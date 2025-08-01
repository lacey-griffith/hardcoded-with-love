import React from 'react';
import './Hero.css';
import ImageCarousel from '../../components/ImageCarousel';

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
            </div>
          </div>
        </div>
      </section>
    );
  }
  
  export default Hero;
  
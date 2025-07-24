import React from 'react';
import './about.css';
import ImageCarousel from '../../components/ImageCarousel';

function About() {
  return (
    <div className="about-container">
      <h2>About Me</h2>
      <p>I’m a developer who loves clean code, clever UX, and a good cup of tea.</p>
      <ImageCarousel />
    </div>
  );
}


export default About;

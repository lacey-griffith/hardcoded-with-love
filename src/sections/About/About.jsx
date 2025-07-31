import React from 'react';
import './About.css';
import ImageCarousel from '../../components/ImageCarousel';

function About() {
  return (
    <section className="about-container neon-pink section-parent">
      <h2>About Me</h2>
      <p>I’m a developer who loves clean code, clever UX, and a good cup of tea.</p>
      <p>I bring creativity, business sense, and problem-solving to every project—whether it's a solo build or a team collab.</p>
      <ImageCarousel />
    </section>
  );
}

export default About;

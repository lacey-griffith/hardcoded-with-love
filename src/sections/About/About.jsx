import React from 'react';
import './About.css';

function About() {
  return (
    <section id="about" className="about-container neon-pink section-parent">
      <span className="doodle" style={{ top: '12px', right: '24px', transform: 'rotate(10deg)' }}>🙂</span>
      <span className="doodle" style={{ bottom: '10px', left: '18px', transform: 'rotate(-6deg)' }}>✌</span>
      <h2>About Me</h2>
      <p>
        I'm a developer who loves clean code, clever UX, and a good cup of tea.
      </p>
      <p>
        I bring creativity, business sense, and problem-solving to every project —
        whether it's a solo build or a team collab.
      </p>
      <p>
        Based in Round Rock, TX. Always learning. Always building.
      </p>
    </section>
  );
}

export default About;

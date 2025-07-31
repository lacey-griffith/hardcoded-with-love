import React from 'react';
import './resume.css';

function Resume() {
  return (
    <section className="resume-container section-parent neon-purple">
      <h2>Resume</h2>
      <p>Want the full scoop? Download my resume below or view it in your browser.</p>
      <div className="resume-links">
        <a href="/resume.pdf" download>Download PDF</a>
        <a href="/resume.pdf" target="_blank" rel="noopener noreferrer">View in New Tab</a>
      </div>
    </section>
  );
}

export default Resume;

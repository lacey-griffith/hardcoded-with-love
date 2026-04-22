import React from 'react';
import './resume.css';
import Button from '../../components/Button';

function Resume() {
  return (
    <section id="resume" className="resume-container section-parent neon-purple">
      <span className="doodle" style={{ top: '10px', right: '22px', transform: 'rotate(-10deg)' }}>☆</span>
      <h2>Resume</h2>
      <p>Want the full scoop? Download my resume or view it in your browser.</p>
      <div className="resume-links">
        <Button href="/hardcoded-with-love/resume2025.pdf" download>⬇ Download PDF</Button>
        <Button href="/hardcoded-with-love/resume2025.pdf" variant="secondary">View in New Tab</Button>
      </div>
    </section>
  );
}

export default Resume;

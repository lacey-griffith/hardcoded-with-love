import React from 'react';
import './contact.css';

function Contact() {
  return (
    <div id="contact" className="contact-container neon-green section-parent">
      <span className="doodle" style={{ top: '12px', right: '20px', transform: 'rotate(6deg)' }}>🙂</span>
      <h2>Say Hello!</h2>
      <p>Let's make something magical together.</p>
      <form className="contact-form" onSubmit={e => e.preventDefault()}>
        <div className="form-group">
          <label htmlFor="name">Name</label>
          <input id="name" type="text" placeholder="Your name" />
        </div>
        <div className="form-group">
          <label htmlFor="email">Email</label>
          <input id="email" type="email" placeholder="your@email.com" />
        </div>
        <div className="form-group">
          <label htmlFor="message">Message</label>
          <textarea id="message" rows="4" placeholder="Say hello..."></textarea>
        </div>
        <button type="submit" className="submit-btn">Send it ✉️</button>
      </form>
    </div>
  );
}

export default Contact;

import React from 'react';
import './contact.css';

function Contact() {
  return (
    <div id="contact" className="contact-container neon-green section-parent">
      <h2>Contact</h2>
      <p>Let's make something magical together.</p>
      <form>
        <label htmlFor="name">Name</label>
        <input id="name" type="text" placeholder="Your name" />

        <label htmlFor="email">Email</label>
        <input id="email" type="email" placeholder="your@email.com" />

        <label htmlFor="message">Message</label>
        <textarea id="message" rows="4" placeholder="Say hello..."></textarea>

        <button type="submit">Send</button>
      </form>
    </div>
  );
}

export default Contact;

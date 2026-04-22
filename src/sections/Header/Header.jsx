import React, { useState, useEffect } from 'react';
import './header.css';

function Header() {
  const [scrolled, setScrolled] = useState(false);

  useEffect(() => {
    const onScroll = () => setScrolled(window.scrollY > 20);
    window.addEventListener('scroll', onScroll);
    return () => window.removeEventListener('scroll', onScroll);
  }, []);

  return (
    <header className={`header-container ${scrolled ? 'scrolled' : ''}`}>
      <div className="header-inner">
        <span className="header-logo">✏️ lacey.hay</span>
        <nav>
          <a href="#about">about</a>
          <a href="#projects">projects</a>
          <a href="#resume">resume</a>
          <a href="#contact">contact</a>
          <a href="#testimonials">testimonials</a>
        </nav>
      </div>
    </header>
  );
}

export default Header;

import React from 'react';
import './header.css';

function Header() {
  return (
    <header className="header-container">
      <nav>
        <a href="#about">About</a>
        <a href="#projects">Projects</a>
        <a href="#resume">Resume</a>
        <a href="#contact">Contact</a>
        <a href="#testimonials">Testimonials</a>
      </nav>
    </header>
  );
}

export default Header;

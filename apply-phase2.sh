#!/bin/bash
# ============================================================
# apply-phase2.sh — 90s composition book redesign
# Run from inside your my-portfolio folder
# Usage: bash apply-phase2.sh
# ============================================================

echo "✏️  Applying Phase 2 — 90s Notebook Redesign..."

# ── src/assets/fonts.css ─────────────────────────────────────
cat > src/assets/fonts.css << 'EOF'
@import url('https://fonts.googleapis.com/css2?family=Fredoka+One&family=Caveat:wght@400;600;700&family=Permanent+Marker&display=swap');
EOF
echo "✅ fonts.css"

# ── src/styles/theme.css ─────────────────────────────────────
cat > src/styles/theme.css << 'EOF'
:root {
  --yellow:  #f9e94e;
  --pink:    #ff6eb4;
  --blue:    #5bc8f5;
  --purple:  #c084fc;
  --orange:  #ffaa3b;
  --green:   #7dde5a;
  --dark:    #1a1a1a;
  --white:   #fffef5;

  --font-header: 'Fredoka One', cursive;
  --font-doodle: 'Permanent Marker', cursive;
  --font-body:   'Caveat', cursive;

  --sticker-shadow: 4px 6px 0px rgba(0,0,0,0.25);
  --sticker-border: 4px solid var(--dark);
  --radius-sticker: 18px;
}
EOF
echo "✅ theme.css"

# ── src/styles/globals.css ───────────────────────────────────
cat > src/styles/globals.css << 'EOF'
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html {
  scroll-behavior: smooth;
  font-size: 16px;
}

body {
  font-family: var(--font-body);
  font-size: 1.1rem;
  background-image: url('/images/background_desktop.png');
  background-size: cover;
  background-repeat: repeat;
  background-attachment: fixed;
  color: var(--dark);
  line-height: 1.6;
  overflow-x: hidden;
}

@media (max-width: 768px) {
  body {
    background-image: url('/images/background_mobile.png');
    background-attachment: scroll;
  }
}

h1, h2, h3 {
  font-family: var(--font-header);
  line-height: 1.2;
  margin-bottom: 0.75rem;
}

h1 { font-size: 3.5rem; }
h2 { font-size: 2.25rem; }
h3 { font-size: 1.5rem; }

p {
  font-family: var(--font-body);
  font-size: 1.15rem;
  margin-bottom: 0.75rem;
  color: var(--dark);
}

a {
  color: var(--dark);
  text-decoration: none;
  font-family: var(--font-body);
  font-weight: 600;
}

/* ── Sticker card base ── */
.sticker-card {
  background: var(--white);
  border: var(--sticker-border);
  border-radius: var(--radius-sticker);
  box-shadow: var(--sticker-shadow);
  padding: 2rem;
  position: relative;
}

/* ── Section wrapper ── */
.section-parent {
  max-width: 900px;
  margin: 3rem auto;
  padding: 2.5rem 2rem;
  border: var(--sticker-border);
  border-radius: var(--radius-sticker);
  box-shadow: var(--sticker-shadow);
  position: relative;
}

/* ── Neon fills ── */
.neon-yellow  { background-color: var(--yellow); }
.neon-pink    { background-color: var(--pink); }
.neon-blue    { background-color: var(--blue); }
.neon-purple  { background-color: var(--purple); }
.neon-orange  { background-color: var(--orange); }
.neon-green   { background-color: var(--green); }

/* ── Doodle accent floaters ── */
.doodle {
  font-family: var(--font-doodle);
  font-size: 1.4rem;
  position: absolute;
  opacity: 0.55;
  pointer-events: none;
  user-select: none;
  transform: rotate(-8deg);
}

:focus-visible {
  outline: 3px solid var(--dark);
  outline-offset: 3px;
}
EOF
echo "✅ globals.css"

# ── src/sections/Header/Header.jsx ───────────────────────────
cat > src/sections/Header/Header.jsx << 'EOF'
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
EOF
echo "✅ Header.jsx"

# ── src/sections/Header/header.css ───────────────────────────
cat > src/sections/Header/header.css << 'EOF'
.header-container {
  position: sticky;
  top: 0;
  z-index: 100;
  background: var(--dark);
  border-bottom: 3px solid var(--yellow);
  padding: 0.75rem 2rem;
  transition: box-shadow 0.3s ease;
}

.header-container.scrolled {
  box-shadow: 0 4px 0 var(--yellow);
}

.header-inner {
  max-width: 900px;
  margin: 0 auto;
  display: flex;
  align-items: center;
  justify-content: space-between;
  flex-wrap: wrap;
  gap: 0.75rem;
}

.header-logo {
  font-family: var(--font-doodle);
  font-size: 1.4rem;
  color: var(--yellow);
  letter-spacing: 1px;
}

.header-container nav {
  display: flex;
  gap: 1.5rem;
  flex-wrap: wrap;
}

.header-container nav a {
  font-family: var(--font-doodle);
  font-size: 1rem;
  color: var(--white);
  text-decoration: none;
  transition: color 0.2s ease;
  position: relative;
}

.header-container nav a::after {
  content: '';
  position: absolute;
  bottom: -2px;
  left: 0;
  width: 0%;
  height: 2px;
  background: var(--yellow);
  transition: width 0.2s ease;
}

.header-container nav a:hover {
  color: var(--yellow);
}

.header-container nav a:hover::after {
  width: 100%;
}
EOF
echo "✅ header.css"

# ── src/sections/Hero/Hero.jsx ────────────────────────────────
cat > src/sections/Hero/Hero.jsx << 'EOF'
import React from 'react';
import './Hero.css';
import ImageCarousel from '../../components/ImageCarousel';
import Button from '../../components/Button';

function Hero() {
  return (
    <section className="hero neon-yellow section-parent">
      <span className="doodle" style={{ top: '10px', right: '20px' }}>⚡</span>
      <span className="doodle" style={{ bottom: '14px', left: '16px', transform: 'rotate(12deg)' }}>☆</span>
      <span className="doodle" style={{ top: '16px', left: '50%', transform: 'rotate(-5deg)' }}>✌</span>

      <div className="hero-flex">
        <div className="hero-carousel-wrap">
          <ImageCarousel />
        </div>
        <div className="hero-content">
          <h1>Lacey Hay</h1>
          <h2>Your Friendly Neighborhood Developer</h2>
          <p>Pushing pixels, wrangling bugs &amp; hoping nothing breaks ☕</p>
          <div className="hero-buttons">
            <Button href="#contact">Get In Touch</Button>
            <Button href="#projects" variant="secondary">See My Work</Button>
          </div>
          <div className="hero-socials">
            <a href="https://github.com/lacey-griffith" target="_blank" rel="noopener noreferrer">GitHub</a>
            <a href="https://www.linkedin.com/in/lacey-griffith/" target="_blank" rel="noopener noreferrer">LinkedIn</a>
          </div>
        </div>
      </div>
    </section>
  );
}

export default Hero;
EOF
echo "✅ Hero.jsx"

# ── src/sections/Hero/Hero.css ────────────────────────────────
cat > src/sections/Hero/Hero.css << 'EOF'
.hero {
  transform: rotate(-0.5deg);
  margin-top: 2.5rem !important;
}

.hero-flex {
  display: flex;
  align-items: center;
  gap: 2.5rem;
  flex-wrap: wrap;
}

.hero-carousel-wrap {
  flex: 0 0 220px;
  transform: rotate(2deg);
  border: 4px solid var(--dark);
  border-radius: 14px;
  overflow: hidden;
  box-shadow: 5px 5px 0 var(--dark);
}

.hero-content {
  flex: 1;
  min-width: 220px;
}

.hero h1 {
  font-size: 3.5rem;
  color: var(--dark);
  margin-bottom: 0.25rem;
}

.hero h2 {
  font-size: 1.4rem;
  font-family: var(--font-body);
  font-weight: 600;
  color: #333;
  margin-bottom: 0.5rem;
}

.hero p {
  font-size: 1.1rem;
  color: #444;
  margin-bottom: 1.5rem;
}

.hero-buttons {
  display: flex;
  gap: 1rem;
  flex-wrap: wrap;
  margin-bottom: 1rem;
}

.hero-socials {
  display: flex;
  gap: 1.25rem;
  margin-top: 0.5rem;
}

.hero-socials a {
  font-family: var(--font-doodle);
  font-size: 1rem;
  color: var(--dark);
  border-bottom: 2px solid var(--dark);
  padding-bottom: 1px;
  transition: opacity 0.2s;
}

.hero-socials a:hover {
  opacity: 0.6;
}

@media (max-width: 600px) {
  .hero-flex {
    flex-direction: column;
  }
  .hero-carousel-wrap {
    width: 100%;
    flex: unset;
  }
}
EOF
echo "✅ Hero.css"

# ── src/sections/About/About.jsx ─────────────────────────────
cat > src/sections/About/About.jsx << 'EOF'
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
EOF
echo "✅ About.jsx"

# ── src/sections/About/about.css ─────────────────────────────
cat > src/sections/About/about.css << 'EOF'
.about-container {
  transform: rotate(0.75deg);
}
EOF
echo "✅ about.css"

# ── src/sections/Projects/Projects.jsx ───────────────────────
cat > src/sections/Projects/Projects.jsx << 'EOF'
import React from 'react';
import './projects.css';

function Projects() {
  const projects = [
    {
      title: 'Herbal Haven',
      description: 'Tea curation & education app built with React + MongoDB.',
      emoji: '🍵',
      github: 'https://github.com/lacey-griffith/herbal-haven',
      live: 'https://herbalhaven.vercel.app',
      color: '#7dde5a',
    },
    // Add more projects here!
  ];

  return (
    <section id="projects" className="projects-section section-parent neon-blue">
      <span className="doodle" style={{ top: '10px', right: '20px', transform: 'rotate(8deg)' }}>⚡</span>
      <h2>Projects</h2>
      <div className="projects-grid">
        {projects.map((project, i) => (
          <div
            className="project-sticker"
            key={i}
            style={{
              backgroundColor: project.color,
              transform: `rotate(${i % 2 === 0 ? '-1.5' : '1.5'}deg)`,
            }}
          >
            <div className="project-emoji">{project.emoji}</div>
            <h3>{project.title}</h3>
            <p>{project.description}</p>
            <div className="project-links">
              {project.github && (
                <a href={project.github} target="_blank" rel="noopener noreferrer">GitHub ↗</a>
              )}
              {project.live && (
                <a href={project.live} target="_blank" rel="noopener noreferrer">Live Site ↗</a>
              )}
            </div>
          </div>
        ))}
      </div>
    </section>
  );
}

export default Projects;
EOF
echo "✅ Projects.jsx"

# ── src/sections/Projects/projects.css ───────────────────────
cat > src/sections/Projects/projects.css << 'EOF'
.projects-section {
  transform: rotate(-0.5deg);
}

.projects-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
  margin-top: 1.5rem;
}

.project-sticker {
  flex: 1 1 260px;
  border: 4px solid var(--dark);
  border-radius: 18px;
  box-shadow: 5px 5px 0 var(--dark);
  padding: 1.5rem;
  transition: transform 0.2s ease, box-shadow 0.2s ease;
}

.project-sticker:hover {
  transform: rotate(0deg) scale(1.03) !important;
  box-shadow: 7px 7px 0 var(--dark);
}

.project-emoji {
  font-size: 2.5rem;
  margin-bottom: 0.5rem;
}

.project-sticker h3 {
  margin-bottom: 0.4rem;
}

.project-links {
  display: flex;
  gap: 1rem;
  margin-top: 1rem;
  flex-wrap: wrap;
}

.project-links a {
  font-family: var(--font-doodle);
  font-size: 0.95rem;
  border-bottom: 2px solid var(--dark);
  padding-bottom: 2px;
  transition: opacity 0.2s;
}

.project-links a:hover {
  opacity: 0.6;
}
EOF
echo "✅ projects.css"

# ── src/sections/Resume/Resume.jsx ───────────────────────────
cat > src/sections/Resume/Resume.jsx << 'EOF'
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
EOF
echo "✅ Resume.jsx"

# ── src/sections/Resume/resume.css ───────────────────────────
cat > src/sections/Resume/resume.css << 'EOF'
.resume-container {
  transform: rotate(0.5deg);
}

.resume-links {
  display: flex;
  gap: 1rem;
  margin-top: 1.25rem;
  flex-wrap: wrap;
}
EOF
echo "✅ resume.css"

# ── src/sections/Contact/Contact.jsx ─────────────────────────
cat > src/sections/Contact/Contact.jsx << 'EOF'
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
EOF
echo "✅ Contact.jsx"

# ── src/sections/Contact/contact.css ─────────────────────────
cat > src/sections/Contact/contact.css << 'EOF'
.contact-container {
  transform: rotate(-0.75deg);
}

.contact-form {
  margin-top: 1.5rem;
  display: flex;
  flex-direction: column;
  gap: 1rem;
  max-width: 480px;
}

.form-group {
  display: flex;
  flex-direction: column;
  gap: 0.3rem;
}

.form-group label {
  font-family: var(--font-doodle);
  font-size: 1rem;
}

.contact-form input,
.contact-form textarea {
  padding: 0.65rem 1rem;
  border: 3px solid var(--dark);
  border-radius: 10px;
  font-family: var(--font-body);
  font-size: 1rem;
  background: var(--white);
  box-shadow: 3px 3px 0 var(--dark);
}

.contact-form input:focus,
.contact-form textarea:focus {
  outline: none;
  box-shadow: 4px 4px 0 var(--dark);
}

.submit-btn {
  font-family: var(--font-doodle);
  font-size: 1.1rem;
  background: var(--dark);
  color: var(--green);
  border: 3px solid var(--dark);
  border-radius: 999px;
  padding: 0.7rem 1.75rem;
  cursor: pointer;
  box-shadow: 4px 4px 0 rgba(0,0,0,0.3);
  transition: transform 0.15s ease, box-shadow 0.15s ease;
  align-self: flex-start;
}

.submit-btn:hover {
  transform: translate(-2px, -2px);
  box-shadow: 6px 6px 0 rgba(0,0,0,0.3);
}
EOF
echo "✅ contact.css"

# ── src/sections/Testimonials/Testimonials.jsx ───────────────
cat > src/sections/Testimonials/Testimonials.jsx << 'EOF'
import React from 'react';
import './testimonials.css';

function Testimonials() {
  const reviews = [
    {
      quote: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec consectetur turpis, in sodales lectus.",
      author: "CoWorker 1",
      rotate: '-2deg',
      color: '#f9e94e',
    },
    {
      quote: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec consectetur turpis, in sodales lectus.",
      author: "CoWorker 2",
      rotate: '1.5deg',
      color: '#ffaa3b',
    },
    {
      quote: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec consectetur turpis, in sodales lectus.",
      author: "CoWorker 3",
      rotate: '-1deg',
      color: '#c084fc',
    },
  ];

  return (
    <section id="testimonials" className="testimonial-container section-parent neon-orange">
      <span className="doodle" style={{ top: '10px', right: '18px', transform: 'rotate(8deg)' }}>✌</span>
      <h2>Kind Words ✨</h2>
      <div className="testimonials-grid">
        {reviews.map((item, i) => (
          <blockquote
            key={i}
            className="testimonial-quote"
            style={{ backgroundColor: item.color, transform: `rotate(${item.rotate})` }}
          >
            <p>"{item.quote}"</p>
            <footer>— {item.author}</footer>
          </blockquote>
        ))}
      </div>
    </section>
  );
}

export default Testimonials;
EOF
echo "✅ Testimonials.jsx"

# ── src/sections/Testimonials/testimonials.css ───────────────
cat > src/sections/Testimonials/testimonials.css << 'EOF'
.testimonial-container {
  transform: rotate(0.5deg);
}

.testimonials-grid {
  display: flex;
  flex-wrap: wrap;
  gap: 1.5rem;
  margin-top: 1.5rem;
}

.testimonial-quote {
  flex: 1 1 220px;
  border: 4px solid var(--dark);
  border-radius: 16px;
  box-shadow: 5px 5px 0 var(--dark);
  padding: 1.25rem 1.5rem;
  font-style: normal;
  transition: transform 0.2s ease;
}

.testimonial-quote:hover {
  transform: rotate(0deg) scale(1.02) !important;
}

.testimonial-quote p {
  font-family: var(--font-body);
  font-size: 1.1rem;
  margin-bottom: 0.75rem;
}

.testimonial-quote footer {
  font-family: var(--font-doodle);
  font-size: 1rem;
}
EOF
echo "✅ testimonials.css"

# ── src/components/Button.jsx ─────────────────────────────────
cat > src/components/Button.jsx << 'EOF'
import React from 'react';

function Button({ children, href, onClick, variant = 'primary', download = false }) {
  const base = {
    display: 'inline-block',
    fontFamily: 'var(--font-doodle)',
    fontSize: '1rem',
    padding: '0.65rem 1.5rem',
    borderRadius: '999px',
    cursor: 'pointer',
    textDecoration: 'none',
    border: '3px solid var(--dark)',
    transition: 'transform 0.15s ease, box-shadow 0.15s ease',
    boxShadow: '4px 4px 0 var(--dark)',
  };

  const variants = {
    primary:   { background: 'var(--dark)', color: 'var(--yellow)' },
    secondary: { background: 'var(--white)', color: 'var(--dark)' },
  };

  const style = { ...base, ...variants[variant] };

  const onEnter = e => {
    e.currentTarget.style.transform = 'translate(-2px, -2px)';
    e.currentTarget.style.boxShadow = '6px 6px 0 var(--dark)';
  };
  const onLeave = e => {
    e.currentTarget.style.transform = 'translate(0,0)';
    e.currentTarget.style.boxShadow = '4px 4px 0 var(--dark)';
  };

  if (href) {
    return (
      <a href={href} style={style} download={download || undefined}
        onMouseEnter={onEnter} onMouseLeave={onLeave}
      >{children}</a>
    );
  }

  return (
    <button style={style} onClick={onClick}
      onMouseEnter={onEnter} onMouseLeave={onLeave}
    >{children}</button>
  );
}

export default Button;
EOF
echo "✅ Button.jsx"

# ── src/components/imageCarousel.css ─────────────────────────
cat > src/components/imageCarousel.css << 'EOF'
.carousel-wrapper {
  width: 220px;
  height: 220px;
}

.carousel-wrapper img {
  width: 100%;
  height: 220px;
  object-fit: cover;
  display: block;
}

/* Override slick arrows */
.slick-prev, .slick-next {
  z-index: 10;
}

.slick-prev { left: 6px; }
.slick-next { right: 6px; }

.slick-prev:before, .slick-next:before {
  color: var(--dark);
  font-size: 18px;
}
EOF
echo "✅ imageCarousel.css"

echo ""
echo "🎉 Phase 2 applied!"
echo ""
echo "Next steps:"
echo "  1. git add ."
echo "  2. git commit -m 'design: 90s notebook aesthetic phase 2'"
echo "  3. git push origin main"
echo "  4. cd dist && git add . && git commit -m 'deploy phase 2' && git push origin HEAD:gh-pages --force && cd .."
echo ""
echo "Live at: https://lacey-griffith.github.io/hardcoded-with-love"

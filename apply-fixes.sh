#!/bin/bash
# ============================================================
# apply-fixes.sh — run from inside your my-portfolio folder
# Usage: bash apply-fixes.sh
# ============================================================

echo "🔧 Applying portfolio fixes..."

# ── vite.config.js (base path for GitHub Pages) ─────────────
cat > vite.config.js << 'EOF'
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  base: '/hardcoded-with-love/',
})
EOF
echo "✅ vite.config.js"

# ── src/main.jsx ─────────────────────────────────────────────
cat > src/main.jsx << 'EOF'
import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
import './assets/fonts.css';
import './styles/theme.css';
import './styles/globals.css';

ReactDOM.createRoot(document.getElementById('root')).render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
EOF
echo "✅ src/main.jsx"

# ── src/styles/theme.css ─────────────────────────────────────
cat > src/styles/theme.css << 'EOF'
:root {
  --accent: #00cfff;
  --text-dark: #111111;
  --text-light: #333333;
  --bg-card: rgba(255, 255, 255, 0.15);
  --radius: 1rem;
  --shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
}
EOF
echo "✅ src/styles/theme.css"

# ── src/assets/fonts.css ─────────────────────────────────────
cat > src/assets/fonts.css << 'EOF'
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');
EOF
echo "✅ src/assets/fonts.css"

# ── src/assets/colors.js ─────────────────────────────────────
cat > src/assets/colors.js << 'EOF'
export const colors = {
  neonYellow: '#fff740',
  neonPink: '#ff3cac',
  neonBlue: '#00cfff',
  neonPurple: '#b24eff',
  neonOrange: '#ff9f1c',
  neonGreen: '#39ff14',
  dark: '#111111',
  light: '#ffffff',
};
EOF
echo "✅ src/assets/colors.js"

# ── src/components/Button.jsx ─────────────────────────────────
cat > src/components/Button.jsx << 'EOF'
import React from 'react';

function Button({ children, href, onClick, variant = 'primary', download = false }) {
  const styles = {
    primary: { background: '#111', color: '#fff740', border: 'none' },
    secondary: { background: 'transparent', color: '#111', border: '2px solid #111' },
  };

  const baseStyle = {
    display: 'inline-block',
    padding: '0.75rem 1.5rem',
    borderRadius: '999px',
    fontWeight: '600',
    fontSize: '1rem',
    cursor: 'pointer',
    textDecoration: 'none',
    transition: 'transform 0.2s ease',
    ...styles[variant],
  };

  if (href) {
    return (
      <a href={href} style={baseStyle} download={download || undefined}
        onMouseEnter={e => e.currentTarget.style.transform = 'scale(1.05)'}
        onMouseLeave={e => e.currentTarget.style.transform = 'scale(1)'}
      >{children}</a>
    );
  }

  return (
    <button style={baseStyle} onClick={onClick}
      onMouseEnter={e => e.currentTarget.style.transform = 'scale(1.05)'}
      onMouseLeave={e => e.currentTarget.style.transform = 'scale(1)'}
    >{children}</button>
  );
}

export default Button;
EOF
echo "✅ src/components/Button.jsx"

# ── src/components/projectCard.jsx ───────────────────────────
cat > src/components/projectCard.jsx << 'EOF'
import React from 'react';

function ProjectCard({ title, description, image, github, live }) {
  return (
    <div className="project-card">
      {image && <img src={image} alt={title} />}
      <h3>{title}</h3>
      <p>{description}</p>
      <div className="project-links">
        {github && <a href={github} target="_blank" rel="noopener noreferrer">GitHub</a>}
        {live && <a href={live} target="_blank" rel="noopener noreferrer">Live Site</a>}
      </div>
    </div>
  );
}

export default ProjectCard;
EOF
echo "✅ src/components/projectCard.jsx"

# ── src/sections/Hero/Hero.jsx ────────────────────────────────
cat > src/sections/Hero/Hero.jsx << 'EOF'
import React from 'react';
import './Hero.css';
import ImageCarousel from '../../components/ImageCarousel';
import Button from '../../components/Button';

function Hero() {
  return (
    <section className="hero neon-yellow section-parent">
      <div className="hero-flex">
        <ImageCarousel />
        <div className="hero-content">
          <h1>Lacey Hay</h1>
          <h2>Your Friendly Neighborhood Developer</h2>
          <p>Pushing pixels, wrangling bugs and hoping nothing breaks</p>
          <div className="hero-buttons">
            <Button href="#contact">Get In Touch</Button>
            <Button href="#projects" variant="secondary">See My Work</Button>
          </div>
        </div>
      </div>
    </section>
  );
}

export default Hero;
EOF
echo "✅ src/sections/Hero/Hero.jsx"

# ── src/sections/About/About.jsx (add id) ────────────────────
cat > src/sections/About/About.jsx << 'EOF'
import React from 'react';
import './About.css';

function About() {
  return (
    <section id="about" className="about-container neon-pink section-parent">
      <h2>About Me</h2>
      <p>I'm a developer who loves clean code, clever UX, and a good cup of tea.</p>
      <p>I bring creativity, business sense, and problem-solving to every project—whether it's a solo build or a team collab.</p>
    </section>
  );
}

export default About;
EOF
echo "✅ src/sections/About/About.jsx"

# ── src/sections/Projects/Projects.jsx (add id) ──────────────
cat > src/sections/Projects/Projects.jsx << 'EOF'
import React from 'react';
import './projects.css';

function Projects() {
  const projects = [
    {
      title: 'Herbal Haven',
      description: 'Tea curation & education app built with React + MongoDB.',
      image: '',
      github: 'https://github.com/lacey-griffith/herbal-haven',
      live: 'https://herbalhaven.vercel.app',
    },
  ];

  return (
    <section id="projects" className="project-container section-parent neon-blue">
      <h2>Projects</h2>
      {projects.map((project, i) => (
        <div className="project-card" key={i}>
          {project.image && <img src={project.image} alt={project.title} />}
          <h3>{project.title}</h3>
          <p>{project.description}</p>
          <div className="project-links">
            <a href={project.github} target="_blank" rel="noopener noreferrer">GitHub</a>
            <a href={project.live} target="_blank" rel="noopener noreferrer">Live Site</a>
          </div>
        </div>
      ))}
    </section>
  );
}

export default Projects;
EOF
echo "✅ src/sections/Projects/Projects.jsx"

# ── src/sections/Resume/Resume.jsx (fix pdf path + add id) ───
cat > src/sections/Resume/Resume.jsx << 'EOF'
import React from 'react';
import './resume.css';

function Resume() {
  return (
    <section id="resume" className="resume-container section-parent neon-purple">
      <h2>Resume</h2>
      <p>Want the full scoop? Download my resume below or view it in your browser.</p>
      <div className="resume-links">
        <a href="/resume2025.pdf" download>Download PDF</a>
        <a href="/resume2025.pdf" target="_blank" rel="noopener noreferrer">View in New Tab</a>
      </div>
    </section>
  );
}

export default Resume;
EOF
echo "✅ src/sections/Resume/Resume.jsx"

# ── src/sections/Contact/Contact.jsx (add id) ────────────────
cat > src/sections/Contact/Contact.jsx << 'EOF'
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
EOF
echo "✅ src/sections/Contact/Contact.jsx"

# ── src/sections/Testimonials/Testimonials.jsx (fix color + add id) ──
cat > src/sections/Testimonials/Testimonials.jsx << 'EOF'
import React from 'react';
import './testimonials.css';

function Testimonials() {
  const reviews = [
    {
      quote: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec consectetur turpis, in sodales lectus. Donec.",
      author: "CoWorker 1",
    },
    {
      quote: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec consectetur turpis, in sodales lectus. Donec.",
      author: "CoWorker 2",
    },
    {
      quote: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras nec consectetur turpis, in sodales lectus. Donec.",
      author: "CoWorker 3",
    },
  ];

  return (
    <section id="testimonials" className="testimonial-container section-parent neon-orange">
      <h2>Testimonials</h2>
      {reviews.map((item, i) => (
        <blockquote key={i} className="testimonial-quote">
          <p>"{item.quote}"</p>
          <footer>– {item.author}</footer>
        </blockquote>
      ))}
    </section>
  );
}

export default Testimonials;
EOF
echo "✅ src/sections/Testimonials/Testimonials.jsx"

# ── Install gh-pages if not already installed ────────────────
echo ""
echo "📦 Installing gh-pages..."
npm install gh-pages --save-dev

# ── Add deploy script to package.json ────────────────────────
node -e "
const fs = require('fs');
const pkg = JSON.parse(fs.readFileSync('package.json', 'utf8'));
pkg.scripts.deploy = 'vite build && gh-pages -d dist';
pkg.homepage = 'https://lacey-griffith.github.io/hardcoded-with-love';
fs.writeFileSync('package.json', JSON.stringify(pkg, null, 2));
console.log('✅ package.json updated with deploy script');
"

echo ""
echo "🎉 All fixes applied!"
echo ""
echo "Next steps:"
echo "  1. git add ."
echo "  2. git commit -m 'fix: apply phase 1 corrections'"
echo "  3. git push origin main"
echo "  4. npm run deploy"
echo ""
echo "Your site will be live at: https://lacey-griffith.github.io/hardcoded-with-love"

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

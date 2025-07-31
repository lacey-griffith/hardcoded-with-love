import React from 'react';
import './projects.css';

function Projects() {
  const projects = [
    {
      title: 'Herbal Haven',
      description: 'Tea curation & education app built with React + MongoDB.',
      image: '/images/projects/herbal-haven.png',
      github: 'https://github.com/lacey-griffith/herbal-haven',
      live: 'https://herbalhaven.vercel.app',
    },
    // Add more projects as needed
  ];

  return (
    <section className="project-container section-parent neon-blue">
      <h2>Projects</h2>
      {projects.map((project, i) => (
        <div className="project-card" key={i}>
          <img src={project.image} alt={project.title} />
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
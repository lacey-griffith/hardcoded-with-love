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

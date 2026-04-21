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

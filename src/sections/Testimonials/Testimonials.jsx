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
    <section className="testimonial-container section-parent neon-green">
      <h2>Testimonials</h2>
      {reviews.map((item, i) => (
        <blockquote key={i} className="testimonial-quote">
          <p>“{item.quote}”</p>
          <footer>– {item.author}</footer>
        </blockquote>
      ))}
    </section>
  );
}

export default Testimonials;

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

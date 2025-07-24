import React from 'react';
import './testimonials.css';

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
    <div className="testimonials-container">
      <h2>Nice Things People Say</h2>
      <div className="testimonial-list">
        {reviews.map((review, index) => (
          <blockquote key={index} className="testimonial-card">
            <p>“{review.quote}”</p>
            <footer>— {review.author}</footer>
          </blockquote>
        ))}
      </div>
    </div>
  );
}

export default Testimonials;

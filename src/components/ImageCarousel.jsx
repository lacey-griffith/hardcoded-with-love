import React from 'react';
import Slider from 'react-slick';
import './imageCarousel.css';

const ImageCarousel = () => {
  const images = [
    '/images/carousel/photo1.jpg',
    '/images/carousel/photo2.jpg',
    '/images/carousel/photo3.jpg',
    '/images/carousel/photo4.jpg',
  ];

  const settings = {
    dots: true,
    infinite: true,
    speed: 500,
    slidesToShow: 1,
    slidesToScroll: 1,
    accessibility: true,
    arrows: true,
  };

  return (
    <div className="carousel-wrapper">
      <Slider {...settings}>
        {images.map((src, index) => (
          <div key={index}>
            <img src={src} alt={`Lacey life shot ${index + 1}`} />
          </div>
        ))}
      </Slider>
    </div>
  );
};

export default ImageCarousel;

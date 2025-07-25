import React from 'react';
import Slider from 'react-slick';
import 'slick-carousel/slick/slick.css';
import 'slick-carousel/slick/slick-theme.css';
import './imageCarousel.css';


const ImageCarousel = () => {
  const images = [

    '/images/image_lacey.png',
    '/images/image_LaceyRuger.png',
    '/images/image_LaceyTyler.png',
    '/images/image_lacey3.png',
    '/images/image_ruger.png',

  ];

  const settings = {
    dots: false,
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

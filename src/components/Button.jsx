import React from 'react';

function Button({ children, href, onClick, variant = 'primary', download = false }) {
  const base = {
    display: 'inline-block',
    fontFamily: 'var(--font-doodle)',
    fontSize: '1rem',
    padding: '0.65rem 1.5rem',
    borderRadius: '999px',
    cursor: 'pointer',
    textDecoration: 'none',
    border: '3px solid var(--dark)',
    transition: 'transform 0.15s ease, box-shadow 0.15s ease',
    boxShadow: '4px 4px 0 var(--dark)',
  };

  const variants = {
    primary:   { background: 'var(--dark)', color: 'var(--yellow)' },
    secondary: { background: 'var(--white)', color: 'var(--dark)' },
  };

  const style = { ...base, ...variants[variant] };

  const onEnter = e => {
    e.currentTarget.style.transform = 'translate(-2px, -2px)';
    e.currentTarget.style.boxShadow = '6px 6px 0 var(--dark)';
  };
  const onLeave = e => {
    e.currentTarget.style.transform = 'translate(0,0)';
    e.currentTarget.style.boxShadow = '4px 4px 0 var(--dark)';
  };

  if (href) {
    return (
      <a href={href} style={style} download={download || undefined}
        onMouseEnter={onEnter} onMouseLeave={onLeave}
      >{children}</a>
    );
  }

  return (
    <button style={style} onClick={onClick}
      onMouseEnter={onEnter} onMouseLeave={onLeave}
    >{children}</button>
  );
}

export default Button;

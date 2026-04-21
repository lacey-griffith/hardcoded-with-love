import React from 'react';

function Button({ children, href, onClick, variant = 'primary', download = false }) {
  const styles = {
    primary: { background: '#111', color: '#fff740', border: 'none' },
    secondary: { background: 'transparent', color: '#111', border: '2px solid #111' },
  };

  const baseStyle = {
    display: 'inline-block',
    padding: '0.75rem 1.5rem',
    borderRadius: '999px',
    fontWeight: '600',
    fontSize: '1rem',
    cursor: 'pointer',
    textDecoration: 'none',
    transition: 'transform 0.2s ease',
    ...styles[variant],
  };

  if (href) {
    return (
      <a href={href} style={baseStyle} download={download || undefined}
        onMouseEnter={e => e.currentTarget.style.transform = 'scale(1.05)'}
        onMouseLeave={e => e.currentTarget.style.transform = 'scale(1)'}
      >{children}</a>
    );
  }

  return (
    <button style={baseStyle} onClick={onClick}
      onMouseEnter={e => e.currentTarget.style.transform = 'scale(1.05)'}
      onMouseLeave={e => e.currentTarget.style.transform = 'scale(1)'}
    >{children}</button>
  );
}

export default Button;

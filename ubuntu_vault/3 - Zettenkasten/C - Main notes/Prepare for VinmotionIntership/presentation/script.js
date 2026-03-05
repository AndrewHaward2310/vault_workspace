// ============================================================
// VinMotion Presentation — Navigation & Interactions
// ============================================================

document.addEventListener('DOMContentLoaded', () => {
  const slides = document.querySelectorAll('.slide');
  const navContainer = document.getElementById('slideNav');
  const counterEl = document.getElementById('slideCounter');
  const totalSlides = slides.length;

  // Create navigation dots
  slides.forEach((_, i) => {
    const dot = document.createElement('button');
    dot.classList.add('nav-dot');
    if (i === 0) dot.classList.add('active');
    dot.addEventListener('click', () => {
      slides[i].scrollIntoView({ behavior: 'smooth' });
    });
    navContainer.appendChild(dot);
  });

  const navDots = document.querySelectorAll('.nav-dot');

  // Intersection Observer for slide tracking
  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        const slideIndex = Array.from(slides).indexOf(entry.target);
        updateNav(slideIndex);
      }
    });
  }, {
    threshold: 0.5
  });

  slides.forEach(slide => observer.observe(slide));

  function updateNav(index) {
    navDots.forEach((dot, i) => {
      dot.classList.toggle('active', i === index);
    });
    counterEl.textContent = `${index + 1} / ${totalSlides}`;
  }

  // Keyboard navigation
  document.addEventListener('keydown', (e) => {
    const currentSlide = getCurrentSlide();
    if (e.key === 'ArrowDown' || e.key === 'ArrowRight' || e.key === ' ') {
      e.preventDefault();
      const next = Math.min(currentSlide + 1, totalSlides - 1);
      slides[next].scrollIntoView({ behavior: 'smooth' });
    }
    if (e.key === 'ArrowUp' || e.key === 'ArrowLeft') {
      e.preventDefault();
      const prev = Math.max(currentSlide - 1, 0);
      slides[prev].scrollIntoView({ behavior: 'smooth' });
    }
  });

  function getCurrentSlide() {
    let current = 0;
    slides.forEach((slide, i) => {
      const rect = slide.getBoundingClientRect();
      if (rect.top <= window.innerHeight / 2 && rect.bottom >= window.innerHeight / 2) {
        current = i;
      }
    });
    return current;
  }

  // Fade-in animations on scroll
  const animateObserver = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.style.opacity = '1';
        entry.target.style.transform = 'translateY(0)';
      }
    });
  }, { threshold: 0.1 });

  // Apply initial hidden state and observe elements
  const animatedElements = document.querySelectorAll(
    '.course-card, .stat-item, .highlight-item, .insight-card, ' +
    '.arch-box, .metric, .other-card, .why-card, .journey-step, ' +
    '.award-item, .contact-item'
  );

  animatedElements.forEach((el, i) => {
    el.style.opacity = '0';
    el.style.transform = 'translateY(20px)';
    el.style.transition = `all 0.5s ease ${i * 0.05}s`;
    animateObserver.observe(el);
  });
});

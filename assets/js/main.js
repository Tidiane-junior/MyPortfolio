// Menu toggle (mobile)
const menuToggle = document.getElementById('menu-toggle');
const mobileMenu = document.getElementById('mobile-menu');
const menuClose = document.getElementById('menu-close');

if (menuToggle && mobileMenu) {
  menuToggle.addEventListener('click', () => mobileMenu.classList.remove('hidden'));
}
if (menuClose && mobileMenu) {
  menuClose.addEventListener('click', () => mobileMenu.classList.add('hidden'));
}
document.getElementById('year').textContent = new Date().getFullYear();

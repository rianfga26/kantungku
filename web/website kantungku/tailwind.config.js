const { addDynamicIconSelectors } = require('@iconify/tailwind');

/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{html,js,ts,tsx}"],
  theme: {
    fontFamily: {
      sans: ['Inter', 'sans-serif'],
      serif: ['Merriweather', 'serif'],
    },
    colors: {
      'main': '#339989',
      'ct': '#202A25' 
    },
    extend: {},
  },
  plugins: [
    require('daisyui'),
    addDynamicIconSelectors(),
  ],
}


const {
  addDynamicIconSelectors
} = require('@iconify/tailwind');

/** @type {import('tailwindcss').Config} */
export default {
  content: ["./src/**/*.{html,js,ts,tsx}"],
  theme: {

    extend: {}
  },
  daisyui: {
    themes: [{
      kantungku: {
        "primary": "#339989",
        "secondary": "#facc15",
        "accent": "#1f2937",
        "neutral": "#f3f4f6",
        "base-100": "#ffffff",
        "info": "#22d3ee",
        "success": "#34d399",
        "warning": "#fb923c",
        "error": "#f43f5e",
      },
    }, ],
  },

  plugins: [
    require('daisyui'),
    addDynamicIconSelectors(),
  ],
}
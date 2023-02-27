/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./coming_soon/content/index.html"],
  theme: {
    extend: {},
  },
  plugins: [
    require('tw-elements/dist/plugin'),
  ],
}

/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./content/**/*.{html,js,md}", "./layouts/**/*.{html,js}", "./node_modules/tw-elements/dist/js/**/*.js"],
  safelist: [
    'text-6xl',
    'text-5xl',
    'text-4xl',
    'text-3xl',
    'text-2xl',
    'text-xl',
  ],
  theme: {
    extend: {
      typography: {
        DEFAULT: {
          css: {
            maxWidth: '140ch',
          }
        }
      }
    },
  },
  plugins: [
    require('@tailwindcss/typography'),
    require('tw-elements/dist/plugin'),
  ],
}

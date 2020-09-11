const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  important: true,
  purge: [
    './slides.md'
  ],
  theme: {
    colors: {
      blue: '#064771'
    },
    extend: {
      fontFamily: {
        "mono": [
          'Operator Mono Medium',
          ...defaultTheme.fontFamily.mono
        ]
      }
    }
  },
  variants: {},
  plugins: []
}

const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  important: true,
  purge: [
    './slides.md'
  ],
  theme: {
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

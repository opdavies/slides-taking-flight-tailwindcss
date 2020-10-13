const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  important: true,
  purge: {
    mode: 'layers',
    content: [
      './slides.md',
      './template.html'
    ]
  },
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
  plugins: [],
  future: {
    purgeLayersByDefault: true
  }
}

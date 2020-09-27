module.exports = {
  plugins: [
  	require('postcss-nested'),
  	require('tailwindcss'),
  	require('autoprefixer'),
  	...(process.env.NODE_ENV === "production" ? [require("cssnano")] : []),
  ]
}
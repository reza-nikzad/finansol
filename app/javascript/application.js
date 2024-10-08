// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

console.log("JavaScript is active with import maps!");

// babel.config.js
module.exports = {
    presets: [
      '@babel/preset-env',
      '@babel/preset-react' // Include if you're using React
    ],
    plugins: [
      '@babel/plugin-proposal-private-methods',
      '@babel/plugin-proposal-private-property-in-object' // Add this line
    ]
  };
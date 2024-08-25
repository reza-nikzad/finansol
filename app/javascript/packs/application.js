import Rails from '@rails/ujs';
Rails.start();

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

console.log("JavaScript is active with import maps!");

  
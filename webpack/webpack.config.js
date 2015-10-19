const webpack = require('webpack');
const path = require('path');

var minimize = process.argv.indexOf('--no-minimize') === -1 ? true : false,
    plugins = [];

minimize && plugins.push(new webpack.optimize.UglifyJsPlugin());

module.exports = {
  entry: "./entry.js",
  output: {
    path: path.join(__dirname, '../', 'app', 'assets', 'javascripts'),
    filename: "bundle.js"
  },
  plugins: plugins,
  module: {
    loaders: [
      {
        test: /\.jsx?$/,
        exclude: /(node_modules|bower_components)/,
        loader: 'babel-loader'
      },
      {
        test: require.resolve("jquery"),
        loader: "expose?$!expose?jQuery"
      },
      {
        test: require.resolve("react"),
        loader: "expose?React"
      },
      {
        test: require.resolve("react-dom"),
        loader: "expose?ReactDOM"
      }
    ]
  }
};

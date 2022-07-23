const path = require('path');
const HtmlwebPackPlugin = require("html-webpack-plugin")

module.exports = {
    entry: './src/index.js',
    output: {
        path: path.resolve(__dirname, 'dist'),
        filename: 'bundler.js'
    },
    module: {
        rules: [
        {
            test: /\.(js|jsx)$/,
            exclude: /node_mosules/,
            use: {
                loader: "babel-loader"
            }
        }
        ]
    },
plugins: [
    new HtmlwebPackPlugin({
        template: './public/index.html',
        filename: './index.html'
    })
]
}
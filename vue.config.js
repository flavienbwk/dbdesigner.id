// vue.config.js
module.exports = {
  // options...
  devServer: {
    port: 8081,
    proxy: "http://localhost:81",
    disableHostCheck: true
  },
  publicPath: process.env.NODE_ENV === "production" ? "/static/app/" : "/"
};

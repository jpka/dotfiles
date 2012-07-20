alias servethis="python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'"
gruntc () {
  coffee -c grunt.coffee && grunt $*
  rm grunt.js  
}

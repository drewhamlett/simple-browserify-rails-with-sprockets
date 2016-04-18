### About
1. A way to use Browserify(or Webpack if you want) and keep asset pipeline for images and Sass.
2. Uses Watchify in development.  Much faster than browserify-rails.
3. tldr - Generates a bundle.js in development and sprockets requires this file.  
4. For production the script compiles bundle.js before assets:precompile
5. Everything works as expected

### Setup
```sh
bundle install
npm install
```

### Running
```sh
foreman start -f Procfile.dev 
```

### Heroku
```sh
heroku buildpacks:add --index 1 heroku/nodejs
heroku buildpacks:add --index 2 heroku/ruby
```


### Command used to generate project

Command used just to reduce folders
```sh
rails new --skip-puma -M -O -C -T --skip-turbolinks --skip-keeps simple-browserify-rails-with-sprocket
```

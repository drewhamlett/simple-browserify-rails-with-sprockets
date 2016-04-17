### About
1. A way to use Browserify(or Webpack if you want) and keep asset pipeline for images and Sass
2. Uses watchify.  Way faster than browserify-rails.
3. Basically generates a bundle.js in development and sprockets requires this file.  
4. In production it compiles bundle.js before doing RAILS_ENV=production rake assets:precompile
Everything works as expected

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

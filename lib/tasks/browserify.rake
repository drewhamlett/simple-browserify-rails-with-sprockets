namespace :browserify do
  in_file = 'app/assets/javascripts/app/main.js'
  out_file = 'vendor/assets/javascripts/bundle.js'

  task :development do
    watchify = 'node_modules/.bin/watchify'
    cmd = "#{watchify} #{in_file} -o #{out_file} -v -d"
    system(cmd)
  end

  task :production do
    browserify = 'node_modules/.bin/browserify'
    env = 'NODE_ENV=production '
    cmd = "#{env} #{browserify} #{in_file} -o #{out_file}"
    system(cmd)
  end
end

task :browser_sync do
  browser_sync = 'node_modules/.bin/browser-sync'
  options = 'start --no-open --proxy localhost:3001'
  watch = [
    'app/views/**/*.html.erb',
    'app/assets/stylesheets/**/*.scss',
    'vendor/assets/javascripts/bundle.js'
  ]

  files = watch.join(' ')
  system("#{browser_sync} #{options} --files #{files}")
end

task :before_assets_precompile do
  puts 'Running browserify in production...'
  Rake::Task['browserify:production'].execute
  puts 'Browserify done'
end

Rake::Task['assets:precompile'].enhance ['before_assets_precompile']

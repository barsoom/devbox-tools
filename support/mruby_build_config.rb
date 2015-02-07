MRuby::Build.new do |conf|
  toolchain :gcc

  # Versions only locked down for reliability, could probably be upgraded

  # Add "File", etc.
  conf.gem :github => "iij/mruby-io", :checksum_hash => "3a97a453c486cd1ce9456970b686ab24f8126980"

  # Test framework
  conf.gem :github => "iij/mruby-mtest", :checksum_hash => "dab50c72018fb4ae9ecd5855ac5fe3001a3246fa"

  # Add "require" and it's deps
  conf.gem :github => "iij/mruby-require", :checksum_hash => "6ced4881e88854fd3e749aa30e042440a6c4de6a"
  conf.gem :github => "iij/mruby-dir", :checksum_hash => "6cc24d07935a265df6edad4352ece1b1c3aca8dc"
  conf.gem :github => "iij/mruby-tempfile", :checksum_hash => "48f92e93bc212ab8ea2f4c68e3564573e64877d8"
  conf.gem "mrbgems/mruby-eval"

  # Add "system"
  conf.gem :github => "hiroeorz/mruby-syscommand", :checksum_hash => "9ea1f4fbe77d472254da7fe2a4487212a06e4fb0"

  # Add "exit"
  conf.gem "mrbgems/mruby-exit"

  # Adds default gems, seems like a good idea.
  conf.gembox 'default'
end
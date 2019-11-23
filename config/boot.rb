
require "bootsnap"
Bootsnap.setup(
  cache_dir: "tmp/cache",
  development_mode: ENV["RAILS_ENV"] == "development",
  compile_cache_iseq: false
  )

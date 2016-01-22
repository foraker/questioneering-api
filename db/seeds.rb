require_relative './seed_data'

yaml = YAML.load_file(Rails.root.join('db/seed_data.yml'))

SeedData.new(yaml).load!

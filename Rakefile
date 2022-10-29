require_relative './config/environment'
require 'sinatra/activerecord/rake'

desc "start server"
task :server do 
    if ActiveRecord::Base.connection.migration_context.needs_migration?
        puts "Migrations are pending. Make sure to run `rake db:migrate` first."
        return
    end

    ENV["PORT"] ||= "9292"
    rackup = "rackup -p #{ENV['PORT']}"

    exec "bundle exe rerun -b '#{rackup}'"
end
    

desc "rake console"
task :console do 
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    Pry.start
end
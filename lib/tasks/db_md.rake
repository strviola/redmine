namespace :db do
  desc 'Generate document abount DB structure in Markdown format'
  task md: :environment do
    ActiveRecord::Base.connection.tables.each do |table|
      # TODO: output DB document
    end
  end
end

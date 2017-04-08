namespace :db do
  desc 'Generate document abount DB structure in Markdown format'
  task md: :environment do
    ActiveRecord::Base.connection.tables.each do |table_name|
      # TODO: output DB document
      unless system_table? table_name
        puts "- #{table_name}"
        begin
          table_name.classify.constantize.columns.each do |column|
            puts "  - #{column.name}"
          end
        rescue NameError => e
        end
      end
    end
  end
end

def system_table?(table_name)
  %w(
    schema_migrations
  ).include?(table_name)
end

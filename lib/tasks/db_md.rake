namespace :db do
  desc 'Generate document abount DB structure in Markdown format'
  task md: :environment do
    puts '# Tables'
    puts ''
    ActiveRecord::Base.connection.tables.each do |table_name|
      # TODO: output DB document
      unless system_table? table_name
        puts "## #{table_name.classify}"
        puts ''
        puts "- #{table_name}"
        begin
          table_name.classify.constantize.columns.each do |column|
            puts "  - #{column.name}"
          end
        rescue NameError => e
        end
        puts ''
      end
    end
  end
end

def system_table?(table_name)
  %w(
    schema_migrations
  ).include?(table_name)
end

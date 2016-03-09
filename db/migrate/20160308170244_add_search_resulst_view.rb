class SearchResulstView < ActiveRecord::Migration
  def up
    ActiveRecord::Base.connection.execute <<-SQL
       CREATE OR REPLACE VIEW searches AS
          SELECT
            books.id AS searchable_id,
            'Book' AS type,
            books.title AS context
          FROM books
            
          UNION 
            
          SELECT
            books.id AS searchable_id,
            'Book' AS type,
            books.description AS context
          FROM books
          
          UNION
          
          SELECT 
            categories.id AS searchable_id,
            'Category' AS type,
            categories.name AS context
          FROM categories
    SQL
  end
  
  def down
    ActiveRecord::Base.connection.execute <<-SQL
      DROP VIEW searches
    SQL
  end 
end

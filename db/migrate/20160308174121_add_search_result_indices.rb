class AddSearchResultIndices < ActiveRecord::Migration
  def up
    ActiveRecord::Base.connection.execute <<-SQL
      CREATE INDEX index_books_on_title ON books USING gin(to_tsvector('english',title));
      CREATE INDEX index_books_on_description ON books USING gin(to_tsvector('english',description));
      CREATE INDEX index_categories_on_name ON categories USING gin(to_tsvector('english',name));
    SQL
  end
  
  def down
    ActiveRecord::Base.connection.execute <<-SQL
      DROP INDEX index_books_on_title;
      DROP INDEX index_books_on_description;
      DROP INDEX index_categories_on_name;
    SQL
  end
end

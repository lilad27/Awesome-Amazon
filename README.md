Category model has only a name.

Each category has many books.

Book model has, at least, the following attributes: 
title - string
description - text
created_at - timestamp

Landing page - Display recent 5 books (define recent by created_at timestamp) as following:
title, category name, link to the book page

get an input from a user and search for any related content in Category, Book title or Book description and display up to 10 relevant results. 
At least 3 characters required for searching.

Seed data:
least 10 different categories.
Each category has 3 - 6 books 
Use Faker gem in order to populate the data via seeds.rb
SELECT SSDLab.issued_users.user_name, SSDLab.books.title, SSDLab.authors.author_name
FROM SSDLab.issued_users, SSDLab.books, SSDLab.authors
WHERE (SSDLab.books.title IS NOT NULL AND SSDLab.authors.author_name IS NOT NULL);
SELECT SSDLab.books.title, SSDLab.authors.author_name, MAX(SSDLab.issued_users.date_issued) AS "recent_date_issued"
FROM SSDLab.books, SSDLab.authors, SSDLab.issued_users
WHERE SSDLab.books.author_id = SSDLab.authors.author_id AND SSDLab.issued_users.book_id = SSDLab.books.book_id
GROUP BY SSDLab.books.title,SSDLab.authors.author_name
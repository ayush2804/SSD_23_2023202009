SELECT SSDLab.authors.author_name, COUNT(SSDLab.books.book_id) AS "book_count"
FROM SSDLab.authors, SSDLab.books
WHERE SSDLab.authors.author_id = SSDLab.books.author_id
GROUP BY SSDLab.authors.author_name
HAVING book_count >= 2
ORDER BY book_count DESC, SSDLab.authors.author_name ASC;
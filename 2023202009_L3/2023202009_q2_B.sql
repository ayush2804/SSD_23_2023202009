SELECT SSDLab.books.genre, COUNT(SSDLab.issued_users.user_id) AS "total_use_count"
FROM SSDLab.books, SSDLab.issued_users
GROUP BY SSDLab.books.genre;
SELECT SSDLab.issued_users.user_name, SSDLab.books.genre
FROM SSDLab.issued_users, SSDLab.books;

SELECT DISTINCT SSDLab.issued_users.user_name, SSDLab.books.genre
FROM SSDLab.issued_users
CROSS JOIN (
    SELECT DISTINCT SSDLab.books.genre
    FROM SSDLab.books
)
ORDER BY u.user_name, g.genre_name;
USE Publishing;

-- 1. Показать все книги трех произвольных авторов.
SELECT bookNane, price, drawingOfBook, numbersOfPages, topicID, authorID, firstName AS AuthorName, lastName AS AuthorSureName FROM Books 
JOIN Authors ON Authors.ID_Author = Books.authorID WHERE lastName IN ('Speilenman', 'Duck', 'Ole');

-- 2. Показать все книги, в которых количество страниц больше 500, но меньше 650.
SELECT * FROM Books WHERE numbersOfPages BETWEEN 500 AND 650;

-- 3. Необходимо вывести все названия книг, в которых первая буква или А, или С.
SELECT * FROM Books WHERE bookName LIKE 'A%' OR bookName LIKE 'C%';

-- 4. Показать названия книг, тематика которых не "Science Fiction" и тираж которых >=20 экземпляров.
SELECT bookName AS NameOFBook, topicID AS Theme, drawingOfBook AS circulationOfBook FROM Books
JOIN bookTopic ON bookTopic.ID_Topic = Books.topicID WHERE topicName != 'Science Fiction' AND drawingOfBook >= 20;

-- 5. Показать все книги, цена которых ниже $30.
SELECT * FROM Books WHERE price < 30;

-- 6. Показать книги, названия которыx начинаються на "Microsoft", и не заканчиваются на "Windows".
SELECT bookName, price, drawingOfBook, numbersOfPages, topicID, firstName AS nameOfAuthor, lastName AS sureNameOfAuthor FROM Books
JOIN Authors ON Authors.ID_Author = Books.authorID WHERE bookName LIKE 'Microsoft%' AND bookName NOT LIKE '%Windows';

-- 7. Вывести названия книг, тематику, автора (полное имя), цена одной страницы которых менее 10 центов.
SELECT bookName, topicName, CONCAT(firstName, ' ', lastName) AS author, (price / numbersOfPages) AS priseOfOnePage FROM Books
JOIN Authors ON ID_Author = authorID
JOIN bookTopic ON ID_Topic = topicID
GROUP BY bookName, topicName, author, priseOfOnePage HAVING (priseOfOnePage < 0.10);

-- 8. Показать все магазины из Украины.
SELECT storeName, nameOfCountry AS CountryStore FROM bookStore
JOIN Country ON Country.ID_Country = bookStore.ID_BookStore WHERE nameOfCountry = 'Ukraine';





---create 4 question on your data like above and solve--

select * from authors

select * from books

---1) what is the number of books along with authors name whose authors are born between 1981 and 2000

select a.name, a.birth_year, count(b.book_id) as "book_count" from books as b
inner join authors as a
on b.author_id = a.author_id
where a.birth_year between 1981 and 2000
group by a.name, a.birth_year

---2)what is the average number of books of the genre "mystery" and "fantasy" written by authors along with their gender

select a.name, a.gender,b.genre as "book_genre", avg(b.book_id) as "avg_n0_of_books" from books as b
inner join authors as a
on b.author_id = a.author_id
where b.genre = 'mystery' or b.genre ='fantasy'
group by a.name, a.gender,b.genre
	
---3)list all the books of Horror genre along with their author's names	

select b.title as "book_name" , a.name as "author_name" from books as b
inner join authors as a
on b.author_id = a.author_id
where b.genre = 'horror'

--5) what is the number of books written by each author along with their gender

select a.name, a.gender, count(b.book_id) as "book_count" from books as b
inner join authors as a
on b.author_id = a.author_id
group by a.name, a.gender
order by count(b.book_id)
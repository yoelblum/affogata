# README

Pixels:

0) clone the repo, bundle install
1) Run ```bundle exec rails s```
2) go to http://localhost:3000/pixels_population (refresh as much as u like)
3) Alternative (through the console):
```bundle exec rails c```
```PixelsPopulation.new ```

#Question 1
```
CREATE TABLE notifications (
	id INT NOT NULL AUTO_INCREMENT
	type tinyint NOT NULL,
	notifiable_id INT unsigned NOT NULL,
	notifiable_type VARCHAR(10) NOT NULL,
	relation_id_1 INT unsigned,
	relation_type_1 VARCHAR(10),
	relation_id_2 INT unsigned,
	relation_type_2 VARCHAR(10),
	updated_at TIMESTAMP NOT NULL,
	created_at TIMESTAMP NOT NULL,
	PRIMARY KEY (`id`) 
);
```
Changes
1) the backticks probably shouldn't be there (wrote above a fixed version of the query)
2) id INT: consider bigint (default in Rails now I think). INT is big (around 4 billion) but if u have 10 million users it's not impossible you'll run out!
3) for the column type int is probably too big and the (8) donesnt do what you'd expect. tinyint is probably more approrpiate.
4) relation_id_1, relation_type_1, relation_id_2, relation_type_2: it's probably ok to have two polymorphic fields but they should hold the name of the model they're attached to!
5) TIMESTAMP: interesting choice, I didn't know the difference in mysql between datetime and timestamp. Rails goes for datetime (which will still work after 2038) but timestamp may be ok as well.


#Question 2

1) throttling: remember what ips made how many requests, block recurring ips with too many requests
2) robots.txt (will at least stop search engines)
3) find predictable crawling patterns (e.g time between page views is constant). This is probably best done with some SAAS
4) If we're on a budget check out OSS tools (https://github.com/loadkpi/crawler_detect). They seem to only check headers, a good scraper can probably bypass it
5) 

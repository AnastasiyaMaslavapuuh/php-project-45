install:
	composer install
brain-games:
	./bin/brain-games
validate:
	composer validate
console:
	composer exec --verbose psysh

lint:
	composer exec --verbose phpcs -- src tests
	composer exec --verbose phpstan

lint-fix:
	composer exec --verbose phpcbf -- src tests

test:
	composer exec --verbose phpunit tests

test-coverage:
	XDEBUG_MODE=coverage composer exec --verbose phpunit tests -- --coverage-clover 
build/logs/clover.xml

test-coverage-text:
	XDEBUG_MODE=coverage composer exec --verbose phpunit tests -- --coverage-text

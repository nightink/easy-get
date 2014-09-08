
MOCHA_OPTS = --check-leaks
REPORTER = spec
REGISTRY = --registry=http://registry.npm.taobao.org
DISTURL = --disturl=http://npm.taobao.org/dist

TESTS = test/*

install:
	@npm install

test: install
	@NODE_ENV=test ./node_modules/.bin/mocha \
		--require should \
		--reporter $(REPORTER) \
		$(TESTS) \
		$(MOCHA_OPTS)

jshint:
	@./node_modules/.bin/jshint ./

.PHONY: test
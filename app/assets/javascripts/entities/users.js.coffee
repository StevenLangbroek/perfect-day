define (require) ->

	Collection = require 'lib/entities/collection'
	User = require 'entities/user'

	class Users extends Collection
		model: User
		url: '/users.json'
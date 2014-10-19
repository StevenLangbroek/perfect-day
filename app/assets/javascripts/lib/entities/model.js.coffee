define (require) ->

	Backbone = require 'backbone'

	class Model extends Backbone.Model
		fetch: ->
			defer = $.Deferred()
			_fetch = super
			_fetch.done =>
				defer.resolveWith(@)

			defer.promise()
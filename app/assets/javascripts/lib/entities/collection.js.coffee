define (require) ->

	Backbone = require 'backbone'

	class Collection extends Backbone.Collection
		fetch: ->
			defer = $.Deferred()
			_fetch = super
			_fetch.done (resp, status, xhr) =>
				defer.resolve(@)

			defer.promise()
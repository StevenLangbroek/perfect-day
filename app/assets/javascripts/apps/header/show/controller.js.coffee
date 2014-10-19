define (require) ->

	Marionette = require 'marionette'

	ApplicationController = require 'lib/controllers/application'

	HeaderView = require 'apps/header/show/header'

	class HeaderController extends ApplicationController
		initialize: (options) ->
			@show(@_getHeaderView())

		_getHeaderView: ->
			new HeaderView()

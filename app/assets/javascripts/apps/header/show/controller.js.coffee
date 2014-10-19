define (require) ->

	Marionette = require 'marionette'

	ApplicationController = require 'lib/controllers/application'

	HeaderView = require 'apps/header/show/header'

	class HeaderController extends ApplicationController
		initialize: (options) ->

			headerView = @_getHeaderView()

			@show headerView

		_getHeaderView: ->
			new HeaderView()
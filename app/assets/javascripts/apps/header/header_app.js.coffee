define (require) ->

	Marionette = require 'marionette'

	ApplicationModule = require 'lib/modules/application'

	HeaderController = require 'apps/header/show/controller'

	class HeaderApp extends ApplicationModule
		startWithParent: true
		onStart: (options) ->
			new HeaderController
				region: @app.headerRegion
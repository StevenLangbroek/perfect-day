define (require) ->

	Marionette = require 'marionette'
	ApplicationModule = require 'lib/modules/application'

	FooterController = require 'apps/footer/show/controller'

	class FooterApp extends ApplicationModule
		startWithParent: true
		onStart: ->
			new FooterController
				region: @app.footerRegion
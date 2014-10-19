define (require) ->

	Marionette = require 'marionette'

	FooterApp = require 'apps/footer/footer_app'
	HeaderApp = require 'apps/header/header_app'

	require('config/renderer')

	window.PerfectDayApp = App = new Marionette.Application()

	App.addRegions
		headerRegion: '#header_region'
		bodyRegion: '#body_region'
		footerRegion: '#footer_region'

	App.addInitializer (options) ->
		console.log("Hello world!")

	App.on 'start', (options) ->
		@module 'FooterApp', FooterApp
		@module 'HeaderApp', HeaderApp

	App
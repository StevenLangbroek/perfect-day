define (require) ->

	Marionette = require 'marionette'

	Marionette.Renderer.render = (template, data) ->
		template(data) if template
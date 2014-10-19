define (require) ->

	Marionette = require 'marionette'

	class ApplicationModule extends Marionette.Module
		starWithParent: false

define (require) ->

	Marionette = require 'marionette'

	ItemView = require 'lib/views/itemview'

	class FooterView extends ItemView
		template: require('apps/footer/show/templates/footer')
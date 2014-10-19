define (require) ->

	Marionette = require 'marionette'

	ItemView = require 'lib/views/itemview'

	class HeaderView extends ItemView
		template: require('./templates/header')
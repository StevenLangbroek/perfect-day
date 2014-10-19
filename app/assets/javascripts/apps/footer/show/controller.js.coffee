define (require) ->

	Marionette = require 'marionette'
	ApplicationController = require 'lib/controllers/application'

	FooterView = require 'apps/footer/show/footer'
	Users = require 'entities/users'

	class FooterController extends ApplicationController
		initialize: (options) ->
			@listUsers()

		listUsers: ->
			@show(@_getFooterView())

		_getFooterView: ->
			new FooterView()

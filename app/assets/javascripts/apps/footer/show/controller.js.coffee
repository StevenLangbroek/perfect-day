define (require) ->

	Marionette = require 'marionette'
	ApplicationController = require 'lib/controllers/application'

	FooterView = require 'apps/footer/show/footer'
	Users = require 'entities/users'

	class FooterController extends ApplicationController
		initialize: (options) ->
			new Users().fetch().done(_.bind(@listUsers, @))

		listUsers: (users) =>
			footerView = @_getFooterView(users)

			@show(footerView)

		_getFooterView: (users) ->
			new FooterView(collection: users)
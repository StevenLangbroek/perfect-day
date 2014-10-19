define (require) ->

	Marionette = require 'marionette'
	reqres = require 'utils/reqres'

	class ApplicationController extends Marionette.Controller
		constructor: (options = {}) ->
			_.defaults options,
				region: reqres.request('default:region')

			{ @region } = options

			super

		show: (view, region = @region) ->
			region.show(view)
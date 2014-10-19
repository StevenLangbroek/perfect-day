define (require) ->
	wreqr = require('backbone.wreqr')
	globalCh = Backbone.Wreqr.radio.channel('global')
	globalCh.reqres
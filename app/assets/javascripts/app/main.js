import $ from 'jquery'
import _ from 'lodash'
import moment from 'moment'

window.jQuery = $

require('jquery-ujs')

$(function() {
  const $body = $('body')
  _.range(0, 5).forEach(() => {
    $body.append('Hello from browserify')
    $body.append('<br />')
  })

  $body.append(moment().toString())
})

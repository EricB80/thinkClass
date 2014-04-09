# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  #alert "Testing"
  
  $('#answers').on 'change', ->
    num_ans = $('#answers').val()
    #alert(num_ans)
    $.ajax({
           url: '/answer/fields',
           data: num_ans,
           type:'get'
           success: (data)->
            $('#filler').html(data)
      })
preFunc = null
preInput = ""
input = ""
$ ->
  ajaxPost = (input) ->
    $.ajax
      url: "/brands/ajax_brand_list"
      type: "GET"
      data: ("search_text=" + input)
    return
  $("#inc_search").on "keyup", ->
    input = $.trim($(this).val())
    if preInput isnt input and input.length isnt 0
      clearTimeout preFunc
      preFunc = setTimeout(ajaxPost(input), 500)
    preInput = input
    return

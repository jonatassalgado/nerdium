# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


  $(document).ready ->
  	$("[data-behaviour~=datepicker]").datepicker 
  		format: "dd/mm/yyyy"
  		language: "pt-BR"
  		todayHighlight: true
  		todayBtn: true
  	return

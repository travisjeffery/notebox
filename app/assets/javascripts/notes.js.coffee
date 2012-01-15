# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ -> 
  $('textarea#note_description').autoResize
    maxHeight: 350

  $('.destroy-action').click ->
    $this = $(this)
    $modal = $('#destroy-modal')
    $button = $modal.find(".btn.danger")
    noteId = $this.data("note-id")
    notePath = $button.prop("href") + "/" + noteId
    noteName = $this.data("note-name")
    $modal.find(".modal-header h3").html "Destroy <em>" + noteName + "</em>"
    $button.prop("href", notePath)
    $button.data("note-id", noteId)
    $modal.modal 'show'

  $('#destroy-modal').find(".btn.danger").click ->
    $this = $(this)
    $modal = $('#destroy-modal')
    hideNote $this.data("note-id")
    $modal.modal 'hide'

  $(".close-modal").click ->
    $this = $(this)
    modalId = $this.closest(".modal").prop("id")
    $("#" + modalId).modal 'hide'

hideNote = (id) ->
  $("#notes").find("#note-" + id).hide('fast')

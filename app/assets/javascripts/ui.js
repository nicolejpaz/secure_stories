$(document).ready(function() {
  $("#story_name").focus(function() {
    var storyInput = $(this)
    var storyForm = $(storyInput.parents()[1])
    var storySpan = $(storyForm.parent().find('span'))
    
    if (storySpan.length == 1) {
      storyInput.val('')
      storyForm.append('<span class="form-span">Optional. What would you like your story to be called?</span>')
    }
  })
})
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# Counter for exercise checkboxes
jQuery ->
    max = 2;
    checkboxes = $('input[type="checkbox"]');

    checkboxes.change ->
        current = checkboxes.filter(':checked').length
        checkboxes.filter(':not(:checked)').prop('disabled', current >= max)








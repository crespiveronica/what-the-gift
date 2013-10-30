$(document).ready( function() {
    var elements = document.getElementsByName("ban-reason");
    for (var i = 0; i < elements.length; i++) {
        elements[i].oninvalid = function(e) {
            e.target.setCustomValidity("La razón no puede estar vacía");
        };
    }
});
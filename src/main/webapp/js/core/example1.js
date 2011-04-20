$().ready(function() {
  $("#userAccount").submit(function(event) {
    event.preventDefault();
    alert("Form submitted");
  });
  $("a").click(function(event) {
    event.preventDefault();
    alert($(this).text() + " Link Clicked");
  });
});
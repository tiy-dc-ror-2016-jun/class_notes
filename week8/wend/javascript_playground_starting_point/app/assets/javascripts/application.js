// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

console.log(1+1);

var list_elements = document.getElementsByClassName("list-element");
console.log(list_elements);

for (var i = 0; i < list_elements.length; i++) {
  var list_element = list_elements[i];
  list_element.style.color = "red";
}

// Core JS
// // Define Callback
// function toggleSection(event) {
//   console.log(event);
//   var el = document.getElementById('show_hide_section');
//   el.style.display = "block";
// };
//
// // Find and bind event
// var toggle_show = document.getElementById("show_true");
// toggle_show.addEventListener("click", toggleSection)
//

function toggleSection(event) {
  var el = $('#show_hide_section');

  if (el.is(":visible")) {
    el.hide();
  } else {
    el.show();
  }
}

$("#show_true").on("click", toggleSection)
$("#show_false").on("click", toggleSection)
























// var nameLink = document.getElementById('name_link');
// nameLink.addEventListener("click", function () {
//   var name_field = document.getElementById('name_field');
//   name_field.value = "Backflip";
// });
//
// var trueRadioBtn = document.getElementById('show_true')
// trueRadioBtn.addEventListener("click", function () {
//   var section = document.getElementById('show_hide_section');
//   section.style = "display: block";
// });
//
// var copyLink = document.getElementById('copy_link')
//
// copyLink.addEventListener("click", function () {
//   var copySection = document.getElementById('copy_section');
//
// });
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// //alert("I HAVE YOU NOW!");
// //
// // function defaultName() {
// //   var nameField = document.getElementById("name_field");
// //   nameField.value = "Emperor Goatimus";
// // }
// //
// // function displaySection(displayType) {
// //   var section = document.getElementById("show_hide_section");
// //   section.style.display = displayType;
// // }
// //
// // function copySection() {
// //   var section = document.getElementById("copy_section");
// //   var copy = section.lastElementChild.cloneNode(true);
// //   section.appendChild(copy);
// // }

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

var nameLink = document.getElementById('name_link');
nameLink.addEventListener("click", function () {
  var name_field = document.getElementById('name_field');
  name_field.value = "Backflip";
});

var trueRadioBtn = document.getElementById('show_true')
trueRadioBtn.addEventListener("click", function () {
  var section = document.getElementById('show_hide_section');
  section.style = "display: block";
});

var copyLink = document.getElementById('copy_link')

copyLink.addEventListener("click", function () {
  var copySection = document.getElementById('copy_section');
  
});



























//alert("I HAVE YOU NOW!");
//
// function defaultName() {
//   var nameField = document.getElementById("name_field");
//   nameField.value = "Emperor Goatimus";
// }
//
// function displaySection(displayType) {
//   var section = document.getElementById("show_hide_section");
//   section.style.display = displayType;
// }
//
// function copySection() {
//   var section = document.getElementById("copy_section");
//   var copy = section.lastElementChild.cloneNode(true);
//   section.appendChild(copy);
// }

//= require rails-ujs
//= require_tree .
// document.querySelector('.card-goals').addEventListener('click', function(e){
//   document.querySelector('.milestones').classList.toggle("block");
//   console.log("trig");
// });


// document.querySelector('.card-full-new-goal').addEventListener('click', function(e) {
//   document.querySelector('.card-full-popup').classList.toggle("flex");
// })


// document.querySelector('.close-full-popup').addEventListener('click', function(e){
//   document.querySelector('.card-full-popup').style.display = "none";
// })
var x = document.querySelectorAll('.collapsible');
x.forEach(function(e) {
 e.addEventListener('click', function(e) {
    el.target.nextElementSibling.classList.toggle('block');
 })  
});


document.querySelector('.hamburger-trigger-area').addEventListener('click', function(e) {
  document.querySelector('.navbar-content').classList.toggle('flex');
});


document.querySelector('.submit-entry').addEventListener('click', function(e) {
  document.querySelector('.card-journal-entries').style.display = "none";
  document.querySelector('.card-journal-milestones').style.display = "flex";
})



document.querySelector('.open-target').addEventListener('click', function(e) {
  document.querySelector('#popup-goal').classList.toggle('block');
})

document.querySelector('.close-popup').addEventListener('click', function(e) {
  document.querySelector('#popup-goal').classList.toggle('none');
  console.log("hit")
})
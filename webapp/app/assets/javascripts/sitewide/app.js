function interactiveIcons() {
    var wrapper = document.getElementById('interactiveWrapper');
    var oldName = "grid-item--sm-md-span-8 wip";
    var textBody = document.getElementById('interactiveBody');
    var textGroup = document.getElementById('interactiveGroup');
    var icon1 = document.getElementById('icon-1');
    var icon2 = document.getElementById('icon-2');
    var icon3 = document.getElementById('icon-3');
    var icon4 = document.getElementById('icon-4');
    var body1 = document.getElementById('body-1').innerHTML;
    var body2 = document.getElementById('body-2').innerHTML;
    var body3 = document.getElementById('body-3').innerHTML;
    var body4 = document.getElementById('body-4').innerHTML;
    var head1 = document.getElementById('head-1').innerHTML;
    var head2 = document.getElementById('head-2').innerHTML;
    var head3 = document.getElementById('head-3').innerHTML;
    var head4 = document.getElementById('head-4').innerHTML;
    var delay = 750/2;

    icon1.addEventListener('click', function(){
        wrapper.className = oldName;
        wrapper.className += " interactiveAnimation";
        setTimeout(function() {
          textGroup.innerHTML = head1;
          textBody.innerHTML = body1;
          setTimeout(function() { wrapper.className = oldName; }, delay);
        }, delay);
    });

    icon2.addEventListener('click', function(){
        wrapper.className = oldName;
        wrapper.className += " interactiveAnimation";
        setTimeout(function() {
          textGroup.innerHTML = head2;
          textBody.innerHTML = body2;
          setTimeout(function() { wrapper.className = oldName; }, delay);
        }, delay);
    });

    icon3.addEventListener('click', function(){
      wrapper.className = oldName;
      wrapper.className += " interactiveAnimation";
      setTimeout(function() {
        textGroup.innerHTML = head3;
        textBody.innerHTML = body3;
        setTimeout(function() { wrapper.className = oldName; }, delay);
      }, delay);
    });

    icon4.addEventListener('click', function(){
      wrapper.className = oldName;
      wrapper.className += " interactiveAnimation";
      setTimeout(function() {
        textGroup.innerHTML = head4;
        textBody.innerHTML = body4;
        setTimeout(function() { wrapper.className = oldName; }, delay);
      }, delay);
    });
}
function mobileNav() {
  var dropdownChevron = document.getElementsByClassName("dropdown-chevron");
  var oldDropdownClass = "fa fa-chevron-down dropdown-chevron";
  var newDropdownClass = "fa fa-chevron-up dropdown-chevron";
  var navIcon = document.getElementsByClassName("nav-icon")[0];
  var navContent = document.getElementsByClassName("mobile-nav-content")[0];
  var oldNavClass = "mobile-nav-content";
  var newNavClass = "mobile-nav-content show-nav";
  navIcon.addEventListener('click', function(event) {
    if(navContent.style.height == "") {
      navContent.style.height = "25em";
      // navContent.style.padding = "5em 1em";
      navContent.style.opacity = "1";
      navIcon.style.background = "none";
    } else {
      navContent.style.height = "";
      // navContent.style.padding = "0";
      navContent.style.opacity = "0";
      navIcon.style.background = "rgba(27,27,27,0.85)";
    }
  });
  Array.prototype.forEach.call(dropdownChevron, function(el) {
    el.addEventListener('click', function(event) {
      event.preventDefault();
      var parent = this.parentElement.parentElement;
      if (parent.children[1].style.height == '3.5em') {
        parent.children[1].style.height = '0';
        el.className = oldDropdownClass;
      } else {
        parent.children[1].style.height = '3.5em';
        el.className = newDropdownClass;
      }

    });
  });
}
function imageFound() {
  var defaultImg = document.getElementById('default-img');
  defaultImg.style.display = 'none';
}
function slider() {
  var parent = document.getElementById('sponsor-images');
  var kids = parent.children;
  for (var i = 0; i < kids.length; i++ ) {

  (function(i){
    var slideBefore = kids[i-1];
    var slideCurrent = kids[i];
    var slideAfter = kids[i+1];
        setTimeout(function(){
          slideCurrent.style.left = "50%";
          if (slideBefore) {
            slideBefore.style.left = "-100%";
          }
          if (slideAfter) {
          slideAfter.style.left= "200%";
        }
      }, 3000 * i);
      if (i == kids.length) {
        i = 0;
      }
    }(i));

  }
}
if (document.getElementById('interactiveWrapper')) {
interactiveIcons();
}
mobileNav();
slider();

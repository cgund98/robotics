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
          setTimeout(function() { wrapper.className = oldName; }, delay)
        }, delay);
    });

    icon2.addEventListener('click', function(){
        wrapper.className = oldName;
        wrapper.className += " interactiveAnimation";
        setTimeout(function() {
          textGroup.innerHTML = head2;
          textBody.innerHTML = body2;
          setTimeout(function() { wrapper.className = oldName; }, delay)
        }, delay);
    });

    icon3.addEventListener('click', function(){
      wrapper.className = oldName;
      wrapper.className += " interactiveAnimation";
      setTimeout(function() {
        textGroup.innerHTML = head3;
        textBody.innerHTML = body3;
        setTimeout(function() { wrapper.className = oldName; }, delay)
      }, delay);
    });

    icon4.addEventListener('click', function(){
      wrapper.className = oldName;
      wrapper.className += " interactiveAnimation";
      setTimeout(function() {
        textGroup.innerHTML = head4;
        textBody.innerHTML = body4;
        setTimeout(function() { wrapper.className = oldName; }, delay)
      }, delay);
    });
}
interactiveIcons();

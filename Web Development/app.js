function interactiveIcons() {
    var wrapper = document.getElementById('interactiveWrapper');
    var oldName;
    var textBody = document.getElementById('interactiveBody');
    var textGroup = document.getElementById('interactiveGroup');
    var techIcon = document.getElementById('tech-icon');
    var prIcon = document.getElementById('pr-icon');
    var programmingIcon = document.getElementById('programming-icon');
    var electricalIcon = document.getElementById('electrical-icon');
    var techBody = document.getElementById('tech-body').innerHTML;
    var prBody = document.getElementById('pr-body').innerHTML;
    var programmingBody = document.getElementById('programming-body').innerHTML;
    var electricalBody = document.getElementById('electrical-body').innerHTML;
    techIcon.addEventListener('click', function(){
        wrapper.className = oldName;
        wrapper.className += " interactiveAnimation";
        // window.setTimeout(function() {changeToTech() };, 500);
        // window.alert(techBody);
    });
    prIcon.addEventListener('click', function(){
        wrapper.className = oldName;
        wrapper.className += " interactiveAnimation";
        // window.setTimeout(function() {changeToPr() };, 500);
        // window.alert(techBody);
    });
    programmingIcon.addEventListener('click', function(){
        wrapper.className = oldName;
        wrapper.className += " interactiveAnimation";
        // window.setTimeout(function() {changeToProgramming() };, 500);
        // window.alert(techBody);
    });
    electricalIcon.addEventListener('click', function(){
        wrapper.className = oldName;
        wrapper.className += " interactiveAnimation";
        // window.setTimeout(function() {changeToElectrical() };, 500);
        // window.alert(techBody);
    });
    function changeToTech() {
        textGroup.innerHTML = "Tech";
        textBody.innerHTML = techBody;
        // wrapper.className = oldName;
    }
    function changeToPr() {
        textGroup.innerHTML = "Public Relations";
        textBody.innerHTML = prBody;
        // wrapper.className = oldName;
    }
    function changeToProgramming() {
        textGroup.innerHTML = "Programming";
        textBody.innerHTML = programmingBody;
        // wrapper.className = oldName;
    }
    function changeToElectrical() {
        textGroup.innerHTML = "Electrical";
        textBody.innerHTML = electricalBody;
        // wrapper.className = oldName;
    }
}
interactiveIcons();
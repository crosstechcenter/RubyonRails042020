function program() {
    var html = '<progress class="progress is-small is-primary" max="100">15%</progress>';
    var tag = document.getElementById("click");
    tag.innerHTML = html;
}

function stopProgram() {
    var tag = document.getElementById("click");
    tag.innerHTML = "";
}
document.addEventListener("DOMContentLoaded", function () {

    const hList = document.getElementsByTagName("article");

    for (let i = 0; i < hList.length; i++) {
        hList[i].addEventListener("mouseover", pop);
        hList[i].addEventListener("mouseout",out);
    }

    function pop(event) {
        const targetH2 = event.currentTarget.querySelector("h2");
        targetH2.style.display = "block";
        targetH2.style.opacity = 1;
        targetH2.style.transitionDuration="1s";
    }

    function out(event) {
        const targetH2 = event.currentTarget.querySelector("h2");
        targetH2.style.display = "none";
        targetH2.style.opacity = 0;
        targetH2.style.transitionDuration="1s";
    }
});

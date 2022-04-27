document.querySelectorAll(".button_nav").forEach(v => {v.onclick=
	function(zdarzenie) {
		const http = new XMLHttpRequest()
		http.onreadystatechange = function(wejscie) {
			if (http.readyState===4) {
				if (http.status===200) {
					document.querySelector("main").innerHTML = http.responseText;
				}
			}
		}
		http.open("get",`./sites/${v.dataset.link}.html`)
		http.send();
	};
});





/*
(function(){
    // `DOMContentLoaded` may fire before your script has a chance to run, so check before adding a listener
    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", doStart);
    }
	else {  // `DOMContentLoaded` already fired
        doStart();
    }

	function doStart() {

		document.querySelectorAll(".button_nav").forEach( (el) => {
			el.onclick = function(e) {
			e.target.classList.toggle('nowa-klasa');
		}
	});
}

});
*/








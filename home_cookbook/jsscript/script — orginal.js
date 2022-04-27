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







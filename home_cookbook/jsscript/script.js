document.querySelectorAll(".btn_nav").forEach(v => {v.onclick=
	function (wybor_menu) {
		const http = new XMLHttpRequest()
		
		http.onreadystatechange = function (check) {
			if (http.readyState===4) {
				if (http.status===200) {
					http.addEventListener("click", Nawigacja());
					http.addEventListener("click", Wyroznienie());					
				}
			}
		}
		
		function Nawigacja() {
			document.querySelector("main").innerHTML = http.responseText
		}
		
		function Wyroznienie(){
			wybor_menu.target.classList.add("btn_nav_click")
			//Powyższe powoduje natychmiastową zmianę stylu po kliknięciu w nawigacji

			$(document).ready(function () {
				$(".btn_nav").click(function () {
				$(".btn_nav").removeClass("btn_nav_click");
//				$(this).addClass("btn_nav_click");
				//Piertwsze naciśnięcie nie powoduje zmiany stylu. 
				});
			  });			
		}

		
		http.open("get",`./sites/${v.dataset.link}.html`)
		http.send();
	}
})







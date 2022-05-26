const main = document.querySelector("main")

function pobierzStrone(adres, cel="main", post='', wezwijMnie) {
	const http = new XMLHttpRequest()

	http.onreadystatechange = function(wejscie) {
		
		if (http.readyState===4) {
			if (http.status===200)
			{
				http.addEventListener("click", Nawigacja());
				http.addEventListener("click", Wyroznienie());
			}
		}
	}

	function Nawigacja() {
		document.querySelector(cel).innerHTML = http.responseText
		if (wezwijMnie!== undefined) wezwijMnie(http.responseText)
	}
	
	

	//szablon ciągów znakowych
	http.open("post",(adres.indexOf('.php') !==-1) ? adres : `./sites/${adres}.html`)
	http.send(post)
}

function Wyroznienie(){
	wybor_menu.target.classList.add("btn_nav_click")
	
	//Powyższe powoduje natychmiastową zmianę stylu po kliknięciu w nawigacji

	$(document).ready(function () {
		$(".btn_nav").click(function () {
		$(".btn_nav").removeClass("btn_nav_click");
		//$(this).addClass("btn_nav_click");
		//Piertwsze naciśnięcie nie powoduje zmiany stylu. 
		});
	  });			
}


////////////////////////////////////



function zdarzenieMenu() {
	
	document.querySelectorAll('.btn_nav').forEach((wartosc) => {
		wartosc.onclick = () => {
			pobierzStrone(wartosc.dataset.link, "main", '', function(a) {
				//podmiana adresu strony w historii przeglądarki
				history.replaceState('','',`?strona=${wartosc.dataset.link}`)
				if (przycisk !== null)
					przycisk.onclick = () => {
						pobierzStrone("./php/form.php", "main", zapytanie)
				}
			})
		}
	})



	//podmienia historię przeglądarki przez co mamy możliwość korzystania
	//ze strony bez jej przeładowania, dodatkowo zaś uzyskujemy możliwość
	//przesłania innym osobom dokładnego adresu aktualnie przeglądanej strony
	//bez potrzeby tłumaczenia, w którą zakładkę strony mają dokałnie wejśc.
	if (location.search!=='')
		pobierzStrone(location.search.split('=')[1])
}























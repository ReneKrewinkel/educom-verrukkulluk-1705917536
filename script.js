$(document).ready(function () {
    $('.nav-link').on('click', function () {
        $('.nav-link').removeClass('active');
        $(this).addClass('active');
    });

    $("#heart").on('click',(function () {
		var gerecht_id= $(this).data("gerecht_id");

		$.ajax({
			method: "POST",
			url: "index.php",
			data:{
				heart_clicked: true,
				gerecht_id: gerecht_id
			},
			success: function(response) {
				 if (response.slice(0,30).includes("added")) {
                    $("#heart").html("&#x2764;");
                } else {
                    $("#heart").html("&#x2661;");
                }
			}
		});
    }));

	$('.star').on('click',function() {
		var nummeriekveld = $(this).data('value')
		var gerecht_id= $(this).data("gerecht_id")

		$.ajax({
			method: "POST",
			url: "index.php",
			data: {
				star_clicked: true,
				gerecht_id: gerecht_id,
				nummeriekveld: nummeriekveld
			},
			success: function(response) {
			}
		});

		$(".star").removeClass('star-clicked').addClass('star')

		$(".star").each( (index, elem) => {
			const itemValue = $(elem).data('value')
			if (itemValue <= nummeriekveld) {
				$(elem).addClass('star-clicked').removeClass('star')
			}
		})
	})
	$(".clearAll").on('click', function() {
		$.ajax({
			method: "POST",
			url: "index.php",
			data: {
				clearAll: true,
			},
			success: function(response) {
				location.reload()
			}
		})
	})

	$(".clearArtikel").on('click', function() {
		var artikel_id = $(this).data("artikel_id");
		$.ajax({
			method: "POST",
			url: "index.php",
			data: {
				clearArtikel: true,
				artikel_id: artikel_id
			},
			success: function(response){
				location.reload()
			}
		})
	})

	$(".toevoegen a").on('click', function() {
		var gerecht_id = $(this).data("gerecht_id");
		$.ajax({
			method: "POST",
			url: "index.php",
			data: {
				toevoegen: true,
				gerecht_id: gerecht_id,
			},
			success: function(response){
				window.location.href= "index.php?action=lijst&user_id=1"
			}
		})
	})

	 $('.search-box input[type="text"]').on("keyup input", function(){
        /* Get input value on change */
        var inputVal = $(this).val();
        var resultDropdown = $(this).siblings(".result");
        if(inputVal.length){
            $.get("lib/livesearch.php", {term: inputVal}).done(function(data){
                // Display the returned data in browser
                resultDropdown.html(data);
            });
        } else{
            resultDropdown.empty();
        }
    });

	 $(document).on("click", ".result a", function(){
          var href = $(this).attr("href");
    // Redirect to the URL specified in the href attribute
    window.location.href = href;
    });
});

document.addEventListener('DOMContentLoaded', function() {
    var header = document.getElementById('header');
    var backgrounds = ['url("https://natashaskitchen.com/wp-content/uploads/2020/07/General-Tsos-Chicken-4.jpg")',
					   'url("https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/M6HASPARCZHYNN4XTUYT7H6PTE.jpg&w=1440")',
					   'url("https://pbs.twimg.com/media/BwerM_hCcAAbvca.jpg:large")',
					   'url("https://www.okokorecepten.nl/i/recepten/kookboeken/2008/uit-eten-in-barcelona/garnalen-knoflook-peterselie-500.jpg")'
	];
    var currentBgIndex = 0;

    function changeBackground() {
        header.style.backgroundImage = backgrounds[currentBgIndex];
        currentBgIndex = (currentBgIndex + 1) % backgrounds.length;
    }

    setInterval(changeBackground, 5000);
});

function toggleDropdown() {
    var menuTrigger = document.querySelector('.menu-trigger');
    menuTrigger.classList.toggle('active');
    var dropdown = menuTrigger.querySelector('.dropdown');
    dropdown.classList.toggle('show-dropdown');
}
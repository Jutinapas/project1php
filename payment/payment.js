$(document).ready(() => {

	var isSet = true;
	setBuyerInfo();

	showHead();

	$('#event').val(window.location.search.substring(7));

	$('#get-info-btn').on('click', event => {
		if (isSet) {
			unsetBuyerInfo();
			isSet = false;
		} else {
			setBuyerInfo();
			isSet = true;
		}
	});

	$('#cancel-btn').on('click', event => {
		if (confirm("Cancel this Order ?")) {
			
		}
	});

	
});

function setBuyerInfo() {

	$.ajax({
			type: "POST",
			url: "get_buyer_info.php",
			cache: false,
			success: function(response) {
				var json = JSON.parse(response);
				console.log(json);
				$('#fname').val(json['fname']);
				$('#lname').val(json['lname']);
				$('#tel').val(json['tel']);
				$('#cc-num').val(json['cc-num']);
				$('#cc-name').val(json['cc-name']);
				$('#cc-exp-date').val(json['cc-exp-date']);
				$('#cc-ccv').val(json['cc-ccv']);
				$('#email').val(json['email']);
			}
	});

}

function unsetBuyerInfo() {

	$('#fname').val('');
	$('#lname').val('');
	$('#email').val('');
	$('#tel').val('');
	$('#cc-num').val('');
	$('#cc-name').val('');
	$('#cc-exp-date').val('');
	$('#cc-ccv').val('');

}

function showHead() {
    $.ajax({
        type: "GET",
        url: "getHead.php",
        success: function(response){
            if (response=="") {
                return;
              } 
            else{
                $('#buttonUser').html(response);
            }
        }
    });
}
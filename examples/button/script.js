//show orc name
(function() {
	$("#btnOrcName").click(function() {
		console.log("orc name: " + $("#orcName").val());
	});
})();

// perform ajax request
(function() {
	$("#btnRandomText").click(function() {
		text = $("#randomText").val();
		console.log("send to server:");
		console.log(text);
		$.ajax({
			url : "text_changer.cfc",
			method : "POST",
			data : {
				method : 'changeText', // method from text_changer.cfc
				// the above method's parameters
				randomText : text
			},
			dataType: "text",
			success : function(response) {
				console.log("received from server (random text):");
				console.log(response);
			}
		});
	});
})();

//counter
(function() {
	$("#btnCounter").click(function() {
		$.ajax({
			url: "counter.cfc",
			method: "POST",
			data: {
				method: "incCounter"
			},
			dataType: "text",
			success: function(response) {
				console.log("received from server (counter's value):");
				console.log(response);
			}
		});
	});
	
	$("#btnResetCounter").click(function(){
		$.ajax({
			url : "counter.cfc",
			method :  "POST",
			data : {
				method: "resetCounter"
			}
		});
	});
})();
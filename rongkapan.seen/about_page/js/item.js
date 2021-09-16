$(()=>{

	$(".image-thumbs img").on("click", function(e){
			let s = $(this).attr("src");
			$(".image-main img").attr("src",s);
	});
});
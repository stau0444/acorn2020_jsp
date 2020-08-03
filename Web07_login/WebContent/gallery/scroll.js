
		$(window).on("scroll",function(){
			console.log("scroll!");
			//위쪽으로 스크롤된 길이 구하기
			var scrollTop=$(window).scrollTop();
			//window 높이
			var windowHeight=$(window).height();
			//document(문서)의 높이
			var documentHeight=$(document).height();
			//바닥까지 스크롤 되었는지 여부
			var isBottom=scrollTop+windowHeight+10>=documentHeight;
			if(isBottom){
				$(".loader").show();
				//ajax 요청
				setTimeout(function(){
					$("<div/>")
					.addClass("spacer")
					.appendTo(".container")
					.hide()
					.fadeIn(1000);
					//로딩 이미지 숨기기
					$(".loader").hide();
				},2000);
			}
 		});

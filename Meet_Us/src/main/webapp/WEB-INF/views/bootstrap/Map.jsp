<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <title>Meet Us</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


    <style>
.map_wrap, .map_wrap * {margin:0; padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap {position:static;width:100%;height:100%;}
#category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
#category li {float:left;list-style: none;width:50px;px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
#category li.on {background: #eee;}
#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
#category li:last-child{margin-right:0;border-right:0;}
#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
#category li .category_bg {background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
#category li .bank {background-position: -10px 0;}
#category li .mart {background-position: -10px -36px;}
#category li .pharmacy {background-position: -10px -72px;}
#category li .oil {background-position: -10px -108px;}
#category li .cafe {background-position: -10px -144px;}
#category li .store {background-position: -10px -180px;}
#category li.on .category_bg {background-position-x:-46px;}
.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
.placeinfo {position:relative;width:70%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:20px;height:12px;background:url('http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.placeinfo .tel {color:#0f7833;}
.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
</style>


  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
	  
	  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_4.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-4">
            <h1 class="mb-3 bread">Map</h1>
            <p class="breadcrumbs">
					<span class="mr-2"><a href="../">Home <i
							class="ion-ios-arrow-forward"></i></a></span> <span>Map<i
						class="ion-ios-arrow-forward"></i></span>
				</p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
      <div class="container">
		<div class="row">
			<div class="col-lg-8 ftco-animate">
			<div class="map_wrap">
				<div id="map"></div>
					<ul id="category">
						<li id="BK9" data-order="0"><span class="category_bg bank"></span>
							은행</li>
						<li id="MT1" data-order="1"><span class="category_bg mart"></span>
							마트</li>
						<li id="PM9" data-order="2"><span
							class="category_bg pharmacy"></span> 약국</li>
						<li id="OL7" data-order="3"><span class="category_bg oil"></span>
							주유소</li>
						<li id="CE7" data-order="4"><span class="category_bg cafe"></span>
							카페</li>
						<li id="CS2" data-order="5"><span class="category_bg store"></span>
							편의점</li>
					</ul>
				</div>
			</div>

			<div class="col-lg-4 sidebar ftco-animate">
				<div class="sidebar-box">
					<form action="#" class="search-form">
						<div class="form-group">
							<span class="icon icon-search" onclick="SearchPlace()" style="cursor: pointer;"></span> <input type="text" id="SearchPlaceId"
								class="form-control" placeholder="Place Searching" onkeydown="JavaScript:Enter_Check()" >
						</div>
						<div class="form-group">
							<span class="icon icon-search" onclick="" style="cursor: pointer;"></span> <input type="text" id=""
								class="form-control" placeholder="Keyword" onkeydown="JavaScript:Enter_Check()" >
						</div>
					</form>
				</div>
				<div class="sidebar-box ftco-animate">
					<h3 class="heading-sidebar"><strong>Meeters & Address</strong></h3>
					<ul class="categories">
						<li id="Location0">장소<span></span></a></li>
						<li id="Location1">장소<span></span></a></li>
						<li id="Location2">장소<span></span></a></li>
						<li id="Location3">장소<span></span></a></li>
						<li id="Location4">장소<span></span></a></li>
					</ul>

					<div class="comment-form-wrap pt-5">

						<div class="form-group">
							<button type="button"
								onclick="starting_meeter_click();"
								class="btn py-3 px-4 btn-warning" style="width: 100%;">Center View</button>
						</div>
						<div class="form-group">
							<button type="button" onclick="categorySearch_click();"
								class="btn py-3 px-4 btn-primary" style="width: 100%;">Starting
								Meeting</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    </section> 
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
    
    
   	<!-- kakao map api & lib -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8c106edb300bf0777e34f3e2bd20cf0d&libraries=services,clusterer,drawing"></script>
	<script>
	// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
	var infowindow = new kakao.maps.InfoWindow({zIndex:1});
	
	// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
	var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
	contentNode = document.createElement('div'); // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
    
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  
	
	// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
	contentNode.className = 'placeinfo_wrap';
	
	// 커스텀 오버레이 컨텐츠를 설정합니다
	placeOverlay.setContent(contentNode);  


	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	
	function SearchPlace(){
	var place = document.getElementById('SearchPlaceId').value;
	
	// 장소 검색 객체를 생성합니다
	var ps = new kakao.maps.services.Places(); 

	// 키워드로 장소를 검색합니다
	ps.keywordSearch(document.getElementById('SearchPlaceId').value, placesSearchCB); 

	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	function placesSearchCB (data, status, pagination) {
	    if (status === kakao.maps.services.Status.OK) {

	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	        // LatLngBounds 객체에 좌표를 추가합니다
	        var bounds = new kakao.maps.LatLngBounds();

	        for (var i=0; i<data.length; i++) {
	            displayMarker(data[i]);    
	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
	        }       
	    } 
	    
	    else if (status === kakao.maps.services.Status.ZERO_RESULT) {
	    	alert("검색 결과가 업습니다.");
	    }
	    
	    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
        map.setBounds(bounds);
	}

	// 지도에 마커를 표시하는 함수입니다
	function displayMarker(place) {
	    // 마커를 생성하고 지도에 표시합니다
	    var marker = new kakao.maps.Marker({
	        map: map,
	        position: new kakao.maps.LatLng(place.y, place.x) 
	    });
	    
	    // 마커에 클릭이벤트를 등록합니다
	    kakao.maps.event.addListener(marker, 'click', function() {
		 content = '<div class="placeinfo">'
											+ '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">'
											+ place.place_name + '</a>';

									if (place.road_address_name) {
										content += '    <span title="' + place.road_address_name + '">'
												+ place.road_address_name 
												+ '</span>'
												+ '  <span class="jibun" title="' + place.address_name + '">(지번 : '
												+ place.address_name 
												+ ')</span>';
									} else {
										content += '    <span title="' + place.address_name + '">'
												+ place.address_name 
												+ '</span>';
									}

									content += '    <span class="tel">'
											+ place.phone + '</span>';
											
									content += '<button type="button" onclick="save_click('+"'"+ place.place_name +"'"+","+"'"+ place.y+"'"+","+"'"+ place.x+"'"+');" class="btn btn-success btn-sm" style="margin-left:35%; margin-top:10px;">저장</button>'
											+ '<button type="button" onclick="close_window();" class="btn btn-dark btn-sm" style="margin-left:5%; margin-top:10px;">닫기</button>'
											+ '</div>'
											+ '<div class="after"></div>';
											
// 									// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
// 									infowindow.setContent(content);
// 									infowindow.open(map, marker);


									contentNode.innerHTML = content;
								    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
								    placeOverlay.setMap(map);
								    
								    
								});
			}
		}
	

	</script>
	
	<script>
	//닫기 버튼
	function close_window() {        
 	placeOverlay.setMap(null); 
	}
	</script>




	<script type="text/javascript">
	 var names = new Array();
	 var nameCnt = 0;
	 var placey = new Array();
	 var placex = new Array();

		<script type="text/javascript">
		 var names = new Array();
		 var nameCnt = 0;
		 var placey = new Array();
		 var placex = new Array();
		function save_click(name, placeY, placeX) {
			alert("저장되었습니다.");
			
			if(nameCnt <= 4){
				names.push(name);
				placey.push(placeY);
				placex.push(placeX);
				nameCnt++;
			}else{
				alert("지정 주소가 너무 많습니다.");
			}
			
			for(var i=0; i<nameCnt; i++){
			document.getElementById("Location"+i).innerHTML= names[i];
			}
		}
		</script>
	
	
	<script type="text/javascript">
		function Enter_Check() {
			// 엔터키의 코드는 13입니다.
			if (event.keyCode == 13) {
				SearchPlace();
			}
		}
	</script>
	
	
<!--  	meeter 버튼 클릭 이벤트    -->
	<script> 
	function starting_meeter_click(){ 
		
	var map1 = new kakao.maps.Map(mapContainer, mapOption);  // 지도를 생성합니다
	
	// 	중심좌표
	var centerY = 0;
	var centerX = 0;
	
	// 마커 이미지의 이미지 주소입니다 
	var imageSrc = "resources/images/map-marker-icon.png";  
	
	for (var i = 0; i < nameCnt; i++) { 
	
	    // 마커 이미지의 이미지 크기 입니다 
	    var imageSize = new kakao.maps.Size(29, 35);  
	
	    // 마커 이미지를 생성합니다     
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);  
	    
	    var latlng = new kakao.maps.LatLng(placey[i], placex[i]); 
	    var title = names[i]; 
	    
	    //중심좌표 구하기
	    centerY += placey[i]*1;
	    centerX += placex[i]*1;

	    // 마커를 생성합니다 
	    var marker = new kakao.maps.Marker({ 
	        map: map1, // 마커를 표시할 지도 
	        position: latlng, // 마커를 표시할 위치 
	        title : title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다 
	        image : markerImage // 마커 이미지  
	    }); 
	}
	

		// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
			// LatLngBounds 객체에 좌표를 추가합니다
			var bounds = new kakao.maps.LatLngBounds();

			for (var i = 0; i < nameCnt; i++) {
				bounds.extend(new kakao.maps.LatLng(placey[i], placex[i]));
			}

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map1.setBounds(bounds);
			
			// 장소 중심점 마크
			var imageSrcCenter = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
			var markerImageCenter = new kakao.maps.MarkerImage(imageSrcCenter, imageSize);
			
			// 중심점 마커를 생성합니다 
		    var marker = new kakao.maps.Marker({ 
		        map: map1, // 마커를 표시할 지도 
		        position: new kakao.maps.LatLng(centerY/(nameCnt*1.0), centerX/(nameCnt*1.0)), // 마커를 표시할 위치 
		        title : "중심", // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다 
		        image : markerImageCenter // 마커 이미지  
		    }); 
			
// 			alert(new kakao.maps.LatLng(centerY/(nameCnt*1.0), centerX/(nameCnt*1.0)));
			var RcenterY = centerY/(nameCnt*1.0);
			var RcenterX = centerX/(nameCnt*1.0);
			
		    categorySearch(RcenterY,RcenterX);
		}
	</script>


 	<!-- 	중심점 기준으로 카테고리별 검색 --> 
 	<script type="text/javascript"> 
 	function categorySearch(RcenterY,RcenterX){
 		alert(RcenterY+"/"+RcenterX);
			function categorySearch_click(){
				
			alert(RcenterY+"/"+RcenterX);
			
			var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
		    contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
		    markers = [], // 마커를 담을 배열입니다
		    currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
		 
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(RcenterY, RcenterX), // 지도의 중심좌표
		        level: 5 // 지도의 확대 레벨
		    };  
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places(map); 
		
		// 지도에 idle 이벤트를 등록합니다
		kakao.maps.event.addListener(map, 'idle', searchPlaces);
		
		// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
		contentNode.className = 'placeinfo_wrap';
		
		// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
		// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다 
		addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
		addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);
		
		// 커스텀 오버레이 컨텐츠를 설정합니다
		placeOverlay.setContent(contentNode);  
		
		// 각 카테고리에 클릭 이벤트를 등록합니다
		addCategoryClickEvent();
		
		// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
		function addEventHandle(target, type, callback) {
		    if (target.addEventListener) {
		        target.addEventListener(type, callback);
		    } else {
		        target.attachEvent('on' + type, callback);
		    }
		}
		
		// 카테고리 검색을 요청하는 함수입니다
		function searchPlaces() {
		    if (!currCategory) {
		        return;
		    }
		    
		    // 커스텀 오버레이를 숨깁니다 
		    placeOverlay.setMap(null);
		
		    // 지도에 표시되고 있는 마커를 제거합니다
		    removeMarker();
		    
		    ps.categorySearch(currCategory, placesSearchCB, {useMapBounds:true}); 
		}
		
		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {
		
		        // 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
		        displayPlaces(data);
		    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
		        // 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요
		
		    } else if (status === kakao.maps.services.Status.ERROR) {
		        // 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
		        
		    }
		}
		
		// 지도에 마커를 표출하는 함수입니다
		function displayPlaces(places) {
		
		    // 몇번째 카테고리가 선택되어 있는지 얻어옵니다
		    // 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
		    var order = document.getElementById(currCategory).getAttribute('data-order');
		
		    
		
		    for ( var i=0; i<places.length; i++ ) {
		
		            // 마커를 생성하고 지도에 표시합니다
		            var marker = addMarker(new kakao.maps.LatLng(places[i].y, places[i].x), order);
		
		            // 마커와 검색결과 항목을 클릭 했을 때
		            // 장소정보를 표출하도록 클릭 이벤트를 등록합니다
		            (function(marker, place) {
		                kakao.maps.event.addListener(marker, 'click', function() {
		                    displayPlaceInfo(place);
		                });
		            })(marker, places[i]);
		    }
		}
		
		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, order) {
		    var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
		        imageSize = new kakao.maps.Size(27, 28),  // 마커 이미지의 크기
		        imgOptions =  {
		            spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
		            spriteOrigin : new kakao.maps.Point(46, (order*36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
		            offset: new kakao.maps.Point(11, 28) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
		        },
		        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
		            marker = new kakao.maps.Marker({
		            position: position, // 마커의 위치
		            image: markerImage 
		        });
		
		    marker.setMap(map); // 지도 위에 마커를 표출합니다
		    markers.push(marker);  // 배열에 생성된 마커를 추가합니다
		
		    return marker;
		}
		
		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
		    for ( var i = 0; i < markers.length; i++ ) {
		        markers[i].setMap(null);
		    }   
		    markers = [];
		}
		
		// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
		function displayPlaceInfo (place) {
		    var content = '<div class="placeinfo">' +
		                    '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">' + place.place_name + '</a>';   
		
		    if (place.road_address_name) {
		        content += '    <span title="' + place.road_address_name + '">' + place.road_address_name + '</span>' +
		                    '  <span class="jibun" title="' + place.address_name + '">(지번 : ' + place.address_name + ')</span>';
		    }  else {
		        content += '    <span title="' + place.address_name + '">' + place.address_name + '</span>';
		    }                
		   
		    content += '    <span class="tel">' + place.phone + '</span>' + 
		                '</div>' + 
		                '<div class="after"></div>';
		
		    contentNode.innerHTML = content;
		    placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
		    placeOverlay.setMap(map);  
		}
		
		
		// 각 카테고리에 클릭 이벤트를 등록합니다
		function addCategoryClickEvent() {
		    var category = document.getElementById('category'),
		        children = category.children;
		
		    for (var i=0; i<children.length; i++) {
		        children[i].onclick = onClickCategory;
		    }
		}
		
		// 카테고리를 클릭했을 때 호출되는 함수입니다
		function onClickCategory() {
		    var id = this.id,
		        className = this.className;
		
		    placeOverlay.setMap(null);
		
		    if (className === 'on') {
		        currCategory = '';
		        changeCategoryClass();
		        removeMarker();
		    } else {
		        currCategory = id;
		        changeCategoryClass(this);
		        searchPlaces();
		    }
		}
		
		// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
		function changeCategoryClass(el) {
		    var category = document.getElementById('category'),
		        children = category.children,
		        i;
		
		    for ( i=0; i<children.length; i++ ) {
		        children[i].className = '';
		    }
		
		    if (el) {
		        el.className = 'on';
		    } 
		} 
		
			}
 	}
 	</script> 

</body>
</html>
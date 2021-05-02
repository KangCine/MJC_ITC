// 명대사 상세 정보 표시
function displayMovieInfo(index) {
  var len, i, name="", type="", score="", region="", phone="", address="", memo="", pic="";

  // 명대사 상세 정보를 설정
  var myMovieRecord = recordSet.rows.item(index);    
  varPosition = index;
  
  if(myMovieRecord.name != null) {          // 명대사 이름           
    name = '<div class="ui-bar ui-bar-a"><h3>' + myMovieRecord.name + '</h3></div>';   
  } else {
      name = '<p>이름 : 정보없음</p>';
  }  
  if(myMovieRecord.name != null) {          // 유형 
      type = '<p>유형 : ' + myMovieRecord.type + '</p>';
  } else {
      type = '<p>유형 : 정보없음</p>';
  } 
  if(myMovieRecord.score != null) {          // 평점  
      score = '<p>평점 : ' + myMovieRecord.score + '</p>';            
  } else {
      score = '<p>평점 : 정보없음</p>';
  }  
  if(myMovieRecord.region != null) {          // 지역 
      region = '<p>지역 : ' + myMovieRecord.region + '</p>';            
  } else {
      region = '<p>지역 : 정보없음</p>';
  }   
  if(myMovieRecord.phone != null) {          // 전화번호 
      phone = '<p>전화 : ' + myMovieRecord.phone + '</p>';            
  } else {
      phone = '<p>전화 : 정보없음</p>';
  }   
  if(myMovieRecord.address != null) {          // 주소 
      address = '<p>주소 : ' + myMovieRecord.address + '</p>';   
  } else {
      address = '<p>주소 : 정보없음</p>';
  }  
  if(myMovieRecord.memo != null) {          // 메모  
      memo = '<p>메모 : ' + myMovieRecord.memo + '</p>';   
  } else {
      memo = '<p>메모 : 정보없음</p>';
  }  
                             
  $('#movieInfoArea').html(name + type + score + region + phone + address + memo);
  $.mobile.changePage("#movieInfoShowPage", "slide", false, true);
}
  
function getMoviePic() {
  var myName = recordSet.rows.item(varPosition).name; 
  var myPic = recordSet.rows.item(varPosition).pic;   
  $('#picName').text(myName);          
  $('#picArea').attr('src', myPic);
  $.mobile.changePage("#picShowDialog", "pop", false, true);            
}  

function getMovieRouteMap() {
  var myName = recordSet.rows.item(varPosition).address;     
  $('#routeName').text(myName);            
  $.mobile.changePage("#routeShowDialog", "pop", false, true);   
  $('#routeArea').gmap('destroy');          
  navigator.geolocation.getCurrentPosition( 
      function(Position) {
          var lat = Position.coords.latitude ;
          var lng = Position.coords.longitude ;

          var start = new google.maps.LatLng(lat, lng);       
          var end = recordSet.rows.item(varPosition).address;  
          var mode = 'TRANSIT'           
          var request = {
              origin:start,
              destination:end,
              travelMode: eval('google.maps.DirectionsTravelMode.'+mode)
          };     
          $('#routeArea').gmap('displayDirections', request, function(result, status) {
              if ( status === 'OK' ) {
                  alert('성공');
              } else {
                  alert('실패 : ' + status);
              }        
          });  
      },
      function(posError) {
          alert('Error Code : ' + posError.code + ' / Error Message : ' + posError.message); 
      }, { maximumAge: 3000, timeout: 50000, enableHighAccuracy: true }                 
  );           
}      

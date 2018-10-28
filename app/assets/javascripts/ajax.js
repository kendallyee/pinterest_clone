
// $(document).on('turbolinks: load',function() {
//   $("#post_term").keyup(function() {
//     autocomplete()
//   });
//
// function autocomplete() {
//     $ajax ({
//       url: '/posts/ajax_search',
//       type: 'GET',
//       data: {query: $("#post_term").val()},
//       dataType: 'json',
//       error: function(){
//         console.log ("Error occurred");
//       },
//
//       success:function(data){
//         document.querySelector('#list').innerHTML = ""
//         data.forEach(function(element) {
//           var option = document.createElement("option");
//           option.value = element;
//           $("#list").append(option);
//
//         });
//       }
//     });
//   }
// });

$(document).ready(function(){
  $('#manager').click(function(){
    $.ajax({
      url: 'job_types/destroy',
      success: function(d){
        $('#type_list').html(d);
      }
    });
  });
alert('works!');
});
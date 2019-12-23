<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Custom select</title>
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,900,700,600,200" rel="stylesheet">
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,900,700,600,200'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  
<div class="wrapper typo">This is a custom
  <div class="list">
  <span class="placeholder">select</span>
    <ul class="list__ul">
      <li><a href="">select</a></li>
      <li><a href="">lorem</a></li>
      <li><a href="">ipsum</a></li>
      <li><a href="">dolor</a></li>
      <li><a href="">sit</a></li>
      <li><a href="">amet</a></li>
    </ul>
  </div>
</div>

 <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>

    <script>
    console.clear();

    var el = {};

    $('.placeholder').on('click', function (ev) {
      $('.placeholder').css('opacity', '0');
      $('.list__ul').toggle();
    });

     $('.list__ul a').on('click', function (ev) {
       ev.preventDefault();
       var index = $(this).parent().index();
       
       $('.placeholder').text( $(this).text() ).css('opacity', '1');
       
       console.log($('.list__ul').find('li').eq(index).html());
       
       $('.list__ul').find('li').eq(index).prependTo('.list__ul');
       $('.list__ul').toggle();   
       
     });


    $('select').on('change', function (e) {
      
      // Set text on placeholder hidden element
      $('.placeholder').text(this.value);
      
      // Animate select width as placeholder
      $(this).animate({width: $('.placeholder').width() + 'px' });
      
    });
    
    
    </script>

</body>
</html>

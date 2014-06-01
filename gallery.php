<?php include_once("header.php"); ?>

<font face="Serif" color="#666633"><h1>Art Work</h1></font>


<font color="black"><h3>Ambigrams</h3></font>

<p>I design ambigrams once in a while. Ambigrams are names that look the same or turn into a new word when rotated by 180 degrees. You can take a look at some of them here. Click on the "Edit Photo" button, rotate the images and look for yourself! Thanks to Aviary for their neat Javascript snippet to edit photos.</p>
<p>This one is an ambigram of my name 'Anurag'</p>
<!-- Load Feather code -->
<script type="text/javascript" src="http://feather.aviary.com/js/feather.js"></script>

<!-- Instantiate Feather -->
<script type='text/javascript'>
   var featherEditor = new Aviary.Feather({
       apiKey: 'ey7fs6lx2ytputv2',
       apiVersion: 3,
       theme: 'dark', // Check out our new 'light' and 'dark' themes!
       tools: 'enhance,orientation,brightness,saturation,sharpness,draw,effects,resize,focus,contrast,text',
       appendTo: '',
       onSave: function(imageID, newURL) {
           var img = document.getElementById(imageID);
           img.src = newURL;
       },
       onError: function(errorObj) {
           alert(errorObj.message);
       }
   });
   function launchEditor(id, src) {
       featherEditor.launch({
           image: id,
           url: src
       });
      return false;
   }
</script>

<div id='injection_site'></div>

<img id='image1' src='http://home.iitk.ac.in/~vanurag/img/Ambigrams/canvas.png' align="center" width="252px" height="100px">

<!-- Add an edit button, passing the HTML id of the image and the public URL of the image -->
<p><input type='image' src='http://images.aviary.com/images/edit-photo.png' value='Edit photo' onclick="return launchEditor('image1', 'http://home.iitk.ac.in/~vanurag/img/Ambigrams/canvas.png');" /></p>






<p>This amigram spells the word 'Thank You' and the word 'Welcome' on being flipped. This can be placed at the doorstep and will read 'Welcome' while entering and 'Thank You' while you leave! It might not look that pleasing but you need to understand that ambigram making is an art of illusion and perfecting it takes time :)</p>
<!-- Load Feather code -->
<script type="text/javascript" src="http://feather.aviary.com/js/feather.js"></script>

<!-- Instantiate Feather -->
<script type='text/javascript'>
   var featherEditor = new Aviary.Feather({
       apiKey: 'ey7fs6lx2ytputv2',
       apiVersion: 3,
       theme: 'dark', // Check out our new 'light' and 'dark' themes!
       tools: 'enhance,orientation,brightness,saturation,sharpness,draw,effects,resize,focus,contrast,text',
       appendTo: '',
       onSave: function(imageID, newURL) {
           var img = document.getElementById(imageID);
           img.src = newURL;
       },
       onError: function(errorObj) {
           alert(errorObj.message);
       }
   });
   function launchEditor(id, src) {
       featherEditor.launch({
           image: id,
           url: src
       });
      return false;
   }
</script>

<div id='injection_site'></div>

<img id='image1' src='http://home.iitk.ac.in/~vanurag/img/Ambigrams/canvas2.png' align="center" width="253px" height="125px">

<!-- Add an edit button, passing the HTML id of the image and the public URL of the image -->
<p><input type='image' src='http://images.aviary.com/images/edit-photo.png' value='Edit photo' onclick="return launchEditor('image1', 'http://home.iitk.ac.in/~vanurag/img/Ambigrams/canvas2.png');" /></p>




<font color="black"><h3>Self Portraits</h3></font>

<p>These are the self-portraits I have made as a part of "Modern Art" course. The second one is an abstract art indicating various elements of my life. They are slightly edited digitally by Photoshop.</p>

<center>
<a href="img/Selfie/sp_1.jpg"><img src="img/Selfie/sp_1.jpg" width="239px" border="1"/> </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="img/Selfie/sp_2.jpg"><img src="img/Selfie/sp_2.jpg" width="239px" border="1"/> </a>
</center>
<font size="1"><center><strong>[Click for expanded view]</strong></center></font>




<font color="black"><h3>Wall Sketching</h3></font>

<p>Had a long power cut one day and look what we made! The first one is Michael Jackson, one of my favourite performers of all time and the second is Sachin Tendular, one of the best cricketers.</p>

<center>
<a href="img/Wall Sketching/MJ.jpg"><img src="img/Wall Sketching/MJ.jpg" width="239px" border="1"/> </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="img/Wall Sketching/Sachin.jpg"><img src="img/Wall Sketching/Sachin.jpg" width="239px" border="1"/> </a>
</center>
<font size="1"><center><strong>[Click for expanded view]</strong></center></font>




<font color="black"><h3>Fine Arts Night</h3></font>

<p>We had an intra-hostel competetion in our freshman year at IITK. Our theme was 'Devil's paradise'. Made huge backdrops, bamboo structure, POP craftwork, soap/candle carvings, clay work and many more in a span of few days. Have a look at some of the pics. A <a href="https://www.youtube.com/watch?v=qf55pE14Pe8" target="_blank" STYLE="text-decoration: none">video</a> of the same. Ended up tying for first position along with another group.</p>

<style>
 
.fadein {
position:relative; height:332px; width:300px; margin:0 auto;
background: url("slideshow-bg.png") repeat-x scroll left top transparent;
padding: 10px;
}
.fadein img { position:absolute; left:10px; top:10px; }
</style>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script>
$(function(){
$('.fadein img:gt(0)').hide();
setInterval(function(){$('.fadein :first-child').fadeOut().next('img').fadeIn().end().appendTo('.fadein');}, 1500);
});
</script>
 
</head>
<body>
<div class="fadein">
<img src="img/FA/1.jpg" width="300px">
<img src="img/FA/2.jpg" width="350px">
<img src="img/FA/3.jpg" width="239px">
<img src="img/FA/4.jpg" width="239px">
<img src="img/FA/5.jpg" width="239px">
<img src="img/FA/6.jpg" width="339px">
</div>
</body>
</html>






<font face="Serif" color="#666633"><h1>Dance</h1></font>

<p>I learnt a little bit of <a href="http://en.wikipedia.org/wiki/Kuchipudi" target="_blank" STYLE="text-decoration: none">Kuchipudi</a>  (An Indian classical dance) when I was 12 years old. But it's been a long time since I've shaked my legs. So please don't ask me to perform now :P</p>

<center>
<a href="img/dance/1.JPG"><img src="img/dance/1.JPG" width="279px" border="1"/> </a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="img/dance/2.JPG"><img src="img/dance/2.JPG" width="239px" border="1"/> </a> <br/><br/>
<a href="img/dance/3.JPG"><img src="img/dance/3.JPG" width="209px" border="1"/> </a>
</center>
<font size="1"><center><strong>[Click for expanded view]</strong></center></font>
        

<?php include_once("footer.php"); ?>

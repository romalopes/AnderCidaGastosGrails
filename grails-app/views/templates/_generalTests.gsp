<div >
<p id="timeNow"></p>
    <a id="testJquery" href="http://jquery.com/">jQuery</a>
    <script src="jquery.js"></script>
    <script>
 
    $( document ).ready(function() {
        $( "#testJquery" ).click(function( event ) {
            alert( "The link will no longer take you to jquery.com" );
            event.preventDefault();
        });
    });
 
    </script>

<script>
var myVar=setInterval(function(){myTimer()},1000);

function myTimer()
{
var d=new Date();
var t=d.toLocaleTimeString();
document.getElementById("timeNow").innerHTML=t;
}


var greet = function( person, greeting ) {
    var text = greeting + ", " + person;
    console.log( text );
};
 
greet( "Name Person", "Hello" );
</script>

</div>			
	
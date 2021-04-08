
<!DOCTYPE html>
<html>
<head>

</head>
<body>

<h3>A Youtube Thought...</h3>
    <p>
        After watching <a href=https://www.youtube.com/watch?v=_2LLXnUdUIc >this video</a> on graphic design,
        I noticed the color wheel could be broken into a modular system. Currently looking into how this
        could apply for web design. My aha moment was when the color wheel is shown, I instantly remembered 
        my VBA code which generates a 7x8 Color Palette. 
    </p>

<h3>Complementary System: </h3>
    <p>
         ( n / 2 ) mod n is the complementary system.
    </p> 
<h3>Split-Complements:</h3>
    <p>
        Initial thought was for ( n / 2 ) +- c mod n however I feel this is clearly begging for n to approach infinity
        so the limit as n approaches infinity would be equivalent to the complementary system, meaning any distintion 
        between the two after a certain point is neglegable. Thus I suspect ( n / 2 ) +- n mod n to be an interesting choice.
    </p> 
<h3>Some More Thoughts </h3>
    <p>
        VBA uses RGB color with 256 integers for each respective color. We can use permutations to calculate the number of available distinct colors, which is 256 P 3 , or 256! / 253! . Therefore there are 256 x 255 x 254 = 16,581,120 unique colors available with the RGB method! Long term goals will be to construct a color wheel of n distinct colors such that we can use the above modular arithmetic to quickly generate complementary or other variations of color relations. 
        <a href=https://docs.microsoft.com/en-us/office/vba/language/reference/user-interface-help/rgb-function>RGB Method doc</a>
        This is likely a project that will require other languages as Visual Basic is showing its limitations already. I will update the project as I develop more tools for web design. 
    </p>
    <p>
        I've been thinking of changing the method to a more memory based approach, via generating vectors for color delineation
        from a central point. The problem with this approach is I get chucked into finding out how to create graphics from scratch. 
        I'll get it working in python matplotlib before moving to more advanced options. 
      
    </p>
        

</body>
</html>     
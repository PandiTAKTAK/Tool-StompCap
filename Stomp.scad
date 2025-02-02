/* [Stomp] */
// Height (mm)
Height = 7;
// Radius (mm)
Radius = 10;
// Stomp Switch Radius (mm)
SwitchRadius = 5;
// Stomp switch mount depth (mm)
SwitchDepth = 5;

// ###########################################

/* [Hidden] */
Wiggle = 0.25;
RenderCludge = 0.01; // Cludge to tidy up rendering interface
$fn = 120;

difference()
{
   hull()
   {
      cylinder(Height, Radius, Radius);
      translate([0, 0, Height]) 
         rotate_extrude() translate([Radius - 2, 0]) circle(r=2);
      
   }
   
   translate([0, 0, - RenderCludge]) // This translate is purely for a tidy render interface
      cylinder(SwitchDepth + RenderCludge, SwitchRadius + Wiggle, SwitchRadius);
}

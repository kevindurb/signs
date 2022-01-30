letters = "K&A";
font = "Highway Gothic Narrow:style=Regular";
height = 75;
width = 130;
thickness = 8;

$fn = 100;

letter_thickness = thickness / 2;
plate_thickness = thickness / 2;

color("#202020")
linear_extrude(letter_thickness)
  text(letters, size=((2/3) * height), font=font, halign="center", valign="center");

color("white")
translate([0, 0, -1 * plate_thickness])
linear_extrude(plate_thickness)
  square([width, height], center=true);

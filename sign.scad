letters = "WC";
font = "Highway Gothic Narrow:style=Regular";
height = 75;
width = 130;
thickness = 8;
kerning = 40;

$fn = 100;

letter_thickness = thickness / 2;
plate_thickness = thickness / 2;
half_text_width = (len(letters) * kerning) / 2;

for (index = [0:len(letters) - 1])
  translate([(-1 * half_text_width) + (kerning * index) + (kerning / 2), 0, 0])
  color("#202020")
  linear_extrude(letter_thickness)
    text(letters[index], size=((2/3) * height), font=font, halign="center", valign="center");

color("white")
translate([0, 0, -1 * plate_thickness])
linear_extrude(plate_thickness, scale=0.99)
  square([width, height], center=true);

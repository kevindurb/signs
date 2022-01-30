letters = "WC";
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
difference() {
  translate([0, 0, -1 * plate_thickness])
  linear_extrude(plate_thickness, scale=0.99)
    square([width, height], center=true);

  translate([(width / 2) - 15, 0, -1 * plate_thickness - 1])
  linear_extrude(plate_thickness + 2, scale=2)
  circle(2);

  translate([-1 * ((width / 2) - 15), 0, -1 * plate_thickness - 1])
  linear_extrude(plate_thickness + 2, scale=2)
  circle(2);
}

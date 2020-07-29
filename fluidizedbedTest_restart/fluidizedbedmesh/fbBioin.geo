// Gmsh project created on Thu Apr 16 11:42:23 2020
//+
SetFactory("OpenCASCADE");
//+
Circle(1) = {1.5, 0, 1.5, 0.5, 0, 2*Pi};
//+
Rotate {{0, 1, 0}, {1.5, 0, 1.5}, Pi/2} {
  Curve{1}; 
}
//+
Curve Loop(1) = {1};
//+
Plane Surface(1) = {1};

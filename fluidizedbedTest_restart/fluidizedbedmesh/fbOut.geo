// Gmsh project created on Thu Apr 16 11:52:58 2020
//+
SetFactory("OpenCASCADE");
Circle(1) = {2.5, 0, 15, 0.5, 0, 2*Pi};
//+
Curve Loop(1) = {1};
//+
Plane Surface(1) = {1};
//+
Rotate {{0, 1, 0}, {2.5, 0, 15}, Pi/2} {
  Surface{1}; 
}

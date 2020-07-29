// Gmsh project created on Tue Apr 21 16:50:42 2020
//+
SetFactory("OpenCASCADE");
Cylinder(1) = {0, 0, 0, 0, 0, 17.375, 1, 2*Pi};
//+
Cylinder(2) = {0, 0, 0, 0, 0, 1.5, 0.5, 2*Pi};
//+

//+
Translate {0, 0, 15} {
  Volume{2}; 
}
//+
Cylinder(3) = {0, 0, 0, 0, 0, 1.5, 0.5, 2*Pi};
//+
Translate {0, 0, 1.5} {
  Volume{3}; 
}
//+
Rotate {{0, 1, 0}, {0, 0, 1.5}, Pi/2} {
  Volume{3}; 
}
//+
Rotate {{0, 1, 0}, {0, 0, 15}, Pi/2} {
  Volume{2}; 
}
//+

}

//+
BooleanUnion{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
Physical Surface("faGasin") = {4};
//+

//+
BooleanUnion{ Volume{1}; Delete; }{ Volume{2}; Volume{3}; Delete; }
//+
//+
Physical Surface("fbGasin") = {4};
//+
Physical Surface("fbBioin") = {7};
//+
Physical Surface("fbOut") = {6};
//+

//+
Physical Surface("fb") = {1, 5, 2, 3};
//+
Surface Loop(2) = {1, 5, 2, 6, 3, 7, 4};
//+
Volume(2) = {2};
//+
//+
Surface Loop(3) = {1, 5, 2, 6, 3, 7, 4};
//+
Surface Loop(4) = {1, 5, 2, 6, 3, 7, 4};
//+
Surface Loop(5) = {3, 7, 1, 5, 2, 6, 4};
//+
Surface Loop(6) = {3, 7, 1, 5, 2, 6, 4};
//+
Surface Loop(7) = {1, 5, 2, 6, 3, 7, 4};
//+
Surface Loop(8) = {1, 5, 2, 6, 3, 7, 4};
//+
Surface Loop(9) = {1, 5, 2, 6, 3, 7, 4};

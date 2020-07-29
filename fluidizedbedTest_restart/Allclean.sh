#- clean up case
echo "deleting data at: $casePath :\n"
source $WM_PROJECT_DIR/bin/tools/CleanFunctions
cd $casePath/CFD
cleanCase
rm -r $casePath/CFD/constant/liggghtsCommands
rm -r $casePath/CFD/constant/couplingProperties
rm -r $casePath/CFD/clockData
rm -r $casePath/DEM/post/*.*
#rm -r $casePath/DEM/post/restart/*.*
touch $casePath/DEM/post/.gitignore
touch $casePath/DEM/post/restart/.gitignore
echo "done"

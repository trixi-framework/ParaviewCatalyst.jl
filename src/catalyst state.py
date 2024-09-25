# script-version: 2.0
# Catalyst state generated using paraview version 5.13.0
import paraview
paraview.compatibility.major = 5
paraview.compatibility.minor = 13

#### import the simple module from the paraview
from paraview.simple import *
#### disable automatic camera reset on 'Show'
paraview.simple._DisableFirstRenderCameraReset()

# ----------------------------------------------------------------
# setup views used in the visualization
# ----------------------------------------------------------------

# get the material library
materialLibrary1 = GetMaterialLibrary()

# Create a new 'Render View'
renderView1 = CreateView('RenderView')
renderView1.ViewSize = [1087, 1132]
renderView1.AxesGrid = 'Grid Axes 3D Actor'
renderView1.StereoType = 'Crystal Eyes'
renderView1.CameraPosition = [0.0, 0.0, 5.798663150725576]
renderView1.CameraFocalDisk = 1.0
renderView1.CameraParallelScale = 1.5047369518280005
renderView1.LegendGrid = 'Legend Grid Actor'
renderView1.PolarGrid = 'Polar Grid Actor'
renderView1.BackEnd = 'OSPRay raycaster'
renderView1.OSPRayMaterialLibrary = materialLibrary1

# Create a new 'Render View'
renderView2 = CreateView('RenderView')
renderView2.ViewSize = [1086, 1132]
renderView2.AxesGrid = 'Grid Axes 3D Actor'
renderView2.StereoType = 'Crystal Eyes'
renderView2.CameraPosition = [0.0, 0.0, 34.78481760509256]
renderView2.CameraFocalDisk = 1.0
renderView2.CameraParallelScale = 9.027078794511828
renderView2.LegendGrid = 'Legend Grid Actor'
renderView2.PolarGrid = 'Polar Grid Actor'
renderView2.BackEnd = 'OSPRay raycaster'
renderView2.OSPRayMaterialLibrary = materialLibrary1

SetActiveView(None)

# ----------------------------------------------------------------
# setup view layouts
# ----------------------------------------------------------------

# create new layout object 'Layout #1'
layout1 = CreateLayout(name='Layout #1')
layout1.SplitHorizontal(0, 0.500000)
layout1.AssignView(1, renderView1)
layout1.AssignView(2, renderView2)
layout1.SetSize(2174, 1132)

# ----------------------------------------------------------------
# restore active view
SetActiveView(renderView2)
# ----------------------------------------------------------------

# ----------------------------------------------------------------
# setup the data processing pipelines
# ----------------------------------------------------------------

# create a new 'PV Trivial Producer'
input = PVTrivialProducer(registrationName='input')

# create a new 'Contour'
contour1 = Contour(registrationName='Contour1', Input=input)
contour1.ContourBy = ['POINTS', 'solution']
contour1.Isosurfaces = [0.4982385155326056]
contour1.PointMergeMethod = 'Uniform Binning'

# ----------------------------------------------------------------
# setup the visualization in view 'renderView1'
# ----------------------------------------------------------------

# show data from contour1
contour1Display = Show(contour1, renderView1, 'GeometryRepresentation')

# get 2D transfer function for 'solution'
solutionTF2D = GetTransferFunction2D('solution')
solutionTF2D.ScalarRangeInitialized = 1
solutionTF2D.Range = [-0.00021543540348123268, 0.9966924664686925, 0.0, 1.0]

# get color transfer function/color map for 'solution'
solutionLUT = GetColorTransferFunction('solution')
solutionLUT.TransferFunction2D = solutionTF2D
solutionLUT.RGBPoints = [-0.00021543540348123268, 0.231373, 0.298039, 0.752941, 0.4982385155326056, 0.865003, 0.865003, 0.865003, 0.9966924664686925, 0.705882, 0.0156863, 0.14902]
solutionLUT.ScalarRangeInitialized = 1.0

# trace defaults for the display properties.
contour1Display.Representation = 'Surface'
contour1Display.ColorArrayName = ['POINTS', 'solution']
contour1Display.LookupTable = solutionLUT
contour1Display.SelectNormalArray = 'Normals'
contour1Display.SelectTangentArray = 'None'
contour1Display.SelectTCoordArray = 'None'
contour1Display.TextureTransform = 'Transform2'
contour1Display.OSPRayScaleArray = 'solution'
contour1Display.OSPRayScaleFunction = 'Piecewise Function'
contour1Display.Assembly = 'Hierarchy'
contour1Display.SelectedBlockSelectors = ['']
contour1Display.SelectOrientationVectors = 'None'
contour1Display.ScaleFactor = 0.16684495210647585
contour1Display.SelectScaleArray = 'solution'
contour1Display.GlyphType = 'Arrow'
contour1Display.GlyphTableIndexArray = 'solution'
contour1Display.GaussianRadius = 0.008342247605323792
contour1Display.SetScaleArray = ['POINTS', 'solution']
contour1Display.ScaleTransferFunction = 'Piecewise Function'
contour1Display.OpacityArray = ['POINTS', 'solution']
contour1Display.OpacityTransferFunction = 'Piecewise Function'
contour1Display.DataAxesGrid = 'Grid Axes Representation'
contour1Display.PolarAxes = 'Polar Axes Representation'
contour1Display.SelectInputVectors = ['POINTS', 'Normals']
contour1Display.WriteLog = ''

# init the 'Piecewise Function' selected for 'ScaleTransferFunction'
contour1Display.ScaleTransferFunction.Points = [0.4982385039329529, 0.0, 0.5, 0.0, 0.4982995390892029, 1.0, 0.5, 0.0]

# init the 'Piecewise Function' selected for 'OpacityTransferFunction'
contour1Display.OpacityTransferFunction.Points = [0.4982385039329529, 0.0, 0.5, 0.0, 0.4982995390892029, 1.0, 0.5, 0.0]

# show data from input
inputDisplay = Show(input, renderView1, 'UniformGridRepresentation')

# trace defaults for the display properties.
inputDisplay.Representation = 'Outline'
inputDisplay.ColorArrayName = [None, '']
inputDisplay.SelectNormalArray = 'None'
inputDisplay.SelectTangentArray = 'None'
inputDisplay.SelectTCoordArray = 'None'
inputDisplay.TextureTransform = 'Transform2'
inputDisplay.OSPRayScaleArray = 'solution'
inputDisplay.OSPRayScaleFunction = 'Piecewise Function'
inputDisplay.Assembly = 'Hierarchy'
inputDisplay.SelectedBlockSelectors = ['']
inputDisplay.SelectOrientationVectors = 'None'
inputDisplay.SelectScaleArray = 'None'
inputDisplay.GlyphType = 'Arrow'
inputDisplay.GlyphTableIndexArray = 'None'
inputDisplay.GaussianRadius = 0.05
inputDisplay.SetScaleArray = ['POINTS', 'solution']
inputDisplay.ScaleTransferFunction = 'Piecewise Function'
inputDisplay.OpacityArray = ['POINTS', 'solution']
inputDisplay.OpacityTransferFunction = 'Piecewise Function'
inputDisplay.DataAxesGrid = 'Grid Axes Representation'
inputDisplay.PolarAxes = 'Polar Axes Representation'
inputDisplay.ScalarOpacityUnitDistance = 0.13531646934131855
inputDisplay.OpacityArrayName = ['POINTS', 'solution']
inputDisplay.ColorArray2Name = ['POINTS', 'solution']
inputDisplay.SliceFunction = 'Plane'
inputDisplay.Slice = 64
inputDisplay.SelectInputVectors = [None, '']
inputDisplay.WriteLog = ''

# init the 'Piecewise Function' selected for 'ScaleTransferFunction'
inputDisplay.ScaleTransferFunction.Points = [-0.00021543540348123268, 0.0, 0.5, 0.0, 0.9966924664686925, 1.0, 0.5, 0.0]

# init the 'Piecewise Function' selected for 'OpacityTransferFunction'
inputDisplay.OpacityTransferFunction.Points = [-0.00021543540348123268, 0.0, 0.5, 0.0, 0.9966924664686925, 1.0, 0.5, 0.0]

# setup the color legend parameters for each legend in this view

# get color legend/bar for solutionLUT in view renderView1
solutionLUTColorBar = GetScalarBar(solutionLUT, renderView1)
solutionLUTColorBar.Title = 'solution'
solutionLUTColorBar.ComponentTitle = ''

# set color bar visibility
solutionLUTColorBar.Visibility = 1

# show color legend
contour1Display.SetScalarBarVisibility(renderView1, True)

# ----------------------------------------------------------------
# setup the visualization in view 'renderView2'
# ----------------------------------------------------------------

# show data from input
inputDisplay_1 = Show(input, renderView2, 'UniformGridRepresentation')

# get opacity transfer function/opacity map for 'solution'
solutionPWF = GetOpacityTransferFunction('solution')
solutionPWF.Points = [-0.00021543540348123268, 0.0, 0.5, 0.0, 0.9966924664686925, 1.0, 0.5, 0.0]
solutionPWF.ScalarRangeInitialized = 1

# trace defaults for the display properties.
inputDisplay_1.Representation = 'Surface'
inputDisplay_1.ColorArrayName = ['POINTS', 'solution']
inputDisplay_1.LookupTable = solutionLUT
inputDisplay_1.SelectNormalArray = 'None'
inputDisplay_1.SelectTangentArray = 'None'
inputDisplay_1.SelectTCoordArray = 'None'
inputDisplay_1.TextureTransform = 'Transform2'
inputDisplay_1.OSPRayScaleArray = 'solution'
inputDisplay_1.OSPRayScaleFunction = 'Piecewise Function'
inputDisplay_1.Assembly = 'Hierarchy'
inputDisplay_1.SelectedBlockSelectors = ['']
inputDisplay_1.SelectOrientationVectors = 'None'
inputDisplay_1.SelectScaleArray = 'None'
inputDisplay_1.GlyphType = 'Arrow'
inputDisplay_1.GlyphTableIndexArray = 'None'
inputDisplay_1.GaussianRadius = 0.05
inputDisplay_1.SetScaleArray = ['POINTS', 'solution']
inputDisplay_1.ScaleTransferFunction = 'Piecewise Function'
inputDisplay_1.OpacityArray = ['POINTS', 'solution']
inputDisplay_1.OpacityTransferFunction = 'Piecewise Function'
inputDisplay_1.DataAxesGrid = 'Grid Axes Representation'
inputDisplay_1.PolarAxes = 'Polar Axes Representation'
inputDisplay_1.ScalarOpacityUnitDistance = 0.13531646934131855
inputDisplay_1.ScalarOpacityFunction = solutionPWF
inputDisplay_1.TransferFunction2D = solutionTF2D
inputDisplay_1.OpacityArrayName = ['POINTS', 'solution']
inputDisplay_1.ColorArray2Name = ['POINTS', 'solution']
inputDisplay_1.SliceFunction = 'Plane'
inputDisplay_1.Slice = 64
inputDisplay_1.SelectInputVectors = [None, '']
inputDisplay_1.WriteLog = ''

# init the 'Piecewise Function' selected for 'ScaleTransferFunction'
inputDisplay_1.ScaleTransferFunction.Points = [-0.00021543540348123268, 0.0, 0.5, 0.0, 0.9966924664686925, 1.0, 0.5, 0.0]

# init the 'Piecewise Function' selected for 'OpacityTransferFunction'
inputDisplay_1.OpacityTransferFunction.Points = [-0.00021543540348123268, 0.0, 0.5, 0.0, 0.9966924664686925, 1.0, 0.5, 0.0]

# setup the color legend parameters for each legend in this view

# get color legend/bar for solutionLUT in view renderView2
solutionLUTColorBar_1 = GetScalarBar(solutionLUT, renderView2)
solutionLUTColorBar_1.Title = 'solution'
solutionLUTColorBar_1.ComponentTitle = ''

# set color bar visibility
solutionLUTColorBar_1.Visibility = 1

# show color legend
inputDisplay_1.SetScalarBarVisibility(renderView2, True)

# ----------------------------------------------------------------
# setup color maps and opacity maps used in the visualization
# note: the Get..() functions create a new object, if needed
# ----------------------------------------------------------------

# ----------------------------------------------------------------
# setup animation scene, tracks and keyframes
# note: the Get..() functions create a new object, if needed
# ----------------------------------------------------------------

# get time animation track
timeAnimationCue1 = GetTimeTrack()

# initialize the animation scene

# get the time-keeper
timeKeeper1 = GetTimeKeeper()

# initialize the timekeeper

# initialize the animation track

# get animation scene
animationScene1 = GetAnimationScene()

# initialize the animation scene
animationScene1.ViewModules = [renderView1, renderView2]
animationScene1.Cues = timeAnimationCue1
animationScene1.AnimationTime = 0.0

# ----------------------------------------------------------------
# restore active source
SetActiveSource(input)
# ----------------------------------------------------------------

# ------------------------------------------------------------------------------
# Catalyst options
from paraview import catalyst
options = catalyst.Options()
options.GlobalTrigger = 'Time Step'
options.EnableCatalystLive = 1
options.CatalystLiveTrigger = 'Time Step'

# ------------------------------------------------------------------------------
if __name__ == '__main__':
    from paraview.simple import SaveExtractsUsingCatalystOptions
    # Code for non in-situ environments; if executing in post-processing
    # i.e. non-Catalyst mode, let's generate extracts using Catalyst options
    SaveExtractsUsingCatalystOptions(options)

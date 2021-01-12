Amazon Lumberyard Bistro

Originally revealed at the 2017 Game Developer Conference.

All scenes contain emissive surfaces for raytracing and analytic lighting for raster.

BistroExterior can also become a night scene when rendered without analytical lighting or environment map.

The BistroInterior_Wine scene is a modified version of the original BistroInterior containing filled wine glasses 
with additional material parameters specified in the accompanying py scene file.

Triangle Counts:
- Interior: 1,044,183 unique, 1,046,609 total
- Interior_Wine: 935,853 unique, 1,293,691 total 
- Exterior: 2,799,704 unique, 2,832,120 total

Textures (compressed .DDS) designed for GGX-based metal-rough PBR material system with the following convention: 
- BaseColor
    RGB channels: BaseColor value
    Alpha channel: Opacity

- Specular
    Red channel: Occlusion
    Green channel: Roughness
    Blue channel: Metalness

- Normal (DirectX)

- Emissive
    RGB channels: Emissive color

Also included:
- HDR environment map for exterior from https://hdrihaven.com
- Py scene files for Falcor containing additional parameters for select scenes. Refer to Falcor documentation on Scene Formats for more details.

How to cite use of this asset:

  @misc{ORCAAmazonBistro,
   title = {Amazon Lumberyard Bistro, Open Research Content Archive (ORCA)},
   author = {Amazon Lumberyard},
   year = {2017},
   month = {July},
   note = {\small \texttt{http://developer.nvidia.com/orca/amazon-lumberyard-bistro}},
   url = {http://developer.nvidia.com/orca/amazon-lumberyard-bistro}
}
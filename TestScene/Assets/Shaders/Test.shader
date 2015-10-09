// Compiled shader for PC, Mac & Linux Standalone, uncompressed size: 718.3KB

// Skipping shader variants that would not be included into build of current scene.

Shader "Standard" {
Properties {
 _Color ("Color", Color) = (1,1,1,1)
 _MainTex ("Albedo", 2D) = "white" { }
 _Cutoff ("Alpha Cutoff", Range(0,1)) = 0.5
 _Glossiness ("Smoothness", Range(0,1)) = 0.5
[Gamma]  _Metallic ("Metallic", Range(0,1)) = 0
 _MetallicGlossMap ("Metallic", 2D) = "white" { }
 _BumpScale ("Scale", Float) = 1
 _BumpMap ("Normal Map", 2D) = "bump" { }
 _Parallax ("Height Scale", Range(0.005,0.08)) = 0.02
 _ParallaxMap ("Height Map", 2D) = "black" { }
 _OcclusionStrength ("Strength", Range(0,1)) = 1
 _OcclusionMap ("Occlusion", 2D) = "white" { }
 _EmissionColor ("Color", Color) = (0,0,0,1)
 _EmissionMap ("Emission", 2D) = "white" { }
 _DetailMask ("Detail Mask", 2D) = "white" { }
 _DetailAlbedoMap ("Detail Albedo x2", 2D) = "grey" { }
 _DetailNormalMapScale ("Scale", Float) = 1
 _DetailNormalMap ("Normal Map", 2D) = "bump" { }
[Enum(UV0,0,UV1,1)]  _UVSec ("UV Set for secondary textures", Float) = 0
[HideInInspector]  _Mode ("__mode", Float) = 0
[HideInInspector]  _SrcBlend ("__src", Float) = 1
[HideInInspector]  _DstBlend ("__dst", Float) = 0
[HideInInspector]  _ZWrite ("__zw", Float) = 1
}
SubShader { 
 LOD 300
 Tags { "RenderType"="Opaque" "PerformanceChecks"="False" }


 // Stats for Vertex shader:
 //       d3d11 : 44 avg math (33..56)
 //        d3d9 : 50 avg math (34..67)
 // Stats for Fragment shader:
 //       d3d11 : 137 avg math (136..138), 2 avg texture (2..3), 4 branch
 //        d3d9 : 151 avg math (151..152), 6 avg texture (6..7), 5 branch
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardBase" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite [_ZWrite]
  Blend [_SrcBlend] [_DstBlend]
  GpuProgramID 19283
	Cull Off
Program "vp" {
SubProgram "d3d9 " {
// Stats: 34 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
"vs_3_0
def c18, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord8 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
mul r0.xyz, c8, v1.y
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
mov o5.xyz, r1
dp4 r1.x, c11, r2
dp4 r1.y, c12, r2
dp4 r1.z, c13, r2
mad o6.xyz, c14, r0.x, r1
mov o3, c18.x
mov o4, c18.x
mov o5.w, c18.x
mov o6.w, c18.x

"
}
SubProgram "d3d11 " {
// Stats: 33 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedgpginppkegjeeibjhnmjgnjolfhobmfiabaaaaaajmahaaaaadaaaaaa
cmaaaaaaliaaaaaakaabaaaaejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaaiaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcpeafaaaaeaaaabaahnabaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaa
fjaaaaaeegiocaaaadaaaaaabdaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
gfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadhccabaaa
ahaaaaaagiaaaaacacaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
aaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaa
aaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaa
egbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaa
aaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaa
egbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaa
diaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhccabaaa
acaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadgaaaaaf
hccabaaaahaaaaaaegacbaaaaaaaaaaadgaaaaaipccabaaaadaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgaaaaaipccabaaaaeaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaaibcaabaaaaaaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaaaaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaaaaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaabaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaabaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaa
aaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaafhccabaaaafaaaaaa
egacbaaaaaaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaadiaaaaah
icaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadcaaaaakicaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaaaaaaaaadkaabaiaebaaaaaaaaaaaaaa
diaaaaahpcaabaaaabaaaaaajgacbaaaaaaaaaaaegakbaaaaaaaaaaabbaaaaai
bcaabaaaaaaaaaaaegiocaaaacaaaaaacjaaaaaaegaobaaaabaaaaaabbaaaaai
ccaabaaaaaaaaaaaegiocaaaacaaaaaackaaaaaaegaobaaaabaaaaaabbaaaaai
ecaabaaaaaaaaaaaegiocaaaacaaaaaaclaaaaaaegaobaaaabaaaaaadcaaaaak
hccabaaaagaaaaaaegiccaaaacaaaaaacmaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 19 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 15 [unity_SHBb]
Vector 14 [unity_SHBg]
Vector 13 [unity_SHBr]
Vector 16 [unity_SHC]
"vs_3_0
def c20, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dcl_texcoord8 o8.xyz
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o8.xyz, r0
dp4 r0.y, c1, v0
mul r1.x, r0.y, c11.x
mul r1.w, r1.x, c20.x
dp4 r0.x, c0, v0
dp4 r0.w, c3, v0
mul r1.xz, r0.xyww, c20.x
mad o7.xy, r1.z, c12.zwzw, r1.xwzw
mul r1.xyz, c8, v1.y
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
mul r1.x, r2.y, r2.y
mad r1.x, r2.x, r2.x, -r1.x
mul r3, r2.yzzx, r2.xyzz
mov o5.xyz, r2
dp4 r2.x, c13, r3
dp4 r2.y, c14, r3
dp4 r2.z, c15, r3
mad o6.xyz, c16, r1.x, r2
dp4 r0.z, c2, v0
mov o0, r0
mov o7.zw, r0
mov o3, c20.y
mov o4, c20.y
mov o5.w, c20.y
mov o6.w, c20.y

"
}
SubProgram "d3d11 " {
// Stats: 36 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecediecaihmcgfepcpljgncpfbmhnnbgknddabaaaaaaemaiaaaaadaaaaaa
cmaaaaaaliaaaaaaliabaaaaejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheopiaaaaaa
ajaaaaaaaiaaaaaaoaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
omaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaomaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaomaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaomaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
omaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaomaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaomaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaapaaaaaaomaaaaaaaiaaaaaaaaaaaaaaadaaaaaaaiaaaaaaahaiaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefcimagaaaa
eaaaabaakdabaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaa
abaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaafjaaaaaeegiocaaa
adaaaaaabdaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaa
fpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaa
afaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadpccabaaaahaaaaaagfaaaaad
hccabaaaaiaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaai
bcaabaaaabaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaaj
dcaabaaaabaaaaaaagaabaaaabaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaa
dcaaaaalmccabaaaabaaaaaaagaebaaaabaaaaaaagiecaaaaaaaaaaaamaaaaaa
kgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaa
egiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaa
abaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegacbaaaabaaaaaaaaaaaaajhccabaaaacaaaaaaegacbaaa
abaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadgaaaaafhccabaaaaiaaaaaa
egacbaaaabaaaaaadgaaaaaipccabaaaadaaaaaaaceaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaadgaaaaaipccabaaaaeaaaaaaaceaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaadiaaaaaibcaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaa
adaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaa
adaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaa
adaaaaaabcaaaaaadiaaaaaibcaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaa
adaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaa
adaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaa
adaaaaaabcaaaaaaaaaaaaahhcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaa
acaaaaaadiaaaaaibcaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaa
baaaaaaadiaaaaaiccaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaa
bbaaaaaadiaaaaaiecaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaa
bcaaaaaaaaaaaaahhcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaa
baaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaf
icaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaa
abaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaadiaaaaahicaabaaaabaaaaaa
bkaabaaaabaaaaaabkaabaaaabaaaaaadcaaaaakicaabaaaabaaaaaaakaabaaa
abaaaaaaakaabaaaabaaaaaadkaabaiaebaaaaaaabaaaaaadiaaaaahpcaabaaa
acaaaaaajgacbaaaabaaaaaaegakbaaaabaaaaaabbaaaaaibcaabaaaabaaaaaa
egiocaaaacaaaaaacjaaaaaaegaobaaaacaaaaaabbaaaaaiccaabaaaabaaaaaa
egiocaaaacaaaaaackaaaaaaegaobaaaacaaaaaabbaaaaaiecaabaaaabaaaaaa
egiocaaaacaaaaaaclaaaaaaegaobaaaacaaaaaadcaaaaakhccabaaaagaaaaaa
egiccaaaacaaaaaacmaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaagaaaaaaabeaaaaaaaaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaa
aaaaaaaaakiacaaaabaaaaaaafaaaaaadiaaaaakncaabaaaabaaaaaaagahbaaa
aaaaaaaaaceaaaaaaaaaaadpaaaaaaaaaaaaaadpaaaaaadpdgaaaaafmccabaaa
ahaaaaaakgaobaaaaaaaaaaaaaaaaaahdccabaaaahaaaaaakgakbaaaabaaaaaa
mgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 61 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 24 [_DetailAlbedoMap_ST]
Vector 23 [_MainTex_ST]
Float 25 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 18 [unity_4LightAtten0]
Vector 15 [unity_4LightPosX0]
Vector 16 [unity_4LightPosY0]
Vector 17 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 21 [unity_SHBb]
Vector 20 [unity_SHBg]
Vector 19 [unity_SHBr]
Vector 22 [unity_SHC]
"vs_3_0
def c26, 0, 1, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord8 o7.xyz
dp4 o0.x, c4, v0
dp4 o0.y, c5, v0
dp4 o0.z, c6, v0
dp4 o0.w, c7, v0
mad o1.xy, v2, c23, c23.zwzw
abs r0.x, c25.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c24.xyxy, c24
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c14
add r1, -r0.z, c17
mov o7.xyz, r0
add r2, -r0.x, c15
add r0, -r0.y, c16
mul r3.xyz, c12, v1.y
mad r3.xyz, c11, v1.x, r3
mad r3.xyz, c13, v1.z, r3
nrm r4.xyz, r3
mul r3, r0, r4.y
mul r0, r0, r0
mad r0, r2, r2, r0
mad r2, r2, r4.x, r3
mad r2, r1, r4.z, r2
mad r0, r1, r1, r0
rsq r1.x, r0.x
rsq r1.y, r0.y
rsq r1.z, r0.z
rsq r1.w, r0.w
mov r3.y, c26.y
mad r0, r0, c18, r3.y
mul r1, r1, r2
max r1, r1, c26.x
rcp r2.x, r0.x
rcp r2.y, r0.y
rcp r2.z, r0.z
rcp r2.w, r0.w
mul r0, r1, r2
mul r1.xyz, r0.y, c1
mad r1.xyz, c0, r0.x, r1
mad r0.xyz, c2, r0.z, r1
mad r0.xyz, c3, r0.w, r0
mul r0.w, r4.y, r4.y
mad r0.w, r4.x, r4.x, -r0.w
mul r1, r4.yzzx, r4.xyzz
mov o5.xyz, r4
dp4 r2.x, c19, r1
dp4 r2.y, c20, r1
dp4 r2.z, c21, r1
mad r1.xyz, c22, r0.w, r2
add o6.xyz, r0, r1
mov o3, c26.x
mov o4, c26.x
mov o5.w, c26.x
mov o6.w, c26.x

"
}
SubProgram "d3d11 " {
// Stats: 53 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 32 [unity_4LightPosX0]
Vector 48 [unity_4LightPosY0]
Vector 64 [unity_4LightPosZ0]
Vector 80 [unity_4LightAtten0]
Vector 96 [unity_LightColor0]
Vector 112 [unity_LightColor1]
Vector 128 [unity_LightColor2]
Vector 144 [unity_LightColor3]
Vector 160 [unity_LightColor4]
Vector 176 [unity_LightColor5]
Vector 192 [unity_LightColor6]
Vector 208 [unity_LightColor7]
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedcbfnkjnkonblffjhbbkndngmeinfdibeabaaaaaafeakaaaaadaaaaaa
cmaaaaaaliaaaaaakaabaaaaejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaaiaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefckmaiaaaaeaaaabaaclacaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaa
fjaaaaaeegiocaaaadaaaaaabdaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
gfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadhccabaaa
ahaaaaaagiaaaaacafaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
aaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaa
aaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaa
egbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaa
aaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaa
egbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaa
diaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhccabaaa
acaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadgaaaaai
pccabaaaadaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgaaaaai
pccabaaaaeaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaai
bcaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaai
bcaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaa
acaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
abaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaafhccabaaaafaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaafaaaaaa
abeaaaaaaaaaaaaaaaaaaaajpcaabaaaacaaaaaafgafbaiaebaaaaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaadiaaaaahpcaabaaaadaaaaaafgafbaaaabaaaaaa
egaobaaaacaaaaaadiaaaaahpcaabaaaacaaaaaaegaobaaaacaaaaaaegaobaaa
acaaaaaaaaaaaaajpcaabaaaaeaaaaaaagaabaiaebaaaaaaaaaaaaaaegiocaaa
acaaaaaaacaaaaaadcaaaaajpcaabaaaadaaaaaaegaobaaaaeaaaaaaagaabaaa
abaaaaaaegaobaaaadaaaaaadcaaaaajpcaabaaaacaaaaaaegaobaaaaeaaaaaa
egaobaaaaeaaaaaaegaobaaaacaaaaaaaaaaaaajpcaabaaaaeaaaaaakgakbaia
ebaaaaaaaaaaaaaaegiocaaaacaaaaaaaeaaaaaadgaaaaafhccabaaaahaaaaaa
egacbaaaaaaaaaaadcaaaaajpcaabaaaaaaaaaaaegaobaaaaeaaaaaakgakbaaa
abaaaaaaegaobaaaadaaaaaadcaaaaajpcaabaaaacaaaaaaegaobaaaaeaaaaaa
egaobaaaaeaaaaaaegaobaaaacaaaaaaeeaaaaafpcaabaaaadaaaaaaegaobaaa
acaaaaaadcaaaaanpcaabaaaacaaaaaaegaobaaaacaaaaaaegiocaaaacaaaaaa
afaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaiadpaoaaaaakpcaabaaa
acaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaiadpegaobaaaacaaaaaa
diaaaaahpcaabaaaaaaaaaaaegaobaaaaaaaaaaaegaobaaaadaaaaaadeaaaaak
pcaabaaaaaaaaaaaegaobaaaaaaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaadiaaaaahpcaabaaaaaaaaaaaegaobaaaacaaaaaaegaobaaaaaaaaaaa
diaaaaaihcaabaaaacaaaaaafgafbaaaaaaaaaaaegiccaaaacaaaaaaahaaaaaa
dcaaaaakhcaabaaaacaaaaaaegiccaaaacaaaaaaagaaaaaaagaabaaaaaaaaaaa
egacbaaaacaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaacaaaaaaaiaaaaaa
kgakbaaaaaaaaaaaegacbaaaacaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
acaaaaaaajaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadiaaaaahicaabaaa
aaaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaadcaaaaakicaabaaaaaaaaaaa
akaabaaaabaaaaaaakaabaaaabaaaaaadkaabaiaebaaaaaaaaaaaaaadiaaaaah
pcaabaaaabaaaaaajgacbaaaabaaaaaaegakbaaaabaaaaaabbaaaaaibcaabaaa
acaaaaaaegiocaaaacaaaaaacjaaaaaaegaobaaaabaaaaaabbaaaaaiccaabaaa
acaaaaaaegiocaaaacaaaaaackaaaaaaegaobaaaabaaaaaabbaaaaaiecaabaaa
acaaaaaaegiocaaaacaaaaaaclaaaaaaegaobaaaabaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaacaaaaaacmaaaaaapgapbaaaaaaaaaaaegacbaaaacaaaaaa
aaaaaaahhccabaaaagaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaagaaaaaaabeaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 67 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 26 [_DetailAlbedoMap_ST]
Vector 25 [_MainTex_ST]
Vector 15 [_ProjectionParams]
Vector 16 [_ScreenParams]
Float 27 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 20 [unity_4LightAtten0]
Vector 17 [unity_4LightPosX0]
Vector 18 [unity_4LightPosY0]
Vector 19 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 23 [unity_SHBb]
Vector 22 [unity_SHBg]
Vector 21 [unity_SHBr]
Vector 24 [unity_SHC]
"vs_3_0
def c28, 0.5, 0, 1, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dcl_texcoord8 o8.xyz
mad o1.xy, v2, c25, c25.zwzw
abs r0.x, c27.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c26.xyxy, c26
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c14
dp4 r1.y, c5, v0
mul r0.w, r1.y, c15.x
mul r2.w, r0.w, c28.x
dp4 r1.x, c4, v0
dp4 r1.w, c7, v0
mul r2.xz, r1.xyww, c28.x
mad o7.xy, r2.z, c16.zwzw, r2.xwzw
add r2, -r0.z, c19
mov o8.xyz, r0
add r3, -r0.x, c17
add r0, -r0.y, c18
mul r4.xyz, c12, v1.y
mad r4.xyz, c11, v1.x, r4
mad r4.xyz, c13, v1.z, r4
nrm r5.xyz, r4
mul r4, r0, r5.y
mul r0, r0, r0
mad r0, r3, r3, r0
mad r3, r3, r5.x, r4
mad r3, r2, r5.z, r3
mad r0, r2, r2, r0
rsq r2.x, r0.x
rsq r2.y, r0.y
rsq r2.z, r0.z
rsq r2.w, r0.w
mov r4.z, c28.z
mad r0, r0, c20, r4.z
mul r2, r2, r3
max r2, r2, c28.y
rcp r3.x, r0.x
rcp r3.y, r0.y
rcp r3.z, r0.z
rcp r3.w, r0.w
mul r0, r2, r3
mul r2.xyz, r0.y, c1
mad r2.xyz, c0, r0.x, r2
mad r0.xyz, c2, r0.z, r2
mad r0.xyz, c3, r0.w, r0
mul r0.w, r5.y, r5.y
mad r0.w, r5.x, r5.x, -r0.w
mul r2, r5.yzzx, r5.xyzz
mov o5.xyz, r5
dp4 r3.x, c21, r2
dp4 r3.y, c22, r2
dp4 r3.z, c23, r2
mad r2.xyz, c24, r0.w, r3
add o6.xyz, r0, r2
dp4 r1.z, c6, v0
mov o0, r1
mov o7.zw, r1
mov o3, c28.y
mov o4, c28.y
mov o5.w, c28.y
mov o6.w, c28.y

"
}
SubProgram "d3d11 " {
// Stats: 56 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 32 [unity_4LightPosX0]
Vector 48 [unity_4LightPosY0]
Vector 64 [unity_4LightPosZ0]
Vector 80 [unity_4LightAtten0]
Vector 96 [unity_LightColor0]
Vector 112 [unity_LightColor1]
Vector 128 [unity_LightColor2]
Vector 144 [unity_LightColor3]
Vector 160 [unity_LightColor4]
Vector 176 [unity_LightColor5]
Vector 192 [unity_LightColor6]
Vector 208 [unity_LightColor7]
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedbjpconohjpjlmcfaacmcenpfhdcfkdkoabaaaaaaaealaaaaadaaaaaa
cmaaaaaaliaaaaaaliabaaaaejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheopiaaaaaa
ajaaaaaaaiaaaaaaoaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
omaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaomaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaomaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaomaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
omaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaomaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaomaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaapaaaaaaomaaaaaaaiaaaaaaaaaaaaaaadaaaaaaaiaaaaaaahaiaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklfdeieefceeajaaaa
eaaaabaafbacaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaa
abaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaafjaaaaaeegiocaaa
adaaaaaabdaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaa
fpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaa
afaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadpccabaaaahaaaaaagfaaaaad
hccabaaaaiaaaaaagiaaaaacagaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaai
bcaabaaaabaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaaj
dcaabaaaabaaaaaaagaabaaaabaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaa
dcaaaaalmccabaaaabaaaaaaagaebaaaabaaaaaaagiecaaaaaaaaaaaamaaaaaa
kgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaa
egiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaa
abaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegacbaaaabaaaaaaaaaaaaajhccabaaaacaaaaaaegacbaaa
abaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadgaaaaaipccabaaaadaaaaaa
aceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgaaaaaipccabaaaaeaaaaaa
aceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaaibcaabaaaacaaaaaa
akbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaa
akbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaa
akbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaadaaaaaa
bkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaa
bkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaa
bkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaackbabaaa
abaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaackbabaaa
abaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaackbabaaa
abaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaaaadaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaacaaaaaa
egacbaaaacaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hcaabaaaacaaaaaapgapbaaaabaaaaaaegacbaaaacaaaaaadgaaaaafhccabaaa
afaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaa
aaaaaaajpcaabaaaadaaaaaafgafbaiaebaaaaaaabaaaaaaegiocaaaacaaaaaa
adaaaaaadiaaaaahpcaabaaaaeaaaaaafgafbaaaacaaaaaaegaobaaaadaaaaaa
diaaaaahpcaabaaaadaaaaaaegaobaaaadaaaaaaegaobaaaadaaaaaaaaaaaaaj
pcaabaaaafaaaaaaagaabaiaebaaaaaaabaaaaaaegiocaaaacaaaaaaacaaaaaa
dcaaaaajpcaabaaaaeaaaaaaegaobaaaafaaaaaaagaabaaaacaaaaaaegaobaaa
aeaaaaaadcaaaaajpcaabaaaadaaaaaaegaobaaaafaaaaaaegaobaaaafaaaaaa
egaobaaaadaaaaaaaaaaaaajpcaabaaaafaaaaaakgakbaiaebaaaaaaabaaaaaa
egiocaaaacaaaaaaaeaaaaaadgaaaaafhccabaaaaiaaaaaaegacbaaaabaaaaaa
dcaaaaajpcaabaaaabaaaaaaegaobaaaafaaaaaakgakbaaaacaaaaaaegaobaaa
aeaaaaaadcaaaaajpcaabaaaadaaaaaaegaobaaaafaaaaaaegaobaaaafaaaaaa
egaobaaaadaaaaaaeeaaaaafpcaabaaaaeaaaaaaegaobaaaadaaaaaadcaaaaan
pcaabaaaadaaaaaaegaobaaaadaaaaaaegiocaaaacaaaaaaafaaaaaaaceaaaaa
aaaaiadpaaaaiadpaaaaiadpaaaaiadpaoaaaaakpcaabaaaadaaaaaaaceaaaaa
aaaaiadpaaaaiadpaaaaiadpaaaaiadpegaobaaaadaaaaaadiaaaaahpcaabaaa
abaaaaaaegaobaaaabaaaaaaegaobaaaaeaaaaaadeaaaaakpcaabaaaabaaaaaa
egaobaaaabaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaah
pcaabaaaabaaaaaaegaobaaaadaaaaaaegaobaaaabaaaaaadiaaaaaihcaabaaa
adaaaaaafgafbaaaabaaaaaaegiccaaaacaaaaaaahaaaaaadcaaaaakhcaabaaa
adaaaaaaegiccaaaacaaaaaaagaaaaaaagaabaaaabaaaaaaegacbaaaadaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaacaaaaaaaiaaaaaakgakbaaaabaaaaaa
egacbaaaadaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaacaaaaaaajaaaaaa
pgapbaaaabaaaaaaegacbaaaabaaaaaadiaaaaahicaabaaaabaaaaaabkaabaaa
acaaaaaabkaabaaaacaaaaaadcaaaaakicaabaaaabaaaaaaakaabaaaacaaaaaa
akaabaaaacaaaaaadkaabaiaebaaaaaaabaaaaaadiaaaaahpcaabaaaacaaaaaa
jgacbaaaacaaaaaaegakbaaaacaaaaaabbaaaaaibcaabaaaadaaaaaaegiocaaa
acaaaaaacjaaaaaaegaobaaaacaaaaaabbaaaaaiccaabaaaadaaaaaaegiocaaa
acaaaaaackaaaaaaegaobaaaacaaaaaabbaaaaaiecaabaaaadaaaaaaegiocaaa
acaaaaaaclaaaaaaegaobaaaacaaaaaadcaaaaakhcaabaaaacaaaaaaegiccaaa
acaaaaaacmaaaaaapgapbaaaabaaaaaaegacbaaaadaaaaaaaaaaaaahhccabaaa
agaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaaagaaaaaa
abeaaaaaaaaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaa
abaaaaaaafaaaaaadiaaaaakncaabaaaabaaaaaaagahbaaaaaaaaaaaaceaaaaa
aaaaaadpaaaaaaaaaaaaaadpaaaaaadpdgaaaaafmccabaaaahaaaaaakgaobaaa
aaaaaaaaaaaaaaahdccabaaaahaaaaaakgakbaaaabaaaaaamgaabaaaabaaaaaa
doaaaaab"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 151 math, 6 textures, 5 branches
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Vector 15 [_Color]
Float 17 [_Glossiness]
Vector 13 [_LightColor0]
Float 16 [_Metallic]
Float 18 [_OcclusionStrength]
Vector 0 [_WorldSpaceLightPos0]
Vector 12 [unity_ColorSpaceDielectricSpec]
Vector 14 [unity_LightGammaCorrectionConsts]
Vector 3 [unity_SHAb]
Vector 2 [unity_SHAg]
Vector 1 [unity_SHAr]
Vector 4 [unity_SpecCube0_BoxMax]
Vector 5 [unity_SpecCube0_BoxMin]
Vector 7 [unity_SpecCube0_HDR]
Vector 6 [unity_SpecCube0_ProbePosition]
Vector 8 [unity_SpecCube1_BoxMax]
Vector 9 [unity_SpecCube1_BoxMin]
Vector 11 [unity_SpecCube1_HDR]
Vector 10 [unity_SpecCube1_ProbePosition]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_SpecCube1] CUBE 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_OcclusionMap] 2D 3
"ps_3_0
def c19, 7, 0.999989986, 0.00100000005, 31.622776
def c20, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c21, 0, 1, 0.5, 0.75
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord4_pp v2.xyz
dcl_texcoord5_pp v3.xyz
dcl_texcoord8_pp v4.xyz
dcl_cube s0
dcl_cube s1
dcl_2d s2
dcl_2d s3
texld r0, v0, s2
mul_pp r1.xyz, r0, c15
mov r2, c12
mad_pp r0.xyz, c15, r0, -r2
mad_pp r0.xyz, c16.x, r0, r2
mad_pp r0.w, c16.x, -r2.w, r2.w
mul_pp r1.xyz, r0.w, r1
nrm_pp r2.xyz, v2
dp3_pp r1.w, v1, v1
rsq_pp r1.w, r1.w
mul_pp r3.xyz, r1.w, v1
dp3_pp r3.w, r2, c0
max_pp r4.x, r3.w, c21.x
texld_pp r5, v0, s3
mov r6.xyz, c21
add_pp r3.w, r6.y, -c18.x
mad_pp r3.w, r5.y, c18.x, r3.w
add_pp r4.y, r6.y, -c17.x
dp3_pp r4.z, r3, r2
add_pp r4.z, r4.z, r4.z
mad_pp r5.xyz, r2, -r4.z, r3
mov r2.w, c21.y
dp4_pp r7.x, c1, r2
dp4_pp r7.y, c2, r2
dp4_pp r7.z, c3, r2
add_pp r7.xyz, r7, v3
if_lt -c6.w, r6.x
nrm_pp r8.xyz, r5
add r9.xyz, c4, -v4
rcp r10.x, r8.x
rcp r10.y, r8.y
rcp r10.z, r8.z
mul_pp r9.xyz, r9, r10
add r11.xyz, c5, -v4
mul_pp r10.xyz, r10, r11
cmp_pp r9.xyz, -r8, r10, r9
min_pp r2.w, r9.y, r9.x
min_pp r4.z, r9.z, r2.w
mov r9.xyz, c5
add r9.xyz, r9, c4
mad r10.xyz, r9, r6.z, -c6
add r10.xyz, r10, v4
mad r8.xyz, r8, r4.z, r10
mad_pp r8.xyz, r9, -c21.z, r8
else
mov_pp r8.xyz, r5
endif
pow_pp r2.w, r4.y, c21.w
mul_pp r8.w, r2.w, c19.x
texldl_pp r9, r8, s0
pow_pp r2.w, r9.w, c7.y
mul_pp r2.w, r2.w, c7.x
mul_pp r10.xyz, r9, r2.w
mov r4.w, c5.w
if_lt r4.w, c19.y
if_lt -c10.w, r6.x
nrm_pp r11.xyz, r5
add r12.xyz, c8, -v4
rcp r13.x, r11.x
rcp r13.y, r11.y
rcp r13.z, r11.z
mul_pp r12.xyz, r12, r13
add r14.xyz, c9, -v4
mul_pp r13.xyz, r13, r14
cmp_pp r12.xyz, -r11, r13, r12
min_pp r4.z, r12.y, r12.x
min_pp r5.w, r12.z, r4.z
mov r12.xyz, c8
add r12.xyz, r12, c9
mad r6.xzw, r12.xyyz, r6.z, -c10.xyyz
add r6.xzw, r6, v4.xyyz
mad r6.xzw, r11.xyyz, r5.w, r6
mad_pp r8.xyz, r12, -c21.z, r6.xzww
else
mov_pp r8.xyz, r5
endif
texldl_pp r5, r8, s1
pow_pp r4.z, r5.w, c11.y
mul_pp r4.z, r4.z, c11.x
mul_pp r5.xyz, r5, r4.z
mad r6.xzw, r2.w, r9.xyyz, -r5.xyyz
mad_pp r10.xyz, c5.w, r6.xzww, r5
endif
mul_pp r5.xyz, r3.w, r10
mad_pp r6.xzw, v1.xyyz, -r1.w, c0.xyyz
dp3_pp r1.w, r6.xzww, r6.xzww
add r2.w, -r1.w, c19.z
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c19.w, r1.w
mul_pp r6.xzw, r1.w, r6
dp3_pp r1.w, r2, r6.xzww
max_pp r2.w, r1.w, c21.x
dp3_pp r1.w, r2, -r3
max_pp r2.x, r1.w, c21.x
dp3_pp r1.w, c0, r6.xzww
max_pp r2.y, r1.w, c21.x
mul_pp r1.w, r4.y, r4.y
mul_pp r2.z, r1.w, c14.w
mad_pp r1.w, r1.w, -c14.w, r6.y
mad_pp r3.x, r4.x, r1.w, r2.z
mad_pp r1.w, r2.x, r1.w, r2.z
mad r1.w, r3.x, r1.w, c20.x
rcp_pp r1.w, r1.w
add_pp r2.z, -r4.y, c21.y
mad_pp r2.z, r2.z, c20.y, c20.z
log_pp r2.z, r2.z
rcp r2.z, r2.z
mul_pp r2.z, r2.z, c20.w
mul_pp r3.x, r2.z, r2.z
mad_pp r2.z, r2.z, r2.z, c21.y
mul_pp r2.z, r2.z, c14.y
pow_pp r4.z, r2.w, r3.x
mul_pp r2.z, r2.z, r4.z
add_pp r2.w, -r4.x, c21.y
mul_pp r3.x, r2.w, r2.w
mul_pp r3.x, r3.x, r3.x
mul_pp r2.w, r2.w, r3.x
add_pp r2.x, -r2.x, c21.y
mul_pp r3.x, r2.x, r2.x
mul_pp r3.x, r3.x, r3.x
mul_pp r2.x, r2.x, r3.x
mul_pp r3.x, r2.y, r2.y
dp2add_pp r3.x, r3.x, r4.y, -c21.z
mad_pp r2.w, r3.x, r2.w, c21.y
mad_pp r3.x, r3.x, r2.x, c21.y
mul_pp r2.w, r2.w, r3.x
mul_pp r1.w, r1.w, r2.z
mul_pp r1.w, r4.x, r1.w
mul_pp r1.w, r1.w, c14.x
mul_pp r2.z, r4.x, r2.w
add_pp r0.w, -r0.w, c21.y
add_sat_pp r0.w, r0.w, c17.x
mul_pp r3.xyz, r2.z, c13
mad_pp r3.xyz, r7, r3.w, r3
mul_pp r4.xyz, r1.w, c13
cmp_pp r4.xyz, r1.w, r4, c21.x
add_pp r1.w, -r2.y, c21.y
mul_pp r2.y, r1.w, r1.w
mul_pp r2.y, r2.y, r2.y
mul_pp r1.w, r1.w, r2.y
lrp_pp r2.yzw, r1.w, c21.y, r0.xxyz
mul_pp r2.yzw, r2, r4.xxyz
mad_pp r1.xyz, r1, r3, r2.yzww
lrp_pp r3.xyz, r2.x, r0.w, r0
mad_pp oC0.xyz, r5, r3, r1
mov_pp oC0.w, c21.y

"
}
SubProgram "d3d11 " {
// Stats: 136 math, 2 textures, 4 branches
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
SetTexture 0 [_MainTex] 2D 2
SetTexture 1 [_OcclusionMap] 2D 3
SetTexture 2 [unity_SpecCube0] CUBE 0
SetTexture 3 [unity_SpecCube1] CUBE 1
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
Float 224 [_OcclusionStrength]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
ConstBuffer "UnityReflectionProbes" 128
Vector 0 [unity_SpecCube0_BoxMax]
Vector 16 [unity_SpecCube0_BoxMin]
Vector 32 [unity_SpecCube0_ProbePosition]
Vector 48 [unity_SpecCube0_HDR]
Vector 64 [unity_SpecCube1_BoxMax]
Vector 80 [unity_SpecCube1_BoxMin]
Vector 96 [unity_SpecCube1_ProbePosition]
Vector 112 [unity_SpecCube1_HDR]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityReflectionProbes" 2
"ps_4_0
root12:aeadaeaa
eefiecedfdaoggbicjpiedjbidppicmehlfggdblabaaaaaagabeaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apahaaaaneaaaaaaaiaaaaaaaaaaaaaaadaaaaaaahaaaaaaahahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcbabdaaaaeaaaaaaameaeaaaafjaaaaaeegiocaaa
aaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaacjaaaaaafjaaaaaeegiocaaa
acaaaaaaaiaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafidaaaaeaahabaaa
acaaaaaaffffaaaafidaaaaeaahabaaaadaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaaafaaaaaagcbaaaad
hcbabaaaagaaaaaagcbaaaadhcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaa
giaaaaacanaaaaaaefaaaaajpcaabaaaaaaaaaaaegbabaaaabaaaaaaeghobaaa
aaaaaaaaaagabaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaaaaaaaaa
egiccaaaaaaaaaaaajaaaaaadcaaaaamhcaabaaaaaaaaaaaegiccaaaaaaaaaaa
ajaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadcaaaaal
hcaabaaaaaaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaaaaaaaaaegiccaaa
aaaaaaaaacaaaaaadcaaaaanicaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaa
anaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaa
abaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaficaabaaaabaaaaaa
dkaabaaaabaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaaabaaaaaaegbcbaaa
afaaaaaabaaaaaahicaabaaaabaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaa
eeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaadaaaaaa
pgapbaaaabaaaaaaegbcbaaaacaaaaaabaaaaaaiicaabaaaadaaaaaaegacbaaa
acaaaaaaegiccaaaabaaaaaaaaaaaaaadeaaaaahicaabaaaadaaaaaadkaabaaa
adaaaaaaabeaaaaaaaaaaaaaefaaaaajpcaabaaaaeaaaaaaegbabaaaabaaaaaa
eghobaaaabaaaaaaaagabaaaadaaaaaaaaaaaaajbcaabaaaaeaaaaaaakiacaia
ebaaaaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaiadpdcaaaaakbcaabaaaaeaaaaaa
bkaabaaaaeaaaaaaakiacaaaaaaaaaaaaoaaaaaaakaabaaaaeaaaaaaaaaaaaaj
ccaabaaaaeaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadp
baaaaaahecaabaaaaeaaaaaaegacbaaaadaaaaaaegacbaaaacaaaaaaaaaaaaah
ecaabaaaaeaaaaaackaabaaaaeaaaaaackaabaaaaeaaaaaadcaaaaakhcaabaaa
afaaaaaaegacbaaaacaaaaaakgakbaiaebaaaaaaaeaaaaaaegacbaaaadaaaaaa
dgaaaaaficaabaaaacaaaaaaabeaaaaaaaaaiadpbbaaaaaibcaabaaaagaaaaaa
egiocaaaabaaaaaacgaaaaaaegaobaaaacaaaaaabbaaaaaiccaabaaaagaaaaaa
egiocaaaabaaaaaachaaaaaaegaobaaaacaaaaaabbaaaaaiecaabaaaagaaaaaa
egiocaaaabaaaaaaciaaaaaaegaobaaaacaaaaaaaaaaaaahhcaabaaaagaaaaaa
egacbaaaagaaaaaaegbcbaaaagaaaaaadbaaaaaiicaabaaaacaaaaaaabeaaaaa
aaaaaaaadkiacaaaacaaaaaaacaaaaaabpaaaeaddkaabaaaacaaaaaabaaaaaah
icaabaaaacaaaaaaegacbaaaafaaaaaaegacbaaaafaaaaaaeeaaaaaficaabaaa
acaaaaaadkaabaaaacaaaaaadiaaaaahhcaabaaaahaaaaaapgapbaaaacaaaaaa
egacbaaaafaaaaaaaaaaaaajhcaabaaaaiaaaaaaegbcbaiaebaaaaaaahaaaaaa
egiccaaaacaaaaaaaaaaaaaaaoaaaaahhcaabaaaaiaaaaaaegacbaaaaiaaaaaa
egacbaaaahaaaaaaaaaaaaajhcaabaaaajaaaaaaegbcbaiaebaaaaaaahaaaaaa
egiccaaaacaaaaaaabaaaaaaaoaaaaahhcaabaaaajaaaaaaegacbaaaajaaaaaa
egacbaaaahaaaaaadbaaaaakhcaabaaaakaaaaaaaceaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaegacbaaaahaaaaaadhaaaaajhcaabaaaaiaaaaaaegacbaaa
akaaaaaaegacbaaaaiaaaaaaegacbaaaajaaaaaaddaaaaahicaabaaaacaaaaaa
bkaabaaaaiaaaaaaakaabaaaaiaaaaaaddaaaaahicaabaaaacaaaaaackaabaaa
aiaaaaaadkaabaaaacaaaaaaaaaaaaajhcaabaaaaiaaaaaaegiccaaaacaaaaaa
aaaaaaaaegiccaaaacaaaaaaabaaaaaadcaaaaaohcaabaaaajaaaaaaegacbaaa
aiaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaaegiccaiaebaaaaaa
acaaaaaaacaaaaaaaaaaaaahhcaabaaaajaaaaaaegacbaaaajaaaaaaegbcbaaa
ahaaaaaadcaaaaajhcaabaaaahaaaaaaegacbaaaahaaaaaapgapbaaaacaaaaaa
egacbaaaajaaaaaadcaaaaanhcaabaaaahaaaaaaegacbaiaebaaaaaaaiaaaaaa
aceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaaegacbaaaahaaaaaabcaaaaab
dgaaaaafhcaabaaaahaaaaaaegacbaaaafaaaaaabfaaaaabcpaaaaaficaabaaa
acaaaaaabkaabaaaaeaaaaaadiaaaaahicaabaaaacaaaaaadkaabaaaacaaaaaa
abeaaaaaaaaaeadpbjaaaaaficaabaaaacaaaaaadkaabaaaacaaaaaadiaaaaah
icaabaaaacaaaaaadkaabaaaacaaaaaaabeaaaaaaaaaoaeaeiaaaaalpcaabaaa
ahaaaaaaegacbaaaahaaaaaaeghobaaaacaaaaaaaagabaaaaaaaaaaadkaabaaa
acaaaaaacpaaaaafecaabaaaaeaaaaaadkaabaaaahaaaaaadiaaaaaiecaabaaa
aeaaaaaackaabaaaaeaaaaaabkiacaaaacaaaaaaadaaaaaabjaaaaafecaabaaa
aeaaaaaackaabaaaaeaaaaaadiaaaaaiecaabaaaaeaaaaaackaabaaaaeaaaaaa
akiacaaaacaaaaaaadaaaaaadiaaaaahhcaabaaaaiaaaaaaegacbaaaahaaaaaa
kgakbaaaaeaaaaaadbaaaaaiicaabaaaaeaaaaaadkiacaaaacaaaaaaabaaaaaa
abeaaaaafipphpdpbpaaaeaddkaabaaaaeaaaaaadbaaaaaiicaabaaaaeaaaaaa
abeaaaaaaaaaaaaadkiacaaaacaaaaaaagaaaaaabpaaaeaddkaabaaaaeaaaaaa
baaaaaahicaabaaaaeaaaaaaegacbaaaafaaaaaaegacbaaaafaaaaaaeeaaaaaf
icaabaaaaeaaaaaadkaabaaaaeaaaaaadiaaaaahhcaabaaaajaaaaaapgapbaaa
aeaaaaaaegacbaaaafaaaaaaaaaaaaajhcaabaaaakaaaaaaegbcbaiaebaaaaaa
ahaaaaaaegiccaaaacaaaaaaaeaaaaaaaoaaaaahhcaabaaaakaaaaaaegacbaaa
akaaaaaaegacbaaaajaaaaaaaaaaaaajhcaabaaaalaaaaaaegbcbaiaebaaaaaa
ahaaaaaaegiccaaaacaaaaaaafaaaaaaaoaaaaahhcaabaaaalaaaaaaegacbaaa
alaaaaaaegacbaaaajaaaaaadbaaaaakhcaabaaaamaaaaaaaceaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaegacbaaaajaaaaaadhaaaaajhcaabaaaakaaaaaa
egacbaaaamaaaaaaegacbaaaakaaaaaaegacbaaaalaaaaaaddaaaaahicaabaaa
aeaaaaaabkaabaaaakaaaaaaakaabaaaakaaaaaaddaaaaahicaabaaaaeaaaaaa
ckaabaaaakaaaaaadkaabaaaaeaaaaaaaaaaaaajhcaabaaaakaaaaaaegiccaaa
acaaaaaaaeaaaaaaegiccaaaacaaaaaaafaaaaaadcaaaaaohcaabaaaalaaaaaa
egacbaaaakaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaaegiccaia
ebaaaaaaacaaaaaaagaaaaaaaaaaaaahhcaabaaaalaaaaaaegacbaaaalaaaaaa
egbcbaaaahaaaaaadcaaaaajhcaabaaaajaaaaaaegacbaaaajaaaaaapgapbaaa
aeaaaaaaegacbaaaalaaaaaadcaaaaanhcaabaaaafaaaaaaegacbaiaebaaaaaa
akaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaaegacbaaaajaaaaaa
bfaaaaabeiaaaaalpcaabaaaafaaaaaaegacbaaaafaaaaaaeghobaaaadaaaaaa
aagabaaaabaaaaaadkaabaaaacaaaaaacpaaaaaficaabaaaacaaaaaadkaabaaa
afaaaaaadiaaaaaiicaabaaaacaaaaaadkaabaaaacaaaaaabkiacaaaacaaaaaa
ahaaaaaabjaaaaaficaabaaaacaaaaaadkaabaaaacaaaaaadiaaaaaiicaabaaa
acaaaaaadkaabaaaacaaaaaaakiacaaaacaaaaaaahaaaaaadiaaaaahhcaabaaa
afaaaaaaegacbaaaafaaaaaapgapbaaaacaaaaaadcaaaaakhcaabaaaahaaaaaa
kgakbaaaaeaaaaaaegacbaaaahaaaaaaegacbaiaebaaaaaaafaaaaaadcaaaaak
hcaabaaaaiaaaaaapgipcaaaacaaaaaaabaaaaaaegacbaaaahaaaaaaegacbaaa
afaaaaaabfaaaaabdiaaaaahhcaabaaaafaaaaaaagaabaaaaeaaaaaaegacbaaa
aiaaaaaadcaaaaalhcaabaaaahaaaaaaegbcbaiaebaaaaaaacaaaaaapgapbaaa
abaaaaaaegiccaaaabaaaaaaaaaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
ahaaaaaaegacbaaaahaaaaaadeaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaa
abeaaaaagpbciddkeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hcaabaaaahaaaaaapgapbaaaabaaaaaaegacbaaaahaaaaaabaaaaaahicaabaaa
abaaaaaaegacbaaaacaaaaaaegacbaaaahaaaaaadeaaaaahicaabaaaabaaaaaa
dkaabaaaabaaaaaaabeaaaaaaaaaaaaabaaaaaaibcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaiaebaaaaaaadaaaaaabaaaaaaiccaabaaaacaaaaaaegiccaaa
abaaaaaaaaaaaaaaegacbaaaahaaaaaadeaaaaakdcaabaaaacaaaaaaegaabaaa
acaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaahecaabaaa
acaaaaaabkaabaaaaeaaaaaabkaabaaaaeaaaaaadiaaaaaiicaabaaaacaaaaaa
ckaabaaaacaaaaaadkiacaaaaaaaaaaaaiaaaaaadcaaaaalecaabaaaacaaaaaa
ckaabaiaebaaaaaaacaaaaaadkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadp
dcaaaaajbcaabaaaadaaaaaadkaabaaaadaaaaaackaabaaaacaaaaaadkaabaaa
acaaaaaadcaaaaajecaabaaaacaaaaaaakaabaaaacaaaaaackaabaaaacaaaaaa
dkaabaaaacaaaaaadcaaaaajecaabaaaacaaaaaaakaabaaaadaaaaaackaabaaa
acaaaaaaabeaaaaabhlhnbdiaoaaaaakecaabaaaacaaaaaaaceaaaaaaaaaiadp
aaaaiadpaaaaiadpaaaaiadpckaabaaaacaaaaaaaaaaaaaiicaabaaaacaaaaaa
bkaabaiaebaaaaaaaeaaaaaaabeaaaaaaaaaiadpdcaaaaajicaabaaaacaaaaaa
dkaabaaaacaaaaaaabeaaaaanjmohhdpabeaaaaaipmcpfdmcpaaaaaficaabaaa
acaaaaaadkaabaaaacaaaaaaaoaaaaahicaabaaaacaaaaaaabeaaaaaaaaacaeb
dkaabaaaacaaaaaadiaaaaahbcaabaaaadaaaaaadkaabaaaacaaaaaadkaabaaa
acaaaaaadcaaaaajicaabaaaacaaaaaadkaabaaaacaaaaaadkaabaaaacaaaaaa
abeaaaaaaaaaiadpdiaaaaaiicaabaaaacaaaaaadkaabaaaacaaaaaabkiacaaa
aaaaaaaaaiaaaaaacpaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
icaabaaaabaaaaaadkaabaaaabaaaaaaakaabaaaadaaaaaabjaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaaacaaaaaa
dkaabaaaabaaaaaaaaaaaaaiicaabaaaacaaaaaadkaabaiaebaaaaaaadaaaaaa
abeaaaaaaaaaiadpdiaaaaahbcaabaaaadaaaaaadkaabaaaacaaaaaadkaabaaa
acaaaaaadiaaaaahbcaabaaaadaaaaaaakaabaaaadaaaaaaakaabaaaadaaaaaa
diaaaaahicaabaaaacaaaaaadkaabaaaacaaaaaaakaabaaaadaaaaaaaaaaaaai
bcaabaaaacaaaaaaakaabaiaebaaaaaaacaaaaaaabeaaaaaaaaaiadpdiaaaaah
bcaabaaaadaaaaaaakaabaaaacaaaaaaakaabaaaacaaaaaadiaaaaahbcaabaaa
adaaaaaaakaabaaaadaaaaaaakaabaaaadaaaaaadiaaaaahbcaabaaaacaaaaaa
akaabaaaacaaaaaaakaabaaaadaaaaaadiaaaaahbcaabaaaadaaaaaabkaabaaa
acaaaaaabkaabaaaacaaaaaaapaaaaahbcaabaaaadaaaaaaagaabaaaadaaaaaa
fgafbaaaaeaaaaaaaaaaaaahbcaabaaaadaaaaaaakaabaaaadaaaaaaabeaaaaa
aaaaaalpdcaaaaajicaabaaaacaaaaaaakaabaaaadaaaaaadkaabaaaacaaaaaa
abeaaaaaaaaaiadpdcaaaaajbcaabaaaadaaaaaaakaabaaaadaaaaaaakaabaaa
acaaaaaaabeaaaaaaaaaiadpdiaaaaahicaabaaaacaaaaaadkaabaaaacaaaaaa
akaabaaaadaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaackaabaaa
acaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaaadaaaaaadkaabaaaabaaaaaa
diaaaaaiicaabaaaabaaaaaadkaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaa
deaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaaabeaaaaaaaaaaaaadiaaaaah
ecaabaaaacaaaaaadkaabaaaadaaaaaadkaabaaaacaaaaaaaaaaaaajicaabaaa
aaaaaaaadkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaanaaaaaaaacaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaiadpdiaaaaaihcaabaaa
adaaaaaakgakbaaaacaaaaaaegiccaaaaaaaaaaaagaaaaaadcaaaaajhcaabaaa
adaaaaaaegacbaaaagaaaaaaagaabaaaaeaaaaaaegacbaaaadaaaaaadiaaaaai
hcaabaaaaeaaaaaapgapbaaaabaaaaaaegiccaaaaaaaaaaaagaaaaaaaaaaaaai
icaabaaaabaaaaaabkaabaiaebaaaaaaacaaaaaaabeaaaaaaaaaiadpdiaaaaah
ccaabaaaacaaaaaadkaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahccaabaaa
acaaaaaabkaabaaaacaaaaaabkaabaaaacaaaaaadiaaaaahicaabaaaabaaaaaa
dkaabaaaabaaaaaabkaabaaaacaaaaaaaaaaaaalocaabaaaacaaaaaaagajbaia
ebaaaaaaaaaaaaaaaceaaaaaaaaaaaaaaaaaiadpaaaaiadpaaaaiadpdcaaaaaj
ocaabaaaacaaaaaafgaobaaaacaaaaaapgapbaaaabaaaaaaagajbaaaaaaaaaaa
diaaaaahocaabaaaacaaaaaafgaobaaaacaaaaaaagajbaaaaeaaaaaadcaaaaaj
hcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaadaaaaaajgahbaaaacaaaaaa
aaaaaaaiocaabaaaacaaaaaaagajbaiaebaaaaaaaaaaaaaapgapbaaaaaaaaaaa
dcaaaaajhcaabaaaaaaaaaaaagaabaaaacaaaaaajgahbaaaacaaaaaaegacbaaa
aaaaaaaadcaaaaajhccabaaaaaaaaaaaegacbaaaafaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab
"
}
SubProgram "d3d9 " {
// Stats: 152 math, 7 textures, 5 branches
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Vector 15 [_Color]
Float 17 [_Glossiness]
Vector 13 [_LightColor0]
Float 16 [_Metallic]
Float 18 [_OcclusionStrength]
Vector 0 [_WorldSpaceLightPos0]
Vector 12 [unity_ColorSpaceDielectricSpec]
Vector 14 [unity_LightGammaCorrectionConsts]
Vector 3 [unity_SHAb]
Vector 2 [unity_SHAg]
Vector 1 [unity_SHAr]
Vector 4 [unity_SpecCube0_BoxMax]
Vector 5 [unity_SpecCube0_BoxMin]
Vector 7 [unity_SpecCube0_HDR]
Vector 6 [unity_SpecCube0_ProbePosition]
Vector 8 [unity_SpecCube1_BoxMax]
Vector 9 [unity_SpecCube1_BoxMin]
Vector 11 [unity_SpecCube1_HDR]
Vector 10 [unity_SpecCube1_ProbePosition]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_SpecCube1] CUBE 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_OcclusionMap] 2D 3
SetTexture 4 [_ShadowMapTexture] 2D 4
"ps_3_0
def c19, 0, 1, 0.5, 0.75
def c20, 7, 0.999989986, 0.00100000005, 31.622776
def c21, 9.99999975e-005, 0.967999995, 0.0299999993, 10
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord4_pp v2.xyz
dcl_texcoord5_pp v3.xyz
dcl_texcoord6 v4
dcl_texcoord8_pp v5.xyz
dcl_cube s0
dcl_cube s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
texld r0, v0, s2
mul_pp r1.xyz, r0, c15
mov r2, c12
mad_pp r0.xyz, c15, r0, -r2
mad_pp r0.xyz, c16.x, r0, r2
mad_pp r0.w, c16.x, -r2.w, r2.w
mul_pp r1.xyz, r0.w, r1
nrm_pp r2.xyz, v2
dp3_pp r1.w, v1, v1
rsq_pp r1.w, r1.w
mul_pp r3.xyz, r1.w, v1
dp3_pp r3.w, r2, c0
max_pp r4.x, r3.w, c19.x
texldp_pp r5, v4, s4
texld_pp r6, v0, s3
mov r7.xyz, c19
add_pp r3.w, r7.y, -c18.x
mad_pp r3.w, r6.y, c18.x, r3.w
add_pp r4.y, r7.y, -c17.x
dp3_pp r4.z, r3, r2
add_pp r4.z, r4.z, r4.z
mad_pp r5.yzw, r2.xxyz, -r4.z, r3.xxyz
mul_pp r6.xyz, r5.x, c13
mov r2.w, c19.y
dp4_pp r8.x, c1, r2
dp4_pp r8.y, c2, r2
dp4_pp r8.z, c3, r2
add_pp r8.xyz, r8, v3
if_lt -c6.w, r7.x
nrm_pp r9.xyz, r5.yzww
add r10.xyz, c4, -v5
rcp r11.x, r9.x
rcp r11.y, r9.y
rcp r11.z, r9.z
mul_pp r10.xyz, r10, r11
add r12.xyz, c5, -v5
mul_pp r11.xyz, r11, r12
cmp_pp r10.xyz, -r9, r11, r10
min_pp r2.w, r10.y, r10.x
min_pp r4.z, r10.z, r2.w
mov r10.xyz, c5
add r10.xyz, r10, c4
mad r11.xyz, r10, r7.z, -c6
add r11.xyz, r11, v5
mad r9.xyz, r9, r4.z, r11
mad_pp r9.xyz, r10, -c19.z, r9
else
mov_pp r9.xyz, r5.yzww
endif
pow_pp r2.w, r4.y, c19.w
mul_pp r9.w, r2.w, c20.x
texldl_pp r10, r9, s0
pow_pp r2.w, r10.w, c7.y
mul_pp r2.w, r2.w, c7.x
mul_pp r11.xyz, r10, r2.w
mov r4.w, c5.w
if_lt r4.w, c20.y
if_lt -c10.w, r7.x
nrm_pp r12.xyz, r5.yzww
add r13.xyz, c8, -v5
rcp r14.x, r12.x
rcp r14.y, r12.y
rcp r14.z, r12.z
mul_pp r13.xyz, r13, r14
add r15.xyz, c9, -v5
mul_pp r14.xyz, r14, r15
cmp_pp r13.xyz, -r12, r14, r13
min_pp r4.z, r13.y, r13.x
min_pp r5.x, r13.z, r4.z
mov r13.xyz, c8
add r13.xyz, r13, c9
mad r7.xzw, r13.xyyz, r7.z, -c10.xyyz
add r7.xzw, r7, v5.xyyz
mad r7.xzw, r12.xyyz, r5.x, r7
mad_pp r9.xyz, r13, -c19.z, r7.xzww
else
mov_pp r9.xyz, r5.yzww
endif
texldl_pp r5, r9, s1
pow_pp r4.z, r5.w, c11.y
mul_pp r4.z, r4.z, c11.x
mul_pp r5.xyz, r5, r4.z
mad r7.xzw, r2.w, r10.xyyz, -r5.xyyz
mad_pp r11.xyz, c5.w, r7.xzww, r5
endif
mul_pp r5.xyz, r3.w, r11
mad_pp r7.xzw, v1.xyyz, -r1.w, c0.xyyz
dp3_pp r1.w, r7.xzww, r7.xzww
add r2.w, -r1.w, c20.z
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c20.w, r1.w
mul_pp r7.xzw, r1.w, r7
dp3_pp r1.w, r2, r7.xzww
max_pp r2.w, r1.w, c19.x
dp3_pp r1.w, r2, -r3
max_pp r2.x, r1.w, c19.x
dp3_pp r1.w, c0, r7.xzww
max_pp r2.y, r1.w, c19.x
mul_pp r1.w, r4.y, r4.y
mul_pp r2.z, r1.w, c14.w
mad_pp r1.w, r1.w, -c14.w, r7.y
mad_pp r3.x, r4.x, r1.w, r2.z
mad_pp r1.w, r2.x, r1.w, r2.z
mad r1.w, r3.x, r1.w, c21.x
rcp_pp r1.w, r1.w
add_pp r2.z, -r4.y, c19.y
mad_pp r2.z, r2.z, c21.y, c21.z
log_pp r2.z, r2.z
rcp r2.z, r2.z
mul_pp r2.z, r2.z, c21.w
mul_pp r3.x, r2.z, r2.z
mad_pp r2.z, r2.z, r2.z, c19.y
mul_pp r2.z, r2.z, c14.y
pow_pp r4.z, r2.w, r3.x
mul_pp r2.z, r2.z, r4.z
add_pp r2.w, -r4.x, c19.y
mul_pp r3.x, r2.w, r2.w
mul_pp r3.x, r3.x, r3.x
mul_pp r2.w, r2.w, r3.x
add_pp r2.x, -r2.x, c19.y
mul_pp r3.x, r2.x, r2.x
mul_pp r3.x, r3.x, r3.x
mul_pp r2.x, r2.x, r3.x
mul_pp r3.x, r2.y, r2.y
dp2add_pp r3.x, r3.x, r4.y, -c19.z
mad_pp r2.w, r3.x, r2.w, c19.y
mad_pp r3.x, r3.x, r2.x, c19.y
mul_pp r2.w, r2.w, r3.x
mul_pp r1.w, r1.w, r2.z
mul_pp r1.w, r4.x, r1.w
mul_pp r1.w, r1.w, c14.x
max_pp r2.z, r1.w, c19.x
mul_pp r1.w, r4.x, r2.w
add_pp r0.w, -r0.w, c19.y
add_sat_pp r0.w, r0.w, c17.x
mul_pp r3.xyz, r1.w, r6
mad_pp r3.xyz, r8, r3.w, r3
mul_pp r4.xyz, r6, r2.z
add_pp r1.w, -r2.y, c19.y
mul_pp r2.y, r1.w, r1.w
mul_pp r2.y, r2.y, r2.y
mul_pp r1.w, r1.w, r2.y
lrp_pp r2.yzw, r1.w, c19.y, r0.xxyz
mul_pp r2.yzw, r2, r4.xxyz
mad_pp r1.xyz, r1, r3, r2.yzww
lrp_pp r3.xyz, r2.x, r0.w, r0
mad_pp oC0.xyz, r5, r3, r1
mov_pp oC0.w, c19.y

"
}
SubProgram "d3d11 " {
// Stats: 138 math, 3 textures, 4 branches
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
SetTexture 0 [_MainTex] 2D 2
SetTexture 1 [_ShadowMapTexture] 2D 4
SetTexture 2 [_OcclusionMap] 2D 3
SetTexture 3 [unity_SpecCube0] CUBE 0
SetTexture 4 [unity_SpecCube1] CUBE 1
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
Float 224 [_OcclusionStrength]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
ConstBuffer "UnityReflectionProbes" 128
Vector 0 [unity_SpecCube0_BoxMax]
Vector 16 [unity_SpecCube0_BoxMin]
Vector 32 [unity_SpecCube0_ProbePosition]
Vector 48 [unity_SpecCube0_HDR]
Vector 64 [unity_SpecCube1_BoxMax]
Vector 80 [unity_SpecCube1_BoxMin]
Vector 96 [unity_SpecCube1_ProbePosition]
Vector 112 [unity_SpecCube1_HDR]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityReflectionProbes" 2
"ps_4_0
root12:afadafaa
eefiecedjooemmcdenbbkdmceibkmcjbgfkfijlcabaaaaaapibeaaaaadaaaaaa
cmaaaaaacmabaaaagaabaaaaejfdeheopiaaaaaaajaaaaaaaiaaaaaaoaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaomaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaomaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaomaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaaomaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaomaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaaomaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apahaaaaomaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaapalaaaaomaaaaaa
aiaaaaaaaaaaaaaaadaaaaaaaiaaaaaaahahaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
fdeieefcjabdaaaaeaaaaaaaoeaeaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaa
fjaaaaaeegiocaaaabaaaaaacjaaaaaafjaaaaaeegiocaaaacaaaaaaaiaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafkaaaaadaagabaaa
acaaaaaafkaaaaadaagabaaaadaaaaaafkaaaaadaagabaaaaeaaaaaafibiaaae
aahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafibiaaae
aahabaaaacaaaaaaffffaaaafidaaaaeaahabaaaadaaaaaaffffaaaafidaaaae
aahabaaaaeaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaa
acaaaaaagcbaaaadhcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaagcbaaaad
lcbabaaaahaaaaaagcbaaaadhcbabaaaaiaaaaaagfaaaaadpccabaaaaaaaaaaa
giaaaaacaoaaaaaaefaaaaajpcaabaaaaaaaaaaaegbabaaaabaaaaaaeghobaaa
aaaaaaaaaagabaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaaaaaaaaa
egiccaaaaaaaaaaaajaaaaaadcaaaaamhcaabaaaaaaaaaaaegiccaaaaaaaaaaa
ajaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadcaaaaal
hcaabaaaaaaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaaaaaaaaaegiccaaa
aaaaaaaaacaaaaaadcaaaaanicaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaa
anaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaa
abaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaficaabaaaabaaaaaa
dkaabaaaabaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaaabaaaaaaegbcbaaa
afaaaaaabaaaaaahicaabaaaabaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaa
eeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaaadaaaaaa
pgapbaaaabaaaaaaegbcbaaaacaaaaaabaaaaaaiicaabaaaadaaaaaaegacbaaa
acaaaaaaegiccaaaabaaaaaaaaaaaaaadeaaaaahicaabaaaadaaaaaadkaabaaa
adaaaaaaabeaaaaaaaaaaaaaaoaaaaahdcaabaaaaeaaaaaaegbabaaaahaaaaaa
pgbpbaaaahaaaaaaefaaaaajpcaabaaaaeaaaaaaegaabaaaaeaaaaaaeghobaaa
abaaaaaaaagabaaaaeaaaaaaefaaaaajpcaabaaaafaaaaaaegbabaaaabaaaaaa
eghobaaaacaaaaaaaagabaaaadaaaaaaaaaaaaajccaabaaaaeaaaaaaakiacaia
ebaaaaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaiadpdcaaaaakccaabaaaaeaaaaaa
bkaabaaaafaaaaaaakiacaaaaaaaaaaaaoaaaaaabkaabaaaaeaaaaaaaaaaaaaj
ecaabaaaaeaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadp
baaaaaahicaabaaaaeaaaaaaegacbaaaadaaaaaaegacbaaaacaaaaaaaaaaaaah
icaabaaaaeaaaaaadkaabaaaaeaaaaaadkaabaaaaeaaaaaadcaaaaakhcaabaaa
afaaaaaaegacbaaaacaaaaaapgapbaiaebaaaaaaaeaaaaaaegacbaaaadaaaaaa
diaaaaaihcaabaaaagaaaaaaagaabaaaaeaaaaaaegiccaaaaaaaaaaaagaaaaaa
dgaaaaaficaabaaaacaaaaaaabeaaaaaaaaaiadpbbaaaaaibcaabaaaahaaaaaa
egiocaaaabaaaaaacgaaaaaaegaobaaaacaaaaaabbaaaaaiccaabaaaahaaaaaa
egiocaaaabaaaaaachaaaaaaegaobaaaacaaaaaabbaaaaaiecaabaaaahaaaaaa
egiocaaaabaaaaaaciaaaaaaegaobaaaacaaaaaaaaaaaaahhcaabaaaahaaaaaa
egacbaaaahaaaaaaegbcbaaaagaaaaaadbaaaaaiicaabaaaacaaaaaaabeaaaaa
aaaaaaaadkiacaaaacaaaaaaacaaaaaabpaaaeaddkaabaaaacaaaaaabaaaaaah
icaabaaaacaaaaaaegacbaaaafaaaaaaegacbaaaafaaaaaaeeaaaaaficaabaaa
acaaaaaadkaabaaaacaaaaaadiaaaaahhcaabaaaaiaaaaaapgapbaaaacaaaaaa
egacbaaaafaaaaaaaaaaaaajhcaabaaaajaaaaaaegbcbaiaebaaaaaaaiaaaaaa
egiccaaaacaaaaaaaaaaaaaaaoaaaaahhcaabaaaajaaaaaaegacbaaaajaaaaaa
egacbaaaaiaaaaaaaaaaaaajhcaabaaaakaaaaaaegbcbaiaebaaaaaaaiaaaaaa
egiccaaaacaaaaaaabaaaaaaaoaaaaahhcaabaaaakaaaaaaegacbaaaakaaaaaa
egacbaaaaiaaaaaadbaaaaakhcaabaaaalaaaaaaaceaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaegacbaaaaiaaaaaadhaaaaajhcaabaaaajaaaaaaegacbaaa
alaaaaaaegacbaaaajaaaaaaegacbaaaakaaaaaaddaaaaahicaabaaaacaaaaaa
bkaabaaaajaaaaaaakaabaaaajaaaaaaddaaaaahicaabaaaacaaaaaackaabaaa
ajaaaaaadkaabaaaacaaaaaaaaaaaaajhcaabaaaajaaaaaaegiccaaaacaaaaaa
aaaaaaaaegiccaaaacaaaaaaabaaaaaadcaaaaaohcaabaaaakaaaaaaegacbaaa
ajaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaaegiccaiaebaaaaaa
acaaaaaaacaaaaaaaaaaaaahhcaabaaaakaaaaaaegacbaaaakaaaaaaegbcbaaa
aiaaaaaadcaaaaajhcaabaaaaiaaaaaaegacbaaaaiaaaaaapgapbaaaacaaaaaa
egacbaaaakaaaaaadcaaaaanhcaabaaaaiaaaaaaegacbaiaebaaaaaaajaaaaaa
aceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaaegacbaaaaiaaaaaabcaaaaab
dgaaaaafhcaabaaaaiaaaaaaegacbaaaafaaaaaabfaaaaabcpaaaaaficaabaaa
acaaaaaackaabaaaaeaaaaaadiaaaaahicaabaaaacaaaaaadkaabaaaacaaaaaa
abeaaaaaaaaaeadpbjaaaaaficaabaaaacaaaaaadkaabaaaacaaaaaadiaaaaah
icaabaaaacaaaaaadkaabaaaacaaaaaaabeaaaaaaaaaoaeaeiaaaaalpcaabaaa
aiaaaaaaegacbaaaaiaaaaaaeghobaaaadaaaaaaaagabaaaaaaaaaaadkaabaaa
acaaaaaacpaaaaafbcaabaaaaeaaaaaadkaabaaaaiaaaaaadiaaaaaibcaabaaa
aeaaaaaaakaabaaaaeaaaaaabkiacaaaacaaaaaaadaaaaaabjaaaaafbcaabaaa
aeaaaaaaakaabaaaaeaaaaaadiaaaaaibcaabaaaaeaaaaaaakaabaaaaeaaaaaa
akiacaaaacaaaaaaadaaaaaadiaaaaahhcaabaaaajaaaaaaegacbaaaaiaaaaaa
agaabaaaaeaaaaaadbaaaaaiicaabaaaaeaaaaaadkiacaaaacaaaaaaabaaaaaa
abeaaaaafipphpdpbpaaaeaddkaabaaaaeaaaaaadbaaaaaiicaabaaaaeaaaaaa
abeaaaaaaaaaaaaadkiacaaaacaaaaaaagaaaaaabpaaaeaddkaabaaaaeaaaaaa
baaaaaahicaabaaaaeaaaaaaegacbaaaafaaaaaaegacbaaaafaaaaaaeeaaaaaf
icaabaaaaeaaaaaadkaabaaaaeaaaaaadiaaaaahhcaabaaaakaaaaaapgapbaaa
aeaaaaaaegacbaaaafaaaaaaaaaaaaajhcaabaaaalaaaaaaegbcbaiaebaaaaaa
aiaaaaaaegiccaaaacaaaaaaaeaaaaaaaoaaaaahhcaabaaaalaaaaaaegacbaaa
alaaaaaaegacbaaaakaaaaaaaaaaaaajhcaabaaaamaaaaaaegbcbaiaebaaaaaa
aiaaaaaaegiccaaaacaaaaaaafaaaaaaaoaaaaahhcaabaaaamaaaaaaegacbaaa
amaaaaaaegacbaaaakaaaaaadbaaaaakhcaabaaaanaaaaaaaceaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaegacbaaaakaaaaaadhaaaaajhcaabaaaalaaaaaa
egacbaaaanaaaaaaegacbaaaalaaaaaaegacbaaaamaaaaaaddaaaaahicaabaaa
aeaaaaaabkaabaaaalaaaaaaakaabaaaalaaaaaaddaaaaahicaabaaaaeaaaaaa
ckaabaaaalaaaaaadkaabaaaaeaaaaaaaaaaaaajhcaabaaaalaaaaaaegiccaaa
acaaaaaaaeaaaaaaegiccaaaacaaaaaaafaaaaaadcaaaaaohcaabaaaamaaaaaa
egacbaaaalaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaaegiccaia
ebaaaaaaacaaaaaaagaaaaaaaaaaaaahhcaabaaaamaaaaaaegacbaaaamaaaaaa
egbcbaaaaiaaaaaadcaaaaajhcaabaaaakaaaaaaegacbaaaakaaaaaapgapbaaa
aeaaaaaaegacbaaaamaaaaaadcaaaaanhcaabaaaafaaaaaaegacbaiaebaaaaaa
alaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaaegacbaaaakaaaaaa
bfaaaaabeiaaaaalpcaabaaaafaaaaaaegacbaaaafaaaaaaeghobaaaaeaaaaaa
aagabaaaabaaaaaadkaabaaaacaaaaaacpaaaaaficaabaaaacaaaaaadkaabaaa
afaaaaaadiaaaaaiicaabaaaacaaaaaadkaabaaaacaaaaaabkiacaaaacaaaaaa
ahaaaaaabjaaaaaficaabaaaacaaaaaadkaabaaaacaaaaaadiaaaaaiicaabaaa
acaaaaaadkaabaaaacaaaaaaakiacaaaacaaaaaaahaaaaaadiaaaaahhcaabaaa
afaaaaaaegacbaaaafaaaaaapgapbaaaacaaaaaadcaaaaakhcaabaaaaiaaaaaa
agaabaaaaeaaaaaaegacbaaaaiaaaaaaegacbaiaebaaaaaaafaaaaaadcaaaaak
hcaabaaaajaaaaaapgipcaaaacaaaaaaabaaaaaaegacbaaaaiaaaaaaegacbaaa
afaaaaaabfaaaaabdiaaaaahhcaabaaaafaaaaaafgafbaaaaeaaaaaaegacbaaa
ajaaaaaadcaaaaalhcaabaaaaiaaaaaaegbcbaiaebaaaaaaacaaaaaapgapbaaa
abaaaaaaegiccaaaabaaaaaaaaaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
aiaaaaaaegacbaaaaiaaaaaadeaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaa
abeaaaaagpbciddkeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hcaabaaaaiaaaaaapgapbaaaabaaaaaaegacbaaaaiaaaaaabaaaaaahicaabaaa
abaaaaaaegacbaaaacaaaaaaegacbaaaaiaaaaaadeaaaaahicaabaaaabaaaaaa
dkaabaaaabaaaaaaabeaaaaaaaaaaaaabaaaaaaibcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaiaebaaaaaaadaaaaaabaaaaaaiccaabaaaacaaaaaaegiccaaa
abaaaaaaaaaaaaaaegacbaaaaiaaaaaadeaaaaakdcaabaaaacaaaaaaegaabaaa
acaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaahecaabaaa
acaaaaaackaabaaaaeaaaaaackaabaaaaeaaaaaadiaaaaaiicaabaaaacaaaaaa
ckaabaaaacaaaaaadkiacaaaaaaaaaaaaiaaaaaadcaaaaalecaabaaaacaaaaaa
ckaabaiaebaaaaaaacaaaaaadkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadp
dcaaaaajbcaabaaaadaaaaaadkaabaaaadaaaaaackaabaaaacaaaaaadkaabaaa
acaaaaaadcaaaaajecaabaaaacaaaaaaakaabaaaacaaaaaackaabaaaacaaaaaa
dkaabaaaacaaaaaadcaaaaajecaabaaaacaaaaaaakaabaaaadaaaaaackaabaaa
acaaaaaaabeaaaaabhlhnbdiaoaaaaakecaabaaaacaaaaaaaceaaaaaaaaaiadp
aaaaiadpaaaaiadpaaaaiadpckaabaaaacaaaaaaaaaaaaaiicaabaaaacaaaaaa
ckaabaiaebaaaaaaaeaaaaaaabeaaaaaaaaaiadpdcaaaaajicaabaaaacaaaaaa
dkaabaaaacaaaaaaabeaaaaanjmohhdpabeaaaaaipmcpfdmcpaaaaaficaabaaa
acaaaaaadkaabaaaacaaaaaaaoaaaaahicaabaaaacaaaaaaabeaaaaaaaaacaeb
dkaabaaaacaaaaaadiaaaaahbcaabaaaadaaaaaadkaabaaaacaaaaaadkaabaaa
acaaaaaadcaaaaajicaabaaaacaaaaaadkaabaaaacaaaaaadkaabaaaacaaaaaa
abeaaaaaaaaaiadpdiaaaaaiicaabaaaacaaaaaadkaabaaaacaaaaaabkiacaaa
aaaaaaaaaiaaaaaacpaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
icaabaaaabaaaaaadkaabaaaabaaaaaaakaabaaaadaaaaaabjaaaaaficaabaaa
abaaaaaadkaabaaaabaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaaacaaaaaa
dkaabaaaabaaaaaaaaaaaaaiicaabaaaacaaaaaadkaabaiaebaaaaaaadaaaaaa
abeaaaaaaaaaiadpdiaaaaahbcaabaaaadaaaaaadkaabaaaacaaaaaadkaabaaa
acaaaaaadiaaaaahbcaabaaaadaaaaaaakaabaaaadaaaaaaakaabaaaadaaaaaa
diaaaaahicaabaaaacaaaaaadkaabaaaacaaaaaaakaabaaaadaaaaaaaaaaaaai
bcaabaaaacaaaaaaakaabaiaebaaaaaaacaaaaaaabeaaaaaaaaaiadpdiaaaaah
bcaabaaaadaaaaaaakaabaaaacaaaaaaakaabaaaacaaaaaadiaaaaahbcaabaaa
adaaaaaaakaabaaaadaaaaaaakaabaaaadaaaaaadiaaaaahbcaabaaaacaaaaaa
akaabaaaacaaaaaaakaabaaaadaaaaaadiaaaaahbcaabaaaadaaaaaabkaabaaa
acaaaaaabkaabaaaacaaaaaaapaaaaahbcaabaaaadaaaaaaagaabaaaadaaaaaa
kgakbaaaaeaaaaaaaaaaaaahbcaabaaaadaaaaaaakaabaaaadaaaaaaabeaaaaa
aaaaaalpdcaaaaajicaabaaaacaaaaaaakaabaaaadaaaaaadkaabaaaacaaaaaa
abeaaaaaaaaaiadpdcaaaaajbcaabaaaadaaaaaaakaabaaaadaaaaaaakaabaaa
acaaaaaaabeaaaaaaaaaiadpdiaaaaahicaabaaaacaaaaaadkaabaaaacaaaaaa
akaabaaaadaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaackaabaaa
acaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaaadaaaaaadkaabaaaabaaaaaa
diaaaaaiicaabaaaabaaaaaadkaabaaaabaaaaaaakiacaaaaaaaaaaaaiaaaaaa
deaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaaabeaaaaaaaaaaaaadiaaaaah
ecaabaaaacaaaaaadkaabaaaadaaaaaadkaabaaaacaaaaaaaaaaaaajicaabaaa
aaaaaaaadkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaanaaaaaaaacaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaiadpdiaaaaahhcaabaaa
adaaaaaakgakbaaaacaaaaaaegacbaaaagaaaaaadcaaaaajhcaabaaaadaaaaaa
egacbaaaahaaaaaafgafbaaaaeaaaaaaegacbaaaadaaaaaadiaaaaahhcaabaaa
aeaaaaaaegacbaaaagaaaaaapgapbaaaabaaaaaaaaaaaaaiicaabaaaabaaaaaa
bkaabaiaebaaaaaaacaaaaaaabeaaaaaaaaaiadpdiaaaaahccaabaaaacaaaaaa
dkaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahccaabaaaacaaaaaabkaabaaa
acaaaaaabkaabaaaacaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaa
bkaabaaaacaaaaaaaaaaaaalocaabaaaacaaaaaaagajbaiaebaaaaaaaaaaaaaa
aceaaaaaaaaaaaaaaaaaiadpaaaaiadpaaaaiadpdcaaaaajocaabaaaacaaaaaa
fgaobaaaacaaaaaapgapbaaaabaaaaaaagajbaaaaaaaaaaadiaaaaahocaabaaa
acaaaaaafgaobaaaacaaaaaaagajbaaaaeaaaaaadcaaaaajhcaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaadaaaaaajgahbaaaacaaaaaaaaaaaaaiocaabaaa
acaaaaaaagajbaiaebaaaaaaaaaaaaaapgapbaaaaaaaaaaadcaaaaajhcaabaaa
aaaaaaaaagaabaaaacaaaaaajgahbaaaacaaaaaaegacbaaaaaaaaaaadcaaaaaj
hccabaaaaaaaaaaaegacbaaaafaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
}
 }


 // Stats for Vertex shader:
 //       d3d11 : 45 avg math (37..49)
 //        d3d9 : 42 avg math (37..46)
 // Stats for Fragment shader:
 //       d3d11 : 79 avg math (70..91), 3 avg texture (1..7)
 //        d3d9 : 89 avg math (79..101), 3 avg texture (1..7)
 Pass {
  Name "FORWARD_DELTA"
  Tags { "LIGHTMODE"="ForwardAdd" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite Off
  Blend [_SrcBlend] One
  GpuProgramID 115835
Program "vp" {
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "POINT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
Vector 16 [unity_WorldTransformParams]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r1.w, c16.w, v4.w
mul o4.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 45 math
Keywords { "POINT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedoabajfbedhjdhikakkklgbaalolljpdfabaaaaaacmajaaaaadaaaaaa
cmaaaaaaniaaaaaakiabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefchmahaaaaeaaaabaanpabaaaafjaaaaaeegiocaaa
aaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaadhccabaaaagaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaa
aoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaa
aaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaa
aaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaa
aaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaa
aeaaaaaadcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaa
acaaaaaaaaaaaaaaegiccaaaacaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaa
akaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
acaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaa
abaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaa
dgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaa
dkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
aaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaapgapbaaaaaaaaaaa
egacbaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 37 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 14 [_DetailAlbedoMap_ST]
Vector 13 [_MainTex_ST]
Float 15 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 11 [_WorldSpaceLightPos0]
Vector 12 [unity_WorldTransformParams]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c13, c13.zwzw
abs r0.x, c15.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c14.xyxy, c14
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mad r0.xyz, r0, -c11.w, c11
mul r1.xyz, c8, v1.y
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r0.w, c12.w, v4.w
mul o4.xyz, r0.w, r1
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 37 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedmfcfbaonmpfkmoblplpmllepdeijoafpabaaaaaaniahaaaaadaaaaaa
cmaaaaaaniaaaaaajaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaakeaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
keaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklfdeieefceaagaaaaeaaaabaajaabaaaa
fjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaa
fjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaaddcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaad
pccabaaaafaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaa
abeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaa
acaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaa
agiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaa
abaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaa
alaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
aoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaaj
hccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaa
dcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaa
aaaaaaaaegiccaaaacaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaa
aaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaa
aeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaa
aoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaacaaaaaa
akbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaa
akbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaa
akbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaadaaaaaa
bkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaa
bkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaa
bkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaackbabaaa
abaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaackbabaaa
abaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaackbabaaa
abaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaacaaaaaa
egacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahhcaabaaa
adaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaaabaaaaaa
jgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaadgaaaaaf
hccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaadkbabaaa
aeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaaagaabaaa
aaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaaaaaaaaaa
dgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 42 math
Keywords { "SPOT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 8 [_LightMatrix0]
Matrix 4 [_Object2World]
Matrix 12 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 18 [_MainTex_ST]
Float 20 [_UVSec]
Vector 15 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
Vector 17 [unity_WorldTransformParams]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c18, c18.zwzw
abs r0.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c15
mul r1.xyz, c13, v1.y
mad r1.xyz, c12, v1.x, r1
mad r1.xyz, c14, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r1.w, c17.w, v4.w
mul o4.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 o6.x, c8, r0
dp4 o6.y, c9, r0
dp4 o6.z, c10, r0
dp4 o6.w, c11, r0
mad r0.xyz, r0, -c16.w, c16
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 45 math
Keywords { "SPOT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedfookpenihhmdejipajelgibbkmfhomciabaaaaaacmajaaaaadaaaaaa
cmaaaaaaniaaaaaakiabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefchmahaaaaeaaaabaanpabaaaafjaaaaaeegiocaaa
aaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaadpccabaaaagaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaa
aoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaa
aaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaa
aaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaa
aaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaa
aeaaaaaadcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaa
acaaaaaaaaaaaaaaegiccaaaacaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaa
akaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
acaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaa
abaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaa
dgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaa
dkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiocaaaaaaaaaaabbaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaa
aaaaaaaabaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaa
abaaaaaaegiocaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpccabaaaagaaaaaaegiocaaaaaaaaaaabdaaaaaapgapbaaaaaaaaaaa
egaobaaaabaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
Vector 16 [unity_WorldTransformParams]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c17, c17.zwzw
abs r0.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r1.w, c16.w, v4.w
mul o4.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 45 math
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedoabajfbedhjdhikakkklgbaalolljpdfabaaaaaacmajaaaaadaaaaaa
cmaaaaaaniaaaaaakiabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefchmahaaaaeaaaabaanpabaaaafjaaaaaeegiocaaa
aaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaadhccabaaaagaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaa
aoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaa
aaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaa
aaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaa
aaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaa
aeaaaaaadcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaa
acaaaaaaaaaaaaaaegiccaaaacaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaa
akaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
acaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaa
abaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaa
dgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaa
dkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
aaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaapgapbaaaaaaaaaaa
egacbaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 40 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_WorldTransformParams]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xy
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c16, c16.zwzw
abs r0.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c13
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r1.w, c15.w, v4.w
mul o4.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
mad r0.xyz, r0, -c14.w, c14
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 45 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecednceheaocphnkbnfapafkcgenjfgkbdbpabaaaaaacmajaaaaadaaaaaa
cmaaaaaaniaaaaaakiabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaadamaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefchmahaaaaeaaaabaanpabaaaafjaaaaaeegiocaaa
aaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaaddccabaaaagaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaa
aoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaa
aaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaa
aaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaa
aaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaa
aeaaaaaadcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaa
acaaaaaaaaaaaaaaegiccaaaacaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaa
akaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
acaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaa
abaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaa
dgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaa
dkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaidcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiacaaaaaaaaaaabbaaaaaadcaaaaakdcaabaaaaaaaaaaaegiacaaa
aaaaaaaabaaaaaaaagaabaaaaaaaaaaaegaabaaaabaaaaaadcaaaaakdcaabaaa
aaaaaaaaegiacaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaaegaabaaaaaaaaaaa
dcaaaaakdccabaaaagaaaaaaegiacaaaaaaaaaaabdaaaaaapgapbaaaaaaaaaaa
egaabaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 46 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 12 [_LightMatrix0]
Matrix 8 [_Object2World]
Matrix 16 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Matrix 0 [unity_World2Shadow0]
Vector 23 [_DetailAlbedoMap_ST]
Vector 22 [_MainTex_ST]
Float 24 [_UVSec]
Vector 19 [_WorldSpaceCameraPos]
Vector 20 [_WorldSpaceLightPos0]
Vector 21 [unity_WorldTransformParams]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dp4 o0.x, c4, v0
dp4 o0.y, c5, v0
dp4 o0.z, c6, v0
dp4 o0.w, c7, v0
mad o1.xy, v2, c22, c22.zwzw
abs r0.x, c24.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c23.xyxy, c23
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c19
mul r1.xyz, c17, v1.y
mad r1.xyz, c16, v1.x, r1
mad r1.xyz, c18, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r1.w, c21.w, v4.w
mul o4.xyz, r1.w, r1
dp4 r0.w, c11, v0
dp4 o6.x, c12, r0
dp4 o6.y, c13, r0
dp4 o6.z, c14, r0
dp4 o6.w, c15, r0
dp4 o7.x, c0, r0
dp4 o7.y, c1, r0
dp4 o7.z, c2, r0
dp4 o7.w, c3, r0
mad r0.xyz, r0, -c20.w, c20
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 49 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityShadows" 416
Matrix 128 [unity_World2Shadow0]
Matrix 192 [unity_World2Shadow1]
Matrix 256 [unity_World2Shadow2]
Matrix 320 [unity_World2Shadow3]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityShadows" 3
BindCB  "UnityPerDraw" 4
"vs_4_0
root12:aaafaaaa
eefiecedkdhofkihkocjgndmkljgepadjphcnahcabaaaaaapiajaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcdaaiaaaaeaaaabaaamacaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaa
fjaaaaaeegiocaaaadaaaaaaamaaaaaafjaaaaaeegiocaaaaeaaaaaabgaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaaddcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaad
pccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadpccabaaaahaaaaaa
giaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaa
aeaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaaaaaaaaa
agbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
aeaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaa
aaaaaaaaegiocaaaaeaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
biaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaa
dhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaa
adaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaa
amaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaa
acaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaaeaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaaeaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhccabaaaacaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaamhcaabaaa
aaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaa
acaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaaaaaaaaadiaaaaai
hcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaaaeaaaaaaanaaaaaadcaaaaak
hcaabaaaabaaaaaaegiccaaaaeaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaa
abaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaaeaaaaaaaoaaaaaakgbkbaaa
aeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaa
adaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaacaaaaaaakbabaaaabaaaaaa
akiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaaakbabaaaabaaaaaa
akiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaaakbabaaaabaaaaaa
akiacaaaaeaaaaaabcaaaaaadiaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaa
bkiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaa
bkiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaa
bkiacaaaaeaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaa
egacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaackbabaaaabaaaaaackiacaaa
aeaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaackbabaaaabaaaaaackiacaaa
aeaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaackbabaaaabaaaaaackiacaaa
aeaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaa
adaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaa
agaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaa
abaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaaabaaaaaajgaebaaaacaaaaaa
cgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaa
egacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaa
aeaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaaaaaaaaaadgaaaaaficcabaaa
afaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaaeaaaaaaanaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaa
amaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaaeaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaaeaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaaaaaaaaa
bbaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaaaaaaaaabaaaaaaaagaabaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaaaaaaaaa
bcaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaagaaaaaa
egiocaaaaaaaaaaabdaaaaaapgapbaaaaaaaaaaaegaobaaaabaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaajaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaaiaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaakaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaahaaaaaaegiocaaaadaaaaaa
alaaaaaapgapbaaaaaaaaaaaegaobaaaabaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 43 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 17 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [_WorldSpaceLightPos0]
Vector 14 [unity_WorldTransformParams]
"vs_3_0
def c18, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mad r0.xyz, r0, -c13.w, c13
mul r1.xyz, c8, v1.y
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r0.w, c14.w, v4.w
mul o4.xyz, r0.w, r1
dp4 r1.y, c1, v0
mul r0.w, r1.y, c11.x
mul r2.w, r0.w, c18.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c18.x
mad o6.xy, r2.z, c12.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov o0, r1
mov o6.zw, r1
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedhcoobegplloholmbhhlcgepfejocojjjabaaaaaaiiaiaaaaadaaaaaa
cmaaaaaaniaaaaaakiabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefcniagaaaaeaaaabaalgabaaaafjaaaaaeegiocaaa
aaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaadpccabaaaagaaaaaagiaaaaacafaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaa
biaaaaaibcaabaaaabaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaa
dhaaaaajdcaabaaaabaaaaaaagaabaaaabaaaaaaegbabaaaacaaaaaaegbabaaa
adaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaabaaaaaaagiecaaaaaaaaaaa
amaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaa
acaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaai
hcaabaaaabaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
hcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaa
abaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegacbaaaabaaaaaaaaaaaaajhccabaaaacaaaaaa
egacbaaaabaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaamhcaabaaa
abaaaaaaegacbaiaebaaaaaaabaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaa
acaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaabaaaaaadiaaaaai
hcaabaaaacaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
hcaabaaaacaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaa
acaaaaaadcaaaaakhcaabaaaacaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaa
aeaaaaaaegacbaaaacaaaaaabaaaaaahbcaabaaaabaaaaaaegacbaaaacaaaaaa
egacbaaaacaaaaaaeeaaaaafbcaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaah
hcaabaaaacaaaaaaagaabaaaabaaaaaaegacbaaaacaaaaaadgaaaaafhccabaaa
adaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaadaaaaaaakbabaaaabaaaaaa
akiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaaakbabaaaabaaaaaa
akiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaaakbabaaaabaaaaaa
akiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaaeaaaaaabkbabaaaabaaaaaa
bkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaaeaaaaaabkbabaaaabaaaaaa
bkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaaeaaaaaabkbabaaaabaaaaaa
bkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaadaaaaaaegacbaaaadaaaaaa
egacbaaaaeaaaaaadiaaaaaibcaabaaaaeaaaaaackbabaaaabaaaaaackiacaaa
adaaaaaabaaaaaaadiaaaaaiccaabaaaaeaaaaaackbabaaaabaaaaaackiacaaa
adaaaaaabbaaaaaadiaaaaaiecaabaaaaeaaaaaackbabaaaabaaaaaackiacaaa
adaaaaaabcaaaaaaaaaaaaahhcaabaaaadaaaaaaegacbaaaadaaaaaaegacbaaa
aeaaaaaabaaaaaahbcaabaaaabaaaaaaegacbaaaadaaaaaaegacbaaaadaaaaaa
eeaaaaafbcaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahhcaabaaaadaaaaaa
agaabaaaabaaaaaaegacbaaaadaaaaaadiaaaaahhcaabaaaaeaaaaaajgaebaaa
acaaaaaacgajbaaaadaaaaaadcaaaaakhcaabaaaacaaaaaajgaebaaaadaaaaaa
cgajbaaaacaaaaaaegacbaiaebaaaaaaaeaaaaaadgaaaaafhccabaaaafaaaaaa
egacbaaaadaaaaaadiaaaaaibcaabaaaabaaaaaadkbabaaaaeaaaaaadkiacaaa
adaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaaagaabaaaabaaaaaaegacbaaa
acaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaaabaaaaaadgaaaaaficcabaaa
afaaaaaackaabaaaabaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaa
akiacaaaabaaaaaaafaaaaaadiaaaaakncaabaaaabaaaaaaagahbaaaaaaaaaaa
aceaaaaaaaaaaadpaaaaaaaaaaaaaadpaaaaaadpdgaaaaafmccabaaaagaaaaaa
kgaobaaaaaaaaaaaaaaaaaahdccabaaaagaaaaaakgakbaaaabaaaaaamgaabaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 46 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 18 [_MainTex_ST]
Vector 14 [_ProjectionParams]
Vector 15 [_ScreenParams]
Float 20 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
Vector 17 [unity_WorldTransformParams]
"vs_3_0
def c21, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xy
dcl_texcoord6 o7
mad o1.xy, v2, c18, c18.zwzw
abs r0.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c13
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r1.w, c17.w, v4.w
mul o4.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
mad r0.xyz, r0, -c16.w, c16
dp4 r1.y, c1, v0
mul r0.w, r1.y, c14.x
mul r2.w, r0.w, c21.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c21.x
mad o7.xy, r2.z, c15.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov o0, r1
mov o7.zw, r1
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 48 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedjpmjmgopohiblfonbnkecdclfoildlnlabaaaaaanmajaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaadamaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcbeaiaaaaeaaaabaaafacaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaa
fjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaaddccabaaa
agaaaaaagfaaaaadpccabaaaahaaaaaagiaaaaacafaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaabiaaaaaibcaabaaaabaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaa
aaaaaaaadhaaaaajdcaabaaaabaaaaaaagaabaaaabaaaaaaegbabaaaacaaaaaa
egbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaabaaaaaaagiecaaa
aaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaa
egbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaa
diaaaaaihcaabaaaabaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaabaaaaaaaaaaaaajhccabaaa
acaaaaaaegacbaaaabaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaam
hcaabaaaabaaaaaaegacbaiaebaaaaaaabaaaaaapgipcaaaacaaaaaaaaaaaaaa
egiccaaaacaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaabaaaaaa
diaaaaaihcaabaaaacaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaacaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaa
egacbaaaacaaaaaadcaaaaakhcaabaaaacaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaaeaaaaaaegacbaaaacaaaaaabaaaaaahbcaabaaaabaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaabaaaaaaakaabaaaabaaaaaa
diaaaaahhcaabaaaacaaaaaaagaabaaaabaaaaaaegacbaaaacaaaaaadgaaaaaf
hccabaaaadaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaadaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaaeaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaaeaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaaeaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaadaaaaaaegacbaaa
adaaaaaaegacbaaaaeaaaaaadiaaaaaibcaabaaaaeaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaaeaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaaeaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaadaaaaaaegacbaaaadaaaaaa
egacbaaaaeaaaaaabaaaaaahbcaabaaaabaaaaaaegacbaaaadaaaaaaegacbaaa
adaaaaaaeeaaaaafbcaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahhcaabaaa
adaaaaaaagaabaaaabaaaaaaegacbaaaadaaaaaadiaaaaahhcaabaaaaeaaaaaa
jgaebaaaacaaaaaacgajbaaaadaaaaaadcaaaaakhcaabaaaacaaaaaajgaebaaa
adaaaaaacgajbaaaacaaaaaaegacbaiaebaaaaaaaeaaaaaadgaaaaafhccabaaa
afaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaabaaaaaadkbabaaaaeaaaaaa
dkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaaagaabaaaabaaaaaa
egacbaaaacaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaaabaaaaaadgaaaaaf
iccabaaaafaaaaaackaabaaaabaaaaaadiaaaaaipcaabaaaabaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaanaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaa
adaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaa
abaaaaaaegiocaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaa
egaobaaaabaaaaaadiaaaaaidcaabaaaacaaaaaafgafbaaaabaaaaaaegiacaaa
aaaaaaaabbaaaaaadcaaaaakdcaabaaaabaaaaaaegiacaaaaaaaaaaabaaaaaaa
agaabaaaabaaaaaaegaabaaaacaaaaaadcaaaaakdcaabaaaabaaaaaaegiacaaa
aaaaaaaabcaaaaaakgakbaaaabaaaaaaegaabaaaabaaaaaadcaaaaakdccabaaa
agaaaaaaegiacaaaaaaaaaaabdaaaaaapgapbaaaabaaaaaaegaabaaaabaaaaaa
diaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaabaaaaaaafaaaaaa
diaaaaakncaabaaaabaaaaaaagahbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaaaa
aaaaaadpaaaaaadpdgaaaaafmccabaaaahaaaaaakgaobaaaaaaaaaaaaaaaaaah
dccabaaaahaaaaaakgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 42 math
Keywords { "POINT" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 18 [_MainTex_ST]
Float 20 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
Vector 17 [unity_WorldTransformParams]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c18, c18.zwzw
abs r0.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r1.w, c17.w, v4.w
mul o4.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 46 math
Keywords { "POINT" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
Vector 16 [_LightPositionRange]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedmnlbfoeaiajpkamikgmfhbfnjncfiemcabaaaaaaheajaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaahaiaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefckmahaaaaeaaaabaaolabaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaacaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadhccabaaa
agaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadcaaaaamhcaabaaa
acaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaa
acaaaaaaaaaaaaaaaaaaaaajhccabaaaahaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaacaaaaaaabaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaacaaaaaa
diaaaaaibcaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaadaaaaaadiaaaaai
bcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaadaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaaaaaaaaa
dcaaaaakhcaabaaaabaaaaaajgaebaaaaaaaaaaacgajbaaaabaaaaaaegacbaia
ebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaaaaaaaaadiaaaaai
bcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaah
hccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aeaaaaaabkaabaaaacaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaacaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 42 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 18 [_MainTex_ST]
Float 20 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
Vector 17 [unity_WorldTransformParams]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c18, c18.zwzw
abs r0.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r1.w, c17.w, v4.w
mul o4.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 46 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
Vector 16 [_LightPositionRange]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedmnlbfoeaiajpkamikgmfhbfnjncfiemcabaaaaaaheajaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaahaiaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefckmahaaaaeaaaabaaolabaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaacaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadhccabaaa
agaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadcaaaaamhcaabaaa
acaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaa
acaaaaaaaaaaaaaaaaaaaaajhccabaaaahaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaacaaaaaaabaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaacaaaaaa
diaaaaaibcaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaadaaaaaadiaaaaai
bcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaadaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaaaaaaaaa
dcaaaaakhcaabaaaabaaaaaajgaebaaaaaaaaaaacgajbaaaabaaaaaaegacbaia
ebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaaaaaaaaadiaaaaai
bcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaah
hccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aeaaaaaabkaabaaaacaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaacaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 46 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 12 [_LightMatrix0]
Matrix 8 [_Object2World]
Matrix 16 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Matrix 0 [unity_World2Shadow0]
Vector 23 [_DetailAlbedoMap_ST]
Vector 22 [_MainTex_ST]
Float 24 [_UVSec]
Vector 19 [_WorldSpaceCameraPos]
Vector 20 [_WorldSpaceLightPos0]
Vector 21 [unity_WorldTransformParams]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7
dp4 o0.x, c4, v0
dp4 o0.y, c5, v0
dp4 o0.z, c6, v0
dp4 o0.w, c7, v0
mad o1.xy, v2, c22, c22.zwzw
abs r0.x, c24.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c23.xyxy, c23
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add o2.xyz, r0, -c19
mul r1.xyz, c17, v1.y
mad r1.xyz, c16, v1.x, r1
mad r1.xyz, c18, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r1.w, c21.w, v4.w
mul o4.xyz, r1.w, r1
dp4 r0.w, c11, v0
dp4 o6.x, c12, r0
dp4 o6.y, c13, r0
dp4 o6.z, c14, r0
dp4 o6.w, c15, r0
dp4 o7.x, c0, r0
dp4 o7.y, c1, r0
dp4 o7.z, c2, r0
dp4 o7.w, c3, r0
mad r0.xyz, r0, -c20.w, c20
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 49 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 384
Matrix 320 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityShadows" 416
Matrix 128 [unity_World2Shadow0]
Matrix 192 [unity_World2Shadow1]
Matrix 256 [unity_World2Shadow2]
Matrix 320 [unity_World2Shadow3]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityShadows" 3
BindCB  "UnityPerDraw" 4
"vs_4_0
root12:aaafaaaa
eefiecedmbanfjbkafkhpillkfepdfcaogjolodoabaaaaaapiajaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcdaaiaaaaeaaaabaaamacaaaafjaaaaaeegiocaaaaaaaaaaabiaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaa
fjaaaaaeegiocaaaadaaaaaaamaaaaaafjaaaaaeegiocaaaaeaaaaaabgaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaaddcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaad
pccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadpccabaaaahaaaaaa
giaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaa
aeaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaaaaaaaaa
agbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
aeaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaa
aaaaaaaaegiocaaaaeaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
biaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaa
dhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaa
adaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaa
amaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaa
acaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaaeaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaaeaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhccabaaaacaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaamhcaabaaa
aaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaa
acaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaaaaaaaaadiaaaaai
hcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaaaeaaaaaaanaaaaaadcaaaaak
hcaabaaaabaaaaaaegiccaaaaeaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaa
abaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaaeaaaaaaaoaaaaaakgbkbaaa
aeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaa
adaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaacaaaaaaakbabaaaabaaaaaa
akiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaaakbabaaaabaaaaaa
akiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaaakbabaaaabaaaaaa
akiacaaaaeaaaaaabcaaaaaadiaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaa
bkiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaa
bkiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaa
bkiacaaaaeaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaa
egacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaackbabaaaabaaaaaackiacaaa
aeaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaackbabaaaabaaaaaackiacaaa
aeaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaackbabaaaabaaaaaackiacaaa
aeaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaa
adaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaa
agaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaa
abaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaaabaaaaaajgaebaaaacaaaaaa
cgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaa
egacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaa
aeaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaaaaaaaaaadgaaaaaficcabaaa
afaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaaeaaaaaaanaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaa
amaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaaeaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaaeaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaaaaaaaaa
bfaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaaaaaaaaabeaaaaaaagaabaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaaaaaaaaa
bgaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaagaaaaaa
egiocaaaaaaaaaaabhaaaaaapgapbaaaaaaaaaaaegaobaaaabaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaajaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaaiaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaakaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaahaaaaaaegiocaaaadaaaaaa
alaaaaaapgapbaaaaaaaaaaaegaobaaaabaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 42 math
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 18 [_MainTex_ST]
Float 20 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
Vector 17 [unity_WorldTransformParams]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c18, c18.zwzw
abs r0.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r1.w, c17.w, v4.w
mul o4.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 46 math
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
Vector 16 [_LightPositionRange]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedmnlbfoeaiajpkamikgmfhbfnjncfiemcabaaaaaaheajaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaahaiaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefckmahaaaaeaaaabaaolabaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaacaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadhccabaaa
agaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadcaaaaamhcaabaaa
acaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaa
acaaaaaaaaaaaaaaaaaaaaajhccabaaaahaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaacaaaaaaabaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaacaaaaaa
diaaaaaibcaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaadaaaaaadiaaaaai
bcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaadaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaaaaaaaaa
dcaaaaakhcaabaaaabaaaaaajgaebaaaaaaaaaaacgajbaaaabaaaaaaegacbaia
ebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaaaaaaaaadiaaaaai
bcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaah
hccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aeaaaaaabkaabaaaacaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaacaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 42 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 18 [_MainTex_ST]
Float 20 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
Vector 17 [unity_WorldTransformParams]
"vs_3_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6.xyz
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c18, c18.zwzw
abs r0.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c14
mul r1.xyz, c9, v1.y
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov o5.xyz, r2
mov o3.xyz, r3
mul r1.w, c17.w, v4.w
mul o4.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 o6.x, c11, r0
dp4 o6.y, c12, r0
dp4 o6.z, c13, r0
add o7.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
mov o3.w, r0.x
mov o4.w, r0.y
mov o5.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 46 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
Vector 16 [_LightPositionRange]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedmnlbfoeaiajpkamikgmfhbfnjncfiemcabaaaaaaheajaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaahaiaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefckmahaaaaeaaaabaaolabaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaacaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadhccabaaa
agaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadcaaaaamhcaabaaa
acaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaa
acaaaaaaaaaaaaaaaaaaaaajhccabaaaahaaaaaaegacbaaaaaaaaaaaegiccaia
ebaaaaaaacaaaaaaabaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaacaaaaaa
diaaaaaibcaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaadaaaaaadiaaaaai
bcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaadaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaaaaaaaaa
dcaaaaakhcaabaaaabaaaaaajgaebaaaaaaaaaaacgajbaaaabaaaaaaegacbaia
ebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaaaaaaaaadiaaaaai
bcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaah
hccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aeaaaaaabkaabaaaacaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaacaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadoaaaaab"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 85 math, 2 textures
Keywords { "POINT" "SHADOWS_OFF" }
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 1 [_LightColor0]
Float 4 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 1
"ps_3_0
def c6, 0, 1, 0.00100000005, 31.622776
def c7, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c8, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_2d s0
dcl_2d s1
mov r0.y, c6.y
add_pp r0.x, r0.y, -c5.x
add_pp r0.z, -r0.x, c6.y
mad_pp r0.z, r0.z, c7.y, c7.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mad_pp r0.w, r0.z, r0.z, c6.y
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
nrm_pp r1.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r1.w, r2, r2
rsq_pp r1.w, r1.w
mad_pp r3.xyz, r2, r1.w, -r1
mul_pp r2.xyz, r1.w, r2
dp3_pp r1.w, r3, r3
add r2.w, -r1.w, c6.z
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c6.w, r1.w
mul_pp r3.xyz, r1.w, r3
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r3
dp3_pp r2.w, r2, r3
dp3_pp r2.x, r4, r2
dp3_pp r1.x, r4, -r1
max_pp r2.y, r1.x, c6.x
max_pp r1.x, r2.x, c6.x
max_pp r1.y, r2.w, c6.x
max_pp r2.x, r1.w, c6.x
pow_pp r1.z, r2.x, r0.z
mul_pp r0.z, r0.w, r1.z
mul_pp r0.w, r0.x, r0.x
mul_pp r1.z, r0.w, c2.w
mad_pp r0.y, r0.w, -c2.w, r0.y
mad_pp r0.w, r2.y, r0.y, r1.z
add_pp r1.w, -r2.y, c6.y
mad_pp r0.y, r1.x, r0.y, r1.z
mad r0.y, r0.y, r0.w, c7.x
rcp_pp r0.y, r0.y
mul_pp r0.y, r0.z, r0.y
mul_pp r0.y, r1.x, r0.y
mul_pp r0.y, r0.y, c2.x
max_pp r1.z, r0.y, c6.x
dp3 r0.y, v5, v5
texld_pp r2, r0.y, s1
mul_pp r0.yzw, r2.x, c1.xxyz
mul_pp r2.xyz, r0.yzww, r1.z
add_pp r1.z, -r1.y, c6.y
mul_pp r1.y, r1.y, r1.y
dp2add_pp r0.x, r1.y, r0.x, c8.x
mul_pp r1.y, r1.z, r1.z
mul_pp r1.y, r1.y, r1.y
mul_pp r1.y, r1.z, r1.y
texld r3, v0, s0
mov r4, c0
mad_pp r5.xyz, c3, r3, -r4
mul_pp r3.xyz, r3, c3
mad_pp r4.xyz, c4.x, r5, r4
lrp_pp r5.xyz, r1.y, c6.y, r4
mul_pp r2.xyz, r2, r5
mul_pp r1.y, r1.w, r1.w
mul_pp r1.y, r1.y, r1.y
mul_pp r1.y, r1.w, r1.y
mad_pp r1.y, r0.x, r1.y, c6.y
add_pp r1.z, -r1.x, c6.y
mul_pp r1.w, r1.z, r1.z
mul_pp r1.w, r1.w, r1.w
mul_pp r1.z, r1.z, r1.w
mad_pp r0.x, r0.x, r1.z, c6.y
mul_pp r0.x, r1.y, r0.x
mul_pp r0.x, r1.x, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
mad_pp r0.w, c4.x, -r4.w, r4.w
mul_pp r1.xyz, r0.w, r3
mad_pp oC0.xyz, r1, r0, r2
mov_pp oC0.w, c6.y

"
}
SubProgram "d3d11 " {
// Stats: 74 math, 2 textures
Keywords { "POINT" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 1
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:acabacaa
eefiecedhlnmchgofgnpmkeeikllchcbohppmbleabaaaaaagmalaaaaadaaaaaa
cmaaaaaapmaaaaaadaabaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
ahahaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcdeakaaaaeaaaaaaainacaaaa
fjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaa
afaaaaaagcbaaaadhcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
agaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
agaabaaaaaaaaaaaegbcbaaaacaaaaaadgaaaaafbcaabaaaabaaaaaadkbabaaa
adaaaaaadgaaaaafccaabaaaabaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaa
abaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaak
hcaabaaaacaaaaaaegacbaaaabaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaa
aaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaadeaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaagpbciddkeeaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaaaaaaaaaa
egacbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaa
afaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaa
adaaaaaapgapbaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaadaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaacaaaaaabaaaaaahbcaabaaaabaaaaaaegacbaaaadaaaaaa
egacbaaaabaaaaaabaaaaaaibcaabaaaaaaaaaaaegacbaaaadaaaaaaegacbaia
ebaaaaaaaaaaaaaadeaaaaakgcaabaaaaaaaaaaaagadbaaaabaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadeaaaaakjcaabaaaaaaaaaaaagambaaa
aaaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaacpaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaaaaaaaaajbcaabaaaabaaaaaadkiacaiaebaaaaaa
aaaaaaaaanaaaaaaabeaaaaaaaaaiadpaaaaaaaiccaabaaaabaaaaaaakaabaia
ebaaaaaaabaaaaaaabeaaaaaaaaaiadpdcaaaaajccaabaaaabaaaaaabkaabaaa
abaaaaaaabeaaaaanjmohhdpabeaaaaaipmcpfdmcpaaaaafccaabaaaabaaaaaa
bkaabaaaabaaaaaaaoaaaaahccaabaaaabaaaaaaabeaaaaaaaaacaebbkaabaaa
abaaaaaadiaaaaahecaabaaaabaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaa
dcaaaaajccaabaaaabaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaaabeaaaaa
aaaaiadpdiaaaaaiccaabaaaabaaaaaabkaabaaaabaaaaaabkiacaaaaaaaaaaa
aiaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaackaabaaaabaaaaaa
bjaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaa
bkaabaaaabaaaaaadkaabaaaaaaaaaaadiaaaaahccaabaaaabaaaaaaakaabaaa
abaaaaaaakaabaaaabaaaaaadiaaaaaiecaabaaaabaaaaaabkaabaaaabaaaaaa
dkiacaaaaaaaaaaaaiaaaaaadcaaaaalccaabaaaabaaaaaabkaabaiaebaaaaaa
abaaaaaadkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadpdcaaaaajicaabaaa
abaaaaaaakaabaaaaaaaaaaabkaabaaaabaaaaaackaabaaaabaaaaaadcaaaaaj
ccaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaabaaaaaackaabaaaabaaaaaa
dcaaaaajccaabaaaabaaaaaabkaabaaaabaaaaaadkaabaaaabaaaaaaabeaaaaa
bhlhnbdiaoaaaaakccaabaaaabaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadp
aaaaiadpbkaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
bkaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaaiicaabaaaaaaaaaaadkaabaaaaaaaaaaaakiacaaaaaaaaaaa
aiaaaaaadeaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaa
baaaaaahccaabaaaabaaaaaaegbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaaj
pcaabaaaacaaaaaafgafbaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaa
diaaaaaiocaabaaaabaaaaaaagaabaaaacaaaaaaagijcaaaaaaaaaaaagaaaaaa
diaaaaahhcaabaaaacaaaaaapgapbaaaaaaaaaaajgahbaaaabaaaaaaaaaaaaal
jcaabaaaaaaaaaaaagaibaiaebaaaaaaaaaaaaaaaceaaaaaaaaaiadpaaaaaaaa
aaaaaaaaaaaaiadpdiaaaaahecaabaaaaaaaaaaackaabaaaaaaaaaaackaabaaa
aaaaaaaaapaaaaahecaabaaaaaaaaaaakgakbaaaaaaaaaaaagaabaaaabaaaaaa
aaaaaaahecaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaaalpdiaaaaah
bcaabaaaabaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaa
abaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaakaabaaaabaaaaaaefaaaaajpcaabaaaadaaaaaaegbabaaa
abaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadcaaaaamhcaabaaaaeaaaaaa
egiccaaaaaaaaaaaajaaaaaaegacbaaaadaaaaaaegiccaiaebaaaaaaaaaaaaaa
acaaaaaadiaaaaaihcaabaaaadaaaaaaegacbaaaadaaaaaaegiccaaaaaaaaaaa
ajaaaaaadcaaaaalhcaabaaaaeaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaa
aeaaaaaaegiccaaaaaaaaaaaacaaaaaaaaaaaaalhcaabaaaafaaaaaaegacbaia
ebaaaaaaaeaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaaaaadcaaaaaj
hcaabaaaaeaaaaaaegacbaaaafaaaaaapgapbaaaaaaaaaaaegacbaaaaeaaaaaa
diaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaaeaaaaaadiaaaaah
icaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaajbcaabaaaaaaaaaaackaabaaa
aaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaiadpaaaaaaaiicaabaaaaaaaaaaa
bkaabaiaebaaaaaaaaaaaaaaabeaaaaaaaaaiadpdiaaaaahbcaabaaaabaaaaaa
dkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaa
abaaaaaaakaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
akaabaaaabaaaaaadcaaaaajecaabaaaaaaaaaaackaabaaaaaaaaaaadkaabaaa
aaaaaaaaabeaaaaaaaaaiadpdiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
ckaabaaaaaaaaaaadiaaaaahbcaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaajgahbaaaabaaaaaa
dcaaaaanicaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaa
aaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaaabaaaaaa
pgapbaaaaaaaaaaaegacbaaaadaaaaaadcaaaaajhccabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaaaaaaaaaa
abeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 79 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 1 [_LightColor0]
Float 4 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
"ps_3_0
def c6, 0, 1, 0.00100000005, 31.622776
def c7, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c8, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_2d s0
mov r0.y, c6.y
add_pp r0.x, r0.y, -c5.x
add_pp r0.z, -r0.x, c6.y
mad_pp r0.z, r0.z, c7.y, c7.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mad_pp r0.w, r0.z, r0.z, c6.y
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
dp3_pp r1.x, v1, v1
rsq_pp r1.x, r1.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r1.yzw, v1.xxyz, -r1.x, r2.xxyz
mul_pp r3.xyz, r1.x, v1
dp3_pp r1.x, r1.yzww, r1.yzww
add r2.w, -r1.x, c6.z
rsq_pp r1.x, r1.x
cmp_pp r1.x, r2.w, c6.w, r1.x
mul_pp r1.xyz, r1.x, r1.yzww
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r1
dp3_pp r1.x, r2, r1
dp3_pp r1.y, r4, r2
dp3_pp r1.z, r4, -r3
max_pp r2.x, r1.z, c6.x
max_pp r2.y, r1.y, c6.x
max_pp r2.z, r1.x, c6.x
max_pp r2.w, r1.w, c6.x
pow_pp r1.x, r2.w, r0.z
mul_pp r0.z, r0.w, r1.x
mul_pp r0.w, r0.x, r0.x
mul_pp r1.x, r0.w, c2.w
mad_pp r0.y, r0.w, -c2.w, r0.y
mad_pp r0.w, r2.x, r0.y, r1.x
mad_pp r0.y, r2.y, r0.y, r1.x
mad r0.y, r0.y, r0.w, c7.x
rcp_pp r0.y, r0.y
mul_pp r0.y, r0.z, r0.y
mul_pp r0.y, r2.y, r0.y
mul_pp r0.y, r0.y, c2.x
mul_pp r1.xzw, r0.y, c1.xyyz
cmp_pp r0.yzw, r0.y, r1.xxzw, c6.x
add_pp r1.xy, -r2.zxzw, c6.y
mul_pp r1.z, r2.z, r2.z
dp2add_pp r0.x, r1.z, r0.x, c8.x
mul_pp r1.z, r1.x, r1.x
mul_pp r1.z, r1.z, r1.z
mul_pp r1.x, r1.x, r1.z
texld r3, v0, s0
mov r4, c0
mad_pp r2.xzw, c3.xyyz, r3.xyyz, -r4.xyyz
mul_pp r3.xyz, r3, c3
mad_pp r2.xzw, c4.x, r2, r4.xyyz
lrp_pp r4.xyz, r1.x, c6.y, r2.xzww
mul_pp r0.yzw, r0, r4.xxyz
mul_pp r1.x, r1.y, r1.y
mul_pp r1.x, r1.x, r1.x
mul_pp r1.x, r1.y, r1.x
mad_pp r1.x, r0.x, r1.x, c6.y
add_pp r1.y, -r2.y, c6.y
mul_pp r1.z, r1.y, r1.y
mul_pp r1.z, r1.z, r1.z
mul_pp r1.y, r1.y, r1.z
mad_pp r0.x, r0.x, r1.y, c6.y
mul_pp r0.x, r1.x, r0.x
mul_pp r0.x, r2.y, r0.x
mul_pp r1.xyz, r0.x, c1
mad_pp r0.x, c4.x, -r4.w, r4.w
mul_pp r2.xyz, r0.x, r3
mad_pp oC0.xyz, r2, r1, r0.yzww
mov_pp oC0.w, c6.y

"
}
SubProgram "d3d11 " {
// Stats: 70 math, 1 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 0
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:abababaa
eefiecedgcobkhimigcmeoaoaiegcgfkhdahfobkabaaaaaajaakaaaaadaaaaaa
cmaaaaaaoeaaaaaabiabaaaaejfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaakeaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaakeaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaakeaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefchaajaaaa
eaaaaaaafmacaaaafjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaa
aaaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaa
gcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaa
aeaaaaaagcbaaaadpcbabaaaafaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
afaaaaaaaaaaaaajbcaabaaaaaaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaa
abeaaaaaaaaaiadpaaaaaaaiccaabaaaaaaaaaaaakaabaiaebaaaaaaaaaaaaaa
abeaaaaaaaaaiadpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaa
njmohhdpabeaaaaaipmcpfdmcpaaaaafccaabaaaaaaaaaaabkaabaaaaaaaaaaa
aoaaaaahccaabaaaaaaaaaaaabeaaaaaaaaacaebbkaabaaaaaaaaaaadcaaaaaj
ecaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaiadp
diaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaai
ecaabaaaaaaaaaaackaabaaaaaaaaaaabkiacaaaaaaaaaaaaiaaaaaabaaaaaah
icaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaa
egbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaa
acaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadgaaaaafbcaabaaa
acaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaa
dgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaadcaaaaakhcaabaaaadaaaaaa
egbcbaiaebaaaaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaaeaaaaaapgapbaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaaiicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaiaebaaaaaaaeaaaaaadeaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaadaaaaaaegacbaaaadaaaaaadeaaaaahicaabaaaabaaaaaadkaabaaa
abaaaaaaabeaaaaagpbciddkeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaadaaaaaapgapbaaaabaaaaaaegacbaaaadaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
abaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahccaabaaaabaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaadeaaaaakhcaabaaaabaaaaaaegadbaaa
abaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaacpaaaaafecaabaaa
abaaaaaackaabaaaabaaaaaadiaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
ckaabaaaabaaaaaabjaaaaafccaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaah
ccaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahecaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaaiecaabaaaabaaaaaa
ckaabaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaadcaaaaalecaabaaaaaaaaaaa
ckaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadp
dcaaaaajicaabaaaabaaaaaadkaabaaaaaaaaaaackaabaaaaaaaaaaackaabaaa
abaaaaaaaaaaaaaiicaabaaaaaaaaaaadkaabaiaebaaaaaaaaaaaaaaabeaaaaa
aaaaiadpdcaaaaajecaabaaaaaaaaaaaakaabaaaabaaaaaackaabaaaaaaaaaaa
ckaabaaaabaaaaaadcaaaaajecaabaaaaaaaaaaackaabaaaaaaaaaaadkaabaaa
abaaaaaaabeaaaaabhlhnbdiaoaaaaakecaabaaaaaaaaaaaaceaaaaaaaaaiadp
aaaaiadpaaaaiadpaaaaiadpckaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaa
abaaaaaabkaabaaaaaaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaa
akiacaaaaaaaaaaaaiaaaaaadeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaaaaaaaaaegiccaaa
aaaaaaaaagaaaaaaaaaaaaaiccaabaaaaaaaaaaabkaabaiaebaaaaaaabaaaaaa
abeaaaaaaaaaiadpdiaaaaahecaabaaaaaaaaaaabkaabaaaabaaaaaabkaabaaa
abaaaaaaapaaaaahbcaabaaaaaaaaaaakgakbaaaaaaaaaaaagaabaaaaaaaaaaa
aaaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaalpdiaaaaah
ecaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahecaabaaa
aaaaaaaackaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaackaabaaaaaaaaaaaefaaaaajpcaabaaaadaaaaaaegbabaaa
abaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadcaaaaamocaabaaaabaaaaaa
agijcaaaaaaaaaaaajaaaaaaagajbaaaadaaaaaaagijcaiaebaaaaaaaaaaaaaa
acaaaaaadiaaaaaihcaabaaaadaaaaaaegacbaaaadaaaaaaegiccaaaaaaaaaaa
ajaaaaaadcaaaaalocaabaaaabaaaaaakgikcaaaaaaaaaaaanaaaaaafgaobaaa
abaaaaaaagijcaaaaaaaaaaaacaaaaaaaaaaaaalhcaabaaaaeaaaaaajgahbaia
ebaaaaaaabaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaaaaadcaaaaaj
ocaabaaaabaaaaaaagajbaaaaeaaaaaafgafbaaaaaaaaaaafgaobaaaabaaaaaa
diaaaaahocaabaaaabaaaaaafgaobaaaabaaaaaaagajbaaaacaaaaaadiaaaaah
ccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahccaabaaa
aaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaa
dkaabaaaaaaaaaaabkaabaaaaaaaaaaadcaaaaajccaabaaaaaaaaaaaakaabaaa
aaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaiadpaaaaaaaiecaabaaaaaaaaaaa
akaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaahicaabaaaaaaaaaaa
ckaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahecaabaaaaaaaaaaackaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdiaaaaahbcaabaaaaaaaaaaabkaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaabaaaaaaakaabaaa
aaaaaaaadiaaaaaihcaabaaaaaaaaaaaagaabaaaaaaaaaaaegiccaaaaaaaaaaa
agaaaaaadcaaaaanicaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaa
dkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaa
acaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaadcaaaaajhccabaaaaaaaaaaa
egacbaaaacaaaaaaegacbaaaaaaaaaaajgahbaaaabaaaaaadgaaaaaficcabaaa
aaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 89 math, 3 textures
Keywords { "SPOT" "SHADOWS_OFF" }
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 1 [_LightColor0]
Float 4 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 1
SetTexture 2 [_LightTextureB0] 2D 2
"ps_3_0
def c6, 0.5, 0, 1, 0.00100000005
def c7, 31.622776, 9.99999975e-005, 0.967999995, 0.0299999993
def c8, 10, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_2d s0
dcl_2d s1
dcl_2d s2
mov r0.z, c6.z
add_pp r0.x, r0.z, -c5.x
add_pp r0.y, -r0.x, c6.z
mad_pp r0.y, r0.y, c7.z, c7.w
log_pp r0.y, r0.y
rcp r0.y, r0.y
mul_pp r0.y, r0.y, c8.x
mad_pp r0.w, r0.y, r0.y, c6.z
mul_pp r0.y, r0.y, r0.y
mul_pp r0.w, r0.w, c2.y
nrm_pp r1.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r1.w, r2, r2
rsq_pp r1.w, r1.w
mad_pp r3.xyz, r2, r1.w, -r1
mul_pp r2.xyz, r1.w, r2
dp3_pp r1.w, r3, r3
add r2.w, -r1.w, c6.w
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c7.x, r1.w
mul_pp r3.xyz, r1.w, r3
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r3
dp3_pp r2.w, r2, r3
dp3_pp r2.x, r4, r2
dp3_pp r1.x, r4, -r1
max_pp r2.y, r1.x, c6.y
max_pp r1.x, r2.x, c6.y
max_pp r1.y, r2.w, c6.y
max_pp r2.x, r1.w, c6.y
pow_pp r1.z, r2.x, r0.y
mul_pp r0.y, r0.w, r1.z
mul_pp r0.w, r0.x, r0.x
mul_pp r1.z, r0.w, c2.w
mad_pp r0.z, r0.w, -c2.w, r0.z
mad_pp r0.w, r2.y, r0.z, r1.z
add_pp r1.w, -r2.y, c6.z
mad_pp r0.z, r1.x, r0.z, r1.z
mad r0.z, r0.z, r0.w, c7.y
rcp_pp r0.z, r0.z
mul_pp r0.y, r0.y, r0.z
mul_pp r0.y, r1.x, r0.y
mul_pp r0.y, r0.y, c2.x
max_pp r1.z, r0.y, c6.y
rcp r0.y, v5.w
mad r0.yz, v5.xxyw, r0.y, c6.x
texld_pp r2, r0.yzzw, s1
dp3 r0.y, v5, v5
texld_pp r3, r0.y, s2
mul r0.y, r2.w, r3.x
mul_pp r0.yzw, r0.y, c1.xxyz
cmp_pp r0.yzw, -v5.z, c6.y, r0
mul_pp r2.xyz, r0.yzww, r1.z
add_pp r1.z, -r1.y, c6.z
mul_pp r1.y, r1.y, r1.y
dp2add_pp r0.x, r1.y, r0.x, -c6.x
mul_pp r1.y, r1.z, r1.z
mul_pp r1.y, r1.y, r1.y
mul_pp r1.y, r1.z, r1.y
texld r3, v0, s0
mov r4, c0
mad_pp r5.xyz, c3, r3, -r4
mul_pp r3.xyz, r3, c3
mad_pp r4.xyz, c4.x, r5, r4
lrp_pp r5.xyz, r1.y, c6.z, r4
mul_pp r2.xyz, r2, r5
mul_pp r1.y, r1.w, r1.w
mul_pp r1.y, r1.y, r1.y
mul_pp r1.y, r1.w, r1.y
mad_pp r1.y, r0.x, r1.y, c6.z
add_pp r1.z, -r1.x, c6.z
mul_pp r1.w, r1.z, r1.z
mul_pp r1.w, r1.w, r1.w
mul_pp r1.z, r1.z, r1.w
mad_pp r0.x, r0.x, r1.z, c6.z
mul_pp r0.x, r1.y, r0.x
mul_pp r0.x, r1.x, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
mad_pp r0.w, c4.x, -r4.w, r4.w
mul_pp r1.xyz, r0.w, r3
mad_pp oC0.xyz, r1, r0, r2
mov_pp oC0.w, c6.z

"
}
SubProgram "d3d11 " {
// Stats: 80 math, 3 textures
Keywords { "SPOT" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 1
SetTexture 2 [_LightTextureB0] 2D 2
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:adabadaa
eefiecedipkhmkjfoncgoemljhmpghclailhbpnjabaaaaaagaamaaaaadaaaaaa
cmaaaaaapmaaaaaadaabaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apapaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefccialaaaaeaaaaaaamkacaaaa
fjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafibiaaaeaahabaaaaaaaaaaa
ffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafibiaaaeaahabaaaacaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaad
icbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaa
gcbaaaadpcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacagaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaacaaaaaadgaaaaafbcaabaaaabaaaaaadkbabaaaadaaaaaa
dgaaaaafccaabaaaabaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaaabaaaaaa
dkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaakhcaabaaa
acaaaaaaegacbaaaabaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaabaaaaaah
icaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaadeaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaagpbciddkeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaa
acaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaadaaaaaa
pgapbaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
adaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaa
egacbaaaacaaaaaabaaaaaahbcaabaaaabaaaaaaegacbaaaadaaaaaaegacbaaa
abaaaaaabaaaaaaibcaabaaaaaaaaaaaegacbaaaadaaaaaaegacbaiaebaaaaaa
aaaaaaaadeaaaaakgcaabaaaaaaaaaaaagadbaaaabaaaaaaaceaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaadeaaaaakjcaabaaaaaaaaaaaagambaaaaaaaaaaa
aceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaacpaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaaaaaaaaajbcaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaa
anaaaaaaabeaaaaaaaaaiadpaaaaaaaiccaabaaaabaaaaaaakaabaiaebaaaaaa
abaaaaaaabeaaaaaaaaaiadpdcaaaaajccaabaaaabaaaaaabkaabaaaabaaaaaa
abeaaaaanjmohhdpabeaaaaaipmcpfdmcpaaaaafccaabaaaabaaaaaabkaabaaa
abaaaaaaaoaaaaahccaabaaaabaaaaaaabeaaaaaaaaacaebbkaabaaaabaaaaaa
diaaaaahecaabaaaabaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaadcaaaaaj
ccaabaaaabaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaaabeaaaaaaaaaiadp
diaaaaaiccaabaaaabaaaaaabkaabaaaabaaaaaabkiacaaaaaaaaaaaaiaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaackaabaaaabaaaaaabjaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaa
abaaaaaadkaabaaaaaaaaaaadiaaaaahccaabaaaabaaaaaaakaabaaaabaaaaaa
akaabaaaabaaaaaadiaaaaaiecaabaaaabaaaaaabkaabaaaabaaaaaadkiacaaa
aaaaaaaaaiaaaaaadcaaaaalccaabaaaabaaaaaabkaabaiaebaaaaaaabaaaaaa
dkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadpdcaaaaajicaabaaaabaaaaaa
akaabaaaaaaaaaaabkaabaaaabaaaaaackaabaaaabaaaaaadcaaaaajccaabaaa
abaaaaaabkaabaaaaaaaaaaabkaabaaaabaaaaaackaabaaaabaaaaaadcaaaaaj
ccaabaaaabaaaaaabkaabaaaabaaaaaadkaabaaaabaaaaaaabeaaaaabhlhnbdi
aoaaaaakccaabaaaabaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaiadp
bkaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaabkaabaaa
abaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaaiicaabaaaaaaaaaaadkaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaa
deaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaaaoaaaaah
gcaabaaaabaaaaaaagbbbaaaagaaaaaapgbpbaaaagaaaaaaaaaaaaakgcaabaaa
abaaaaaafgagbaaaabaaaaaaaceaaaaaaaaaaaaaaaaaaadpaaaaaadpaaaaaaaa
efaaaaajpcaabaaaacaaaaaajgafbaaaabaaaaaaeghobaaaabaaaaaaaagabaaa
abaaaaaadbaaaaahccaabaaaabaaaaaaabeaaaaaaaaaaaaackbabaaaagaaaaaa
abaaaaahccaabaaaabaaaaaabkaabaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaah
ccaabaaaabaaaaaadkaabaaaacaaaaaabkaabaaaabaaaaaabaaaaaahecaabaaa
abaaaaaaegbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaajpcaabaaaacaaaaaa
kgakbaaaabaaaaaaeghobaaaacaaaaaaaagabaaaacaaaaaadiaaaaahccaabaaa
abaaaaaabkaabaaaabaaaaaaakaabaaaacaaaaaadiaaaaaiocaabaaaabaaaaaa
fgafbaaaabaaaaaaagijcaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaaacaaaaaa
pgapbaaaaaaaaaaajgahbaaaabaaaaaaaaaaaaaljcaabaaaaaaaaaaaagaibaia
ebaaaaaaaaaaaaaaaceaaaaaaaaaiadpaaaaaaaaaaaaaaaaaaaaiadpdiaaaaah
ecaabaaaaaaaaaaackaabaaaaaaaaaaackaabaaaaaaaaaaaapaaaaahecaabaaa
aaaaaaaakgakbaaaaaaaaaaaagaabaaaabaaaaaaaaaaaaahecaabaaaaaaaaaaa
ckaabaaaaaaaaaaaabeaaaaaaaaaaalpdiaaaaahbcaabaaaabaaaaaadkaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaa
akaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaa
abaaaaaaefaaaaajpcaabaaaadaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaa
aagabaaaaaaaaaaadcaaaaamhcaabaaaaeaaaaaaegiccaaaaaaaaaaaajaaaaaa
egacbaaaadaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaa
adaaaaaaegacbaaaadaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaa
aeaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaaeaaaaaaegiccaaaaaaaaaaa
acaaaaaaaaaaaaalhcaabaaaafaaaaaaegacbaiaebaaaaaaaeaaaaaaaceaaaaa
aaaaiadpaaaaiadpaaaaiadpaaaaaaaadcaaaaajhcaabaaaaeaaaaaaegacbaaa
afaaaaaapgapbaaaaaaaaaaaegacbaaaaeaaaaaadiaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaaeaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaa
aaaaaaaaakaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaadkaabaaa
aaaaaaaadcaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaaakaabaaaaaaaaaaa
abeaaaaaaaaaiadpaaaaaaaiicaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaa
abeaaaaaaaaaiadpdiaaaaahbcaabaaaabaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaaj
ecaabaaaaaaaaaaackaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaiadp
diaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaah
bcaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaa
aaaaaaaaagaabaaaaaaaaaaajgahbaaaabaaaaaadcaaaaanicaabaaaaaaaaaaa
ckiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaa
aaaaaaaaacaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaa
adaaaaaadcaaaaajhccabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaa
egacbaaaacaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab
"
}
SubProgram "d3d9 " {
// Stats: 86 math, 3 textures
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 1 [_LightColor0]
Float 4 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] CUBE 1
SetTexture 2 [_LightTextureB0] 2D 2
"ps_3_0
def c6, 0, 1, 0.00100000005, 31.622776
def c7, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c8, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_2d s0
dcl_cube s1
dcl_2d s2
mov r0.y, c6.y
add_pp r0.x, r0.y, -c5.x
add_pp r0.z, -r0.x, c6.y
mad_pp r0.z, r0.z, c7.y, c7.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mad_pp r0.w, r0.z, r0.z, c6.y
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
nrm_pp r1.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r1.w, r2, r2
rsq_pp r1.w, r1.w
mad_pp r3.xyz, r2, r1.w, -r1
mul_pp r2.xyz, r1.w, r2
dp3_pp r1.w, r3, r3
add r2.w, -r1.w, c6.z
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c6.w, r1.w
mul_pp r3.xyz, r1.w, r3
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r3
dp3_pp r2.w, r2, r3
dp3_pp r2.x, r4, r2
dp3_pp r1.x, r4, -r1
max_pp r2.y, r1.x, c6.x
max_pp r1.x, r2.x, c6.x
max_pp r1.y, r2.w, c6.x
max_pp r2.x, r1.w, c6.x
pow_pp r1.z, r2.x, r0.z
mul_pp r0.z, r0.w, r1.z
mul_pp r0.w, r0.x, r0.x
mul_pp r1.z, r0.w, c2.w
mad_pp r0.y, r0.w, -c2.w, r0.y
mad_pp r0.w, r2.y, r0.y, r1.z
add_pp r1.w, -r2.y, c6.y
mad_pp r0.y, r1.x, r0.y, r1.z
mad r0.y, r0.y, r0.w, c7.x
rcp_pp r0.y, r0.y
mul_pp r0.y, r0.z, r0.y
mul_pp r0.y, r1.x, r0.y
mul_pp r0.y, r0.y, c2.x
max_pp r1.z, r0.y, c6.x
dp3 r0.y, v5, v5
texld r2, r0.y, s2
texld r3, v5, s1
mul_pp r0.y, r2.x, r3.w
mul_pp r0.yzw, r0.y, c1.xxyz
mul_pp r2.xyz, r0.yzww, r1.z
add_pp r1.z, -r1.y, c6.y
mul_pp r1.y, r1.y, r1.y
dp2add_pp r0.x, r1.y, r0.x, c8.x
mul_pp r1.y, r1.z, r1.z
mul_pp r1.y, r1.y, r1.y
mul_pp r1.y, r1.z, r1.y
texld r3, v0, s0
mov r4, c0
mad_pp r5.xyz, c3, r3, -r4
mul_pp r3.xyz, r3, c3
mad_pp r4.xyz, c4.x, r5, r4
lrp_pp r5.xyz, r1.y, c6.y, r4
mul_pp r2.xyz, r2, r5
mul_pp r1.y, r1.w, r1.w
mul_pp r1.y, r1.y, r1.y
mul_pp r1.y, r1.w, r1.y
mad_pp r1.y, r0.x, r1.y, c6.y
add_pp r1.z, -r1.x, c6.y
mul_pp r1.w, r1.z, r1.z
mul_pp r1.w, r1.w, r1.w
mul_pp r1.z, r1.z, r1.w
mad_pp r0.x, r0.x, r1.z, c6.y
mul_pp r0.x, r1.y, r0.x
mul_pp r0.x, r1.x, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
mad_pp r0.w, c4.x, -r4.w, r4.w
mul_pp r1.xyz, r0.w, r3
mad_pp oC0.xyz, r1, r0, r2
mov_pp oC0.w, c6.y

"
}
SubProgram "d3d11 " {
// Stats: 75 math, 3 textures
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTextureB0] 2D 2
SetTexture 2 [_LightTexture0] CUBE 1
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:adabadaa
eefiecedlcndnelilnineocdofnmknalfnleggeaabaaaaaamialaaaaadaaaaaa
cmaaaaaapmaaaaaadaabaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
ahahaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcjaakaaaaeaaaaaaakeacaaaa
fjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafibiaaaeaahabaaaaaaaaaaa
ffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafidaaaaeaahabaaaacaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaad
icbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaa
gcbaaaadhcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacagaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaacaaaaaadgaaaaafbcaabaaaabaaaaaadkbabaaaadaaaaaa
dgaaaaafccaabaaaabaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaaabaaaaaa
dkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaakhcaabaaa
acaaaaaaegacbaaaabaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaabaaaaaah
icaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaadeaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaagpbciddkeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaa
acaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaadaaaaaa
pgapbaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
adaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaabaaaaaa
egacbaaaacaaaaaabaaaaaahbcaabaaaabaaaaaaegacbaaaadaaaaaaegacbaaa
abaaaaaabaaaaaaibcaabaaaaaaaaaaaegacbaaaadaaaaaaegacbaiaebaaaaaa
aaaaaaaadeaaaaakgcaabaaaaaaaaaaaagadbaaaabaaaaaaaceaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaadeaaaaakjcaabaaaaaaaaaaaagambaaaaaaaaaaa
aceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaacpaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaaaaaaaaajbcaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaa
anaaaaaaabeaaaaaaaaaiadpaaaaaaaiccaabaaaabaaaaaaakaabaiaebaaaaaa
abaaaaaaabeaaaaaaaaaiadpdcaaaaajccaabaaaabaaaaaabkaabaaaabaaaaaa
abeaaaaanjmohhdpabeaaaaaipmcpfdmcpaaaaafccaabaaaabaaaaaabkaabaaa
abaaaaaaaoaaaaahccaabaaaabaaaaaaabeaaaaaaaaacaebbkaabaaaabaaaaaa
diaaaaahecaabaaaabaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaadcaaaaaj
ccaabaaaabaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaaabeaaaaaaaaaiadp
diaaaaaiccaabaaaabaaaaaabkaabaaaabaaaaaabkiacaaaaaaaaaaaaiaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaackaabaaaabaaaaaabjaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaa
abaaaaaadkaabaaaaaaaaaaadiaaaaahccaabaaaabaaaaaaakaabaaaabaaaaaa
akaabaaaabaaaaaadiaaaaaiecaabaaaabaaaaaabkaabaaaabaaaaaadkiacaaa
aaaaaaaaaiaaaaaadcaaaaalccaabaaaabaaaaaabkaabaiaebaaaaaaabaaaaaa
dkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadpdcaaaaajicaabaaaabaaaaaa
akaabaaaaaaaaaaabkaabaaaabaaaaaackaabaaaabaaaaaadcaaaaajccaabaaa
abaaaaaabkaabaaaaaaaaaaabkaabaaaabaaaaaackaabaaaabaaaaaadcaaaaaj
ccaabaaaabaaaaaabkaabaaaabaaaaaadkaabaaaabaaaaaaabeaaaaabhlhnbdi
aoaaaaakccaabaaaabaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaiadp
bkaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaabkaabaaa
abaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaaiicaabaaaaaaaaaaadkaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaa
deaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaabaaaaaah
ccaabaaaabaaaaaaegbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaajpcaabaaa
acaaaaaafgafbaaaabaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaaefaaaaaj
pcaabaaaadaaaaaaegbcbaaaagaaaaaaeghobaaaacaaaaaaaagabaaaabaaaaaa
diaaaaahccaabaaaabaaaaaaakaabaaaacaaaaaadkaabaaaadaaaaaadiaaaaai
ocaabaaaabaaaaaafgafbaaaabaaaaaaagijcaaaaaaaaaaaagaaaaaadiaaaaah
hcaabaaaacaaaaaapgapbaaaaaaaaaaajgahbaaaabaaaaaaaaaaaaaljcaabaaa
aaaaaaaaagaibaiaebaaaaaaaaaaaaaaaceaaaaaaaaaiadpaaaaaaaaaaaaaaaa
aaaaiadpdiaaaaahecaabaaaaaaaaaaackaabaaaaaaaaaaackaabaaaaaaaaaaa
apaaaaahecaabaaaaaaaaaaakgakbaaaaaaaaaaaagaabaaaabaaaaaaaaaaaaah
ecaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaaalpdiaaaaahbcaabaaa
abaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaabaaaaaa
akaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaaakaabaaaabaaaaaaefaaaaajpcaabaaaadaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaaaaaaaaadcaaaaamhcaabaaaaeaaaaaaegiccaaa
aaaaaaaaajaaaaaaegacbaaaadaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaa
diaaaaaihcaabaaaadaaaaaaegacbaaaadaaaaaaegiccaaaaaaaaaaaajaaaaaa
dcaaaaalhcaabaaaaeaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaaeaaaaaa
egiccaaaaaaaaaaaacaaaaaaaaaaaaalhcaabaaaafaaaaaaegacbaiaebaaaaaa
aeaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaaaaadcaaaaajhcaabaaa
aeaaaaaaegacbaaaafaaaaaapgapbaaaaaaaaaaaegacbaaaaeaaaaaadiaaaaah
hcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaaeaaaaaadiaaaaahicaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadkaabaaaaaaaaaaadcaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaiadpaaaaaaaiicaabaaaaaaaaaaabkaabaia
ebaaaaaaaaaaaaaaabeaaaaaaaaaiadpdiaaaaahbcaabaaaabaaaaaadkaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaa
akaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaa
abaaaaaadcaaaaajecaabaaaaaaaaaaackaabaaaaaaaaaaadkaabaaaaaaaaaaa
abeaaaaaaaaaiadpdiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaa
aaaaaaaadiaaaaahbcaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaajgahbaaaabaaaaaadcaaaaan
icaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaa
acaaaaaadkiacaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaa
aaaaaaaaegacbaaaadaaaaaadcaaaaajhccabaaaaaaaaaaaegacbaaaabaaaaaa
egacbaaaaaaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaa
aaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 81 math, 2 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 1 [_LightColor0]
Float 4 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 1
"ps_3_0
def c6, 0, 1, 0.00100000005, 31.622776
def c7, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c8, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xy
dcl_2d s0
dcl_2d s1
mov r0.y, c6.y
add_pp r0.x, r0.y, -c5.x
add_pp r0.z, -r0.x, c6.y
mad_pp r0.z, r0.z, c7.y, c7.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mad_pp r0.w, r0.z, r0.z, c6.y
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
dp3_pp r1.x, v1, v1
rsq_pp r1.x, r1.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r1.yzw, v1.xxyz, -r1.x, r2.xxyz
mul_pp r3.xyz, r1.x, v1
dp3_pp r1.x, r1.yzww, r1.yzww
add r2.w, -r1.x, c6.z
rsq_pp r1.x, r1.x
cmp_pp r1.x, r2.w, c6.w, r1.x
mul_pp r1.xyz, r1.x, r1.yzww
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r1
dp3_pp r1.x, r2, r1
dp3_pp r1.y, r4, r2
dp3_pp r1.z, r4, -r3
max_pp r2.x, r1.z, c6.x
max_pp r2.y, r1.y, c6.x
max_pp r2.z, r1.x, c6.x
max_pp r2.w, r1.w, c6.x
pow_pp r1.x, r2.w, r0.z
mul_pp r0.z, r0.w, r1.x
mul_pp r0.w, r0.x, r0.x
mul_pp r1.x, r0.w, c2.w
mad_pp r0.y, r0.w, -c2.w, r0.y
mad_pp r0.w, r2.x, r0.y, r1.x
add_pp r1.y, -r2.x, c6.y
mad_pp r0.y, r2.y, r0.y, r1.x
mad r0.y, r0.y, r0.w, c7.x
rcp_pp r0.y, r0.y
mul_pp r0.y, r0.z, r0.y
mul_pp r0.y, r2.y, r0.y
mul_pp r0.y, r0.y, c2.x
max_pp r1.x, r0.y, c6.x
texld_pp r3, v5, s1
mul_pp r0.yzw, r3.w, c1.xxyz
mul_pp r1.xzw, r0.yyzw, r1.x
add_pp r2.x, -r2.z, c6.y
mul_pp r2.z, r2.z, r2.z
dp2add_pp r0.x, r2.z, r0.x, c8.x
mul_pp r2.z, r2.x, r2.x
mul_pp r2.z, r2.z, r2.z
mul_pp r2.x, r2.x, r2.z
texld r3, v0, s0
mov r4, c0
mad_pp r5.xyz, c3, r3, -r4
mul_pp r3.xyz, r3, c3
mad_pp r4.xyz, c4.x, r5, r4
lrp_pp r5.xyz, r2.x, c6.y, r4
mul_pp r1.xzw, r1, r5.xyyz
mul_pp r2.x, r1.y, r1.y
mul_pp r2.x, r2.x, r2.x
mul_pp r1.y, r1.y, r2.x
mad_pp r1.y, r0.x, r1.y, c6.y
add_pp r2.x, -r2.y, c6.y
mul_pp r2.z, r2.x, r2.x
mul_pp r2.z, r2.z, r2.z
mul_pp r2.x, r2.x, r2.z
mad_pp r0.x, r0.x, r2.x, c6.y
mul_pp r0.x, r1.y, r0.x
mul_pp r0.x, r2.y, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
mad_pp r0.w, c4.x, -r4.w, r4.w
mul_pp r2.xyz, r0.w, r3
mad_pp oC0.xyz, r2, r0, r1.xzww
mov_pp oC0.w, c6.y

"
}
SubProgram "d3d11 " {
// Stats: 71 math, 2 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 1
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:acabacaa
eefiecedallapakddmipllnbfcaeppiiobhhmmedabaaaaaaamalaaaaadaaaaaa
cmaaaaaapmaaaaaadaabaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
adadaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcneajaaaaeaaaaaaahfacaaaa
fjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaa
afaaaaaagcbaaaaddcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
agaaaaaaaaaaaaajbcaabaaaaaaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaa
abeaaaaaaaaaiadpaaaaaaaiccaabaaaaaaaaaaaakaabaiaebaaaaaaaaaaaaaa
abeaaaaaaaaaiadpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaa
njmohhdpabeaaaaaipmcpfdmcpaaaaafccaabaaaaaaaaaaabkaabaaaaaaaaaaa
aoaaaaahccaabaaaaaaaaaaaabeaaaaaaaaacaebbkaabaaaaaaaaaaadcaaaaaj
ecaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaiadp
diaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaai
ecaabaaaaaaaaaaackaabaaaaaaaaaaabkiacaaaaaaaaaaaaiaaaaaabaaaaaah
icaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaa
egbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaa
acaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadgaaaaafbcaabaaa
acaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaa
dgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaadcaaaaakhcaabaaaadaaaaaa
egbcbaiaebaaaaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaaeaaaaaapgapbaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaaiicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaiaebaaaaaaaeaaaaaadeaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaadaaaaaaegacbaaaadaaaaaadeaaaaahicaabaaaabaaaaaadkaabaaa
abaaaaaaabeaaaaagpbciddkeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaadaaaaaapgapbaaaabaaaaaaegacbaaaadaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
abaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahccaabaaaabaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaadeaaaaakhcaabaaaabaaaaaaegadbaaa
abaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaacpaaaaafecaabaaa
abaaaaaackaabaaaabaaaaaadiaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
ckaabaaaabaaaaaabjaaaaafccaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaah
ccaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahecaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaaiecaabaaaabaaaaaa
ckaabaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaadcaaaaalecaabaaaaaaaaaaa
ckaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadp
dcaaaaajicaabaaaabaaaaaadkaabaaaaaaaaaaackaabaaaaaaaaaaackaabaaa
abaaaaaaaaaaaaaiicaabaaaaaaaaaaadkaabaiaebaaaaaaaaaaaaaaabeaaaaa
aaaaiadpdcaaaaajecaabaaaaaaaaaaaakaabaaaabaaaaaackaabaaaaaaaaaaa
ckaabaaaabaaaaaadcaaaaajecaabaaaaaaaaaaackaabaaaaaaaaaaadkaabaaa
abaaaaaaabeaaaaabhlhnbdiaoaaaaakecaabaaaaaaaaaaaaceaaaaaaaaaiadp
aaaaiadpaaaaiadpaaaaiadpckaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaa
abaaaaaabkaabaaaaaaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaa
akiacaaaaaaaaaaaaiaaaaaadeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaaefaaaaajpcaabaaaacaaaaaaegbabaaaagaaaaaaeghobaaa
abaaaaaaaagabaaaabaaaaaadiaaaaaihcaabaaaacaaaaaapgapbaaaacaaaaaa
egiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaaadaaaaaafgafbaaaaaaaaaaa
egacbaaaacaaaaaaaaaaaaaiccaabaaaaaaaaaaabkaabaiaebaaaaaaabaaaaaa
abeaaaaaaaaaiadpdiaaaaahecaabaaaaaaaaaaabkaabaaaabaaaaaabkaabaaa
abaaaaaaapaaaaahbcaabaaaaaaaaaaakgakbaaaaaaaaaaaagaabaaaaaaaaaaa
aaaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaalpdiaaaaah
ecaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahecaabaaa
aaaaaaaackaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaackaabaaaaaaaaaaaefaaaaajpcaabaaaaeaaaaaaegbabaaa
abaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadcaaaaamocaabaaaabaaaaaa
agijcaaaaaaaaaaaajaaaaaaagajbaaaaeaaaaaaagijcaiaebaaaaaaaaaaaaaa
acaaaaaadiaaaaaihcaabaaaaeaaaaaaegacbaaaaeaaaaaaegiccaaaaaaaaaaa
ajaaaaaadcaaaaalocaabaaaabaaaaaakgikcaaaaaaaaaaaanaaaaaafgaobaaa
abaaaaaaagijcaaaaaaaaaaaacaaaaaaaaaaaaalhcaabaaaafaaaaaajgahbaia
ebaaaaaaabaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaaaaadcaaaaaj
ocaabaaaabaaaaaaagajbaaaafaaaaaafgafbaaaaaaaaaaafgaobaaaabaaaaaa
diaaaaahocaabaaaabaaaaaafgaobaaaabaaaaaaagajbaaaadaaaaaadiaaaaah
ccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahccaabaaa
aaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaa
dkaabaaaaaaaaaaabkaabaaaaaaaaaaadcaaaaajccaabaaaaaaaaaaaakaabaaa
aaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaiadpaaaaaaaiecaabaaaaaaaaaaa
akaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaahicaabaaaaaaaaaaa
ckaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahecaabaaaaaaaaaaackaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaiadpdiaaaaahbcaabaaaaaaaaaaabkaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaabaaaaaaakaabaaa
aaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaa
dcaaaaanicaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaa
aaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaaacaaaaaa
pgapbaaaaaaaaaaaegacbaaaaeaaaaaadcaaaaajhccabaaaaaaaaaaaegacbaaa
acaaaaaaegacbaaaaaaaaaaajgahbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaa
abeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 92 math, 4 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
Vector 4 [_Color]
Float 6 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightShadowData]
Float 5 [_Metallic]
Vector 1 [unity_ColorSpaceDielectricSpec]
Vector 3 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_3_0
def c7, 0.5, 0, 1, 0.00100000005
def c8, 31.622776, 9.99999975e-005, 0.967999995, 0.0299999993
def c9, 10, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_texcoord6 v6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
rcp r0.x, v5.w
mad r0.xy, v5, r0.x, c7.x
texld_pp r0, r0, s2
dp3 r0.x, v5, v5
texld_pp r1, r0.x, s3
mul r0.x, r0.w, r1.x
cmp r0.x, -v5.z, c7.y, r0.x
texldp_pp r1, v6, s1
mov r0.z, c7.z
lrp_pp r2.x, r1.x, r0.z, c0.x
mul_pp r0.x, r0.x, r2.x
mul_pp r0.xyw, r0.x, c2.xyzz
add_pp r1.x, r0.z, -c6.x
add_pp r1.y, -r1.x, c7.z
mad_pp r1.y, r1.y, c8.z, c8.w
log_pp r1.y, r1.y
rcp r1.y, r1.y
mul_pp r1.y, r1.y, c9.x
mad_pp r1.z, r1.y, r1.y, c7.z
mul_pp r1.y, r1.y, r1.y
mul_pp r1.z, r1.z, c3.y
nrm_pp r2.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r1.w, r3, r3
rsq_pp r1.w, r1.w
mad_pp r4.xyz, r3, r1.w, -r2
mul_pp r3.xyz, r1.w, r3
dp3_pp r1.w, r4, r4
add r2.w, -r1.w, c7.w
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c8.x, r1.w
mul_pp r4.xyz, r1.w, r4
nrm_pp r5.xyz, v4
dp3_pp r1.w, r5, r4
dp3_pp r2.w, r3, r4
dp3_pp r3.x, r5, r3
dp3_pp r2.x, r5, -r2
max_pp r3.y, r2.x, c7.y
max_pp r2.x, r3.x, c7.y
max_pp r3.x, r2.w, c7.y
max_pp r2.y, r1.w, c7.y
pow_pp r3.z, r2.y, r1.y
mul_pp r1.y, r1.z, r3.z
mul_pp r1.z, r1.x, r1.x
mul_pp r1.w, r1.z, c3.w
mad_pp r0.z, r1.z, -c3.w, r0.z
mad_pp r1.z, r3.y, r0.z, r1.w
add_pp r2.y, -r3.y, c7.z
mad_pp r0.z, r2.x, r0.z, r1.w
mad r0.z, r0.z, r1.z, c8.y
rcp_pp r0.z, r0.z
mul_pp r0.z, r1.y, r0.z
mul_pp r0.z, r2.x, r0.z
mul_pp r0.z, r0.z, c3.x
max_pp r1.y, r0.z, c7.y
mul_pp r1.yzw, r0.xxyw, r1.y
add_pp r0.z, -r3.x, c7.z
mul_pp r2.z, r3.x, r3.x
dp2add_pp r1.x, r2.z, r1.x, -c7.x
mul_pp r2.z, r0.z, r0.z
mul_pp r2.z, r2.z, r2.z
mul_pp r0.z, r0.z, r2.z
texld r3, v0, s0
mov r4, c1
mad_pp r5.xyz, c4, r3, -r4
mul_pp r3.xyz, r3, c4
mad_pp r4.xyz, c5.x, r5, r4
lrp_pp r5.xyz, r0.z, c7.z, r4
mul_pp r1.yzw, r1, r5.xxyz
mul_pp r0.z, r2.y, r2.y
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r2.y, r0.z
mad_pp r0.z, r1.x, r0.z, c7.z
add_pp r2.y, -r2.x, c7.z
mul_pp r2.z, r2.y, r2.y
mul_pp r2.z, r2.z, r2.z
mul_pp r2.y, r2.y, r2.z
mad_pp r1.x, r1.x, r2.y, c7.z
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r2.x, r0.z
mul_pp r0.xyz, r0.z, r0.xyww
mad_pp r0.w, c5.x, -r4.w, r4.w
mul_pp r2.xyz, r0.w, r3
mad_pp oC0.xyz, r2, r0, r1.yzww
mov_pp oC0.w, c7.z

"
}
SubProgram "d3d11 " {
// Stats: 86 math, 3 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [_LightTextureB0] 2D 3
SetTexture 3 [_ShadowMapTexture] 2D 1
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityShadows" 1
"ps_4_0
root12:aeacaeaa
eefiecednpmhhgojblinhfbkiljgooadpbffgpplabaaaaaaieanaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apapaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaapapaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcdeamaaaaeaaaaaaaanadaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaabjaaaaaafkaaaaadaagabaaa
aaaaaaaafkaiaaadaagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafkaaaaad
aagabaaaadaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaafibiaaaeaahabaaaacaaaaaaffffaaaafibiaaaeaahabaaa
adaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaa
afaaaaaagcbaaaadpcbabaaaagaaaaaagcbaaaadpcbabaaaahaaaaaagfaaaaad
pccabaaaaaaaaaaagiaaaaacagaaaaaaaoaaaaahdcaabaaaaaaaaaaaegbabaaa
agaaaaaapgbpbaaaagaaaaaaaaaaaaakdcaabaaaaaaaaaaaegaabaaaaaaaaaaa
aceaaaaaaaaaaadpaaaaaadpaaaaaaaaaaaaaaaaefaaaaajpcaabaaaaaaaaaaa
egaabaaaaaaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaadbaaaaahbcaabaaa
aaaaaaaaabeaaaaaaaaaaaaackbabaaaagaaaaaaabaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaaaaaiadpdiaaaaahbcaabaaaaaaaaaaadkaabaaa
aaaaaaaaakaabaaaaaaaaaaabaaaaaahccaabaaaaaaaaaaaegbcbaaaagaaaaaa
egbcbaaaagaaaaaaefaaaaajpcaabaaaabaaaaaafgafbaaaaaaaaaaaeghobaaa
acaaaaaaaagabaaaadaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
akaabaaaabaaaaaaaoaaaaahocaabaaaaaaaaaaaagbjbaaaahaaaaaapgbpbaaa
ahaaaaaaehaaaaalccaabaaaaaaaaaaajgafbaaaaaaaaaaaaghabaaaadaaaaaa
aagabaaaabaaaaaadkaabaaaaaaaaaaaaaaaaaajecaabaaaaaaaaaaaakiacaia
ebaaaaaaabaaaaaabiaaaaaaabeaaaaaaaaaiadpdcaaaaakccaabaaaaaaaaaaa
bkaabaaaaaaaaaaackaabaaaaaaaaaaaakiacaaaabaaaaaabiaaaaaadiaaaaah
bcaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaaihcaabaaa
aaaaaaaaagaabaaaaaaaaaaaegiccaaaaaaaaaaaagaaaaaabaaaaaahicaabaaa
aaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaa
acaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaa
acaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaakhcaabaaaadaaaaaaegacbaaa
acaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaaabaaaaaadiaaaaahhcaabaaa
acaaaaaapgapbaaaaaaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaadaaaaaaegacbaaaadaaaaaadeaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaaabeaaaaagpbciddkeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaadaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaabaaaaaah
icaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaaeaaaaaapgapbaaaaaaaaaaa
egbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaeaaaaaaegacbaaa
adaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaa
baaaaaahbcaabaaaacaaaaaaegacbaaaaeaaaaaaegacbaaaacaaaaaabaaaaaai
bcaabaaaabaaaaaaegacbaaaaeaaaaaaegacbaiaebaaaaaaabaaaaaadeaaaaah
ccaabaaaabaaaaaaakaabaaaacaaaaaaabeaaaaaaaaaaaaadeaaaaakfcaabaaa
abaaaaaaagadbaaaabaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
deaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaacpaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaaaaaaaaajicaabaaaabaaaaaadkiacaia
ebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadpaaaaaaaibcaabaaaacaaaaaa
dkaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadpdcaaaaajbcaabaaaacaaaaaa
akaabaaaacaaaaaaabeaaaaanjmohhdpabeaaaaaipmcpfdmcpaaaaafbcaabaaa
acaaaaaaakaabaaaacaaaaaaaoaaaaahbcaabaaaacaaaaaaabeaaaaaaaaacaeb
akaabaaaacaaaaaadiaaaaahccaabaaaacaaaaaaakaabaaaacaaaaaaakaabaaa
acaaaaaadcaaaaajbcaabaaaacaaaaaaakaabaaaacaaaaaaakaabaaaacaaaaaa
abeaaaaaaaaaiadpdiaaaaaibcaabaaaacaaaaaaakaabaaaacaaaaaabkiacaaa
aaaaaaaaaiaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaabkaabaaa
acaaaaaabjaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahicaabaaa
aaaaaaaaakaabaaaacaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaacaaaaaa
dkaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaaiccaabaaaacaaaaaaakaabaaa
acaaaaaadkiacaaaaaaaaaaaaiaaaaaadcaaaaalbcaabaaaacaaaaaaakaabaia
ebaaaaaaacaaaaaadkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadpdcaaaaaj
ecaabaaaacaaaaaaakaabaaaabaaaaaaakaabaaaacaaaaaabkaabaaaacaaaaaa
aaaaaaaibcaabaaaabaaaaaaakaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadp
dcaaaaajbcaabaaaacaaaaaabkaabaaaabaaaaaaakaabaaaacaaaaaabkaabaaa
acaaaaaadcaaaaajbcaabaaaacaaaaaaakaabaaaacaaaaaackaabaaaacaaaaaa
abeaaaaabhlhnbdiaoaaaaakbcaabaaaacaaaaaaaceaaaaaaaaaiadpaaaaiadp
aaaaiadpaaaaiadpakaabaaaacaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaaakaabaaaacaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaaabaaaaaa
dkaabaaaaaaaaaaadiaaaaaiicaabaaaaaaaaaaadkaabaaaaaaaaaaaakiacaaa
aaaaaaaaaiaaaaaadeaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaaaaadiaaaaahhcaabaaaacaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaa
aaaaaaaiicaabaaaaaaaaaaackaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadp
diaaaaahecaabaaaabaaaaaackaabaaaabaaaaaackaabaaaabaaaaaaapaaaaah
ecaabaaaabaaaaaakgakbaaaabaaaaaapgapbaaaabaaaaaaaaaaaaahecaabaaa
abaaaaaackaabaaaabaaaaaaabeaaaaaaaaaaalpdiaaaaahicaabaaaabaaaaaa
dkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaa
abaaaaaadkaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaabaaaaaaefaaaaajpcaabaaaadaaaaaaegbabaaaabaaaaaaeghobaaa
aaaaaaaaaagabaaaaaaaaaaadcaaaaamhcaabaaaaeaaaaaaegiccaaaaaaaaaaa
ajaaaaaaegacbaaaadaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaai
hcaabaaaadaaaaaaegacbaaaadaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaal
hcaabaaaaeaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaaeaaaaaaegiccaaa
aaaaaaaaacaaaaaaaaaaaaalhcaabaaaafaaaaaaegacbaiaebaaaaaaaeaaaaaa
aceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaaaaadcaaaaajhcaabaaaaeaaaaaa
egacbaaaafaaaaaapgapbaaaaaaaaaaaegacbaaaaeaaaaaadiaaaaahhcaabaaa
acaaaaaaegacbaaaacaaaaaaegacbaaaaeaaaaaadiaaaaahicaabaaaaaaaaaaa
akaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaaabaaaaaa
dkaabaaaaaaaaaaadcaaaaajicaabaaaaaaaaaaackaabaaaabaaaaaadkaabaaa
aaaaaaaaabeaaaaaaaaaiadpaaaaaaaibcaabaaaabaaaaaabkaabaiaebaaaaaa
abaaaaaaabeaaaaaaaaaiadpdiaaaaahicaabaaaabaaaaaaakaabaaaabaaaaaa
akaabaaaabaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaadkaabaaa
abaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaadkaabaaaabaaaaaa
dcaaaaajbcaabaaaabaaaaaackaabaaaabaaaaaaakaabaaaabaaaaaaabeaaaaa
aaaaiadpdiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaa
diaaaaahicaabaaaaaaaaaaabkaabaaaabaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaanicaabaaa
aaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaa
dkiacaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaa
egacbaaaadaaaaaadcaaaaajhccabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
aaaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadp
doaaaaab"
}
SubProgram "d3d9 " {
// Stats: 81 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 1 [_LightColor0]
Float 4 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
"ps_3_0
def c6, 0, 1, 0.00100000005, 31.622776
def c7, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c8, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_2d s0
dcl_2d s1
mov r0.y, c6.y
add_pp r0.x, r0.y, -c5.x
add_pp r0.z, -r0.x, c6.y
mad_pp r0.z, r0.z, c7.y, c7.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mad_pp r0.w, r0.z, r0.z, c6.y
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
dp3_pp r1.x, v1, v1
rsq_pp r1.x, r1.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r1.yzw, v1.xxyz, -r1.x, r2.xxyz
mul_pp r3.xyz, r1.x, v1
dp3_pp r1.x, r1.yzww, r1.yzww
add r2.w, -r1.x, c6.z
rsq_pp r1.x, r1.x
cmp_pp r1.x, r2.w, c6.w, r1.x
mul_pp r1.xyz, r1.x, r1.yzww
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r1
dp3_pp r1.x, r2, r1
dp3_pp r1.y, r4, r2
dp3_pp r1.z, r4, -r3
max_pp r2.x, r1.z, c6.x
max_pp r2.y, r1.y, c6.x
max_pp r2.z, r1.x, c6.x
max_pp r2.w, r1.w, c6.x
pow_pp r1.x, r2.w, r0.z
mul_pp r0.z, r0.w, r1.x
mul_pp r0.w, r0.x, r0.x
mul_pp r1.x, r0.w, c2.w
mad_pp r0.y, r0.w, -c2.w, r0.y
mad_pp r0.w, r2.x, r0.y, r1.x
add_pp r1.y, -r2.x, c6.y
mad_pp r0.y, r2.y, r0.y, r1.x
mad r0.y, r0.y, r0.w, c7.x
rcp_pp r0.y, r0.y
mul_pp r0.y, r0.z, r0.y
mul_pp r0.y, r2.y, r0.y
mul_pp r0.y, r0.y, c2.x
max_pp r1.x, r0.y, c6.x
texldp_pp r3, v5, s1
mul_pp r0.yzw, r3.x, c1.xxyz
mul_pp r1.xzw, r0.yyzw, r1.x
add_pp r2.x, -r2.z, c6.y
mul_pp r2.z, r2.z, r2.z
dp2add_pp r0.x, r2.z, r0.x, c8.x
mul_pp r2.z, r2.x, r2.x
mul_pp r2.z, r2.z, r2.z
mul_pp r2.x, r2.x, r2.z
texld r3, v0, s0
mov r4, c0
mad_pp r5.xyz, c3, r3, -r4
mul_pp r3.xyz, r3, c3
mad_pp r4.xyz, c4.x, r5, r4
lrp_pp r5.xyz, r2.x, c6.y, r4
mul_pp r1.xzw, r1, r5.xyyz
mul_pp r2.x, r1.y, r1.y
mul_pp r2.x, r2.x, r2.x
mul_pp r1.y, r1.y, r2.x
mad_pp r1.y, r0.x, r1.y, c6.y
add_pp r2.x, -r2.y, c6.y
mul_pp r2.z, r2.x, r2.x
mul_pp r2.z, r2.z, r2.z
mul_pp r2.x, r2.x, r2.z
mad_pp r0.x, r0.x, r2.x, c6.y
mul_pp r0.x, r1.y, r0.x
mul_pp r0.x, r2.y, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
mad_pp r0.w, c4.x, -r4.w, r4.w
mul_pp r2.xyz, r0.w, r3
mad_pp oC0.xyz, r2, r0, r1.xzww
mov_pp oC0.w, c6.y

"
}
SubProgram "d3d11 " {
// Stats: 72 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:acabacaa
eefiecedhekfponmbjgnacbnckjfeloblfkcgjdmabaaaaaacialaaaaadaaaaaa
cmaaaaaapmaaaaaadaabaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apalaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcpaajaaaaeaaaaaaahmacaaaa
fjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaa
afaaaaaagcbaaaadlcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
agaaaaaaaaaaaaajbcaabaaaaaaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaa
abeaaaaaaaaaiadpaaaaaaaiccaabaaaaaaaaaaaakaabaiaebaaaaaaaaaaaaaa
abeaaaaaaaaaiadpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaa
njmohhdpabeaaaaaipmcpfdmcpaaaaafccaabaaaaaaaaaaabkaabaaaaaaaaaaa
aoaaaaahccaabaaaaaaaaaaaabeaaaaaaaaacaebbkaabaaaaaaaaaaadcaaaaaj
ecaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaiadp
diaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaai
ecaabaaaaaaaaaaackaabaaaaaaaaaaabkiacaaaaaaaaaaaaiaaaaaabaaaaaah
icaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaa
egbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaa
acaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadgaaaaafbcaabaaa
acaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaa
dgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaadcaaaaakhcaabaaaadaaaaaa
egbcbaiaebaaaaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaaeaaaaaapgapbaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaaiicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaiaebaaaaaaaeaaaaaadeaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaadaaaaaaegacbaaaadaaaaaadeaaaaahicaabaaaabaaaaaadkaabaaa
abaaaaaaabeaaaaagpbciddkeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaadaaaaaapgapbaaaabaaaaaaegacbaaaadaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
abaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahccaabaaaabaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaadeaaaaakhcaabaaaabaaaaaaegadbaaa
abaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaacpaaaaafecaabaaa
abaaaaaackaabaaaabaaaaaadiaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
ckaabaaaabaaaaaabjaaaaafccaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaah
ccaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahecaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaaiecaabaaaabaaaaaa
ckaabaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaadcaaaaalecaabaaaaaaaaaaa
ckaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadp
dcaaaaajicaabaaaabaaaaaadkaabaaaaaaaaaaackaabaaaaaaaaaaackaabaaa
abaaaaaaaaaaaaaiicaabaaaaaaaaaaadkaabaiaebaaaaaaaaaaaaaaabeaaaaa
aaaaiadpdcaaaaajecaabaaaaaaaaaaaakaabaaaabaaaaaackaabaaaaaaaaaaa
ckaabaaaabaaaaaadcaaaaajecaabaaaaaaaaaaackaabaaaaaaaaaaadkaabaaa
abaaaaaaabeaaaaabhlhnbdiaoaaaaakecaabaaaaaaaaaaaaceaaaaaaaaaiadp
aaaaiadpaaaaiadpaaaaiadpckaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaa
abaaaaaabkaabaaaaaaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaa
akiacaaaaaaaaaaaaiaaaaaadeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaoaaaaahmcaabaaaabaaaaaaagbebaaaagaaaaaapgbpbaaa
agaaaaaaefaaaaajpcaabaaaacaaaaaaogakbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaabaaaaaadiaaaaaihcaabaaaacaaaaaaagaabaaaacaaaaaaegiccaaa
aaaaaaaaagaaaaaadiaaaaahhcaabaaaadaaaaaafgafbaaaaaaaaaaaegacbaaa
acaaaaaaaaaaaaaiccaabaaaaaaaaaaabkaabaiaebaaaaaaabaaaaaaabeaaaaa
aaaaiadpdiaaaaahecaabaaaaaaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaa
apaaaaahbcaabaaaaaaaaaaakgakbaaaaaaaaaaaagaabaaaaaaaaaaaaaaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaalpdiaaaaahecaabaaa
aaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahecaabaaaaaaaaaaa
ckaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaefaaaaajpcaabaaaaeaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaaaaaaaaadcaaaaamocaabaaaabaaaaaaagijcaaa
aaaaaaaaajaaaaaaagajbaaaaeaaaaaaagijcaiaebaaaaaaaaaaaaaaacaaaaaa
diaaaaaihcaabaaaaeaaaaaaegacbaaaaeaaaaaaegiccaaaaaaaaaaaajaaaaaa
dcaaaaalocaabaaaabaaaaaakgikcaaaaaaaaaaaanaaaaaafgaobaaaabaaaaaa
agijcaaaaaaaaaaaacaaaaaaaaaaaaalhcaabaaaafaaaaaajgahbaiaebaaaaaa
abaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaaaaadcaaaaajocaabaaa
abaaaaaaagajbaaaafaaaaaafgafbaaaaaaaaaaafgaobaaaabaaaaaadiaaaaah
ocaabaaaabaaaaaafgaobaaaabaaaaaaagajbaaaadaaaaaadiaaaaahccaabaaa
aaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaa
aaaaaaaabkaabaaaaaaaaaaadcaaaaajccaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaiadpaaaaaaaiecaabaaaaaaaaaaaakaabaia
ebaaaaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaahicaabaaaaaaaaaaackaabaaa
aaaaaaaackaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahecaabaaaaaaaaaaackaabaaaaaaaaaaadkaabaaa
aaaaaaaadcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaa
abeaaaaaaaaaiadpdiaaaaahbcaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaabaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadcaaaaan
icaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaa
acaaaaaadkiacaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaa
aaaaaaaaegacbaaaaeaaaaaadcaaaaajhccabaaaaaaaaaaaegacbaaaacaaaaaa
egacbaaaaaaaaaaajgahbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaa
aaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 82 math, 3 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 1 [_LightColor0]
Float 4 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_3_0
def c6, 0, 1, 0.00100000005, 31.622776
def c7, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c8, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xy
dcl_texcoord6 v6
dcl_2d s0
dcl_2d s1
dcl_2d s2
mov r0.y, c6.y
add_pp r0.x, r0.y, -c5.x
add_pp r0.z, -r0.x, c6.y
mad_pp r0.z, r0.z, c7.y, c7.z
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c7.w
mad_pp r0.w, r0.z, r0.z, c6.y
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c2.y
dp3_pp r1.x, v1, v1
rsq_pp r1.x, r1.x
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
mad_pp r1.yzw, v1.xxyz, -r1.x, r2.xxyz
mul_pp r3.xyz, r1.x, v1
dp3_pp r1.x, r1.yzww, r1.yzww
add r2.w, -r1.x, c6.z
rsq_pp r1.x, r1.x
cmp_pp r1.x, r2.w, c6.w, r1.x
mul_pp r1.xyz, r1.x, r1.yzww
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r1
dp3_pp r1.x, r2, r1
dp3_pp r1.y, r4, r2
dp3_pp r1.z, r4, -r3
max_pp r2.x, r1.z, c6.x
max_pp r2.y, r1.y, c6.x
max_pp r2.z, r1.x, c6.x
max_pp r2.w, r1.w, c6.x
pow_pp r1.x, r2.w, r0.z
mul_pp r0.z, r0.w, r1.x
mul_pp r0.w, r0.x, r0.x
mul_pp r1.x, r0.w, c2.w
mad_pp r0.y, r0.w, -c2.w, r0.y
mad_pp r0.w, r2.x, r0.y, r1.x
add_pp r1.y, -r2.x, c6.y
mad_pp r0.y, r2.y, r0.y, r1.x
mad r0.y, r0.y, r0.w, c7.x
rcp_pp r0.y, r0.y
mul_pp r0.y, r0.z, r0.y
mul_pp r0.y, r2.y, r0.y
mul_pp r0.y, r0.y, c2.x
max_pp r1.x, r0.y, c6.x
texld r3, v5, s2
texldp_pp r4, v6, s1
mul_pp r0.y, r3.w, r4.x
mul_pp r0.yzw, r0.y, c1.xxyz
mul_pp r1.xzw, r0.yyzw, r1.x
add_pp r2.x, -r2.z, c6.y
mul_pp r2.z, r2.z, r2.z
dp2add_pp r0.x, r2.z, r0.x, c8.x
mul_pp r2.z, r2.x, r2.x
mul_pp r2.z, r2.z, r2.z
mul_pp r2.x, r2.x, r2.z
texld r3, v0, s0
mov r4, c0
mad_pp r5.xyz, c3, r3, -r4
mul_pp r3.xyz, r3, c3
mad_pp r4.xyz, c4.x, r5, r4
lrp_pp r5.xyz, r2.x, c6.y, r4
mul_pp r1.xzw, r1, r5.xyyz
mul_pp r2.x, r1.y, r1.y
mul_pp r2.x, r2.x, r2.x
mul_pp r1.y, r1.y, r2.x
mad_pp r1.y, r0.x, r1.y, c6.y
add_pp r2.x, -r2.y, c6.y
mul_pp r2.z, r2.x, r2.x
mul_pp r2.z, r2.z, r2.z
mul_pp r2.x, r2.x, r2.z
mad_pp r0.x, r0.x, r2.x, c6.y
mul_pp r0.x, r1.y, r0.x
mul_pp r0.x, r2.y, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
mad_pp r0.w, c4.x, -r4.w, r4.w
mul_pp r2.xyz, r0.w, r3
mad_pp oC0.xyz, r2, r0, r1.xzww
mov_pp oC0.w, c6.y

"
}
SubProgram "d3d11 " {
// Stats: 73 math, 3 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [_ShadowMapTexture] 2D 1
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:adabadaa
eefieceddehlnhnchonkhjiejakcdaoacaglhmbnabaaaaaakialaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
adadaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaapalaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcfiakaaaaeaaaaaaajgacaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaae
aahabaaaabaaaaaaffffaaaafibiaaaeaahabaaaacaaaaaaffffaaaagcbaaaad
dcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaa
gcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaaddcbabaaa
agaaaaaagcbaaaadlcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
agaaaaaaaaaaaaajbcaabaaaaaaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaa
abeaaaaaaaaaiadpaaaaaaaiccaabaaaaaaaaaaaakaabaiaebaaaaaaaaaaaaaa
abeaaaaaaaaaiadpdcaaaaajccaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaa
njmohhdpabeaaaaaipmcpfdmcpaaaaafccaabaaaaaaaaaaabkaabaaaaaaaaaaa
aoaaaaahccaabaaaaaaaaaaaabeaaaaaaaaacaebbkaabaaaaaaaaaaadcaaaaaj
ecaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaabeaaaaaaaaaiadp
diaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaai
ecaabaaaaaaaaaaackaabaaaaaaaaaaabkiacaaaaaaaaaaaaiaaaaaabaaaaaah
icaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaa
egbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaa
acaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadgaaaaafbcaabaaa
acaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaa
dgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaadcaaaaakhcaabaaaadaaaaaa
egbcbaiaebaaaaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaaeaaaaaapgapbaaaaaaaaaaaegbcbaaaacaaaaaabaaaaaaiicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaiaebaaaaaaaeaaaaaadeaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaadaaaaaaegacbaaaadaaaaaadeaaaaahicaabaaaabaaaaaadkaabaaa
abaaaaaaabeaaaaagpbciddkeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhcaabaaaadaaaaaapgapbaaaabaaaaaaegacbaaaadaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
abaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahccaabaaaabaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaadeaaaaakhcaabaaaabaaaaaaegadbaaa
abaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaacpaaaaafecaabaaa
abaaaaaackaabaaaabaaaaaadiaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
ckaabaaaabaaaaaabjaaaaafccaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaah
ccaabaaaaaaaaaaackaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahecaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaaiecaabaaaabaaaaaa
ckaabaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaadcaaaaalecaabaaaaaaaaaaa
ckaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadp
dcaaaaajicaabaaaabaaaaaadkaabaaaaaaaaaaackaabaaaaaaaaaaackaabaaa
abaaaaaaaaaaaaaiicaabaaaaaaaaaaadkaabaiaebaaaaaaaaaaaaaaabeaaaaa
aaaaiadpdcaaaaajecaabaaaaaaaaaaaakaabaaaabaaaaaackaabaaaaaaaaaaa
ckaabaaaabaaaaaadcaaaaajecaabaaaaaaaaaaackaabaaaaaaaaaaadkaabaaa
abaaaaaaabeaaaaabhlhnbdiaoaaaaakecaabaaaaaaaaaaaaceaaaaaaaaaiadp
aaaaiadpaaaaiadpaaaaiadpckaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaa
abaaaaaabkaabaaaaaaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaa
akiacaaaaaaaaaaaaiaaaaaadeaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
abeaaaaaaaaaaaaaaoaaaaahmcaabaaaabaaaaaaagbebaaaahaaaaaapgbpbaaa
ahaaaaaaefaaaaajpcaabaaaacaaaaaaogakbaaaabaaaaaaeghobaaaacaaaaaa
aagabaaaabaaaaaaefaaaaajpcaabaaaadaaaaaaegbabaaaagaaaaaaeghobaaa
abaaaaaaaagabaaaacaaaaaadiaaaaahecaabaaaaaaaaaaaakaabaaaacaaaaaa
dkaabaaaadaaaaaadiaaaaaihcaabaaaacaaaaaakgakbaaaaaaaaaaaegiccaaa
aaaaaaaaagaaaaaadiaaaaahhcaabaaaadaaaaaafgafbaaaaaaaaaaaegacbaaa
acaaaaaaaaaaaaaiccaabaaaaaaaaaaabkaabaiaebaaaaaaabaaaaaaabeaaaaa
aaaaiadpdiaaaaahecaabaaaaaaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaa
apaaaaahbcaabaaaaaaaaaaakgakbaaaaaaaaaaaagaabaaaaaaaaaaaaaaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaaaaaaaalpdiaaaaahecaabaaa
aaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahecaabaaaaaaaaaaa
ckaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaabkaabaaa
aaaaaaaackaabaaaaaaaaaaaefaaaaajpcaabaaaaeaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaaaaaaaaadcaaaaamocaabaaaabaaaaaaagijcaaa
aaaaaaaaajaaaaaaagajbaaaaeaaaaaaagijcaiaebaaaaaaaaaaaaaaacaaaaaa
diaaaaaihcaabaaaaeaaaaaaegacbaaaaeaaaaaaegiccaaaaaaaaaaaajaaaaaa
dcaaaaalocaabaaaabaaaaaakgikcaaaaaaaaaaaanaaaaaafgaobaaaabaaaaaa
agijcaaaaaaaaaaaacaaaaaaaaaaaaalhcaabaaaafaaaaaajgahbaiaebaaaaaa
abaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaaaaadcaaaaajocaabaaa
abaaaaaaagajbaaaafaaaaaafgafbaaaaaaaaaaafgaobaaaabaaaaaadiaaaaah
ocaabaaaabaaaaaafgaobaaaabaaaaaaagajbaaaadaaaaaadiaaaaahccaabaaa
aaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaa
aaaaaaaabkaabaaaaaaaaaaadcaaaaajccaabaaaaaaaaaaaakaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaiadpaaaaaaaiecaabaaaaaaaaaaaakaabaia
ebaaaaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaahicaabaaaaaaaaaaackaabaaa
aaaaaaaackaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahecaabaaaaaaaaaaackaabaaaaaaaaaaadkaabaaa
aaaaaaaadcaaaaajbcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaa
abeaaaaaaaaaiadpdiaaaaahbcaabaaaaaaaaaaabkaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaabaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadcaaaaan
icaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaa
acaaaaaadkiacaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaa
aaaaaaaaegacbaaaaeaaaaaadcaaaaajhccabaaaaaaaaaaaegacbaaaacaaaaaa
egacbaaaaaaaaaaajgahbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaa
aaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 92 math, 3 textures
Keywords { "POINT" "SHADOWS_CUBE" }
Vector 5 [_Color]
Float 7 [_Glossiness]
Vector 3 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Float 6 [_Metallic]
Vector 2 [unity_ColorSpaceDielectricSpec]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] CUBE 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_3_0
def c8, 0.970000029, 1, 0, 0.00100000005
def c9, 31.622776, 9.99999975e-005, 0.967999995, 0.0299999993
def c10, 10, -0.5, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_cube s1
dcl_2d s2
mov r0.y, c8.y
add_pp r0.x, r0.y, -c7.x
add_pp r0.z, -r0.x, c8.y
mad_pp r0.z, r0.z, c9.z, c9.w
log_pp r0.z, r0.z
rcp r0.z, r0.z
mul_pp r0.z, r0.z, c10.x
mad_pp r0.w, r0.z, r0.z, c8.y
mul_pp r0.z, r0.z, r0.z
mul_pp r0.w, r0.w, c4.y
nrm_pp r1.xyz, v1
mov_pp r2.x, v2.w
mov_pp r2.y, v3.w
mov_pp r2.z, v4.w
dp3_pp r1.w, r2, r2
rsq_pp r1.w, r1.w
mad_pp r3.xyz, r2, r1.w, -r1
mul_pp r2.xyz, r1.w, r2
dp3_pp r1.w, r3, r3
add r2.w, -r1.w, c8.w
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c9.x, r1.w
mul_pp r3.xyz, r1.w, r3
nrm_pp r4.xyz, v4
dp3_pp r1.w, r4, r3
dp3_pp r2.w, r2, r3
dp3_pp r2.x, r4, r2
dp3_pp r1.x, r4, -r1
max_pp r2.y, r1.x, c8.z
max_pp r1.x, r2.x, c8.z
max_pp r1.y, r2.w, c8.z
max_pp r2.x, r1.w, c8.z
pow_pp r1.z, r2.x, r0.z
mul_pp r0.z, r0.w, r1.z
mul_pp r0.w, r0.x, r0.x
mul_pp r1.z, r0.w, c4.w
mad_pp r0.w, r0.w, -c4.w, r0.y
mad_pp r1.w, r2.y, r0.w, r1.z
add_pp r2.x, -r2.y, c8.y
mad_pp r0.w, r1.x, r0.w, r1.z
mad r0.w, r0.w, r1.w, c9.y
rcp_pp r0.w, r0.w
mul_pp r0.z, r0.z, r0.w
mul_pp r0.z, r1.x, r0.z
mul_pp r0.z, r0.z, c4.x
max_pp r1.z, r0.z, c8.z
dp3 r0.z, v6, v6
rsq r0.z, r0.z
rcp r0.z, r0.z
mul r0.z, r0.z, c0.w
texld r3, v6, s1
mad r0.z, r0.z, -c8.x, r3.x
cmp_pp r0.y, r0.z, r0.y, c1.x
dp3 r0.z, v5, v5
texld r3, r0.z, s2
mul_pp r0.y, r0.y, r3.x
mul_pp r0.yzw, r0.y, c3.xxyz
mul_pp r2.yzw, r0, r1.z
add_pp r1.z, -r1.y, c8.y
mul_pp r1.y, r1.y, r1.y
dp2add_pp r0.x, r1.y, r0.x, c10.y
mul_pp r1.y, r1.z, r1.z
mul_pp r1.y, r1.y, r1.y
mul_pp r1.y, r1.z, r1.y
texld r3, v0, s0
mov r4, c2
mad_pp r5.xyz, c5, r3, -r4
mul_pp r3.xyz, r3, c5
mad_pp r4.xyz, c6.x, r5, r4
lrp_pp r5.xyz, r1.y, c8.y, r4
mul_pp r1.yzw, r2, r5.xxyz
mul_pp r2.y, r2.x, r2.x
mul_pp r2.y, r2.y, r2.y
mul_pp r2.x, r2.x, r2.y
mad_pp r2.x, r0.x, r2.x, c8.y
add_pp r2.y, -r1.x, c8.y
mul_pp r2.z, r2.y, r2.y
mul_pp r2.z, r2.z, r2.z
mul_pp r2.y, r2.y, r2.z
mad_pp r0.x, r0.x, r2.y, c8.y
mul_pp r0.x, r2.x, r0.x
mul_pp r0.x, r1.x, r0.x
mul_pp r0.xyz, r0.x, r0.yzww
mad_pp r0.w, c6.x, -r4.w, r4.w
mul_pp r2.xyz, r0.w, r3
mad_pp oC0.xyz, r2, r0, r1.yzww
mov_pp oC0.w, c8.y

"
}
SubProgram "d3d11 " {
// Stats: 80 math, 3 textures
Keywords { "POINT" "SHADOWS_CUBE" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [_ShadowMapTexture] CUBE 1
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityShadows" 2
"ps_4_0
root12:adadadaa
eefiecedgkbnbigohiakkoglmddcdnehgocapdhbabaaaaaalmamaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
ahahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcgmalaaaaeaaaaaaanlacaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaaacaaaaaafjaaaaaeegiocaaa
acaaaaaabjaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaae
aahabaaaabaaaaaaffffaaaafidaaaaeaahabaaaacaaaaaaffffaaaagcbaaaad
dcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaa
gcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaadhcbabaaa
agaaaaaagcbaaaadhcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
agaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
agaabaaaaaaaaaaaegbcbaaaacaaaaaadgaaaaafbcaabaaaabaaaaaadkbabaaa
adaaaaaadgaaaaafccaabaaaabaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaa
abaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaak
hcaabaaaacaaaaaaegacbaaaabaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaa
aaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaadeaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaagpbciddkeeaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaaaaaaaaaa
egacbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaa
afaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaa
adaaaaaapgapbaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaadaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaacaaaaaabaaaaaahbcaabaaaabaaaaaaegacbaaaadaaaaaa
egacbaaaabaaaaaabaaaaaaibcaabaaaaaaaaaaaegacbaaaadaaaaaaegacbaia
ebaaaaaaaaaaaaaadeaaaaakgcaabaaaaaaaaaaaagadbaaaabaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadeaaaaakjcaabaaaaaaaaaaaagambaaa
aaaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaacpaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaaaaaaaaajbcaabaaaabaaaaaadkiacaiaebaaaaaa
aaaaaaaaanaaaaaaabeaaaaaaaaaiadpaaaaaaaiccaabaaaabaaaaaaakaabaia
ebaaaaaaabaaaaaaabeaaaaaaaaaiadpdcaaaaajccaabaaaabaaaaaabkaabaaa
abaaaaaaabeaaaaanjmohhdpabeaaaaaipmcpfdmcpaaaaafccaabaaaabaaaaaa
bkaabaaaabaaaaaaaoaaaaahccaabaaaabaaaaaaabeaaaaaaaaacaebbkaabaaa
abaaaaaadiaaaaahecaabaaaabaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaa
dcaaaaajccaabaaaabaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaaabeaaaaa
aaaaiadpdiaaaaaiccaabaaaabaaaaaabkaabaaaabaaaaaabkiacaaaaaaaaaaa
aiaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaackaabaaaabaaaaaa
bjaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaa
bkaabaaaabaaaaaadkaabaaaaaaaaaaadiaaaaahccaabaaaabaaaaaaakaabaaa
abaaaaaaakaabaaaabaaaaaadiaaaaaiecaabaaaabaaaaaabkaabaaaabaaaaaa
dkiacaaaaaaaaaaaaiaaaaaadcaaaaalccaabaaaabaaaaaabkaabaiaebaaaaaa
abaaaaaadkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadpdcaaaaajicaabaaa
abaaaaaaakaabaaaaaaaaaaabkaabaaaabaaaaaackaabaaaabaaaaaadcaaaaaj
ccaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaabaaaaaackaabaaaabaaaaaa
dcaaaaajccaabaaaabaaaaaabkaabaaaabaaaaaadkaabaaaabaaaaaaabeaaaaa
bhlhnbdiaoaaaaakccaabaaaabaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadp
aaaaiadpbkaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
bkaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaaiicaabaaaaaaaaaaadkaabaaaaaaaaaaaakiacaaaaaaaaaaa
aiaaaaaadeaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaa
baaaaaahccaabaaaabaaaaaaegbcbaaaahaaaaaaegbcbaaaahaaaaaaelaaaaaf
ccaabaaaabaaaaaabkaabaaaabaaaaaadiaaaaaiccaabaaaabaaaaaabkaabaaa
abaaaaaadkiacaaaabaaaaaaabaaaaaadiaaaaahccaabaaaabaaaaaabkaabaaa
abaaaaaaabeaaaaaomfbhidpefaaaaajpcaabaaaacaaaaaaegbcbaaaahaaaaaa
eghobaaaacaaaaaaaagabaaaabaaaaaadbaaaaahccaabaaaabaaaaaaakaabaaa
acaaaaaabkaabaaaabaaaaaadhaaaaakccaabaaaabaaaaaabkaabaaaabaaaaaa
akiacaaaacaaaaaabiaaaaaaabeaaaaaaaaaiadpbaaaaaahecaabaaaabaaaaaa
egbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaajpcaabaaaacaaaaaakgakbaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaadiaaaaahccaabaaaabaaaaaa
bkaabaaaabaaaaaaakaabaaaacaaaaaadiaaaaaiocaabaaaabaaaaaafgafbaaa
abaaaaaaagijcaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaa
aaaaaaaajgahbaaaabaaaaaaaaaaaaaljcaabaaaaaaaaaaaagaibaiaebaaaaaa
aaaaaaaaaceaaaaaaaaaiadpaaaaaaaaaaaaaaaaaaaaiadpdiaaaaahecaabaaa
aaaaaaaackaabaaaaaaaaaaackaabaaaaaaaaaaaapaaaaahecaabaaaaaaaaaaa
kgakbaaaaaaaaaaaagaabaaaabaaaaaaaaaaaaahecaabaaaaaaaaaaackaabaaa
aaaaaaaaabeaaaaaaaaaaalpdiaaaaahbcaabaaaabaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaaakaabaaa
abaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaa
efaaaaajpcaabaaaadaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadcaaaaamhcaabaaaaeaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaa
adaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaadaaaaaa
egacbaaaadaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaaeaaaaaa
kgikcaaaaaaaaaaaanaaaaaaegacbaaaaeaaaaaaegiccaaaaaaaaaaaacaaaaaa
aaaaaaalhcaabaaaafaaaaaaegacbaiaebaaaaaaaeaaaaaaaceaaaaaaaaaiadp
aaaaiadpaaaaiadpaaaaaaaadcaaaaajhcaabaaaaeaaaaaaegacbaaaafaaaaaa
pgapbaaaaaaaaaaaegacbaaaaeaaaaaadiaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaaaaeaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaadkaabaaaaaaaaaaa
dcaaaaajbcaabaaaaaaaaaaackaabaaaaaaaaaaaakaabaaaaaaaaaaaabeaaaaa
aaaaiadpaaaaaaaiicaabaaaaaaaaaaabkaabaiaebaaaaaaaaaaaaaaabeaaaaa
aaaaiadpdiaaaaahbcaabaaaabaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadcaaaaajecaabaaa
aaaaaaaackaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaiadpdiaaaaah
bcaabaaaaaaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaadiaaaaahbcaabaaa
aaaaaaaabkaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
agaabaaaaaaaaaaajgahbaaaabaaaaaadcaaaaanicaabaaaaaaaaaaackiacaia
ebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaa
acaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaa
dcaaaaajhccabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaegacbaaa
acaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 93 math, 4 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Vector 5 [_Color]
Float 7 [_Glossiness]
Vector 3 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Float 6 [_Metallic]
Vector 2 [unity_ColorSpaceDielectricSpec]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] CUBE 1
SetTexture 2 [_LightTexture0] CUBE 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_3_0
def c8, 0.970000029, 1, 0, 0.00100000005
def c9, 31.622776, 9.99999975e-005, 0.967999995, 0.0299999993
def c10, 10, -0.5, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_cube s1
dcl_cube s2
dcl_2d s3
dp3 r0.x, v6, v6
rsq r0.x, r0.x
rcp r0.x, r0.x
mul r0.x, r0.x, c0.w
texld r1, v6, s1
mad r0.x, r0.x, -c8.x, r1.x
mov r0.y, c8.y
cmp_pp r0.x, r0.x, r0.y, c1.x
dp3 r0.z, v5, v5
texld r1, r0.z, s3
texld r2, v5, s2
mul r0.z, r1.x, r2.w
mul_pp r0.x, r0.x, r0.z
mul_pp r0.xzw, r0.x, c3.xyyz
add_pp r1.x, r0.y, -c7.x
add_pp r1.y, -r1.x, c8.y
mad_pp r1.y, r1.y, c9.z, c9.w
log_pp r1.y, r1.y
rcp r1.y, r1.y
mul_pp r1.y, r1.y, c10.x
mad_pp r1.z, r1.y, r1.y, c8.y
mul_pp r1.y, r1.y, r1.y
mul_pp r1.z, r1.z, c4.y
nrm_pp r2.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r1.w, r3, r3
rsq_pp r1.w, r1.w
mad_pp r4.xyz, r3, r1.w, -r2
mul_pp r3.xyz, r1.w, r3
dp3_pp r1.w, r4, r4
add r2.w, -r1.w, c8.w
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c9.x, r1.w
mul_pp r4.xyz, r1.w, r4
nrm_pp r5.xyz, v4
dp3_pp r1.w, r5, r4
dp3_pp r2.w, r3, r4
dp3_pp r3.x, r5, r3
dp3_pp r2.x, r5, -r2
max_pp r3.y, r2.x, c8.z
max_pp r2.x, r3.x, c8.z
max_pp r3.x, r2.w, c8.z
max_pp r2.y, r1.w, c8.z
pow_pp r3.z, r2.y, r1.y
mul_pp r1.y, r1.z, r3.z
mul_pp r1.z, r1.x, r1.x
mul_pp r1.w, r1.z, c4.w
mad_pp r0.y, r1.z, -c4.w, r0.y
mad_pp r1.z, r3.y, r0.y, r1.w
add_pp r2.y, -r3.y, c8.y
mad_pp r0.y, r2.x, r0.y, r1.w
mad r0.y, r0.y, r1.z, c9.y
rcp_pp r0.y, r0.y
mul_pp r0.y, r1.y, r0.y
mul_pp r0.y, r2.x, r0.y
mul_pp r0.y, r0.y, c4.x
max_pp r1.y, r0.y, c8.z
mul_pp r1.yzw, r0.xxzw, r1.y
add_pp r0.y, -r3.x, c8.y
mul_pp r2.z, r3.x, r3.x
dp2add_pp r1.x, r2.z, r1.x, c10.y
mul_pp r2.z, r0.y, r0.y
mul_pp r2.z, r2.z, r2.z
mul_pp r0.y, r0.y, r2.z
texld r3, v0, s0
mov r4, c2
mad_pp r5.xyz, c5, r3, -r4
mul_pp r3.xyz, r3, c5
mad_pp r4.xyz, c6.x, r5, r4
lrp_pp r5.xyz, r0.y, c8.y, r4
mul_pp r1.yzw, r1, r5.xxyz
mul_pp r0.y, r2.y, r2.y
mul_pp r0.y, r0.y, r0.y
mul_pp r0.y, r2.y, r0.y
mad_pp r0.y, r1.x, r0.y, c8.y
add_pp r2.y, -r2.x, c8.y
mul_pp r2.z, r2.y, r2.y
mul_pp r2.z, r2.z, r2.z
mul_pp r2.y, r2.y, r2.z
mad_pp r1.x, r1.x, r2.y, c8.y
mul_pp r0.y, r0.y, r1.x
mul_pp r0.y, r2.x, r0.y
mul_pp r0.xyz, r0.y, r0.xzww
mad_pp r0.w, c6.x, -r4.w, r4.w
mul_pp r2.xyz, r0.w, r3
mad_pp oC0.xyz, r2, r0, r1.yzww
mov_pp oC0.w, c8.y

"
}
SubProgram "d3d11 " {
// Stats: 83 math, 4 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTextureB0] 2D 3
SetTexture 2 [_LightTexture0] CUBE 2
SetTexture 3 [_ShadowMapTexture] CUBE 1
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityShadows" 2
"ps_4_0
root12:aeadaeaa
eefiecedbljmnfnoigkneajhemfeecncalhlbmmiabaaaaaadmanaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
ahahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcomalaaaaeaaaaaaaplacaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaaacaaaaaafjaaaaaeegiocaaa
acaaaaaabjaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafidaaaaeaahabaaa
acaaaaaaffffaaaafidaaaaeaahabaaaadaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaad
icbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaa
gcbaaaadhcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacagaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaahaaaaaaegbcbaaaahaaaaaaelaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaaaabaaaaaaabaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaabeaaaaaomfbhidpefaaaaajpcaabaaaabaaaaaaegbcbaaaahaaaaaa
eghobaaaadaaaaaaaagabaaaabaaaaaadbaaaaahbcaabaaaaaaaaaaaakaabaaa
abaaaaaaakaabaaaaaaaaaaadhaaaaakbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
akiacaaaacaaaaaabiaaaaaaabeaaaaaaaaaiadpbaaaaaahccaabaaaaaaaaaaa
egbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaajpcaabaaaabaaaaaafgafbaaa
aaaaaaaaeghobaaaabaaaaaaaagabaaaadaaaaaaefaaaaajpcaabaaaacaaaaaa
egbcbaaaagaaaaaaeghobaaaacaaaaaaaagabaaaacaaaaaadiaaaaahccaabaaa
aaaaaaaaakaabaaaabaaaaaadkaabaaaacaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaabkaabaaaaaaaaaaadiaaaaaihcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegiccaaaaaaaaaaaagaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaa
acaaaaaaegbcbaaaacaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaaacaaaaaadgaaaaaf
bcaabaaaacaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaa
aeaaaaaadgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaakhcaabaaaadaaaaaaegacbaaaacaaaaaapgapbaaa
aaaaaaaaegacbaiaebaaaaaaabaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaa
aaaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaadaaaaaa
egacbaaaadaaaaaadeaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
gpbciddkeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaa
adaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaabaaaaaahicaabaaaaaaaaaaa
egbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahhcaabaaaaeaaaaaapgapbaaaaaaaaaaaegbcbaaaafaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaaeaaaaaaegacbaaaadaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
acaaaaaaegacbaaaaeaaaaaaegacbaaaacaaaaaabaaaaaaibcaabaaaabaaaaaa
egacbaaaaeaaaaaaegacbaiaebaaaaaaabaaaaaadeaaaaahccaabaaaabaaaaaa
akaabaaaacaaaaaaabeaaaaaaaaaaaaadeaaaaakfcaabaaaabaaaaaaagadbaaa
abaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadeaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaacpaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaaaaaaaaajicaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaa
anaaaaaaabeaaaaaaaaaiadpaaaaaaaibcaabaaaacaaaaaadkaabaiaebaaaaaa
abaaaaaaabeaaaaaaaaaiadpdcaaaaajbcaabaaaacaaaaaaakaabaaaacaaaaaa
abeaaaaanjmohhdpabeaaaaaipmcpfdmcpaaaaafbcaabaaaacaaaaaaakaabaaa
acaaaaaaaoaaaaahbcaabaaaacaaaaaaabeaaaaaaaaacaebakaabaaaacaaaaaa
diaaaaahccaabaaaacaaaaaaakaabaaaacaaaaaaakaabaaaacaaaaaadcaaaaaj
bcaabaaaacaaaaaaakaabaaaacaaaaaaakaabaaaacaaaaaaabeaaaaaaaaaiadp
diaaaaaibcaabaaaacaaaaaaakaabaaaacaaaaaabkiacaaaaaaaaaaaaiaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaabkaabaaaacaaaaaabjaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaa
acaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaacaaaaaadkaabaaaabaaaaaa
dkaabaaaabaaaaaadiaaaaaiccaabaaaacaaaaaaakaabaaaacaaaaaadkiacaaa
aaaaaaaaaiaaaaaadcaaaaalbcaabaaaacaaaaaaakaabaiaebaaaaaaacaaaaaa
dkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadpdcaaaaajecaabaaaacaaaaaa
akaabaaaabaaaaaaakaabaaaacaaaaaabkaabaaaacaaaaaaaaaaaaaibcaabaaa
abaaaaaaakaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadpdcaaaaajbcaabaaa
acaaaaaabkaabaaaabaaaaaaakaabaaaacaaaaaabkaabaaaacaaaaaadcaaaaaj
bcaabaaaacaaaaaaakaabaaaacaaaaaackaabaaaacaaaaaaabeaaaaabhlhnbdi
aoaaaaakbcaabaaaacaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaiadp
akaabaaaacaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaa
acaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaaabaaaaaadkaabaaaaaaaaaaa
diaaaaaiicaabaaaaaaaaaaadkaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaa
deaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaadiaaaaah
hcaabaaaacaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaaaaaaaaiicaabaaa
aaaaaaaackaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaahecaabaaa
abaaaaaackaabaaaabaaaaaackaabaaaabaaaaaaapaaaaahecaabaaaabaaaaaa
kgakbaaaabaaaaaapgapbaaaabaaaaaaaaaaaaahecaabaaaabaaaaaackaabaaa
abaaaaaaabeaaaaaaaaaaalpdiaaaaahicaabaaaabaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaadkaabaaa
abaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaabaaaaaa
efaaaaajpcaabaaaadaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadcaaaaamhcaabaaaaeaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaa
adaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaadaaaaaa
egacbaaaadaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaaeaaaaaa
kgikcaaaaaaaaaaaanaaaaaaegacbaaaaeaaaaaaegiccaaaaaaaaaaaacaaaaaa
aaaaaaalhcaabaaaafaaaaaaegacbaiaebaaaaaaaeaaaaaaaceaaaaaaaaaiadp
aaaaiadpaaaaiadpaaaaaaaadcaaaaajhcaabaaaaeaaaaaaegacbaaaafaaaaaa
pgapbaaaaaaaaaaaegacbaaaaeaaaaaadiaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaaaaeaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaaabaaaaaa
akaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaaabaaaaaadkaabaaaaaaaaaaa
dcaaaaajicaabaaaaaaaaaaackaabaaaabaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaiadpaaaaaaaibcaabaaaabaaaaaabkaabaiaebaaaaaaabaaaaaaabeaaaaa
aaaaiadpdiaaaaahicaabaaaabaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaa
diaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
bcaabaaaabaaaaaaakaabaaaabaaaaaadkaabaaaabaaaaaadcaaaaajbcaabaaa
abaaaaaackaabaaaabaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaahicaabaaa
aaaaaaaabkaabaaaabaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaanicaabaaaaaaaaaaackiacaia
ebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaa
acaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaa
dcaaaaajhccabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaegacbaaa
acaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 101 math, 7 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SHADOWS_NATIVE" }
Vector 8 [_Color]
Float 10 [_Glossiness]
Vector 6 [_LightColor0]
Vector 4 [_LightShadowData]
Float 9 [_Metallic]
Vector 0 [_ShadowOffsets0]
Vector 1 [_ShadowOffsets1]
Vector 2 [_ShadowOffsets2]
Vector 3 [_ShadowOffsets3]
Vector 5 [unity_ColorSpaceDielectricSpec]
Vector 7 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_3_0
def c11, 0.5, 0, 1, 0.25
def c12, 0.00100000005, 31.622776, 9.99999975e-005, 10
def c13, 0.967999995, 0.0299999993, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5
dcl_texcoord6 v6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
mov r0.z, c11.z
rcp r0.x, v6.w
mad r1, v6, r0.x, c0
texldp_pp r1, r1, s1
mad r2, v6, r0.x, c1
texldp_pp r2, r2, s1
mov_pp r1.y, r2.x
mad r2, v6, r0.x, c2
mad r3, v6, r0.x, c3
texldp_pp r3, r3, s1
mov_pp r1.w, r3.x
texldp_pp r2, r2, s1
mov_pp r1.z, r2.x
lrp_pp r2, r1, r0.z, c4.x
dp4_pp r0.x, r2, c11.w
rcp r0.y, v5.w
mad r0.yw, v5.xxzy, r0.y, c11.x
texld_pp r1, r0.ywzw, s2
dp3 r0.y, v5, v5
texld_pp r2, r0.y, s3
mul r0.y, r1.w, r2.x
cmp r0.y, -v5.z, c11.y, r0.y
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyw, r0.x, c6.xyzz
add_pp r1.x, r0.z, -c10.x
add_pp r1.y, -r1.x, c11.z
mad_pp r1.y, r1.y, c13.x, c13.y
log_pp r1.y, r1.y
rcp r1.y, r1.y
mul_pp r1.y, r1.y, c12.w
mad_pp r1.z, r1.y, r1.y, c11.z
mul_pp r1.y, r1.y, r1.y
mul_pp r1.z, r1.z, c7.y
nrm_pp r2.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r1.w, r3, r3
rsq_pp r1.w, r1.w
mad_pp r4.xyz, r3, r1.w, -r2
mul_pp r3.xyz, r1.w, r3
dp3_pp r1.w, r4, r4
add r2.w, -r1.w, c12.x
rsq_pp r1.w, r1.w
cmp_pp r1.w, r2.w, c12.y, r1.w
mul_pp r4.xyz, r1.w, r4
nrm_pp r5.xyz, v4
dp3_pp r1.w, r5, r4
dp3_pp r2.w, r3, r4
dp3_pp r3.x, r5, r3
dp3_pp r2.x, r5, -r2
max_pp r3.y, r2.x, c11.y
max_pp r2.x, r3.x, c11.y
max_pp r3.x, r2.w, c11.y
max_pp r2.y, r1.w, c11.y
pow_pp r3.z, r2.y, r1.y
mul_pp r1.y, r1.z, r3.z
mul_pp r1.z, r1.x, r1.x
mul_pp r1.w, r1.z, c7.w
mad_pp r0.z, r1.z, -c7.w, r0.z
mad_pp r1.z, r3.y, r0.z, r1.w
add_pp r2.y, -r3.y, c11.z
mad_pp r0.z, r2.x, r0.z, r1.w
mad r0.z, r0.z, r1.z, c12.z
rcp_pp r0.z, r0.z
mul_pp r0.z, r1.y, r0.z
mul_pp r0.z, r2.x, r0.z
mul_pp r0.z, r0.z, c7.x
max_pp r1.y, r0.z, c11.y
mul_pp r1.yzw, r0.xxyw, r1.y
add_pp r0.z, -r3.x, c11.z
mul_pp r2.z, r3.x, r3.x
dp2add_pp r1.x, r2.z, r1.x, -c11.x
mul_pp r2.z, r0.z, r0.z
mul_pp r2.z, r2.z, r2.z
mul_pp r0.z, r0.z, r2.z
texld r3, v0, s0
mov r4, c5
mad_pp r5.xyz, c8, r3, -r4
mul_pp r3.xyz, r3, c8
mad_pp r4.xyz, c9.x, r5, r4
lrp_pp r5.xyz, r0.z, c11.z, r4
mul_pp r1.yzw, r1, r5.xxyz
mul_pp r0.z, r2.y, r2.y
mul_pp r0.z, r0.z, r0.z
mul_pp r0.z, r2.y, r0.z
mad_pp r0.z, r1.x, r0.z, c11.z
add_pp r2.y, -r2.x, c11.z
mul_pp r2.z, r2.y, r2.y
mul_pp r2.z, r2.z, r2.z
mul_pp r2.y, r2.y, r2.z
mad_pp r1.x, r1.x, r2.y, c11.z
mul_pp r0.z, r0.z, r1.x
mul_pp r0.z, r2.x, r0.z
mul_pp r0.xyz, r0.z, r0.xyww
mad_pp r0.w, c9.x, -r4.w, r4.w
mul_pp r2.xyz, r0.w, r3
mad_pp oC0.xyz, r2, r0, r1.yzww
mov_pp oC0.w, c11.z

"
}
SubProgram "d3d11 " {
// Stats: 91 math, 3 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_SOFT" "SHADOWS_NATIVE" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [_LightTextureB0] 2D 3
SetTexture 3 [_ShadowMapTexture] 2D 1
ConstBuffer "$Globals" 384
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
Vector 256 [_ShadowOffsets0]
Vector 272 [_ShadowOffsets1]
Vector 288 [_ShadowOffsets2]
Vector 304 [_ShadowOffsets3]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityShadows" 1
"ps_4_0
root12:aeacaeaa
eefiecedldlcicbdaafghhaiokcgnpofaldimkhjabaaaaaalaaoaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apapaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaapapaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcgaanaaaaeaaaaaaafiadaaaafjaaaaaeegiocaaa
aaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaabjaaaaaafkaaaaadaagabaaa
aaaaaaaafkaiaaadaagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafkaaaaad
aagabaaaadaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaafibiaaaeaahabaaaacaaaaaaffffaaaafibiaaaeaahabaaa
adaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaa
afaaaaaagcbaaaadpcbabaaaagaaaaaagcbaaaadpcbabaaaahaaaaaagfaaaaad
pccabaaaaaaaaaaagiaaaaacagaaaaaaaaaaaaajbcaabaaaaaaaaaaaakiacaia
ebaaaaaaabaaaaaabiaaaaaaabeaaaaaaaaaiadpaoaaaaahocaabaaaaaaaaaaa
agbjbaaaahaaaaaapgbpbaaaahaaaaaaaaaaaaaihcaabaaaabaaaaaajgahbaaa
aaaaaaaaegiccaaaaaaaaaaabaaaaaaaehaaaaalbcaabaaaabaaaaaaegaabaaa
abaaaaaaaghabaaaadaaaaaaaagabaaaabaaaaaackaabaaaabaaaaaaaaaaaaai
hcaabaaaacaaaaaajgahbaaaaaaaaaaaegiccaaaaaaaaaaabbaaaaaaehaaaaal
ccaabaaaabaaaaaaegaabaaaacaaaaaaaghabaaaadaaaaaaaagabaaaabaaaaaa
ckaabaaaacaaaaaaaaaaaaaihcaabaaaacaaaaaajgahbaaaaaaaaaaaegiccaaa
aaaaaaaabcaaaaaaaaaaaaaiocaabaaaaaaaaaaafgaobaaaaaaaaaaaagijcaaa
aaaaaaaabdaaaaaaehaaaaalicaabaaaabaaaaaajgafbaaaaaaaaaaaaghabaaa
adaaaaaaaagabaaaabaaaaaadkaabaaaaaaaaaaaehaaaaalecaabaaaabaaaaaa
egaabaaaacaaaaaaaghabaaaadaaaaaaaagabaaaabaaaaaackaabaaaacaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegaobaaaabaaaaaaagaabaaaaaaaaaaaagiacaaa
abaaaaaabiaaaaaabbaaaaakbcaabaaaaaaaaaaaegaobaaaaaaaaaaaaceaaaaa
aaaaiadoaaaaiadoaaaaiadoaaaaiadoaoaaaaahgcaabaaaaaaaaaaaagbbbaaa
agaaaaaapgbpbaaaagaaaaaaaaaaaaakgcaabaaaaaaaaaaafgagbaaaaaaaaaaa
aceaaaaaaaaaaaaaaaaaaadpaaaaaadpaaaaaaaaefaaaaajpcaabaaaabaaaaaa
jgafbaaaaaaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaadbaaaaahccaabaaa
aaaaaaaaabeaaaaaaaaaaaaackbabaaaagaaaaaaabaaaaahccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaabeaaaaaaaaaiadpdiaaaaahccaabaaaaaaaaaaadkaabaaa
abaaaaaabkaabaaaaaaaaaaabaaaaaahecaabaaaaaaaaaaaegbcbaaaagaaaaaa
egbcbaaaagaaaaaaefaaaaajpcaabaaaabaaaaaakgakbaaaaaaaaaaaeghobaaa
acaaaaaaaagabaaaadaaaaaadiaaaaahccaabaaaaaaaaaaabkaabaaaaaaaaaaa
akaabaaaabaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaaaaaaaaaabkaabaaa
aaaaaaaadiaaaaaihcaabaaaaaaaaaaaagaabaaaaaaaaaaaegiccaaaaaaaaaaa
agaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaacaaaaaaegbcbaaaacaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaa
pgapbaaaaaaaaaaaegbcbaaaacaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaa
adaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaa
acaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaacaaaaaa
egacbaaaacaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaak
hcaabaaaadaaaaaaegacbaaaacaaaaaapgapbaaaaaaaaaaaegacbaiaebaaaaaa
abaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaacaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaadaaaaaaegacbaaaadaaaaaadeaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaagpbciddkeeaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaadaaaaaapgapbaaaaaaaaaaa
egacbaaaadaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaa
afaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaa
aeaaaaaapgapbaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaaeaaaaaaegacbaaaadaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
acaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaacaaaaaaegacbaaaaeaaaaaa
egacbaaaacaaaaaabaaaaaaibcaabaaaabaaaaaaegacbaaaaeaaaaaaegacbaia
ebaaaaaaabaaaaaadeaaaaahccaabaaaabaaaaaaakaabaaaacaaaaaaabeaaaaa
aaaaaaaadeaaaaakfcaabaaaabaaaaaaagadbaaaabaaaaaaaceaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaadeaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
abeaaaaaaaaaaaaacpaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaaaaaaaaaj
icaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadp
aaaaaaaibcaabaaaacaaaaaadkaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadp
dcaaaaajbcaabaaaacaaaaaaakaabaaaacaaaaaaabeaaaaanjmohhdpabeaaaaa
ipmcpfdmcpaaaaafbcaabaaaacaaaaaaakaabaaaacaaaaaaaoaaaaahbcaabaaa
acaaaaaaabeaaaaaaaaacaebakaabaaaacaaaaaadiaaaaahccaabaaaacaaaaaa
akaabaaaacaaaaaaakaabaaaacaaaaaadcaaaaajbcaabaaaacaaaaaaakaabaaa
acaaaaaaakaabaaaacaaaaaaabeaaaaaaaaaiadpdiaaaaaibcaabaaaacaaaaaa
akaabaaaacaaaaaabkiacaaaaaaaaaaaaiaaaaaadiaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaabkaabaaaacaaaaaabjaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaaacaaaaaadkaabaaaaaaaaaaa
diaaaaahbcaabaaaacaaaaaadkaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaai
ccaabaaaacaaaaaaakaabaaaacaaaaaadkiacaaaaaaaaaaaaiaaaaaadcaaaaal
bcaabaaaacaaaaaaakaabaiaebaaaaaaacaaaaaadkiacaaaaaaaaaaaaiaaaaaa
abeaaaaaaaaaiadpdcaaaaajecaabaaaacaaaaaaakaabaaaabaaaaaaakaabaaa
acaaaaaabkaabaaaacaaaaaaaaaaaaaibcaabaaaabaaaaaaakaabaiaebaaaaaa
abaaaaaaabeaaaaaaaaaiadpdcaaaaajbcaabaaaacaaaaaabkaabaaaabaaaaaa
akaabaaaacaaaaaabkaabaaaacaaaaaadcaaaaajbcaabaaaacaaaaaaakaabaaa
acaaaaaackaabaaaacaaaaaaabeaaaaabhlhnbdiaoaaaaakbcaabaaaacaaaaaa
aceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaiadpakaabaaaacaaaaaadiaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaacaaaaaadiaaaaahicaabaaa
aaaaaaaabkaabaaaabaaaaaadkaabaaaaaaaaaaadiaaaaaiicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaadeaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaabeaaaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaaegacbaaa
aaaaaaaapgapbaaaaaaaaaaaaaaaaaaiicaabaaaaaaaaaaackaabaiaebaaaaaa
abaaaaaaabeaaaaaaaaaiadpdiaaaaahecaabaaaabaaaaaackaabaaaabaaaaaa
ckaabaaaabaaaaaaapaaaaahecaabaaaabaaaaaakgakbaaaabaaaaaapgapbaaa
abaaaaaaaaaaaaahecaabaaaabaaaaaackaabaaaabaaaaaaabeaaaaaaaaaaalp
diaaaaahicaabaaaabaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
icaabaaaabaaaaaadkaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaadkaabaaaabaaaaaaefaaaaajpcaabaaaadaaaaaa
egbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadcaaaaamhcaabaaa
aeaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaadaaaaaaegiccaiaebaaaaaa
aaaaaaaaacaaaaaadiaaaaaihcaabaaaadaaaaaaegacbaaaadaaaaaaegiccaaa
aaaaaaaaajaaaaaadcaaaaalhcaabaaaaeaaaaaakgikcaaaaaaaaaaaanaaaaaa
egacbaaaaeaaaaaaegiccaaaaaaaaaaaacaaaaaaaaaaaaalhcaabaaaafaaaaaa
egacbaiaebaaaaaaaeaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaaaaa
dcaaaaajhcaabaaaaeaaaaaaegacbaaaafaaaaaapgapbaaaaaaaaaaaegacbaaa
aeaaaaaadiaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaaeaaaaaa
diaaaaahicaabaaaaaaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahicaabaaa
aaaaaaaaakaabaaaabaaaaaadkaabaaaaaaaaaaadcaaaaajicaabaaaaaaaaaaa
ckaabaaaabaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaiadpaaaaaaaibcaabaaa
abaaaaaabkaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaahicaabaaa
abaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahicaabaaaabaaaaaa
dkaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaa
abaaaaaadkaabaaaabaaaaaadcaaaaajbcaabaaaabaaaaaackaabaaaabaaaaaa
akaabaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaaakaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaaabaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaanicaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaa
dkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaadcaaaaajhccabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaa
aaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 100 math, 6 textures
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Vector 5 [_Color]
Float 7 [_Glossiness]
Vector 3 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Float 6 [_Metallic]
Vector 2 [unity_ColorSpaceDielectricSpec]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] CUBE 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_3_0
def c8, 0.0078125, -0.0078125, 0.970000029, 1
def c9, 0.25, 0, 0.00100000005, 31.622776
def c10, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c11, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_cube s1
dcl_2d s2
dp3 r0.x, v6, v6
rsq r0.x, r0.x
rcp r0.x, r0.x
mul r0.x, r0.x, c0.w
add r0.yzw, c8.x, v6.xxyz
texld r1, r0.yzww, s1
add r0.yzw, c8.xyyx, v6.xxyz
texld r2, r0.yzww, s1
mov r1.y, r2.x
add r0.yzw, c8.xyxy, v6.xxyz
texld r2, r0.yzww, s1
mov r1.z, r2.x
add r0.yzw, c8.xxyy, v6.xxyz
texld r2, r0.yzww, s1
mov r1.w, r2.x
mad r0, r0.x, -c8.z, r1
mov r1.w, c8.w
cmp_pp r0, r0, r1.w, c1.x
dp4_pp r0.x, r0, c9.x
dp3 r0.y, v5, v5
texld r2, r0.y, s2
mul_pp r0.x, r0.x, r2.x
mul_pp r0.xyz, r0.x, c3
add_pp r0.w, r1.w, -c7.x
add_pp r1.x, -r0.w, c8.w
mad_pp r1.x, r1.x, c10.y, c10.z
log_pp r1.x, r1.x
rcp r1.x, r1.x
mul_pp r1.x, r1.x, c10.w
mad_pp r1.y, r1.x, r1.x, c8.w
mul_pp r1.x, r1.x, r1.x
mul_pp r1.y, r1.y, c4.y
nrm_pp r2.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r1.z, r3, r3
rsq_pp r1.z, r1.z
mad_pp r4.xyz, r3, r1.z, -r2
mul_pp r3.xyz, r1.z, r3
dp3_pp r1.z, r4, r4
add r2.w, -r1.z, c9.z
rsq_pp r1.z, r1.z
cmp_pp r1.z, r2.w, c9.w, r1.z
mul_pp r4.xyz, r1.z, r4
nrm_pp r5.xyz, v4
dp3_pp r1.z, r5, r4
dp3_pp r2.w, r3, r4
dp3_pp r3.x, r5, r3
dp3_pp r2.x, r5, -r2
max_pp r3.y, r2.x, c9.y
max_pp r2.x, r3.x, c9.y
max_pp r3.x, r2.w, c9.y
max_pp r2.y, r1.z, c9.y
pow_pp r3.z, r2.y, r1.x
mul_pp r1.x, r1.y, r3.z
mul_pp r1.y, r0.w, r0.w
mul_pp r1.z, r1.y, c4.w
mad_pp r1.y, r1.y, -c4.w, r1.w
mad_pp r1.w, r3.y, r1.y, r1.z
add_pp r2.y, -r3.y, c8.w
mad_pp r1.y, r2.x, r1.y, r1.z
mad r1.y, r1.y, r1.w, c10.x
rcp_pp r1.y, r1.y
mul_pp r1.x, r1.x, r1.y
mul_pp r1.x, r2.x, r1.x
mul_pp r1.x, r1.x, c4.x
max_pp r2.z, r1.x, c9.y
mul_pp r1.xyz, r0, r2.z
add_pp r1.w, -r3.x, c8.w
mul_pp r2.z, r3.x, r3.x
dp2add_pp r0.w, r2.z, r0.w, c11.x
mul_pp r2.z, r1.w, r1.w
mul_pp r2.z, r2.z, r2.z
mul_pp r1.w, r1.w, r2.z
texld r3, v0, s0
mov r4, c2
mad_pp r5.xyz, c5, r3, -r4
mul_pp r3.xyz, r3, c5
mad_pp r4.xyz, c6.x, r5, r4
lrp_pp r5.xyz, r1.w, c8.w, r4
mul_pp r1.xyz, r1, r5
mul_pp r1.w, r2.y, r2.y
mul_pp r1.w, r1.w, r1.w
mul_pp r1.w, r2.y, r1.w
mad_pp r1.w, r0.w, r1.w, c8.w
add_pp r2.y, -r2.x, c8.w
mul_pp r2.z, r2.y, r2.y
mul_pp r2.z, r2.z, r2.z
mul_pp r2.y, r2.y, r2.z
mad_pp r0.w, r0.w, r2.y, c8.w
mul_pp r0.w, r1.w, r0.w
mul_pp r0.w, r2.x, r0.w
mul_pp r0.xyz, r0.w, r0
mad_pp r0.w, c6.x, -r4.w, r4.w
mul_pp r2.xyz, r0.w, r3
mad_pp oC0.xyz, r2, r0, r1
mov_pp oC0.w, c8.w

"
}
SubProgram "d3d11 " {
// Stats: 87 math, 6 textures
Keywords { "POINT" "SHADOWS_CUBE" "SHADOWS_SOFT" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [_ShadowMapTexture] CUBE 1
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityShadows" 2
"ps_4_0
root12:adadadaa
eefiecedmgkdpjmlhdjfpjbofibkapgkdbfjlfihabaaaaaafmaoaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
ahahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcamanaaaaeaaaaaaaedadaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaaacaaaaaafjaaaaaeegiocaaa
acaaaaaabjaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaae
aahabaaaabaaaaaaffffaaaafidaaaaeaahabaaaacaaaaaaffffaaaagcbaaaad
dcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaa
gcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaadhcbabaaa
agaaaaaagcbaaaadhcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
agaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaahaaaaaaegbcbaaaahaaaaaa
elaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaaibcaabaaaaaaaaaaa
akaabaaaaaaaaaaadkiacaaaabaaaaaaabaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaabeaaaaaomfbhidpaaaaaaakocaabaaaaaaaaaaaagbjbaaa
ahaaaaaaaceaaaaaaaaaaaaaaaaaaadmaaaaaadmaaaaaadmefaaaaajpcaabaaa
abaaaaaajgahbaaaaaaaaaaaeghobaaaacaaaaaaaagabaaaabaaaaaaaaaaaaak
ocaabaaaaaaaaaaaagbjbaaaahaaaaaaaceaaaaaaaaaaaaaaaaaaalmaaaaaalm
aaaaaadmefaaaaajpcaabaaaacaaaaaajgahbaaaaaaaaaaaeghobaaaacaaaaaa
aagabaaaabaaaaaadgaaaaafccaabaaaabaaaaaaakaabaaaacaaaaaaaaaaaaak
ocaabaaaaaaaaaaaagbjbaaaahaaaaaaaceaaaaaaaaaaaaaaaaaaalmaaaaaadm
aaaaaalmefaaaaajpcaabaaaacaaaaaajgahbaaaaaaaaaaaeghobaaaacaaaaaa
aagabaaaabaaaaaadgaaaaafecaabaaaabaaaaaaakaabaaaacaaaaaaaaaaaaak
ocaabaaaaaaaaaaaagbjbaaaahaaaaaaaceaaaaaaaaaaaaaaaaaaadmaaaaaalm
aaaaaalmefaaaaajpcaabaaaacaaaaaajgahbaaaaaaaaaaaeghobaaaacaaaaaa
aagabaaaabaaaaaadgaaaaaficaabaaaabaaaaaaakaabaaaacaaaaaadbaaaaah
pcaabaaaaaaaaaaaegaobaaaabaaaaaaagaabaaaaaaaaaaadhaaaaanpcaabaaa
aaaaaaaaegaobaaaaaaaaaaaagiacaaaacaaaaaabiaaaaaaaceaaaaaaaaaiadp
aaaaiadpaaaaiadpaaaaiadpbbaaaaakbcaabaaaaaaaaaaaegaobaaaaaaaaaaa
aceaaaaaaaaaiadoaaaaiadoaaaaiadoaaaaiadobaaaaaahccaabaaaaaaaaaaa
egbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaajpcaabaaaabaaaaaafgafbaaa
aaaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaadiaaaaahbcaabaaaaaaaaaaa
akaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaaihcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegiccaaaaaaaaaaaagaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaa
acaaaaaaegbcbaaaacaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaaacaaaaaadgaaaaaf
bcaabaaaacaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaa
aeaaaaaadgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaakhcaabaaaadaaaaaaegacbaaaacaaaaaapgapbaaa
aaaaaaaaegacbaiaebaaaaaaabaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaa
aaaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaadaaaaaa
egacbaaaadaaaaaadeaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaa
gpbciddkeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaa
adaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaabaaaaaahicaabaaaaaaaaaaa
egbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahhcaabaaaaeaaaaaapgapbaaaaaaaaaaaegbcbaaaafaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaaeaaaaaaegacbaaaadaaaaaabaaaaaah
icaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
acaaaaaaegacbaaaaeaaaaaaegacbaaaacaaaaaabaaaaaaibcaabaaaabaaaaaa
egacbaaaaeaaaaaaegacbaiaebaaaaaaabaaaaaadeaaaaahccaabaaaabaaaaaa
akaabaaaacaaaaaaabeaaaaaaaaaaaaadeaaaaakfcaabaaaabaaaaaaagadbaaa
abaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadeaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaacpaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaaaaaaaaajicaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaa
anaaaaaaabeaaaaaaaaaiadpaaaaaaaibcaabaaaacaaaaaadkaabaiaebaaaaaa
abaaaaaaabeaaaaaaaaaiadpdcaaaaajbcaabaaaacaaaaaaakaabaaaacaaaaaa
abeaaaaanjmohhdpabeaaaaaipmcpfdmcpaaaaafbcaabaaaacaaaaaaakaabaaa
acaaaaaaaoaaaaahbcaabaaaacaaaaaaabeaaaaaaaaacaebakaabaaaacaaaaaa
diaaaaahccaabaaaacaaaaaaakaabaaaacaaaaaaakaabaaaacaaaaaadcaaaaaj
bcaabaaaacaaaaaaakaabaaaacaaaaaaakaabaaaacaaaaaaabeaaaaaaaaaiadp
diaaaaaibcaabaaaacaaaaaaakaabaaaacaaaaaabkiacaaaaaaaaaaaaiaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaabkaabaaaacaaaaaabjaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaa
acaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaacaaaaaadkaabaaaabaaaaaa
dkaabaaaabaaaaaadiaaaaaiccaabaaaacaaaaaaakaabaaaacaaaaaadkiacaaa
aaaaaaaaaiaaaaaadcaaaaalbcaabaaaacaaaaaaakaabaiaebaaaaaaacaaaaaa
dkiacaaaaaaaaaaaaiaaaaaaabeaaaaaaaaaiadpdcaaaaajecaabaaaacaaaaaa
akaabaaaabaaaaaaakaabaaaacaaaaaabkaabaaaacaaaaaaaaaaaaaibcaabaaa
abaaaaaaakaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadpdcaaaaajbcaabaaa
acaaaaaabkaabaaaabaaaaaaakaabaaaacaaaaaabkaabaaaacaaaaaadcaaaaaj
bcaabaaaacaaaaaaakaabaaaacaaaaaackaabaaaacaaaaaaabeaaaaabhlhnbdi
aoaaaaakbcaabaaaacaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaiadp
akaabaaaacaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaa
acaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaaabaaaaaadkaabaaaaaaaaaaa
diaaaaaiicaabaaaaaaaaaaadkaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaa
deaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaadiaaaaah
hcaabaaaacaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaaaaaaaaiicaabaaa
aaaaaaaackaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaahecaabaaa
abaaaaaackaabaaaabaaaaaackaabaaaabaaaaaaapaaaaahecaabaaaabaaaaaa
kgakbaaaabaaaaaapgapbaaaabaaaaaaaaaaaaahecaabaaaabaaaaaackaabaaa
abaaaaaaabeaaaaaaaaaaalpdiaaaaahicaabaaaabaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaadkaabaaa
abaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaabaaaaaa
efaaaaajpcaabaaaadaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
aaaaaaaadcaaaaamhcaabaaaaeaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaa
adaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaadaaaaaa
egacbaaaadaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaaeaaaaaa
kgikcaaaaaaaaaaaanaaaaaaegacbaaaaeaaaaaaegiccaaaaaaaaaaaacaaaaaa
aaaaaaalhcaabaaaafaaaaaaegacbaiaebaaaaaaaeaaaaaaaceaaaaaaaaaiadp
aaaaiadpaaaaiadpaaaaaaaadcaaaaajhcaabaaaaeaaaaaaegacbaaaafaaaaaa
pgapbaaaaaaaaaaaegacbaaaaeaaaaaadiaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaaaaeaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaaabaaaaaa
akaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaaabaaaaaadkaabaaaaaaaaaaa
dcaaaaajicaabaaaaaaaaaaackaabaaaabaaaaaadkaabaaaaaaaaaaaabeaaaaa
aaaaiadpaaaaaaaibcaabaaaabaaaaaabkaabaiaebaaaaaaabaaaaaaabeaaaaa
aaaaiadpdiaaaaahicaabaaaabaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaa
diaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
bcaabaaaabaaaaaaakaabaaaabaaaaaadkaabaaaabaaaaaadcaaaaajbcaabaaa
abaaaaaackaabaaaabaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaahicaabaaa
aaaaaaaabkaabaaaabaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaanicaabaaaaaaaaaaackiacaia
ebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaa
acaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaa
dcaaaaajhccabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaegacbaaa
acaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 101 math, 7 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
Vector 5 [_Color]
Float 7 [_Glossiness]
Vector 3 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Float 6 [_Metallic]
Vector 2 [unity_ColorSpaceDielectricSpec]
Vector 4 [unity_LightGammaCorrectionConsts]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_ShadowMapTexture] CUBE 1
SetTexture 2 [_LightTexture0] CUBE 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_3_0
def c8, 0.0078125, -0.0078125, 0.970000029, 1
def c9, 0.25, 0, 0.00100000005, 31.622776
def c10, 9.99999975e-005, 0.967999995, 0.0299999993, 10
def c11, -0.5, 0, 0, 0
dcl_texcoord v0.xy
dcl_texcoord1_pp v1.xyz
dcl_texcoord2_pp v2.w
dcl_texcoord3_pp v3.w
dcl_texcoord4_pp v4
dcl_texcoord5 v5.xyz
dcl_texcoord6 v6.xyz
dcl_2d s0
dcl_cube s1
dcl_cube s2
dcl_2d s3
dp3 r0.x, v6, v6
rsq r0.x, r0.x
rcp r0.x, r0.x
mul r0.x, r0.x, c0.w
add r0.yzw, c8.x, v6.xxyz
texld r1, r0.yzww, s1
add r0.yzw, c8.xyyx, v6.xxyz
texld r2, r0.yzww, s1
mov r1.y, r2.x
add r0.yzw, c8.xyxy, v6.xxyz
texld r2, r0.yzww, s1
mov r1.z, r2.x
add r0.yzw, c8.xxyy, v6.xxyz
texld r2, r0.yzww, s1
mov r1.w, r2.x
mad r0, r0.x, -c8.z, r1
mov r1.w, c8.w
cmp_pp r0, r0, r1.w, c1.x
dp4_pp r0.x, r0, c9.x
dp3 r0.y, v5, v5
texld r2, r0.y, s3
texld r3, v5, s2
mul r0.y, r2.x, r3.w
mul_pp r0.x, r0.x, r0.y
mul_pp r0.xyz, r0.x, c3
add_pp r0.w, r1.w, -c7.x
add_pp r1.x, -r0.w, c8.w
mad_pp r1.x, r1.x, c10.y, c10.z
log_pp r1.x, r1.x
rcp r1.x, r1.x
mul_pp r1.x, r1.x, c10.w
mad_pp r1.y, r1.x, r1.x, c8.w
mul_pp r1.x, r1.x, r1.x
mul_pp r1.y, r1.y, c4.y
nrm_pp r2.xyz, v1
mov_pp r3.x, v2.w
mov_pp r3.y, v3.w
mov_pp r3.z, v4.w
dp3_pp r1.z, r3, r3
rsq_pp r1.z, r1.z
mad_pp r4.xyz, r3, r1.z, -r2
mul_pp r3.xyz, r1.z, r3
dp3_pp r1.z, r4, r4
add r2.w, -r1.z, c9.z
rsq_pp r1.z, r1.z
cmp_pp r1.z, r2.w, c9.w, r1.z
mul_pp r4.xyz, r1.z, r4
nrm_pp r5.xyz, v4
dp3_pp r1.z, r5, r4
dp3_pp r2.w, r3, r4
dp3_pp r3.x, r5, r3
dp3_pp r2.x, r5, -r2
max_pp r3.y, r2.x, c9.y
max_pp r2.x, r3.x, c9.y
max_pp r3.x, r2.w, c9.y
max_pp r2.y, r1.z, c9.y
pow_pp r3.z, r2.y, r1.x
mul_pp r1.x, r1.y, r3.z
mul_pp r1.y, r0.w, r0.w
mul_pp r1.z, r1.y, c4.w
mad_pp r1.y, r1.y, -c4.w, r1.w
mad_pp r1.w, r3.y, r1.y, r1.z
add_pp r2.y, -r3.y, c8.w
mad_pp r1.y, r2.x, r1.y, r1.z
mad r1.y, r1.y, r1.w, c10.x
rcp_pp r1.y, r1.y
mul_pp r1.x, r1.x, r1.y
mul_pp r1.x, r2.x, r1.x
mul_pp r1.x, r1.x, c4.x
max_pp r2.z, r1.x, c9.y
mul_pp r1.xyz, r0, r2.z
add_pp r1.w, -r3.x, c8.w
mul_pp r2.z, r3.x, r3.x
dp2add_pp r0.w, r2.z, r0.w, c11.x
mul_pp r2.z, r1.w, r1.w
mul_pp r2.z, r2.z, r2.z
mul_pp r1.w, r1.w, r2.z
texld r3, v0, s0
mov r4, c2
mad_pp r5.xyz, c5, r3, -r4
mul_pp r3.xyz, r3, c5
mad_pp r4.xyz, c6.x, r5, r4
lrp_pp r5.xyz, r1.w, c8.w, r4
mul_pp r1.xyz, r1, r5
mul_pp r1.w, r2.y, r2.y
mul_pp r1.w, r1.w, r1.w
mul_pp r1.w, r2.y, r1.w
mad_pp r1.w, r0.w, r1.w, c8.w
add_pp r2.y, -r2.x, c8.w
mul_pp r2.z, r2.y, r2.y
mul_pp r2.z, r2.z, r2.z
mul_pp r2.y, r2.y, r2.z
mad_pp r0.w, r0.w, r2.y, c8.w
mul_pp r0.w, r1.w, r0.w
mul_pp r0.w, r2.x, r0.w
mul_pp r0.xyz, r0.w, r0
mad_pp r0.w, c6.x, -r4.w, r4.w
mul_pp r2.xyz, r0.w, r3
mad_pp oC0.xyz, r2, r0, r1
mov_pp oC0.w, c8.w

"
}
SubProgram "d3d11 " {
// Stats: 88 math, 7 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" "SHADOWS_SOFT" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_LightTextureB0] 2D 3
SetTexture 2 [_LightTexture0] CUBE 2
SetTexture 3 [_ShadowMapTexture] CUBE 1
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 128 [unity_LightGammaCorrectionConsts]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityShadows" 2
"ps_4_0
root12:aeadaeaa
eefiecedlldhihilhcekbeliiohnamljgpmlaocdabaaaaaaliaoaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
ahahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcgianaaaaeaaaaaaafkadaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaaacaaaaaafjaaaaaeegiocaaa
acaaaaaabjaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafidaaaaeaahabaaa
acaaaaaaffffaaaafidaaaaeaahabaaaadaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaad
icbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaa
gcbaaaadhcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacagaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaahaaaaaaegbcbaaaahaaaaaaelaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaaibcaabaaaaaaaaaaaakaabaaa
aaaaaaaadkiacaaaabaaaaaaabaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaaabeaaaaaomfbhidpaaaaaaakocaabaaaaaaaaaaaagbjbaaaahaaaaaa
aceaaaaaaaaaaaaaaaaaaadmaaaaaadmaaaaaadmefaaaaajpcaabaaaabaaaaaa
jgahbaaaaaaaaaaaeghobaaaadaaaaaaaagabaaaabaaaaaaaaaaaaakocaabaaa
aaaaaaaaagbjbaaaahaaaaaaaceaaaaaaaaaaaaaaaaaaalmaaaaaalmaaaaaadm
efaaaaajpcaabaaaacaaaaaajgahbaaaaaaaaaaaeghobaaaadaaaaaaaagabaaa
abaaaaaadgaaaaafccaabaaaabaaaaaaakaabaaaacaaaaaaaaaaaaakocaabaaa
aaaaaaaaagbjbaaaahaaaaaaaceaaaaaaaaaaaaaaaaaaalmaaaaaadmaaaaaalm
efaaaaajpcaabaaaacaaaaaajgahbaaaaaaaaaaaeghobaaaadaaaaaaaagabaaa
abaaaaaadgaaaaafecaabaaaabaaaaaaakaabaaaacaaaaaaaaaaaaakocaabaaa
aaaaaaaaagbjbaaaahaaaaaaaceaaaaaaaaaaaaaaaaaaadmaaaaaalmaaaaaalm
efaaaaajpcaabaaaacaaaaaajgahbaaaaaaaaaaaeghobaaaadaaaaaaaagabaaa
abaaaaaadgaaaaaficaabaaaabaaaaaaakaabaaaacaaaaaadbaaaaahpcaabaaa
aaaaaaaaegaobaaaabaaaaaaagaabaaaaaaaaaaadhaaaaanpcaabaaaaaaaaaaa
egaobaaaaaaaaaaaagiacaaaacaaaaaabiaaaaaaaceaaaaaaaaaiadpaaaaiadp
aaaaiadpaaaaiadpbbaaaaakbcaabaaaaaaaaaaaegaobaaaaaaaaaaaaceaaaaa
aaaaiadoaaaaiadoaaaaiadoaaaaiadobaaaaaahccaabaaaaaaaaaaaegbcbaaa
agaaaaaaegbcbaaaagaaaaaaefaaaaajpcaabaaaabaaaaaafgafbaaaaaaaaaaa
eghobaaaabaaaaaaaagabaaaadaaaaaaefaaaaajpcaabaaaacaaaaaaegbcbaaa
agaaaaaaeghobaaaacaaaaaaaagabaaaacaaaaaadiaaaaahccaabaaaaaaaaaaa
akaabaaaabaaaaaadkaabaaaacaaaaaadiaaaaahbcaabaaaaaaaaaaaakaabaaa
aaaaaaaabkaabaaaaaaaaaaadiaaaaaihcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egiccaaaaaaaaaaaagaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaacaaaaaa
egbcbaaaacaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaabaaaaaapgapbaaaaaaaaaaaegbcbaaaacaaaaaadgaaaaafbcaabaaa
acaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaa
dgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadcaaaaakhcaabaaaadaaaaaaegacbaaaacaaaaaapgapbaaaaaaaaaaa
egacbaiaebaaaaaaabaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaaaaaaaaaa
egacbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaadaaaaaaegacbaaa
adaaaaaadeaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaagpbciddk
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaadaaaaaa
pgapbaaaaaaaaaaaegacbaaaadaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaa
afaaaaaaegbcbaaaafaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaaeaaaaaapgapbaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaah
icaabaaaaaaaaaaaegacbaaaaeaaaaaaegacbaaaadaaaaaabaaaaaahicaabaaa
abaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaacaaaaaa
egacbaaaaeaaaaaaegacbaaaacaaaaaabaaaaaaibcaabaaaabaaaaaaegacbaaa
aeaaaaaaegacbaiaebaaaaaaabaaaaaadeaaaaahccaabaaaabaaaaaaakaabaaa
acaaaaaaabeaaaaaaaaaaaaadeaaaaakfcaabaaaabaaaaaaagadbaaaabaaaaaa
aceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadeaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaaabeaaaaaaaaaaaaacpaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaaaaaaaaajicaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaa
abeaaaaaaaaaiadpaaaaaaaibcaabaaaacaaaaaadkaabaiaebaaaaaaabaaaaaa
abeaaaaaaaaaiadpdcaaaaajbcaabaaaacaaaaaaakaabaaaacaaaaaaabeaaaaa
njmohhdpabeaaaaaipmcpfdmcpaaaaafbcaabaaaacaaaaaaakaabaaaacaaaaaa
aoaaaaahbcaabaaaacaaaaaaabeaaaaaaaaacaebakaabaaaacaaaaaadiaaaaah
ccaabaaaacaaaaaaakaabaaaacaaaaaaakaabaaaacaaaaaadcaaaaajbcaabaaa
acaaaaaaakaabaaaacaaaaaaakaabaaaacaaaaaaabeaaaaaaaaaiadpdiaaaaai
bcaabaaaacaaaaaaakaabaaaacaaaaaabkiacaaaaaaaaaaaaiaaaaaadiaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaabkaabaaaacaaaaaabjaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaaacaaaaaa
dkaabaaaaaaaaaaadiaaaaahbcaabaaaacaaaaaadkaabaaaabaaaaaadkaabaaa
abaaaaaadiaaaaaiccaabaaaacaaaaaaakaabaaaacaaaaaadkiacaaaaaaaaaaa
aiaaaaaadcaaaaalbcaabaaaacaaaaaaakaabaiaebaaaaaaacaaaaaadkiacaaa
aaaaaaaaaiaaaaaaabeaaaaaaaaaiadpdcaaaaajecaabaaaacaaaaaaakaabaaa
abaaaaaaakaabaaaacaaaaaabkaabaaaacaaaaaaaaaaaaaibcaabaaaabaaaaaa
akaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadpdcaaaaajbcaabaaaacaaaaaa
bkaabaaaabaaaaaaakaabaaaacaaaaaabkaabaaaacaaaaaadcaaaaajbcaabaaa
acaaaaaaakaabaaaacaaaaaackaabaaaacaaaaaaabeaaaaabhlhnbdiaoaaaaak
bcaabaaaacaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaiadpakaabaaa
acaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaaakaabaaaacaaaaaa
diaaaaahicaabaaaaaaaaaaabkaabaaaabaaaaaadkaabaaaaaaaaaaadiaaaaai
icaabaaaaaaaaaaadkaabaaaaaaaaaaaakiacaaaaaaaaaaaaiaaaaaadeaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaaaaadiaaaaahhcaabaaa
acaaaaaaegacbaaaaaaaaaaapgapbaaaaaaaaaaaaaaaaaaiicaabaaaaaaaaaaa
ckaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaahecaabaaaabaaaaaa
ckaabaaaabaaaaaackaabaaaabaaaaaaapaaaaahecaabaaaabaaaaaakgakbaaa
abaaaaaapgapbaaaabaaaaaaaaaaaaahecaabaaaabaaaaaackaabaaaabaaaaaa
abeaaaaaaaaaaalpdiaaaaahicaabaaaabaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahicaabaaaabaaaaaadkaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaabaaaaaaefaaaaaj
pcaabaaaadaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaa
dcaaaaamhcaabaaaaeaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaadaaaaaa
egiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaadaaaaaaegacbaaa
adaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaaeaaaaaakgikcaaa
aaaaaaaaanaaaaaaegacbaaaaeaaaaaaegiccaaaaaaaaaaaacaaaaaaaaaaaaal
hcaabaaaafaaaaaaegacbaiaebaaaaaaaeaaaaaaaceaaaaaaaaaiadpaaaaiadp
aaaaiadpaaaaaaaadcaaaaajhcaabaaaaeaaaaaaegacbaaaafaaaaaapgapbaaa
aaaaaaaaegacbaaaaeaaaaaadiaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaa
egacbaaaaeaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaaabaaaaaaakaabaaa
abaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahicaabaaaaaaaaaaaakaabaaaabaaaaaadkaabaaaaaaaaaaadcaaaaaj
icaabaaaaaaaaaaackaabaaaabaaaaaadkaabaaaaaaaaaaaabeaaaaaaaaaiadp
aaaaaaaibcaabaaaabaaaaaabkaabaiaebaaaaaaabaaaaaaabeaaaaaaaaaiadp
diaaaaahicaabaaaabaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaah
icaabaaaabaaaaaadkaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahbcaabaaa
abaaaaaaakaabaaaabaaaaaadkaabaaaabaaaaaadcaaaaajbcaabaaaabaaaaaa
ckaabaaaabaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaaakaabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaa
bkaabaaaabaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaanicaabaaaaaaaaaaackiacaiaebaaaaaa
aaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaadcaaaaaj
hccabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaa
dgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
}
 }


 // Stats for Vertex shader:
 //       d3d11 : 25 avg math (9..41)
 //        d3d9 : 24 avg math (8..41)
 // Stats for Fragment shader:
 //       d3d11 : 3 math
 //        d3d9 : 3 avg math (2..4)
 Pass {
  Name "SHADOWCASTER"
  Tags { "LIGHTMODE"="SHADOWCASTER" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  GpuProgramID 133839
Program "vp" {
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "SHADOWS_DEPTH" }
Bind "vertex" Vertex
Bind "normal" Normal
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [unity_MatrixVP]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_LightShadowBias]
"vs_3_0
def c16, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord o0
dcl_position o1
abs r0.x, c15.z
slt r0.x, -r0.x, r0.x
mul r0.yzw, c12.xxyz, v1.y
mad r0.yzw, c11.xxyz, v1.x, r0
mad r0.yzw, c13.xxyz, v1.z, r0
nrm r1.xyz, r0.yzww
mad r2, v0.xyzx, c16.xxxy, c16.yyyx
dp4 r3.x, c8, r2
dp4 r3.y, c9, r2
dp4 r3.z, c10, r2
mad r0.yzw, r3.xxyz, -c14.w, c14.xxyz
nrm r4.xyz, r0.yzww
dp3 r0.y, r1, r4
mad r0.y, r0.y, -r0.y, c16.x
rsq r0.y, r0.y
rcp r0.y, r0.y
mul r0.y, r0.y, c15.z
mad r1.xyz, r1, -r0.y, r3
mov r1.w, c16.x
dp4 r3.x, c4, r1
dp4 r3.y, c5, r1
dp4 r3.z, c6, r1
dp4 r3.w, c7, r1
dp4 r1.x, c0, r2
dp4 r1.y, c1, r2
dp4 r1.z, c2, r2
dp4 r1.w, c3, r2
lrp r2, r0.x, r3, r1
rcp r0.x, r2.w
mul_sat r0.x, r0.x, c15.x
add r0.x, r0.x, r2.z
max r0.y, r0.x, c16.y
lrp r2.z, c15.y, r0.y, r0.x
mov o0, r2
mov o1, r2

"
}
SubProgram "d3d11 " {
// Stats: 41 math
Keywords { "SHADOWS_DEPTH" }
Bind "vertex" Vertex
Bind "normal" Normal
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityShadows" 416
Vector 80 [unity_LightShadowBias]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
ConstBuffer "UnityPerFrame" 256
Matrix 144 [unity_MatrixVP]
BindCB  "UnityLighting" 0
BindCB  "UnityShadows" 1
BindCB  "UnityPerDraw" 2
BindCB  "UnityPerFrame" 3
"vs_4_0
root12:aaaeaaaa
eefiecedkofcienalkjfdbfghdeacmmpolplmbnoabaaaaaamaagaaaaadaaaaaa
cmaaaaaakaaaaaaaneaaaaaaejfdeheogmaaaaaaadaaaaaaaiaaaaaafaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapahaaaafjaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaagaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adaaaaaafaepfdejfeejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklkl
epfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafdeieefcoeafaaaaeaaaabaa
hjabaaaafjaaaaaeegiocaaaaaaaaaaaabaaaaaafjaaaaaeegiocaaaabaaaaaa
agaaaaaafjaaaaaeegiocaaaacaaaaaabdaaaaaafjaaaaaeegiocaaaadaaaaaa
anaaaaaafpaaaaadhcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagiaaaaacadaaaaaadiaaaaaibcaabaaaaaaaaaaa
akbabaaaabaaaaaaakiacaaaacaaaaaabaaaaaaadiaaaaaiccaabaaaaaaaaaaa
akbabaaaabaaaaaaakiacaaaacaaaaaabbaaaaaadiaaaaaiecaabaaaaaaaaaaa
akbabaaaabaaaaaaakiacaaaacaaaaaabcaaaaaadiaaaaaibcaabaaaabaaaaaa
bkbabaaaabaaaaaabkiacaaaacaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaa
bkbabaaaabaaaaaabkiacaaaacaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaa
bkbabaaaabaaaaaabkiacaaaacaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaabaaaaaackbabaaa
abaaaaaackiacaaaacaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaackbabaaa
abaaaaaackiacaaaacaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaackbabaaa
abaaaaaackiacaaaacaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaafgbfbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egacbaaaabaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaa
acaaaaaaapaaaaaadcaaaaamhcaabaaaacaaaaaaegacbaiaebaaaaaaabaaaaaa
pgipcaaaaaaaaaaaaaaaaaaaegiccaaaaaaaaaaaaaaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaa
acaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaa
dcaaaaakicaabaaaaaaaaaaadkaabaiaebaaaaaaaaaaaaaadkaabaaaaaaaaaaa
abeaaaaaaaaaiadpelaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaai
icaabaaaaaaaaaaadkaabaaaaaaaaaaackiacaaaabaaaaaaafaaaaaadcaaaaak
hcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaa
akaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaajaaaaaaagaabaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
alaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaaaaaaaaaipcaabaaaaaaaaaaa
egaobaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaadiaaaaaipcaabaaaabaaaaaa
fgbfbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaa
egiocaaaacaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaacaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
abaaaaaaaaaaaaaipcaabaaaabaaaaaaegaobaaaabaaaaaaegiocaaaacaaaaaa
adaaaaaadjaaaaaibcaabaaaacaaaaaackiacaaaabaaaaaaafaaaaaaabeaaaaa
aaaaaaaadhaaaaajpcaabaaaaaaaaaaaagaabaaaacaaaaaaegaobaaaaaaaaaaa
egaobaaaabaaaaaaaocaaaaibcaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaa
dkaabaaaaaaaaaaaaaaaaaahecaabaaaaaaaaaaackaabaaaaaaaaaaaakaabaaa
abaaaaaadgaaaaaflccabaaaaaaaaaaaegambaaaaaaaaaaadeaaaaahbcaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
ckaabaiaebaaaaaaaaaaaaaaakaabaaaaaaaaaaadcaaaaakeccabaaaaaaaaaaa
bkiacaaaabaaaaaaafaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaadoaaaaab
"
}
SubProgram "d3d9 " {
// Stats: 8 math
Keywords { "SHADOWS_CUBE" }
Bind "vertex" Vertex
Matrix 4 [_Object2World] 3
Matrix 0 [glstate_matrix_mvp]
Vector 7 [_LightPositionRange]
"vs_3_0
dcl_position v0
dcl_texcoord o0.xyz
dcl_position o1
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o0.xyz, r0, -c7
dp4 o1.x, c0, v0
dp4 o1.y, c1, v0
dp4 o1.z, c2, v0
dp4 o1.w, c3, v0

"
}
SubProgram "d3d11 " {
// Stats: 9 math
Keywords { "SHADOWS_CUBE" }
Bind "vertex" Vertex
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
BindCB  "UnityLighting" 0
BindCB  "UnityPerDraw" 1
"vs_4_0
root12:aaacaaaa
eefiecedmgkmdmiimpgfbbeijlbbhnckjdimdhfoabaaaaaalaacaaaaadaaaaaa
cmaaaaaakaaaaaaapiaaaaaaejfdeheogmaaaaaaadaaaaaaaiaaaaaafaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaafjaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahaaaaaagaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adaaaaaafaepfdejfeejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklkl
epfdeheofaaaaaaaacaaaaaaaiaaaaaadiaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaahaiaaaaebaaaaaaaaaaaaaaabaaaaaaadaaaaaaabaaaaaaapaaaaaa
feeffiedepepfceeaafdfgfpfaepfdejfeejepeoaaklklklfdeieefclaabaaaa
eaaaabaagmaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaafjaaaaaeegiocaaa
abaaaaaabaaaaaaafpaaaaadpcbabaaaaaaaaaaagfaaaaadhccabaaaaaaaaaaa
ghaaaaaepccabaaaabaaaaaaabaaaaaagiaaaaacabaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiccaaaabaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaabaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaabaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaabaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhccabaaaaaaaaaaaegacbaaa
aaaaaaaaegiccaiaebaaaaaaaaaaaaaaabaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaabaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaabaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaabaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaabaaaaaaegiocaaaabaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadoaaaaab"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 2 math
Keywords { "SHADOWS_DEPTH" }
"ps_3_0
dcl_texcoord v0.zw
rcp r0.x, v0.w
mul_pp oC0, r0.x, v0.z

"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"ps_4_0
root12:aaaaaaaa
eefiecednmfgmafnpgdjlbeekdafekgfpapnijkfabaaaaaalaaaaaaaadaaaaaa
cmaaaaaadmaaaaaahaaaaaaaejfdeheoaiaaaaaaaaaaaaaaaiaaaaaaepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcdiaaaaaaeaaaaaaaaoaaaaaa
gfaaaaadpccabaaaaaaaaaaadgaaaaaipccabaaaaaaaaaaaaceaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 4 math
Keywords { "SHADOWS_CUBE" }
Vector 0 [_LightPositionRange]
"ps_3_0
dcl_texcoord v0.xyz
dp3 r0.x, v0, v0
rsq r0.x, r0.x
rcp r0.x, r0.x
mul_pp oC0, r0.x, c0.w

"
}
SubProgram "d3d11 " {
// Stats: 3 math
Keywords { "SHADOWS_CUBE" }
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
BindCB  "UnityLighting" 0
"ps_4_0
root12:aaabaaaa
eefiecedfnmflbfjaemdcoihgjpopakokhefifnoabaaaaaaciabaaaaadaaaaaa
cmaaaaaagaaaaaaajeaaaaaaejfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaahahaaaafeeffiedepepfceeaaklklkl
epfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcimaaaaaaeaaaaaaa
cdaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaagcbaaaadhcbabaaaaaaaaaaa
gfaaaaadpccabaaaaaaaaaaagiaaaaacabaaaaaabaaaaaahbcaabaaaaaaaaaaa
egbcbaaaaaaaaaaaegbcbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaaipccabaaaaaaaaaaaagaabaaaaaaaaaaapgipcaaaaaaaaaaa
abaaaaaadoaaaaab"
}
}
 }


 // Stats for Vertex shader:
 //       d3d11 : 39 avg math (33..43)
 //        d3d9 : 41 avg math (34..45)
 // Stats for Fragment shader:
 //       d3d11 : 17 avg math (17..18), 2 texture
 //        d3d9 : 24 avg math (23..26), 2 texture
 Pass {
  Name "DEFERRED"
  Tags { "LIGHTMODE"="Deferred" "RenderType"="Opaque" "PerformanceChecks"="False" }
  GpuProgramID 200435
Program "vp" {
SubProgram "d3d9 " {
// Stats: 34 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
"vs_3_0
def c18, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
mul r0.xyz, c8, v1.y
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
mov o5.xyz, r1
dp4 r1.x, c11, r2
dp4 r1.y, c12, r2
dp4 r1.z, c13, r2
mad o6.xyz, c14, r0.x, r1
mov o3, c18.x
mov o4, c18.x
mov o5.w, c18.x
mov o6.w, c18.x

"
}
SubProgram "d3d11 " {
// Stats: 33 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedocjglmajhjejpdbgpfboaljljfioajhjabaaaaaajmahaaaaadaaaaaa
cmaaaaaaliaaaaaakaabaaaaejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcpeafaaaaeaaaabaahnabaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaa
fjaaaaaeegiocaaaadaaaaaabdaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
gfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadhccabaaa
ahaaaaaagiaaaaacacaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
aaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaa
aaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaa
egbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaa
aaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaa
egbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaa
diaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhccabaaa
acaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadgaaaaaf
hccabaaaahaaaaaaegacbaaaaaaaaaaadgaaaaaipccabaaaadaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgaaaaaipccabaaaaeaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaaibcaabaaaaaaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaaaaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaaaaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaabaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaabaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaa
aaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaafhccabaaaafaaaaaa
egacbaaaaaaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaadiaaaaah
icaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadcaaaaakicaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaaaaaaaaadkaabaiaebaaaaaaaaaaaaaa
diaaaaahpcaabaaaabaaaaaajgacbaaaaaaaaaaaegakbaaaaaaaaaaabbaaaaai
bcaabaaaaaaaaaaaegiocaaaacaaaaaacjaaaaaaegaobaaaabaaaaaabbaaaaai
ccaabaaaaaaaaaaaegiocaaaacaaaaaackaaaaaaegaobaaaabaaaaaabbaaaaai
ecaabaaaaaaaaaaaegiocaaaacaaaaaaclaaaaaaegaobaaaabaaaaaadcaaaaak
hccabaaaagaaaaaaegiccaaaacaaaaaacmaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
Vector 15 [unity_WorldTransformParams]
"vs_3_0
def c19, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c16, c16.zwzw
abs r0.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
mul r0.x, c15.w, v4.w
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r2.xyz, r1
mul r0.yzw, c8.xxyz, v1.y
mad r0.yzw, c7.xxyz, v1.x, r0
mad r0.yzw, c9.xxyz, v1.z, r0
nrm r1.xyz, r0.yzww
mul r0.yzw, r2.xyzx, r1.xzxy
mad r0.yzw, r1.xyzx, r2.xzxy, -r0
mov o3.xyz, r2
mul o4.xyz, r0.x, r0.yzww
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
mov o5.xyz, r1
dp4 r1.x, c11, r2
dp4 r1.y, c12, r2
dp4 r1.z, c13, r2
mad o6.xyz, c14, r0.x, r1
mov o3.w, c19.x
mov o4.w, c19.x
mov o5.w, c19.x
mov o6.w, c19.x

"
}
SubProgram "d3d11 " {
// Stats: 43 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedbmfillkbghajdeoifoncfmpofkjdjgigabaaaaaaaaajaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcdiahaaaaeaaaabaamoabaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaa
agaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaadgaaaaafhccabaaaahaaaaaaegacbaaaaaaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaa
aeaaaaaaegacbaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaafhccabaaa
adaaaaaaegacbaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaabeaaaaaaaaaaaaa
diaaaaaibcaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaadiaaaaai
bcaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaahhcaabaaaacaaaaaajgaebaaaaaaaaaaacgajbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaajgaebaaaabaaaaaacgajbaaaaaaaaaaaegacbaia
ebaaaaaaacaaaaaadiaaaaaiicaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaa
adaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadgaaaaaficcabaaaaeaaaaaaabeaaaaaaaaaaaaadgaaaaafhccabaaa
afaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaa
diaaaaahbcaabaaaaaaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaadcaaaaak
bcaabaaaaaaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaaakaabaiaebaaaaaa
aaaaaaaadiaaaaahpcaabaaaabaaaaaajgacbaaaabaaaaaaegakbaaaabaaaaaa
bbaaaaaibcaabaaaacaaaaaaegiocaaaacaaaaaacjaaaaaaegaobaaaabaaaaaa
bbaaaaaiccaabaaaacaaaaaaegiocaaaacaaaaaackaaaaaaegaobaaaabaaaaaa
bbaaaaaiecaabaaaacaaaaaaegiocaaaacaaaaaaclaaaaaaegaobaaaabaaaaaa
dcaaaaakhccabaaaagaaaaaaegiccaaaacaaaaaacmaaaaaaagaabaaaaaaaaaaa
egacbaaaacaaaaaadgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadoaaaaab
"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_SEPARATE" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
Vector 15 [unity_WorldTransformParams]
"vs_3_0
def c19, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c16, c16.zwzw
abs r0.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
mul r0.x, c15.w, v4.w
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r2.xyz, r1
mul r0.yzw, c8.xxyz, v1.y
mad r0.yzw, c7.xxyz, v1.x, r0
mad r0.yzw, c9.xxyz, v1.z, r0
nrm r1.xyz, r0.yzww
mul r0.yzw, r2.xyzx, r1.xzxy
mad r0.yzw, r1.xyzx, r2.xzxy, -r0
mov o3.xyz, r2
mul o4.xyz, r0.x, r0.yzww
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
mov o5.xyz, r1
dp4 r1.x, c11, r2
dp4 r1.y, c12, r2
dp4 r1.z, c13, r2
mad o6.xyz, c14, r0.x, r1
mov o3.w, c19.x
mov o4.w, c19.x
mov o5.w, c19.x
mov o6.w, c19.x

"
}
SubProgram "d3d11 " {
// Stats: 43 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_SEPARATE" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedbmfillkbghajdeoifoncfmpofkjdjgigabaaaaaaaaajaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcdiahaaaaeaaaabaamoabaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaa
agaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaadgaaaaafhccabaaaahaaaaaaegacbaaaaaaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaa
aeaaaaaaegacbaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaafhccabaaa
adaaaaaaegacbaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaabeaaaaaaaaaaaaa
diaaaaaibcaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaadiaaaaai
bcaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaahhcaabaaaacaaaaaajgaebaaaaaaaaaaacgajbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaajgaebaaaabaaaaaacgajbaaaaaaaaaaaegacbaia
ebaaaaaaacaaaaaadiaaaaaiicaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaa
adaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadgaaaaaficcabaaaaeaaaaaaabeaaaaaaaaaaaaadgaaaaafhccabaaa
afaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaa
diaaaaahbcaabaaaaaaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaadcaaaaak
bcaabaaaaaaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaaakaabaiaebaaaaaa
aaaaaaaadiaaaaahpcaabaaaabaaaaaajgacbaaaabaaaaaaegakbaaaabaaaaaa
bbaaaaaibcaabaaaacaaaaaaegiocaaaacaaaaaacjaaaaaaegaobaaaabaaaaaa
bbaaaaaiccaabaaaacaaaaaaegiocaaaacaaaaaackaaaaaaegaobaaaabaaaaaa
bbaaaaaiecaabaaaacaaaaaaegiocaaaacaaaaaaclaaaaaaegaobaaaabaaaaaa
dcaaaaakhccabaaaagaaaaaaegiccaaaacaaaaaacmaaaaaaagaabaaaaaaaaaaa
egacbaaaacaaaaaadgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadoaaaaab
"
}
SubProgram "d3d9 " {
// Stats: 34 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Float 17 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
"vs_3_0
def c18, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c15, c15.zwzw
abs r0.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
mul r0.xyz, c8, v1.y
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
mov o5.xyz, r1
dp4 r1.x, c11, r2
dp4 r1.y, c12, r2
dp4 r1.z, c13, r2
mad o6.xyz, c14, r0.x, r1
mov o3, c18.x
mov o4, c18.x
mov o5.w, c18.x
mov o6.w, c18.x

"
}
SubProgram "d3d11 " {
// Stats: 33 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedocjglmajhjejpdbgpfboaljljfioajhjabaaaaaajmahaaaaadaaaaaa
cmaaaaaaliaaaaaakaabaaaaejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcpeafaaaaeaaaabaahnabaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaa
fjaaaaaeegiocaaaadaaaaaabdaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
gfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadhccabaaa
ahaaaaaagiaaaaacacaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
aaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaa
aaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaa
egbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaa
aaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaa
egbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaa
diaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhccabaaa
acaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadgaaaaaf
hccabaaaahaaaaaaegacbaaaaaaaaaaadgaaaaaipccabaaaadaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgaaaaaipccabaaaaeaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaaibcaabaaaaaaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaaaaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaaaaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaabaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaabaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
aaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaa
aaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaafhccabaaaafaaaaaa
egacbaaaaaaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaadiaaaaah
icaabaaaaaaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadcaaaaakicaabaaa
aaaaaaaaakaabaaaaaaaaaaaakaabaaaaaaaaaaadkaabaiaebaaaaaaaaaaaaaa
diaaaaahpcaabaaaabaaaaaajgacbaaaaaaaaaaaegakbaaaaaaaaaaabbaaaaai
bcaabaaaaaaaaaaaegiocaaaacaaaaaacjaaaaaaegaobaaaabaaaaaabbaaaaai
ccaabaaaaaaaaaaaegiocaaaacaaaaaackaaaaaaegaobaaaabaaaaaabbaaaaai
ecaabaaaaaaaaaaaegiocaaaacaaaaaaclaaaaaaegaobaaaabaaaaaadcaaaaak
hccabaaaagaaaaaaegiccaaaacaaaaaacmaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
Vector 15 [unity_WorldTransformParams]
"vs_3_0
def c19, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c16, c16.zwzw
abs r0.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
mul r0.x, c15.w, v4.w
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r2.xyz, r1
mul r0.yzw, c8.xxyz, v1.y
mad r0.yzw, c7.xxyz, v1.x, r0
mad r0.yzw, c9.xxyz, v1.z, r0
nrm r1.xyz, r0.yzww
mul r0.yzw, r2.xyzx, r1.xzxy
mad r0.yzw, r1.xyzx, r2.xzxy, -r0
mov o3.xyz, r2
mul o4.xyz, r0.x, r0.yzww
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
mov o5.xyz, r1
dp4 r1.x, c11, r2
dp4 r1.y, c12, r2
dp4 r1.z, c13, r2
mad o6.xyz, c14, r0.x, r1
mov o3.w, c19.x
mov o4.w, c19.x
mov o5.w, c19.x
mov o6.w, c19.x

"
}
SubProgram "d3d11 " {
// Stats: 43 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedbmfillkbghajdeoifoncfmpofkjdjgigabaaaaaaaaajaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcdiahaaaaeaaaabaamoabaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaa
agaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaadgaaaaafhccabaaaahaaaaaaegacbaaaaaaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaa
aeaaaaaaegacbaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaafhccabaaa
adaaaaaaegacbaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaabeaaaaaaaaaaaaa
diaaaaaibcaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaadiaaaaai
bcaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaahhcaabaaaacaaaaaajgaebaaaaaaaaaaacgajbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaajgaebaaaabaaaaaacgajbaaaaaaaaaaaegacbaia
ebaaaaaaacaaaaaadiaaaaaiicaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaa
adaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadgaaaaaficcabaaaaeaaaaaaabeaaaaaaaaaaaaadgaaaaafhccabaaa
afaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaa
diaaaaahbcaabaaaaaaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaadcaaaaak
bcaabaaaaaaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaaakaabaiaebaaaaaa
aaaaaaaadiaaaaahpcaabaaaabaaaaaajgacbaaaabaaaaaaegakbaaaabaaaaaa
bbaaaaaibcaabaaaacaaaaaaegiocaaaacaaaaaacjaaaaaaegaobaaaabaaaaaa
bbaaaaaiccaabaaaacaaaaaaegiocaaaacaaaaaackaaaaaaegaobaaaabaaaaaa
bbaaaaaiecaabaaaacaaaaaaegiocaaaacaaaaaaclaaaaaaegaobaaaabaaaaaa
dcaaaaakhccabaaaagaaaaaaegiccaaaacaaaaaacmaaaaaaagaabaaaaaaaaaaa
egacbaaaacaaaaaadgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadoaaaaab
"
}
SubProgram "d3d9 " {
// Stats: 45 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_SEPARATE" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHBb]
Vector 12 [unity_SHBg]
Vector 11 [unity_SHBr]
Vector 14 [unity_SHC]
Vector 15 [unity_WorldTransformParams]
"vs_3_0
def c19, 0, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dcl_position o0
dcl_texcoord o1
dcl_texcoord1 o2.xyz
dcl_texcoord2 o3
dcl_texcoord3 o4
dcl_texcoord4 o5
dcl_texcoord5 o6
dcl_texcoord6 o7.xyz
dp4 o0.x, c0, v0
dp4 o0.y, c1, v0
dp4 o0.z, c2, v0
dp4 o0.w, c3, v0
mad o1.xy, v2, c16, c16.zwzw
abs r0.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad o1.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add o2.xyz, r0, -c10
mov o7.xyz, r0
mul r0.x, c15.w, v4.w
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r2.xyz, r1
mul r0.yzw, c8.xxyz, v1.y
mad r0.yzw, c7.xxyz, v1.x, r0
mad r0.yzw, c9.xxyz, v1.z, r0
nrm r1.xyz, r0.yzww
mul r0.yzw, r2.xyzx, r1.xzxy
mad r0.yzw, r1.xyzx, r2.xzxy, -r0
mov o3.xyz, r2
mul o4.xyz, r0.x, r0.yzww
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
mov o5.xyz, r1
dp4 r1.x, c11, r2
dp4 r1.y, c12, r2
dp4 r1.z, c13, r2
mad o6.xyz, c14, r0.x, r1
mov o3.w, c19.x
mov o4.w, c19.x
mov o5.w, c19.x
mov o6.w, c19.x

"
}
SubProgram "d3d11 " {
// Stats: 43 math
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_SEPARATE" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedbmfillkbghajdeoifoncfmpofkjdjgigabaaaaaaaaajaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcdiahaaaaeaaaabaamoabaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaa
agaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacadaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhccabaaaacaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaadgaaaaafhccabaaaahaaaaaaegacbaaaaaaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaa
aeaaaaaaegacbaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaafhccabaaa
adaaaaaaegacbaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaabeaaaaaaaaaaaaa
diaaaaaibcaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaadiaaaaai
bcaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaacaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaahhcaabaaaacaaaaaajgaebaaaaaaaaaaacgajbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaajgaebaaaabaaaaaacgajbaaaaaaaaaaaegacbaia
ebaaaaaaacaaaaaadiaaaaaiicaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaa
adaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadgaaaaaficcabaaaaeaaaaaaabeaaaaaaaaaaaaadgaaaaafhccabaaa
afaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaa
diaaaaahbcaabaaaaaaaaaaabkaabaaaabaaaaaabkaabaaaabaaaaaadcaaaaak
bcaabaaaaaaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaaakaabaiaebaaaaaa
aaaaaaaadiaaaaahpcaabaaaabaaaaaajgacbaaaabaaaaaaegakbaaaabaaaaaa
bbaaaaaibcaabaaaacaaaaaaegiocaaaacaaaaaacjaaaaaaegaobaaaabaaaaaa
bbaaaaaiccaabaaaacaaaaaaegiocaaaacaaaaaackaaaaaaegaobaaaabaaaaaa
bbaaaaaiecaabaaaacaaaaaaegiocaaaacaaaaaaclaaaaaaegaobaaaabaaaaaa
dcaaaaakhccabaaaagaaaaaaegiccaaaacaaaaaacmaaaaaaagaabaaaaaaaaaaa
egacbaaaacaaaaaadgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadoaaaaab
"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 26 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Vector 4 [_Color]
Float 6 [_Glossiness]
Float 5 [_Metallic]
Float 7 [_OcclusionStrength]
Vector 3 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_SHAb]
Vector 1 [unity_SHAg]
Vector 0 [unity_SHAr]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
"ps_3_0
def c8, 1, 0.5, 0, 0
dcl_texcoord v0.xy
dcl_texcoord4_pp v1.xyz
dcl_texcoord5_pp v2.xyz
dcl_2d s0
dcl_2d s1
texld r0, v0, s0
mov r1, c3
mad_pp r2.xyz, c4, r0, -r1
mul_pp r0.xyz, r0, c4
mad_pp oC1.xyz, c5.x, r2, r1
mad_pp r0.w, c5.x, -r1.w, r1.w
mul_pp r0.xyz, r0.w, r0
nrm_pp r1.xyz, v1
mov_pp r1.w, c8.x
dp4_pp r2.x, c0, r1
dp4_pp r2.y, c1, r1
dp4_pp r2.z, c2, r1
mad_pp oC2, r1, c8.yyyx, c8.yyyz
add_pp r1.xyz, r2, v2
texld_pp r2, v0, s1
mov r2.x, c8.x
add_pp r1.w, r2.x, -c7.x
mad_pp r0.w, r2.y, c7.x, r1.w
mul_pp r1.xyz, r0.w, r1
mov_pp oC0, r0
mul_pp r0.xyz, r0, r1
exp_pp oC3.x, -r0.x
exp_pp oC3.y, -r0.y
exp_pp oC3.z, -r0.z
mov_pp oC1.w, c6.x
mov_pp oC3.w, c8.x

"
}
SubProgram "d3d11 " {
// Stats: 18 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
Float 224 [_OcclusionStrength]
ConstBuffer "UnityLighting" 720
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
"ps_4_0
root12:acacacaa
eefiecedbjkgkmdhbaboijomfkobcjaaecppcnkdabaaaaaagaafaaaaadaaaaaa
cmaaaaaabeabaaaajaabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaaaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahaaaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheoheaaaaaaaeaaaaaa
aiaaaaaagiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaagiaaaaaa
abaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaagiaaaaaaacaaaaaaaaaaaaaa
adaaaaaaacaaaaaaapaaaaaagiaaaaaaadaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcmiadaaaaeaaaaaaapcaaaaaa
fjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaacjaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaagfaaaaad
pccabaaaaaaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadpccabaaaacaaaaaa
gfaaaaadpccabaaaadaaaaaagiaaaaacadaaaaaaefaaaaajpcaabaaaaaaaaaaa
egbabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaaaaaaaaajbcaabaaa
aaaaaaaaakiacaiaebaaaaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaiadpdcaaaaak
icaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaaaoaaaaaaakaabaaa
aaaaaaaadcaaaaanbcaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaa
dkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaaefaaaaajpcaabaaa
acaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaai
ocaabaaaabaaaaaaagajbaaaacaaaaaaagijcaaaaaaaaaaaajaaaaaadcaaaaam
hcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaacaaaaaaegiccaia
ebaaaaaaaaaaaaaaacaaaaaadcaaaaalhccabaaaabaaaaaakgikcaaaaaaaaaaa
anaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaa
aaaaaaaaagaabaaaabaaaaaajgahbaaaabaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaagiccabaaaabaaaaaadkiacaaaaaaaaaaaanaaaaaa
baaaaaahbcaabaaaabaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
abaaaaaaegbcbaaaafaaaaaadgaaaaaficaabaaaabaaaaaaabeaaaaaaaaaiadp
dcaaaaappccabaaaacaaaaaaegaobaaaabaaaaaaaceaaaaaaaaaaadpaaaaaadp
aaaaaadpaaaaiadpaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaabbaaaaai
bcaabaaaacaaaaaaegiocaaaabaaaaaacgaaaaaaegaobaaaabaaaaaabbaaaaai
ccaabaaaacaaaaaaegiocaaaabaaaaaachaaaaaaegaobaaaabaaaaaabbaaaaai
ecaabaaaacaaaaaaegiocaaaabaaaaaaciaaaaaaegaobaaaabaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaacaaaaaaegbcbaaaagaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaabjaaaaaghccabaaaadaaaaaaegacbaia
ebaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaabeaaaaaaaaaiadpdoaaaaab
"
}
SubProgram "d3d9 " {
// Stats: 26 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_OFF" }
Vector 4 [_Color]
Float 6 [_Glossiness]
Float 5 [_Metallic]
Float 7 [_OcclusionStrength]
Vector 3 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_SHAb]
Vector 1 [unity_SHAg]
Vector 0 [unity_SHAr]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
"ps_3_0
def c8, 1, 0.5, 0, 0
dcl_texcoord v0.xy
dcl_texcoord4_pp v1.xyz
dcl_texcoord5_pp v2.xyz
dcl_2d s0
dcl_2d s1
texld r0, v0, s0
mov r1, c3
mad_pp r2.xyz, c4, r0, -r1
mul_pp r0.xyz, r0, c4
mad_pp oC1.xyz, c5.x, r2, r1
mad_pp r0.w, c5.x, -r1.w, r1.w
mul_pp r0.xyz, r0.w, r0
nrm_pp r1.xyz, v1
mov_pp r1.w, c8.x
dp4_pp r2.x, c0, r1
dp4_pp r2.y, c1, r1
dp4_pp r2.z, c2, r1
mad_pp oC2, r1, c8.yyyx, c8.yyyz
add_pp r1.xyz, r2, v2
texld_pp r2, v0, s1
mov r2.x, c8.x
add_pp r1.w, r2.x, -c7.x
mad_pp r0.w, r2.y, c7.x, r1.w
mul_pp r1.xyz, r0.w, r1
mov_pp oC0, r0
mul_pp r0.xyz, r0, r1
exp_pp oC3.x, -r0.x
exp_pp oC3.y, -r0.y
exp_pp oC3.z, -r0.z
mov_pp oC1.w, c6.x
mov_pp oC3.w, c8.x

"
}
SubProgram "d3d11 " {
// Stats: 18 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
Float 224 [_OcclusionStrength]
ConstBuffer "UnityLighting" 720
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
"ps_4_0
root12:acacacaa
eefiecedbjkgkmdhbaboijomfkobcjaaecppcnkdabaaaaaagaafaaaaadaaaaaa
cmaaaaaabeabaaaajaabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaaaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahaaaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheoheaaaaaaaeaaaaaa
aiaaaaaagiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaagiaaaaaa
abaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaagiaaaaaaacaaaaaaaaaaaaaa
adaaaaaaacaaaaaaapaaaaaagiaaaaaaadaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcmiadaaaaeaaaaaaapcaaaaaa
fjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaacjaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaagfaaaaad
pccabaaaaaaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadpccabaaaacaaaaaa
gfaaaaadpccabaaaadaaaaaagiaaaaacadaaaaaaefaaaaajpcaabaaaaaaaaaaa
egbabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaaaaaaaaajbcaabaaa
aaaaaaaaakiacaiaebaaaaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaiadpdcaaaaak
icaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaaaoaaaaaaakaabaaa
aaaaaaaadcaaaaanbcaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaa
dkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaaefaaaaajpcaabaaa
acaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaai
ocaabaaaabaaaaaaagajbaaaacaaaaaaagijcaaaaaaaaaaaajaaaaaadcaaaaam
hcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaacaaaaaaegiccaia
ebaaaaaaaaaaaaaaacaaaaaadcaaaaalhccabaaaabaaaaaakgikcaaaaaaaaaaa
anaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaa
aaaaaaaaagaabaaaabaaaaaajgahbaaaabaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaagiccabaaaabaaaaaadkiacaaaaaaaaaaaanaaaaaa
baaaaaahbcaabaaaabaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
abaaaaaaegbcbaaaafaaaaaadgaaaaaficaabaaaabaaaaaaabeaaaaaaaaaiadp
dcaaaaappccabaaaacaaaaaaegaobaaaabaaaaaaaceaaaaaaaaaaadpaaaaaadp
aaaaaadpaaaaiadpaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaabbaaaaai
bcaabaaaacaaaaaaegiocaaaabaaaaaacgaaaaaaegaobaaaabaaaaaabbaaaaai
ccaabaaaacaaaaaaegiocaaaabaaaaaachaaaaaaegaobaaaabaaaaaabbaaaaai
ecaabaaaacaaaaaaegiocaaaabaaaaaaciaaaaaaegaobaaaabaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaacaaaaaaegbcbaaaagaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaabjaaaaaghccabaaaadaaaaaaegacbaia
ebaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaabeaaaaaaaaaiadpdoaaaaab
"
}
SubProgram "d3d9 " {
// Stats: 26 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_SEPARATE" "DYNAMICLIGHTMAP_OFF" }
Vector 4 [_Color]
Float 6 [_Glossiness]
Float 5 [_Metallic]
Float 7 [_OcclusionStrength]
Vector 3 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_SHAb]
Vector 1 [unity_SHAg]
Vector 0 [unity_SHAr]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
"ps_3_0
def c8, 1, 0.5, 0, 0
dcl_texcoord v0.xy
dcl_texcoord4_pp v1.xyz
dcl_texcoord5_pp v2.xyz
dcl_2d s0
dcl_2d s1
texld r0, v0, s0
mov r1, c3
mad_pp r2.xyz, c4, r0, -r1
mul_pp r0.xyz, r0, c4
mad_pp oC1.xyz, c5.x, r2, r1
mad_pp r0.w, c5.x, -r1.w, r1.w
mul_pp r0.xyz, r0.w, r0
nrm_pp r1.xyz, v1
mov_pp r1.w, c8.x
dp4_pp r2.x, c0, r1
dp4_pp r2.y, c1, r1
dp4_pp r2.z, c2, r1
mad_pp oC2, r1, c8.yyyx, c8.yyyz
add_pp r1.xyz, r2, v2
texld_pp r2, v0, s1
mov r2.x, c8.x
add_pp r1.w, r2.x, -c7.x
mad_pp r0.w, r2.y, c7.x, r1.w
mul_pp r1.xyz, r0.w, r1
mov_pp oC0, r0
mul_pp r0.xyz, r0, r1
exp_pp oC3.x, -r0.x
exp_pp oC3.y, -r0.y
exp_pp oC3.z, -r0.z
mov_pp oC1.w, c6.x
mov_pp oC3.w, c8.x

"
}
SubProgram "d3d11 " {
// Stats: 18 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_SEPARATE" "DYNAMICLIGHTMAP_OFF" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
Float 224 [_OcclusionStrength]
ConstBuffer "UnityLighting" 720
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
"ps_4_0
root12:acacacaa
eefiecedbjkgkmdhbaboijomfkobcjaaecppcnkdabaaaaaagaafaaaaadaaaaaa
cmaaaaaabeabaaaajaabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaaaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahaaaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheoheaaaaaaaeaaaaaa
aiaaaaaagiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaagiaaaaaa
abaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaagiaaaaaaacaaaaaaaaaaaaaa
adaaaaaaacaaaaaaapaaaaaagiaaaaaaadaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcmiadaaaaeaaaaaaapcaaaaaa
fjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaacjaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaagfaaaaad
pccabaaaaaaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadpccabaaaacaaaaaa
gfaaaaadpccabaaaadaaaaaagiaaaaacadaaaaaaefaaaaajpcaabaaaaaaaaaaa
egbabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaaaaaaaaajbcaabaaa
aaaaaaaaakiacaiaebaaaaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaiadpdcaaaaak
icaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaaaoaaaaaaakaabaaa
aaaaaaaadcaaaaanbcaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaa
dkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaaefaaaaajpcaabaaa
acaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaai
ocaabaaaabaaaaaaagajbaaaacaaaaaaagijcaaaaaaaaaaaajaaaaaadcaaaaam
hcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaacaaaaaaegiccaia
ebaaaaaaaaaaaaaaacaaaaaadcaaaaalhccabaaaabaaaaaakgikcaaaaaaaaaaa
anaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaa
aaaaaaaaagaabaaaabaaaaaajgahbaaaabaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaagiccabaaaabaaaaaadkiacaaaaaaaaaaaanaaaaaa
baaaaaahbcaabaaaabaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
abaaaaaaegbcbaaaafaaaaaadgaaaaaficaabaaaabaaaaaaabeaaaaaaaaaiadp
dcaaaaappccabaaaacaaaaaaegaobaaaabaaaaaaaceaaaaaaaaaaadpaaaaaadp
aaaaaadpaaaaiadpaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaabbaaaaai
bcaabaaaacaaaaaaegiocaaaabaaaaaacgaaaaaaegaobaaaabaaaaaabbaaaaai
ccaabaaaacaaaaaaegiocaaaabaaaaaachaaaaaaegaobaaaabaaaaaabbaaaaai
ecaabaaaacaaaaaaegiocaaaabaaaaaaciaaaaaaegaobaaaabaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaacaaaaaaegbcbaaaagaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaabjaaaaaghccabaaaadaaaaaaegacbaia
ebaaaaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaabeaaaaaaaaaiadpdoaaaaab
"
}
SubProgram "d3d9 " {
// Stats: 23 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
Vector 4 [_Color]
Float 6 [_Glossiness]
Float 5 [_Metallic]
Float 7 [_OcclusionStrength]
Vector 3 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_SHAb]
Vector 1 [unity_SHAg]
Vector 0 [unity_SHAr]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
"ps_3_0
def c8, 1, 0.5, 0, 0
dcl_texcoord v0.xy
dcl_texcoord4_pp v1.xyz
dcl_texcoord5_pp v2.xyz
dcl_2d s0
dcl_2d s1
texld r0, v0, s0
mov r1, c3
mad_pp r2.xyz, c4, r0, -r1
mul_pp r0.xyz, r0, c4
mad_pp oC1.xyz, c5.x, r2, r1
mad_pp r0.w, c5.x, -r1.w, r1.w
mul_pp r0.xyz, r0.w, r0
nrm_pp r1.xyz, v1
mov_pp r1.w, c8.x
dp4_pp r2.x, c0, r1
dp4_pp r2.y, c1, r1
dp4_pp r2.z, c2, r1
mad_pp oC2, r1, c8.yyyx, c8.yyyz
add_pp r1.xyz, r2, v2
texld_pp r2, v0, s1
mov r2.x, c8.x
add_pp r1.w, r2.x, -c7.x
mad_pp r0.w, r2.y, c7.x, r1.w
mul_pp r1.xyz, r0.w, r1
mov_pp oC0, r0
mul_pp oC3.xyz, r0, r1
mov_pp oC1.w, c6.x
mov_pp oC3.w, c8.x

"
}
SubProgram "d3d11 " {
// Stats: 17 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
Float 224 [_OcclusionStrength]
ConstBuffer "UnityLighting" 720
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
"ps_4_0
root12:acacacaa
eefiecedlgfhickpckngnaboanhnjjaeljhicpgeabaaaaaaeiafaaaaadaaaaaa
cmaaaaaabeabaaaajaabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaaaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahaaaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheoheaaaaaaaeaaaaaa
aiaaaaaagiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaagiaaaaaa
abaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaagiaaaaaaacaaaaaaaaaaaaaa
adaaaaaaacaaaaaaapaaaaaagiaaaaaaadaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefclaadaaaaeaaaaaaaomaaaaaa
fjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaacjaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaagfaaaaad
pccabaaaaaaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadpccabaaaacaaaaaa
gfaaaaadpccabaaaadaaaaaagiaaaaacadaaaaaaefaaaaajpcaabaaaaaaaaaaa
egbabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaaaaaaaaajbcaabaaa
aaaaaaaaakiacaiaebaaaaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaiadpdcaaaaak
icaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaaaoaaaaaaakaabaaa
aaaaaaaadcaaaaanbcaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaa
dkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaaefaaaaajpcaabaaa
acaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaai
ocaabaaaabaaaaaaagajbaaaacaaaaaaagijcaaaaaaaaaaaajaaaaaadcaaaaam
hcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaacaaaaaaegiccaia
ebaaaaaaaaaaaaaaacaaaaaadcaaaaalhccabaaaabaaaaaakgikcaaaaaaaaaaa
anaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaa
aaaaaaaaagaabaaaabaaaaaajgahbaaaabaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaagiccabaaaabaaaaaadkiacaaaaaaaaaaaanaaaaaa
baaaaaahbcaabaaaabaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
abaaaaaaegbcbaaaafaaaaaadgaaaaaficaabaaaabaaaaaaabeaaaaaaaaaiadp
dcaaaaappccabaaaacaaaaaaegaobaaaabaaaaaaaceaaaaaaaaaaadpaaaaaadp
aaaaaadpaaaaiadpaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaabbaaaaai
bcaabaaaacaaaaaaegiocaaaabaaaaaacgaaaaaaegaobaaaabaaaaaabbaaaaai
ccaabaaaacaaaaaaegiocaaaabaaaaaachaaaaaaegaobaaaabaaaaaabbaaaaai
ecaabaaaacaaaaaaegiocaaaabaaaaaaciaaaaaaegaobaaaabaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaacaaaaaaegbcbaaaagaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhccabaaaadaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaadaaaaaaabeaaaaa
aaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 23 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
Vector 4 [_Color]
Float 6 [_Glossiness]
Float 5 [_Metallic]
Float 7 [_OcclusionStrength]
Vector 3 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_SHAb]
Vector 1 [unity_SHAg]
Vector 0 [unity_SHAr]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
"ps_3_0
def c8, 1, 0.5, 0, 0
dcl_texcoord v0.xy
dcl_texcoord4_pp v1.xyz
dcl_texcoord5_pp v2.xyz
dcl_2d s0
dcl_2d s1
texld r0, v0, s0
mov r1, c3
mad_pp r2.xyz, c4, r0, -r1
mul_pp r0.xyz, r0, c4
mad_pp oC1.xyz, c5.x, r2, r1
mad_pp r0.w, c5.x, -r1.w, r1.w
mul_pp r0.xyz, r0.w, r0
nrm_pp r1.xyz, v1
mov_pp r1.w, c8.x
dp4_pp r2.x, c0, r1
dp4_pp r2.y, c1, r1
dp4_pp r2.z, c2, r1
mad_pp oC2, r1, c8.yyyx, c8.yyyz
add_pp r1.xyz, r2, v2
texld_pp r2, v0, s1
mov r2.x, c8.x
add_pp r1.w, r2.x, -c7.x
mad_pp r0.w, r2.y, c7.x, r1.w
mul_pp r1.xyz, r0.w, r1
mov_pp oC0, r0
mul_pp oC3.xyz, r0, r1
mov_pp oC1.w, c6.x
mov_pp oC3.w, c8.x

"
}
SubProgram "d3d11 " {
// Stats: 17 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_COMBINED" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
Float 224 [_OcclusionStrength]
ConstBuffer "UnityLighting" 720
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
"ps_4_0
root12:acacacaa
eefiecedlgfhickpckngnaboanhnjjaeljhicpgeabaaaaaaeiafaaaaadaaaaaa
cmaaaaaabeabaaaajaabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaaaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahaaaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheoheaaaaaaaeaaaaaa
aiaaaaaagiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaagiaaaaaa
abaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaagiaaaaaaacaaaaaaaaaaaaaa
adaaaaaaacaaaaaaapaaaaaagiaaaaaaadaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefclaadaaaaeaaaaaaaomaaaaaa
fjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaacjaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaagfaaaaad
pccabaaaaaaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadpccabaaaacaaaaaa
gfaaaaadpccabaaaadaaaaaagiaaaaacadaaaaaaefaaaaajpcaabaaaaaaaaaaa
egbabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaaaaaaaaajbcaabaaa
aaaaaaaaakiacaiaebaaaaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaiadpdcaaaaak
icaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaaaoaaaaaaakaabaaa
aaaaaaaadcaaaaanbcaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaa
dkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaaefaaaaajpcaabaaa
acaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaai
ocaabaaaabaaaaaaagajbaaaacaaaaaaagijcaaaaaaaaaaaajaaaaaadcaaaaam
hcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaacaaaaaaegiccaia
ebaaaaaaaaaaaaaaacaaaaaadcaaaaalhccabaaaabaaaaaakgikcaaaaaaaaaaa
anaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaa
aaaaaaaaagaabaaaabaaaaaajgahbaaaabaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaagiccabaaaabaaaaaadkiacaaaaaaaaaaaanaaaaaa
baaaaaahbcaabaaaabaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
abaaaaaaegbcbaaaafaaaaaadgaaaaaficaabaaaabaaaaaaabeaaaaaaaaaiadp
dcaaaaappccabaaaacaaaaaaegaobaaaabaaaaaaaceaaaaaaaaaaadpaaaaaadp
aaaaaadpaaaaiadpaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaabbaaaaai
bcaabaaaacaaaaaaegiocaaaabaaaaaacgaaaaaaegaobaaaabaaaaaabbaaaaai
ccaabaaaacaaaaaaegiocaaaabaaaaaachaaaaaaegaobaaaabaaaaaabbaaaaai
ecaabaaaacaaaaaaegiocaaaabaaaaaaciaaaaaaegaobaaaabaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaacaaaaaaegbcbaaaagaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhccabaaaadaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaadaaaaaaabeaaaaa
aaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 23 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_SEPARATE" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
Vector 4 [_Color]
Float 6 [_Glossiness]
Float 5 [_Metallic]
Float 7 [_OcclusionStrength]
Vector 3 [unity_ColorSpaceDielectricSpec]
Vector 2 [unity_SHAb]
Vector 1 [unity_SHAg]
Vector 0 [unity_SHAr]
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
"ps_3_0
def c8, 1, 0.5, 0, 0
dcl_texcoord v0.xy
dcl_texcoord4_pp v1.xyz
dcl_texcoord5_pp v2.xyz
dcl_2d s0
dcl_2d s1
texld r0, v0, s0
mov r1, c3
mad_pp r2.xyz, c4, r0, -r1
mul_pp r0.xyz, r0, c4
mad_pp oC1.xyz, c5.x, r2, r1
mad_pp r0.w, c5.x, -r1.w, r1.w
mul_pp r0.xyz, r0.w, r0
nrm_pp r1.xyz, v1
mov_pp r1.w, c8.x
dp4_pp r2.x, c0, r1
dp4_pp r2.y, c1, r1
dp4_pp r2.z, c2, r1
mad_pp oC2, r1, c8.yyyx, c8.yyyz
add_pp r1.xyz, r2, v2
texld_pp r2, v0, s1
mov r2.x, c8.x
add_pp r1.w, r2.x, -c7.x
mad_pp r0.w, r2.y, c7.x, r1.w
mul_pp r1.xyz, r0.w, r1
mov_pp oC0, r0
mul_pp oC3.xyz, r0, r1
mov_pp oC1.w, c6.x
mov_pp oC3.w, c8.x

"
}
SubProgram "d3d11 " {
// Stats: 17 math, 2 textures
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_SEPARATE" "DYNAMICLIGHTMAP_OFF" "UNITY_HDR_ON" }
SetTexture 0 [_MainTex] 2D 0
SetTexture 1 [_OcclusionMap] 2D 1
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
Float 224 [_OcclusionStrength]
ConstBuffer "UnityLighting" 720
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
"ps_4_0
root12:acacacaa
eefiecedlgfhickpckngnaboanhnjjaeljhicpgeabaaaaaaeiafaaaaadaaaaaa
cmaaaaaabeabaaaajaabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaaaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahaaaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheoheaaaaaaaeaaaaaa
aiaaaaaagiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaagiaaaaaa
abaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaagiaaaaaaacaaaaaaaaaaaaaa
adaaaaaaacaaaaaaapaaaaaagiaaaaaaadaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefclaadaaaaeaaaaaaaomaaaaaa
fjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaacjaaaaaa
fkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaagfaaaaad
pccabaaaaaaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadpccabaaaacaaaaaa
gfaaaaadpccabaaaadaaaaaagiaaaaacadaaaaaaefaaaaajpcaabaaaaaaaaaaa
egbabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaabaaaaaaaaaaaaajbcaabaaa
aaaaaaaaakiacaiaebaaaaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaiadpdcaaaaak
icaabaaaaaaaaaaabkaabaaaaaaaaaaaakiacaaaaaaaaaaaaoaaaaaaakaabaaa
aaaaaaaadcaaaaanbcaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaa
dkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaaefaaaaajpcaabaaa
acaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaaaaaaaaadiaaaaai
ocaabaaaabaaaaaaagajbaaaacaaaaaaagijcaaaaaaaaaaaajaaaaaadcaaaaam
hcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaacaaaaaaegiccaia
ebaaaaaaaaaaaaaaacaaaaaadcaaaaalhccabaaaabaaaaaakgikcaaaaaaaaaaa
anaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaa
aaaaaaaaagaabaaaabaaaaaajgahbaaaabaaaaaadgaaaaafpccabaaaaaaaaaaa
egaobaaaaaaaaaaadgaaaaagiccabaaaabaaaaaadkiacaaaaaaaaaaaanaaaaaa
baaaaaahbcaabaaaabaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
abaaaaaaegbcbaaaafaaaaaadgaaaaaficaabaaaabaaaaaaabeaaaaaaaaaiadp
dcaaaaappccabaaaacaaaaaaegaobaaaabaaaaaaaceaaaaaaaaaaadpaaaaaadp
aaaaaadpaaaaiadpaceaaaaaaaaaaadpaaaaaadpaaaaaadpaaaaaaaabbaaaaai
bcaabaaaacaaaaaaegiocaaaabaaaaaacgaaaaaaegaobaaaabaaaaaabbaaaaai
ccaabaaaacaaaaaaegiocaaaabaaaaaachaaaaaaegaobaaaabaaaaaabbaaaaai
ecaabaaaacaaaaaaegiocaaaabaaaaaaciaaaaaaegaobaaaabaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaacaaaaaaegbcbaaaagaaaaaadiaaaaahhcaabaaa
abaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhccabaaaadaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaadaaaaaaabeaaaaa
aaaaiadpdoaaaaab"
}
}
 }
}
SubShader { 
 LOD 150
 Tags { "RenderType"="Opaque" "PerformanceChecks"="False" }


 // Stats for Vertex shader:
 //       d3d11 : 51 avg math (40..63)
 //    d3d11_9x : 54 avg math (40..68)
 //        d3d9 : 57 avg math (41..74)
 // Stats for Fragment shader:
 //       d3d11 : 39 avg math (38..40), 3 avg texture (3..4)
 //    d3d11_9x : 36 avg math (35..38), 3 texture
 //        d3d9 : 45 avg math (45..46), 4 avg texture (4..5)
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardBase" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite [_ZWrite]
  Blend [_SrcBlend] [_DstBlend]
  GpuProgramID 374778
  Cull Off
Program "vp" {
SubProgram "d3d9 " {
// Stats: 41 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 18 [_MainTex_ST]
Float 20 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [unity_SHAb]
Vector 12 [unity_SHAg]
Vector 11 [unity_SHAr]
Vector 16 [unity_SHBb]
Vector 15 [unity_SHBg]
Vector 14 [unity_SHBr]
Vector 17 [unity_SHC]
"vs_2_0
def c21, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c18, c18.zwzw
mul r0.x, c20.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r0.xyz, r0, -c10
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
dp4 r3.x, c14, r2
dp4 r3.y, c15, r2
dp4 r3.z, c16, r2
mad r0.xyz, c17, r0.x, r3
mov r1.w, c21.x
dp4 r2.x, c11, r1
dp4 r2.y, c12, r1
dp4 r2.z, c13, r1
mov oT4.xyz, r1
add oT5.xyz, r0, r2
mov oT2, c21.y
mov oT3, c21.y
mov oT4.w, c21.y
mov oT5.w, c21.y

"
}
SubProgram "d3d11 " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedcbghedpmifdfonhipeeccfijhlhpicidabaaaaaaeaaiaaaaadaaaaaa
cmaaaaaaliaaaaaaiiabaaaaejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefclaagaaaaeaaaabaakmabaaaafjaaaaaeegiocaaa
aaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaacnaaaaaafjaaaaaeegiocaaaadaaaaaabdaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaa
giaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaa
adaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaa
agbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaa
aaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
biaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaa
dhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaa
adaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaa
amaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaa
acaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaadgaaaaaipccabaaaadaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaadgaaaaaipccabaaaaeaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaadiaaaaaibcaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaa
baaaaaaadiaaaaaiccaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaa
bbaaaaaadiaaaaaiecaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaa
bcaaaaaadiaaaaaibcaabaaaabaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaa
baaaaaaadiaaaaaiccaabaaaabaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaa
bbaaaaaadiaaaaaiecaabaaaabaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaa
bcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaa
diaaaaaibcaabaaaabaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaabaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaabaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaabaaaaaah
icaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaaaaaaaaaa
egacbaaaaaaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaaaaaaaaadgaaaaaf
iccabaaaafaaaaaaabeaaaaaaaaaaaaadiaaaaahbcaabaaaabaaaaaabkaabaaa
aaaaaaaabkaabaaaaaaaaaaadcaaaaakbcaabaaaabaaaaaaakaabaaaaaaaaaaa
akaabaaaaaaaaaaaakaabaiaebaaaaaaabaaaaaadiaaaaahpcaabaaaacaaaaaa
jgacbaaaaaaaaaaaegakbaaaaaaaaaaabbaaaaaibcaabaaaadaaaaaaegiocaaa
acaaaaaacjaaaaaaegaobaaaacaaaaaabbaaaaaiccaabaaaadaaaaaaegiocaaa
acaaaaaackaaaaaaegaobaaaacaaaaaabbaaaaaiecaabaaaadaaaaaaegiocaaa
acaaaaaaclaaaaaaegaobaaaacaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
acaaaaaacmaaaaaaagaabaaaabaaaaaaegacbaaaadaaaaaadgaaaaaficaabaaa
aaaaaaaaabeaaaaaaaaaiadpbbaaaaaibcaabaaaacaaaaaaegiocaaaacaaaaaa
cgaaaaaaegaobaaaaaaaaaaabbaaaaaiccaabaaaacaaaaaaegiocaaaacaaaaaa
chaaaaaaegaobaaaaaaaaaaabbaaaaaiecaabaaaacaaaaaaegiocaaaacaaaaaa
ciaaaaaaegaobaaaaaaaaaaaaaaaaaahhccabaaaagaaaaaaegacbaaaabaaaaaa
egacbaaaacaaaaaadgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadoaaaaab
"
}
SubProgram "d3d11_9x " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
root12:aaaeaaaa
eefiecedegdodfjaoadklahodbedoibmimjglokiabaaaaaaceamaaaaaeaaaaaa
daaaaaaabaaeaaaamiakaaaafealaaaaebgpgodjniadaaaaniadaaaaaaacpopp
giadaaaahaaaaaaaagaaceaaaaaagmaaaaaagmaaaaaaceaaabaagmaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaabaaaeaaabaaaeaaaaaaaaaa
acaacgaaahaaafaaaaaaaaaaadaaaaaaaeaaamaaaaaaaaaaadaaamaaahaabaaa
aaaaaaaaaaaaaaaaaaacpoppfbaaaaafbhaaapkaaaaaiadpaaaaaaaaaaaaaaaa
aaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjaaeaaaaaeaaaaadoaacaaoeja
abaaoekaabaaookaafaaaaadaaaaabiaadaakkkaadaakkkaanaaaaadaaaaabia
aaaaaaibaaaaaaiaabaaaaacabaaadiaacaaoejabcaaaaaeacaaadiaaaaaaaia
abaaoeiaadaaoejaaeaaaaaeaaaaamoaacaaeeiaacaaeekaacaaoekaafaaaaad
aaaaahiaaaaaffjabbaaoekaaeaaaaaeaaaaahiabaaaoekaaaaaaajaaaaaoeia
aeaaaaaeaaaaahiabcaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaahiabdaaoeka
aaaappjaaaaaoeiaacaaaaadaaaaahiaaaaaoeiaaeaaoekbaiaaaaadaaaaaiia
aaaaoeiaaaaaoeiaahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahoaaaaappia
aaaaoeiaafaaaaadaaaaabiaabaaaajabeaaaakaafaaaaadaaaaaciaabaaaaja
bfaaaakaafaaaaadaaaaaeiaabaaaajabgaaaakaafaaaaadabaaabiaabaaffja
beaaffkaafaaaaadabaaaciaabaaffjabfaaffkaafaaaaadabaaaeiaabaaffja
bgaaffkaacaaaaadaaaaahiaaaaaoeiaabaaoeiaafaaaaadabaaabiaabaakkja
beaakkkaafaaaaadabaaaciaabaakkjabfaakkkaafaaaaadabaaaeiaabaakkja
bgaakkkaacaaaaadaaaaahiaaaaaoeiaabaaoeiaceaaaaacabaaahiaaaaaoeia
afaaaaadaaaaabiaabaaffiaabaaffiaaeaaaaaeaaaaabiaabaaaaiaabaaaaia
aaaaaaibafaaaaadacaaapiaabaacjiaabaakeiaajaaaaadadaaabiaaiaaoeka
acaaoeiaajaaaaadadaaaciaajaaoekaacaaoeiaajaaaaadadaaaeiaakaaoeka
acaaoeiaaeaaaaaeaaaaahiaalaaoekaaaaaaaiaadaaoeiaabaaaaacabaaaiia
bhaaaakaajaaaaadacaaabiaafaaoekaabaaoeiaajaaaaadacaaaciaagaaoeka
abaaoeiaajaaaaadacaaaeiaahaaoekaabaaoeiaabaaaaacaeaaahoaabaaoeia
acaaaaadafaaahoaaaaaoeiaacaaoeiaafaaaaadaaaaapiaaaaaffjaanaaoeka
aeaaaaaeaaaaapiaamaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaapiaaoaaoeka
aaaakkjaaaaaoeiaaeaaaaaeaaaaapiaapaaoekaaaaappjaaaaaoeiaaeaaaaae
aaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaac
acaaapoabhaaffkaabaaaaacadaaapoabhaaffkaabaaaaacaeaaaioabhaaffka
abaaaaacafaaaioabhaaffkappppaaaafdeieefclaagaaaaeaaaabaakmabaaaa
fjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaa
fjaaaaaeegiocaaaacaaaaaacnaaaaaafjaaaaaeegiocaaaadaaaaaabdaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaaddcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaa
gfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaa
adaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaad
pccabaaaagaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaa
abeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaa
acaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaa
agiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaa
abaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaa
alaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
aoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaa
aaaaaaaaegacbaaaaaaaaaaadgaaaaaipccabaaaadaaaaaaaceaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaadgaaaaaipccabaaaaeaaaaaaaceaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaadiaaaaaibcaabaaaaaaaaaaaakbabaaaabaaaaaa
akiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaaaaaaaaaakbabaaaabaaaaaa
akiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaaaaaaaaaakbabaaaabaaaaaa
akiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaabaaaaaabkbabaaaabaaaaaa
bkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaabkbabaaaabaaaaaa
bkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaabkbabaaaabaaaaaa
bkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaadiaaaaaibcaabaaaabaaaaaackbabaaaabaaaaaackiacaaa
adaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaackbabaaaabaaaaaackiacaaa
adaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaackbabaaaabaaaaaackiacaaa
adaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
abaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaadiaaaaahbcaabaaa
abaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadcaaaaakbcaabaaaabaaaaaa
akaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaiaebaaaaaaabaaaaaadiaaaaah
pcaabaaaacaaaaaajgacbaaaaaaaaaaaegakbaaaaaaaaaaabbaaaaaibcaabaaa
adaaaaaaegiocaaaacaaaaaacjaaaaaaegaobaaaacaaaaaabbaaaaaiccaabaaa
adaaaaaaegiocaaaacaaaaaackaaaaaaegaobaaaacaaaaaabbaaaaaiecaabaaa
adaaaaaaegiocaaaacaaaaaaclaaaaaaegaobaaaacaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaacaaaaaacmaaaaaaagaabaaaabaaaaaaegacbaaaadaaaaaa
dgaaaaaficaabaaaaaaaaaaaabeaaaaaaaaaiadpbbaaaaaibcaabaaaacaaaaaa
egiocaaaacaaaaaacgaaaaaaegaobaaaaaaaaaaabbaaaaaiccaabaaaacaaaaaa
egiocaaaacaaaaaachaaaaaaegaobaaaaaaaaaaabbaaaaaiecaabaaaacaaaaaa
egiocaaaacaaaaaaciaaaaaaegaobaaaaaaaaaaaaaaaaaahhccabaaaagaaaaaa
egacbaaaabaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaaagaaaaaaabeaaaaa
aaaaaaaadoaaaaabejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaaadadaaaa
hiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdejfeejepeo
aaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheomiaaaaaaahaaaaaa
aiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaalmaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaaaaaaaaaa
adaaaaaaagaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklkl"
}
SubProgram "d3d9 " {
// Stats: 47 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 21 [_DetailAlbedoMap_ST]
Vector 20 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 22 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 15 [unity_SHAb]
Vector 14 [unity_SHAg]
Vector 13 [unity_SHAr]
Vector 18 [unity_SHBb]
Vector 17 [unity_SHBg]
Vector 16 [unity_SHBr]
Vector 19 [unity_SHC]
"vs_2_0
def c23, 0.5, 1, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
mad oT0.xy, v2, c20, c20.zwzw
mul r0.x, c22.x, c22.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c21.xyxy, c21
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r0.xyz, r0, -c10
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0
dp4 r0.y, c1, v0
mul r1.x, r0.y, c11.x
mul r1.w, r1.x, c23.x
dp4 r0.x, c0, v0
dp4 r0.w, c3, v0
mul r1.xz, r0.xyww, c23.x
mad oT6.xy, r1.z, c12.zwzw, r1.xwzw
mul r1.xyz, v1.y, c8
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
mul r1.x, r2.y, r2.y
mad r1.x, r2.x, r2.x, -r1.x
mul r3, r2.yzzx, r2.xyzz
dp4 r4.x, c16, r3
dp4 r4.y, c17, r3
dp4 r4.z, c18, r3
mad r1.xyz, c19, r1.x, r4
mov r2.w, c23.y
dp4 r3.x, c13, r2
dp4 r3.y, c14, r2
dp4 r3.z, c15, r2
mov oT4.xyz, r2
add oT5.xyz, r1, r3
dp4 r0.z, c2, v0
mov oPos, r0
mov oT6.zw, r0
mov oT2, c23.z
mov oT3, c23.z
mov oT4.w, c23.z
mov oT5.w, c23.z

"
}
SubProgram "d3d11 " {
// Stats: 43 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedannffpohonncgmijciindnbicnjlhjccabaaaaaapaaiaaaaadaaaaaa
cmaaaaaaliaaaaaakaabaaaaejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefceiahaaaaeaaaabaancabaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaa
fjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaa
fjaaaaaeegiocaaaadaaaaaabdaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
gfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadpccabaaa
ahaaaaaagiaaaaacafaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
aaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaa
abaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaa
abaaaaaaagaabaaaabaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaal
mccabaaaabaaaaaaagaebaaaabaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaa
aaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaa
aaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaabaaaaaa
fgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaa
egiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaak
hcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaa
abaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaa
aaaaaaaaegacbaaaabaaaaaaaaaaaaajhcaabaaaabaaaaaaegacbaaaabaaaaaa
egiccaiaebaaaaaaabaaaaaaaeaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhccabaaaacaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaadgaaaaai
pccabaaaadaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgaaaaai
pccabaaaaeaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaai
bcaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaabaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaai
bcaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaacaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaabaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaa
acaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
abaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaa
abaaaaaadiaaaaahhcaabaaaabaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaa
dgaaaaafhccabaaaafaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaafaaaaaa
abeaaaaaaaaaaaaadiaaaaahbcaabaaaacaaaaaabkaabaaaabaaaaaabkaabaaa
abaaaaaadcaaaaakbcaabaaaacaaaaaaakaabaaaabaaaaaaakaabaaaabaaaaaa
akaabaiaebaaaaaaacaaaaaadiaaaaahpcaabaaaadaaaaaajgacbaaaabaaaaaa
egakbaaaabaaaaaabbaaaaaibcaabaaaaeaaaaaaegiocaaaacaaaaaacjaaaaaa
egaobaaaadaaaaaabbaaaaaiccaabaaaaeaaaaaaegiocaaaacaaaaaackaaaaaa
egaobaaaadaaaaaabbaaaaaiecaabaaaaeaaaaaaegiocaaaacaaaaaaclaaaaaa
egaobaaaadaaaaaadcaaaaakhcaabaaaacaaaaaaegiccaaaacaaaaaacmaaaaaa
agaabaaaacaaaaaaegacbaaaaeaaaaaadgaaaaaficaabaaaabaaaaaaabeaaaaa
aaaaiadpbbaaaaaibcaabaaaadaaaaaaegiocaaaacaaaaaacgaaaaaaegaobaaa
abaaaaaabbaaaaaiccaabaaaadaaaaaaegiocaaaacaaaaaachaaaaaaegaobaaa
abaaaaaabbaaaaaiecaabaaaadaaaaaaegiocaaaacaaaaaaciaaaaaaegaobaaa
abaaaaaaaaaaaaahhccabaaaagaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaa
dgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadiaaaaaiccaabaaaaaaaaaaa
bkaabaaaaaaaaaaaakiacaaaabaaaaaaafaaaaaadiaaaaakncaabaaaabaaaaaa
agahbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaaaaaaaaaadpaaaaaadpdgaaaaaf
mccabaaaahaaaaaakgaobaaaaaaaaaaaaaaaaaahdccabaaaahaaaaaakgakbaaa
abaaaaaamgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 68 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 27 [_DetailAlbedoMap_ST]
Vector 26 [_MainTex_ST]
Float 28 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 18 [unity_4LightAtten0]
Vector 15 [unity_4LightPosX0]
Vector 16 [unity_4LightPosY0]
Vector 17 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 21 [unity_SHAb]
Vector 20 [unity_SHAg]
Vector 19 [unity_SHAr]
Vector 24 [unity_SHBb]
Vector 23 [unity_SHBg]
Vector 22 [unity_SHBr]
Vector 25 [unity_SHC]
"vs_2_0
def c29, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dp4 oPos.x, c4, v0
dp4 oPos.y, c5, v0
dp4 oPos.z, c6, v0
dp4 oPos.w, c7, v0
mad oT0.xy, v2, c26, c26.zwzw
mul r0.x, c28.x, c28.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c27.xyxy, c27
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add r1.xyz, r0, -c14
add r2, -r0.x, c15
add r3, -r0.y, c16
add r0, -r0.z, c17
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1, r3, r3
mad r1, r2, r2, r1
mad r1, r0, r0, r1
rsq r4.x, r1.x
rsq r4.y, r1.y
rsq r4.z, r1.z
rsq r4.w, r1.w
mov r5.x, c29.x
mad r1, r1, c18, r5.x
mul r5.xyz, v1.y, c12
mad r5.xyz, c11, v1.x, r5
mad r5.xyz, c13, v1.z, r5
nrm r6.xyz, r5
mul r3, r3, r6.y
mad r2, r2, r6.x, r3
mad r0, r0, r6.z, r2
mul r0, r4, r0
max r0, r0, c29.y
rcp r2.x, r1.x
rcp r2.y, r1.y
rcp r2.z, r1.z
rcp r2.w, r1.w
mul r0, r0, r2
mul r1.xyz, r0.y, c1
mad r1.xyz, c0, r0.x, r1
mad r0.xyz, c2, r0.z, r1
mad r0.xyz, c3, r0.w, r0
mul r0.w, r6.y, r6.y
mad r0.w, r6.x, r6.x, -r0.w
mul r1, r6.yzzx, r6.xyzz
dp4 r2.x, c22, r1
dp4 r2.y, c23, r1
dp4 r2.z, c24, r1
mad r1.xyz, c25, r0.w, r2
mov r6.w, c29.x
dp4 r2.x, c19, r6
dp4 r2.y, c20, r6
dp4 r2.z, c21, r6
mov oT4.xyz, r6
add r1.xyz, r1, r2
add oT5.xyz, r0, r1
mov oT2, c29.y
mov oT3, c29.y
mov oT4.w, c29.y
mov oT5.w, c29.y

"
}
SubProgram "d3d11 " {
// Stats: 60 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 32 [unity_4LightPosX0]
Vector 48 [unity_4LightPosY0]
Vector 64 [unity_4LightPosZ0]
Vector 80 [unity_4LightAtten0]
Vector 96 [unity_LightColor0]
Vector 112 [unity_LightColor1]
Vector 128 [unity_LightColor2]
Vector 144 [unity_LightColor3]
Vector 160 [unity_LightColor4]
Vector 176 [unity_LightColor5]
Vector 192 [unity_LightColor6]
Vector 208 [unity_LightColor7]
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedaiolnalokeioglpllfodlkafjibalehaabaaaaaapiakaaaaadaaaaaa
cmaaaaaaliaaaaaaiiabaaaaejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefcgiajaaaaeaaaabaafkacaaaafjaaaaaeegiocaaa
aaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaacnaaaaaafjaaaaaeegiocaaaadaaaaaabdaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaa
giaaaaacagaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaa
adaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaa
agbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaa
aaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
biaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaa
dhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaa
adaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaa
amaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaa
acaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaabaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaipccabaaaadaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaadgaaaaaipccabaaaaeaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaadiaaaaaibcaabaaa
abaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
abaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
abaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaa
acaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
abaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaacaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
hccabaaaafaaaaaaegacbaaaabaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaa
abaaaaaabkaabaaaabaaaaaadcaaaaakicaabaaaaaaaaaaaakaabaaaabaaaaaa
akaabaaaabaaaaaadkaabaiaebaaaaaaaaaaaaaadiaaaaahpcaabaaaacaaaaaa
jgacbaaaabaaaaaaegakbaaaabaaaaaabbaaaaaibcaabaaaadaaaaaaegiocaaa
acaaaaaacjaaaaaaegaobaaaacaaaaaabbaaaaaiccaabaaaadaaaaaaegiocaaa
acaaaaaackaaaaaaegaobaaaacaaaaaabbaaaaaiecaabaaaadaaaaaaegiocaaa
acaaaaaaclaaaaaaegaobaaaacaaaaaadcaaaaakhcaabaaaacaaaaaaegiccaaa
acaaaaaacmaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaadgaaaaaficaabaaa
abaaaaaaabeaaaaaaaaaiadpbbaaaaaibcaabaaaadaaaaaaegiocaaaacaaaaaa
cgaaaaaaegaobaaaabaaaaaabbaaaaaiccaabaaaadaaaaaaegiocaaaacaaaaaa
chaaaaaaegaobaaaabaaaaaabbaaaaaiecaabaaaadaaaaaaegiocaaaacaaaaaa
ciaaaaaaegaobaaaabaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaa
egacbaaaadaaaaaaaaaaaaajpcaabaaaadaaaaaafgafbaiaebaaaaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaadiaaaaahpcaabaaaaeaaaaaafgafbaaaabaaaaaa
egaobaaaadaaaaaadiaaaaahpcaabaaaadaaaaaaegaobaaaadaaaaaaegaobaaa
adaaaaaaaaaaaaajpcaabaaaafaaaaaaagaabaiaebaaaaaaaaaaaaaaegiocaaa
acaaaaaaacaaaaaaaaaaaaajpcaabaaaaaaaaaaakgakbaiaebaaaaaaaaaaaaaa
egiocaaaacaaaaaaaeaaaaaadcaaaaajpcaabaaaaeaaaaaaegaobaaaafaaaaaa
agaabaaaabaaaaaaegaobaaaaeaaaaaadcaaaaajpcaabaaaabaaaaaaegaobaaa
aaaaaaaakgakbaaaabaaaaaaegaobaaaaeaaaaaadcaaaaajpcaabaaaadaaaaaa
egaobaaaafaaaaaaegaobaaaafaaaaaaegaobaaaadaaaaaadcaaaaajpcaabaaa
aaaaaaaaegaobaaaaaaaaaaaegaobaaaaaaaaaaaegaobaaaadaaaaaaeeaaaaaf
pcaabaaaadaaaaaaegaobaaaaaaaaaaadcaaaaanpcaabaaaaaaaaaaaegaobaaa
aaaaaaaaegiocaaaacaaaaaaafaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadp
aaaaiadpaoaaaaakpcaabaaaaaaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadp
aaaaiadpegaobaaaaaaaaaaadiaaaaahpcaabaaaabaaaaaaegaobaaaabaaaaaa
egaobaaaadaaaaaadeaaaaakpcaabaaaabaaaaaaegaobaaaabaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaahpcaabaaaaaaaaaaaegaobaaa
aaaaaaaaegaobaaaabaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiccaaaacaaaaaaahaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaacaaaaaa
agaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaacaaaaaaaiaaaaaakgakbaaaaaaaaaaaegacbaaaabaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaacaaaaaaajaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaahhccabaaaagaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaa
dgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 60 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 32 [unity_4LightPosX0]
Vector 48 [unity_4LightPosY0]
Vector 64 [unity_4LightPosZ0]
Vector 80 [unity_4LightAtten0]
Vector 96 [unity_LightColor0]
Vector 112 [unity_LightColor1]
Vector 128 [unity_LightColor2]
Vector 144 [unity_LightColor3]
Vector 160 [unity_LightColor4]
Vector 176 [unity_LightColor5]
Vector 192 [unity_LightColor6]
Vector 208 [unity_LightColor7]
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
root12:aaaeaaaa
eefiecedfkhcgnompgiahpgcjlgcamnjmobcbbdaabaaaaaajebaaaaaaeaaaaaa
daaaaaaamiafaaaadiapaaaameapaaaaebgpgodjjaafaaaajaafaaaaaaacpopp
beafaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaabaaaeaaabaaaeaaaaaaaaaa
acaaacaaaiaaafaaaaaaaaaaacaacgaaahaaanaaaaaaaaaaadaaaaaaaeaabeaa
aaaaaaaaadaaamaaahaabiaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafbpaaapka
aaaaiadpaaaaaaaaaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaac
afaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapja
aeaaaaaeaaaaadoaacaaoejaabaaoekaabaaookaafaaaaadaaaaabiaadaakkka
adaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaiaabaaaaacabaaadiaacaaoeja
bcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoejaaeaaaaaeaaaaamoaacaaeeia
acaaeekaacaaoekaafaaaaadaaaaahiaaaaaffjabjaaoekaaeaaaaaeaaaaahia
biaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahiabkaaoekaaaaakkjaaaaaoeia
aeaaaaaeaaaaahiablaaoekaaaaappjaaaaaoeiaacaaaaadabaaahiaaaaaoeia
aeaaoekbaiaaaaadaaaaaiiaabaaoeiaabaaoeiaahaaaaacaaaaaiiaaaaappia
afaaaaadabaaahoaaaaappiaabaaoeiaacaaaaadabaaapiaaaaaaaibafaaoeka
acaaaaadacaaapiaaaaaffibagaaoekaacaaaaadaaaaapiaaaaakkibahaaoeka
afaaaaadadaaabiaabaaaajabmaaaakaafaaaaadadaaaciaabaaaajabnaaaaka
afaaaaadadaaaeiaabaaaajaboaaaakaafaaaaadaeaaabiaabaaffjabmaaffka
afaaaaadaeaaaciaabaaffjabnaaffkaafaaaaadaeaaaeiaabaaffjaboaaffka
acaaaaadadaaahiaadaaoeiaaeaaoeiaafaaaaadaeaaabiaabaakkjabmaakkka
afaaaaadaeaaaciaabaakkjabnaakkkaafaaaaadaeaaaeiaabaakkjaboaakkka
acaaaaadadaaahiaadaaoeiaaeaaoeiaceaaaaacaeaaahiaadaaoeiaafaaaaad
adaaapiaacaaoeiaaeaaffiaafaaaaadacaaapiaacaaoeiaacaaoeiaaeaaaaae
acaaapiaabaaoeiaabaaoeiaacaaoeiaaeaaaaaeabaaapiaabaaoeiaaeaaaaia
adaaoeiaaeaaaaaeabaaapiaaaaaoeiaaeaakkiaabaaoeiaaeaaaaaeaaaaapia
aaaaoeiaaaaaoeiaacaaoeiaahaaaaacacaaabiaaaaaaaiaahaaaaacacaaacia
aaaaffiaahaaaaacacaaaeiaaaaakkiaahaaaaacacaaaiiaaaaappiaabaaaaac
adaaabiabpaaaakaaeaaaaaeaaaaapiaaaaaoeiaaiaaoekaadaaaaiaafaaaaad
abaaapiaabaaoeiaacaaoeiaalaaaaadabaaapiaabaaoeiabpaaffkaagaaaaac
acaaabiaaaaaaaiaagaaaaacacaaaciaaaaaffiaagaaaaacacaaaeiaaaaakkia
agaaaaacacaaaiiaaaaappiaafaaaaadaaaaapiaabaaoeiaacaaoeiaafaaaaad
abaaahiaaaaaffiaakaaoekaaeaaaaaeabaaahiaajaaoekaaaaaaaiaabaaoeia
aeaaaaaeaaaaahiaalaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaahiaamaaoeka
aaaappiaaaaaoeiaafaaaaadaaaaaiiaaeaaffiaaeaaffiaaeaaaaaeaaaaaiia
aeaaaaiaaeaaaaiaaaaappibafaaaaadabaaapiaaeaacjiaaeaakeiaajaaaaad
acaaabiabaaaoekaabaaoeiaajaaaaadacaaaciabbaaoekaabaaoeiaajaaaaad
acaaaeiabcaaoekaabaaoeiaaeaaaaaeabaaahiabdaaoekaaaaappiaacaaoeia
abaaaaacaeaaaiiabpaaaakaajaaaaadacaaabiaanaaoekaaeaaoeiaajaaaaad
acaaaciaaoaaoekaaeaaoeiaajaaaaadacaaaeiaapaaoekaaeaaoeiaabaaaaac
aeaaahoaaeaaoeiaacaaaaadabaaahiaabaaoeiaacaaoeiaacaaaaadafaaahoa
aaaaoeiaabaaoeiaafaaaaadaaaaapiaaaaaffjabfaaoekaaeaaaaaeaaaaapia
beaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaapiabgaaoekaaaaakkjaaaaaoeia
aeaaaaaeaaaaapiabhaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappia
aaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaapoabpaaffka
abaaaaacadaaapoabpaaffkaabaaaaacaeaaaioabpaaffkaabaaaaacafaaaioa
bpaaffkappppaaaafdeieefcgiajaaaaeaaaabaafkacaaaafjaaaaaeegiocaaa
aaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaacnaaaaaafjaaaaaeegiocaaaadaaaaaabdaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaa
giaaaaacagaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaa
adaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaa
agbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaa
aaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
biaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaa
dhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaa
adaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaa
amaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaa
acaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaabaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaipccabaaaadaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaadgaaaaaipccabaaaaeaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaadiaaaaaibcaabaaa
abaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
abaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
abaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaa
acaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
abaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaacaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
hccabaaaafaaaaaaegacbaaaabaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaa
abaaaaaabkaabaaaabaaaaaadcaaaaakicaabaaaaaaaaaaaakaabaaaabaaaaaa
akaabaaaabaaaaaadkaabaiaebaaaaaaaaaaaaaadiaaaaahpcaabaaaacaaaaaa
jgacbaaaabaaaaaaegakbaaaabaaaaaabbaaaaaibcaabaaaadaaaaaaegiocaaa
acaaaaaacjaaaaaaegaobaaaacaaaaaabbaaaaaiccaabaaaadaaaaaaegiocaaa
acaaaaaackaaaaaaegaobaaaacaaaaaabbaaaaaiecaabaaaadaaaaaaegiocaaa
acaaaaaaclaaaaaaegaobaaaacaaaaaadcaaaaakhcaabaaaacaaaaaaegiccaaa
acaaaaaacmaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaadgaaaaaficaabaaa
abaaaaaaabeaaaaaaaaaiadpbbaaaaaibcaabaaaadaaaaaaegiocaaaacaaaaaa
cgaaaaaaegaobaaaabaaaaaabbaaaaaiccaabaaaadaaaaaaegiocaaaacaaaaaa
chaaaaaaegaobaaaabaaaaaabbaaaaaiecaabaaaadaaaaaaegiocaaaacaaaaaa
ciaaaaaaegaobaaaabaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaa
egacbaaaadaaaaaaaaaaaaajpcaabaaaadaaaaaafgafbaiaebaaaaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaadiaaaaahpcaabaaaaeaaaaaafgafbaaaabaaaaaa
egaobaaaadaaaaaadiaaaaahpcaabaaaadaaaaaaegaobaaaadaaaaaaegaobaaa
adaaaaaaaaaaaaajpcaabaaaafaaaaaaagaabaiaebaaaaaaaaaaaaaaegiocaaa
acaaaaaaacaaaaaaaaaaaaajpcaabaaaaaaaaaaakgakbaiaebaaaaaaaaaaaaaa
egiocaaaacaaaaaaaeaaaaaadcaaaaajpcaabaaaaeaaaaaaegaobaaaafaaaaaa
agaabaaaabaaaaaaegaobaaaaeaaaaaadcaaaaajpcaabaaaabaaaaaaegaobaaa
aaaaaaaakgakbaaaabaaaaaaegaobaaaaeaaaaaadcaaaaajpcaabaaaadaaaaaa
egaobaaaafaaaaaaegaobaaaafaaaaaaegaobaaaadaaaaaadcaaaaajpcaabaaa
aaaaaaaaegaobaaaaaaaaaaaegaobaaaaaaaaaaaegaobaaaadaaaaaaeeaaaaaf
pcaabaaaadaaaaaaegaobaaaaaaaaaaadcaaaaanpcaabaaaaaaaaaaaegaobaaa
aaaaaaaaegiocaaaacaaaaaaafaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadp
aaaaiadpaoaaaaakpcaabaaaaaaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadp
aaaaiadpegaobaaaaaaaaaaadiaaaaahpcaabaaaabaaaaaaegaobaaaabaaaaaa
egaobaaaadaaaaaadeaaaaakpcaabaaaabaaaaaaegaobaaaabaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaahpcaabaaaaaaaaaaaegaobaaa
aaaaaaaaegaobaaaabaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiccaaaacaaaaaaahaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaacaaaaaa
agaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaacaaaaaaaiaaaaaakgakbaaaaaaaaaaaegacbaaaabaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaacaaaaaaajaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaahhccabaaaagaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaa
dgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadoaaaaabejfdeheoieaaaaaa
aeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaa
hbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaacaaaaaaadadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaa
adaaaaaaadadaaaafaepfdejfeejepeoaaeoepfcenebemaafeeffiedepepfcee
aaklklklepfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
apaaaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaa
acaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaalmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaa
apaaaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaapaaaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "d3d9 " {
// Stats: 74 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 29 [_DetailAlbedoMap_ST]
Vector 28 [_MainTex_ST]
Vector 15 [_ProjectionParams]
Vector 16 [_ScreenParams]
Float 30 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 20 [unity_4LightAtten0]
Vector 17 [unity_4LightPosX0]
Vector 18 [unity_4LightPosY0]
Vector 19 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 23 [unity_SHAb]
Vector 22 [unity_SHAg]
Vector 21 [unity_SHAr]
Vector 26 [unity_SHBb]
Vector 25 [unity_SHBg]
Vector 24 [unity_SHBr]
Vector 27 [unity_SHC]
"vs_2_0
def c31, 0.5, 1, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
mad oT0.xy, v2, c28, c28.zwzw
mul r0.x, c30.x, c30.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c29.xyxy, c29
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add r1.xyz, r0, -c14
add r2, -r0.x, c17
add r3, -r0.y, c18
add r0, -r0.z, c19
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
dp4 r1.y, c5, v0
mul r4.x, r1.y, c15.x
mul r4.w, r4.x, c31.x
dp4 r1.x, c4, v0
dp4 r1.w, c7, v0
mul r4.xz, r1.xyww, c31.x
mad oT6.xy, r4.z, c16.zwzw, r4.xwzw
mul r4, r3, r3
mad r4, r2, r2, r4
mad r4, r0, r0, r4
rsq r5.x, r4.x
rsq r5.y, r4.y
rsq r5.z, r4.z
rsq r5.w, r4.w
mov r6.y, c31.y
mad r4, r4, c20, r6.y
mul r6.xyz, v1.y, c12
mad r6.xyz, c11, v1.x, r6
mad r6.xyz, c13, v1.z, r6
nrm r7.xyz, r6
mul r3, r3, r7.y
mad r2, r2, r7.x, r3
mad r0, r0, r7.z, r2
mul r0, r5, r0
max r0, r0, c31.z
rcp r2.x, r4.x
rcp r2.y, r4.y
rcp r2.z, r4.z
rcp r2.w, r4.w
mul r0, r0, r2
mul r2.xyz, r0.y, c1
mad r2.xyz, c0, r0.x, r2
mad r0.xyz, c2, r0.z, r2
mad r0.xyz, c3, r0.w, r0
mul r0.w, r7.y, r7.y
mad r0.w, r7.x, r7.x, -r0.w
mul r2, r7.yzzx, r7.xyzz
dp4 r3.x, c24, r2
dp4 r3.y, c25, r2
dp4 r3.z, c26, r2
mad r2.xyz, c27, r0.w, r3
mov r7.w, c31.y
dp4 r3.x, c21, r7
dp4 r3.y, c22, r7
dp4 r3.z, c23, r7
mov oT4.xyz, r7
add r2.xyz, r2, r3
add oT5.xyz, r0, r2
dp4 r1.z, c6, v0
mov oPos, r1
mov oT6.zw, r1
mov oT2, c31.z
mov oT3, c31.z
mov oT4.w, c31.z
mov oT5.w, c31.z

"
}
SubProgram "d3d11 " {
// Stats: 63 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 32 [unity_4LightPosX0]
Vector 48 [unity_4LightPosY0]
Vector 64 [unity_4LightPosZ0]
Vector 80 [unity_4LightAtten0]
Vector 96 [unity_LightColor0]
Vector 112 [unity_LightColor1]
Vector 128 [unity_LightColor2]
Vector 144 [unity_LightColor3]
Vector 160 [unity_LightColor4]
Vector 176 [unity_LightColor5]
Vector 192 [unity_LightColor6]
Vector 208 [unity_LightColor7]
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedmjmiooiocnebpohniinnnfgbnpfecgolabaaaaaakialaaaaadaaaaaa
cmaaaaaaliaaaaaakaabaaaaejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcaaakaaaaeaaaabaaiaacaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaa
fjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaa
fjaaaaaeegiocaaaadaaaaaabdaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
gfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadpccabaaa
ahaaaaaagiaaaaacahaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
aaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaa
abaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaa
abaaaaaaagaabaaaabaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaal
mccabaaaabaaaaaaagaebaaaabaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaa
aaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaa
aaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaabaaaaaa
fgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaa
egiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaak
hcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaa
abaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaa
aaaaaaaaegacbaaaabaaaaaaaaaaaaajhcaabaaaacaaaaaaegacbaaaabaaaaaa
egiccaiaebaaaaaaabaaaaaaaeaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaa
diaaaaahhccabaaaacaaaaaapgapbaaaabaaaaaaegacbaaaacaaaaaadgaaaaai
pccabaaaadaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgaaaaai
pccabaaaaeaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadgaaaaaf
iccabaaaafaaaaaaabeaaaaaaaaaaaaadiaaaaaibcaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaa
egacbaaaadaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaa
acaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhcaabaaa
acaaaaaapgapbaaaabaaaaaaegacbaaaacaaaaaadgaaaaafhccabaaaafaaaaaa
egacbaaaacaaaaaadiaaaaahicaabaaaabaaaaaabkaabaaaacaaaaaabkaabaaa
acaaaaaadcaaaaakicaabaaaabaaaaaaakaabaaaacaaaaaaakaabaaaacaaaaaa
dkaabaiaebaaaaaaabaaaaaadiaaaaahpcaabaaaadaaaaaajgacbaaaacaaaaaa
egakbaaaacaaaaaabbaaaaaibcaabaaaaeaaaaaaegiocaaaacaaaaaacjaaaaaa
egaobaaaadaaaaaabbaaaaaiccaabaaaaeaaaaaaegiocaaaacaaaaaackaaaaaa
egaobaaaadaaaaaabbaaaaaiecaabaaaaeaaaaaaegiocaaaacaaaaaaclaaaaaa
egaobaaaadaaaaaadcaaaaakhcaabaaaadaaaaaaegiccaaaacaaaaaacmaaaaaa
pgapbaaaabaaaaaaegacbaaaaeaaaaaadgaaaaaficaabaaaacaaaaaaabeaaaaa
aaaaiadpbbaaaaaibcaabaaaaeaaaaaaegiocaaaacaaaaaacgaaaaaaegaobaaa
acaaaaaabbaaaaaiccaabaaaaeaaaaaaegiocaaaacaaaaaachaaaaaaegaobaaa
acaaaaaabbaaaaaiecaabaaaaeaaaaaaegiocaaaacaaaaaaciaaaaaaegaobaaa
acaaaaaaaaaaaaahhcaabaaaadaaaaaaegacbaaaadaaaaaaegacbaaaaeaaaaaa
aaaaaaajpcaabaaaaeaaaaaafgafbaiaebaaaaaaabaaaaaaegiocaaaacaaaaaa
adaaaaaadiaaaaahpcaabaaaafaaaaaafgafbaaaacaaaaaaegaobaaaaeaaaaaa
diaaaaahpcaabaaaaeaaaaaaegaobaaaaeaaaaaaegaobaaaaeaaaaaaaaaaaaaj
pcaabaaaagaaaaaaagaabaiaebaaaaaaabaaaaaaegiocaaaacaaaaaaacaaaaaa
aaaaaaajpcaabaaaabaaaaaakgakbaiaebaaaaaaabaaaaaaegiocaaaacaaaaaa
aeaaaaaadcaaaaajpcaabaaaafaaaaaaegaobaaaagaaaaaaagaabaaaacaaaaaa
egaobaaaafaaaaaadcaaaaajpcaabaaaacaaaaaaegaobaaaabaaaaaakgakbaaa
acaaaaaaegaobaaaafaaaaaadcaaaaajpcaabaaaaeaaaaaaegaobaaaagaaaaaa
egaobaaaagaaaaaaegaobaaaaeaaaaaadcaaaaajpcaabaaaabaaaaaaegaobaaa
abaaaaaaegaobaaaabaaaaaaegaobaaaaeaaaaaaeeaaaaafpcaabaaaaeaaaaaa
egaobaaaabaaaaaadcaaaaanpcaabaaaabaaaaaaegaobaaaabaaaaaaegiocaaa
acaaaaaaafaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaiadpaoaaaaak
pcaabaaaabaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadpaaaaiadpegaobaaa
abaaaaaadiaaaaahpcaabaaaacaaaaaaegaobaaaacaaaaaaegaobaaaaeaaaaaa
deaaaaakpcaabaaaacaaaaaaegaobaaaacaaaaaaaceaaaaaaaaaaaaaaaaaaaaa
aaaaaaaaaaaaaaaadiaaaaahpcaabaaaabaaaaaaegaobaaaabaaaaaaegaobaaa
acaaaaaadiaaaaaihcaabaaaacaaaaaafgafbaaaabaaaaaaegiccaaaacaaaaaa
ahaaaaaadcaaaaakhcaabaaaacaaaaaaegiccaaaacaaaaaaagaaaaaaagaabaaa
abaaaaaaegacbaaaacaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaacaaaaaa
aiaaaaaakgakbaaaabaaaaaaegacbaaaacaaaaaadcaaaaakhcaabaaaabaaaaaa
egiccaaaacaaaaaaajaaaaaapgapbaaaabaaaaaaegacbaaaabaaaaaaaaaaaaah
hccabaaaagaaaaaaegacbaaaabaaaaaaegacbaaaadaaaaaadgaaaaaficcabaaa
agaaaaaaabeaaaaaaaaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaa
akiacaaaabaaaaaaafaaaaaadiaaaaakncaabaaaabaaaaaaagahbaaaaaaaaaaa
aceaaaaaaaaaaadpaaaaaaaaaaaaaadpaaaaaadpdgaaaaafmccabaaaahaaaaaa
kgaobaaaaaaaaaaaaaaaaaahdccabaaaahaaaaaakgakbaaaabaaaaaamgaabaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 48 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SHADOWS_NATIVE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityShadows" 416
Matrix 128 [unity_World2Shadow0]
Matrix 192 [unity_World2Shadow1]
Matrix 256 [unity_World2Shadow2]
Matrix 320 [unity_World2Shadow3]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityShadows" 3
BindCB  "UnityPerDraw" 4
"vs_4_0_level_9_1
root12:aaafaaaa
eefiecedbccfdcbjbidadpfoipgeoaboppnlmhpdabaaaaaacmaoaaaaaeaaaaaa
daaaaaaaleaeaaaaliamaaaaeeanaaaaebgpgodjhmaeaaaahmaeaaaaaaacpopp
aaaeaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaabaaaeaaabaaaeaaaaaaaaaa
acaacgaaahaaafaaaaaaaaaaadaaaiaaaeaaamaaaaaaaaaaaeaaaaaaaeaabaaa
aaaaaaaaaeaaamaaahaabeaaaaaaaaaaaaaaaaaaaaacpoppfbaaaaafblaaapka
aaaaiadpaaaaaaaaaaaaaaaaaaaaaaaabpaaaaacafaaaaiaaaaaapjabpaaaaac
afaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapja
aeaaaaaeaaaaadoaacaaoejaabaaoekaabaaookaafaaaaadaaaaabiaadaakkka
adaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaiaabaaaaacabaaadiaacaaoeja
bcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoejaaeaaaaaeaaaaamoaacaaeeia
acaaeekaacaaoekaafaaaaadaaaaahiaaaaaffjabfaaoekaaeaaaaaeaaaaahia
beaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahiabgaaoekaaaaakkjaaaaaoeia
aeaaaaaeaaaaahiabhaaoekaaaaappjaaaaaoeiaacaaaaadaaaaahiaaaaaoeia
aeaaoekbaiaaaaadaaaaaiiaaaaaoeiaaaaaoeiaahaaaaacaaaaaiiaaaaappia
afaaaaadabaaahoaaaaappiaaaaaoeiaafaaaaadaaaaapiaaaaaffjabfaaoeka
aeaaaaaeaaaaapiabeaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaapiabgaaoeka
aaaakkjaaaaaoeiaaeaaaaaeaaaaapiabhaaoekaaaaappjaaaaaoeiaafaaaaad
abaaapiaaaaaffiaanaaoekaaeaaaaaeabaaapiaamaaoekaaaaaaaiaabaaoeia
aeaaaaaeabaaapiaaoaaoekaaaaakkiaabaaoeiaaeaaaaaeagaaapoaapaaoeka
aaaappiaabaaoeiaafaaaaadaaaaabiaabaaaajabiaaaakaafaaaaadaaaaacia
abaaaajabjaaaakaafaaaaadaaaaaeiaabaaaajabkaaaakaafaaaaadabaaabia
abaaffjabiaaffkaafaaaaadabaaaciaabaaffjabjaaffkaafaaaaadabaaaeia
abaaffjabkaaffkaacaaaaadaaaaahiaaaaaoeiaabaaoeiaafaaaaadabaaabia
abaakkjabiaakkkaafaaaaadabaaaciaabaakkjabjaakkkaafaaaaadabaaaeia
abaakkjabkaakkkaacaaaaadaaaaahiaaaaaoeiaabaaoeiaceaaaaacabaaahia
aaaaoeiaafaaaaadaaaaabiaabaaffiaabaaffiaaeaaaaaeaaaaabiaabaaaaia
abaaaaiaaaaaaaibafaaaaadacaaapiaabaacjiaabaakeiaajaaaaadadaaabia
aiaaoekaacaaoeiaajaaaaadadaaaciaajaaoekaacaaoeiaajaaaaadadaaaeia
akaaoekaacaaoeiaaeaaaaaeaaaaahiaalaaoekaaaaaaaiaadaaoeiaabaaaaac
abaaaiiablaaaakaajaaaaadacaaabiaafaaoekaabaaoeiaajaaaaadacaaacia
agaaoekaabaaoeiaajaaaaadacaaaeiaahaaoekaabaaoeiaabaaaaacaeaaahoa
abaaoeiaacaaaaadafaaahoaaaaaoeiaacaaoeiaafaaaaadaaaaapiaaaaaffja
bbaaoekaaeaaaaaeaaaaapiabaaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaapia
bcaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapiabdaaoekaaaaappjaaaaaoeia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacacaaapoablaaffkaabaaaaacadaaapoablaaffkaabaaaaacaeaaaioa
blaaffkaabaaaaacafaaaioablaaffkappppaaaafdeieefcpmahaaaaeaaaabaa
ppabaaaafjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaa
afaaaaaafjaaaaaeegiocaaaacaaaaaacnaaaaaafjaaaaaeegiocaaaadaaaaaa
amaaaaaafjaaaaaeegiocaaaaeaaaaaabdaaaaaafpaaaaadpcbabaaaaaaaaaaa
fpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaa
adaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaa
gfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaa
aeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaad
pccabaaaahaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaaeaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
aeaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaaeaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpccabaaaaaaaaaaaegiocaaaaeaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaa
abeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaa
acaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaa
agiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaa
abaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaa
alaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaaeaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaaamaaaaaaagbabaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaa
aoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaaeaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaaj
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaa
aaaaaaaaegacbaaaaaaaaaaadgaaaaaipccabaaaadaaaaaaaceaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaadgaaaaaipccabaaaaeaaaaaaaceaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaadiaaaaaibcaabaaaaaaaaaaaakbabaaaabaaaaaa
akiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaaaaaaaaaaakbabaaaabaaaaaa
akiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaaaaaaaaaaakbabaaaabaaaaaa
akiacaaaaeaaaaaabcaaaaaadiaaaaaibcaabaaaabaaaaaabkbabaaaabaaaaaa
bkiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaabkbabaaaabaaaaaa
bkiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaabkbabaaaabaaaaaa
bkiacaaaaeaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaadiaaaaaibcaabaaaabaaaaaackbabaaaabaaaaaackiacaaa
aeaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaackbabaaaabaaaaaackiacaaa
aeaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaackbabaaaabaaaaaackiacaaa
aeaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
abaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaadiaaaaahbcaabaaa
abaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaadcaaaaakbcaabaaaabaaaaaa
akaabaaaaaaaaaaaakaabaaaaaaaaaaaakaabaiaebaaaaaaabaaaaaadiaaaaah
pcaabaaaacaaaaaajgacbaaaaaaaaaaaegakbaaaaaaaaaaabbaaaaaibcaabaaa
adaaaaaaegiocaaaacaaaaaacjaaaaaaegaobaaaacaaaaaabbaaaaaiccaabaaa
adaaaaaaegiocaaaacaaaaaackaaaaaaegaobaaaacaaaaaabbaaaaaiecaabaaa
adaaaaaaegiocaaaacaaaaaaclaaaaaaegaobaaaacaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaacaaaaaacmaaaaaaagaabaaaabaaaaaaegacbaaaadaaaaaa
dgaaaaaficaabaaaaaaaaaaaabeaaaaaaaaaiadpbbaaaaaibcaabaaaacaaaaaa
egiocaaaacaaaaaacgaaaaaaegaobaaaaaaaaaaabbaaaaaiccaabaaaacaaaaaa
egiocaaaacaaaaaachaaaaaaegaobaaaaaaaaaaabbaaaaaiecaabaaaacaaaaaa
egiocaaaacaaaaaaciaaaaaaegaobaaaaaaaaaaaaaaaaaahhccabaaaagaaaaaa
egacbaaaabaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaaagaaaaaaabeaaaaa
aaaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaaeaaaaaa
anaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaamaaaaaaagbabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaa
aoaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaaeaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaaajaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaaiaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaakaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaahaaaaaaegiocaaaadaaaaaa
alaaaaaapgapbaaaaaaaaaaaegaobaaaabaaaaaadoaaaaabejfdeheoieaaaaaa
aeaaaaaaaiaaaaaagiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaa
hbaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaahahaaaahiaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaacaaaaaaadadaaaahiaaaaaaabaaaaaaaaaaaaaaadaaaaaa
adaaaaaaadadaaaafaepfdejfeejepeoaaeoepfcenebemaafeeffiedepepfcee
aaklklklepfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
apaaaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaa
acaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaa
apaaaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaa
agaaaaaaaaaaaaaaadaaaaaaahaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklkl"
}
SubProgram "d3d11_9x " {
// Stats: 68 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SHADOWS_NATIVE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 32 [unity_4LightPosX0]
Vector 48 [unity_4LightPosY0]
Vector 64 [unity_4LightPosZ0]
Vector 80 [unity_4LightAtten0]
Vector 96 [unity_LightColor0]
Vector 112 [unity_LightColor1]
Vector 128 [unity_LightColor2]
Vector 144 [unity_LightColor3]
Vector 160 [unity_LightColor4]
Vector 176 [unity_LightColor5]
Vector 192 [unity_LightColor6]
Vector 208 [unity_LightColor7]
Vector 608 [unity_SHAr]
Vector 624 [unity_SHAg]
Vector 640 [unity_SHAb]
Vector 656 [unity_SHBr]
Vector 672 [unity_SHBg]
Vector 688 [unity_SHBb]
Vector 704 [unity_SHC]
ConstBuffer "UnityShadows" 416
Matrix 128 [unity_World2Shadow0]
Matrix 192 [unity_World2Shadow1]
Matrix 256 [unity_World2Shadow2]
Matrix 320 [unity_World2Shadow3]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityShadows" 3
BindCB  "UnityPerDraw" 4
"vs_4_0_level_9_1
root12:aaafaaaa
eefiecedkfgmgfndekmhdngcpnjpjefpdiihflkjabaaaaaajmbcaaaaaeaaaaaa
daaaaaaagmagaaaacibbaaaalebbaaaaebgpgodjdeagaaaadeagaaaaaaacpopp
kmafaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaabaaaeaaabaaaeaaaaaaaaaa
acaaacaaaiaaafaaaaaaaaaaacaacgaaahaaanaaaaaaaaaaadaaaiaaaeaabeaa
aaaaaaaaaeaaaaaaaeaabiaaaaaaaaaaaeaaamaaahaabmaaaaaaaaaaaaaaaaaa
aaacpoppfbaaaaafcdaaapkaaaaaiadpaaaaaaaaaaaaaaaaaaaaaaaabpaaaaac
afaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapja
bpaaaaacafaaadiaadaaapjaaeaaaaaeaaaaadoaacaaoejaabaaoekaabaaooka
afaaaaadaaaaabiaadaakkkaadaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaia
abaaaaacabaaadiaacaaoejabcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoeja
aeaaaaaeaaaaamoaacaaeeiaacaaeekaacaaoekaafaaaaadaaaaahiaaaaaffja
bnaaoekaaeaaaaaeaaaaahiabmaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahia
boaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaahiabpaaoekaaaaappjaaaaaoeia
acaaaaadabaaahiaaaaaoeiaaeaaoekbaiaaaaadaaaaaiiaabaaoeiaabaaoeia
ahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahoaaaaappiaabaaoeiaafaaaaad
abaaapiaaaaaffjabnaaoekaaeaaaaaeabaaapiabmaaoekaaaaaaajaabaaoeia
aeaaaaaeabaaapiaboaaoekaaaaakkjaabaaoeiaaeaaaaaeabaaapiabpaaoeka
aaaappjaabaaoeiaafaaaaadacaaapiaabaaffiabfaaoekaaeaaaaaeacaaapia
beaaoekaabaaaaiaacaaoeiaaeaaaaaeacaaapiabgaaoekaabaakkiaacaaoeia
aeaaaaaeagaaapoabhaaoekaabaappiaacaaoeiaacaaaaadabaaapiaaaaaaaib
afaaoekaacaaaaadacaaapiaaaaaffibagaaoekaacaaaaadaaaaapiaaaaakkib
ahaaoekaafaaaaadadaaabiaabaaaajacaaaaakaafaaaaadadaaaciaabaaaaja
cbaaaakaafaaaaadadaaaeiaabaaaajaccaaaakaafaaaaadaeaaabiaabaaffja
caaaffkaafaaaaadaeaaaciaabaaffjacbaaffkaafaaaaadaeaaaeiaabaaffja
ccaaffkaacaaaaadadaaahiaadaaoeiaaeaaoeiaafaaaaadaeaaabiaabaakkja
caaakkkaafaaaaadaeaaaciaabaakkjacbaakkkaafaaaaadaeaaaeiaabaakkja
ccaakkkaacaaaaadadaaahiaadaaoeiaaeaaoeiaceaaaaacaeaaahiaadaaoeia
afaaaaadadaaapiaacaaoeiaaeaaffiaafaaaaadacaaapiaacaaoeiaacaaoeia
aeaaaaaeacaaapiaabaaoeiaabaaoeiaacaaoeiaaeaaaaaeabaaapiaabaaoeia
aeaaaaiaadaaoeiaaeaaaaaeabaaapiaaaaaoeiaaeaakkiaabaaoeiaaeaaaaae
aaaaapiaaaaaoeiaaaaaoeiaacaaoeiaahaaaaacacaaabiaaaaaaaiaahaaaaac
acaaaciaaaaaffiaahaaaaacacaaaeiaaaaakkiaahaaaaacacaaaiiaaaaappia
abaaaaacadaaabiacdaaaakaaeaaaaaeaaaaapiaaaaaoeiaaiaaoekaadaaaaia
afaaaaadabaaapiaabaaoeiaacaaoeiaalaaaaadabaaapiaabaaoeiacdaaffka
agaaaaacacaaabiaaaaaaaiaagaaaaacacaaaciaaaaaffiaagaaaaacacaaaeia
aaaakkiaagaaaaacacaaaiiaaaaappiaafaaaaadaaaaapiaabaaoeiaacaaoeia
afaaaaadabaaahiaaaaaffiaakaaoekaaeaaaaaeabaaahiaajaaoekaaaaaaaia
abaaoeiaaeaaaaaeaaaaahiaalaaoekaaaaakkiaabaaoeiaaeaaaaaeaaaaahia
amaaoekaaaaappiaaaaaoeiaafaaaaadaaaaaiiaaeaaffiaaeaaffiaaeaaaaae
aaaaaiiaaeaaaaiaaeaaaaiaaaaappibafaaaaadabaaapiaaeaacjiaaeaakeia
ajaaaaadacaaabiabaaaoekaabaaoeiaajaaaaadacaaaciabbaaoekaabaaoeia
ajaaaaadacaaaeiabcaaoekaabaaoeiaaeaaaaaeabaaahiabdaaoekaaaaappia
acaaoeiaabaaaaacaeaaaiiacdaaaakaajaaaaadacaaabiaanaaoekaaeaaoeia
ajaaaaadacaaaciaaoaaoekaaeaaoeiaajaaaaadacaaaeiaapaaoekaaeaaoeia
abaaaaacaeaaahoaaeaaoeiaacaaaaadabaaahiaabaaoeiaacaaoeiaacaaaaad
afaaahoaaaaaoeiaabaaoeiaafaaaaadaaaaapiaaaaaffjabjaaoekaaeaaaaae
aaaaapiabiaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaapiabkaaoekaaaaakkja
aaaaoeiaaeaaaaaeaaaaapiablaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadma
aaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaapoa
cdaaffkaabaaaaacadaaapoacdaaffkaabaaaaacaeaaaioacdaaffkaabaaaaac
afaaaioacdaaffkappppaaaafdeieefcleakaaaaeaaaabaaknacaaaafjaaaaae
egiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaae
egiocaaaacaaaaaacnaaaaaafjaaaaaeegiocaaaadaaaaaaamaaaaaafjaaaaae
egiocaaaaeaaaaaabdaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaa
abaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaad
pccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadpccabaaaahaaaaaa
giaaaaacagaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaa
aeaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaaaaaaaaa
agbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
aeaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaa
aaaaaaaaegiocaaaaeaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
biaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaa
dhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaa
adaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaa
amaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaa
acaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaaeaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaaeaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaabaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaipccabaaaadaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaadgaaaaaipccabaaaaeaaaaaaaceaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaaabeaaaaaaaaaaaaadiaaaaaibcaabaaa
abaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaa
abaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaa
abaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaabcaaaaaadiaaaaaibcaabaaa
acaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaabcaaaaaaaaaaaaahhcaabaaa
abaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaacaaaaaa
ckbabaaaabaaaaaackiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaa
ckbabaaaabaaaaaackiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaa
ckbabaaaabaaaaaackiacaaaaeaaaaaabcaaaaaaaaaaaaahhcaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
hccabaaaafaaaaaaegacbaaaabaaaaaadiaaaaahicaabaaaaaaaaaaabkaabaaa
abaaaaaabkaabaaaabaaaaaadcaaaaakicaabaaaaaaaaaaaakaabaaaabaaaaaa
akaabaaaabaaaaaadkaabaiaebaaaaaaaaaaaaaadiaaaaahpcaabaaaacaaaaaa
jgacbaaaabaaaaaaegakbaaaabaaaaaabbaaaaaibcaabaaaadaaaaaaegiocaaa
acaaaaaacjaaaaaaegaobaaaacaaaaaabbaaaaaiccaabaaaadaaaaaaegiocaaa
acaaaaaackaaaaaaegaobaaaacaaaaaabbaaaaaiecaabaaaadaaaaaaegiocaaa
acaaaaaaclaaaaaaegaobaaaacaaaaaadcaaaaakhcaabaaaacaaaaaaegiccaaa
acaaaaaacmaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaadgaaaaaficaabaaa
abaaaaaaabeaaaaaaaaaiadpbbaaaaaibcaabaaaadaaaaaaegiocaaaacaaaaaa
cgaaaaaaegaobaaaabaaaaaabbaaaaaiccaabaaaadaaaaaaegiocaaaacaaaaaa
chaaaaaaegaobaaaabaaaaaabbaaaaaiecaabaaaadaaaaaaegiocaaaacaaaaaa
ciaaaaaaegaobaaaabaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaa
egacbaaaadaaaaaaaaaaaaajpcaabaaaadaaaaaafgafbaiaebaaaaaaaaaaaaaa
egiocaaaacaaaaaaadaaaaaadiaaaaahpcaabaaaaeaaaaaafgafbaaaabaaaaaa
egaobaaaadaaaaaadiaaaaahpcaabaaaadaaaaaaegaobaaaadaaaaaaegaobaaa
adaaaaaaaaaaaaajpcaabaaaafaaaaaaagaabaiaebaaaaaaaaaaaaaaegiocaaa
acaaaaaaacaaaaaaaaaaaaajpcaabaaaaaaaaaaakgakbaiaebaaaaaaaaaaaaaa
egiocaaaacaaaaaaaeaaaaaadcaaaaajpcaabaaaaeaaaaaaegaobaaaafaaaaaa
agaabaaaabaaaaaaegaobaaaaeaaaaaadcaaaaajpcaabaaaabaaaaaaegaobaaa
aaaaaaaakgakbaaaabaaaaaaegaobaaaaeaaaaaadcaaaaajpcaabaaaadaaaaaa
egaobaaaafaaaaaaegaobaaaafaaaaaaegaobaaaadaaaaaadcaaaaajpcaabaaa
aaaaaaaaegaobaaaaaaaaaaaegaobaaaaaaaaaaaegaobaaaadaaaaaaeeaaaaaf
pcaabaaaadaaaaaaegaobaaaaaaaaaaadcaaaaanpcaabaaaaaaaaaaaegaobaaa
aaaaaaaaegiocaaaacaaaaaaafaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadp
aaaaiadpaoaaaaakpcaabaaaaaaaaaaaaceaaaaaaaaaiadpaaaaiadpaaaaiadp
aaaaiadpegaobaaaaaaaaaaadiaaaaahpcaabaaaabaaaaaaegaobaaaabaaaaaa
egaobaaaadaaaaaadeaaaaakpcaabaaaabaaaaaaegaobaaaabaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadiaaaaahpcaabaaaaaaaaaaaegaobaaa
aaaaaaaaegaobaaaabaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiccaaaacaaaaaaahaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaacaaaaaa
agaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaacaaaaaaaiaaaaaakgakbaaaaaaaaaaaegacbaaaabaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaacaaaaaaajaaaaaapgapbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaahhccabaaaagaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaa
dgaaaaaficcabaaaagaaaaaaabeaaaaaaaaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaaeaaaaaaanaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaaeaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaaeaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaapaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaadaaaaaaajaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaa
aiaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaabaaaaaa
egiocaaaadaaaaaaakaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pccabaaaahaaaaaaegiocaaaadaaaaaaalaaaaaapgapbaaaaaaaaaaaegaobaaa
abaaaaaadoaaaaabejfdeheoieaaaaaaaeaaaaaaaiaaaaaagiaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapapaaaahbaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaahahaaaahiaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaaadadaaaa
hiaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaafaepfdejfeejepeo
aaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheooaaaaaaaaiaaaaaa
aiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaneaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaaaaaaaaaa
adaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 45 math, 4 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Vector 4 [_Color]
Float 6 [_Glossiness]
Vector 3 [_LightColor0]
Float 5 [_Metallic]
Vector 0 [_WorldSpaceLightPos0]
Vector 2 [unity_ColorSpaceDielectricSpec]
Vector 1 [unity_SpecCube0_HDR]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_NHxRoughness] 2D 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_OcclusionMap] 2D 3
"ps_2_0
def c7, -7, 7, 1, 16
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t4.xyz
dcl_pp t5.xyz
dcl_cube s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
mov r0.xyz, c7
mad_pp r1.w, c6.x, r0.x, r0.y
nrm_pp r2.xyz, t4
dp3_pp r2.w, t1, r2
add_pp r2.w, r2.w, r2.w
mad_pp r1.xyz, r2, -r2.w, t1
dp3_pp r2.w, -t1, r2
add_pp r0.x, r2.w, r2.w
mov_sat_pp r2.w, r2.w
add_pp r3.y, -r2.w, c7.z
mad_pp r4.xyz, r2, -r0.x, -t1
dp3_pp r3.x, r4, c0
mul_pp r0.xy, r3, r3
mul_pp r3.xy, r0, r0
add_pp r3.z, r0.z, -c6.x
mov_pp r0.x, r3.x
mov_pp r0.y, r3.z
texldb_pp r1, r1, s0
texld_pp r4, t0, s3
texld r5, t0, s2
texld r0, r0, s1
pow_pp r2.w, r1.w, c1.y
mul_pp r1.w, r2.w, c1.x
mul_pp r0.yzw, r1.wzyx, r1.w
mul_pp r0.yzw, r4.y, r0
mul_pp r1.xyz, r4.y, t5
dp3_sat_pp r1.w, r2, c0
mul_pp r2.xyz, r1.w, c3
mov r4, c2
mad_pp r1.w, c5.x, -r4.w, r4.w
add_pp r2.w, -r1.w, c6.x
add_sat_pp r2.w, r2.w, c7.z
mad_pp r6.xyz, c4, r5, -r4
mul_pp r5.xyz, r5, c4
mul_pp r5.xyz, r1.w, r5
mad_pp r4.xyz, c5.x, r6, r4
lrp_pp r6.xyz, r3.y, r2.w, r4
mul_pp r0.yzw, r0, r6.wzyx
mad_pp r0.yzw, r1.wzyx, r5.wzyx, r0
mul_pp r2.w, r0.x, c7.w
mad_pp r1.xyz, r2.w, r4, r5
mad_pp r0.xyz, r1, r2, r0.wzyx
mov_pp r0.w, c7.z
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 38 math, 3 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
SetTexture 0 [_MainTex] 2D 2
SetTexture 1 [_OcclusionMap] 2D 3
SetTexture 2 [unity_NHxRoughness] 2D 1
SetTexture 3 [unity_SpecCube0] CUBE 0
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityReflectionProbes" 128
Vector 48 [unity_SpecCube0_HDR]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityReflectionProbes" 2
"ps_4_0
root12:aeadaeaa
eefiecedgjplbbnieabnjkgmknkkdbdojipbnnjnabaaaaaalaahaaaaadaaaaaa
cmaaaaaapmaaaaaadaabaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaalmaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaalmaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apahaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefchiagaaaaeaaaaaaajoabaaaa
fjaaaaaeegiocaaaaaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaa
fjaaaaaeegiocaaaacaaaaaaaeaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaa
fibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaa
fibiaaaeaahabaaaacaaaaaaffffaaaafidaaaaeaahabaaaadaaaaaaffffaaaa
gcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaa
afaaaaaagcbaaaadhcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
ahaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
agaabaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaa
acaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaakhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaia
ebaaaaaaaaaaaaaaegbcbaaaacaaaaaaaaaaaaamjcaabaaaacaaaaaapgipcaia
ebaaaaaaaaaaaaaaanaaaaaaaceaaaaaaaaaiadpaaaaaaaaaaaaaaaaaaaaiadp
diaaaaahicaabaaaaaaaaaaaakaabaaaacaaaaaaabeaaaaaaaaaoaeaeiaaaaal
pcaabaaaabaaaaaaegacbaaaabaaaaaaeghobaaaadaaaaaaaagabaaaaaaaaaaa
dkaabaaaaaaaaaaacpaaaaaficaabaaaaaaaaaaadkaabaaaabaaaaaadiaaaaai
icaabaaaaaaaaaaadkaabaaaaaaaaaaabkiacaaaacaaaaaaadaaaaaabjaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaiicaabaaaaaaaaaaadkaabaaa
aaaaaaaaakiacaaaacaaaaaaadaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
abaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaadaaaaaaegbabaaaabaaaaaa
eghobaaaabaaaaaaaagabaaaadaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
abaaaaaafgafbaaaadaaaaaadiaaaaahhcaabaaaadaaaaaafgafbaaaadaaaaaa
egbcbaaaagaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaa
egacbaaaaaaaaaaaaaaaaaahicaabaaaabaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadgcaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaaaaaaaaaiccaabaaa
aeaaaaaadkaabaiaebaaaaaaaaaaaaaaabeaaaaaaaaaiadpdcaaaaalhcaabaaa
afaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaaabaaaaaaegbcbaiaebaaaaaa
acaaaaaabacaaaaibcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaabaaaaaa
aaaaaaaadiaaaaaihcaabaaaaaaaaaaaagaabaaaaaaaaaaaegiccaaaaaaaaaaa
agaaaaaabaaaaaaibcaabaaaaeaaaaaaegacbaaaafaaaaaaegiccaaaabaaaaaa
aaaaaaaadiaaaaahdcaabaaaaeaaaaaaegaabaaaaeaaaaaaegaabaaaaeaaaaaa
diaaaaahgcaabaaaacaaaaaaagabbaaaaeaaaaaaagabbaaaaeaaaaaadcaaaaan
icaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaa
acaaaaaadkiacaaaaaaaaaaaacaaaaaaaaaaaaajicaabaaaabaaaaaadkaabaia
ebaaaaaaaaaaaaaadkiacaaaaaaaaaaaanaaaaaaaacaaaahicaabaaaabaaaaaa
dkaabaaaabaaaaaaabeaaaaaaaaaiadpefaaaaajpcaabaaaaeaaaaaaegbabaaa
abaaaaaaeghobaaaaaaaaaaaaagabaaaacaaaaaadcaaaaamhcaabaaaafaaaaaa
egiccaaaaaaaaaaaajaaaaaaegacbaaaaeaaaaaaegiccaiaebaaaaaaaaaaaaaa
acaaaaaadiaaaaaihcaabaaaaeaaaaaaegacbaaaaeaaaaaaegiccaaaaaaaaaaa
ajaaaaaadiaaaaahhcaabaaaaeaaaaaapgapbaaaaaaaaaaaegacbaaaaeaaaaaa
dcaaaaalhcaabaaaafaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaafaaaaaa
egiccaaaaaaaaaaaacaaaaaaaaaaaaaihcaabaaaagaaaaaapgapbaaaabaaaaaa
egacbaiaebaaaaaaafaaaaaadcaaaaajhcaabaaaagaaaaaakgakbaaaacaaaaaa
egacbaaaagaaaaaaegacbaaaafaaaaaaefaaaaajpcaabaaaacaaaaaangafbaaa
acaaaaaaeghobaaaacaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaaaaaaaaa
akaabaaaacaaaaaaabeaaaaaaaaaiaebdcaaaaajhcaabaaaacaaaaaapgapbaaa
aaaaaaaaegacbaaaafaaaaaaegacbaaaaeaaaaaadiaaaaahhcaabaaaabaaaaaa
egacbaaaabaaaaaaegacbaaaagaaaaaadcaaaaajhcaabaaaabaaaaaaegacbaaa
adaaaaaaegacbaaaaeaaaaaaegacbaaaabaaaaaadcaaaaajhccabaaaaaaaaaaa
egacbaaaacaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 35 math, 3 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
SetTexture 0 [_MainTex] 2D 2
SetTexture 1 [_OcclusionMap] 2D 3
SetTexture 2 [unity_SpecCube0] CUBE 0
SetTexture 3 [unity_NHxRoughness] 2D 1
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityReflectionProbes" 128
Vector 48 [unity_SpecCube0_HDR]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityReflectionProbes" 2
"ps_4_0_level_9_1
root12:aeadaeaa
eefiecedgjakhkdlcbeiacjjaoibiaeckcibcnekabaaaaaacialaaaaaeaaaaaa
daaaaaaaomadaaaaceakaaaapeakaaaaebgpgodjleadaaaaleadaaaaaaacpppp
diadaaaahmaaaaaaagaadeaaaaaahmaaaaaahmaaaeaaceaaaaaahmaaacaaaaaa
adababaaaaacacaaabadadaaaaaaacaaabaaaaaaaaaaaaaaaaaaagaaabaaabaa
aaaaaaaaaaaaajaaabaaacaaaaaaaaaaaaaaanaaabaaadaaaaaaaaaaabaaaaaa
abaaaeaaaaaaaaaaacaaadaaabaaafaaaaaaaaaaaaacppppfbaaaaafagaaapka
aaaaoamaaaaaoaeaaaaaiadpaaaaiaebbpaaaaacaaaaaaiaaaaaaplabpaaaaac
aaaaaaiaabaachlabpaaaaacaaaaaaiaaeaacplabpaaaaacaaaaaaiaafaacpla
bpaaaaacaaaaaajiaaaiapkabpaaaaacaaaaaajaabaiapkabpaaaaacaaaaaaja
acaiapkabpaaaaacaaaaaajaadaiapkaabaaaaacaaaaamiaadaaoekaaeaaaaae
abaaciiaaaaappiaagaaaakaagaaffkaceaaaaacacaachiaaeaaoelaaiaaaaad
acaaciiaabaaoelaacaaoeiaacaaaaadacaaciiaacaappiaacaappiaaeaaaaae
abaachiaacaaoeiaacaappibabaaoelaaiaaaaadacaaciiaabaaoelbacaaoeia
acaaaaadaaaacbiaacaappiaacaappiaabaaaaacacaadiiaacaappiaacaaaaad
adaacciaacaappibagaakkkaaeaaaaaeaeaachiaacaaoeiaaaaaaaibabaaoelb
aiaaaaadadaacbiaaeaaoeiaaeaaoekaafaaaaadaaaacdiaadaaoeiaadaaoeia
afaaaaadadaacdiaaaaaoeiaaaaaoeiaacaaaaadadaaceiaaaaappibagaakkka
abaaaaacaaaacbiaadaaaaiaabaaaaacaaaacciaadaakkiaecaaacadabaacpia
abaaoeiaaaaioekaecaaaaadaeaacpiaaaaaoelaadaioekaecaaaaadafaaapia
aaaaoelaacaioekaecaaaaadagaaapiaaaaaoeiaabaioekaafaaaaadabaaciia
abaappiaafaaaakaafaaaaadabaachiaabaaoeiaabaappiaafaaaaadabaachia
aeaaffiaabaaoeiaafaaaaadaeaachiaaeaaffiaafaaoelaaiaaaaadabaadiia
acaaoeiaaeaaoekaafaaaaadacaachiaabaappiaabaaoekaaeaaaaaeabaaciia
aaaakkiaaaaappkbaaaappkaacaaaaadacaaciiaabaappibadaappkaacaaaaad
acaadiiaacaappiaagaakkkaabaaaaacahaaahiaaaaaoekaaeaaaaaeagaacoia
acaablkaafaabliaahaablibafaaaaadafaachiaafaaoeiaacaaoekaafaaaaad
afaachiaabaappiaafaaoeiaaeaaaaaeaaaachiaaaaakkiaagaabliaaaaaoeka
bcaaaaaeagaacoiaadaaffiaacaappiaaaaabliaafaaaaadabaachiaabaaoeia
agaabliaaeaaaaaeabaachiaaeaaoeiaafaaoeiaabaaoeiaafaaaaadaaaaciia
agaaaaiaagaappkaaeaaaaaeaaaachiaaaaappiaaaaaoeiaafaaoeiaaeaaaaae
aaaachiaaaaaoeiaacaaoeiaabaaoeiaabaaaaacaaaaciiaagaakkkaabaaaaac
aaaicpiaaaaaoeiappppaaaafdeieefcdaagaaaaeaaaaaaaimabaaaafjaaaaae
egiocaaaaaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaae
egiocaaaacaaaaaaaeaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaa
abaaaaaafkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaafibiaaae
aahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafidaaaae
aahabaaaacaaaaaaffffaaaafibiaaaeaahabaaaadaaaaaaffffaaaagcbaaaad
dcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaaafaaaaaa
gcbaaaadhcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacagaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaa
acaaaaaaegacbaaaaaaaaaaaaaaaaaahbcaabaaaabaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadgcaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaaaaaaaaai
ccaabaaaacaaaaaadkaabaiaebaaaaaaaaaaaaaaabeaaaaaaaaaiadpdcaaaaal
hcaabaaaabaaaaaaegacbaaaaaaaaaaaagaabaiaebaaaaaaabaaaaaaegbcbaia
ebaaaaaaacaaaaaabaaaaaaibcaabaaaacaaaaaaegacbaaaabaaaaaaegiccaaa
abaaaaaaaaaaaaaadiaaaaahdcaabaaaabaaaaaaegaabaaaacaaaaaaegaabaaa
acaaaaaadiaaaaahgcaabaaaabaaaaaaagabbaaaabaaaaaaagabbaaaabaaaaaa
dcaaaaanicaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaa
aaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaaaaaaaaajbcaabaaaacaaaaaa
dkaabaiaebaaaaaaaaaaaaaadkiacaaaaaaaaaaaanaaaaaaaacaaaahbcaabaaa
acaaaaaaakaabaaaacaaaaaaabeaaaaaaaaaiadpefaaaaajpcaabaaaadaaaaaa
egbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaacaaaaaadcaaaaamocaabaaa
acaaaaaaagijcaaaaaaaaaaaajaaaaaaagajbaaaadaaaaaaagijcaiaebaaaaaa
aaaaaaaaacaaaaaadiaaaaaihcaabaaaadaaaaaaegacbaaaadaaaaaaegiccaaa
aaaaaaaaajaaaaaadiaaaaahhcaabaaaadaaaaaapgapbaaaaaaaaaaaegacbaaa
adaaaaaadcaaaaalocaabaaaacaaaaaakgikcaaaaaaaaaaaanaaaaaafgaobaaa
acaaaaaaagijcaaaaaaaaaaaacaaaaaaaaaaaaaihcaabaaaaeaaaaaajgahbaia
ebaaaaaaacaaaaaaagaabaaaacaaaaaadcaaaaajhcaabaaaaeaaaaaakgakbaaa
abaaaaaaegacbaaaaeaaaaaajgahbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaa
egbcbaaaacaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaa
aaaaaaaadkaabaaaaaaaaaaadcaaaaakhcaabaaaafaaaaaaegacbaaaaaaaaaaa
pgapbaiaebaaaaaaaaaaaaaaegbcbaaaacaaaaaabacaaaaibcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegiccaaaabaaaaaaaaaaaaaadiaaaaaihcaabaaaaaaaaaaa
agaabaaaaaaaaaaaegiccaaaaaaaaaaaagaaaaaaaaaaaaamjcaabaaaabaaaaaa
pgipcaiaebaaaaaaaaaaaaaaanaaaaaaaceaaaaaaaaaiadpaaaaaaaaaaaaaaaa
aaaaiadpdiaaaaahicaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaoaea
efaaaaajpcaabaaaabaaaaaangafbaaaabaaaaaaeghobaaaadaaaaaaaagabaaa
abaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaeb
dcaaaaajhcaabaaaabaaaaaaagaabaaaabaaaaaajgahbaaaacaaaaaaegacbaaa
adaaaaaaekaaaaalpcaabaaaacaaaaaaegacbaaaafaaaaaaeghobaaaacaaaaaa
aagabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaiicaabaaaaaaaaaaadkaabaaa
acaaaaaaakiacaaaacaaaaaaadaaaaaadiaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaafaaaaaaegbabaaaabaaaaaa
eghobaaaabaaaaaaaagabaaaadaaaaaadiaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaafgafbaaaafaaaaaadiaaaaahhcaabaaaafaaaaaafgafbaaaafaaaaaa
egbcbaaaagaaaaaadiaaaaahhcaabaaaacaaaaaaegacbaaaaeaaaaaaegacbaaa
acaaaaaadcaaaaajhcaabaaaacaaaaaaegacbaaaafaaaaaaegacbaaaadaaaaaa
egacbaaaacaaaaaadcaaaaajhccabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
aaaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadp
doaaaaabejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
apadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaalmaaaaaa
acaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaaaaaalmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaa
apahaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaapahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklkl"
}
SubProgram "d3d9 " {
// Stats: 46 math, 5 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Vector 4 [_Color]
Float 6 [_Glossiness]
Vector 3 [_LightColor0]
Float 5 [_Metallic]
Vector 0 [_WorldSpaceLightPos0]
Vector 2 [unity_ColorSpaceDielectricSpec]
Vector 1 [unity_SpecCube0_HDR]
SetTexture 0 [unity_SpecCube0] CUBE 0
SetTexture 1 [unity_NHxRoughness] 2D 1
SetTexture 2 [_MainTex] 2D 2
SetTexture 3 [_OcclusionMap] 2D 3
SetTexture 4 [_ShadowMapTexture] 2D 4
"ps_2_0
def c7, -7, 7, 1, 16
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t4.xyz
dcl_pp t5.xyz
dcl_pp t6
dcl_cube s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
mov r0.xyz, c7
mad_pp r1.w, c6.x, r0.x, r0.y
nrm_pp r2.xyz, t4
dp3_pp r2.w, t1, r2
add_pp r2.w, r2.w, r2.w
mad_pp r1.xyz, r2, -r2.w, t1
dp3_pp r2.w, -t1, r2
add_pp r0.x, r2.w, r2.w
mov_sat_pp r2.w, r2.w
add_pp r3.y, -r2.w, c7.z
mad_pp r4.xyz, r2, -r0.x, -t1
dp3_pp r3.x, r4, c0
mul_pp r0.xy, r3, r3
mul_pp r3.xy, r0, r0
add_pp r3.z, r0.z, -c6.x
mov_pp r0.x, r3.x
mov_pp r0.y, r3.z
texldb_pp r1, r1, s0
texld_pp r4, t0, s3
texld r5, t0, s2
texld r0, r0, s1
texldp_pp r6, t6, s4
pow_pp r2.w, r1.w, c1.y
mul_pp r1.w, r2.w, c1.x
mul_pp r0.yzw, r1.wzyx, r1.w
mul_pp r0.yzw, r4.y, r0
mul_pp r1.xyz, r4.y, t5
dp3_sat_pp r1.w, r2, c0
mov r2, c2
mad_pp r2.w, c5.x, -r2.w, r2.w
add_pp r5.w, -r2.w, c6.x
add_sat_pp r5.w, r5.w, c7.z
mad_pp r4.xyz, c4, r5, -r2
mul_pp r5.xyz, r5, c4
mul_pp r5.xyz, r2.w, r5
mad_pp r2.xyz, c5.x, r4, r2
lrp_pp r4.xyz, r3.y, r5.w, r2
mul_pp r0.yzw, r0, r4.wzyx
mad_pp r0.yzw, r1.wzyx, r5.wzyx, r0
mul_pp r2.w, r0.x, c7.w
mad_pp r1.xyz, r2.w, r2, r5
mul_pp r2.xyz, r6.x, c3
mul_pp r2.xyz, r1.w, r2
mad_pp r0.xyz, r1, r2, r0.wzyx
mov_pp r0.w, c7.z
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 40 math, 4 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
SetTexture 0 [_MainTex] 2D 2
SetTexture 1 [_ShadowMapTexture] 2D 4
SetTexture 2 [_OcclusionMap] 2D 3
SetTexture 3 [unity_NHxRoughness] 2D 1
SetTexture 4 [unity_SpecCube0] CUBE 0
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityReflectionProbes" 128
Vector 48 [unity_SpecCube0_HDR]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityReflectionProbes" 2
"ps_4_0
root12:afadafaa
eefiecedcnbdpbeipeojnfegjphbemigmappliafabaaaaaaemaiaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapahaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaapalaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcpmagaaaaeaaaaaaalpabaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaaeegiocaaa
acaaaaaaaeaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaafkaaaaadaagabaaa
aeaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaafibiaaaeaahabaaaacaaaaaaffffaaaafibiaaaeaahabaaaadaaaaaa
ffffaaaafidaaaaeaahabaaaaeaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaa
gcbaaaadhcbabaaaacaaaaaagcbaaaadhcbabaaaafaaaaaagcbaaaadhcbabaaa
agaaaaaagcbaaaadlcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaac
agaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
agaabaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaa
acaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaakhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaia
ebaaaaaaaaaaaaaaegbcbaaaacaaaaaaaaaaaaamjcaabaaaacaaaaaapgipcaia
ebaaaaaaaaaaaaaaanaaaaaaaceaaaaaaaaaiadpaaaaaaaaaaaaaaaaaaaaiadp
diaaaaahicaabaaaaaaaaaaaakaabaaaacaaaaaaabeaaaaaaaaaoaeaeiaaaaal
pcaabaaaabaaaaaaegacbaaaabaaaaaaeghobaaaaeaaaaaaaagabaaaaaaaaaaa
dkaabaaaaaaaaaaacpaaaaaficaabaaaaaaaaaaadkaabaaaabaaaaaadiaaaaai
icaabaaaaaaaaaaadkaabaaaaaaaaaaabkiacaaaacaaaaaaadaaaaaabjaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaaiicaabaaaaaaaaaaadkaabaaa
aaaaaaaaakiacaaaacaaaaaaadaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
abaaaaaapgapbaaaaaaaaaaaefaaaaajpcaabaaaadaaaaaaegbabaaaabaaaaaa
eghobaaaacaaaaaaaagabaaaadaaaaaadiaaaaahhcaabaaaabaaaaaaegacbaaa
abaaaaaafgafbaaaadaaaaaadiaaaaahhcaabaaaadaaaaaafgafbaaaadaaaaaa
egbcbaaaagaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaa
egacbaaaaaaaaaaaaaaaaaahicaabaaaabaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadgcaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaaaaaaaaaiccaabaaa
aeaaaaaadkaabaiaebaaaaaaaaaaaaaaabeaaaaaaaaaiadpdcaaaaalhcaabaaa
afaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaaabaaaaaaegbcbaiaebaaaaaa
acaaaaaabacaaaaibcaabaaaaaaaaaaaegacbaaaaaaaaaaaegiccaaaabaaaaaa
aaaaaaaabaaaaaaibcaabaaaaeaaaaaaegacbaaaafaaaaaaegiccaaaabaaaaaa
aaaaaaaadiaaaaahgcaabaaaaaaaaaaaagabbaaaaeaaaaaaagabbaaaaeaaaaaa
diaaaaahgcaabaaaacaaaaaafgagbaaaaaaaaaaafgagbaaaaaaaaaaadcaaaaan
ccaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaa
acaaaaaadkiacaaaaaaaaaaaacaaaaaaaaaaaaajecaabaaaaaaaaaaabkaabaia
ebaaaaaaaaaaaaaadkiacaaaaaaaaaaaanaaaaaaaacaaaahecaabaaaaaaaaaaa
ckaabaaaaaaaaaaaabeaaaaaaaaaiadpefaaaaajpcaabaaaaeaaaaaaegbabaaa
abaaaaaaeghobaaaaaaaaaaaaagabaaaacaaaaaadcaaaaamhcaabaaaafaaaaaa
egiccaaaaaaaaaaaajaaaaaaegacbaaaaeaaaaaaegiccaiaebaaaaaaaaaaaaaa
acaaaaaadiaaaaaihcaabaaaaeaaaaaaegacbaaaaeaaaaaaegiccaaaaaaaaaaa
ajaaaaaadiaaaaahhcaabaaaaeaaaaaafgafbaaaaaaaaaaaegacbaaaaeaaaaaa
dcaaaaalhcaabaaaafaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaafaaaaaa
egiccaaaaaaaaaaaacaaaaaaaaaaaaaiocaabaaaaaaaaaaakgakbaaaaaaaaaaa
agajbaiaebaaaaaaafaaaaaadcaaaaajocaabaaaaaaaaaaakgakbaaaacaaaaaa
fgaobaaaaaaaaaaaagajbaaaafaaaaaaefaaaaajpcaabaaaacaaaaaangafbaaa
acaaaaaaeghobaaaadaaaaaaaagabaaaabaaaaaadiaaaaahicaabaaaabaaaaaa
akaabaaaacaaaaaaabeaaaaaaaaaiaebdcaaaaajhcaabaaaacaaaaaapgapbaaa
abaaaaaaegacbaaaafaaaaaaegacbaaaaeaaaaaadiaaaaahocaabaaaaaaaaaaa
fgaobaaaaaaaaaaaagajbaaaabaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
adaaaaaaagajbaaaaeaaaaaafgaobaaaaaaaaaaaaoaaaaahdcaabaaaabaaaaaa
egbabaaaahaaaaaapgbpbaaaahaaaaaaefaaaaajpcaabaaaabaaaaaaegaabaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaaeaaaaaadiaaaaaihcaabaaaabaaaaaa
agaabaaaabaaaaaaegiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaaabaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaajhccabaaaaaaaaaaaegacbaaa
acaaaaaaegacbaaaabaaaaaajgahbaaaaaaaaaaadgaaaaaficcabaaaaaaaaaaa
abeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 38 math, 3 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SHADOWS_NATIVE" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
SetTexture 0 [_MainTex] 2D 2
SetTexture 1 [_OcclusionMap] 2D 3
SetTexture 2 [unity_SpecCube0] CUBE 0
SetTexture 3 [unity_NHxRoughness] 2D 1
SetTexture 15 [_ShadowMapTexture] 2D 15
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
ConstBuffer "UnityReflectionProbes" 128
Vector 48 [unity_SpecCube0_HDR]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityShadows" 2
BindCB  "UnityReflectionProbes" 3
"ps_4_0_level_9_1
root12:baaebaaa
eefiecedmdnpikfjkmnjhimghmgjmlblaggjkehmabaaaaaahmamaaaaafaaaaaa
deaaaaaaemaeaaaafaalaaaagaalaaaaeiamaaaaebgpgodjbaaeaaaabaaeaaaa
aaacppppieadaaaaimaaaaaaahaadiaaaaaaimaaaaaaimaaafaaceaaaaaaimaa
apapaaaaacaaabaaadabacaaaaacadaaabadaeaaaaaaacaaabaaaaaaaaaaaaaa
aaaaagaaabaaabaaaaaaaaaaaaaaajaaabaaacaaaaaaaaaaaaaaanaaabaaadaa
aaaaaaaaabaaaaaaabaaaeaaaaaaaaaaacaabiaaabaaafaaaaaaaaaaadaaadaa
abaaagaaaaaaaaaaaaacppppfbaaaaafahaaapkaaaaaiadpaaaaoamaaaaaoaea
aaaaiaebbpaaaaacaaaaaaiaaaaaaplabpaaaaacaaaaaaiaabaachlabpaaaaac
aaaaaaiaaeaacplabpaaaaacaaaaaaiaafaacplabpaaaaacaaaaaaiaagaacpla
bpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaajiabaiapkabpaaaaacaaaaaaja
acaiapkabpaaaaacaaaaaajaadaiapkabpaaaaacaaaaaajaaeaiapkaabaaaaac
aaaaahiaahaaoekaaeaaaaaeabaaciiaadaappkaaaaaffiaaaaakkiaceaaaaac
acaachiaaeaaoelaaiaaaaadacaaciiaabaaoelaacaaoeiaacaaaaadacaaciia
acaappiaacaappiaaeaaaaaeabaachiaacaaoeiaacaappibabaaoelaaiaaaaad
acaaciiaabaaoelbacaaoeiaacaaaaadaaaacciaacaappiaacaappiaabaaaaac
acaadiiaacaappiaacaaaaadadaacciaacaappibahaaaakaaeaaaaaeaeaachia
acaaoeiaaaaaffibabaaoelbaiaaaaadadaacbiaaeaaoeiaaeaaoekaafaaaaad
aaaacgiaadaanciaadaanciaafaaaaadadaacdiaaaaamjiaaaaamjiaacaaaaad
adaaceiaaaaaaaiaadaappkbabaaaaacaeaacbiaadaaaaiaabaaaaacaeaaccia
adaakkiaecaaacadabaacpiaabaaoeiaabaioekaecaaaaadafaacpiaaaaaoela
aeaioekaecaaaaadagaaapiaaaaaoelaadaioekaecaaaaadaeaaapiaaeaaoeia
acaioekaecaaaaadahaacpiaagaaoelaaaaioekaafaaaaadabaaciiaabaappia
agaaaakaafaaaaadaaaacoiaabaabliaabaappiaafaaaaadaaaacoiaafaaffia
aaaaoeiaafaaaaadabaachiaafaaffiaafaaoelaaiaaaaadabaadiiaacaaoeia
aeaaoekaabaaaaacacaaapiaaaaaoekaaeaaaaaeacaaciiaadaakkkaacaappib
acaappiaacaaaaadagaaciiaacaappibadaappkaacaaaaadagaadiiaagaappia
ahaaaakaaeaaaaaeaeaacoiaacaablkaagaabliaacaablibafaaaaadafaachia
agaaoeiaacaaoekaafaaaaadafaachiaacaappiaafaaoeiaaeaaaaaeacaachia
adaakkkaaeaabliaacaaoeiabcaaaaaeaeaacoiaadaaffiaagaappiaacaablia
afaaaaadaaaacoiaaaaaoeiaaeaaoeiaaeaaaaaeaaaacoiaabaabliaafaablia
aaaaoeiaafaaaaadacaaciiaaeaaaaiaahaappkaaeaaaaaeabaachiaacaappia
acaaoeiaafaaoeiabcaaaaaeacaacbiaahaaaaiaaaaaaaiaafaaaakaafaaaaad
acaachiaacaaaaiaabaaoekaafaaaaadacaachiaabaappiaacaaoeiaaeaaaaae
aaaachiaabaaoeiaacaaoeiaaaaabliaabaaaaacaaaaciiaahaaaakaabaaaaac
aaaicpiaaaaaoeiappppaaaafdeieefcpmagaaaaeaaaaaaalpabaaaafjaaaaae
egiocaaaaaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaaabaaaaaafjaaaaae
egiocaaaacaaaaaabjaaaaaafjaaaaaeegiocaaaadaaaaaaaeaaaaaafkaaaaad
aagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaa
fkaaaaadaagabaaaadaaaaaafkaiaaadaagabaaaapaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafidaaaaeaahabaaa
acaaaaaaffffaaaafibiaaaeaahabaaaadaaaaaaffffaaaafibiaaaeaahabaaa
apaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadhcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaagcbaaaadhcbabaaa
ahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacagaaaaaabaaaaaahbcaabaaa
aaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaa
afaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaaegacbaaa
aaaaaaaaaaaaaaahbcaabaaaabaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaa
dgcaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaaaaaaaaaiccaabaaaacaaaaaa
dkaabaiaebaaaaaaaaaaaaaaabeaaaaaaaaaiadpdcaaaaalhcaabaaaabaaaaaa
egacbaaaaaaaaaaaagaabaiaebaaaaaaabaaaaaaegbcbaiaebaaaaaaacaaaaaa
baaaaaaibcaabaaaacaaaaaaegacbaaaabaaaaaaegiccaaaabaaaaaaaaaaaaaa
diaaaaahdcaabaaaabaaaaaaegaabaaaacaaaaaaegaabaaaacaaaaaadiaaaaah
gcaabaaaabaaaaaaagabbaaaabaaaaaaagabbaaaabaaaaaadcaaaaanicaabaaa
aaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaa
dkiacaaaaaaaaaaaacaaaaaaaaaaaaajbcaabaaaacaaaaaadkaabaiaebaaaaaa
aaaaaaaadkiacaaaaaaaaaaaanaaaaaaaacaaaahbcaabaaaacaaaaaaakaabaaa
acaaaaaaabeaaaaaaaaaiadpefaaaaajpcaabaaaadaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaacaaaaaadcaaaaamocaabaaaacaaaaaaagijcaaa
aaaaaaaaajaaaaaaagajbaaaadaaaaaaagijcaiaebaaaaaaaaaaaaaaacaaaaaa
diaaaaaihcaabaaaadaaaaaaegacbaaaadaaaaaaegiccaaaaaaaaaaaajaaaaaa
diaaaaahhcaabaaaadaaaaaapgapbaaaaaaaaaaaegacbaaaadaaaaaadcaaaaal
ocaabaaaacaaaaaakgikcaaaaaaaaaaaanaaaaaafgaobaaaacaaaaaaagijcaaa
aaaaaaaaacaaaaaaaaaaaaaihcaabaaaaeaaaaaajgahbaiaebaaaaaaacaaaaaa
agaabaaaacaaaaaadcaaaaajhcaabaaaaeaaaaaakgakbaaaabaaaaaaegacbaaa
aeaaaaaajgahbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegbcbaaaacaaaaaa
egacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadcaaaaakhcaabaaaafaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaa
aaaaaaaaegbcbaaaacaaaaaabacaaaaibcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egiccaaaabaaaaaaaaaaaaaaaaaaaaamjcaabaaaabaaaaaapgipcaiaebaaaaaa
aaaaaaaaanaaaaaaaceaaaaaaaaaiadpaaaaaaaaaaaaaaaaaaaaiadpdiaaaaah
ccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaoaeaefaaaaajpcaabaaa
abaaaaaangafbaaaabaaaaaaeghobaaaadaaaaaaaagabaaaabaaaaaadiaaaaah
ecaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaebdcaaaaajhcaabaaa
abaaaaaakgakbaaaaaaaaaaajgahbaaaacaaaaaaegacbaaaadaaaaaaekaaaaal
pcaabaaaacaaaaaaegacbaaaafaaaaaaeghobaaaacaaaaaaaagabaaaaaaaaaaa
bkaabaaaaaaaaaaadiaaaaaiccaabaaaaaaaaaaadkaabaaaacaaaaaaakiacaaa
adaaaaaaadaaaaaadiaaaaahocaabaaaaaaaaaaaagajbaaaacaaaaaafgafbaaa
aaaaaaaaefaaaaajpcaabaaaacaaaaaaegbabaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaadaaaaaadiaaaaahocaabaaaaaaaaaaafgaobaaaaaaaaaaafgafbaaa
acaaaaaadiaaaaahhcaabaaaacaaaaaafgafbaaaacaaaaaaegbcbaaaagaaaaaa
diaaaaahocaabaaaaaaaaaaaagajbaaaaeaaaaaafgaobaaaaaaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaacaaaaaaagajbaaaadaaaaaafgaobaaaaaaaaaaa
ehaaaaalicaabaaaabaaaaaaegbabaaaahaaaaaaaghabaaaapaaaaaaaagabaaa
apaaaaaackbabaaaahaaaaaaaaaaaaajbcaabaaaacaaaaaaakiacaiaebaaaaaa
acaaaaaabiaaaaaaabeaaaaaaaaaiadpdcaaaaakicaabaaaabaaaaaadkaabaaa
abaaaaaaakaabaaaacaaaaaaakiacaaaacaaaaaabiaaaaaadiaaaaaihcaabaaa
acaaaaaapgapbaaaabaaaaaaegiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaa
acaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadcaaaaajhccabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaacaaaaaajgahbaaaaaaaaaaadgaaaaaficcabaaa
aaaaaaaaabeaaaaaaaaaiadpdoaaaaabfdegejdaaiaaaaaaiaaaaaaaaaaaaaaa
ejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapadaaaa
neaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaaneaaaaaaacaaaaaa
aaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapahaaaa
neaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaapahaaaaneaaaaaaagaaaaaa
aaaaaaaaadaaaaaaahaaaaaaapahaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl"
}
}
 }


 // Stats for Vertex shader:
 //       d3d11 : 49 avg math (40..55)
 //    d3d11_9x : 50 avg math (40..55)
 //        d3d9 : 46 avg math (40..52)
 // Stats for Fragment shader:
 //       d3d11 : 24 avg math (20..32), 3 avg texture (2..5)
 //    d3d11_9x : 25 avg math (20..32), 3 avg texture (2..5)
 //        d3d9 : 31 avg math (27..37), 3 avg texture (2..5)
 Pass {
  Name "FORWARD_DELTA"
  Tags { "LIGHTMODE"="ForwardAdd" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  ZWrite Off
  Blend [_SrcBlend] One
  GpuProgramID 456985
Program "vp" {
SubProgram "d3d9 " {
// Stats: 47 math
Keywords { "POINT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
Vector 16 [unity_WorldTransformParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c17, c17.zwzw
mul r0.x, c19.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul r1.w, v4.w, c16.w
mul oT3.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d11 " {
// Stats: 51 math
Keywords { "POINT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefieceddhmfbkehfmoihnciokmkhaladioecdgfabaaaaaameajaaaaadaaaaaa
cmaaaaaaniaaaaaakiabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefcbeaiaaaaeaaaabaaafacaaaafjaaaaaeegiocaaa
aaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaadhccabaaaagaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaa
aoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaa
aaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaa
aaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaa
aaaaaaajhcaabaaaabaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaa
aeaaaaaadcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaa
acaaaaaaaaaaaaaaegiccaaaacaaaaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaa
aaaaaaaaegacbaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaaaaaaaaa
diaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaa
egacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
hccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaa
egacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaa
acaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaa
acaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahhcaabaaaadaaaaaa
jgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaaabaaaaaajgaebaaa
acaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaadgaaaaafhccabaaa
afaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaadkbabaaaaeaaaaaa
dkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaaagaabaaaaaaaaaaa
egacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaaaaaaaaaadgaaaaaf
iccabaaaafaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaanaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
aaaaaaaabbaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaaaaaaaaabaaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
aaaaaaaabcaaaaaakgakbaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhccabaaa
agaaaaaaegiccaaaaaaaaaaabdaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaa
doaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 51 math
Keywords { "POINT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
root12:aaaeaaaa
eefiecedffgalmcoobfcoejdcamgkcghlbimamlkabaaaaaadaaoaaaaaeaaaaaa
daaaaaaajiaeaaaaleamaaaagaanaaaaebgpgodjgaaeaaaagaaeaaaaaaacpopp
niadaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaaaaabaaaaeaaaeaaaaaaaaaa
abaaaeaaabaaaiaaaaaaaaaaacaaaaaaabaaajaaaaaaaaaaadaaaaaaaeaaakaa
aaaaaaaaadaaamaaahaaaoaaaaaaaaaaadaabfaaabaabfaaaaaaaaaaaaaaaaaa
aaacpoppbpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapja
aeaaaaaeaaaaadoaacaaoejaabaaoekaabaaookaafaaaaadaaaaabiaadaakkka
adaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaiaabaaaaacabaaadiaacaaoeja
bcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoejaaeaaaaaeaaaaamoaacaaeeia
acaaeekaacaaoekaafaaaaadaaaaahiaaaaaffjaapaaoekaaeaaaaaeaaaaahia
aoaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahiabaaaoekaaaaakkjaaaaaoeia
aeaaaaaeaaaaahiabbaaoekaaaaappjaaaaaoeiaacaaaaadabaaahiaaaaaoeia
aiaaoekbaeaaaaaeaaaaahiaaaaaoeiaajaappkbajaaoekaceaaaaacacaaahia
aaaaoeiaaiaaaaadaaaaabiaabaaoeiaabaaoeiaahaaaaacaaaaabiaaaaaaaia
afaaaaadabaaahoaaaaaaaiaabaaoeiaafaaaaadaaaaabiaabaaaajabcaaaaka
afaaaaadaaaaaciaabaaaajabdaaaakaafaaaaadaaaaaeiaabaaaajabeaaaaka
afaaaaadabaaabiaabaaffjabcaaffkaafaaaaadabaaaciaabaaffjabdaaffka
afaaaaadabaaaeiaabaaffjabeaaffkaacaaaaadaaaaahiaaaaaoeiaabaaoeia
afaaaaadabaaabiaabaakkjabcaakkkaafaaaaadabaaaciaabaakkjabdaakkka
afaaaaadabaaaeiaabaakkjabeaakkkaacaaaaadaaaaahiaaaaaoeiaabaaoeia
ceaaaaacabaaahiaaaaaoeiaafaaaaadaaaaahiaaeaaffjaapaaoekaaeaaaaae
aaaaahiaaoaaoekaaeaaaajaaaaaoeiaaeaaaaaeaaaaahiabaaaoekaaeaakkja
aaaaoeiaceaaaaacadaaahiaaaaaoeiaafaaaaadaaaaahiaabaanciaadaamjia
aeaaaaaeaaaaahiaabaamjiaadaanciaaaaaoeibabaaaaacaeaaahoaabaaoeia
abaaaaacacaaahoaadaaoeiaafaaaaadaaaaaiiaaeaappjabfaappkaafaaaaad
adaaahoaaaaappiaaaaaoeiaafaaaaadaaaaapiaaaaaffjaapaaoekaaeaaaaae
aaaaapiaaoaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaapiabaaaoekaaaaakkja
aaaaoeiaaeaaaaaeaaaaapiabbaaoekaaaaappjaaaaaoeiaafaaaaadabaaahia
aaaaffiaafaaoekaaeaaaaaeabaaahiaaeaaoekaaaaaaaiaabaaoeiaaeaaaaae
aaaaahiaagaaoekaaaaakkiaabaaoeiaaeaaaaaeafaaahoaahaaoekaaaaappia
aaaaoeiaafaaaaadaaaaapiaaaaaffjaalaaoekaaeaaaaaeaaaaapiaakaaoeka
aaaaaajaaaaaoeiaaeaaaaaeaaaaapiaamaaoekaaaaakkjaaaaaoeiaaeaaaaae
aaaaapiaanaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoeka
aaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaaioaacaaaaiaabaaaaac
adaaaioaacaaffiaabaaaaacaeaaaioaacaakkiappppaaaafdeieefcbeaiaaaa
eaaaabaaafacaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaafjaaaaaeegiocaaa
abaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaa
adaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaa
fpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaafpaaaaadpcbabaaa
aeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaa
gfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaa
aeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadhccabaaaagaaaaaagiaaaaac
aeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
acaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaa
egiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaai
bcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaaj
dcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaa
dcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaa
kgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaa
egiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaabaaaaaaegacbaaa
aaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaamhcaabaaaaaaaaaaa
egacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaaacaaaaaa
aaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhccabaaaacaaaaaa
pgapbaaaaaaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaaf
iccabaaaadaaaaaaakaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaa
aeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
aaaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaa
diaaaaaibcaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaai
bcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaa
acaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaa
dcaaaaakhcaabaaaabaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaia
ebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaai
bcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaah
hccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aeaaaaaabkaabaaaaaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadoaaaaabejfdeheokeaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaacaaaaaaadadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaa
adadaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaafeebeoehefeofeaaklklkl
epfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaa
lmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaa
aaaaaaaaadaaaaaaadaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapaaaaaalmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaa
lmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaahaiaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "d3d9 " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 14 [_DetailAlbedoMap_ST]
Vector 13 [_MainTex_ST]
Float 15 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 11 [_WorldSpaceLightPos0]
Vector 12 [unity_WorldTransformParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c13, c13.zwzw
mul r0.x, c15.x, c15.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c14.xyxy, c14
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c10
mad r0.xyz, r0, -c11.w, c11
dp3 r0.w, r1, r1
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r1
mul r1.xyz, v1.y, c8
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul r0.w, v4.w, c12.w
mul oT3.xyz, r0.w, r1
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedipjkccghcoeohaiboneclmagapbldmjeabaaaaaaceaiaaaaadaaaaaa
cmaaaaaaniaaaaaajaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheolaaaaaaa
agaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
keaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaakeaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaakeaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
keaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklfdeieefcimagaaaaeaaaabaakdabaaaa
fjaaaaaeegiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaa
fjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaaddcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaad
pccabaaaafaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaa
abeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaa
acaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaa
agiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaa
abaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaa
alaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaa
anaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
aoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaaj
hcaabaaaabaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaa
dcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaa
aaaaaaaaegiccaaaacaaaaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaadaaaaaaakaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaa
aeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
aaaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaa
diaaaaaibcaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaai
bcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaa
acaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaa
dcaaaaakhcaabaaaabaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaia
ebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaai
bcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaah
hccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aeaaaaaabkaabaaaaaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaa
doaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 40 math
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
root12:aaaeaaaa
eefiecedoniinjldldbeegiahgnoakdopojoihleabaaaaaaoaalaaaaaeaaaaaa
daaaaaaaoiadaaaahmakaaaacialaaaaebgpgodjlaadaaaalaadaaaaaaacpopp
deadaaaahmaaaaaaahaaceaaaaaahiaaaaaahiaaaaaaceaaabaahiaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaabaaaeaaabaaaeaaaaaaaaaa
acaaaaaaabaaafaaaaaaaaaaadaaaaaaaeaaagaaaaaaaaaaadaaamaaahaaakaa
aaaaaaaaadaabfaaabaabbaaaaaaaaaaaaaaaaaaaaacpoppbpaaaaacafaaaaia
aaaaapjabpaaaaacafaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaac
afaaadiaadaaapjabpaaaaacafaaaeiaaeaaapjaaeaaaaaeaaaaadoaacaaoeja
abaaoekaabaaookaafaaaaadaaaaabiaadaakkkaadaakkkaanaaaaadaaaaabia
aaaaaaibaaaaaaiaabaaaaacabaaadiaacaaoejabcaaaaaeacaaadiaaaaaaaia
abaaoeiaadaaoejaaeaaaaaeaaaaamoaacaaeeiaacaaeekaacaaoekaafaaaaad
aaaaahiaaaaaffjaalaaoekaaeaaaaaeaaaaahiaakaaoekaaaaaaajaaaaaoeia
aeaaaaaeaaaaahiaamaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaahiaanaaoeka
aaaappjaaaaaoeiaacaaaaadabaaahiaaaaaoeiaaeaaoekbaeaaaaaeaaaaahia
aaaaoeiaafaappkbafaaoekaaiaaaaadaaaaaiiaabaaoeiaabaaoeiaahaaaaac
aaaaaiiaaaaappiaafaaaaadabaaahoaaaaappiaabaaoeiaafaaaaadabaaabia
abaaaajaaoaaaakaafaaaaadabaaaciaabaaaajaapaaaakaafaaaaadabaaaeia
abaaaajabaaaaakaafaaaaadacaaabiaabaaffjaaoaaffkaafaaaaadacaaacia
abaaffjaapaaffkaafaaaaadacaaaeiaabaaffjabaaaffkaacaaaaadabaaahia
abaaoeiaacaaoeiaafaaaaadacaaabiaabaakkjaaoaakkkaafaaaaadacaaacia
abaakkjaapaakkkaafaaaaadacaaaeiaabaakkjabaaakkkaacaaaaadabaaahia
abaaoeiaacaaoeiaceaaaaacacaaahiaabaaoeiaafaaaaadabaaahiaaeaaffja
alaaoekaaeaaaaaeabaaahiaakaaoekaaeaaaajaabaaoeiaaeaaaaaeabaaahia
amaaoekaaeaakkjaabaaoeiaceaaaaacadaaahiaabaaoeiaafaaaaadabaaahia
acaanciaadaamjiaaeaaaaaeabaaahiaacaamjiaadaanciaabaaoeibabaaaaac
aeaaahoaacaaoeiaabaaaaacacaaahoaadaaoeiaafaaaaadaaaaaiiaaeaappja
bbaappkaafaaaaadadaaahoaaaaappiaabaaoeiaafaaaaadabaaapiaaaaaffja
ahaaoekaaeaaaaaeabaaapiaagaaoekaaaaaaajaabaaoeiaaeaaaaaeabaaapia
aiaaoekaaaaakkjaabaaoeiaaeaaaaaeabaaapiaajaaoekaaaaappjaabaaoeia
aeaaaaaeaaaaadmaabaappiaaaaaoekaabaaoeiaabaaaaacaaaaammaabaaoeia
abaaaaacacaaaioaaaaaaaiaabaaaaacadaaaioaaaaaffiaabaaaaacaeaaaioa
aaaakkiappppaaaafdeieefcimagaaaaeaaaabaakdabaaaafjaaaaaeegiocaaa
aaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
giaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaa
adaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaa
agbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaa
aaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
biaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaa
dhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaa
adaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaa
amaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaa
acaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaabaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaamhcaabaaa
aaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaa
acaaaaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhccabaaa
acaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaadaaaaaa
akaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
acaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaa
abaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaa
dgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaa
dkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaadoaaaaabejfdeheo
keaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apapaaaaijaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaahahaaaajaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaacaaaaaaadadaaaajaaaaaaaabaaaaaaaaaaaaaa
adaaaaaaadaaaaaaadadaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apapaaaafaepfdejfeejepeoaaeoepfcenebemaafeeffiedepepfceeaafeebeo
ehefeofeaaklklklepfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaapaaaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaa
keaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaakeaaaaaaadaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapaaaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
afaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
"
}
SubProgram "d3d9 " {
// Stats: 48 math
Keywords { "SPOT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 8 [_LightMatrix0]
Matrix 4 [_Object2World]
Matrix 12 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 18 [_MainTex_ST]
Float 20 [_UVSec]
Vector 15 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
Vector 17 [unity_WorldTransformParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c18, c18.zwzw
mul r0.x, c20.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c15
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c13
mad r1.xyz, c12, v1.x, r1
mad r1.xyz, c14, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul r1.w, v4.w, c17.w
mul oT3.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 oT5.x, c8, r0
dp4 oT5.y, c9, r0
dp4 oT5.z, c10, r0
dp4 oT5.w, c11, r0
mad r0.xyz, r0, -c16.w, c16
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d11 " {
// Stats: 51 math
Keywords { "SPOT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedegcncjhfddpnamhhleoankjjjdlmcbafabaaaaaameajaaaaadaaaaaa
cmaaaaaaniaaaaaakiabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefcbeaiaaaaeaaaabaaafacaaaafjaaaaaeegiocaaa
aaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaadpccabaaaagaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaa
aoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaa
aaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaa
aaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaa
aaaaaaajhcaabaaaabaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaa
aeaaaaaadcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaa
acaaaaaaaaaaaaaaegiccaaaacaaaaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaa
aaaaaaaaegacbaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaaaaaaaaa
diaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaa
egacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
hccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaa
egacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaa
acaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaa
acaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahhcaabaaaadaaaaaa
jgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaaabaaaaaajgaebaaa
acaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaadgaaaaafhccabaaa
afaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaadkbabaaaaeaaaaaa
dkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaaagaabaaaaaaaaaaa
egacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaaaaaaaaaadgaaaaaf
iccabaaaafaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaanaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaa
aaaaaaaabbaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaaaaaaaaabaaaaaaa
agaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaa
aaaaaaaabcaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaa
agaaaaaaegiocaaaaaaaaaaabdaaaaaapgapbaaaaaaaaaaaegaobaaaabaaaaaa
doaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 51 math
Keywords { "SPOT" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
root12:aaaeaaaa
eefiecedpciiialeindncamdaancobfbehdnfhcbabaaaaaadaaoaaaaaeaaaaaa
daaaaaaajiaeaaaaleamaaaagaanaaaaebgpgodjgaaeaaaagaaeaaaaaaacpopp
niadaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaaaaabaaaaeaaaeaaaaaaaaaa
abaaaeaaabaaaiaaaaaaaaaaacaaaaaaabaaajaaaaaaaaaaadaaaaaaaeaaakaa
aaaaaaaaadaaamaaahaaaoaaaaaaaaaaadaabfaaabaabfaaaaaaaaaaaaaaaaaa
aaacpoppbpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapja
aeaaaaaeaaaaadoaacaaoejaabaaoekaabaaookaafaaaaadaaaaabiaadaakkka
adaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaiaabaaaaacabaaadiaacaaoeja
bcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoejaaeaaaaaeaaaaamoaacaaeeia
acaaeekaacaaoekaafaaaaadaaaaahiaaaaaffjaapaaoekaaeaaaaaeaaaaahia
aoaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahiabaaaoekaaaaakkjaaaaaoeia
aeaaaaaeaaaaahiabbaaoekaaaaappjaaaaaoeiaacaaaaadabaaahiaaaaaoeia
aiaaoekbaeaaaaaeaaaaahiaaaaaoeiaajaappkbajaaoekaceaaaaacacaaahia
aaaaoeiaaiaaaaadaaaaabiaabaaoeiaabaaoeiaahaaaaacaaaaabiaaaaaaaia
afaaaaadabaaahoaaaaaaaiaabaaoeiaafaaaaadaaaaabiaabaaaajabcaaaaka
afaaaaadaaaaaciaabaaaajabdaaaakaafaaaaadaaaaaeiaabaaaajabeaaaaka
afaaaaadabaaabiaabaaffjabcaaffkaafaaaaadabaaaciaabaaffjabdaaffka
afaaaaadabaaaeiaabaaffjabeaaffkaacaaaaadaaaaahiaaaaaoeiaabaaoeia
afaaaaadabaaabiaabaakkjabcaakkkaafaaaaadabaaaciaabaakkjabdaakkka
afaaaaadabaaaeiaabaakkjabeaakkkaacaaaaadaaaaahiaaaaaoeiaabaaoeia
ceaaaaacabaaahiaaaaaoeiaafaaaaadaaaaahiaaeaaffjaapaaoekaaeaaaaae
aaaaahiaaoaaoekaaeaaaajaaaaaoeiaaeaaaaaeaaaaahiabaaaoekaaeaakkja
aaaaoeiaceaaaaacadaaahiaaaaaoeiaafaaaaadaaaaahiaabaanciaadaamjia
aeaaaaaeaaaaahiaabaamjiaadaanciaaaaaoeibabaaaaacaeaaahoaabaaoeia
abaaaaacacaaahoaadaaoeiaafaaaaadaaaaaiiaaeaappjabfaappkaafaaaaad
adaaahoaaaaappiaaaaaoeiaafaaaaadaaaaapiaaaaaffjaapaaoekaaeaaaaae
aaaaapiaaoaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaapiabaaaoekaaaaakkja
aaaaoeiaaeaaaaaeaaaaapiabbaaoekaaaaappjaaaaaoeiaafaaaaadabaaapia
aaaaffiaafaaoekaaeaaaaaeabaaapiaaeaaoekaaaaaaaiaabaaoeiaaeaaaaae
abaaapiaagaaoekaaaaakkiaabaaoeiaaeaaaaaeafaaapoaahaaoekaaaaappia
abaaoeiaafaaaaadaaaaapiaaaaaffjaalaaoekaaeaaaaaeaaaaapiaakaaoeka
aaaaaajaaaaaoeiaaeaaaaaeaaaaapiaamaaoekaaaaakkjaaaaaoeiaaeaaaaae
aaaaapiaanaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoeka
aaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaaioaacaaaaiaabaaaaac
adaaaioaacaaffiaabaaaaacaeaaaioaacaakkiappppaaaafdeieefcbeaiaaaa
eaaaabaaafacaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaafjaaaaaeegiocaaa
abaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaa
adaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaa
fpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaafpaaaaadpcbabaaa
aeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaa
gfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaa
aeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagiaaaaac
aeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
acaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaa
egiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaai
bcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaaj
dcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaa
dcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaa
kgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaa
egiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaabaaaaaaegacbaaa
aaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaamhcaabaaaaaaaaaaa
egacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaaacaaaaaa
aaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhccabaaaacaaaaaa
pgapbaaaaaaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaaf
iccabaaaadaaaaaaakaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaa
aeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
aaaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaa
diaaaaaibcaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaai
bcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaa
acaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaa
dcaaaaakhcaabaaaabaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaia
ebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaai
bcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaah
hccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aeaaaaaabkaabaaaaaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaipcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiocaaaaaaaaaaabbaaaaaadcaaaaakpcaabaaa
abaaaaaaegiocaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpcaabaaaabaaaaaaegiocaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaa
egaobaaaabaaaaaadcaaaaakpccabaaaagaaaaaaegiocaaaaaaaaaaabdaaaaaa
pgapbaaaaaaaaaaaegaobaaaabaaaaaadoaaaaabejfdeheokeaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaacaaaaaaadadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaa
adadaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaafeebeoehefeofeaaklklkl
epfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaa
lmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaa
aaaaaaaaadaaaaaaadaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapaaaaaalmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaa
lmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaapaaaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "d3d9 " {
// Stats: 47 math
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_DetailAlbedoMap_ST]
Vector 17 [_MainTex_ST]
Float 19 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
Vector 16 [unity_WorldTransformParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c17, c17.zwzw
mul r0.x, c19.x, c19.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c18.xyxy, c18
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul r1.w, v4.w, c16.w
mul oT3.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d11 " {
// Stats: 51 math
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefieceddhmfbkehfmoihnciokmkhaladioecdgfabaaaaaameajaaaaadaaaaaa
cmaaaaaaniaaaaaakiabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefcbeaiaaaaeaaaabaaafacaaaafjaaaaaeegiocaaa
aaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaadhccabaaaagaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaa
aoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaa
aaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaa
aaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaa
aaaaaaajhcaabaaaabaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaa
aeaaaaaadcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaa
acaaaaaaaaaaaaaaegiccaaaacaaaaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaa
aaaaaaaaegacbaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaaaaaaaaa
diaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaa
egacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
hccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaaakbabaaa
abaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaabkbabaaa
abaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaackbabaaaabaaaaaa
ckiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaa
egacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaa
acaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaa
acaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahhcaabaaaadaaaaaa
jgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaaabaaaaaajgaebaaa
acaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaadgaaaaafhccabaaa
afaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaadkbabaaaaeaaaaaa
dkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaaagaabaaaaaaaaaaa
egacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaaaaaaaaaadgaaaaaf
iccabaaaafaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaa
aaaaaaaaegiocaaaadaaaaaaanaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaa
egaobaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaaaaaaaaaaegiccaaa
aaaaaaaabbaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaaaaaaaaabaaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
aaaaaaaabcaaaaaakgakbaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhccabaaa
agaaaaaaegiccaaaaaaaaaaabdaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaa
doaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 51 math
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
root12:aaaeaaaa
eefiecedffgalmcoobfcoejdcamgkcghlbimamlkabaaaaaadaaoaaaaaeaaaaaa
daaaaaaajiaeaaaaleamaaaagaanaaaaebgpgodjgaaeaaaagaaeaaaaaaacpopp
niadaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaaaaabaaaaeaaaeaaaaaaaaaa
abaaaeaaabaaaiaaaaaaaaaaacaaaaaaabaaajaaaaaaaaaaadaaaaaaaeaaakaa
aaaaaaaaadaaamaaahaaaoaaaaaaaaaaadaabfaaabaabfaaaaaaaaaaaaaaaaaa
aaacpoppbpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapja
aeaaaaaeaaaaadoaacaaoejaabaaoekaabaaookaafaaaaadaaaaabiaadaakkka
adaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaiaabaaaaacabaaadiaacaaoeja
bcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoejaaeaaaaaeaaaaamoaacaaeeia
acaaeekaacaaoekaafaaaaadaaaaahiaaaaaffjaapaaoekaaeaaaaaeaaaaahia
aoaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahiabaaaoekaaaaakkjaaaaaoeia
aeaaaaaeaaaaahiabbaaoekaaaaappjaaaaaoeiaacaaaaadabaaahiaaaaaoeia
aiaaoekbaeaaaaaeaaaaahiaaaaaoeiaajaappkbajaaoekaceaaaaacacaaahia
aaaaoeiaaiaaaaadaaaaabiaabaaoeiaabaaoeiaahaaaaacaaaaabiaaaaaaaia
afaaaaadabaaahoaaaaaaaiaabaaoeiaafaaaaadaaaaabiaabaaaajabcaaaaka
afaaaaadaaaaaciaabaaaajabdaaaakaafaaaaadaaaaaeiaabaaaajabeaaaaka
afaaaaadabaaabiaabaaffjabcaaffkaafaaaaadabaaaciaabaaffjabdaaffka
afaaaaadabaaaeiaabaaffjabeaaffkaacaaaaadaaaaahiaaaaaoeiaabaaoeia
afaaaaadabaaabiaabaakkjabcaakkkaafaaaaadabaaaciaabaakkjabdaakkka
afaaaaadabaaaeiaabaakkjabeaakkkaacaaaaadaaaaahiaaaaaoeiaabaaoeia
ceaaaaacabaaahiaaaaaoeiaafaaaaadaaaaahiaaeaaffjaapaaoekaaeaaaaae
aaaaahiaaoaaoekaaeaaaajaaaaaoeiaaeaaaaaeaaaaahiabaaaoekaaeaakkja
aaaaoeiaceaaaaacadaaahiaaaaaoeiaafaaaaadaaaaahiaabaanciaadaamjia
aeaaaaaeaaaaahiaabaamjiaadaanciaaaaaoeibabaaaaacaeaaahoaabaaoeia
abaaaaacacaaahoaadaaoeiaafaaaaadaaaaaiiaaeaappjabfaappkaafaaaaad
adaaahoaaaaappiaaaaaoeiaafaaaaadaaaaapiaaaaaffjaapaaoekaaeaaaaae
aaaaapiaaoaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaapiabaaaoekaaaaakkja
aaaaoeiaaeaaaaaeaaaaapiabbaaoekaaaaappjaaaaaoeiaafaaaaadabaaahia
aaaaffiaafaaoekaaeaaaaaeabaaahiaaeaaoekaaaaaaaiaabaaoeiaaeaaaaae
aaaaahiaagaaoekaaaaakkiaabaaoeiaaeaaaaaeafaaahoaahaaoekaaaaappia
aaaaoeiaafaaaaadaaaaapiaaaaaffjaalaaoekaaeaaaaaeaaaaapiaakaaoeka
aaaaaajaaaaaoeiaaeaaaaaeaaaaapiaamaaoekaaaaakkjaaaaaoeiaaeaaaaae
aaaaapiaanaaoekaaaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoeka
aaaaoeiaabaaaaacaaaaammaaaaaoeiaabaaaaacacaaaioaacaaaaiaabaaaaac
adaaaioaacaaffiaabaaaaacaeaaaioaacaakkiappppaaaafdeieefcbeaiaaaa
eaaaabaaafacaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaafjaaaaaeegiocaaa
abaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaa
adaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaa
fpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaafpaaaaadpcbabaaa
aeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaa
gfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaa
aeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadhccabaaaagaaaaaagiaaaaac
aeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaa
abaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
acaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaa
egiocaaaadaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaai
bcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaaj
dcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaa
dcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaa
kgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaa
egiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaabaaaaaaegacbaaa
aaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaamhcaabaaaaaaaaaaa
egacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaaacaaaaaa
aaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhccabaaaacaaaaaa
pgapbaaaaaaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaaf
iccabaaaadaaaaaaakaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaa
aeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
aaaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaa
diaaaaaibcaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaai
bcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaa
acaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaa
dcaaaaakhcaabaaaabaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaia
ebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaai
bcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaah
hccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aeaaaaaabkaabaaaaaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadoaaaaabejfdeheokeaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaacaaaaaaadadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaa
adadaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaafeebeoehefeofeaaklklkl
epfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaa
lmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaa
aaaaaaaaadaaaaaaadaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapaaaaaalmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaa
lmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaahaiaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "d3d9 " {
// Stats: 43 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_DetailAlbedoMap_ST]
Vector 16 [_MainTex_ST]
Float 18 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_WorldTransformParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c16, c16.zwzw
mul r0.x, c18.x, c18.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c17.xyxy, c17
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c13
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul r1.w, v4.w, c15.w
mul oT3.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
mad r0.xyz, r0, -c14.w, c14
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 48 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedbkcmgjpdkkffmehglicmhcnmlfdpolkgabaaaaaahiajaaaaadaaaaaa
cmaaaaaaniaaaaaakiabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaadamaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefcmiahaaaaeaaaabaapcabaaaafjaaaaaeegiocaaa
aaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaaddccabaaaagaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaa
aoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaa
aaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaal
dccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaa
aaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaa
aaaaaaajhcaabaaaabaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaa
aeaaaaaadcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaa
acaaaaaaaaaaaaaaegiccaaaacaaaaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaadaaaaaaakaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaa
fgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaa
egiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaak
hcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaa
abaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaa
abaaaaaadiaaaaaibcaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaa
baaaaaaadiaaaaaiccaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaa
bbaaaaaadiaaaaaiecaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaa
bcaaaaaadiaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaa
baaaaaaadiaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaa
bbaaaaaadiaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaa
bcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaa
diaaaaaibcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaah
bcaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaa
egacbaaaacaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaa
acaaaaaadcaaaaakhcaabaaaabaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaa
egacbaiaebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaa
diaaaaaibcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaa
diaaaaahhccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaaeaaaaaabkaabaaaaaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaa
aaaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaa
anaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
aoaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaai
dcaabaaaabaaaaaafgafbaaaaaaaaaaaegiacaaaaaaaaaaabbaaaaaadcaaaaak
dcaabaaaaaaaaaaaegiacaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegaabaaa
abaaaaaadcaaaaakdcaabaaaaaaaaaaaegiacaaaaaaaaaaabcaaaaaakgakbaaa
aaaaaaaaegaabaaaaaaaaaaadcaaaaakdccabaaaagaaaaaaegiacaaaaaaaaaaa
bdaaaaaapgapbaaaaaaaaaaaegaabaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 48 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
root12:aaaeaaaa
eefiecedoijajgohlbflldjldegigkgikdnnjgafabaaaaaanianaaaaaeaaaaaa
daaaaaaaimaeaaaafmamaaaaaianaaaaebgpgodjfeaeaaaafeaeaaaaaaacpopp
mmadaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaaaaabaaaaeaaaeaaaaaaaaaa
abaaaeaaabaaaiaaaaaaaaaaacaaaaaaabaaajaaaaaaaaaaadaaaaaaaeaaakaa
aaaaaaaaadaaamaaahaaaoaaaaaaaaaaadaabfaaabaabfaaaaaaaaaaaaaaaaaa
aaacpoppbpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapja
aeaaaaaeaaaaadoaacaaoejaabaaoekaabaaookaafaaaaadaaaaabiaadaakkka
adaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaiaabaaaaacabaaadiaacaaoeja
bcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoejaaeaaaaaeaaaaamoaacaaeeia
acaaeekaacaaoekaafaaaaadaaaaahiaaaaaffjaapaaoekaaeaaaaaeaaaaahia
aoaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahiabaaaoekaaaaakkjaaaaaoeia
aeaaaaaeaaaaahiabbaaoekaaaaappjaaaaaoeiaacaaaaadabaaahiaaaaaoeia
aiaaoekbaeaaaaaeaaaaahiaaaaaoeiaajaappkbajaaoekaaiaaaaadaaaaaiia
abaaoeiaabaaoeiaahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahoaaaaappia
abaaoeiaafaaaaadabaaabiaabaaaajabcaaaakaafaaaaadabaaaciaabaaaaja
bdaaaakaafaaaaadabaaaeiaabaaaajabeaaaakaafaaaaadacaaabiaabaaffja
bcaaffkaafaaaaadacaaaciaabaaffjabdaaffkaafaaaaadacaaaeiaabaaffja
beaaffkaacaaaaadabaaahiaabaaoeiaacaaoeiaafaaaaadacaaabiaabaakkja
bcaakkkaafaaaaadacaaaciaabaakkjabdaakkkaafaaaaadacaaaeiaabaakkja
beaakkkaacaaaaadabaaahiaabaaoeiaacaaoeiaceaaaaacacaaahiaabaaoeia
afaaaaadabaaahiaaeaaffjaapaaoekaaeaaaaaeabaaahiaaoaaoekaaeaaaaja
abaaoeiaaeaaaaaeabaaahiabaaaoekaaeaakkjaabaaoeiaceaaaaacadaaahia
abaaoeiaafaaaaadabaaahiaacaanciaadaamjiaaeaaaaaeabaaahiaacaamjia
adaanciaabaaoeibabaaaaacaeaaahoaacaaoeiaabaaaaacacaaahoaadaaoeia
afaaaaadaaaaaiiaaeaappjabfaappkaafaaaaadadaaahoaaaaappiaabaaoeia
afaaaaadabaaapiaaaaaffjaapaaoekaaeaaaaaeabaaapiaaoaaoekaaaaaaaja
abaaoeiaaeaaaaaeabaaapiabaaaoekaaaaakkjaabaaoeiaaeaaaaaeabaaapia
bbaaoekaaaaappjaabaaoeiaafaaaaadacaaadiaabaaffiaafaaoekaaeaaaaae
abaaadiaaeaaoekaabaaaaiaacaaoeiaaeaaaaaeabaaadiaagaaoekaabaakkia
abaaoeiaaeaaaaaeafaaadoaahaaoekaabaappiaabaaoeiaafaaaaadabaaapia
aaaaffjaalaaoekaaeaaaaaeabaaapiaakaaoekaaaaaaajaabaaoeiaaeaaaaae
abaaapiaamaaoekaaaaakkjaabaaoeiaaeaaaaaeabaaapiaanaaoekaaaaappja
abaaoeiaaeaaaaaeaaaaadmaabaappiaaaaaoekaabaaoeiaabaaaaacaaaaamma
abaaoeiaabaaaaacacaaaioaaaaaaaiaabaaaaacadaaaioaaaaaffiaabaaaaac
aeaaaioaaaaakkiappppaaaafdeieefcmiahaaaaeaaaabaapcabaaaafjaaaaae
egiocaaaaaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaad
pcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaa
fpaaaaaddcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaa
aaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaa
gfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaa
afaaaaaagfaaaaaddccabaaaagaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhcaabaaaabaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaadcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaa
pgipcaaaacaaaaaaaaaaaaaaegiccaaaacaaaaaaaaaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaafgbfbaaaaeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaa
egacbaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaa
abaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaaadaaaaaa
egacbaaaabaaaaaadiaaaaaibcaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaa
adaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaa
adaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaa
adaaaaaabcaaaaaadiaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaa
adaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaa
adaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaa
adaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaa
adaaaaaadiaaaaaibcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaa
baaaaaaadiaaaaaiccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaa
bbaaaaaadiaaaaaiecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaa
bcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaa
aaaaaaaaegacbaaaacaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaa
cgajbaaaacaaaaaadcaaaaakhcaabaaaabaaaaaajgaebaaaacaaaaaacgajbaaa
abaaaaaaegacbaiaebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaa
acaaaaaadiaaaaaibcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaa
bfaaaaaadiaaaaahhccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaeaaaaaabkaabaaaaaaaaaaadgaaaaaficcabaaaafaaaaaa
ckaabaaaaaaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaa
adaaaaaaanaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaa
agbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
diaaaaaidcaabaaaabaaaaaafgafbaaaaaaaaaaaegiacaaaaaaaaaaabbaaaaaa
dcaaaaakdcaabaaaaaaaaaaaegiacaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaa
egaabaaaabaaaaaadcaaaaakdcaabaaaaaaaaaaaegiacaaaaaaaaaaabcaaaaaa
kgakbaaaaaaaaaaaegaabaaaaaaaaaaadcaaaaakdccabaaaagaaaaaaegiacaaa
aaaaaaaabdaaaaaapgapbaaaaaaaaaaaegaabaaaaaaaaaaadoaaaaabejfdeheo
keaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apapaaaaijaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaahahaaaajaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaacaaaaaaadadaaaajaaaaaaaabaaaaaaaaaaaaaa
adaaaaaaadaaaaaaadadaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apapaaaafaepfdejfeejepeoaaeoepfcenebemaafeeffiedepepfceeaafeebeo
ehefeofeaaklklklepfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaapaaaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaa
lmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaalmaaaaaaadaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapaaaaaalmaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
afaaaaaaapaaaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaadamaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "d3d9 " {
// Stats: 52 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 12 [_LightMatrix0]
Matrix 8 [_Object2World]
Matrix 16 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Matrix 0 [unity_World2Shadow0]
Vector 23 [_DetailAlbedoMap_ST]
Vector 22 [_MainTex_ST]
Float 24 [_UVSec]
Vector 19 [_WorldSpaceCameraPos]
Vector 20 [_WorldSpaceLightPos0]
Vector 21 [unity_WorldTransformParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c4, v0
dp4 oPos.y, c5, v0
dp4 oPos.z, c6, v0
dp4 oPos.w, c7, v0
mad oT0.xy, v2, c22, c22.zwzw
mul r0.x, c24.x, c24.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c23.xyxy, c23
dp4 r0.x, c8, v0
dp4 r0.y, c9, v0
dp4 r0.z, c10, v0
add r1.xyz, r0, -c19
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c17
mad r1.xyz, c16, v1.x, r1
mad r1.xyz, c18, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c8, v4
dp3 r1.y, c9, v4
dp3 r1.z, c10, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul r1.w, v4.w, c21.w
mul oT3.xyz, r1.w, r1
dp4 r0.w, c11, v0
dp4 oT5.x, c12, r0
dp4 oT5.y, c13, r0
dp4 oT5.z, c14, r0
dp4 oT5.w, c15, r0
dp4 oT6.x, c0, r0
dp4 oT6.y, c1, r0
dp4 oT6.z, c2, r0
dp4 oT6.w, c3, r0
mad r0.xyz, r0, -c20.w, c20
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d11 " {
// Stats: 55 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityShadows" 416
Matrix 128 [unity_World2Shadow0]
Matrix 192 [unity_World2Shadow1]
Matrix 256 [unity_World2Shadow2]
Matrix 320 [unity_World2Shadow3]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityShadows" 3
BindCB  "UnityPerDraw" 4
"vs_4_0
root12:aaafaaaa
eefiecedmjbecfnoiegpbjhdiolbfjhenbmbmjinabaaaaaajaakaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcmiaiaaaaeaaaabaadcacaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaa
fjaaaaaeegiocaaaadaaaaaaamaaaaaafjaaaaaeegiocaaaaeaaaaaabgaaaaaa
fpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaa
acaaaaaafpaaaaaddcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaa
acaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaad
pccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaagfaaaaadpccabaaaahaaaaaa
giaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaa
aeaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaaaaaaaaa
agbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
aeaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaa
aaaaaaaaegiocaaaaeaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
biaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaa
dhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaa
adaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaa
amaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaa
acaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaaeaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaaeaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaabaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaamhcaabaaa
aaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaa
acaaaaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhccabaaa
acaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaa
dgaaaaaficcabaaaadaaaaaaakaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaa
fgbfbaaaaeaaaaaaegiccaaaaeaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaa
egiccaaaaeaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaak
hcaabaaaabaaaaaaegiccaaaaeaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaa
abaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaa
eeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaa
abaaaaaadiaaaaaibcaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaa
baaaaaaadiaaaaaiccaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaa
bbaaaaaadiaaaaaiecaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaa
bcaaaaaadiaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaa
baaaaaaadiaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaa
bbaaaaaadiaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaa
bcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaa
diaaaaaibcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaaeaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaaeaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaaeaaaaaabcaaaaaa
aaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaah
bcaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaa
egacbaaaacaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaa
acaaaaaadcaaaaakhcaabaaaabaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaa
egacbaiaebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaa
diaaaaaibcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaaeaaaaaabfaaaaaa
diaaaaahhccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaaeaaaaaabkaabaaaaaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaa
aaaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaaeaaaaaa
anaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaamaaaaaaagbabaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaa
aoaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaaeaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaai
pcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaaaaaaaaabbaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaaaaaaaaabcaaaaaakgakbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaagaaaaaaegiocaaaaaaaaaaa
bdaaaaaapgapbaaaaaaaaaaaegaobaaaabaaaaaadiaaaaaipcaabaaaabaaaaaa
fgafbaaaaaaaaaaaegiocaaaadaaaaaaajaaaaaadcaaaaakpcaabaaaabaaaaaa
egiocaaaadaaaaaaaiaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaakaaaaaakgakbaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpccabaaaahaaaaaaegiocaaaadaaaaaaalaaaaaapgapbaaa
aaaaaaaaegaobaaaabaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 55 math
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityShadows" 416
Matrix 128 [unity_World2Shadow0]
Matrix 192 [unity_World2Shadow1]
Matrix 256 [unity_World2Shadow2]
Matrix 320 [unity_World2Shadow3]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityShadows" 3
BindCB  "UnityPerDraw" 4
"vs_4_0_level_9_1
root12:aaafaaaa
eefiecedlafhnediicfkkhijlnjdachgmbdnmooeabaaaaaafeapaaaaaeaaaaaa
daaaaaaapaaeaaaamaanaaaagmaoaaaaebgpgodjliaeaaaaliaeaaaaaaacpopp
ceaeaaaajeaaaaaaajaaceaaaaaajaaaaaaajaaaaaaaceaaabaajaaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaaaaabaaaaeaaaeaaaaaaaaaa
abaaaeaaabaaaiaaaaaaaaaaacaaaaaaabaaajaaaaaaaaaaadaaaiaaaeaaakaa
aaaaaaaaaeaaaaaaaeaaaoaaaaaaaaaaaeaaamaaahaabcaaaaaaaaaaaeaabfaa
abaabjaaaaaaaaaaaaaaaaaaaaacpoppbpaaaaacafaaaaiaaaaaapjabpaaaaac
afaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapja
bpaaaaacafaaaeiaaeaaapjaaeaaaaaeaaaaadoaacaaoejaabaaoekaabaaooka
afaaaaadaaaaabiaadaakkkaadaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaia
abaaaaacabaaadiaacaaoejabcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoeja
aeaaaaaeaaaaamoaacaaeeiaacaaeekaacaaoekaafaaaaadaaaaahiaaaaaffja
bdaaoekaaeaaaaaeaaaaahiabcaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahia
beaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaahiabfaaoekaaaaappjaaaaaoeia
acaaaaadabaaahiaaaaaoeiaaiaaoekbaeaaaaaeaaaaahiaaaaaoeiaajaappkb
ajaaoekaceaaaaacacaaahiaaaaaoeiaaiaaaaadaaaaabiaabaaoeiaabaaoeia
ahaaaaacaaaaabiaaaaaaaiaafaaaaadabaaahoaaaaaaaiaabaaoeiaafaaaaad
aaaaabiaabaaaajabgaaaakaafaaaaadaaaaaciaabaaaajabhaaaakaafaaaaad
aaaaaeiaabaaaajabiaaaakaafaaaaadabaaabiaabaaffjabgaaffkaafaaaaad
abaaaciaabaaffjabhaaffkaafaaaaadabaaaeiaabaaffjabiaaffkaacaaaaad
aaaaahiaaaaaoeiaabaaoeiaafaaaaadabaaabiaabaakkjabgaakkkaafaaaaad
abaaaciaabaakkjabhaakkkaafaaaaadabaaaeiaabaakkjabiaakkkaacaaaaad
aaaaahiaaaaaoeiaabaaoeiaceaaaaacabaaahiaaaaaoeiaafaaaaadaaaaahia
aeaaffjabdaaoekaaeaaaaaeaaaaahiabcaaoekaaeaaaajaaaaaoeiaaeaaaaae
aaaaahiabeaaoekaaeaakkjaaaaaoeiaceaaaaacadaaahiaaaaaoeiaafaaaaad
aaaaahiaabaanciaadaamjiaaeaaaaaeaaaaahiaabaamjiaadaanciaaaaaoeib
abaaaaacaeaaahoaabaaoeiaabaaaaacacaaahoaadaaoeiaafaaaaadaaaaaiia
aeaappjabjaappkaafaaaaadadaaahoaaaaappiaaaaaoeiaafaaaaadaaaaapia
aaaaffjabdaaoekaaeaaaaaeaaaaapiabcaaoekaaaaaaajaaaaaoeiaaeaaaaae
aaaaapiabeaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapiabfaaoekaaaaappja
aaaaoeiaafaaaaadabaaapiaaaaaffiaafaaoekaaeaaaaaeabaaapiaaeaaoeka
aaaaaaiaabaaoeiaaeaaaaaeabaaapiaagaaoekaaaaakkiaabaaoeiaaeaaaaae
afaaapoaahaaoekaaaaappiaabaaoeiaafaaaaadabaaapiaaaaaffiaalaaoeka
aeaaaaaeabaaapiaakaaoekaaaaaaaiaabaaoeiaaeaaaaaeabaaapiaamaaoeka
aaaakkiaabaaoeiaaeaaaaaeagaaapoaanaaoekaaaaappiaabaaoeiaafaaaaad
aaaaapiaaaaaffjaapaaoekaaeaaaaaeaaaaapiaaoaaoekaaaaaaajaaaaaoeia
aeaaaaaeaaaaapiabaaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapiabbaaoeka
aaaappjaaaaaoeiaaeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaac
aaaaammaaaaaoeiaabaaaaacacaaaioaacaaaaiaabaaaaacadaaaioaacaaffia
abaaaaacaeaaaioaacaakkiappppaaaafdeieefcmiaiaaaaeaaaabaadcacaaaa
fjaaaaaeegiocaaaaaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaa
fjaaaaaeegiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaaamaaaaaa
fjaaaaaeegiocaaaaeaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaa
agaaaaaagfaaaaadpccabaaaahaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaaeaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaaeaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaaeaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaaeaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaaeaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaaeaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhcaabaaaabaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaadcaaaaamhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaa
pgipcaaaacaaaaaaaaaaaaaaegiccaaaacaaaaaaaaaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaaaaaaaaa
eeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadgaaaaaficcabaaaadaaaaaaakaabaaa
aaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaaaeaaaaaa
anaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaaeaaaaaaamaaaaaaagbabaaa
aeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaaeaaaaaa
aoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaa
egacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaacaaaaaa
akbabaaaabaaaaaaakiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaaacaaaaaa
akbabaaaabaaaaaaakiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaaacaaaaaa
akbabaaaabaaaaaaakiacaaaaeaaaaaabcaaaaaadiaaaaaibcaabaaaadaaaaaa
bkbabaaaabaaaaaabkiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaa
bkbabaaaabaaaaaabkiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaa
bkbabaaaabaaaaaabkiacaaaaeaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaackbabaaa
abaaaaaackiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaackbabaaa
abaaaaaackiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaackbabaaa
abaaaaaackiacaaaaeaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaaegacbaaa
acaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaacaaaaaa
egacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahhcaabaaa
adaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaaabaaaaaa
jgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaadgaaaaaf
hccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaadkbabaaa
aeaaaaaadkiacaaaaeaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaaagaabaaa
aaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaaaaaaaaaa
dgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaaeaaaaaaanaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaaeaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaaeaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaapaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaaaaaaaaabbaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaaaaaaaaa
baaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaabaaaaaa
egiocaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pccabaaaagaaaaaaegiocaaaaaaaaaaabdaaaaaapgapbaaaaaaaaaaaegaobaaa
abaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaa
ajaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaiaaaaaaagaabaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaa
akaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpccabaaaahaaaaaa
egiocaaaadaaaaaaalaaaaaapgapbaaaaaaaaaaaegaobaaaabaaaaaadoaaaaab
ejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaahahaaaa
jaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaaadadaaaajaaaaaaaabaaaaaa
aaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfcenebemaafeeffiedepepfcee
aafeebeoehefeofeaaklklklepfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apaaaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaapaaaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
SubProgram "d3d9 " {
// Stats: 46 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 16 [_DetailAlbedoMap_ST]
Vector 15 [_MainTex_ST]
Vector 11 [_ProjectionParams]
Vector 12 [_ScreenParams]
Float 17 [_UVSec]
Vector 10 [_WorldSpaceCameraPos]
Vector 13 [_WorldSpaceLightPos0]
Vector 14 [unity_WorldTransformParams]
"vs_2_0
def c18, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
mad oT0.xy, v2, c15, c15.zwzw
mul r0.x, c17.x, c17.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c16.xyxy, c16
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c10
mad r0.xyz, r0, -c13.w, c13
dp3 r0.w, r1, r1
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r1
mul r1.xyz, v1.y, c8
mad r1.xyz, c7, v1.x, r1
mad r1.xyz, c9, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul r0.w, v4.w, c14.w
mul oT3.xyz, r0.w, r1
dp4 r1.y, c1, v0
mul r0.w, r1.y, c11.x
mul r2.w, r0.w, c18.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c18.x
mad oT5.xy, r2.z, c12.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov oPos, r1
mov oT5.zw, r1
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 43 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedefjmhmeedhjkncnkelighnaldgioimppabaaaaaaneaiaaaaadaaaaaa
cmaaaaaaniaaaaaakiabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklklfdeieefcceahaaaaeaaaabaamjabaaaafjaaaaaeegiocaaa
aaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaa
acaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaadpccabaaaagaaaaaagiaaaaacafaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaaaaaaaaaa
biaaaaaibcaabaaaabaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaa
dhaaaaajdcaabaaaabaaaaaaagaabaaaabaaaaaaegbabaaaacaaaaaaegbabaaa
adaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaabaaaaaaagiecaaaaaaaaaaa
amaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaa
acaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaai
hcaabaaaabaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaak
hcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaa
abaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegacbaaaabaaaaaaaaaaaaajhcaabaaaacaaaaaa
egacbaaaabaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaamhcaabaaa
abaaaaaaegacbaiaebaaaaaaabaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaa
acaaaaaaaaaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaa
acaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaahhccabaaa
acaaaaaapgapbaaaabaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaaadaaaaaa
akaabaaaabaaaaaadiaaaaaihcaabaaaacaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaacaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaacaaaaaadcaaaaakhcaabaaaacaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaacaaaaaabaaaaaahbcaabaaa
abaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaabaaaaaa
akaabaaaabaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaaabaaaaaaegacbaaa
acaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaa
adaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
adaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
adaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaa
aeaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
aeaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
aeaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
adaaaaaaegacbaaaadaaaaaaegacbaaaaeaaaaaadiaaaaaibcaabaaaaeaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaaeaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaaeaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaadaaaaaa
egacbaaaadaaaaaaegacbaaaaeaaaaaabaaaaaahbcaabaaaabaaaaaaegacbaaa
adaaaaaaegacbaaaadaaaaaaeeaaaaafbcaabaaaabaaaaaaakaabaaaabaaaaaa
diaaaaahhcaabaaaadaaaaaaagaabaaaabaaaaaaegacbaaaadaaaaaadiaaaaah
hcaabaaaaeaaaaaajgaebaaaacaaaaaacgajbaaaadaaaaaadcaaaaakhcaabaaa
acaaaaaajgaebaaaadaaaaaacgajbaaaacaaaaaaegacbaiaebaaaaaaaeaaaaaa
dgaaaaafhccabaaaafaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaabaaaaaa
dkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaa
agaabaaaabaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaa
abaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaabaaaaaadiaaaaaiccaabaaa
aaaaaaaabkaabaaaaaaaaaaaakiacaaaabaaaaaaafaaaaaadiaaaaakncaabaaa
abaaaaaaagahbaaaaaaaaaaaaceaaaaaaaaaaadpaaaaaaaaaaaaaadpaaaaaadp
dgaaaaafmccabaaaagaaaaaakgaobaaaaaaaaaaaaaaaaaahdccabaaaagaaaaaa
kgakbaaaabaaaaaamgaabaaaabaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 49 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 2
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 18 [_MainTex_ST]
Vector 14 [_ProjectionParams]
Vector 15 [_ScreenParams]
Float 20 [_UVSec]
Vector 13 [_WorldSpaceCameraPos]
Vector 16 [_WorldSpaceLightPos0]
Vector 17 [unity_WorldTransformParams]
"vs_2_0
def c21, 0.5, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
mad oT0.xy, v2, c18, c18.zwzw
mul r0.x, c20.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c13
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul r1.w, v4.w, c17.w
mul oT3.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
mad r0.xyz, r0, -c16.w, c16
dp4 r1.y, c1, v0
mul r0.w, r1.y, c14.x
mul r2.w, r0.w, c21.x
dp4 r1.x, c0, v0
dp4 r1.w, c3, v0
mul r2.xz, r1.xyww, c21.x
mad oT6.xy, r2.z, c15.zwzw, r2.xwzw
dp4 r1.z, c2, v0
mov oPos, r1
mov oT6.zw, r1
mov oT2.w, r0.x
mov oT3.w, r0.y
mov oT4.w, r0.z

"
}
SubProgram "d3d11 " {
// Stats: 51 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
Vector 80 [_ProjectionParams]
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedbmofmibcoejkjpldgkmohncdjacpbpggabaaaaaaciakaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaadamaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefcgaaiaaaaeaaaabaabiacaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaa
fjaaaaaeegiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaaabaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaaddccabaaa
agaaaaaagfaaaaadpccabaaaahaaaaaagiaaaaacafaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadgaaaaafpccabaaaaaaaaaaaegaobaaa
aaaaaaaabiaaaaaibcaabaaaabaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaa
aaaaaaaadhaaaaajdcaabaaaabaaaaaaagaabaaaabaaaaaaegbabaaaacaaaaaa
egbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaabaaaaaaagiecaaa
aaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaa
egbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaa
diaaaaaihcaabaaaabaaaaaafgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaabaaaaaaaaaaaaajhcaabaaa
acaaaaaaegacbaaaabaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaam
hcaabaaaabaaaaaaegacbaiaebaaaaaaabaaaaaapgipcaaaacaaaaaaaaaaaaaa
egiccaaaacaaaaaaaaaaaaaabaaaaaahicaabaaaabaaaaaaegacbaaaacaaaaaa
egacbaaaacaaaaaaeeaaaaaficaabaaaabaaaaaadkaabaaaabaaaaaadiaaaaah
hccabaaaacaaaaaapgapbaaaabaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaa
adaaaaaaakaabaaaabaaaaaadiaaaaaihcaabaaaacaaaaaafgbfbaaaaeaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaacaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaeaaaaaaegacbaaaacaaaaaadcaaaaakhcaabaaaacaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaacaaaaaabaaaaaah
bcaabaaaabaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaa
abaaaaaaakaabaaaabaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaaabaaaaaa
egacbaaaacaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaacaaaaaadiaaaaai
bcaabaaaadaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaai
bcaabaaaaeaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaaeaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaaeaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaadaaaaaaegacbaaaadaaaaaaegacbaaaaeaaaaaadiaaaaaibcaabaaa
aeaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
aeaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
aeaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
adaaaaaaegacbaaaadaaaaaaegacbaaaaeaaaaaabaaaaaahbcaabaaaabaaaaaa
egacbaaaadaaaaaaegacbaaaadaaaaaaeeaaaaafbcaabaaaabaaaaaaakaabaaa
abaaaaaadiaaaaahhcaabaaaadaaaaaaagaabaaaabaaaaaaegacbaaaadaaaaaa
diaaaaahhcaabaaaaeaaaaaajgaebaaaacaaaaaacgajbaaaadaaaaaadcaaaaak
hcaabaaaacaaaaaajgaebaaaadaaaaaacgajbaaaacaaaaaaegacbaiaebaaaaaa
aeaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaa
abaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaa
aeaaaaaaagaabaaaabaaaaaaegacbaaaacaaaaaadgaaaaaficcabaaaaeaaaaaa
bkaabaaaabaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaabaaaaaadiaaaaai
pcaabaaaabaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegaobaaaabaaaaaadiaaaaaidcaabaaaacaaaaaa
fgafbaaaabaaaaaaegiacaaaaaaaaaaabbaaaaaadcaaaaakdcaabaaaabaaaaaa
egiacaaaaaaaaaaabaaaaaaaagaabaaaabaaaaaaegaabaaaacaaaaaadcaaaaak
dcaabaaaabaaaaaaegiacaaaaaaaaaaabcaaaaaakgakbaaaabaaaaaaegaabaaa
abaaaaaadcaaaaakdccabaaaagaaaaaaegiacaaaaaaaaaaabdaaaaaapgapbaaa
abaaaaaaegaabaaaabaaaaaadiaaaaaiccaabaaaaaaaaaaabkaabaaaaaaaaaaa
akiacaaaabaaaaaaafaaaaaadiaaaaakncaabaaaabaaaaaaagahbaaaaaaaaaaa
aceaaaaaaaaaaadpaaaaaaaaaaaaaadpaaaaaadpdgaaaaafmccabaaaahaaaaaa
kgaobaaaaaaaaaaaaaaaaaahdccabaaaahaaaaaakgakbaaaabaaaaaamgaabaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 48 math
Keywords { "POINT" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 18 [_MainTex_ST]
Float 20 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
Vector 17 [unity_WorldTransformParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c18, c18.zwzw
mul r0.x, c20.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul r1.w, v4.w, c17.w
mul oT3.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
add oT6.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d11 " {
// Stats: 52 math
Keywords { "POINT" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
Vector 16 [_LightPositionRange]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedkhocbbcanpndccehjgoefkmeogjbphhhabaaaaaaamakaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaahaiaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefceeaiaaaaeaaaabaabbacaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaacaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadhccabaaa
agaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhcaabaaaabaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhccabaaa
acaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadcaaaaamhcaabaaaabaaaaaa
egacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaaacaaaaaa
aaaaaaaaaaaaaaajhccabaaaahaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
acaaaaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaa
aaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaadaaaaaa
akaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
acaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaa
abaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaa
dgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaa
dkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
aaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaapgapbaaaaaaaaaaa
egacbaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 52 math
Keywords { "POINT" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
Vector 16 [_LightPositionRange]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
root12:aaaeaaaa
eefiecedefnlboifocbpbiejjidcemkemdomidmbabaaaaaaiiaoaaaaaeaaaaaa
daaaaaaakiaeaaaapeamaaaakaanaaaaebgpgodjhaaeaaaahaaeaaaaaaacpopp
oiadaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaaaaabaaaaeaaaeaaaaaaaaaa
abaaaeaaabaaaiaaaaaaaaaaacaaaaaaacaaajaaaaaaaaaaadaaaaaaaeaaalaa
aaaaaaaaadaaamaaahaaapaaaaaaaaaaadaabfaaabaabgaaaaaaaaaaaaaaaaaa
aaacpoppbpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapja
aeaaaaaeaaaaadoaacaaoejaabaaoekaabaaookaafaaaaadaaaaabiaadaakkka
adaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaiaabaaaaacabaaadiaacaaoeja
bcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoejaaeaaaaaeaaaaamoaacaaeeia
acaaeekaacaaoekaafaaaaadaaaaahiaaaaaffjabaaaoekaaeaaaaaeaaaaahia
apaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahiabbaaoekaaaaakkjaaaaaoeia
aeaaaaaeaaaaahiabcaaoekaaaaappjaaaaaoeiaacaaaaadabaaahiaaaaaoeia
aiaaoekbaiaaaaadaaaaaiiaabaaoeiaabaaoeiaahaaaaacaaaaaiiaaaaappia
afaaaaadabaaahoaaaaappiaabaaoeiaafaaaaadabaaabiaabaaaajabdaaaaka
afaaaaadabaaaciaabaaaajabeaaaakaafaaaaadabaaaeiaabaaaajabfaaaaka
afaaaaadacaaabiaabaaffjabdaaffkaafaaaaadacaaaciaabaaffjabeaaffka
afaaaaadacaaaeiaabaaffjabfaaffkaacaaaaadabaaahiaabaaoeiaacaaoeia
afaaaaadacaaabiaabaakkjabdaakkkaafaaaaadacaaaciaabaakkjabeaakkka
afaaaaadacaaaeiaabaakkjabfaakkkaacaaaaadabaaahiaabaaoeiaacaaoeia
ceaaaaacacaaahiaabaaoeiaafaaaaadabaaahiaaeaaffjabaaaoekaaeaaaaae
abaaahiaapaaoekaaeaaaajaabaaoeiaaeaaaaaeabaaahiabbaaoekaaeaakkja
abaaoeiaceaaaaacadaaahiaabaaoeiaafaaaaadabaaahiaacaanciaadaamjia
aeaaaaaeabaaahiaacaamjiaadaanciaabaaoeibabaaaaacaeaaahoaacaaoeia
abaaaaacacaaahoaadaaoeiaafaaaaadaaaaaiiaaeaappjabgaappkaafaaaaad
adaaahoaaaaappiaabaaoeiaafaaaaadabaaapiaaaaaffjabaaaoekaaeaaaaae
abaaapiaapaaoekaaaaaaajaabaaoeiaaeaaaaaeabaaapiabbaaoekaaaaakkja
abaaoeiaaeaaaaaeabaaapiabcaaoekaaaaappjaabaaoeiaafaaaaadacaaahia
abaaffiaafaaoekaaeaaaaaeacaaahiaaeaaoekaabaaaaiaacaaoeiaaeaaaaae
abaaahiaagaaoekaabaakkiaacaaoeiaaeaaaaaeafaaahoaahaaoekaabaappia
abaaoeiaacaaaaadagaaahoaaaaaoeiaakaaoekbaeaaaaaeaaaaahiaaaaaoeia
ajaappkbajaaoekaceaaaaacabaaahiaaaaaoeiaafaaaaadaaaaapiaaaaaffja
amaaoekaaeaaaaaeaaaaapiaalaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaapia
anaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapiaaoaaoekaaaaappjaaaaaoeia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacacaaaioaabaaaaiaabaaaaacadaaaioaabaaffiaabaaaaacaeaaaioa
abaakkiappppaaaafdeieefceeaiaaaaeaaaabaabbacaaaafjaaaaaeegiocaaa
aaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaaacaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaadhccabaaaagaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacaeaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaa
aaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaa
aaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaal
mccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaa
aaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaa
aaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaa
aaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaabaaaaaaegacbaaaaaaaaaaa
egiccaiaebaaaaaaabaaaaaaaeaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadcaaaaam
hcaabaaaabaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaa
egiccaaaacaaaaaaaaaaaaaaaaaaaaajhccabaaaahaaaaaaegacbaaaaaaaaaaa
egiccaiaebaaaaaaacaaaaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaadaaaaaaakaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaa
aeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
aaaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaa
diaaaaaibcaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaai
bcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaa
acaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaa
dcaaaaakhcaabaaaabaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaia
ebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaai
bcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaah
hccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aeaaaaaabkaabaaaaaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadoaaaaabejfdeheokeaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaacaaaaaaadadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaa
adadaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaafeebeoehefeofeaaklklkl
epfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaa
neaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaa
aaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaa
neaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaahaiaaaaneaaaaaaagaaaaaa
aaaaaaaaadaaaaaaahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklkl"
}
SubProgram "d3d9 " {
// Stats: 48 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
Matrix 11 [_LightMatrix0] 3
Matrix 4 [_Object2World]
Matrix 8 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 19 [_DetailAlbedoMap_ST]
Vector 16 [_LightPositionRange]
Vector 18 [_MainTex_ST]
Float 20 [_UVSec]
Vector 14 [_WorldSpaceCameraPos]
Vector 15 [_WorldSpaceLightPos0]
Vector 17 [unity_WorldTransformParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dcl_texcoord1 v3
dcl_tangent v4
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c18, c18.zwzw
mul r0.x, c20.x, c20.x
sge r0.x, -r0.x, r0.x
mov r1.xy, v2
lrp r2.xy, r0.x, r1, v3
mad oT0.zw, r2.xyxy, c19.xyxy, c19
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add r1.xyz, r0, -c14
dp3 r1.w, r1, r1
rsq r1.w, r1.w
mul oT1.xyz, r1.w, r1
mul r1.xyz, v1.y, c9
mad r1.xyz, c8, v1.x, r1
mad r1.xyz, c10, v1.z, r1
nrm r2.xyz, r1
dp3 r1.x, c4, v4
dp3 r1.y, c5, v4
dp3 r1.z, c6, v4
nrm r3.xyz, r1
mul r1.xyz, r2.zxyw, r3.yzxw
mad r1.xyz, r2.yzxw, r3.zxyw, -r1
mov oT4.xyz, r2
mov oT2.xyz, r3
mul r1.w, v4.w, c17.w
mul oT3.xyz, r1.w, r1
dp4 r0.w, c7, v0
dp4 oT5.x, c11, r0
dp4 oT5.y, c12, r0
dp4 oT5.z, c13, r0
add oT6.xyz, r0, -c16
mad r0.xyz, r0, -c15.w, c15
nrm r1.xyz, r0
mov oT2.w, r1.x
mov oT3.w, r1.y
mov oT4.w, r1.z

"
}
SubProgram "d3d11 " {
// Stats: 52 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
Vector 16 [_LightPositionRange]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0
root12:aaaeaaaa
eefiecedkhocbbcanpndccehjgoefkmeogjbphhhabaaaaaaamakaaaaadaaaaaa
cmaaaaaaniaaaaaamaabaaaaejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaa
aiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
neaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
neaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaahaiaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaa
ahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
fdeieefceeaiaaaaeaaaabaabbacaaaafjaaaaaeegiocaaaaaaaaaaabeaaaaaa
fjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaaacaaaaaa
fjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaad
hcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaa
fpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaad
pccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaa
gfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadhccabaaa
agaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaaadaaaaaaadaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaa
aaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaa
agaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaa
dcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaa
ogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaa
amaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaa
aaaaaaaaaaaaaaajhcaabaaaabaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
abaaaaaaaeaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhccabaaa
acaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadcaaaaamhcaabaaaabaaaaaa
egacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaaacaaaaaa
aaaaaaaaaaaaaaajhccabaaaahaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaa
acaaaaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaa
aaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaadaaaaaa
akaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
adaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaadaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaadiaaaaaibcaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaa
acaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaa
abaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaa
dgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaa
dkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
aaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaapgapbaaaaaaaaaaa
egacbaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 52 math
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
Vector 16 [_LightPositionRange]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityPerDraw" 3
"vs_4_0_level_9_1
root12:aaaeaaaa
eefiecedefnlboifocbpbiejjidcemkemdomidmbabaaaaaaiiaoaaaaaeaaaaaa
daaaaaaakiaeaaaapeamaaaakaanaaaaebgpgodjhaaeaaaahaaeaaaaaaacpopp
oiadaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaaaaabaaaaeaaaeaaaaaaaaaa
abaaaeaaabaaaiaaaaaaaaaaacaaaaaaacaaajaaaaaaaaaaadaaaaaaaeaaalaa
aaaaaaaaadaaamaaahaaapaaaaaaaaaaadaabfaaabaabgaaaaaaaaaaaaaaaaaa
aaacpoppbpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapja
aeaaaaaeaaaaadoaacaaoejaabaaoekaabaaookaafaaaaadaaaaabiaadaakkka
adaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaiaabaaaaacabaaadiaacaaoeja
bcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoejaaeaaaaaeaaaaamoaacaaeeia
acaaeekaacaaoekaafaaaaadaaaaahiaaaaaffjabaaaoekaaeaaaaaeaaaaahia
apaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahiabbaaoekaaaaakkjaaaaaoeia
aeaaaaaeaaaaahiabcaaoekaaaaappjaaaaaoeiaacaaaaadabaaahiaaaaaoeia
aiaaoekbaiaaaaadaaaaaiiaabaaoeiaabaaoeiaahaaaaacaaaaaiiaaaaappia
afaaaaadabaaahoaaaaappiaabaaoeiaafaaaaadabaaabiaabaaaajabdaaaaka
afaaaaadabaaaciaabaaaajabeaaaakaafaaaaadabaaaeiaabaaaajabfaaaaka
afaaaaadacaaabiaabaaffjabdaaffkaafaaaaadacaaaciaabaaffjabeaaffka
afaaaaadacaaaeiaabaaffjabfaaffkaacaaaaadabaaahiaabaaoeiaacaaoeia
afaaaaadacaaabiaabaakkjabdaakkkaafaaaaadacaaaciaabaakkjabeaakkka
afaaaaadacaaaeiaabaakkjabfaakkkaacaaaaadabaaahiaabaaoeiaacaaoeia
ceaaaaacacaaahiaabaaoeiaafaaaaadabaaahiaaeaaffjabaaaoekaaeaaaaae
abaaahiaapaaoekaaeaaaajaabaaoeiaaeaaaaaeabaaahiabbaaoekaaeaakkja
abaaoeiaceaaaaacadaaahiaabaaoeiaafaaaaadabaaahiaacaanciaadaamjia
aeaaaaaeabaaahiaacaamjiaadaanciaabaaoeibabaaaaacaeaaahoaacaaoeia
abaaaaacacaaahoaadaaoeiaafaaaaadaaaaaiiaaeaappjabgaappkaafaaaaad
adaaahoaaaaappiaabaaoeiaafaaaaadabaaapiaaaaaffjabaaaoekaaeaaaaae
abaaapiaapaaoekaaaaaaajaabaaoeiaaeaaaaaeabaaapiabbaaoekaaaaakkja
abaaoeiaaeaaaaaeabaaapiabcaaoekaaaaappjaabaaoeiaafaaaaadacaaahia
abaaffiaafaaoekaaeaaaaaeacaaahiaaeaaoekaabaaaaiaacaaoeiaaeaaaaae
abaaahiaagaaoekaabaakkiaacaaoeiaaeaaaaaeafaaahoaahaaoekaabaappia
abaaoeiaacaaaaadagaaahoaaaaaoeiaakaaoekbaeaaaaaeaaaaahiaaaaaoeia
ajaappkbajaaoekaceaaaaacabaaahiaaaaaoeiaafaaaaadaaaaapiaaaaaffja
amaaoekaaeaaaaaeaaaaapiaalaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaapia
anaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaapiaaoaaoekaaaaappjaaaaaoeia
aeaaaaaeaaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeia
abaaaaacacaaaioaabaaaaiaabaaaaacadaaaioaabaaffiaabaaaaacaeaaaioa
abaakkiappppaaaafdeieefceeaiaaaaeaaaabaabbacaaaafjaaaaaeegiocaaa
aaaaaaaabeaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaa
acaaaaaaacaaaaaafjaaaaaeegiocaaaadaaaaaabgaaaaaafpaaaaadpcbabaaa
aaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaad
dcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaa
abaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaad
pccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaa
gfaaaaadhccabaaaagaaaaaagfaaaaadhccabaaaahaaaaaagiaaaaacaeaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaabaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaaaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaacaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaaaaaaaaaegiocaaa
adaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaabiaaaaaibcaabaaa
aaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaadhaaaaajdcaabaaa
aaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaaadaaaaaadcaaaaal
mccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaaamaaaaaakgiocaaa
aaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaaacaaaaaaegiacaaa
aaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaaihcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaaaaaaaaa
egiccaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaadaaaaaaapaaaaaapgbpbaaa
aaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaabaaaaaaegacbaaaaaaaaaaa
egiccaiaebaaaaaaabaaaaaaaeaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahhccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadcaaaaam
hcaabaaaabaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaa
egiccaaaacaaaaaaaaaaaaaaaaaaaaajhccabaaaahaaaaaaegacbaaaaaaaaaaa
egiccaiaebaaaaaaacaaaaaaabaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaadaaaaaaakaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaa
aeaaaaaaegiccaaaadaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
adaaaaaaamaaaaaaagbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaadaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaa
baaaaaahbcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaa
aaaaaaaaegacbaaaabaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaa
diaaaaaibcaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaadaaaaaabcaaaaaa
diaaaaaibcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabaaaaaaa
diaaaaaiccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabbaaaaaa
diaaaaaiecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaadaaaaaabcaaaaaa
aaaaaaahhcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaai
bcaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaackbabaaaabaaaaaackiacaaaadaaaaaabcaaaaaaaaaaaaah
hcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaa
acaaaaaadiaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaa
dcaaaaakhcaabaaaabaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaia
ebaaaaaaadaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaai
bcaabaaaaaaaaaaadkbabaaaaeaaaaaadkiacaaaadaaaaaabfaaaaaadiaaaaah
hccabaaaaeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aeaaaaaabkaabaaaaaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaa
diaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaadaaaaaaanaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaaagbabaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
adaaaaaaapaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaafgafbaaaaaaaaaaaegiccaaaaaaaaaaabbaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhccabaaaagaaaaaaegiccaaaaaaaaaaabdaaaaaa
pgapbaaaaaaaaaaaegacbaaaaaaaaaaadoaaaaabejfdeheokeaaaaaaafaaaaaa
aiaaaaaaiaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaacaaaaaaadadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaa
adadaaaajjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdej
feejepeoaaeoepfcenebemaafeeffiedepepfceeaafeebeoehefeofeaaklklkl
epfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaa
neaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaa
aaaaaaaaadaaaaaaadaaaaaaapaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapaaaaaaneaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaa
neaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaahaiaaaaneaaaaaaagaaaaaa
aaaaaaaaadaaaaaaahaaaaaaahaiaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklkl"
}
SubProgram "d3d11_9x " {
// Stats: 48 math
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 256
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityShadows" 416
Matrix 128 [unity_World2Shadow0]
Matrix 192 [unity_World2Shadow1]
Matrix 256 [unity_World2Shadow2]
Matrix 320 [unity_World2Shadow3]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityShadows" 3
BindCB  "UnityPerDraw" 4
"vs_4_0_level_9_1
root12:aaafaaaa
eefiecedihpkkacommcaamddblaiadibjnkbohmcabaaaaaaoianaaaaaeaaaaaa
daaaaaaaimaeaaaagmamaaaabianaaaaebgpgodjfeaeaaaafeaeaaaaaaacpopp
mmadaaaaiiaaaaaaaiaaceaaaaaaieaaaaaaieaaaaaaceaaabaaieaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaabaaaeaaabaaaeaaaaaaaaaa
acaaaaaaabaaafaaaaaaaaaaadaaaiaaaeaaagaaaaaaaaaaaeaaaaaaaeaaakaa
aaaaaaaaaeaaamaaahaaaoaaaaaaaaaaaeaabfaaabaabfaaaaaaaaaaaaaaaaaa
aaacpoppbpaaaaacafaaaaiaaaaaapjabpaaaaacafaaabiaabaaapjabpaaaaac
afaaaciaacaaapjabpaaaaacafaaadiaadaaapjabpaaaaacafaaaeiaaeaaapja
aeaaaaaeaaaaadoaacaaoejaabaaoekaabaaookaafaaaaadaaaaabiaadaakkka
adaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaiaabaaaaacabaaadiaacaaoeja
bcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoejaaeaaaaaeaaaaamoaacaaeeia
acaaeekaacaaoekaafaaaaadaaaaahiaaaaaffjaapaaoekaaeaaaaaeaaaaahia
aoaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahiabaaaoekaaaaakkjaaaaaoeia
aeaaaaaeaaaaahiabbaaoekaaaaappjaaaaaoeiaacaaaaadabaaahiaaaaaoeia
aeaaoekbaeaaaaaeaaaaahiaaaaaoeiaafaappkbafaaoekaaiaaaaadaaaaaiia
abaaoeiaabaaoeiaahaaaaacaaaaaiiaaaaappiaafaaaaadabaaahoaaaaappia
abaaoeiaafaaaaadabaaabiaabaaaajabcaaaakaafaaaaadabaaaciaabaaaaja
bdaaaakaafaaaaadabaaaeiaabaaaajabeaaaakaafaaaaadacaaabiaabaaffja
bcaaffkaafaaaaadacaaaciaabaaffjabdaaffkaafaaaaadacaaaeiaabaaffja
beaaffkaacaaaaadabaaahiaabaaoeiaacaaoeiaafaaaaadacaaabiaabaakkja
bcaakkkaafaaaaadacaaaciaabaakkjabdaakkkaafaaaaadacaaaeiaabaakkja
beaakkkaacaaaaadabaaahiaabaaoeiaacaaoeiaceaaaaacacaaahiaabaaoeia
afaaaaadabaaahiaaeaaffjaapaaoekaaeaaaaaeabaaahiaaoaaoekaaeaaaaja
abaaoeiaaeaaaaaeabaaahiabaaaoekaaeaakkjaabaaoeiaceaaaaacadaaahia
abaaoeiaafaaaaadabaaahiaacaanciaadaamjiaaeaaaaaeabaaahiaacaamjia
adaanciaabaaoeibabaaaaacaeaaahoaacaaoeiaabaaaaacacaaahoaadaaoeia
afaaaaadaaaaaiiaaeaappjabfaappkaafaaaaadadaaahoaaaaappiaabaaoeia
afaaaaadabaaapiaaaaaffjaapaaoekaaeaaaaaeabaaapiaaoaaoekaaaaaaaja
abaaoeiaaeaaaaaeabaaapiabaaaoekaaaaakkjaabaaoeiaaeaaaaaeabaaapia
bbaaoekaaaaappjaabaaoeiaafaaaaadacaaapiaabaaffiaahaaoekaaeaaaaae
acaaapiaagaaoekaabaaaaiaacaaoeiaaeaaaaaeacaaapiaaiaaoekaabaakkia
acaaoeiaaeaaaaaeafaaapoaajaaoekaabaappiaacaaoeiaafaaaaadabaaapia
aaaaffjaalaaoekaaeaaaaaeabaaapiaakaaoekaaaaaaajaabaaoeiaaeaaaaae
abaaapiaamaaoekaaaaakkjaabaaoeiaaeaaaaaeabaaapiaanaaoekaaaaappja
abaaoeiaaeaaaaaeaaaaadmaabaappiaaaaaoekaabaaoeiaabaaaaacaaaaamma
abaaoeiaabaaaaacacaaaioaaaaaaaiaabaaaaacadaaaioaaaaaffiaabaaaaac
aeaaaioaaaaakkiappppaaaafdeieefcniahaaaaeaaaabaapgabaaaafjaaaaae
egiocaaaaaaaaaaaapaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaae
egiocaaaacaaaaaaabaaaaaafjaaaaaeegiocaaaadaaaaaaamaaaaaafjaaaaae
egiocaaaaeaaaaaabgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaa
abaaaaaafpaaaaaddcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaafpaaaaad
pcbabaaaaeaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaa
abaaaaaagfaaaaadhccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaad
pccabaaaaeaaaaaagfaaaaadpccabaaaafaaaaaagfaaaaadpccabaaaagaaaaaa
giaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaa
aeaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaaaaaaaaa
agbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaa
aeaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaa
aaaaaaaaegiocaaaaeaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaa
biaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaaaaaaaaaa
dhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaaegbabaaa
adaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaaaaaaaaaa
amaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaaegbabaaa
acaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaadiaaaaai
hcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaaeaaaaaaanaaaaaadcaaaaak
hcaabaaaaaaaaaaaegiccaaaaeaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaa
aaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaaabaaaaaa
egacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaamhcaabaaa
aaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaaegiccaaa
acaaaaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
abaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhccabaaa
acaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaadaaaaaa
akaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaaegiccaaa
aeaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaaeaaaaaaamaaaaaa
agbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaa
aeaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaahbcaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaa
acaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaabcaaaaaadiaaaaaibcaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaa
adaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaabcaaaaaaaaaaaaahhcaabaaa
acaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaaadaaaaaa
ckbabaaaabaaaaaackiacaaaaeaaaaaabcaaaaaaaaaaaaahhcaabaaaacaaaaaa
egacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaaegacbaaa
acaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
hcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaakhcaabaaa
abaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaaadaaaaaa
dgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaaaaaaaaaa
dkbabaaaaeaaaaaadkiacaaaaeaaaaaabfaaaaaadiaaaaahhccabaaaaeaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaabkaabaaa
aaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaadiaaaaaipcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiocaaaaeaaaaaaanaaaaaadcaaaaakpcaabaaa
aaaaaaaaegiocaaaaeaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaa
dcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaa
aaaaaaaaegiocaaaadaaaaaaajaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaa
adaaaaaaaiaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaa
abaaaaaaegiocaaaadaaaaaaakaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaa
dcaaaaakpccabaaaagaaaaaaegiocaaaadaaaaaaalaaaaaapgapbaaaaaaaaaaa
egaobaaaabaaaaaadoaaaaabejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adadaaaajaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfc
enebemaafeeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheomiaaaaaa
ahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaa
lmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaalmaaaaaaabaaaaaa
aaaaaaaaadaaaaaaacaaaaaaahaiaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaa
adaaaaaaapaaaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaa
lmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaalmaaaaaaafaaaaaa
aaaaaaaaadaaaaaaagaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafeeffied
epepfceeaaklklkl"
}
SubProgram "d3d11_9x " {
// Stats: 52 math
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "SHADOWS_NATIVE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Bind "tangent" TexCoord4
ConstBuffer "$Globals" 320
Matrix 256 [_LightMatrix0]
Vector 176 [_MainTex_ST]
Vector 192 [_DetailAlbedoMap_ST]
Float 232 [_UVSec]
ConstBuffer "UnityPerCamera" 144
Vector 64 [_WorldSpaceCameraPos] 3
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityShadows" 416
Matrix 128 [unity_World2Shadow0]
Matrix 192 [unity_World2Shadow1]
Matrix 256 [unity_World2Shadow2]
Matrix 320 [unity_World2Shadow3]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
Vector 336 [unity_WorldTransformParams]
BindCB  "$Globals" 0
BindCB  "UnityPerCamera" 1
BindCB  "UnityLighting" 2
BindCB  "UnityShadows" 3
BindCB  "UnityPerDraw" 4
"vs_4_0_level_9_1
root12:aaafaaaa
eefiecedlfkhiiodidkoiceliooohgpngpdfijmkabaaaaaapmaoaaaaaeaaaaaa
daaaaaaaoeaeaaaagianaaaabeaoaaaaebgpgodjkmaeaaaakmaeaaaaaaacpopp
biaeaaaajeaaaaaaajaaceaaaaaajaaaaaaajaaaaaaaceaaabaajaaaaaaaalaa
acaaabaaaaaaaaaaaaaaaoaaabaaadaaaaaaaaaaaaaabaaaaeaaaeaaaaaaaaaa
abaaaeaaabaaaiaaaaaaaaaaacaaaaaaabaaajaaaaaaaaaaadaaaiaaaeaaakaa
aaaaaaaaaeaaaaaaaeaaaoaaaaaaaaaaaeaaamaaahaabcaaaaaaaaaaaeaabfaa
abaabjaaaaaaaaaaaaaaaaaaaaacpoppbpaaaaacafaaaaiaaaaaapjabpaaaaac
afaaabiaabaaapjabpaaaaacafaaaciaacaaapjabpaaaaacafaaadiaadaaapja
bpaaaaacafaaaeiaaeaaapjaaeaaaaaeaaaaadoaacaaoejaabaaoekaabaaooka
afaaaaadaaaaabiaadaakkkaadaakkkaanaaaaadaaaaabiaaaaaaaibaaaaaaia
abaaaaacabaaadiaacaaoejabcaaaaaeacaaadiaaaaaaaiaabaaoeiaadaaoeja
aeaaaaaeaaaaamoaacaaeeiaacaaeekaacaaoekaafaaaaadaaaaahiaaaaaffja
bdaaoekaaeaaaaaeaaaaahiabcaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahia
beaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaahiabfaaoekaaaaappjaaaaaoeia
acaaaaadabaaahiaaaaaoeiaaiaaoekbaeaaaaaeaaaaahiaaaaaoeiaajaappkb
ajaaoekaaiaaaaadaaaaaiiaabaaoeiaabaaoeiaahaaaaacaaaaaiiaaaaappia
afaaaaadabaaahoaaaaappiaabaaoeiaafaaaaadabaaabiaabaaaajabgaaaaka
afaaaaadabaaaciaabaaaajabhaaaakaafaaaaadabaaaeiaabaaaajabiaaaaka
afaaaaadacaaabiaabaaffjabgaaffkaafaaaaadacaaaciaabaaffjabhaaffka
afaaaaadacaaaeiaabaaffjabiaaffkaacaaaaadabaaahiaabaaoeiaacaaoeia
afaaaaadacaaabiaabaakkjabgaakkkaafaaaaadacaaaciaabaakkjabhaakkka
afaaaaadacaaaeiaabaakkjabiaakkkaacaaaaadabaaahiaabaaoeiaacaaoeia
ceaaaaacacaaahiaabaaoeiaafaaaaadabaaahiaaeaaffjabdaaoekaaeaaaaae
abaaahiabcaaoekaaeaaaajaabaaoeiaaeaaaaaeabaaahiabeaaoekaaeaakkja
abaaoeiaceaaaaacadaaahiaabaaoeiaafaaaaadabaaahiaacaanciaadaamjia
aeaaaaaeabaaahiaacaamjiaadaanciaabaaoeibabaaaaacaeaaahoaacaaoeia
abaaaaacacaaahoaadaaoeiaafaaaaadaaaaaiiaaeaappjabjaappkaafaaaaad
adaaahoaaaaappiaabaaoeiaafaaaaadabaaapiaaaaaffjabdaaoekaaeaaaaae
abaaapiabcaaoekaaaaaaajaabaaoeiaaeaaaaaeabaaapiabeaaoekaaaaakkja
abaaoeiaaeaaaaaeabaaapiabfaaoekaaaaappjaabaaoeiaafaaaaadacaaadia
abaaffiaafaaoekaaeaaaaaeacaaadiaaeaaoekaabaaaaiaacaaoeiaaeaaaaae
acaaadiaagaaoekaabaakkiaacaaoeiaaeaaaaaeafaaadoaahaaoekaabaappia
acaaoeiaafaaaaadacaaapiaabaaffiaalaaoekaaeaaaaaeacaaapiaakaaoeka
abaaaaiaacaaoeiaaeaaaaaeacaaapiaamaaoekaabaakkiaacaaoeiaaeaaaaae
agaaapoaanaaoekaabaappiaacaaoeiaafaaaaadabaaapiaaaaaffjaapaaoeka
aeaaaaaeabaaapiaaoaaoekaaaaaaajaabaaoeiaaeaaaaaeabaaapiabaaaoeka
aaaakkjaabaaoeiaaeaaaaaeabaaapiabbaaoekaaaaappjaabaaoeiaaeaaaaae
aaaaadmaabaappiaaaaaoekaabaaoeiaabaaaaacaaaaammaabaaoeiaabaaaaac
acaaaioaaaaaaaiaabaaaaacadaaaioaaaaaffiaabaaaaacaeaaaioaaaaakkia
ppppaaaafdeieefchmaiaaaaeaaaabaabpacaaaafjaaaaaeegiocaaaaaaaaaaa
beaaaaaafjaaaaaeegiocaaaabaaaaaaafaaaaaafjaaaaaeegiocaaaacaaaaaa
abaaaaaafjaaaaaeegiocaaaadaaaaaaamaaaaaafjaaaaaeegiocaaaaeaaaaaa
bgaaaaaafpaaaaadpcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaafpaaaaad
dcbabaaaacaaaaaafpaaaaaddcbabaaaadaaaaaafpaaaaadpcbabaaaaeaaaaaa
ghaaaaaepccabaaaaaaaaaaaabaaaaaagfaaaaadpccabaaaabaaaaaagfaaaaad
hccabaaaacaaaaaagfaaaaadpccabaaaadaaaaaagfaaaaadpccabaaaaeaaaaaa
gfaaaaadpccabaaaafaaaaaagfaaaaaddccabaaaagaaaaaagfaaaaadpccabaaa
ahaaaaaagiaaaaacaeaaaaaadiaaaaaipcaabaaaaaaaaaaafgbfbaaaaaaaaaaa
egiocaaaaeaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaa
aaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaaeaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pccabaaaaaaaaaaaegiocaaaaeaaaaaaadaaaaaapgbpbaaaaaaaaaaaegaobaaa
aaaaaaaabiaaaaaibcaabaaaaaaaaaaackiacaaaaaaaaaaaaoaaaaaaabeaaaaa
aaaaaaaadhaaaaajdcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbabaaaacaaaaaa
egbabaaaadaaaaaadcaaaaalmccabaaaabaaaaaaagaebaaaaaaaaaaaagiecaaa
aaaaaaaaamaaaaaakgiocaaaaaaaaaaaamaaaaaadcaaaaaldccabaaaabaaaaaa
egbabaaaacaaaaaaegiacaaaaaaaaaaaalaaaaaaogikcaaaaaaaaaaaalaaaaaa
diaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaaeaaaaaaanaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaaamaaaaaaagbabaaaaaaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaaeaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
aeaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhcaabaaa
abaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaabaaaaaaaeaaaaaadcaaaaam
hcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgipcaaaacaaaaaaaaaaaaaa
egiccaaaacaaaaaaaaaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaa
egacbaaaabaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hccabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
adaaaaaaakaabaaaaaaaaaaadiaaaaaihcaabaaaabaaaaaafgbfbaaaaeaaaaaa
egiccaaaaeaaaaaaanaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaaeaaaaaa
amaaaaaaagbabaaaaeaaaaaaegacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaa
egiccaaaaeaaaaaaaoaaaaaakgbkbaaaaeaaaaaaegacbaaaabaaaaaabaaaaaah
bcaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaabaaaaaaeeaaaaafbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaa
egacbaaaabaaaaaadgaaaaafhccabaaaadaaaaaaegacbaaaabaaaaaadiaaaaai
bcaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaabaaaaaaadiaaaaai
ccaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaabbaaaaaadiaaaaai
ecaabaaaacaaaaaaakbabaaaabaaaaaaakiacaaaaeaaaaaabcaaaaaadiaaaaai
bcaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaabaaaaaaadiaaaaai
ccaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaabbaaaaaadiaaaaai
ecaabaaaadaaaaaabkbabaaaabaaaaaabkiacaaaaeaaaaaabcaaaaaaaaaaaaah
hcaabaaaacaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaadiaaaaaibcaabaaa
adaaaaaackbabaaaabaaaaaackiacaaaaeaaaaaabaaaaaaadiaaaaaiccaabaaa
adaaaaaackbabaaaabaaaaaackiacaaaaeaaaaaabbaaaaaadiaaaaaiecaabaaa
adaaaaaackbabaaaabaaaaaackiacaaaaeaaaaaabcaaaaaaaaaaaaahhcaabaaa
acaaaaaaegacbaaaacaaaaaaegacbaaaadaaaaaabaaaaaahbcaabaaaaaaaaaaa
egacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaahhcaabaaaacaaaaaaagaabaaaaaaaaaaaegacbaaaacaaaaaa
diaaaaahhcaabaaaadaaaaaajgaebaaaabaaaaaacgajbaaaacaaaaaadcaaaaak
hcaabaaaabaaaaaajgaebaaaacaaaaaacgajbaaaabaaaaaaegacbaiaebaaaaaa
adaaaaaadgaaaaafhccabaaaafaaaaaaegacbaaaacaaaaaadiaaaaaibcaabaaa
aaaaaaaadkbabaaaaeaaaaaadkiacaaaaeaaaaaabfaaaaaadiaaaaahhccabaaa
aeaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaeaaaaaa
bkaabaaaaaaaaaaadgaaaaaficcabaaaafaaaaaackaabaaaaaaaaaaadiaaaaai
pcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaaeaaaaaaanaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaaeaaaaaaamaaaaaaagbabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaaaoaaaaaakgbkbaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaaeaaaaaa
apaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadiaaaaaidcaabaaaabaaaaaa
fgafbaaaaaaaaaaaegiacaaaaaaaaaaabbaaaaaadcaaaaakdcaabaaaabaaaaaa
egiacaaaaaaaaaaabaaaaaaaagaabaaaaaaaaaaaegaabaaaabaaaaaadcaaaaak
dcaabaaaabaaaaaaegiacaaaaaaaaaaabcaaaaaakgakbaaaaaaaaaaaegaabaaa
abaaaaaadcaaaaakdccabaaaagaaaaaaegiacaaaaaaaaaaabdaaaaaapgapbaaa
aaaaaaaaegaabaaaabaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaadaaaaaaajaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaa
aiaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaabaaaaaa
egiocaaaadaaaaaaakaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pccabaaaahaaaaaaegiocaaaadaaaaaaalaaaaaapgapbaaaaaaaaaaaegaobaaa
abaaaaaadoaaaaabejfdeheokeaaaaaaafaaaaaaaiaaaaaaiaaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapapaaaaijaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaahahaaaajaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaaadadaaaa
jaaaaaaaabaaaaaaaaaaaaaaadaaaaaaadaaaaaaadadaaaajjaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapapaaaafaepfdejfeejepeoaaeoepfcenebemaa
feeffiedepepfceeaafeebeoehefeofeaaklklklepfdeheooaaaaaaaaiaaaaaa
aiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapaaaaaaneaaaaaaabaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahaiaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaaaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaaaaaaneaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapaaaaaaneaaaaaaafaaaaaaaaaaaaaa
adaaaaaaagaaaaaaadamaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 29 math, 3 textures
Keywords { "POINT" "SHADOWS_OFF" }
Vector 2 [_Color]
Float 4 [_Glossiness]
Vector 1 [_LightColor0]
Float 3 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_2_0
def c5, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl_2d s0
dcl_2d s1
dcl_2d s2
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r2.x, c5.x
add_pp r1.y, r2.x, -c4.x
dp3 r2.xy, t5, t5
texld r1, r1, s0
texld r3, t0, s1
texld_pp r2, r2, s2
mul_pp r3.w, r1.x, c5.y
mov r1, c0
mad_pp r0.yzw, c2.wzyx, r3.wzyx, -r1.wzyx
mul_pp r2.yzw, r3.wzyx, c2.wzyx
mad_pp r0.yzw, c3.x, r0, r1.wzyx
mul_pp r0.yzw, r0, r3.w
mad_pp r1.x, c3.x, -r1.w, r1.w
mad_pp r0.yzw, r2, r1.x, r0
mul_pp r1.xyz, r2.x, c1
mul_pp r1.xyz, r0.x, r1
mul_pp r0.xyz, r0.wzyx, r1
mov_pp r0.w, c5.x
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 22 math, 3 textures
Keywords { "POINT" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:adabadaa
eefiecedibjkejdojbhcpmjigepccfaiaggjgeeeabaaaaaaiiafaaaaadaaaaaa
cmaaaaaapmaaaaaadaabaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
ahahaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcfaaeaaaaeaaaaaaabeabaaaa
fjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafibiaaaeaahabaaaaaaaaaaa
ffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafibiaaaeaahabaaaacaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaad
icbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaa
gcbaaaadhcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaa
acaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaia
ebaaaaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaa
dkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaaf
ecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaacaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaa
aaaaaaajccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaa
aaaaiadpefaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaacaaaaaa
aagabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaa
aaaaiaebefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaa
aagabaaaabaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaa
egacbaaaabaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaa
abaaaaaaegacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaa
acaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaa
acaaaaaadiaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaa
dcaaaaanicaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaa
aaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaa
agajbaaaabaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaabaaaaaahbcaabaaa
abaaaaaaegbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaajpcaabaaaabaaaaaa
agaabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaadiaaaaaihcaabaaa
abaaaaaaagaabaaaabaaaaaaegiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaa
abaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhccabaaaaaaaaaaa
jgahbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaa
aaaaiadpdoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 22 math, 3 textures
Keywords { "POINT" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
root12:adabadaa
eefiecedpgkllppeojjcjelnlibjchdpemlmmmbkabaaaaaafeaiaaaaaeaaaaaa
daaaaaaapiacaaaafaahaaaacaaiaaaaebgpgodjmaacaaaamaacaaaaaaacpppp
gaacaaaagaaaaaaaaeaadaaaaaaagaaaaaaagaaaadaaceaaaaaagaaaacaaaaaa
aaababaaabacacaaaaaaacaaabaaaaaaaaaaaaaaaaaaagaaabaaabaaaaaaaaaa
aaaaajaaabaaacaaaaaaaaaaaaaaanaaabaaadaaaaaaaaaaaaacppppfbaaaaaf
aeaaapkaaaaaiadpaaaaiaebaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaaapla
bpaaaaacaaaaaaiaabaachlabpaaaaacaaaaaaiaacaacplabpaaaaacaaaaaaia
adaacplabpaaaaacaaaaaaiaaeaacplabpaaaaacaaaaaaiaafaaahlabpaaaaac
aaaaaajaaaaiapkabpaaaaacaaaaaajaabaiapkabpaaaaacaaaaaajaacaiapka
ceaaaaacaaaachiaaeaaoelaaiaaaaadaaaaciiaabaaoelbaaaaoeiaacaaaaad
aaaaciiaaaaappiaaaaappiaaeaaaaaeabaachiaaaaaoeiaaaaappibabaaoelb
abaaaaacacaacbiaacaapplaabaaaaacacaacciaadaapplaabaaaaacacaaceia
aeaapplaaiaaaaadaaaaciiaabaaoeiaacaaoeiaaiaaaaadaaaadbiaaaaaoeia
acaaoeiaafaaaaadaaaacciaaaaappiaaaaappiaafaaaaadabaacbiaaaaaffia
aaaaffiaabaaaaacaaaaamiaadaaoekaacaaaaadabaacciaaaaappibaeaaaaka
aiaaaaadacaaadiaafaaoelaafaaoelaecaaaaadabaaapiaabaaoeiaaaaioeka
ecaaaaadadaaapiaaaaaoelaabaioekaecaaaaadacaacpiaacaaoeiaacaioeka
afaaaaadadaaciiaabaaaaiaaeaaffkaabaaaaacabaaahiaaaaaoekaaeaaaaae
abaachiaacaaoekaadaaoeiaabaaoeibafaaaaadacaacoiaadaabliaacaablka
aeaaaaaeabaachiaaaaakkiaabaaoeiaaaaaoekaafaaaaadabaachiaabaaoeia
adaappiaaeaaaaaeabaaciiaaaaakkiaaaaappkbaaaappkaaeaaaaaeaaaacoia
acaaoeiaabaappiaabaabliaafaaaaadabaachiaacaaaaiaabaaoekaafaaaaad
abaachiaaaaaaaiaabaaoeiaafaaaaadaaaachiaaaaabliaabaaoeiaabaaaaac
aaaaciiaaeaaaakaabaaaaacaaaicpiaaaaaoeiappppaaaafdeieefcfaaeaaaa
eaaaaaaabeabaaaafjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaa
aaaaaaaafkaaaaadaagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafibiaaae
aahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafibiaaae
aahabaaaacaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaa
acaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaad
pcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaa
giaaaaacadaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaa
afaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaa
aaaaaaaaagaabaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaa
egbcbaiaebaaaaaaacaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaa
aaaaaaaapgapbaiaebaaaaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaaf
bcaabaaaacaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaa
aeaaaaaadgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaa
bkaabaaaaaaaaaaaaaaaaaajccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaa
anaaaaaaabeaaaaaaaaaiadpefaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaa
eghobaaaacaaaaaaaagabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaa
abaaaaaaabeaaaaaaaaaiaebefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaabaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaa
aaaaaaaaajaaaaaaegacbaaaabaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaa
diaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaa
dcaaaaalhcaabaaaacaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaa
egiccaaaaaaaaaaaacaaaaaadiaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaa
agajbaaaacaaaaaadcaaaaanicaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaa
anaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaa
baaaaaahbcaabaaaabaaaaaaegbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaaj
pcaabaaaabaaaaaaagaabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaa
diaaaaaihcaabaaaabaaaaaaagaabaaaabaaaaaaegiccaaaaaaaaaaaagaaaaaa
diaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadiaaaaah
hccabaaaaaaaaaaajgahbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaa
aaaaaaaaabeaaaaaaaaaiadpdoaaaaabejfdeheomiaaaaaaahaaaaaaaiaaaaaa
laaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaa
acaaaaaaahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaa
lmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaa
aaaaaaaaadaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaa
agaaaaaaahahaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklkl
epfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl"
}
SubProgram "d3d9 " {
// Stats: 27 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
Vector 2 [_Color]
Float 4 [_Glossiness]
Vector 1 [_LightColor0]
Float 3 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
"ps_2_0
def c5, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_2d s0
dcl_2d s1
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.xyz, r0.x, c1
mul_pp r0.w, r0.w, r0.w
mul_pp r1.x, r0.w, r0.w
mov r0.w, c5.x
add_pp r1.y, r0.w, -c4.x
texld r1, r1, s0
texld r2, t0, s1
mul_pp r0.w, r1.x, c5.y
mov r1, c0
mad_pp r3.xyz, c2, r2, -r1
mul_pp r2.xyz, r2, c2
mad_pp r1.xyz, c3.x, r3, r1
mul_pp r1.xyz, r0.w, r1
mad_pp r0.w, c3.x, -r1.w, r1.w
mad_pp r1.xyz, r2, r0.w, r1
mul_pp r0.xyz, r0, r1
mov_pp r0.w, c5.x
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 20 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:acabacaa
eefiecedpopabdbmhbhdodljpbbldamnepkhpcaeabaaaaaaomaeaaaaadaaaaaa
cmaaaaaaoeaaaaaabiabaaaaejfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaakeaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaakeaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaakeaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaakeaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcmmadaaaa
eaaaaaaapdaaaaaafjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaa
aaaaaaaafkaaaaadaagabaaaabaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaa
fibiaaaeaahabaaaabaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaad
hcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaa
gcbaaaadpcbabaaaafaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaa
acaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaia
ebaaaaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaa
dkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaaf
ecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaacaaaaaadiaaaaaihcaabaaaaaaaaaaaagaabaaaaaaaaaaaegiccaaa
aaaaaaaaagaaaaaadiaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahbcaabaaaabaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaa
aaaaaaajccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaa
aaaaiadpefaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaaaaaaaaadiaaaaahicaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaa
aaaaiaebefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaa
aagabaaaabaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaa
egacbaaaabaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaa
abaaaaaaegacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaa
acaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaa
acaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaaacaaaaaa
dcaaaaanicaabaaaaaaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaa
aaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaajhcaabaaaabaaaaaa
egacbaaaabaaaaaapgapbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahhccabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaa
abeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 20 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
root12:acabacaa
eefiecedcnoofcneikfogfbddlgdlndololheiijabaaaaaagmahaaaaaeaaaaaa
daaaaaaakmacaaaaiaagaaaadiahaaaaebgpgodjheacaaaaheacaaaaaaacpppp
biacaaaafmaaaaaaaeaacmaaaaaafmaaaaaafmaaacaaceaaaaaafmaaabaaaaaa
aaababaaaaaaacaaabaaaaaaaaaaaaaaaaaaagaaabaaabaaaaaaaaaaaaaaajaa
abaaacaaaaaaaaaaaaaaanaaabaaadaaaaaaaaaaaaacppppfbaaaaafaeaaapka
aaaaiadpaaaaiaebaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaaaplabpaaaaac
aaaaaaiaabaachlabpaaaaacaaaaaaiaacaacplabpaaaaacaaaaaaiaadaacpla
bpaaaaacaaaaaaiaaeaacplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaaja
abaiapkaceaaaaacaaaachiaaeaaoelaaiaaaaadaaaaciiaabaaoelbaaaaoeia
acaaaaadaaaaciiaaaaappiaaaaappiaaeaaaaaeabaachiaaaaaoeiaaaaappib
abaaoelbabaaaaacacaacbiaacaapplaabaaaaacacaacciaadaapplaabaaaaac
acaaceiaaeaapplaaiaaaaadaaaaciiaabaaoeiaacaaoeiaaiaaaaadaaaadbia
aaaaoeiaacaaoeiaafaaaaadaaaachiaaaaaaaiaabaaoekaafaaaaadaaaaciia
aaaappiaaaaappiaafaaaaadabaacbiaaaaappiaaaaappiaabaaaaacabaaamia
adaaoekaacaaaaadabaacciaabaappibaeaaaakaecaaaaadacaaapiaabaaoeia
aaaioekaecaaaaadadaaapiaaaaaoelaabaioekaafaaaaadaaaaciiaacaaaaia
aeaaffkaabaaaaacacaaahiaaaaaoekaaeaaaaaeacaachiaacaaoekaadaaoeia
acaaoeibafaaaaadadaachiaadaaoeiaacaaoekaaeaaaaaeacaachiaabaakkia
acaaoeiaaaaaoekaafaaaaadacaachiaaaaappiaacaaoeiaaeaaaaaeaaaaciia
abaakkiaaaaappkbaaaappkaaeaaaaaeabaachiaadaaoeiaaaaappiaacaaoeia
afaaaaadaaaachiaaaaaoeiaabaaoeiaabaaaaacaaaaciiaaeaaaakaabaaaaac
aaaicpiaaaaaoeiappppaaaafdeieefcmmadaaaaeaaaaaaapdaaaaaafjaaaaae
egiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaa
abaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaad
icbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaa
gfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaabaaaaaahbcaabaaaaaaaaaaa
egbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaafaaaaaa
baaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaaegacbaaaaaaaaaaa
aaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaal
hcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaaaaaaaaaaegbcbaia
ebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaaadaaaaaadgaaaaaf
ccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaaacaaaaaadkbabaaa
afaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaa
bacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaai
hcaabaaaaaaaaaaaagaabaaaaaaaaaaaegiccaaaaaaaaaaaagaaaaaadiaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaa
abaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaaaaaaaaajccaabaaaabaaaaaa
dkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadpefaaaaajpcaabaaa
abaaaaaaegaabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaaaaaaaaadiaaaaah
icaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaebefaaaaajpcaabaaa
abaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaabaaaaaadcaaaaam
hcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaaegiccaia
ebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
egiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaacaaaaaakgikcaaaaaaaaaaa
anaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaahhcaabaaa
acaaaaaapgapbaaaaaaaaaaaegacbaaaacaaaaaadcaaaaanicaabaaaaaaaaaaa
ckiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaa
aaaaaaaaacaaaaaadcaaaaajhcaabaaaabaaaaaaegacbaaaabaaaaaapgapbaaa
aaaaaaaaegacbaaaacaaaaaadiaaaaahhccabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab
ejfdeheolaaaaaaaagaaaaaaaiaaaaaajiaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaakeaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapadaaaa
keaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaakeaaaaaaacaaaaaa
aaaaaaaaadaaaaaaadaaaaaaapaiaaaakeaaaaaaadaaaaaaaaaaaaaaadaaaaaa
aeaaaaaaapaiaaaakeaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapapaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaa
abaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaa
fdfgfpfegbhcghgfheaaklkl"
}
SubProgram "d3d9 " {
// Stats: 34 math, 4 textures
Keywords { "SPOT" "SHADOWS_OFF" }
Vector 2 [_Color]
Float 4 [_Glossiness]
Vector 1 [_LightColor0]
Float 3 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_2_0
def c5, 0.5, 1, 16, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_pp t5
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r0.y, c5.y
add_pp r1.y, r0.y, -c4.x
rcp r0.y, t5.w
mad_pp r2.xy, t5, r0.y, c5.x
dp3 r3.w, t5, t5
mov r3.xy, r3.w
texld r1, r1, s0
texld r4, t0, s1
texld_pp r2, r2, s2
texld_pp r3, r3, s3
mul_pp r4.w, r1.x, c5.z
mov r1, c0
mad_pp r0.yzw, c2.wzyx, r4.wzyx, -r1.wzyx
mul_pp r2.xyz, r4, c2
mad_pp r0.yzw, c3.x, r0, r1.wzyx
mul_pp r0.yzw, r0, r4.w
mad_pp r1.x, c3.x, -r1.w, r1.w
mad_pp r0.yzw, r2.wzyx, r1.x, r0
mul r1.x, r2.w, r3.x
mul_pp r1.xyz, r1.x, c1
mul_pp r1.xyz, r0.x, r1
cmp_pp r1.xyz, -t5.z, c5.w, r1
mul_pp r0.xyz, r0.wzyx, r1
mov r0.w, c5.y
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 28 math, 4 textures
Keywords { "SPOT" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [_LightTextureB0] 2D 3
SetTexture 3 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:aeabaeaa
eefiecedongbcifckmplgcbhkmfcmjecbjckeghnabaaaaaahmagaaaaadaaaaaa
cmaaaaaapmaaaaaadaabaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apapaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefceeafaaaaeaaaaaaafbabaaaa
fjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaa
fibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaa
fibiaaaeaahabaaaacaaaaaaffffaaaafibiaaaeaahabaaaadaaaaaaffffaaaa
gcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaa
adaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaad
pcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaabaaaaaah
bcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaa
egacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaa
aaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaa
adaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaa
acaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaa
egacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
acaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaaaaaaaaj
ccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadp
efaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaadaaaaaaaagabaaa
aaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaeb
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
abaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaabaaaaaa
egacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaacaaaaaa
kgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaa
diaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaadcaaaaan
icaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaa
acaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaaaoaaaaahdcaabaaaabaaaaaa
egbabaaaagaaaaaapgbpbaaaagaaaaaaaaaaaaakdcaabaaaabaaaaaaegaabaaa
abaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaaaaaaaaaaaaefaaaaajpcaabaaa
abaaaaaaegaabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaadbaaaaah
bcaabaaaabaaaaaaabeaaaaaaaaaaaaackbabaaaagaaaaaaabaaaaahbcaabaaa
abaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiadpdiaaaaahbcaabaaaabaaaaaa
dkaabaaaabaaaaaaakaabaaaabaaaaaabaaaaaahccaabaaaabaaaaaaegbcbaaa
agaaaaaaegbcbaaaagaaaaaaefaaaaajpcaabaaaacaaaaaafgafbaaaabaaaaaa
eghobaaaacaaaaaaaagabaaaadaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaa
abaaaaaaakaabaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaagaabaaaabaaaaaa
egiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaa
egacbaaaabaaaaaadiaaaaahhccabaaaaaaaaaaajgahbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 28 math, 4 textures
Keywords { "SPOT" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [_LightTextureB0] 2D 3
SetTexture 3 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
root12:aeabaeaa
eefiecedjdmghlgmdefhbapmpmmbnfabcjlbafmoabaaaaaaliajaaaaaeaaaaaa
daaaaaaagiadaaaaleaiaaaaieajaaaaebgpgodjdaadaaaadaadaaaaaaacpppp
mmacaaaageaaaaaaaeaadeaaaaaageaaaaaageaaaeaaceaaaaaageaaadaaaaaa
aaababaaabacacaaacadadaaaaaaacaaabaaaaaaaaaaaaaaaaaaagaaabaaabaa
aaaaaaaaaaaaajaaabaaacaaaaaaaaaaaaaaanaaabaaadaaaaaaaaaaaaacpppp
fbaaaaafaeaaapkaaaaaaadpaaaaiadpaaaaiaebaaaaaaaabpaaaaacaaaaaaia
aaaaaplabpaaaaacaaaaaaiaabaachlabpaaaaacaaaaaaiaacaacplabpaaaaac
aaaaaaiaadaacplabpaaaaacaaaaaaiaaeaacplabpaaaaacaaaaaaiaafaacpla
bpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaajaabaiapkabpaaaaacaaaaaaja
acaiapkabpaaaaacaaaaaajaadaiapkaceaaaaacaaaachiaaeaaoelaaiaaaaad
aaaaciiaabaaoelbaaaaoeiaacaaaaadaaaaciiaaaaappiaaaaappiaaeaaaaae
abaachiaaaaaoeiaaaaappibabaaoelbabaaaaacacaacbiaacaapplaabaaaaac
acaacciaadaapplaabaaaaacacaaceiaaeaapplaaiaaaaadaaaaciiaabaaoeia
acaaoeiaaiaaaaadaaaadbiaaaaaoeiaacaaoeiaafaaaaadaaaacciaaaaappia
aaaappiaafaaaaadabaacbiaaaaaffiaaaaaffiaabaaaaacaaaaaciaaeaaffka
acaaaaadabaacciaaaaaffiaadaappkbagaaaaacaaaaaciaafaapplaaeaaaaae
acaacdiaafaaoelaaaaaffiaaeaaaakaaiaaaaadadaaaiiaafaaoelaafaaoela
abaaaaacadaaadiaadaappiaecaaaaadabaaapiaabaaoeiaaaaioekaecaaaaad
aeaaapiaaaaaoelaabaioekaecaaaaadacaacpiaacaaoeiaacaioekaecaaaaad
adaacpiaadaaoeiaadaioekaafaaaaadaeaaciiaabaaaaiaaeaakkkaabaaaaac
abaaapiaaaaaoekaaeaaaaaeaaaacoiaacaablkaaeaabliaabaablibafaaaaad
acaachiaaeaaoeiaacaaoekaaeaaaaaeaaaacoiaadaakkkaaaaaoeiaabaablia
afaaaaadaaaacoiaaaaaoeiaaeaappiaaeaaaaaeabaacbiaadaakkkaabaappib
abaappiaaeaaaaaeaaaacoiaacaabliaabaaaaiaaaaaoeiaafaaaaadabaaabia
acaappiaadaaaaiaafaaaaadabaachiaabaaaaiaabaaoekaafaaaaadabaachia
aaaaaaiaabaaoeiafiaaaaaeabaachiaafaakklbaeaappkaabaaoeiaafaaaaad
aaaachiaaaaabliaabaaoeiaabaaaaacaaaaaiiaaeaaffkaabaaaaacaaaicpia
aaaaoeiappppaaaafdeieefceeafaaaaeaaaaaaafbabaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafibiaaaeaahabaaa
acaaaaaaffffaaaafibiaaaeaahabaaaadaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaad
icbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaadpcbabaaaagaaaaaa
gfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaabaaaaaahbcaabaaaaaaaaaaa
egbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaafaaaaaa
baaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaaegacbaaaaaaaaaaa
aaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaal
hcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaaaaaaaaaaegbcbaia
ebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaaadaaaaaadgaaaaaf
ccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaaacaaaaaadkbabaaa
afaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaa
bacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
ccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaa
abaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaaaaaaaajccaabaaaabaaaaaa
dkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadpefaaaaajpcaabaaa
abaaaaaaegaabaaaabaaaaaaeghobaaaadaaaaaaaagabaaaaaaaaaaadiaaaaah
ccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaebefaaaaajpcaabaaa
abaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaabaaaaaadcaaaaam
hcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaaegiccaia
ebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
egiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaacaaaaaakgikcaaaaaaaaaaa
anaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaahocaabaaa
aaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaadcaaaaanicaabaaaabaaaaaa
ckiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaa
aaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaapgapbaaa
abaaaaaafgaobaaaaaaaaaaaaoaaaaahdcaabaaaabaaaaaaegbabaaaagaaaaaa
pgbpbaaaagaaaaaaaaaaaaakdcaabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaa
aaaaaadpaaaaaadpaaaaaaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegaabaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaadbaaaaahbcaabaaaabaaaaaa
abeaaaaaaaaaaaaackbabaaaagaaaaaaabaaaaahbcaabaaaabaaaaaaakaabaaa
abaaaaaaabeaaaaaaaaaiadpdiaaaaahbcaabaaaabaaaaaadkaabaaaabaaaaaa
akaabaaaabaaaaaabaaaaaahccaabaaaabaaaaaaegbcbaaaagaaaaaaegbcbaaa
agaaaaaaefaaaaajpcaabaaaacaaaaaafgafbaaaabaaaaaaeghobaaaacaaaaaa
aagabaaaadaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaaakaabaaa
acaaaaaadiaaaaaihcaabaaaabaaaaaaagaabaaaabaaaaaaegiccaaaaaaaaaaa
agaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
diaaaaahhccabaaaaaaaaaaajgahbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaabejfdeheomiaaaaaaahaaaaaa
aiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaiaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaa
adaaaaaaagaaaaaaapapaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfcee
aaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl"
}
SubProgram "d3d9 " {
// Stats: 30 math, 4 textures
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
Vector 2 [_Color]
Float 4 [_Glossiness]
Vector 1 [_LightColor0]
Float 3 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_LightTexture0] CUBE 2
SetTexture 3 [_LightTextureB0] 2D 3
"ps_2_0
def c5, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl_2d s0
dcl_2d s1
dcl_cube s2
dcl_2d s3
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r2.x, c5.x
add_pp r1.y, r2.x, -c4.x
dp3 r2.xy, t5, t5
texld r1, r1, s0
texld r3, t0, s1
texld r2, r2, s3
texld r4, t5, s2
mul_pp r3.w, r1.x, c5.y
mov r1, c0
mad_pp r0.yzw, c2.wzyx, r3.wzyx, -r1.wzyx
mul_pp r2.yzw, r3.wzyx, c2.wzyx
mad_pp r0.yzw, c3.x, r0, r1.wzyx
mul_pp r0.yzw, r0, r3.w
mad_pp r1.x, c3.x, -r1.w, r1.w
mad_pp r0.yzw, r2, r1.x, r0
mul_pp r1.x, r2.x, r4.w
mul_pp r1.xyz, r1.x, c1
mul_pp r1.xyz, r0.x, r1
mul_pp r0.xyz, r0.wzyx, r1
mov_pp r0.w, c5.x
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 23 math, 4 textures
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTextureB0] 2D 3
SetTexture 2 [_LightTexture0] CUBE 2
SetTexture 3 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:aeabaeaa
eefiecedlljenemkbcmhjajicdajbcpkchmfojhmabaaaaaaoeafaaaaadaaaaaa
cmaaaaaapmaaaaaadaabaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
ahahaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefckmaeaaaaeaaaaaaaclabaaaa
fjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaa
fibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaa
fidaaaaeaahabaaaacaaaaaaffffaaaafibiaaaeaahabaaaadaaaaaaffffaaaa
gcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaa
adaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaad
hcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaabaaaaaah
bcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaa
egacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaa
aaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaa
adaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaa
acaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaa
egacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
acaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaaaaaaaaj
ccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadp
efaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaadaaaaaaaagabaaa
aaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaeb
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
abaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaabaaaaaa
egacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaacaaaaaa
kgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaa
diaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaadcaaaaan
icaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaa
acaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaabaaaaaahbcaabaaaabaaaaaa
egbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaajpcaabaaaabaaaaaaagaabaaa
abaaaaaaeghobaaaabaaaaaaaagabaaaadaaaaaaefaaaaajpcaabaaaacaaaaaa
egbcbaaaagaaaaaaeghobaaaacaaaaaaaagabaaaacaaaaaadiaaaaahbcaabaaa
abaaaaaaakaabaaaabaaaaaadkaabaaaacaaaaaadiaaaaaihcaabaaaabaaaaaa
agaabaaaabaaaaaaegiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaaabaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhccabaaaaaaaaaaajgahbaaa
aaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadp
doaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 23 math, 4 textures
Keywords { "POINT_COOKIE" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTextureB0] 2D 3
SetTexture 2 [_LightTexture0] CUBE 2
SetTexture 3 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
root12:aeabaeaa
eefiecedlmcnmhinpolkkagbljmklckfeobipnkaabaaaaaaoaaiaaaaaeaaaaaa
daaaaaaaciadaaaanmahaaaakmaiaaaaebgpgodjpaacaaaapaacaaaaaaacpppp
imacaaaageaaaaaaaeaadeaaaaaageaaaaaageaaaeaaceaaaaaageaaadaaaaaa
aaababaaacacacaaabadadaaaaaaacaaabaaaaaaaaaaaaaaaaaaagaaabaaabaa
aaaaaaaaaaaaajaaabaaacaaaaaaaaaaaaaaanaaabaaadaaaaaaaaaaaaacpppp
fbaaaaafaeaaapkaaaaaiadpaaaaiaebaaaaaaaaaaaaaaaabpaaaaacaaaaaaia
aaaaaplabpaaaaacaaaaaaiaabaachlabpaaaaacaaaaaaiaacaacplabpaaaaac
aaaaaaiaadaacplabpaaaaacaaaaaaiaaeaacplabpaaaaacaaaaaaiaafaaahla
bpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaajaabaiapkabpaaaaacaaaaaaji
acaiapkabpaaaaacaaaaaajaadaiapkaceaaaaacaaaachiaaeaaoelaaiaaaaad
aaaaciiaabaaoelbaaaaoeiaacaaaaadaaaaciiaaaaappiaaaaappiaaeaaaaae
abaachiaaaaaoeiaaaaappibabaaoelbabaaaaacacaacbiaacaapplaabaaaaac
acaacciaadaapplaabaaaaacacaaceiaaeaapplaaiaaaaadaaaaciiaabaaoeia
acaaoeiaaiaaaaadaaaadbiaaaaaoeiaacaaoeiaafaaaaadaaaacciaaaaappia
aaaappiaafaaaaadabaacbiaaaaaffiaaaaaffiaabaaaaacaaaaamiaadaaoeka
acaaaaadabaacciaaaaappibaeaaaakaaiaaaaadacaaadiaafaaoelaafaaoela
ecaaaaadabaaapiaabaaoeiaaaaioekaecaaaaadadaaapiaaaaaoelaabaioeka
ecaaaaadacaaapiaacaaoeiaadaioekaecaaaaadaeaaapiaafaaoelaacaioeka
afaaaaadadaaciiaabaaaaiaaeaaffkaabaaaaacabaaahiaaaaaoekaaeaaaaae
abaachiaacaaoekaadaaoeiaabaaoeibafaaaaadacaacoiaadaabliaacaablka
aeaaaaaeabaachiaaaaakkiaabaaoeiaaaaaoekaafaaaaadabaachiaabaaoeia
adaappiaaeaaaaaeabaaciiaaaaakkiaaaaappkbaaaappkaaeaaaaaeaaaacoia
acaaoeiaabaappiaabaabliaafaaaaadabaacbiaacaaaaiaaeaappiaafaaaaad
abaachiaabaaaaiaabaaoekaafaaaaadabaachiaaaaaaaiaabaaoeiaafaaaaad
aaaachiaaaaabliaabaaoeiaabaaaaacaaaaciiaaeaaaakaabaaaaacaaaicpia
aaaaoeiappppaaaafdeieefckmaeaaaaeaaaaaaaclabaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafidaaaaeaahabaaa
acaaaaaaffffaaaafibiaaaeaahabaaaadaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaad
icbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaa
gfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaabaaaaaahbcaabaaaaaaaaaaa
egbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaafaaaaaa
baaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaaegacbaaaaaaaaaaa
aaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaal
hcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaaaaaaaaaaegbcbaia
ebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaaadaaaaaadgaaaaaf
ccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaaacaaaaaadkbabaaa
afaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaa
bacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaah
ccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaa
abaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaaaaaaaajccaabaaaabaaaaaa
dkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadpefaaaaajpcaabaaa
abaaaaaaegaabaaaabaaaaaaeghobaaaadaaaaaaaagabaaaaaaaaaaadiaaaaah
ccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaebefaaaaajpcaabaaa
abaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaabaaaaaadcaaaaam
hcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaaegiccaia
ebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaa
egiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaacaaaaaakgikcaaaaaaaaaaa
anaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaahocaabaaa
aaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaadcaaaaanicaabaaaabaaaaaa
ckiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaa
aaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaapgapbaaa
abaaaaaafgaobaaaaaaaaaaabaaaaaahbcaabaaaabaaaaaaegbcbaaaagaaaaaa
egbcbaaaagaaaaaaefaaaaajpcaabaaaabaaaaaaagaabaaaabaaaaaaeghobaaa
abaaaaaaaagabaaaadaaaaaaefaaaaajpcaabaaaacaaaaaaegbcbaaaagaaaaaa
eghobaaaacaaaaaaaagabaaaacaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaa
abaaaaaadkaabaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaagaabaaaabaaaaaa
egiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaa
egacbaaaabaaaaaadiaaaaahhccabaaaaaaaaaaajgahbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaabejfdeheo
miaaaaaaahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaalmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapadaaaalmaaaaaa
abaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaalmaaaaaaacaaaaaaaaaaaaaa
adaaaaaaadaaaaaaapaiaaaalmaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaa
apaiaaaalmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapapaaaalmaaaaaa
afaaaaaaaaaaaaaaadaaaaaaagaaaaaaahahaaaafdfgfpfaepfdejfeejepeoaa
feeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl
"
}
SubProgram "d3d9 " {
// Stats: 28 math, 3 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
Vector 2 [_Color]
Float 4 [_Glossiness]
Vector 1 [_LightColor0]
Float 3 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_LightTexture0] 2D 2
"ps_2_0
def c5, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xy
dcl_2d s0
dcl_2d s1
dcl_2d s2
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r2.x, c5.x
add_pp r1.y, r2.x, -c4.x
texld r1, r1, s0
texld r2, t0, s1
texld_pp r3, t5, s2
mul_pp r2.w, r1.x, c5.y
mov r1, c0
mad_pp r0.yzw, c2.wzyx, r2.wzyx, -r1.wzyx
mul_pp r2.xyz, r2, c2
mad_pp r0.yzw, c3.x, r0, r1.wzyx
mul_pp r0.yzw, r0, r2.w
mad_pp r2.w, c3.x, -r1.w, r1.w
mad_pp r0.yzw, r2.wzyx, r2.w, r0
mul_pp r1.xyz, r3.w, c1
mul_pp r1.xyz, r0.x, r1
mul_pp r0.xyz, r0.wzyx, r1
mov_pp r0.w, c5.x
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 21 math, 3 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:adabadaa
eefiecedenldjoihcgjnfdmbflpmgefekkjpndghabaaaaaagmafaaaaadaaaaaa
cmaaaaaapmaaaaaadaabaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
adadaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcdeaeaaaaeaaaaaaaanabaaaa
fjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafibiaaaeaahabaaaaaaaaaaa
ffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafibiaaaeaahabaaaacaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaad
icbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaa
gcbaaaaddcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaa
acaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaia
ebaaaaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaa
dkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaaf
ecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaacaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaa
aaaaaaajccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaa
aaaaiadpefaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaacaaaaaa
aagabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaa
aaaaiaebefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaa
aagabaaaabaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaa
egacbaaaabaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaa
abaaaaaaegacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaa
acaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaa
acaaaaaadiaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaa
dcaaaaanicaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaa
aaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaa
agajbaaaabaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaaefaaaaajpcaabaaa
abaaaaaaegbabaaaagaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaadiaaaaai
hcaabaaaabaaaaaapgapbaaaabaaaaaaegiccaaaaaaaaaaaagaaaaaadiaaaaah
hcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhccabaaa
aaaaaaaajgahbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaa
abeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 21 math, 3 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_OFF" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0_level_9_1
root12:adabadaa
eefiecedlgjnelllcegggincffcodjijjbchpkbaabaaaaaaciaiaaaaaeaaaaaa
daaaaaaaoiacaaaaceahaaaapeahaaaaebgpgodjlaacaaaalaacaaaaaaacpppp
faacaaaagaaaaaaaaeaadaaaaaaagaaaaaaagaaaadaaceaaaaaagaaaacaaaaaa
aaababaaabacacaaaaaaacaaabaaaaaaaaaaaaaaaaaaagaaabaaabaaaaaaaaaa
aaaaajaaabaaacaaaaaaaaaaaaaaanaaabaaadaaaaaaaaaaaaacppppfbaaaaaf
aeaaapkaaaaaiadpaaaaiaebaaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaaapla
bpaaaaacaaaaaaiaabaachlabpaaaaacaaaaaaiaacaacplabpaaaaacaaaaaaia
adaacplabpaaaaacaaaaaaiaaeaacplabpaaaaacaaaaaaiaafaaadlabpaaaaac
aaaaaajaaaaiapkabpaaaaacaaaaaajaabaiapkabpaaaaacaaaaaajaacaiapka
ceaaaaacaaaachiaaeaaoelaaiaaaaadaaaaciiaabaaoelbaaaaoeiaacaaaaad
aaaaciiaaaaappiaaaaappiaaeaaaaaeabaachiaaaaaoeiaaaaappibabaaoelb
abaaaaacacaacbiaacaapplaabaaaaacacaacciaadaapplaabaaaaacacaaceia
aeaapplaaiaaaaadaaaaciiaabaaoeiaacaaoeiaaiaaaaadaaaadbiaaaaaoeia
acaaoeiaafaaaaadaaaacciaaaaappiaaaaappiaafaaaaadabaacbiaaaaaffia
aaaaffiaabaaaaacaaaaamiaadaaoekaacaaaaadabaacciaaaaappibaeaaaaka
ecaaaaadabaaapiaabaaoeiaaaaioekaecaaaaadacaaapiaaaaaoelaabaioeka
ecaaaaadadaacpiaafaaoelaacaioekaafaaaaadacaaciiaabaaaaiaaeaaffka
abaaaaacabaaahiaaaaaoekaaeaaaaaeabaachiaacaaoekaacaaoeiaabaaoeib
afaaaaadacaachiaacaaoeiaacaaoekaaeaaaaaeabaachiaaaaakkiaabaaoeia
aaaaoekaafaaaaadabaachiaabaaoeiaacaappiaaeaaaaaeabaaciiaaaaakkia
aaaappkbaaaappkaaeaaaaaeaaaacoiaacaabliaabaappiaabaabliaafaaaaad
abaachiaadaappiaabaaoekaafaaaaadabaachiaaaaaaaiaabaaoeiaafaaaaad
aaaachiaaaaabliaabaaoeiaabaaaaacaaaaciiaaeaaaakaabaaaaacaaaicpia
aaaaoeiappppaaaafdeieefcdeaeaaaaeaaaaaaaanabaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaae
aahabaaaabaaaaaaffffaaaafibiaaaeaahabaaaacaaaaaaffffaaaagcbaaaad
dcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaa
gcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaaddcbabaaa
agaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaa
afaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaaegacbaaa
aaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaa
dcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaaaaaaaaaa
egbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaaadaaaaaa
dgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaaacaaaaaa
dkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
acaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaa
diaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
bcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaaaaaaaajccaabaaa
abaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadpefaaaaaj
pcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaacaaaaaaaagabaaaaaaaaaaa
diaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaebefaaaaaj
pcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaabaaaaaa
dcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaa
egiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaacaaaaaakgikcaaa
aaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaah
ocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaadcaaaaanicaabaaa
abaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaa
dkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaa
pgapbaaaabaaaaaafgaobaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegbabaaa
agaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaadiaaaaaihcaabaaaabaaaaaa
pgapbaaaabaaaaaaegiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaaabaaaaaa
agaabaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhccabaaaaaaaaaaajgahbaaa
aaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadp
doaaaaabejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaaaaaaaaaaabaaaaaa
adaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaa
apadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaalmaaaaaa
acaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaaadaaaaaaaaaaaaaa
adaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaaadaaaaaaafaaaaaa
apapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaadadaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklkl"
}
SubProgram "d3d9 " {
// Stats: 37 math, 5 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
Vector 3 [_Color]
Float 5 [_Glossiness]
Vector 2 [_LightColor0]
Vector 0 [_LightShadowData]
Float 4 [_Metallic]
Vector 1 [unity_ColorSpaceDielectricSpec]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_ShadowMapTexture] 2D 2
SetTexture 3 [_LightTexture0] 2D 3
SetTexture 4 [_LightTextureB0] 2D 4
"ps_2_0
def c6, 0.5, 0, 1, 16
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_pp t5
dcl t6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
dcl_2d s4
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r0.z, c6.z
add_pp r1.y, r0.z, -c5.x
rcp r0.y, t5.w
mad_pp r2.xy, t5, r0.y, c6.x
dp3_pp r3.w, t5, t5
mov_pp r3.xy, r3.w
texld r1, r1, s0
texld r4, t0, s1
texld_pp r2, r2, s3
texld_pp r3, r3, s4
texldp_pp r5, t6, s2
mul_pp r4.w, r1.x, c6.w
mov r1, c1
mad_pp r2.xyz, c3, r4, -r1
mul_pp r3.yzw, r4.wzyx, c3.wzyx
mad_pp r1.xyz, c4.x, r2, r1
mul_pp r1.xyz, r1, r4.w
mad_pp r1.w, c4.x, -r1.w, r1.w
mad_pp r1.xyz, r3.wzyx, r1.w, r1
mul r1.w, r2.w, r3.x
cmp r1.w, -t5.z, c6.y, r1.w
lrp_pp r2.x, r5.x, r0.z, c0.x
mul_pp r1.w, r1.w, r2.x
mul_pp r0.yzw, r1.w, c2.wzyx
mul_pp r0.xyz, r0.x, r0.wzyx
mul_pp r0.xyz, r0, r1
mov r0.w, c6.z
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 32 math, 4 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 3
SetTexture 2 [_LightTextureB0] 2D 4
SetTexture 3 [unity_NHxRoughness] 2D 0
SetTexture 4 [_ShadowMapTexture] 2D 2
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityShadows" 1
"ps_4_0
root12:afacafaa
eefiecedakdldahielcmfenddpjghdpdfiofckfjabaaaaaahmahaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apapaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaapapaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefccmagaaaaeaaaaaaailabaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaabjaaaaaafkaaaaadaagabaaa
aaaaaaaafkaaaaadaagabaaaabaaaaaafkaiaaadaagabaaaacaaaaaafkaaaaad
aagabaaaadaaaaaafkaaaaadaagabaaaaeaaaaaafibiaaaeaahabaaaaaaaaaaa
ffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafibiaaaeaahabaaaacaaaaaa
ffffaaaafibiaaaeaahabaaaadaaaaaaffffaaaafibiaaaeaahabaaaaeaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaad
icbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaa
gcbaaaadpcbabaaaagaaaaaagcbaaaadpcbabaaaahaaaaaagfaaaaadpccabaaa
aaaaaaaagiaaaaacadaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaa
egbcbaaaafaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaaiicaabaaa
aaaaaaaaegbcbaiaebaaaaaaacaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaa
aaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaa
egacbaaaaaaaaaaapgapbaiaebaaaaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaa
dgaaaaafbcaabaaaacaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaa
dkbabaaaaeaaaaaadgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaah
icaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabacaaaahbcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahccaabaaaaaaaaaaa
dkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaabaaaaaabkaabaaa
aaaaaaaabkaabaaaaaaaaaaaaaaaaaajccaabaaaabaaaaaadkiacaiaebaaaaaa
aaaaaaaaanaaaaaaabeaaaaaaaaaiadpefaaaaajpcaabaaaabaaaaaaegaabaaa
abaaaaaaeghobaaaadaaaaaaaagabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaa
akaabaaaabaaaaaaabeaaaaaaaaaiaebefaaaaajpcaabaaaabaaaaaaegbabaaa
abaaaaaaeghobaaaaaaaaaaaaagabaaaabaaaaaadcaaaaamhcaabaaaacaaaaaa
egiccaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaaegiccaiaebaaaaaaaaaaaaaa
acaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaaaaaaaaaa
ajaaaaaadcaaaaalhcaabaaaacaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaa
acaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaahocaabaaaaaaaaaaafgafbaaa
aaaaaaaaagajbaaaacaaaaaadcaaaaanicaabaaaabaaaaaackiacaiaebaaaaaa
aaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaa
dcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaapgapbaaaabaaaaaafgaobaaa
aaaaaaaaaoaaaaahdcaabaaaabaaaaaaegbabaaaagaaaaaapgbpbaaaagaaaaaa
aaaaaaakdcaabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaaaadpaaaaaadp
aaaaaaaaaaaaaaaaefaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaa
abaaaaaaaagabaaaadaaaaaadbaaaaahbcaabaaaabaaaaaaabeaaaaaaaaaaaaa
ckbabaaaagaaaaaaabaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaaabeaaaaa
aaaaiadpdiaaaaahbcaabaaaabaaaaaadkaabaaaabaaaaaaakaabaaaabaaaaaa
baaaaaahccaabaaaabaaaaaaegbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaaj
pcaabaaaacaaaaaafgafbaaaabaaaaaaeghobaaaacaaaaaaaagabaaaaeaaaaaa
diaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaaakaabaaaacaaaaaaaoaaaaah
ocaabaaaabaaaaaaagbjbaaaahaaaaaapgbpbaaaahaaaaaaehaaaaalccaabaaa
abaaaaaajgafbaaaabaaaaaaaghabaaaaeaaaaaaaagabaaaacaaaaaadkaabaaa
abaaaaaaaaaaaaajecaabaaaabaaaaaaakiacaiaebaaaaaaabaaaaaabiaaaaaa
abeaaaaaaaaaiadpdcaaaaakccaabaaaabaaaaaabkaabaaaabaaaaaackaabaaa
abaaaaaaakiacaaaabaaaaaabiaaaaaadiaaaaahbcaabaaaabaaaaaabkaabaaa
abaaaaaaakaabaaaabaaaaaadiaaaaaihcaabaaaabaaaaaaagaabaaaabaaaaaa
egiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaa
egacbaaaabaaaaaadiaaaaahhccabaaaaaaaaaaajgahbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 32 math, 4 textures
Keywords { "SPOT" "SHADOWS_DEPTH" "SHADOWS_NATIVE" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [_LightTextureB0] 2D 3
SetTexture 3 [unity_NHxRoughness] 2D 0
SetTexture 15 [_ShadowMapTexture] 2D 15
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityShadows" 1
"ps_4_0_level_9_1
root12:baacbaaa
eefieceddkjnbmhcgncancepebajkmdgjdppollgabaaaaaaeealaaaaafaaaaaa
deaaaaaaoeadaaaabiakaaaaciakaaaabaalaaaaebgpgodjkiadaaaakiadaaaa
aaacppppdeadaaaaheaaaaaaafaadiaaaaaaheaaaaaaheaaafaaceaaaaaaheaa
apapaaaaadaaabaaaaabacaaabacadaaacadaeaaaaaaacaaabaaaaaaaaaaaaaa
aaaaagaaabaaabaaaaaaaaaaaaaaajaaabaaacaaaaaaaaaaaaaaanaaabaaadaa
aaaaaaaaabaabiaaabaaaeaaaaaaaaaaaaacppppfbaaaaafafaaapkaaaaaaadp
aaaaiadpaaaaiaebaaaaaaaabpaaaaacaaaaaaiaaaaaaplabpaaaaacaaaaaaia
abaachlabpaaaaacaaaaaaiaacaacplabpaaaaacaaaaaaiaadaacplabpaaaaac
aaaaaaiaaeaacplabpaaaaacaaaaaaiaafaacplabpaaaaacaaaaaaiaagaaapla
bpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaajaabaiapkabpaaaaacaaaaaaja
acaiapkabpaaaaacaaaaaajaadaiapkabpaaaaacaaaaaajaaeaiapkaceaaaaac
aaaachiaaeaaoelaaiaaaaadaaaaciiaabaaoelbaaaaoeiaacaaaaadaaaaciia
aaaappiaaaaappiaaeaaaaaeabaachiaaaaaoeiaaaaappibabaaoelbabaaaaac
acaacbiaacaapplaabaaaaacacaacciaadaapplaabaaaaacacaaceiaaeaappla
aiaaaaadaaaaciiaabaaoeiaacaaoeiaaiaaaaadaaaadbiaaaaaoeiaacaaoeia
afaaaaadaaaacciaaaaappiaaaaappiaafaaaaadabaacbiaaaaaffiaaaaaffia
abaaaaacaaaaaciaafaaffkaacaaaaadabaacciaaaaaffiaadaappkbagaaaaac
aaaaaeiaafaapplaaeaaaaaeacaacdiaafaaoelaaaaakkiaafaaaakaaiaaaaad
adaaciiaafaaoelaafaaoelaabaaaaacadaacdiaadaappiaagaaaaacaaaaaeia
agaapplaafaaaaadaeaaahiaaaaakkiaagaaoelaecaaaaadabaaapiaabaaoeia
abaioekaecaaaaadafaaapiaaaaaoelaacaioekaecaaaaadacaacpiaacaaoeia
adaioekaecaaaaadadaacpiaadaaoeiaaeaioekaecaaaaadaeaacpiaaeaaoeia
aaaioekaafaaaaadafaaciiaabaaaaiaafaakkkaabaaaaacabaaapiaaaaaoeka
aeaaaaaeacaachiaacaaoekaafaaoeiaabaaoeibafaaaaadadaacoiaafaablia
acaablkaaeaaaaaeabaachiaadaakkkaacaaoeiaabaaoeiaafaaaaadabaachia
abaaoeiaafaappiaaeaaaaaeabaaciiaadaakkkaabaappibabaappiaaeaaaaae
abaachiaadaabliaabaappiaabaaoeiaafaaaaadabaaaiiaacaappiaadaaaaia
bcaaaaaeacaacbiaaeaaaaiaaaaaffiaaeaaaakaafaaaaadabaaaiiaabaappia
acaaaaiaafaaaaadaaaacoiaabaappiaabaablkaafaaaaadaaaachiaaaaaaaia
aaaabliafiaaaaaeaaaachiaafaakklbafaappkaaaaaoeiaafaaaaadaaaachia
aaaaoeiaabaaoeiaabaaaaacaaaaaiiaafaaffkaabaaaaacaaaicpiaaaaaoeia
ppppaaaafdeieefccmagaaaaeaaaaaaailabaaaafjaaaaaeegiocaaaaaaaaaaa
aoaaaaaafjaaaaaeegiocaaaabaaaaaabjaaaaaafkaaaaadaagabaaaaaaaaaaa
fkaaaaadaagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaa
adaaaaaafkaiaaadaagabaaaapaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaa
fibiaaaeaahabaaaabaaaaaaffffaaaafibiaaaeaahabaaaacaaaaaaffffaaaa
fibiaaaeaahabaaaadaaaaaaffffaaaafibiaaaeaahabaaaapaaaaaaffffaaaa
gcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaa
adaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaad
pcbabaaaagaaaaaagcbaaaadpcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaa
giaaaaacadaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaa
afaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaa
aaaaaaaaagaabaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaa
egbcbaiaebaaaaaaacaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaa
dkaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaa
aaaaaaaapgapbaiaebaaaaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaaf
bcaabaaaacaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaa
aeaaaaaadgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaa
aaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaa
bkaabaaaaaaaaaaaaaaaaaajccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaa
anaaaaaaabeaaaaaaaaaiadpefaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaa
eghobaaaadaaaaaaaagabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaa
abaaaaaaabeaaaaaaaaaiaebefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaa
eghobaaaaaaaaaaaaagabaaaabaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaa
aaaaaaaaajaaaaaaegacbaaaabaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaa
diaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaa
dcaaaaalhcaabaaaacaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaa
egiccaaaaaaaaaaaacaaaaaadiaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaa
agajbaaaacaaaaaadcaaaaanicaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaa
anaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaaj
ocaabaaaaaaaaaaaagajbaaaabaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaa
aoaaaaahdcaabaaaabaaaaaaegbabaaaagaaaaaapgbpbaaaagaaaaaaaaaaaaak
dcaabaaaabaaaaaaegaabaaaabaaaaaaaceaaaaaaaaaaadpaaaaaadpaaaaaaaa
aaaaaaaaefaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaacaaaaaadbaaaaahbcaabaaaabaaaaaaabeaaaaaaaaaaaaackbabaaa
agaaaaaaabaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiadp
diaaaaahbcaabaaaabaaaaaadkaabaaaabaaaaaaakaabaaaabaaaaaabaaaaaah
ccaabaaaabaaaaaaegbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaajpcaabaaa
acaaaaaafgafbaaaabaaaaaaeghobaaaacaaaaaaaagabaaaadaaaaaadiaaaaah
bcaabaaaabaaaaaaakaabaaaabaaaaaaakaabaaaacaaaaaaaoaaaaahocaabaaa
abaaaaaaagbjbaaaahaaaaaapgbpbaaaahaaaaaaehaaaaalccaabaaaabaaaaaa
jgafbaaaabaaaaaaaghabaaaapaaaaaaaagabaaaapaaaaaadkaabaaaabaaaaaa
aaaaaaajecaabaaaabaaaaaaakiacaiaebaaaaaaabaaaaaabiaaaaaaabeaaaaa
aaaaiadpdcaaaaakccaabaaaabaaaaaabkaabaaaabaaaaaackaabaaaabaaaaaa
akiacaaaabaaaaaabiaaaaaadiaaaaahbcaabaaaabaaaaaabkaabaaaabaaaaaa
akaabaaaabaaaaaadiaaaaaihcaabaaaabaaaaaaagaabaaaabaaaaaaegiccaaa
aaaaaaaaagaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaahhccabaaaaaaaaaaajgahbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaabfdegejdaaiaaaaaa
iaaaaaaaaaaaaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaa
neaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaaadaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
afaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaapapaaaa
neaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaapapaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
SubProgram "d3d9 " {
// Stats: 28 math, 3 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
Vector 2 [_Color]
Float 4 [_Glossiness]
Vector 1 [_LightColor0]
Float 3 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_ShadowMapTexture] 2D 2
"ps_2_0
def c5, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl_pp t5
dcl_2d s0
dcl_2d s1
dcl_2d s2
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r2.x, c5.x
add_pp r1.y, r2.x, -c4.x
texld r1, r1, s0
texld r2, t0, s1
texldp_pp r3, t5, s2
mul_pp r2.w, r1.x, c5.y
mov r1, c0
mad_pp r0.yzw, c2.wzyx, r2.wzyx, -r1.wzyx
mul_pp r2.xyz, r2, c2
mad_pp r0.yzw, c3.x, r0, r1.wzyx
mul_pp r0.yzw, r0, r2.w
mad_pp r2.w, c3.x, -r1.w, r1.w
mad_pp r0.yzw, r2.wzyx, r2.w, r0
mul_pp r1.xyz, r3.x, c1
mul_pp r1.xyz, r0.x, r1
mul_pp r0.xyz, r0.wzyx, r1
mov_pp r0.w, c5.x
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 22 math, 3 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_ShadowMapTexture] 2D 2
SetTexture 2 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:adabadaa
eefiecedlmcbdjkdhpbodifijjgohcmckjmomohoabaaaaaaiiafaaaaadaaaaaa
cmaaaaaapmaaaaaadaabaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaalmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
apalaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcfaaeaaaaeaaaaaaabeabaaaa
fjaaaaaeegiocaaaaaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaad
aagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafibiaaaeaahabaaaaaaaaaaa
ffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafibiaaaeaahabaaaacaaaaaa
ffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaad
icbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaa
gcbaaaadlcbabaaaagaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaa
acaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaia
ebaaaaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaa
dkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaaf
ecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaacaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaa
aaaaaaajccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaa
aaaaiadpefaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaacaaaaaa
aagabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaa
aaaaiaebefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaa
aagabaaaabaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaa
egacbaaaabaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaa
abaaaaaaegacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaa
acaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaa
acaaaaaadiaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaa
dcaaaaanicaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaa
aaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaa
agajbaaaabaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaaaoaaaaahdcaabaaa
abaaaaaaegbabaaaagaaaaaapgbpbaaaagaaaaaaefaaaaajpcaabaaaabaaaaaa
egaabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaacaaaaaadiaaaaaihcaabaaa
abaaaaaaagaabaaaabaaaaaaegiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaa
abaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhccabaaaaaaaaaaa
jgahbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaa
aaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 29 math, 4 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
Vector 2 [_Color]
Float 4 [_Glossiness]
Vector 1 [_LightColor0]
Float 3 [_Metallic]
Vector 0 [unity_ColorSpaceDielectricSpec]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_ShadowMapTexture] 2D 2
SetTexture 3 [_LightTexture0] 2D 3
"ps_2_0
def c5, 1, 16, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xy
dcl_pp t6
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r2.x, c5.x
add_pp r1.y, r2.x, -c4.x
texld r1, r1, s0
texld r2, t0, s1
texld r3, t5, s3
texldp_pp r4, t6, s2
mul_pp r2.w, r1.x, c5.y
mov r1, c0
mad_pp r0.yzw, c2.wzyx, r2.wzyx, -r1.wzyx
mul_pp r2.xyz, r2, c2
mad_pp r0.yzw, c3.x, r0, r1.wzyx
mul_pp r0.yzw, r0, r2.w
mad_pp r2.w, c3.x, -r1.w, r1.w
mad_pp r0.yzw, r2.wzyx, r2.w, r0
mul_pp r1.x, r3.w, r4.x
mul_pp r1.xyz, r1.x, c1
mul_pp r1.xyz, r0.x, r1
mul_pp r0.xyz, r0.wzyx, r1
mov_pp r0.w, c5.x
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 23 math, 4 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 3
SetTexture 2 [_ShadowMapTexture] 2D 2
SetTexture 3 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
BindCB  "$Globals" 0
"ps_4_0
root12:aeabaeaa
eefiecedgeilpaaihnlfkloihmhflmfodgbmpielabaaaaaaaiagaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
adadaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaapalaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcliaeaaaaeaaaaaaacoabaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafibiaaaeaahabaaa
acaaaaaaffffaaaafibiaaaeaahabaaaadaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaad
icbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaaddcbabaaaagaaaaaa
gcbaaaadlcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaa
acaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaia
ebaaaaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaa
dkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaaf
ecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaacaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaa
aaaaaaajccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaa
aaaaiadpefaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaadaaaaaa
aagabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaa
aaaaiaebefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaa
aagabaaaabaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaa
egacbaaaabaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaa
abaaaaaaegacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaa
acaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaa
acaaaaaadiaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaa
dcaaaaanicaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaa
aaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaa
agajbaaaabaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaaaoaaaaahdcaabaaa
abaaaaaaegbabaaaahaaaaaapgbpbaaaahaaaaaaefaaaaajpcaabaaaabaaaaaa
egaabaaaabaaaaaaeghobaaaacaaaaaaaagabaaaacaaaaaaefaaaaajpcaabaaa
acaaaaaaegbabaaaagaaaaaaeghobaaaabaaaaaaaagabaaaadaaaaaadiaaaaah
bcaabaaaabaaaaaaakaabaaaabaaaaaadkaabaaaacaaaaaadiaaaaaihcaabaaa
abaaaaaaagaabaaaabaaaaaaegiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaa
abaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhccabaaaaaaaaaaa
jgahbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaa
aaaaiadpdoaaaaab"
}
SubProgram "d3d9 " {
// Stats: 36 math, 4 textures
Keywords { "POINT" "SHADOWS_CUBE" }
Vector 4 [_Color]
Float 6 [_Glossiness]
Vector 3 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Float 5 [_Metallic]
Vector 2 [unity_ColorSpaceDielectricSpec]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_ShadowMapTexture] CUBE 2
SetTexture 3 [_LightTexture0] 2D 3
"ps_2_0
def c7, 0.970000029, 1, 16, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl t6.xyz
dcl_2d s0
dcl_2d s1
dcl_cube s2
dcl_2d s3
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r0.y, c7.y
add_pp r1.y, r0.y, -c6.x
dp3 r2.xy, t5, t5
texld r1, r1, s0
texld r3, t0, s1
texld r4, t6, s2
texld r2, r2, s3
mul_pp r3.w, r1.x, c7.z
mov r1, c2
mad_pp r2.yzw, c4.wzyx, r3.wzyx, -r1.wzyx
mul_pp r3.xyz, r3, c4
mad_pp r1.xyz, c5.x, r2.wzyx, r1
mul_pp r1.xyz, r1, r3.w
mad_pp r1.w, c5.x, -r1.w, r1.w
mad_pp r1.xyz, r3, r1.w, r1
dp3 r1.w, t6, t6
rsq r1.w, r1.w
rcp r1.w, r1.w
mul r1.w, r1.w, c0.w
mad r1.w, r1.w, -c7.x, r4.x
cmp_pp r1.w, r1.w, r0.y, c1.x
mul_pp r1.w, r1.w, r2.x
mul_pp r0.yzw, r1.w, c3.wzyx
mul_pp r0.xyz, r0.x, r0.wzyx
mul_pp r0.xyz, r0, r1
mov_pp r0.w, c7.y
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 28 math, 4 textures
Keywords { "POINT" "SHADOWS_CUBE" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 3
SetTexture 2 [_ShadowMapTexture] CUBE 2
SetTexture 3 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityShadows" 2
"ps_4_0
root12:aeadaeaa
eefiecedjjciegmbodaoihkidpappkhjepnklbglabaaaaaaniagaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
ahahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefciiafaaaaeaaaaaaagcabaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaaacaaaaaafjaaaaaeegiocaaa
acaaaaaabjaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaafibiaaaeaahabaaa
aaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafidaaaaeaahabaaa
acaaaaaaffffaaaafibiaaaeaahabaaaadaaaaaaffffaaaagcbaaaaddcbabaaa
abaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaad
icbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaa
gcbaaaadhcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaa
aaaaaaaaegbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaa
acaaaaaaegacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaa
dkaabaaaaaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaia
ebaaaaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaa
dkbabaaaadaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaaf
ecaabaaaacaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaa
abaaaaaaegacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaacaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaa
aaaaaaajccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaa
aaaaiadpefaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaadaaaaaa
aagabaaaaaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaa
aaaaiaebefaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaa
aagabaaaabaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaa
egacbaaaabaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaa
abaaaaaaegacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaa
acaaaaaakgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaa
acaaaaaadiaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaa
dcaaaaanicaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaa
aaaaaaaaacaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaa
agajbaaaabaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaabaaaaaahbcaabaaa
abaaaaaaegbcbaaaahaaaaaaegbcbaaaahaaaaaaelaaaaafbcaabaaaabaaaaaa
akaabaaaabaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaadkiacaaa
abaaaaaaabaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaaabeaaaaa
omfbhidpefaaaaajpcaabaaaacaaaaaaegbcbaaaahaaaaaaeghobaaaacaaaaaa
aagabaaaacaaaaaadbaaaaahbcaabaaaabaaaaaaakaabaaaacaaaaaaakaabaaa
abaaaaaadhaaaaakbcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaacaaaaaa
biaaaaaaabeaaaaaaaaaiadpbaaaaaahccaabaaaabaaaaaaegbcbaaaagaaaaaa
egbcbaaaagaaaaaaefaaaaajpcaabaaaacaaaaaafgafbaaaabaaaaaaeghobaaa
abaaaaaaaagabaaaadaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaa
akaabaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaagaabaaaabaaaaaaegiccaaa
aaaaaaaaagaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaahhccabaaaaaaaaaaajgahbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 28 math, 4 textures
Keywords { "POINT" "SHADOWS_CUBE" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 3
SetTexture 2 [_ShadowMapTexture] CUBE 2
SetTexture 3 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityShadows" 2
"ps_4_0_level_9_1
root12:aeadaeaa
eefiecedgdooakdkhmknhkpkpjgcdgpbfoiiggppabaaaaaageakaaaaaeaaaaaa
daaaaaaaliadaaaaeiajaaaadaakaaaaebgpgodjiaadaaaaiaadaaaaaaacpppp
aeadaaaahmaaaaaaagaadeaaaaaahmaaaaaahmaaaeaaceaaaaaahmaaadaaaaaa
aaababaaacacacaaabadadaaaaaaacaaabaaaaaaaaaaaaaaaaaaagaaabaaabaa
aaaaaaaaaaaaajaaabaaacaaaaaaaaaaaaaaanaaabaaadaaaaaaaaaaabaaabaa
abaaaeaaaaaaaaaaacaabiaaabaaafaaaaaaaaaaaaacppppfbaaaaafagaaapka
omfbhidpaaaaiadpaaaaiaebaaaaaaaabpaaaaacaaaaaaiaaaaaaplabpaaaaac
aaaaaaiaabaachlabpaaaaacaaaaaaiaacaacplabpaaaaacaaaaaaiaadaacpla
bpaaaaacaaaaaaiaaeaacplabpaaaaacaaaaaaiaafaaahlabpaaaaacaaaaaaia
agaaahlabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaajaabaiapkabpaaaaac
aaaaaajiacaiapkabpaaaaacaaaaaajaadaiapkaceaaaaacaaaachiaaeaaoela
aiaaaaadaaaaciiaabaaoelbaaaaoeiaacaaaaadaaaaciiaaaaappiaaaaappia
aeaaaaaeabaachiaaaaaoeiaaaaappibabaaoelbabaaaaacacaacbiaacaappla
abaaaaacacaacciaadaapplaabaaaaacacaaceiaaeaapplaaiaaaaadaaaaciia
abaaoeiaacaaoeiaaiaaaaadaaaadbiaaaaaoeiaacaaoeiaafaaaaadaaaaccia
aaaappiaaaaappiaafaaaaadabaacbiaaaaaffiaaaaaffiaabaaaaacaaaaamia
adaaoekaacaaaaadabaacciaaaaappibagaaffkaaiaaaaadacaaadiaafaaoela
afaaoelaecaaaaadabaaapiaabaaoeiaaaaioekaecaaaaadadaaapiaaaaaoela
abaioekaecaaaaadaeaaapiaagaaoelaacaioekaecaaaaadacaaapiaacaaoeia
adaioekaafaaaaadadaaciiaabaaaaiaagaakkkaabaaaaacabaaahiaaaaaoeka
aeaaaaaeabaachiaacaaoekaadaaoeiaabaaoeibafaaaaadacaacoiaadaablia
acaablkaaeaaaaaeabaachiaaaaakkiaabaaoeiaaaaaoekaafaaaaadabaachia
abaaoeiaadaappiaaeaaaaaeabaaciiaaaaakkiaaaaappkbaaaappkaaeaaaaae
aaaacoiaacaaoeiaabaappiaabaabliaaiaaaaadabaaabiaagaaoelaagaaoela
ahaaaaacabaaabiaabaaaaiaagaaaaacabaaabiaabaaaaiaafaaaaadabaaabia
abaaaaiaaeaappkaaeaaaaaeabaaabiaabaaaaiaagaaaakbaeaaaaiaabaaaaac
abaaaciaagaaffkafiaaaaaeabaacbiaabaaaaiaabaaffiaafaaaakaafaaaaad
abaacbiaabaaaaiaacaaaaiaafaaaaadabaachiaabaaaaiaabaaoekaafaaaaad
abaachiaaaaaaaiaabaaoeiaafaaaaadaaaachiaaaaabliaabaaoeiaabaaaaac
aaaaaiiaagaaffkaabaaaaacaaaicpiaaaaaoeiappppaaaafdeieefciiafaaaa
eaaaaaaagcabaaaafjaaaaaeegiocaaaaaaaaaaaaoaaaaaafjaaaaaeegiocaaa
abaaaaaaacaaaaaafjaaaaaeegiocaaaacaaaaaabjaaaaaafkaaaaadaagabaaa
aaaaaaaafkaaaaadaagabaaaabaaaaaafkaaaaadaagabaaaacaaaaaafkaaaaad
aagabaaaadaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaa
abaaaaaaffffaaaafidaaaaeaahabaaaacaaaaaaffffaaaafibiaaaeaahabaaa
adaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaa
gcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaa
afaaaaaagcbaaaadhcbabaaaagaaaaaagcbaaaadhcbabaaaahaaaaaagfaaaaad
pccabaaaaaaaaaaagiaaaaacadaaaaaabaaaaaahbcaabaaaaaaaaaaaegbcbaaa
afaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaaaaaaaaaaakaabaaaaaaaaaaa
diaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaaafaaaaaabaaaaaai
icaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaaegacbaaaaaaaaaaaaaaaaaah
icaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadcaaaaalhcaabaaa
abaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaaaaaaaaaaegbcbaiaebaaaaaa
acaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaaadaaaaaadgaaaaafccaabaaa
acaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaaacaaaaaadkbabaaaafaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaaacaaaaaabacaaaah
bcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaadiaaaaahccaabaaa
aaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahbcaabaaaabaaaaaa
bkaabaaaaaaaaaaabkaabaaaaaaaaaaaaaaaaaajccaabaaaabaaaaaadkiacaia
ebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadpefaaaaajpcaabaaaabaaaaaa
egaabaaaabaaaaaaeghobaaaadaaaaaaaagabaaaaaaaaaaadiaaaaahccaabaaa
aaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaebefaaaaajpcaabaaaabaaaaaa
egbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaabaaaaaadcaaaaamhcaabaaa
acaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaaegiccaiaebaaaaaa
aaaaaaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaa
aaaaaaaaajaaaaaadcaaaaalhcaabaaaacaaaaaakgikcaaaaaaaaaaaanaaaaaa
egacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaahocaabaaaaaaaaaaa
fgafbaaaaaaaaaaaagajbaaaacaaaaaadcaaaaanicaabaaaabaaaaaackiacaia
ebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaadkiacaaaaaaaaaaa
acaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaapgapbaaaabaaaaaa
fgaobaaaaaaaaaaabaaaaaahbcaabaaaabaaaaaaegbcbaaaahaaaaaaegbcbaaa
ahaaaaaaelaaaaafbcaabaaaabaaaaaaakaabaaaabaaaaaadiaaaaaibcaabaaa
abaaaaaaakaabaaaabaaaaaadkiacaaaabaaaaaaabaaaaaadiaaaaahbcaabaaa
abaaaaaaakaabaaaabaaaaaaabeaaaaaomfbhidpefaaaaajpcaabaaaacaaaaaa
egbcbaaaahaaaaaaeghobaaaacaaaaaaaagabaaaacaaaaaadbaaaaahbcaabaaa
abaaaaaaakaabaaaacaaaaaaakaabaaaabaaaaaadhaaaaakbcaabaaaabaaaaaa
akaabaaaabaaaaaaakiacaaaacaaaaaabiaaaaaaabeaaaaaaaaaiadpbaaaaaah
ccaabaaaabaaaaaaegbcbaaaagaaaaaaegbcbaaaagaaaaaaefaaaaajpcaabaaa
acaaaaaafgafbaaaabaaaaaaeghobaaaabaaaaaaaagabaaaadaaaaaadiaaaaah
bcaabaaaabaaaaaaakaabaaaabaaaaaaakaabaaaacaaaaaadiaaaaaihcaabaaa
abaaaaaaagaabaaaabaaaaaaegiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaa
abaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaadiaaaaahhccabaaaaaaaaaaa
jgahbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaa
aaaaiadpdoaaaaabejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaa
neaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaaadaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
afaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaahahaaaa
neaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahahaaaafdfgfpfaepfdejfe
ejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaa
caaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgf
heaaklkl"
}
SubProgram "d3d9 " {
// Stats: 37 math, 5 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
Vector 4 [_Color]
Float 6 [_Glossiness]
Vector 3 [_LightColor0]
Vector 0 [_LightPositionRange]
Vector 1 [_LightShadowData]
Float 5 [_Metallic]
Vector 2 [unity_ColorSpaceDielectricSpec]
SetTexture 0 [unity_NHxRoughness] 2D 0
SetTexture 1 [_MainTex] 2D 1
SetTexture 2 [_ShadowMapTexture] CUBE 2
SetTexture 3 [_LightTexture0] CUBE 3
SetTexture 4 [_LightTextureB0] 2D 4
"ps_2_0
def c7, 0.970000029, 1, 16, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t2
dcl_pp t3
dcl_pp t4
dcl t5.xyz
dcl t6.xyz
dcl_2d s0
dcl_2d s1
dcl_cube s2
dcl_cube s3
dcl_2d s4
nrm_pp r0.xyz, t4
dp3_pp r0.w, -t1, r0
add_pp r0.w, r0.w, r0.w
mad_pp r1.xyz, r0, -r0.w, -t1
mov_pp r2.x, t2.w
mov_pp r2.y, t3.w
mov_pp r2.z, t4.w
dp3_pp r0.w, r1, r2
dp3_sat_pp r0.x, r0, r2
mul_pp r0.y, r0.w, r0.w
mul_pp r1.x, r0.y, r0.y
mov r0.y, c7.y
add_pp r1.y, r0.y, -c6.x
dp3 r2.xy, t5, t5
texld r1, r1, s0
texld r3, t0, s1
texld r4, t6, s2
texld r2, r2, s4
texld r5, t5, s3
mul_pp r3.w, r1.x, c7.z
mov r1, c2
mad_pp r2.yzw, c4.wzyx, r3.wzyx, -r1.wzyx
mul_pp r3.xyz, r3, c4
mad_pp r1.xyz, c5.x, r2.wzyx, r1
mul_pp r1.xyz, r1, r3.w
mad_pp r1.w, c5.x, -r1.w, r1.w
mad_pp r1.xyz, r3, r1.w, r1
dp3 r1.w, t6, t6
rsq r1.w, r1.w
rcp r1.w, r1.w
mul r1.w, r1.w, c0.w
mad r1.w, r1.w, -c7.x, r4.x
cmp_pp r1.w, r1.w, r0.y, c1.x
mul r0.y, r2.x, r5.w
mul_pp r1.w, r1.w, r0.y
mul_pp r0.yzw, r1.w, c3.wzyx
mul_pp r0.xyz, r0.x, r0.wzyx
mul_pp r0.xyz, r0, r1
mov_pp r0.w, c7.y
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 29 math, 5 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTextureB0] 2D 4
SetTexture 2 [_LightTexture0] CUBE 3
SetTexture 3 [_ShadowMapTexture] CUBE 2
SetTexture 4 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityShadows" 2
"ps_4_0
root12:afadafaa
eefiecedffnpejgnhehcpcahplenamlglbopjgmmabaaaaaadeahaaaaadaaaaaa
cmaaaaaabeabaaaaeiabaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
ahahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaahahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklklfdeieefcoeafaaaaeaaaaaaahjabaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaaacaaaaaafjaaaaaeegiocaaa
acaaaaaabjaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaafkaaaaadaagabaaa
aeaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaafidaaaaeaahabaaaacaaaaaaffffaaaafidaaaaeaahabaaaadaaaaaa
ffffaaaafibiaaaeaahabaaaaeaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaa
gcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaa
aeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaagcbaaaad
hcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacaeaaaaaabaaaaaah
bcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaa
egacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaa
aaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaa
adaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaa
acaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaa
egacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
acaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaaaaaaaaj
ccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadp
efaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaaeaaaaaaaagabaaa
aaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaeb
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
abaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaabaaaaaa
egacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaacaaaaaa
kgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaa
diaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaadcaaaaan
icaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaa
acaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaabaaaaaahbcaabaaaabaaaaaa
egbcbaaaahaaaaaaegbcbaaaahaaaaaaelaaaaafbcaabaaaabaaaaaaakaabaaa
abaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaadkiacaaaabaaaaaa
abaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaaabeaaaaaomfbhidp
efaaaaajpcaabaaaacaaaaaaegbcbaaaahaaaaaaeghobaaaadaaaaaaaagabaaa
acaaaaaadbaaaaahbcaabaaaabaaaaaaakaabaaaacaaaaaaakaabaaaabaaaaaa
dhaaaaakbcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaacaaaaaabiaaaaaa
abeaaaaaaaaaiadpbaaaaaahccaabaaaabaaaaaaegbcbaaaagaaaaaaegbcbaaa
agaaaaaaefaaaaajpcaabaaaacaaaaaafgafbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaaeaaaaaaefaaaaajpcaabaaaadaaaaaaegbcbaaaagaaaaaaeghobaaa
acaaaaaaaagabaaaadaaaaaadiaaaaahccaabaaaabaaaaaaakaabaaaacaaaaaa
dkaabaaaadaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaabkaabaaa
abaaaaaadiaaaaaihcaabaaaabaaaaaaagaabaaaabaaaaaaegiccaaaaaaaaaaa
agaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
diaaaaahhccabaaaaaaaaaaajgahbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 29 math, 5 textures
Keywords { "POINT_COOKIE" "SHADOWS_CUBE" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTextureB0] 2D 4
SetTexture 2 [_LightTexture0] CUBE 3
SetTexture 3 [_ShadowMapTexture] CUBE 2
SetTexture 4 [unity_NHxRoughness] 2D 0
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityLighting" 1
BindCB  "UnityShadows" 2
"ps_4_0_level_9_1
root12:afadafaa
eefiecedcbmljojjnheknckoillkiifopelcfhofabaaaaaapaakaaaaaeaaaaaa
daaaaaaaoiadaaaaneajaaaalmakaaaaebgpgodjlaadaaaalaadaaaaaaacpppp
daadaaaaiaaaaaaaagaadiaaaaaaiaaaaaaaiaaaafaaceaaaaaaiaaaaeaaaaaa
aaababaaadacacaaacadadaaabaeaeaaaaaaacaaabaaaaaaaaaaaaaaaaaaagaa
abaaabaaaaaaaaaaaaaaajaaabaaacaaaaaaaaaaaaaaanaaabaaadaaaaaaaaaa
abaaabaaabaaaeaaaaaaaaaaacaabiaaabaaafaaaaaaaaaaaaacppppfbaaaaaf
agaaapkaomfbhidpaaaaiadpaaaaiaebaaaaaaaabpaaaaacaaaaaaiaaaaaapla
bpaaaaacaaaaaaiaabaachlabpaaaaacaaaaaaiaacaacplabpaaaaacaaaaaaia
adaacplabpaaaaacaaaaaaiaaeaacplabpaaaaacaaaaaaiaafaaahlabpaaaaac
aaaaaaiaagaaahlabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaajaabaiapka
bpaaaaacaaaaaajiacaiapkabpaaaaacaaaaaajiadaiapkabpaaaaacaaaaaaja
aeaiapkaceaaaaacaaaachiaaeaaoelaaiaaaaadaaaaciiaabaaoelbaaaaoeia
acaaaaadaaaaciiaaaaappiaaaaappiaaeaaaaaeabaachiaaaaaoeiaaaaappib
abaaoelbabaaaaacacaacbiaacaapplaabaaaaacacaacciaadaapplaabaaaaac
acaaceiaaeaapplaaiaaaaadaaaaciiaabaaoeiaacaaoeiaaiaaaaadaaaadbia
aaaaoeiaacaaoeiaafaaaaadaaaacciaaaaappiaaaaappiaafaaaaadabaacbia
aaaaffiaaaaaffiaabaaaaacaaaaamiaadaaoekaacaaaaadabaacciaaaaappib
agaaffkaaiaaaaadacaaadiaafaaoelaafaaoelaecaaaaadabaaapiaabaaoeia
aaaioekaecaaaaadadaaapiaaaaaoelaabaioekaecaaaaadaeaaapiaagaaoela
acaioekaecaaaaadacaaapiaacaaoeiaaeaioekaecaaaaadafaaapiaafaaoela
adaioekaafaaaaadadaaciiaabaaaaiaagaakkkaabaaaaacabaaahiaaaaaoeka
aeaaaaaeabaachiaacaaoekaadaaoeiaabaaoeibafaaaaadacaacoiaadaablia
acaablkaaeaaaaaeabaachiaaaaakkiaabaaoeiaaaaaoekaafaaaaadabaachia
abaaoeiaadaappiaaeaaaaaeabaaciiaaaaakkiaaaaappkbaaaappkaaeaaaaae
aaaacoiaacaaoeiaabaappiaabaabliaaiaaaaadabaaabiaagaaoelaagaaoela
ahaaaaacabaaabiaabaaaaiaagaaaaacabaaabiaabaaaaiaafaaaaadabaaabia
abaaaaiaaeaappkaaeaaaaaeabaaabiaabaaaaiaagaaaakbaeaaaaiaabaaaaac
abaaaciaagaaffkafiaaaaaeabaacbiaabaaaaiaabaaffiaafaaaakaafaaaaad
abaaaciaacaaaaiaafaappiaafaaaaadabaacbiaabaaaaiaabaaffiaafaaaaad
abaachiaabaaaaiaabaaoekaafaaaaadabaachiaaaaaaaiaabaaoeiaafaaaaad
aaaachiaaaaabliaabaaoeiaabaaaaacaaaaaiiaagaaffkaabaaaaacaaaicpia
aaaaoeiappppaaaafdeieefcoeafaaaaeaaaaaaahjabaaaafjaaaaaeegiocaaa
aaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaaacaaaaaafjaaaaaeegiocaaa
acaaaaaabjaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaaaaadaagabaaaacaaaaaafkaaaaadaagabaaaadaaaaaafkaaaaadaagabaaa
aeaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaaeaahabaaaabaaaaaa
ffffaaaafidaaaaeaahabaaaacaaaaaaffffaaaafidaaaaeaahabaaaadaaaaaa
ffffaaaafibiaaaeaahabaaaaeaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaa
gcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaa
aeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaadhcbabaaaagaaaaaagcbaaaad
hcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacaeaaaaaabaaaaaah
bcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaa
egacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaa
aaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaa
adaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaa
acaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaa
egacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
acaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaaaaaaaaj
ccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadp
efaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaaeaaaaaaaagabaaa
aaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaeb
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
abaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaabaaaaaa
egacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaacaaaaaa
kgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaa
diaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaadcaaaaan
icaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaa
acaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaabaaaaaahbcaabaaaabaaaaaa
egbcbaaaahaaaaaaegbcbaaaahaaaaaaelaaaaafbcaabaaaabaaaaaaakaabaaa
abaaaaaadiaaaaaibcaabaaaabaaaaaaakaabaaaabaaaaaadkiacaaaabaaaaaa
abaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaaabeaaaaaomfbhidp
efaaaaajpcaabaaaacaaaaaaegbcbaaaahaaaaaaeghobaaaadaaaaaaaagabaaa
acaaaaaadbaaaaahbcaabaaaabaaaaaaakaabaaaacaaaaaaakaabaaaabaaaaaa
dhaaaaakbcaabaaaabaaaaaaakaabaaaabaaaaaaakiacaaaacaaaaaabiaaaaaa
abeaaaaaaaaaiadpbaaaaaahccaabaaaabaaaaaaegbcbaaaagaaaaaaegbcbaaa
agaaaaaaefaaaaajpcaabaaaacaaaaaafgafbaaaabaaaaaaeghobaaaabaaaaaa
aagabaaaaeaaaaaaefaaaaajpcaabaaaadaaaaaaegbcbaaaagaaaaaaeghobaaa
acaaaaaaaagabaaaadaaaaaadiaaaaahccaabaaaabaaaaaaakaabaaaacaaaaaa
dkaabaaaadaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaaabaaaaaabkaabaaa
abaaaaaadiaaaaaihcaabaaaabaaaaaaagaabaaaabaaaaaaegiccaaaaaaaaaaa
agaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaaabaaaaaa
diaaaaahhccabaaaaaaaaaaajgahbaaaaaaaaaaaegacbaaaabaaaaaadgaaaaaf
iccabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaabejfdeheooaaaaaaaaiaaaaaa
aiaaaaaamiaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaa
adaaaaaaacaaaaaaahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaa
apaiaaaaneaaaaaaadaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaa
aeaaaaaaaaaaaaaaadaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaa
adaaaaaaagaaaaaaahahaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaa
ahahaaaafdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklkl"
}
SubProgram "d3d11_9x " {
// Stats: 23 math, 2 textures
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "SHADOWS_NATIVE" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [unity_NHxRoughness] 2D 0
SetTexture 15 [_ShadowMapTexture] 2D 15
ConstBuffer "$Globals" 256
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityShadows" 1
"ps_4_0_level_9_1
root12:baacbaaa
eefiecedfgbkchmfdegeclocommamnmbkdnecjefabaaaaaammaiaaaaafaaaaaa
deaaaaaabiadaaaaliahaaaamiahaaaajiaiaaaaebgpgodjnmacaaaanmacaaaa
aaacpppphaacaaaagmaaaaaaafaadaaaaaaagmaaaaaagmaaadaaceaaaaaagmaa
apapaaaaabaaabaaaaabacaaaaaaacaaabaaaaaaaaaaaaaaaaaaagaaabaaabaa
aaaaaaaaaaaaajaaabaaacaaaaaaaaaaaaaaanaaabaaadaaaaaaaaaaabaabiaa
abaaaeaaaaaaaaaaaaacppppfbaaaaafafaaapkaaaaaiadpaaaaiaebaaaaaaaa
aaaaaaaabpaaaaacaaaaaaiaaaaaaplabpaaaaacaaaaaaiaabaachlabpaaaaac
aaaaaaiaacaacplabpaaaaacaaaaaaiaadaacplabpaaaaacaaaaaaiaaeaacpla
bpaaaaacaaaaaaiaafaacplabpaaaaacaaaaaajaaaaiapkabpaaaaacaaaaaaja
abaiapkabpaaaaacaaaaaajaacaiapkaceaaaaacaaaachiaaeaaoelaaiaaaaad
aaaaciiaabaaoelbaaaaoeiaacaaaaadaaaaciiaaaaappiaaaaappiaaeaaaaae
abaachiaaaaaoeiaaaaappibabaaoelbabaaaaacacaacbiaacaapplaabaaaaac
acaacciaadaapplaabaaaaacacaaceiaaeaapplaaiaaaaadaaaaciiaabaaoeia
acaaoeiaaiaaaaadaaaadbiaaaaaoeiaacaaoeiaafaaaaadaaaacciaaaaappia
aaaappiaafaaaaadabaacbiaaaaaffiaaaaaffiaabaaaaacaaaaamiaadaaoeka
acaaaaadabaacciaaaaappibafaaaakaecaaaaadabaaapiaabaaoeiaabaioeka
ecaaaaadacaaapiaaaaaoelaacaioekaecaaaaadadaacpiaafaaoelaaaaioeka
afaaaaadacaaciiaabaaaaiaafaaffkaabaaaaacabaaahiaaaaaoekaaeaaaaae
abaachiaacaaoekaacaaoeiaabaaoeibafaaaaadacaachiaacaaoeiaacaaoeka
aeaaaaaeabaachiaaaaakkiaabaaoeiaaaaaoekaafaaaaadabaachiaabaaoeia
acaappiaaeaaaaaeabaaciiaaaaakkiaaaaappkbaaaappkaaeaaaaaeaaaacoia
acaabliaabaappiaabaabliaabaaaaacabaaabiaafaaaakabcaaaaaeacaacbia
adaaaaiaabaaaaiaaeaaaakaafaaaaadabaachiaacaaaaiaabaaoekaafaaaaad
abaachiaaaaaaaiaabaaoeiaafaaaaadaaaachiaaaaabliaabaaoeiaabaaaaac
aaaaciiaafaaaakaabaaaaacaaaicpiaaaaaoeiappppaaaafdeieefcjiaeaaaa
eaaaaaaacgabaaaafjaaaaaeegiocaaaaaaaaaaaaoaaaaaafjaaaaaeegiocaaa
abaaaaaabjaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaa
fkaiaaadaagabaaaapaaaaaafibiaaaeaahabaaaaaaaaaaaffffaaaafibiaaae
aahabaaaabaaaaaaffffaaaafibiaaaeaahabaaaapaaaaaaffffaaaagcbaaaad
dcbabaaaabaaaaaagcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaa
gcbaaaadicbabaaaaeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaadhcbabaaa
agaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaabaaaaaahbcaabaaa
aaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaaaaaaaaaa
akaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaaegbcbaaa
afaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaaegacbaaa
aaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaa
dcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaaaaaaaaaa
egbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaaadaaaaaa
dgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaaacaaaaaa
dkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaaegacbaaa
acaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaa
diaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
bcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaaaaaaaajccaabaaa
abaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadpefaaaaaj
pcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaabaaaaaaaagabaaaaaaaaaaa
diaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaebefaaaaaj
pcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaaabaaaaaa
dcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaaabaaaaaa
egiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaacaaaaaakgikcaaa
aaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaadiaaaaah
ocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaadcaaaaanicaabaaa
abaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaaacaaaaaa
dkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaaabaaaaaa
pgapbaaaabaaaaaafgaobaaaaaaaaaaaehaaaaalbcaabaaaabaaaaaaegbabaaa
agaaaaaaaghabaaaapaaaaaaaagabaaaapaaaaaackbabaaaagaaaaaaaaaaaaaj
ccaabaaaabaaaaaaakiacaiaebaaaaaaabaaaaaabiaaaaaaabeaaaaaaaaaiadp
dcaaaaakbcaabaaaabaaaaaaakaabaaaabaaaaaabkaabaaaabaaaaaaakiacaaa
abaaaaaabiaaaaaadiaaaaaihcaabaaaabaaaaaaagaabaaaabaaaaaaegiccaaa
aaaaaaaaagaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaahhccabaaaaaaaaaaajgahbaaaaaaaaaaaegacbaaaabaaaaaa
dgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaabfdegejdaaiaaaaaa
iaaaaaaaaaaaaaaaejfdeheomiaaaaaaahaaaaaaaiaaaaaalaaaaaaaaaaaaaaa
abaaaaaaadaaaaaaaaaaaaaaapaaaaaalmaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaapadaaaalmaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaaahahaaaa
lmaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaalmaaaaaaadaaaaaa
aaaaaaaaadaaaaaaaeaaaaaaapaiaaaalmaaaaaaaeaaaaaaaaaaaaaaadaaaaaa
afaaaaaaapapaaaalmaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaaapahaaaa
fdfgfpfaepfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaa
abaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaa
fdfgfpfegbhcghgfheaaklkl"
}
SubProgram "d3d11_9x " {
// Stats: 24 math, 3 textures
Keywords { "DIRECTIONAL_COOKIE" "SHADOWS_SCREEN" "SHADOWS_NATIVE" }
SetTexture 0 [_MainTex] 2D 1
SetTexture 1 [_LightTexture0] 2D 2
SetTexture 2 [unity_NHxRoughness] 2D 0
SetTexture 15 [_ShadowMapTexture] 2D 15
ConstBuffer "$Globals" 320
Vector 32 [unity_ColorSpaceDielectricSpec]
Vector 96 [_LightColor0]
Vector 144 [_Color]
Float 216 [_Metallic]
Float 220 [_Glossiness]
ConstBuffer "UnityShadows" 416
Vector 384 [_LightShadowData]
BindCB  "$Globals" 0
BindCB  "UnityShadows" 1
"ps_4_0_level_9_1
root12:baacbaaa
eefiecednhfmpnpgniedmiabjddpkijiifamlmnkabaaaaaaiiajaaaaafaaaaaa
deaaaaaafeadaaaafmaiaaaagmaiaaaafeajaaaaebgpgodjbiadaaaabiadaaaa
aaacppppkiacaaaahaaaaaaaafaadeaaaaaahaaaaaaahaaaaeaaceaaaaaahaaa
apapaaaaacaaabaaaaabacaaabacadaaaaaaacaaabaaaaaaaaaaaaaaaaaaagaa
abaaabaaaaaaaaaaaaaaajaaabaaacaaaaaaaaaaaaaaanaaabaaadaaaaaaaaaa
abaabiaaabaaaeaaaaaaaaaaaaacppppfbaaaaafafaaapkaaaaaiadpaaaaiaeb
aaaaaaaaaaaaaaaabpaaaaacaaaaaaiaaaaaaplabpaaaaacaaaaaaiaabaachla
bpaaaaacaaaaaaiaacaacplabpaaaaacaaaaaaiaadaacplabpaaaaacaaaaaaia
aeaacplabpaaaaacaaaaaaiaafaacdlabpaaaaacaaaaaaiaagaacplabpaaaaac
aaaaaajaaaaiapkabpaaaaacaaaaaajaabaiapkabpaaaaacaaaaaajaacaiapka
bpaaaaacaaaaaajaadaiapkaceaaaaacaaaachiaaeaaoelaaiaaaaadaaaaciia
abaaoelbaaaaoeiaacaaaaadaaaaciiaaaaappiaaaaappiaaeaaaaaeabaachia
aaaaoeiaaaaappibabaaoelbabaaaaacacaacbiaacaapplaabaaaaacacaaccia
adaapplaabaaaaacacaaceiaaeaapplaaiaaaaadaaaaciiaabaaoeiaacaaoeia
aiaaaaadaaaadbiaaaaaoeiaacaaoeiaafaaaaadaaaacciaaaaappiaaaaappia
afaaaaadabaacbiaaaaaffiaaaaaffiaabaaaaacaaaaamiaadaaoekaacaaaaad
abaacciaaaaappibafaaaakaecaaaaadabaaapiaabaaoeiaabaioekaecaaaaad
acaaapiaaaaaoelaacaioekaecaaaaadadaacpiaagaaoelaaaaioekaecaaaaad
aeaaapiaafaaoelaadaioekaafaaaaadacaaciiaabaaaaiaafaaffkaabaaaaac
abaaahiaaaaaoekaaeaaaaaeabaachiaacaaoekaacaaoeiaabaaoeibafaaaaad
acaachiaacaaoeiaacaaoekaaeaaaaaeabaachiaaaaakkiaabaaoeiaaaaaoeka
afaaaaadabaachiaabaaoeiaacaappiaaeaaaaaeabaaciiaaaaakkiaaaaappkb
aaaappkaaeaaaaaeaaaacoiaacaabliaabaappiaabaabliaabaaaaacabaaabia
afaaaakabcaaaaaeacaacbiaadaaaaiaabaaaaiaaeaaaakaafaaaaadabaacbia
acaaaaiaaeaappiaafaaaaadabaachiaabaaaaiaabaaoekaafaaaaadabaachia
aaaaaaiaabaaoeiaafaaaaadaaaachiaaaaabliaabaaoeiaabaaaaacaaaaciia
afaaaakaabaaaaacaaaicpiaaaaaoeiappppaaaafdeieefcaaafaaaaeaaaaaaa
eaabaaaafjaaaaaeegiocaaaaaaaaaaaaoaaaaaafjaaaaaeegiocaaaabaaaaaa
bjaaaaaafkaaaaadaagabaaaaaaaaaaafkaaaaadaagabaaaabaaaaaafkaaaaad
aagabaaaacaaaaaafkaiaaadaagabaaaapaaaaaafibiaaaeaahabaaaaaaaaaaa
ffffaaaafibiaaaeaahabaaaabaaaaaaffffaaaafibiaaaeaahabaaaacaaaaaa
ffffaaaafibiaaaeaahabaaaapaaaaaaffffaaaagcbaaaaddcbabaaaabaaaaaa
gcbaaaadhcbabaaaacaaaaaagcbaaaadicbabaaaadaaaaaagcbaaaadicbabaaa
aeaaaaaagcbaaaadpcbabaaaafaaaaaagcbaaaaddcbabaaaagaaaaaagcbaaaad
hcbabaaaahaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacadaaaaaabaaaaaah
bcaabaaaaaaaaaaaegbcbaaaafaaaaaaegbcbaaaafaaaaaaeeaaaaafbcaabaaa
aaaaaaaaakaabaaaaaaaaaaadiaaaaahhcaabaaaaaaaaaaaagaabaaaaaaaaaaa
egbcbaaaafaaaaaabaaaaaaiicaabaaaaaaaaaaaegbcbaiaebaaaaaaacaaaaaa
egacbaaaaaaaaaaaaaaaaaahicaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaa
aaaaaaaadcaaaaalhcaabaaaabaaaaaaegacbaaaaaaaaaaapgapbaiaebaaaaaa
aaaaaaaaegbcbaiaebaaaaaaacaaaaaadgaaaaafbcaabaaaacaaaaaadkbabaaa
adaaaaaadgaaaaafccaabaaaacaaaaaadkbabaaaaeaaaaaadgaaaaafecaabaaa
acaaaaaadkbabaaaafaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaabaaaaaa
egacbaaaacaaaaaabacaaaahbcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaa
acaaaaaadiaaaaahccaabaaaaaaaaaaadkaabaaaaaaaaaaadkaabaaaaaaaaaaa
diaaaaahbcaabaaaabaaaaaabkaabaaaaaaaaaaabkaabaaaaaaaaaaaaaaaaaaj
ccaabaaaabaaaaaadkiacaiaebaaaaaaaaaaaaaaanaaaaaaabeaaaaaaaaaiadp
efaaaaajpcaabaaaabaaaaaaegaabaaaabaaaaaaeghobaaaacaaaaaaaagabaaa
aaaaaaaadiaaaaahccaabaaaaaaaaaaaakaabaaaabaaaaaaabeaaaaaaaaaiaeb
efaaaaajpcaabaaaabaaaaaaegbabaaaabaaaaaaeghobaaaaaaaaaaaaagabaaa
abaaaaaadcaaaaamhcaabaaaacaaaaaaegiccaaaaaaaaaaaajaaaaaaegacbaaa
abaaaaaaegiccaiaebaaaaaaaaaaaaaaacaaaaaadiaaaaaihcaabaaaabaaaaaa
egacbaaaabaaaaaaegiccaaaaaaaaaaaajaaaaaadcaaaaalhcaabaaaacaaaaaa
kgikcaaaaaaaaaaaanaaaaaaegacbaaaacaaaaaaegiccaaaaaaaaaaaacaaaaaa
diaaaaahocaabaaaaaaaaaaafgafbaaaaaaaaaaaagajbaaaacaaaaaadcaaaaan
icaabaaaabaaaaaackiacaiaebaaaaaaaaaaaaaaanaaaaaadkiacaaaaaaaaaaa
acaaaaaadkiacaaaaaaaaaaaacaaaaaadcaaaaajocaabaaaaaaaaaaaagajbaaa
abaaaaaapgapbaaaabaaaaaafgaobaaaaaaaaaaaehaaaaalbcaabaaaabaaaaaa
egbabaaaahaaaaaaaghabaaaapaaaaaaaagabaaaapaaaaaackbabaaaahaaaaaa
aaaaaaajccaabaaaabaaaaaaakiacaiaebaaaaaaabaaaaaabiaaaaaaabeaaaaa
aaaaiadpdcaaaaakbcaabaaaabaaaaaaakaabaaaabaaaaaabkaabaaaabaaaaaa
akiacaaaabaaaaaabiaaaaaaefaaaaajpcaabaaaacaaaaaaegbabaaaagaaaaaa
eghobaaaabaaaaaaaagabaaaacaaaaaadiaaaaahbcaabaaaabaaaaaaakaabaaa
abaaaaaadkaabaaaacaaaaaadiaaaaaihcaabaaaabaaaaaaagaabaaaabaaaaaa
egiccaaaaaaaaaaaagaaaaaadiaaaaahhcaabaaaabaaaaaaagaabaaaaaaaaaaa
egacbaaaabaaaaaadiaaaaahhccabaaaaaaaaaaajgahbaaaaaaaaaaaegacbaaa
abaaaaaadgaaaaaficcabaaaaaaaaaaaabeaaaaaaaaaiadpdoaaaaabfdegejda
aiaaaaaaiaaaaaaaaaaaaaaaejfdeheooaaaaaaaaiaaaaaaaiaaaaaamiaaaaaa
aaaaaaaaabaaaaaaadaaaaaaaaaaaaaaapaaaaaaneaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaapadaaaaneaaaaaaabaaaaaaaaaaaaaaadaaaaaaacaaaaaa
ahahaaaaneaaaaaaacaaaaaaaaaaaaaaadaaaaaaadaaaaaaapaiaaaaneaaaaaa
adaaaaaaaaaaaaaaadaaaaaaaeaaaaaaapaiaaaaneaaaaaaaeaaaaaaaaaaaaaa
adaaaaaaafaaaaaaapapaaaaneaaaaaaafaaaaaaaaaaaaaaadaaaaaaagaaaaaa
adadaaaaneaaaaaaagaaaaaaaaaaaaaaadaaaaaaahaaaaaaapahaaaafdfgfpfa
epfdejfeejepeoaafeeffiedepepfceeaaklklklepfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfe
gbhcghgfheaaklkl"
}
}
 }


 // Stats for Vertex shader:
 //       d3d11 : 25 avg math (9..41)
 //    d3d11_9x : 25 avg math (9..41)
 //        d3d9 : 25 avg math (8..43)
 // Stats for Fragment shader:
 //       d3d11 : 3 math
 //    d3d11_9x : 3 math
 //        d3d9 : 4 avg math (3..5)
 Pass {
  Name "SHADOWCASTER"
  Tags { "LIGHTMODE"="SHADOWCASTER" "SHADOWSUPPORT"="true" "RenderType"="Opaque" "PerformanceChecks"="False" }
  GpuProgramID 502614
Program "vp" {
SubProgram "d3d9 " {
// Stats: 43 math
Keywords { "SHADOWS_DEPTH" }
Bind "vertex" Vertex
Bind "normal" Normal
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [unity_MatrixVP]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [unity_LightShadowBias]
"vs_2_0
def c16, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
mul r0.x, c15.z, c15.z
slt r0.x, -r0.x, r0.x
mul r0.yzw, v1.y, c12.xxyz
mad r0.yzw, c11.xxyz, v1.x, r0
mad r0.yzw, c13.xxyz, v1.z, r0
nrm r1.xyz, r0.yzww
mad r2, v0.xyzx, c16.xxxy, c16.yyyx
dp4 r3.x, c8, r2
dp4 r3.y, c9, r2
dp4 r3.z, c10, r2
mad r0.yzw, r3.xxyz, -c14.w, c14.xxyz
nrm r4.xyz, r0.yzww
dp3 r0.y, r1, r4
mad r0.y, r0.y, -r0.y, c16.x
rsq r0.y, r0.y
rcp r0.y, r0.y
mul r0.y, r0.y, c15.z
mad r1.xyz, r1, -r0.y, r3
mov r1.w, c16.x
dp4 r3.x, c4, r1
dp4 r3.y, c5, r1
dp4 r3.z, c6, r1
dp4 r3.w, c7, r1
dp4 r1.x, c0, r2
dp4 r1.y, c1, r2
dp4 r1.z, c2, r2
dp4 r1.w, c3, r2
lrp r2, r0.x, r3, r1
rcp r0.x, r2.w
mul r0.x, r0.x, c15.x
max r0.x, r0.x, c16.y
min r0.x, r0.x, c16.x
add r0.x, r0.x, r2.z
max r0.y, r0.x, c16.y
lrp r2.z, c15.y, r0.y, r0.x
mov oT0, r2
mov oPos, r2

"
}
SubProgram "d3d11 " {
// Stats: 41 math
Keywords { "SHADOWS_DEPTH" }
Bind "vertex" Vertex
Bind "normal" Normal
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityShadows" 416
Vector 80 [unity_LightShadowBias]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
ConstBuffer "UnityPerFrame" 256
Matrix 144 [unity_MatrixVP]
BindCB  "UnityLighting" 0
BindCB  "UnityShadows" 1
BindCB  "UnityPerDraw" 2
BindCB  "UnityPerFrame" 3
"vs_4_0
root12:aaaeaaaa
eefiecedkofcienalkjfdbfghdeacmmpolplmbnoabaaaaaamaagaaaaadaaaaaa
cmaaaaaakaaaaaaaneaaaaaaejfdeheogmaaaaaaadaaaaaaaiaaaaaafaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapahaaaafjaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahahaaaagaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adaaaaaafaepfdejfeejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklkl
epfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaabaaaaaaadaaaaaa
aaaaaaaaapaaaaaafdfgfpfaepfdejfeejepeoaafdeieefcoeafaaaaeaaaabaa
hjabaaaafjaaaaaeegiocaaaaaaaaaaaabaaaaaafjaaaaaeegiocaaaabaaaaaa
agaaaaaafjaaaaaeegiocaaaacaaaaaabdaaaaaafjaaaaaeegiocaaaadaaaaaa
anaaaaaafpaaaaadhcbabaaaaaaaaaaafpaaaaadhcbabaaaabaaaaaaghaaaaae
pccabaaaaaaaaaaaabaaaaaagiaaaaacadaaaaaadiaaaaaibcaabaaaaaaaaaaa
akbabaaaabaaaaaaakiacaaaacaaaaaabaaaaaaadiaaaaaiccaabaaaaaaaaaaa
akbabaaaabaaaaaaakiacaaaacaaaaaabbaaaaaadiaaaaaiecaabaaaaaaaaaaa
akbabaaaabaaaaaaakiacaaaacaaaaaabcaaaaaadiaaaaaibcaabaaaabaaaaaa
bkbabaaaabaaaaaabkiacaaaacaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaa
bkbabaaaabaaaaaabkiacaaaacaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaa
bkbabaaaabaaaaaabkiacaaaacaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaaabaaaaaackbabaaa
abaaaaaackiacaaaacaaaaaabaaaaaaadiaaaaaiccaabaaaabaaaaaackbabaaa
abaaaaaackiacaaaacaaaaaabbaaaaaadiaaaaaiecaabaaaabaaaaaackbabaaa
abaaaaaackiacaaaacaaaaaabcaaaaaaaaaaaaahhcaabaaaaaaaaaaaegacbaaa
aaaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaah
hcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaadiaaaaaihcaabaaa
abaaaaaafgbfbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaadcaaaaakhcaabaaa
abaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaabaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaacaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egacbaaaabaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaaabaaaaaaegiccaaa
acaaaaaaapaaaaaadcaaaaamhcaabaaaacaaaaaaegacbaiaebaaaaaaabaaaaaa
pgipcaaaaaaaaaaaaaaaaaaaegiccaaaaaaaaaaaaaaaaaaabaaaaaahicaabaaa
aaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaaficaabaaaaaaaaaaa
dkaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaaaaaaaaaaegacbaaa
acaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaacaaaaaa
dcaaaaakicaabaaaaaaaaaaadkaabaiaebaaaaaaaaaaaaaadkaabaaaaaaaaaaa
abeaaaaaaaaaiadpelaaaaaficaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaai
icaabaaaaaaaaaaadkaabaaaaaaaaaaackiacaaaabaaaaaaafaaaaaadcaaaaak
hcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaa
abaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaaegiocaaaadaaaaaa
akaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaaajaaaaaaagaabaaa
aaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaadaaaaaa
alaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaaaaaaaaaipcaabaaaaaaaaaaa
egaobaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaadiaaaaaipcaabaaaabaaaaaa
fgbfbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaakpcaabaaaabaaaaaa
egiocaaaacaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaacaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
abaaaaaaaaaaaaaipcaabaaaabaaaaaaegaobaaaabaaaaaaegiocaaaacaaaaaa
adaaaaaadjaaaaaibcaabaaaacaaaaaackiacaaaabaaaaaaafaaaaaaabeaaaaa
aaaaaaaadhaaaaajpcaabaaaaaaaaaaaagaabaaaacaaaaaaegaobaaaaaaaaaaa
egaobaaaabaaaaaaaocaaaaibcaabaaaabaaaaaaakiacaaaabaaaaaaafaaaaaa
dkaabaaaaaaaaaaaaaaaaaahecaabaaaaaaaaaaackaabaaaaaaaaaaaakaabaaa
abaaaaaadgaaaaaflccabaaaaaaaaaaaegambaaaaaaaaaaadeaaaaahbcaabaaa
aaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaaibcaabaaaaaaaaaaa
ckaabaiaebaaaaaaaaaaaaaaakaabaaaaaaaaaaadcaaaaakeccabaaaaaaaaaaa
bkiacaaaabaaaaaaafaaaaaaakaabaaaaaaaaaaackaabaaaaaaaaaaadoaaaaab
"
}
SubProgram "d3d11_9x " {
// Stats: 41 math
Keywords { "SHADOWS_DEPTH" }
Bind "vertex" Vertex
Bind "normal" Normal
ConstBuffer "UnityLighting" 720
Vector 0 [_WorldSpaceLightPos0]
ConstBuffer "UnityShadows" 416
Vector 80 [unity_LightShadowBias]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
Matrix 256 [_World2Object]
ConstBuffer "UnityPerFrame" 256
Matrix 144 [unity_MatrixVP]
BindCB  "UnityLighting" 0
BindCB  "UnityShadows" 1
BindCB  "UnityPerDraw" 2
BindCB  "UnityPerFrame" 3
"vs_4_0_level_9_1
root12:aaaeaaaa
eefiecedhlmpocbpldhhkipbpfieojpgcmiaogkfabaaaaaafaakaaaaaeaaaaaa
daaaaaaalmadaaaakiajaaaabmakaaaaebgpgodjieadaaaaieadaaaaaaacpopp
caadaaaageaaaaaaafaaceaaaaaagaaaaaaagaaaaaaaceaaabaagaaaaaaaaaaa
abaaabaaaaaaaaaaabaaafaaabaaacaaaaaaaaaaacaaaaaaaeaaadaaaaaaaaaa
acaaamaaahaaahaaaaaaaaaaadaaajaaaeaaaoaaaaaaaaaaaaaaaaaaaaacpopp
fbaaaaafbcaaapkaaaaaiadpaaaaaaaaaaaaaaaaaaaaaaaabpaaaaacafaaaaia
aaaaapjabpaaaaacafaaabiaabaaapjaafaaaaadaaaaabiaabaaaajaalaaaaka
afaaaaadaaaaaciaabaaaajaamaaaakaafaaaaadaaaaaeiaabaaaajaanaaaaka
afaaaaadabaaabiaabaaffjaalaaffkaafaaaaadabaaaciaabaaffjaamaaffka
afaaaaadabaaaeiaabaaffjaanaaffkaacaaaaadaaaaahiaaaaaoeiaabaaoeia
afaaaaadabaaabiaabaakkjaalaakkkaafaaaaadabaaaciaabaakkjaamaakkka
afaaaaadabaaaeiaabaakkjaanaakkkaacaaaaadaaaaahiaaaaaoeiaabaaoeia
ceaaaaacabaaahiaaaaaoeiaafaaaaadaaaaahiaaaaaffjaaiaaoekaaeaaaaae
aaaaahiaahaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahiaajaaoekaaaaakkja
aaaaoeiaacaaaaadaaaaahiaaaaaoeiaakaaoekaaeaaaaaeacaaahiaaaaaoeia
abaappkbabaaoekaceaaaaacadaaahiaacaaoeiaaiaaaaadaaaaaiiaabaaoeia
adaaoeiaaeaaaaaeaaaaaiiaaaaappiaaaaappibbcaaaakaahaaaaacaaaaaiia
aaaappiaagaaaaacaaaaaiiaaaaappiaafaaaaadaaaaaiiaaaaappiaacaakkka
aeaaaaaeaaaaahiaabaaoeiaaaaappibaaaaoeiaafaaaaadabaaapiaaaaaffia
apaaoekaaeaaaaaeabaaapiaaoaaoekaaaaaaaiaabaaoeiaaeaaaaaeaaaaapia
baaaoekaaaaakkiaabaaoeiaacaaaaadaaaaapiaaaaaoeiabbaaoekaafaaaaad
abaaapiaaaaaffjaaeaaoekaaeaaaaaeabaaapiaadaaoekaaaaaaajaabaaoeia
aeaaaaaeabaaapiaafaaoekaaaaakkjaabaaoeiaacaaaaadabaaapiaabaaoeia
agaaoekaafaaaaadacaaabiaacaakkkaacaakkkaamaaaaadacaaabiaacaaaaib
acaaaaiabcaaaaaeadaaapiaacaaaaiaaaaaoeiaabaaoeiaagaaaaacaaaaabia
adaappiaafaaaaadaaaaabiaaaaaaaiaacaaaakaalaaaaadaaaaabiaaaaaaaia
bcaaffkaakaaaaadaaaaabiaaaaaaaiabcaaaakaacaaaaadaaaaabiaaaaaaaia
adaakkiaalaaaaadaaaaaciaaaaaaaiabcaaffkaacaaaaadaaaaaciaaaaaaaib
aaaaffiaaeaaaaaeaaaaaemaacaaffkaaaaaffiaaaaaaaiaaeaaaaaeaaaaadma
adaappiaaaaaoekaadaaoeiaabaaaaacaaaaaimaadaappiappppaaaafdeieefc
oeafaaaaeaaaabaahjabaaaafjaaaaaeegiocaaaaaaaaaaaabaaaaaafjaaaaae
egiocaaaabaaaaaaagaaaaaafjaaaaaeegiocaaaacaaaaaabdaaaaaafjaaaaae
egiocaaaadaaaaaaanaaaaaafpaaaaadhcbabaaaaaaaaaaafpaaaaadhcbabaaa
abaaaaaaghaaaaaepccabaaaaaaaaaaaabaaaaaagiaaaaacadaaaaaadiaaaaai
bcaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaacaaaaaabaaaaaaadiaaaaai
ccaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaacaaaaaabbaaaaaadiaaaaai
ecaabaaaaaaaaaaaakbabaaaabaaaaaaakiacaaaacaaaaaabcaaaaaadiaaaaai
bcaabaaaabaaaaaabkbabaaaabaaaaaabkiacaaaacaaaaaabaaaaaaadiaaaaai
ccaabaaaabaaaaaabkbabaaaabaaaaaabkiacaaaacaaaaaabbaaaaaadiaaaaai
ecaabaaaabaaaaaabkbabaaaabaaaaaabkiacaaaacaaaaaabcaaaaaaaaaaaaah
hcaabaaaaaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaadiaaaaaibcaabaaa
abaaaaaackbabaaaabaaaaaackiacaaaacaaaaaabaaaaaaadiaaaaaiccaabaaa
abaaaaaackbabaaaabaaaaaackiacaaaacaaaaaabbaaaaaadiaaaaaiecaabaaa
abaaaaaackbabaaaabaaaaaackiacaaaacaaaaaabcaaaaaaaaaaaaahhcaabaaa
aaaaaaaaegacbaaaaaaaaaaaegacbaaaabaaaaaabaaaaaahicaabaaaaaaaaaaa
egacbaaaaaaaaaaaegacbaaaaaaaaaaaeeaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaahhcaabaaaaaaaaaaapgapbaaaaaaaaaaaegacbaaaaaaaaaaa
diaaaaaihcaabaaaabaaaaaafgbfbaaaaaaaaaaaegiccaaaacaaaaaaanaaaaaa
dcaaaaakhcaabaaaabaaaaaaegiccaaaacaaaaaaamaaaaaaagbabaaaaaaaaaaa
egacbaaaabaaaaaadcaaaaakhcaabaaaabaaaaaaegiccaaaacaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegacbaaaabaaaaaaaaaaaaaihcaabaaaabaaaaaaegacbaaa
abaaaaaaegiccaaaacaaaaaaapaaaaaadcaaaaamhcaabaaaacaaaaaaegacbaia
ebaaaaaaabaaaaaapgipcaaaaaaaaaaaaaaaaaaaegiccaaaaaaaaaaaaaaaaaaa
baaaaaahicaabaaaaaaaaaaaegacbaaaacaaaaaaegacbaaaacaaaaaaeeaaaaaf
icaabaaaaaaaaaaadkaabaaaaaaaaaaadiaaaaahhcaabaaaacaaaaaapgapbaaa
aaaaaaaaegacbaaaacaaaaaabaaaaaahicaabaaaaaaaaaaaegacbaaaaaaaaaaa
egacbaaaacaaaaaadcaaaaakicaabaaaaaaaaaaadkaabaiaebaaaaaaaaaaaaaa
dkaabaaaaaaaaaaaabeaaaaaaaaaiadpelaaaaaficaabaaaaaaaaaaadkaabaaa
aaaaaaaadiaaaaaiicaabaaaaaaaaaaadkaabaaaaaaaaaaackiacaaaabaaaaaa
afaaaaaadcaaaaakhcaabaaaaaaaaaaaegacbaiaebaaaaaaaaaaaaaapgapbaaa
aaaaaaaaegacbaaaabaaaaaadiaaaaaipcaabaaaabaaaaaafgafbaaaaaaaaaaa
egiocaaaadaaaaaaakaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaadaaaaaa
ajaaaaaaagaabaaaaaaaaaaaegaobaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaadaaaaaaalaaaaaakgakbaaaaaaaaaaaegaobaaaabaaaaaaaaaaaaai
pcaabaaaaaaaaaaaegaobaaaaaaaaaaaegiocaaaadaaaaaaamaaaaaadiaaaaai
pcaabaaaabaaaaaafgbfbaaaaaaaaaaaegiocaaaacaaaaaaabaaaaaadcaaaaak
pcaabaaaabaaaaaaegiocaaaacaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaa
abaaaaaadcaaaaakpcaabaaaabaaaaaaegiocaaaacaaaaaaacaaaaaakgbkbaaa
aaaaaaaaegaobaaaabaaaaaaaaaaaaaipcaabaaaabaaaaaaegaobaaaabaaaaaa
egiocaaaacaaaaaaadaaaaaadjaaaaaibcaabaaaacaaaaaackiacaaaabaaaaaa
afaaaaaaabeaaaaaaaaaaaaadhaaaaajpcaabaaaaaaaaaaaagaabaaaacaaaaaa
egaobaaaaaaaaaaaegaobaaaabaaaaaaaocaaaaibcaabaaaabaaaaaaakiacaaa
abaaaaaaafaaaaaadkaabaaaaaaaaaaaaaaaaaahecaabaaaaaaaaaaackaabaaa
aaaaaaaaakaabaaaabaaaaaadgaaaaaflccabaaaaaaaaaaaegambaaaaaaaaaaa
deaaaaahbcaabaaaaaaaaaaackaabaaaaaaaaaaaabeaaaaaaaaaaaaaaaaaaaai
bcaabaaaaaaaaaaackaabaiaebaaaaaaaaaaaaaaakaabaaaaaaaaaaadcaaaaak
eccabaaaaaaaaaaabkiacaaaabaaaaaaafaaaaaaakaabaaaaaaaaaaackaabaaa
aaaaaaaadoaaaaabejfdeheogmaaaaaaadaaaaaaaiaaaaaafaaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapahaaaafjaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
abaaaaaaahahaaaagaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaaadaaaaaa
faepfdejfeejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklklepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaabaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfaepfdejfeejepeoaa"
}
SubProgram "d3d9 " {
// Stats: 8 math
Keywords { "SHADOWS_CUBE" }
Bind "vertex" Vertex
Matrix 4 [_Object2World] 3
Matrix 0 [glstate_matrix_mvp]
Vector 7 [_LightPositionRange]
"vs_2_0
dcl_position v0
dp4 r0.x, c4, v0
dp4 r0.y, c5, v0
dp4 r0.z, c6, v0
add oT0.xyz, r0, -c7
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0

"
}
SubProgram "d3d11 " {
// Stats: 9 math
Keywords { "SHADOWS_CUBE" }
Bind "vertex" Vertex
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
BindCB  "UnityLighting" 0
BindCB  "UnityPerDraw" 1
"vs_4_0
root12:aaacaaaa
eefiecedmgkmdmiimpgfbbeijlbbhnckjdimdhfoabaaaaaalaacaaaaadaaaaaa
cmaaaaaakaaaaaaapiaaaaaaejfdeheogmaaaaaaadaaaaaaaiaaaaaafaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaafjaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaabaaaaaaahaaaaaagaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaacaaaaaa
adaaaaaafaepfdejfeejepeoaaeoepfcenebemaafeeffiedepepfceeaaklklkl
epfdeheofaaaaaaaacaaaaaaaiaaaaaadiaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaahaiaaaaebaaaaaaaaaaaaaaabaaaaaaadaaaaaaabaaaaaaapaaaaaa
feeffiedepepfceeaafdfgfpfaepfdejfeejepeoaaklklklfdeieefclaabaaaa
eaaaabaagmaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaafjaaaaaeegiocaaa
abaaaaaabaaaaaaafpaaaaadpcbabaaaaaaaaaaagfaaaaadhccabaaaaaaaaaaa
ghaaaaaepccabaaaabaaaaaaabaaaaaagiaaaaacabaaaaaadiaaaaaihcaabaaa
aaaaaaaafgbfbaaaaaaaaaaaegiccaaaabaaaaaaanaaaaaadcaaaaakhcaabaaa
aaaaaaaaegiccaaaabaaaaaaamaaaaaaagbabaaaaaaaaaaaegacbaaaaaaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaabaaaaaaaoaaaaaakgbkbaaaaaaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaabaaaaaaapaaaaaa
pgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhccabaaaaaaaaaaaegacbaaa
aaaaaaaaegiccaiaebaaaaaaaaaaaaaaabaaaaaadiaaaaaipcaabaaaaaaaaaaa
fgbfbaaaaaaaaaaaegiocaaaabaaaaaaabaaaaaadcaaaaakpcaabaaaaaaaaaaa
egiocaaaabaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaaaaaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaabaaaaaaacaaaaaakgbkbaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpccabaaaabaaaaaaegiocaaaabaaaaaaadaaaaaapgbpbaaa
aaaaaaaaegaobaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 9 math
Keywords { "SHADOWS_CUBE" }
Bind "vertex" Vertex
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
ConstBuffer "UnityPerDraw" 352
Matrix 0 [glstate_matrix_mvp]
Matrix 192 [_Object2World]
BindCB  "UnityLighting" 0
BindCB  "UnityPerDraw" 1
"vs_4_0_level_9_1
root12:aaacaaaa
eefiecedajmomlnjfihenbneealfggocokccfjgbabaaaaaaoeadaaaaaeaaaaaa
daaaaaaagaabaaaabiadaaaaimadaaaaebgpgodjciabaaaaciabaaaaaaacpopp
nmaaaaaaemaaaaaaadaaceaaaaaaeiaaaaaaeiaaaaaaceaaabaaeiaaaaaaabaa
abaaabaaaaaaaaaaabaaaaaaaeaaacaaaaaaaaaaabaaamaaaeaaagaaaaaaaaaa
aaaaaaaaaaacpoppbpaaaaacafaaaaiaaaaaapjaafaaaaadaaaaahiaaaaaffja
ahaaoekaaeaaaaaeaaaaahiaagaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaahia
aiaaoekaaaaakkjaaaaaoeiaaeaaaaaeaaaaahiaajaaoekaaaaappjaaaaaoeia
acaaaaadaaaaahoaaaaaoeiaabaaoekbafaaaaadaaaaapiaaaaaffjaadaaoeka
aeaaaaaeaaaaapiaacaaoekaaaaaaajaaaaaoeiaaeaaaaaeaaaaapiaaeaaoeka
aaaakkjaaaaaoeiaaeaaaaaeaaaaapiaafaaoekaaaaappjaaaaaoeiaaeaaaaae
aaaaadmaaaaappiaaaaaoekaaaaaoeiaabaaaaacaaaaammaaaaaoeiappppaaaa
fdeieefclaabaaaaeaaaabaagmaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaa
fjaaaaaeegiocaaaabaaaaaabaaaaaaafpaaaaadpcbabaaaaaaaaaaagfaaaaad
hccabaaaaaaaaaaaghaaaaaepccabaaaabaaaaaaabaaaaaagiaaaaacabaaaaaa
diaaaaaihcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiccaaaabaaaaaaanaaaaaa
dcaaaaakhcaabaaaaaaaaaaaegiccaaaabaaaaaaamaaaaaaagbabaaaaaaaaaaa
egacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaaabaaaaaaaoaaaaaa
kgbkbaaaaaaaaaaaegacbaaaaaaaaaaadcaaaaakhcaabaaaaaaaaaaaegiccaaa
abaaaaaaapaaaaaapgbpbaaaaaaaaaaaegacbaaaaaaaaaaaaaaaaaajhccabaaa
aaaaaaaaegacbaaaaaaaaaaaegiccaiaebaaaaaaaaaaaaaaabaaaaaadiaaaaai
pcaabaaaaaaaaaaafgbfbaaaaaaaaaaaegiocaaaabaaaaaaabaaaaaadcaaaaak
pcaabaaaaaaaaaaaegiocaaaabaaaaaaaaaaaaaaagbabaaaaaaaaaaaegaobaaa
aaaaaaaadcaaaaakpcaabaaaaaaaaaaaegiocaaaabaaaaaaacaaaaaakgbkbaaa
aaaaaaaaegaobaaaaaaaaaaadcaaaaakpccabaaaabaaaaaaegiocaaaabaaaaaa
adaaaaaapgbpbaaaaaaaaaaaegaobaaaaaaaaaaadoaaaaabejfdeheogmaaaaaa
adaaaaaaaiaaaaaafaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaapapaaaa
fjaaaaaaaaaaaaaaaaaaaaaaadaaaaaaabaaaaaaahaaaaaagaaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaacaaaaaaadaaaaaafaepfdejfeejepeoaaeoepfcenebemaa
feeffiedepepfceeaaklklklepfdeheofaaaaaaaacaaaaaaaiaaaaaadiaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaahaiaaaaebaaaaaaaaaaaaaaabaaaaaa
adaaaaaaabaaaaaaapaaaaaafeeffiedepepfceeaafdfgfpfaepfdejfeejepeo
aaklklkl"
}
}
Program "fp" {
SubProgram "d3d9 " {
// Stats: 3 math
Keywords { "SHADOWS_DEPTH" }
"ps_2_0
dcl t0
rcp r0.w, t0.w
mul_pp r0, r0.w, t0.z
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
Keywords { "SHADOWS_DEPTH" }
"ps_4_0
root12:aaaaaaaa
eefiecednmfgmafnpgdjlbeekdafekgfpapnijkfabaaaaaalaaaaaaaadaaaaaa
cmaaaaaadmaaaaaahaaaaaaaejfdeheoaiaaaaaaaaaaaaaaaiaaaaaaepfdeheo
cmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaa
apaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcdiaaaaaaeaaaaaaaaoaaaaaa
gfaaaaadpccabaaaaaaaaaaadgaaaaaipccabaaaaaaaaaaaaceaaaaaaaaaaaaa
aaaaaaaaaaaaaaaaaaaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
Keywords { "SHADOWS_DEPTH" }
"ps_4_0_level_9_1
root12:aaaaaaaa
eefiecedbbbiincpfipkmkecghhijjileenegjaoabaaaaaabiabaaaaaeaaaaaa
daaaaaaajeaaaaaaneaaaaaaoeaaaaaaebgpgodjfmaaaaaafmaaaaaaaaacpppp
diaaaaaaceaaaaaaaaaaceaaaaaaceaaaaaaceaaaaaaceaaaaaaceaaaaacpppp
fbaaaaafaaaaapkaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabaaaaacaaaacpia
aaaaaakaabaaaaacaaaicpiaaaaaoeiappppaaaafdeieefcdiaaaaaaeaaaaaaa
aoaaaaaagfaaaaadpccabaaaaaaaaaaadgaaaaaipccabaaaaaaaaaaaaceaaaaa
aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadoaaaaabejfdeheoaiaaaaaaaaaaaaaa
aiaaaaaaepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaa
adaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl"
}
SubProgram "d3d9 " {
// Stats: 5 math
Keywords { "SHADOWS_CUBE" }
Vector 0 [_LightPositionRange]
"ps_2_0
dcl t0.xyz
dp3 r0.w, t0, t0
rsq r0.x, r0.w
rcp r0.x, r0.x
mul_pp r0, r0.x, c0.w
mov_pp oC0, r0

"
}
SubProgram "d3d11 " {
// Stats: 3 math
Keywords { "SHADOWS_CUBE" }
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
BindCB  "UnityLighting" 0
"ps_4_0
root12:aaabaaaa
eefiecedfnmflbfjaemdcoihgjpopakokhefifnoabaaaaaaciabaaaaadaaaaaa
cmaaaaaagaaaaaaajeaaaaaaejfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaa
aaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaahahaaaafeeffiedepepfceeaaklklkl
epfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaa
aaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklklfdeieefcimaaaaaaeaaaaaaa
cdaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaagcbaaaadhcbabaaaaaaaaaaa
gfaaaaadpccabaaaaaaaaaaagiaaaaacabaaaaaabaaaaaahbcaabaaaaaaaaaaa
egbcbaaaaaaaaaaaegbcbaaaaaaaaaaaelaaaaafbcaabaaaaaaaaaaaakaabaaa
aaaaaaaadiaaaaaipccabaaaaaaaaaaaagaabaaaaaaaaaaapgipcaaaaaaaaaaa
abaaaaaadoaaaaab"
}
SubProgram "d3d11_9x " {
// Stats: 3 math
Keywords { "SHADOWS_CUBE" }
ConstBuffer "UnityLighting" 720
Vector 16 [_LightPositionRange]
BindCB  "UnityLighting" 0
"ps_4_0_level_9_1
root12:aaabaaaa
eefiecedmaohbkicjifghfadpaadmoobdecckpgjabaaaaaalmabaaaaaeaaaaaa
daaaaaaamaaaaaaafeabaaaaiiabaaaaebgpgodjiiaaaaaaiiaaaaaaaaacpppp
fiaaaaaadaaaaaaaabaaceaaaaaadaaaaaaadaaaaaaaceaaaaaadaaaaaaaabaa
abaaaaaaaaaaaaaaaaacppppbpaaaaacaaaaaaiaaaaaahlaaiaaaaadaaaaaiia
aaaaoelaaaaaoelaahaaaaacaaaaabiaaaaappiaagaaaaacaaaaabiaaaaaaaia
afaaaaadaaaacpiaaaaaaaiaaaaappkaabaaaaacaaaicpiaaaaaoeiappppaaaa
fdeieefcimaaaaaaeaaaaaaacdaaaaaafjaaaaaeegiocaaaaaaaaaaaacaaaaaa
gcbaaaadhcbabaaaaaaaaaaagfaaaaadpccabaaaaaaaaaaagiaaaaacabaaaaaa
baaaaaahbcaabaaaaaaaaaaaegbcbaaaaaaaaaaaegbcbaaaaaaaaaaaelaaaaaf
bcaabaaaaaaaaaaaakaabaaaaaaaaaaadiaaaaaipccabaaaaaaaaaaaagaabaaa
aaaaaaaapgipcaaaaaaaaaaaabaaaaaadoaaaaabejfdeheocmaaaaaaabaaaaaa
aiaaaaaacaaaaaaaaaaaaaaaaaaaaaaaadaaaaaaaaaaaaaaahahaaaafeeffied
epepfceeaaklklklepfdeheocmaaaaaaabaaaaaaaiaaaaaacaaaaaaaaaaaaaaa
aaaaaaaaadaaaaaaaaaaaaaaapaaaaaafdfgfpfegbhcghgfheaaklkl"
}
}
 }
}
Fallback "VertexLit"
}
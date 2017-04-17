<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.1.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="15" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="25" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="no" active="no"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="4" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="yes" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="32bits">
<packages>
<package name="RGE24_2P7X2P7">
<smd name="1" x="-1.975" y="1.25" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="2" x="-1.975" y="0.75" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="3" x="-1.975" y="0.25" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="4" x="-1.975" y="-0.25" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="5" x="-1.975" y="-0.75" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="6" x="-1.975" y="-1.25" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="7" x="-1.250315625" y="-1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="8" x="-0.7501875" y="-1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="9" x="-0.2500625" y="-1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="10" x="0.2500625" y="-1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="11" x="0.7501875" y="-1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="12" x="1.250315625" y="-1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="13" x="1.975" y="-1.25" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="14" x="1.975" y="-0.75" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="15" x="1.975" y="-0.25" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="16" x="1.975" y="0.25" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="17" x="1.975" y="0.75" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="18" x="1.975" y="1.25" dx="0.28" dy="0.85" layer="1" rot="R270" cream="no"/>
<smd name="19" x="1.250315625" y="1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="20" x="0.7501875" y="1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="21" x="0.2500625" y="1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="22" x="-0.2500625" y="1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="23" x="-0.7501875" y="1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="24" x="-1.250315625" y="1.975" dx="0.28" dy="0.85" layer="1" rot="R180" cream="no"/>
<smd name="25" x="0" y="0" dx="2.7" dy="2.7" layer="1" cream="no"/>
<pad name="V" x="-0.7874" y="-0.7874" drill="0.254" diameter="0.508"/>
<pad name="V_1" x="-0.7874" y="0" drill="0.254" diameter="0.508"/>
<pad name="V_2" x="-0.7874" y="0.7874" drill="0.254" diameter="0.508"/>
<pad name="V_3" x="0" y="-0.7874" drill="0.254" diameter="0.508"/>
<pad name="V_4" x="0" y="0" drill="0.254" diameter="0.508"/>
<pad name="V_5" x="0" y="0.7874" drill="0.254" diameter="0.508"/>
<pad name="V_6" x="0.7874" y="-0.7874" drill="0.254" diameter="0.508"/>
<pad name="V_7" x="0.7874" y="0" drill="0.254" diameter="0.508"/>
<pad name="V_8" x="0.7874" y="0.7874" drill="0.254" diameter="0.508"/>
<wire x1="-2.4638" y1="-2.4638" x2="-1.7272" y2="-2.4638" width="0.1524" layer="21"/>
<wire x1="2.4638" y1="-2.4638" x2="2.4638" y2="-1.7272" width="0.1524" layer="21"/>
<wire x1="2.4638" y1="2.4638" x2="1.7272" y2="2.4638" width="0.1524" layer="21"/>
<wire x1="-2.4638" y1="2.4638" x2="-2.4638" y2="1.7272" width="0.1524" layer="21"/>
<wire x1="-2.4638" y1="-1.7272" x2="-2.4638" y2="-2.4638" width="0.1524" layer="21"/>
<wire x1="1.7272" y1="-2.4638" x2="2.4638" y2="-2.4638" width="0.1524" layer="21"/>
<wire x1="2.4638" y1="1.7272" x2="2.4638" y2="2.4638" width="0.1524" layer="21"/>
<wire x1="-1.7272" y1="2.4638" x2="-2.4638" y2="2.4638" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="0.0595625" y="-2.654"/>
<vertex x="0.0595625" y="-2.908"/>
<vertex x="0.4405625" y="-2.908"/>
<vertex x="0.4405625" y="-2.654"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="0.5596875" y="2.654"/>
<vertex x="0.5596875" y="2.908"/>
<vertex x="0.9406875" y="2.908"/>
<vertex x="0.9406875" y="2.654"/>
</polygon>
<text x="-3.6068" y="1.2446" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
<polygon width="0.0254" layer="31">
<vertex x="-2.375109375" y="1.36510625"/>
<vertex x="-2.375109375" y="1.13489375"/>
<vertex x="-1.574890625" y="1.13489375"/>
<vertex x="-1.574890625" y="1.36510625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-2.375109375" y="0.865109375"/>
<vertex x="-2.375109375" y="0.63489375"/>
<vertex x="-1.574890625" y="0.63489375"/>
<vertex x="-1.574890625" y="0.865109375"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-2.375109375" y="0.36510625"/>
<vertex x="-2.375109375" y="0.134890625"/>
<vertex x="-1.574890625" y="0.134890625"/>
<vertex x="-1.574890625" y="0.36510625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-2.375109375" y="-0.134890625"/>
<vertex x="-2.375109375" y="-0.36510625"/>
<vertex x="-1.574890625" y="-0.36510625"/>
<vertex x="-1.574890625" y="-0.134890625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-2.375109375" y="-0.634890625"/>
<vertex x="-2.375109375" y="-0.865109375"/>
<vertex x="-1.574890625" y="-0.865109375"/>
<vertex x="-1.574890625" y="-0.634890625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-2.375109375" y="-1.13489375"/>
<vertex x="-2.375109375" y="-1.36510625"/>
<vertex x="-1.574890625" y="-1.36510625"/>
<vertex x="-1.574890625" y="-1.13489375"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.365421875" y="-1.574890625"/>
<vertex x="-1.365421875" y="-2.375109375"/>
<vertex x="-1.13520625" y="-2.375109375"/>
<vertex x="-1.13520625" y="-1.574890625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.865296875" y="-1.574890625"/>
<vertex x="-0.865296875" y="-2.375109375"/>
<vertex x="-0.63508125" y="-2.375109375"/>
<vertex x="-0.63508125" y="-1.574890625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.365171875" y="-1.574890625"/>
<vertex x="-0.365171875" y="-2.375109375"/>
<vertex x="-0.13495625" y="-2.375109375"/>
<vertex x="-0.13495625" y="-1.574890625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.13495625" y="-1.574890625"/>
<vertex x="0.13495625" y="-2.375109375"/>
<vertex x="0.365171875" y="-2.375109375"/>
<vertex x="0.365171875" y="-1.574890625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.63508125" y="-1.574890625"/>
<vertex x="0.63508125" y="-2.375109375"/>
<vertex x="0.865296875" y="-2.375109375"/>
<vertex x="0.865296875" y="-1.574890625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.13520625" y="-1.574890625"/>
<vertex x="1.13520625" y="-2.375109375"/>
<vertex x="1.365421875" y="-2.375109375"/>
<vertex x="1.365421875" y="-1.574890625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.574890625" y="-1.13489375"/>
<vertex x="1.574890625" y="-1.36510625"/>
<vertex x="2.375109375" y="-1.36510625"/>
<vertex x="2.375109375" y="-1.13489375"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.574890625" y="-0.63489375"/>
<vertex x="1.574890625" y="-0.865109375"/>
<vertex x="2.375109375" y="-0.865109375"/>
<vertex x="2.375109375" y="-0.63489375"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.574890625" y="-0.134890625"/>
<vertex x="1.574890625" y="-0.36510625"/>
<vertex x="2.375109375" y="-0.36510625"/>
<vertex x="2.375109375" y="-0.134890625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.574890625" y="0.36510625"/>
<vertex x="1.574890625" y="0.134890625"/>
<vertex x="2.375109375" y="0.134890625"/>
<vertex x="2.375109375" y="0.36510625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.574890625" y="0.865109375"/>
<vertex x="1.574890625" y="0.634890625"/>
<vertex x="2.375109375" y="0.634890625"/>
<vertex x="2.375109375" y="0.865109375"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.574890625" y="1.36510625"/>
<vertex x="1.574890625" y="1.13489375"/>
<vertex x="2.375109375" y="1.13489375"/>
<vertex x="2.375109375" y="1.36510625"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.13520625" y="2.375109375"/>
<vertex x="1.13520625" y="1.574890625"/>
<vertex x="1.365421875" y="1.574890625"/>
<vertex x="1.365421875" y="2.375109375"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.63508125" y="2.375109375"/>
<vertex x="0.63508125" y="1.574890625"/>
<vertex x="0.865296875" y="1.574890625"/>
<vertex x="0.865296875" y="2.375109375"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.13495625" y="2.375109375"/>
<vertex x="0.13495625" y="1.574890625"/>
<vertex x="0.365171875" y="1.574890625"/>
<vertex x="0.365171875" y="2.375109375"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.365171875" y="2.375109375"/>
<vertex x="-0.365171875" y="1.574890625"/>
<vertex x="-0.13495625" y="1.574890625"/>
<vertex x="-0.13495625" y="2.375109375"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.865296875" y="2.375109375"/>
<vertex x="-0.865296875" y="1.574890625"/>
<vertex x="-0.63508125" y="1.574890625"/>
<vertex x="-0.63508125" y="2.375109375"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.365421875" y="2.375109375"/>
<vertex x="-1.365421875" y="1.574890625"/>
<vertex x="-1.13520625" y="1.574890625"/>
<vertex x="-1.13520625" y="2.375109375"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.27506875" y="1.27506875"/>
<vertex x="-1.27506875" y="0.8874"/>
<vertex x="-1.028821875" y="0.8874"/>
<vertex x="-0.8874" y="1.028821875"/>
<vertex x="-0.8874" y="1.27506875"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.27506875" y="0.6874"/>
<vertex x="-1.27506875" y="0.1"/>
<vertex x="-1.028821875" y="0.1"/>
<vertex x="-0.8874" y="0.241421875"/>
<vertex x="-0.8874" y="0.545978125"/>
<vertex x="-1.028821875" y="0.6874"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.27506875" y="-0.1"/>
<vertex x="-1.27506875" y="-0.6874"/>
<vertex x="-1.028821875" y="-0.6874"/>
<vertex x="-0.8874" y="-0.545978125"/>
<vertex x="-0.8874" y="-0.241421875"/>
<vertex x="-1.028821875" y="-0.1"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.27506875" y="-0.8874"/>
<vertex x="-1.27506875" y="-1.27506875"/>
<vertex x="-0.8874" y="-1.27506875"/>
<vertex x="-0.8874" y="-1.028821875"/>
<vertex x="-1.028821875" y="-0.8874"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.6874" y="1.27506875"/>
<vertex x="-0.6874" y="1.028821875"/>
<vertex x="-0.545978125" y="0.8874"/>
<vertex x="-0.241421875" y="0.8874"/>
<vertex x="-0.1" y="1.028821875"/>
<vertex x="-0.1" y="1.27506875"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.545978125" y="0.6874"/>
<vertex x="-0.6874" y="0.545978125"/>
<vertex x="-0.6874" y="0.241421875"/>
<vertex x="-0.545978125" y="0.1"/>
<vertex x="-0.241421875" y="0.1"/>
<vertex x="-0.1" y="0.241421875"/>
<vertex x="-0.1" y="0.545978125"/>
<vertex x="-0.241421875" y="0.6874"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.545978125" y="-0.1"/>
<vertex x="-0.6874" y="-0.241421875"/>
<vertex x="-0.6874" y="-0.545978125"/>
<vertex x="-0.545978125" y="-0.6874"/>
<vertex x="-0.241421875" y="-0.6874"/>
<vertex x="-0.1" y="-0.545978125"/>
<vertex x="-0.1" y="-0.241421875"/>
<vertex x="-0.241421875" y="-0.1"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-0.545978125" y="-0.8874"/>
<vertex x="-0.6874" y="-1.028821875"/>
<vertex x="-0.6874" y="-1.27506875"/>
<vertex x="-0.1" y="-1.27506875"/>
<vertex x="-0.1" y="-1.028821875"/>
<vertex x="-0.241421875" y="-0.8874"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.1" y="1.27506875"/>
<vertex x="0.1" y="1.028821875"/>
<vertex x="0.241421875" y="0.8874"/>
<vertex x="0.545978125" y="0.8874"/>
<vertex x="0.6874" y="1.028821875"/>
<vertex x="0.6874" y="1.27506875"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.241421875" y="0.6874"/>
<vertex x="0.1" y="0.545978125"/>
<vertex x="0.1" y="0.241421875"/>
<vertex x="0.241421875" y="0.1"/>
<vertex x="0.545978125" y="0.1"/>
<vertex x="0.6874" y="0.241421875"/>
<vertex x="0.6874" y="0.545978125"/>
<vertex x="0.545978125" y="0.6874"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.241421875" y="-0.1"/>
<vertex x="0.1" y="-0.241421875"/>
<vertex x="0.1" y="-0.545978125"/>
<vertex x="0.241421875" y="-0.6874"/>
<vertex x="0.545978125" y="-0.6874"/>
<vertex x="0.6874" y="-0.545978125"/>
<vertex x="0.6874" y="-0.241421875"/>
<vertex x="0.545978125" y="-0.1"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.241421875" y="-0.8874"/>
<vertex x="0.1" y="-1.028821875"/>
<vertex x="0.1" y="-1.27506875"/>
<vertex x="0.6874" y="-1.27506875"/>
<vertex x="0.6874" y="-1.028821875"/>
<vertex x="0.545978125" y="-0.8874"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.8874" y="1.27506875"/>
<vertex x="0.8874" y="1.028821875"/>
<vertex x="1.028821875" y="0.8874"/>
<vertex x="1.27506875" y="0.8874"/>
<vertex x="1.27506875" y="1.27506875"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.028821875" y="0.6874"/>
<vertex x="0.8874" y="0.545978125"/>
<vertex x="0.8874" y="0.241421875"/>
<vertex x="1.028821875" y="0.1"/>
<vertex x="1.27506875" y="0.1"/>
<vertex x="1.27506875" y="0.6874"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.028821875" y="-0.1"/>
<vertex x="0.8874" y="-0.241421875"/>
<vertex x="0.8874" y="-0.545978125"/>
<vertex x="1.028821875" y="-0.6874"/>
<vertex x="1.27506875" y="-0.6874"/>
<vertex x="1.27506875" y="-0.1"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.028821875" y="-0.8874"/>
<vertex x="0.8874" y="-1.028821875"/>
<vertex x="0.8874" y="-1.27506875"/>
<vertex x="1.27506875" y="-1.27506875"/>
<vertex x="1.27506875" y="-0.8874"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-2.469596875" y="1.459596875"/>
<vertex x="-2.469596875" y="1.040403125"/>
<vertex x="-1.480403125" y="1.040403125"/>
<vertex x="-1.480403125" y="1.459596875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-2.469596875" y="0.959596875"/>
<vertex x="-2.469596875" y="0.54040625"/>
<vertex x="-1.480403125" y="0.54040625"/>
<vertex x="-1.480403125" y="0.959596875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-2.469596875" y="0.45959375"/>
<vertex x="-2.469596875" y="0.040403125"/>
<vertex x="-1.480403125" y="0.040403125"/>
<vertex x="-1.480403125" y="0.45959375"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-2.469596875" y="-0.040403125"/>
<vertex x="-2.469596875" y="-0.45959375"/>
<vertex x="-1.480403125" y="-0.45959375"/>
<vertex x="-1.480403125" y="-0.040403125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-2.469596875" y="-0.540403125"/>
<vertex x="-2.469596875" y="-0.959596875"/>
<vertex x="-1.480403125" y="-0.959596875"/>
<vertex x="-1.480403125" y="-0.540403125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-2.469596875" y="-1.040403125"/>
<vertex x="-2.469596875" y="-1.459596875"/>
<vertex x="-1.480403125" y="-1.459596875"/>
<vertex x="-1.480403125" y="-1.040403125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.459909375" y="-1.480403125"/>
<vertex x="-1.459909375" y="-2.469596875"/>
<vertex x="-1.04071875" y="-2.469596875"/>
<vertex x="-1.04071875" y="-1.480403125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-0.959784375" y="-1.480403125"/>
<vertex x="-0.959784375" y="-2.469596875"/>
<vertex x="-0.54059375" y="-2.469596875"/>
<vertex x="-0.54059375" y="-1.480403125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-0.459659375" y="-1.480403125"/>
<vertex x="-0.459659375" y="-2.469596875"/>
<vertex x="-0.04046875" y="-2.469596875"/>
<vertex x="-0.04046875" y="-1.480403125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="0.04046875" y="-1.480403125"/>
<vertex x="0.04046875" y="-2.469596875"/>
<vertex x="0.459659375" y="-2.469596875"/>
<vertex x="0.459659375" y="-1.480403125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="0.54059375" y="-1.480403125"/>
<vertex x="0.54059375" y="-2.469596875"/>
<vertex x="0.959784375" y="-2.469596875"/>
<vertex x="0.959784375" y="-1.480403125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.04071875" y="-1.480403125"/>
<vertex x="1.04071875" y="-2.469596875"/>
<vertex x="1.459909375" y="-2.469596875"/>
<vertex x="1.459909375" y="-1.480403125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.480403125" y="-1.040403125"/>
<vertex x="1.480403125" y="-1.459596875"/>
<vertex x="2.469596875" y="-1.459596875"/>
<vertex x="2.469596875" y="-1.040403125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.480403125" y="-0.54040625"/>
<vertex x="1.480403125" y="-0.959596875"/>
<vertex x="2.469596875" y="-0.959596875"/>
<vertex x="2.469596875" y="-0.54040625"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.480403125" y="-0.040403125"/>
<vertex x="1.480403125" y="-0.45959375"/>
<vertex x="2.469596875" y="-0.45959375"/>
<vertex x="2.469596875" y="-0.040403125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.480403125" y="0.45959375"/>
<vertex x="1.480403125" y="0.040403125"/>
<vertex x="2.469596875" y="0.040403125"/>
<vertex x="2.469596875" y="0.45959375"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.480403125" y="0.959596875"/>
<vertex x="1.480403125" y="0.540403125"/>
<vertex x="2.469596875" y="0.540403125"/>
<vertex x="2.469596875" y="0.959596875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.480403125" y="1.459596875"/>
<vertex x="1.480403125" y="1.040403125"/>
<vertex x="2.469596875" y="1.040403125"/>
<vertex x="2.469596875" y="1.459596875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.04071875" y="2.469596875"/>
<vertex x="1.04071875" y="1.480403125"/>
<vertex x="1.459909375" y="1.480403125"/>
<vertex x="1.459909375" y="2.469596875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="0.54059375" y="2.469596875"/>
<vertex x="0.54059375" y="1.480403125"/>
<vertex x="0.959784375" y="1.480403125"/>
<vertex x="0.959784375" y="2.469596875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="0.04046875" y="2.469596875"/>
<vertex x="0.04046875" y="1.480403125"/>
<vertex x="0.459659375" y="1.480403125"/>
<vertex x="0.459659375" y="2.469596875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-0.459659375" y="2.469596875"/>
<vertex x="-0.459659375" y="1.480403125"/>
<vertex x="-0.04046875" y="1.480403125"/>
<vertex x="-0.04046875" y="2.469596875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-0.959784375" y="2.469596875"/>
<vertex x="-0.959784375" y="1.480403125"/>
<vertex x="-0.54059375" y="1.480403125"/>
<vertex x="-0.54059375" y="2.469596875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.459909375" y="2.469596875"/>
<vertex x="-1.459909375" y="1.480403125"/>
<vertex x="-1.04071875" y="1.480403125"/>
<vertex x="-1.04071875" y="2.469596875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.4135" y="1.4135"/>
<vertex x="1.4135" y="1.4135"/>
<vertex x="1.4135" y="0.9874"/>
<vertex x="-1.4135" y="0.9874"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.4135" y="0.5874"/>
<vertex x="1.4135" y="0.5874"/>
<vertex x="1.4135" y="0.2"/>
<vertex x="-1.4135" y="0.2"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.4135" y="-0.2"/>
<vertex x="1.4135" y="-0.2"/>
<vertex x="1.4135" y="-0.5874"/>
<vertex x="-1.4135" y="-0.5874"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.4135" y="-0.9874"/>
<vertex x="1.4135" y="-0.9874"/>
<vertex x="1.4135" y="-1.4135"/>
<vertex x="-1.4135" y="-1.4135"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.4135" y="1.4135"/>
<vertex x="-0.9874" y="1.4135"/>
<vertex x="-0.9874" y="-1.4135"/>
<vertex x="-1.4135" y="-1.4135"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-0.2" y="1.4135"/>
<vertex x="-0.5874" y="1.4135"/>
<vertex x="-0.5874" y="-1.4135"/>
<vertex x="-0.2" y="-1.4135"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="0.5874" y="1.4135"/>
<vertex x="0.2" y="1.4135"/>
<vertex x="0.2" y="-1.4135"/>
<vertex x="0.5874" y="-1.4135"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="0.9874" y="1.4135"/>
<vertex x="1.4135" y="1.4135"/>
<vertex x="1.4135" y="-1.4135"/>
<vertex x="0.9874" y="-1.4135"/>
</polygon>
<wire x1="-2.0828" y1="0.8128" x2="-0.8128" y2="2.0828" width="0.1524" layer="51"/>
<wire x1="-2.0828" y1="-2.0828" x2="2.0828" y2="-2.0828" width="0.1524" layer="51"/>
<wire x1="2.0828" y1="-2.0828" x2="2.0828" y2="2.0828" width="0.1524" layer="51"/>
<wire x1="2.0828" y1="2.0828" x2="-2.0828" y2="2.0828" width="0.1524" layer="51"/>
<wire x1="-2.0828" y1="2.0828" x2="-2.0828" y2="-2.0828" width="0.1524" layer="51"/>
<text x="-1.8796" y="0.8636" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
</package>
<package name="20M1">
<smd name="1" x="-1.9304" y="1" dx="0.3048" dy="0.762" layer="1" rot="R270"/>
<smd name="2" x="-1.9304" y="0.5" dx="0.3048" dy="0.762" layer="1" rot="R270"/>
<smd name="3" x="-1.9304" y="0" dx="0.3048" dy="0.762" layer="1" rot="R270"/>
<smd name="4" x="-1.9304" y="-0.5" dx="0.3048" dy="0.762" layer="1" rot="R270"/>
<smd name="5" x="-1.9304" y="-1" dx="0.3048" dy="0.762" layer="1" rot="R270"/>
<smd name="6" x="-1" y="-1.9304" dx="0.3048" dy="0.762" layer="1" rot="R180"/>
<smd name="7" x="-0.5" y="-1.9304" dx="0.3048" dy="0.762" layer="1" rot="R180"/>
<smd name="8" x="0" y="-1.9304" dx="0.3048" dy="0.762" layer="1" rot="R180"/>
<smd name="9" x="0.5" y="-1.9304" dx="0.3048" dy="0.762" layer="1" rot="R180"/>
<smd name="10" x="1" y="-1.9304" dx="0.3048" dy="0.762" layer="1" rot="R180"/>
<smd name="11" x="1.9304" y="-1" dx="0.3048" dy="0.762" layer="1" rot="R270"/>
<smd name="12" x="1.9304" y="-0.5" dx="0.3048" dy="0.762" layer="1" rot="R270"/>
<smd name="13" x="1.9304" y="0" dx="0.3048" dy="0.762" layer="1" rot="R270"/>
<smd name="14" x="1.9304" y="0.5" dx="0.3048" dy="0.762" layer="1" rot="R270"/>
<smd name="15" x="1.9304" y="1" dx="0.3048" dy="0.762" layer="1" rot="R270"/>
<smd name="16" x="1" y="1.9304" dx="0.3048" dy="0.762" layer="1" rot="R180"/>
<smd name="17" x="0.5" y="1.9304" dx="0.3048" dy="0.762" layer="1" rot="R180"/>
<smd name="18" x="0" y="1.9304" dx="0.3048" dy="0.762" layer="1" rot="R180"/>
<smd name="19" x="-0.5" y="1.9304" dx="0.3048" dy="0.762" layer="1" rot="R180"/>
<smd name="20" x="-1" y="1.9304" dx="0.3048" dy="0.762" layer="1" rot="R180"/>
<smd name="21" x="0" y="0" dx="2.7432" dy="2.7432" layer="1" cream="no"/>
<wire x1="-2.1336" y1="-2.1336" x2="-1.4732" y2="-2.1336" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="-2.1336" x2="2.1336" y2="-1.4732" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="2.1336" x2="1.4732" y2="2.1336" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="2.1336" x2="-2.1336" y2="1.4732" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="-1.4732" x2="-2.1336" y2="-2.1336" width="0.1524" layer="21"/>
<wire x1="1.4732" y1="-2.1336" x2="2.1336" y2="-2.1336" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="1.4732" x2="2.1336" y2="2.1336" width="0.1524" layer="21"/>
<wire x1="-1.4732" y1="2.1336" x2="-2.1336" y2="2.1336" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="0.8095" y="-2.5654"/>
<vertex x="0.8095" y="-2.8194"/>
<vertex x="1.1905" y="-2.8194"/>
<vertex x="1.1905" y="-2.5654"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.1905" y="2.5654"/>
<vertex x="-1.1905" y="2.8194"/>
<vertex x="-0.8095" y="2.8194"/>
<vertex x="-0.8095" y="2.5654"/>
</polygon>
<text x="-3.5306" y="0.9906" size="1.27" layer="21" font="vector" ratio="6" rot="SR0">*</text>
<text x="-2.0066" y="3.175" size="1.27" layer="21" font="vector" ratio="6" rot="SR0">&gt;Name</text>
<polygon width="0.0254" layer="31">
<vertex x="-1.2716" y="1.2716"/>
<vertex x="-1.2716" y="0.1"/>
<vertex x="-0.1" y="0.1"/>
<vertex x="-0.1" y="1.2716"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.2716" y="-0.1"/>
<vertex x="-1.2716" y="-1.2716"/>
<vertex x="-0.1" y="-1.2716"/>
<vertex x="-0.1" y="-0.1"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.1" y="1.2716"/>
<vertex x="0.1" y="0.1"/>
<vertex x="1.2716" y="0.1"/>
<vertex x="1.2716" y="1.2716"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.1" y="-0.1"/>
<vertex x="0.1" y="-1.2716"/>
<vertex x="1.2716" y="-1.2716"/>
<vertex x="1.2716" y="-0.1"/>
</polygon>
<wire x1="-2.0066" y1="0.7366" x2="-0.7366" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-2.0066" x2="2.0066" y2="-2.0066" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-2.0066" x2="2.0066" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="2.0066" x2="-2.0066" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="2.0066" x2="-2.0066" y2="-2.0066" width="0.1524" layer="51"/>
<text x="-2.0828" y="0.9906" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
</package>
<package name="20M1-M">
<smd name="1" x="-1.9558" y="1" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="2" x="-1.9558" y="0.5" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="3" x="-1.9558" y="0" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="4" x="-1.9558" y="-0.5" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="5" x="-1.9558" y="-1" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="6" x="-1" y="-1.9558" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="7" x="-0.5" y="-1.9558" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="8" x="0" y="-1.9558" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="9" x="0.5" y="-1.9558" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="10" x="1" y="-1.9558" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="11" x="1.9558" y="-1" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="12" x="1.9558" y="-0.5" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="13" x="1.9558" y="0" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="14" x="1.9558" y="0.5" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="15" x="1.9558" y="1" dx="0.3048" dy="0.9144" layer="1" rot="R270"/>
<smd name="16" x="1" y="1.9558" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="17" x="0.5" y="1.9558" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="18" x="0" y="1.9558" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="19" x="-0.5" y="1.9558" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="20" x="-1" y="1.9558" dx="0.3048" dy="0.9144" layer="1" rot="R180"/>
<smd name="21" x="0" y="0" dx="2.7432" dy="2.7432" layer="1" cream="no"/>
<wire x1="-2.1336" y1="-2.1336" x2="-1.4732" y2="-2.1336" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="-2.1336" x2="2.1336" y2="-1.4732" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="2.1336" x2="1.4732" y2="2.1336" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="2.1336" x2="-2.1336" y2="1.4732" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="-1.4732" x2="-2.1336" y2="-2.1336" width="0.1524" layer="21"/>
<wire x1="1.4732" y1="-2.1336" x2="2.1336" y2="-2.1336" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="1.4732" x2="2.1336" y2="2.1336" width="0.1524" layer="21"/>
<wire x1="-1.4732" y1="2.1336" x2="-2.1336" y2="2.1336" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="0.8095" y="-2.667"/>
<vertex x="0.8095" y="-2.921"/>
<vertex x="1.1905" y="-2.921"/>
<vertex x="1.1905" y="-2.667"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.1905" y="2.667"/>
<vertex x="-1.1905" y="2.921"/>
<vertex x="-0.8095" y="2.921"/>
<vertex x="-0.8095" y="2.667"/>
</polygon>
<text x="-3.6322" y="0.9906" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
<polygon width="0.0254" layer="31">
<vertex x="-1.2716" y="1.2716"/>
<vertex x="-1.2716" y="0.1"/>
<vertex x="-0.1" y="0.1"/>
<vertex x="-0.1" y="1.2716"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.2716" y="-0.1"/>
<vertex x="-1.2716" y="-1.2716"/>
<vertex x="-0.1" y="-1.2716"/>
<vertex x="-0.1" y="-0.1"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.1" y="1.2716"/>
<vertex x="0.1" y="0.1"/>
<vertex x="1.2716" y="0.1"/>
<vertex x="1.2716" y="1.2716"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.1" y="-0.1"/>
<vertex x="0.1" y="-1.2716"/>
<vertex x="1.2716" y="-1.2716"/>
<vertex x="1.2716" y="-0.1"/>
</polygon>
<wire x1="-2.0066" y1="0.7366" x2="-0.7366" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-2.0066" x2="2.0066" y2="-2.0066" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-2.0066" x2="2.0066" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="2.0066" x2="-2.0066" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="2.0066" x2="-2.0066" y2="-2.0066" width="0.1524" layer="51"/>
<text x="-2.0828" y="0.9906" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
</package>
<package name="20M1-L">
<smd name="1" x="-1.8542" y="1" dx="0.3048" dy="0.7112" layer="1" rot="R270"/>
<smd name="2" x="-1.8542" y="0.5" dx="0.3048" dy="0.7112" layer="1" rot="R270"/>
<smd name="3" x="-1.8542" y="0" dx="0.3048" dy="0.7112" layer="1" rot="R270"/>
<smd name="4" x="-1.8542" y="-0.5" dx="0.3048" dy="0.7112" layer="1" rot="R270"/>
<smd name="5" x="-1.8542" y="-1" dx="0.3048" dy="0.7112" layer="1" rot="R270"/>
<smd name="6" x="-1" y="-1.8542" dx="0.3048" dy="0.7112" layer="1" rot="R180"/>
<smd name="7" x="-0.5" y="-1.8542" dx="0.3048" dy="0.7112" layer="1" rot="R180"/>
<smd name="8" x="0" y="-1.8542" dx="0.3048" dy="0.7112" layer="1" rot="R180"/>
<smd name="9" x="0.5" y="-1.8542" dx="0.3048" dy="0.7112" layer="1" rot="R180"/>
<smd name="10" x="1" y="-1.8542" dx="0.3048" dy="0.7112" layer="1" rot="R180"/>
<smd name="11" x="1.8542" y="-1" dx="0.3048" dy="0.7112" layer="1" rot="R270"/>
<smd name="12" x="1.8542" y="-0.5" dx="0.3048" dy="0.7112" layer="1" rot="R270"/>
<smd name="13" x="1.8542" y="0" dx="0.3048" dy="0.7112" layer="1" rot="R270"/>
<smd name="14" x="1.8542" y="0.5" dx="0.3048" dy="0.7112" layer="1" rot="R270"/>
<smd name="15" x="1.8542" y="1" dx="0.3048" dy="0.7112" layer="1" rot="R270"/>
<smd name="16" x="1" y="1.8542" dx="0.3048" dy="0.7112" layer="1" rot="R180"/>
<smd name="17" x="0.5" y="1.8542" dx="0.3048" dy="0.7112" layer="1" rot="R180"/>
<smd name="18" x="0" y="1.8542" dx="0.3048" dy="0.7112" layer="1" rot="R180"/>
<smd name="19" x="-0.5" y="1.8542" dx="0.3048" dy="0.7112" layer="1" rot="R180"/>
<smd name="20" x="-1" y="1.8542" dx="0.3048" dy="0.7112" layer="1" rot="R180"/>
<smd name="21" x="0" y="0" dx="2.7432" dy="2.7432" layer="1" cream="no"/>
<wire x1="-2.1336" y1="-2.1336" x2="-1.4732" y2="-2.1336" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="-2.1336" x2="2.1336" y2="-1.4732" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="2.1336" x2="1.4732" y2="2.1336" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="2.1336" x2="-2.1336" y2="1.4732" width="0.1524" layer="21"/>
<wire x1="-2.1336" y1="-1.4732" x2="-2.1336" y2="-2.1336" width="0.1524" layer="21"/>
<wire x1="1.4732" y1="-2.1336" x2="2.1336" y2="-2.1336" width="0.1524" layer="21"/>
<wire x1="2.1336" y1="1.4732" x2="2.1336" y2="2.1336" width="0.1524" layer="21"/>
<wire x1="-1.4732" y1="2.1336" x2="-2.1336" y2="2.1336" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="0.8095" y="-2.4638"/>
<vertex x="0.8095" y="-2.7178"/>
<vertex x="1.1905" y="-2.7178"/>
<vertex x="1.1905" y="-2.4638"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.1905" y="2.4638"/>
<vertex x="-1.1905" y="2.7178"/>
<vertex x="-0.8095" y="2.7178"/>
<vertex x="-0.8095" y="2.4638"/>
</polygon>
<text x="-3.429" y="0.9906" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
<polygon width="0.0254" layer="31">
<vertex x="-1.2716" y="1.2716"/>
<vertex x="-1.2716" y="0.1"/>
<vertex x="-0.1" y="0.1"/>
<vertex x="-0.1" y="1.2716"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.2716" y="-0.1"/>
<vertex x="-1.2716" y="-1.2716"/>
<vertex x="-0.1" y="-1.2716"/>
<vertex x="-0.1" y="-0.1"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.1" y="1.2716"/>
<vertex x="0.1" y="0.1"/>
<vertex x="1.2716" y="0.1"/>
<vertex x="1.2716" y="1.2716"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="0.1" y="-0.1"/>
<vertex x="0.1" y="-1.2716"/>
<vertex x="1.2716" y="-1.2716"/>
<vertex x="1.2716" y="-0.1"/>
</polygon>
<wire x1="-2.0066" y1="0.7366" x2="-0.7366" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-2.0066" x2="2.0066" y2="-2.0066" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-2.0066" x2="2.0066" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="2.0066" x2="-2.0066" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="2.0066" x2="-2.0066" y2="-2.0066" width="0.1524" layer="51"/>
<text x="-2.0828" y="0.9906" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
</package>
<package name="PERIODIC_SYMBOL_BACK">
<text x="2.6416" y="1.143" size="0.762" layer="26" font="vector" rot="MR0" align="bottom-center">&gt;NAME</text>
<text x="2.6416" y="-0.2286" size="0.762" layer="26" font="vector" rot="MR0" align="bottom-center">&gt;VALUE</text>
<text x="2.54" y="2.54" size="2.286" layer="26" ratio="25" rot="MR0" align="bottom-center">&gt;ELEMENT</text>
<rectangle x1="-1.27" y1="5.715" x2="6.35" y2="6.35" layer="26"/>
<rectangle x1="5.715" y1="-1.27" x2="6.35" y2="6.35" layer="26"/>
<rectangle x1="-1.27" y1="-1.27" x2="6.35" y2="-0.635" layer="26"/>
<rectangle x1="-1.27" y1="-1.27" x2="-0.635" y2="6.35" layer="26"/>
</package>
</packages>
<symbols>
<symbol name="BQ24168RGET">
<pin name="NC" x="2.54" y="0" length="middle" direction="nc"/>
<pin name="PSEL" x="2.54" y="-2.54" length="middle" direction="in"/>
<pin name="SCL" x="2.54" y="-5.08" length="middle" direction="in"/>
<pin name="SDA" x="2.54" y="-7.62" length="middle"/>
<pin name="GND" x="2.54" y="-10.16" length="middle" direction="pwr"/>
<pin name="DRV" x="2.54" y="-12.7" length="middle" direction="out"/>
<pin name="!BATGD" x="2.54" y="-15.24" length="middle" direction="pas"/>
<pin name="STAT" x="2.54" y="-17.78" length="middle" direction="out"/>
<pin name="TS" x="2.54" y="-20.32" length="middle" direction="in"/>
<pin name="BGATE" x="2.54" y="-22.86" length="middle" direction="out"/>
<pin name="BAT_2" x="2.54" y="-25.4" length="middle"/>
<pin name="BAT" x="2.54" y="-27.94" length="middle"/>
<pin name="SYS_2" x="43.18" y="-30.48" length="middle" direction="in" rot="R180"/>
<pin name="SYS" x="43.18" y="-27.94" length="middle" direction="in" rot="R180"/>
<pin name="PGND_2" x="43.18" y="-25.4" length="middle" direction="pwr" rot="R180"/>
<pin name="SGND" x="43.18" y="-22.86" length="middle" direction="pwr" rot="R180"/>
<pin name="PGND" x="43.18" y="-20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="SW" x="43.18" y="-17.78" length="middle" direction="out" rot="R180"/>
<pin name="BOOT" x="43.18" y="-15.24" length="middle" direction="in" rot="R180"/>
<pin name="PMIDI" x="43.18" y="-12.7" length="middle" direction="out" rot="R180"/>
<pin name="IN" x="43.18" y="-10.16" length="middle" direction="in" rot="R180"/>
<pin name="USB" x="43.18" y="-7.62" length="middle" direction="in" rot="R180"/>
<pin name="PMIDU" x="43.18" y="-5.08" length="middle" direction="out" rot="R180"/>
<pin name="CD" x="43.18" y="-2.54" length="middle" direction="in" rot="R180"/>
<pin name="EPAD" x="43.18" y="0" length="middle" direction="pas" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-35.56" x2="38.1" y2="-35.56" width="0.1524" layer="94"/>
<wire x1="38.1" y1="-35.56" x2="38.1" y2="5.08" width="0.1524" layer="94"/>
<wire x1="38.1" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="18.1356" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="17.5006" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="ATTINY84-20MU">
<pin name="(ADC4/USCK/SCL/T1/PCINT4)_PA4" x="2.54" y="0" length="middle"/>
<pin name="(ADC3/T0/PCINT3)_PA3" x="2.54" y="-2.54" length="middle"/>
<pin name="(ADC2/AIN1/PCINT2)_PA2" x="2.54" y="-5.08" length="middle"/>
<pin name="(ADC1/AIN0/PCINT1)_PA1" x="2.54" y="-7.62" length="middle"/>
<pin name="(ADC0/AREF/PCINT0)_PA0" x="2.54" y="-10.16" length="middle"/>
<pin name="DNC_2" x="2.54" y="-12.7" length="middle" direction="pas"/>
<pin name="DNC_3" x="2.54" y="-15.24" length="middle" direction="pas"/>
<pin name="GND" x="2.54" y="-17.78" length="middle" direction="pwr"/>
<pin name="VCC" x="2.54" y="-20.32" length="middle" direction="pwr"/>
<pin name="DNC_4" x="2.54" y="-22.86" length="middle" direction="pas"/>
<pin name="PB0_(PCINT8/XTAL1/CLKI)" x="165.1" y="-25.4" length="middle" rot="R180"/>
<pin name="PB1_(PCINT9/XTAL2)" x="165.1" y="-22.86" length="middle" rot="R180"/>
<pin name="PB3_(PCINT11/RESET!/DW)" x="165.1" y="-20.32" length="middle" rot="R180"/>
<pin name="PB2_(PCINT10/INT0/OC0A/CKOUT)" x="165.1" y="-17.78" length="middle" rot="R180"/>
<pin name="PA7_(PCINT7/ICP/OC0B/ADC7)" x="165.1" y="-15.24" length="middle" rot="R180"/>
<pin name="PA6" x="165.1" y="-12.7" length="middle" rot="R180"/>
<pin name="DNC_5" x="165.1" y="-10.16" length="middle" direction="pas" rot="R180"/>
<pin name="DNC_6" x="165.1" y="-7.62" length="middle" direction="pas" rot="R180"/>
<pin name="DNC" x="165.1" y="-5.08" length="middle" direction="pas" rot="R180"/>
<pin name="PA5" x="165.1" y="-2.54" length="middle" rot="R180"/>
<pin name="21" x="165.1" y="0" length="middle" direction="pas" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-30.48" x2="160.02" y2="-30.48" width="0.1524" layer="94"/>
<wire x1="160.02" y1="-30.48" x2="160.02" y2="5.08" width="0.1524" layer="94"/>
<wire x1="160.02" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="79.0956" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="78.4606" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="BOARD_REVISION">
<text x="3.81" y="0" size="1.778" layer="94" font="vector" align="bottom-center">&gt;ELEMENT</text>
<text x="3.81" y="-2.54" size="1.27" layer="94" font="vector" align="bottom-center">&gt;NAME</text>
<text x="3.81" y="-5.08" size="1.27" layer="94" align="bottom-center">&gt;VALUE</text>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-7.62" width="2.54" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="10.16" y2="-7.62" width="2.54" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="5.08" width="2.54" layer="94"/>
<wire x1="10.16" y1="5.08" x2="-2.54" y2="5.08" width="2.54" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BQ24168RGET" prefix="U">
<gates>
<gate name="A" symbol="BQ24168RGET" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RGE24_2P7X2P7">
<connects>
<connect gate="A" pin="!BATGD" pad="7"/>
<connect gate="A" pin="BAT" pad="12"/>
<connect gate="A" pin="BAT_2" pad="11"/>
<connect gate="A" pin="BGATE" pad="10"/>
<connect gate="A" pin="BOOT" pad="19"/>
<connect gate="A" pin="CD" pad="24"/>
<connect gate="A" pin="DRV" pad="6"/>
<connect gate="A" pin="EPAD" pad="25"/>
<connect gate="A" pin="GND" pad="5"/>
<connect gate="A" pin="IN" pad="21"/>
<connect gate="A" pin="NC" pad="1"/>
<connect gate="A" pin="PGND" pad="17"/>
<connect gate="A" pin="PGND_2" pad="15"/>
<connect gate="A" pin="PMIDI" pad="20"/>
<connect gate="A" pin="PMIDU" pad="23"/>
<connect gate="A" pin="PSEL" pad="2"/>
<connect gate="A" pin="SCL" pad="3"/>
<connect gate="A" pin="SDA" pad="4"/>
<connect gate="A" pin="SGND" pad="16"/>
<connect gate="A" pin="STAT" pad="8"/>
<connect gate="A" pin="SW" pad="18"/>
<connect gate="A" pin="SYS" pad="14"/>
<connect gate="A" pin="SYS_2" pad="13"/>
<connect gate="A" pin="TS" pad="9"/>
<connect gate="A" pin="USB" pad="22"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="bq24168rget" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="ATTINY84-20MU" prefix="U">
<gates>
<gate name="A" symbol="ATTINY84-20MU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="20M1">
<connects>
<connect gate="A" pin="(ADC0/AREF/PCINT0)_PA0" pad="5"/>
<connect gate="A" pin="(ADC1/AIN0/PCINT1)_PA1" pad="4"/>
<connect gate="A" pin="(ADC2/AIN1/PCINT2)_PA2" pad="3"/>
<connect gate="A" pin="(ADC3/T0/PCINT3)_PA3" pad="2"/>
<connect gate="A" pin="(ADC4/USCK/SCL/T1/PCINT4)_PA4" pad="1"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="DNC" pad="19"/>
<connect gate="A" pin="DNC_2" pad="6"/>
<connect gate="A" pin="DNC_3" pad="7"/>
<connect gate="A" pin="DNC_4" pad="10"/>
<connect gate="A" pin="DNC_5" pad="17"/>
<connect gate="A" pin="DNC_6" pad="18"/>
<connect gate="A" pin="GND" pad="8"/>
<connect gate="A" pin="PA5" pad="20"/>
<connect gate="A" pin="PA6" pad="16"/>
<connect gate="A" pin="PA7_(PCINT7/ICP/OC0B/ADC7)" pad="15"/>
<connect gate="A" pin="PB0_(PCINT8/XTAL1/CLKI)" pad="11"/>
<connect gate="A" pin="PB1_(PCINT9/XTAL2)" pad="12"/>
<connect gate="A" pin="PB2_(PCINT10/INT0/OC0A/CKOUT)" pad="14"/>
<connect gate="A" pin="PB3_(PCINT11/RESET!/DW)" pad="13"/>
<connect gate="A" pin="VCC" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="ATTINY8420MU" constant="no"/>
<attribute name="VENDOR" value="Atmel" constant="no"/>
</technology>
</technologies>
</device>
<device name="20M1-M" package="20M1-M">
<connects>
<connect gate="A" pin="(ADC0/AREF/PCINT0)_PA0" pad="5"/>
<connect gate="A" pin="(ADC1/AIN0/PCINT1)_PA1" pad="4"/>
<connect gate="A" pin="(ADC2/AIN1/PCINT2)_PA2" pad="3"/>
<connect gate="A" pin="(ADC3/T0/PCINT3)_PA3" pad="2"/>
<connect gate="A" pin="(ADC4/USCK/SCL/T1/PCINT4)_PA4" pad="1"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="DNC" pad="19"/>
<connect gate="A" pin="DNC_2" pad="6"/>
<connect gate="A" pin="DNC_3" pad="7"/>
<connect gate="A" pin="DNC_4" pad="10"/>
<connect gate="A" pin="DNC_5" pad="17"/>
<connect gate="A" pin="DNC_6" pad="18"/>
<connect gate="A" pin="GND" pad="8"/>
<connect gate="A" pin="PA5" pad="20"/>
<connect gate="A" pin="PA6" pad="16"/>
<connect gate="A" pin="PA7_(PCINT7/ICP/OC0B/ADC7)" pad="15"/>
<connect gate="A" pin="PB0_(PCINT8/XTAL1/CLKI)" pad="11"/>
<connect gate="A" pin="PB1_(PCINT9/XTAL2)" pad="12"/>
<connect gate="A" pin="PB2_(PCINT10/INT0/OC0A/CKOUT)" pad="14"/>
<connect gate="A" pin="PB3_(PCINT11/RESET!/DW)" pad="13"/>
<connect gate="A" pin="VCC" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="ATTINY8420MU" constant="no"/>
<attribute name="VENDOR" value="Atmel" constant="no"/>
</technology>
</technologies>
</device>
<device name="20M1-L" package="20M1-L">
<connects>
<connect gate="A" pin="(ADC0/AREF/PCINT0)_PA0" pad="5"/>
<connect gate="A" pin="(ADC1/AIN0/PCINT1)_PA1" pad="4"/>
<connect gate="A" pin="(ADC2/AIN1/PCINT2)_PA2" pad="3"/>
<connect gate="A" pin="(ADC3/T0/PCINT3)_PA3" pad="2"/>
<connect gate="A" pin="(ADC4/USCK/SCL/T1/PCINT4)_PA4" pad="1"/>
<connect gate="A" pin="21" pad="21"/>
<connect gate="A" pin="DNC" pad="19"/>
<connect gate="A" pin="DNC_2" pad="6"/>
<connect gate="A" pin="DNC_3" pad="7"/>
<connect gate="A" pin="DNC_4" pad="10"/>
<connect gate="A" pin="DNC_5" pad="17"/>
<connect gate="A" pin="DNC_6" pad="18"/>
<connect gate="A" pin="GND" pad="8"/>
<connect gate="A" pin="PA5" pad="20"/>
<connect gate="A" pin="PA6" pad="16"/>
<connect gate="A" pin="PA7_(PCINT7/ICP/OC0B/ADC7)" pad="15"/>
<connect gate="A" pin="PB0_(PCINT8/XTAL1/CLKI)" pad="11"/>
<connect gate="A" pin="PB1_(PCINT9/XTAL2)" pad="12"/>
<connect gate="A" pin="PB2_(PCINT10/INT0/OC0A/CKOUT)" pad="14"/>
<connect gate="A" pin="PB3_(PCINT11/RESET!/DW)" pad="13"/>
<connect gate="A" pin="VCC" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="ATTINY8420MU" constant="no"/>
<attribute name="VENDOR" value="Atmel" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PERIODIC_SYMBOL" prefix="X" uservalue="yes">
<gates>
<gate name="G$1" symbol="BOARD_REVISION" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PERIODIC_SYMBOL_BACK">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="32bits" deviceset="BQ24168RGET" device=""/>
<part name="U2" library="32bits" deviceset="ATTINY84-20MU" device="20M1-L"/>
<part name="5" library="32bits" deviceset="PERIODIC_SYMBOL" device="" value="rev.0"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="2.54" y="40.64"/>
<instance part="U2" gate="A" x="71.12" y="40.64"/>
<instance part="5" gate="G$1" x="-17.78" y="68.58" smashed="yes">
<attribute name="NAME" x="-13.97" y="66.04" size="1.27" layer="94" font="vector" align="bottom-center"/>
<attribute name="VALUE" x="-13.97" y="63.5" size="1.27" layer="94" align="bottom-center"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>

<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.1.1">
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
<wire x1="-2.0066" y1="0.7366" x2="-0.7366" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="-2.0066" x2="2.0066" y2="-2.0066" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="-2.0066" x2="2.0066" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="2.0066" y1="2.0066" x2="-2.0066" y2="2.0066" width="0.1524" layer="51"/>
<wire x1="-2.0066" y1="2.0066" x2="-2.0066" y2="-2.0066" width="0.1524" layer="51"/>
<text x="-2.0828" y="0.9906" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
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
<package name="VQFN7">
<smd name="P$3" x="0.25" y="0.9" dx="0.25" dy="0.6" layer="1" roundness="25"/>
<smd name="P$2" x="-0.25" y="0.9" dx="0.25" dy="0.6" layer="1" roundness="25"/>
<smd name="P$4" x="0.75" y="0.9" dx="0.25" dy="0.6" layer="1" roundness="25"/>
<smd name="P$1" x="-0.75" y="0.9" dx="0.25" dy="0.6" layer="1" roundness="25"/>
<smd name="P$5" x="0" y="-0.015" dx="0.25" dy="2.38" layer="1" roundness="20" rot="R90"/>
<smd name="P$6" x="0.8" y="-0.54" dx="0.8" dy="0.3" layer="1" roundness="20"/>
<smd name="P$7" x="-0.60025" y="-0.54" dx="1.2005" dy="0.3" layer="1" roundness="20"/>
<circle x="-1.25" y="2" radius="0.25" width="0.25" layer="21"/>
<wire x1="-1.19" y1="1.19" x2="1.19" y2="1.19" width="0.25" layer="51"/>
<wire x1="1.19" y1="1.19" x2="1.19" y2="-1.19" width="0.25" layer="51"/>
<wire x1="1.19" y1="-1.19" x2="-1.19" y2="-1.19" width="0.25" layer="51"/>
<wire x1="-1.19" y1="-1.19" x2="-1.19" y2="1.19" width="0.25" layer="51"/>
<text x="0" y="2.54" size="1.27" layer="21" align="bottom-center">&gt;NAME</text>
<text x="0" y="-3.175" size="1.27" layer="21" align="bottom-center">&gt;VALUE</text>
</package>
<package name="SO-8">
<smd name="P$1" x="0" y="0" dx="1.27" dy="0.6096" layer="1" thermals="no"/>
<smd name="P$2" x="0" y="-1.27" dx="1.27" dy="0.6096" layer="1" thermals="no"/>
<smd name="P$3" x="0" y="-2.54" dx="1.27" dy="0.6096" layer="1" thermals="no"/>
<smd name="P$4" x="0" y="-3.81" dx="1.27" dy="0.6096" layer="1" thermals="no"/>
<smd name="P$5" x="5.461" y="-3.81" dx="1.016" dy="0.6096" layer="1" thermals="no"/>
<smd name="P$9" x="3.3528" y="-1.905" dx="3.9116" dy="3.81" layer="1" thermals="no"/>
<smd name="P$6" x="5.461" y="-2.54" dx="1.016" dy="0.6096" layer="1" thermals="no"/>
<smd name="P$7" x="5.461" y="-1.27" dx="1.016" dy="0.6096" layer="1" thermals="no"/>
<smd name="P$8" x="5.461" y="0" dx="1.016" dy="0.6096" layer="1" thermals="no"/>
<text x="0" y="1.27" size="1.27" layer="25">&gt;NAME</text>
<text x="0" y="-6.35" size="1.27" layer="25">&gt;VALUE</text>
<wire x1="-0.5842" y1="0.254" x2="-0.5842" y2="-4.0894" width="0.127" layer="21"/>
<wire x1="-0.5842" y1="-4.0894" x2="5.9182" y2="-4.0894" width="0.127" layer="21"/>
<wire x1="5.9182" y1="-4.0894" x2="5.9182" y2="0.254" width="0.127" layer="21"/>
<wire x1="5.9182" y1="0.254" x2="-0.5842" y2="0.254" width="0.127" layer="21"/>
</package>
<package name="DR73">
<smd name="1" x="-2.9972" y="0" dx="2.4892" dy="3.2512" layer="1"/>
<smd name="2" x="2.9972" y="0" dx="2.4892" dy="3.2512" layer="1"/>
<wire x1="-3.937" y1="-3.937" x2="3.937" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="3.937" y1="-3.937" x2="3.937" y2="-1.9558" width="0.1524" layer="21"/>
<wire x1="3.937" y1="3.937" x2="-3.937" y2="3.937" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="3.937" x2="-3.937" y2="1.9558" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="-1.9558" x2="-3.937" y2="-3.937" width="0.1524" layer="21"/>
<wire x1="3.937" y1="1.9558" x2="3.937" y2="3.937" width="0.1524" layer="21"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
<wire x1="-3.81" y1="-3.81" x2="3.81" y2="-3.81" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-3.81" x2="3.81" y2="3.81" width="0.1524" layer="51"/>
<wire x1="3.81" y1="3.81" x2="-3.81" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="3.81" x2="-3.81" y2="-3.81" width="0.1524" layer="51"/>
</package>
<package name="1206">
<wire x1="-2.4" y1="1.1" x2="2.4" y2="1.1" width="0.0508" layer="39"/>
<wire x1="2.4" y1="-1.1" x2="-2.4" y2="-1.1" width="0.0508" layer="39"/>
<wire x1="-2.4" y1="-1.1" x2="-2.4" y2="1.1" width="0.0508" layer="39"/>
<wire x1="2.4" y1="1.1" x2="2.4" y2="-1.1" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="0" y="1.143" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.143" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
<package name="RASM722">
<smd name="SHUNT" x="-7.1882" y="6.7564" dx="6.35" dy="3.81" layer="1" rot="R90"/>
<smd name="SLEEVE" x="6.1468" y="6.7564" dx="6.35" dy="3.302" layer="1" rot="R90"/>
<smd name="TIP" x="0" y="15.9004" dx="3.302" dy="4.064" layer="1"/>
<wire x1="-4.826" y1="0" x2="-4.826" y2="14.478" width="0.127" layer="21"/>
<wire x1="-4.826" y1="14.478" x2="4.064" y2="14.478" width="0.127" layer="21"/>
<wire x1="4.064" y1="14.478" x2="4.064" y2="0" width="0.127" layer="21"/>
<wire x1="-4.064" y1="19.05" x2="-4.064" y2="16.51" width="0.635" layer="21"/>
<wire x1="-5.334" y1="17.78" x2="-2.794" y2="17.78" width="0.635" layer="21"/>
<wire x1="5.588" y1="11.684" x2="8.128" y2="11.684" width="0.635" layer="21"/>
<polygon width="0.127" layer="21">
<vertex x="-4.826" y="0"/>
<vertex x="4.064" y="0"/>
<vertex x="4.064" y="3.302"/>
<vertex x="-4.826" y="3.302"/>
</polygon>
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
<text x="0" y="1.905" size="1.778" layer="94" font="vector" align="bottom-center">&gt;ELEMENT</text>
<text x="0" y="-0.635" size="1.27" layer="94" font="vector" align="bottom-center">&gt;NAME</text>
<text x="0" y="-3.175" size="1.27" layer="94" align="bottom-center">&gt;VALUE</text>
<polygon width="0.254" layer="94">
<vertex x="-6.6675" y="6.35"/>
<vertex x="6.6675" y="6.35"/>
<vertex x="6.6675" y="5.08"/>
<vertex x="-6.6675" y="5.08"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="-6.6675" y="5.08"/>
<vertex x="-6.6675" y="-5.715"/>
<vertex x="-5.3975" y="-5.715"/>
<vertex x="-5.3975" y="5.08"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="6.6675" y="5.08"/>
<vertex x="6.6675" y="-5.715"/>
<vertex x="5.3975" y="-5.715"/>
<vertex x="5.3975" y="5.08"/>
</polygon>
<polygon width="0.254" layer="94">
<vertex x="-6.6675" y="-5.715"/>
<vertex x="-6.6675" y="-6.985"/>
<vertex x="6.6675" y="-6.985"/>
<vertex x="6.6675" y="-5.715"/>
</polygon>
</symbol>
<symbol name="TPS61230A">
<description>&lt;h1&gt;TPS61230A&lt;/h1&gt;
&lt;h2&gt;5-V / 6-A High Efficiency Step-Up Converter in 2.0-mm x 2.0-mm&lt;/h2&gt;
&lt;ul&gt;
&lt;li&gt;Input Voltage Range: 2.5 V to 4.5 V
&lt;li&gt;Output Voltage Range: 2.5 V to 5.5 V
&lt;li&gt;Two 21-mΩ (LS) / 18-mΩ (HS) MOSFETs
&lt;li&gt;20-μA Quiescent Current
&lt;li&gt;6-A Valley Switching Current Limit
&lt;li&gt;1.15-MHz Quasi-Constant Switching Frequency
&lt;li&gt;PFM Operation at the Light Load
&lt;li&gt;1.05-ms Soft Start Time
&lt;li&gt;True Load Disconnect
&lt;li&gt;NOT Support Vin &gt; Vout Operation
&lt;li&gt;Output Short Protection
&lt;li&gt;Over Voltage Protection
&lt;li&gt;Thermal Shutdown
&lt;li&gt;2.0-mm x 2.0-mm VQFN 7-Pin Package
&lt;/ul&gt;
&lt;h2&gt;Description&lt;/h2&gt;
&lt;p&gt;The TPS61230A device is a high efficiency fully
integrated synchronous boost converter. It integrates
6-A, 21-mΩ and 18-mΩ power switches, which is
capable of delivering up to 2.4-A output current at 5-V
output with the 2.5-V input supply. The low RDS_ON
switches enable the power conversion efficiency up to
96% and minimize the thermal stress in very compact
solution size.
The typical operating frequency is 1.15 MHz, which
allows the use of small inductor and capacitors to
achieve a small solution size. The TPS61230A
provides an adjustable output voltage via an external
resistor divider.
During the light load condition, the TPS61230A
automatically enters into the PFM operation for
maximizing the efficiency with the lowest quiescent
current. In the shutdown by pulling EN pin to the logic
low, the load is completely disconnected from the
input, and the input current consumption is reduced
to below 1.0 μA.
When the output is shorted, the device enters into the
hiccup protection mode and recovery automatically
when the output short is released. Other features like
the output over voltage protection, thermal shutdown
protection are integrated.
The device is available in a 2.00-mm x 2.00-mm x
0.9-mm VQFN package and requires the minimum
amount of external components.&lt;/p&gt;</description>
<pin name="CBST" x="25.4" y="-7.62" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="EN" x="-5.08" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="FB" x="25.4" y="-17.78" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="VIN" x="-5.08" y="-2.54" visible="pin" length="middle" direction="pwr"/>
<pin name="SW" x="25.4" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="GND" x="7.62" y="-25.4" visible="pin" length="middle" direction="pwr" rot="R90"/>
<wire x1="0" y1="0" x2="0" y2="-20.32" width="0.254" layer="94"/>
<wire x1="0" y1="-20.32" x2="20.32" y2="-20.32" width="0.254" layer="94"/>
<wire x1="20.32" y1="-20.32" x2="20.32" y2="0" width="0.254" layer="94"/>
<wire x1="20.32" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<text x="0" y="3.556" size="1.27" layer="94">TPS61230A</text>
<pin name="VOUT" x="25.4" y="-12.7" visible="pin" length="middle" direction="pwr" rot="R180"/>
<text x="-0.254" y="0.762" size="1.778" layer="94">&gt;NAME</text>
</symbol>
<symbol name="P-CHANNEL-MOSFET">
<wire x1="0" y1="0" x2="0" y2="-12.7" width="0.254" layer="94"/>
<wire x1="0" y1="-12.7" x2="25.4" y2="-12.7" width="0.254" layer="94"/>
<wire x1="25.4" y1="-12.7" x2="25.4" y2="0" width="0.254" layer="94"/>
<wire x1="25.4" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<pin name="SOURCE#1" x="-5.08" y="-2.54" visible="pin" length="middle" direction="out" swaplevel="1"/>
<pin name="SOURCE#2" x="-5.08" y="-5.08" visible="pin" length="middle" direction="out" swaplevel="1"/>
<pin name="SOURCE#3" x="-5.08" y="-7.62" visible="pin" length="middle" direction="out" swaplevel="1"/>
<pin name="GATE" x="-5.08" y="-10.16" visible="pin" length="middle" direction="hiz"/>
<pin name="DRAIN#8" x="30.48" y="-2.54" visible="pin" length="middle" direction="in" swaplevel="2" rot="R180"/>
<pin name="DRAIN#7" x="30.48" y="-5.08" visible="pin" length="middle" direction="in" swaplevel="2" rot="R180"/>
<pin name="DRAIN#6" x="30.48" y="-7.62" visible="pin" length="middle" direction="in" swaplevel="2" rot="R180"/>
<pin name="DRAIN#5" x="30.48" y="-10.16" visible="pin" length="middle" direction="in" swaplevel="2" rot="R180"/>
<text x="0" y="1.016" size="1.27" layer="94">&gt;NAME</text>
<text x="0" y="-15.24" size="1.27" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="INDUCTOR1">
<pin name="1" x="0" y="0" visible="off" length="short" direction="pas"/>
<pin name="2" x="0" y="-10.16" visible="off" length="short" direction="pas"/>
<wire x1="2.54" y1="-5.08" x2="3.81" y2="-5.08" width="0.2032" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="3.81" y2="-7.62" width="0.2032" layer="94"/>
<wire x1="3.683" y1="-1.27" x2="3.81" y2="-1.27" width="0.508" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="3.81" y2="-10.16" width="0.2032" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="3.81" y2="-2.54" width="0.2032" layer="94"/>
<wire x1="6.35" y1="0" x2="6.35" y2="-10.16" width="0.2032" layer="94"/>
<wire x1="5.715" y1="0" x2="5.715" y2="-10.16" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.81" y2="0" width="0.2032" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="-7.62" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="-10.16" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-2.54" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="-5.08" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.016" x2="3.81" y2="-1.524" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.524" x2="3.81" y2="-1.016" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.016" x2="3.81" y2="-1.524" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.524" x2="3.81" y2="-1.016" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.016" x2="3.81" y2="-1.524" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.524" x2="3.81" y2="-1.016" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.016" x2="3.81" y2="-1.524" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.524" x2="3.81" y2="-1.016" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.016" x2="3.81" y2="-1.524" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.524" x2="3.81" y2="-1.016" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.016" x2="3.81" y2="-1.524" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.524" x2="3.81" y2="-1.016" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.016" x2="3.81" y2="-1.524" width="0.1524" layer="94" curve="-180"/>
<wire x1="3.81" y1="-1.524" x2="3.81" y2="-1.016" width="0.1524" layer="94" curve="-180"/>
<text x="7.62" y="-6.1722" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;Value</text>
<text x="7.62" y="-2.9972" size="3.4798" layer="95" ratio="10" rot="SR0">&gt;Name</text>
</symbol>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="0" y="1.524" size="1.778" layer="95" font="vector" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.524" size="1.778" layer="96" font="vector" align="top-center">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
<symbol name="POWERJACK">
<wire x1="-10.16" y1="2.54" x2="-7.62" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-5.08" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-2.54" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="0" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="2.54" x2="-2.54" y2="5.08" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="0" y2="5.08" width="0.1524" layer="94"/>
<text x="-10.16" y="10.16" size="1.778" layer="96" font="vector">&gt;Value</text>
<text x="-10.16" y="0" size="1.778" layer="95" font="vector">&gt;Name</text>
<rectangle x1="-10.16" y1="6.858" x2="0" y2="8.382" layer="94"/>
<pin name="GNDBREAK" x="2.54" y="5.08" visible="off" length="short" direction="pwr" rot="R180"/>
<pin name="GND" x="2.54" y="2.54" visible="off" length="short" direction="pwr" rot="R180"/>
<pin name="PWR" x="2.54" y="7.62" visible="off" length="short" direction="pwr" rot="R180"/>
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
<deviceset name="TPS61230A" prefix="U">
<gates>
<gate name="G$1" symbol="TPS61230A" x="0" y="0"/>
</gates>
<devices>
<device name="" package="VQFN7">
<connects>
<connect gate="G$1" pin="CBST" pad="P$1"/>
<connect gate="G$1" pin="EN" pad="P$2"/>
<connect gate="G$1" pin="FB" pad="P$3"/>
<connect gate="G$1" pin="GND" pad="P$6"/>
<connect gate="G$1" pin="SW" pad="P$5"/>
<connect gate="G$1" pin="VIN" pad="P$4"/>
<connect gate="G$1" pin="VOUT" pad="P$7"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="SI7137DP" prefix="Q" uservalue="yes">
<description>&lt;h1&gt;P-Channel 20-V (D-S) MOSFET&lt;/h1&gt;
Vishay Siliconix

RDS: 0.0025 at VGS = - 4.5 V</description>
<gates>
<gate name="G$1" symbol="P-CHANNEL-MOSFET" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SO-8">
<connects>
<connect gate="G$1" pin="DRAIN#5" pad="P$5"/>
<connect gate="G$1" pin="DRAIN#6" pad="P$6"/>
<connect gate="G$1" pin="DRAIN#7" pad="P$7"/>
<connect gate="G$1" pin="DRAIN#8" pad="P$8 P$9"/>
<connect gate="G$1" pin="GATE" pad="P$4"/>
<connect gate="G$1" pin="SOURCE#1" pad="P$1"/>
<connect gate="G$1" pin="SOURCE#2" pad="P$2"/>
<connect gate="G$1" pin="SOURCE#3" pad="P$3"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="DR73-2R2-R" prefix="L">
<gates>
<gate name="A" symbol="INDUCTOR1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DR73">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="DR732R2R" constant="no"/>
<attribute name="VENDOR" value="Cooper Bussmann" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="NTHS1206N02N1002JE" prefix="R" uservalue="yes">
<description>&lt;h1&gt;NTC Thermistors&lt;/h1&gt;
&lt;h2&gt;SMD 0402, 0603, 0805, 1206 Chip
FEATURES&lt;/h2&gt;
&lt;p&gt;
&lt;table&gt;
&lt;tr&gt;&lt;td colspan="3"&gt;QUICK REFERENCE DATA&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;PARAMETER&lt;/td&gt;&lt;td&gt;VALUE&lt;/td&gt;&lt;td&gt;UNIT&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Resistance value at 25 °C&lt;/td&gt;&lt;td&gt;4.7K to 350K&lt;/td&gt;&lt;td&gt;Ω&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Tolerance on R25-value&lt;/td&gt;&lt;td&gt;± 1, ± 2, ± 3, ± 5, ± 10&lt;/td&gt;&lt;td&gt;%&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;B25/75 -value&lt;/td&gt;&lt;td&gt;3477 to 4247&lt;/td&gt;&lt;td&gt;K&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;B25/85 -value&lt;/td&gt;&lt;td&gt;3486 to 4261&lt;/td&gt;&lt;td&gt;K&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Tolerance on B25/85 - value, B25/75 -value&lt;/td&gt;&lt;td&gt;± 3&lt;/td&gt;&lt;td&gt;%&lt;/td&gt;&lt;/tr&gt;
&lt;tr&gt;&lt;td&gt;Operating temperature range
at zero power (intermittent)&lt;/td&gt;&lt;td&gt;-40 to +125 (150)&lt;/td&gt;&lt;td&gt;°C&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="RASM722">
<description>&lt;h1&gt;RASM722X&lt;/h1&gt;
&lt;h2&gt;Switchcraft&lt;/h2&gt;
Power Barrel Connector Jack 2.10mm ID (0.083"), 5.50mm OD (0.217") Surface Mount, Right Angle</description>
<gates>
<gate name="G$1" symbol="POWERJACK" x="10.16" y="0"/>
</gates>
<devices>
<device name="" package="RASM722">
<connects>
<connect gate="G$1" pin="GND" pad="SLEEVE"/>
<connect gate="G$1" pin="GNDBREAK" pad="SHUNT"/>
<connect gate="G$1" pin="PWR" pad="TIP"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Connectors">
<description>&lt;h3&gt;SparkFun Connectors&lt;/h3&gt;
This library contains electrically-functional connectors. 
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="USB-MINIB">
<description>&lt;h3&gt;USB Type Mini-B Surface Mounted&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 5 main, 4 shield pins&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/miniUSB-Dimensional.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;

&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;USB_Mini-B&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.3" y1="3.8" x2="0.8" y2="3.8" width="0.2032" layer="21"/>
<wire x1="3.3" y1="3.1" x2="3.3" y2="2.2" width="0.2032" layer="21"/>
<wire x1="3.3" y1="-2.2" x2="3.3" y2="-3.1" width="0.2032" layer="21"/>
<wire x1="0.8" y1="-3.8" x2="-1.3" y2="-3.8" width="0.2032" layer="21"/>
<wire x1="-5.9" y1="3.8" x2="-5.9" y2="-3.8" width="0.2032" layer="51"/>
<wire x1="-5.9" y1="-3.8" x2="-4.5" y2="-3.8" width="0.2032" layer="51"/>
<wire x1="-5.9" y1="3.8" x2="-4.5" y2="3.8" width="0.2032" layer="51"/>
<smd name="D+" x="2.5" y="0" dx="2.5" dy="0.5" layer="1"/>
<smd name="D-" x="2.5" y="0.8" dx="2.5" dy="0.5" layer="1"/>
<smd name="GND" x="2.5" y="-1.6" dx="2.5" dy="0.5" layer="1"/>
<smd name="ID" x="2.5" y="-0.8" dx="2.5" dy="0.5" layer="1"/>
<smd name="S3" x="-3" y="-4.5" dx="2.5" dy="2" layer="1"/>
<smd name="S1" x="-3" y="4.5" dx="2.5" dy="2" layer="1"/>
<smd name="S4" x="2.5" y="-4.5" dx="2.5" dy="2" layer="1"/>
<smd name="S2" x="2.5" y="4.5" dx="2.5" dy="2" layer="1"/>
<smd name="VBUS" x="2.5" y="1.6" dx="2.5" dy="0.5" layer="1"/>
<text x="-3.81" y="6.35" size="0.8128" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-3.81" y="-6.35" size="0.8128" layer="27" font="vector" ratio="20" align="top-left">&gt;VALUE</text>
<hole x="0" y="2.2" drill="0.9"/>
<hole x="0" y="-2.2" drill="0.9"/>
</package>
<package name="2X3-SHROUDED">
<description>&lt;h3&gt;Plated Through Hole - 2x3 Shrouded Header&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:6&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Shrouded-10pin.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03x2&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="4.5" y1="7.56" x2="4.5" y2="-7.56" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="-7.56" x2="-4.5" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="-2.2" x2="-4.5" y2="2.2" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="2.2" x2="-4.5" y2="7.56" width="0.2032" layer="21"/>
<wire x1="-4.5" y1="7.56" x2="4.4" y2="7.56" width="0.2032" layer="21"/>
<wire x1="4.5" y1="-7.56" x2="-4.5" y2="-7.56" width="0.2032" layer="21"/>
<wire x1="-3.4" y1="6.46" x2="3.4" y2="6.46" width="0.2032" layer="51"/>
<wire x1="3.4" y1="6.46" x2="3.4" y2="-6.46" width="0.2032" layer="51"/>
<wire x1="-3.4" y1="-6.46" x2="3.4" y2="-6.46" width="0.2032" layer="51"/>
<wire x1="-4.5" y1="2.2" x2="-3" y2="2.2" width="0.2032" layer="21"/>
<wire x1="-3" y1="2.2" x2="-3" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="-3" y1="-2.2" x2="-4.5" y2="-2.2" width="0.2032" layer="21"/>
<wire x1="-3.4" y1="6.46" x2="-3.4" y2="2.2" width="0.2032" layer="51"/>
<wire x1="-3.4" y1="-6.46" x2="-3.4" y2="-2.2" width="0.2032" layer="51"/>
<pad name="1" x="-1.27" y="2.54" drill="1.016" diameter="1.8796" rot="R270"/>
<pad name="2" x="1.27" y="2.54" drill="1.016" diameter="1.8796" rot="R270"/>
<pad name="3" x="-1.27" y="0" drill="1.016" diameter="1.8796" rot="R270"/>
<pad name="4" x="1.27" y="0" drill="1.016" diameter="1.8796" rot="R270"/>
<pad name="5" x="-1.27" y="-2.54" drill="1.016" diameter="1.8796" rot="R270"/>
<pad name="6" x="1.27" y="-2.54" drill="1.016" diameter="1.8796" rot="R270"/>
<rectangle x1="1.016" y1="2.286" x2="1.524" y2="2.794" layer="51"/>
<rectangle x1="-1.524" y1="2.286" x2="-1.016" y2="2.794" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-2.794" x2="1.524" y2="-2.286" layer="51"/>
<rectangle x1="-1.524" y1="-2.794" x2="-1.016" y2="-2.286" layer="51"/>
<rectangle x1="-1.524" y1="-2.794" x2="-1.016" y2="-2.286" layer="51"/>
<rectangle x1="1.016" y1="-2.794" x2="1.524" y2="-2.286" layer="51"/>
<text x="-3.81" y="7.874" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-3.81" y="-8.382" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
<wire x1="-2.648" y1="3.175" x2="-2.648" y2="1.905" width="0.2032" layer="21"/>
<wire x1="-2.686" y1="3.175" x2="-2.686" y2="1.905" width="0.2032" layer="22"/>
</package>
<package name="2X3_SMT_POSTS">
<description>&lt;h3&gt;Surface Mount - 2x3 Male Header with Keying Posts&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:6&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”http://www.4uconnector.com/online/object/4udrawing/15881.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03x2&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<hole x="-1.27" y="0" drill="1.8"/>
<hole x="1.27" y="0" drill="1.8"/>
<smd name="4" x="0" y="2.54" dx="3.17" dy="1" layer="1" rot="R90"/>
<smd name="3" x="0" y="-2.54" dx="3.17" dy="1" layer="1" rot="R90"/>
<smd name="5" x="2.54" y="-2.54" dx="3.17" dy="1" layer="1" rot="R90"/>
<smd name="6" x="2.54" y="2.54" dx="3.17" dy="1" layer="1" rot="R90"/>
<smd name="2" x="-2.54" y="2.54" dx="3.17" dy="1" layer="1" rot="R90"/>
<smd name="1" x="-2.54" y="-2.54" dx="3.17" dy="1" layer="1" rot="R90"/>
<wire x1="-1.778" y1="2.54" x2="-0.762" y2="2.54" width="0.2032" layer="21"/>
<wire x1="0.762" y1="2.54" x2="1.778" y2="2.54" width="0.2032" layer="21"/>
<wire x1="-1.778" y1="-2.54" x2="-0.889" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="0.762" y1="-2.54" x2="1.778" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="-3.175" y1="2.54" x2="-3.81" y2="2.54" width="0.2032" layer="21"/>
<wire x1="-3.81" y1="2.54" x2="-3.81" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="-3.81" y1="-2.54" x2="-3.175" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="2.54" width="0.2032" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="3.175" y2="-2.54" width="0.2032" layer="21"/>
<wire x1="-3.429" y1="-4.064" x2="-3.429" y2="-2.794" width="0.2032" layer="21"/>
<text x="-1.397" y="4.445" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.778" y="-5.08" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="2X3_POGO">
<description>&lt;h3&gt;Plated Through Hole - 2x3 Pogo Pins&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:6&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03x2&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<pad name="P$1" x="0" y="0" drill="1.2" diameter="1.8288"/>
<pad name="P$3" x="2.54" y="0" drill="1.2" diameter="1.8288"/>
<pad name="P$5" x="5.08" y="0" drill="1.2" diameter="1.8288"/>
<pad name="P$6" x="5.08" y="2.54" drill="1.2" diameter="1.8288"/>
<pad name="P$4" x="2.54" y="2.54" drill="1.2" diameter="1.8288"/>
<pad name="P$2" x="0" y="2.54" drill="1.2" diameter="1.8288"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="1.905" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="3.175" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="3.81" x2="0.635" y2="3.81" width="0.2032" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.2032" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.905" y2="3.81" width="0.2032" layer="21"/>
<wire x1="1.905" y1="3.81" x2="3.175" y2="3.81" width="0.2032" layer="21"/>
<wire x1="3.175" y1="3.81" x2="3.81" y2="3.175" width="0.2032" layer="21"/>
<wire x1="3.81" y1="3.175" x2="4.445" y2="3.81" width="0.2032" layer="21"/>
<wire x1="4.445" y1="3.81" x2="5.715" y2="3.81" width="0.2032" layer="21"/>
<wire x1="5.715" y1="3.81" x2="6.35" y2="3.175" width="0.2032" layer="21"/>
<wire x1="6.35" y1="3.175" x2="6.35" y2="1.905" width="0.2032" layer="21"/>
<wire x1="6.35" y1="1.905" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="0.635" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="2.54" x2="1.27" y2="0" width="0.2032" layer="21"/>
<wire x1="3.81" y1="2.54" x2="3.81" y2="0" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-1.651" x2="0.635" y2="-1.651" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.2032" layer="21"/>
<text x="-1.27" y="4.064" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.413" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
<wire x1="0.635" y1="-1.651" x2="-0.635" y2="-1.651" width="0.2032" layer="22"/>
</package>
<package name="2X3">
<description>&lt;h3&gt;Plated Through Hole - 2x3&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:6&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03x2&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="3.175" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="3.81" x2="0.635" y2="3.81" width="0.2032" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.2032" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.905" y2="3.81" width="0.2032" layer="21"/>
<wire x1="1.905" y1="3.81" x2="3.175" y2="3.81" width="0.2032" layer="21"/>
<wire x1="3.175" y1="3.81" x2="3.81" y2="3.175" width="0.2032" layer="21"/>
<wire x1="3.81" y1="3.175" x2="4.445" y2="3.81" width="0.2032" layer="21"/>
<wire x1="4.445" y1="3.81" x2="5.715" y2="3.81" width="0.2032" layer="21"/>
<wire x1="5.715" y1="3.81" x2="6.35" y2="3.175" width="0.2032" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="3.175" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="3.175" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.605" x2="-0.635" y2="-1.605" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796"/>
<pad name="2" x="0" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="3" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
<pad name="4" x="2.54" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="5" x="5.08" y="0" drill="1.016" diameter="1.8796"/>
<pad name="6" x="5.08" y="2.54" drill="1.016" diameter="1.8796"/>
<text x="-1.27" y="4.064" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.413" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="2.286" x2="0.254" y2="2.794" layer="51"/>
<rectangle x1="2.286" y1="2.286" x2="2.794" y2="2.794" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="2.286" x2="5.334" y2="2.794" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<wire x1="-0.635" y1="-1.605" x2="0.635" y2="-1.605" width="0.2032" layer="22"/>
</package>
<package name="2X3-NS">
<description>&lt;h3&gt;Plated Through Hole - 2x3 No Silk Outline&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:6&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03x2&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-3.81" y1="-1.905" x2="-3.175" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="-1.905" y1="-2.54" x2="-1.27" y2="-1.905" width="0.2032" layer="51"/>
<wire x1="-1.27" y1="-1.905" x2="-0.635" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="0.635" y1="-2.54" x2="1.27" y2="-1.905" width="0.2032" layer="51"/>
<wire x1="1.27" y1="-1.905" x2="1.905" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="3.175" y1="-2.54" x2="3.81" y2="-1.905" width="0.2032" layer="51"/>
<wire x1="-3.81" y1="-1.905" x2="-3.81" y2="1.905" width="0.2032" layer="51"/>
<wire x1="-3.81" y1="1.905" x2="-3.175" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-3.175" y1="2.54" x2="-1.905" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-1.905" y1="2.54" x2="-1.27" y2="1.905" width="0.2032" layer="51"/>
<wire x1="-1.27" y1="1.905" x2="-0.635" y2="2.54" width="0.2032" layer="51"/>
<wire x1="-0.635" y1="2.54" x2="0.635" y2="2.54" width="0.2032" layer="51"/>
<wire x1="0.635" y1="2.54" x2="1.27" y2="1.905" width="0.2032" layer="51"/>
<wire x1="1.27" y1="1.905" x2="1.905" y2="2.54" width="0.2032" layer="51"/>
<wire x1="1.905" y1="2.54" x2="3.175" y2="2.54" width="0.2032" layer="51"/>
<wire x1="3.175" y1="2.54" x2="3.81" y2="1.905" width="0.2032" layer="51"/>
<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.2032" layer="51"/>
<wire x1="1.27" y1="1.905" x2="1.27" y2="-1.905" width="0.2032" layer="51"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="-1.905" width="0.2032" layer="51"/>
<wire x1="1.905" y1="-2.54" x2="3.175" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="-0.635" y1="-2.54" x2="0.635" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="-3.175" y1="-2.54" x2="-1.905" y2="-2.54" width="0.2032" layer="51"/>
<wire x1="-1.905" y1="-2.875" x2="-3.175" y2="-2.875" width="0.2032" layer="51"/>
<pad name="1" x="-2.54" y="-1.27" drill="1.016" diameter="1.8796"/>
<pad name="2" x="-2.54" y="1.27" drill="1.016" diameter="1.8796"/>
<pad name="3" x="0" y="-1.27" drill="1.016" diameter="1.8796"/>
<pad name="4" x="0" y="1.27" drill="1.016" diameter="1.8796"/>
<pad name="5" x="2.54" y="-1.27" drill="1.016" diameter="1.8796"/>
<pad name="6" x="2.54" y="1.27" drill="1.016" diameter="1.8796"/>
<rectangle x1="-2.794" y1="-1.524" x2="-2.286" y2="-1.016" layer="51"/>
<rectangle x1="-2.794" y1="1.016" x2="-2.286" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="1.016" x2="0.254" y2="1.524" layer="51"/>
<rectangle x1="-0.254" y1="-1.524" x2="0.254" y2="-1.016" layer="51"/>
<rectangle x1="2.286" y1="1.016" x2="2.794" y2="1.524" layer="51"/>
<rectangle x1="2.286" y1="-1.524" x2="2.794" y2="-1.016" layer="51"/>
<text x="-3.81" y="2.667" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-3.81" y="-3.937" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="2X3_SMD">
<description>&lt;h3&gt;Surface Mount - 2x3&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:6&lt;/li&gt;
&lt;li&gt;Pin pitch:2.54mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_03x2&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<circle x="0" y="1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="-2.54" y="1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="-2.54" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="0" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="2.54" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="2.54" y="1.27" radius="0.7" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-2.5" x2="-3.81" y2="2.5" width="0.127" layer="51"/>
<wire x1="-3.81" y1="2.5" x2="3.81" y2="2.5" width="0.127" layer="51"/>
<wire x1="3.81" y1="2.5" x2="3.81" y2="-2.5" width="0.127" layer="51"/>
<wire x1="3.81" y1="-2.5" x2="-3.81" y2="-2.5" width="0.127" layer="51"/>
<rectangle x1="-0.3" y1="2.55" x2="0.3" y2="3.35" layer="51"/>
<rectangle x1="-2.84" y1="2.55" x2="-2.24" y2="3.35" layer="51"/>
<rectangle x1="2.24" y1="2.55" x2="2.84" y2="3.35" layer="51"/>
<rectangle x1="-2.84" y1="-3.35" x2="-2.24" y2="-2.55" layer="51" rot="R180"/>
<rectangle x1="-0.3" y1="-3.35" x2="0.3" y2="-2.55" layer="51" rot="R180"/>
<rectangle x1="2.24" y1="-3.35" x2="2.84" y2="-2.55" layer="51" rot="R180"/>
<smd name="1" x="-2.54" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="2" x="-2.54" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="3" x="0" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="4" x="0" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="5" x="2.54" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="6" x="2.54" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<text x="-1.397" y="4.191" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.778" y="-4.826" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
<wire x1="-3.302" y1="-3.683" x2="-3.302" y2="-2.794" width="0.127" layer="21"/>
</package>
<package name="JST-2-SMD">
<description>&lt;h3&gt;JST-Right Angle Male Header SMT&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Pin pitch: 2mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”http://www.4uconnector.com/online/object/4udrawing/20404.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;li&gt;JST_2MM_MALE&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-4" y1="-1" x2="-4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-4" y1="-4.5" x2="-3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-4.5" x2="-3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="-3.2" y1="-2" x2="-2" y2="-2" width="0.2032" layer="21"/>
<wire x1="2" y1="-2" x2="3.2" y2="-2" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-2" x2="3.2" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="3.2" y1="-4.5" x2="4" y2="-4.5" width="0.2032" layer="21"/>
<wire x1="4" y1="-4.5" x2="4" y2="-1" width="0.2032" layer="21"/>
<wire x1="2" y1="3" x2="-2" y2="3" width="0.2032" layer="21"/>
<smd name="1" x="-1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="2" x="1" y="-3.7" dx="1" dy="4.6" layer="1"/>
<smd name="NC1" x="-3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<smd name="NC2" x="3.4" y="1.5" dx="3.4" dy="1.6" layer="1" rot="R90"/>
<text x="-1.397" y="1.778" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="0.635" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X02">
<description>&lt;h3&gt;Plated Through Hole&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="MOLEX-1X2">
<description>&lt;h3&gt;Molex 2-Pin Plated Through-Hole&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/2pin_molex_set_19iv10.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
<text x="-1.27" y="3.302" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.794" size="0.6096" layer="27" font="vector" ratio="20" align="top-left">&gt;VALUE</text>
</package>
<package name="SCREWTERMINAL-3.5MM-2">
<description>&lt;h3&gt;Screw Terminal  3.5mm Pitch - 2 Pin PTH&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Pin pitch: 3.5mm/138mil&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-3.5mm.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.25" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.35" x2="-2.25" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.75" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.75" y1="3.15" x2="5.75" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.75" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X02_BIG">
<description>&lt;h3&gt;Plated Through Hole&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.15"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.27" y1="1.27" x2="-1.27" y2="-1.27" width="0.127" layer="21"/>
<wire x1="-1.27" y1="-1.27" x2="5.08" y2="-1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="-1.27" x2="5.08" y2="1.27" width="0.127" layer="21"/>
<wire x1="5.08" y1="1.27" x2="-1.27" y2="1.27" width="0.127" layer="21"/>
<pad name="P$1" x="0" y="0" drill="1.0668"/>
<pad name="P$2" x="3.81" y="0" drill="1.0668"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="JST-2-SMD-VERT">
<description>&lt;h3&gt;JST-Vertical Male Header SMT &lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Pin pitch: 2mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”http://www.4uconnector.com/online/object/4udrawing/20404.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-4.1" y1="2.97" x2="4.2" y2="2.97" width="0.2032" layer="51"/>
<wire x1="4.2" y1="2.97" x2="4.2" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="4.2" y1="-2.13" x2="-4.1" y2="-2.13" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="-2.13" x2="-4.1" y2="2.97" width="0.2032" layer="51"/>
<wire x1="-4.1" y1="3" x2="4.2" y2="3" width="0.2032" layer="21"/>
<wire x1="4.2" y1="3" x2="4.2" y2="2.3" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="3" x2="-4.1" y2="2.3" width="0.2032" layer="21"/>
<wire x1="2" y1="-2.1" x2="4.2" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="4.2" y1="-2.1" x2="4.2" y2="-1.7" width="0.2032" layer="21"/>
<wire x1="-2" y1="-2.1" x2="-4.1" y2="-2.1" width="0.2032" layer="21"/>
<wire x1="-4.1" y1="-2.1" x2="-4.1" y2="-1.8" width="0.2032" layer="21"/>
<smd name="P$1" x="-3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="P$2" x="3.4" y="0.27" dx="3" dy="1.6" layer="1" rot="R90"/>
<smd name="VCC" x="-1" y="-2" dx="1" dy="5.5" layer="1"/>
<smd name="GND" x="1" y="-2" dx="1" dy="5.5" layer="1"/>
<text x="-3.81" y="3.302" size="0.6096" layer="25" font="vector" ratio="20">&gt;Name</text>
<text x="-3.81" y="2.21" size="0.6096" layer="27" font="vector" ratio="20">&gt;Value</text>
</package>
<package name="SCREWTERMINAL-5MM-2">
<description>&lt;h3&gt;Screw Terminal  5mm Pitch -2 Pin PTH&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Pin pitch: 5mm/197mil&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-5mm.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-3.1" y1="4.2" x2="8.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="4.2" x2="8.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="8.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-3.3" x2="-3.1" y2="-3.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-3.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-2.3" x2="-3.1" y2="4.2" width="0.2032" layer="21"/>
<wire x1="8.1" y1="-2.3" x2="-3.1" y2="-2.3" width="0.2032" layer="21"/>
<wire x1="-3.1" y1="-1.35" x2="-3.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-1.35" x2="-3.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-3.7" y1="-2.35" x2="-3.1" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="8.1" y1="4" x2="8.7" y2="4" width="0.2032" layer="51"/>
<wire x1="8.7" y1="4" x2="8.7" y2="3" width="0.2032" layer="51"/>
<wire x1="8.7" y1="3" x2="8.1" y2="3" width="0.2032" layer="51"/>
<circle x="2.5" y="3.7" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.3" diameter="2.032" shape="square"/>
<pad name="2" x="5" y="0" drill="1.3" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X02_LOCK">
<description>&lt;h3&gt;Plated Through Hole - Locking Footprint&lt;/h3&gt;
Holes are staggered by 0.005" from center to hold pins while soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="-0.1778" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.7178" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="MOLEX-1X2_LOCK">
<description>&lt;h3&gt;Molex 2-Pin Plated Through-Hole Locking Footprint&lt;/h3&gt;
Holes are offset from center by 0.005" to hold pins in place during soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/2pin_molex_set_19iv10.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="3.81" y2="-2.54" width="0.127" layer="21"/>
<wire x1="3.81" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="3.81" y1="-2.54" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<wire x1="2.54" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="2.54" y2="-1.27" width="0.127" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="2.54" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.667" y="0" drill="1.016" diameter="1.8796"/>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
<text x="-1.27" y="3.302" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.794" size="0.6096" layer="27" font="vector" ratio="20" align="top-left">&gt;VALUE</text>
</package>
<package name="1X02_LOCK_LONGPADS">
<description>&lt;h3&gt;Plated Through Hole - Long Pads with Locking Footprint&lt;/h3&gt;
Pins are staggered by 0.005" from center to hold pins in place while soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="1.651" y1="0" x2="0.889" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.016" y2="0" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.9906" x2="-0.9906" y2="1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0" x2="-1.27" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.9906" x2="-0.9906" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.556" y2="0" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.9906" x2="3.5306" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0" x2="3.81" y2="0.9906" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.9906" x2="3.5306" y2="1.27" width="0.2032" layer="21"/>
<pad name="1" x="-0.127" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.667" y="0" drill="1.016" shape="long" rot="R90"/>
<rectangle x1="-0.2921" y1="-0.2921" x2="0.2921" y2="0.2921" layer="51"/>
<rectangle x1="2.2479" y1="-0.2921" x2="2.8321" y2="0.2921" layer="51"/>
<text x="-1.27" y="1.651" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.286" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="SCREWTERMINAL-3.5MM-2_LOCK">
<description>&lt;h3&gt;Screw Terminal  3.5mm Pitch - 2 Pin PTH Locking&lt;/h3&gt;
Holes are offset from center 0.005" to hold pins in place during soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Pin pitch: 3.5mm/138mil&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-3.5mm.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<circle x="0" y="0" radius="0.4318" width="0.0254" layer="51"/>
<circle x="3.5" y="0" radius="0.4318" width="0.0254" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.6778" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X02_LONGPADS">
<description>&lt;h3&gt;Plated Through Hole - Long Pads without Silk Outline&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<text x="-1.27" y="2.032" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.397" y="-2.667" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X02_NO_SILK">
<description>&lt;h3&gt;Plated Through Hole - No Silk Outline&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="JST-2-PTH">
<description>&lt;h3&gt;JST 2 Pin Right Angle Plated Through  Hole&lt;/h3&gt;
tDocu indicate polarity for connections that match SparkFun LiPo battery terminations. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Pin pitch:2mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Connectors/JST%282%29-01548.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.6"/>
<text x="-1.27" y="5.27" size="0.6096" layer="25" font="vector" ratio="20">&gt;Name</text>
<text x="-1.27" y="2.73" size="0.6096" layer="27" font="vector" ratio="20">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
<wire x1="-2.95" y1="-1.6" x2="-2.95" y2="6" width="0.2032" layer="21"/>
<wire x1="-2.95" y1="6" x2="2.95" y2="6" width="0.2032" layer="21"/>
<wire x1="2.95" y1="6" x2="2.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-2.95" y1="-1.6" x2="-2.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="2.95" y1="-1.6" x2="2.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-1.6" x2="-2.3" y2="0" width="0.2032" layer="21"/>
<wire x1="2.3" y1="-1.6" x2="2.3" y2="0" width="0.2032" layer="21"/>
</package>
<package name="1X02_XTRA_BIG">
<description>&lt;h3&gt;Plated Through Hole - 0.1" holes&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.2"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="-5.08" y1="-2.54" x2="5.08" y2="-2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="-2.54" x2="5.08" y2="2.54" width="0.127" layer="21"/>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.127" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="2.0574" diameter="3.556"/>
<pad name="2" x="2.54" y="0" drill="2.0574" diameter="3.556"/>
<text x="-5.08" y="2.667" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-5.08" y="-3.302" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X02_PP_HOLES_ONLY">
<description>&lt;h3&gt;Pogo Pins Connector - No Silk Outline&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<circle x="0" y="0" radius="0.635" width="0.127" layer="51"/>
<circle x="2.54" y="0" radius="0.635" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="0.889" diameter="0.8128" rot="R90"/>
<hole x="0" y="0" drill="1.4732"/>
<hole x="2.54" y="0" drill="1.4732"/>
<text x="-1.27" y="1.143" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-1.778" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="SCREWTERMINAL-3.5MM-2-NS">
<description>&lt;h3&gt;Screw Terminal  3.5mm Pitch - 2 Pin PTH No Silk Outline&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Pin pitch: 3.5mm/138mil&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-3.5mm.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.75" y1="3.4" x2="5.25" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.4" x2="5.25" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-2.8" x2="5.25" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="51"/>
<wire x1="5.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="51"/>
<wire x1="-1.75" y1="-1.35" x2="-2.15" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-1.35" x2="-2.15" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.15" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="5.25" y1="3.15" x2="5.65" y2="3.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="3.15" x2="5.65" y2="2.15" width="0.2032" layer="51"/>
<wire x1="5.65" y1="2.15" x2="5.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="2" y="3" radius="0.2828" width="0.127" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<text x="-1.27" y="2.54" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="1.27" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="JST-2-PTH-NS">
<description>&lt;h3&gt;JST 2 Pin Right Angle Plated Through  Hole- No Silk&lt;/h3&gt;
tDocu indicate polarity for connections that match SparkFun LiPo battery terminations. 
&lt;br&gt; No silk outline of connector. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Pin pitch:2mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Connectors/JST%282%29-01548.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="51"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="51"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="51"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.6"/>
<text x="-1.27" y="5.27" size="0.6096" layer="25" font="vector" ratio="20">&gt;Name</text>
<text x="-1.27" y="4" size="0.6096" layer="27" font="vector" ratio="20">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
</package>
<package name="JST-2-PTH-KIT">
<description>&lt;h3&gt;JST 2 Pin Right Angle Plated Through  Hole - KIT&lt;/h3&gt;
tDocu indicate polarity for connections that match SparkFun LiPo battery terminations. 
&lt;br&gt; This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad.
&lt;br&gt; This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 2&lt;/li&gt;
&lt;li&gt;Pin pitch:2mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Connectors/JST%282%29-01548.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-2" y1="0" x2="-2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-2" y1="-1.8" x2="-3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="-3" y1="-1.8" x2="-3" y2="6" width="0.2032" layer="51"/>
<wire x1="-3" y1="6" x2="3" y2="6" width="0.2032" layer="51"/>
<wire x1="3" y1="6" x2="3" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="3" y1="-1.8" x2="2" y2="-1.8" width="0.2032" layer="51"/>
<wire x1="2" y1="-1.8" x2="2" y2="0" width="0.2032" layer="51"/>
<pad name="1" x="-1" y="0" drill="0.7" diameter="1.4478" stop="no"/>
<pad name="2" x="1" y="0" drill="0.7" diameter="1.4478" stop="no"/>
<text x="-1.27" y="5.27" size="0.6096" layer="25" font="vector" ratio="20">&gt;Name</text>
<text x="-1.27" y="4" size="0.6096" layer="27" font="vector" ratio="20">&gt;Value</text>
<text x="0.6" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
<polygon width="0.127" layer="30">
<vertex x="-0.9975" y="-0.6604" curve="-90.025935"/>
<vertex x="-1.6604" y="0" curve="-90.017354"/>
<vertex x="-1" y="0.6604" curve="-90"/>
<vertex x="-0.3396" y="0" curve="-90.078137"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1" y="-0.2865" curve="-90.08005"/>
<vertex x="-1.2865" y="0" curve="-90.040011"/>
<vertex x="-1" y="0.2865" curve="-90"/>
<vertex x="-0.7135" y="0" curve="-90"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.0025" y="-0.6604" curve="-90.025935"/>
<vertex x="0.3396" y="0" curve="-90.017354"/>
<vertex x="1" y="0.6604" curve="-90"/>
<vertex x="1.6604" y="0" curve="-90.078137"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1" y="-0.2865" curve="-90.08005"/>
<vertex x="0.7135" y="0" curve="-90.040011"/>
<vertex x="1" y="0.2865" curve="-90"/>
<vertex x="1.2865" y="0" curve="-90"/>
</polygon>
</package>
<package name="SPRINGTERMINAL-2.54MM-2">
<description>&lt;h3&gt;Spring Terminal- PCB Mount 2 Pin PTH&lt;/h3&gt;
tDocu marks the spring arms
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 4&lt;/li&gt;
&lt;li&gt;Pin pitch: 0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/SpringTerminal.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-4.2" y1="7.88" x2="-4.2" y2="-2.8" width="0.254" layer="21"/>
<wire x1="-4.2" y1="-2.8" x2="-4.2" y2="-4.72" width="0.254" layer="51"/>
<wire x1="-4.2" y1="-4.72" x2="3.44" y2="-4.72" width="0.254" layer="51"/>
<wire x1="3.44" y1="-4.72" x2="3.44" y2="-2.8" width="0.254" layer="51"/>
<wire x1="3.44" y1="7.88" x2="-4.2" y2="7.88" width="0.254" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="1"/>
<wire x1="0" y1="0" x2="0" y2="5.08" width="0.254" layer="16"/>
<wire x1="2.54" y1="0" x2="2.54" y2="5.08" width="0.254" layer="16"/>
<wire x1="2.54" y1="0" x2="2.54" y2="5.08" width="0.254" layer="1"/>
<wire x1="-4.2" y1="-2.8" x2="3.44" y2="-2.8" width="0.254" layer="21"/>
<wire x1="3.44" y1="4" x2="3.44" y2="1" width="0.254" layer="21"/>
<wire x1="3.44" y1="7.88" x2="3.44" y2="6" width="0.254" layer="21"/>
<wire x1="3.44" y1="-0.9" x2="3.44" y2="-2.8" width="0.254" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1" diameter="1.9"/>
<pad name="P$2" x="0" y="5.08" drill="1.1" diameter="1.9"/>
<pad name="P$3" x="2.54" y="5.08" drill="1.1" diameter="1.9"/>
<pad name="2" x="2.54" y="0" drill="1.1" diameter="1.9"/>
</package>
<package name="1X02_2.54_SCREWTERM">
<description>&lt;h3&gt;2 Pin Screw Terminal - 2.54mm&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:2&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_02&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<pad name="P2" x="0" y="0" drill="1.016" shape="square"/>
<pad name="P1" x="2.54" y="0" drill="1.016" shape="square"/>
<wire x1="-1.5" y1="3.25" x2="4" y2="3.25" width="0.2032" layer="21"/>
<wire x1="4" y1="3.25" x2="4" y2="2.5" width="0.2032" layer="21"/>
<wire x1="4" y1="2.5" x2="4" y2="-3.25" width="0.2032" layer="21"/>
<wire x1="4" y1="-3.25" x2="-1.5" y2="-3.25" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="-3.25" x2="-1.5" y2="2.5" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="2.5" x2="-1.5" y2="3.25" width="0.2032" layer="21"/>
<wire x1="-1.5" y1="2.5" x2="4" y2="2.5" width="0.2032" layer="21"/>
<text x="-1.27" y="3.429" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-4.064" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X02_POKEHOME">
<description>2 pin poke-home connector

part number 2062-2P from STA</description>
<wire x1="-7" y1="-4" x2="-7" y2="2" width="0.2032" layer="21"/>
<wire x1="-7" y1="2" x2="-7" y2="4" width="0.2032" layer="21"/>
<wire x1="4.7" y1="4" x2="4.7" y2="-4" width="0.2032" layer="21"/>
<wire x1="4.7" y1="-4" x2="-7" y2="-4" width="0.2032" layer="21"/>
<smd name="P2" x="5.25" y="-2" dx="3.5" dy="2" layer="1"/>
<smd name="P1" x="5.25" y="2" dx="3.5" dy="2" layer="1"/>
<smd name="P4" x="-4" y="-2" dx="6" dy="2" layer="1"/>
<smd name="P3" x="-4" y="2" dx="6" dy="2" layer="1"/>
<wire x1="-7" y1="4" x2="4.7" y2="4" width="0.2032" layer="21"/>
<text x="0.635" y="-3.175" size="0.4064" layer="25">&gt;NAME</text>
<text x="0.635" y="-1.905" size="0.4064" layer="27">&gt;VALUE</text>
</package>
<package name="2X6_SMD">
<description>&lt;h3&gt;Surface Mount - 2x6&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:12&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_06x2&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<circle x="-3.81" y="1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="-6.35" y="1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="-6.35" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="-3.81" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="-1.27" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="-1.27" y="1.27" radius="0.7" width="0.127" layer="51"/>
<wire x1="-7.62" y1="-2.5" x2="-7.62" y2="2.5" width="0.127" layer="51"/>
<wire x1="-7.62" y1="2.5" x2="7.62" y2="2.5" width="0.127" layer="51"/>
<wire x1="7.62" y1="2.5" x2="7.62" y2="-2.5" width="0.127" layer="51"/>
<wire x1="7.62" y1="-2.5" x2="-7.62" y2="-2.5" width="0.127" layer="51"/>
<rectangle x1="-4.11" y1="2.55" x2="-3.51" y2="3.35" layer="51"/>
<rectangle x1="-6.65" y1="2.55" x2="-6.05" y2="3.35" layer="51"/>
<rectangle x1="-1.57" y1="2.55" x2="-0.97" y2="3.35" layer="51"/>
<rectangle x1="-6.65" y1="-3.35" x2="-6.05" y2="-2.55" layer="51" rot="R180"/>
<rectangle x1="-4.11" y1="-3.35" x2="-3.51" y2="-2.55" layer="51" rot="R180"/>
<rectangle x1="-1.57" y1="-3.35" x2="-0.97" y2="-2.55" layer="51" rot="R180"/>
<smd name="1" x="-6.35" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="2" x="-6.35" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="3" x="-3.81" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="4" x="-3.81" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="5" x="-1.27" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="6" x="-1.27" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<circle x="1.27" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="1.27" y="1.27" radius="0.7" width="0.127" layer="51"/>
<rectangle x1="0.97" y1="2.55" x2="1.57" y2="3.35" layer="51"/>
<rectangle x1="0.97" y1="-3.35" x2="1.57" y2="-2.55" layer="51" rot="R180"/>
<smd name="7" x="1.27" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="8" x="1.27" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<circle x="3.81" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="3.81" y="1.27" radius="0.7" width="0.127" layer="51"/>
<rectangle x1="3.51" y1="2.55" x2="4.11" y2="3.35" layer="51"/>
<rectangle x1="3.51" y1="-3.35" x2="4.11" y2="-2.55" layer="51" rot="R180"/>
<smd name="9" x="3.81" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="10" x="3.81" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<circle x="6.35" y="-1.27" radius="0.7" width="0.127" layer="51"/>
<circle x="6.35" y="1.27" radius="0.7" width="0.127" layer="51"/>
<rectangle x1="6.05" y1="2.55" x2="6.65" y2="3.35" layer="51"/>
<rectangle x1="6.05" y1="-3.35" x2="6.65" y2="-2.55" layer="51" rot="R180"/>
<smd name="11" x="6.35" y="-2.85" dx="1.02" dy="1.9" layer="1"/>
<smd name="12" x="6.35" y="2.85" dx="1.02" dy="1.9" layer="1"/>
<text x="-7.112" y="4.191" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-6.858" y="-4.699" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
<wire x1="-7.239" y1="-3.81" x2="-7.239" y2="-2.794" width="0.2032" layer="21"/>
</package>
<package name="2X6">
<description>&lt;h3&gt;Plated Through Hole - 2x6&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:12&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_06x2&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="9.525" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="11.43" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="11.43" y1="-0.635" x2="12.065" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="13.97" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="3.175" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="3.81" x2="0.635" y2="3.81" width="0.2032" layer="21"/>
<wire x1="0.635" y1="3.81" x2="1.27" y2="3.175" width="0.2032" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.905" y2="3.81" width="0.2032" layer="21"/>
<wire x1="1.905" y1="3.81" x2="3.175" y2="3.81" width="0.2032" layer="21"/>
<wire x1="3.175" y1="3.81" x2="3.81" y2="3.175" width="0.2032" layer="21"/>
<wire x1="3.81" y1="3.175" x2="4.445" y2="3.81" width="0.2032" layer="21"/>
<wire x1="4.445" y1="3.81" x2="5.715" y2="3.81" width="0.2032" layer="21"/>
<wire x1="5.715" y1="3.81" x2="6.35" y2="3.175" width="0.2032" layer="21"/>
<wire x1="6.35" y1="3.175" x2="6.985" y2="3.81" width="0.2032" layer="21"/>
<wire x1="6.985" y1="3.81" x2="8.255" y2="3.81" width="0.2032" layer="21"/>
<wire x1="8.255" y1="3.81" x2="8.89" y2="3.175" width="0.2032" layer="21"/>
<wire x1="8.89" y1="3.175" x2="9.525" y2="3.81" width="0.2032" layer="21"/>
<wire x1="9.525" y1="3.81" x2="10.795" y2="3.81" width="0.2032" layer="21"/>
<wire x1="10.795" y1="3.81" x2="11.43" y2="3.175" width="0.2032" layer="21"/>
<wire x1="11.43" y1="3.175" x2="12.065" y2="3.81" width="0.2032" layer="21"/>
<wire x1="12.065" y1="3.81" x2="13.335" y2="3.81" width="0.2032" layer="21"/>
<wire x1="13.335" y1="3.81" x2="13.97" y2="3.175" width="0.2032" layer="21"/>
<wire x1="1.27" y1="3.175" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="3.175" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="3.175" x2="6.35" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="3.175" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="11.43" y1="3.175" x2="11.43" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="13.97" y1="3.175" x2="13.97" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="13.335" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="10.795" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="8.255" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796"/>
<pad name="2" x="0" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="3" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
<pad name="4" x="2.54" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="5" x="5.08" y="0" drill="1.016" diameter="1.8796"/>
<pad name="6" x="5.08" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="7" x="7.62" y="0" drill="1.016" diameter="1.8796"/>
<pad name="8" x="7.62" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="9" x="10.16" y="0" drill="1.016" diameter="1.8796"/>
<pad name="10" x="10.16" y="2.54" drill="1.016" diameter="1.8796"/>
<pad name="11" x="12.7" y="0" drill="1.016" diameter="1.8796"/>
<pad name="12" x="12.7" y="2.54" drill="1.016" diameter="1.8796"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="2.286" x2="0.254" y2="2.794" layer="51"/>
<rectangle x1="2.286" y1="2.286" x2="2.794" y2="2.794" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="2.286" x2="5.334" y2="2.794" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="7.366" y1="2.286" x2="7.874" y2="2.794" layer="51"/>
<rectangle x1="9.906" y1="2.286" x2="10.414" y2="2.794" layer="51"/>
<rectangle x1="12.446" y1="2.286" x2="12.954" y2="2.794" layer="51"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="9.906" y1="-0.254" x2="10.414" y2="0.254" layer="51"/>
<rectangle x1="12.446" y1="-0.254" x2="12.954" y2="0.254" layer="51"/>
<wire x1="-0.635" y1="-1.651" x2="0.635" y2="-1.651" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.651" x2="-0.635" y2="-1.651" width="0.2032" layer="22"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="3.175" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.27" y2="3.175" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="3.175" x2="-0.635" y2="3.81" width="0.2032" layer="21"/>
<text x="-1.27" y="4.064" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.413" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04">
<description>&lt;h3&gt;Plated Through Hole - 4 Pin&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="MOLEX-1X4">
<description>&lt;h3&gt;Molex 4-Pin Plated Through-Hole&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/2pin_molex_set_19iv10.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="8.89" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="8.89" y1="-2.54" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796"/>
<text x="2.286" y="3.302" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="2.286" y="-3.429" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="SCREWTERMINAL-3.5MM-4">
<description>&lt;h3&gt;Screw Terminal  3.5mm Pitch -4 Pin PTH&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 4&lt;/li&gt;
&lt;li&gt;Pin pitch: 3.5mm/138mil&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-3.5mm.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.75" y1="3.4" x2="12.25" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.25" y1="3.4" x2="12.25" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="12.25" y1="-2.8" x2="12.25" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="12.25" y1="-3.6" x2="-1.75" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-3.6" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-2.8" x2="-1.75" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.25" y1="-2.8" x2="-1.75" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-1.75" y1="-1.35" x2="-2.25" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-1.35" x2="-2.25" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.25" y1="-2.35" x2="-1.75" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="12.25" y1="3.15" x2="12.75" y2="3.15" width="0.2032" layer="51"/>
<wire x1="12.75" y1="3.15" x2="12.75" y2="2.15" width="0.2032" layer="51"/>
<wire x1="12.75" y1="2.15" x2="12.25" y2="2.15" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="3.5" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="7" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="10.5" y="0" radius="0.425" width="0.001" layer="51"/>
<pad name="1" x="0" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.5" y="0" drill="1.2" diameter="2.032"/>
<pad name="3" x="7" y="0" drill="1.2" diameter="2.032"/>
<pad name="4" x="10.5" y="0" drill="1.2" diameter="2.032"/>
<text x="0" y="2.413" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="0" y="-2.286" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_1.27MM">
<description>&lt;h3&gt;Plated Through Hole - 4 Pin&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch: 1.27mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-0.381" y1="-0.889" x2="0.381" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.381" y1="-0.889" x2="0.635" y2="-0.635" width="0.127" layer="21"/>
<wire x1="0.635" y1="-0.635" x2="0.889" y2="-0.889" width="0.127" layer="21"/>
<wire x1="0.889" y1="-0.889" x2="1.651" y2="-0.889" width="0.127" layer="21"/>
<wire x1="1.651" y1="-0.889" x2="1.905" y2="-0.635" width="0.127" layer="21"/>
<wire x1="1.905" y1="-0.635" x2="2.159" y2="-0.889" width="0.127" layer="21"/>
<wire x1="2.159" y1="-0.889" x2="2.921" y2="-0.889" width="0.127" layer="21"/>
<wire x1="2.921" y1="-0.889" x2="3.175" y2="-0.635" width="0.127" layer="21"/>
<wire x1="3.175" y1="-0.635" x2="3.429" y2="-0.889" width="0.127" layer="21"/>
<wire x1="3.429" y1="-0.889" x2="4.191" y2="-0.889" width="0.127" layer="21"/>
<wire x1="4.191" y1="0.889" x2="3.429" y2="0.889" width="0.127" layer="21"/>
<wire x1="3.429" y1="0.889" x2="3.175" y2="0.635" width="0.127" layer="21"/>
<wire x1="3.175" y1="0.635" x2="2.921" y2="0.889" width="0.127" layer="21"/>
<wire x1="2.921" y1="0.889" x2="2.159" y2="0.889" width="0.127" layer="21"/>
<wire x1="2.159" y1="0.889" x2="1.905" y2="0.635" width="0.127" layer="21"/>
<wire x1="1.905" y1="0.635" x2="1.651" y2="0.889" width="0.127" layer="21"/>
<wire x1="1.651" y1="0.889" x2="0.889" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.889" y1="0.889" x2="0.635" y2="0.635" width="0.127" layer="21"/>
<wire x1="0.635" y1="0.635" x2="0.381" y2="0.889" width="0.127" layer="21"/>
<wire x1="0.381" y1="0.889" x2="-0.381" y2="0.889" width="0.127" layer="21"/>
<wire x1="-0.381" y1="0.889" x2="-0.889" y2="0.381" width="0.127" layer="21"/>
<wire x1="-0.889" y1="-0.381" x2="-0.381" y2="-0.889" width="0.127" layer="21"/>
<wire x1="-0.889" y1="0.381" x2="-0.889" y2="-0.381" width="0.127" layer="21"/>
<wire x1="4.191" y1="0.889" x2="4.699" y2="0.381" width="0.127" layer="21"/>
<wire x1="4.699" y1="0.381" x2="4.699" y2="-0.381" width="0.127" layer="21"/>
<wire x1="4.699" y1="-0.381" x2="4.191" y2="-0.889" width="0.127" layer="21"/>
<pad name="4" x="3.81" y="0" drill="0.508" diameter="1"/>
<pad name="3" x="2.54" y="0" drill="0.508" diameter="1"/>
<pad name="2" x="1.27" y="0" drill="0.508" diameter="1"/>
<pad name="1" x="0" y="0" drill="0.508" diameter="1"/>
<text x="-0.508" y="1.016" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-0.508" y="-1.651" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_LOCK">
<description>&lt;h3&gt;Plated Through Hole - 4 Pin Locking Footprint&lt;/h3&gt;
Pins are offset 0.005" from center to lock pins in place during soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="6.985" y1="1.27" x2="8.255" y2="1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="1.27" x2="8.89" y2="0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.635" x2="8.255" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.81" y1="0.635" x2="4.445" y2="1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.715" y2="1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="5.715" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="4.445" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.81" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="6.985" y1="1.27" x2="6.35" y2="0.635" width="0.2032" layer="21"/>
<wire x1="6.35" y1="-0.635" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.255" y1="-1.27" x2="6.985" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.2032" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="-1.27" y2="0.635" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="-0.127" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_LOCK_LONGPADS">
<description>&lt;h3&gt;Plated Through Hole - 4 Pin Long Pads w/ Locking Footprint&lt;/h3&gt;
Holes are offset 0.005" from center to lock pins in place during soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="1.524" y1="-0.127" x2="1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="4.064" y1="-0.127" x2="3.556" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="6.604" y1="-0.127" x2="6.096" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.016" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="0.8636" x2="-0.9906" y2="1.143" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-0.127" x2="-1.27" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-1.1176" x2="-0.9906" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.127" x2="8.636" y2="-0.127" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.127" x2="8.89" y2="-1.1176" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-1.1176" x2="8.6106" y2="-1.397" width="0.2032" layer="21"/>
<wire x1="8.89" y1="-0.127" x2="8.89" y2="0.8636" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.8636" x2="8.6106" y2="1.143" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="-0.254" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="7.62" y="-0.254" drill="1.016" shape="long" rot="R90"/>
<rectangle x1="-0.2921" y1="-0.4191" x2="0.2921" y2="0.1651" layer="51"/>
<rectangle x1="2.2479" y1="-0.4191" x2="2.8321" y2="0.1651" layer="51"/>
<rectangle x1="4.7879" y1="-0.4191" x2="5.3721" y2="0.1651" layer="51"/>
<rectangle x1="7.3279" y1="-0.4191" x2="7.9121" y2="0.1651" layer="51" rot="R90"/>
<text x="-1.27" y="1.651" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.413" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="MOLEX-1X4_LOCK">
<description>&lt;h3&gt;Molex 4-Pin Plated Through-Hole Locking&lt;/h3&gt;
Holes are offset 0.005" from center to hold pins in place during soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/2pin_molex_set_19iv10.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.27" y1="3.048" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="8.89" y2="-2.54" width="0.127" layer="21"/>
<wire x1="8.89" y1="3.048" x2="-1.27" y2="3.048" width="0.127" layer="21"/>
<wire x1="8.89" y1="-2.54" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<wire x1="7.62" y1="-2.54" x2="0" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.127" layer="21"/>
<wire x1="0" y1="-2.54" x2="0" y2="-1.27" width="0.127" layer="21"/>
<wire x1="0" y1="-1.27" x2="7.62" y2="-1.27" width="0.127" layer="21"/>
<wire x1="7.62" y1="-1.27" x2="7.62" y2="-2.54" width="0.127" layer="21"/>
<pad name="1" x="0" y="0.127" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="2" x="2.54" y="-0.127" drill="1.016" diameter="1.8796"/>
<pad name="3" x="5.08" y="0.127" drill="1.016" diameter="1.8796"/>
<pad name="4" x="7.62" y="-0.127" drill="1.016" diameter="1.8796"/>
<text x="2.667" y="3.302" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="2.032" y="-3.556" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_SMD_RA_MALE">
<description>&lt;h3&gt;SMD - 4 Pin Right Angle Male Header&lt;/h3&gt;
tDocu layer shows pin locations.
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="5.08" y1="1.25" x2="-5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="1.25" x2="-5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="-1.25" x2="-3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="5.08" y1="-1.25" x2="5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="-7.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="-1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-3.81" y2="-7.25" width="0.127" layer="51"/>
<smd name="4" x="3.81" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="3" x="1.27" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="2" x="-1.27" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<smd name="1" x="-3.81" y="5" dx="3" dy="1" layer="1" rot="R90"/>
<hole x="-2.54" y="0" drill="1.4"/>
<hole x="2.54" y="0" drill="1.4"/>
<text x="-4.318" y="6.731" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-4.318" y="2.667" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_LONGPADS">
<description>&lt;h3&gt;Plated Through Hole - 4 Pin Long Pads&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.2032" layer="21"/>
<wire x1="8.89" y1="0.635" x2="8.89" y2="-0.635" width="0.2032" layer="21"/>
<pad name="1" x="0" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.1176" diameter="1.8796" shape="long" rot="R90"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="2.032" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.667" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_NO_SILK">
<description>&lt;h3&gt;Plated Through Hole - 4 Pin No Silk Outline&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<pad name="1" x="0" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="2" x="2.54" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="3" x="5.08" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<pad name="4" x="7.62" y="0" drill="1.016" diameter="1.8796" rot="R90"/>
<rectangle x1="7.366" y1="-0.254" x2="7.874" y2="0.254" layer="51"/>
<rectangle x1="4.826" y1="-0.254" x2="5.334" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<text x="-1.27" y="1.397" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-2.032" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="JST-4-PTH">
<description>&lt;h3&gt;JST Right Angle 4 Pin Plated Through Hole&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 4&lt;/li&gt;
&lt;li&gt;Pin pitch: 2mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/ePH.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<pad name="1" x="-3" y="0" drill="0.7" diameter="1.6"/>
<pad name="2" x="-1" y="0" drill="0.7" diameter="1.6"/>
<pad name="3" x="1" y="0" drill="0.7" diameter="1.6"/>
<pad name="4" x="3" y="0" drill="0.7" diameter="1.6"/>
<text x="-3.4" y="0.7" size="1.27" layer="51">+</text>
<text x="-1.4" y="0.7" size="1.27" layer="51">-</text>
<text x="0.7" y="0.9" size="0.8" layer="51">S</text>
<text x="2.7" y="0.9" size="0.8" layer="51">S</text>
<wire x1="-4.95" y1="-1.6" x2="-4.95" y2="6" width="0.2032" layer="21"/>
<wire x1="-4.95" y1="6" x2="4.95" y2="6" width="0.2032" layer="21"/>
<wire x1="4.95" y1="6" x2="4.95" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-4.95" y1="-1.6" x2="-4.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="4.95" y1="-1.6" x2="4.3" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-4.3" y1="-1.6" x2="-4.3" y2="0" width="0.2032" layer="21"/>
<wire x1="4.3" y1="-1.6" x2="4.3" y2="0" width="0.2032" layer="21"/>
<text x="-1.397" y="3.429" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="2.54" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="SCREWTERMINAL-3.5MM-4_LOCK">
<description>&lt;h3&gt;Screw Terminal  3.5mm Pitch -4 Pin PTH Locking&lt;/h3&gt;
Holes are offset 0.005" from center to hold pins in place during soldering. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 4&lt;/li&gt;
&lt;li&gt;Pin pitch: 3.5mm/138mil&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://www.sparkfun.com/datasheets/Prototyping/Screw-Terminal-3.5mm.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-2.3" y1="3.4" x2="12.8" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.8" y1="3.4" x2="12.8" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-2.8" x2="12.8" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-3.6" x2="-2.3" y2="-3.6" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-3.6" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-2.8" x2="-2.3" y2="3.4" width="0.2032" layer="21"/>
<wire x1="12.8" y1="-2.8" x2="-2.3" y2="-2.8" width="0.2032" layer="21"/>
<wire x1="-2.3" y1="-1.35" x2="-2.7" y2="-1.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-1.35" x2="-2.7" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="-2.7" y1="-2.35" x2="-2.3" y2="-2.35" width="0.2032" layer="51"/>
<wire x1="12.8" y1="3.15" x2="13.2" y2="3.15" width="0.2032" layer="51"/>
<wire x1="13.2" y1="3.15" x2="13.2" y2="2.15" width="0.2032" layer="51"/>
<wire x1="13.2" y1="2.15" x2="12.8" y2="2.15" width="0.2032" layer="51"/>
<circle x="0" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="3.5" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="7" y="0" radius="0.425" width="0.001" layer="51"/>
<circle x="10.5" y="0" radius="0.425" width="0.001" layer="51"/>
<pad name="1" x="-0.1778" y="0" drill="1.2" diameter="2.032" shape="square"/>
<pad name="2" x="3.6778" y="0" drill="1.2" diameter="2.032"/>
<pad name="3" x="6.8222" y="0" drill="1.2" diameter="2.032"/>
<pad name="4" x="10.6778" y="0" drill="1.2" diameter="2.032"/>
<text x="3.81" y="2.413" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="3.81" y="1.524" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_1MM_RA">
<description>&lt;h3&gt;SMD- 4 Pin Right Angle &lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-1.5" y1="-4.6" x2="1.5" y2="-4.6" width="0.254" layer="21"/>
<wire x1="-3" y1="-2" x2="-3" y2="-0.35" width="0.254" layer="21"/>
<wire x1="2.25" y1="-0.35" x2="3" y2="-0.35" width="0.254" layer="21"/>
<wire x1="3" y1="-0.35" x2="3" y2="-2" width="0.254" layer="21"/>
<wire x1="-3" y1="-0.35" x2="-2.25" y2="-0.35" width="0.254" layer="21"/>
<circle x="-2.5" y="0.3" radius="0.1414" width="0.4" layer="21"/>
<smd name="NC2" x="-2.8" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="NC1" x="2.8" y="-3.675" dx="1.2" dy="2" layer="1"/>
<smd name="1" x="-1.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="2" x="-0.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="3" x="0.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<smd name="4" x="1.5" y="0" dx="0.6" dy="1.35" layer="1"/>
<text x="-1.397" y="-2.159" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="-3.302" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_SMD_VERTICAL_COMBO">
<description>&lt;h3&gt;SMD - 4 Pin Vertical Connector&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;SMD Pad count:8&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="7.62" y1="1.27" x2="7.62" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="5.08" y1="1.27" x2="5.08" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="0" y1="1.27" x2="0" y2="-1.27" width="0.4064" layer="1"/>
<wire x1="-1.37" y1="-1.25" x2="-1.37" y2="1.25" width="0.1778" layer="21"/>
<wire x1="8.99" y1="1.25" x2="8.99" y2="-1.25" width="0.1778" layer="21"/>
<wire x1="-0.73" y1="-1.25" x2="-1.37" y2="-1.25" width="0.1778" layer="21"/>
<wire x1="8.99" y1="-1.25" x2="8.32" y2="-1.25" width="0.1778" layer="21"/>
<wire x1="8.32" y1="1.25" x2="8.99" y2="1.25" width="0.1778" layer="21"/>
<wire x1="-1.37" y1="1.25" x2="-0.73" y2="1.25" width="0.1778" layer="21"/>
<wire x1="5.869" y1="-1.29" x2="6.831" y2="-1.29" width="0.1778" layer="21"/>
<wire x1="5.869" y1="1.25" x2="6.831" y2="1.25" width="0.1778" layer="21"/>
<wire x1="3.329" y1="-1.29" x2="4.291" y2="-1.29" width="0.1778" layer="21"/>
<wire x1="3.329" y1="1.25" x2="4.291" y2="1.25" width="0.1778" layer="21"/>
<wire x1="0.789" y1="-1.29" x2="1.751" y2="-1.29" width="0.1778" layer="21"/>
<wire x1="0.789" y1="1.25" x2="1.751" y2="1.25" width="0.1778" layer="21"/>
<smd name="3" x="5.08" y="-1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="1" x="0" y="-1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="4" x="7.62" y="1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="2" x="2.54" y="1.65" dx="2" dy="1" layer="1" rot="R270"/>
<smd name="1-2" x="0" y="1.65" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="2-2" x="2.54" y="-1.65" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="3-2" x="5.08" y="1.65" dx="2" dy="1" layer="1" rot="R90"/>
<smd name="4-2" x="7.62" y="-1.65" dx="2" dy="1" layer="1" rot="R90"/>
<text x="-0.508" y="2.921" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-0.508" y="-3.429" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_SMD_LONG">
<description>&lt;h3&gt;SMD - 4 Pin w/ Long Solder Pads&lt;/h3&gt;
No silk, but tDocu layer shows pin position. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="5.08" y1="1.25" x2="-5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="1.25" x2="-5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-5.08" y1="-1.25" x2="-3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="1.27" y2="-1.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="3.81" y2="-1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="5.08" y2="-1.25" width="0.127" layer="51"/>
<wire x1="5.08" y1="-1.25" x2="5.08" y2="1.25" width="0.127" layer="51"/>
<wire x1="3.81" y1="-1.25" x2="3.81" y2="-7.25" width="0.127" layer="51"/>
<wire x1="1.27" y1="-1.25" x2="1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-1.27" y1="-1.25" x2="-1.27" y2="-7.25" width="0.127" layer="51"/>
<wire x1="-3.81" y1="-1.25" x2="-3.81" y2="-7.25" width="0.127" layer="51"/>
<smd name="4" x="3.81" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<smd name="3" x="1.27" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<smd name="2" x="-1.27" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<smd name="1" x="-3.81" y="5.5" dx="4" dy="1" layer="1" rot="R90"/>
<hole x="-2.54" y="0" drill="1.4"/>
<hole x="2.54" y="0" drill="1.4"/>
</package>
<package name="JST-4-PTH-VERT">
<description>&lt;h3&gt;JST Vertical 4 Pin Plated Through Hole&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count: 4&lt;/li&gt;
&lt;li&gt;Pin pitch: 2mm&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href="http://www.jst-mfg.com/product/pdf/eng/ePH.pdf"&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-4.95" y1="-2.25" x2="-4.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="-4.95" y1="2.25" x2="4.95" y2="2.25" width="0.2032" layer="21"/>
<wire x1="4.95" y1="-2.25" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-2.25" x2="-4.95" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="1" y2="-1.75" width="0.2032" layer="21"/>
<wire x1="1" y1="-1.75" x2="1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="-1" y1="-1.75" x2="-1" y2="-2.25" width="0.2032" layer="21"/>
<wire x1="4.95" y1="2.25" x2="4.95" y2="-2.25" width="0.2032" layer="21"/>
<pad name="1" x="-3" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="2" x="-1" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="3" x="1" y="-0.55" drill="0.7" diameter="1.6"/>
<pad name="4" x="3" y="-0.55" drill="0.7" diameter="1.6"/>
<text x="-1.4" y="0.75" size="1.27" layer="51">+</text>
<text x="0.6" y="0.75" size="1.27" layer="51">-</text>
<text x="2.7" y="0.95" size="0.8" layer="51">Y</text>
<text x="-3.3" y="0.95" size="0.8" layer="51">B</text>
<text x="-1.143" y="2.54" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.651" y="-3.302" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
<package name="1X04_SMD_RA_FEMALE">
<description>&lt;h3&gt;SMD - 4 Pin Right-Angle Female Header&lt;/h3&gt;
Silk outline shows header location. 
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:4&lt;/li&gt;
&lt;li&gt;Pin pitch:0.1"&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;CONN_04&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-5.205" y1="4.25" x2="-5.205" y2="-4.25" width="0.1778" layer="21"/>
<wire x1="5.205" y1="4.25" x2="-5.205" y2="4.25" width="0.1778" layer="21"/>
<wire x1="5.205" y1="-4.25" x2="5.205" y2="4.25" width="0.1778" layer="21"/>
<wire x1="-5.205" y1="-4.25" x2="5.205" y2="-4.25" width="0.1778" layer="21"/>
<rectangle x1="-1.59" y1="6.8" x2="-0.95" y2="7.65" layer="51"/>
<rectangle x1="0.95" y1="6.8" x2="1.59" y2="7.65" layer="51"/>
<rectangle x1="-4.13" y1="6.8" x2="-3.49" y2="7.65" layer="51"/>
<smd name="3" x="1.27" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="2" x="-1.27" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<smd name="1" x="-3.81" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<rectangle x1="3.49" y1="6.8" x2="4.13" y2="7.65" layer="51"/>
<smd name="4" x="3.81" y="7.225" dx="1.25" dy="3" layer="1" rot="R180"/>
<text x="-1.397" y="0.762" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.524" y="-1.27" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="USB-5PIN">
<description>&lt;h3&gt;USB - 5 pin&lt;/h3&gt;
&lt;p&gt;5 pin USB connector: VBUS, GND, D+, D-, ID &lt;/p&gt;
&lt;p&gt;Includes 4 pins for shield connections &lt;/p&gt;</description>
<wire x1="5.08" y1="7.62" x2="-2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<text x="2.794" y="-3.302" size="2.54" layer="94" rot="R90">USB</text>
<pin name="D+" x="-5.08" y="0" visible="pad" length="short"/>
<pin name="D-" x="-5.08" y="2.54" visible="pad" length="short"/>
<pin name="VBUS" x="-5.08" y="5.08" visible="pad" length="short" direction="pwr"/>
<pin name="GND" x="-5.08" y="-5.08" visible="pad" length="short" direction="pwr"/>
<pin name="ID" x="-5.08" y="-2.54" visible="pad" length="short"/>
<pin name="SHIELD" x="7.62" y="0" visible="pad" length="short" rot="R180"/>
<text x="-2.54" y="7.874" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-2.54" y="-7.874" size="1.778" layer="96" font="vector" align="top-left">&gt;VALUE</text>
<wire x1="5.08" y1="7.62" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
</symbol>
<symbol name="CONN_03X2">
<description>&lt;h3&gt;6 Pin Connection&lt;/h3&gt;
3x2 pin layout</description>
<pin name="1" x="-7.62" y="2.54" visible="pad" length="middle"/>
<pin name="3" x="-7.62" y="0" visible="pad" length="middle"/>
<pin name="5" x="-7.62" y="-2.54" visible="pad" length="middle"/>
<pin name="6" x="7.62" y="-2.54" visible="pad" length="middle" rot="R180"/>
<pin name="4" x="7.62" y="0" visible="pad" length="middle" rot="R180"/>
<pin name="2" x="7.62" y="2.54" visible="pad" length="middle" rot="R180"/>
<text x="-3.556" y="5.588" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-3.302" y="-5.842" size="1.778" layer="96" font="vector" align="top-left">&gt;VALUE</text>
<wire x1="-1.27" y1="-2.54" x2="-2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="0" x2="-2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="-2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="-3.81" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-3.81" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
</symbol>
<symbol name="CONN_02">
<description>&lt;h3&gt;2 Pin Connection&lt;/h3&gt;</description>
<wire x1="3.81" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-2.54" y="-4.826" size="1.778" layer="96" font="vector">&gt;VALUE</text>
<text x="-2.54" y="5.588" size="1.778" layer="95" font="vector">&gt;NAME</text>
<pin name="1" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="CONN_06X2">
<description>&lt;h3&gt;12 Pin Connection&lt;/h3&gt;
6x2 pin layout</description>
<wire x1="6.35" y1="-2.54" x2="-1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="7.62" x2="5.08" y2="7.62" width="0.6096" layer="94"/>
<wire x1="3.81" y1="5.08" x2="5.08" y2="5.08" width="0.6096" layer="94"/>
<wire x1="3.81" y1="2.54" x2="5.08" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="15.24" x2="-1.27" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="6.35" y1="-2.54" x2="6.35" y2="15.24" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="15.24" x2="6.35" y2="15.24" width="0.4064" layer="94"/>
<wire x1="3.81" y1="12.7" x2="5.08" y2="12.7" width="0.6096" layer="94"/>
<wire x1="3.81" y1="10.16" x2="5.08" y2="10.16" width="0.6096" layer="94"/>
<wire x1="1.27" y1="7.62" x2="0" y2="7.62" width="0.6096" layer="94"/>
<wire x1="1.27" y1="5.08" x2="0" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="12.7" x2="0" y2="12.7" width="0.6096" layer="94"/>
<wire x1="1.27" y1="10.16" x2="0" y2="10.16" width="0.6096" layer="94"/>
<text x="-1.27" y="-4.826" size="1.778" layer="96" font="vector">&gt;VALUE</text>
<text x="-1.27" y="15.748" size="1.778" layer="95" font="vector">&gt;NAME</text>
<pin name="10" x="10.16" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="10.16" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="10.16" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="10.16" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="10.16" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="-5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="7" x="-5.08" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="5" x="-5.08" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="3" x="-5.08" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="1" x="-5.08" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="11" x="-5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1"/>
<pin name="12" x="10.16" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<wire x1="3.81" y1="0" x2="5.08" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
</symbol>
<symbol name="CONN_04">
<description>&lt;h3&gt;4 Pin Connection&lt;/h3&gt;</description>
<wire x1="1.27" y1="-5.08" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="0" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="7.62" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="0" y2="5.08" width="0.6096" layer="94"/>
<text x="-5.08" y="-7.366" size="1.778" layer="96" font="vector">&gt;VALUE</text>
<text x="-5.08" y="8.128" size="1.778" layer="95" font="vector">&gt;NAME</text>
<pin name="1" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="5.08" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="USB_MINI-B" prefix="J">
<description>&lt;h3&gt;USB type Mini-B Connector&lt;/h3&gt;
&lt;p&gt;Breaks out 5th pin, and includes shield pins if needed.&lt;/p&gt;
&lt;p&gt;SparkFun Products:
&lt;ul&gt;&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/9716”&gt;SparkFun FTDI Basic Breakout&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/11812”&gt;SparkFun XBee Explorer USB&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/12757”&gt;SparkFun Redboard&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="USB-5PIN" x="0" y="0"/>
</gates>
<devices>
<device name="_SMT" package="USB-MINIB">
<connects>
<connect gate="G$1" pin="D+" pad="D+"/>
<connect gate="G$1" pin="D-" pad="D-"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="ID" pad="ID"/>
<connect gate="G$1" pin="SHIELD" pad="S1 S2 S3 S4"/>
<connect gate="G$1" pin="VBUS" pad="VBUS"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08193"/>
<attribute name="SF_ID" value="PRT-00587" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CONN_03X2" prefix="J" uservalue="yes">
<description>&lt;h3&gt;Multi connection point. Often used as Generic Header-pin footprint for 0.1 inch spaced/style header connections&lt;/h3&gt;

&lt;p&gt;&lt;/p&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;You can populate with any combo of single row headers, but if you'd like an exact match, check these:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/12807"&gt; Header - 2x3 (Male, 0.1")&lt;/a&gt; (PRT-12807)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/13010"&gt; Header - 2x3 (Female, 0.1")&lt;/a&gt; (PRT-13010)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/10877"&gt; 2x3 Pin Shrouded Header&lt;/a&gt; (PRT-10877)&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;On any of the 0.1 inch spaced packages, you can populate with these:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/116"&gt; Break Away Headers - Straight&lt;/a&gt; (PRT-00116)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/553"&gt; Break Away Male Headers - Right Angle&lt;/a&gt; (PRT-00553)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/115"&gt; Female Headers&lt;/a&gt; (PRT-00115)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/117"&gt; Break Away Headers - Machine Pin&lt;/a&gt; (PRT-00117)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/743"&gt; Break Away Female Headers - Swiss Machine Pin&lt;/a&gt; (PRT-00743)&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;Special note: the shrouded connector mates well with our 3x2 ribbon cables:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/10651"&gt; Ribbon Crimp Connector - 6-pin (2x3, Female)&lt;/a&gt; (PRT-10651)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/10646"&gt; Ribbon Cable - 6 wire (15ft)&lt;/a&gt; (PRT-10646)&lt;/li&gt;
&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="CONN_03X2" x="0" y="0"/>
</gates>
<devices>
<device name="SHROUD" package="2X3-SHROUDED">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-10681"/>
<attribute name="SF_ID" value="PRT_10877" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMT" package="2X3_SMT_POSTS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-11415"/>
</technology>
</technologies>
</device>
<device name="POGO_PINS" package="2X3_POGO">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
<connect gate="G$1" pin="3" pad="P$3"/>
<connect gate="G$1" pin="4" pad="P$4"/>
<connect gate="G$1" pin="5" pad="P$5"/>
<connect gate="G$1" pin="6" pad="P$6"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="HW-11044"/>
</technology>
</technologies>
</device>
<device name="2X3_SILK_MALE_PTH" package="2X3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09701"/>
</technology>
</technologies>
</device>
<device name="NO_SILK" package="2X3-NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="FEMALE_SMD" package="2X3_SMD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-11290"/>
</technology>
</technologies>
</device>
<device name="FEMALE" package="2X3">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-11566"/>
<attribute name="VALUE" value="FEMALE 2x3"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CONN_02" prefix="J" uservalue="yes">
<description>&lt;h3&gt;Multi connection point. Often used as Generic Header-pin footprint for 0.1 inch spaced/style header connections&lt;/h3&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;On any of the 0.1 inch spaced packages, you can populate with these:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/116"&gt; Break Away Headers - Straight&lt;/a&gt; (PRT-00116)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/553"&gt; Break Away Male Headers - Right Angle&lt;/a&gt; (PRT-00553)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/115"&gt; Female Headers&lt;/a&gt; (PRT-00115)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/117"&gt; Break Away Headers - Machine Pin&lt;/a&gt; (PRT-00117)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/743"&gt; Break Away Female Headers - Swiss Machine Pin&lt;/a&gt; (PRT-00743)&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt; For SCREWTERMINALS and SPRING TERMINALS visit here:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/search/results?term=Screw+Terminals"&gt; Screw Terimnals on SparkFun.com&lt;/a&gt; (5mm/3.5mm/2.54mm spacing)&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;This device is also useful as a general connection point to wire up your design to another part of your project. Our various solder wires solder well into these plated through hole pads.&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/11375"&gt; Hook-Up Wire - Assortment (Stranded, 22 AWG)&lt;/a&gt; (PRT-11375)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/11367"&gt; Hook-Up Wire - Assortment (Solid Core, 22 AWG)&lt;/a&gt; (PRT-11367)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/categories/141"&gt; View the entire wire category on our website here&lt;/a&gt;&lt;/li&gt;
&lt;p&gt;&lt;/p&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;Special notes:&lt;/b&gt;

 Molex polarized connector foot print use with: PRT-08233 with associated crimp pins and housings.&lt;br&gt;&lt;br&gt;

2.54_SCREWTERM for use with  PRT-10571.&lt;br&gt;&lt;br&gt;

3.5mm Screw Terminal footprints for  PRT-08084&lt;br&gt;&lt;br&gt;

5mm Screw Terminal footprints for use with PRT-08432</description>
<gates>
<gate name="G$1" symbol="CONN_02" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="1X02">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SF_ID" value="PRT-09918" constant="no"/>
</technology>
</technologies>
</device>
<device name="3.5MM" package="SCREWTERMINAL-3.5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08399" constant="no"/>
</technology>
</technologies>
</device>
<device name="-JST-2MM-SMT" package="JST-2-SMD">
<connects>
<connect gate="G$1" pin="1" pad="2"/>
<connect gate="G$1" pin="2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-11443"/>
</technology>
</technologies>
</device>
<device name="PTH2" package="1X02_BIG">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="4UCON-15767" package="JST-2-SMD-VERT">
<connects>
<connect gate="G$1" pin="1" pad="GND"/>
<connect gate="G$1" pin="2" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="5MM" package="SCREWTERMINAL-5MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SF_SKU" value="PRT-08432" constant="no"/>
</technology>
</technologies>
</device>
<device name="LOCK" package="1X02_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="SF_ID" value="PRT-09918" constant="no"/>
</technology>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X02_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM_LOCK" package="SCREWTERMINAL-3.5MM-2_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08399" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH3" package="1X02_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1X02_NO_SILK" package="1X02_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-2" package="JST-2-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09863" constant="no"/>
<attribute name="SKU" value="PRT-09914" constant="no"/>
</technology>
</technologies>
</device>
<device name="PTH4" package="1X02_XTRA_BIG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="POGO_PIN_HOLES_ONLY" package="1X02_PP_HOLES_ONLY">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="3.5MM-NO_SILK" package="SCREWTERMINAL-3.5MM-2-NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08399" constant="no"/>
</technology>
</technologies>
</device>
<device name="-JST-2-PTH-NO_SILK" package="JST-2-PTH-NS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="JST-PTH-2-KIT" package="JST-2-PTH-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SPRING-2.54-RA" package="SPRINGTERMINAL-2.54MM-2">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2.54MM_SCREWTERM" package="1X02_2.54_SCREWTERM">
<connects>
<connect gate="G$1" pin="1" pad="P1"/>
<connect gate="G$1" pin="2" pad="P2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMALL_POKEHOME" package="1X02_POKEHOME">
<connects>
<connect gate="G$1" pin="1" pad="P1 P3"/>
<connect gate="G$1" pin="2" pad="P2 P4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-13512"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CONN_06X2" prefix="J" uservalue="yes">
<description>&lt;h3&gt;Multi connection point. Often used as Generic Header-pin footprint for 0.1 inch spaced/style header connections&lt;/h3&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;On any of the 0.1 inch spaced packages, you can populate with these:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/116"&gt; Break Away Headers - Straight&lt;/a&gt; (PRT-00116)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/553"&gt; Break Away Male Headers - Right Angle&lt;/a&gt; (PRT-00553)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/115"&gt; Female Headers&lt;/a&gt; (PRT-00115)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/117"&gt; Break Away Headers - Machine Pin&lt;/a&gt; (PRT-00117)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/743"&gt; Break Away Female Headers - Swiss Machine Pin&lt;/a&gt; (PRT-00743)&lt;/li&gt;
&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="CONN_06X2" x="0" y="0"/>
</gates>
<devices>
<device name="SMD_FEMALE" package="2X6_SMD">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="PTH_FEMALE" package="2X6">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="10" pad="10"/>
<connect gate="G$1" pin="11" pad="11"/>
<connect gate="G$1" pin="12" pad="12"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
<connect gate="G$1" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-12423"/>
<attribute name="VALUE" value="2X6 FEMALE"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CONN_04" prefix="J" uservalue="yes">
<description>&lt;h3&gt;Multi connection point. Often used as Generic Header-pin footprint for 0.1 inch spaced/style header connections&lt;/h3&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;On any of the 0.1 inch spaced packages, you can populate with these:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/116"&gt; Break Away Headers - Straight&lt;/a&gt; (PRT-00116)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/553"&gt; Break Away Male Headers - Right Angle&lt;/a&gt; (PRT-00553)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/115"&gt; Female Headers&lt;/a&gt; (PRT-00115)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/117"&gt; Break Away Headers - Machine Pin&lt;/a&gt; (PRT-00117)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/743"&gt; Break Away Female Headers - Swiss Machine Pin&lt;/a&gt; (PRT-00743)&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt; For SCREWTERMINALS and SPRING TERMINALS visit here:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/search/results?term=Screw+Terminals"&gt; Screw Terimnals on SparkFun.com&lt;/a&gt; (5mm/3.5mm/2.54mm spacing)&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;This device is also useful as a general connection point to wire up your design to another part of your project. Our various solder wires solder well into these plated through hole pads.&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/11375"&gt; Hook-Up Wire - Assortment (Stranded, 22 AWG)&lt;/a&gt; (PRT-11375)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/11367"&gt; Hook-Up Wire - Assortment (Solid Core, 22 AWG)&lt;/a&gt; (PRT-11367)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/categories/141"&gt; View the entire wire category on our website here&lt;/a&gt;&lt;/li&gt;
&lt;p&gt;&lt;/p&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;Special notes:&lt;/b&gt;
&lt;p&gt; &lt;/p&gt; Molex polarized connector foot print use with SKU : PRT-08231 with associated crimp pins and housings. 1MM SMD Version SKU: PRT-10208</description>
<gates>
<gate name="G$1" symbol="CONN_04" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="1X04">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09696" constant="no"/>
</technology>
</technologies>
</device>
<device name="POLAR" package="MOLEX-1X4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08186" constant="no"/>
<attribute name="SF_ID" value="PRT-08231" constant="no"/>
</technology>
</technologies>
</device>
<device name="SCREW" package="SCREWTERMINAL-3.5MM-4">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="2xCONN-08399" constant="no"/>
<attribute name="SF_ID" value="2xPRT-08084" constant="no"/>
</technology>
</technologies>
</device>
<device name="1.27MM" package="1X04_1.27MM">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="LOCK" package="1X04_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09696" constant="no"/>
</technology>
</technologies>
</device>
<device name="LOCK_LONGPADS" package="1X04_LOCK_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09696" constant="no"/>
</technology>
</technologies>
</device>
<device name="POLAR_LOCK" package="MOLEX-1X4_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08186" constant="no"/>
<attribute name="SF_ID" value="PRT-08231" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD" package="1X04_SMD_RA_MALE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09140" constant="no"/>
<attribute name="SF_ID" value="PRT-12638" constant="no"/>
</technology>
</technologies>
</device>
<device name="LONGPADS" package="1X04_LONGPADS">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09696" constant="no"/>
</technology>
</technologies>
</device>
<device name="1X04_NO_SILK" package="1X04_NO_SILK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09696" constant="no"/>
</technology>
</technologies>
</device>
<device name="JST-PTH" package="JST-4-PTH">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="WIRE-13531" constant="no"/>
<attribute name="SF_ID" value="PRT-09916" constant="no"/>
</technology>
</technologies>
</device>
<device name="SCREW_LOCK" package="SCREWTERMINAL-3.5MM-4_LOCK">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="SMD2" package="1X04_1MM_RA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-10310" constant="no"/>
<attribute name="SF_ID" value="PRT-10208" constant="no"/>
</technology>
</technologies>
</device>
<device name="SMD_STRAIGHT_COMBO" package="1X04_SMD_VERTICAL_COMBO">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08511"/>
<attribute name="VALUE" value="1X04_SMD_STRAIGHT_COMBO"/>
</technology>
</technologies>
</device>
<device name="SMD_LONG" package="1X04_SMD_LONG">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-09140" constant="no"/>
<attribute name="SF_ID" value="PRT-12638" constant="no"/>
</technology>
</technologies>
</device>
<device name="JST-PTH-VERT" package="JST-4-PTH-VERT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-13251"/>
</technology>
</technologies>
</device>
<device name="SMD_RA_FEMALE" package="1X04_SMD_RA_FEMALE">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="AVX_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 30/04/2012 16:26:10</description>
<packages>
<package name="CAPC1608X94N">
<smd name="1" x="-0.7112" y="0" dx="0.6604" dy="0.9398" layer="1"/>
<smd name="2" x="0.7112" y="0" dx="0.6604" dy="0.9398" layer="1"/>
<text x="-3.4544" y="1.27" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.175" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<wire x1="-0.381" y1="-0.4826" x2="-0.381" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.381" y1="0.4826" x2="-0.8636" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.8636" y1="-0.4826" x2="-0.381" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.381" y1="0.4826" x2="0.381" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.381" y1="-0.4826" x2="0.8636" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.8636" y1="0.4826" x2="0.381" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.381" y1="-0.4826" x2="0.381" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.8636" y1="-0.4826" x2="0.8636" y2="0.4826" width="0" layer="51"/>
<wire x1="0.381" y1="0.4826" x2="-0.381" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.8636" y1="0.4826" x2="-0.8636" y2="-0.4826" width="0" layer="51"/>
</package>
<package name="CAPC2013X140N">
<smd name="1" x="-0.8128" y="0" dx="0.9144" dy="1.4478" layer="1"/>
<smd name="2" x="0.8128" y="0" dx="0.9144" dy="1.4478" layer="1"/>
<text x="-3.4544" y="1.905" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.175" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<wire x1="-0.3556" y1="-0.7366" x2="-0.3556" y2="0.7366" width="0" layer="51"/>
<wire x1="-0.3556" y1="0.7366" x2="-1.0922" y2="0.7366" width="0" layer="51"/>
<wire x1="-1.0922" y1="-0.7366" x2="-0.3556" y2="-0.7366" width="0" layer="51"/>
<wire x1="0.3556" y1="0.7366" x2="0.3556" y2="-0.7366" width="0" layer="51"/>
<wire x1="0.3556" y1="-0.7366" x2="1.0922" y2="-0.7366" width="0" layer="51"/>
<wire x1="1.0922" y1="0.7366" x2="0.3556" y2="0.7366" width="0" layer="51"/>
<wire x1="-0.3556" y1="-0.7366" x2="0.3556" y2="-0.7366" width="0" layer="51"/>
<wire x1="1.0922" y1="-0.7366" x2="1.0922" y2="0.7366" width="0" layer="51"/>
<wire x1="0.3556" y1="0.7366" x2="-0.3556" y2="0.7366" width="0" layer="51"/>
<wire x1="-1.0922" y1="0.7366" x2="-1.0922" y2="-0.7366" width="0" layer="51"/>
</package>
<package name="CAPC1005X60N">
<smd name="1" x="-0.4826" y="0" dx="0.4572" dy="0.6096" layer="1"/>
<smd name="2" x="0.4826" y="0" dx="0.4572" dy="0.6096" layer="1"/>
<wire x1="-0.254" y1="-0.3048" x2="-0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.254" y1="0.3048" x2="-0.5588" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.5588" y1="-0.3048" x2="-0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="0.3048" x2="0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="-0.3048" x2="0.5588" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.5588" y1="0.3048" x2="0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.254" y1="-0.3048" x2="0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.5588" y1="-0.3048" x2="0.5588" y2="0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="0.3048" x2="-0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.5588" y1="0.3048" x2="-0.5588" y2="-0.3048" width="0" layer="51"/>
<text x="-3.4544" y="1.27" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.175" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
<package name="CAPC3216X127N">
<smd name="1" x="-1.4986" y="0" dx="1.1176" dy="1.8034" layer="1"/>
<smd name="2" x="1.4986" y="0" dx="1.1176" dy="1.8034" layer="1"/>
<wire x1="-0.6096" y1="-0.889" x2="0.6096" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="0.6096" y1="0.889" x2="-0.6096" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="-0.889" x2="-0.9398" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.9398" y1="0.889" x2="-1.7018" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.7018" y1="-0.889" x2="-0.9398" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="0.889" x2="0.9398" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="-0.889" x2="1.7018" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.7018" y1="0.889" x2="0.9398" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-0.9398" y1="-0.889" x2="0.9398" y2="-0.889" width="0.1524" layer="51"/>
<wire x1="1.7018" y1="-0.889" x2="1.7018" y2="0.889" width="0.1524" layer="51"/>
<wire x1="0.9398" y1="0.889" x2="-0.9398" y2="0.889" width="0.1524" layer="51"/>
<wire x1="-1.7018" y1="0.889" x2="-1.7018" y2="-0.889" width="0.1524" layer="51"/>
<text x="-4.5974" y="1.5748" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.7658" y="-3.6322" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
<package name="CAPC1608X90N">
<smd name="1" x="-0.8128" y="0" dx="0.8636" dy="0.9652" layer="1"/>
<smd name="2" x="0.8128" y="0" dx="0.8636" dy="0.9652" layer="1"/>
<wire x1="-0.381" y1="-0.4826" x2="-0.381" y2="0.4826" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="0.4826" x2="-0.8636" y2="0.4826" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-0.4826" x2="-0.381" y2="-0.4826" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0.4826" x2="0.381" y2="-0.4826" width="0.1524" layer="51"/>
<wire x1="0.381" y1="-0.4826" x2="0.8636" y2="-0.4826" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="0.4826" x2="0.381" y2="0.4826" width="0.1524" layer="51"/>
<wire x1="-0.381" y1="-0.4826" x2="0.381" y2="-0.4826" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-0.4826" x2="0.8636" y2="0.4826" width="0.1524" layer="51"/>
<wire x1="0.381" y1="0.4826" x2="-0.381" y2="0.4826" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="0.4826" x2="-0.8636" y2="-0.4826" width="0.1524" layer="51"/>
<text x="-4.5212" y="1.0414" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.7404" y="-3.2258" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="CAPH">
<pin name="C2" x="7.62" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="C1" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="3.4798" y1="-1.905" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<wire x1="3.4798" y1="0" x2="3.4798" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="-1.905" x2="4.1148" y2="0" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="4.1148" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="5.08" y2="0" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<text x="-1.905" y="-7.8232" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<text x="-0.9144" y="2.7686" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="06033D105KAT2A" prefix="C">
<description>Capacitor 0603</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC1608X94N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="06033D105KAT2A" constant="no"/>
<attribute name="OC_FARNELL" value="1658868" constant="no"/>
<attribute name="OC_NEWARK" value="96M1265" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="1uF" constant="no"/>
<attribute name="VOLTAGERATING" value="25V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="08053D475KAT2A" prefix="C">
<description>Capacitor 0805</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC2013X140N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="08053D475KAT2A" constant="no"/>
<attribute name="OC_FARNELL" value="1657932" constant="no"/>
<attribute name="OC_NEWARK" value="27M3797" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="4.7uF" constant="no"/>
<attribute name="VOLTAGERATING" value="25V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0402ZD225KAT2A" prefix="C">
<description>Capacitor 0402</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC1005X60N">
<connects>
<connect gate="A" pin="C1" pad="2"/>
<connect gate="A" pin="C2" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="0402ZD225KAT2A" constant="no"/>
<attribute name="OC_FARNELL" value="1867952" constant="no"/>
<attribute name="OC_NEWARK" value="-" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="2.2uF" constant="no"/>
<attribute name="VOLTAGERATING" value="10V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="12067C332KAT2A" prefix="C">
<description>Capacitor 1206</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC3216X127N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="12067C332KAT2A" constant="no"/>
<attribute name="OC_FARNELL" value="-" constant="no"/>
<attribute name="OC_NEWARK" value="89C3187" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="3300PF" constant="no"/>
<attribute name="VOLTAGERATING" value="500V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="06035C103KAZ2A" prefix="C">
<description>Capacitor 0603</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC1608X90N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="06035C103KAZ2A" constant="no"/>
<attribute name="OC_FARNELL" value="7569548" constant="no"/>
<attribute name="OC_NEWARK" value="10R5936" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="10nF" constant="no"/>
<attribute name="VOLTAGERATING" value="50V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Resistors">
<description>&lt;h3&gt;SparkFun Resistors&lt;/h3&gt;
This library contains resistors. Reference designator:R. 
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="AXIAL-0.3">
<description>&lt;h3&gt;AXIAL-0.3&lt;/h3&gt;
&lt;p&gt;Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;/p&gt;</description>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796"/>
<text x="0" y="1.016" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;Name</text>
<text x="0" y="-1.016" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;Value</text>
</package>
<package name="AXIAL-0.3-KIT">
<description>&lt;h3&gt;AXIAL-0.3-KIT&lt;/h3&gt;
&lt;p&gt;Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;/p&gt;
&lt;p&gt;&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of the AXIAL-0.3 package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.&lt;/p&gt;</description>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<text x="0" y="1.524" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.524" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<polygon width="0.127" layer="30">
<vertex x="3.8201" y="-0.9449" curve="-90"/>
<vertex x="2.8652" y="-0.0152" curve="-90.011749"/>
<vertex x="3.8176" y="0.9602" curve="-90"/>
<vertex x="4.7676" y="-0.0178" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.8176" y="-0.4369" curve="-90.012891"/>
<vertex x="3.3731" y="-0.0127" curve="-90"/>
<vertex x="3.8176" y="0.4546" curve="-90"/>
<vertex x="4.2595" y="-0.0025" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.8075" y="-0.9525" curve="-90"/>
<vertex x="-4.7624" y="-0.0228" curve="-90.011749"/>
<vertex x="-3.81" y="0.9526" curve="-90"/>
<vertex x="-2.86" y="-0.0254" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.81" y="-0.4445" curve="-90.012891"/>
<vertex x="-4.2545" y="-0.0203" curve="-90"/>
<vertex x="-3.81" y="0.447" curve="-90"/>
<vertex x="-3.3681" y="-0.0101" curve="-90.012967"/>
</polygon>
</package>
<package name="0402">
<description>&lt;p&gt;&lt;b&gt;Generic 1005 (0402) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-0.2704" y1="0.2286" x2="0.2704" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="0.2704" y1="-0.2286" x2="-0.2704" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="0.65" x2="1.2" y2="0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="0.65" x2="1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="-0.65" x2="-1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="-1.2" y1="-0.65" x2="-1.2" y2="0.65" width="0.0508" layer="39"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.3048" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0603">
<description>&lt;p&gt;&lt;b&gt;Generic 1608 (0603) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-1.6" y1="0.7" x2="1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="0.7" x2="1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="-0.7" x2="-1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="-1.6" y1="-0.7" x2="-1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0805">
<description>&lt;p&gt;&lt;b&gt;Generic 2012 (0805) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="0" y="0.889" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.889" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<wire x1="-1.5" y1="0.8" x2="1.5" y2="0.8" width="0.0508" layer="39"/>
<wire x1="1.5" y1="0.8" x2="1.5" y2="-0.8" width="0.0508" layer="39"/>
<wire x1="1.5" y1="-0.8" x2="-1.5" y2="-0.8" width="0.0508" layer="39"/>
<wire x1="-1.5" y1="-0.8" x2="-1.5" y2="0.8" width="0.0508" layer="39"/>
</package>
<package name="1206">
<description>&lt;p&gt;&lt;b&gt;Generic 3216 (1206) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-2.4" y1="1.1" x2="2.4" y2="1.1" width="0.0508" layer="39"/>
<wire x1="2.4" y1="-1.1" x2="-2.4" y2="-1.1" width="0.0508" layer="39"/>
<wire x1="-2.4" y1="-1.1" x2="-2.4" y2="1.1" width="0.0508" layer="39"/>
<wire x1="2.4" y1="1.1" x2="2.4" y2="-1.1" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="0" y="1.143" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.143" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="0" y="1.524" size="1.778" layer="95" font="vector" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.524" size="1.778" layer="96" font="vector" align="top-center">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RESISTOR" prefix="R">
<description>Generic Resistor Package</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="AXIAL-0.3" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
<device name="AXIAL-0.3-KIT" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
<device name="0402" package="0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
<device name="0603" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-PowerSymbols">
<description>&lt;h3&gt;SparkFun Power Symbols&lt;/h3&gt;
This library contains power, ground, and voltage-supply symbols.
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
</packages>
<symbols>
<symbol name="DGND">
<description>&lt;h3&gt;Digital Ground Supply&lt;/h3&gt;</description>
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
<text x="0" y="-0.254" size="1.778" layer="96" align="top-center">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" prefix="GND">
<description>&lt;h3&gt;Ground Supply Symbol&lt;/h3&gt;
&lt;p&gt;Generic signal ground supply symbol.&lt;/p&gt;</description>
<gates>
<gate name="1" symbol="DGND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Kemet_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 28/03/2012 12:54:09</description>
<packages>
<package name="CAPC1005X60N">
<smd name="1" x="-0.4826" y="0" dx="0.4572" dy="0.6096" layer="1"/>
<smd name="2" x="0.4826" y="0" dx="0.4572" dy="0.6096" layer="1"/>
<wire x1="-0.254" y1="-0.3048" x2="-0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.254" y1="0.3048" x2="-0.5588" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.5588" y1="-0.3048" x2="-0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="0.3048" x2="0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="-0.3048" x2="0.5588" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.5588" y1="0.3048" x2="0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.254" y1="-0.3048" x2="0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.5588" y1="-0.3048" x2="0.5588" y2="0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="0.3048" x2="-0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.5588" y1="0.3048" x2="-0.5588" y2="-0.3048" width="0" layer="51"/>
<text x="-3.4544" y="1.27" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.175" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
<package name="CAPC1608X85N">
<smd name="1" x="-0.7112" y="0" dx="0.6604" dy="0.9398" layer="1"/>
<smd name="2" x="0.7112" y="0" dx="0.6604" dy="0.9398" layer="1"/>
<wire x1="-0.381" y1="-0.4826" x2="-0.381" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.381" y1="0.4826" x2="-0.8636" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.8636" y1="-0.4826" x2="-0.381" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.381" y1="0.4826" x2="0.381" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.381" y1="-0.4826" x2="0.8636" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.8636" y1="0.4826" x2="0.381" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.381" y1="-0.4826" x2="0.381" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.8636" y1="-0.4826" x2="0.8636" y2="0.4826" width="0" layer="51"/>
<wire x1="0.381" y1="0.4826" x2="-0.381" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.8636" y1="0.4826" x2="-0.8636" y2="-0.4826" width="0" layer="51"/>
<text x="-3.4544" y="1.27" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.175" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="CAPH">
<pin name="C2" x="7.62" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="C1" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="3.4798" y1="-1.905" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<wire x1="3.4798" y1="0" x2="3.4798" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="-1.905" x2="4.1148" y2="0" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="4.1148" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="5.08" y2="0" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<text x="-5.6642" y="-9.3472" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<text x="-0.9144" y="2.7686" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="C0402C103K5RACTU" prefix="C">
<description>CAPACITOR, 0402</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC1005X60N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="C0402C103K5RACTU" constant="no"/>
<attribute name="OC_FARNELL" value="1414575" constant="no"/>
<attribute name="OC_NEWARK" value="78H4783" constant="no"/>
<attribute name="SUPPLIER" value="Kemet" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="10 nF" constant="no"/>
<attribute name="VOLTAGERATING" value="50V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C0603C100J5GACTU" prefix="C">
<description>CAPACITOR, 0603</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC1608X85N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="C0603C100J5GACTU" constant="no"/>
<attribute name="OC_FARNELL" value="1414601" constant="no"/>
<attribute name="OC_NEWARK" value="64K2831" constant="no"/>
<attribute name="SUPPLIER" value="Kemet" constant="no"/>
<attribute name="TOLERANCE" value="±5%" constant="no"/>
<attribute name="VALUE" value="10pF" constant="no"/>
<attribute name="VOLTAGERATING" value="50V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Murata_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 21/03/2012 17:47:01</description>
<packages>
<package name="CAPC2013X135N">
<smd name="1" x="-0.8128" y="0" dx="0.9144" dy="1.4478" layer="1"/>
<smd name="2" x="0.8128" y="0" dx="0.9144" dy="1.4478" layer="1"/>
<wire x1="-0.3556" y1="-0.7366" x2="-0.3556" y2="0.7366" width="0" layer="51"/>
<wire x1="-0.3556" y1="0.7366" x2="-1.0922" y2="0.7366" width="0" layer="51"/>
<wire x1="-1.0922" y1="-0.7366" x2="-0.3556" y2="-0.7366" width="0" layer="51"/>
<wire x1="0.3556" y1="0.7366" x2="0.3556" y2="-0.7366" width="0" layer="51"/>
<wire x1="0.3556" y1="-0.7366" x2="1.0922" y2="-0.7366" width="0" layer="51"/>
<wire x1="1.0922" y1="0.7366" x2="0.3556" y2="0.7366" width="0" layer="51"/>
<wire x1="-0.3556" y1="-0.7366" x2="0.3556" y2="-0.7366" width="0" layer="51"/>
<wire x1="1.0922" y1="-0.7366" x2="1.0922" y2="0.7366" width="0" layer="51"/>
<wire x1="0.3556" y1="0.7366" x2="-0.3556" y2="0.7366" width="0" layer="51"/>
<wire x1="-1.0922" y1="0.7366" x2="-1.0922" y2="-0.7366" width="0" layer="51"/>
<text x="-3.4544" y="1.27" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.175" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
<package name="CAPC3225X270N">
<smd name="1" x="-1.397" y="0" dx="0.9144" dy="2.6924" layer="1"/>
<smd name="2" x="1.397" y="0" dx="0.9144" dy="2.6924" layer="1"/>
<wire x1="-0.6096" y1="-1.3462" x2="0.6096" y2="-1.3462" width="0.1524" layer="21"/>
<wire x1="0.6096" y1="1.3462" x2="-0.6096" y2="1.3462" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="-1.3462" x2="-0.9398" y2="1.3462" width="0" layer="51"/>
<wire x1="-0.9398" y1="1.3462" x2="-1.7018" y2="1.3462" width="0" layer="51"/>
<wire x1="-1.7018" y1="-1.3462" x2="-0.9398" y2="-1.3462" width="0" layer="51"/>
<wire x1="0.9398" y1="1.3462" x2="0.9398" y2="-1.3462" width="0" layer="51"/>
<wire x1="0.9398" y1="-1.3462" x2="1.7018" y2="-1.3462" width="0" layer="51"/>
<wire x1="1.7018" y1="1.3462" x2="0.9398" y2="1.3462" width="0" layer="51"/>
<wire x1="-0.9398" y1="-1.3462" x2="0.9398" y2="-1.3462" width="0" layer="51"/>
<wire x1="1.7018" y1="-1.3462" x2="1.7018" y2="1.3462" width="0" layer="51"/>
<wire x1="0.9398" y1="1.3462" x2="-0.9398" y2="1.3462" width="0" layer="51"/>
<wire x1="-1.7018" y1="1.3462" x2="-1.7018" y2="-1.3462" width="0" layer="51"/>
<text x="-3.4544" y="2.54" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-4.445" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="CAPH">
<pin name="C2" x="7.62" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="C1" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="3.4798" y1="-1.905" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<wire x1="3.4798" y1="0" x2="3.4798" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="-1.905" x2="4.1148" y2="0" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="4.1148" y2="1.905" width="0.2032" layer="94"/>
<wire x1="4.1148" y1="0" x2="5.08" y2="0" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.4798" y2="0" width="0.2032" layer="94"/>
<text x="-5.6642" y="-9.3472" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<text x="-0.9144" y="2.7686" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="GRM21BR60J226ME39L" prefix="C">
<description>CAPACITOR, 0805</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC2013X135N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="GRM21BR60J226ME39L " constant="no"/>
<attribute name="OC_FARNELL" value="1735531" constant="no"/>
<attribute name="OC_NEWARK" value="24R6338" constant="no"/>
<attribute name="SUPPLIER" value="Murata" constant="no"/>
<attribute name="TOLERANCE" value="±20%" constant="no"/>
<attribute name="VALUE" value="22uF" constant="no"/>
<attribute name="VOLTAGERATING" value="6.3V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GRM32ER61C226KE20L" prefix="C">
<description>CAPACITOR, 1210</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC3225X270N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="GRM32ER61C226KE20L" constant="no"/>
<attribute name="OC_FARNELL" value="9527800" constant="no"/>
<attribute name="OC_NEWARK" value="97K0673" constant="no"/>
<attribute name="SUPPLIER" value="Murata" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="22uF" constant="no"/>
<attribute name="VOLTAGERATING" value="16V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Vishay_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 30/07/2012 16:36:08</description>
<packages>
<package name="RESC1005X40N">
<smd name="1" x="-0.5842" y="0" dx="0.6604" dy="0.6096" layer="1"/>
<smd name="2" x="0.5842" y="0" dx="0.6604" dy="0.6096" layer="1"/>
<wire x1="-0.254" y1="-0.3048" x2="-0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.254" y1="0.3048" x2="-0.5588" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.5588" y1="-0.3048" x2="-0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="0.3048" x2="0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="-0.3048" x2="0.5588" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.5588" y1="0.3048" x2="0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.254" y1="-0.3048" x2="0.254" y2="-0.3048" width="0" layer="51"/>
<wire x1="0.5588" y1="-0.3048" x2="0.5588" y2="0.3048" width="0" layer="51"/>
<wire x1="0.254" y1="0.3048" x2="-0.254" y2="0.3048" width="0" layer="51"/>
<wire x1="-0.5588" y1="0.3048" x2="-0.5588" y2="-0.3048" width="0" layer="51"/>
<text x="-3.4544" y="1.27" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.175" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
<package name="RESC1608X60N">
<smd name="1" x="-0.8382" y="0" dx="0.762" dy="0.9398" layer="1"/>
<smd name="2" x="0.8382" y="0" dx="0.762" dy="0.9398" layer="1"/>
<wire x1="-0.127" y1="-0.4826" x2="0.127" y2="-0.4826" width="0.1524" layer="21"/>
<wire x1="0.127" y1="0.4826" x2="-0.127" y2="0.4826" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="-0.4826" x2="-0.4572" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.4572" y1="0.4826" x2="-0.8382" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.8382" y1="-0.4826" x2="-0.4572" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.4572" y1="0.4826" x2="0.4572" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.4572" y1="-0.4826" x2="0.8382" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.8382" y1="0.4826" x2="0.4572" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.4572" y1="-0.4826" x2="0.4572" y2="-0.4826" width="0" layer="51"/>
<wire x1="0.8382" y1="-0.4826" x2="0.8382" y2="0.4826" width="0" layer="51"/>
<wire x1="0.4572" y1="0.4826" x2="-0.4572" y2="0.4826" width="0" layer="51"/>
<wire x1="-0.8382" y1="0.4826" x2="-0.8382" y2="-0.4826" width="0" layer="51"/>
<text x="-3.4544" y="1.27" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.175" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="RESH">
<pin name="2" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="1" x="12.7" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="4.445" y1="-1.27" x2="5.715" y2="1.27" width="0.2032" layer="94"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="6.985" y1="-1.27" x2="8.255" y2="1.27" width="0.2032" layer="94"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.175" y2="1.27" width="0.2032" layer="94"/>
<wire x1="9.525" y1="-1.27" x2="10.16" y2="0" width="0.2032" layer="94"/>
<text x="-3.1242" y="-8.7376" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<text x="0.9906" y="2.7686" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="CRCW0402316KFKED" prefix="R">
<description>RESISTOR, 0402</description>
<gates>
<gate name="A" symbol="RESH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="RESC1005X40N">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="CRCW0402316KFKED" constant="no"/>
<attribute name="OC_FARNELL" value="1652782" constant="no"/>
<attribute name="OC_NEWARK" value="52K6969" constant="no"/>
<attribute name="SUPPLIER" value="Vishay" constant="no"/>
<attribute name="TOLERANCE" value="±1%" constant="no"/>
<attribute name="VALUE" value="316K Ohms" constant="no"/>
<attribute name="WATTAGE" value="0.063W" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRCW0402100KFKED" prefix="R">
<description>RESISTOR, 0402</description>
<gates>
<gate name="A" symbol="RESH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="RESC1005X40N">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="CRCW0402100KFKED" constant="no"/>
<attribute name="OC_FARNELL" value="1469671" constant="no"/>
<attribute name="OC_NEWARK" value="-" constant="no"/>
<attribute name="SUPPLIER" value="Vishay" constant="no"/>
<attribute name="TOLERANCE" value="±1%" constant="no"/>
<attribute name="VALUE" value="100K Ohms" constant="no"/>
<attribute name="WATTAGE" value="0.063W" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRCW0402100KJNED" prefix="R">
<description>RESISTOR, 0402</description>
<gates>
<gate name="A" symbol="RESH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="RESC1005X40N">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="CRCW0402100KJNED" constant="no"/>
<attribute name="OC_FARNELL" value="1652738" constant="no"/>
<attribute name="OC_NEWARK" value="59M6699" constant="no"/>
<attribute name="SUPPLIER" value="Vishay" constant="no"/>
<attribute name="TOLERANCE" value="±5%" constant="no"/>
<attribute name="VALUE" value="100K Ohms" constant="no"/>
<attribute name="WATTAGE" value="0.063W" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRCW060311K0FKEA" prefix="R">
<description>RESISTOR, 0603</description>
<gates>
<gate name="A" symbol="RESH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="RESC1608X60N">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="CRCW060311K0FKEA" constant="no"/>
<attribute name="OC_FARNELL" value="1570716" constant="no"/>
<attribute name="OC_NEWARK" value="89M6730" constant="no"/>
<attribute name="SUPPLIER" value="VISHAY DALE ELECTRONICS" constant="no"/>
<attribute name="TOLERANCE" value="±1%" constant="no"/>
<attribute name="VALUE" value="11K Ohms" constant="no"/>
<attribute name="WATTAGE" value="0.1 W" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRCW06031M00JNEA" prefix="R">
<description>RESISTOR, 0603</description>
<gates>
<gate name="A" symbol="RESH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="RESC1608X60N">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="CRCW06031M00JNEA" constant="no"/>
<attribute name="OC_FARNELL" value="1514706" constant="no"/>
<attribute name="OC_NEWARK" value="59M6756" constant="no"/>
<attribute name="SUPPLIER" value="VISHAY DALE ELECTRONICS" constant="no"/>
<attribute name="TOLERANCE" value="±5%" constant="no"/>
<attribute name="VALUE" value="1M Ohm" constant="no"/>
<attribute name="WATTAGE" value="0.1 W" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Bourns_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 30/07/2012 17:04:24</description>
<packages>
<package name="INDC3225X22N">
<smd name="1" x="-1.524" y="0" dx="1.2446" dy="2.159" layer="1"/>
<smd name="2" x="1.524" y="0" dx="1.2446" dy="2.159" layer="1"/>
<wire x1="-0.6096" y1="-1.2446" x2="0.6096" y2="-1.2446" width="0.1524" layer="21"/>
<wire x1="0.6096" y1="1.2446" x2="-0.6096" y2="1.2446" width="0.1524" layer="21"/>
<wire x1="-1.6002" y1="-1.2446" x2="1.6002" y2="-1.2446" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="-1.2446" x2="1.6002" y2="1.2446" width="0.1524" layer="51"/>
<wire x1="1.6002" y1="1.2446" x2="-1.6002" y2="1.2446" width="0.1524" layer="51"/>
<wire x1="-1.6002" y1="1.2446" x2="-1.6002" y2="-1.2446" width="0.1524" layer="51"/>
<text x="-4.4958" y="1.6764" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.5118" y="-3.8608" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="IND">
<pin name="1" x="15.24" y="0" length="short" direction="pas" rot="R180"/>
<pin name="2" x="0" y="0" length="short" direction="pas"/>
<wire x1="5.08" y1="0" x2="5.08" y2="1.27" width="0.2032" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="1.27" width="0.2032" layer="94"/>
<wire x1="12.7" y1="0" x2="12.7" y2="1.27" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="1.27" width="0.2032" layer="94"/>
<wire x1="10.16" y1="0" x2="10.16" y2="1.27" width="0.2032" layer="94"/>
<wire x1="5.08" y1="1.27" x2="7.62" y2="1.27" width="0" layer="94" curve="-180"/>
<wire x1="2.54" y1="1.27" x2="5.08" y2="1.27" width="0" layer="94" curve="-180"/>
<wire x1="7.62" y1="1.27" x2="10.16" y2="1.27" width="0" layer="94" curve="-180"/>
<wire x1="10.16" y1="1.27" x2="12.7" y2="1.27" width="0" layer="94" curve="-180"/>
<text x="2.2606" y="4.0386" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-2.4892" y="-7.4676" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PM1210-1R0J-RC" prefix="L">
<description>CHIP INDUCTOR, 1UH, 400MA 5% 120MHZ</description>
<gates>
<gate name="A" symbol="IND" x="0" y="0"/>
</gates>
<devices>
<device name="" package="INDC3225X22N">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="PM1210-1R0J-RC" constant="no"/>
<attribute name="OC_FARNELL" value="1180462" constant="no"/>
<attribute name="OC_NEWARK" value="63K3090" constant="no"/>
<attribute name="SUPPLIER" value="BOURNS" constant="no"/>
<attribute name="TOLERANCE" value="±5 %" constant="no"/>
<attribute name="VALUE" value="1.0 uH" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Dialight_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 13/06/2012 13:59:22</description>
<packages>
<package name="LED_597-3311-407F">
<smd name="1" x="-1.4986" y="0" dx="1.397" dy="1.6002" layer="1"/>
<smd name="2" x="1.4986" y="0" dx="1.397" dy="1.6002" layer="1"/>
<wire x1="3.4036" y1="-0.0508" x2="2.6416" y2="-0.0508" width="0.1524" layer="21"/>
<wire x1="3.0226" y1="0.3302" x2="3.0226" y2="-0.4318" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="-0.762" x2="0.4572" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="0.762" x2="-0.4572" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.4036" y1="-0.0508" x2="2.6416" y2="-0.0508" width="0.1524" layer="51"/>
<wire x1="3.0226" y1="0.3302" x2="3.0226" y2="-0.4318" width="0.1524" layer="51"/>
<wire x1="-1.4986" y1="-0.762" x2="1.4986" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.4986" y1="-0.762" x2="1.4986" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.4986" y1="0.762" x2="-1.4986" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-1.4986" y1="0.762" x2="-1.4986" y2="-0.762" width="0.1524" layer="51"/>
<text x="-4.699" y="1.4732" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.6896" y="-3.302" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
<package name="LED_597-3111-407F">
<smd name="1" x="-1.4986" y="0" dx="1.397" dy="1.6002" layer="1"/>
<smd name="2" x="1.4986" y="0" dx="1.397" dy="1.6002" layer="1"/>
<wire x1="3.4036" y1="-0.0508" x2="2.6416" y2="-0.0508" width="0.1524" layer="21"/>
<wire x1="3.0226" y1="0.3302" x2="3.0226" y2="-0.4318" width="0.1524" layer="21"/>
<wire x1="-0.4572" y1="-0.762" x2="0.4572" y2="-0.762" width="0.1524" layer="21"/>
<wire x1="0.4572" y1="0.762" x2="-0.4572" y2="0.762" width="0.1524" layer="21"/>
<wire x1="3.4036" y1="-0.0508" x2="2.6416" y2="-0.0508" width="0.1524" layer="51"/>
<wire x1="3.0226" y1="0.3302" x2="3.0226" y2="-0.4318" width="0.1524" layer="51"/>
<wire x1="-1.4986" y1="-0.762" x2="1.4986" y2="-0.762" width="0.1524" layer="51"/>
<wire x1="1.4986" y1="-0.762" x2="1.4986" y2="0.762" width="0.1524" layer="51"/>
<wire x1="1.4986" y1="0.762" x2="-1.4986" y2="0.762" width="0.1524" layer="51"/>
<wire x1="-1.4986" y1="0.762" x2="-1.4986" y2="-0.762" width="0.1524" layer="51"/>
<text x="-4.699" y="1.397" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.715" y="-3.3528" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="597-3311-407F">
<pin name="2" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="1" x="10.16" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="0" width="0.2032" layer="94"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-1.905" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.81" y2="0" width="0.2032" layer="94"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0" width="0.2032" layer="94"/>
<wire x1="6.35" y1="0" x2="6.35" y2="1.905" width="0.2032" layer="94"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.2032" layer="94"/>
<wire x1="6.35" y1="4.445" x2="6.985" y2="3.81" width="0.2032" layer="94"/>
<wire x1="6.985" y1="3.81" x2="8.255" y2="5.08" width="0.2032" layer="94"/>
<wire x1="8.255" y1="3.81" x2="8.89" y2="3.175" width="0.2032" layer="94"/>
<wire x1="8.89" y1="3.175" x2="10.16" y2="4.445" width="0.2032" layer="94"/>
<wire x1="8.255" y1="5.08" x2="7.62" y2="5.08" width="0.2032" layer="94"/>
<wire x1="7.62" y1="5.08" x2="8.255" y2="4.445" width="0.2032" layer="94"/>
<wire x1="8.255" y1="4.445" x2="8.255" y2="5.08" width="0.2032" layer="94"/>
<wire x1="10.16" y1="4.445" x2="9.525" y2="4.445" width="0.2032" layer="94"/>
<wire x1="9.525" y1="4.445" x2="10.16" y2="3.81" width="0.2032" layer="94"/>
<wire x1="10.16" y1="3.81" x2="10.16" y2="4.445" width="0.2032" layer="94"/>
<wire x1="6.985" y1="2.54" x2="8.255" y2="3.81" width="0.2032" layer="94"/>
<wire x1="6.35" y1="0" x2="3.81" y2="1.905" width="0.2032" layer="94"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="0" width="0.2032" layer="94"/>
<wire x1="5.08" y1="3.175" x2="6.35" y2="4.445" width="0.2032" layer="94"/>
<text x="-4.3942" y="-9.3472" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<text x="-3.4036" y="3.302" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
</symbol>
<symbol name="597-3111-407F">
<pin name="2" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="1" x="10.16" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<wire x1="3.81" y1="1.905" x2="3.81" y2="0" width="0.2032" layer="94"/>
<wire x1="3.81" y1="0" x2="3.81" y2="-1.905" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.81" y2="0" width="0.2032" layer="94"/>
<wire x1="6.35" y1="-1.905" x2="6.35" y2="0" width="0.2032" layer="94"/>
<wire x1="6.35" y1="0" x2="6.35" y2="1.905" width="0.2032" layer="94"/>
<wire x1="6.35" y1="0" x2="7.62" y2="0" width="0.2032" layer="94"/>
<wire x1="6.35" y1="4.445" x2="6.985" y2="3.81" width="0.2032" layer="94"/>
<wire x1="6.985" y1="3.81" x2="8.255" y2="5.08" width="0.2032" layer="94"/>
<wire x1="8.255" y1="3.81" x2="8.89" y2="3.175" width="0.2032" layer="94"/>
<wire x1="8.89" y1="3.175" x2="10.16" y2="4.445" width="0.2032" layer="94"/>
<wire x1="8.255" y1="5.08" x2="7.62" y2="5.08" width="0.2032" layer="94"/>
<wire x1="7.62" y1="5.08" x2="8.255" y2="4.445" width="0.2032" layer="94"/>
<wire x1="8.255" y1="4.445" x2="8.255" y2="5.08" width="0.2032" layer="94"/>
<wire x1="10.16" y1="4.445" x2="9.525" y2="4.445" width="0.2032" layer="94"/>
<wire x1="9.525" y1="4.445" x2="10.16" y2="3.81" width="0.2032" layer="94"/>
<wire x1="10.16" y1="3.81" x2="10.16" y2="4.445" width="0.2032" layer="94"/>
<wire x1="6.985" y1="2.54" x2="8.255" y2="3.81" width="0.2032" layer="94"/>
<wire x1="6.35" y1="0" x2="3.81" y2="1.905" width="0.2032" layer="94"/>
<wire x1="3.81" y1="-1.905" x2="6.35" y2="0" width="0.2032" layer="94"/>
<wire x1="5.08" y1="3.175" x2="6.35" y2="4.445" width="0.2032" layer="94"/>
<text x="-4.3942" y="-9.3472" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<text x="-3.4036" y="3.302" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="597-3311-407F" prefix="LED">
<description>LED 1206 Green SMT</description>
<gates>
<gate name="A" symbol="597-3311-407F" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LED_597-3311-407F">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COLOR" value="Green" constant="no"/>
<attribute name="MPN" value="597-3311-407F" constant="no"/>
<attribute name="OC_FARNELL" value="1519493" constant="no"/>
<attribute name="OC_NEWARK" value="30K4957" constant="no"/>
<attribute name="PACKAGE" value="1206- Green LED" constant="no"/>
<attribute name="SUPPLIER" value="Dialight" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="597-3111-407F" prefix="LED">
<description>LED 1206 ALGAAS RED SMT</description>
<gates>
<gate name="A" symbol="597-3111-407F" x="0" y="0"/>
</gates>
<devices>
<device name="" package="LED_597-3111-407F">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="COLOR" value="AlGaAs Red" constant="no"/>
<attribute name="MPN" value="597-3111-407F" constant="no"/>
<attribute name="OC_FARNELL" value="1519490" constant="no"/>
<attribute name="OC_NEWARK" value="30K4900" constant="no"/>
<attribute name="PACKAGE" value="1206-RED LED" constant="no"/>
<attribute name="SUPPLIER" value="Dialight" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Panasonic_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 30/07/2012 15:23:17</description>
<packages>
<package name="RESC2013X65N">
<description>RESISTOR, 0805</description>
<smd name="1" x="-0.9398" y="0" dx="1.016" dy="1.397" layer="1"/>
<smd name="2" x="0.9398" y="0" dx="1.016" dy="1.397" layer="1"/>
<text x="-3.4544" y="1.27" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.175" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
<wire x1="-0.1016" y1="-0.7112" x2="0.1016" y2="-0.7112" width="0.1524" layer="21"/>
<wire x1="0.1016" y1="0.7112" x2="-0.1016" y2="0.7112" width="0.1524" layer="21"/>
<wire x1="-0.4318" y1="-0.7112" x2="-0.4318" y2="0.7112" width="0" layer="51"/>
<wire x1="-0.4318" y1="0.7112" x2="-1.0668" y2="0.7112" width="0" layer="51"/>
<wire x1="-1.0668" y1="-0.7112" x2="-0.4318" y2="-0.7112" width="0" layer="51"/>
<wire x1="0.4318" y1="0.7112" x2="0.4318" y2="-0.7112" width="0" layer="51"/>
<wire x1="0.4318" y1="-0.7112" x2="1.0668" y2="-0.7112" width="0" layer="51"/>
<wire x1="1.0668" y1="0.7112" x2="0.4318" y2="0.7112" width="0" layer="51"/>
<wire x1="-0.4318" y1="-0.7112" x2="0.4318" y2="-0.7112" width="0" layer="51"/>
<wire x1="1.0668" y1="-0.7112" x2="1.0668" y2="0.7112" width="0" layer="51"/>
<wire x1="0.4318" y1="0.7112" x2="-0.4318" y2="0.7112" width="0" layer="51"/>
<wire x1="-1.0668" y1="0.7112" x2="-1.0668" y2="-0.7112" width="0" layer="51"/>
<text x="-3.4544" y="1.27" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.175" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="RESH">
<pin name="R2" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="R1" x="12.7" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="4.445" y1="-1.27" x2="5.715" y2="1.27" width="0.2032" layer="94"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="6.985" y1="-1.27" x2="8.255" y2="1.27" width="0.2032" layer="94"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="-1.27" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="3.175" y2="1.27" width="0.2032" layer="94"/>
<wire x1="9.525" y1="-1.27" x2="10.16" y2="0" width="0.2032" layer="94"/>
<text x="-3.1242" y="-8.7376" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
<text x="0.9906" y="2.7686" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ERA-6AEB151V" prefix="R">
<description>RESISTOR, 0805</description>
<gates>
<gate name="A" symbol="RESH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="RESC2013X65N">
<connects>
<connect gate="A" pin="R1" pad="1"/>
<connect gate="A" pin="R2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="ERA-6AEB151V" constant="no"/>
<attribute name="OC_FARNELL" value="1811409" constant="no"/>
<attribute name="OC_NEWARK" value="08N2149" constant="no"/>
<attribute name="SUPPLIER" value="Panasonic" constant="no"/>
<attribute name="TOLERANCE" value="±0.1 %" constant="no"/>
<attribute name="VALUE" value="150 Ohm" constant="no"/>
<attribute name="WATTAGE" value="0.125 W" constant="no"/>
</technology>
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
<part name="U9" library="32bits" deviceset="BQ24168RGET" device=""/>
<part name="J10" library="SparkFun-Connectors" deviceset="USB_MINI-B" device="_SMT"/>
<part name="J4" library="SparkFun-Connectors" deviceset="CONN_03X2" device="FEMALE" value="ISP"/>
<part name="5" library="32bits" deviceset="PERIODIC_SYMBOL" device="" value="rev.2">
<attribute name="ELEMENT" value="B"/>
</part>
<part name="J12" library="SparkFun-Connectors" deviceset="CONN_02" device="2.54MM_SCREWTERM" value="out"/>
<part name="C1" library="AVX_By_element14_Batch_1" deviceset="06033D105KAT2A" device="" value="1uF"/>
<part name="U9_C2" library="AVX_By_element14_Batch_1" deviceset="08053D475KAT2A" device="" value="4.7uF"/>
<part name="U3" library="32bits" deviceset="ATTINY84-20MU" device=""/>
<part name="U2_R1" library="SparkFun-Resistors" deviceset="RESISTOR" device="0402" value="10k"/>
<part name="U2_C2" library="AVX_By_element14_Batch_1" deviceset="0402ZD225KAT2A" device="" value="2.2uF"/>
<part name="GND3" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="U6" library="32bits" deviceset="TPS61230A" device=""/>
<part name="L2" library="Bourns_By_element14_Batch_1" deviceset="PM1210-1R0J-RC" device="" value="1.0 uH"/>
<part name="U6_CBST" library="Kemet_By_element14_Batch_1" deviceset="C0402C103K5RACTU" device="" value="10 nF"/>
<part name="U6_RFBT" library="Vishay_By_element14_Batch_1" deviceset="CRCW0402316KFKED" device="" value="316K Ohms"/>
<part name="U6_RFBB" library="Vishay_By_element14_Batch_1" deviceset="CRCW0402100KFKED" device="" value="100K Ohms"/>
<part name="U6_CFF" library="Kemet_By_element14_Batch_1" deviceset="C0603C100J5GACTU" device="" value="10pF"/>
<part name="U6_CIN" library="Murata_By_element14_Batch_1" deviceset="GRM21BR60J226ME39L" device="" value="22uF"/>
<part name="U6_COUT" library="Murata_By_element14_Batch_1" deviceset="GRM32ER61C226KE20L" device="" value="22uF"/>
<part name="GND1" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="GND2" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="GND4" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="J1" library="SparkFun-Connectors" deviceset="CONN_02" device="-JST-2MM-SMT" value="batt"/>
<part name="C3" library="AVX_By_element14_Batch_1" deviceset="06033D105KAT2A" device="" value="1uF"/>
<part name="GND5" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="Q1" library="32bits" deviceset="SI7137DP" device="" value="Si7137DP"/>
<part name="GND6" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="U9_C4" library="AVX_By_element14_Batch_1" deviceset="12067C332KAT2A" device="" value="47uF"/>
<part name="U9_C5" library="AVX_By_element14_Batch_1" deviceset="06035C103KAZ2A" device="" value="10nF"/>
<part name="U9_L1" library="32bits" deviceset="DR73-2R2-R" device=""/>
<part name="U9_C6" library="AVX_By_element14_Batch_1" deviceset="08053D475KAT2A" device="" value="4.7uF"/>
<part name="C7" library="AVX_By_element14_Batch_1" deviceset="06033D105KAT2A" device="" value="1uF"/>
<part name="C8" library="AVX_By_element14_Batch_1" deviceset="06033D105KAT2A" device="" value="1uF"/>
<part name="GND7" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="U2_R9" library="Vishay_By_element14_Batch_1" deviceset="CRCW0402100KJNED" device="" value="100K Ohms"/>
<part name="U2_R2" library="SparkFun-Resistors" deviceset="RESISTOR" device="0402" value="10k"/>
<part name="GND8" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="U2_L1" library="SparkFun-Resistors" deviceset="RESISTOR" device="0402" value="1 kOhm @ 100MHz"/>
<part name="U2_L2" library="SparkFun-Resistors" deviceset="RESISTOR" device="0402" value="1 kOhm @ 100MHz"/>
<part name="J14" library="SparkFun-Connectors" deviceset="CONN_06X2" device="PTH_FEMALE" value="debug"/>
<part name="5V" library="Dialight_By_element14_Batch_1" deviceset="597-3311-407F" device="" value="QTLP650C-4"/>
<part name="CHG" library="Dialight_By_element14_Batch_1" deviceset="597-3111-407F" device="" value="QTLP650C-7"/>
<part name="USB" library="Dialight_By_element14_Batch_1" deviceset="597-3311-407F" device="" value="QTLP650C-4"/>
<part name="GND" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="R1" library="Panasonic_By_element14_Batch_1" deviceset="ERA-6AEB151V" device="" value="150 Ohm"/>
<part name="R3" library="Panasonic_By_element14_Batch_1" deviceset="ERA-6AEB151V" device="" value="150 Ohm"/>
<part name="R5" library="Panasonic_By_element14_Batch_1" deviceset="ERA-6AEB151V" device="" value="150 Ohm"/>
<part name="GND9" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="R9" library="32bits" deviceset="NTHS1206N02N1002JE" device="" value="10K NTC"/>
<part name="GND10" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="RLO" library="Vishay_By_element14_Batch_1" deviceset="CRCW060311K0FKEA" device="" value="11.6K"/>
<part name="RHI" library="Vishay_By_element14_Batch_1" deviceset="CRCW060311K0FKEA" device="" value="5.5K"/>
<part name="J13" library="32bits" deviceset="RASM722" device=""/>
<part name="R2" library="Vishay_By_element14_Batch_1" deviceset="CRCW06031M00JNEA" device="" value="1M Ohm"/>
<part name="R4" library="Vishay_By_element14_Batch_1" deviceset="CRCW06031M00JNEA" device="" value="1M Ohm"/>
<part name="J11" library="SparkFun-Connectors" deviceset="CONN_04" device="" value="drv"/>
<part name="J16" library="SparkFun-Connectors" deviceset="CONN_04" device="" value="5V"/>
<part name="NOTIFY" library="Dialight_By_element14_Batch_1" deviceset="597-3311-407F" device="" value="QTLP650C-4"/>
<part name="GND11" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="R6" library="Panasonic_By_element14_Batch_1" deviceset="ERA-6AEB151V" device="" value="150 Ohm"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U9" gate="A" x="-15.24" y="58.42"/>
<instance part="J10" gate="G$1" x="83.82" y="43.18"/>
<instance part="J4" gate="G$1" x="-30.48" y="109.22"/>
<instance part="5" gate="G$1" x="-7.62" y="-7.62">
<attribute name="ELEMENT" x="-7.62" y="-7.62" size="1.778" layer="96" display="off"/>
</instance>
<instance part="J12" gate="G$1" x="284.48" y="88.9" rot="R270"/>
<instance part="C1" gate="A" x="60.96" y="68.58" smashed="yes" rot="R270">
<attribute name="VALUE" x="63.373" y="62.5348" size="2.0828" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="63.3476" y="65.7606" size="2.0828" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="U9_C2" gate="A" x="43.18" y="45.72" smashed="yes">
<attribute name="VALUE" x="48.133" y="42.7228" size="2.0828" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="48.6156" y="46.7106" size="2.0828" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="U3" gate="A" x="-55.88" y="-48.26"/>
<instance part="U2_R1" gate="G$1" x="149.86" y="-50.8" rot="R270"/>
<instance part="U2_C2" gate="A" x="-109.22" y="-78.74" smashed="yes" rot="R90">
<attribute name="VALUE" x="-98.933" y="-76.7588" size="2.0828" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="-111.9886" y="-79.6544" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="GND3" gate="1" x="198.12" y="10.16"/>
<instance part="U6" gate="G$1" x="190.5" y="58.42"/>
<instance part="L2" gate="A" x="193.04" y="76.2" smashed="yes">
<attribute name="NAME" x="197.8406" y="80.2386" size="2.0828" layer="95" ratio="10" rot="SR0"/>
<attribute name="VALUE" x="195.6308" y="71.2724" size="2.0828" layer="96" ratio="10" rot="SR0"/>
</instance>
<instance part="U6_CBST" gate="A" x="231.14" y="53.34" smashed="yes" rot="R90">
<attribute name="VALUE" x="235.4072" y="52.7558" size="2.0828" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="228.6254" y="53.4416" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="U6_RFBT" gate="A" x="264.16" y="43.18" smashed="yes" rot="R90">
<attribute name="VALUE" x="268.3256" y="43.8658" size="2.0828" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="261.3914" y="44.1706" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="U6_RFBB" gate="A" x="264.16" y="22.86" smashed="yes" rot="R90">
<attribute name="VALUE" x="268.3256" y="23.0378" size="2.0828" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="261.3914" y="23.8506" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="U6_CFF" gate="A" x="248.92" y="50.8" smashed="yes" rot="R90">
<attribute name="VALUE" x="253.4412" y="50.7238" size="2.1082" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="246.4054" y="50.6476" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="U6_CIN" gate="A" x="165.1" y="40.64" smashed="yes" rot="R90">
<attribute name="VALUE" x="169.6212" y="39.2938" size="2.1082" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="162.3314" y="39.7256" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="U6_COUT" gate="A" x="284.48" y="35.56" smashed="yes" rot="R90">
<attribute name="VALUE" x="289.5092" y="34.9758" size="2.12598125" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="281.7114" y="34.6456" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="GND1" gate="1" x="58.42" y="35.56"/>
<instance part="GND2" gate="1" x="60.96" y="55.88"/>
<instance part="GND4" gate="1" x="55.88" y="78.74"/>
<instance part="J1" gate="G$1" x="-81.28" y="81.28"/>
<instance part="C3" gate="A" x="-58.42" y="25.4" rot="R270"/>
<instance part="GND5" gate="1" x="-58.42" y="10.16"/>
<instance part="Q1" gate="G$1" x="-71.12" y="45.72" rot="R180"/>
<instance part="GND6" gate="1" x="-60.96" y="93.98"/>
<instance part="U9_C4" gate="A" x="40.64" y="38.1" smashed="yes" rot="R270">
<attribute name="VALUE" x="42.799" y="32.0548" size="2.0828" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="43.0276" y="34.5186" size="2.0828" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="U9_C5" gate="A" x="121.92" y="43.18" smashed="yes" rot="R90">
<attribute name="VALUE" x="131.699" y="44.6532" size="2.0828" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="133.7564" y="47.7774" size="2.0828" layer="95" ratio="10" rot="SR180"/>
</instance>
<instance part="U9_L1" gate="A" x="121.92" y="55.88" smashed="yes" rot="R90">
<attribute name="VALUE" x="137.16" y="64.5922" size="2.0828" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="137.16" y="67.5132" size="2.0828" layer="95" ratio="10" rot="SR180"/>
</instance>
<instance part="U9_C6" gate="A" x="50.8" y="60.96" smashed="yes">
<attribute name="VALUE" x="53.467" y="63.9572" size="2.0828" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="53.4924" y="59.4614" size="2.0828" layer="95" ratio="10" rot="SR180"/>
</instance>
<instance part="C7" gate="A" x="66.04" y="48.26" smashed="yes" rot="R270">
<attribute name="VALUE" x="68.199" y="41.7068" size="2.0828" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="68.4276" y="44.9326" size="2.0828" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="C8" gate="A" x="5.08" y="127" smashed="yes" rot="R180">
<attribute name="VALUE" x="-0.127" y="129.8448" size="2.0828" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="2.3876" y="124.1806" size="2.0828" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="GND7" gate="1" x="12.7" y="124.46"/>
<instance part="U2_R9" gate="A" x="-127" y="-43.18" smashed="yes" rot="R90">
<attribute name="VALUE" x="-123.3424" y="-43.7642" size="2.0828" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="-129.7686" y="-42.1894" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="U2_R2" gate="G$1" x="-81.28" y="-33.02" smashed="yes" rot="R270">
<attribute name="NAME" x="-87.376" y="-33.02" size="1.778" layer="95" font="vector" rot="R270" align="bottom-center"/>
<attribute name="VALUE" x="-82.804" y="-33.02" size="1.778" layer="96" font="vector" rot="R270" align="top-center"/>
</instance>
<instance part="GND8" gate="1" x="294.64" y="73.66"/>
<instance part="U2_L1" gate="G$1" x="127" y="-60.96" smashed="yes">
<attribute name="NAME" x="127" y="-59.436" size="1.778" layer="95" font="vector" align="bottom-center"/>
<attribute name="VALUE" x="135.128" y="-62.23" size="1.778" layer="96" font="vector" align="top-center"/>
</instance>
<instance part="U2_L2" gate="G$1" x="-66.04" y="-48.26" smashed="yes">
<attribute name="NAME" x="-66.04" y="-43.18" size="1.778" layer="95" font="vector" align="bottom-center"/>
<attribute name="VALUE" x="-65.532" y="-44.196" size="1.778" layer="96" font="vector" align="top-center"/>
</instance>
<instance part="J14" gate="G$1" x="-33.02" y="81.28"/>
<instance part="5V" gate="A" x="66.04" y="-10.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="72.1868" y="-6.7818" size="1.27" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="69.342" y="-6.7564" size="2.0828" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="CHG" gate="A" x="83.82" y="-10.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="89.7128" y="-5.7658" size="1.27" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="87.122" y="-6.7564" size="2.0828" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="USB" gate="A" x="101.6" y="-10.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="107.7468" y="-6.7818" size="1.27" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="104.902" y="-6.7564" size="1.778" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="GND" gate="1" x="66.04" y="-25.4"/>
<instance part="R1" gate="A" x="66.04" y="7.62" smashed="yes" rot="R270">
<attribute name="VALUE" x="71.2724" y="6.6802" size="1.27" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="68.8086" y="6.6294" size="2.0828" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="R3" gate="A" x="83.82" y="7.62" smashed="yes" rot="R270">
<attribute name="VALUE" x="89.0524" y="6.6802" size="1.27" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="86.5886" y="6.6294" size="2.0828" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="R5" gate="A" x="101.6" y="7.62" smashed="yes" rot="R270">
<attribute name="VALUE" x="106.8324" y="6.6802" size="1.27" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="104.3686" y="6.6294" size="2.0828" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="GND9" gate="1" x="101.6" y="-25.4"/>
<instance part="R9" gate="G$1" x="45.72" y="-17.78" rot="R90"/>
<instance part="GND10" gate="1" x="45.72" y="-30.48"/>
<instance part="RLO" gate="A" x="25.4" y="-22.86" smashed="yes" rot="R90">
<attribute name="VALUE" x="29.5656" y="-22.1742" size="2.032" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="22.6314" y="-21.8694" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="RHI" gate="A" x="25.4" y="-2.54" smashed="yes" rot="R90">
<attribute name="VALUE" x="29.5656" y="-1.8542" size="2.032" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="22.6314" y="-1.5494" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="J13" gate="G$1" x="76.2" y="78.74" rot="R180"/>
<instance part="R2" gate="A" x="-68.58" y="-58.42" smashed="yes">
<attribute name="VALUE" x="-68.1482" y="-62.3316" size="2.0828" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="-67.5894" y="-56.6674" size="2.0828" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="R4" gate="A" x="-93.98" y="-53.34" smashed="yes">
<attribute name="VALUE" x="-91.0082" y="-57.2516" size="2.0828" layer="96" ratio="10" rot="SR0"/>
<attribute name="NAME" x="-96.5454" y="-57.4294" size="2.0828" layer="95" ratio="10" rot="SR0"/>
</instance>
<instance part="J11" gate="G$1" x="-27.94" y="129.54"/>
<instance part="J16" gate="G$1" x="-27.94" y="152.4"/>
<instance part="NOTIFY" gate="A" x="119.38" y="-10.16" smashed="yes" rot="R270">
<attribute name="VALUE" x="125.5268" y="-6.7818" size="1.27" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="122.428" y="-3.4544" size="2.0828" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="GND11" gate="1" x="119.38" y="-25.4"/>
<instance part="R6" gate="A" x="119.38" y="7.62" smashed="yes" rot="R270">
<attribute name="VALUE" x="124.6124" y="6.6802" size="1.27" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="122.1486" y="6.6294" size="2.0828" layer="95" ratio="10" rot="SR270"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="U3" gate="A" pin="GND"/>
<label x="-68.326" y="-65.786" size="1.778" layer="95"/>
<wire x1="-53.34" y1="-66.04" x2="-109.22" y2="-66.04" width="0.1524" layer="91"/>
<wire x1="-109.22" y1="-71.12" x2="-109.22" y2="-66.04" width="0.1524" layer="91"/>
<pinref part="U2_C2" gate="A" pin="C2"/>
</segment>
<segment>
<pinref part="GND3" gate="1" pin="GND"/>
<junction x="198.12" y="12.7"/>
<wire x1="165.1" y1="12.7" x2="198.12" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="GND"/>
<wire x1="198.12" y1="33.02" x2="198.12" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U6_RFBB" gate="A" pin="2"/>
<wire x1="198.12" y1="12.7" x2="264.16" y2="12.7" width="0.1524" layer="91"/>
<wire x1="264.16" y1="12.7" x2="264.16" y2="22.86" width="0.1524" layer="91"/>
<wire x1="264.16" y1="12.7" x2="284.48" y2="12.7" width="0.1524" layer="91"/>
<wire x1="284.48" y1="12.7" x2="284.48" y2="35.56" width="0.1524" layer="91"/>
<junction x="264.16" y="12.7"/>
<pinref part="U6_CIN" gate="A" pin="C1"/>
<wire x1="165.1" y1="40.64" x2="165.1" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U6_COUT" gate="A" pin="C1"/>
</segment>
<segment>
<pinref part="U9_C2" gate="A" pin="C2"/>
<wire x1="50.8" y1="45.72" x2="58.42" y2="45.72" width="0.1524" layer="91"/>
<wire x1="58.42" y1="45.72" x2="58.42" y2="38.1" width="0.1524" layer="91"/>
<pinref part="GND1" gate="1" pin="GND"/>
<pinref part="U9" gate="A" pin="PGND_2"/>
<wire x1="27.94" y1="33.02" x2="33.02" y2="33.02" width="0.1524" layer="91"/>
<wire x1="33.02" y1="33.02" x2="33.02" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U9" gate="A" pin="PGND"/>
<wire x1="33.02" y1="35.56" x2="33.02" y2="38.1" width="0.1524" layer="91"/>
<wire x1="33.02" y1="38.1" x2="27.94" y2="38.1" width="0.1524" layer="91"/>
<pinref part="U9_C4" gate="A" pin="C1"/>
<wire x1="33.02" y1="38.1" x2="40.64" y2="38.1" width="0.1524" layer="91"/>
<junction x="33.02" y="38.1"/>
<wire x1="40.64" y1="38.1" x2="58.42" y2="38.1" width="0.1524" layer="91"/>
<junction x="40.64" y="38.1"/>
<junction x="58.42" y="38.1"/>
<pinref part="U9" gate="A" pin="SGND"/>
<wire x1="27.94" y1="35.56" x2="33.02" y2="35.56" width="0.1524" layer="91"/>
<junction x="33.02" y="35.56"/>
<pinref part="J10" gate="G$1" pin="GND"/>
<wire x1="58.42" y1="38.1" x2="66.04" y2="38.1" width="0.1524" layer="91"/>
<pinref part="C7" gate="A" pin="C2"/>
<wire x1="66.04" y1="38.1" x2="78.74" y2="38.1" width="0.1524" layer="91"/>
<wire x1="66.04" y1="40.64" x2="66.04" y2="38.1" width="0.1524" layer="91"/>
<junction x="66.04" y="38.1"/>
</segment>
<segment>
<pinref part="C1" gate="A" pin="C2"/>
<pinref part="GND2" gate="1" pin="GND"/>
<wire x1="60.96" y1="60.96" x2="60.96" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U9_C6" gate="A" pin="C2"/>
<junction x="60.96" y="60.96"/>
<wire x1="60.96" y1="60.96" x2="58.42" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND4" gate="1" pin="GND"/>
<pinref part="J13" gate="G$1" pin="GND"/>
<wire x1="55.88" y1="81.28" x2="68.58" y2="81.28" width="0.1524" layer="91"/>
<wire x1="68.58" y1="81.28" x2="73.66" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="C3" gate="A" pin="C2"/>
<wire x1="-58.42" y1="17.78" x2="-58.42" y2="12.7" width="0.1524" layer="91"/>
<pinref part="GND5" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="J1" gate="G$1" pin="2"/>
<wire x1="-73.66" y1="83.82" x2="-68.58" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-68.58" y1="83.82" x2="-68.58" y2="99.06" width="0.1524" layer="91"/>
<pinref part="GND6" gate="1" pin="GND"/>
<wire x1="-68.58" y1="99.06" x2="-60.96" y2="99.06" width="0.1524" layer="91"/>
<wire x1="-60.96" y1="99.06" x2="-60.96" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="GND7" gate="1" pin="GND"/>
<pinref part="C8" gate="A" pin="C1"/>
<wire x1="5.08" y1="127" x2="12.7" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U9" gate="A" pin="EPAD"/>
<wire x1="27.94" y1="58.42" x2="40.64" y2="58.42" width="0.1524" layer="91"/>
<label x="36.322" y="58.928" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U9" gate="A" pin="GND"/>
<wire x1="-12.7" y1="48.26" x2="-25.4" y2="48.26" width="0.1524" layer="91"/>
<label x="-25.146" y="48.514" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J12" gate="G$1" pin="2"/>
<pinref part="GND8" gate="1" pin="GND"/>
<wire x1="287.02" y1="81.28" x2="294.64" y2="81.28" width="0.1524" layer="91"/>
<wire x1="294.64" y1="81.28" x2="294.64" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="6"/>
<wire x1="-22.86" y1="106.68" x2="-10.16" y2="106.68" width="0.1524" layer="91"/>
<label x="-13.97" y="106.934" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J14" gate="G$1" pin="2"/>
<wire x1="-22.86" y1="93.98" x2="-17.78" y2="93.98" width="0.1524" layer="91"/>
<label x="-14.478" y="94.488" size="1.778" layer="95"/>
<pinref part="J14" gate="G$1" pin="10"/>
<wire x1="-17.78" y1="93.98" x2="-10.16" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="83.82" x2="-17.78" y2="83.82" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="83.82" x2="-17.78" y2="88.9" width="0.1524" layer="91"/>
<junction x="-17.78" y="93.98"/>
<pinref part="J14" gate="G$1" pin="6"/>
<wire x1="-17.78" y1="88.9" x2="-17.78" y2="93.98" width="0.1524" layer="91"/>
<wire x1="-22.86" y1="88.9" x2="-17.78" y2="88.9" width="0.1524" layer="91"/>
<junction x="-17.78" y="88.9"/>
</segment>
<segment>
<pinref part="5V" gate="A" pin="1"/>
<wire x1="66.04" y1="-20.32" x2="66.04" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="GND" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="USB" gate="A" pin="1"/>
<wire x1="101.6" y1="-20.32" x2="101.6" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="GND9" gate="1" pin="GND"/>
</segment>
<segment>
<pinref part="GND10" gate="1" pin="GND"/>
<pinref part="R9" gate="G$1" pin="1"/>
<wire x1="45.72" y1="-27.94" x2="45.72" y2="-25.4" width="0.1524" layer="91"/>
<pinref part="RLO" gate="A" pin="2"/>
<wire x1="45.72" y1="-25.4" x2="45.72" y2="-22.86" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-22.86" x2="25.4" y2="-25.4" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-25.4" x2="45.72" y2="-25.4" width="0.1524" layer="91"/>
<junction x="45.72" y="-25.4"/>
</segment>
<segment>
<pinref part="J11" gate="G$1" pin="4"/>
<wire x1="-22.86" y1="134.62" x2="-10.16" y2="134.62" width="0.1524" layer="91"/>
<label x="-15.24" y="135.128" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J16" gate="G$1" pin="4"/>
<wire x1="-22.86" y1="157.48" x2="-10.16" y2="157.48" width="0.1524" layer="91"/>
<label x="-15.24" y="157.988" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="21"/>
<wire x1="109.22" y1="-48.26" x2="127" y2="-48.26" width="0.1524" layer="91"/>
<label x="120.904" y="-48.006" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="NOTIFY" gate="A" pin="1"/>
<wire x1="119.38" y1="-20.32" x2="119.38" y2="-22.86" width="0.1524" layer="91"/>
<pinref part="GND11" gate="1" pin="GND"/>
</segment>
</net>
<net name="VBAT" class="0">
<segment>
<pinref part="J14" gate="G$1" pin="12"/>
<wire x1="-22.86" y1="81.28" x2="-10.16" y2="81.28" width="0.1524" layer="91"/>
<label x="-15.748" y="81.788" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R2" gate="A" pin="2"/>
<wire x1="-68.58" y1="-58.42" x2="-76.2" y2="-58.42" width="0.1524" layer="91"/>
<label x="-75.946" y="-58.166" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U9" gate="A" pin="BAT"/>
<pinref part="U9" gate="A" pin="BAT_2"/>
<wire x1="-58.42" y1="30.48" x2="-20.32" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="30.48" x2="-12.7" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-12.7" y1="33.02" x2="-20.32" y2="33.02" width="0.1524" layer="91"/>
<wire x1="-20.32" y1="33.02" x2="-20.32" y2="30.48" width="0.1524" layer="91"/>
<junction x="-20.32" y="30.48"/>
<pinref part="C3" gate="A" pin="C1"/>
<wire x1="-58.42" y1="25.4" x2="-58.42" y2="30.48" width="0.1524" layer="91"/>
<junction x="-58.42" y="30.48"/>
<label x="-65.786" y="30.988" size="1.778" layer="95"/>
<wire x1="-58.42" y1="30.48" x2="-66.04" y2="30.48" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="Q1" gate="G$1" pin="DRAIN#5"/>
<wire x1="-101.6" y1="55.88" x2="-116.84" y2="55.88" width="0.1524" layer="91"/>
<label x="-116.84" y="56.388" size="1.778" layer="95"/>
<pinref part="Q1" gate="G$1" pin="DRAIN#6"/>
<wire x1="-101.6" y1="55.88" x2="-101.6" y2="53.34" width="0.1524" layer="91"/>
<junction x="-101.6" y="55.88"/>
<pinref part="Q1" gate="G$1" pin="DRAIN#7"/>
<wire x1="-101.6" y1="53.34" x2="-101.6" y2="50.8" width="0.1524" layer="91"/>
<junction x="-101.6" y="53.34"/>
<pinref part="Q1" gate="G$1" pin="DRAIN#8"/>
<wire x1="-101.6" y1="50.8" x2="-101.6" y2="48.26" width="0.1524" layer="91"/>
<junction x="-101.6" y="50.8"/>
</segment>
</net>
<net name="SYS_5V" class="0">
<segment>
<pinref part="U3" gate="A" pin="VCC"/>
<wire x1="-53.34" y1="-68.58" x2="-73.66" y2="-68.58" width="0.1524" layer="91"/>
<label x="-68.58" y="-68.326" size="1.778" layer="95"/>
<wire x1="-73.66" y1="-68.58" x2="-73.66" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-73.66" y1="-81.28" x2="-109.22" y2="-81.28" width="0.1524" layer="91"/>
<wire x1="-109.22" y1="-81.28" x2="-109.22" y2="-78.74" width="0.1524" layer="91"/>
<pinref part="U2_C2" gate="A" pin="C1"/>
</segment>
<segment>
<pinref part="U6" gate="G$1" pin="VOUT"/>
<wire x1="215.9" y1="45.72" x2="241.3" y2="45.72" width="0.1524" layer="91"/>
<wire x1="241.3" y1="45.72" x2="241.3" y2="66.04" width="0.1524" layer="91"/>
<wire x1="241.3" y1="66.04" x2="248.92" y2="66.04" width="0.1524" layer="91"/>
<wire x1="248.92" y1="66.04" x2="248.92" y2="58.42" width="0.1524" layer="91"/>
<pinref part="U6_RFBT" gate="A" pin="1"/>
<wire x1="248.92" y1="66.04" x2="264.16" y2="66.04" width="0.1524" layer="91"/>
<wire x1="264.16" y1="66.04" x2="264.16" y2="55.88" width="0.1524" layer="91"/>
<junction x="248.92" y="66.04"/>
<wire x1="264.16" y1="66.04" x2="284.48" y2="66.04" width="0.1524" layer="91"/>
<wire x1="284.48" y1="66.04" x2="284.48" y2="43.18" width="0.1524" layer="91"/>
<junction x="264.16" y="66.04"/>
<label x="268.732" y="67.056" size="1.778" layer="95"/>
<pinref part="U6_CFF" gate="A" pin="C2"/>
<pinref part="U6_COUT" gate="A" pin="C2"/>
<pinref part="J12" gate="G$1" pin="1"/>
<wire x1="284.48" y1="66.04" x2="284.48" y2="81.28" width="0.1524" layer="91"/>
<junction x="284.48" y="66.04"/>
</segment>
<segment>
<wire x1="-142.24" y1="-20.32" x2="-127" y2="-20.32" width="0.1524" layer="91"/>
<pinref part="U2_R9" gate="A" pin="1"/>
<wire x1="-127" y1="-20.32" x2="-81.28" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="-81.28" y1="-20.32" x2="-58.42" y2="-20.32" width="0.1524" layer="91"/>
<wire x1="-127" y1="-30.48" x2="-127" y2="-20.32" width="0.1524" layer="91"/>
<junction x="-127" y="-20.32"/>
<junction x="-81.28" y="-20.32"/>
<label x="-107.696" y="-19.304" size="1.778" layer="95"/>
<pinref part="U2_R2" gate="G$1" pin="1"/>
<wire x1="-81.28" y1="-27.94" x2="-81.28" y2="-20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="149.86" y1="-45.72" x2="149.86" y2="-20.32" width="0.1524" layer="91"/>
<label x="146.558" y="-19.812" size="1.778" layer="95"/>
<pinref part="U2_R1" gate="G$1" pin="1"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="2"/>
<wire x1="-22.86" y1="111.76" x2="-10.16" y2="111.76" width="0.1524" layer="91"/>
<label x="-19.05" y="112.014" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="66.04" y1="7.62" x2="66.04" y2="15.24" width="0.1524" layer="91"/>
<label x="67.056" y="13.462" size="1.778" layer="95"/>
<pinref part="R1" gate="A" pin="R2"/>
</segment>
<segment>
<wire x1="-93.98" y1="-53.34" x2="-109.22" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="R4" gate="A" pin="2"/>
<label x="-109.22" y="-53.086" size="1.778" layer="95"/>
</segment>
</net>
<net name="!RESET" class="0">
<segment>
<pinref part="U3" gate="A" pin="PB3_(PCINT11/RESET!/DW)"/>
<wire x1="109.22" y1="-68.58" x2="127" y2="-68.58" width="0.1524" layer="91"/>
<label x="119.888" y="-68.072" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="5"/>
<wire x1="-38.1" y1="106.68" x2="-50.8" y2="106.68" width="0.1524" layer="91"/>
<label x="-50.292" y="106.934" size="1.778" layer="95"/>
</segment>
</net>
<net name="U3_PA6" class="0">
<segment>
<pinref part="U2_L1" gate="G$1" pin="1"/>
<pinref part="U3" gate="A" pin="PA6"/>
<wire x1="121.92" y1="-60.96" x2="109.22" y2="-60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="MISO" class="0">
<segment>
<pinref part="U3" gate="A" pin="PA5"/>
<wire x1="109.22" y1="-50.8" x2="127" y2="-50.8" width="0.1524" layer="91"/>
<label x="119.888" y="-50.546" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="1"/>
<wire x1="-38.1" y1="111.76" x2="-50.8" y2="111.76" width="0.1524" layer="91"/>
<label x="-50.292" y="112.014" size="1.778" layer="95"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="L2" gate="A" pin="2"/>
<wire x1="193.04" y1="76.2" x2="177.8" y2="76.2" width="0.1524" layer="91"/>
<wire x1="177.8" y1="76.2" x2="177.8" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="VIN"/>
<wire x1="177.8" y1="55.88" x2="185.42" y2="55.88" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="EN"/>
<wire x1="185.42" y1="50.8" x2="177.8" y2="50.8" width="0.1524" layer="91"/>
<wire x1="177.8" y1="50.8" x2="177.8" y2="55.88" width="0.1524" layer="91"/>
<junction x="177.8" y="55.88"/>
<wire x1="177.8" y1="55.88" x2="165.1" y2="55.88" width="0.1524" layer="91"/>
<wire x1="165.1" y1="55.88" x2="165.1" y2="48.26" width="0.1524" layer="91"/>
<label x="154.94" y="56.896" size="1.778" layer="95"/>
<pinref part="U6_CIN" gate="A" pin="C2"/>
<wire x1="152.4" y1="55.88" x2="165.1" y2="55.88" width="0.1524" layer="91"/>
<junction x="165.1" y="55.88"/>
</segment>
<segment>
<pinref part="J16" gate="G$1" pin="2"/>
<wire x1="-22.86" y1="152.4" x2="-10.16" y2="152.4" width="0.1524" layer="91"/>
<pinref part="J16" gate="G$1" pin="3"/>
<wire x1="-22.86" y1="154.94" x2="-22.86" y2="152.4" width="0.1524" layer="91"/>
<junction x="-22.86" y="152.4"/>
<label x="-14.986" y="152.908" size="1.778" layer="95"/>
</segment>
</net>
<net name="U6_CBST" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="CBST"/>
<pinref part="U6_CBST" gate="A" pin="C1"/>
<wire x1="215.9" y1="50.8" x2="231.14" y2="50.8" width="0.1524" layer="91"/>
<wire x1="231.14" y1="50.8" x2="231.14" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U6_SW" class="0">
<segment>
<pinref part="U6_CBST" gate="A" pin="C2"/>
<wire x1="231.14" y1="60.96" x2="231.14" y2="76.2" width="0.1524" layer="91"/>
<pinref part="L2" gate="A" pin="1"/>
<wire x1="231.14" y1="76.2" x2="220.98" y2="76.2" width="0.1524" layer="91"/>
<pinref part="U6" gate="G$1" pin="SW"/>
<wire x1="220.98" y1="76.2" x2="208.28" y2="76.2" width="0.1524" layer="91"/>
<wire x1="215.9" y1="55.88" x2="220.98" y2="55.88" width="0.1524" layer="91"/>
<wire x1="220.98" y1="55.88" x2="220.98" y2="76.2" width="0.1524" layer="91"/>
<junction x="220.98" y="76.2"/>
</segment>
</net>
<net name="U6_FB" class="0">
<segment>
<pinref part="U6" gate="G$1" pin="FB"/>
<wire x1="215.9" y1="40.64" x2="248.92" y2="40.64" width="0.1524" layer="91"/>
<pinref part="U6_RFBT" gate="A" pin="2"/>
<wire x1="248.92" y1="40.64" x2="264.16" y2="40.64" width="0.1524" layer="91"/>
<wire x1="264.16" y1="40.64" x2="264.16" y2="43.18" width="0.1524" layer="91"/>
<pinref part="U6_RFBB" gate="A" pin="1"/>
<wire x1="264.16" y1="35.56" x2="264.16" y2="40.64" width="0.1524" layer="91"/>
<junction x="264.16" y="40.64"/>
<wire x1="248.92" y1="50.8" x2="248.92" y2="40.64" width="0.1524" layer="91"/>
<junction x="248.92" y="40.64"/>
<pinref part="U6_CFF" gate="A" pin="C1"/>
</segment>
</net>
<net name="U9_PMIDI" class="0">
<segment>
<pinref part="U9" gate="A" pin="PMIDI"/>
<pinref part="U9_C2" gate="A" pin="C1"/>
<wire x1="27.94" y1="45.72" x2="43.18" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U9_BGATE" class="0">
<segment>
<pinref part="Q1" gate="G$1" pin="GATE"/>
<wire x1="-66.04" y1="55.88" x2="-48.26" y2="55.88" width="0.1524" layer="91"/>
<wire x1="-48.26" y1="55.88" x2="-48.26" y2="35.56" width="0.1524" layer="91"/>
<pinref part="U9" gate="A" pin="BGATE"/>
<wire x1="-48.26" y1="35.56" x2="-12.7" y2="35.56" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U9_SYS" class="0">
<segment>
<pinref part="U9" gate="A" pin="SYS_2"/>
<pinref part="U9" gate="A" pin="SYS"/>
<wire x1="27.94" y1="27.94" x2="27.94" y2="30.48" width="0.1524" layer="91"/>
<wire x1="27.94" y1="30.48" x2="40.64" y2="30.48" width="0.1524" layer="91"/>
<junction x="27.94" y="30.48"/>
<pinref part="U9_C4" gate="A" pin="C2"/>
<label x="29.21" y="28.448" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U9_L1" gate="A" pin="2"/>
<wire x1="132.08" y1="55.88" x2="149.86" y2="55.88" width="0.1524" layer="91"/>
<label x="138.684" y="56.642" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J16" gate="G$1" pin="1"/>
<wire x1="-22.86" y1="149.86" x2="-10.16" y2="149.86" width="0.1524" layer="91"/>
<label x="-14.986" y="150.114" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="Q1" gate="G$1" pin="SOURCE#1"/>
<pinref part="Q1" gate="G$1" pin="SOURCE#2"/>
<pinref part="Q1" gate="G$1" pin="SOURCE#3"/>
<wire x1="-66.04" y1="53.34" x2="-66.04" y2="50.8" width="0.1524" layer="91"/>
<junction x="-66.04" y="50.8"/>
<wire x1="-66.04" y1="50.8" x2="-66.04" y2="48.26" width="0.1524" layer="91"/>
<junction x="-66.04" y="48.26"/>
<wire x1="-66.04" y1="48.26" x2="-58.42" y2="48.26" width="0.1524" layer="91"/>
<label x="-63.246" y="49.022" size="1.778" layer="95"/>
</segment>
</net>
<net name="U9_SW" class="0">
<segment>
<pinref part="U9" gate="A" pin="SW"/>
<wire x1="27.94" y1="40.64" x2="40.64" y2="40.64" width="0.1524" layer="91"/>
<label x="33.528" y="40.894" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U9_C5" gate="A" pin="C2"/>
<wire x1="121.92" y1="50.8" x2="121.92" y2="55.88" width="0.1524" layer="91"/>
<wire x1="121.92" y1="55.88" x2="109.22" y2="55.88" width="0.1524" layer="91"/>
<label x="105.664" y="56.388" size="1.778" layer="95"/>
<pinref part="U9_L1" gate="A" pin="1"/>
<junction x="121.92" y="55.88"/>
</segment>
</net>
<net name="U9_BOOT" class="0">
<segment>
<pinref part="U9" gate="A" pin="BOOT"/>
<wire x1="27.94" y1="43.18" x2="40.64" y2="43.18" width="0.1524" layer="91"/>
<label x="30.48" y="43.434" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U9_C5" gate="A" pin="C1"/>
<wire x1="121.92" y1="43.18" x2="121.92" y2="33.02" width="0.1524" layer="91"/>
<label x="119.38" y="30.48" size="1.778" layer="95"/>
</segment>
</net>
<net name="U9_PMIDU" class="0">
<segment>
<pinref part="U9" gate="A" pin="PMIDU"/>
<wire x1="27.94" y1="53.34" x2="43.18" y2="53.34" width="0.1524" layer="91"/>
<pinref part="U9_C6" gate="A" pin="C1"/>
<wire x1="50.8" y1="60.96" x2="43.18" y2="60.96" width="0.1524" layer="91"/>
<wire x1="43.18" y1="60.96" x2="43.18" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U9_USB" class="0">
<segment>
<pinref part="U9" gate="A" pin="USB"/>
<wire x1="27.94" y1="50.8" x2="66.04" y2="50.8" width="0.1524" layer="91"/>
<wire x1="66.04" y1="50.8" x2="66.04" y2="48.26" width="0.1524" layer="91"/>
<pinref part="J10" gate="G$1" pin="VBUS"/>
<pinref part="C7" gate="A" pin="C1"/>
<wire x1="66.04" y1="48.26" x2="78.74" y2="48.26" width="0.1524" layer="91"/>
<junction x="66.04" y="48.26"/>
<label x="31.75" y="51.308" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R5" gate="A" pin="R2"/>
<wire x1="101.6" y1="7.62" x2="101.6" y2="15.24" width="0.1524" layer="91"/>
<label x="102.616" y="13.208" size="1.778" layer="95"/>
</segment>
</net>
<net name="U9_STAT" class="0">
<segment>
<pinref part="U9" gate="A" pin="STAT"/>
<wire x1="-12.7" y1="40.64" x2="-25.4" y2="40.64" width="0.1524" layer="91"/>
<label x="-24.892" y="40.894" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="CHG" gate="A" pin="1"/>
<wire x1="83.82" y1="-20.32" x2="83.82" y2="-25.4" width="0.1524" layer="91"/>
<label x="80.264" y="-27.686" size="1.778" layer="95"/>
</segment>
</net>
<net name="U9_SCL" class="0">
<segment>
<pinref part="U9" gate="A" pin="SCL"/>
<wire x1="-12.7" y1="53.34" x2="-25.4" y2="53.34" width="0.1524" layer="91"/>
<label x="-24.892" y="53.848" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="-81.28" y1="-48.26" x2="-81.28" y2="-38.1" width="0.1524" layer="91"/>
<pinref part="U2_L2" gate="G$1" pin="1"/>
<wire x1="-71.12" y1="-48.26" x2="-81.28" y2="-48.26" width="0.1524" layer="91"/>
<label x="-88.9" y="-45.72" size="1.778" layer="95" rot="R180"/>
<pinref part="U2_R2" gate="G$1" pin="2"/>
<wire x1="-81.28" y1="-48.26" x2="-93.98" y2="-48.26" width="0.1524" layer="91"/>
<junction x="-81.28" y="-48.26"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="3"/>
<wire x1="-38.1" y1="109.22" x2="-50.8" y2="109.22" width="0.1524" layer="91"/>
<label x="-50.292" y="109.474" size="1.778" layer="95"/>
</segment>
</net>
<net name="U9_SDA" class="0">
<segment>
<pinref part="U9" gate="A" pin="SDA"/>
<wire x1="-12.7" y1="50.8" x2="-25.4" y2="50.8" width="0.1524" layer="91"/>
<label x="-24.892" y="51.054" size="1.778" layer="95"/>
</segment>
<segment>
<label x="156.464" y="-60.198" size="1.778" layer="95"/>
<wire x1="149.86" y1="-55.88" x2="149.86" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="U2_L1" gate="G$1" pin="2"/>
<wire x1="149.86" y1="-60.96" x2="132.08" y2="-60.96" width="0.1524" layer="91"/>
<pinref part="U2_R1" gate="G$1" pin="2"/>
<wire x1="149.86" y1="-60.96" x2="170.18" y2="-60.96" width="0.1524" layer="91"/>
<junction x="149.86" y="-60.96"/>
</segment>
<segment>
<pinref part="J4" gate="G$1" pin="4"/>
<wire x1="-22.86" y1="109.22" x2="-10.16" y2="109.22" width="0.1524" layer="91"/>
<label x="-19.05" y="109.474" size="1.778" layer="95"/>
</segment>
</net>
<net name="U9_CD" class="0">
<segment>
<pinref part="U9" gate="A" pin="CD"/>
<wire x1="27.94" y1="55.88" x2="40.64" y2="55.88" width="0.1524" layer="91"/>
<label x="33.274" y="56.134" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J14" gate="G$1" pin="1"/>
<wire x1="-38.1" y1="93.98" x2="-50.8" y2="93.98" width="0.1524" layer="91"/>
<label x="-50.292" y="94.488" size="1.778" layer="95"/>
</segment>
</net>
<net name="U9_IN" class="0">
<segment>
<pinref part="U9" gate="A" pin="IN"/>
<wire x1="40.64" y1="48.26" x2="27.94" y2="48.26" width="0.1524" layer="91"/>
<label x="33.782" y="48.514" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="73.66" y1="71.12" x2="60.96" y2="71.12" width="0.1524" layer="91"/>
<wire x1="60.96" y1="71.12" x2="50.8" y2="71.12" width="0.1524" layer="91"/>
<pinref part="C1" gate="A" pin="C1"/>
<wire x1="60.96" y1="68.58" x2="60.96" y2="71.12" width="0.1524" layer="91"/>
<junction x="60.96" y="71.12"/>
<label x="51.308" y="72.136" size="1.778" layer="95"/>
<pinref part="J13" gate="G$1" pin="PWR"/>
</segment>
</net>
<net name="U9_INT" class="0">
<segment>
<pinref part="U9" gate="A" pin="!BATGD"/>
<wire x1="-12.7" y1="43.18" x2="-25.4" y2="43.18" width="0.1524" layer="91"/>
<label x="-24.892" y="43.434" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="U3" gate="A" pin="(ADC3/T0/PCINT3)_PA3"/>
<wire x1="-53.34" y1="-50.8" x2="-127" y2="-50.8" width="0.1524" layer="91"/>
<label x="-141.986" y="-50.292" size="1.778" layer="95"/>
<pinref part="U2_R9" gate="A" pin="2"/>
<wire x1="-127" y1="-50.8" x2="-142.24" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="-127" y1="-43.18" x2="-127" y2="-50.8" width="0.1524" layer="91"/>
<junction x="-127" y="-50.8"/>
</segment>
</net>
<net name="VBAT_CON" class="0">
<segment>
<pinref part="J1" gate="G$1" pin="1"/>
<pinref part="J14" gate="G$1" pin="11"/>
<wire x1="-73.66" y1="81.28" x2="-38.1" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U3_PA4" class="0">
<segment>
<pinref part="U2_L2" gate="G$1" pin="2"/>
<pinref part="U3" gate="A" pin="(ADC4/USCK/SCL/T1/PCINT4)_PA4"/>
<wire x1="-60.96" y1="-48.26" x2="-53.34" y2="-48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="U9_PSEL" class="0">
<segment>
<pinref part="U9" gate="A" pin="PSEL"/>
<wire x1="-12.7" y1="55.88" x2="-25.4" y2="55.88" width="0.1524" layer="91"/>
<label x="-24.892" y="56.388" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J14" gate="G$1" pin="9"/>
<wire x1="-38.1" y1="83.82" x2="-50.8" y2="83.82" width="0.1524" layer="91"/>
<label x="-50.546" y="84.074" size="1.778" layer="95"/>
</segment>
</net>
<net name="LA_5" class="0">
<segment>
<pinref part="5V" gate="A" pin="2"/>
<wire x1="66.04" y1="-10.16" x2="66.04" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="R1" gate="A" pin="R1"/>
</segment>
</net>
<net name="LA_CHG" class="0">
<segment>
<pinref part="CHG" gate="A" pin="2"/>
<wire x1="83.82" y1="-5.08" x2="83.82" y2="-10.16" width="0.1524" layer="91"/>
<pinref part="R3" gate="A" pin="R1"/>
</segment>
</net>
<net name="LA_USB" class="0">
<segment>
<pinref part="USB" gate="A" pin="2"/>
<wire x1="101.6" y1="-10.16" x2="101.6" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="R5" gate="A" pin="R1"/>
</segment>
</net>
<net name="U9_TS" class="0">
<segment>
<pinref part="U9" gate="A" pin="TS"/>
<wire x1="-12.7" y1="38.1" x2="-25.4" y2="38.1" width="0.1524" layer="91"/>
<label x="-25.146" y="38.354" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R9" gate="G$1" pin="2"/>
<wire x1="45.72" y1="-12.7" x2="45.72" y2="-7.62" width="0.1524" layer="91"/>
<label x="41.656" y="0.508" size="1.778" layer="95"/>
<pinref part="RHI" gate="A" pin="2"/>
<pinref part="RLO" gate="A" pin="1"/>
<wire x1="45.72" y1="-7.62" x2="45.72" y2="0" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-2.54" x2="25.4" y2="-7.62" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-7.62" x2="25.4" y2="-10.16" width="0.1524" layer="91"/>
<wire x1="25.4" y1="-7.62" x2="45.72" y2="-7.62" width="0.1524" layer="91"/>
<junction x="25.4" y="-7.62"/>
<junction x="45.72" y="-7.62"/>
</segment>
</net>
<net name="ADC0" class="0">
<segment>
<pinref part="U3" gate="A" pin="(ADC0/AREF/PCINT0)_PA0"/>
<wire x1="-53.34" y1="-58.42" x2="-55.88" y2="-58.42" width="0.1524" layer="91"/>
<pinref part="R2" gate="A" pin="1"/>
</segment>
</net>
<net name="ADC2" class="0">
<segment>
<pinref part="U3" gate="A" pin="(ADC2/AIN1/PCINT2)_PA2"/>
<wire x1="-53.34" y1="-53.34" x2="-81.28" y2="-53.34" width="0.1524" layer="91"/>
<pinref part="R4" gate="A" pin="1"/>
</segment>
</net>
<net name="U9_DRV" class="0">
<segment>
<pinref part="C8" gate="A" pin="C2"/>
<label x="-20.574" y="127.254" size="1.778" layer="95"/>
<pinref part="J11" gate="G$1" pin="1"/>
<wire x1="-22.86" y1="127" x2="-2.54" y2="127" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="J14" gate="G$1" pin="3"/>
<wire x1="-38.1" y1="91.44" x2="-50.8" y2="91.44" width="0.1524" layer="91"/>
<label x="-50.292" y="91.694" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="83.82" y1="7.62" x2="83.82" y2="15.24" width="0.1524" layer="91"/>
<pinref part="R3" gate="A" pin="R2"/>
<label x="84.582" y="13.462" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J14" gate="G$1" pin="7"/>
<wire x1="-38.1" y1="86.36" x2="-50.8" y2="86.36" width="0.1524" layer="91"/>
<label x="-50.546" y="86.868" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="RHI" gate="A" pin="1"/>
<wire x1="25.4" y1="10.16" x2="25.4" y2="15.24" width="0.1524" layer="91"/>
<label x="21.336" y="15.748" size="1.778" layer="95"/>
</segment>
</net>
<net name="U9_DRV_0" class="0">
<segment>
<pinref part="U9" gate="A" pin="DRV"/>
<wire x1="-12.7" y1="45.72" x2="-25.4" y2="45.72" width="0.1524" layer="91"/>
<label x="-24.892" y="45.974" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J11" gate="G$1" pin="2"/>
<wire x1="-22.86" y1="129.54" x2="-10.16" y2="129.54" width="0.1524" layer="91"/>
<pinref part="J11" gate="G$1" pin="3"/>
<wire x1="-22.86" y1="132.08" x2="-22.86" y2="129.54" width="0.1524" layer="91"/>
<junction x="-22.86" y="129.54"/>
<label x="-20.574" y="130.048" size="1.778" layer="95"/>
</segment>
</net>
<net name="LA_1" class="0">
<segment>
<pinref part="NOTIFY" gate="A" pin="2"/>
<wire x1="119.38" y1="-10.16" x2="119.38" y2="-5.08" width="0.1524" layer="91"/>
<pinref part="R6" gate="A" pin="R1"/>
</segment>
</net>
<net name="1ROU" class="0">
<segment>
<pinref part="U3" gate="A" pin="PA7_(PCINT7/ICP/OC0B/ADC7)"/>
<wire x1="109.22" y1="-63.5" x2="121.92" y2="-63.5" width="0.1524" layer="91"/>
<label x="113.03" y="-63.246" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="119.38" y1="7.62" x2="119.38" y2="15.24" width="0.1524" layer="91"/>
<label x="120.396" y="13.462" size="1.778" layer="95"/>
<pinref part="R6" gate="A" pin="R2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="104,1,27.94,33.02,U9,PGND_2,GND,,,"/>
<approved hash="104,1,27.94,35.56,U9,SGND,GND,,,"/>
<approved hash="104,1,27.94,38.1,U9,PGND,GND,,,"/>
<approved hash="104,1,78.74,48.26,J10,VBUS,U9_USB,,,"/>
<approved hash="104,1,-53.34,-68.58,U3,VCC,SYS_5V,,,"/>
<approved hash="104,1,185.42,55.88,U6,VIN,VCC,,,"/>
<approved hash="104,1,215.9,45.72,U6,VOUT,SYS_5V,,,"/>
<approved hash="204,1,73.66,73.66,J13,GNDBREAK,,,,"/>
<approved hash="104,1,73.66,71.12,J13,PWR,U9_IN,,,"/>
<approved hash="206,1,-66.04,48.26,U9_SYS,,,,,"/>
<approved hash="206,1,-66.04,50.8,U9_SYS,,,,,"/>
<approved hash="206,1,-66.04,53.34,U9_SYS,,,,,"/>
</errors>
</schematic>
</drawing>
</eagle>

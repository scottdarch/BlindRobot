<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="8.0.1">
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
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
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
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
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
<layer number="114" name="Badge_Outline" color="7" fill="1" visible="no" active="yes"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="no" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="no" active="yes"/>
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
<library name="digikey_2">
<packages>
<package name="IND_2012">
<smd name="1" x="-0.9016" y="0" dx="0.8032" dy="1.45" layer="1"/>
<smd name="2" x="0.9016" y="0" dx="0.8032" dy="1.45" layer="1"/>
<wire x1="-0.2032" y1="-0.8636" x2="0.2032" y2="-0.8636" width="0.1524" layer="21"/>
<wire x1="0.2032" y1="0.8636" x2="-0.2032" y2="0.8636" width="0.1524" layer="21"/>
<wire x1="-2.0574" y1="0" x2="-2.2098" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.2098" y1="0" x2="-2.0574" y2="0" width="0.1524" layer="21" curve="-180"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
<wire x1="-0.508" y1="-0.7366" x2="-0.508" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.7366" x2="-1.0922" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-1.0922" y1="-0.7366" x2="-0.508" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.7366" x2="0.508" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.7366" x2="1.0922" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="1.0922" y1="0.7366" x2="0.508" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-0.7366" x2="0.508" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="1.0922" y1="-0.7366" x2="1.0922" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.7366" x2="-0.508" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-1.0922" y1="0.7366" x2="-1.0922" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="-0.6858" y1="0" x2="-0.8382" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-0.8382" y1="0" x2="-0.6858" y2="0" width="0" layer="51" curve="-180"/>
</package>
<package name="IND_2012-M">
<smd name="1" x="-0.9524" y="0" dx="0.9048" dy="1.5516" layer="1"/>
<smd name="2" x="0.9524" y="0" dx="0.9048" dy="1.5516" layer="1"/>
<wire x1="-0.1778" y1="-0.8636" x2="0.1778" y2="-0.8636" width="0.1524" layer="21"/>
<wire x1="0.1778" y1="0.8636" x2="-0.1778" y2="0.8636" width="0.1524" layer="21"/>
<wire x1="-2.159" y1="0" x2="-2.3114" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.3114" y1="0" x2="-2.159" y2="0" width="0.1524" layer="21" curve="-180"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
<wire x1="-0.508" y1="-0.7366" x2="-0.508" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.7366" x2="-1.0922" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-1.0922" y1="-0.7366" x2="-0.508" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.7366" x2="0.508" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.7366" x2="1.0922" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="1.0922" y1="0.7366" x2="0.508" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-0.7366" x2="0.508" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="1.0922" y1="-0.7366" x2="1.0922" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.7366" x2="-0.508" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-1.0922" y1="0.7366" x2="-1.0922" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="-0.7366" y1="0" x2="-0.889" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-0.889" y1="0" x2="-0.7366" y2="0" width="0" layer="51" curve="-180"/>
</package>
<package name="IND_2012-L">
<smd name="1" x="-0.8508" y="0" dx="0.7016" dy="1.45" layer="1"/>
<smd name="2" x="0.8508" y="0" dx="0.7016" dy="1.45" layer="1"/>
<wire x1="-0.2032" y1="-0.8636" x2="0.2032" y2="-0.8636" width="0.1524" layer="21"/>
<wire x1="0.2032" y1="0.8636" x2="-0.2032" y2="0.8636" width="0.1524" layer="21"/>
<wire x1="-1.9558" y1="0" x2="-2.1082" y2="0" width="0.1524" layer="21" curve="-180"/>
<wire x1="-2.1082" y1="0" x2="-1.9558" y2="0" width="0.1524" layer="21" curve="-180"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
<wire x1="-0.508" y1="-0.7366" x2="-0.508" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="0.7366" x2="-1.0922" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-1.0922" y1="-0.7366" x2="-0.508" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.7366" x2="0.508" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.7366" x2="1.0922" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="1.0922" y1="0.7366" x2="0.508" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-0.7366" x2="0.508" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="1.0922" y1="-0.7366" x2="1.0922" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="0.508" y1="0.7366" x2="-0.508" y2="0.7366" width="0.1524" layer="51"/>
<wire x1="-1.0922" y1="0.7366" x2="-1.0922" y2="-0.7366" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="0" x2="-0.7874" y2="0" width="0" layer="51" curve="-180"/>
<wire x1="-0.7874" y1="0" x2="-0.635" y2="0" width="0" layer="51" curve="-180"/>
</package>
<package name="DRC10_2P4X1P65">
<smd name="1" x="-1.475" y="1" dx="0.85" dy="0.28" layer="1" cream="no"/>
<smd name="2" x="-1.475" y="0.5" dx="0.85" dy="0.28" layer="1" cream="no"/>
<smd name="3" x="-1.475" y="0" dx="0.85" dy="0.28" layer="1" cream="no"/>
<smd name="4" x="-1.475" y="-0.5" dx="0.85" dy="0.28" layer="1" cream="no"/>
<smd name="5" x="-1.475" y="-1" dx="0.85" dy="0.28" layer="1" cream="no"/>
<smd name="6" x="1.475" y="-1" dx="0.85" dy="0.28" layer="1" rot="R180" cream="no"/>
<smd name="7" x="1.475" y="-0.5" dx="0.85" dy="0.28" layer="1" rot="R180" cream="no"/>
<smd name="8" x="1.475" y="0" dx="0.85" dy="0.28" layer="1" rot="R180" cream="no"/>
<smd name="9" x="1.475" y="0.5" dx="0.85" dy="0.28" layer="1" rot="R180" cream="no"/>
<smd name="10" x="1.475" y="1" dx="0.85" dy="0.28" layer="1" rot="R180" cream="no"/>
<polygon width="0.0254" layer="31">
<vertex x="-1.864946875" y="1.104946875"/>
<vertex x="-1.864946875" y="0.895053125"/>
<vertex x="-1.085053125" y="0.895053125"/>
<vertex x="-1.085053125" y="1.104946875"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.864946875" y="0.604946875"/>
<vertex x="-1.864946875" y="0.39505"/>
<vertex x="-1.085053125" y="0.39505"/>
<vertex x="-1.085053125" y="0.604946875"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.864946875" y="0.104946875"/>
<vertex x="-1.864946875" y="-0.104946875"/>
<vertex x="-1.085053125" y="-0.104946875"/>
<vertex x="-1.085053125" y="0.104946875"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.864946875" y="-0.39505"/>
<vertex x="-1.864946875" y="-0.604946875"/>
<vertex x="-1.085053125" y="-0.604946875"/>
<vertex x="-1.085053125" y="-0.39505"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="-1.864946875" y="-0.895053125"/>
<vertex x="-1.864946875" y="-1.104946875"/>
<vertex x="-1.085053125" y="-1.104946875"/>
<vertex x="-1.085053125" y="-0.895053125"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.085053125" y="-0.895053125"/>
<vertex x="1.085053125" y="-1.104946875"/>
<vertex x="1.864946875" y="-1.104946875"/>
<vertex x="1.864946875" y="-0.895053125"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.085053125" y="-0.39505"/>
<vertex x="1.085053125" y="-0.604946875"/>
<vertex x="1.864946875" y="-0.604946875"/>
<vertex x="1.864946875" y="-0.39505"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.085053125" y="0.104946875"/>
<vertex x="1.085053125" y="-0.104946875"/>
<vertex x="1.864946875" y="-0.104946875"/>
<vertex x="1.864946875" y="0.104946875"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.085053125" y="0.604946875"/>
<vertex x="1.085053125" y="0.39505"/>
<vertex x="1.864946875" y="0.39505"/>
<vertex x="1.864946875" y="0.604946875"/>
</polygon>
<polygon width="0.0254" layer="31">
<vertex x="1.085053125" y="1.104946875"/>
<vertex x="1.085053125" y="0.895053125"/>
<vertex x="1.864946875" y="0.895053125"/>
<vertex x="1.864946875" y="1.104946875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.93505" y="1.175053125"/>
<vertex x="-1.93505" y="0.82495"/>
<vertex x="-1.01495" y="0.82495"/>
<vertex x="-1.01495" y="1.175053125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.93505" y="0.67505"/>
<vertex x="-1.93505" y="0.324946875"/>
<vertex x="-1.01495" y="0.324946875"/>
<vertex x="-1.01495" y="0.67505"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.93505" y="0.175053125"/>
<vertex x="-1.93505" y="-0.175053125"/>
<vertex x="-1.01495" y="-0.175053125"/>
<vertex x="-1.01495" y="0.175053125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.93505" y="-0.324946875"/>
<vertex x="-1.93505" y="-0.67505"/>
<vertex x="-1.01495" y="-0.67505"/>
<vertex x="-1.01495" y="-0.324946875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="-1.93505" y="-0.82495"/>
<vertex x="-1.93505" y="-1.175053125"/>
<vertex x="-1.01495" y="-1.175053125"/>
<vertex x="-1.01495" y="-0.82495"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.01495" y="-0.82495"/>
<vertex x="1.01495" y="-1.175053125"/>
<vertex x="1.93505" y="-1.175053125"/>
<vertex x="1.93505" y="-0.82495"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.01495" y="-0.324946875"/>
<vertex x="1.01495" y="-0.67505"/>
<vertex x="1.93505" y="-0.67505"/>
<vertex x="1.93505" y="-0.324946875"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.01495" y="0.175053125"/>
<vertex x="1.01495" y="-0.175053125"/>
<vertex x="1.93505" y="-0.175053125"/>
<vertex x="1.93505" y="0.175053125"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.01495" y="0.67505"/>
<vertex x="1.01495" y="0.324946875"/>
<vertex x="1.93505" y="0.324946875"/>
<vertex x="1.93505" y="0.67505"/>
</polygon>
<polygon width="0.0254" layer="29">
<vertex x="1.01495" y="1.175053125"/>
<vertex x="1.01495" y="0.82495"/>
<vertex x="1.93505" y="0.82495"/>
<vertex x="1.93505" y="1.175053125"/>
</polygon>
<wire x1="-1.9304" y1="-1.9304" x2="1.9304" y2="-1.9304" width="0.1524" layer="21"/>
<wire x1="1.9304" y1="-1.9304" x2="1.9304" y2="-1.4732" width="0.1524" layer="21"/>
<wire x1="1.9304" y1="1.9304" x2="-1.9304" y2="1.9304" width="0.1524" layer="21"/>
<wire x1="-1.9304" y1="1.9304" x2="-1.9304" y2="1.4732" width="0.1524" layer="21"/>
<wire x1="-1.9304" y1="-1.4732" x2="-1.9304" y2="-1.9304" width="0.1524" layer="21"/>
<wire x1="1.9304" y1="1.4732" x2="1.9304" y2="1.9304" width="0.1524" layer="21"/>
<wire x1="-2.2352" y1="0.9144" x2="-2.2352" y2="1.0668" width="0.1524" layer="21" curve="-208"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="21" ratio="6" rot="SR0">&gt;Name</text>
<wire x1="-1.5494" y1="-1.5494" x2="1.5494" y2="-1.5494" width="0.1524" layer="51"/>
<wire x1="1.5494" y1="-1.5494" x2="1.5494" y2="1.5494" width="0.1524" layer="51"/>
<wire x1="1.5494" y1="1.5494" x2="0.3048" y2="1.5494" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.5494" x2="-0.3048" y2="1.5494" width="0.1524" layer="51"/>
<wire x1="-0.3048" y1="1.5494" x2="-1.5494" y2="1.5494" width="0.1524" layer="51"/>
<wire x1="-1.5494" y1="1.5494" x2="-1.5494" y2="-1.5494" width="0.1524" layer="51"/>
<wire x1="-0.9652" y1="0.9906" x2="-1.1176" y2="0.9906" width="0" layer="51" curve="-180"/>
<wire x1="-1.1176" y1="0.9906" x2="-0.9652" y2="0.9906" width="0" layer="51" curve="-180"/>
<wire x1="0.3048" y1="1.5494" x2="-0.3048" y2="1.5494" width="0.1524" layer="51" curve="-180"/>
</package>
</packages>
<symbols>
<symbol name="IND">
<pin name="1" x="15.24" y="0" visible="off" length="short" direction="pas" rot="R180"/>
<pin name="2" x="0" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<wire x1="5.08" y1="0" x2="5.08" y2="1.27" width="0.2032" layer="94"/>
<wire x1="7.62" y1="0" x2="7.62" y2="1.27" width="0.2032" layer="94"/>
<wire x1="12.7" y1="0" x2="12.7" y2="1.27" width="0.2032" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="1.27" width="0.2032" layer="94"/>
<wire x1="10.16" y1="0" x2="10.16" y2="1.27" width="0.2032" layer="94"/>
<wire x1="5.08" y1="1.27" x2="7.62" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<wire x1="2.54" y1="1.27" x2="5.08" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<wire x1="7.62" y1="1.27" x2="10.16" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<wire x1="10.16" y1="1.27" x2="12.7" y2="1.27" width="0.1524" layer="94" curve="-180"/>
<text x="-1.9812" y="-4.2672" size="3.4798" layer="96" ratio="10" rot="SR0">&gt;Value</text>
<text x="-0.9144" y="3.3528" size="3.4798" layer="95" ratio="10" rot="SR0">&gt;Name</text>
</symbol>
<symbol name="TPS63001_DRC_10">
<pin name="VOUT" x="2.54" y="0" length="middle" direction="out"/>
<pin name="L2" x="2.54" y="-2.54" length="middle" direction="in"/>
<pin name="PGND" x="2.54" y="-5.08" length="middle" direction="pwr"/>
<pin name="L1" x="2.54" y="-7.62" length="middle" direction="in"/>
<pin name="VIN" x="2.54" y="-10.16" length="middle" direction="in"/>
<pin name="EN" x="63.5" y="-10.16" length="middle" direction="in" rot="R180"/>
<pin name="PS/SYNC" x="63.5" y="-7.62" length="middle" direction="in" rot="R180"/>
<pin name="VINA" x="63.5" y="-5.08" length="middle" direction="in" rot="R180"/>
<pin name="GND" x="63.5" y="-2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="FB" x="63.5" y="0" length="middle" direction="in" rot="R180"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="58.42" y2="-15.24" width="0.1524" layer="94"/>
<wire x1="58.42" y1="-15.24" x2="58.42" y2="5.08" width="0.1524" layer="94"/>
<wire x1="58.42" y1="5.08" x2="7.62" y2="5.08" width="0.1524" layer="94"/>
<text x="28.2956" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="27.6606" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MLP2012S1R5MT0S1" prefix="L">
<gates>
<gate name="A" symbol="IND" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="IND_2012">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="MLP2012S1R5MT0S1" constant="no"/>
<attribute name="VENDOR" value="TDK" constant="no"/>
</technology>
</technologies>
</device>
<device name="IND_2012-M" package="IND_2012-M">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="MLP2012S1R5MT0S1" constant="no"/>
<attribute name="VENDOR" value="TDK" constant="no"/>
</technology>
</technologies>
</device>
<device name="IND_2012-L" package="IND_2012-L">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="MLP2012S1R5MT0S1" constant="no"/>
<attribute name="VENDOR" value="TDK" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="TPS63001DRCR" prefix="U">
<gates>
<gate name="A" symbol="TPS63001_DRC_10" x="0" y="0"/>
</gates>
<devices>
<device name="" package="DRC10_2P4X1P65">
<connects>
<connect gate="A" pin="EN" pad="6"/>
<connect gate="A" pin="FB" pad="10"/>
<connect gate="A" pin="GND" pad="9"/>
<connect gate="A" pin="L1" pad="4"/>
<connect gate="A" pin="L2" pad="2"/>
<connect gate="A" pin="PGND" pad="3"/>
<connect gate="A" pin="PS/SYNC" pad="7"/>
<connect gate="A" pin="VIN" pad="5"/>
<connect gate="A" pin="VINA" pad="8"/>
<connect gate="A" pin="VOUT" pad="1"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="TPS63001DRCR" constant="no"/>
<attribute name="VENDOR" value="Texas Instruments" constant="no"/>
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
<package name="CAPC3216X125N">
<smd name="1" x="-1.397" y="0" dx="0.9144" dy="1.8034" layer="1"/>
<smd name="2" x="1.397" y="0" dx="0.9144" dy="1.8034" layer="1"/>
<wire x1="-0.6096" y1="-0.889" x2="0.6096" y2="-0.889" width="0.1524" layer="21"/>
<wire x1="0.6096" y1="0.889" x2="-0.6096" y2="0.889" width="0.1524" layer="21"/>
<wire x1="-0.9398" y1="-0.889" x2="-0.9398" y2="0.889" width="0" layer="51"/>
<wire x1="-0.9398" y1="0.889" x2="-1.7018" y2="0.889" width="0" layer="51"/>
<wire x1="-1.7018" y1="-0.889" x2="-0.9398" y2="-0.889" width="0" layer="51"/>
<wire x1="0.9398" y1="0.889" x2="0.9398" y2="-0.889" width="0" layer="51"/>
<wire x1="0.9398" y1="-0.889" x2="1.7018" y2="-0.889" width="0" layer="51"/>
<wire x1="1.7018" y1="0.889" x2="0.9398" y2="0.889" width="0" layer="51"/>
<wire x1="-0.9398" y1="-0.889" x2="0.9398" y2="-0.889" width="0" layer="51"/>
<wire x1="1.7018" y1="-0.889" x2="1.7018" y2="0.889" width="0" layer="51"/>
<wire x1="0.9398" y1="0.889" x2="-0.9398" y2="0.889" width="0" layer="51"/>
<wire x1="-1.7018" y1="0.889" x2="-1.7018" y2="-0.889" width="0" layer="51"/>
<text x="-3.4544" y="1.905" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-3.4544" y="-3.937" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
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
<deviceset name="GRM188R60J106ME47D" prefix="C">
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
<attribute name="MPN" value="GRM188R60J106ME47D " constant="no"/>
<attribute name="OC_FARNELL" value="1735528" constant="no"/>
<attribute name="OC_NEWARK" value="24R6334" constant="no"/>
<attribute name="SUPPLIER" value="Murata" constant="no"/>
<attribute name="TOLERANCE" value="±20%" constant="no"/>
<attribute name="VALUE" value="10uF" constant="no"/>
<attribute name="VOLTAGERATING" value="6.3V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GRM31MR71E105KA01L" prefix="C">
<description>CAPACITOR, 1206</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC3216X125N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="GRM31MR71E105KA01L" constant="no"/>
<attribute name="OC_FARNELL" value="9527761" constant="no"/>
<attribute name="OC_NEWARK" value="97K0660" constant="no"/>
<attribute name="SUPPLIER" value="Murata" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="1uF" constant="no"/>
<attribute name="VOLTAGERATING" value="25V" constant="no"/>
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
<part name="L1" library="digikey_2" deviceset="MLP2012S1R5MT0S1" device="IND_2012-M"/>
<part name="U1" library="digikey_2" deviceset="TPS63001DRCR" device=""/>
<part name="C1" library="Murata_By_element14_Batch_1" deviceset="GRM188R60J106ME47D" device="" value="10uF"/>
<part name="C2" library="Murata_By_element14_Batch_1" deviceset="GRM31MR71E105KA01L" device="" value="47uF"/>
<part name="GND1" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="L1" gate="A" x="83.82" y="81.28"/>
<instance part="U1" gate="A" x="58.42" y="40.64"/>
<instance part="C1" gate="A" x="96.52" y="15.24"/>
<instance part="C2" gate="A" x="139.7" y="35.56"/>
<instance part="GND1" gate="1" x="73.66" y="12.7"/>
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

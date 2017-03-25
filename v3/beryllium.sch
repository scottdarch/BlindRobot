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
<package name="23X3X2">
<pad name="P$1" x="19.685" y="1.905" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="P$2" x="22.225" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$3" x="22.225" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$4" x="19.685" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$5" x="24.765" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$6" x="27.305" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$7" x="29.845" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$8" x="32.385" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$9" x="24.765" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$10" x="27.305" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$11" x="29.845" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$12" x="32.385" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$13" x="34.925" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$14" x="34.925" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$15" x="37.465" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$16" x="40.005" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$17" x="42.545" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$18" x="45.085" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$19" x="37.465" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$20" x="40.005" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$21" x="42.545" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$22" x="45.085" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$23" x="47.625" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$24" x="47.625" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$25" x="50.165" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$26" x="52.705" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$27" x="55.245" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$28" x="57.785" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$29" x="50.165" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$30" x="52.705" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$31" x="55.245" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$32" x="57.785" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$33" x="60.325" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$34" x="60.325" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$35" x="62.865" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$36" x="65.405" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$37" x="67.945" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$38" x="70.485" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$39" x="62.865" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$40" x="65.405" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$41" x="67.945" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$42" x="70.485" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$43" x="73.025" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$44" x="75.565" y="1.905" drill="1.016" diameter="1.8796"/>
<pad name="P$45" x="73.025" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$46" x="75.565" y="4.445" drill="1.016" diameter="1.8796"/>
<pad name="P$47" x="19.685" y="50.165" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="P$48" x="22.225" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$49" x="22.225" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$50" x="19.685" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$51" x="24.765" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$52" x="27.305" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$53" x="29.845" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$54" x="32.385" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$55" x="24.765" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$56" x="27.305" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$57" x="29.845" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$58" x="32.385" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$59" x="34.925" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$60" x="34.925" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$61" x="37.465" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$62" x="40.005" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$63" x="42.545" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$64" x="45.085" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$65" x="37.465" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$66" x="40.005" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$67" x="42.545" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$68" x="45.085" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$69" x="47.625" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$70" x="47.625" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$71" x="50.165" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$72" x="52.705" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$73" x="55.245" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$74" x="57.785" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$75" x="50.165" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$76" x="52.705" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$77" x="55.245" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$78" x="57.785" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$79" x="60.325" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$80" x="60.325" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$81" x="62.865" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$82" x="65.405" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$83" x="67.945" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$84" x="70.485" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$85" x="62.865" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$86" x="65.405" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$87" x="67.945" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$88" x="70.485" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$89" x="73.025" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$90" x="75.565" y="50.165" drill="1.016" diameter="1.8796"/>
<pad name="P$91" x="73.025" y="52.705" drill="1.016" diameter="1.8796"/>
<pad name="P$92" x="75.565" y="52.705" drill="1.016" diameter="1.8796"/>
</package>
</packages>
<symbols>
</symbols>
<devicesets>
<deviceset name="BEAGLEBONE_HEADERS">
<gates>
</gates>
<devices>
<device name="" package="23X3X2">
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
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
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

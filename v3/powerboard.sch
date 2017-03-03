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
<library name="digikey">
<packages>
<package name="VQFN20">
<smd name="P$5" x="-0.25" y="-1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$6" x="0.25" y="-1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$4" x="-0.75" y="-1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$7" x="0.75" y="-1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$3" x="-1.25" y="-1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$8" x="1.25" y="-1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$2" x="-1.75" y="-1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$9" x="1.75" y="-1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$19" x="-1.75" y="1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$18" x="-1.25" y="1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$17" x="-0.75" y="1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$16" x="-0.25" y="1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$15" x="0.25" y="1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$14" x="0.75" y="1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$13" x="1.25" y="1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$12" x="1.75" y="1.725" dx="0.28" dy="0.85" layer="1" roundness="20"/>
<smd name="P$20" x="-2.225" y="0.75" dx="0.28" dy="0.85" layer="1" roundness="20" rot="R90"/>
<smd name="P$1" x="-2.225" y="-0.75" dx="0.28" dy="0.85" layer="1" roundness="20" rot="R90"/>
<smd name="P$11" x="2.225" y="0.75" dx="0.28" dy="0.85" layer="1" roundness="20" rot="R90"/>
<smd name="P$10" x="2.225" y="-0.75" dx="0.28" dy="0.85" layer="1" roundness="20" rot="R90"/>
<wire x1="-2.325" y1="1.825" x2="-2.325" y2="-1.825" width="0.127" layer="51"/>
<wire x1="2.325" y1="1.825" x2="2.325" y2="-1.825" width="0.127" layer="51"/>
<wire x1="-2.325" y1="1.825" x2="2.325" y2="1.825" width="0.127" layer="51"/>
<wire x1="-2.325" y1="-1.825" x2="2.325" y2="-1.825" width="0.127" layer="51"/>
<smd name="P$21" x="0" y="0" dx="5.3" dy="0.78" layer="1"/>
<rectangle x1="-1.525" y1="-1.025" x2="1.525" y2="1.025" layer="1"/>
<circle x="-2.665" y="-2.145" radius="0.127" width="0.127" layer="21"/>
<text x="-2.25" y="2.25" size="0.5" layer="25">&gt;Name</text>
<text x="-2.25" y="-2.75" size="0.5" layer="27">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="TPS61088">
<pin name="SW@4" x="-17.78" y="5.08" visible="pin" length="middle" direction="in" swaplevel="1"/>
<pin name="FSW" x="-17.78" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="VIN" x="-17.78" y="-10.16" visible="pin" length="middle" direction="in"/>
<pin name="VCC" x="-17.78" y="-12.7" visible="pin" length="middle" direction="pwr"/>
<pin name="EN" x="-17.78" y="-15.24" visible="pin" length="middle" direction="in"/>
<pin name="PGND" x="-17.78" y="-17.78" visible="pin" length="middle" direction="pwr"/>
<pin name="AGND" x="-17.78" y="-20.32" visible="pin" length="middle" direction="pwr"/>
<pin name="VOUT@14" x="17.78" y="5.08" visible="pin" length="middle" direction="pwr" swaplevel="2" rot="R180"/>
<pin name="FB" x="17.78" y="-5.08" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="COMP" x="17.78" y="-7.62" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="ILIM" x="17.78" y="-10.16" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="SS" x="17.78" y="-12.7" visible="pin" length="middle" direction="out" rot="R180"/>
<pin name="MODE" x="17.78" y="-15.24" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="BOOT" x="-2.54" y="17.78" visible="pin" length="middle" direction="out" rot="R270"/>
<wire x1="-12.7" y1="12.7" x2="-12.7" y2="-22.86" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-22.86" x2="12.7" y2="-22.86" width="0.254" layer="94"/>
<wire x1="12.7" y1="-22.86" x2="12.7" y2="12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="12.7" x2="-12.7" y2="12.7" width="0.254" layer="94"/>
<text x="-10.16" y="-25.4" size="1.27" layer="95">&gt;Name</text>
<text x="-10.16" y="-27.94" size="1.016" layer="95">&gt;Value</text>
<pin name="SW@5" x="-17.78" y="2.54" visible="pin" length="middle" direction="in" swaplevel="1"/>
<pin name="SW@6" x="-17.78" y="0" visible="pin" length="middle" direction="in" swaplevel="1"/>
<pin name="SW@7" x="-17.78" y="-2.54" visible="pin" length="middle" direction="in" swaplevel="1"/>
<pin name="VOUT@15" x="17.78" y="2.54" visible="pin" length="middle" direction="pwr" swaplevel="2" rot="R180"/>
<pin name="VOUT@16" x="17.78" y="0" visible="pin" length="middle" direction="pwr" swaplevel="2" rot="R180"/>
<pin name="NC@11" x="17.78" y="-17.78" visible="pin" length="middle" direction="nc" swaplevel="3" rot="R180"/>
<pin name="NC@12" x="17.78" y="-20.32" visible="pin" length="middle" direction="nc" swaplevel="3" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="TPS61088" prefix="U">
<description>&lt;h1&gt;TPS61088 10-A Fully-Integrated Synchronous Boost Converter&lt;/h1&gt;
&lt;ul&gt;
&lt;li&gt;Input Voltage Range: 2.7 to 12 V
&lt;li&gt;Output Voltage Range: 4.5 to 12.6 V
&lt;li&gt;10-A Switch Current
&lt;li&gt;Up to 91% Efficiency at VIN = 3.3 V, VOUT = 9 V, and IOUT = 3 A
&lt;li&gt;Mode Selection Between PFM Mode and ForcedPWM Mode at Light Load
&lt;li&gt;1.0 μA Current into VIN Pin during Shutdown
&lt;li&gt;Resistor-Programmable Switch Peak Current Limit
&lt;li&gt;Adjustable Switching Frequency: 200 kHz to 2.2MHz
&lt;li&gt;Programmable Soft Start
&lt;li&gt;Output Overvoltage Protection at 13.2 V
&lt;li&gt;Cycle-by-Cycle Overcurrent Protection
&lt;li&gt;Thermal Shutdown
&lt;li&gt;4.50-mm × 3.50-mm 20-Pin VQFN Package
&lt;/ul&gt;

&lt;h2&gt;Description&lt;/h2&gt;
&lt;p&gt;
The TPS61088 is a high power density, fully
integrated synchronous boost converter with a 11-mΩ
power switch and a 13-mΩ rectifier switch to provide
a high efficiency and small size solution in portable
systems. The TPS61088 has wide input voltage
range from 2.7 V to 12 V to support applications with
single cell or two cell Lithium batteries. The device
has 10-A switch current capability and is capable of
providing an output voltage up to 12.6 V.
The TPS61088 uses adaptive constant off-time peak
current control topology to regulate the output
voltage. In moderate to heavy load condition, the
TPS61088 works in the pulse width modulation
(PWM) mode. In light load condition, the device has
two operation modes selected by the MODE pin. One
is the pulse frequency modulation (PFM) mode to
improve the efficiency and another one is the forced
PWM mode to avoid application problems caused by
low switching frequency. The switching frequency in
the PWM mode is adjustable ranging from 200 kHz to
2.2 MHz by an external resistor. The TPS61088 also
implements a programmable soft-start function and
an adjustable switching peak current limit function. In
addition, the device provides 13.2-V output
overvoltage protection, cycle-by-cycle overcurrent
protection, and thermal shutdown protection.
The TPS61088 is available in a 4.50-mm × 3.50-mm
20-pin VQFN package.&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="TPS61088" x="0" y="0"/>
</gates>
<devices>
<device name="VQFN20" package="VQFN20">
<connects>
<connect gate="G$1" pin="AGND" pad="P$20"/>
<connect gate="G$1" pin="BOOT" pad="P$8"/>
<connect gate="G$1" pin="COMP" pad="P$18"/>
<connect gate="G$1" pin="EN" pad="P$2"/>
<connect gate="G$1" pin="FB" pad="P$17"/>
<connect gate="G$1" pin="FSW" pad="P$3"/>
<connect gate="G$1" pin="ILIM" pad="P$19"/>
<connect gate="G$1" pin="MODE" pad="P$13"/>
<connect gate="G$1" pin="NC@11" pad="P$11"/>
<connect gate="G$1" pin="NC@12" pad="P$12"/>
<connect gate="G$1" pin="PGND" pad="P$21"/>
<connect gate="G$1" pin="SS" pad="P$10"/>
<connect gate="G$1" pin="SW@4" pad="P$4"/>
<connect gate="G$1" pin="SW@5" pad="P$5"/>
<connect gate="G$1" pin="SW@6" pad="P$6"/>
<connect gate="G$1" pin="SW@7" pad="P$7"/>
<connect gate="G$1" pin="VCC" pad="P$1"/>
<connect gate="G$1" pin="VIN" pad="P$9"/>
<connect gate="G$1" pin="VOUT@14" pad="P$14"/>
<connect gate="G$1" pin="VOUT@15" pad="P$15"/>
<connect gate="G$1" pin="VOUT@16" pad="P$16"/>
</connects>
<technologies>
<technology name="">
<attribute name="TYPE" value="boost" constant="no"/>
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
<part name="GND1" library="SparkFun-PowerSymbols" deviceset="GND" device=""/>
<part name="U1" library="digikey" deviceset="TPS61088" device="VQFN20"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="GND1" gate="1" x="63.5" y="-5.08"/>
<instance part="U1" gate="G$1" x="106.68" y="27.94"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="63.5" y1="-2.54" x2="63.5" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="PGND"/>
<wire x1="63.5" y1="10.16" x2="88.9" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="AGND"/>
<wire x1="63.5" y1="-2.54" x2="88.9" y2="-2.54" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-2.54" x2="88.9" y2="7.62" width="0.1524" layer="91"/>
<junction x="63.5" y="-2.54"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>

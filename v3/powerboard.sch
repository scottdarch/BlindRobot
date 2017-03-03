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
<library name="AVX_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 30/04/2012 16:26:10</description>
<packages>
<package name="CAPC2013X94N">
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
<deviceset name="08053C104KAT2A" prefix="C">
<description>Capacitor 0805</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC2013X94N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="08053C104KAT2A" constant="no"/>
<attribute name="OC_FARNELL" value="1740665" constant="no"/>
<attribute name="OC_NEWARK" value="96M1381" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="100nF" constant="no"/>
<attribute name="VOLTAGERATING" value="25V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="0603YC681JAT2A" prefix="C">
<description>Capacitor, 0603</description>
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
<attribute name="MPN" value="0603YC681JAT2A" constant="no"/>
<attribute name="OC_FARNELL" value="-" constant="no"/>
<attribute name="OC_NEWARK" value="55J2711" constant="no"/>
<attribute name="SUPPLIER" value="AVX" constant="no"/>
<attribute name="TOLERANCE" value="±5%" constant="no"/>
<attribute name="VALUE" value="680PF" constant="no"/>
<attribute name="VOLTAGERATING" value="16V" constant="no"/>
</technology>
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
<package name="CAPC3216X180N">
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
<deviceset name="C0402C360J5GACTU" prefix="C">
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
<attribute name="MPN" value="C0402C360J5GACTU" constant="no"/>
<attribute name="OC_FARNELL" value="1865427" constant="no"/>
<attribute name="OC_NEWARK" value="29T8949" constant="no"/>
<attribute name="SUPPLIER" value="KEMET" constant="no"/>
<attribute name="TOLERANCE" value="±5%" constant="no"/>
<attribute name="VALUE" value="36pF" constant="no"/>
<attribute name="VOLTAGERATING" value="50V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C1206F474K5RACAUTO" prefix="C">
<description>CAPACITOR, 1206</description>
<gates>
<gate name="A" symbol="CAPH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="CAPC3216X180N">
<connects>
<connect gate="A" pin="C1" pad="1"/>
<connect gate="A" pin="C2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="C1206F474K5RACAUTO" constant="no"/>
<attribute name="OC_FARNELL" value="1869060" constant="no"/>
<attribute name="OC_NEWARK" value="32T6755" constant="no"/>
<attribute name="SUPPLIER" value="KEMET" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="0.47uF" constant="no"/>
<attribute name="VOLTAGERATING" value="50V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="C0402C822K5RACTU" prefix="C">
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
<attribute name="MPN" value="C0402C822K5RACTU" constant="no"/>
<attribute name="OC_FARNELL" value="1865460" constant="no"/>
<attribute name="OC_NEWARK" value="29T8966" constant="no"/>
<attribute name="SUPPLIER" value="KEMET" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="8.2nF" constant="no"/>
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
<package name="CAPC1005X60N">
<smd name="1" x="-0.4064" y="0" dx="0.3048" dy="0.6096" layer="1"/>
<smd name="2" x="0.4064" y="0" dx="0.3048" dy="0.6096" layer="1"/>
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
<deviceset name="GRM155R71C104KA88D" prefix="C">
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
<attribute name="MPN" value="GRM155R71C104KA88D" constant="no"/>
<attribute name="OC_FARNELL" value="8819742" constant="no"/>
<attribute name="OC_NEWARK" value="38K1647" constant="no"/>
<attribute name="SUPPLIER" value="Murata" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="100nF" constant="no"/>
<attribute name="VOLTAGERATING" value="16V" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GRM188R60J105KA01D" prefix="C">
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
<attribute name="MPN" value="GRM188R60J105KA01D" constant="no"/>
<attribute name="OC_FARNELL" value="9527699" constant="no"/>
<attribute name="OC_NEWARK" value="97K0609" constant="no"/>
<attribute name="SUPPLIER" value="Murata" constant="no"/>
<attribute name="TOLERANCE" value="±10%" constant="no"/>
<attribute name="VALUE" value="1uF" constant="no"/>
<attribute name="VOLTAGERATING" value="6.3V" constant="no"/>
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
<deviceset name="CRCW040238K3FKED" prefix="R">
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
<attribute name="MPN" value="CRCW040238K3FKED" constant="no"/>
<attribute name="OC_FARNELL" value="1151219" constant="no"/>
<attribute name="OC_NEWARK" value="52K7021" constant="no"/>
<attribute name="SUPPLIER" value="VISHAY DALE ELECTRONICS" constant="no"/>
<attribute name="TOLERANCE" value="±1%" constant="no"/>
<attribute name="VALUE" value="38.3K Ohms" constant="no"/>
<attribute name="WATTAGE" value="0.063 W" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRCW0402118KFKED" prefix="R">
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
<attribute name="MPN" value="CRCW0402118KFKED" constant="no"/>
<attribute name="OC_FARNELL" value="1652743" constant="no"/>
<attribute name="OC_NEWARK" value="52K6643" constant="no"/>
<attribute name="SUPPLIER" value="Vishay" constant="no"/>
<attribute name="TOLERANCE" value="±1%" constant="no"/>
<attribute name="VALUE" value="118K Ohms" constant="no"/>
<attribute name="WATTAGE" value="0.063W" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRCW0402102KFKED" prefix="R">
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
<attribute name="MPN" value="CRCW0402102KFKED" constant="no"/>
<attribute name="OC_FARNELL" value="1150767" constant="no"/>
<attribute name="OC_NEWARK" value="52K6611" constant="no"/>
<attribute name="SUPPLIER" value="VISHAY DALE ELECTRONICS" constant="no"/>
<attribute name="TOLERANCE" value="±1%" constant="no"/>
<attribute name="VALUE" value="102K Ohms" constant="no"/>
<attribute name="WATTAGE" value="0.063 W" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="CRCW0402261KFKED" prefix="R">
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
<attribute name="MPN" value="CRCW0402261KFKED" constant="no"/>
<attribute name="OC_FARNELL" value="1151087" constant="no"/>
<attribute name="OC_NEWARK" value="52K6902" constant="no"/>
<attribute name="SUPPLIER" value="VISHAY DALE ELECTRONICS" constant="no"/>
<attribute name="TOLERANCE" value="±1%" constant="no"/>
<attribute name="VALUE" value="261K Ohms" constant="no"/>
<attribute name="WATTAGE" value="0.063 W" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Yageo_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 21/03/2012 16:17:53</description>
<packages>
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
<deviceset name="RC0603FR-07470KL" prefix="R">
<description>RESISTOR, 0603</description>
<gates>
<gate name="A" symbol="RESH" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="RESC1608X60N">
<connects>
<connect gate="A" pin="R1" pad="1"/>
<connect gate="A" pin="R2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="MPN" value="RC0603FR-07470KL" constant="no"/>
<attribute name="OC_FARNELL" value="1117267" constant="no"/>
<attribute name="OC_NEWARK" value="68R0098" constant="no"/>
<attribute name="SUPPLIER" value="Yageo" constant="no"/>
<attribute name="TOLERANCE" value="±1%" constant="no"/>
<attribute name="VALUE" value="470K Ohms" constant="no"/>
<attribute name="WATTAGE" value="1/10 W" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Coiltronics_By_element14_Batch_1">
<description>Developed by element14 :&lt;br&gt;
element14 CAD Library consolidation.ulp
at 13/06/2012 12:50:21</description>
<packages>
<package name="INDM7676X355N">
<smd name="1" x="-2.8194" y="0" dx="3.5052" dy="2.2606" layer="1" rot="R90"/>
<smd name="2" x="2.8194" y="0" dx="3.5052" dy="2.2606" layer="1" rot="R90"/>
<wire x1="3.81" y1="2.0828" x2="3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-2.0828" x2="-3.81" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-3.6068" y1="2.0828" x2="-1.905" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.6068" y1="-2.0828" x2="-1.905" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-3.81" x2="3.81" y2="-3.81" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-3.81" x2="3.81" y2="-2.0828" width="0.1524" layer="21"/>
<wire x1="3.81" y1="3.81" x2="-3.81" y2="3.81" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="3.81" x2="-3.81" y2="2.0828" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="1.905" x2="-1.905" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-1.905" x2="-1.905" y2="-3.81" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="-3.81" x2="3.81" y2="-3.81" width="0.1524" layer="51"/>
<wire x1="3.81" y1="-3.81" x2="3.81" y2="3.81" width="0.1524" layer="51"/>
<wire x1="3.81" y1="3.81" x2="-3.81" y2="3.81" width="0.1524" layer="51"/>
<wire x1="-3.81" y1="3.81" x2="-3.81" y2="-3.81" width="0.1524" layer="51"/>
<text x="-4.8514" y="4.3434" size="2.0828" layer="25" ratio="10" rot="SR0">&gt;NAME</text>
<text x="-5.461" y="-6.9088" size="2.0828" layer="27" ratio="10" rot="SR0">&gt;VALUE</text>
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
<wire x1="5.08" y1="1.27" x2="7.62" y2="1.27" width="0" layer="94" curve="-180"/>
<wire x1="2.54" y1="1.27" x2="5.08" y2="1.27" width="0" layer="94" curve="-180"/>
<wire x1="7.62" y1="1.27" x2="10.16" y2="1.27" width="0" layer="94" curve="-180"/>
<wire x1="10.16" y1="1.27" x2="12.7" y2="1.27" width="0" layer="94" curve="-180"/>
<text x="2.2606" y="4.0386" size="2.0828" layer="95" ratio="10" rot="SR0">&gt;NAME</text>
<text x="1.6002" y="-3.7592" size="2.0828" layer="96" ratio="10" rot="SR0">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="DR73-1R0-R" prefix="L">
<description>POWER INDUCTOR</description>
<gates>
<gate name="A" symbol="IND" x="0" y="0" swaplevel="1"/>
</gates>
<devices>
<device name="" package="INDM7676X355N">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="CURRENTRATING" value="5.28A" constant="no"/>
<attribute name="INDUCTANCE" value="1µH" constant="no"/>
<attribute name="MPN" value="DR73-1R0-R" constant="no"/>
<attribute name="OC_FARNELL" value="1463503" constant="no"/>
<attribute name="OC_NEWARK" value="29K6167" constant="no"/>
<attribute name="PACKAGE" value="SMD" constant="no"/>
<attribute name="SUPPLIER" value="COILTRONICS" constant="no"/>
<attribute name="TOLERANCE" value="±20%" constant="no"/>
</technology>
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
</packages>
<symbols>
<symbol name="JST_2MM_MALE">
<wire x1="-2.54" y1="-2.54" x2="-2.54" y2="1.778" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.778" x2="-2.54" y2="3.302" width="0.254" layer="94"/>
<wire x1="-2.54" y1="3.302" x2="-2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.08" y1="5.08" x2="5.08" y2="3.302" width="0.254" layer="94"/>
<wire x1="5.08" y1="3.302" x2="5.08" y2="1.778" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.778" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="5.08" y1="-2.54" x2="4.064" y2="-2.54" width="0.254" layer="94"/>
<wire x1="4.064" y1="-2.54" x2="4.064" y2="0" width="0.254" layer="94"/>
<wire x1="4.064" y1="0" x2="-1.524" y2="0" width="0.254" layer="94"/>
<wire x1="-1.524" y1="0" x2="-1.524" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-2.54" x2="-1.524" y2="-2.54" width="0.254" layer="94"/>
<pin name="-" x="0" y="-5.08" visible="off" length="middle" rot="R90"/>
<pin name="+" x="2.54" y="-5.08" visible="off" length="middle" rot="R90"/>
<pin name="PAD2" x="5.08" y="2.54" visible="off" length="point" rot="R90"/>
<pin name="PAD1" x="-2.54" y="2.54" visible="off" length="point" rot="R90"/>
<wire x1="-2.54" y1="1.778" x2="-1.778" y2="1.778" width="0.254" layer="94"/>
<wire x1="-1.778" y1="1.778" x2="-1.778" y2="3.302" width="0.254" layer="94"/>
<wire x1="-1.778" y1="3.302" x2="-2.54" y2="3.302" width="0.254" layer="94"/>
<wire x1="5.08" y1="1.778" x2="4.318" y2="1.778" width="0.254" layer="94"/>
<wire x1="4.318" y1="1.778" x2="4.318" y2="3.302" width="0.254" layer="94"/>
<wire x1="4.318" y1="3.302" x2="5.08" y2="3.302" width="0.254" layer="94"/>
<wire x1="2.032" y1="1.016" x2="3.048" y2="1.016" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.508" x2="2.54" y2="1.524" width="0.254" layer="94"/>
<wire x1="0" y1="0.508" x2="0" y2="1.524" width="0.254" layer="94"/>
<text x="-2.54" y="5.842" size="1.778" layer="95">&gt;NAME</text>
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
</symbols>
<devicesets>
<deviceset name="JST_2MM_MALE" prefix="J" uservalue="yes">
<description>&lt;h3&gt;JST 2MM MALE RA CONNECTOR&lt;/h3&gt;
Two pin, compact surface mount connector. Commonly used as a battery input connection point. We really like the solid locking feeling and high current rating on these small connectors. We use these all the time as battery connectors. Mates to single-cell LiPo batteries.

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;Here is the connector we sell at SparkFun:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/8612"&gt;JST Right Angle Connector - White&lt;/a&gt; (PRT-08612)&lt;/li&gt;
&lt;li&gt;&lt;a href="http://www.sparkfun.com/datasheets/Prototyping/Connectors/JST-Horizontal.pdf"&gt;Datasheet&lt;/a&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;It was used on these SparkFun products:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/11214"&gt;SparkFun MOSFET Power Controller&lt;/a&gt; (PRT-11214)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/13777"&gt;SparkFun Battery Babysitter - LiPo Battery Manager&lt;/a&gt; (PRT-13777)&lt;/li&gt;
&lt;li&gt;And many, many others that required a lipo battery connection.&lt;/li&gt;
&lt;/ul&gt;</description>
<gates>
<gate name="G$1" symbol="JST_2MM_MALE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="JST-2-SMD">
<connects>
<connect gate="G$1" pin="+" pad="2"/>
<connect gate="G$1" pin="-" pad="1"/>
<connect gate="G$1" pin="PAD1" pad="NC1"/>
<connect gate="G$1" pin="PAD2" pad="NC2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-11443"/>
<attribute name="SF_ID" value="PRT-08612" constant="no"/>
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
<part name="CBST" library="AVX_By_element14_Batch_1" deviceset="08053C104KAT2A" device="" value="100nF"/>
<part name="CCOMP" library="AVX_By_element14_Batch_1" deviceset="0603YC681JAT2A" device="" value="680PF"/>
<part name="CCOMP2" library="Kemet_By_element14_Batch_1" deviceset="C0402C360J5GACTU" device="" value="36pF"/>
<part name="CIN" library="Kemet_By_element14_Batch_1" deviceset="C1206F474K5RACAUTO" device="" value="0.47uF"/>
<part name="CIN2" library="Murata_By_element14_Batch_1" deviceset="GRM155R71C104KA88D" device="" value="100nF"/>
<part name="COUT" library="Kemet_By_element14_Batch_1" deviceset="C1206F474K5RACAUTO" device="" value="0.47uF"/>
<part name="C22" library="Kemet_By_element14_Batch_1" deviceset="C0402C822K5RACTU" device="" value="8.2nF"/>
<part name="CVCC" library="Murata_By_element14_Batch_1" deviceset="GRM188R60J105KA01D" device="" value="1uF"/>
<part name="RCOMP" library="Vishay_By_element14_Batch_1" deviceset="CRCW040238K3FKED" device="" value="38.3K Ohms"/>
<part name="RFBB" library="Vishay_By_element14_Batch_1" deviceset="CRCW0402118KFKED" device="" value="118K Ohms"/>
<part name="RFBT" library="Yageo_By_element14_Batch_1" deviceset="RC0603FR-07470KL" device="" value="470K Ohms"/>
<part name="RLIM" library="Vishay_By_element14_Batch_1" deviceset="CRCW0402102KFKED" device="" value="102K Ohms"/>
<part name="RT" library="Vishay_By_element14_Batch_1" deviceset="CRCW0402261KFKED" device="" value="261K Ohms"/>
<part name="L1" library="Coiltronics_By_element14_Batch_1" deviceset="DR73-1R0-R" device=""/>
<part name="J1" library="SparkFun-Connectors" deviceset="JST_2MM_MALE" device=""/>
<part name="J2" library="SparkFun-Connectors" deviceset="CONN_02" device="PTH3"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="GND1" gate="1" x="114.3" y="-30.48"/>
<instance part="U1" gate="G$1" x="106.68" y="27.94"/>
<instance part="CBST" gate="A" x="104.14" y="50.8" rot="R90"/>
<instance part="CCOMP" gate="A" x="198.12" y="-15.24" smashed="yes" rot="R90">
<attribute name="VALUE" x="205.9432" y="-17.145" size="2.0828" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="195.3514" y="-16.1544" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="CCOMP2" gate="A" x="180.34" y="2.54" smashed="yes" rot="R90">
<attribute name="VALUE" x="187.1472" y="1.9558" size="2.0828" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="177.5714" y="1.6256" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="CIN" gate="A" x="15.24" y="33.02" smashed="yes" rot="R90">
<attribute name="VALUE" x="20.0152" y="31.9278" size="2.1209" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="12.4714" y="32.1056" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="CIN2" gate="A" x="33.02" y="33.02" smashed="yes" rot="R90">
<attribute name="VALUE" x="37.7952" y="31.4198" size="2.1209" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="30.2514" y="32.1056" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="COUT" gate="A" x="238.76" y="2.54" smashed="yes" rot="R90">
<attribute name="VALUE" x="243.7892" y="1.9558" size="2.1844" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="235.9914" y="1.6256" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="C22" gate="A" x="144.78" y="2.54" smashed="yes" rot="R90">
<attribute name="VALUE" x="150.0632" y="0.4318" size="2.1209" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="142.0114" y="1.6256" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="CVCC" gate="A" x="50.8" y="12.7" smashed="yes" rot="R180">
<attribute name="VALUE" x="51.8922" y="17.9832" size="2.1209" layer="96" ratio="10" rot="SR180"/>
<attribute name="NAME" x="51.7144" y="9.9314" size="2.0828" layer="95" ratio="10" rot="SR180"/>
</instance>
<instance part="RCOMP" gate="A" x="198.12" y="0" smashed="yes" rot="R90">
<attribute name="VALUE" x="203.5556" y="0.1778" size="2.1209" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="195.3514" y="0.9906" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="RFBB" gate="A" x="220.98" y="-7.62" smashed="yes" rot="R270">
<attribute name="VALUE" x="215.7984" y="-8.3058" size="2.1844" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="223.7486" y="-8.6106" size="2.0828" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="RFBT" gate="A" x="220.98" y="15.24" smashed="yes" rot="R90">
<attribute name="VALUE" x="226.1616" y="12.8778" size="2.1844" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="218.2114" y="16.2306" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="RLIM" gate="A" x="162.56" y="0" smashed="yes" rot="R90">
<attribute name="VALUE" x="166.7256" y="-0.8382" size="2.1209" layer="96" ratio="10" rot="SR90"/>
<attribute name="NAME" x="159.7914" y="0.9906" size="2.0828" layer="95" ratio="10" rot="SR90"/>
</instance>
<instance part="RT" gate="A" x="76.2" y="58.42" smashed="yes" rot="R270">
<attribute name="VALUE" x="70.2564" y="58.4962" size="2.1844" layer="96" ratio="10" rot="SR270"/>
<attribute name="NAME" x="78.9686" y="57.4294" size="2.0828" layer="95" ratio="10" rot="SR270"/>
</instance>
<instance part="L1" gate="A" x="71.12" y="76.2"/>
<instance part="J1" gate="G$1" x="-2.54" y="27.94" rot="R90"/>
<instance part="J2" gate="G$1" x="269.24" y="7.62" rot="R180"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="GND1" gate="1" pin="GND"/>
<wire x1="114.3" y1="-27.94" x2="88.9" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="88.9" y1="-27.94" x2="58.42" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-27.94" x2="58.42" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="PGND"/>
<wire x1="58.42" y1="10.16" x2="88.9" y2="10.16" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="AGND"/>
<wire x1="88.9" y1="7.62" x2="88.9" y2="-27.94" width="0.1524" layer="91"/>
<junction x="88.9" y="-27.94"/>
<pinref part="J1" gate="G$1" pin="-"/>
<wire x1="2.54" y1="27.94" x2="5.08" y2="27.94" width="0.1524" layer="91"/>
<wire x1="5.08" y1="27.94" x2="5.08" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="5.08" y1="-27.94" x2="15.24" y2="-27.94" width="0.1524" layer="91"/>
<junction x="58.42" y="-27.94"/>
<pinref part="CIN" gate="A" pin="C1"/>
<wire x1="15.24" y1="-27.94" x2="33.02" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="33.02" y1="-27.94" x2="40.64" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="40.64" y1="-27.94" x2="58.42" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="15.24" y1="33.02" x2="15.24" y2="-27.94" width="0.1524" layer="91"/>
<junction x="15.24" y="-27.94"/>
<pinref part="CIN2" gate="A" pin="C1"/>
<wire x1="33.02" y1="33.02" x2="33.02" y2="-27.94" width="0.1524" layer="91"/>
<junction x="33.02" y="-27.94"/>
<pinref part="CVCC" gate="A" pin="C2"/>
<wire x1="43.18" y1="12.7" x2="40.64" y2="12.7" width="0.1524" layer="91"/>
<wire x1="40.64" y1="12.7" x2="40.64" y2="-27.94" width="0.1524" layer="91"/>
<junction x="40.64" y="-27.94"/>
<pinref part="U1" gate="G$1" pin="NC@11"/>
<pinref part="U1" gate="G$1" pin="NC@12"/>
<wire x1="124.46" y1="10.16" x2="124.46" y2="7.62" width="0.1524" layer="91"/>
<wire x1="124.46" y1="7.62" x2="124.46" y2="-27.94" width="0.1524" layer="91"/>
<junction x="124.46" y="7.62"/>
<wire x1="124.46" y1="-27.94" x2="114.3" y2="-27.94" width="0.1524" layer="91"/>
<junction x="114.3" y="-27.94"/>
<pinref part="C22" gate="A" pin="C1"/>
<wire x1="144.78" y1="2.54" x2="144.78" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="144.78" y1="-27.94" x2="124.46" y2="-27.94" width="0.1524" layer="91"/>
<junction x="124.46" y="-27.94"/>
<pinref part="RLIM" gate="A" pin="2"/>
<wire x1="144.78" y1="-27.94" x2="162.56" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="162.56" y1="-27.94" x2="162.56" y2="0" width="0.1524" layer="91"/>
<junction x="144.78" y="-27.94"/>
<pinref part="CCOMP2" gate="A" pin="C1"/>
<wire x1="162.56" y1="-27.94" x2="180.34" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="180.34" y1="-27.94" x2="180.34" y2="2.54" width="0.1524" layer="91"/>
<junction x="162.56" y="-27.94"/>
<pinref part="CCOMP" gate="A" pin="C1"/>
<wire x1="180.34" y1="-27.94" x2="198.12" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="198.12" y1="-27.94" x2="198.12" y2="-15.24" width="0.1524" layer="91"/>
<junction x="180.34" y="-27.94"/>
<pinref part="RFBB" gate="A" pin="1"/>
<wire x1="198.12" y1="-27.94" x2="220.98" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="220.98" y1="-27.94" x2="220.98" y2="-20.32" width="0.1524" layer="91"/>
<junction x="198.12" y="-27.94"/>
<pinref part="COUT" gate="A" pin="C1"/>
<wire x1="220.98" y1="-27.94" x2="238.76" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="238.76" y1="-27.94" x2="238.76" y2="2.54" width="0.1524" layer="91"/>
<junction x="220.98" y="-27.94"/>
<pinref part="J2" gate="G$1" pin="2"/>
<wire x1="238.76" y1="-27.94" x2="261.62" y2="-27.94" width="0.1524" layer="91"/>
<wire x1="261.62" y1="-27.94" x2="261.62" y2="5.08" width="0.1524" layer="91"/>
<junction x="238.76" y="-27.94"/>
</segment>
</net>
<net name="SW" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SW@7"/>
<pinref part="U1" gate="G$1" pin="SW@6"/>
<wire x1="88.9" y1="25.4" x2="88.9" y2="27.94" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="SW@5"/>
<wire x1="88.9" y1="27.94" x2="88.9" y2="30.48" width="0.1524" layer="91"/>
<junction x="88.9" y="27.94"/>
<pinref part="U1" gate="G$1" pin="SW@4"/>
<wire x1="88.9" y1="30.48" x2="88.9" y2="33.02" width="0.1524" layer="91"/>
<junction x="88.9" y="30.48"/>
<junction x="88.9" y="33.02"/>
<wire x1="88.9" y1="33.02" x2="88.9" y2="63.5" width="0.1524" layer="91"/>
<pinref part="CBST" gate="A" pin="C2"/>
<wire x1="104.14" y1="58.42" x2="104.14" y2="63.5" width="0.1524" layer="91"/>
<pinref part="L1" gate="A" pin="1"/>
<wire x1="104.14" y1="63.5" x2="104.14" y2="76.2" width="0.1524" layer="91"/>
<wire x1="104.14" y1="76.2" x2="86.36" y2="76.2" width="0.1524" layer="91"/>
<wire x1="88.9" y1="63.5" x2="104.14" y2="63.5" width="0.1524" layer="91"/>
<junction x="104.14" y="63.5"/>
<pinref part="RT" gate="A" pin="2"/>
<wire x1="88.9" y1="63.5" x2="76.2" y2="63.5" width="0.1524" layer="91"/>
<wire x1="76.2" y1="63.5" x2="76.2" y2="58.42" width="0.1524" layer="91"/>
<junction x="88.9" y="63.5"/>
</segment>
</net>
<net name="BOOT" class="0">
<segment>
<pinref part="CBST" gate="A" pin="C1"/>
<pinref part="U1" gate="G$1" pin="BOOT"/>
<wire x1="104.14" y1="45.72" x2="104.14" y2="50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VIN" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VIN"/>
<wire x1="88.9" y1="17.78" x2="63.5" y2="17.78" width="0.1524" layer="91"/>
<wire x1="63.5" y1="17.78" x2="63.5" y2="76.2" width="0.1524" layer="91"/>
<pinref part="L1" gate="A" pin="2"/>
<wire x1="63.5" y1="76.2" x2="71.12" y2="76.2" width="0.1524" layer="91"/>
<pinref part="J1" gate="G$1" pin="+"/>
<wire x1="2.54" y1="30.48" x2="5.08" y2="30.48" width="0.1524" layer="91"/>
<wire x1="5.08" y1="30.48" x2="5.08" y2="76.2" width="0.1524" layer="91"/>
<wire x1="5.08" y1="76.2" x2="15.24" y2="76.2" width="0.1524" layer="91"/>
<junction x="63.5" y="76.2"/>
<pinref part="CIN" gate="A" pin="C2"/>
<wire x1="15.24" y1="76.2" x2="33.02" y2="76.2" width="0.1524" layer="91"/>
<wire x1="33.02" y1="76.2" x2="63.5" y2="76.2" width="0.1524" layer="91"/>
<wire x1="15.24" y1="40.64" x2="15.24" y2="76.2" width="0.1524" layer="91"/>
<junction x="15.24" y="76.2"/>
<pinref part="CIN2" gate="A" pin="C2"/>
<wire x1="33.02" y1="40.64" x2="33.02" y2="76.2" width="0.1524" layer="91"/>
<junction x="33.02" y="76.2"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="CVCC" gate="A" pin="C1"/>
<pinref part="U1" gate="G$1" pin="EN"/>
<wire x1="50.8" y1="12.7" x2="88.9" y2="12.7" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="VCC"/>
<wire x1="88.9" y1="12.7" x2="88.9" y2="15.24" width="0.1524" layer="91"/>
<junction x="88.9" y="12.7"/>
</segment>
</net>
<net name="COMP" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="COMP"/>
<pinref part="CCOMP2" gate="A" pin="C2"/>
<wire x1="124.46" y1="20.32" x2="180.34" y2="20.32" width="0.1524" layer="91"/>
<wire x1="180.34" y1="20.32" x2="180.34" y2="10.16" width="0.1524" layer="91"/>
<pinref part="RCOMP" gate="A" pin="1"/>
<wire x1="180.34" y1="20.32" x2="198.12" y2="20.32" width="0.1524" layer="91"/>
<wire x1="198.12" y1="20.32" x2="198.12" y2="12.7" width="0.1524" layer="91"/>
<junction x="180.34" y="20.32"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="RCOMP" gate="A" pin="2"/>
<pinref part="CCOMP" gate="A" pin="C2"/>
<wire x1="198.12" y1="0" x2="198.12" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ILIM" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="ILIM"/>
<pinref part="RLIM" gate="A" pin="1"/>
<wire x1="124.46" y1="17.78" x2="162.56" y2="17.78" width="0.1524" layer="91"/>
<wire x1="162.56" y1="17.78" x2="162.56" y2="12.7" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SS" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="SS"/>
<pinref part="C22" gate="A" pin="C2"/>
<wire x1="124.46" y1="15.24" x2="144.78" y2="15.24" width="0.1524" layer="91"/>
<wire x1="144.78" y1="15.24" x2="144.78" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="VOUT" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="VOUT@16"/>
<pinref part="U1" gate="G$1" pin="VOUT@15"/>
<wire x1="124.46" y1="27.94" x2="124.46" y2="30.48" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="VOUT@14"/>
<wire x1="124.46" y1="30.48" x2="124.46" y2="33.02" width="0.1524" layer="91"/>
<junction x="124.46" y="30.48"/>
<junction x="124.46" y="33.02"/>
<pinref part="RFBT" gate="A" pin="R1"/>
<wire x1="124.46" y1="33.02" x2="220.98" y2="33.02" width="0.1524" layer="91"/>
<wire x1="220.98" y1="33.02" x2="220.98" y2="27.94" width="0.1524" layer="91"/>
<pinref part="COUT" gate="A" pin="C2"/>
<wire x1="220.98" y1="33.02" x2="238.76" y2="33.02" width="0.1524" layer="91"/>
<wire x1="238.76" y1="33.02" x2="238.76" y2="10.16" width="0.1524" layer="91"/>
<junction x="220.98" y="33.02"/>
<pinref part="J2" gate="G$1" pin="1"/>
<wire x1="261.62" y1="7.62" x2="261.62" y2="33.02" width="0.1524" layer="91"/>
<wire x1="261.62" y1="33.02" x2="238.76" y2="33.02" width="0.1524" layer="91"/>
<junction x="238.76" y="33.02"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="U1" gate="G$1" pin="FB"/>
<pinref part="RFBT" gate="A" pin="R2"/>
<wire x1="124.46" y1="22.86" x2="210.82" y2="22.86" width="0.1524" layer="91"/>
<wire x1="210.82" y1="22.86" x2="210.82" y2="2.54" width="0.1524" layer="91"/>
<wire x1="210.82" y1="2.54" x2="220.98" y2="2.54" width="0.1524" layer="91"/>
<wire x1="220.98" y1="2.54" x2="220.98" y2="15.24" width="0.1524" layer="91"/>
<junction x="220.98" y="2.54"/>
<pinref part="RFBB" gate="A" pin="2"/>
<wire x1="220.98" y1="2.54" x2="220.98" y2="-7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="RT" gate="A" pin="1"/>
<wire x1="76.2" y1="45.72" x2="76.2" y2="20.32" width="0.1524" layer="91"/>
<pinref part="U1" gate="G$1" pin="FSW"/>
<wire x1="76.2" y1="20.32" x2="88.9" y2="20.32" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>

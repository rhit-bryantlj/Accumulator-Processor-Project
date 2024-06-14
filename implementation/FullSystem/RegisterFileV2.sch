<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3a" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Write" />
        <signal name="WriteAddr(3:0)" />
        <signal name="CLK" />
        <signal name="DataIn(15:0)" />
        <signal name="Reset" />
        <signal name="A(15:0)" />
        <signal name="G(15:0)" />
        <signal name="H(15:0)" />
        <signal name="I(15:0)" />
        <signal name="J(15:0)" />
        <signal name="ReadAddrA(3:0)" />
        <signal name="ReadDataA(15:0)" />
        <signal name="F(15:0)" />
        <signal name="E(15:0)" />
        <signal name="D(15:0)" />
        <signal name="C(15:0)" />
        <signal name="B(15:0)" />
        <signal name="XLXN_161" />
        <signal name="XLXN_162" />
        <signal name="XLXN_163" />
        <signal name="XLXN_164" />
        <signal name="XLXN_165" />
        <signal name="XLXN_166" />
        <signal name="XLXN_167" />
        <signal name="XLXN_168" />
        <signal name="XLXN_169" />
        <port polarity="Input" name="Write" />
        <port polarity="Input" name="WriteAddr(3:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="DataIn(15:0)" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="ReadAddrA(3:0)" />
        <port polarity="Output" name="ReadDataA(15:0)" />
        <blockdef name="RegisterFileV2Decoder">
            <timestamp>2021-5-7T15:25:15</timestamp>
            <rect width="256" x="64" y="-640" height="640" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="RegisterFileV2Mux">
            <timestamp>2021-5-7T15:20:56</timestamp>
            <rect width="256" x="64" y="-704" height="704" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-684" height="24" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
        </blockdef>
        <blockdef name="fd16re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="RegisterFileV2Decoder" name="XLXI_1">
            <blockpin signalname="WriteAddr(3:0)" name="A(3:0)" />
            <blockpin signalname="Write" name="enable" />
            <blockpin signalname="XLXN_168" name="O8" />
            <blockpin signalname="XLXN_169" name="O9" />
            <blockpin name="O0" />
            <blockpin signalname="XLXN_162" name="O2" />
            <blockpin signalname="XLXN_161" name="O1" />
            <blockpin signalname="XLXN_163" name="O3" />
            <blockpin signalname="XLXN_164" name="O4" />
            <blockpin signalname="XLXN_165" name="O5" />
            <blockpin signalname="XLXN_167" name="O7" />
            <blockpin signalname="XLXN_166" name="O6" />
        </block>
        <block symbolname="RegisterFileV2Mux" name="XLXI_2">
            <blockpin signalname="A(15:0)" name="A(15:0)" />
            <blockpin signalname="B(15:0)" name="B(15:0)" />
            <blockpin signalname="C(15:0)" name="C(15:0)" />
            <blockpin signalname="D(15:0)" name="D(15:0)" />
            <blockpin signalname="E(15:0)" name="E(15:0)" />
            <blockpin signalname="F(15:0)" name="F(15:0)" />
            <blockpin signalname="G(15:0)" name="G(15:0)" />
            <blockpin signalname="H(15:0)" name="H(15:0)" />
            <blockpin signalname="I(15:0)" name="I(15:0)" />
            <blockpin signalname="J(15:0)" name="J(15:0)" />
            <blockpin signalname="ReadAddrA(3:0)" name="S(3:0)" />
            <blockpin signalname="ReadDataA(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_4">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_164" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="Reset" name="R" />
            <blockpin signalname="E(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="constant" name="XLXI_14">
            <attr value="0000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="A(15:0)" name="O" />
        </block>
        <block symbolname="fd16re" name="XLXI_16">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_165" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="Reset" name="R" />
            <blockpin signalname="F(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_17">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_166" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="Reset" name="R" />
            <blockpin signalname="G(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_22">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_161" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="Reset" name="R" />
            <blockpin signalname="B(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_23">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_162" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="Reset" name="R" />
            <blockpin signalname="C(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_24">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_163" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="Reset" name="R" />
            <blockpin signalname="D(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_18">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_167" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="Reset" name="R" />
            <blockpin signalname="H(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_25">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_168" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="Reset" name="R" />
            <blockpin signalname="I(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_26">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_169" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="Reset" name="R" />
            <blockpin signalname="J(15:0)" name="Q(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2544" y="912" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1392" y="592" name="XLXI_4" orien="R0" />
        <instance x="304" y="1088" name="XLXI_1" orien="R0">
        </instance>
        <branch name="Write">
            <wire x2="304" y1="1056" y2="1056" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="1056" name="Write" orien="R180" />
        <branch name="WriteAddr(3:0)">
            <wire x2="304" y1="480" y2="480" x1="272" />
        </branch>
        <iomarker fontsize="28" x="272" y="480" name="WriteAddr(3:0)" orien="R180" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="464" type="branch" />
            <wire x2="1392" y1="464" y2="464" x1="1344" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="560" type="branch" />
            <wire x2="1392" y1="560" y2="560" x1="1344" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="96" y="1152" type="branch" />
            <wire x2="208" y1="1152" y2="1152" x1="96" />
            <wire x2="208" y1="1152" y2="1232" x1="208" />
        </branch>
        <instance x="992" y="96" name="XLXI_14" orien="R0">
        </instance>
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="128" type="branch" />
            <wire x2="1216" y1="128" y2="128" x1="1136" />
        </branch>
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="240" type="branch" />
            <wire x2="2544" y1="240" y2="240" x1="2496" />
        </branch>
        <branch name="B(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="304" type="branch" />
            <wire x2="2544" y1="304" y2="304" x1="2496" />
        </branch>
        <branch name="C(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="368" type="branch" />
            <wire x2="2544" y1="368" y2="368" x1="2496" />
        </branch>
        <branch name="D(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="432" type="branch" />
            <wire x2="2544" y1="432" y2="432" x1="2496" />
        </branch>
        <branch name="E(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="496" type="branch" />
            <wire x2="2544" y1="496" y2="496" x1="2496" />
        </branch>
        <branch name="F(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="560" type="branch" />
            <wire x2="2544" y1="560" y2="560" x1="2496" />
        </branch>
        <branch name="G(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="624" type="branch" />
            <wire x2="2544" y1="624" y2="624" x1="2496" />
        </branch>
        <branch name="H(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="688" type="branch" />
            <wire x2="2544" y1="688" y2="688" x1="2496" />
        </branch>
        <branch name="I(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="752" type="branch" />
            <wire x2="2544" y1="752" y2="752" x1="2496" />
        </branch>
        <branch name="J(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2496" y="816" type="branch" />
            <wire x2="2544" y1="816" y2="816" x1="2496" />
        </branch>
        <branch name="ReadAddrA(3:0)">
            <wire x2="2544" y1="880" y2="880" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2496" y="880" name="ReadAddrA(3:0)" orien="R180" />
        <branch name="ReadDataA(15:0)">
            <wire x2="2960" y1="240" y2="240" x1="2928" />
        </branch>
        <iomarker fontsize="28" x="2960" y="240" name="ReadDataA(15:0)" orien="R0" />
        <instance x="1392" y="1056" name="XLXI_16" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="928" type="branch" />
            <wire x2="1392" y1="928" y2="928" x1="1344" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1024" type="branch" />
            <wire x2="1392" y1="1024" y2="1024" x1="1344" />
        </branch>
        <instance x="1408" y="1440" name="XLXI_17" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1312" type="branch" />
            <wire x2="1408" y1="1312" y2="1312" x1="1360" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1360" y="1408" type="branch" />
            <wire x2="1408" y1="1408" y2="1408" x1="1360" />
        </branch>
        <instance x="512" y="1696" name="XLXI_22" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1568" type="branch" />
            <wire x2="512" y1="1568" y2="1568" x1="464" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="464" y="1664" type="branch" />
            <wire x2="512" y1="1664" y2="1664" x1="464" />
        </branch>
        <branch name="B(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1440" type="branch" />
            <wire x2="928" y1="1440" y2="1440" x1="896" />
        </branch>
        <instance x="528" y="2080" name="XLXI_23" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="1952" type="branch" />
            <wire x2="528" y1="1952" y2="1952" x1="480" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="2048" type="branch" />
            <wire x2="528" y1="2048" y2="2048" x1="480" />
        </branch>
        <instance x="528" y="2544" name="XLXI_24" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="2416" type="branch" />
            <wire x2="528" y1="2416" y2="2416" x1="480" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="480" y="2512" type="branch" />
            <wire x2="528" y1="2512" y2="2512" x1="480" />
        </branch>
        <instance x="1392" y="1824" name="XLXI_18" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1696" type="branch" />
            <wire x2="1392" y1="1696" y2="1696" x1="1344" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="1792" type="branch" />
            <wire x2="1392" y1="1792" y2="1792" x1="1344" />
        </branch>
        <instance x="1424" y="2176" name="XLXI_25" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="2048" type="branch" />
            <wire x2="1424" y1="2048" y2="2048" x1="1376" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="2144" type="branch" />
            <wire x2="1424" y1="2144" y2="2144" x1="1376" />
        </branch>
        <instance x="1360" y="2576" name="XLXI_26" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="2448" type="branch" />
            <wire x2="1360" y1="2448" y2="2448" x1="1312" />
        </branch>
        <branch name="Reset">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="2544" type="branch" />
            <wire x2="1360" y1="2544" y2="2544" x1="1312" />
        </branch>
        <iomarker fontsize="28" x="192" y="48" name="CLK" orien="R180" />
        <branch name="CLK">
            <wire x2="400" y1="48" y2="48" x1="192" />
        </branch>
        <branch name="C(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1824" type="branch" />
            <wire x2="960" y1="1824" y2="1824" x1="912" />
        </branch>
        <branch name="D(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="2288" type="branch" />
            <wire x2="976" y1="2288" y2="2288" x1="912" />
        </branch>
        <branch name="J(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="2320" type="branch" />
            <wire x2="1856" y1="2320" y2="2320" x1="1744" />
        </branch>
        <branch name="I(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1920" type="branch" />
            <wire x2="1888" y1="1920" y2="1920" x1="1808" />
        </branch>
        <branch name="H(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1568" type="branch" />
            <wire x2="1872" y1="1568" y2="1568" x1="1776" />
        </branch>
        <branch name="G(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1184" type="branch" />
            <wire x2="1888" y1="1184" y2="1184" x1="1792" />
        </branch>
        <branch name="F(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="800" type="branch" />
            <wire x2="1888" y1="800" y2="800" x1="1776" />
        </branch>
        <branch name="E(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="336" type="branch" />
            <wire x2="1888" y1="336" y2="336" x1="1776" />
        </branch>
        <branch name="DataIn(15:0)">
            <wire x2="1104" y1="320" y2="320" x1="288" />
            <wire x2="1104" y1="320" y2="336" x1="1104" />
            <wire x2="1104" y1="336" y2="800" x1="1104" />
            <wire x2="1104" y1="800" y2="1184" x1="1104" />
            <wire x2="1104" y1="1184" y2="1312" x1="1104" />
            <wire x2="1104" y1="1312" y2="1568" x1="1104" />
            <wire x2="1104" y1="1568" y2="1680" x1="1104" />
            <wire x2="1104" y1="1680" y2="1920" x1="1104" />
            <wire x2="1104" y1="1920" y2="2128" x1="1104" />
            <wire x2="1104" y1="2128" y2="2320" x1="1104" />
            <wire x2="1312" y1="2320" y2="2320" x1="1104" />
            <wire x2="1360" y1="2320" y2="2320" x1="1312" />
            <wire x2="1376" y1="1920" y2="1920" x1="1104" />
            <wire x2="1424" y1="1920" y2="1920" x1="1376" />
            <wire x2="1344" y1="1568" y2="1568" x1="1104" />
            <wire x2="1392" y1="1568" y2="1568" x1="1344" />
            <wire x2="1360" y1="1184" y2="1184" x1="1104" />
            <wire x2="1408" y1="1184" y2="1184" x1="1360" />
            <wire x2="1344" y1="800" y2="800" x1="1104" />
            <wire x2="1392" y1="800" y2="800" x1="1344" />
            <wire x2="1344" y1="336" y2="336" x1="1104" />
            <wire x2="1392" y1="336" y2="336" x1="1344" />
            <wire x2="1104" y1="1312" y2="1312" x1="464" />
            <wire x2="464" y1="1312" y2="1440" x1="464" />
            <wire x2="512" y1="1440" y2="1440" x1="464" />
            <wire x2="1104" y1="1680" y2="1680" x1="480" />
            <wire x2="480" y1="1680" y2="1824" x1="480" />
            <wire x2="528" y1="1824" y2="1824" x1="480" />
            <wire x2="1104" y1="2128" y2="2128" x1="480" />
            <wire x2="480" y1="2128" y2="2288" x1="480" />
            <wire x2="528" y1="2288" y2="2288" x1="480" />
        </branch>
        <iomarker fontsize="28" x="288" y="320" name="DataIn(15:0)" orien="R180" />
        <branch name="XLXN_161">
            <wire x2="512" y1="1504" y2="1504" x1="496" />
            <wire x2="496" y1="1504" y2="1712" x1="496" />
            <wire x2="960" y1="1712" y2="1712" x1="496" />
            <wire x2="960" y1="736" y2="736" x1="688" />
            <wire x2="960" y1="736" y2="1712" x1="960" />
        </branch>
        <branch name="XLXN_162">
            <wire x2="528" y1="1888" y2="1888" x1="512" />
            <wire x2="512" y1="1888" y2="2112" x1="512" />
            <wire x2="1040" y1="2112" y2="2112" x1="512" />
            <wire x2="1040" y1="672" y2="672" x1="688" />
            <wire x2="1040" y1="672" y2="2112" x1="1040" />
        </branch>
        <branch name="XLXN_163">
            <wire x2="528" y1="2352" y2="2352" x1="448" />
            <wire x2="448" y1="2352" y2="2592" x1="448" />
            <wire x2="992" y1="2592" y2="2592" x1="448" />
            <wire x2="992" y1="800" y2="800" x1="688" />
            <wire x2="992" y1="800" y2="2592" x1="992" />
        </branch>
        <branch name="XLXN_164">
            <wire x2="1056" y1="864" y2="864" x1="688" />
            <wire x2="1056" y1="400" y2="864" x1="1056" />
            <wire x2="1392" y1="400" y2="400" x1="1056" />
        </branch>
        <branch name="XLXN_165">
            <wire x2="1072" y1="928" y2="928" x1="688" />
            <wire x2="1072" y1="864" y2="928" x1="1072" />
            <wire x2="1392" y1="864" y2="864" x1="1072" />
        </branch>
        <branch name="XLXN_166">
            <wire x2="1024" y1="1056" y2="1056" x1="688" />
            <wire x2="1024" y1="1056" y2="1248" x1="1024" />
            <wire x2="1408" y1="1248" y2="1248" x1="1024" />
        </branch>
        <branch name="XLXN_167">
            <wire x2="1008" y1="992" y2="992" x1="688" />
            <wire x2="1008" y1="992" y2="1632" x1="1008" />
            <wire x2="1392" y1="1632" y2="1632" x1="1008" />
        </branch>
        <branch name="XLXN_168">
            <wire x2="1088" y1="480" y2="480" x1="688" />
            <wire x2="1088" y1="480" y2="1984" x1="1088" />
            <wire x2="1424" y1="1984" y2="1984" x1="1088" />
        </branch>
        <branch name="XLXN_169">
            <wire x2="944" y1="544" y2="544" x1="688" />
            <wire x2="944" y1="544" y2="2384" x1="944" />
            <wire x2="1360" y1="2384" y2="2384" x1="944" />
        </branch>
        <iomarker fontsize="28" x="208" y="1232" name="Reset" orien="R90" />
    </sheet>
</drawing>
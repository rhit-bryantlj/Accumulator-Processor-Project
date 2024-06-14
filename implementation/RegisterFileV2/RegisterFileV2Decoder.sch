<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(3:0)" />
        <signal name="enable" />
        <signal name="A(1)" />
        <signal name="nA1" />
        <signal name="A(2)" />
        <signal name="nA2" />
        <signal name="A(3)" />
        <signal name="nA3" />
        <signal name="nA0" />
        <signal name="A(0)" />
        <signal name="O8" />
        <signal name="O9" />
        <signal name="O0" />
        <signal name="O2" />
        <signal name="O1" />
        <signal name="O3" />
        <signal name="O4" />
        <signal name="O5" />
        <signal name="O7" />
        <signal name="O6" />
        <port polarity="Input" name="A(3:0)" />
        <port polarity="Input" name="enable" />
        <port polarity="Output" name="O8" />
        <port polarity="Output" name="O9" />
        <port polarity="Output" name="O0" />
        <port polarity="Output" name="O2" />
        <port polarity="Output" name="O1" />
        <port polarity="Output" name="O3" />
        <port polarity="Output" name="O4" />
        <port polarity="Output" name="O5" />
        <port polarity="Output" name="O7" />
        <port polarity="Output" name="O6" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and5">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <arc ex="144" ey="-240" sx="144" sy="-144" r="48" cx="144" cy="-192" />
            <line x2="64" y1="-144" y2="-144" x1="144" />
            <line x2="144" y1="-240" y2="-240" x1="64" />
            <line x2="64" y1="-64" y2="-320" x1="64" />
            <line x2="192" y1="-192" y2="-192" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="A(0)" name="I" />
            <blockpin signalname="nA0" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="A(1)" name="I" />
            <blockpin signalname="nA1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="A(2)" name="I" />
            <blockpin signalname="nA2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="A(3)" name="I" />
            <blockpin signalname="nA3" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_31">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA3" name="I1" />
            <blockpin signalname="A(2)" name="I2" />
            <blockpin signalname="A(1)" name="I3" />
            <blockpin signalname="nA0" name="I4" />
            <blockpin signalname="O6" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_32">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA3" name="I1" />
            <blockpin signalname="A(2)" name="I2" />
            <blockpin signalname="A(1)" name="I3" />
            <blockpin signalname="A(0)" name="I4" />
            <blockpin signalname="O7" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_33">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="A(3)" name="I1" />
            <blockpin signalname="nA2" name="I2" />
            <blockpin signalname="nA1" name="I3" />
            <blockpin signalname="nA0" name="I4" />
            <blockpin signalname="O8" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_34">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="A(3)" name="I1" />
            <blockpin signalname="nA2" name="I2" />
            <blockpin signalname="nA1" name="I3" />
            <blockpin signalname="A(0)" name="I4" />
            <blockpin signalname="O9" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_25">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA3" name="I1" />
            <blockpin signalname="nA2" name="I2" />
            <blockpin signalname="nA1" name="I3" />
            <blockpin signalname="nA0" name="I4" />
            <blockpin signalname="O0" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_26">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA3" name="I1" />
            <blockpin signalname="nA2" name="I2" />
            <blockpin signalname="nA1" name="I3" />
            <blockpin signalname="A(0)" name="I4" />
            <blockpin signalname="O1" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_27">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA3" name="I1" />
            <blockpin signalname="nA2" name="I2" />
            <blockpin signalname="A(1)" name="I3" />
            <blockpin signalname="nA0" name="I4" />
            <blockpin signalname="O2" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_28">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA3" name="I1" />
            <blockpin signalname="nA2" name="I2" />
            <blockpin signalname="A(1)" name="I3" />
            <blockpin signalname="A(0)" name="I4" />
            <blockpin signalname="O3" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_29">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA3" name="I1" />
            <blockpin signalname="A(2)" name="I2" />
            <blockpin signalname="nA1" name="I3" />
            <blockpin signalname="nA0" name="I4" />
            <blockpin signalname="O4" name="O" />
        </block>
        <block symbolname="and5" name="XLXI_30">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA3" name="I1" />
            <blockpin signalname="A(2)" name="I2" />
            <blockpin signalname="nA1" name="I3" />
            <blockpin signalname="A(0)" name="I4" />
            <blockpin signalname="O5" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A(3:0)">
            <wire x2="480" y1="240" y2="240" x1="240" />
        </branch>
        <branch name="enable">
            <wire x2="480" y1="400" y2="400" x1="240" />
        </branch>
        <instance x="960" y="272" name="XLXI_1" orien="R0" />
        <instance x="960" y="432" name="XLXI_6" orien="R0" />
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="400" type="branch" />
            <wire x2="960" y1="400" y2="400" x1="880" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1280" y="400" type="branch" />
            <wire x2="1280" y1="400" y2="400" x1="1184" />
        </branch>
        <instance x="960" y="592" name="XLXI_7" orien="R0" />
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="560" type="branch" />
            <wire x2="960" y1="560" y2="560" x1="880" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1280" y="560" type="branch" />
            <wire x2="1280" y1="560" y2="560" x1="1184" />
        </branch>
        <instance x="960" y="752" name="XLXI_16" orien="R0" />
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="720" type="branch" />
            <wire x2="960" y1="720" y2="720" x1="880" />
        </branch>
        <branch name="nA3">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1280" y="720" type="branch" />
            <wire x2="1280" y1="720" y2="720" x1="1184" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2592" y="576" type="branch" />
            <wire x2="2656" y1="576" y2="576" x1="2592" />
        </branch>
        <instance x="2656" y="640" name="XLXI_31" orien="R0" />
        <branch name="nA0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2608" y="320" type="branch" />
            <wire x2="2656" y1="320" y2="320" x1="2608" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2608" y="384" type="branch" />
            <wire x2="2656" y1="384" y2="384" x1="2608" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2608" y="448" type="branch" />
            <wire x2="2656" y1="448" y2="448" x1="2608" />
        </branch>
        <branch name="nA3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2608" y="512" type="branch" />
            <wire x2="2656" y1="512" y2="512" x1="2608" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2592" y="960" type="branch" />
            <wire x2="2656" y1="960" y2="960" x1="2592" />
        </branch>
        <instance x="2656" y="1024" name="XLXI_32" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2608" y="704" type="branch" />
            <wire x2="2656" y1="704" y2="704" x1="2608" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2608" y="768" type="branch" />
            <wire x2="2656" y1="768" y2="768" x1="2608" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2608" y="832" type="branch" />
            <wire x2="2656" y1="832" y2="832" x1="2608" />
        </branch>
        <branch name="nA3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2608" y="896" type="branch" />
            <wire x2="2656" y1="896" y2="896" x1="2608" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2576" y="1376" type="branch" />
            <wire x2="2640" y1="1376" y2="1376" x1="2576" />
        </branch>
        <instance x="2640" y="1440" name="XLXI_33" orien="R0" />
        <branch name="nA0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2592" y="1120" type="branch" />
            <wire x2="2640" y1="1120" y2="1120" x1="2592" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2592" y="1184" type="branch" />
            <wire x2="2640" y1="1184" y2="1184" x1="2592" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2592" y="1248" type="branch" />
            <wire x2="2640" y1="1248" y2="1248" x1="2592" />
        </branch>
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2592" y="1312" type="branch" />
            <wire x2="2640" y1="1312" y2="1312" x1="2592" />
        </branch>
        <branch name="O8">
            <wire x2="2944" y1="1248" y2="1248" x1="2896" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2576" y="1760" type="branch" />
            <wire x2="2640" y1="1760" y2="1760" x1="2576" />
        </branch>
        <instance x="2640" y="1824" name="XLXI_34" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2592" y="1504" type="branch" />
            <wire x2="2640" y1="1504" y2="1504" x1="2592" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2592" y="1568" type="branch" />
            <wire x2="2640" y1="1568" y2="1568" x1="2592" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2592" y="1632" type="branch" />
            <wire x2="2640" y1="1632" y2="1632" x1="2592" />
        </branch>
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2592" y="1696" type="branch" />
            <wire x2="2640" y1="1696" y2="1696" x1="2592" />
        </branch>
        <branch name="O9">
            <wire x2="2928" y1="1632" y2="1632" x1="2896" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1520" y="384" type="branch" />
            <wire x2="1584" y1="384" y2="384" x1="1520" />
        </branch>
        <instance x="1584" y="448" name="XLXI_25" orien="R0" />
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="192" type="branch" />
            <wire x2="1584" y1="192" y2="192" x1="1536" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="256" type="branch" />
            <wire x2="1584" y1="256" y2="256" x1="1536" />
        </branch>
        <branch name="nA3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="320" type="branch" />
            <wire x2="1584" y1="320" y2="320" x1="1536" />
        </branch>
        <branch name="O0">
            <wire x2="1888" y1="256" y2="256" x1="1840" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1520" y="752" type="branch" />
            <wire x2="1536" y1="752" y2="752" x1="1520" />
            <wire x2="1584" y1="752" y2="752" x1="1536" />
        </branch>
        <instance x="1584" y="816" name="XLXI_26" orien="R0" />
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="560" type="branch" />
            <wire x2="1584" y1="560" y2="560" x1="1536" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="624" type="branch" />
            <wire x2="1584" y1="624" y2="624" x1="1536" />
        </branch>
        <branch name="nA3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="688" type="branch" />
            <wire x2="1584" y1="688" y2="688" x1="1536" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="1152" type="branch" />
            <wire x2="1568" y1="1152" y2="1152" x1="1504" />
        </branch>
        <instance x="1568" y="1216" name="XLXI_27" orien="R0" />
        <branch name="nA0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1520" y="896" type="branch" />
            <wire x2="1568" y1="896" y2="896" x1="1520" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1520" y="960" type="branch" />
            <wire x2="1568" y1="960" y2="960" x1="1520" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1520" y="1024" type="branch" />
            <wire x2="1568" y1="1024" y2="1024" x1="1520" />
        </branch>
        <branch name="nA3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1520" y="1088" type="branch" />
            <wire x2="1568" y1="1088" y2="1088" x1="1520" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="1536" type="branch" />
            <wire x2="1568" y1="1536" y2="1536" x1="1504" />
        </branch>
        <instance x="1568" y="1600" name="XLXI_28" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1520" y="1280" type="branch" />
            <wire x2="1568" y1="1280" y2="1280" x1="1520" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1520" y="1344" type="branch" />
            <wire x2="1568" y1="1344" y2="1344" x1="1520" />
        </branch>
        <branch name="nA2">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1520" y="1408" type="branch" />
            <wire x2="1568" y1="1408" y2="1408" x1="1520" />
        </branch>
        <branch name="nA3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1520" y="1472" type="branch" />
            <wire x2="1568" y1="1472" y2="1472" x1="1520" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1488" y="1952" type="branch" />
            <wire x2="1552" y1="1952" y2="1952" x1="1488" />
        </branch>
        <instance x="1552" y="2016" name="XLXI_29" orien="R0" />
        <branch name="nA0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="1696" type="branch" />
            <wire x2="1552" y1="1696" y2="1696" x1="1504" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="1760" type="branch" />
            <wire x2="1552" y1="1760" y2="1760" x1="1504" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="1824" type="branch" />
            <wire x2="1552" y1="1824" y2="1824" x1="1504" />
        </branch>
        <branch name="nA3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="1888" type="branch" />
            <wire x2="1552" y1="1888" y2="1888" x1="1504" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1488" y="2336" type="branch" />
            <wire x2="1552" y1="2336" y2="2336" x1="1488" />
        </branch>
        <instance x="1552" y="2400" name="XLXI_30" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="2080" type="branch" />
            <wire x2="1552" y1="2080" y2="2080" x1="1504" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="2144" type="branch" />
            <wire x2="1552" y1="2144" y2="2144" x1="1504" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="2208" type="branch" />
            <wire x2="1552" y1="2208" y2="2208" x1="1504" />
        </branch>
        <branch name="nA3">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1504" y="2272" type="branch" />
            <wire x2="1552" y1="2272" y2="2272" x1="1504" />
        </branch>
        <branch name="O2">
            <wire x2="1840" y1="1024" y2="1024" x1="1824" />
            <wire x2="1904" y1="1024" y2="1024" x1="1840" />
        </branch>
        <branch name="O1">
            <wire x2="1856" y1="624" y2="624" x1="1840" />
            <wire x2="1888" y1="624" y2="624" x1="1856" />
        </branch>
        <branch name="O3">
            <wire x2="1840" y1="1408" y2="1408" x1="1824" />
            <wire x2="1856" y1="1408" y2="1408" x1="1840" />
        </branch>
        <branch name="O4">
            <wire x2="1824" y1="1824" y2="1824" x1="1808" />
            <wire x2="1856" y1="1824" y2="1824" x1="1824" />
        </branch>
        <branch name="O5">
            <wire x2="1824" y1="2208" y2="2208" x1="1808" />
        </branch>
        <branch name="O7">
            <wire x2="2928" y1="832" y2="832" x1="2912" />
            <wire x2="2960" y1="832" y2="832" x1="2928" />
        </branch>
        <branch name="O6">
            <wire x2="2928" y1="448" y2="448" x1="2912" />
            <wire x2="2960" y1="448" y2="448" x1="2928" />
        </branch>
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="880" y="240" type="branch" />
            <wire x2="960" y1="240" y2="240" x1="880" />
        </branch>
        <branch name="nA0">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1280" y="240" type="branch" />
            <wire x2="1280" y1="240" y2="240" x1="1184" />
        </branch>
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="496" type="branch" />
            <wire x2="1584" y1="496" y2="496" x1="1536" />
        </branch>
        <branch name="nA0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1536" y="128" type="branch" />
            <wire x2="1584" y1="128" y2="128" x1="1536" />
        </branch>
        <iomarker fontsize="28" x="240" y="240" name="A(3:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="400" name="enable" orien="R180" />
        <iomarker fontsize="28" x="1888" y="256" name="O0" orien="R0" />
        <iomarker fontsize="28" x="2944" y="1248" name="O8" orien="R0" />
        <iomarker fontsize="28" x="2928" y="1632" name="O9" orien="R0" />
        <iomarker fontsize="28" x="2960" y="832" name="O7" orien="R0" />
        <iomarker fontsize="28" x="2960" y="448" name="O6" orien="R0" />
        <iomarker fontsize="28" x="1904" y="1024" name="O2" orien="R0" />
        <iomarker fontsize="28" x="1856" y="1408" name="O3" orien="R0" />
        <iomarker fontsize="28" x="1856" y="1824" name="O4" orien="R0" />
        <iomarker fontsize="28" x="1824" y="2208" name="O5" orien="R0" />
        <iomarker fontsize="28" x="1888" y="624" name="O1" orien="R0" />
    </sheet>
</drawing>
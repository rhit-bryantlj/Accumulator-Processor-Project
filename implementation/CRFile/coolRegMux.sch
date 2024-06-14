<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(15:0)" />
        <signal name="B(15:0)" />
        <signal name="C(15:0)" />
        <signal name="D(15:0)" />
        <signal name="S(1:0)" />
        <signal name="O(15:0)" />
        <signal name="V" />
        <signal name="S(1)" />
        <signal name="S(0)" />
        <signal name="O(0)" />
        <signal name="D(0)" />
        <signal name="C(0)" />
        <signal name="B(0)" />
        <signal name="A(0)" />
        <signal name="O(1)" />
        <signal name="D(1)" />
        <signal name="C(1)" />
        <signal name="B(1)" />
        <signal name="A(1)" />
        <signal name="O(2)" />
        <signal name="D(2)" />
        <signal name="C(2)" />
        <signal name="B(2)" />
        <signal name="A(2)" />
        <signal name="O(3)" />
        <signal name="D(3)" />
        <signal name="C(3)" />
        <signal name="B(3)" />
        <signal name="A(3)" />
        <signal name="O(4)" />
        <signal name="D(4)" />
        <signal name="C(4)" />
        <signal name="B(4)" />
        <signal name="A(4)" />
        <signal name="O(5)" />
        <signal name="D(5)" />
        <signal name="C(5)" />
        <signal name="B(5)" />
        <signal name="A(5)" />
        <signal name="O(6)" />
        <signal name="D(6)" />
        <signal name="C(6)" />
        <signal name="B(6)" />
        <signal name="A(6)" />
        <signal name="O(7)" />
        <signal name="D(7)" />
        <signal name="C(7)" />
        <signal name="B(7)" />
        <signal name="A(7)" />
        <signal name="O(8)" />
        <signal name="D(8)" />
        <signal name="C(8)" />
        <signal name="B(8)" />
        <signal name="A(8)" />
        <signal name="O(9)" />
        <signal name="O(10)" />
        <signal name="D(10)" />
        <signal name="C(10)" />
        <signal name="B(10)" />
        <signal name="A(10)" />
        <signal name="O(11)" />
        <signal name="D(11)" />
        <signal name="C(11)" />
        <signal name="B(11)" />
        <signal name="A(11)" />
        <signal name="O(12)" />
        <signal name="D(12)" />
        <signal name="C(12)" />
        <signal name="B(12)" />
        <signal name="A(12)" />
        <signal name="O(13)" />
        <signal name="O(14)" />
        <signal name="O(15)" />
        <signal name="D(15)" />
        <signal name="C(15)" />
        <signal name="B(15)" />
        <signal name="A(15)" />
        <signal name="A(9)" />
        <signal name="B(9)" />
        <signal name="C(9)" />
        <signal name="D(9)" />
        <signal name="A(13)" />
        <signal name="B(13)" />
        <signal name="C(13)" />
        <signal name="D(13)" />
        <signal name="A(14)" />
        <signal name="B(14)" />
        <signal name="C(14)" />
        <signal name="D(14)" />
        <port polarity="Input" name="A(15:0)" />
        <port polarity="Input" name="B(15:0)" />
        <port polarity="Input" name="C(15:0)" />
        <port polarity="Input" name="D(15:0)" />
        <port polarity="Input" name="S(1:0)" />
        <port polarity="Output" name="O(15:0)" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_86">
            <blockpin signalname="V" name="P" />
        </block>
        <block symbolname="m4_1e" name="XLXI_87">
            <blockpin signalname="A(0)" name="D0" />
            <blockpin signalname="B(0)" name="D1" />
            <blockpin signalname="C(0)" name="D2" />
            <blockpin signalname="D(0)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(0)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_89">
            <blockpin signalname="A(1)" name="D0" />
            <blockpin signalname="B(1)" name="D1" />
            <blockpin signalname="C(1)" name="D2" />
            <blockpin signalname="D(1)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(1)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_91">
            <blockpin signalname="A(2)" name="D0" />
            <blockpin signalname="B(2)" name="D1" />
            <blockpin signalname="C(2)" name="D2" />
            <blockpin signalname="D(2)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_93">
            <blockpin signalname="A(3)" name="D0" />
            <blockpin signalname="B(3)" name="D1" />
            <blockpin signalname="C(3)" name="D2" />
            <blockpin signalname="D(3)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(3)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_94">
            <blockpin signalname="A(4)" name="D0" />
            <blockpin signalname="B(4)" name="D1" />
            <blockpin signalname="C(4)" name="D2" />
            <blockpin signalname="D(4)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(4)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_95">
            <blockpin signalname="A(5)" name="D0" />
            <blockpin signalname="B(5)" name="D1" />
            <blockpin signalname="C(5)" name="D2" />
            <blockpin signalname="D(5)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(5)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_96">
            <blockpin signalname="A(6)" name="D0" />
            <blockpin signalname="B(6)" name="D1" />
            <blockpin signalname="C(6)" name="D2" />
            <blockpin signalname="D(6)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(6)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_97">
            <blockpin signalname="A(7)" name="D0" />
            <blockpin signalname="B(7)" name="D1" />
            <blockpin signalname="C(7)" name="D2" />
            <blockpin signalname="D(7)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(7)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_98">
            <blockpin signalname="A(8)" name="D0" />
            <blockpin signalname="B(8)" name="D1" />
            <blockpin signalname="C(8)" name="D2" />
            <blockpin signalname="D(8)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(8)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_99">
            <blockpin signalname="A(9)" name="D0" />
            <blockpin signalname="B(9)" name="D1" />
            <blockpin signalname="C(9)" name="D2" />
            <blockpin signalname="D(9)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(9)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_101">
            <blockpin signalname="A(10)" name="D0" />
            <blockpin signalname="B(10)" name="D1" />
            <blockpin signalname="C(10)" name="D2" />
            <blockpin signalname="D(10)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(10)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_102">
            <blockpin signalname="A(11)" name="D0" />
            <blockpin signalname="B(11)" name="D1" />
            <blockpin signalname="C(11)" name="D2" />
            <blockpin signalname="D(11)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(11)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_104">
            <blockpin signalname="A(12)" name="D0" />
            <blockpin signalname="B(12)" name="D1" />
            <blockpin signalname="C(12)" name="D2" />
            <blockpin signalname="D(12)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(12)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_105">
            <blockpin signalname="A(13)" name="D0" />
            <blockpin signalname="B(13)" name="D1" />
            <blockpin signalname="C(13)" name="D2" />
            <blockpin signalname="D(13)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(13)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_106">
            <blockpin signalname="A(14)" name="D0" />
            <blockpin signalname="B(14)" name="D1" />
            <blockpin signalname="C(14)" name="D2" />
            <blockpin signalname="D(14)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(14)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_107">
            <blockpin signalname="A(15)" name="D0" />
            <blockpin signalname="B(15)" name="D1" />
            <blockpin signalname="C(15)" name="D2" />
            <blockpin signalname="D(15)" name="D3" />
            <blockpin signalname="V" name="E" />
            <blockpin signalname="S(0)" name="S0" />
            <blockpin signalname="S(1)" name="S1" />
            <blockpin signalname="O(15)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="A(15:0)">
            <wire x2="560" y1="240" y2="240" x1="400" />
        </branch>
        <branch name="B(15:0)">
            <wire x2="560" y1="320" y2="320" x1="400" />
        </branch>
        <branch name="C(15:0)">
            <wire x2="560" y1="400" y2="400" x1="400" />
        </branch>
        <branch name="D(15:0)">
            <wire x2="560" y1="480" y2="480" x1="400" />
        </branch>
        <branch name="S(1:0)">
            <wire x2="560" y1="960" y2="960" x1="400" />
        </branch>
        <branch name="O(15:0)">
            <wire x2="5040" y1="480" y2="480" x1="4880" />
        </branch>
        <iomarker fontsize="28" x="5040" y="480" name="O(15:0)" orien="R0" />
        <iomarker fontsize="28" x="400" y="240" name="A(15:0)" orien="R180" />
        <iomarker fontsize="28" x="400" y="320" name="B(15:0)" orien="R180" />
        <iomarker fontsize="28" x="400" y="400" name="C(15:0)" orien="R180" />
        <iomarker fontsize="28" x="400" y="480" name="D(15:0)" orien="R180" />
        <iomarker fontsize="28" x="400" y="960" name="S(1:0)" orien="R180" />
        <instance x="336" y="1184" name="XLXI_86" orien="R0" />
        <branch name="V">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="560" y="1200" type="branch" />
            <wire x2="400" y1="1184" y2="1200" x1="400" />
            <wire x2="560" y1="1200" y2="1200" x1="400" />
        </branch>
        <instance x="1152" y="784" name="XLXI_87" orien="R0" />
        <branch name="O(0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1600" y="464" type="branch" />
            <wire x2="1600" y1="464" y2="464" x1="1472" />
        </branch>
        <branch name="D(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="560" type="branch" />
            <wire x2="1152" y1="560" y2="560" x1="1040" />
        </branch>
        <branch name="C(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="496" type="branch" />
            <wire x2="1152" y1="496" y2="496" x1="1040" />
        </branch>
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="432" type="branch" />
            <wire x2="1152" y1="432" y2="432" x1="1040" />
        </branch>
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="368" type="branch" />
            <wire x2="1152" y1="368" y2="368" x1="1040" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="624" type="branch" />
            <wire x2="1152" y1="624" y2="624" x1="1040" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="688" type="branch" />
            <wire x2="1152" y1="688" y2="688" x1="1040" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1024" y="752" type="branch" />
            <wire x2="1152" y1="752" y2="752" x1="1024" />
        </branch>
        <instance x="1152" y="1392" name="XLXI_89" orien="R0" />
        <branch name="O(1)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1600" y="1072" type="branch" />
            <wire x2="1600" y1="1072" y2="1072" x1="1472" />
        </branch>
        <branch name="D(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1168" type="branch" />
            <wire x2="1152" y1="1168" y2="1168" x1="1040" />
        </branch>
        <branch name="C(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1104" type="branch" />
            <wire x2="1152" y1="1104" y2="1104" x1="1040" />
        </branch>
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1040" type="branch" />
            <wire x2="1152" y1="1040" y2="1040" x1="1040" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="976" type="branch" />
            <wire x2="1152" y1="976" y2="976" x1="1040" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1232" type="branch" />
            <wire x2="1152" y1="1232" y2="1232" x1="1040" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1296" type="branch" />
            <wire x2="1152" y1="1296" y2="1296" x1="1040" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="1360" type="branch" />
            <wire x2="1152" y1="1360" y2="1360" x1="1008" />
        </branch>
        <instance x="1232" y="2208" name="XLXI_91" orien="R0" />
        <branch name="O(2)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1680" y="1888" type="branch" />
            <wire x2="1680" y1="1888" y2="1888" x1="1552" />
        </branch>
        <branch name="D(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1056" y="1984" type="branch" />
            <wire x2="1232" y1="1984" y2="1984" x1="1056" />
        </branch>
        <branch name="C(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1056" y="1920" type="branch" />
            <wire x2="1232" y1="1920" y2="1920" x1="1056" />
        </branch>
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1056" y="1856" type="branch" />
            <wire x2="1232" y1="1856" y2="1856" x1="1056" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1056" y="1792" type="branch" />
            <wire x2="1232" y1="1792" y2="1792" x1="1056" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1056" y="2048" type="branch" />
            <wire x2="1232" y1="2048" y2="2048" x1="1056" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1056" y="2112" type="branch" />
            <wire x2="1232" y1="2112" y2="2112" x1="1056" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="2176" type="branch" />
            <wire x2="1232" y1="2176" y2="2176" x1="1040" />
        </branch>
        <instance x="1280" y="3040" name="XLXI_93" orien="R0" />
        <branch name="O(3)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1728" y="2720" type="branch" />
            <wire x2="1728" y1="2720" y2="2720" x1="1600" />
        </branch>
        <branch name="D(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1104" y="2832" type="branch" />
            <wire x2="1120" y1="2832" y2="2832" x1="1104" />
            <wire x2="1120" y1="2816" y2="2832" x1="1120" />
            <wire x2="1280" y1="2816" y2="2816" x1="1120" />
        </branch>
        <branch name="C(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1104" y="2768" type="branch" />
            <wire x2="1120" y1="2768" y2="2768" x1="1104" />
            <wire x2="1120" y1="2752" y2="2768" x1="1120" />
            <wire x2="1280" y1="2752" y2="2752" x1="1120" />
        </branch>
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1104" y="2688" type="branch" />
            <wire x2="1280" y1="2688" y2="2688" x1="1104" />
        </branch>
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1104" y="2640" type="branch" />
            <wire x2="1120" y1="2640" y2="2640" x1="1104" />
            <wire x2="1168" y1="2624" y2="2624" x1="1120" />
            <wire x2="1280" y1="2624" y2="2624" x1="1168" />
            <wire x2="1120" y1="2624" y2="2640" x1="1120" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="3024" type="branch" />
            <wire x2="1152" y1="3024" y2="3024" x1="1088" />
            <wire x2="1280" y1="3008" y2="3008" x1="1152" />
            <wire x2="1152" y1="3008" y2="3024" x1="1152" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1088" y="2896" type="branch" />
            <wire x2="1104" y1="2896" y2="2896" x1="1088" />
            <wire x2="1104" y1="2880" y2="2896" x1="1104" />
            <wire x2="1168" y1="2880" y2="2880" x1="1104" />
            <wire x2="1280" y1="2880" y2="2880" x1="1168" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1120" y="2960" type="branch" />
            <wire x2="1136" y1="2960" y2="2960" x1="1120" />
            <wire x2="1136" y1="2944" y2="2960" x1="1136" />
            <wire x2="1168" y1="2944" y2="2944" x1="1136" />
            <wire x2="1280" y1="2944" y2="2944" x1="1168" />
        </branch>
        <instance x="2256" y="656" name="XLXI_94" orien="R0" />
        <branch name="O(4)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2704" y="336" type="branch" />
            <wire x2="2704" y1="336" y2="336" x1="2576" />
        </branch>
        <branch name="D(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="432" type="branch" />
            <wire x2="2144" y1="432" y2="432" x1="2080" />
            <wire x2="2256" y1="432" y2="432" x1="2144" />
        </branch>
        <branch name="C(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="368" type="branch" />
            <wire x2="2144" y1="368" y2="368" x1="2080" />
            <wire x2="2256" y1="368" y2="368" x1="2144" />
        </branch>
        <branch name="B(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="304" type="branch" />
            <wire x2="2144" y1="304" y2="304" x1="2080" />
            <wire x2="2256" y1="304" y2="304" x1="2144" />
        </branch>
        <branch name="A(4)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="240" type="branch" />
            <wire x2="2144" y1="240" y2="240" x1="2080" />
            <wire x2="2256" y1="240" y2="240" x1="2144" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="496" type="branch" />
            <wire x2="2144" y1="496" y2="496" x1="2080" />
            <wire x2="2256" y1="496" y2="496" x1="2144" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="560" type="branch" />
            <wire x2="2144" y1="560" y2="560" x1="2080" />
            <wire x2="2256" y1="560" y2="560" x1="2144" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="624" type="branch" />
            <wire x2="2128" y1="624" y2="624" x1="2080" />
            <wire x2="2256" y1="624" y2="624" x1="2128" />
        </branch>
        <instance x="2256" y="1456" name="XLXI_95" orien="R0" />
        <branch name="O(5)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2704" y="1136" type="branch" />
            <wire x2="2704" y1="1136" y2="1136" x1="2576" />
        </branch>
        <branch name="D(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1232" type="branch" />
            <wire x2="2144" y1="1232" y2="1232" x1="2080" />
            <wire x2="2256" y1="1232" y2="1232" x1="2144" />
        </branch>
        <branch name="C(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1168" type="branch" />
            <wire x2="2144" y1="1168" y2="1168" x1="2080" />
            <wire x2="2256" y1="1168" y2="1168" x1="2144" />
        </branch>
        <branch name="B(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1104" type="branch" />
            <wire x2="2144" y1="1104" y2="1104" x1="2080" />
            <wire x2="2256" y1="1104" y2="1104" x1="2144" />
        </branch>
        <branch name="A(5)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1040" type="branch" />
            <wire x2="2144" y1="1040" y2="1040" x1="2080" />
            <wire x2="2256" y1="1040" y2="1040" x1="2144" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1296" type="branch" />
            <wire x2="2144" y1="1296" y2="1296" x1="2080" />
            <wire x2="2256" y1="1296" y2="1296" x1="2144" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1360" type="branch" />
            <wire x2="2144" y1="1360" y2="1360" x1="2080" />
            <wire x2="2256" y1="1360" y2="1360" x1="2144" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2080" y="1424" type="branch" />
            <wire x2="2128" y1="1424" y2="1424" x1="2080" />
            <wire x2="2256" y1="1424" y2="1424" x1="2128" />
        </branch>
        <instance x="2240" y="2256" name="XLXI_96" orien="R0" />
        <branch name="O(6)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2688" y="1936" type="branch" />
            <wire x2="2688" y1="1936" y2="1936" x1="2560" />
        </branch>
        <branch name="D(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2032" type="branch" />
            <wire x2="2128" y1="2032" y2="2032" x1="2064" />
            <wire x2="2240" y1="2032" y2="2032" x1="2128" />
        </branch>
        <branch name="C(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1968" type="branch" />
            <wire x2="2128" y1="1968" y2="1968" x1="2064" />
            <wire x2="2240" y1="1968" y2="1968" x1="2128" />
        </branch>
        <branch name="B(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1904" type="branch" />
            <wire x2="2128" y1="1904" y2="1904" x1="2064" />
            <wire x2="2240" y1="1904" y2="1904" x1="2128" />
        </branch>
        <branch name="A(6)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="1840" type="branch" />
            <wire x2="2128" y1="1840" y2="1840" x1="2064" />
            <wire x2="2240" y1="1840" y2="1840" x1="2128" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2096" type="branch" />
            <wire x2="2128" y1="2096" y2="2096" x1="2064" />
            <wire x2="2240" y1="2096" y2="2096" x1="2128" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2160" type="branch" />
            <wire x2="2128" y1="2160" y2="2160" x1="2064" />
            <wire x2="2240" y1="2160" y2="2160" x1="2128" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2048" y="2224" type="branch" />
            <wire x2="2112" y1="2224" y2="2224" x1="2048" />
            <wire x2="2240" y1="2224" y2="2224" x1="2112" />
        </branch>
        <instance x="2240" y="3056" name="XLXI_97" orien="R0" />
        <branch name="O(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2656" y="2736" type="branch" />
            <wire x2="2656" y1="2736" y2="2736" x1="2560" />
        </branch>
        <branch name="D(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2832" type="branch" />
            <wire x2="2128" y1="2832" y2="2832" x1="2064" />
            <wire x2="2240" y1="2832" y2="2832" x1="2128" />
        </branch>
        <branch name="C(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2768" type="branch" />
            <wire x2="2128" y1="2768" y2="2768" x1="2064" />
            <wire x2="2240" y1="2768" y2="2768" x1="2128" />
        </branch>
        <branch name="B(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2704" type="branch" />
            <wire x2="2128" y1="2704" y2="2704" x1="2064" />
            <wire x2="2240" y1="2704" y2="2704" x1="2128" />
        </branch>
        <branch name="A(7)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2640" type="branch" />
            <wire x2="2128" y1="2640" y2="2640" x1="2064" />
            <wire x2="2240" y1="2640" y2="2640" x1="2128" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2896" type="branch" />
            <wire x2="2128" y1="2896" y2="2896" x1="2064" />
            <wire x2="2240" y1="2896" y2="2896" x1="2128" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="2960" type="branch" />
            <wire x2="2128" y1="2960" y2="2960" x1="2064" />
            <wire x2="2240" y1="2960" y2="2960" x1="2128" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2064" y="3024" type="branch" />
            <wire x2="2112" y1="3024" y2="3024" x1="2064" />
            <wire x2="2240" y1="3024" y2="3024" x1="2112" />
        </branch>
        <instance x="3216" y="656" name="XLXI_98" orien="R0" />
        <branch name="O(8)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3664" y="336" type="branch" />
            <wire x2="3664" y1="336" y2="336" x1="3536" />
        </branch>
        <branch name="D(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="432" type="branch" />
            <wire x2="3104" y1="432" y2="432" x1="3040" />
            <wire x2="3216" y1="432" y2="432" x1="3104" />
        </branch>
        <branch name="C(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="368" type="branch" />
            <wire x2="3104" y1="368" y2="368" x1="3040" />
            <wire x2="3216" y1="368" y2="368" x1="3104" />
        </branch>
        <branch name="B(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="304" type="branch" />
            <wire x2="3104" y1="304" y2="304" x1="3040" />
            <wire x2="3216" y1="304" y2="304" x1="3104" />
        </branch>
        <branch name="A(8)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="240" type="branch" />
            <wire x2="3104" y1="240" y2="240" x1="3040" />
            <wire x2="3216" y1="240" y2="240" x1="3104" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="496" type="branch" />
            <wire x2="3104" y1="496" y2="496" x1="3040" />
            <wire x2="3216" y1="496" y2="496" x1="3104" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="560" type="branch" />
            <wire x2="3104" y1="560" y2="560" x1="3040" />
            <wire x2="3216" y1="560" y2="560" x1="3104" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="624" type="branch" />
            <wire x2="3088" y1="624" y2="624" x1="3040" />
            <wire x2="3216" y1="624" y2="624" x1="3088" />
        </branch>
        <instance x="3216" y="1456" name="XLXI_99" orien="R0" />
        <branch name="O(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3664" y="1136" type="branch" />
            <wire x2="3664" y1="1136" y2="1136" x1="3536" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="1296" type="branch" />
            <wire x2="3056" y1="1296" y2="1296" x1="3040" />
            <wire x2="3104" y1="1296" y2="1296" x1="3056" />
            <wire x2="3216" y1="1296" y2="1296" x1="3104" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="1360" type="branch" />
            <wire x2="3056" y1="1360" y2="1360" x1="3040" />
            <wire x2="3104" y1="1360" y2="1360" x1="3056" />
            <wire x2="3216" y1="1360" y2="1360" x1="3104" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="1424" type="branch" />
            <wire x2="3056" y1="1424" y2="1424" x1="3040" />
            <wire x2="3088" y1="1424" y2="1424" x1="3056" />
            <wire x2="3216" y1="1424" y2="1424" x1="3088" />
        </branch>
        <instance x="3200" y="2256" name="XLXI_101" orien="R0" />
        <branch name="O(10)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3648" y="1936" type="branch" />
            <wire x2="3648" y1="1936" y2="1936" x1="3520" />
        </branch>
        <branch name="D(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="2032" type="branch" />
            <wire x2="3088" y1="2032" y2="2032" x1="3024" />
            <wire x2="3200" y1="2032" y2="2032" x1="3088" />
        </branch>
        <branch name="C(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="1968" type="branch" />
            <wire x2="3088" y1="1968" y2="1968" x1="3024" />
            <wire x2="3200" y1="1968" y2="1968" x1="3088" />
        </branch>
        <branch name="B(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="1904" type="branch" />
            <wire x2="3088" y1="1904" y2="1904" x1="3024" />
            <wire x2="3200" y1="1904" y2="1904" x1="3088" />
        </branch>
        <branch name="A(10)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="1840" type="branch" />
            <wire x2="3088" y1="1840" y2="1840" x1="3024" />
            <wire x2="3200" y1="1840" y2="1840" x1="3088" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="2096" type="branch" />
            <wire x2="3088" y1="2096" y2="2096" x1="3024" />
            <wire x2="3200" y1="2096" y2="2096" x1="3088" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="2160" type="branch" />
            <wire x2="3088" y1="2160" y2="2160" x1="3024" />
            <wire x2="3200" y1="2160" y2="2160" x1="3088" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="2224" type="branch" />
            <wire x2="3072" y1="2224" y2="2224" x1="3024" />
            <wire x2="3200" y1="2224" y2="2224" x1="3072" />
        </branch>
        <instance x="3200" y="3056" name="XLXI_102" orien="R0" />
        <branch name="O(11)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="3648" y="2736" type="branch" />
            <wire x2="3648" y1="2736" y2="2736" x1="3520" />
        </branch>
        <branch name="D(11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="2832" type="branch" />
            <wire x2="3088" y1="2832" y2="2832" x1="3024" />
            <wire x2="3200" y1="2832" y2="2832" x1="3088" />
        </branch>
        <branch name="C(11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="2768" type="branch" />
            <wire x2="3088" y1="2768" y2="2768" x1="3024" />
            <wire x2="3200" y1="2768" y2="2768" x1="3088" />
        </branch>
        <branch name="B(11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="2704" type="branch" />
            <wire x2="3088" y1="2704" y2="2704" x1="3024" />
            <wire x2="3200" y1="2704" y2="2704" x1="3088" />
        </branch>
        <branch name="A(11)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="2640" type="branch" />
            <wire x2="3088" y1="2640" y2="2640" x1="3024" />
            <wire x2="3200" y1="2640" y2="2640" x1="3088" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="2896" type="branch" />
            <wire x2="3088" y1="2896" y2="2896" x1="3024" />
            <wire x2="3200" y1="2896" y2="2896" x1="3088" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3024" y="2960" type="branch" />
            <wire x2="3088" y1="2960" y2="2960" x1="3024" />
            <wire x2="3200" y1="2960" y2="2960" x1="3088" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3008" y="3024" type="branch" />
            <wire x2="3072" y1="3024" y2="3024" x1="3008" />
            <wire x2="3200" y1="3024" y2="3024" x1="3072" />
        </branch>
        <instance x="4160" y="656" name="XLXI_104" orien="R0" />
        <branch name="O(12)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="4608" y="336" type="branch" />
            <wire x2="4608" y1="336" y2="336" x1="4480" />
        </branch>
        <branch name="D(12)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="432" type="branch" />
            <wire x2="4048" y1="432" y2="432" x1="3984" />
            <wire x2="4160" y1="432" y2="432" x1="4048" />
        </branch>
        <branch name="C(12)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="368" type="branch" />
            <wire x2="4048" y1="368" y2="368" x1="3984" />
            <wire x2="4160" y1="368" y2="368" x1="4048" />
        </branch>
        <branch name="B(12)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="304" type="branch" />
            <wire x2="4048" y1="304" y2="304" x1="3984" />
            <wire x2="4160" y1="304" y2="304" x1="4048" />
        </branch>
        <branch name="A(12)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="240" type="branch" />
            <wire x2="4048" y1="240" y2="240" x1="3984" />
            <wire x2="4160" y1="240" y2="240" x1="4048" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="496" type="branch" />
            <wire x2="4048" y1="496" y2="496" x1="3984" />
            <wire x2="4160" y1="496" y2="496" x1="4048" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="560" type="branch" />
            <wire x2="4048" y1="560" y2="560" x1="3984" />
            <wire x2="4160" y1="560" y2="560" x1="4048" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="624" type="branch" />
            <wire x2="4032" y1="624" y2="624" x1="3984" />
            <wire x2="4160" y1="624" y2="624" x1="4032" />
        </branch>
        <instance x="4160" y="1456" name="XLXI_105" orien="R0" />
        <branch name="O(13)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="4608" y="1136" type="branch" />
            <wire x2="4608" y1="1136" y2="1136" x1="4480" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="1296" type="branch" />
            <wire x2="4000" y1="1296" y2="1296" x1="3984" />
            <wire x2="4048" y1="1296" y2="1296" x1="4000" />
            <wire x2="4160" y1="1296" y2="1296" x1="4048" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="1360" type="branch" />
            <wire x2="4000" y1="1360" y2="1360" x1="3984" />
            <wire x2="4048" y1="1360" y2="1360" x1="4000" />
            <wire x2="4160" y1="1360" y2="1360" x1="4048" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="1424" type="branch" />
            <wire x2="4000" y1="1424" y2="1424" x1="3984" />
            <wire x2="4032" y1="1424" y2="1424" x1="4000" />
            <wire x2="4160" y1="1424" y2="1424" x1="4032" />
        </branch>
        <instance x="4176" y="2256" name="XLXI_106" orien="R0" />
        <branch name="O(14)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="4624" y="1936" type="branch" />
            <wire x2="4624" y1="1936" y2="1936" x1="4496" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="2096" type="branch" />
            <wire x2="4016" y1="2096" y2="2096" x1="4000" />
            <wire x2="4064" y1="2096" y2="2096" x1="4016" />
            <wire x2="4176" y1="2096" y2="2096" x1="4064" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="2160" type="branch" />
            <wire x2="4016" y1="2160" y2="2160" x1="4000" />
            <wire x2="4064" y1="2160" y2="2160" x1="4016" />
            <wire x2="4176" y1="2160" y2="2160" x1="4064" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="2224" type="branch" />
            <wire x2="4016" y1="2224" y2="2224" x1="4000" />
            <wire x2="4048" y1="2224" y2="2224" x1="4016" />
            <wire x2="4176" y1="2224" y2="2224" x1="4048" />
        </branch>
        <instance x="4176" y="3056" name="XLXI_107" orien="R0" />
        <branch name="O(15)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="4624" y="2736" type="branch" />
            <wire x2="4624" y1="2736" y2="2736" x1="4496" />
        </branch>
        <branch name="D(15)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="2832" type="branch" />
            <wire x2="4064" y1="2832" y2="2832" x1="4000" />
            <wire x2="4176" y1="2832" y2="2832" x1="4064" />
        </branch>
        <branch name="C(15)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="2768" type="branch" />
            <wire x2="4064" y1="2768" y2="2768" x1="4000" />
            <wire x2="4176" y1="2768" y2="2768" x1="4064" />
        </branch>
        <branch name="B(15)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="2704" type="branch" />
            <wire x2="4064" y1="2704" y2="2704" x1="4000" />
            <wire x2="4176" y1="2704" y2="2704" x1="4064" />
        </branch>
        <branch name="A(15)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="2640" type="branch" />
            <wire x2="4064" y1="2640" y2="2640" x1="4000" />
            <wire x2="4176" y1="2640" y2="2640" x1="4064" />
        </branch>
        <branch name="S(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="2896" type="branch" />
            <wire x2="4064" y1="2896" y2="2896" x1="4000" />
            <wire x2="4176" y1="2896" y2="2896" x1="4064" />
        </branch>
        <branch name="S(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="2960" type="branch" />
            <wire x2="4064" y1="2960" y2="2960" x1="4000" />
            <wire x2="4176" y1="2960" y2="2960" x1="4064" />
        </branch>
        <branch name="V">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="3024" type="branch" />
            <wire x2="4048" y1="3024" y2="3024" x1="4000" />
            <wire x2="4176" y1="3024" y2="3024" x1="4048" />
        </branch>
        <branch name="A(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="1040" type="branch" />
            <wire x2="3056" y1="1040" y2="1040" x1="3040" />
            <wire x2="3104" y1="1040" y2="1040" x1="3056" />
            <wire x2="3216" y1="1040" y2="1040" x1="3104" />
        </branch>
        <branch name="B(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="1104" type="branch" />
            <wire x2="3056" y1="1104" y2="1104" x1="3040" />
            <wire x2="3104" y1="1104" y2="1104" x1="3056" />
            <wire x2="3216" y1="1104" y2="1104" x1="3104" />
        </branch>
        <branch name="C(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="1168" type="branch" />
            <wire x2="3056" y1="1168" y2="1168" x1="3040" />
            <wire x2="3104" y1="1168" y2="1168" x1="3056" />
            <wire x2="3216" y1="1168" y2="1168" x1="3104" />
        </branch>
        <branch name="D(9)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3040" y="1232" type="branch" />
            <wire x2="3056" y1="1232" y2="1232" x1="3040" />
            <wire x2="3104" y1="1232" y2="1232" x1="3056" />
            <wire x2="3216" y1="1232" y2="1232" x1="3104" />
        </branch>
        <branch name="A(13)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="1040" type="branch" />
            <wire x2="4000" y1="1040" y2="1040" x1="3984" />
            <wire x2="4048" y1="1040" y2="1040" x1="4000" />
            <wire x2="4160" y1="1040" y2="1040" x1="4048" />
        </branch>
        <branch name="B(13)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="1104" type="branch" />
            <wire x2="4000" y1="1104" y2="1104" x1="3984" />
            <wire x2="4048" y1="1104" y2="1104" x1="4000" />
            <wire x2="4160" y1="1104" y2="1104" x1="4048" />
        </branch>
        <branch name="C(13)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="1168" type="branch" />
            <wire x2="4000" y1="1168" y2="1168" x1="3984" />
            <wire x2="4048" y1="1168" y2="1168" x1="4000" />
            <wire x2="4160" y1="1168" y2="1168" x1="4048" />
        </branch>
        <branch name="D(13)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="3984" y="1232" type="branch" />
            <wire x2="4000" y1="1232" y2="1232" x1="3984" />
            <wire x2="4048" y1="1232" y2="1232" x1="4000" />
            <wire x2="4160" y1="1232" y2="1232" x1="4048" />
        </branch>
        <branch name="A(14)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="1840" type="branch" />
            <wire x2="4016" y1="1840" y2="1840" x1="4000" />
            <wire x2="4064" y1="1840" y2="1840" x1="4016" />
            <wire x2="4176" y1="1840" y2="1840" x1="4064" />
        </branch>
        <branch name="B(14)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="1904" type="branch" />
            <wire x2="4016" y1="1904" y2="1904" x1="4000" />
            <wire x2="4064" y1="1904" y2="1904" x1="4016" />
            <wire x2="4176" y1="1904" y2="1904" x1="4064" />
        </branch>
        <branch name="C(14)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="1968" type="branch" />
            <wire x2="4016" y1="1968" y2="1968" x1="4000" />
            <wire x2="4064" y1="1968" y2="1968" x1="4016" />
            <wire x2="4176" y1="1968" y2="1968" x1="4064" />
        </branch>
        <branch name="D(14)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="4000" y="2032" type="branch" />
            <wire x2="4016" y1="2032" y2="2032" x1="4000" />
            <wire x2="4064" y1="2032" y2="2032" x1="4016" />
            <wire x2="4176" y1="2032" y2="2032" x1="4064" />
        </branch>
    </sheet>
</drawing>
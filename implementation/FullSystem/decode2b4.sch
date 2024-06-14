<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(1:0)" />
        <signal name="enable" />
        <signal name="A(0)" />
        <signal name="nA0" />
        <signal name="nA1" />
        <signal name="A(1)" />
        <signal name="O0" />
        <signal name="O1" />
        <signal name="O2" />
        <signal name="O3" />
        <port polarity="Input" name="A(1:0)" />
        <port polarity="Input" name="enable" />
        <port polarity="Output" name="O0" />
        <port polarity="Output" name="O1" />
        <port polarity="Output" name="O2" />
        <port polarity="Output" name="O3" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="A(0)" name="I" />
            <blockpin signalname="nA0" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="A(1)" name="I" />
            <blockpin signalname="nA1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_15">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="A(1)" name="I1" />
            <blockpin signalname="A(0)" name="I2" />
            <blockpin signalname="O3" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_16">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="A(1)" name="I1" />
            <blockpin signalname="nA0" name="I2" />
            <blockpin signalname="O2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_17">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA1" name="I1" />
            <blockpin signalname="A(0)" name="I2" />
            <blockpin signalname="O1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_18">
            <blockpin signalname="enable" name="I0" />
            <blockpin signalname="nA1" name="I1" />
            <blockpin signalname="nA0" name="I2" />
            <blockpin signalname="O0" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A(1:0)">
            <wire x2="640" y1="240" y2="240" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="240" name="A(1:0)" orien="R180" />
        <branch name="enable">
            <wire x2="640" y1="400" y2="400" x1="400" />
        </branch>
        <iomarker fontsize="28" x="400" y="400" name="enable" orien="R180" />
        <instance x="1120" y="272" name="XLXI_1" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="240" type="branch" />
            <wire x2="1120" y1="240" y2="240" x1="1040" />
        </branch>
        <branch name="nA0">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="240" type="branch" />
            <wire x2="1440" y1="240" y2="240" x1="1344" />
        </branch>
        <instance x="1120" y="432" name="XLXI_6" orien="R0" />
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1040" y="400" type="branch" />
            <wire x2="1120" y1="400" y2="400" x1="1040" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="1440" y="400" type="branch" />
            <wire x2="1440" y1="400" y2="400" x1="1344" />
        </branch>
        <branch name="O0">
            <wire x2="2400" y1="256" y2="256" x1="2368" />
        </branch>
        <branch name="O1">
            <wire x2="2400" y1="576" y2="576" x1="2352" />
        </branch>
        <branch name="O2">
            <wire x2="2400" y1="896" y2="896" x1="2368" />
        </branch>
        <branch name="O3">
            <wire x2="2400" y1="1216" y2="1216" x1="2368" />
        </branch>
        <iomarker fontsize="28" x="2400" y="256" name="O0" orien="R0" />
        <iomarker fontsize="28" x="2400" y="576" name="O1" orien="R0" />
        <iomarker fontsize="28" x="2400" y="896" name="O2" orien="R0" />
        <iomarker fontsize="28" x="2400" y="1216" name="O3" orien="R0" />
        <instance x="2112" y="1344" name="XLXI_15" orien="R0" />
        <instance x="2112" y="1024" name="XLXI_16" orien="R0" />
        <instance x="2096" y="704" name="XLXI_17" orien="R0" />
        <instance x="2112" y="384" name="XLXI_18" orien="R0" />
        <branch name="nA0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="192" type="branch" />
            <wire x2="2112" y1="192" y2="192" x1="1984" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="256" type="branch" />
            <wire x2="2112" y1="256" y2="256" x1="1984" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="320" type="branch" />
            <wire x2="2112" y1="320" y2="320" x1="1984" />
        </branch>
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="512" type="branch" />
            <wire x2="2096" y1="512" y2="512" x1="1984" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="640" type="branch" />
            <wire x2="2096" y1="640" y2="640" x1="1984" />
        </branch>
        <branch name="nA1">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="576" type="branch" />
            <wire x2="2096" y1="576" y2="576" x1="1984" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="896" type="branch" />
            <wire x2="2112" y1="896" y2="896" x1="1984" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1984" y="960" type="branch" />
            <wire x2="2112" y1="960" y2="960" x1="1984" />
        </branch>
        <branch name="nA0">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1968" y="832" type="branch" />
            <wire x2="2112" y1="832" y2="832" x1="1968" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1216" type="branch" />
            <wire x2="2016" y1="1216" y2="1216" x1="2000" />
            <wire x2="2112" y1="1216" y2="1216" x1="2016" />
        </branch>
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1280" type="branch" />
            <wire x2="2016" y1="1280" y2="1280" x1="2000" />
            <wire x2="2112" y1="1280" y2="1280" x1="2016" />
        </branch>
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="2000" y="1152" type="branch" />
            <wire x2="2016" y1="1152" y2="1152" x1="2000" />
            <wire x2="2112" y1="1152" y2="1152" x1="2016" />
        </branch>
    </sheet>
</drawing>
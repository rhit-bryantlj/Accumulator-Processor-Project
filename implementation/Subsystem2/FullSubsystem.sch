<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4(15:0)" />
        <signal name="XLXN_5(13:0)" />
        <signal name="XLXN_6(15:0)" />
        <signal name="IR(12:0)" />
        <signal name="PCSource(1:0)" />
        <signal name="ALUbranchOutput(15:0)" />
        <signal name="CLK" />
        <signal name="PCwrite" />
        <signal name="Reset" />
        <signal name="NewPC(15:14)" />
        <signal name="SelectedPC(15:0)">
        </signal>
        <signal name="NewPC(15:0)" />
        <port polarity="Input" name="IR(12:0)" />
        <port polarity="Input" name="PCSource(1:0)" />
        <port polarity="Input" name="ALUbranchOutput(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="PCwrite" />
        <port polarity="Input" name="Reset" />
        <port polarity="Output" name="NewPC(15:14)" />
        <port polarity="Output" name="NewPC(15:0)" />
        <blockdef name="PCALU">
            <timestamp>2021-5-17T20:44:21</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="PCMux">
            <timestamp>2021-5-18T1:9:13</timestamp>
            <rect width="432" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-236" height="24" />
            <line x2="560" y1="-224" y2="-224" x1="496" />
        </blockdef>
        <blockdef name="PCRegister">
            <timestamp>2021-5-18T1:9:4</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="PCandIR_Concatenate">
            <timestamp>2021-5-18T1:8:59</timestamp>
            <rect width="480" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="544" y="-108" height="24" />
            <line x2="608" y1="-96" y2="-96" x1="544" />
        </blockdef>
        <blockdef name="IRLeftShift1ForPC">
            <timestamp>2021-5-18T1:8:53</timestamp>
            <rect width="336" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="400" y="-44" height="24" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
        </blockdef>
        <block symbolname="PCALU" name="XLXI_1">
            <blockpin signalname="NewPC(15:0)" name="PCIN(15:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="PCOUT(15:0)" />
        </block>
        <block symbolname="PCMux" name="XLXI_2">
            <blockpin signalname="ALUbranchOutput(15:0)" name="ALUPC(15:0)" />
            <blockpin signalname="XLXN_6(15:0)" name="ConcatenatedPC(15:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="PCincrement(15:0)" />
            <blockpin signalname="PCSource(1:0)" name="s(1:0)" />
            <blockpin signalname="SelectedPC(15:0)" name="SelectedPC(15:0)" />
        </block>
        <block symbolname="PCRegister" name="XLXI_3">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="PCwrite" name="PCWrite" />
            <blockpin signalname="Reset" name="Reset" />
            <blockpin signalname="SelectedPC(15:0)" name="PCIn(15:0)" />
            <blockpin signalname="NewPC(15:0)" name="PCout(15:0)" />
        </block>
        <block symbolname="PCandIR_Concatenate" name="XLXI_4">
            <blockpin signalname="XLXN_5(13:0)" name="LeftShiftedIR(13:0)" />
            <blockpin signalname="NewPC(15:14)" name="TwoBitsPC(1:0)" />
            <blockpin signalname="XLXN_6(15:0)" name="ConcatenatedOutput(15:0)" />
        </block>
        <block symbolname="IRLeftShift1ForPC" name="XLXI_5">
            <blockpin signalname="IR(12:0)" name="IR(12:0)" />
            <blockpin signalname="XLXN_5(13:0)" name="LeftShiftedOutput(13:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2272" y="1472" name="XLXI_2" orien="R0">
        </instance>
        <instance x="592" y="1520" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1296" y="1056" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1344" y="1536" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_4(15:0)">
            <wire x2="2016" y1="1504" y2="1504" x1="1728" />
            <wire x2="2016" y1="1376" y2="1504" x1="2016" />
            <wire x2="2272" y1="1376" y2="1376" x1="2016" />
        </branch>
        <instance x="1328" y="1360" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_5(13:0)">
            <wire x2="2000" y1="1136" y2="1136" x1="1264" />
            <wire x2="1264" y1="1136" y2="1264" x1="1264" />
            <wire x2="1328" y1="1264" y2="1264" x1="1264" />
            <wire x2="2000" y1="1024" y2="1024" x1="1760" />
            <wire x2="2000" y1="1024" y2="1136" x1="2000" />
        </branch>
        <branch name="XLXN_6(15:0)">
            <wire x2="2096" y1="1264" y2="1264" x1="1936" />
            <wire x2="2096" y1="1264" y2="1312" x1="2096" />
            <wire x2="2272" y1="1312" y2="1312" x1="2096" />
        </branch>
        <branch name="IR(12:0)">
            <wire x2="1296" y1="1024" y2="1024" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="1264" y="1024" name="IR(12:0)" orien="R180" />
        <branch name="PCSource(1:0)">
            <wire x2="2272" y1="1440" y2="1440" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1440" name="PCSource(1:0)" orien="R180" />
        <branch name="ALUbranchOutput(15:0)">
            <wire x2="2256" y1="1216" y2="1216" x1="2240" />
            <wire x2="2256" y1="1216" y2="1248" x1="2256" />
            <wire x2="2272" y1="1248" y2="1248" x1="2256" />
        </branch>
        <branch name="CLK">
            <wire x2="592" y1="1296" y2="1296" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1296" name="CLK" orien="R180" />
        <branch name="PCwrite">
            <wire x2="592" y1="1360" y2="1360" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1360" name="PCwrite" orien="R180" />
        <branch name="Reset">
            <wire x2="592" y1="1424" y2="1424" x1="560" />
        </branch>
        <iomarker fontsize="28" x="560" y="1424" name="Reset" orien="R180" />
        <branch name="NewPC(15:14)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="1328" type="branch" />
            <wire x2="1328" y1="1328" y2="1328" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1216" name="ALUbranchOutput(15:0)" orien="R180" />
        <branch name="SelectedPC(15:0)">
            <wire x2="592" y1="1488" y2="1488" x1="512" />
            <wire x2="512" y1="1488" y2="1616" x1="512" />
            <wire x2="2912" y1="1616" y2="1616" x1="512" />
            <wire x2="2912" y1="1248" y2="1248" x1="2832" />
            <wire x2="2912" y1="1248" y2="1616" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1344" name="NewPC(15:0)" orien="R90" />
        <branch name="NewPC(15:0)">
            <wire x2="992" y1="1296" y2="1296" x1="976" />
            <wire x2="1040" y1="1296" y2="1296" x1="992" />
            <wire x2="1088" y1="1296" y2="1296" x1="1040" />
            <wire x2="1088" y1="1296" y2="1504" x1="1088" />
            <wire x2="1344" y1="1504" y2="1504" x1="1088" />
            <wire x2="1040" y1="1296" y2="1344" x1="1040" />
        </branch>
    </sheet>
</drawing>
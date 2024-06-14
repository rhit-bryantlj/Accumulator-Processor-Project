<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="OutputInst(15:0)" />
        <signal name="CLK" />
        <signal name="enable" />
        <signal name="opCode(4:0)" />
        <signal name="Instruction(15:0)" />
        <signal name="CRDataIn(15:0)" />
        <signal name="OutputInst(1:0)" />
        <signal name="SetID" />
        <signal name="Write" />
        <signal name="CRWrite" />
        <signal name="CoolData(15:0)" />
        <signal name="ReadDataA(15:0)" />
        <signal name="DataIn(15:0)" />
        <signal name="XLXN_24(3:0)" />
        <signal name="OutputInst(3:0)" />
        <signal name="OutputInst(15:15)" />
        <signal name="OutputInst(10:0)" />
        <signal name="OutputInst(12:0)" />
        <signal name="SEOUT(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="enable" />
        <port polarity="Input" name="Instruction(15:0)" />
        <port polarity="Input" name="CRDataIn(15:0)" />
        <port polarity="Input" name="SetID" />
        <port polarity="Input" name="Write" />
        <port polarity="Input" name="CRWrite" />
        <port polarity="Output" name="CoolData(15:0)" />
        <port polarity="Output" name="ReadDataA(15:0)" />
        <port polarity="Input" name="DataIn(15:0)" />
        <port polarity="Output" name="SEOUT(15:0)" />
        <blockdef name="coolRegFile">
            <timestamp>2021-5-11T21:51:47</timestamp>
            <rect width="320" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-364" height="24" />
            <line x2="448" y1="-352" y2="-352" x1="384" />
        </blockdef>
        <blockdef name="SignExtender">
            <timestamp>2021-5-11T21:52:37</timestamp>
            <rect width="352" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
        </blockdef>
        <blockdef name="IRCodeForSchm">
            <timestamp>2021-5-11T21:53:53</timestamp>
            <rect width="352" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="RegisterFileV2">
            <timestamp>2021-5-11T22:30:26</timestamp>
            <rect width="368" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="432" y="-44" height="24" />
            <line x2="496" y1="-32" y2="-32" x1="432" />
        </blockdef>
        <block symbolname="SignExtender" name="XLXI_4">
            <blockpin signalname="OutputInst(15:15)" name="IR_msb" />
            <blockpin signalname="OutputInst(10:0)" name="IR_immediate(10:0)" />
            <blockpin signalname="OutputInst(12:0)" name="IR_branch(12:0)" />
            <blockpin signalname="SEOUT(15:0)" name="SEOUT(15:0)" />
        </block>
        <block symbolname="IRCodeForSchm" name="XLXI_5">
            <blockpin signalname="enable" name="enable" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="Instruction(15:0)" name="Instruction(15:0)" />
            <blockpin signalname="OutputInst(15:0)" name="OutputInst(15:0)" />
            <blockpin signalname="opCode(4:0)" name="opCode(4:0)" />
        </block>
        <block symbolname="coolRegFile" name="XLXI_3">
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="CRDataIn(15:0)" name="DataIn(15:0)" />
            <blockpin signalname="CRWrite" name="CRW" />
            <blockpin signalname="OutputInst(1:0)" name="CrAddr(1:0)" />
            <blockpin signalname="SetID" name="SetID" />
            <blockpin signalname="CoolData(15:0)" name="CoolData(15:0)" />
        </block>
        <block symbolname="RegisterFileV2" name="XLXI_11">
            <blockpin signalname="Write" name="Write" />
            <blockpin signalname="OutputInst(3:0)" name="WriteAddr(3:0)" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="DataIn(15:0)" name="DataIn(15:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="ReadAddrA(3:0)" />
            <blockpin signalname="ReadDataA(15:0)" name="ReadDataA(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="576" y="1424" name="XLXI_5" orien="R0">
        </instance>
        <branch name="OutputInst(15:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="1264" type="branch" />
            <wire x2="1088" y1="1264" y2="1264" x1="1056" />
        </branch>
        <branch name="CLK">
            <wire x2="464" y1="688" y2="688" x1="336" />
        </branch>
        <branch name="enable">
            <wire x2="464" y1="784" y2="784" x1="352" />
        </branch>
        <iomarker fontsize="28" x="336" y="688" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="352" y="784" name="enable" orien="R180" />
        <branch name="opCode(4:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1104" y="1392" type="branch" />
            <wire x2="1104" y1="1392" y2="1392" x1="1056" />
        </branch>
        <branch name="Instruction(15:0)">
            <wire x2="576" y1="1392" y2="1392" x1="528" />
        </branch>
        <iomarker fontsize="28" x="528" y="1392" name="Instruction(15:0)" orien="R180" />
        <branch name="enable">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1264" type="branch" />
            <wire x2="576" y1="1264" y2="1264" x1="528" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="528" y="1328" type="branch" />
            <wire x2="576" y1="1328" y2="1328" x1="528" />
        </branch>
        <instance x="1936" y="1280" name="XLXI_3" orien="R0">
        </instance>
        <branch name="CRDataIn(15:0)">
            <wire x2="1936" y1="992" y2="992" x1="1872" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="928" type="branch" />
            <wire x2="1936" y1="928" y2="928" x1="1872" />
        </branch>
        <branch name="OutputInst(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1184" type="branch" />
            <wire x2="1936" y1="1184" y2="1184" x1="1872" />
        </branch>
        <branch name="SetID">
            <wire x2="1936" y1="1248" y2="1248" x1="1872" />
        </branch>
        <instance x="1936" y="1808" name="XLXI_11" orien="R0">
        </instance>
        <branch name="Write">
            <wire x2="1936" y1="1456" y2="1456" x1="1888" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="1584" type="branch" />
            <wire x2="1936" y1="1584" y2="1584" x1="1888" />
        </branch>
        <iomarker fontsize="28" x="1888" y="1456" name="Write" orien="R180" />
        <branch name="CRWrite">
            <wire x2="1936" y1="1056" y2="1056" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1904" y="1056" name="CRWrite" orien="R180" />
        <branch name="CoolData(15:0)">
            <wire x2="2432" y1="928" y2="928" x1="2384" />
        </branch>
        <branch name="ReadDataA(15:0)">
            <wire x2="2496" y1="1776" y2="1776" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="2496" y="1776" name="ReadDataA(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2432" y="928" name="CoolData(15:0)" orien="R0" />
        <branch name="DataIn(15:0)">
            <wire x2="1936" y1="1648" y2="1648" x1="1904" />
        </branch>
        <branch name="XLXN_24(3:0)">
            <wire x2="1936" y1="1712" y2="1712" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1872" y="1248" name="SetID" orien="R180" />
        <instance x="1936" y="2160" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="1872" y="992" name="CRDataIn(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1904" y="1648" name="DataIn(15:0)" orien="R180" />
        <branch name="OutputInst(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1520" type="branch" />
            <wire x2="1936" y1="1520" y2="1520" x1="1872" />
        </branch>
        <branch name="OutputInst(15:15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="2000" type="branch" />
            <wire x2="1936" y1="2000" y2="2000" x1="1888" />
        </branch>
        <branch name="OutputInst(10:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="2064" type="branch" />
            <wire x2="1936" y1="2064" y2="2064" x1="1888" />
        </branch>
        <branch name="OutputInst(12:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1888" y="2128" type="branch" />
            <wire x2="1936" y1="2128" y2="2128" x1="1888" />
        </branch>
        <branch name="SEOUT(15:0)">
            <wire x2="2464" y1="2000" y2="2000" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2464" y="2000" name="SEOUT(15:0)" orien="R0" />
    </sheet>
</drawing>
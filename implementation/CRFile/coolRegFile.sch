<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="low" />
        <signal name="CLK" />
        <signal name="DataIn(15:0)" />
        <signal name="CRW" />
        <signal name="CoolData(15:0)" />
        <signal name="A(15:0)" />
        <signal name="B(15:0)" />
        <signal name="C(15:0)" />
        <signal name="D(15:0)" />
        <signal name="XLXN_143" />
        <signal name="XLXN_145" />
        <signal name="XLXN_146" />
        <signal name="XLXN_148" />
        <signal name="CrAddr(1)" />
        <signal name="CrAddr(0)" />
        <signal name="CurCool(0)" />
        <signal name="CurCool(1:0)" />
        <signal name="CurCool(1)" />
        <signal name="CrAddr(1:0)" />
        <signal name="SetID" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="DataIn(15:0)" />
        <port polarity="Input" name="CRW" />
        <port polarity="Output" name="CoolData(15:0)" />
        <port polarity="Input" name="CrAddr(1:0)" />
        <port polarity="Input" name="SetID" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
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
        <blockdef name="decode2b4">
            <timestamp>2021-4-28T5:10:49</timestamp>
            <line x2="384" y1="-496" y2="-496" x1="320" />
            <line x2="384" y1="-432" y2="-432" x1="320" />
            <line x2="384" y1="-368" y2="-368" x1="320" />
            <line x2="384" y1="-304" y2="-304" x1="320" />
            <rect width="64" x="0" y="-444" height="24" />
            <line x2="0" y1="-432" y2="-432" x1="64" />
            <line x2="0" y1="-496" y2="-496" x1="64" />
            <rect width="256" x="64" y="-544" height="288" />
        </blockdef>
        <blockdef name="fdre">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
        </blockdef>
        <blockdef name="coolRegMux">
            <timestamp>2021-4-28T15:11:17</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
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
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
        </blockdef>
        <block symbolname="fd16re" name="XLXI_54">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_143" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="A(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_55">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_145" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="B(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_56">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_146" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="C(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16re" name="XLXI_57">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="XLXN_148" name="CE" />
            <blockpin signalname="DataIn(15:0)" name="D(15:0)" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="D(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="decode2b4" name="XLXI_62">
            <blockpin signalname="CurCool(1:0)" name="A(1:0)" />
            <blockpin signalname="CRW" name="enable" />
            <blockpin signalname="XLXN_143" name="O0" />
            <blockpin signalname="XLXN_145" name="O1" />
            <blockpin signalname="XLXN_146" name="O2" />
            <blockpin signalname="XLXN_148" name="O3" />
        </block>
        <block symbolname="gnd" name="XLXI_3">
            <blockpin signalname="low" name="G" />
        </block>
        <block symbolname="fdre" name="XLXI_71">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="SetID" name="CE" />
            <blockpin signalname="CrAddr(0)" name="D" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="CurCool(0)" name="Q" />
        </block>
        <block symbolname="fdre" name="XLXI_72">
            <blockpin signalname="CLK" name="C" />
            <blockpin signalname="SetID" name="CE" />
            <blockpin signalname="CrAddr(1)" name="D" />
            <blockpin signalname="low" name="R" />
            <blockpin signalname="CurCool(1)" name="Q" />
        </block>
        <block symbolname="coolRegMux" name="XLXI_75">
            <blockpin signalname="A(15:0)" name="A(15:0)" />
            <blockpin signalname="B(15:0)" name="B(15:0)" />
            <blockpin signalname="C(15:0)" name="C(15:0)" />
            <blockpin signalname="D(15:0)" name="D(15:0)" />
            <blockpin signalname="CurCool(1:0)" name="S(1:0)" />
            <blockpin signalname="CoolData(15:0)" name="O(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="CLK">
            <wire x2="640" y1="368" y2="368" x1="480" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1968" y="784" type="branch" />
            <wire x2="2112" y1="784" y2="784" x1="1968" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1968" y="880" type="branch" />
            <wire x2="2112" y1="880" y2="880" x1="1968" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1952" y="1168" type="branch" />
            <wire x2="2144" y1="1168" y2="1168" x1="1952" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1952" y="1264" type="branch" />
            <wire x2="2144" y1="1264" y2="1264" x1="1952" />
        </branch>
        <branch name="B(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2704" y="1040" type="branch" />
            <wire x2="2704" y1="1040" y2="1040" x1="2528" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1968" y="1568" type="branch" />
            <wire x2="2144" y1="1568" y2="1568" x1="1968" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1968" y="1664" type="branch" />
            <wire x2="2144" y1="1664" y2="1664" x1="1968" />
        </branch>
        <branch name="C(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2704" y="1440" type="branch" />
            <wire x2="2704" y1="1440" y2="1440" x1="2528" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1936" y="1968" type="branch" />
            <wire x2="2144" y1="1968" y2="1968" x1="1936" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="1936" y="2064" type="branch" />
            <wire x2="2144" y1="2064" y2="2064" x1="1936" />
        </branch>
        <branch name="D(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2720" y="1840" type="branch" />
            <wire x2="2720" y1="1840" y2="1840" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="480" y="368" name="CLK" orien="R180" />
        <branch name="CoolData(15:0)">
            <wire x2="4032" y1="240" y2="240" x1="3840" />
        </branch>
        <branch name="DataIn(15:0)">
            <wire x2="1664" y1="144" y2="144" x1="480" />
            <wire x2="1664" y1="144" y2="656" x1="1664" />
            <wire x2="2112" y1="656" y2="656" x1="1664" />
            <wire x2="1664" y1="656" y2="1040" x1="1664" />
            <wire x2="2144" y1="1040" y2="1040" x1="1664" />
            <wire x2="1664" y1="1040" y2="1440" x1="1664" />
            <wire x2="2144" y1="1440" y2="1440" x1="1664" />
            <wire x2="1664" y1="1440" y2="1840" x1="1664" />
            <wire x2="2144" y1="1840" y2="1840" x1="1664" />
        </branch>
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3264" y="240" type="branch" />
            <wire x2="3456" y1="240" y2="240" x1="3264" />
        </branch>
        <branch name="B(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3248" y="304" type="branch" />
            <wire x2="3456" y1="304" y2="304" x1="3248" />
        </branch>
        <branch name="C(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3232" y="368" type="branch" />
            <wire x2="3456" y1="368" y2="368" x1="3232" />
        </branch>
        <branch name="D(15:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3232" y="432" type="branch" />
            <wire x2="3456" y1="432" y2="432" x1="3232" />
        </branch>
        <branch name="CurCool(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="3232" y="496" type="branch" />
            <wire x2="3456" y1="496" y2="496" x1="3232" />
        </branch>
        <branch name="CRW">
            <wire x2="1104" y1="544" y2="544" x1="912" />
        </branch>
        <iomarker fontsize="28" x="4032" y="240" name="CoolData(15:0)" orien="R0" />
        <branch name="A(15:0)">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="2704" y="640" type="branch" />
            <wire x2="2688" y1="656" y2="656" x1="2496" />
            <wire x2="2704" y1="640" y2="640" x1="2688" />
            <wire x2="2688" y1="640" y2="656" x1="2688" />
        </branch>
        <instance x="2144" y="2096" name="XLXI_57" orien="R0" />
        <instance x="2144" y="1696" name="XLXI_56" orien="R0" />
        <instance x="2144" y="1296" name="XLXI_55" orien="R0" />
        <instance x="2112" y="912" name="XLXI_54" orien="R0" />
        <branch name="XLXN_143">
            <wire x2="2096" y1="544" y2="544" x1="1488" />
            <wire x2="2096" y1="544" y2="720" x1="2096" />
            <wire x2="2112" y1="720" y2="720" x1="2096" />
        </branch>
        <instance x="528" y="1600" name="XLXI_3" orien="R0" />
        <branch name="low">
            <attrtext style="alignment:SOFT-LEFT" attrname="Name" x="672" y="1456" type="branch" />
            <wire x2="672" y1="1456" y2="1456" x1="592" />
            <wire x2="592" y1="1456" y2="1472" x1="592" />
        </branch>
        <iomarker fontsize="28" x="912" y="544" name="CRW" orien="R180" />
        <instance x="288" y="864" name="XLXI_71" orien="R0" />
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1120" type="branch" />
            <wire x2="288" y1="1120" y2="1120" x1="256" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="1216" type="branch" />
            <wire x2="288" y1="1216" y2="1216" x1="256" />
        </branch>
        <branch name="CrAddr(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="608" type="branch" />
            <wire x2="288" y1="608" y2="608" x1="240" />
        </branch>
        <branch name="SetID">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="672" type="branch" />
            <wire x2="288" y1="672" y2="672" x1="240" />
        </branch>
        <branch name="CLK">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="736" type="branch" />
            <wire x2="288" y1="736" y2="736" x1="240" />
        </branch>
        <branch name="low">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="240" y="832" type="branch" />
            <wire x2="288" y1="832" y2="832" x1="240" />
        </branch>
        <branch name="CurCool(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="608" type="branch" />
            <wire x2="688" y1="608" y2="608" x1="672" />
        </branch>
        <branch name="CurCool(1:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="608" type="branch" />
            <wire x2="1104" y1="608" y2="608" x1="1024" />
        </branch>
        <instance x="1104" y="1040" name="XLXI_62" orien="R0">
        </instance>
        <branch name="XLXN_145">
            <wire x2="1808" y1="608" y2="608" x1="1488" />
            <wire x2="1808" y1="608" y2="1104" x1="1808" />
            <wire x2="2144" y1="1104" y2="1104" x1="1808" />
        </branch>
        <branch name="XLXN_146">
            <wire x2="1792" y1="672" y2="672" x1="1488" />
            <wire x2="1792" y1="672" y2="1504" x1="1792" />
            <wire x2="2144" y1="1504" y2="1504" x1="1792" />
        </branch>
        <branch name="XLXN_148">
            <wire x2="1776" y1="736" y2="736" x1="1488" />
            <wire x2="1776" y1="736" y2="1904" x1="1776" />
            <wire x2="2144" y1="1904" y2="1904" x1="1776" />
        </branch>
        <instance x="288" y="1248" name="XLXI_72" orien="R0" />
        <branch name="CrAddr(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="256" y="992" type="branch" />
            <wire x2="288" y1="992" y2="992" x1="256" />
        </branch>
        <branch name="SetID">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="208" y="1056" type="branch" />
            <wire x2="288" y1="1056" y2="1056" x1="208" />
        </branch>
        <branch name="CurCool(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="688" y="992" type="branch" />
            <wire x2="688" y1="992" y2="992" x1="672" />
        </branch>
        <iomarker fontsize="28" x="480" y="144" name="DataIn(15:0)" orien="R180" />
        <branch name="CrAddr(1:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="272" type="branch" />
            <wire x2="432" y1="272" y2="272" x1="304" />
        </branch>
        <branch name="SetID">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="432" y="224" type="branch" />
            <wire x2="432" y1="224" y2="224" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="224" name="SetID" orien="R180" />
        <iomarker fontsize="28" x="304" y="272" name="CrAddr(1:0)" orien="R180" />
        <instance x="3456" y="528" name="XLXI_75" orien="R0">
        </instance>
    </sheet>
</drawing>
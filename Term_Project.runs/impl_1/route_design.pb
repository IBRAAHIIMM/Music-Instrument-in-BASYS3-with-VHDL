
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px? 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px? 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px? 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px? 
y
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254h px? 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px? 
B
-Phase 1 Build RT Design | Checksum: 477f53e9
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:20 ; elapsed = 00:00:17 . Memory (MB): peak = 1135.617 ; gain = 95.9492default:defaulth px? 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px? 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px? 
A
,Phase 2.1 Create Timer | Checksum: 477f53e9
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:20 ; elapsed = 00:00:17 . Memory (MB): peak = 1135.617 ; gain = 95.9492default:defaulth px? 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px? 
M
8Phase 2.2 Fix Topology Constraints | Checksum: 477f53e9
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:20 ; elapsed = 00:00:17 . Memory (MB): peak = 1135.617 ; gain = 95.9492default:defaulth px? 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px? 
F
1Phase 2.3 Pre Route Cleanup | Checksum: 477f53e9
*commonh px? 
?

%s
*constraints2p
\Time (s): cpu = 00:00:20 ; elapsed = 00:00:17 . Memory (MB): peak = 1135.617 ; gain = 95.9492default:defaulth px? 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px? 
B
-Phase 2.4 Update Timing | Checksum: a987a006
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:24 ; elapsed = 00:00:20 . Memory (MB): peak = 1146.504 ; gain = 106.8362default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-14.024| TNS=-42.289| WHS=-0.067 | THS=-0.580 |
2default:defaultZ35-416h px? 
I
4Phase 2 Router Initialization | Checksum: 11ee4f0d8
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:26 ; elapsed = 00:00:21 . Memory (MB): peak = 1152.586 ; gain = 112.9182default:defaulth px? 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px? 
C
.Phase 3 Initial Routing | Checksum: 207e846bf
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:00:31 ; elapsed = 00:00:23 . Memory (MB): peak = 1152.586 ; gain = 112.9182default:defaulth px? 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 4.1.1 Update Timing | Checksum: 235a683df
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:26 ; elapsed = 00:00:53 . Memory (MB): peak = 1152.586 ; gain = 112.9182default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-17.038| TNS=-167.685| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
v

Phase %s%s
101*constraints2
4.1.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px? 
t

Phase %s%s
101*constraints2
4.1.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
F
1Phase 4.1.2.1 Update Timing | Checksum: da6c38bc
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:27 ; elapsed = 00:00:54 . Memory (MB): peak = 1152.586 ; gain = 112.9182default:defaulth px? 
u

Phase %s%s
101*constraints2
4.1.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101h px? 
H
3Phase 4.1.2.2 Fast Budgeting | Checksum: 19c4b91c9
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:27 ; elapsed = 00:00:54 . Memory (MB): peak = 1152.586 ; gain = 112.9182default:defaulth px? 
I
4Phase 4.1.2 GlobIterForTiming | Checksum: 22eff34f0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:27 ; elapsed = 00:00:54 . Memory (MB): peak = 1152.586 ; gain = 112.9182default:defaulth px? 
H
3Phase 4.1 Global Iteration 0 | Checksum: 22eff34f0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:01:27 ; elapsed = 00:00:54 . Memory (MB): peak = 1152.586 ; gain = 112.9182default:defaulth px? 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
4.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
D
/Phase 4.2.1 Update Timing | Checksum: f457e60a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:13 ; elapsed = 00:01:21 . Memory (MB): peak = 1152.586 ; gain = 112.9182default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-16.877| TNS=-132.472| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
v

Phase %s%s
101*constraints2
4.2.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px? 
u

Phase %s%s
101*constraints2
4.2.2.1 2default:default2"
Fast Budgeting2default:defaultZ18-101h px? 
H
3Phase 4.2.2.1 Fast Budgeting | Checksum: 104036dc0
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:13 ; elapsed = 00:01:22 . Memory (MB): peak = 1152.586 ; gain = 112.9182default:defaulth px? 
I
4Phase 4.2.2 GlobIterForTiming | Checksum: 24ea7447e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:14 ; elapsed = 00:01:22 . Memory (MB): peak = 1152.586 ; gain = 112.9182default:defaulth px? 
H
3Phase 4.2 Global Iteration 1 | Checksum: 24ea7447e
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:14 ; elapsed = 00:01:22 . Memory (MB): peak = 1152.586 ; gain = 112.9182default:defaulth px? 
u

Phase %s%s
101*constraints2
4.3 2default:default2&
Global Iteration 22default:defaultZ18-101h px? 
H
3Phase 4.3 Global Iteration 2 | Checksum: 1464e1c71
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:21 ; elapsed = 00:01:28 . Memory (MB): peak = 1156.133 ; gain = 116.4652default:defaulth px? 
F
1Phase 4 Rip-up And Reroute | Checksum: 1464e1c71
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:21 ; elapsed = 00:01:28 . Memory (MB): peak = 1156.133 ; gain = 116.4652default:defaulth px? 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 5.1.1 Update Timing | Checksum: 19cc6515a
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:22 ; elapsed = 00:01:28 . Memory (MB): peak = 1156.133 ; gain = 116.4652default:defaulth px? 
?
Intermediate Timing Summary %s164*route2K
7| WNS=-16.877| TNS=-121.995| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px? 
C
.Phase 5.1 Delay CleanUp | Checksum: 213d07b62
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:23 ; elapsed = 00:01:29 . Memory (MB): peak = 1163.285 ; gain = 123.6172default:defaulth px? 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px? 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 213d07b62
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:23 ; elapsed = 00:01:29 . Memory (MB): peak = 1163.285 ; gain = 123.6172default:defaulth px? 
O
:Phase 5 Delay and Skew Optimization | Checksum: 213d07b62
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:23 ; elapsed = 00:01:29 . Memory (MB): peak = 1163.285 ; gain = 123.6172default:defaulth px? 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px? 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px? 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px? 
E
0Phase 6.1.1 Update Timing | Checksum: 263a62a93
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:24 ; elapsed = 00:01:29 . Memory (MB): peak = 1163.285 ; gain = 123.6172default:defaulth px? 
?
Intermediate Timing Summary %s164*route2J
6| WNS=-16.690| TNS=-94.698| WHS=0.244  | THS=0.000  |
2default:defaultZ35-416h px? 
C
.Phase 6.1 Hold Fix Iter | Checksum: 263a62a93
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:24 ; elapsed = 00:01:29 . Memory (MB): peak = 1163.285 ; gain = 123.6172default:defaulth px? 
A
,Phase 6 Post Hold Fix | Checksum: 263a62a93
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:24 ; elapsed = 00:01:29 . Memory (MB): peak = 1163.285 ; gain = 123.6172default:defaulth px? 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px? 
B
-Phase 7 Route finalize | Checksum: 28e77838b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:24 ; elapsed = 00:01:29 . Memory (MB): peak = 1163.285 ; gain = 123.6172default:defaulth px? 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px? 
I
4Phase 8 Verifying routed nets | Checksum: 28e77838b
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:24 ; elapsed = 00:01:29 . Memory (MB): peak = 1163.285 ; gain = 123.6172default:defaulth px? 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px? 
E
0Phase 9 Depositing Routes | Checksum: 280ae0689
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:25 ; elapsed = 00:01:30 . Memory (MB): peak = 1163.285 ; gain = 123.6172default:defaulth px? 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px? 
?
Estimated Timing Summary %s
57*route2J
6| WNS=-16.690| TNS=-94.698| WHS=0.244  | THS=0.000  |
2default:defaultZ35-57h px? 
B
!Router estimated timing not met.
128*routeZ35-328h px? 
G
2Phase 10 Post Router Timing | Checksum: 280ae0689
*commonh px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:25 ; elapsed = 00:01:30 . Memory (MB): peak = 1163.285 ; gain = 123.6172default:defaulth px? 
=
Router Completed Successfully
16*routeZ35-16h px? 
?

%s
*constraints2q
]Time (s): cpu = 00:02:25 ; elapsed = 00:01:31 . Memory (MB): peak = 1163.285 ; gain = 123.6172default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582default:default2
22default:default2
12default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:02:272default:default2
00:01:322default:default2
1163.2852default:default2
123.6172default:defaultZ17-268h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:032default:default2
00:00:012default:default2
1163.2852default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2u
aC:/Users/karadere/Vivado Projects/Term_Project/Term_Project.runs/impl_1/Instrument_TOP_routed.dcp2default:defaultZ17-1381h px? 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px? 
?
#The results of DRC are in file %s.
168*coretcl2?
eC:/Users/karadere/Vivado Projects/Term_Project/Term_Project.runs/impl_1/Instrument_TOP_drc_routed.rpteC:/Users/karadere/Vivado Projects/Term_Project/Term_Project.runs/impl_1/Instrument_TOP_drc_routed.rpt2default:default8Z2-168h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
Y
$Running Methodology with %s threads
74*drc2
22default:defaultZ23-133h px? 
?
2The results of Report Methodology are in file %s.
450*coretcl2?
qC:/Users/karadere/Vivado Projects/Term_Project/Term_Project.runs/impl_1/Instrument_TOP_methodology_drc_routed.rptqC:/Users/karadere/Vivado Projects/Term_Project/Term_Project.runs/impl_1/Instrument_TOP_methodology_drc_routed.rpt2default:default8Z2-1520h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px? 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px? 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px? 
?
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px? 
?
Command: %s
53*	vivadotcl2?
?report_power -file Instrument_TOP_power_routed.rpt -pb Instrument_TOP_power_summary_routed.pb -rpx Instrument_TOP_power_routed.rpx2default:defaultZ4-113h px? 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px? 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
682default:default2
22default:default2
22default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px? 


End Record
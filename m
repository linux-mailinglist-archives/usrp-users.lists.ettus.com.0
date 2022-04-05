Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 222044F22A1
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 07:42:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 08799384DF3
	for <lists+usrp-users@lfdr.de>; Tue,  5 Apr 2022 01:42:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649137369; bh=Kua2y+SnIBv6709XLz0+UOTIm9+EoANCotKt+B68iyI=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=rYNeb/AGoMDGA8ZE9gMQBbstYS5Wncjpbo/26Zob81m1wHG7X64iPrLeJytjlf5WB
	 gtEbumZqj5S7GmmMZ1UKip/g9lF+GDvATzcChk+bBBfstvioAGrj6s9k3gb7hFoBLh
	 LceGxi++ZqLO+Rx3Z0DiK9gI9t1QsivoQnkRUbk0WWE4cNqJ+4XHC2PWPJJeh1DBX2
	 nZado6xKJ85iDiwK3bUsiX8HSzAQIljB4dPtCgLEkWUyGH5yjob97TWjZEGCbbkK/n
	 ygo+/jBX4BdJ8I0hQ7SUXP2Twt5zjeFA5fAcge/Ja6l+bT/FJzHT0ourRjFK735vRZ
	 QZX68qKmbPmBA==
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by mm2.emwd.com (Postfix) with ESMTPS id DE852384D81
	for <usrp-users@lists.ettus.com>; Tue,  5 Apr 2022 01:41:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AkpdYvDL";
	dkim-atps=neutral
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-2eb543fe73eso64522207b3.5
        for <usrp-users@lists.ettus.com>; Mon, 04 Apr 2022 22:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=///jpX1MyX2dHB1TZ5FbsHhTAifVAI4Wxwa0pWLM20g=;
        b=AkpdYvDLQtybER8aG/eMXZFzg3g1339MGc5rVTAuBXSt9yBD4ila0ZWoWtInmNr2t6
         Pt303ji/Iiti6mSdcaQSGOI1LpaJg1i3+wHnHPvTqTR/yTcx0OEKF8HK6Yhq9TZDHd6g
         vzNoi+2zKlt6r4S0U2tvmSo+9slVCRJQS9cWCM0p5LAO4IXchsMBQDjJHAJLfQ+JTUpU
         wlmbyyBJmlXNBdh1blrqsngI12EXa9TbZCkmy4vPoC3ydyLgAc/tYYs8wHLENPSLh7Jv
         0GBz0TWfR9R9fyoQODszbX2pnXmJ52ftp5N0yitPYgMNu3nSm6lmhvCZ9rv+rl1Sy7qE
         xLuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=///jpX1MyX2dHB1TZ5FbsHhTAifVAI4Wxwa0pWLM20g=;
        b=Tst+SjblH2JMEoSxCXu3kLp0JDs1HkWWnWv7TqjfhqlCeDj+BAt/9T6MiCF1AUzFNJ
         vyAJVJuSUg43e1PtXHKaI42obamTYt8fE86lEo2+PXZewNfyPlA38Gowv5Wz9F4k4Ory
         yL6cwVHTVuV8mfif/yxy6jOtOSGfFThmFljzCJnhfOHh4x0V2AseAeLvTpcjr/tIP/tM
         AAN4kdw9287Z2RJ2ZVwFGbTQKjHhALNBCVJ1KecqwQMoBz1e3a9jUyS4JEPeNGMi3DcY
         ugovuVJgzR4CRhV5sHnm0FAK1UyBIwhK6F7/1VWUCThvioJv10B4zB2Tu2F1BPbytfrU
         ukjQ==
X-Gm-Message-State: AOAM533XJ4LhcHorlpOPmfOVB1qmoRvZcLCFnVt8K2TcwYPb/fzgOaDw
	uNVzlWneagG2DyvppEPuXtnVJKWxlyA+wbWn4mUVW2uU71ZseMTLjCk=
X-Google-Smtp-Source: ABdhPJx6Lh5bJKuUCJngDnik0kzqui/HLRJJ7M/ynKyTm6RxmesdQBbbnYpOZvbEyVU3Ean12SWR35kFU0j44Yox4OM=
X-Received: by 2002:a81:538a:0:b0:2ea:9ba:e061 with SMTP id
 h132-20020a81538a000000b002ea09bae061mr1315813ywb.97.1649137308504; Mon, 04
 Apr 2022 22:41:48 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Tue, 5 Apr 2022 10:11:37 +0430
Message-ID: <CAA=S3PsyGDRyUyRC_fYYhDXes8p7+z1Qazw7XxWL9_n1UxRUjg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: QMHJW3T5I4HUF65Q2BRQHSLBUVZP5OPB
X-Message-ID-Hash: QMHJW3T5I4HUF65Q2BRQHSLBUVZP5OPB
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] When I run the gain example testbench file I am faced with errors.....
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QMHJW3T5I4HUF65Q2BRQHSLBUVZP5OPB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3394228091289203452=="

--===============3394228091289203452==
Content-Type: multipart/alternative; boundary="00000000000075973305dbe1b39b"

--00000000000075973305dbe1b39b
Content-Type: text/plain; charset="UTF-8"

When I run the gain example testbench file I am faced with errors.....How
can I solve this?


Vivado Simulator does not support tracing of System Verilog Dynamic Type
object.
========================================================
TESTBENCH STARTED: rfnoc_block_gain_tb
========================================================
[TEST CASE   1] (t =         0 ns) BEGIN: Flush block then reset it...

*Fatal: Timeout: Test "Flush block then reset it" time limit exceeded*Time:
10 us  Iteration: 0  Process:
/PkgTestExec/TestExec::start_timeout/Block260_9/timeout  File:
/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv
$finish called at time : 10 us : File
"/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv" Line
235
INFO: [USF-XSim-96] XSim completed. Design snapshot
'rfnoc_block_gain_tb_behav' loaded.
INFO: [USF-XSim-97] XSim simulation ran for 1000000000us
launch_simulation: Time (s): cpu = 00:00:21 ; elapsed = 00:00:33 . Memory
(MB): peak = 1462.531 ; gain = 80.324 ; free physical = 285 ; free virtual
= 9898
# if { [info exists ::env(VIV_SYNTH_TOP)] } {
#    puts "BUILDER: Synthesizing"
#    # Synthesize requested modules
#    foreach synth_top "$::env(VIV_SYNTH_TOP)" {
#       set_property top $synth_top [current_fileset]
#       synth_design -mode out_of_context
#       # Perform a simple regex-based search for all clock signals and
constrain
#       # them to 500 MHz for the timing report.
#       set clk_regexp "(?i)^(?!.*en.*).*(clk|clock).*"
#       foreach clk_inst [get_ports -regexp $clk_regexp] {
#          create_clock -name $clk_inst -period 2.0 [get_ports $clk_inst]
#       }
#       report_utilization -no_primitives -file
${working_dir}/${synth_top}_synth.rpt
#       report_timing_summary -setup -max_paths 3 -unique_pins -no_header
-append -file ${working_dir}/${synth_top}_synth.rpt
#       write_checkpoint -force ${working_dir}/${synth_top}_synth.dcp
#    }
# } else {
#    puts "BUILDER: Skipping resource report because VIV_SYNTH_TOP is not
set"
# }
BUILDER: Synthesizing
# if [string equal $vivado_mode "batch"] {
#     puts "BUILDER: Closing project"
#     close_project
# } else {
#     puts "BUILDER: In GUI mode. Leaving project open."
# }
BUILDER: Closing project
INFO: [Common 17-206] Exiting Vivado at Thu Feb 10 10:02:45 2022...
make[4]: warning:  Clock skew detected.  Your build may be incomplete.
make[3]: warning:  Clock skew detected.  Your build may be incomplete.
Built target rfnoc_block_gain_tb
make[2]: warning:  Clock skew detected.  Your build may be incomplete.
make[1]: warning:  Clock skew detected.  Your build may be incomplete.
make: warning:  Clock skew detected.  Your build may be incomplete.

--00000000000075973305dbe1b39b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When I run the=C2=A0gain example testbench file I am=C2=A0=
faced with errors.....How can I solve this?<br><div><br></div><div><br></di=
v><div>Vivado Simulator does not support tracing of System Verilog Dynamic =
Type object.<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>TESTBENCH STARTED: rfnoc_block_gain=
_tb<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 0 ns) BEGIN: Flush block then reset it...<br><b>Fatal: Timeou=
t: Test &quot;Flush block then reset it&quot; time limit exceeded<br></b>Ti=
me: 10 us =C2=A0Iteration: 0 =C2=A0Process: /PkgTestExec/TestExec::start_ti=
meout/Block260_9/timeout =C2=A0File: /home/sp/Documents/uhd-4.1.0.5/fpga/us=
rp3/sim/rfnoc/PkgTestExec.sv<br>$finish called at time : 10 us : File &quot=
;/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv&quot; L=
ine 235<br>INFO: [USF-XSim-96] XSim completed. Design snapshot &#39;rfnoc_b=
lock_gain_tb_behav&#39; loaded.<br>INFO: [USF-XSim-97] XSim simulation ran =
for 1000000000us<br>launch_simulation: Time (s): cpu =3D 00:00:21 ; elapsed=
 =3D 00:00:33 . Memory (MB): peak =3D 1462.531 ; gain =3D 80.324 ; free phy=
sical =3D 285 ; free virtual =3D 9898<br># if { [info exists ::env(VIV_SYNT=
H_TOP)] } {<br># =C2=A0 =C2=A0puts &quot;BUILDER: Synthesizing&quot;<br># =
=C2=A0 =C2=A0# Synthesize requested modules<br># =C2=A0 =C2=A0foreach synth=
_top &quot;$::env(VIV_SYNTH_TOP)&quot; {<br># =C2=A0 =C2=A0 =C2=A0 set_prop=
erty top $synth_top [current_fileset]<br># =C2=A0 =C2=A0 =C2=A0 synth_desig=
n -mode out_of_context<br># =C2=A0 =C2=A0 =C2=A0 # Perform a simple regex-b=
ased search for all clock signals and constrain<br># =C2=A0 =C2=A0 =C2=A0 #=
 them to 500 MHz for the timing report.<br># =C2=A0 =C2=A0 =C2=A0 set clk_r=
egexp &quot;(?i)^(?!.*en.*).*(clk|clock).*&quot;<br># =C2=A0 =C2=A0 =C2=A0 =
foreach clk_inst [get_ports -regexp $clk_regexp] {<br># =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0create_clock -name $clk_inst -period 2.0 [get_ports $clk_i=
nst]<br># =C2=A0 =C2=A0 =C2=A0 }<br># =C2=A0 =C2=A0 =C2=A0 report_utilizati=
on -no_primitives -file ${working_dir}/${synth_top}_synth.rpt<br># =C2=A0 =
=C2=A0 =C2=A0 report_timing_summary -setup -max_paths 3 -unique_pins -no_he=
ader -append -file ${working_dir}/${synth_top}_synth.rpt<br># =C2=A0 =C2=A0=
 =C2=A0 write_checkpoint -force ${working_dir}/${synth_top}_synth.dcp<br># =
=C2=A0 =C2=A0}<br># } else {<br># =C2=A0 =C2=A0puts &quot;BUILDER: Skipping=
 resource report because VIV_SYNTH_TOP is not set&quot;<br># }<br>BUILDER: =
Synthesizing<br># if [string equal $vivado_mode &quot;batch&quot;] {<br># =
=C2=A0 =C2=A0 puts &quot;BUILDER: Closing project&quot;<br># =C2=A0 =C2=A0 =
close_project<br># } else {<br># =C2=A0 =C2=A0 puts &quot;BUILDER: In GUI m=
ode. Leaving project open.&quot;<br># }<br>BUILDER: Closing project<br>INFO=
: [Common 17-206] Exiting Vivado at Thu Feb 10 10:02:45 2022...<br>make[4]:=
 warning: =C2=A0Clock skew detected.=C2=A0 Your build may be incomplete.<br=
>make[3]: warning: =C2=A0Clock skew detected.=C2=A0 Your build may be incom=
plete.<br>Built target rfnoc_block_gain_tb<br>make[2]: warning: =C2=A0Clock=
 skew detected.=C2=A0 Your build may be incomplete.<br>make[1]: warning: =
=C2=A0Clock skew detected.=C2=A0 Your build may be incomplete.<br>make: war=
ning: =C2=A0Clock skew detected.=C2=A0 Your build may be incomplete.<br></d=
iv></div>

--00000000000075973305dbe1b39b--

--===============3394228091289203452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3394228091289203452==--

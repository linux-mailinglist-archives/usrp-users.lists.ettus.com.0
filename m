Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB0F5046C4
	for <lists+usrp-users@lfdr.de>; Sun, 17 Apr 2022 07:32:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A4323846BD
	for <lists+usrp-users@lfdr.de>; Sun, 17 Apr 2022 01:32:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650173549; bh=IpzGYqbtL2geqKZPljxRUOPNzd7NJy3NKFNXgtqg6Ao=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fJ5bg0JKVybItn8eFwnRs6ARqDbzXLizO5ipRqt8KBmQFjDFhcudOUrx2bMJe4XaL
	 z8mDWABr4rYW9bC/JE8jktkv94hEHdCP+ve6lwdV9mBwQr9GcEt9vf+KmT0xtmG+ns
	 jxgBbx3DD+1wSmcFkonUgmVZ+tyNSayEqocBK/Gx40IcEkhRNu3QGW3hSP3LqZ8XrZ
	 aGkKBKxPDlrwE7VYH7tfSYatBPPHuJpoDVnt4r6CPRxrCGSB5PwCS/kOG1AwV+QKli
	 r+ZbejST8BQ048Ha2ib0+wsCBh1pCuQ7wT8HspE6+ukz6RFalUtYuhJj6qy6GlRTcJ
	 4BcsFDyyGgr2g==
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A427A384461
	for <usrp-users@lists.ettus.com>; Sun, 17 Apr 2022 01:31:23 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KHpdZPMH";
	dkim-atps=neutral
Received: by mail-yb1-f182.google.com with SMTP id f38so20868471ybi.3
        for <usrp-users@lists.ettus.com>; Sat, 16 Apr 2022 22:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=NJjxL/zrwCxzTXuPt9+FiS7UuTs9lL7iTnSHn0Qwe2g=;
        b=KHpdZPMHQrXpIKvqgWSpq37xhRUEMIlCBm4Owxv2y+wHatgou+DC6tU1AosNroz06D
         u/WFLljKQT1ybVzrg8S/z2JmRvn3dqN6SoSwdGVmoXxmih5ghXS+D5TEKUAUuHWOonHW
         Sf/nNXkb5TH6sUgIbX2QZMtIpiVElDaLauAjGg4v1D3nN4EIdhDYIimyveEJsokF4fO9
         0VtNZe+q1nd9P7iTBRkkn08iLmQFirYLd6k9Y8VvAFBXUlkdL9e+yRW180YpBShghFZI
         yrx91PFcFNLv160EyfuqamxKGn4MaB7b3QjkzeQ5A1SMDuTWipooWrxtWzMg5rYglZYZ
         TLuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=NJjxL/zrwCxzTXuPt9+FiS7UuTs9lL7iTnSHn0Qwe2g=;
        b=78ulumODx7jvi6jiz3fiYnLhJ4zHWW2ECZI0Y60PqbLHGefhuV2J+dLZDigbdxnOD9
         5SxfKxEZzOCfGGdT3fVhmaBuvwq5EmW9xKpzswLYTezcLtgT6zsG/P/X+Qc0AdHgdNDj
         8y/wgnePBmlJtp1LtWvRJ3f3Ajh9wNbufpeikKjdOaASXUDimegp+zdN5YenLxHvjOn6
         9M83fBSUYm8q+nMxx2LN2+akSlnzVSoRrPMTGvyJHtX/DsUgRnNmE0WBBNrjnZUBSsEW
         03MpdoO0oMsw8cvHD5LNXHhIbGY5LyPmBof4Lhpqvoyk0w5Y7l5yXKxiIS5qRYe4n8gM
         24pQ==
X-Gm-Message-State: AOAM531owplb6nSZQlUFZJASehFgmm9PS2WlBKTeYsWxTKrCHelY4BW/
	fbad1IaekakZlXkNAJ1nhQr2CBzOl6vtJC2qLjm5S/uvPIQE2pSO
X-Google-Smtp-Source: ABdhPJzF+6nhEKWDJ3XS7IYptTEUyx79RwBkHQGrgs77NDC/XF4ADxuDdz1C2M+cdi4RtT9FrkbPMjGaUykQPojEbKI=
X-Received: by 2002:a05:6902:1147:b0:644:cccc:fe71 with SMTP id
 p7-20020a056902114700b00644ccccfe71mr3119682ybu.229.1650173482095; Sat, 16
 Apr 2022 22:31:22 -0700 (PDT)
MIME-Version: 1.0
From: sp h <stackprogramer@gmail.com>
Date: Sun, 17 Apr 2022 10:01:11 +0430
Message-ID: <CAA=S3PvWMW7_voNqT5au=L+VX_Fi-RtXckkenHDAFfHNzq5qMQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: KKJWNKQJVQZFM7SPVXFJ3A4RLFAFFZA2
X-Message-ID-Hash: KKJWNKQJVQZFM7SPVXFJ3A4RLFAFFZA2
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Error: Incorrect NOC_ID Value in creating new RFNOC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KKJWNKQJVQZFM7SPVXFJ3A4RLFAFFZA2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1769745213301490667=="

--===============1769745213301490667==
Content-Type: multipart/alternative; boundary="00000000000037d8a005dcd2f439"

--00000000000037d8a005dcd2f439
Content-Type: text/plain; charset="UTF-8"

Hi, when I changed the name of the Gain block to another name, I want to
run the test bench and simulated it but I was faced with these errors.......
How can solve my problems?

========================================================
TESTBENCH STARTED: chdr_crossbar_nxn: IP_OPTION = HDL_IP
========================================================
[TEST CASE   1] (t =         0 ns) BEGIN: Flush block then reset it...
[TEST CASE   1] (t =      6450 ns) DONE... Passed
[TEST CASE   2] (t =      6450 ns) BEGIN: Verify Block Info...
Error: Incorrect NOC_ID Value
Time: 6450 ns  Iteration: 1  Process:
/rfnoc_block_correlate_tb/Initial172_431  File:
/home/sp/Documents/rfnoc-transceiver/rfnoc/fpga/rfnoc_block_correlate/
rfnoc_block_correlate_tb.sv
$stop called at time : 6450 ns : File
"/home/sp/Documents/rfnoc-transceiver/rfnoc/fpga/rfnoc_block_correlate/
rfnoc_block_correlate_tb.sv" Line 201
INFO: [USF-XSim-96] XSim completed. Design snapshot
'rfnoc_block_correlate_tb_behav' loaded.
INFO: [USF-XSim-97] XSim simulation ran for 1000000000us
launch_simulation: Time (s): cpu = 00:00:20 ; elapsed = 00:00:26 . Memory
(MB): peak = 1484.270 ; gain = 64.477 ; free physical = 294 ; free virtual
= 9811
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
INFO: [Common 17-206] Exiting Vivado at Sun Apr 17 09:55:45 2022...
Built target rfnoc_block_correlate_tb

--00000000000037d8a005dcd2f439
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, when I changed the name of the Gain block to another n=
ame, I want to run the test bench and simulated it but I was faced with the=
se errors.......<div>How can solve my problems?<br><div><br></div><div>=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>TESTBENCH STARTED: chdr_crossbar_nxn: IP_OPTION =3D HDL_=
IP<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 0 ns) BEGIN: Flush block then reset it...<br>[TEST CASE =C2=A0 1=
] (t =3D =C2=A0 =C2=A0 =C2=A06450 ns) DONE... Passed<br>[TEST CASE =C2=A0 2=
] (t =3D =C2=A0 =C2=A0 =C2=A06450 ns) BEGIN: Verify Block Info...<br>Error:=
 Incorrect NOC_ID Value<br>Time: 6450 ns =C2=A0Iteration: 1 =C2=A0Process: =
/rfnoc_block_correlate_tb/Initial172_431 =C2=A0File: /home/sp/Documents/rfn=
oc-transceiver/rfnoc/fpga/rfnoc_block_correlate/<a href=3D"http://rfnoc_blo=
ck_correlate_tb.sv">rfnoc_block_correlate_tb.sv</a><br>$stop called at time=
 : 6450 ns : File &quot;/home/sp/Documents/rfnoc-transceiver/rfnoc/fpga/rfn=
oc_block_correlate/<a href=3D"http://rfnoc_block_correlate_tb.sv">rfnoc_blo=
ck_correlate_tb.sv</a>&quot; Line 201<br>INFO: [USF-XSim-96] XSim completed=
. Design snapshot &#39;rfnoc_block_correlate_tb_behav&#39; loaded.<br>INFO:=
 [USF-XSim-97] XSim simulation ran for 1000000000us<br>launch_simulation: T=
ime (s): cpu =3D 00:00:20 ; elapsed =3D 00:00:26 . Memory (MB): peak =3D 14=
84.270 ; gain =3D 64.477 ; free physical =3D 294 ; free virtual =3D 9811<br=
># if { [info exists ::env(VIV_SYNTH_TOP)] } {<br># =C2=A0 =C2=A0puts &quot=
;BUILDER: Synthesizing&quot;<br># =C2=A0 =C2=A0# Synthesize requested modul=
es<br># =C2=A0 =C2=A0foreach synth_top &quot;$::env(VIV_SYNTH_TOP)&quot; {<=
br># =C2=A0 =C2=A0 =C2=A0 set_property top $synth_top [current_fileset]<br>=
# =C2=A0 =C2=A0 =C2=A0 synth_design -mode out_of_context<br># =C2=A0 =C2=A0=
 =C2=A0 # Perform a simple regex-based search for all clock signals and con=
strain<br># =C2=A0 =C2=A0 =C2=A0 # them to 500 MHz for the timing report.<b=
r># =C2=A0 =C2=A0 =C2=A0 set clk_regexp &quot;(?i)^(?!.*en.*).*(clk|clock).=
*&quot;<br># =C2=A0 =C2=A0 =C2=A0 foreach clk_inst [get_ports -regexp $clk_=
regexp] {<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0create_clock -name $clk_in=
st -period 2.0 [get_ports $clk_inst]<br># =C2=A0 =C2=A0 =C2=A0 }<br># =C2=
=A0 =C2=A0 =C2=A0 report_utilization -no_primitives -file ${working_dir}/${=
synth_top}_synth.rpt<br># =C2=A0 =C2=A0 =C2=A0 report_timing_summary -setup=
 -max_paths 3 -unique_pins -no_header -append -file ${working_dir}/${synth_=
top}_synth.rpt<br># =C2=A0 =C2=A0 =C2=A0 write_checkpoint -force ${working_=
dir}/${synth_top}_synth.dcp<br># =C2=A0 =C2=A0}<br># } else {<br># =C2=A0 =
=C2=A0puts &quot;BUILDER: Skipping resource report because VIV_SYNTH_TOP is=
 not set&quot;<br># }<br>BUILDER: Synthesizing<br># if [string equal $vivad=
o_mode &quot;batch&quot;] {<br># =C2=A0 =C2=A0 puts &quot;BUILDER: Closing =
project&quot;<br># =C2=A0 =C2=A0 close_project<br># } else {<br># =C2=A0 =
=C2=A0 puts &quot;BUILDER: In GUI mode. Leaving project open.&quot;<br># }<=
br>BUILDER: Closing project<br>INFO: [Common 17-206] Exiting Vivado at Sun =
Apr 17 09:55:45 2022...<br>Built target rfnoc_block_correlate_tb<br></div><=
/div></div>

--00000000000037d8a005dcd2f439--

--===============1769745213301490667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1769745213301490667==--

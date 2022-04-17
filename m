Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9439C5046CB
	for <lists+usrp-users@lfdr.de>; Sun, 17 Apr 2022 08:08:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8456D3844F1
	for <lists+usrp-users@lfdr.de>; Sun, 17 Apr 2022 02:08:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1650175695; bh=/G3CkYxs2dhq4KE9f6bBuRLE6D6+KdzmEv9iiPSnkZ0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=qW54nDbpMkPp/+lfLSaAzznk1GzDckdqzdZPTz+H0Qg3L2TvdDt7TvJwtkll8n3bK
	 f4tTepkzVUpl/YDhAp5v8OvJRsK+kyvqXQWtRROkTrpK+X8GQdfrtbz+D5UC74ydMb
	 67exf4kqIF/+TR9XVmJs2/qALnCzH6BtPQP1VLb/8eWSYNLVN8/dfqm9FvveqccJB5
	 oTzXrpWRjMWUWqPMI2PUm/fub3wRVlooc/P7exE4VB4SofLq3lAhzNVH9E+Qid1V/U
	 Rt0zcDFunGTC+pJ6sZk06qKaeNBTf7TrskTNVEbSIlzEl0bu4jujyy7k9KG5UVndKM
	 +NoCVaXwJ0qEw==
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 46A7A384347
	for <usrp-users@lists.ettus.com>; Sun, 17 Apr 2022 02:07:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ErI61I9d";
	dkim-atps=neutral
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-2ef5380669cso98922797b3.9
        for <usrp-users@lists.ettus.com>; Sat, 16 Apr 2022 23:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=TZVypRUrOXYJNKpwnBJvz7uE+ce/hZipW/csCk8mPm4=;
        b=ErI61I9dK6espy2vw4w3cIsKbA0ev/rJ+4c5RPSIwUhyvEcwBQi9ra9Jjjzpkf1ugk
         55fJ6/kHZw4UhLU4jJOVnqz5VYseEwIEaWZAo0Q0C0pfUZm8zYyqLeFEerZc7D55aywc
         SQzrbrs504/ghJYsaKSolEraWgy6Zbqpf1Q5hUIuBu1v9KiuJGalMLN34ZNku0GrBlas
         h0cgyv6l6qSUF2gOUhoItNe+++XKET+ltYqcsI6vU7mX7kURDUGySZn6c1KnudOlcWdS
         TVRDDviQm8Rv1BhcAkbRO6nBQbR46fVnVw3/VVSlvESuqQD4hJN5731apwsT3/2duO8y
         0j9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=TZVypRUrOXYJNKpwnBJvz7uE+ce/hZipW/csCk8mPm4=;
        b=VLbuTHTPpSpqY/LYkZMlEwNH7dSs+WMnIPkCe6SusVxVeGxiV0dCb/Jxh0iwPoXari
         Rlf+HkXMsmcQXuALrlQB5eu2Sp7I7skv3VnuswPI5kVwb7jfjOuPi908zedJYdGLgCP5
         ht1G1xhSYObvfe/U9NLCGqQx5kxqydC9LdK1+XNwOq/N3mCfTcbKe8wp6zMX5BMZhcvV
         7eUq2v+PtUtC5rcxMc6HHQObIj1a6Ku78RqJVjvwRBs7rDN5bv97yYUT1b7uGVFsUrYA
         Ezesd6h2MmmQZBDiosrTGwUEQvdOZ642qm0P69Q2Nqnkn20hKt+EAPCyGshdZKW48euG
         bmVw==
X-Gm-Message-State: AOAM533JTu+9WN+81qzNkFts1tl7B5FIWs4UhYrq/6E9ALTl5wZLFaJ0
	3sBuGKE9R8SbyPYlSUs4q71xZgi9wcMFo+X+fsy+7SczgCfziQ==
X-Google-Smtp-Source: ABdhPJz/31mzWwDHPYDv/i3knBSe5R5uovpv+cSVJ/8ryTdEXqsxjC6kt84k71WWK+QeKA1NApbYGdX8X7jF46enPrE=
X-Received: by 2002:a81:9ca:0:b0:2eb:f567:217f with SMTP id
 193-20020a8109ca000000b002ebf567217fmr5331493ywj.322.1650175623580; Sat, 16
 Apr 2022 23:07:03 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PvWMW7_voNqT5au=L+VX_Fi-RtXckkenHDAFfHNzq5qMQ@mail.gmail.com>
In-Reply-To: <CAA=S3PvWMW7_voNqT5au=L+VX_Fi-RtXckkenHDAFfHNzq5qMQ@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Sun, 17 Apr 2022 10:36:52 +0430
Message-ID: <CAA=S3PtZ=pRT=kU4qRwjM68xKaMjY2SRf_ycQ48S5ogc7yGXGg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: M74TDX3YOMWZPOUIBPMSEDSSYXMRM54P
X-Message-ID-Hash: M74TDX3YOMWZPOUIBPMSEDSSYXMRM54P
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: Incorrect NOC_ID Value in creating new RFNOC block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M74TDX3YOMWZPOUIBPMSEDSSYXMRM54P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6773201314540313930=="

--===============6773201314540313930==
Content-Type: multipart/alternative; boundary="000000000000dc4f8b05dcd37337"

--000000000000dc4f8b05dcd37337
Content-Type: text/plain; charset="UTF-8"

Finally, my problem is solved...
NOC_ID value in .sv file and noc_shell file should be same.Otherwise, you
will face erros...



On Sun, Apr 17, 2022 at 10:01 AM sp h <stackprogramer@gmail.com> wrote:

> Hi, when I changed the name of the Gain block to another name, I want to
> run the test bench and simulated it but I was faced with these errors.......
> How can solve my problems?
>
> ========================================================
> TESTBENCH STARTED: chdr_crossbar_nxn: IP_OPTION = HDL_IP
> ========================================================
> [TEST CASE   1] (t =         0 ns) BEGIN: Flush block then reset it...
> [TEST CASE   1] (t =      6450 ns) DONE... Passed
> [TEST CASE   2] (t =      6450 ns) BEGIN: Verify Block Info...
> Error: Incorrect NOC_ID Value
> Time: 6450 ns  Iteration: 1  Process:
> /rfnoc_block_correlate_tb/Initial172_431  File:
> /home/sp/Documents/rfnoc-transceiver/rfnoc/fpga/rfnoc_block_correlate/
> rfnoc_block_correlate_tb.sv
> $stop called at time : 6450 ns : File
> "/home/sp/Documents/rfnoc-transceiver/rfnoc/fpga/rfnoc_block_correlate/
> rfnoc_block_correlate_tb.sv" Line 201
> INFO: [USF-XSim-96] XSim completed. Design snapshot
> 'rfnoc_block_correlate_tb_behav' loaded.
> INFO: [USF-XSim-97] XSim simulation ran for 1000000000us
> launch_simulation: Time (s): cpu = 00:00:20 ; elapsed = 00:00:26 . Memory
> (MB): peak = 1484.270 ; gain = 64.477 ; free physical = 294 ; free virtual
> = 9811
> # if { [info exists ::env(VIV_SYNTH_TOP)] } {
> #    puts "BUILDER: Synthesizing"
> #    # Synthesize requested modules
> #    foreach synth_top "$::env(VIV_SYNTH_TOP)" {
> #       set_property top $synth_top [current_fileset]
> #       synth_design -mode out_of_context
> #       # Perform a simple regex-based search for all clock signals and
> constrain
> #       # them to 500 MHz for the timing report.
> #       set clk_regexp "(?i)^(?!.*en.*).*(clk|clock).*"
> #       foreach clk_inst [get_ports -regexp $clk_regexp] {
> #          create_clock -name $clk_inst -period 2.0 [get_ports $clk_inst]
> #       }
> #       report_utilization -no_primitives -file
> ${working_dir}/${synth_top}_synth.rpt
> #       report_timing_summary -setup -max_paths 3 -unique_pins -no_header
> -append -file ${working_dir}/${synth_top}_synth.rpt
> #       write_checkpoint -force ${working_dir}/${synth_top}_synth.dcp
> #    }
> # } else {
> #    puts "BUILDER: Skipping resource report because VIV_SYNTH_TOP is not
> set"
> # }
> BUILDER: Synthesizing
> # if [string equal $vivado_mode "batch"] {
> #     puts "BUILDER: Closing project"
> #     close_project
> # } else {
> #     puts "BUILDER: In GUI mode. Leaving project open."
> # }
> BUILDER: Closing project
> INFO: [Common 17-206] Exiting Vivado at Sun Apr 17 09:55:45 2022...
> Built target rfnoc_block_correlate_tb
>

--000000000000dc4f8b05dcd37337
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Finally, my problem is solved...<div>NOC_ID value in .sv f=
ile and noc_shell file should be same.Otherwise, you will face=C2=A0erros..=
.</div><div><br><div><br></div></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Sun, Apr 17, 2022 at 10:01 AM sp h =
&lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr">Hi, when I changed the name of the Gain block to another name=
, I want to run the test bench and simulated it but I was faced with these =
errors.......<div>How can solve my problems?<br><div><br></div><div>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>TESTBENCH STARTED: chdr_crossbar_nxn: IP_OPTION =3D HDL_IP<=
br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 0 ns) BEGIN: Flush block then reset it...<br>[TEST CASE =C2=A0 1] (t=
 =3D =C2=A0 =C2=A0 =C2=A06450 ns) DONE... Passed<br>[TEST CASE =C2=A0 2] (t=
 =3D =C2=A0 =C2=A0 =C2=A06450 ns) BEGIN: Verify Block Info...<br>Error: Inc=
orrect NOC_ID Value<br>Time: 6450 ns =C2=A0Iteration: 1 =C2=A0Process: /rfn=
oc_block_correlate_tb/Initial172_431 =C2=A0File: /home/sp/Documents/rfnoc-t=
ransceiver/rfnoc/fpga/rfnoc_block_correlate/<a href=3D"http://rfnoc_block_c=
orrelate_tb.sv" target=3D"_blank">rfnoc_block_correlate_tb.sv</a><br>$stop =
called at time : 6450 ns : File &quot;/home/sp/Documents/rfnoc-transceiver/=
rfnoc/fpga/rfnoc_block_correlate/<a href=3D"http://rfnoc_block_correlate_tb=
.sv" target=3D"_blank">rfnoc_block_correlate_tb.sv</a>&quot; Line 201<br>IN=
FO: [USF-XSim-96] XSim completed. Design snapshot &#39;rfnoc_block_correlat=
e_tb_behav&#39; loaded.<br>INFO: [USF-XSim-97] XSim simulation ran for 1000=
000000us<br>launch_simulation: Time (s): cpu =3D 00:00:20 ; elapsed =3D 00:=
00:26 . Memory (MB): peak =3D 1484.270 ; gain =3D 64.477 ; free physical =
=3D 294 ; free virtual =3D 9811<br># if { [info exists ::env(VIV_SYNTH_TOP)=
] } {<br># =C2=A0 =C2=A0puts &quot;BUILDER: Synthesizing&quot;<br># =C2=A0 =
=C2=A0# Synthesize requested modules<br># =C2=A0 =C2=A0foreach synth_top &q=
uot;$::env(VIV_SYNTH_TOP)&quot; {<br># =C2=A0 =C2=A0 =C2=A0 set_property to=
p $synth_top [current_fileset]<br># =C2=A0 =C2=A0 =C2=A0 synth_design -mode=
 out_of_context<br># =C2=A0 =C2=A0 =C2=A0 # Perform a simple regex-based se=
arch for all clock signals and constrain<br># =C2=A0 =C2=A0 =C2=A0 # them t=
o 500 MHz for the timing report.<br># =C2=A0 =C2=A0 =C2=A0 set clk_regexp &=
quot;(?i)^(?!.*en.*).*(clk|clock).*&quot;<br># =C2=A0 =C2=A0 =C2=A0 foreach=
 clk_inst [get_ports -regexp $clk_regexp] {<br># =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0create_clock -name $clk_inst -period 2.0 [get_ports $clk_inst]<br=
># =C2=A0 =C2=A0 =C2=A0 }<br># =C2=A0 =C2=A0 =C2=A0 report_utilization -no_=
primitives -file ${working_dir}/${synth_top}_synth.rpt<br># =C2=A0 =C2=A0 =
=C2=A0 report_timing_summary -setup -max_paths 3 -unique_pins -no_header -a=
ppend -file ${working_dir}/${synth_top}_synth.rpt<br># =C2=A0 =C2=A0 =C2=A0=
 write_checkpoint -force ${working_dir}/${synth_top}_synth.dcp<br># =C2=A0 =
=C2=A0}<br># } else {<br># =C2=A0 =C2=A0puts &quot;BUILDER: Skipping resour=
ce report because VIV_SYNTH_TOP is not set&quot;<br># }<br>BUILDER: Synthes=
izing<br># if [string equal $vivado_mode &quot;batch&quot;] {<br># =C2=A0 =
=C2=A0 puts &quot;BUILDER: Closing project&quot;<br># =C2=A0 =C2=A0 close_p=
roject<br># } else {<br># =C2=A0 =C2=A0 puts &quot;BUILDER: In GUI mode. Le=
aving project open.&quot;<br># }<br>BUILDER: Closing project<br>INFO: [Comm=
on 17-206] Exiting Vivado at Sun Apr 17 09:55:45 2022...<br>Built target rf=
noc_block_correlate_tb<br></div></div></div>
</blockquote></div>

--000000000000dc4f8b05dcd37337--

--===============6773201314540313930==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6773201314540313930==--

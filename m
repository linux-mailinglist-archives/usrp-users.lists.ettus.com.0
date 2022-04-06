Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BDF4F5693
	for <lists+usrp-users@lfdr.de>; Wed,  6 Apr 2022 08:44:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2BDD0384D92
	for <lists+usrp-users@lfdr.de>; Wed,  6 Apr 2022 02:44:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649227482; bh=l7QV8Xnq4qadHQ4gZPT/+wfU2UUir1rcssLzUEpwFHo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=eDOq5AYOANFwATdaJ2J3f+rgokk9iNVWqr4XCpJ7jLzsBruEkCYMKrCpIPKg7BOS8
	 kclqPeNa+o3OIh45DX0GLFuhOgSP/7tPYwk2DpOln3c2RPTurQzoF71ZgBBvaj0RE2
	 KeDUVbtLeqefMyEb+CqWeZwHk3AmoFTWV5Zn34fJwvocuXxvyeEluN++objeL2mwFF
	 ealWuEWzBTWocqaDDNJ5+2NTVvNDd08YDG5bdH+gaSBagj/TscFGW2eB/Gy3IUVB+R
	 fBIGtY11C68ScW8Zf60M+m0GP0WAsHugJJlWFnoOwbEdUhmMHgEsAQwDQhd36HgKwb
	 MnQpDFRrTtJOw==
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 3D43538481A
	for <usrp-users@lists.ettus.com>; Wed,  6 Apr 2022 02:43:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MIqZ5ZHQ";
	dkim-atps=neutral
Received: by mail-yb1-f175.google.com with SMTP id w134so2371420ybe.10
        for <usrp-users@lists.ettus.com>; Tue, 05 Apr 2022 23:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zYrWwwPBuqdq+K3DBvA2mtI4GOp2QJzzQuQb5VUzhw0=;
        b=MIqZ5ZHQKJKwmhHYJNuTr+frJpettIsz16KVgzXhLztpNwjh32dKKjrXNP0vO37Dmg
         fpJ5RtHCrfC4PnHNRr5IqABz7dIKfqhulbmjFX00hMPf+VhGrelX33WNe9z7N0aLG3PB
         SkPuin2LjTRil6fBFrqpCRH0qpTYVIz3lzvZFNt3obj8aHsgbJqDPEtkyz/LAWQgEiPJ
         igEjtAMSiJhbONXTX3UsrMIj66HGMzZ0wUyGHJvRgakStFHHYl2IilgxVl1LbSTclcHO
         4EzFWguugT8Rqwwrzk4pCfFV98W1pe1AJTtb73SCwSws5xr3bX1dYoGAh5ERN8+06wUw
         rgRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zYrWwwPBuqdq+K3DBvA2mtI4GOp2QJzzQuQb5VUzhw0=;
        b=nRSn/PG4jUwmmC3H2qeD3MKnru99ernbYAKaWt6eZNXiWKGQIhibsMLDP35lZTREqK
         3+VbKVTKWEA2L3HljYjjclP89dUx/XLEfhqECr7KXtWmbUhK3aD3Ca70wWHo7BqecRA6
         cnBzQCWsCWoI6jwiYrbVhzZ1jH+4dLHoIhbZdLKG7CfHHP2SwuUKuQIds5T3Hsv8J6CT
         8Cs0LR8km0/Mw6pURiYfqTADqQIY7Orl2ucWMkRDqkcOf/w8ViYLbD6fZArYj5ZsV3Rj
         v5YXz9knwduw/3h1bUcmPSwO8UtXyoZ2lvSMqqIKrvypvqMEesU9dmxYd0t0/3SLW8iQ
         QhGA==
X-Gm-Message-State: AOAM533gKWLhAf+pFfBpjICTRz+u4dOmcu7V2RmEqkNtnzINI4uERnlY
	u15SDqB/HrfkOUkJoYadDh6DGDiYxNbbpBsc9n3WR/C7pwJP/9n8EAB4BQ==
X-Google-Smtp-Source: ABdhPJxWlvqHcffMhDuOfO0TrI7TSwiuX5YHjMUVII2MMB4nnsx595Zo4O0jtz0GbuDNhsDB/X51ZylrH83jE1R4IrA=
X-Received: by 2002:a25:50e:0:b0:633:cb65:ba3a with SMTP id
 14-20020a25050e000000b00633cb65ba3amr5277968ybf.368.1649227425057; Tue, 05
 Apr 2022 23:43:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PsyGDRyUyRC_fYYhDXes8p7+z1Qazw7XxWL9_n1UxRUjg@mail.gmail.com>
 <CAFche=jBDmufx_MdKq2gnREVCx_HkOTpaFHzR7-Gz6oCgFpdow@mail.gmail.com>
In-Reply-To: <CAFche=jBDmufx_MdKq2gnREVCx_HkOTpaFHzR7-Gz6oCgFpdow@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Wed, 6 Apr 2022 11:13:33 +0430
Message-ID: <CAA=S3PuCg02Wr=DfRmydBYco5sM2pHy1EmpHPu7A4XyG3t0Rzw@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: ZXG6NKF4FMFDVHZTBPJLX2S32F2HPI5J
X-Message-ID-Hash: ZXG6NKF4FMFDVHZTBPJLX2S32F2HPI5J
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: When I run the gain example testbench file I am faced with errors.....
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZXG6NKF4FMFDVHZTBPJLX2S32F2HPI5J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7990165407254204347=="

--===============7990165407254204347==
Content-Type: multipart/alternative; boundary="000000000000d3131905dbf6ae7d"

--000000000000d3131905dbf6ae7d
Content-Type: text/plain; charset="UTF-8"

Thanks, I edited the gain files now it works. All test was passed.

Vivado Simulator does not support tracing of System Verilog Dynamic Type
object.
========================================================
TESTBENCH STARTED: chdr_crossbar_nxn: IP_OPTION = HDL_IP
========================================================
[TEST CASE   1] (t =         0 ns) BEGIN: Flush block then reset it...
[TEST CASE   1] (t =      6450 ns) DONE... Passed
[TEST CASE   2] (t =      6450 ns) BEGIN: Verify Block Info...
[TEST CASE   2] (t =      6450 ns) DONE... Passed
[TEST CASE   3] (t =      6450 ns) BEGIN: Verify gain register...
[TEST CASE   3] (t =      7875 ns) DONE... Passed
[TEST CASE   4] (t =      7875 ns) BEGIN: Test gain of 1...
[TEST CASE   4] (t =      8920 ns) DONE... Passed
[TEST CASE   5] (t =      8920 ns) BEGIN: Test gain of -1...
[TEST CASE   5] (t =      9900 ns) DONE... Passed
[TEST CASE   6] (t =      9900 ns) BEGIN: Test gain of 0...
[TEST CASE   6] (t =     10975 ns) DONE... Passed
[TEST CASE   7] (t =     10975 ns) BEGIN: Test gain of 37...
[TEST CASE   7] (t =     12020 ns) DONE... Passed
[TEST CASE   8] (t =     12020 ns) BEGIN: Test gain of -22...
[TEST CASE   8] (t =     13140 ns) DONE... Passed
[TEST CASE   9] (t =     13140 ns) BEGIN: Test gain of 256...
[TEST CASE   9] (t =     14300 ns) DONE... Passed
========================================================
TESTBENCH FINISHED: chdr_crossbar_nxn: IP_OPTION = HDL_IP
 - Time elapsed:  14300 ns
 - Tests Run:     9
 - Tests Passed:  9
 - Tests Failed:  0
Result: PASSED

On Wed, Apr 6, 2022 at 1:43 AM Wade Fife <wade.fife@ettus.com> wrote:

> The unmodified gain example should work, so I assume you modified it or
> are trying your own version. I suggest you look at the example to see what
> you did differently.
>
>
> https://github.com/EttusResearch/uhddev/tree/master/host/examples/rfnoc-example/fpga/rfnoc_block_gain
>
> The simulator is the tool designed for debugging issues with code. So you
> might look into the Xilinx documentation on how to use the simulator. The
> UHD manual has instructions on how to run testbenches and load the
> simulation in the Vivado GUI.
>
> My guess is that you have a signal that's not connected correctly, like a
> clock or reset.
>
> Wade
>
> On Tue, Apr 5, 2022 at 12:42 AM sp h <stackprogramer@gmail.com> wrote:
>
>> When I run the gain example testbench file I am faced with errors.....How
>> can I solve this?
>>
>>
>> Vivado Simulator does not support tracing of System Verilog Dynamic Type
>> object.
>> ========================================================
>> TESTBENCH STARTED: rfnoc_block_gain_tb
>> ========================================================
>> [TEST CASE   1] (t =         0 ns) BEGIN: Flush block then reset it...
>>
>> *Fatal: Timeout: Test "Flush block then reset it" time limit exceeded*Time:
>> 10 us  Iteration: 0  Process:
>> /PkgTestExec/TestExec::start_timeout/Block260_9/timeout  File:
>> /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv
>> $finish called at time : 10 us : File
>> "/home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv" Line
>> 235
>> INFO: [USF-XSim-96] XSim completed. Design snapshot
>> 'rfnoc_block_gain_tb_behav' loaded.
>> INFO: [USF-XSim-97] XSim simulation ran for 1000000000us
>> launch_simulation: Time (s): cpu = 00:00:21 ; elapsed = 00:00:33 . Memory
>> (MB): peak = 1462.531 ; gain = 80.324 ; free physical = 285 ; free virtual
>> = 9898
>> # if { [info exists ::env(VIV_SYNTH_TOP)] } {
>> #    puts "BUILDER: Synthesizing"
>> #    # Synthesize requested modules
>> #    foreach synth_top "$::env(VIV_SYNTH_TOP)" {
>> #       set_property top $synth_top [current_fileset]
>> #       synth_design -mode out_of_context
>> #       # Perform a simple regex-based search for all clock signals and
>> constrain
>> #       # them to 500 MHz for the timing report.
>> #       set clk_regexp "(?i)^(?!.*en.*).*(clk|clock).*"
>> #       foreach clk_inst [get_ports -regexp $clk_regexp] {
>> #          create_clock -name $clk_inst -period 2.0 [get_ports $clk_inst]
>> #       }
>> #       report_utilization -no_primitives -file
>> ${working_dir}/${synth_top}_synth.rpt
>> #       report_timing_summary -setup -max_paths 3 -unique_pins -no_header
>> -append -file ${working_dir}/${synth_top}_synth.rpt
>> #       write_checkpoint -force ${working_dir}/${synth_top}_synth.dcp
>> #    }
>> # } else {
>> #    puts "BUILDER: Skipping resource report because VIV_SYNTH_TOP is not
>> set"
>> # }
>> BUILDER: Synthesizing
>> # if [string equal $vivado_mode "batch"] {
>> #     puts "BUILDER: Closing project"
>> #     close_project
>> # } else {
>> #     puts "BUILDER: In GUI mode. Leaving project open."
>> # }
>> BUILDER: Closing project
>> INFO: [Common 17-206] Exiting Vivado at Thu Feb 10 10:02:45 2022...
>> make[4]: warning:  Clock skew detected.  Your build may be incomplete.
>> make[3]: warning:  Clock skew detected.  Your build may be incomplete.
>> Built target rfnoc_block_gain_tb
>> make[2]: warning:  Clock skew detected.  Your build may be incomplete.
>> make[1]: warning:  Clock skew detected.  Your build may be incomplete.
>> make: warning:  Clock skew detected.  Your build may be incomplete.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000d3131905dbf6ae7d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks, I edited the gain files now it works. All tes=
t was passed.</div><div><br></div><div>Vivado Simulator does not support tr=
acing of System Verilog Dynamic Type object.<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>TESTB=
ENCH STARTED: chdr_crossbar_nxn: IP_OPTION =3D HDL_IP<br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 ns) BEGIN: Fl=
ush block then reset it...<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =C2=A0 =C2=
=A06450 ns) DONE... Passed<br>[TEST CASE =C2=A0 2] (t =3D =C2=A0 =C2=A0 =C2=
=A06450 ns) BEGIN: Verify Block Info...<br>[TEST CASE =C2=A0 2] (t =3D =C2=
=A0 =C2=A0 =C2=A06450 ns) DONE... Passed<br>[TEST CASE =C2=A0 3] (t =3D =C2=
=A0 =C2=A0 =C2=A06450 ns) BEGIN: Verify gain register...<br>[TEST CASE =C2=
=A0 3] (t =3D =C2=A0 =C2=A0 =C2=A07875 ns) DONE... Passed<br>[TEST CASE =C2=
=A0 4] (t =3D =C2=A0 =C2=A0 =C2=A07875 ns) BEGIN: Test gain of 1...<br>[TES=
T CASE =C2=A0 4] (t =3D =C2=A0 =C2=A0 =C2=A08920 ns) DONE... Passed<br>[TES=
T CASE =C2=A0 5] (t =3D =C2=A0 =C2=A0 =C2=A08920 ns) BEGIN: Test gain of -1=
...<br>[TEST CASE =C2=A0 5] (t =3D =C2=A0 =C2=A0 =C2=A09900 ns) DONE... Pas=
sed<br>[TEST CASE =C2=A0 6] (t =3D =C2=A0 =C2=A0 =C2=A09900 ns) BEGIN: Test=
 gain of 0...<br>[TEST CASE =C2=A0 6] (t =3D =C2=A0 =C2=A0 10975 ns) DONE..=
. Passed<br>[TEST CASE =C2=A0 7] (t =3D =C2=A0 =C2=A0 10975 ns) BEGIN: Test=
 gain of 37...<br>[TEST CASE =C2=A0 7] (t =3D =C2=A0 =C2=A0 12020 ns) DONE.=
.. Passed<br>[TEST CASE =C2=A0 8] (t =3D =C2=A0 =C2=A0 12020 ns) BEGIN: Tes=
t gain of -22...<br>[TEST CASE =C2=A0 8] (t =3D =C2=A0 =C2=A0 13140 ns) DON=
E... Passed<br>[TEST CASE =C2=A0 9] (t =3D =C2=A0 =C2=A0 13140 ns) BEGIN: T=
est gain of 256...<br>[TEST CASE =C2=A0 9] (t =3D =C2=A0 =C2=A0 14300 ns) D=
ONE... Passed<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>TESTBENCH FINISHED: chdr_crossbar_n=
xn: IP_OPTION =3D HDL_IP<br>=C2=A0- Time elapsed: =C2=A014300 ns<br>=C2=A0-=
 Tests Run: =C2=A0 =C2=A0 9<br>=C2=A0- Tests Passed: =C2=A09<br>=C2=A0- Tes=
ts Failed: =C2=A00<br>Result: PASSED=C2=A0 =C2=A0<br></div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 6, 2=
022 at 1:43 AM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fi=
fe@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>The unmodified gain example should work, =
so I assume you modified it or are trying your own version. I suggest you l=
ook at the example to see what you did differently.</div><div><br></div><di=
v><a href=3D"https://github.com/EttusResearch/uhddev/tree/master/host/examp=
les/rfnoc-example/fpga/rfnoc_block_gain" target=3D"_blank">https://github.c=
om/EttusResearch/uhddev/tree/master/host/examples/rfnoc-example/fpga/rfnoc_=
block_gain</a></div><div><br></div><div>The simulator is the tool designed =
for debugging issues with code. So you might look into the Xilinx documenta=
tion on how to use the simulator. The UHD manual has instructions on how to=
 run testbenches and load the simulation in the Vivado GUI.</div><div><br><=
/div><div>My guess is that you have a signal that&#39;s not connected corre=
ctly, like a clock or reset. <br></div><div><br></div><div>Wade<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, Apr 5, 2022 at 12:42 AM sp h &lt;<a href=3D"mailto:stackprogramer@gma=
il.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">When I r=
un the=C2=A0gain example testbench file I am=C2=A0faced with errors.....How=
 can I solve this?<br><div><br></div><div><br></div><div>Vivado Simulator d=
oes not support tracing of System Verilog Dynamic Type object.<br>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<br>TESTBENCH STARTED: rfnoc_block_gain_tb<br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
<br>[TEST CASE =C2=A0 1] (t =3D =C2=A0 =C2=A0 =C2=A0 =C2=A0 0 ns) BEGIN: Fl=
ush block then reset it...<br><b>Fatal: Timeout: Test &quot;Flush block the=
n reset it&quot; time limit exceeded<br></b>Time: 10 us =C2=A0Iteration: 0 =
=C2=A0Process: /PkgTestExec/TestExec::start_timeout/Block260_9/timeout =C2=
=A0File: /home/sp/Documents/uhd-4.1.0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv=
<br>$finish called at time : 10 us : File &quot;/home/sp/Documents/uhd-4.1.=
0.5/fpga/usrp3/sim/rfnoc/PkgTestExec.sv&quot; Line 235<br>INFO: [USF-XSim-9=
6] XSim completed. Design snapshot &#39;rfnoc_block_gain_tb_behav&#39; load=
ed.<br>INFO: [USF-XSim-97] XSim simulation ran for 1000000000us<br>launch_s=
imulation: Time (s): cpu =3D 00:00:21 ; elapsed =3D 00:00:33 . Memory (MB):=
 peak =3D 1462.531 ; gain =3D 80.324 ; free physical =3D 285 ; free virtual=
 =3D 9898<br># if { [info exists ::env(VIV_SYNTH_TOP)] } {<br># =C2=A0 =C2=
=A0puts &quot;BUILDER: Synthesizing&quot;<br># =C2=A0 =C2=A0# Synthesize re=
quested modules<br># =C2=A0 =C2=A0foreach synth_top &quot;$::env(VIV_SYNTH_=
TOP)&quot; {<br># =C2=A0 =C2=A0 =C2=A0 set_property top $synth_top [current=
_fileset]<br># =C2=A0 =C2=A0 =C2=A0 synth_design -mode out_of_context<br># =
=C2=A0 =C2=A0 =C2=A0 # Perform a simple regex-based search for all clock si=
gnals and constrain<br># =C2=A0 =C2=A0 =C2=A0 # them to 500 MHz for the tim=
ing report.<br># =C2=A0 =C2=A0 =C2=A0 set clk_regexp &quot;(?i)^(?!.*en.*).=
*(clk|clock).*&quot;<br># =C2=A0 =C2=A0 =C2=A0 foreach clk_inst [get_ports =
-regexp $clk_regexp] {<br># =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0create_clock =
-name $clk_inst -period 2.0 [get_ports $clk_inst]<br># =C2=A0 =C2=A0 =C2=A0=
 }<br># =C2=A0 =C2=A0 =C2=A0 report_utilization -no_primitives -file ${work=
ing_dir}/${synth_top}_synth.rpt<br># =C2=A0 =C2=A0 =C2=A0 report_timing_sum=
mary -setup -max_paths 3 -unique_pins -no_header -append -file ${working_di=
r}/${synth_top}_synth.rpt<br># =C2=A0 =C2=A0 =C2=A0 write_checkpoint -force=
 ${working_dir}/${synth_top}_synth.dcp<br># =C2=A0 =C2=A0}<br># } else {<br=
># =C2=A0 =C2=A0puts &quot;BUILDER: Skipping resource report because VIV_SY=
NTH_TOP is not set&quot;<br># }<br>BUILDER: Synthesizing<br># if [string eq=
ual $vivado_mode &quot;batch&quot;] {<br># =C2=A0 =C2=A0 puts &quot;BUILDER=
: Closing project&quot;<br># =C2=A0 =C2=A0 close_project<br># } else {<br>#=
 =C2=A0 =C2=A0 puts &quot;BUILDER: In GUI mode. Leaving project open.&quot;=
<br># }<br>BUILDER: Closing project<br>INFO: [Common 17-206] Exiting Vivado=
 at Thu Feb 10 10:02:45 2022...<br>make[4]: warning: =C2=A0Clock skew detec=
ted.=C2=A0 Your build may be incomplete.<br>make[3]: warning: =C2=A0Clock s=
kew detected.=C2=A0 Your build may be incomplete.<br>Built target rfnoc_blo=
ck_gain_tb<br>make[2]: warning: =C2=A0Clock skew detected.=C2=A0 Your build=
 may be incomplete.<br>make[1]: warning: =C2=A0Clock skew detected.=C2=A0 Y=
our build may be incomplete.<br>make: warning: =C2=A0Clock skew detected.=
=C2=A0 Your build may be incomplete.<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000d3131905dbf6ae7d--

--===============7990165407254204347==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7990165407254204347==--

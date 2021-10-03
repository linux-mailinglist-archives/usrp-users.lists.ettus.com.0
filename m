Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D22542005A
	for <lists+usrp-users@lfdr.de>; Sun,  3 Oct 2021 08:46:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1820D383EB5
	for <lists+usrp-users@lfdr.de>; Sun,  3 Oct 2021 02:46:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="L8vMRWRp";
	dkim-atps=neutral
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by mm2.emwd.com (Postfix) with ESMTPS id D6711383E16
	for <usrp-users@lists.ettus.com>; Sun,  3 Oct 2021 02:45:46 -0400 (EDT)
Received: by mail-yb1-f180.google.com with SMTP id g6so13003294ybb.3
        for <usrp-users@lists.ettus.com>; Sat, 02 Oct 2021 23:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Fz+7mkV066i43Ei5lP3knmkxV/JcpxHwAs+8IXdkjb0=;
        b=L8vMRWRpOVm+uW5BBl1A2k+yMBteUenFVf8uwDWFhMvy+ykTlSd69gofv6SKIFTE94
         UAUriO0WexHSOGabwOUF/IYuR250cPf+4B9APtOsPRWx3BWSAIzoo6hVj2B4BNFcIlYG
         arSHugO3LVYBXsOkOOFolpZ58/aJ+plA1Z1T3wyFhUjFcxObjjmzs/34sTCn3sq1wyow
         pkYxrhWARCxEeKbQ8N6ahsRXDuSn+H7tcv4REHRgMp/qT6gUhI5KISobfiBuwmnr5zXI
         Fl3cQCt+0Vy+Kx3pwZvv5S1jidCjzMb0IyNA2xtutm0S0MROwHY9I2vEemTPJEfvl9aw
         xn7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Fz+7mkV066i43Ei5lP3knmkxV/JcpxHwAs+8IXdkjb0=;
        b=bj6VImXJCBj4BSg6sTbA4sOzH+vpTFxGOA07t+bJUe//7Cs1In9KZLPajwNPFP43Pr
         r/Y9526C4TmKtE8XcF47JRQVqfeQyV/AUSGClFjrVKjL10PmY8TVV+5XcxongMACmrFB
         NhZss1FjBc966QBTP85OmdmpiUOvpycmpoGpS476Yg30oi0N/EA6mlx5w18EoOytAWK0
         yiXt7h8t+rCHN+NNRMIiyW+loyMz2W9ZwyvtCqB296lrE5bqIFGAaCEcZTGlu1P1/2/U
         G6tds/LmQE9NVNDsRqws40BAvySIXR6ZExp0HTat5C6XfUsslCnjmCmzwxs3jhiiSqtS
         gSGw==
X-Gm-Message-State: AOAM531KYkYGOkTzE5YEzEuu/Nxzmyov2uaXa2A4/BzdSXbG6LApE6ql
	xIz70XXVd4h4LHp8Xkwbi5O/65ooDvr4Ob/Z46SpBG4+nkDAwQ==
X-Google-Smtp-Source: ABdhPJxwCTt98nd5zKV3+QS67bld+mwjnijrE0wcGhTxWDjQAY40BnwhKauPae8JOBWfURZEaGnQhj7fAOS7v5lp9lQ=
X-Received: by 2002:a25:5205:: with SMTP id g5mr7207006ybb.292.1633243545967;
 Sat, 02 Oct 2021 23:45:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHaR3=_+Pfp1cfCVd7cxhNx9Y6n_wSwMd1d9UFQBAdzkv+kPQ@mail.gmail.com>
 <CAFche=jVc5RMh+H7JPhV274e5d_om5bwp7J8jRn+Bg17K2wXcw@mail.gmail.com>
In-Reply-To: <CAFche=jVc5RMh+H7JPhV274e5d_om5bwp7J8jRn+Bg17K2wXcw@mail.gmail.com>
From: Dario Pennisi <dario@iptronix.com>
Date: Sun, 3 Oct 2021 08:45:35 +0200
Message-ID: <CAKHaR3ntz1vkDVmxKtm7aVfMmrWrQpMuoUrrECfJX46JqqpExA@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: FB4IVPMGQI5G4Q6PCKQGR2F4BZIKQYX6
X-Message-ID-Hash: FB4IVPMGQI5G4Q6PCKQGR2F4BZIKQYX6
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: issues compiling X410 FPGA
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FB4IVPMGQI5G4Q6PCKQGR2F4BZIKQYX6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4308779483096921285=="

--===============4308779483096921285==
Content-Type: multipart/alternative; boundary="00000000000063b2e205cd6d25c3"

--00000000000063b2e205cd6d25c3
Content-Type: text/plain; charset="UTF-8"

Hi Wade,
thank you for the response. i was actually able to spot the issue... the IP
version doesn't match the one in the vivado version i have so it wouldn't
compile. i fixed it by manually upgrading the IP and everything worked as
expected.

now i'm having another issue trying to compile with OOT IP. similarly to
what i did for N310 i copied the yml file in my OOT icore dir, ran cmake
-DUHD_FPGA_DIR=$SRC_DIR/uhd/fpga/ and then ran
make x410_100_rfnoc_image_core but that is failing with weird errors such
as these:

jsonschema.exceptions.ValidationError: Additional properties are not
allowed ('image_core_name' was unexpected)

do you have any hint on what could be the issue here?
as i mentioned i was able to compile x410 running make from the uhd source
dir.

thanks,

On Sun, Oct 3, 2021 at 4:32 AM Wade Fife <wade.fife@ettus.com> wrote:

> You might need to also clear the "build-ip" folder. Can you try running
> "make cleanall" then try to build it again? I think I saw that error once
> when I neglected to clean everything. Let me know if that doesn't work.
>
> Also, the default X410 images don't actually use that IP, so you can
> remove it from the build. Edit fpga/usrp3/top/x400/Makefile.inc and delete
> the three lines that reference "ddr4_64bits" or "DDR4_64BITS", then it
> should skip that IP in the build.
>
> Wade
>
> On Sat, Oct 2, 2021 at 1:04 AM Dario Pennisi <dario@iptronix.com> wrote:
>
>> Hi,
>> i've been trying to compile X410 with no luck. apparently the issue is
>> with Vivado installation as it's failing the generation of the DDR4 IP
>> however i made sure i installed the proper version of it, including patches:
>>
>> * GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
>> * Python 3.8.10
>> * Vivado v2019.1.1_AR73068 (64-bit)
>>
>> my machine is running Ubuntu 20.04.1 and is capable of compiling N310
>> builds successfully.
>>
>> UHD version is 4.1.0.4 (25d617cad7db69fa04699df5f93ece06b0a61199) however
>> this issue was happening since 4.1.0.0.
>>
>> below a dump of the failing bit:
>>
>> ========================================================
>> BUILDER: Building IP ddr4_64bits
>> ========================================================
>> BUILDER: Staging IP in build directory...
>> BUILDER: Reserving IP location:
>> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits
>> BUILDER: Retargeting IP to part zynquplusRFSOC/xczu28dr/ffvg1517/-1/e...
>> BUILDER: Building IP...
>> [00:00:00] Executing command: vivado -mode batch -source
>> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl
>> -log ddr4_64bits.log -nojournal
>> WARNING: [IP_Flow 19-2162] IP 'ddr4_64bits' is locked:
>> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
>> following file is locked:
>> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xci
>> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
>> following file is locked:
>> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xci
>> [00:00:07] Current task: Initialization +++ Current Phase: Starting
>> [00:00:07] Current task: Initialization +++ Current Phase: Finished
>> [00:00:07] Executing Tcl: synth_design -top ddr4_64bits -part
>> xczu28dr-ffvg1517-1-e -mode out_of_context
>> [00:00:07] Starting Synthesis Command
>> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
>> for Synthesis target. These output products could be required for
>> synthesis, please generate the output products using the generate_target or
>> synth_ip command before running synth_design.
>> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
>> for Implementation target. These output products could be required for
>> synthesis, please generate the output products using the generate_target or
>> synth_ip command before running synth_design.
>> WARNING: [IP_Flow 19-2162] IP 'ddr4_64bits' is locked:
>> ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
>> specified
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this command.
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this command.
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this command.
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this command.
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this command.
>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>> elaborated, synthesized or implemented design before executing this command.
>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
>> ERROR: [Vivado 12-398] No designs are open
>> [00:00:07] Current task: Synthesis +++ Current Phase: Starting
>> [00:00:07] Current task: Synthesis +++ Current Phase: Finished
>> [00:00:07] Process terminated. Status: Failure
>>
>> ========================================================
>> Warnings:           4
>> Critical Warnings:  7
>> Errors:             8
>>
>> since it seems the issue is related to locking i tried serveral times
>> cleaning up the build directory or even making just X410_IP target with no
>> success.
>> any hints on what is currently going wrong?
>> thanks,
>> Dario Pennisi
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--00000000000063b2e205cd6d25c3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Wade=
,<div>thank you for the response. i was actually able to spot the issue... =
the IP version doesn&#39;t match the one in the vivado version i have so it=
 wouldn&#39;t compile. i fixed it by manually upgrading the IP and everythi=
ng worked as expected.</div><div><br></div><div>now i&#39;m having another =
issue trying to compile with OOT IP. similarly to what i did for N310 i cop=
ied the yml file in my OOT icore dir, ran cmake -DUHD_FPGA_DIR=3D$SRC_DIR/u=
hd/fpga/=C2=A0and then ran make=C2=A0x410_100_rfnoc_image_core but that is =
failing with weird errors such as these:<br clear=3D"all"><div><div dir=3D"=
ltr" class=3D"gmail_signature"><div dir=3D"ltr"><br></div><div dir=3D"ltr">=
<div dir=3D"ltr">jsonschema.exceptions.ValidationError: Additional properti=
es are not allowed (&#39;image_core_name&#39; was unexpected)</div><div><br=
></div><div>do you have any hint on what could be the issue here?</div><div=
>as i mentioned i was able to compile x410 running make from the uhd source=
 dir.</div><div><br></div><div>thanks,</div></div></div></div></div></div><=
/div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Sun, Oct 3, 2021 at 4:32 AM Wade Fife &lt;<a href=3D"mailto:w=
ade.fife@ettus.com">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>You might need=
 to also clear the &quot;build-ip&quot; folder. Can you try running &quot;m=
ake cleanall&quot; then try to build it again? I think I saw that error onc=
e when I neglected to clean everything. Let me know if that doesn&#39;t wor=
k.<br></div><div><br></div><div>Also, the default X410 images don&#39;t act=
ually use that IP, so you can remove it from the build. Edit fpga/usrp3/top=
/x400/Makefile.inc and delete the three lines that reference &quot;ddr4_64b=
its&quot; or=C2=A0&quot;DDR4_64BITS&quot;, then it should skip that IP in t=
he build.<br></div><div><br></div><div>Wade<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Oct 2, 2021 =
at 1:04 AM Dario Pennisi &lt;<a href=3D"mailto:dario@iptronix.com" target=
=3D"_blank">dario@iptronix.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D=
"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi,<div>i&#39;ve been trying to com=
pile X410 with no luck. apparently=C2=A0the issue is with Vivado installati=
on as it&#39;s failing the generation of the DDR4 IP however i made sure i =
installed the proper version of it, including patches:</div><div><br></div>=
<div>* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)</div><div>=
* Python 3.8.10</div><div>* Vivado v2019.1.1_AR73068 (64-bit)</div><div><br=
></div><div>my machine is running Ubuntu 20.04.1 and is capable of compilin=
g N310 builds successfully.<br></div><div><br></div><div>UHD version is 4.1=
.0.4 (25d617cad7db69fa04699df5f93ece06b0a61199) however this issue was happ=
ening since 4.1.0.0.</div><div><br></div><div>below a dump of the failing b=
it:</div><div><br></div><div><div><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=
=3D"font-size:13.3333px">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></font></div><div dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=
=3D"font-size:13.3333px">BUILDER: Building IP ddr4_64bits</span></font></di=
v><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><sp=
an style=3D"font-size:13.3333px">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></font></div><div=
 dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span sty=
le=3D"font-size:13.3333px">BUILDER: Staging IP in build directory...</span>=
</font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#=
000000"><span style=3D"font-size:13.3333px">BUILDER: Reserving IP location:=
 /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip=
/xczu28drffvg1517-1e/ddr4_64bits</span></font></div><div dir=3D"ltr"><font =
face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.=
3333px">BUILDER: Retargeting IP to part zynquplusRFSOC/xczu28dr/ffvg1517/-1=
/e...</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif=
" color=3D"#000000"><span style=3D"font-size:13.3333px">BUILDER: Building I=
P...</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif"=
 color=3D"#000000"><span style=3D"font-size:13.3333px">[00:00:00] Executing=
 command: vivado -mode batch -source /home/massimo/workdirs/pdc_demod/work/=
src/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log ddr4_64bits.log -=
nojournal</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-s=
erif" color=3D"#000000"><span style=3D"font-size:13.3333px">WARNING: [IP_Fl=
ow 19-2162] IP &#39;ddr4_64bits&#39; is locked:</span></font></div><div dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=
=3D"font-size:13.3333px">CRITICAL WARNING: [filemgmt 20-1366] Unable to res=
et target(s) for the following file is locked: /home/massimo/workdirs/pdc_d=
emod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64b=
its/ddr4_64bits.xci</span></font></div><div dir=3D"ltr"><font face=3D"Calib=
ri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">CRITI=
CAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the follow=
ing file is locked: /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp=
3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xci</span><=
/font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#0=
00000"><span style=3D"font-size:13.3333px">[00:00:07] Current task: Initial=
ization +++ Current Phase: Starting</span></font></div><div dir=3D"ltr"><fo=
nt face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:=
13.3333px">[00:00:07] Current task: Initialization +++ Current Phase: Finis=
hed</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000"><span style=3D"font-size:13.3333px">[00:00:07] Executing =
Tcl: synth_design -top ddr4_64bits -part xczu28dr-ffvg1517-1-e -mode out_of=
_context</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-se=
rif" color=3D"#000000"><span style=3D"font-size:13.3333px">[00:00:07] Start=
ing Synthesis Command</span></font></div><div dir=3D"ltr"><font face=3D"Cal=
ibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">WAR=
NING: [Vivado_Tcl 4-391] The following IPs are missing output products for =
Synthesis target. These output products could be required for synthesis, pl=
ease generate the output products using the generate_target or synth_ip com=
mand before running synth_design.</span></font></div><div dir=3D"ltr"><font=
 face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13=
.3333px">WARNING: [Vivado_Tcl 4-391] The following IPs are missing output p=
roducts for Implementation target. These output products could be required =
for synthesis, please generate the output products using the generate_targe=
t or synth_ip command before running synth_design.</span></font></div><div =
dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span styl=
e=3D"font-size:13.3333px">WARNING: [IP_Flow 19-2162] IP &#39;ddr4_64bits&#3=
9; is locked:</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sa=
ns-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">ERROR: [Des=
ignutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources specified</span=
></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"=
#000000"><span style=3D"font-size:13.3333px">ERROR: [Common 17-53] User Exc=
eption: No open design. Please open an elaborated, synthesized or implement=
ed design before executing this command.</span></font></div><div dir=3D"ltr=
"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-=
size:13.3333px">ERROR: [Common 17-53] User Exception: No open design. Pleas=
e open an elaborated, synthesized or implemented design before executing th=
is command.</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans=
-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">ERROR: [Commo=
n 17-53] User Exception: No open design. Please open an elaborated, synthes=
ized or implemented design before executing this command.</span></font></di=
v><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><sp=
an style=3D"font-size:13.3333px">ERROR: [Common 17-53] User Exception: No o=
pen design. Please open an elaborated, synthesized or implemented design be=
fore executing this command.</span></font></div><div dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333=
px">ERROR: [Common 17-53] User Exception: No open design. Please open an el=
aborated, synthesized or implemented design before executing this command.<=
/span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" colo=
r=3D"#000000"><span style=3D"font-size:13.3333px">ERROR: [Common 17-53] Use=
r Exception: No open design. Please open an elaborated, synthesized or impl=
emented design before executing this command.</span></font></div><div dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=
=3D"font-size:13.3333px">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncust=
omized BOM file &#39;/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usr=
p3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml&#39;</=
span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=
=3D"#000000"><span style=3D"font-size:13.3333px">CRITICAL WARNING: [IP_Flow=
 19-4739] Writing uncustomized BOM file &#39;/home/massimo/workdirs/pdc_dem=
od/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bit=
s/ddr4_64bits.xml&#39;</span></font></div><div dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">CR=
ITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/home/=
massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28=
drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml&#39;</span></font></div><div dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=
=3D"font-size:13.3333px">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncust=
omized BOM file &#39;/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usr=
p3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml&#39;</=
span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=
=3D"#000000"><span style=3D"font-size:13.3333px">CRITICAL WARNING: [IP_Flow=
 19-4739] Writing uncustomized BOM file &#39;/home/massimo/workdirs/pdc_dem=
od/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bit=
s/ddr4_64bits.xml&#39;</span></font></div><div dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">ER=
ROR: [Vivado 12-398] No designs are open</span></font></div><div dir=3D"ltr=
"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-=
size:13.3333px">[00:00:07] Current task: Synthesis +++ Current Phase: Start=
ing</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000"><span style=3D"font-size:13.3333px">[00:00:07] Current ta=
sk: Synthesis +++ Current Phase: Finished</span></font></div><div dir=3D"lt=
r"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font=
-size:13.3333px">[00:00:07] Process terminated. Status: Failure</span></fon=
t></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#00000=
0"><span style=3D"font-size:13.3333px"><br></span></font></div><div dir=3D"=
ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"fo=
nt-size:13.3333px">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></font></div><div dir=3D"ltr"=
><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-s=
ize:13.3333px">Warnings:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A04</span></=
font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#00=
0000"><span style=3D"font-size:13.3333px">Critical Warnings:=C2=A0 7</span>=
</font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#=
000000"><span style=3D"font-size:13.3333px">Errors:=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A08</span></font></div><div style=3D"color:rgb(0,0,0)=
;font-family:Calibri,sans-serif;font-size:13.3333px"><br></div><div style=
=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">si=
nce it seems the issue is related to locking i tried serveral times cleanin=
g up the build directory or even making just X410_IP target with no success=
.=C2=A0</div><div style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;=
font-size:13.3333px">any hints on what is currently going wrong?</div><div =
style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333p=
x">thanks,</div></div><div dir=3D"ltr"><span style=3D"color:rgb(0,0,0);font=
-family:Calibri,sans-serif;font-size:13.3333px">Dario Pennisi</span><br sty=
le=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">=
<br></div></div></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000063b2e205cd6d25c3--

--===============4308779483096921285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4308779483096921285==--

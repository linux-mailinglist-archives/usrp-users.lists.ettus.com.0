Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DB66541FF35
	for <lists+usrp-users@lfdr.de>; Sun,  3 Oct 2021 04:33:37 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AB0BC383F6B
	for <lists+usrp-users@lfdr.de>; Sat,  2 Oct 2021 22:33:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="fi/tTr1d";
	dkim-atps=neutral
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 64D77383B54
	for <usrp-users@lists.ettus.com>; Sat,  2 Oct 2021 22:32:53 -0400 (EDT)
Received: by mail-oi1-f179.google.com with SMTP id y201so16855266oie.3
        for <usrp-users@lists.ettus.com>; Sat, 02 Oct 2021 19:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=P/JX6YYAdY1pyA4McndGShWIDmnze5xgb3bGNC/92Wk=;
        b=fi/tTr1doaOZX4ujs4iDd4eVk0DegTTJDOSqyPiiHdtbwkctngzQ20v/rue9q9ch2D
         LD3oLO71EK52bOogQMspKzOoIr0/uZ/16iGh3tbxmg5ABsvllxJ1fxdSYQFxPTIxAF79
         VKwzga3dKdTPkn0w8VP+z8HBCGhZzFXLzG2O2u+PJ3qh/cd9Q8WKDJyQO2WbO1O9uMw4
         3rpB5cx0AVI1sUizRUlzgSaJN8x47jxHNsuN2O4E441eCbIPCMtlg9fZ9kNdwK2TQ/Ys
         XhcjhZpqequaW7pnB3qQ67ZsHgYIyWImEfARDIB7mIaELKaurZVwAIVDL/EynbFfmc/u
         w6cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=P/JX6YYAdY1pyA4McndGShWIDmnze5xgb3bGNC/92Wk=;
        b=hpaSCEDGvujfchtvmExF+i4fNko2Qu5lkepjxzE4Qyns8lb+pupUDIdAVyGylu1tEg
         5uFWos8IFgTSkM8ZI/6/33NvUmD7uIx20GNHZYXwyMUsimYp33gE3jVIz6ZFxJ2RSi6Y
         EK0+4u2oc+jmfkRHSp4BfGBmcuCkJSi6V5vJXJyDMdJ9ux9+WK+cELndG/Rg6uv4yc/E
         pjuyHF8AKH5jwe6ryTXZWeSL8q1e+Zd6Wxdc7Qg6HioAVh9oc9lyQzBLTVvxJo3Hz5Fr
         941/FnfqwI3BDhMh9BdyZov9ktnzGXhllXVVR0S8sSaQ5DyRAvEKUBuU3h1ob6tkSz6q
         /UJQ==
X-Gm-Message-State: AOAM5326rzD91mEMF7ACDXjtMdXF7J6x+C6Koy5UG7twwGXWHUqqq45k
	eC776EvnXgVwJl+fp8+ITQorg8nnqCob+AfMBupb/LmRByfaliNi
X-Google-Smtp-Source: ABdhPJyqS9xpNBfUvnhuvSdfwEvDnXwSVzndFNv+33GboFgJiJWlBHFYcKVFlVepLTfaKiX6U2TtWzdNRIvWnDugZUw=
X-Received: by 2002:aca:adce:: with SMTP id w197mr7545812oie.145.1633228372656;
 Sat, 02 Oct 2021 19:32:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHaR3=_+Pfp1cfCVd7cxhNx9Y6n_wSwMd1d9UFQBAdzkv+kPQ@mail.gmail.com>
In-Reply-To: <CAKHaR3=_+Pfp1cfCVd7cxhNx9Y6n_wSwMd1d9UFQBAdzkv+kPQ@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 2 Oct 2021 21:32:37 -0500
Message-ID: <CAFche=jVc5RMh+H7JPhV274e5d_om5bwp7J8jRn+Bg17K2wXcw@mail.gmail.com>
To: Dario Pennisi <dario@iptronix.com>
Message-ID-Hash: RP5M7TDHSS2GHOYMPTRL34VL25267355
X-Message-ID-Hash: RP5M7TDHSS2GHOYMPTRL34VL25267355
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: issues compiling X410 FPGA
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RP5M7TDHSS2GHOYMPTRL34VL25267355/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0354832687360125391=="

--===============0354832687360125391==
Content-Type: multipart/alternative; boundary="000000000000fd583005cd699c73"

--000000000000fd583005cd699c73
Content-Type: text/plain; charset="UTF-8"

You might need to also clear the "build-ip" folder. Can you try running
"make cleanall" then try to build it again? I think I saw that error once
when I neglected to clean everything. Let me know if that doesn't work.

Also, the default X410 images don't actually use that IP, so you can remove
it from the build. Edit fpga/usrp3/top/x400/Makefile.inc and delete the
three lines that reference "ddr4_64bits" or "DDR4_64BITS", then it should
skip that IP in the build.

Wade

On Sat, Oct 2, 2021 at 1:04 AM Dario Pennisi <dario@iptronix.com> wrote:

> Hi,
> i've been trying to compile X410 with no luck. apparently the issue is
> with Vivado installation as it's failing the generation of the DDR4 IP
> however i made sure i installed the proper version of it, including patches:
>
> * GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
> * Python 3.8.10
> * Vivado v2019.1.1_AR73068 (64-bit)
>
> my machine is running Ubuntu 20.04.1 and is capable of compiling N310
> builds successfully.
>
> UHD version is 4.1.0.4 (25d617cad7db69fa04699df5f93ece06b0a61199) however
> this issue was happening since 4.1.0.0.
>
> below a dump of the failing bit:
>
> ========================================================
> BUILDER: Building IP ddr4_64bits
> ========================================================
> BUILDER: Staging IP in build directory...
> BUILDER: Reserving IP location:
> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits
> BUILDER: Retargeting IP to part zynquplusRFSOC/xczu28dr/ffvg1517/-1/e...
> BUILDER: Building IP...
> [00:00:00] Executing command: vivado -mode batch -source
> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl
> -log ddr4_64bits.log -nojournal
> WARNING: [IP_Flow 19-2162] IP 'ddr4_64bits' is locked:
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xci
> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
> following file is locked:
> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xci
> [00:00:07] Current task: Initialization +++ Current Phase: Starting
> [00:00:07] Current task: Initialization +++ Current Phase: Finished
> [00:00:07] Executing Tcl: synth_design -top ddr4_64bits -part
> xczu28dr-ffvg1517-1-e -mode out_of_context
> [00:00:07] Starting Synthesis Command
> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
> for Synthesis target. These output products could be required for
> synthesis, please generate the output products using the generate_target or
> synth_ip command before running synth_design.
> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
> for Implementation target. These output products could be required for
> synthesis, please generate the output products using the generate_target or
> synth_ip command before running synth_design.
> WARNING: [IP_Flow 19-2162] IP 'ddr4_64bits' is locked:
> ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
> specified
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
> ERROR: [Vivado 12-398] No designs are open
> [00:00:07] Current task: Synthesis +++ Current Phase: Starting
> [00:00:07] Current task: Synthesis +++ Current Phase: Finished
> [00:00:07] Process terminated. Status: Failure
>
> ========================================================
> Warnings:           4
> Critical Warnings:  7
> Errors:             8
>
> since it seems the issue is related to locking i tried serveral times
> cleaning up the build directory or even making just X410_IP target with no
> success.
> any hints on what is currently going wrong?
> thanks,
> Dario Pennisi
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000fd583005cd699c73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You might need to also clear the &quot;build-ip&quot;=
 folder. Can you try running &quot;make cleanall&quot; then try to build it=
 again? I think I saw that error once when I neglected to clean everything.=
 Let me know if that doesn&#39;t work.<br></div><div><br></div><div>Also, t=
he default X410 images don&#39;t actually use that IP, so you can remove it=
 from the build. Edit fpga/usrp3/top/x400/Makefile.inc and delete the three=
 lines that reference &quot;ddr4_64bits&quot; or=C2=A0&quot;DDR4_64BITS&quo=
t;, then it should skip that IP in the build.<br></div><div><br></div><div>=
Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Oct 2, 2021 at 1:04 AM Dario Pennisi &lt;<a href=3D=
"mailto:dario@iptronix.com">dario@iptronix.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi,<div>i&#39;ve be=
en trying to compile X410 with no luck. apparently=C2=A0the issue is with V=
ivado installation as it&#39;s failing the generation of the DDR4 IP howeve=
r i made sure i installed the proper version of it, including patches:</div=
><div><br></div><div>* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux=
-gnu)</div><div>* Python 3.8.10</div><div>* Vivado v2019.1.1_AR73068 (64-bi=
t)</div><div><br></div><div>my machine is running Ubuntu 20.04.1 and is cap=
able of compiling N310 builds successfully.<br></div><div><br></div><div>UH=
D version is 4.1.0.4 (25d617cad7db69fa04699df5f93ece06b0a61199) however thi=
s issue was happening since 4.1.0.0.</div><div><br></div><div>below a dump =
of the failing bit:</div><div><br></div><div><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#0000=
00"><span style=3D"font-size:13.3333px">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></font><=
/div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000">=
<span style=3D"font-size:13.3333px">BUILDER: Building IP ddr4_64bits</span>=
</font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#=
000000"><span style=3D"font-size:13.3333px">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></fon=
t></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#00000=
0"><span style=3D"font-size:13.3333px">BUILDER: Staging IP in build directo=
ry...</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif=
" color=3D"#000000"><span style=3D"font-size:13.3333px">BUILDER: Reserving =
IP location: /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x=
400/build-ip/xczu28drffvg1517-1e/ddr4_64bits</span></font></div><div dir=3D=
"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"f=
ont-size:13.3333px">BUILDER: Retargeting IP to part zynquplusRFSOC/xczu28dr=
/ffvg1517/-1/e...</span></font></div><div dir=3D"ltr"><font face=3D"Calibri=
, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">BUILDER=
: Building IP...</span></font></div><div dir=3D"ltr"><font face=3D"Calibri,=
 sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">[00:00:0=
0] Executing command: vivado -mode batch -source /home/massimo/workdirs/pdc=
_demod/work/src/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log ddr4_=
64bits.log -nojournal</span></font></div><div dir=3D"ltr"><font face=3D"Cal=
ibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">WAR=
NING: [IP_Flow 19-2162] IP &#39;ddr4_64bits&#39; is locked:</span></font></=
div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><=
span style=3D"font-size:13.3333px">CRITICAL WARNING: [filemgmt 20-1366] Una=
ble to reset target(s) for the following file is locked: /home/massimo/work=
dirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1=
e/ddr4_64bits/ddr4_64bits.xci</span></font></div><div dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.333=
3px">CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for =
the following file is locked: /home/massimo/workdirs/pdc_demod/work/src/uhd=
/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.x=
ci</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" c=
olor=3D"#000000"><span style=3D"font-size:13.3333px">[00:00:07] Current tas=
k: Initialization +++ Current Phase: Starting</span></font></div><div dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=
=3D"font-size:13.3333px">[00:00:07] Current task: Initialization +++ Curren=
t Phase: Finished</span></font></div><div dir=3D"ltr"><font face=3D"Calibri=
, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">[00:00:=
07] Executing Tcl: synth_design -top ddr4_64bits -part xczu28dr-ffvg1517-1-=
e -mode out_of_context</span></font></div><div dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">[0=
0:00:07] Starting Synthesis Command</span></font></div><div dir=3D"ltr"><fo=
nt face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:=
13.3333px">WARNING: [Vivado_Tcl 4-391] The following IPs are missing output=
 products for Synthesis target. These output products could be required for=
 synthesis, please generate the output products using the generate_target o=
r synth_ip command before running synth_design.</span></font></div><div dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=
=3D"font-size:13.3333px">WARNING: [Vivado_Tcl 4-391] The following IPs are =
missing output products for Implementation target. These output products co=
uld be required for synthesis, please generate the output products using th=
e generate_target or synth_ip command before running synth_design.</span></=
font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#00=
0000"><span style=3D"font-size:13.3333px">WARNING: [IP_Flow 19-2162] IP &#3=
9;ddr4_64bits&#39; is locked:</span></font></div><div dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.333=
3px">ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources=
 specified</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-=
serif" color=3D"#000000"><span style=3D"font-size:13.3333px">ERROR: [Common=
 17-53] User Exception: No open design. Please open an elaborated, synthesi=
zed or implemented design before executing this command.</span></font></div=
><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><spa=
n style=3D"font-size:13.3333px">ERROR: [Common 17-53] User Exception: No op=
en design. Please open an elaborated, synthesized or implemented design bef=
ore executing this command.</span></font></div><div dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333=
px">ERROR: [Common 17-53] User Exception: No open design. Please open an el=
aborated, synthesized or implemented design before executing this command.<=
/span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" colo=
r=3D"#000000"><span style=3D"font-size:13.3333px">ERROR: [Common 17-53] Use=
r Exception: No open design. Please open an elaborated, synthesized or impl=
emented design before executing this command.</span></font></div><div dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=
=3D"font-size:13.3333px">ERROR: [Common 17-53] User Exception: No open desi=
gn. Please open an elaborated, synthesized or implemented design before exe=
cuting this command.</span></font></div><div dir=3D"ltr"><font face=3D"Cali=
bri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">ERRO=
R: [Common 17-53] User Exception: No open design. Please open an elaborated=
, synthesized or implemented design before executing this command.</span></=
font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#00=
0000"><span style=3D"font-size:13.3333px">CRITICAL WARNING: [IP_Flow 19-473=
9] Writing uncustomized BOM file &#39;/home/massimo/workdirs/pdc_demod/work=
/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_=
64bits.xml&#39;</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, =
sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">CRITICAL =
WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/home/massimo=
/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1=
517-1e/ddr4_64bits/ddr4_64bits.xml&#39;</span></font></div><div dir=3D"ltr"=
><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-s=
ize:13.3333px">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM=
 file &#39;/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x40=
0/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml&#39;</span></fon=
t></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#00000=
0"><span style=3D"font-size:13.3333px">CRITICAL WARNING: [IP_Flow 19-4739] =
Writing uncustomized BOM file &#39;/home/massimo/workdirs/pdc_demod/work/sr=
c/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64b=
its.xml&#39;</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, san=
s-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">CRITICAL WAR=
NING: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/home/massimo/wo=
rkdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517=
-1e/ddr4_64bits/ddr4_64bits.xml&#39;</span></font></div><div dir=3D"ltr"><f=
ont face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size=
:13.3333px">ERROR: [Vivado 12-398] No designs are open</span></font></div><=
div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span =
style=3D"font-size:13.3333px">[00:00:07] Current task: Synthesis +++ Curren=
t Phase: Starting</span></font></div><div dir=3D"ltr"><font face=3D"Calibri=
, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">[00:00:=
07] Current task: Synthesis +++ Current Phase: Finished</span></font></div>=
<div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span=
 style=3D"font-size:13.3333px">[00:00:07] Process terminated. Status: Failu=
re</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" c=
olor=3D"#000000"><span style=3D"font-size:13.3333px"><br></span></font></di=
v><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><sp=
an style=3D"font-size:13.3333px">=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</span></font></div><div=
 dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span sty=
le=3D"font-size:13.3333px">Warnings:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A04</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif"=
 color=3D"#000000"><span style=3D"font-size:13.3333px">Critical Warnings:=
=C2=A0 7</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-se=
rif" color=3D"#000000"><span style=3D"font-size:13.3333px">Errors:=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08</span></font></div><div style=3D=
"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px"><br><=
/div><div style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-siz=
e:13.3333px">since it seems the issue is related to locking i tried servera=
l times cleaning up the build directory or even making just X410_IP target =
with no success.=C2=A0</div><div style=3D"color:rgb(0,0,0);font-family:Cali=
bri,sans-serif;font-size:13.3333px">any hints on what is currently going wr=
ong?</div><div style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;fon=
t-size:13.3333px">thanks,</div></div><div dir=3D"ltr"><span style=3D"color:=
rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.3333px">Dario Pennis=
i</span><br style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-s=
ize:13.3333px"><br></div></div></div></div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000fd583005cd699c73--

--===============0354832687360125391==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0354832687360125391==--

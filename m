Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4FC8420060
	for <lists+usrp-users@lfdr.de>; Sun,  3 Oct 2021 08:56:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2812838423B
	for <lists+usrp-users@lfdr.de>; Sun,  3 Oct 2021 02:56:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="QPS/9fqS";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id D2420383BE0
	for <usrp-users@lists.ettus.com>; Sun,  3 Oct 2021 02:55:23 -0400 (EDT)
Received: by mail-yb1-f177.google.com with SMTP id d131so12888879ybd.5
        for <usrp-users@lists.ettus.com>; Sat, 02 Oct 2021 23:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=EZGwconukDzf78/JcXvPRRVix9jEWvn5jy0RfZL0XbM=;
        b=QPS/9fqSVHC1bjLiwQS019DhIEgb/Ds+hAKAuB/cMbWKSNYQMUnZOJf2FnDYfLYBFb
         uFpvSWPIN0KN3bO0N7K6BoBKpycCSlFrRMgk7sSUo0jPgJYJG2tw8ani3GpXPWY8D8Mx
         hvPn0cniEj3ul5jdWAA0mrXE+AtC8/naD2d/C9dX/UyvPXlcxlxKrtleDeRSqZyKUos4
         D0RpIzq3fxugYNnlGcwth+CWDr7IpuEA/lNGk/rL4RtqNBIG8K77Urg32WPDzdS2XV6B
         DyL7pid7V22B9S0PtvjgIQU1qQVm9WGpXkB8K/5UKWvhoACdDLuI+NgaPBLnEBu81hkW
         7zGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=EZGwconukDzf78/JcXvPRRVix9jEWvn5jy0RfZL0XbM=;
        b=nfUCf4sBGRRhoUtEfvpxNnqIn8mUVPEuGDlx3aqZ9ruDNnxVt3KXqEBiHRXUNAxi5T
         CzgU/ly/E9Tn3dlxeHhErgou+oTHJAqhlQq5RRslM1GgVU/uf5aO+yPErPGOE7gynXWX
         yAuJEWJNO5bsl4LLEWwKYS+EvUDBNcShM4U7F4rFFnYVVcg74UTm6CnXFuoDHDLn7P5d
         KyQ2fMKsOnJY54I0Z/n5xkKPkn3VxBc6RX6tj++fKsjuohCcVM6ooSVpoOHEF8T8Zp+C
         03YerssKIi5/sAsZ9nALMhB1P2B6DcRHKxL31lYRb7Gg7LV+DeftWhyzD9IQZxyaoKqZ
         LzFw==
X-Gm-Message-State: AOAM532CIXptCKSaWsFTFxGbU5v+Ke5bPwEJSjZanH1Z16TchWl8VAXN
	6W6oO+4UJBJYBY4wkQ3Yklo9gwqn5RCSgFHOG6C1tg==
X-Google-Smtp-Source: ABdhPJyPfNGfL9x/68ypFuSWE0b3Dos2RDcdVaVXgwAXpaZ600RSvmBZMt47BVBpPivZVLaNGrda1SRim31zADrcFQI=
X-Received: by 2002:a25:bc0f:: with SMTP id i15mr6807203ybh.233.1633244122988;
 Sat, 02 Oct 2021 23:55:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAKHaR3=_+Pfp1cfCVd7cxhNx9Y6n_wSwMd1d9UFQBAdzkv+kPQ@mail.gmail.com>
 <CAFche=jVc5RMh+H7JPhV274e5d_om5bwp7J8jRn+Bg17K2wXcw@mail.gmail.com> <CAKHaR3ntz1vkDVmxKtm7aVfMmrWrQpMuoUrrECfJX46JqqpExA@mail.gmail.com>
In-Reply-To: <CAKHaR3ntz1vkDVmxKtm7aVfMmrWrQpMuoUrrECfJX46JqqpExA@mail.gmail.com>
From: Dario Pennisi <dario@iptronix.com>
Date: Sun, 3 Oct 2021 08:55:12 +0200
Message-ID: <CAKHaR3nvC4039=O_W2zDqTqt07msb91C2v_fY1aMAgw9KWU9VA@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: OPDYF6IJRAKJPHU5J7JBVMSAFVLH7B7U
X-Message-ID-Hash: OPDYF6IJRAKJPHU5J7JBVMSAFVLH7B7U
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: issues compiling X410 FPGA
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OPDYF6IJRAKJPHU5J7JBVMSAFVLH7B7U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5322924052513108881=="

--===============5322924052513108881==
Content-Type: multipart/alternative; boundary="000000000000c855aa05cd6d4771"

--000000000000c855aa05cd6d4771
Content-Type: text/plain; charset="UTF-8"

i think i found the answer myself... just needed to remake and reinstall
uhd/host as that was outdated...
thanks,

Dario

On Sun, Oct 3, 2021 at 8:45 AM Dario Pennisi <dario@iptronix.com> wrote:

> Hi Wade,
> thank you for the response. i was actually able to spot the issue... the
> IP version doesn't match the one in the vivado version i have so it
> wouldn't compile. i fixed it by manually upgrading the IP and everything
> worked as expected.
>
> now i'm having another issue trying to compile with OOT IP. similarly to
> what i did for N310 i copied the yml file in my OOT icore dir, ran cmake
> -DUHD_FPGA_DIR=$SRC_DIR/uhd/fpga/ and then ran
> make x410_100_rfnoc_image_core but that is failing with weird errors such
> as these:
>
> jsonschema.exceptions.ValidationError: Additional properties are not
> allowed ('image_core_name' was unexpected)
>
> do you have any hint on what could be the issue here?
> as i mentioned i was able to compile x410 running make from the uhd source
> dir.
>
> thanks,
>
> On Sun, Oct 3, 2021 at 4:32 AM Wade Fife <wade.fife@ettus.com> wrote:
>
>> You might need to also clear the "build-ip" folder. Can you try running
>> "make cleanall" then try to build it again? I think I saw that error once
>> when I neglected to clean everything. Let me know if that doesn't work.
>>
>> Also, the default X410 images don't actually use that IP, so you can
>> remove it from the build. Edit fpga/usrp3/top/x400/Makefile.inc and delete
>> the three lines that reference "ddr4_64bits" or "DDR4_64BITS", then it
>> should skip that IP in the build.
>>
>> Wade
>>
>> On Sat, Oct 2, 2021 at 1:04 AM Dario Pennisi <dario@iptronix.com> wrote:
>>
>>> Hi,
>>> i've been trying to compile X410 with no luck. apparently the issue is
>>> with Vivado installation as it's failing the generation of the DDR4 IP
>>> however i made sure i installed the proper version of it, including patches:
>>>
>>> * GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
>>> * Python 3.8.10
>>> * Vivado v2019.1.1_AR73068 (64-bit)
>>>
>>> my machine is running Ubuntu 20.04.1 and is capable of compiling N310
>>> builds successfully.
>>>
>>> UHD version is 4.1.0.4 (25d617cad7db69fa04699df5f93ece06b0a61199)
>>> however this issue was happening since 4.1.0.0.
>>>
>>> below a dump of the failing bit:
>>>
>>> ========================================================
>>> BUILDER: Building IP ddr4_64bits
>>> ========================================================
>>> BUILDER: Staging IP in build directory...
>>> BUILDER: Reserving IP location:
>>> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits
>>> BUILDER: Retargeting IP to part zynquplusRFSOC/xczu28dr/ffvg1517/-1/e...
>>> BUILDER: Building IP...
>>> [00:00:00] Executing command: vivado -mode batch -source
>>> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl
>>> -log ddr4_64bits.log -nojournal
>>> WARNING: [IP_Flow 19-2162] IP 'ddr4_64bits' is locked:
>>> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
>>> following file is locked:
>>> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xci
>>> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for
>>> the following file is locked:
>>> /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xci
>>> [00:00:07] Current task: Initialization +++ Current Phase: Starting
>>> [00:00:07] Current task: Initialization +++ Current Phase: Finished
>>> [00:00:07] Executing Tcl: synth_design -top ddr4_64bits -part
>>> xczu28dr-ffvg1517-1-e -mode out_of_context
>>> [00:00:07] Starting Synthesis Command
>>> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output
>>> products for Synthesis target. These output products could be required for
>>> synthesis, please generate the output products using the generate_target or
>>> synth_ip command before running synth_design.
>>> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output
>>> products for Implementation target. These output products could be required
>>> for synthesis, please generate the output products using the
>>> generate_target or synth_ip command before running synth_design.
>>> WARNING: [IP_Flow 19-2162] IP 'ddr4_64bits' is locked:
>>> ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
>>> specified
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this command.
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this command.
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this command.
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this command.
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this command.
>>> ERROR: [Common 17-53] User Exception: No open design. Please open an
>>> elaborated, synthesized or implemented design before executing this command.
>>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>>> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
>>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>>> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
>>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>>> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
>>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>>> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
>>> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
>>> '/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml'
>>> ERROR: [Vivado 12-398] No designs are open
>>> [00:00:07] Current task: Synthesis +++ Current Phase: Starting
>>> [00:00:07] Current task: Synthesis +++ Current Phase: Finished
>>> [00:00:07] Process terminated. Status: Failure
>>>
>>> ========================================================
>>> Warnings:           4
>>> Critical Warnings:  7
>>> Errors:             8
>>>
>>> since it seems the issue is related to locking i tried serveral times
>>> cleaning up the build directory or even making just X410_IP target with no
>>> success.
>>> any hints on what is currently going wrong?
>>> thanks,
>>> Dario Pennisi
>>>
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000c855aa05cd6d4771
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">i think i found the answer myself... just needed to remake=
 and reinstall uhd/host as that was outdated...<div>thanks,</div><div><br><=
/div><div>Dario</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sun, Oct 3, 2021 at 8:45 AM Dario Pennisi &lt;<a hr=
ef=3D"mailto:dario@iptronix.com">dario@iptronix.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Wade,<div>thank you for the =
response. i was actually able to spot the issue... the IP version doesn&#39=
;t match the one in the vivado version i have so it wouldn&#39;t compile. i=
 fixed it by manually upgrading the IP and everything worked as expected.</=
div><div><br></div><div>now i&#39;m having another issue trying to compile =
with OOT IP. similarly to what i did for N310 i copied the yml file in my O=
OT icore dir, ran cmake -DUHD_FPGA_DIR=3D$SRC_DIR/uhd/fpga/=C2=A0and then r=
an make=C2=A0x410_100_rfnoc_image_core but that is failing with weird error=
s such as these:<br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr"><b=
r></div><div dir=3D"ltr"><div dir=3D"ltr">jsonschema.exceptions.ValidationE=
rror: Additional properties are not allowed (&#39;image_core_name&#39; was =
unexpected)</div><div><br></div><div>do you have any hint on what could be =
the issue here?</div><div>as i mentioned i was able to compile x410 running=
 make from the uhd source dir.</div><div><br></div><div>thanks,</div></div>=
</div></div></div></div></div></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Sun, Oct 3, 2021 at 4:32 AM Wade Fif=
e &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wade.fife@et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr"><div>You might need to also clear the &quot;build-i=
p&quot; folder. Can you try running &quot;make cleanall&quot; then try to b=
uild it again? I think I saw that error once when I neglected to clean ever=
ything. Let me know if that doesn&#39;t work.<br></div><div><br></div><div>=
Also, the default X410 images don&#39;t actually use that IP, so you can re=
move it from the build. Edit fpga/usrp3/top/x400/Makefile.inc and delete th=
e three lines that reference &quot;ddr4_64bits&quot; or=C2=A0&quot;DDR4_64B=
ITS&quot;, then it should skip that IP in the build.<br></div><div><br></di=
v><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, Oct 2, 2021 at 1:04 AM Dario Pennisi &lt;<a hr=
ef=3D"mailto:dario@iptronix.com" target=3D"_blank">dario@iptronix.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div d=
ir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr">Hi,<div>i&#39;ve been trying to compile X410 with no luck. apparently=
=C2=A0the issue is with Vivado installation as it&#39;s failing the generat=
ion of the DDR4 IP however i made sure i installed the proper version of it=
, including patches:</div><div><br></div><div>* GNU bash, version 5.0.17(1)=
-release (x86_64-pc-linux-gnu)</div><div>* Python 3.8.10</div><div>* Vivado=
 v2019.1.1_AR73068 (64-bit)</div><div><br></div><div>my machine is running =
Ubuntu 20.04.1 and is capable of compiling N310 builds successfully.<br></d=
iv><div><br></div><div>UHD version is 4.1.0.4 (25d617cad7db69fa04699df5f93e=
ce06b0a61199) however this issue was happening since 4.1.0.0.</div><div><br=
></div><div>below a dump of the failing bit:</div><div><br></div><div><div>=
<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><font face=3D"Calibri, s=
ans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-s=
erif" color=3D"#000000"><span style=3D"font-size:13.3333px">BUILDER: Buildi=
ng IP ddr4_64bits</span></font></div><div dir=3D"ltr"><font face=3D"Calibri=
, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, san=
s-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">BUILDER: Sta=
ging IP in build directory...</span></font></div><div dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.333=
3px">BUILDER: Reserving IP location: /home/massimo/workdirs/pdc_demod/work/=
src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits</span>=
</font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#=
000000"><span style=3D"font-size:13.3333px">BUILDER: Retargeting IP to part=
 zynquplusRFSOC/xczu28dr/ffvg1517/-1/e...</span></font></div><div dir=3D"lt=
r"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font=
-size:13.3333px">BUILDER: Building IP...</span></font></div><div dir=3D"ltr=
"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-=
size:13.3333px">[00:00:00] Executing command: vivado -mode batch -source /h=
ome/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/tools/scripts/viv_ge=
nerate_ip.tcl -log ddr4_64bits.log -nojournal</span></font></div><div dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=
=3D"font-size:13.3333px">WARNING: [IP_Flow 19-2162] IP &#39;ddr4_64bits&#39=
; is locked:</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, san=
s-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">CRITICAL WAR=
NING: [filemgmt 20-1366] Unable to reset target(s) for the following file i=
s locked: /home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400=
/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xci</span></font></di=
v><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><sp=
an style=3D"font-size:13.3333px">CRITICAL WARNING: [filemgmt 20-1365] Unabl=
e to generate target(s) for the following file is locked: /home/massimo/wor=
kdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-=
1e/ddr4_64bits/ddr4_64bits.xci</span></font></div><div dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.33=
33px">[00:00:07] Current task: Initialization +++ Current Phase: Starting</=
span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=
=3D"#000000"><span style=3D"font-size:13.3333px">[00:00:07] Current task: I=
nitialization +++ Current Phase: Finished</span></font></div><div dir=3D"lt=
r"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font=
-size:13.3333px">[00:00:07] Executing Tcl: synth_design -top ddr4_64bits -p=
art xczu28dr-ffvg1517-1-e -mode out_of_context</span></font></div><div dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=
=3D"font-size:13.3333px">[00:00:07] Starting Synthesis Command</span></font=
></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000=
"><span style=3D"font-size:13.3333px">WARNING: [Vivado_Tcl 4-391] The follo=
wing IPs are missing output products for Synthesis target. These output pro=
ducts could be required for synthesis, please generate the output products =
using the generate_target or synth_ip command before running synth_design.<=
/span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" colo=
r=3D"#000000"><span style=3D"font-size:13.3333px">WARNING: [Vivado_Tcl 4-39=
1] The following IPs are missing output products for Implementation target.=
 These output products could be required for synthesis, please generate the=
 output products using the generate_target or synth_ip command before runni=
ng synth_design.</span></font></div><div dir=3D"ltr"><font face=3D"Calibri,=
 sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">WARNING:=
 [IP_Flow 19-2162] IP &#39;ddr4_64bits&#39; is locked:</span></font></div><=
div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span =
style=3D"font-size:13.3333px">ERROR: [Designutils 20-414] HRTInvokeSpec : N=
o Verilog or VHDL sources specified</span></font></div><div dir=3D"ltr"><fo=
nt face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:=
13.3333px">ERROR: [Common 17-53] User Exception: No open design. Please ope=
n an elaborated, synthesized or implemented design before executing this co=
mmand.</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-seri=
f" color=3D"#000000"><span style=3D"font-size:13.3333px">ERROR: [Common 17-=
53] User Exception: No open design. Please open an elaborated, synthesized =
or implemented design before executing this command.</span></font></div><di=
v dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span st=
yle=3D"font-size:13.3333px">ERROR: [Common 17-53] User Exception: No open d=
esign. Please open an elaborated, synthesized or implemented design before =
executing this command.</span></font></div><div dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">E=
RROR: [Common 17-53] User Exception: No open design. Please open an elabora=
ted, synthesized or implemented design before executing this command.</span=
></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"=
#000000"><span style=3D"font-size:13.3333px">ERROR: [Common 17-53] User Exc=
eption: No open design. Please open an elaborated, synthesized or implement=
ed design before executing this command.</span></font></div><div dir=3D"ltr=
"><font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-=
size:13.3333px">ERROR: [Common 17-53] User Exception: No open design. Pleas=
e open an elaborated, synthesized or implemented design before executing th=
is command.</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans=
-serif" color=3D"#000000"><span style=3D"font-size:13.3333px">CRITICAL WARN=
ING: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/home/massimo/wor=
kdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-=
1e/ddr4_64bits/ddr4_64bits.xml&#39;</span></font></div><div dir=3D"ltr"><fo=
nt face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:=
13.3333px">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM fil=
e &#39;/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/bu=
ild-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml&#39;</span></font></=
div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><=
span style=3D"font-size:13.3333px">CRITICAL WARNING: [IP_Flow 19-4739] Writ=
ing uncustomized BOM file &#39;/home/massimo/workdirs/pdc_demod/work/src/uh=
d/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.=
xml&#39;</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-se=
rif" color=3D"#000000"><span style=3D"font-size:13.3333px">CRITICAL WARNING=
: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/home/massimo/workdi=
rs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/=
ddr4_64bits/ddr4_64bits.xml&#39;</span></font></div><div dir=3D"ltr"><font =
face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.=
3333px">CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file &=
#39;/home/massimo/workdirs/pdc_demod/work/src/uhd/fpga/usrp3/top/x400/build=
-ip/xczu28drffvg1517-1e/ddr4_64bits/ddr4_64bits.xml&#39;</span></font></div=
><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000"><spa=
n style=3D"font-size:13.3333px">ERROR: [Vivado 12-398] No designs are open<=
/span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" colo=
r=3D"#000000"><span style=3D"font-size:13.3333px">[00:00:07] Current task: =
Synthesis +++ Current Phase: Starting</span></font></div><div dir=3D"ltr"><=
font face=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-siz=
e:13.3333px">[00:00:07] Current task: Synthesis +++ Current Phase: Finished=
</span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" col=
or=3D"#000000"><span style=3D"font-size:13.3333px">[00:00:07] Process termi=
nated. Status: Failure</span></font></div><div dir=3D"ltr"><font face=3D"Ca=
libri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px"><b=
r></span></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" c=
olor=3D"#000000"><span style=3D"font-size:13.3333px">=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</s=
pan></font></div><div dir=3D"ltr"><font face=3D"Calibri, sans-serif" color=
=3D"#000000"><span style=3D"font-size:13.3333px">Warnings:=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A04</span></font></div><div dir=3D"ltr"><font face=3D=
"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333px"=
>Critical Warnings:=C2=A0 7</span></font></div><div dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" color=3D"#000000"><span style=3D"font-size:13.3333=
px">Errors:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A08</span></font><=
/div><div style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-siz=
e:13.3333px"><br></div><div style=3D"color:rgb(0,0,0);font-family:Calibri,s=
ans-serif;font-size:13.3333px">since it seems the issue is related to locki=
ng i tried serveral times cleaning up the build directory or even making ju=
st X410_IP target with no success.=C2=A0</div><div style=3D"color:rgb(0,0,0=
);font-family:Calibri,sans-serif;font-size:13.3333px">any hints on what is =
currently going wrong?</div><div style=3D"color:rgb(0,0,0);font-family:Cali=
bri,sans-serif;font-size:13.3333px">thanks,</div></div><div dir=3D"ltr"><sp=
an style=3D"color:rgb(0,0,0);font-family:Calibri,sans-serif;font-size:13.33=
33px">Dario Pennisi</span><br style=3D"color:rgb(0,0,0);font-family:Calibri=
,sans-serif;font-size:13.3333px"><br></div></div></div></div></div></div></=
div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000c855aa05cd6d4771--

--===============5322924052513108881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5322924052513108881==--

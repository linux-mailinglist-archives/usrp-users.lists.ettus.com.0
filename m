Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C300E14E42E
	for <lists+usrp-users@lfdr.de>; Thu, 30 Jan 2020 21:44:12 +0100 (CET)
Received: from [::1] (port=32846 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixGfZ-0007iH-BL; Thu, 30 Jan 2020 15:44:09 -0500
Received: from mail-ot1-f45.google.com ([209.85.210.45]:37657)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1ixGfW-0007VX-8l
 for usrp-users@lists.ettus.com; Thu, 30 Jan 2020 15:44:06 -0500
Received: by mail-ot1-f45.google.com with SMTP id d3so4418793otp.4
 for <usrp-users@lists.ettus.com>; Thu, 30 Jan 2020 12:43:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qVM9monlI446Zmsb4K/FfnaSYDZa9ex3EIAHtYaQZ2o=;
 b=AX2uXjbwt4EdVyg2paxUekozhsVzbbbnhxOKqoRmn5fjjVTxexB2xdDffLn3Ov+H6N
 U7S4KVeY0BHO5f7INSvZWzvJTD8u6hMnuT6WSTXfcnUIR29X0RUazFoViXWGplJWtRhO
 x/PoKYk7/s/uKeURWnyz/uByL3heFWJ2dX+tgoDVZOVUQIiq+YLr/NQB385q+qG3iRQa
 Er1cZDdcLvny6SqPOjpgx+d3AkgOXxFYM9KHoU+aOYpNduNYjBvTeX6Pzmw08omsCoj9
 qkY4M5F4CkIlCdYEHAfRM0ASKwx+QR5zTIiL0mu4iazZK7MFqPy9GLxDkRNCP61LWl89
 Br6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qVM9monlI446Zmsb4K/FfnaSYDZa9ex3EIAHtYaQZ2o=;
 b=dgr+RI9OWTlsefCnIzcj9uBE7crh4yTdQYMa4FX+gQ29mC6f+KlXEf/UevTWN046YU
 jVEzjI4XdvF3lIJtE9vP9EBBbpHdT3lXbjSljyDIvc32mhU25cmtCwmohak+9DLvA+si
 Nz2NJxekDPl0w9r7+49O/gyJBaJPlLZIa55QkP+Sm7pa6c63Pjn+xgPFblhQKxnx5cA0
 nBv/s7SwaoDjFbA/Rqsyo7jNBe3d91ZEUZPbE0avwz0DjSnZYWQihRGzeZpLWMLoUItd
 cTDvcyC2Ot7LtG2c4g+zUETebC2UrsWGFd9zwbPwax9ak7DxRlFL1LXMl7AZ4TuWdQp+
 CeAQ==
X-Gm-Message-State: APjAAAXJuTzQwziaN3y3CqQX5jdgCzQdfUqWPn0n+CygqVzQmBgkQ55p
 HRBUS+IJP2J9d0rQFC1HusgIdsla7tSOSn5sL60cgg==
X-Google-Smtp-Source: APXvYqxMNrktidb4p6uJ8Jr3g/EB1Dp2u1RczoqaIfnWDKw/X5CzciJfv+oRGuwIKrVea7POleXN5bAWR7PiLv5DAwk=
X-Received: by 2002:a05:6830:2093:: with SMTP id
 y19mr3582732otq.327.1580417005437; 
 Thu, 30 Jan 2020 12:43:25 -0800 (PST)
MIME-Version: 1.0
References: <d509cd368f8d4167a1fdff12613c35a2@dlr.de>
 <CAL263iwKA_R=30JEohT88GPAP6xm-V1VLSL2mNtk1UbJJ9bJPw@mail.gmail.com>
 <CAL263iyqgz_ALuntLoCcpum7k20eXKEXYHUZhqNouUr9r7cwig@mail.gmail.com>
 <CAB__hTSTZwsM7gbsPNfm8tADxyZ=wgnCqRGbK1EDub787nEKeg@mail.gmail.com>
In-Reply-To: <CAB__hTSTZwsM7gbsPNfm8tADxyZ=wgnCqRGbK1EDub787nEKeg@mail.gmail.com>
Date: Thu, 30 Jan 2020 15:43:14 -0500
Message-ID: <CAB__hTRiihYRt+KzOGf1J0js5X7z7O4iPWE_FeZV7uH9m25_bg@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] Default RFNoC image for N310 does not compile
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5841656525384036070=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============5841656525384036070==
Content-Type: multipart/alternative; boundary="0000000000003541dd059d618294"

--0000000000003541dd059d618294
Content-Type: text/plain; charset="UTF-8"

Hi Nate,
I encountered the "Conflicting VCC voltages in bank 32" error while trying
to build an N310 XG RFNOC image on v3.15.0.0 and noticed your user's list
email below which indicated that Vivado 2018.3 requires patch AR71898 in
order to overcome a bug causing this error. However, after installing the
patch I am still getting the error.  Perhaps the patch is not installed
correctly, but the build log file (see snippets below) seems to indicate
that it is. The second line in the log file shows "# Vivado v2018.3_AR71898
(64-bit)" which to me indicates that it sees the patch. However, you will
find the build error mentioned above toward the end of the log.  Any ideas?
Is there another way to determine if the patch is successfully installed?

Rob

#-----------------------------------------------------------
# Vivado v2018.3_AR71898 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Start of session at: Thu Jan 30 11:51:43 2020
# Process ID: 6739
# Current directory: /afs/
crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_RFNOC_XG
# Command line: vivado -mode batch -source /afs/
crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build_n3xx.tcl
-log build.log -journal n3xx.jou
# Log file: /afs/
crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_RFNOC_XG/build.log
# Journal file: /afs/
crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_RFNOC_XG/n3xx.jou
#-----------------------------------------------------------
...
...
...
Attempting to get a license for feature 'Implementation' and/or device
'xc7z100'
INFO: [Common 17-349] Got license for feature 'Implementation' and/or
device 'xc7z100'
INFO: [Common 17-1540] The version limit for your license is '2019.07' and
has expired for new software. A version limit expiration means that,
although you may be able to continue to use the current version of tools or
IP with this license, you will not be eligible for any updates or new
releases.
INFO: [DRC 23-27] Running DRC with 8 threads
INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for
more information.
Running DRC as a precondition to command place_design
INFO: [DRC 23-27] Running DRC with 8 threads
ERROR: [DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in bank
34. For example, the following two ports in this bank have conflicting
VCCOs:
ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=1.500) and ddr3_addr[15]
(LVCMOS18, requiring VCCO=1.800)
WARNING: [DRC CHECK-3] Report rule limit reached: REQP-1839 rule limit
reached: 20 violations have been found.
WARNING: [DRC CHECK-3] Report rule limit reached: REQP-1840 rule limit
reached: 20 violations have been found.
...
...
...
INFO: [Vivado_Tcl 4-198] DRC finished with 1 Errors, 52 Warnings
INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for
more information.
ERROR: [Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.
INFO: [Common 17-83] Releasing license: Implementation
34 Infos, 63 Warnings, 0 Critical Warnings and 2 Errors encountered.
place_design failed
place_design: Time (s): cpu = 00:01:07 ; elapsed = 00:00:58 . Memory (MB):
peak = 9161.891 ; gain = 0.000 ; free physical = 43703 ; free virtual =
93417
ERROR: [Common 17-39] 'place_design' failed due to earlier errors.

    while executing
"place_design -directive $pla_dir"
    (procedure "vivado_strategies::implement_design" line 23)
    invoked from within
"vivado_strategies::implement_design $n3xx_strategy"
    (file "/afs/
crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build_n3xx.tcl"
line 28)
INFO: [Common 17-206] Exiting Vivado at Thu Jan 30 12:40:04 2020...


>
>
> On Mon, Dec 9, 2019 at 2:43 PM Nate Temple via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Robert,
>>
>> So this is a bug related to Vivado, you will need to install this linked
>> below patch and it should resolve it.
>>
>> https://www.xilinx.com/support/answers/71898.html
>>
>> Regards,
>> Nate Temple
>>
>> On Mon, Dec 9, 2019 at 10:38 AM Nate Temple <nate.temple@ettus.com>
>> wrote:
>>
>>> Hi Robert,
>>>
>>> Thanks for the bug report.
>>>
>>> If you're just trying to use RFNoC at this point, I would recommend to
>>> stick with the latest stable release, which at this time is v3.14.1.1.
>>>
>>> Note, 3.14.x.x UHD will require Vivado 2017.4.
>>>
>>>
>>> Regards,
>>> Nate Temple
>>>
>>> On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Hi all!
>>>>
>>>> I tried to compile the default RFNoC image for the N310, using UHD on
>>>> tag v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
>>>>
>>>> Running "make N310_RFNOC_XG", the IP cores are compiled successfully,
>>>> but then Vivado shows the following errors:
>>>>
>>>> ERROR: [Synth 8-524] part-select [15:8] out of range of prefix
>>>> 'STR_SINK_FIFOSIZE'
>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
>>>> ERROR: [Synth 8-521] parameter assignment could not be resolved to a
>>>> constant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
>>>> ERROR: [Synth 8-196] conditional expression could not be resolved to a
>>>> constant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:239]
>>>> WARNING: [Synth 8-693] zero replication count - replication ignored
>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:26]
>>>> WARNING: [Synth 8-693] zero replication count - replication ignored
>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:27]
>>>> WARNING: [Synth 8-693] zero replication count - replication ignored
>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:31]
>>>> ERROR: [Synth 8-6156] failed synthesizing module
>>>> 'noc_shell__parameterized9'
>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:21]
>>>> ERROR: [Synth 8-6156] failed synthesizing module 'noc_block_fosphor'
>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_block_fosphor.v:8]
>>>> ERROR: [Synth 8-6156] failed synthesizing module 'n3xx_core'
>>>> [/usr/local/src/uhd/fpga-src/usrp3/top/n3xx/n3xx_core.v:17]
>>>> ERROR: [Synth 8-6156] failed synthesizing module 'n3xx'
>>>> [/usr/local/src/uhd/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]
>>>>
>>>> The full build.log file is attached. I did not modify any files, just
>>>> trying to compile the RFNoC example as provided.
>>>>
>>>>
>>>>
>>>>
>>>> Btw I also tried to build the default image with "make N310_XG", this
>>>> one compiles but failed later during DRC:
>>>>
>>>> [DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in bank 34.
>>>> For example, the following two ports in this bank have conflicting VCCOs:
>>>> ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=1.500) and ddr3_addr[15]
>>>> (LVCMOS18, requiring VCCO=1.800)
>>>> [Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.
>>>>
>>>>
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>
>>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
>

--0000000000003541dd059d618294
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Nate,</div><div dir=3D"ltr">I encounte=
red the &quot;Conflicting VCC voltages in bank 32&quot; error while trying =
to build an N310 XG RFNOC image on v3.15.0.0 and noticed your user&#39;s li=
st email below which indicated that Vivado 2018.3 requires patch AR71898 in=
 order to overcome a bug causing this error. However, after installing the =
patch I am still getting the error.=C2=A0 Perhaps the patch is not installe=
d correctly, but the build log file (see snippets below) seems to indicate =
that it is. The second line in the log file shows &quot;# Vivado v2018.3_AR=
71898 (64-bit)&quot; which to me indicates that it sees the patch. However,=
 you will find the build error mentioned above toward the end of the log.=
=C2=A0 Any ideas? Is there another way to determine if the patch is success=
fully installed?</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Rob</div>=
<div class=3D"gmail_quote"><div><br></div><font face=3D"monospace">#-------=
----------------------------------------------------<br># <span style=3D"ba=
ckground-color:rgb(255,255,0)">Vivado v2018.3_AR71898 (64-bit)</span><br># =
SW Build 2405991 on Thu Dec =C2=A06 23:36:41 MST 2018<br># IP Build 2404404=
 on Fri Dec =C2=A07 01:43:56 MST 2018<br># Start of session at: Thu Jan 30 =
11:51:43 2020<br># Process ID: 6739<br># Current directory: /afs/<a href=3D=
"http://crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/=
n3xx/build-N310_RFNOC_XG">crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/f=
pga-src/usrp3/top/n3xx/build-N310_RFNOC_XG</a><br># Command line: vivado -m=
ode batch -source /afs/<a href=3D"http://crc.nd.edu/user/r/rkossler/uhd/UHD=
-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build_n3xx.tcl">crc.nd.edu/user/r/rko=
ssler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build_n3xx.tcl</a> -log =
build.log -journal n3xx.jou<br># Log file: /afs/<a href=3D"http://crc.nd.ed=
u/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_R=
FNOC_XG/build.log">crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src=
/usrp3/top/n3xx/build-N310_RFNOC_XG/build.log</a><br># Journal file: /afs/<=
a href=3D"http://crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/u=
srp3/top/n3xx/build-N310_RFNOC_XG/n3xx.jou">crc.nd.edu/user/r/rkossler/uhd/=
UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_RFNOC_XG/n3xx.jou</a><b=
r>#-----------------------------------------------------------<br></font><d=
iv><font face=3D"monospace">...</font></div><div><font face=3D"monospace">.=
..</font></div><div><font face=3D"monospace">...</font></div><font face=3D"=
monospace">Attempting to get a license for feature &#39;Implementation&#39;=
 and/or device &#39;xc7z100&#39;<br>INFO: [Common 17-349] Got license for f=
eature &#39;Implementation&#39; and/or device &#39;xc7z100&#39;<br>INFO: [C=
ommon 17-1540] The version limit for your license is &#39;2019.07&#39; and =
has expired for new software. A version limit expiration means that, althou=
gh you may be able to continue to use the current version of tools or IP wi=
th this license, you will not be eligible for any updates or new releases.<=
br>INFO: [DRC 23-27] Running DRC with 8 threads<br>INFO: [Vivado_Tcl 4-198]=
 DRC finished with 0 Errors<br>INFO: [Vivado_Tcl 4-199] Please refer to the=
 DRC report (report_drc) for more information.<br>Running DRC as a precondi=
tion to command place_design<br>INFO: [DRC 23-27] Running DRC with 8 thread=
s<br><font color=3D"#ff0000">ERROR: [DRC BIVC-1] Bank IO standard Vcc: Conf=
licting Vcc voltages in bank 34. For example, the following two ports in th=
is bank have conflicting VCCOs: </font>=C2=A0<br>ddr3_ck_p[0] (DIFF_SSTL15,=
 requiring VCCO=3D1.500) and ddr3_addr[15] (LVCMOS18, requiring VCCO=3D1.80=
0)<br>WARNING: [DRC CHECK-3] Report rule limit reached: REQP-1839 rule limi=
t reached: 20 violations have been found.<br>WARNING: [DRC CHECK-3] Report =
rule limit reached: REQP-1840 rule limit reached: 20 violations have been f=
ound.<br></font><div><font face=3D"monospace">...</font></div><div><font fa=
ce=3D"monospace">...</font></div><div><font face=3D"monospace">...</font></=
div><div><font face=3D"monospace">INFO: [Vivado_Tcl 4-198] DRC finished wit=
h 1 Errors, 52 Warnings<br>INFO: [Vivado_Tcl 4-199] Please refer to the DRC=
 report (report_drc) for more information.<br><font color=3D"#ff0000">ERROR=
: [Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.</font><br>IN=
FO: [Common 17-83] Releasing license: Implementation<br>34 Infos, 63 Warnin=
gs, 0 Critical Warnings and 2 Errors encountered.<br>place_design failed<br=
>place_design: Time (s): cpu =3D 00:01:07 ; elapsed =3D 00:00:58 . Memory (=
MB): peak =3D 9161.891 ; gain =3D 0.000 ; free physical =3D 43703 ; free vi=
rtual =3D 93417<br><font color=3D"#ff0000">ERROR: [Common 17-39] &#39;place=
_design&#39; failed due to earlier errors.<br></font><br>=C2=A0 =C2=A0 whil=
e executing<br>&quot;place_design -directive $pla_dir&quot;<br>=C2=A0 =C2=
=A0 (procedure &quot;vivado_strategies::implement_design&quot; line 23)<br>=
=C2=A0 =C2=A0 invoked from within<br>&quot;vivado_strategies::implement_des=
ign $n3xx_strategy&quot;<br>=C2=A0 =C2=A0 (file &quot;/afs/<a href=3D"http:=
//crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/b=
uild_n3xx.tcl">crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usr=
p3/top/n3xx/build_n3xx.tcl</a>&quot; line 28)<br>INFO: [Common 17-206] Exit=
ing Vivado at Thu Jan 30 12:40:04 2020...<br></font></div><div>=C2=A0<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 dir=3D"ltr"><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Dec 9, 2019 at 2:43 PM Nate Temple vi=
a USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_b=
lank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-family=
:arial,helvetica,sans-serif">Hi Robert, <br></div><div style=3D"font-family=
:arial,helvetica,sans-serif"><br></div><div style=3D"font-family:arial,helv=
etica,sans-serif">So this is a bug related to Vivado, you will need to inst=
all this linked below patch and it should resolve it.</div><div style=3D"fo=
nt-family:arial,helvetica,sans-serif"><br></div><div style=3D"font-family:a=
rial,helvetica,sans-serif"><a href=3D"https://www.xilinx.com/support/answer=
s/71898.html" target=3D"_blank">https://www.xilinx.com/support/answers/7189=
8.html</a></div><div style=3D"font-family:arial,helvetica,sans-serif"><br><=
/div><div style=3D"font-family:arial,helvetica,sans-serif">Regards,</div><d=
iv style=3D"font-family:arial,helvetica,sans-serif">Nate Temple<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Dec 9, 2019 at 10:38 AM Nate Temple &lt;<a href=3D"mailto:nate.temple=
@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div st=
yle=3D"font-family:arial,helvetica,sans-serif">Hi Robert,<br><br>Thanks for=
 the bug report. <br><br>If you&#39;re just trying to use RFNoC at this poi=
nt, I would recommend to stick with the latest stable release, which at thi=
s time is v3.14.1.1. <br><br>Note, 3.14.x.x UHD will require Vivado 2017.4.=
<br><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 9, 2019 at 7:33 AM Rob=
ert via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_216852075526711976gmail-m_2094307889833480045gmail-m_-77=
24419252963540251gmail-m_1503436027014080033divtagdefaultwrapper" style=3D"=
font-size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" d=
ir=3D"ltr">
<p></p>
<div>Hi all!</div>
<div><br>
</div>
<div>I tried to compile the default RFNoC image for the N310, using UHD on =
tag v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
<br>
</div>
<div><br>
</div>
<div>Running<code> &quot;make</code><code> N310_RFNOC_XG&quot;, the IP core=
s are compiled successfully, but then Vivado shows the following errors:</c=
ode></div>
<div><code></code><br>
</div>
<div>ERROR: [Synth 8-524] part-select [15:8] out of range of prefix &#39;ST=
R_SINK_FIFOSIZE&#39; [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell=
.v:270]<br>
ERROR: [Synth 8-521] parameter assignment could not be resolved to a consta=
nt [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]<br>
ERROR: [Synth 8-196] conditional expression could not be resolved to a cons=
tant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:239]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:26]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:27]<br>
WARNING: [Synth 8-693] zero replication count - replication ignored [/usr/l=
ocal/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:31]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;noc_shell__parameteri=
zed9&#39; [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:21]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;noc_block_fosphor&#39=
; [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_block_fosphor.v:8]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;n3xx_core&#39; [/usr/=
local/src/uhd/fpga-src/usrp3/top/n3xx/n3xx_core.v:17]<br>
ERROR: [Synth 8-6156] failed synthesizing module &#39;n3xx&#39; [/usr/local=
/src/uhd/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]</div>
<div><br>
</div>
<div>The full build.log file is attached. I did not modify any files, just =
trying to compile the RFNoC example as provided.<br>
</div>
<p></p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>Btw I also tried to build the default image with &quot;make N310_XG&quot=
;, this one compiles but failed later during DRC:</p>
<p></p>
<div>[DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in bank 34=
. For example, the following two ports in this bank have conflicting VCCOs:
<br>
ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=3D1.500) and ddr3_addr[15] (LVCMO=
S18, requiring VCCO=3D1.800)<br>
</div>
<div>
<div>[Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.<br>
<br>
</div>
<br>
</div>
<p></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>

--0000000000003541dd059d618294--


--===============5841656525384036070==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5841656525384036070==--


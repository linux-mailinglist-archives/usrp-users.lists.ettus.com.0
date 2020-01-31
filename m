Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99CAF14F09D
	for <lists+usrp-users@lfdr.de>; Fri, 31 Jan 2020 17:30:15 +0100 (CET)
Received: from [::1] (port=40680 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ixZBL-0006zv-5f; Fri, 31 Jan 2020 11:30:11 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:44761)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1ixZBF-0006ux-DN
 for usrp-users@lists.ettus.com; Fri, 31 Jan 2020 11:30:05 -0500
Received: by mail-ot1-f50.google.com with SMTP id h9so7066568otj.11
 for <usrp-users@lists.ettus.com>; Fri, 31 Jan 2020 08:29:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=30u/oNhMaU8xopfyXLcZxuL1wEZGgMoWLOGxa6HmBc8=;
 b=WusR1WF/LS/uQHRfiti3Q4iwWqIj03Uw/l3eYJfyxEGcXuAqx3FrfIz7dEsDaH+8QM
 qk5WvzEUKYtWGXQwUkLQw9Lkpoovz9gCvr/rOVNSsOFOdnYcvIW9j6t2GN5/ZfLBIn8Y
 puwufZkxNuQwMXTOv0oiw3pl12ChHbceNVG+HNer+t1+Vvv7a/eSuHkvSEqQF8ZXvSjQ
 izx95BqqvGlfnwhLAGDrcXMZViSEyCeSgLHL/F0bznhGB2ba0WKs89BJsayg9HwydBKw
 SvONYb1rg7yXPbLFukbMAvgXm+qi7voTRDgUdFac3T74Yo53uVraDqgq3jCP+Wn2O5pf
 yKhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=30u/oNhMaU8xopfyXLcZxuL1wEZGgMoWLOGxa6HmBc8=;
 b=sbs8cdws1nq285FrzPiQC8pfvU39Hcb20OfK+SqatSwAD0Gk+gHKGjbaCAlHhIdP78
 nMZExzhPph62a/9YQBiAdyYbudIz4lGxTbASCiSqIAnzrGguknpvgtaf1DbO5nqUkH2H
 spM7w/2WXi2ZT2iIOyM7t7y7dUtLEwc4fRWpo5/MSo5iHGW851ZT3UNQnCbdGXiuNAJ0
 0D6e1OJkl+vXfBR4og8MTvEKTq00XBXXCJs4D6mSHDUAmxh7pMCGO4NGKQu36c5Qauip
 faxO3XaALO6GS3ulRY1VNycHh9OV1CtinDFAb8HBIKvDuE/0a8UQmWgjCGsKmguN+7fZ
 RQ6w==
X-Gm-Message-State: APjAAAXGMf6XQ0llCc2Hh+9knd2ZwgEJ/KM/3jOUObVVX7PSP+8brFoc
 bh2kGRAaUxmFivcHoR++BhNT8d3O1VD3T6nG7QSjAZj1
X-Google-Smtp-Source: APXvYqyXJlVg+TQYRsdGiY7UbwgNt2VGec6LbHiTMxbuoZ6RDeRAfU/ubL6MkzNGdUpaRN8mOp7jc9jTCnh/yRvb4P0=
X-Received: by 2002:a05:6830:95:: with SMTP id
 a21mr8353013oto.171.1580488164417; 
 Fri, 31 Jan 2020 08:29:24 -0800 (PST)
MIME-Version: 1.0
References: <d509cd368f8d4167a1fdff12613c35a2@dlr.de>
 <CAL263iwKA_R=30JEohT88GPAP6xm-V1VLSL2mNtk1UbJJ9bJPw@mail.gmail.com>
 <CAL263iyqgz_ALuntLoCcpum7k20eXKEXYHUZhqNouUr9r7cwig@mail.gmail.com>
 <CAB__hTSTZwsM7gbsPNfm8tADxyZ=wgnCqRGbK1EDub787nEKeg@mail.gmail.com>
 <CAB__hTRiihYRt+KzOGf1J0js5X7z7O4iPWE_FeZV7uH9m25_bg@mail.gmail.com>
In-Reply-To: <CAB__hTRiihYRt+KzOGf1J0js5X7z7O4iPWE_FeZV7uH9m25_bg@mail.gmail.com>
Date: Fri, 31 Jan 2020 11:29:13 -0500
Message-ID: <CAB__hTQwrzbiJDc+3ywNtcJvaQmUhpcpe5F9bvBdhnXv=8DhEA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0772815157833837819=="
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

--===============0772815157833837819==
Content-Type: multipart/alternative; boundary="0000000000009cde32059d721378"

--0000000000009cde32059d721378
Content-Type: text/plain; charset="UTF-8"

The issue is solved now.  At first I didn't realize that the patch was
related to the build of the DDR IP component, so when I rebuilt without
clean-ing, the DDR output files were not re-built.  I deleted the DDR IP
folder in the build-ip folder and re-ran the build and now it is past the
point where the error occurred.  Sorry for the false alarm.
Rob

On Thu, Jan 30, 2020 at 3:43 PM Rob Kossler <rkossler@nd.edu> wrote:

> Hi Nate,
> I encountered the "Conflicting VCC voltages in bank 32" error while trying
> to build an N310 XG RFNOC image on v3.15.0.0 and noticed your user's list
> email below which indicated that Vivado 2018.3 requires patch AR71898 in
> order to overcome a bug causing this error. However, after installing the
> patch I am still getting the error.  Perhaps the patch is not installed
> correctly, but the build log file (see snippets below) seems to indicate
> that it is. The second line in the log file shows "# Vivado v2018.3_AR71898
> (64-bit)" which to me indicates that it sees the patch. However, you will
> find the build error mentioned above toward the end of the log.  Any ideas?
> Is there another way to determine if the patch is successfully installed?
>
> Rob
>
> #-----------------------------------------------------------
> # Vivado v2018.3_AR71898 (64-bit)
> # SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
> # IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
> # Start of session at: Thu Jan 30 11:51:43 2020
> # Process ID: 6739
> # Current directory: /afs/
> crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_RFNOC_XG
> # Command line: vivado -mode batch -source /afs/
> crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build_n3xx.tcl
> -log build.log -journal n3xx.jou
> # Log file: /afs/
> crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_RFNOC_XG/build.log
> # Journal file: /afs/
> crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_RFNOC_XG/n3xx.jou
> #-----------------------------------------------------------
> ...
> ...
> ...
> Attempting to get a license for feature 'Implementation' and/or device
> 'xc7z100'
> INFO: [Common 17-349] Got license for feature 'Implementation' and/or
> device 'xc7z100'
> INFO: [Common 17-1540] The version limit for your license is '2019.07' and
> has expired for new software. A version limit expiration means that,
> although you may be able to continue to use the current version of tools or
> IP with this license, you will not be eligible for any updates or new
> releases.
> INFO: [DRC 23-27] Running DRC with 8 threads
> INFO: [Vivado_Tcl 4-198] DRC finished with 0 Errors
> INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for
> more information.
> Running DRC as a precondition to command place_design
> INFO: [DRC 23-27] Running DRC with 8 threads
> ERROR: [DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in bank
> 34. For example, the following two ports in this bank have conflicting
> VCCOs:
> ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=1.500) and ddr3_addr[15]
> (LVCMOS18, requiring VCCO=1.800)
> WARNING: [DRC CHECK-3] Report rule limit reached: REQP-1839 rule limit
> reached: 20 violations have been found.
> WARNING: [DRC CHECK-3] Report rule limit reached: REQP-1840 rule limit
> reached: 20 violations have been found.
> ...
> ...
> ...
> INFO: [Vivado_Tcl 4-198] DRC finished with 1 Errors, 52 Warnings
> INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (report_drc) for
> more information.
> ERROR: [Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.
> INFO: [Common 17-83] Releasing license: Implementation
> 34 Infos, 63 Warnings, 0 Critical Warnings and 2 Errors encountered.
> place_design failed
> place_design: Time (s): cpu = 00:01:07 ; elapsed = 00:00:58 . Memory (MB):
> peak = 9161.891 ; gain = 0.000 ; free physical = 43703 ; free virtual =
> 93417
> ERROR: [Common 17-39] 'place_design' failed due to earlier errors.
>
>     while executing
> "place_design -directive $pla_dir"
>     (procedure "vivado_strategies::implement_design" line 23)
>     invoked from within
> "vivado_strategies::implement_design $n3xx_strategy"
>     (file "/afs/
> crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build_n3xx.tcl"
> line 28)
> INFO: [Common 17-206] Exiting Vivado at Thu Jan 30 12:40:04 2020...
>
>
>>
>>
>> On Mon, Dec 9, 2019 at 2:43 PM Nate Temple via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Hi Robert,
>>>
>>> So this is a bug related to Vivado, you will need to install this linked
>>> below patch and it should resolve it.
>>>
>>> https://www.xilinx.com/support/answers/71898.html
>>>
>>> Regards,
>>> Nate Temple
>>>
>>> On Mon, Dec 9, 2019 at 10:38 AM Nate Temple <nate.temple@ettus.com>
>>> wrote:
>>>
>>>> Hi Robert,
>>>>
>>>> Thanks for the bug report.
>>>>
>>>> If you're just trying to use RFNoC at this point, I would recommend to
>>>> stick with the latest stable release, which at this time is v3.14.1.1.
>>>>
>>>> Note, 3.14.x.x UHD will require Vivado 2017.4.
>>>>
>>>>
>>>> Regards,
>>>> Nate Temple
>>>>
>>>> On Mon, Dec 9, 2019 at 7:33 AM Robert via USRP-users <
>>>> usrp-users@lists.ettus.com> wrote:
>>>>
>>>>> Hi all!
>>>>>
>>>>> I tried to compile the default RFNoC image for the N310, using UHD on
>>>>> tag v3.15.0.0-rc2 and Xilinx Vivado 2018.3.1.
>>>>>
>>>>> Running "make N310_RFNOC_XG", the IP cores are compiled successfully,
>>>>> but then Vivado shows the following errors:
>>>>>
>>>>> ERROR: [Synth 8-524] part-select [15:8] out of range of prefix
>>>>> 'STR_SINK_FIFOSIZE'
>>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
>>>>> ERROR: [Synth 8-521] parameter assignment could not be resolved to a
>>>>> constant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:270]
>>>>> ERROR: [Synth 8-196] conditional expression could not be resolved to a
>>>>> constant [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:239]
>>>>> WARNING: [Synth 8-693] zero replication count - replication ignored
>>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:26]
>>>>> WARNING: [Synth 8-693] zero replication count - replication ignored
>>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:27]
>>>>> WARNING: [Synth 8-693] zero replication count - replication ignored
>>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:31]
>>>>> ERROR: [Synth 8-6156] failed synthesizing module
>>>>> 'noc_shell__parameterized9'
>>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_shell.v:21]
>>>>> ERROR: [Synth 8-6156] failed synthesizing module 'noc_block_fosphor'
>>>>> [/usr/local/src/uhd/fpga-src/usrp3/lib/rfnoc/noc_block_fosphor.v:8]
>>>>> ERROR: [Synth 8-6156] failed synthesizing module 'n3xx_core'
>>>>> [/usr/local/src/uhd/fpga-src/usrp3/top/n3xx/n3xx_core.v:17]
>>>>> ERROR: [Synth 8-6156] failed synthesizing module 'n3xx'
>>>>> [/usr/local/src/uhd/fpga-src/usrp3/top/n3xx/dboards/mg/n3xx.v:13]
>>>>>
>>>>> The full build.log file is attached. I did not modify any files, just
>>>>> trying to compile the RFNoC example as provided.
>>>>>
>>>>>
>>>>>
>>>>>
>>>>> Btw I also tried to build the default image with "make N310_XG", this
>>>>> one compiles but failed later during DRC:
>>>>>
>>>>> [DRC BIVC-1] Bank IO standard Vcc: Conflicting Vcc voltages in bank
>>>>> 34. For example, the following two ports in this bank have conflicting
>>>>> VCCOs:
>>>>> ddr3_ck_p[0] (DIFF_SSTL15, requiring VCCO=1.500) and ddr3_addr[15]
>>>>> (LVCMOS18, requiring VCCO=1.800)
>>>>> [Vivado_Tcl 4-23] Error(s) found during DRC. Placer not run.
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> USRP-users mailing list
>>>>> USRP-users@lists.ettus.com
>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>
>>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--0000000000009cde32059d721378
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">The issue is solved now.=C2=A0 At first I=
 didn&#39;t realize that the patch was related to the build of the DDR IP c=
omponent, so when I rebuilt without clean-ing, the DDR output files were no=
t re-built.=C2=A0 I deleted the DDR IP folder in the build-ip=C2=A0folder a=
nd re-ran the build and now it is past the point where the error occurred.=
=C2=A0 Sorry for the false alarm.<div>Rob</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 30, 2020 at 3:43=
 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div dir=3D"ltr">Hi Nate,</div><div dir=3D"ltr">I encountered t=
he &quot;Conflicting VCC voltages in bank 32&quot; error while trying to bu=
ild an N310 XG RFNOC image on v3.15.0.0 and noticed your user&#39;s list em=
ail below which indicated that Vivado 2018.3 requires patch AR71898 in orde=
r to overcome a bug causing this error. However, after installing the patch=
 I am still getting the error.=C2=A0 Perhaps the patch is not installed cor=
rectly, but the build log file (see snippets below) seems to indicate that =
it is. The second line in the log file shows &quot;# Vivado v2018.3_AR71898=
 (64-bit)&quot; which to me indicates that it sees the patch. However, you =
will find the build error mentioned above toward the end of the log.=C2=A0 =
Any ideas? Is there another way to determine if the patch is successfully i=
nstalled?</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Rob</div><div cl=
ass=3D"gmail_quote"><div><br></div><font face=3D"monospace">#--------------=
---------------------------------------------<br># <span style=3D"backgroun=
d-color:rgb(255,255,0)">Vivado v2018.3_AR71898 (64-bit)</span><br># SW Buil=
d 2405991 on Thu Dec =C2=A06 23:36:41 MST 2018<br># IP Build 2404404 on Fri=
 Dec =C2=A07 01:43:56 MST 2018<br># Start of session at: Thu Jan 30 11:51:4=
3 2020<br># Process ID: 6739<br># Current directory: /afs/<a href=3D"http:/=
/crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/bu=
ild-N310_RFNOC_XG" target=3D"_blank">crc.nd.edu/user/r/rkossler/uhd/UHD-3.1=
5.0.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_RFNOC_XG</a><br># Command line=
: vivado -mode batch -source /afs/<a href=3D"http://crc.nd.edu/user/r/rkoss=
ler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build_n3xx.tcl" target=3D"=
_blank">crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/=
n3xx/build_n3xx.tcl</a> -log build.log -journal n3xx.jou<br># Log file: /af=
s/<a href=3D"http://crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-sr=
c/usrp3/top/n3xx/build-N310_RFNOC_XG/build.log" target=3D"_blank">crc.nd.ed=
u/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_R=
FNOC_XG/build.log</a><br># Journal file: /afs/<a href=3D"http://crc.nd.edu/=
user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_RFN=
OC_XG/n3xx.jou" target=3D"_blank">crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0=
.0/uhd/fpga-src/usrp3/top/n3xx/build-N310_RFNOC_XG/n3xx.jou</a><br>#-------=
----------------------------------------------------<br></font><div><font f=
ace=3D"monospace">...</font></div><div><font face=3D"monospace">...</font><=
/div><div><font face=3D"monospace">...</font></div><font face=3D"monospace"=
>Attempting to get a license for feature &#39;Implementation&#39; and/or de=
vice &#39;xc7z100&#39;<br>INFO: [Common 17-349] Got license for feature &#3=
9;Implementation&#39; and/or device &#39;xc7z100&#39;<br>INFO: [Common 17-1=
540] The version limit for your license is &#39;2019.07&#39; and has expire=
d for new software. A version limit expiration means that, although you may=
 be able to continue to use the current version of tools or IP with this li=
cense, you will not be eligible for any updates or new releases.<br>INFO: [=
DRC 23-27] Running DRC with 8 threads<br>INFO: [Vivado_Tcl 4-198] DRC finis=
hed with 0 Errors<br>INFO: [Vivado_Tcl 4-199] Please refer to the DRC repor=
t (report_drc) for more information.<br>Running DRC as a precondition to co=
mmand place_design<br>INFO: [DRC 23-27] Running DRC with 8 threads<br><font=
 color=3D"#ff0000">ERROR: [DRC BIVC-1] Bank IO standard Vcc: Conflicting Vc=
c voltages in bank 34. For example, the following two ports in this bank ha=
ve conflicting VCCOs: </font>=C2=A0<br>ddr3_ck_p[0] (DIFF_SSTL15, requiring=
 VCCO=3D1.500) and ddr3_addr[15] (LVCMOS18, requiring VCCO=3D1.800)<br>WARN=
ING: [DRC CHECK-3] Report rule limit reached: REQP-1839 rule limit reached:=
 20 violations have been found.<br>WARNING: [DRC CHECK-3] Report rule limit=
 reached: REQP-1840 rule limit reached: 20 violations have been found.<br><=
/font><div><font face=3D"monospace">...</font></div><div><font face=3D"mono=
space">...</font></div><div><font face=3D"monospace">...</font></div><div><=
font face=3D"monospace">INFO: [Vivado_Tcl 4-198] DRC finished with 1 Errors=
, 52 Warnings<br>INFO: [Vivado_Tcl 4-199] Please refer to the DRC report (r=
eport_drc) for more information.<br><font color=3D"#ff0000">ERROR: [Vivado_=
Tcl 4-23] Error(s) found during DRC. Placer not run.</font><br>INFO: [Commo=
n 17-83] Releasing license: Implementation<br>34 Infos, 63 Warnings, 0 Crit=
ical Warnings and 2 Errors encountered.<br>place_design failed<br>place_des=
ign: Time (s): cpu =3D 00:01:07 ; elapsed =3D 00:00:58 . Memory (MB): peak =
=3D 9161.891 ; gain =3D 0.000 ; free physical =3D 43703 ; free virtual =3D =
93417<br><font color=3D"#ff0000">ERROR: [Common 17-39] &#39;place_design&#3=
9; failed due to earlier errors.<br></font><br>=C2=A0 =C2=A0 while executin=
g<br>&quot;place_design -directive $pla_dir&quot;<br>=C2=A0 =C2=A0 (procedu=
re &quot;vivado_strategies::implement_design&quot; line 23)<br>=C2=A0 =C2=
=A0 invoked from within<br>&quot;vivado_strategies::implement_design $n3xx_=
strategy&quot;<br>=C2=A0 =C2=A0 (file &quot;/afs/<a href=3D"http://crc.nd.e=
du/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga-src/usrp3/top/n3xx/build_n3xx.=
tcl" target=3D"_blank">crc.nd.edu/user/r/rkossler/uhd/UHD-3.15.0.0/uhd/fpga=
-src/usrp3/top/n3xx/build_n3xx.tcl</a>&quot; line 28)<br>INFO: [Common 17-2=
06] Exiting Vivado at Thu Jan 30 12:40:04 2020...<br></font></div><div>=C2=
=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div dir=3D"ltr"><div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 9, 2019 at 2:43 PM Nate Te=
mple via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-=
family:arial,helvetica,sans-serif">Hi Robert, <br></div><div style=3D"font-=
family:arial,helvetica,sans-serif"><br></div><div style=3D"font-family:aria=
l,helvetica,sans-serif">So this is a bug related to Vivado, you will need t=
o install this linked below patch and it should resolve it.</div><div style=
=3D"font-family:arial,helvetica,sans-serif"><br></div><div style=3D"font-fa=
mily:arial,helvetica,sans-serif"><a href=3D"https://www.xilinx.com/support/=
answers/71898.html" target=3D"_blank">https://www.xilinx.com/support/answer=
s/71898.html</a></div><div style=3D"font-family:arial,helvetica,sans-serif"=
><br></div><div style=3D"font-family:arial,helvetica,sans-serif">Regards,</=
div><div style=3D"font-family:arial,helvetica,sans-serif">Nate Temple<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Dec 9, 2019 at 10:38 AM Nate Temple &lt;<a href=3D"mailto:nate.=
temple@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div style=3D"font-family:arial,helvetica,sans-serif">Hi Robert,<br><br>Than=
ks for the bug report. <br><br>If you&#39;re just trying to use RFNoC at th=
is point, I would recommend to stick with the latest stable release, which =
at this time is v3.14.1.1. <br><br>Note, 3.14.x.x UHD will require Vivado 2=
017.4.<br><br><br>Regards,<br>Nate Temple</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 9, 2019 at 7:33 =
AM Robert via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" =
target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div id=3D"gmail-m_8769560295678703687gmail-m_216852075526711976gmail-m_209=
4307889833480045gmail-m_-7724419252963540251gmail-m_1503436027014080033divt=
agdefaultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Cali=
bri,Helvetica,sans-serif" dir=3D"ltr">
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
</blockquote></div></div>

--0000000000009cde32059d721378--


--===============0772815157833837819==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0772815157833837819==--


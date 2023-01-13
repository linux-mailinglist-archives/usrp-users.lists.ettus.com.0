Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 342E3668AE5
	for <lists+usrp-users@lfdr.de>; Fri, 13 Jan 2023 05:32:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 949ED3842F6
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jan 2023 23:32:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673584355; bh=2FKeNuYRhnISr7iEjMPzbiWV8h3ASPTvSlUwMKnsz/E=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=gcmzGqcAhPD2Bom+zG7S5//lZz9pR3XlgMyvSMnxjSw2Rlndjs/c4qP9ZZB+nVhv1
	 cZ8jJkTlni2ieaDaKmSx73Hr9cdgOAh6MSiSYXlj4ITG017Bpa05rdDY2aRH0fnoam
	 3T3Pv2QsnCSb98/oHKpBdWJ/Lc0coKhC9nLW88JCGIlmK9Ko0HZK1Pu+PLp8vmeTyd
	 uimt+olF5ALYHTrXzPbGnlVpOe90uO5iYc5ln/OinY55EiCLEmXW1Vvvj4uwgDi2ea
	 YIgnSQgulxsIOAand4pFqeCdwcB0tNi2f/hV/mCkU4oBgXoM6QQnz0gh1NgysvDChA
	 8btf5sMQjWj4A==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 1560638422E
	for <usrp-users@lists.ettus.com>; Thu, 12 Jan 2023 23:32:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cKRZR3Bw";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id fy8so49474615ejc.13
        for <usrp-users@lists.ettus.com>; Thu, 12 Jan 2023 20:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ibHRuYxL8bkJxE5b9uA92QcFezewMxgenPD6HbwnXZI=;
        b=cKRZR3Bwv5tm1+ZM/r7k06gqtPbT4b5+oY2m+5dHtoRqKeUtAfrRPu4juQs3c63WdF
         M6rQfE38AgQk/lsQrOUpiEsbZ8I75XobTDwO2Osj4uHNrP7IO9hk3NVy6EJ+6O9yHy/v
         s4UkPNQi9hPjOX6x+eC8TE8EEO2+h8Osh7N/ufGoHAEBqCunnl+v4XLTO0HwjK73uZ7e
         ytCsGbuyFx4HjW3hbhP7KFdXxJYYNbMOm1eDOTEzVf9wx2bb+jnvOabQ30JXjc5bj7pz
         /fO+lO/4z6XZQGNqA6JaZ9MEJIfdCvJdE9TKjAqf3zVRj1Rg9/ZYOoWiL0oBSv9yRLhk
         A8Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ibHRuYxL8bkJxE5b9uA92QcFezewMxgenPD6HbwnXZI=;
        b=Yyv6HCHiC0hq0wupvTpvNWytTuVonNp66QYtI8PJZ6PN7y+/ocs12XMODY7feBufEY
         U7ZRwQrWYmxJTyHHSwsP0/EWFuDc8x2T8Hx1x1r3eG8BnrVbljYUvibFBvOTV5NckUxF
         cMGBaXc74OvcWzR4QVRM3HstSlCdJyxI1EoR01Dy1wVFNkVHA5zIDn2lLY8vjeoCIdwi
         3au88TxBrFL1I4Kq7YlBdpd7yK6zlCvWR0g1ctH3CQ3WyQgUFquEbMwbLUrz1vBq1ZPI
         wKnVmba7QHx8O9K8D6P5ofB6hI3A1Km++mLsb9el1UaT4GlkzfnYZQmWEh5EaovQ0y9w
         knEA==
X-Gm-Message-State: AFqh2kozx/4rXBBkzLK8Y2sFig7IQeWK7Jvx8y6g6RqUnlmwRjzUntD8
	DelaVv0YZuTsThg1Jq4r6O5c5G2fAZ2DAyHDUm1X6Z4qI14=
X-Google-Smtp-Source: AMrXdXvx7ZHOUYKQqReBz0weeZq+T17IcRZ6KyJVUen3sdMNDrktlUy82Llh7QX3Refv3O8FdHJijjbR4YyZ+jOUV28=
X-Received: by 2002:a17:906:9f20:b0:84d:43a0:709a with SMTP id
 fy32-20020a1709069f2000b0084d43a0709amr1557415ejc.328.1673584347762; Thu, 12
 Jan 2023 20:32:27 -0800 (PST)
MIME-Version: 1.0
References: <vLpO2LEYROh6p036tvvwp84QfDVQ37rLpafUZzjg@lists.ettus.com>
In-Reply-To: <vLpO2LEYROh6p036tvvwp84QfDVQ37rLpafUZzjg@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Thu, 12 Jan 2023 23:32:16 -0500
Message-ID: <CAEXYVK65VP-A73PgDS2yB9opE2VB_K1zxOuXk31KEDHwB3j2cA@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: 7LFHAU4NSMVGBBVKADZJIBP3335Z5U7D
X-Message-ID-Hash: 7LFHAU4NSMVGBBVKADZJIBP3335Z5U7D
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Starting FPGA development on Ettus N321
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7LFHAU4NSMVGBBVKADZJIBP3335Z5U7D/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2409952233304620318=="

--===============2409952233304620318==
Content-Type: multipart/alternative; boundary="0000000000008cd7b805f21db8a3"

--0000000000008cd7b805f21db8a3
Content-Type: text/plain; charset="UTF-8"

I am assuming you also sourced setupenv.sh in the n3xx directory?

If you remove the n3xx/build-ip/xc7z100ffg900-2/hb47_1to2 directory and try
again, does it still fail?

Brian

On Thu, Jan 12, 2023 at 6:35 PM <jmaloyan@umass.edu> wrote:

> Hello,
>
>
> I am trying to create a Vivado environment for the ettus 321, however, I
> am running into issues.
>
> I navigated to uhd/fpga/usrp3/top/n3xx where there is a makefile which I
> assume creates the environment in Vivado. I run the makefile, but I end up
> with the error. It was successfully synthesized some of the netlists, but
> it fails on hb47_1to2, and I am not left with a vivado project I can open.
> I have pasted the error below. I am using Ubuntu 20.04, UHD 4.3.0, Vivado
> 2021.1
>
> Thanks
>
> Joe
>
> =======================================================
>
> BUILDER: Building IP hb47_1to2
>
> ========================================================
>
> BUILDER: Staging IP in build directory...
>
> BUILDER: Reserving IP location:
> /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2
>
> BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...
>
> BUILDER: Building IP...
>
> [00:00:00] Executing command: vivado -mode batch -source
> workarea/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log
> hb47_1to2.log -nojournal
>
> [00:00:05] Current task: Initialization +++ Current Phase: Starting
>
> WARNING: [IP_Flow 19-2162] IP 'hb47_1to2' is locked:
>
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xci
>
> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
> following file is locked:
> workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xci
>
> [00:00:05] Current task: Initialization +++ Current Phase: Finished
>
> [00:00:05] Executing Tcl: synth_design -top hb47_1to2 -part
> xc7z100ffg900-2 -mode out_of_context
>
> [00:00:05] Starting Synthesis Command
>
> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
> for Synthesis target. These output products could be required for
> synthesis, please generate the output products using the generate_target or
> synth_ip command before running synth_design.
>
> WARNING: [IP_Flow 19-2162] IP 'hb47_1to2' is locked:
>
> [00:00:06] Current task: Synthesis +++ Current Phase: Starting
>
> ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
> specified
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this command.
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml'
>
> ERROR: [Vivado 12-398] No designs are open
>
> [00:00:06] Current task: Synthesis +++ Current Phase: Finished
>
> [00:00:06] Process terminated. Status: Failure
>
> ========================================================
>
> Warnings: 3
>
> Critical Warnings: 7
>
> Errors: 8
>
> BUILDER: Releasing IP location:
> /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2
>
> make[1]: ***
> [workarea/uhd/fpga/usrp3/top/n3xx/ip/hb47_1to2/Makefile.inc:19:
> IP_HB47_1TO2_TRGT] Error 1
>
> make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'
>
> make: *** [Makefile:90: N3X0_IP] Error 2
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008cd7b805f21db8a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am assuming you also sourced setupenv.sh in the n3xx dir=
ectory?<div><br></div><div>If you remove the n3xx/build-ip/xc7z100ffg900-2/=
hb47_1to2 directory and try again, does it still fail?</div><div><br></div>=
<div>Brian</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jan 12, 2023 at 6:35 PM &lt;<a href=3D"mailto:jmalo=
yan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><p>Hello,</p><p><br></p><p>I am trying to =
create a Vivado environment for the ettus 321, however, I am running into i=
ssues.</p><p>I navigated to uhd/fpga/usrp3/top/n3xx where there is a makefi=
le which I assume creates the environment in Vivado. I run the makefile, bu=
t I end up with the error. It was successfully synthesized some of the netl=
ists, but it fails on hb47_1to2, and I am not left with a vivado project I =
can open. I have pasted the error below. I am using Ubuntu 20.04, UHD 4.3.0=
, Vivado 2021.1</p><p>Thanks</p><p>Joe</p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>BUILDER:=
 Building IP hb47_1to2</p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>BUILDER: Staging IP =
in build directory...</p><p>BUILDER: Reserving IP location: /workarea/uhd/f=
pga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2</p><p>BUILDER: Retarg=
eting IP to part zynq/xc7z100/ffg900/-2...</p><p>BUILDER: Building IP...</p=
><p>[00:00:00] Executing command: vivado -mode batch -source workarea/uhd/f=
pga/usrp3/tools/scripts/viv_generate_ip.tcl -log hb47_1to2.log -nojournal</=
p><p>[00:00:05] Current task: Initialization +++ Current Phase: Starting</p=
><p>WARNING: [IP_Flow 19-2162] IP &#39;hb47_1to2&#39; is locked:</p><p>CRIT=
ICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the followin=
g file is locked: workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2=
/hb47_1to2/hb47_1to2.xci</p><p>CRITICAL WARNING: [filemgmt 20-1365] Unable =
to generate target(s) for the following file is locked: workarea/uhd/fpga/u=
srp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xci</p><p>[00:00=
:05] Current task: Initialization +++ Current Phase: Finished</p><p>[00:00:=
05] Executing Tcl: synth_design -top hb47_1to2 -part xc7z100ffg900-2 -mode =
out_of_context</p><p>[00:00:05] Starting Synthesis Command</p><p>WARNING: [=
Vivado_Tcl 4-391] The following IPs are missing output products for Synthes=
is target. These output products could be required for synthesis, please ge=
nerate the output products using the generate_target or synth_ip command be=
fore running synth_design.</p><p>WARNING: [IP_Flow 19-2162] IP &#39;hb47_1t=
o2&#39; is locked:</p><p>[00:00:06] Current task: Synthesis +++ Current Pha=
se: Starting</p><p>ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog o=
r VHDL sources specified</p><p>ERROR: [Common 17-53] User Exception: No ope=
n design. Please open an elaborated, synthesized or implemented design befo=
re executing this command.</p><p>ERROR: [Common 17-53] User Exception: No o=
pen design. Please open an elaborated, synthesized or implemented design be=
fore executing this command.</p><p>ERROR: [Common 17-53] User Exception: No=
 open design. Please open an elaborated, synthesized or implemented design =
before executing this command.</p><p>ERROR: [Common 17-53] User Exception: =
No open design. Please open an elaborated, synthesized or implemented desig=
n before executing this command.</p><p>ERROR: [Common 17-53] User Exception=
: No open design. Please open an elaborated, synthesized or implemented des=
ign before executing this command.</p><p>ERROR: [Common 17-53] User Excepti=
on: No open design. Please open an elaborated, synthesized or implemented d=
esign before executing this command.</p><p>CRITICAL WARNING: [IP_Flow 19-47=
39] Writing uncustomized BOM file &#39;/workarea/uhd/fpga/usrp3/top/n3xx/bu=
ild-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml&#39;</p><p>CRITICAL WARNING:=
 [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/workarea/uhd/fpga/us=
rp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xml&#39;</p><p>CR=
ITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/worka=
rea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2/hb47_1to2.xm=
l&#39;</p><p>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM f=
ile &#39;/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1t=
o2/hb47_1to2.xml&#39;</p><p>CRITICAL WARNING: [IP_Flow 19-4739] Writing unc=
ustomized BOM file &#39;/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100f=
fg900-2/hb47_1to2/hb47_1to2.xml&#39;</p><p>ERROR: [Vivado 12-398] No design=
s are open</p><p>[00:00:06] Current task: Synthesis +++ Current Phase: Fini=
shed</p><p>[00:00:06] Process terminated. Status: Failure</p><p>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D</p><p>Warnings:           3</p><p>Critical Warnings:  7</p><p>Err=
ors:             8</p><p>BUILDER: Releasing IP location: /workarea/uhd/fpga=
/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/hb47_1to2</p><p>make[1]: *** [work=
area/uhd/fpga/usrp3/top/n3xx/ip/hb47_1to2/Makefile.inc:19: IP_HB47_1TO2_TRG=
T] Error 1</p><p>make[1]: Leaving directory &#39;/workarea/uhd/fpga/usrp3/t=
op/n3xx&#39;</p><p>make: *** [Makefile:90: N3X0_IP] Error 2</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008cd7b805f21db8a3--

--===============2409952233304620318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2409952233304620318==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7360655429
	for <lists+usrp-users@lfdr.de>; Fri, 23 Dec 2022 21:16:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A253383B67
	for <lists+usrp-users@lfdr.de>; Fri, 23 Dec 2022 15:16:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671826608; bh=IVKQh8K6jbQA60IEqIUjAKiOw3cjh4f4OhI5bhKa5o8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=JVV0GW6eyXQCIIUVKOsuj8keHb43lPSQ/zhlxsxMZKWak+YgdE1tudV98wSrWwln7
	 4jmMlBJuo8dLgHAnG7yDXYRRUq/nE9BEqxCQttliWTOT9xR/CbJd+pRdKsvYkM4ItN
	 WYb2nfTjl63mi+Ap2y2M0vZ5FBLaRJll7f06NiRqSR7/I/ijSFhxS4oe26OXMkqXSk
	 gJad/IIDe2v8sFy7GkBNMW0zp4NkOLtrhzOHb6UzXWh9y41kZPvAWld0V7xZbr22on
	 JlVM7TcRSWaCCr6KGNRV/jz71dEK9Y5u3Z+n+L2J9futqNNJEmRnswSd0Zeeic4QMi
	 4f1MgCzpM0Mig==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A796383A42
	for <usrp-users@lists.ettus.com>; Fri, 23 Dec 2022 15:16:39 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="jEXeCffi";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id t17so14157508eju.1
        for <usrp-users@lists.ettus.com>; Fri, 23 Dec 2022 12:16:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zqAygl5L/rgnaY1/Y3IsjJ23HSXyPr7qbwXcXR8Yv2g=;
        b=jEXeCffiSCCdqz1WFmfXlqKQ3ltSawXJy6tjnam9WjVkSRqkksLr9s5qHz3pDHjKF5
         xL4XiF7CCFuemHza0nE4R+o6dMOsvnCIiXcxaeuKn7m2Ty+VNQxzRAbI9+Tg29s1caTY
         wIsKmVX3eEB/dFKLxRZlLA4p0qao8rYe0nY5PEdxHTb9J3fsRQQR2n1vGR6qYZtUSCRO
         PBa+LgzNvQN5sP5zp0cAeN3e0y8Va//DQLQU48M9hfD/nB+3nrP9QbvB9qPp97VYV0X+
         GyByUFX6wT24bhyMlX9MXLD2/tnkKJHEJ6OiFCWCBIwpdD19fuH/7hh3K9hZg32jvTFf
         Uh+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zqAygl5L/rgnaY1/Y3IsjJ23HSXyPr7qbwXcXR8Yv2g=;
        b=5a0Yye/3H6Rs7FzCQbJu3AfPYu/Ul77lwOsLVdhoiJVEkoZ6lI5JxJeu/+V7ySR4q3
         k7uxnBNktFyjbtQIX50+crl9YAGiuQb5YynS8TBc77NSXD3crG4oLnhbYymSECI2PRva
         E+e3fijoMcSqhp9u4Hme3owx2ZMtcpsGe/MIYm7v7JwDFX07ApjqSfDoKyiD4dfmmUMQ
         sNhun1WM6wVB9OLnSP8KpYdiyf5CEzeyHQjXrqLktYznTxebEdAfLNnrWcG2O1D0wnep
         fSg1vHFpjptdcXT576f5/4Cn+7K4Nq+VLs6dBOEcBBnbeywR4AI22heUeWjaWtnMKntv
         7Q9g==
X-Gm-Message-State: AFqh2ko/hc5efZiT7M/+TS6syPhn6NgCFMVCTT/jWsGZPr/GHKqZFuOJ
	E5rXVeaakHsE+hIjAhAdfikQx9a/K9T9KjiELyHOaPxLxanc8IBx2bI=
X-Google-Smtp-Source: AMrXdXv6VRgakRsDNwrW8XnRkmGQt4UNO9PPuAtBfAhpVODVfMspfrN6aDKCDiJBgredfQSvy5YDWGrTgQWJOgOxCOU=
X-Received: by 2002:a17:907:766e:b0:78d:93b1:b3ba with SMTP id
 kk14-20020a170907766e00b0078d93b1b3bamr1413598ejc.66.1671826597320; Fri, 23
 Dec 2022 12:16:37 -0800 (PST)
MIME-Version: 1.0
References: <Omi09gW5JKVe7e3hox8L6ZGmLqG5ncBurLeKmohk@lists.ettus.com>
In-Reply-To: <Omi09gW5JKVe7e3hox8L6ZGmLqG5ncBurLeKmohk@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 23 Dec 2022 14:16:20 -0600
Message-ID: <CAFche=jTB7rV4ZwXqkw3GWBFrfD-u5DfMZJvg7twtX9bb0kLHw@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: P47UI5XBV5DFVEYKK4NTD7V4EZZ2D6D5
X-Message-ID-Hash: P47UI5XBV5DFVEYKK4NTD7V4EZZ2D6D5
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building x310 FPGA image for UHD 4.3.0
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P47UI5XBV5DFVEYKK4NTD7V4EZZ2D6D5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5845595613194749396=="

--===============5845595613194749396==
Content-Type: multipart/alternative; boundary="00000000000075aecc05f0847642"

--00000000000075aecc05f0847642
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It says the IP is locked. Perhaps you have old IP left over from a previous
build that used an older Vivado version (the Vivado version changed with
UHD 4.3). Try doing "make cleanall" to remove all the IP before building it
again. Also, do a 'git status' and make sure you don't have any extra files
in the "ip" directories that need to be removed. Then try running 'make
X310_XG " again.

Wade

On Fri, Dec 23, 2022 at 10:52 AM <ri28856@mit.edu> wrote:

> I=E2=80=99m trying to build the x310 base image on RHEL9. I keep getting =
build
> errors, despite the fact that I built UHD 4.2 no problem. The steps I
> followed:
>
>    1.
>
>    Check out the v4.3.0.0 tag
>    2.
>
>    source setupenv.sh --vivado-path=3D/path/to/Xilinx/Vivado/
>    3.
>
>    make X310_XG
>
> Did the process for building change? Has anybody else encountered problem=
s?
>
> Here is the error message I=E2=80=99m getting plus some context:
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> BUILDER: Building IP axi_hb31
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> BUILDER: Staging IP in build directory...
>
> BUILDER: Reserving IP location:
> /afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tff=
g900-2/axi_hb31
>
> BUILDER: Retargeting IP to part kintex7/xc7k410t/ffg900/-2...
>
> BUILDER: Building IP...
>
> [00:00:00] Executing command: vivado -mode batch -source
> /afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/tools/scripts/viv_generate_i=
p.tcl
> -log axi_hb31.log -nojournal
>
> WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
>
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> /afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tff=
g900-2/axi_hb31/axi_hb31.xci
>
> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
> following file is locked:
> /afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tff=
g900-2/axi_hb31/axi_hb31.xci
>
> [00:00:19] Current task: Initialization +++ Current Phase: Starting
>
> [00:00:19] Current task: Initialization +++ Current Phase: Finished
>
> [00:00:19] Executing Tcl: synth_design -top axi_hb31 -part
> xc7k410tffg900-2 -mode out_of_context
>
> [00:00:19] Starting Synthesis Command
>
> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
> for Synthesis target. These output products could be required for
> synthesis, please generate the output products using the generate_target =
or
> synth_ip command before running synth_design.
>
> WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
>
> ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources
> specified
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tf=
fg900-2/axi_hb31/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tf=
fg900-2/axi_hb31/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tf=
fg900-2/axi_hb31/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tf=
fg900-2/axi_hb31/axi_hb31.xml'
>
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tf=
fg900-2/axi_hb31/axi_hb31.xml'
>
> [00:00:20] Current task: Synthesis +++ Current Phase: Starting
>
> ERROR: [Vivado 12-398] No designs are open
>
> [00:00:20] Current task: Synthesis +++ Current Phase: Finished
>
> [00:00:20] Process terminated. Status: Failure
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
>
> Warnings: 3
>
> Critical Warnings: 7
>
> Errors: 8
>
> BUILDER: Releasing IP location:
> /afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tff=
g900-2/axi_hb31
>
> make[1]: ***
> [/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/lib/ip/axi_hb31/Makefile.in=
c:20:
> LIB_IP_AXI_HB31_TRGT] Error 1
>
> make[1]: Leaving directory
> '/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300'
>
> make: *** [Makefile:80: X310_IP] Error 2
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000075aecc05f0847642
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It says the IP is locked. Perhaps you have old IP lef=
t over from a previous build that used an older Vivado version (the Vivado =
version changed with UHD 4.3). Try doing &quot;make cleanall&quot; to remov=
e all the IP before building it again. Also, do a &#39;git status&#39; and =
make sure you don&#39;t have any extra files in the &quot;ip&quot; director=
ies that need to be removed. Then try running &#39;make=C2=A0
X310_XG

&quot; again.</div><div><br></div><div>Wade<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 23, 2022=
 at 10:52 AM &lt;<a href=3D"mailto:ri28856@mit.edu">ri28856@mit.edu</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>I=E2=
=80=99m trying to build the x310 base image on RHEL9. I keep getting build =
errors, despite the fact that I built UHD 4.2 no problem. The steps I follo=
wed:</p><ol><li><p>Check out the v4.3.0.0 tag</p></li><li><p>source setupen=
v.sh --vivado-path=3D/path/to/Xilinx/Vivado/</p></li><li><p>make X310_XG</p=
></li></ol><p>Did the process for building change? Has anybody else encount=
ered problems?</p><p>Here is the error message I=E2=80=99m getting plus som=
e context:</p><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p><p>BUILDER: Building IP axi_hb31</p=
><p>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D</p><p>BUILDER: Staging IP in build directory...</p=
><p>BUILDER: Reserving IP location: /afs/mitll/usr/ri28856/public/uhd/fpga/=
usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31</p><p>BUILDER: Retargetin=
g IP to part kintex7/xc7k410t/ffg900/-2...</p><p>BUILDER: Building IP...</p=
><p>[00:00:00] Executing command: vivado -mode batch -source /afs/mitll/usr=
/ri28856/public/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log axi_h=
b31.log -nojournal</p><p>WARNING: [IP_Flow 19-2162] IP &#39;axi_hb31&#39; i=
s locked:</p><p>CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target=
(s) for the following file is locked: /afs/mitll/usr/ri28856/public/uhd/fpg=
a/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci</p><p>CRIT=
ICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the follo=
wing file is locked: /afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/=
build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xci</p><p>[00:00:19] Current ta=
sk: Initialization +++ Current Phase: Starting</p><p>[00:00:19] Current tas=
k: Initialization +++ Current Phase: Finished</p><p>[00:00:19] Executing Tc=
l: synth_design -top axi_hb31 -part xc7k410tffg900-2 -mode out_of_context</=
p><p>[00:00:19] Starting Synthesis Command</p><p>WARNING: [Vivado_Tcl 4-391=
] The following IPs are missing output products for Synthesis target. These=
 output products could be required for synthesis, please generate the outpu=
t products using the generate_target or synth_ip command before running syn=
th_design.</p><p>WARNING: [IP_Flow 19-2162] IP &#39;axi_hb31&#39; is locked=
:</p><p>ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sour=
ces specified</p><p>ERROR: [Common 17-53] User Exception: No open design. P=
lease open an elaborated, synthesized or implemented design before executin=
g this command.</p><p>ERROR: [Common 17-53] User Exception: No open design.=
 Please open an elaborated, synthesized or implemented design before execut=
ing this command.</p><p>ERROR: [Common 17-53] User Exception: No open desig=
n. Please open an elaborated, synthesized or implemented design before exec=
uting this command.</p><p>ERROR: [Common 17-53] User Exception: No open des=
ign. Please open an elaborated, synthesized or implemented design before ex=
ecuting this command.</p><p>ERROR: [Common 17-53] User Exception: No open d=
esign. Please open an elaborated, synthesized or implemented design before =
executing this command.</p><p>ERROR: [Common 17-53] User Exception: No open=
 design. Please open an elaborated, synthesized or implemented design befor=
e executing this command.</p><p>CRITICAL WARNING: [IP_Flow 19-4739] Writing=
 uncustomized BOM file &#39;/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/to=
p/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml&#39;</p><p>CRITICAL =
WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/afs/mitll/us=
r/ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31=
/axi_hb31.xml&#39;</p><p>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncust=
omized BOM file &#39;/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/=
build-ip/xc7k410tffg900-2/axi_hb31/axi_hb31.xml&#39;</p><p>CRITICAL WARNING=
: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/afs/mitll/usr/ri288=
56/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31/axi_hb=
31.xml&#39;</p><p>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized =
BOM file &#39;/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300/build-i=
p/xc7k410tffg900-2/axi_hb31/axi_hb31.xml&#39;</p><p>[00:00:20] Current task=
: Synthesis +++ Current Phase: Starting</p><p>ERROR: [Vivado 12-398] No des=
igns are open</p><p>[00:00:20] Current task: Synthesis +++ Current Phase: F=
inished</p><p>[00:00:20] Process terminated. Status: Failure</p><p>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D</p><p>Warnings:           3</p><p>Critical Warnings:  7</p><p>=
Errors:             8</p><p>BUILDER: Releasing IP location: /afs/mitll/usr/=
ri28856/public/uhd/fpga/usrp3/top/x300/build-ip/xc7k410tffg900-2/axi_hb31</=
p><p>make[1]: *** [/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/lib/ip/axi_=
hb31/Makefile.inc:20: LIB_IP_AXI_HB31_TRGT] Error 1</p><p>make[1]: Leaving =
directory &#39;/afs/mitll/usr/ri28856/public/uhd/fpga/usrp3/top/x300&#39;</=
p><p>make: *** [Makefile:80: X310_IP] Error 2</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000075aecc05f0847642--

--===============5845595613194749396==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5845595613194749396==--

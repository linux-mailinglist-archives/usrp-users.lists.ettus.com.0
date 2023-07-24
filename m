Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 734107601FD
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jul 2023 00:05:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EEAA1384B50
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jul 2023 18:05:10 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690236310; bh=O4U/1HheRnjhkD/GhbxioaahlYVXhUs4n5PSFKQIkiY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=J52zu6HO471yP9dvpP3ISuNXNa+i4uZueDg4POJt3S8qNLYT0jOvGt4TEMDEPtKLI
	 +53MlSMBM9TsfOoA0uMr7t4NH8BK+MTfQdfR5a1WvJBj1SZBs2vn3K+1/5H4kAfSuF
	 btmm8LnCjU6unbNObytJba9NSx6hQGDKYWBefcbQwl+QQK/CmjbOteyvdHxqBwWfMM
	 u4z8QLz8v8ugmCPTGoDVOZEifSXub26vH4ttN2kkv1eqVkLb+h5uqm7XPfIWzPXrEM
	 V20TMAa4weK0mbEOARUDcSjHX83m+bHTWkRwlRkfayG6HSpUt/PWISW27L14URRvP1
	 w5mzfg+dWOXgQ==
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 342CE384B0D
	for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 18:04:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="A0c+5L7c";
	dkim-atps=neutral
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-4fcd615d7d6so7281177e87.3
        for <usrp-users@lists.ettus.com>; Mon, 24 Jul 2023 15:04:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1690236269; x=1690841069;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BXFJ9hPWssQpUHgq1Syy+qdxfPbcrG6WuGsPa6h+UZA=;
        b=A0c+5L7cOAgO3wKYaQBp6zwBgG4rLXzF0fRJvR/4n8eGDNA+xEASgBM5EBOFd9LcC5
         UqANTzxxLMFnjORaDf8h6BCZ+jTVvopCE721SKrZkTOxAKkPMLdsNAu/zinyadz/xYqW
         T7bLe67G5pnSui3w76xGMAsxsuErremOFef+jLehWLf07BrYoiL9zeNOEtrulCKsTOxO
         AyBapko7QY5D4ZBhid5Gf2uO2Ea8WIm4AZCWkppkqYK2H1mLscKHtsDBGQHiUIT7qMUk
         Tdgr7jMg4zx5peDrDIS64j/qF07tLozTjVz99sfSdd7K6Y9ogfBey+4rD3IN1n2Y9a9o
         egrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690236269; x=1690841069;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BXFJ9hPWssQpUHgq1Syy+qdxfPbcrG6WuGsPa6h+UZA=;
        b=lvDLjOFyLwsEO8hXqp6eig84PBZTVdWt7zApo/jnWiQteQ2lW7b8b96dur7wtr+4sg
         hWJnhE/+UXY99B83809AQCNoTHhTh/tiZROyGjn/SejqLPx2TpsFul6WNLE38utiTfcb
         xjN4rFW/+KPRBu8eJVHQDIQP6bBib1Ih5+LaRjH5Vzhk1I/4E8LlAP134e/cYXbVjkWz
         67j6OLm4o2z1983zHyb4uir0cEn8MN5QtzDogOrvxr2NP+gOm9/VwsTyMz9B7mtszAEe
         28Hf/DIET2lGMGQcKFXH97qumr9IAXiwJ0V8gH4p+fn7K53pdgveX8K44Rt3OLwBRlEy
         4FRw==
X-Gm-Message-State: ABy/qLY5O58kB5lrFocD5d5IwVgcCAgRkybBb8HvsKihoYUrOx5OYeYL
	equ1Nq24hrQwafCKybSVkCMjLDcJ3U83Sb2rPi7h0fmkk4bbnKD9HOIQVA==
X-Google-Smtp-Source: APBJJlEmgKdSglZZB6nuHnwljsPCTmTaUqvIvm7ILlE0N+hGbdQRzne3GQ86c9Mf3RvgL2DYP1W3IZx8HoogyUbqkY4=
X-Received: by 2002:ac2:4f0b:0:b0:4fd:c785:58b with SMTP id
 k11-20020ac24f0b000000b004fdc785058bmr6564691lfr.4.1690236268541; Mon, 24 Jul
 2023 15:04:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAOcHjoKkjXQUK-w8433gJy-Cb+PdvUKmkhQ5xj=fx10cN1NyKg@mail.gmail.com>
In-Reply-To: <CAOcHjoKkjXQUK-w8433gJy-Cb+PdvUKmkhQ5xj=fx10cN1NyKg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 24 Jul 2023 17:04:12 -0500
Message-ID: <CAFche=g57Ywga6p2x3O4zyiWSj660CC8gwkLYX-4x14i6fwQCQ@mail.gmail.com>
To: Aerman TUERXUN <armantursun@g.ecc.u-tokyo.ac.jp>
Message-ID-Hash: I7RA6C2QYTY2H27FDJQ3YBNCAYXBHAXO
X-Message-ID-Hash: I7RA6C2QYTY2H27FDJQ3YBNCAYXBHAXO
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Building Bitstream for USRP X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/I7RA6C2QYTY2H27FDJQ3YBNCAYXBHAXO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5377840043174996699=="

--===============5377840043174996699==
Content-Type: multipart/alternative; boundary="0000000000005fb4d6060142cc3b"

--0000000000005fb4d6060142cc3b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

What did you run to get this error? Which version of the UHD repo are you
using?

Building the FPGA requires a Vivado license, but all of the IP is included
with Vivado. Assuming you have a working Vivado license, please ensure you
have the correct version of Vivado installed for the version of the FPGA
you are building. The error message you received seems to suggest the
version of Vivado you have installed doesn't match the version the IP is
expecting:

ERROR: [Common 17-69] Command failed: * IP definition '10G/25G Ethernet
Subsystem (3.0)' for IP 'xge_pcs_pma' (customized with software release
2019.1.1) has a different revision in the IP Catalog.

If the version of the IP that's included in your Vivado installation
doesn't match the version of the IP that the UHD repo uses then Vivado will
"lock" the IP, causing the build to fail.

Thanks,

Wade

On Sun, Jul 23, 2023 at 12:48=E2=80=AFAM Aerman TUERXUN <
armantursun@g.ecc.u-tokyo.ac.jp> wrote:

> Hi USRP users,
>
> I am trying to build a gain block on USRP X410.
> When I tried to build bitstream for X410_XG_100, I got the following
> errors.
> Seems some IP is locked for USRP X410.
> Does that mean I need to purchase the IPs for building bitstream?
> It's odd to me that we still need to buy specific IPs to build bitsstream
> with RFNoC.
> How can I build a bitstream for X410?
> Thanks in advance.
>
> Environment successfully initialized.
> BUILDER: Checking tools...
> * GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
> * Python 3.8.10
> * Vivado v2019.1 (64-bit)
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> BUILDER: Building IP xge_pcs_pma
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> BUILDER: Staging IP in build directory...
> BUILDER: Reserving IP location:
> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma
> BUILDER: Retargeting IP to part zynquplusRFSOC/xczu28dr/ffvg1517/-1/e...
> BUILDER: Building IP...
> [00:00:00] Executing command: vivado -mode batch -source
> /uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log xge_pcs_pma.log
> -nojournal
> WARNING: [IP_Flow 19-2162] IP 'xge_pcs_pma' is locked:
> CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
> following file is locked:
> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs=
_pma.xci
> CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
> following file is locked:
> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs=
_pma.xci
> [00:00:09] Current task: Initialization +++ Current Phase: Starting
> [00:00:09] Current task: Initialization +++ Current Phase: Finished
> [00:00:09] Executing Tcl: synth_design -top xge_pcs_pma -part
> xczu28dr-ffvg1517-1-e -mode out_of_context
> [00:00:09] Starting Synthesis Command
> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
> for Synthesis target. These output products could be required for
> synthesis, please generate the output products using the generate_target =
or
> synth_ip command before running synth_design.
> WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
> for Implementation target. These output products could be required for
> synthesis, please generate the output products using the generate_target =
or
> synth_ip command before running synth_design.
> WARNING: [IP_Flow 19-2162] IP 'xge_pcs_pma' is locked:
> ERROR: [Synth 8-439] module 'xge_pcs_pma' not found
> ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
> console or run log file for details
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
> ERROR: [Common 17-53] User Exception: No open design. Please open an
> elaborated, synthesized or implemented design before executing this comma=
nd.
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pc=
s_pma.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pc=
s_pma.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pc=
s_pma.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pc=
s_pma.xml'
> CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
> '/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pc=
s_pma.xml'
> ERROR: [Vivado 12-398] No designs are open
> ERROR: [Common 17-69] Command failed: * IP definition '10G/25G Ethernet
> Subsystem (3.0)' for IP 'xge_pcs_pma' (customized with software release
> 2019.1.1) has a different revision in the IP Catalog.
> [00:00:23] Current task: Synthesis +++ Current Phase: Starting
> [00:00:23] Current task: Synthesis +++ Current Phase: Finished
> [00:00:23] Process terminated. Status: Failure
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D
> Warnings:           4
> Critical Warnings:  7
> Errors:             10
>
> BUILDER: Releasing IP location:
> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma
> make[5]: *** [/uhd/fpga/usrp3/top/x400/ip/xge_pcs_pma/Makefile.inc:43:
> /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs=
_pma.xci.out]
> Error 1
> make[4]: *** [Makefile:129: X410_XG_100] Error 2
> Built target x410_rfnoc_image_core
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005fb4d6060142cc3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>What did you run to get =
this error? Which version of the UHD repo are you using?<br></div><div><br>=
</div><div>Building the FPGA requires a Vivado license, but all of the IP i=
s included with Vivado. Assuming you have a working Vivado license, please =
ensure you have the correct version of Vivado installed for the version of =
the FPGA you are building. The error message you received seems to suggest =
the version of Vivado you have installed doesn&#39;t match the version the =
IP is expecting:</div><div><br></div><div>
ERROR: [Common 17-69] Command failed: * IP definition &#39;10G/25G Ethernet=
=20
Subsystem (3.0)&#39; for IP &#39;xge_pcs_pma&#39; (customized with software=
 release=20
2019.1.1) has a different revision in the IP Catalog.</div><div><br></div><=
div>If the version of the IP that&#39;s included in your Vivado installatio=
n doesn&#39;t match the version of the IP that the UHD repo uses then Vivad=
o will &quot;lock&quot; the IP, causing the build to fail. <br></div><div><=
br></div><div>Thanks,</div><div><br></div><div>Wade<br>

</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Sun, Jul 23, 2023 at 12:48=E2=80=AFAM Aerman TUERXUN &lt;<a href=
=3D"mailto:armantursun@g.ecc.u-tokyo.ac.jp">armantursun@g.ecc.u-tokyo.ac.jp=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div>Hi USRP users,</div><div><br></div><div>I am trying t=
o build a gain block on USRP X410.</div><div>When I tried to build bitstrea=
m for X410_XG_100, I got the following errors.</div><div>Seems some IP is l=
ocked for USRP X410.</div><div>Does that mean I need to purchase the IPs fo=
r building bitstream?</div><div>It&#39;s odd to me that we still need to bu=
y specific IPs to build bitsstream with RFNoC.</div><div>How can I build a =
bitstream for X410?</div><div>Thanks in advance. <br></div><div><br></div><=
div>Environment successfully initialized.<br>BUILDER: Checking tools...<br>=
* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)<br>* Python 3.8=
.10<br>* Vivado v2019.1 (64-bit)<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>BUILDER: Building=
 IP xge_pcs_pma<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>BUILDER: Staging IP in build dir=
ectory...<br>BUILDER: Reserving IP location: /uhd/fpga/usrp3/top/x400/build=
-ip/xczu28drffvg1517-1e/xge_pcs_pma<br>BUILDER: Retargeting IP to part zynq=
uplusRFSOC/xczu28dr/ffvg1517/-1/e...<br>BUILDER: Building IP...<br>[00:00:0=
0] Executing command: vivado -mode batch -source /uhd/fpga/usrp3/tools/scri=
pts/viv_generate_ip.tcl -log xge_pcs_pma.log -nojournal<br>WARNING: [IP_Flo=
w 19-2162] IP &#39;xge_pcs_pma&#39; is locked:<br>CRITICAL WARNING: [filemg=
mt 20-1366] Unable to reset target(s) for the following file is locked: /uh=
d/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.=
xci<br>CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) fo=
r the following file is locked: /uhd/fpga/usrp3/top/x400/build-ip/xczu28drf=
fvg1517-1e/xge_pcs_pma/xge_pcs_pma.xci<br>[00:00:09] Current task: Initiali=
zation +++ Current Phase: Starting<br>[00:00:09] Current task: Initializati=
on +++ Current Phase: Finished<br>[00:00:09] Executing Tcl: synth_design -t=
op xge_pcs_pma -part xczu28dr-ffvg1517-1-e -mode out_of_context<br>[00:00:0=
9] Starting Synthesis Command<br>WARNING: [Vivado_Tcl 4-391] The following =
IPs are missing output products for Synthesis target. These output products=
 could be required for synthesis, please generate the output products using=
 the generate_target or synth_ip command before running synth_design.<br>WA=
RNING: [Vivado_Tcl 4-391] The following IPs are missing output products for=
 Implementation target. These output products could be required for synthes=
is, please generate the output products using the generate_target or synth_=
ip command before running synth_design.<br>WARNING: [IP_Flow 19-2162] IP &#=
39;xge_pcs_pma&#39; is locked:<br>ERROR: [Synth 8-439] module &#39;xge_pcs_=
pma&#39; not found<br>ERROR: [Common 17-69] Command failed: Synthesis faile=
d - please see the console or run log file for details<br>ERROR: [Common 17=
-53] User Exception: No open design. Please open an elaborated, synthesized=
 or implemented design before executing this command.<br>ERROR: [Common 17-=
53] User Exception: No open design. Please open an elaborated, synthesized =
or implemented design before executing this command.<br>ERROR: [Common 17-5=
3] User Exception: No open design. Please open an elaborated, synthesized o=
r implemented design before executing this command.<br>ERROR: [Common 17-53=
] User Exception: No open design. Please open an elaborated, synthesized or=
 implemented design before executing this command.<br>ERROR: [Common 17-53]=
 User Exception: No open design. Please open an elaborated, synthesized or =
implemented design before executing this command.<br>ERROR: [Common 17-53] =
User Exception: No open design. Please open an elaborated, synthesized or i=
mplemented design before executing this command.<br>CRITICAL WARNING: [IP_F=
low 19-4739] Writing uncustomized BOM file &#39;/uhd/fpga/usrp3/top/x400/bu=
ild-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xml&#39;<br>CRITICAL WAR=
NING: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/uhd/fpga/usrp3/=
top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xml&#39;<br>C=
RITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file &#39;/uhd/=
fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xm=
l&#39;<br>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file=
 &#39;/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge=
_pcs_pma.xml&#39;<br>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomiz=
ed BOM file &#39;/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_=
pcs_pma/xge_pcs_pma.xml&#39;<br>ERROR: [Vivado 12-398] No designs are open<=
br>ERROR: [Common 17-69] Command failed: * IP definition &#39;10G/25G Ether=
net Subsystem (3.0)&#39; for IP &#39;xge_pcs_pma&#39; (customized with soft=
ware release 2019.1.1) has a different revision in the IP Catalog.<br>[00:0=
0:23] Current task: Synthesis +++ Current Phase: Starting<br>[00:00:23] Cur=
rent task: Synthesis +++ Current Phase: Finished<br>[00:00:23] Process term=
inated. Status: Failure<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>Warnings: =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 4<br>Critical Warnings: =C2=A07<br>Errors: =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 10<br><br>BUILDER: Releasing IP location=
: /uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma<br>make=
[5]: *** [/uhd/fpga/usrp3/top/x400/ip/xge_pcs_pma/Makefile.inc:43: /uhd/fpg=
a/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xci.o=
ut] Error 1<br>make[4]: *** [Makefile:129: X410_XG_100] Error 2<br>Built ta=
rget x410_rfnoc_image_core</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005fb4d6060142cc3b--

--===============5377840043174996699==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5377840043174996699==--

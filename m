Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8C075E007
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jul 2023 07:47:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C0373384546
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jul 2023 01:47:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690091274; bh=1Tgi0W58WTmLZtYWVtkOB2oZE3F8NqrfsXHvLYll808=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=Asj8kcY85h6CuLtaiik9l7XhbKRBuawXKaom5FAmhw630sfiDAEsiVtk+PisJxxpk
	 GmeABbxvVuP9BosY8AKpEVmUz65JCG1arJ/VrE31cyf0hIQhd1HE4pSS1hwAd/7xy4
	 Vjc1aRXhiI2Wyy9WQsQMvL/F6iFAtLRBcsabqa8S2gtIxVL+eTgYBtbh0dkX/IRq98
	 SEEHyKP6QNHg67EEcPeng7ZYjv8vNqeYMbcx3sUmVUMloOiwtLKGECcGPLJA0Nd9X3
	 vZ76qTyhf67i/ummWoqrSO+U2J6MYf2Pko+drivACQtL9+/g0jyRu077mShpyAM6nw
	 wOp0EAkHE3TjQ==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 6954338369F
	for <usrp-users@lists.ettus.com>; Sun, 23 Jul 2023 01:47:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.i=@g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com header.b="xT6YRZDn";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5221b90f763so1520419a12.0
        for <usrp-users@lists.ettus.com>; Sat, 22 Jul 2023 22:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=g-ecc-u-tokyo-ac-jp.20221208.gappssmtp.com; s=20221208; t=1690091234; x=1690696034;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7wQpMDoDn5+Uo8lUiB4ll1AK9VUcXijVBRKGli7PPco=;
        b=xT6YRZDnVLd0eZgbLKOw2N7llWq4bJxTVtO43dlUgMz14VT4HUHzNnIAFPkl1kZMaR
         b8ZzKJzbVGG9Q9hj7ZLzUbA7cfCKbHfk3WE/tmvktmTJBKgMRVQcJOnRLklgMKRsb3VR
         GQ0+hQjYE1OfM9ewJ9mqNRH6/eNGSAHx+FzOCE4erj1+u9gdzuZs4P7hZmaW3Gb1Bve/
         73RLBwauXG64X7WXM5v7nRmSlgA7a4cHWH49JhqtlSYI4AV6JO1TlrvmzYuasH8RfIOg
         fcSiN/xgOEZ/oTEYcs46ahMDs58ldc0Uid9I40RDRjyGm+ER+Yhwq2u2JEAgvYsmWLe3
         JRsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690091234; x=1690696034;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7wQpMDoDn5+Uo8lUiB4ll1AK9VUcXijVBRKGli7PPco=;
        b=d4st2DLBZkD/Nz3DV/tcPotPchFqTTxtlZpWwMq7aq+F0mO6KixpYCRx2GncceFk0j
         obMHpAgxL4HGzJeftNf/1sA/shlyjQQsrGQXe6UM0oXs8TYtVVOJ8p15wmsJiPUEdURk
         VIMfk8fZkZLYOg2K/MJJhDFqKjfKuJ1rHCFRqAh22AxAlOzsPYtTJnwwTadVnzK9pXr/
         7GIZQPWa9Gl17u0iWkywnmW8pkUD9x+FJahfBDJjJiYJd46Fz9kJZaltajXotlbXmSc2
         tQS9UPYrSUrUg27Ne8AEk5K+t+BSMJNpkOAT0FfuNck/LKiwVgtuzatwfqFlCgjxXEG9
         bX1Q==
X-Gm-Message-State: ABy/qLZ7daExDbl7LONGwTjvqCfqiu0oZeo0iU9mww8WtHr975gwTCKF
	M5YCdnMODThEeuYQ+/MOKWj4bNNjn+ITCY+hPLWVYGNbFcugTsXtSVs=
X-Google-Smtp-Source: APBJJlF6YDOMskE9HEsPDCq8RiPdWLJc5MYgVSqoSI22yHDRcBqodcnxk8PAzjfCsruJA9Oft4shuakgCW7OD8G2xpU=
X-Received: by 2002:aa7:ca58:0:b0:51d:8835:90a1 with SMTP id
 j24-20020aa7ca58000000b0051d883590a1mr6373526edt.30.1690091233750; Sat, 22
 Jul 2023 22:47:13 -0700 (PDT)
MIME-Version: 1.0
From: Aerman TUERXUN <armantursun@g.ecc.u-tokyo.ac.jp>
Date: Sun, 23 Jul 2023 14:47:02 +0900
Message-ID: <CAOcHjoKkjXQUK-w8433gJy-Cb+PdvUKmkhQ5xj=fx10cN1NyKg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 76HCTF6OO2O4ZTB7625XIEJE3JWI6J2W
X-Message-ID-Hash: 76HCTF6OO2O4ZTB7625XIEJE3JWI6J2W
X-MailFrom: armantursun@g.ecc.u-tokyo.ac.jp
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Building Bitstream for USRP X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/76HCTF6OO2O4ZTB7625XIEJE3JWI6J2W/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6010136331757203371=="

--===============6010136331757203371==
Content-Type: multipart/alternative; boundary="000000000000a047350601210702"

--000000000000a047350601210702
Content-Type: text/plain; charset="UTF-8"

Hi USRP users,

I am trying to build a gain block on USRP X410.
When I tried to build bitstream for X410_XG_100, I got the following errors.
Seems some IP is locked for USRP X410.
Does that mean I need to purchase the IPs for building bitstream?
It's odd to me that we still need to buy specific IPs to build bitsstream
with RFNoC.
How can I build a bitstream for X410?
Thanks in advance.

Environment successfully initialized.
BUILDER: Checking tools...
* GNU bash, version 5.0.17(1)-release (x86_64-pc-linux-gnu)
* Python 3.8.10
* Vivado v2019.1 (64-bit)
========================================================
BUILDER: Building IP xge_pcs_pma
========================================================
BUILDER: Staging IP in build directory...
BUILDER: Reserving IP location:
/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma
BUILDER: Retargeting IP to part zynquplusRFSOC/xczu28dr/ffvg1517/-1/e...
BUILDER: Building IP...
[00:00:00] Executing command: vivado -mode batch -source
/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log xge_pcs_pma.log
-nojournal
WARNING: [IP_Flow 19-2162] IP 'xge_pcs_pma' is locked:
CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the
following file is locked:
/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xci
CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the
following file is locked:
/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xci
[00:00:09] Current task: Initialization +++ Current Phase: Starting
[00:00:09] Current task: Initialization +++ Current Phase: Finished
[00:00:09] Executing Tcl: synth_design -top xge_pcs_pma -part
xczu28dr-ffvg1517-1-e -mode out_of_context
[00:00:09] Starting Synthesis Command
WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
for Synthesis target. These output products could be required for
synthesis, please generate the output products using the generate_target or
synth_ip command before running synth_design.
WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products
for Implementation target. These output products could be required for
synthesis, please generate the output products using the generate_target or
synth_ip command before running synth_design.
WARNING: [IP_Flow 19-2162] IP 'xge_pcs_pma' is locked:
ERROR: [Synth 8-439] module 'xge_pcs_pma' not found
ERROR: [Common 17-69] Command failed: Synthesis failed - please see the
console or run log file for details
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
ERROR: [Common 17-53] User Exception: No open design. Please open an
elaborated, synthesized or implemented design before executing this command.
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
'/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
'/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
'/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
'/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xml'
CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file
'/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xml'
ERROR: [Vivado 12-398] No designs are open
ERROR: [Common 17-69] Command failed: * IP definition '10G/25G Ethernet
Subsystem (3.0)' for IP 'xge_pcs_pma' (customized with software release
2019.1.1) has a different revision in the IP Catalog.
[00:00:23] Current task: Synthesis +++ Current Phase: Starting
[00:00:23] Current task: Synthesis +++ Current Phase: Finished
[00:00:23] Process terminated. Status: Failure

========================================================
Warnings:           4
Critical Warnings:  7
Errors:             10

BUILDER: Releasing IP location:
/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma
make[5]: *** [/uhd/fpga/usrp3/top/x400/ip/xge_pcs_pma/Makefile.inc:43:
/uhd/fpga/usrp3/top/x400/build-ip/xczu28drffvg1517-1e/xge_pcs_pma/xge_pcs_pma.xci.out]
Error 1
make[4]: *** [Makefile:129: X410_XG_100] Error 2
Built target x410_rfnoc_image_core

--000000000000a047350601210702
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

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

--000000000000a047350601210702--

--===============6010136331757203371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6010136331757203371==--

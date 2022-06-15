Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD5054C741
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jun 2022 13:19:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id ECC51384286
	for <lists+usrp-users@lfdr.de>; Wed, 15 Jun 2022 07:19:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655291967; bh=xNapN1F68H061jEAZfnrtJGiDj8kruUkCOvy9tz1Y4Y=;
	h=Date:From:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=c98VBN9b7+0+Sr2S6XSfDLvKF0Yt2+KNxnyL+IRHqxyPW59hdJtZOp/904G+QjeNS
	 p6kKM1LTNdNZxt4BejB2XoJ4dfv9kfK6stDK1hTm6BUfMrkq/pRvibk8hkaoFp3sG7
	 trpITKcDNJYZS4c7CZl/s0X6ipMKdGqoTBeK0IM092eLnuuDcDdxwSJHIzXOnqEx7D
	 +BG9zpq07EHfpDcJYHvDaw+DRenK36lZhXjxOVIDGTv7wor8ZIEfP6mQ0+NX1VnYeu
	 uH/S+qj9ECEgGXL4rMno0lUnleiUIQBaZcLEb6JpZ/uxjlcRljX7ZFLTmGM/Q0QK00
	 r8hnMnSVT+vEQ==
Received: from zproxy130.enst.fr (zproxy130.enst.fr [137.194.2.194])
	by mm2.emwd.com (Postfix) with ESMTPS id 497CF3840F3
	for <usrp-users@lists.ettus.com>; Wed, 15 Jun 2022 07:18:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=telecom-paris.fr header.i=@telecom-paris.fr header.b="ER/Fu7hB";
	dkim-atps=neutral
Received: from localhost (localhost [IPv6:::1])
	by zproxy130.enst.fr (Postfix) with ESMTP id 1174012064E
	for <usrp-users@lists.ettus.com>; Wed, 15 Jun 2022 13:18:15 +0200 (CEST)
Received: from zproxy130.enst.fr ([IPv6:::1])
	by localhost (zproxy130.enst.fr [IPv6:::1]) (amavisd-new, port 10032)
	with ESMTP id CnN4ON0GJ3-V for <usrp-users@lists.ettus.com>;
	Wed, 15 Jun 2022 13:18:14 +0200 (CEST)
Received: from localhost (localhost [IPv6:::1])
	by zproxy130.enst.fr (Postfix) with ESMTP id 7C07D120EAC
	for <usrp-users@lists.ettus.com>; Wed, 15 Jun 2022 13:18:14 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 zproxy130.enst.fr 7C07D120EAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=telecom-paris.fr;
	s=A35C7578-1106-11E5-A17F-C303FDDA8F2E; t=1655291894;
	bh=rgGmeUgaJU1sDPJzZIfbexSXazD/pxvA2nojYrnY5dk=;
	h=Date:From:To:Message-ID:MIME-Version;
	b=ER/Fu7hB81vYZT+MlUQPbmccNWQciegLetT+cMhytgAGiWihomNo48oDMoz7XR/rN
	 LItTlXYC/f2+pFFRUDCmfCHSRgRPmZ98wI/XVIrY/9UzbdA981+bZ6T9G6qAoxxq4Z
	 eLnwkZ+WBoavbxOBV6NDxsHKFtr5othD0JJE6yjw=
X-Virus-Scanned: amavisd-new at zproxy130.enst.fr
Received: from zproxy130.enst.fr ([IPv6:::1])
	by localhost (zproxy130.enst.fr [IPv6:::1]) (amavisd-new, port 10026)
	with ESMTP id zLCkj580QqCY for <usrp-users@lists.ettus.com>;
	Wed, 15 Jun 2022 13:18:14 +0200 (CEST)
Received: from zmail-tp1.enst.fr (zmail-tp1.enst.fr [137.194.2.198])
	by zproxy130.enst.fr (Postfix) with ESMTP id 55AAF12064E
	for <usrp-users@lists.ettus.com>; Wed, 15 Jun 2022 13:18:14 +0200 (CEST)
Date: Wed, 15 Jun 2022 13:18:14 +0200 (CEST)
From: Florent Allard <florent.allard@telecom-paris.fr>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID: <1193871205.20203309.1655291894187.JavaMail.zimbra@enst.fr>
MIME-Version: 1.0
X-Originating-IP: [2a04:8ec0:0:194:771e:1756:cf39:4d32]
X-Mailer: Zimbra 9.0.0_GA_4273 (ZimbraWebClient - FF101 (Linux)/9.0.0_GA_4258)
Thread-Index: uqHDOcHTvaLXCRVmi+fp0JAfA12pjg==
Thread-Topic: Configure Xilinx IP using AXI4-Lite
Message-ID-Hash: RS5MHY6FGSXCHSE2D3LEZPAGNG5QDV5R
X-Message-ID-Hash: RS5MHY6FGSXCHSE2D3LEZPAGNG5QDV5R
X-MailFrom: fallard@enst.fr
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Configure Xilinx IP using AXI4-Lite
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RS5MHY6FGSXCHSE2D3LEZPAGNG5QDV5R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2463889697710168775=="

--===============2463889697710168775==
Content-Type: multipart/alternative;
	boundary="=_356f0533-ade2-40d6-afaa-1dfdeb112f81"

--=_356f0533-ade2-40d6-afaa-1dfdeb112f81
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello,=20

After having implemented into a RFNoC block the Xilinx IP LDPC Decoder and =
Encoder for 5G, I=E2=80=99m trying to implement the Xilinx IP Polar Decoder=
/Encoder.=20

However, the Polar IP requires to be configured with an AXI4-Lite interface=
. I know that RFNoC data planes are compliant with AXI-Stream, but is there=
 an implementation of the AXI4-Lite protocol in the control plane for examp=
le ?=20

I found a file doing a mapping of AXI4-Lite to Ctrlport ( [ https://github.=
com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/control/axil_ctrlport_mast=
er.v | https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/cont=
rol/axil_ctrlport_master.v ] ), but what I would need is the other way: rec=
eiving a ctrlport command from RFNoC, and forwarding it as AXI4-Lite to the=
 Xilinx IP block. Does this exist ?=20

Thank you for your help,=20

Florent=20

--=_356f0533-ade2-40d6-afaa-1dfdeb112f81
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"font-family: arial, helvetica, sans-serif; font-s=
ize: 12pt; color: #000000"><div>Hello,<br><br>After having implemented into=
 a RFNoC block the Xilinx IP LDPC Decoder and Encoder for 5G, I=E2=80=99m t=
rying to implement the Xilinx IP Polar Decoder/Encoder.<br><br>However, the=
 Polar IP requires to be configured with an AXI4-Lite interface. I know tha=
t RFNoC data planes are compliant with AXI-Stream, but is there an implemen=
tation of the AXI4-Lite protocol in the control plane for example=E2=80=AF?=
<br><br>I found a file doing a mapping of AXI4-Lite to Ctrlport (<a data-mc=
e-href=3D"https://github.com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/c=
ontrol/axil_ctrlport_master.v" href=3D"https://github.com/EttusResearch/uhd=
/blob/master/fpga/usrp3/lib/control/axil_ctrlport_master.v">https://github.=
com/EttusResearch/uhd/blob/master/fpga/usrp3/lib/control/axil_ctrlport_mast=
er.v</a>), but what I=E2=80=AFwould need is the other way: receiving a ctrl=
port command from RFNoC, and forwarding it as AXI4-Lite to the Xilinx IP bl=
ock. Does this exist=E2=80=AF?<br></div><div><br data-mce-bogus=3D"1"></div=
><div>Thank you for your help,<br data-mce-bogus=3D"1"></div><div><br data-=
mce-bogus=3D"1"></div><div>Florent<br data-mce-bogus=3D"1"></div></div></bo=
dy></html>
--=_356f0533-ade2-40d6-afaa-1dfdeb112f81--

--===============2463889697710168775==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2463889697710168775==--

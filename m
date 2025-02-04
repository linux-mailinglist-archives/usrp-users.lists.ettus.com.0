Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E413A276E9
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2025 17:15:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D82A385DA9
	for <lists+usrp-users@lfdr.de>; Tue,  4 Feb 2025 11:15:20 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738685720; bh=CLLA0CcAWbNJeYsYr4zWau6HKDzFgZPX6ZkOn0uMxBo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QHz6889s8IsVlefJUQbCrPb6JM0kwyrbpZcRudC0jqxHZe1h1ZtgD3ftkC0h1hxoQ
	 KNZx0kujOLSZeQs3Prg95v6SPS3B7Mdv0TsgInaiRuJg1EidwWiQfPWQDupDT7mScF
	 oQB9B9n6yZ7nwopPTWHPJJ5pGKIbay+V0Tr13ZSeHFmEZtm2kc9h5f8pHXLCxXv3XV
	 5L1OK3TrWxghjhM4KNDzbI6TjDJl6/6lV5xW4O5RDrVx5jTREeh0z528Ia7USoYUcB
	 1a7S2RxIIIncNpHQWs7oFlSynZLJ8T925lmReo1KJsmPAG5DNC/bT5uYRNJP2Uhho/
	 CzmG/wfc1SjyA==
Received: from mail.hhi.fraunhofer.de (mail.HHI.FRAUNHOFER.DE [193.174.67.45])
	by mm2.emwd.com (Postfix) with ESMTPS id B5A89385A15
	for <usrp-users@lists.ettus.com>; Tue,  4 Feb 2025 11:14:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=permerror (0-bit key) header.d=hhi.fraunhofer.de header.i=@hhi.fraunhofer.de header.b="ssR9Tnoh";
	dkim=pass (1024-bit key; unprotected) header.d=hhi.fraunhofer.de header.i=@hhi.fraunhofer.de header.b="fU9Ug5Cm";
	dkim-atps=neutral
Received: from 172.16.0.107 by mail.hhi.fraunhofer.de (Tls12, Aes256, Sha384,
 DiffieHellmanEllipticKey384); Tue, 04 Feb 2025 16:14:16 GMT
DKIM-Signature: v=1; c=relaxed/relaxed; d=hhi.fraunhofer.de; s=Mail2024e;
 t=1738685656; bh=qyttNVnVpHgMUr9wn/MFwgghoiZ6jxyu+p9Nez+Os1c=; h=
 Subject:Subject:From:From:Date:Date:ReplyTo:ReplyTo:Cc:Cc:Message-Id:Message-Id;
 a=ed25519-sha256; b=
 ssR9TnohZ0VtiXmYYAoOjQpxemz8zdYaIGJq5TjDARDIZHbbCTVn4P9R/quO7U9e0elaZ/lh4XjSiAIAQmx7AA==
DKIM-Signature: v=1; c=relaxed/relaxed; d=hhi.fraunhofer.de; s=Mail2024r;
 t=1738685656; bh=qyttNVnVpHgMUr9wn/MFwgghoiZ6jxyu+p9Nez+Os1c=; h=
 Subject:Subject:From:From:Date:Date:ReplyTo:ReplyTo:Cc:Cc:Message-Id:Message-Id;
 a=rsa-sha256; b=
 fU9Ug5CmEosFTzWomoU4riS4LYzBdhcQVgKzq4IImI4SUW3xhUa68dawlHPJuIa6Bd6ClgmM6u4HwO+ssTHlPul6jjxTr7la5GGNfrIJrh6CpW5N6Rlqm9UsWQ3tG6y+zCZvSU5AFKx73Oa9SgUApJ70zci30IbS0SjOHD508hA=
Received: from mxsrv1.fe.hhi.de (172.16.0.104) by mxsrv4.fe.hhi.de
 (172.16.0.107) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.2.1544.14; Tue, 4 Feb
 2025 17:14:14 +0100
Received: from mxsrv1.fe.hhi.de ([fe80::cfd2:ec23:f611:dcc]) by
 mxsrv1.fe.hhi.de ([fe80::cfd2:ec23:f611:dcc%2]) with mapi id 15.02.1544.014;
 Tue, 4 Feb 2025 17:14:14 +0100
From: "Mehlhose, Matthias" <matthias.mehlhose@hhi.fraunhofer.de>
To: "pigatoimdeafrancesco@gmail.com" <pigatoimdeafrancesco@gmail.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: B210 not seen by uhd_find_devices command
Thread-Index: AQHbdxN3LMpDaWQTZUGb93OkvY7JpLM3TLAf
Date: Tue, 4 Feb 2025 16:14:14 +0000
Message-ID: <dd45cd7de2cd4ba69b9525cb6bb0c689@hhi.fraunhofer.de>
References: 215f5161-4d55-4bf9-8464-36e13d89d0b6@gmail.com,<zwkQjbgkbLwAFDPQgr4D1aHsAW7LUdFvkXXbqhbY@lists.ettus.com>
In-Reply-To: <zwkQjbgkbLwAFDPQgr4D1aHsAW7LUdFvkXXbqhbY@lists.ettus.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.22.100]
MIME-Version: 1.0
Message-ID-Hash: P2N2Q6EE2IHO2ORJGXCIRUV5UQXE47RP
X-Message-ID-Hash: P2N2Q6EE2IHO2ORJGXCIRUV5UQXE47RP
X-MailFrom: matthias.mehlhose@hhi.fraunhofer.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 not seen by uhd_find_devices command
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/P2N2Q6EE2IHO2ORJGXCIRUV5UQXE47RP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4718822697927791204=="

--===============4718822697927791204==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_dd45cd7de2cd4ba69b9525cb6bb0c689hhifraunhoferde_"

--_000_dd45cd7de2cd4ba69b9525cb6bb0c689hhifraunhoferde_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

Any first run of a UHD application will upload the B210 firmware!

The B210 should be identified as "2500:0020 Ettus Research LLC USRP B210" f=
rom "lsusb" after the firmware upload via the Cypress WestBridge USB data t=
ransfer is done.

----

There is a high possibility that the firmware image for the B210 is not loa=
ded or could not be loaded onto your device.

Please check the firmware folder by running:

"ls /usr/local/share/uhd/images"

(Note: The path may differ on your system.) If the firmware folder is empty=
, please run the command:

"sudo uhd_images_downloader"

at least once before using any UHD commands, such as "sudo uhd_find_devices=
", "sudo uhd_usrp_probe", or your UHD application.


Best regards,
Matthias

________________________________
Von: pigatoimdeafrancesco@gmail.com <pigatoimdeafrancesco@gmail.com>
Gesendet: Dienstag, 4. Februar 2025 15:45:07
An: usrp-users@lists.ettus.com
Betreff: [USRP-users] Re: B210 not seen by uhd_find_devices command


Hello Marcus,

the output of =93lsusb=93 is:

Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

Bus 005 Device 002: ID 2500:0020 Cypress WestBridge

Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub

Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub

Bus 001 Device 008: ID 0b1f:03ee Insyde Software Corp.

Bus 001 Device 007: ID 0557:9241 ATEN International Co., Ltd

Bus 001 Device 006: ID 1d6b:0107 Linux Foundation USB Virtual Hub

Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub


where the B210 is identified as Cypress WestBridge.

--_000_dd45cd7de2cd4ba69b9525cb6bb0c689hhifraunhoferde_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p></p>
<div class=3D"markdown-content">
<div style=3D"font-size: 16px; font-weight: 400; line-height: 22px; white-s=
pace: normal; margin: 0.8em 0px;">
</div>
</div>
<div>Hi,</div>
<div><br>
</div>
<div><span>Any first run of a UHD application will upload the B210 firmware=
!</span></div>
<div><span><br>
</span></div>
<div><span>The B210 should be identified as &quot;2500:0020 Ettus Research =
LLC USRP B210&quot; from &quot;lsusb&quot; after the firmware upload via th=
e Cypress WestBridge USB data transfer is done.</span></div>
<div><br>
</div>
<div>----<br>
</div>
<div><br>
</div>
<div>There is a high possibility that the firmware image for the B210 is no=
t loaded or could not be loaded onto your device.
<br>
<br>
Please check the firmware folder by running:<br>
<br>
&quot;ls /usr/local/share/uhd/images&quot;<br>
<br>
(Note: The path may differ on your system.) If the firmware folder is empty=
, please run the command:<br>
<br>
&quot;sudo uhd_images_downloader&quot;<br>
<br>
at least once before using any UHD commands, such as &quot;sudo uhd_find_de=
vices&quot;, &quot;sudo uhd_usrp_probe&quot;, or your UHD application.<br>
</div>
<div><br>
</div>
<div><br>
Best regards, &nbsp;<br>
Matthias<br>
</div>
<p></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Von:</b> pigatoimdeafrancesco@g=
mail.com &lt;pigatoimdeafrancesco@gmail.com&gt;<br>
<b>Gesendet:</b> Dienstag, 4. Februar 2025 15:45:07<br>
<b>An:</b> usrp-users@lists.ettus.com<br>
<b>Betreff:</b> [USRP-users] Re: B210 not seen by uhd_find_devices command<=
/font>
<div>&nbsp;</div>
</div>
<div>
<p>Hello Marcus, </p>
<p>the output of =93lsusb=93 is: </p>
<p>Bus 008 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</p>
<p>Bus 007 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub</p>
<p>Bus 006 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</p>
<p>Bus 005 Device 002: ID 2500:0020 Cypress WestBridge</p>
<p>Bus 005 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub</p>
<p>Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</p>
<p>Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub</p>
<p>Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub</p>
<p>Bus 001 Device 008: ID 0b1f:03ee Insyde Software Corp.</p>
<p>Bus 001 Device 007: ID 0557:9241 ATEN International Co., Ltd</p>
<p>Bus 001 Device 006: ID 1d6b:0107 Linux Foundation USB Virtual Hub</p>
<p>Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub</p>
<p><br>
</p>
<p>where the B210 is identified as Cypress WestBridge. </p>
</div>
</body>
</html>

--_000_dd45cd7de2cd4ba69b9525cb6bb0c689hhifraunhoferde_--

--===============4718822697927791204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4718822697927791204==--

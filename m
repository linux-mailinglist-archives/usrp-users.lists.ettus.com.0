Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6023C48A047
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 20:38:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A423385164
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jan 2022 14:38:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=outlook.com header.i=@outlook.com header.b="mm/sztuy";
	dkim-atps=neutral
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-sgaapc01olkn2104.outbound.protection.outlook.com [40.92.53.104])
	by mm2.emwd.com (Postfix) with ESMTPS id 529D9385157
	for <usrp-users@lists.ettus.com>; Mon, 10 Jan 2022 14:37:24 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YTQucKrmEzviMixBQ5HP6ARuVJj18CJeqHRWqNRi6gaTplBwBZ502cs2x1Ej7U++7ovvoCfnKiMIc7qCX5vXbJCTF1SnQs3cPvfmeL1nG4YPM7f2ENNOdwb8Uqfk6a+GBWY7pCOTQ2/paIQChDx1m3xpR+PBjNkxjiLWoixQIrf9PQkGYY8a/fCo5AulWyXlobp22+duOh/blYekkFKqz43nocftgoHdkkEkyCs4ti57vllhBoR/qHNjk795erb3mhARxzLP8lWmx4jaxHEM0S+l4vmYtkocnOeNC7P80lIV3oR1m6500fdi8ah09c4WoXvYXl9JrZ+DQt7I+bOLHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e/pJVR3mEIAogsQ9ihYQr6NY3GHPYZoZWd0AVSex5l4=;
 b=IELD3o+MFwdwiyo0dYvmo76AJZcrPBMGtXb7GrN8fWDWYlC1FN/i8Lj1B7dK30tmt+sO/Sfpkq93bEbS9OglmH/G6inuhDnAIWJXmUrwkZsnLwFX7iyBOeBA1dZVRRBnudydB6azsY6ob/17bEKxmqnDcUad64hd+jZPtH4/wczT3hhEXWIjk/VTGPrDFt0fiNl38ArT1OhDgVE7nqMwqWnzCJTohyxR2x1i4lTFfAwExeabMkuJ92ThGrs3VgwbrN3XTXbVSb/JXCuyKoXVZvaWQj5gOyjYec048cmK6yfATdSNejqX+7fQpl8wLxRJDFkaBSjVsJDZxfvr+j5d3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e/pJVR3mEIAogsQ9ihYQr6NY3GHPYZoZWd0AVSex5l4=;
 b=mm/sztuyhNhxBeUnX1k2TyMGL257WirFW0+N1mULzVuyi9wCayGW+ZwK/W+zwnPje3JWawsGjXmrKTRQCj9ggtsPPgrPldTfT/LEQZm75Gc4vYqM1h70cxEMxtQNEgFZz4Z71nm7OG2M4LHB/T2kwS9aQntUPV5DNJdc0iG7H39pLKuVLN3OHJOVQ6GigUtf7/w17gBjDCh0ffsMFw1KwdjxPvcy79XbvFOtbB7f54d7NV1iTAXzOAylt00pIe/ckdQnLz2TXWI1CM6AQkcepvFSHA90ItiF+2RmDPTdZtsT3qleaGJEPnR3jWR8e3HBvNEZQ47013eyuRdQ6ke1Bg==
Received: from SG2PR04MB3628.apcprd04.prod.outlook.com (2603:1096:4:99::17) by
 SG2PR04MB3721.apcprd04.prod.outlook.com (2603:1096:4:a0::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4867.10; Mon, 10 Jan 2022 19:37:21 +0000
Received: from SG2PR04MB3628.apcprd04.prod.outlook.com
 ([fe80::e0a7:9556:1c2c:a585]) by SG2PR04MB3628.apcprd04.prod.outlook.com
 ([fe80::e0a7:9556:1c2c:a585%4]) with mapi id 15.20.4867.011; Mon, 10 Jan 2022
 19:37:21 +0000
From: jason pro <jason_proj@outlook.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 based programs cannot run stably for a long time
Thread-Index: AQHYBlkj/+HV3gFDbkONcPzQEEMP0Q==
Date: Mon, 10 Jan 2022 19:37:21 +0000
Message-ID: 
 <SG2PR04MB362861400819A64BBA9A1A5DFD509@SG2PR04MB3628.apcprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: a6d51041-7bd9-3d94-3206-f7af3a90a77d
x-tmn: [OlQVGOCuGU0pCmUI5E+lRVd4yh6mJ3vA]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea8a1fc1-724b-4303-5bb3-08d9d4709ea3
x-ms-exchange-slblob-mailprops: 
 IONHXCiRWAO21GEaUcQmdWeV83Go4zmm7bQFaIjWb+/cqj9ZAwun1Rq9GvFNp3FSgiS3YNlM4qk9G1vAi3rf1xupv2Heh8QAETVYGGqGhZnwfDyIuTTV/PAw8Z9h3FbmGYVPchp/DjIaslEoVB9Q5nN8J1wjeGEFa4jMj3R5FjzaEhCgdaFp/BJV7IWNqXdmHpMFSFmvdGIaTX+qcZBl4Ti41dqVX3wVIffiMB+1zIlZrT7RTeBOJEAiS/OMrxB8fIKHooAUQmUvcsJ+kvfGhOJIKC33MO1BTG2gBuaXKdU/tRgUVsP2K13hXUJVjg0jqqsFUTa20zNytDvM+wjXpY4ByxMh14GUrl8v6ZCJjw7Ikh8nQ3LwiObK0Vwr5RDP0GbNT65pqUAPhBBk5x/05I0XwcbvD8mJruJAb8714SIsKZz9imdIO5RQm/ft2Eyxe22/vc1uO/p8uTWQ7Mmzabox1b+uiIYAz3zHOAxJCPkdTxjwMYEFtqCKIvdiCSE4cJlJfGQDuUVuo4xunnMABOpaGxmlbDNfiD3ASjuhrIu4sen74qRiFmzuKfW1mxfWkGnPwcb8juIuFaikL5Kn4D2Gatcl8ZVDOYcWZu/WwOaNEOjaNC+lrAZHEhj7SQsr/BQ2pEfZn0i6VnfzxeTUw63O8AH2kAvBTrPRPput3pOzSKR4qM422L2GHlFTzXIiIXK+O3k7QsZrEcYgYAB1u+LkGwK8ZI87Cs+eV3Q4+cU=
x-ms-traffictypediagnostic: SG2PR04MB3721:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 maPzcZPikpeND1vV/XgPwSfMR6jxp3leX5JXEpfaiaLMw6hIcZhzJe6KSrT81Zz0hEsfxLndbVoSqfKGk3aX7Fja4jVxQeIPKIZda3R7Uvo00CfcAUV5klJBeH9srEIJYfBbhmbb2GLGg1MtFhgEQBH8vF0nYtsY1x2ldSNjs+ax9PTr/DMTwMffAYgCQiQaRsfo3S+iglQjcotK0HzSOsXx8Z0MNB5OzlQ8EgH0c+8DsUXgW0GqNZqX/HpbTk6hHzpMMGZn9JO1qSCPcj/5G9OLbiMdGCk7rorxnmss2Zze/9CLrI9CbABdtyFPDev6Ue8ESUZhXIr1pgM8GKC2zjHrODnIfBJAaIFN1W4J+NT5T3yvfWheb+EuUtfmGeHpJPLQ0LDg5AZWreizsNRIgVv1o3cPrsH2yEkrXwmGt4CkXCGAn9wP9f08/T2VWUd5ILlnfzBgTNfYze2KDi4ZY3/F/CTWYlB3Vav1nuvHu2Jh8fBzoPXg+C3rGSz1g7mPL1QMtPKy3EXDZWWJVcL74u5bluJt2F91MutP6BghsJbroCAj2GI28mIMusSF/v+Vd2zQ8iDYmUhhJBtmi1VlRw==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 pfhehv7EyHvOjXG+gvY0/Yu32UdNrex3a/pM4f3gU/O5PRxOuockqXh+if/qiWhauMtYBB/8SBjuKdmlUWoA7SrkOg2vpcnP/n21FyNeiMX6n1Wc2nWClbaay2s5dhLAcmzM6ZqIaFW1g7LtuI0912Gh1OIt9puuOmg7i9QqQuuQ9yZmEejFWIcReeqip3LQrwuucfQxGKpTcQ755RxIWcPOX/HmFry/agSiZJ6jVDfqfgcFkge1gMIUZPayeDSmLvhLPm6pBNCyXNnVQJXEWAmZWdXbQh/VF+oKbf/hMekKsSoa7KI8R/+Wgc+WGEHCssfiUaqv26Y5eKiNnHvXobTgvI3cjXhLBO6P80Lgc3MY9DQ+IYSGmSZFMcl/63MweNCT/kdLIeCI3w3PhhKMii8YgeVBRB0QG05bp3E/QkIat8BGHbYkwfjWdS4og7+kXsABPSHaobhtAUVpskHM/uRtxuNEgUDRs0RAmW7gngG5bE8q4WM3U7BQR4xPBI3/iMFHF/DQqQ5ON/vhdTLOb1Icq5WNZ/yc7CR+IDOHXbClDRxdVhB8mg9Wdjf1lvnzdW7/iPN1d4CixJlRIc2TRFWh3AksK86Y/4AuSXR3eGRYl8pTvObwKjVwFRTbNxWpIw/DKkQKP6n8z1a/h6mT0AbdatL0mDlYhNWD5Xr4Hi/LB7FMhFYmPv1TATJGt1+kDbyKph1h8fSf0+0OBvpV1lpdAnUyPPmm8+sCFOq5aC+rIAEu1ablMrUYBhzlB2fu1/4ZULdyunPWUYIaee0WD/2sbqIpGSEIK5j/W2cTNh8aZDv4qB4NphIB4yJAqWG8kTrPUVqp90n01fv0aHASNlt657WKR7jOb4C5BrhA+nM5FVcBeaU1EJtQoISyhD/bF01beEB3tVTzk8YdGLSi1gYysmm63fZX/Og3Xi6zgJE+yzKQizUHOVAMsqBfvvBF
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SG2PR04MB3628.apcprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ea8a1fc1-724b-4303-5bb3-08d9d4709ea3
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2022 19:37:21.1786
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR04MB3721
Message-ID-Hash: IKJUGAAH3KN6GD5OBUGRJT5RDBQY62DI
X-Message-ID-Hash: IKJUGAAH3KN6GD5OBUGRJT5RDBQY62DI
X-MailFrom: jason_proj@outlook.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: jason pro <jason_proj@outlook.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X310 based programs cannot run stably for a long time
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AGA45UNRLHJ4IZQBWR7ZOONYP45Y3P6Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7417629191972103340=="

--===============7417629191972103340==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_SG2PR04MB362861400819A64BBA9A1A5DFD509SG2PR04MB3628apcp_"

--_000_SG2PR04MB362861400819A64BBA9A1A5DFD509SG2PR04MB3628apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgZGVhciBFbmdpbmVlcnMgb2YgRXR0dXMgUmVzZWFyY2gsDQoNCk91ciBhcHBsaWNhdGlvbiB3
cml0dGVuIGJhc2VkIG9uIFVIRCBhbmQgVVNSUCBYMzEwIGNhbm5vdCBydW4gZm9yIGEgbG9uZyB0
aW1lKFRoZSBsb25nZXN0IHRpbWUgZGlkIG5vdCBleGNlZWQgNDggaG91cnMpLg0KVGhlIHgzMTAg
aXMgY29ubmVjdGVkIHRvIHRoZSBjb21wdXRlciB0aHJvdWdoIGEgMTBHYkUgbmV0d29yayBjYXJk
IChYNTIwKS4NCldlIGhhdmUgdHJpZWQgdG8gdXNlIHZlcnNpb25zIDMuMTUgYW5kIDQuMS4wLjUu
IFVIRCB0aHJvd3MgZGlmZmVyZW50IGVycm9yczoNCg0KMS4gVUhEIDQuMS4wLjUNClgzMDAgZncg
Y29tbXVuaWNhdGlvbiBmYWlsdXJlICMxDQpFbnZpcm9ubWVudEVycm9yOiBJTyBFcnJvcjp4MzAw
IGZ3IHBlZWszMiAtcmVwbHkgdGltZWQgb3V0DQpUZXJtaW5hdGUgY2FsbGVkIGFmdGVyIHRocm93
aW5nIGFuIGluc3RhbmNlIG9mICd1aGQ6OmFzc2VydGlvbl9lcnJvcicNCldoYXQoKTpBc3NlcnRp
b25FcnJvcjpyZXBseS5zZXF1ZW5jZSA9PSByZXF1ZXN0LnNlcXVlbmNlDQppbiB2aXJ0dWFsIHVp
bnQzMl90IHgzMDBfY3RybF9pZmFjZV9lbmV0OjpfcGVlazMyKHVoZDo6d2JfaWZhY2U6OndiX2Fk
ZHJfdHlwZSkNCmF0L2hvbWUveHh4L3VoZC9ob3N0L2xpYi91c3JwL3gzMDAveDMwMF9md19jdHJs
LmNwcDoxNjUNCg0KMi4gVUhEIDMuMTUNCnRlcm1pbmF0ZSBjYWxsZWQgYWZ0ZXIgdGhyb3dpbmcg
YW4gaW5zdGFuY2Ugb2Ygoa51aGQ6OiBpb19lcnJvcqGvDQp3aGF0KCkgOiBFbnZpcm9ubWVudEVy
cm9yIDogSU9FcnJvciA6IEJsb2NrIGN0cmwoQ0VfMDFfUG9ydF80MCkgbm8gcmVzcG9uc2UgcGFj
a2V0IKhDIEFzc2VydGlvbkVycm9yIDogYm9vbChidWZmKQ0KaW4gdWludDY0X3QgY3RybF9pZmFj
ZV9pbXBsPF9lbmRpYW5uZXNzPiA6OiB3YWl0X2Zvcl9hY2soYm9vbCxkb3VibGUpW3dpdGggdWhk
IDo6IGVuZGlhbm5lc3NfdF9lbmRpYW5uZXNzID0gdWhkOjpFTkRJQU5ORVNTX0JJRzt1aW50NjRf
dCA9IGxvbmcgdW5zaWduZWQgaW50XSBhdC9ob21lL3h4eC91aGRfMy4xNS4wL3VoZC9ob3N0L2xp
Yi9yZm5vYy9jdHJsX2lmYWNlLmNwcDoxNTENCg0KSXMgdGhlcmUgYSBzb2x1dGlvbj8NCg0KQmVz
dCByZWdhcmRzLA0KSmFzb24NCg==

--_000_SG2PR04MB362861400819A64BBA9A1A5DFD509SG2PR04MB3628apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hi dear Engineers of Ettus Research,
<div><br>
</div>
<div>Our application written based on UHD and USRP X310 cannot run for a lo=
ng time(The longest time did not exceed 48 hours).
</div>
<div>The x310 is connected to the computer through a 10GbE network card (X5=
20).<br>
<span></span>We have tried to use versions 3.15 and 4.1.0.5. UHD throws dif=
ferent errors:</div>
<div><br>
</div>
<div>1. UHD 4.1.0.5</div>
<div>X300 fw communication failure #1</div>
<div>EnvironmentError: IO Error:x300 fw peek32 -reply timed out</div>
<div>Terminate called after throwing an instance of 'uhd::assertion_error'<=
/div>
<div>What():AssertionError:reply.sequence =3D=3D request.sequence</div>
<div>in virtual uint32_t x300_ctrl_iface_enet::_peek32(uhd::wb_iface::wb_ad=
dr_type)</div>
<div>at/home/xxx/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:165</div>
<div><br>
</div>
<div>2. <span style=3D"background-color:rgb(255, 255, 255);display:inline !=
important">
UHD</span> 3.15</div>
<div>terminate called after throwing an instance of =A1=AEuhd:: io_error=A1=
=AF</div>
<div>what() : EnvironmentError : IOError : Block ctrl(CE_01_Port_40) no res=
ponse packet =A8C AssertionError : bool(buff)</div>
<div>in uint64_t ctrl_iface_impl&lt;_endianness&gt; :: wait_for_ack(bool,do=
uble)[with uhd :: endianness_t_endianness =3D uhd::ENDIANNESS_BIG;uint64_t =
=3D long unsigned int] at/home/xxx/uhd_3.15.0/uhd/host/lib/rfnoc/ctrl_iface=
.cpp:151</div>
<div><br>
</div>
<div>Is there a solution?<br>
<span></span><br>
</div>
<div>Best regards,</div>
Jason<br>
</div>
</body>
</html>

--_000_SG2PR04MB362861400819A64BBA9A1A5DFD509SG2PR04MB3628apcp_--

--===============7417629191972103340==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7417629191972103340==--

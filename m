Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BF455FC33
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jun 2022 11:39:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D39C638431B
	for <lists+usrp-users@lfdr.de>; Wed, 29 Jun 2022 05:39:15 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656495555; bh=pE7etsYYWB3mP+JpupTMwM/Ahvy8bfJkOc7eRwuJurA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=OiAjFdZ3jNJYHjg/NPPFeY5awCmitvd3rE74yGpIl9aipqBu/2gS7Zz9wbQYQzyVD
	 RJdR460E9hUVGdZnn0rqRFzahEt35+YebEnsnT0AArISy7bdxveZuJFarYfkRpmNzz
	 /lckkbZ2zw6/kjF+6p25VeSib1MEqYfYAhuHRefCU2aMeKOJqqz76gm/64PoM8uw1l
	 /h2TbpSiOMnNjWOHprI1yOBT3kRGKxIOtqBjUcEQsDMLbUyNkGNP2ei7nF+5s0Yb5F
	 wQRx3VvphjtQJ+Eeb//YtDBKklwglMG6ZBGDt/7hXYIx7JpHG6ePY29JH4lsbeLoPT
	 sE8Mse+v7S+cA==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-oln040092075048.outbound.protection.outlook.com [40.92.75.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 36CA33846E5
	for <usrp-users@lists.ettus.com>; Wed, 29 Jun 2022 05:37:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=hotmail.com header.i=@hotmail.com header.b="V1JwQny2";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E1dJGhlp8yjWl/17pluLem6kzst1Vdv/a7UTl4hmgoB2lzHe4zb3DdA8VNOFXivoYWIybZ03CgrDk50lLeMcTSnscSjJw9wShyHW/KjuXuV98Hzkpl7XXYqJS5mA19mlbaqNpKW137KGidCci32UNa0UvlRK6T/Vggn/1MZbBLq/fnz8P5vS9RYpGKm0iXDOkr2r4dEv5SLZcJopRfonBAgmRtHioaBeynsY/F3tZQeNS8OnvSYoWVWANYCB2dVGLcaGSaDhTxoio5mRl9FJqZy5+UrYCsYzJL3PTjagjbEzwPP4WFRonGZfQym9lYkBtdQRuq/HRaMT+PcJ1SWMFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=irva88tED/7dpRWuAfWkQ4A5/bh24/8FOxKzLcOetEs=;
 b=PhgLymgXfQf85HskRmfGsCI9dLQ0du+iT04N0jdWSkMGKCO/78AbvQQQpQFH5r3gcKQjavFyC4NM97V/cc3jM8ITOhelIbu9Jw6rHRYuT56iNNepZPMIZVCVg+kBlLSXOnkJI9bZNFiJ9sZA5FGlZnf9gX1GIbF5ITUZIRdywnXJmVitDT6f8v/nMMGLBw2rm8y1bTXKxghpztMjvT9Kf9zYDwfiEhMaF2Tf4eIeLhqZnaJBxNqRjCwxRhcl+UqxAAps4OJmdQqM3q+gs8ZHFziNc1cOuP/PXVLT4dMMxU0O2YXOjJyAfETnhx4VKD2DqDkQC5+6BNGPcyfc6+jAow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=irva88tED/7dpRWuAfWkQ4A5/bh24/8FOxKzLcOetEs=;
 b=V1JwQny22EV0fvY8D/LJ4YFVLxSzr+CXlNrkaa75EFB2Xv7t/WaLXl067n3tC7R8wRO5pHCKS4uqV8wrbdsKtaOAveHJmw+PoFyeHt7GbkW9v9w5NmyFFCESVoJn8/1hBX/hNOCPsf9KfaA4B61y61YQBUwB7GqwM8xPaAlceOdJYUNlpCxcUmPuelZ3iJvRhysuqvbzWAlxfSMPwtfr5Zry4Pv0NCLMwLidrF5P+NjN69CFfvDv3cznGUdZnfkgntmXRhbJUi2YP7cTloduMuLWG9VBwjsGNQrYg8ko2WQ4CoCLqsnffbIH11jNk8D+VY5mLYvqj3I/YYbb5CVn4g==
Received: from PAXP193MB2252.EURP193.PROD.OUTLOOK.COM (2603:10a6:102:232::16)
 by DB9P193MB1579.EURP193.PROD.OUTLOOK.COM (2603:10a6:10:2a6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.17; Wed, 29 Jun
 2022 09:37:34 +0000
Received: from PAXP193MB2252.EURP193.PROD.OUTLOOK.COM
 ([fe80::3014:c432:8888:b6ed]) by PAXP193MB2252.EURP193.PROD.OUTLOOK.COM
 ([fe80::3014:c432:8888:b6ed%9]) with mapi id 15.20.5373.018; Wed, 29 Jun 2022
 09:37:34 +0000
From: =?iso-8859-1?Q?Thomas_Lorblanch=E8s?= <zlika_ese@hotmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Using uhd_cal_rx_iq_balance with RFNoC blocks
Thread-Index: AQHYi5spxvEyzy2XL0u9H+7bV3gQEQ==
Date: Wed, 29 Jun 2022 09:37:34 +0000
Message-ID: 
 <PAXP193MB2252F4528EDA24C74F3150BF96BB9@PAXP193MB2252.EURP193.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [y559836fck/e0a/VGaiSJMr85QDSzOHo]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcbe79b8-4399-4d48-458d-08da59b2ff22
x-ms-traffictypediagnostic: DB9P193MB1579:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 8VoCxDDfyHvmebpR4V1U/MzBHOE88JWkmsOViFZbjq1OO7fdkGmIsIsmBW8nK6QZ2tyJv9SWwF/mw5iWs2/h4TmvOyAnPqhfsIYMYX2Xe5ykeBri6boE3aFjafIpA/0zgoso1P7jXccc3Yb8HDwx192+UQuJsP0U1yd56U/opiNC/bXrRvHuQXrHxs5GqfaTc8v3JMYnmw8Q3ARlyyxAEOGTesQy5kIN/tLNuXU37zp0xOSOSWMo9JmNPlrkBsXsFcrEQeZ5KT5dM//5z6SLVj/C14Yjj+3/pw3HAo8pUQNXWVMLcBFfKgR6gbewgvbG+HAnzBO7JHOsg5jUQ93Wq+ETb68E7Ku6+yLyF8Vi2VZMuBtONvvswh205qJ+9raTr4Bd59MJ/D2X3FEwrdYZmr4xJ+ABvsvquCo2/Z806UhbLsNEDZD5oed5GI/f2i8tDE94oaX8Vr1BP1ni3zkGHTCZ7fr/M0FRhEilQ6YgPtD9jJr0qVC4ter0HFdWJ+zXG38dKUaUgFfkwo2OssraPzSwPIyiO6gPcpjdk0pR9034QJY4bTPlKSpd9aGBeCyjIytN/JApzgJUUPakF/GxKk87Q5GTA3G9sY+e8ninLQp77uPvnsDkCSAwImfMbkB2Y5OICIxVZPoYMeEqVLYGvw==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?sRzr77HMQwlyJThkRfY3DrQPVg8Pm7dV8rExlH01A2VfFNDLGZ8gSK/BYl?=
 =?iso-8859-1?Q?NE82CnURY+7yGrV6otzMRZg4z9U3GKiD4Yc67Q0rN2aGogS2RdZDGdmj9E?=
 =?iso-8859-1?Q?wk2afFdC2U8a7GI/HIg668MT9n4lwSnRvfZ1htlUaugJIhXYL7nwyNzuQE?=
 =?iso-8859-1?Q?qZeUeWqwHwNMbCRZTg8+Pudh4hwxB1beP7NR2yLj7z9IzZdnWAiFdJ08AH?=
 =?iso-8859-1?Q?/VJHKr8HySGJYU8xcfkSppgS1UATts3xYv4rvmfElCzjOoWnFQOiid5nRi?=
 =?iso-8859-1?Q?0o/yMXNA9EiB93tvS95M8wToabtRb69W5W4nrVJZCsNtoaNkcI5hRRXFRZ?=
 =?iso-8859-1?Q?vZrKuEUp7SVDgVKrQOeSe96Ih9oQeCYjuOPtKWfCbYNhME8QfR4ESZeQex?=
 =?iso-8859-1?Q?End+x4TNuzeBSAXjZnO8bcbDmDmsL2FfOgG1dio0N/02AuOGX+7NQjsnqT?=
 =?iso-8859-1?Q?Bp/a5SqyAmUyb/R5K5QVo5NgIsu10/ATt8F+nqrSehl0Wp7T6aV0YhctMq?=
 =?iso-8859-1?Q?xy0EVe/5MUoI8fi9VAPWoQNGzW+Zg97ORB0lx/g5CL9jxcVGOYjVFJ8Da/?=
 =?iso-8859-1?Q?CCNAGPsX62Oidn7GWRfSmpQzdZXC++kKlZAn62Ryt4+2R9O8oSprntqYi5?=
 =?iso-8859-1?Q?7o1JI1KQYUYY9JT/Nv4jV/kp/OuIbzv+QMf2C00S2sfwT2jMbHfMNolU/s?=
 =?iso-8859-1?Q?21hboHHwtGJQZFKjPVLusNqWbDjJaLwypAw/n0NEGFkxX/grEQnj2FJH4F?=
 =?iso-8859-1?Q?VVhiBp1ia8IFSK/vwr8KIyLT838Nj/0yYo/Jakc2ZcJydymvG93XrolpH3?=
 =?iso-8859-1?Q?lILchbyTufcN7KPgcDkwy2pPYLocvxadMIlXSrc2sYboxPefhGHsD1mX81?=
 =?iso-8859-1?Q?BUkaoxpkf0z8wvBOxWEIepxTEynrBJRPDTYIN5BfWdKLppDu0GdISgYdNm?=
 =?iso-8859-1?Q?WqVErDpVtq6iVZMjwJmYHXPAiwI1GxaiQl+wTSZsfsptH1VQN38mdfYcph?=
 =?iso-8859-1?Q?0rCquf7Se8qCEj895v+YT/e3zQnZH4Xo52nNAtkjL6aEyHDgoUwxQa2LF/?=
 =?iso-8859-1?Q?cKyTewVlZVNu2Hy8VoW2mXTi3JxQyz9f41fX2fxEWWfzn9mwKf1iIckCo2?=
 =?iso-8859-1?Q?OvbU3UwEAvJ78vjdt3Eb2bTE4NLXSPbTegNdhTSufGQvQzXGlo46okMxTe?=
 =?iso-8859-1?Q?6yAmJjk1x15LyVWkGRwY8wB7kYwGGOTOE7/8pXtichFEItW6VbFsGXVbmI?=
 =?iso-8859-1?Q?8xlKNPJ8t4671jnudyRHE/PNP2+A9UC1ZtoPDRnxAWHuOupV5B9zTCUc2X?=
 =?iso-8859-1?Q?eafM?=
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-80ceb.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXP193MB2252.EURP193.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: bcbe79b8-4399-4d48-458d-08da59b2ff22
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2022 09:37:34.5677
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9P193MB1579
Message-ID-Hash: NJVC5FVQ6AUH2DI5X5NHRL6VBUZGHHL7
X-Message-ID-Hash: NJVC5FVQ6AUH2DI5X5NHRL6VBUZGHHL7
X-MailFrom: zlika_ese@hotmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Using uhd_cal_rx_iq_balance with RFNoC blocks
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ORJGZFMITMJ3N6HAYGOMTMR3XHLD7X6T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4023987211272758249=="

--===============4023987211272758249==
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_PAXP193MB2252F4528EDA24C74F3150BF96BB9PAXP193MB2252EURP_"

--_000_PAXP193MB2252F4528EDA24C74F3150BF96BB9PAXP193MB2252EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,
When using the GnuRadio URSP Source I can see a log message saying that the=
 calibration files produced by uhd_cal_rx_iq_balance are taken into account=
. However, if I use the equivalent RFNoC blocks (Rx Radio -> DDC -> Rx Stre=
amer) I do not see any similar message.
Are the calibration files taken into account when using RFNoC blocks?
Thank you for your answers.
Thomas

--_000_PAXP193MB2252F4528EDA24C74F3150BF96BB9PAXP193MB2252EURP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi all,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
When using the GnuRadio URSP Source I can see a log message saying that the=
 calibration files produced by uhd_cal_rx_iq_balance are taken into account=
. However, if I use the equivalent RFNoC blocks (Rx Radio -&gt; DDC -&gt; R=
x Streamer) I do not see any similar message.<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Are the calibration files taken into account when using RFNoC blocks?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Thank you for your answers.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
Thomas<br>
</div>
</body>
</html>

--_000_PAXP193MB2252F4528EDA24C74F3150BF96BB9PAXP193MB2252EURP_--

--===============4023987211272758249==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4023987211272758249==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45EF974C7F1
	for <lists+usrp-users@lfdr.de>; Sun,  9 Jul 2023 21:58:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A96143849D8
	for <lists+usrp-users@lfdr.de>; Sun,  9 Jul 2023 15:58:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688932693; bh=i7t91EET/yms37XSDnpUy4QY5ProD53r0jFw8X2PStA=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=YFGPbPh10cNMEty31T3TVeChu/hIMxfE3ttNwXzB826LWu4XQyxiGwFhijkiPLMlm
	 YNWIONrVZAEXxAzPGbyZRKzIq3E5wOv59kEZKdpcBR6/Yuth+CUI4iwyK97q9lOIZ8
	 mfXTNmHJpSZcDH4EgmYdc5/qGY0aQJ8pEuOAQKydVWDaSlYN23ultC3RR+KrOqWWnJ
	 nLjFbYa57NS7gFYmOpLJhRGkYvCXab3ucOhRGZJsbMfyrm8Lv//w8AG88fC3hdoB3M
	 6AQS9YPFJp5Hb3eplU/tMPTiuJmPUTfpibqFmg4TGpEY0weNQM5AmyaXEOVD4seUsC
	 y3OkWQADvDn1g==
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (mail-db8eur05on2063.outbound.protection.outlook.com [40.107.20.63])
	by mm2.emwd.com (Postfix) with ESMTPS id BE5B83844AD
	for <usrp-users@lists.ettus.com>; Sun,  9 Jul 2023 15:57:17 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QxRHi8Hpqq+3rY6mfa1iUjx5bAHwrKiAgMaa6SIYmc3nncSDEwC44iB/KtEcK4AYoMgIrUrGkeDxmVVB1DSI02ndr4Hdt3LTf2nNwj3eihZyUmzaS6xMNmgqShb2qkDxyXds9rsUiPrXlHHFD8rHX9QBdIQ55Lx9PTUulBJziLvBpuxX94FC8AzYD0J5rt4ZcpCB1OAn73IUVsGBxdK8w0x6uszGY/AVRYMXzPrTTOwFShdZUXP4B945BCQ9IX5iAr/tG8v72dwt9VcviwBcZRb5s81NKHlBlercmXFOqG1lnKheh1C5fPeIQJBXOe24aDqlPR/305ENWY1x9F/Ksw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lrdkM3kV5lMvXboCs0/gLbdRBu0fx10/kbkds7LLQ70=;
 b=Wlz7UyFfvDNGZdz0FoGl1n7FbilVGfjkXumHNQKnsYZmJZbAhwR0FtYE8poaHZdIKu5faRFirWg7fsHCZ10yhnULICNAaGKUo//LyLqegWleAEt54Hm8dlhRFUmd3IkglrAkwI4zHiYgIy1rXGm7/2bABgCVBlKmLcTEWTgxaD9WDlCrfILc5IsHbPL28WVxFVPF6WKaILHoSvxlzW/h9EM0O85JM2DDJI3iIptYs/GoPqaV6W0yeoQpG2yhIgifDl0d8Qhw33lEl6TmoKaed8grLNNVLQTHOpNlkuqoOK09Dy9E0hZ4uaMnBt9rzLY8qc64HzV68+YcNpirHiZgTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=skyfora.com; dmarc=pass action=none header.from=skyfora.com;
 dkim=pass header.d=skyfora.com; arc=none
Received: from HE1PR04MB3212.eurprd04.prod.outlook.com (2603:10a6:7:1b::24) by
 GV1PR04MB9134.eurprd04.prod.outlook.com (2603:10a6:150:25::13) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6565.30; Sun, 9 Jul 2023 19:57:16 +0000
Received: from HE1PR04MB3212.eurprd04.prod.outlook.com
 ([fe80::e5cd:6b90:72f1:4b23]) by HE1PR04MB3212.eurprd04.prod.outlook.com
 ([fe80::e5cd:6b90:72f1:4b23%4]) with mapi id 15.20.6565.026; Sun, 9 Jul 2023
 19:57:16 +0000
From: Theodora Valerie <theodora.valerie@skyfora.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Guidance Request: Modifying DSP Function in B205i Mini USRP
Thread-Index: AQHZsp99ZkbPUJtWkUib/Ij/GHpaWA==
Date: Sun, 9 Jul 2023 19:57:15 +0000
Message-ID: 
 <HE1PR04MB321276531C62E3CABF34417F8E33A@HE1PR04MB3212.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=skyfora.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: HE1PR04MB3212:EE_|GV1PR04MB9134:EE_
x-ms-office365-filtering-correlation-id: 9bb316b2-5959-40a7-3def-08db80b6b1d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 +oCUxK4DZI8VoeakMtxR7FqRrqJMQN4SBxbeG/2dyXOvKJE5W3tQNyvIxQ/VRS6M9UK9vWbB4VCanxhg+QRpAgpaAi6hFy7A5KH8tDrj9mfnk0xkGzhPTzcnleL/8C5X24WTtK3eUQujcQt0qKr60+B82cWTeEZsoUhR+IjUuLNk2CnW7JSJ3cRU5p1eOpQbTV8mextEFMnfXlnuVc71GClvvrTXHj3mv/6JvtH6ab9HDXqmXROZFZnQQQzyZJ797auoIFa/sJ+WWOtE66K+kLjmyPxAT+WCi86kLCsDWBBy00olx7n5un/A/z0OHWjBDtgwwsW+NmrmDQEiIqV48CN5UnNu3wOM5AUya0JjBPgORro8d/rA3viLymd3j69KEd1FX7TECOo42KhMKN0Ru4k1CHDLz+cxIFyvzoLzHaf7/ODYGxQsBRxHShROpneqAVXQ3cWjZQDPdvkY6mgdiYNd0PhAGEiKDrr0i1W1QUepGfCaCboxuMCcQ5ickVzCYhAl/Lh7Xb/m2vGFfavz/cIkksuhev12W906G+A4QlsiIKZVgk3L3gQ3pYVEKzHKS12aze+PUl3GCsW7jL8ULtL+T8LJKykwqArAbrbV3UjiQKNAAqYTlI1vy46cLpRc
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR04MB3212.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(396003)(39830400003)(376002)(346002)(451199021)(86362001)(38100700002)(38070700005)(19627405001)(33656002)(55016003)(71200400001)(7696005)(76116006)(91956017)(122000001)(26005)(6506007)(9686003)(186003)(44832011)(5660300002)(52536014)(316002)(2906002)(66556008)(66946007)(478600001)(8676002)(8936002)(66476007)(83380400001)(4744005)(6916009)(64756008)(66446008)(41300700001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?amqII3sheL+NsZRsg5hcqYHFWgySXK41VVo7N6uGY//f5zV4I18Vi+pgAF?=
 =?iso-8859-1?Q?YLD5QfOtqRAPH2bTpYmPRWTemxvilxbqZvO8rP/PfG3pKqpYn5ZdZEhWil?=
 =?iso-8859-1?Q?F1rXJKD7wT+B+sJxr+YccXq33GnSvsRosE5lt7s+LUBAh2dzb4VNfGEwIZ?=
 =?iso-8859-1?Q?WAZgDQTlDOJWLV7NTDkLMVSfBWMqjNa3P9Yc5pElH/xeBjNgsceERQwxI5?=
 =?iso-8859-1?Q?zqN/vXSpAPxz6SvSCROuJp/qwlRHWA31YVVM4FW47d7XE1ORlHGWzbure7?=
 =?iso-8859-1?Q?7kkAYrF+f9Ig8DOq8elseKSKNNbLRQie6cyyycx0w1QbT/C7i7mOPZoz+F?=
 =?iso-8859-1?Q?v6+ysty8lxEic365e+LJ7oM1Gb0pKNTIUhLn0tdAZuk52faArc7E7Cde5a?=
 =?iso-8859-1?Q?GH96Mz3vUyS51VvI7GvBQR6KYLUXqim2sVKN0hPetopDFR8JdmHs6kBzfg?=
 =?iso-8859-1?Q?U22Ys/Tsu+zswfTB8UX/Y8d6eB8rh50DYz08u5y1FRvjkVPMLBNvEkC5lI?=
 =?iso-8859-1?Q?b3t3qLtJvT06GBMO3RaV/Mq5YfKa56Od/UxgjU9JzSHmnfA43OZwOF33xs?=
 =?iso-8859-1?Q?mT7zgsIMXfMIZXnyiW9bO41xsIQUpAn5Y00Uos+hLrEC+s0Qj2SDrN4K5C?=
 =?iso-8859-1?Q?FiTpkEgS3DT+3Sw5oAaCrRNBvKYMptlhwh+0rqyWvH5cpiaeH0zkkZH5Dk?=
 =?iso-8859-1?Q?WNg6LIYq0zJk3G1nEtaXa9MWE+rJIOok1slvMYcNYtmPsi7bwkVALDXP/O?=
 =?iso-8859-1?Q?gdxZC20DPUhpgRcQLw9wV2Rz+Q2zyDN8u6J1KNaSP3pSNSRnglc6ECK8X2?=
 =?iso-8859-1?Q?5Hid8hqPeipOLy/+5LDYNKCwzK104le5GUh6TwuWJAR2OlZI0SU8Jau6UL?=
 =?iso-8859-1?Q?FIOLdRSzOqPE7/C6D6DNDtFKvNEA9U9TSdagpR5c0+leIGLIAcJTNL9PFv?=
 =?iso-8859-1?Q?Ur/WJqbEr6Zvby1nSRfmwjS6kcsN8PBb9ZrOnce0xV9K01VND/+brysq7j?=
 =?iso-8859-1?Q?xDDAZT0mzODixuExFSJvmjfj27SozolU4J57cZZuP0O7E/wZEtDos3NlT+?=
 =?iso-8859-1?Q?q+8LFQjoT4nHqdtN96lCELv0G2pwusRSuEE1f7mrW/VFyBmz1EejRZOkIE?=
 =?iso-8859-1?Q?JPcDsDRpOB/L4Deiej3JFnaXGaHlDI51FnOAcJN0KJLMIKdHyIlNlGKQW8?=
 =?iso-8859-1?Q?YvKJ8OFXfOu5sZ9HWcbEDTdhLoait0utw2+65mgL8+wkB77aNe+xXyzXAW?=
 =?iso-8859-1?Q?V1iCb9+YYDjubLpJb4zZiDaIE8aAW3yq0lUT7XDvkjpmiU6skJMRJad14H?=
 =?iso-8859-1?Q?qphBXOqj6P3BZt3VNpoG8FdsthxvgTrg1HV3DIgl1A6XGNAC6TZ16hR6lf?=
 =?iso-8859-1?Q?TIYRRed6AbDc3Z+rZSd13rCDi8ALoiJp42PS2s18ZbfJJESDgUEv/S+D0J?=
 =?iso-8859-1?Q?ymwgwv/GTls+57zpv8QmflMSrUS8oWIcXLPPbulbzA5OeaSnXpWuSixq+t?=
 =?iso-8859-1?Q?OcRQS6NskDd6mD4Hq+RcIrAhjwtDSvk2ircSwHg6DLmjMQRMcSaKjFaHYX?=
 =?iso-8859-1?Q?UzPcAzgjqCYn6Ovv/uXgVrB4Monnudx0Zp9lFCC4sSe48i9N2xGX21M+Lr?=
 =?iso-8859-1?Q?na2F03wnn3j4MxH5K12pAFzGFcG7b7fsDK5Orhiq9qi98zXyXYILlP5w?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: skyfora.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR04MB3212.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bb316b2-5959-40a7-3def-08db80b6b1d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2023 19:57:15.8633
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 104a4ddf-8d2f-4f1c-96d8-94c1b240968a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yVcS7EjUCXlGUab3O2OQ2zQfNp6ah9/zY2X9BRwwc2MJd5IOFPps+HR3IsfswEBGp1BOrPgK2RVcp5ms1FxMz8eAZSD76zydZZWND0wg+/o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB9134
Message-ID-Hash: HN7J4QFD564TCCWZE763JUX4TE3LUSJ3
X-Message-ID-Hash: HN7J4QFD564TCCWZE763JUX4TE3LUSJ3
X-MailFrom: theodora.valerie@skyfora.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Guidance Request: Modifying DSP Function in B205i Mini USRP
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OE76AURNAZHJB3SR2LEQTXUFOXHEMKVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7047887480929033451=="

--===============7047887480929033451==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1PR04MB321276531C62E3CABF34417F8E33AHE1PR04MB3212eurp_"

--_000_HE1PR04MB321276531C62E3CABF34417F8E33AHE1PR04MB3212eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Ettus Support Team,

I am reaching out to you regarding a project I am currently undertaking inv=
olving the B205i mini USRP device.

My goal is to implement a custom Digital Signal Processing (DSP) function (=
a polyphase channelizer) on the FPGA of the B205i mini USRP. I have success=
fully developed and synthesized the hardware design with VHDL in Xilinx ISE=
 Design Suite.

The challenge I am currently facing lies in integrating this custom DSP fun=
ction into the existing FPGA design of the USRP. I have tried following the=
 FPGA build instructions and analyzing the code. However, I'm facing some c=
hallenges in understanding which one is the DSP function that can be replac=
ed/modified.

Could you provide any advice, examples, or resources that might help me und=
erstand how to implement and integrate a custom DSP function in the FPGA of=
 a B205i mini USRP device? Any pointers on how to approach this would be gr=
eatly appreciated.

Thank you in advance for your assistance.

--_000_HE1PR04MB321276531C62E3CABF34417F8E33AHE1PR04MB3212eurp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<span class=3D"ContentPasted0" style=3D"font-size:12pt;margin:0px">Dear Ett=
us Support Team,</span>
<div class=3D"ContentPasted0" style=3D"font-size:12pt;margin:0px">
<div style=3D"margin:0px"><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0" style=3D"margin:0px">I am reaching out to you=
 regarding a project I am currently undertaking involving the B205i mini US=
RP device.</div>
<div style=3D"margin:0px"><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0" style=3D"margin:0px">My goal is to implement =
a custom Digital Signal Processing (DSP) function (a polyphase channelizer)=
 on the FPGA of the B205i mini USRP. I have successfully developed and synt=
hesized the hardware design with VHDL
 in<span class=3D"ContentPasted0">&nbsp;</span><span class=3D"ContentPasted=
1 ContentPasted0" style=3D"margin: 0px; display: inline !important; backgro=
und-color: rgb(255, 255, 255);">Xilinx ISE Design Suite</span>.</div>
<div style=3D"margin:0px"><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0" style=3D"margin:0px">The challenge I am curre=
ntly facing lies in integrating this custom DSP function into the existing =
FPGA design of the USRP. I have tried following the FPGA build instructions=
 and analyzing the code. However, I'm
 facing some challenges in understanding which one is the DSP function that=
 can be replaced/modified.</div>
<div style=3D"margin:0px"><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0" style=3D"margin:0px">Could you provide any ad=
vice, examples, or resources that might help me understand how to implement=
 and integrate a custom DSP function in the FPGA of a B205i mini USRP devic=
e? Any pointers on how to approach this
 would be greatly appreciated.</div>
<div style=3D"margin:0px"><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0" style=3D"margin:0px">Thank you in advance for=
 your assistance.</div>
</div>
</div>
</body>
</html>

--_000_HE1PR04MB321276531C62E3CABF34417F8E33AHE1PR04MB3212eurp_--

--===============7047887480929033451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7047887480929033451==--

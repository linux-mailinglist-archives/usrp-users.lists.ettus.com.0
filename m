Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0A344DA4
	for <lists+usrp-users@lfdr.de>; Thu, 13 Jun 2019 22:40:16 +0200 (CEST)
Received: from [::1] (port=33906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hbWW5-0000jp-Ah; Thu, 13 Jun 2019 16:40:13 -0400
Received: from mail-eopbgr50108.outbound.protection.outlook.com
 ([40.107.5.108]:46967 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92)
 (envelope-from <Maximilian.Matthe@barkhauseninstitut.org>)
 id 1hbWW1-0000d5-4M
 for usrp-users@lists.ettus.com; Thu, 13 Jun 2019 16:40:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector1-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ioFvwkKFDq3X+Ql07rN+Vl9qHUfXuLixTP7y9PmAnow=;
 b=r7OgNxVgwJhkxRPI/bBtyJxZXAwXxVYy6CmGHxZOGRctKyO1SlkGQQE5VH0cM963TLouO+TWbHc9zxq/lQC3BUjqpt+71izdN7o79BV0S/sUmXI6qu7iSmx5eCjN094DPytfHStWLMBRtIZqMprOyJIYnwcnlxLkyOEOp96dgEo=
Received: from AM6PR04MB6536.eurprd04.prod.outlook.com (20.179.246.25) by
 AM6PR04MB5030.eurprd04.prod.outlook.com (20.177.35.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Thu, 13 Jun 2019 20:39:26 +0000
Received: from AM6PR04MB6536.eurprd04.prod.outlook.com
 ([fe80::146c:1b77:90dc:a820]) by AM6PR04MB6536.eurprd04.prod.outlook.com
 ([fe80::146c:1b77:90dc:a820%4]) with mapi id 15.20.1965.017; Thu, 13 Jun 2019
 20:39:26 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC - Time-Synchronization between blocks
Thread-Index: AQHVIifxmK2oIv7ph0uriEP1EOhlNA==
Date: Thu, 13 Jun 2019 20:39:26 +0000
Message-ID: <AM6PR04MB6536830597D3F6E5CAA1345C90EF0@AM6PR04MB6536.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Maximilian.Matthe@barkhauseninstitut.org; 
x-originating-ip: [2a02:810a:8300:217c:5d09:76c5:c102:75e4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a2d98cb8-d2c0-4203-2307-08d6f03f3a01
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(2017052603328)(7193020);
 SRVR:AM6PR04MB5030; 
x-ms-traffictypediagnostic: AM6PR04MB5030:
x-microsoft-antispam-prvs: <AM6PR04MB503053F1AA129E36D6A9419E90EF0@AM6PR04MB5030.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0067A8BA2A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(376002)(396003)(346002)(39830400003)(136003)(366004)(189003)(199004)(186003)(86362001)(25786009)(53936002)(19627405001)(74316002)(966005)(55016002)(2351001)(9686003)(54896002)(486006)(14454004)(508600001)(8676002)(66574012)(46003)(6436002)(5640700003)(68736007)(81156014)(7736002)(8936002)(6306002)(2906002)(81166006)(476003)(6916009)(6606003)(5024004)(66556008)(66476007)(64756008)(66946007)(66446008)(316002)(76116006)(71190400001)(2501003)(14444005)(73956011)(6506007)(102836004)(5660300002)(15974865002)(99286004)(7696005)(52536014)(6116002)(71200400001)(33656002)(72206003)(256004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR04MB5030;
 H:AM6PR04MB6536.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: barkhauseninstitut.org does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: UpDn8l0lBrX9WmuIhbqtZ3H0p/p0+GSurB2kQsZa4xrBIJFKYKD2jTaeQTtvIIHOCCELOtZoh4abRELCoc/C1JMRAcei5v2krWYjNbddSfA94U2BcwIWwwrXDq7gzLHSn3bquJGXNOWYHCmHPt6lD6FjHK7iv1FxBgJmkJr7G6WmvREFA7DQUNVo0FpHGHv9wKc76/cK9bfCHr9uKGpIkgXs66VOXWqOiPOOnsy1sDivBqy5ELJQP1cobSd2RxYS3rfkGhGyIoDLcrQt0BzqQN1s3iRH8nARUzbYjN5hVGnAOwUK+78MCEwqaP68INZnLMDdKCQ0GjhidA+h0GhCx/UtsCMZaN1zar+Az/rFsBc+JIiF3ofc5u7IUiNsEHhlYXFkY7FLtFajFct6y1P7MB6+ZxW8xBmzuZWlkqJ/DQM=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-Network-Message-Id: a2d98cb8-d2c0-4203-2307-08d6f03f3a01
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2019 20:39:26.5623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Maximilian.Matthe@barkhauseninstitut.org
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5030
Subject: [USRP-users] RFNoC - Time-Synchronization between blocks
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Maximilian Matthe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Maximilian Matthe <Maximilian.Matthe@barkhauseninstitut.org>
Content-Type: multipart/mixed; boundary="===============7917730963197590735=="
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

--===============7917730963197590735==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM6PR04MB6536830597D3F6E5CAA1345C90EF0AM6PR04MB6536eurp_"

--_000_AM6PR04MB6536830597D3F6E5CAA1345C90EF0AM6PR04MB6536eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

we are currently checking out, if we can use RFNoC to develop a simple PHY =
for real-time low-latency signal transmission. We have done this before in =
LabView, but now we need a small device for mobile applications, and our LV=
 only supports big USRPs (X310). We are aiming to use the E310 device.

Hence, I was looking into RFNoC documentation to evaluate, if we should giv=
e it a try to re-develop the PHY layer within RFNoC using Vivado HLS.

One main question that occurs to me immediately was: Can different blocks i=
n RFNoC share a common timing? For example, in a TDD frame structure, the T=
X frame shall only be sent, when there is no reception going on. Can differ=
ent blocks synchronize each other? As an example, a synchronization block (=
which knows when a reception is going on) should let the TX radio know, whe=
n it is allowed to transmit. The same goes for the AGC: The RX gain should =
only be changed, between the reception of two adjacent frames (otherwise on=
e frame (which assumes a time-constant channel) would be destroyed). Hence,=
 the synchronization should let the RX radio know, when it should change it=
s AGC value.

I would be very grateful, if you could point me to some documentation in th=
is regard. I searched the internet, but unfortunately, did not find any inf=
ormation about this issue.

Thank you very much for your assistance!
Max




Maximilian Matthe

Head of Engineering Lab

maximilian.matthe@barkhauseninstitut.org

Tel.: +49 173 4509667


Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W=FCrzburger Stra=DFe 46, 01187 Dresden, =
Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FC=
hrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gese=
llschafterdelegation: Dr. Andreas Handschuh

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_AM6PR04MB6536830597D3F6E5CAA1345C90EF0AM6PR04MB6536eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>Hi,<br>
<br>
we are currently checking out, if we can use RFNoC to develop a simple PHY =
for real-time low-latency signal transmission. We have done this before in =
LabView, but now we need a small device for mobile applications, and our LV=
 only supports big USRPs (X310).
 We are aiming to use the E310 device.<br>
<br>
Hence, I was looking into RFNoC documentation to evaluate, if we should giv=
e it a try to re-develop the PHY layer within RFNoC using Vivado HLS.<br>
<br>
One main question that occurs to me immediately was: Can different blocks i=
n RFNoC share a common timing? For example, in a TDD frame structure, the T=
X frame shall only be sent, when there is no reception going on. Can differ=
ent blocks synchronize each other?
 As an example, a synchronization block (which knows when a reception is go=
ing on) should let the TX radio know, when it is allowed to transmit. The s=
ame goes for the AGC: The RX gain should only be changed, between the recep=
tion of two adjacent frames (otherwise
 one frame (which assumes a time-constant channel) would be destroyed). Hen=
ce, the synchronization should let the RX radio know, when it should change=
 its AGC value.<br>
<br>
I would be very grateful, if you could point me to some documentation in th=
is regard. I searched the internet, but unfortunately, did not find any inf=
ormation about this issue.<br>
<br>
Thank you very much for your assistance!<br>
Max<br>
<br>
</div>
<br>
<p></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<div id=3D"Signature">
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p style=3D"margin-top:0; margin-bottom:0">Maximilian Matthe</p>
<p style=3D"margin-top:0; margin-bottom:0">Head of Engineering Lab</p>
<p style=3D"margin-top:0; margin-bottom:0">maximilian.matthe@barkhauseninst=
itut.org</p>
<p style=3D"margin-top:0; margin-bottom:0">Tel.: &#43;49 173 4509667<br>
</p>
</div>
</div>
</div>
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | S=
itz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Am=
tsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettw=
eis, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:
 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any att=
achments are intended only for the person to whom this email is addressed a=
nd may contain confidential and/or privileged information. If you received =
this email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</body>
</html>

--_000_AM6PR04MB6536830597D3F6E5CAA1345C90EF0AM6PR04MB6536eurp_--


--===============7917730963197590735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7917730963197590735==--


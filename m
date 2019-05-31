Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F58305E0
	for <lists+usrp-users@lfdr.de>; Fri, 31 May 2019 02:47:06 +0200 (CEST)
Received: from [::1] (port=52416 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hWVhF-00012Y-E6; Thu, 30 May 2019 20:47:01 -0400
Received: from mail-eopbgr770121.outbound.protection.outlook.com
 ([40.107.77.121]:20600 helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 (Exim 4.92) (envelope-from <fzj28@psu.edu>) id 1hWVhB-0000xn-67
 for usrp-users@lists.ettus.com; Thu, 30 May 2019 20:46:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=PennStateOffice365.onmicrosoft.com;
 s=selector1-PennStateOffice365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a13yPDSi1AKSraXsKcQHNLUzB3ikrX53W3ejmizaP0A=;
 b=WEriKJp/lirBps3LI/zan7Uq+a66h/bvq9Pq+duMYDEFiO+NbhSxL4C7O3sk0ZROzVIAUqGNxnUdQMfttsuhTRLusj8L15kYv69i/TxpzCaRnDGWjRaxdmiEDUiHwSb1svRdKs7Yd0K5wFdZDaNTx2EK9nbFlDN3RPo9zc0tiBY=
Received: from MWHPR02MB2655.namprd02.prod.outlook.com (10.168.207.17) by
 MWHPR02MB2720.namprd02.prod.outlook.com (10.175.49.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.17; Fri, 31 May 2019 00:46:15 +0000
Received: from MWHPR02MB2655.namprd02.prod.outlook.com
 ([fe80::81f4:bd05:4fed:5398]) by MWHPR02MB2655.namprd02.prod.outlook.com
 ([fe80::81f4:bd05:4fed:5398%10]) with mapi id 15.20.1922.021; Fri, 31 May
 2019 00:46:15 +0000
To: Michael Dickens <michael.dickens@ettus.com>
Thread-Topic: =?gb2312?B?u9i4tDogu9i4tDogW1VTUlAtdXNlcnNdIEEgcHJvYmxlbSBvbiB0cmFuc21p?=
 =?gb2312?Q?tting_data_using_5GHz?=
Thread-Index: AQHVFxgMYY75xGdTVk+5Vy2MYTK5WqaEB/GAgAAYisc=
Date: Fri, 31 May 2019 00:46:15 +0000
Message-ID: <MWHPR02MB26554323EE96D5596519123DAA190@MWHPR02MB2655.namprd02.prod.outlook.com>
References: <79af66b8-8e50-4fbd-ab46-2678bf13081f@www.fastmail.com>,
 <d2b04014-954e-4113-86eb-81ea00dbb47e@www.fastmail.com>
In-Reply-To: <d2b04014-954e-4113-86eb-81ea00dbb47e@www.fastmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=fzj28@psu.edu; 
x-originating-ip: [130.203.38.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ef5770b8-2359-4ae7-7b9b-08d6e5616300
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR02MB2720; 
x-ms-traffictypediagnostic: MWHPR02MB2720:
x-microsoft-antispam-prvs: <MWHPR02MB2720F3520F2C27EE9688180FAA190@MWHPR02MB2720.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 00540983E2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39860400002)(366004)(376002)(396003)(136003)(346002)(40764003)(199004)(189003)(186003)(5660300002)(73956011)(64756008)(224303003)(52536014)(66556008)(14454004)(75432002)(66446008)(316002)(786003)(86362001)(53936002)(6436002)(2906002)(66066001)(25786009)(66946007)(76116006)(19627405001)(478600001)(74316002)(6116002)(6916009)(3846002)(66476007)(68736007)(4326008)(256004)(71190400001)(81166006)(7696005)(8936002)(33656002)(102836004)(6506007)(53546011)(81156014)(88552002)(76176011)(5024004)(91956017)(476003)(446003)(486006)(54896002)(9686003)(11346002)(7736002)(55016002)(26005)(71200400001)(99286004)(105004);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR02MB2720;
 H:MWHPR02MB2655.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: psu.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: baBf7x/LcdQ6+e8n1tiKWoi3Z5tvPmCpI0wDyg+6yNRn27Wy8XfvYMw2OAMGI0c/M/J0LlsaZ3ot4zNaxE15dM6zoScVJQW2WviQ9rfdRqzyncrCB9feF2NLOpAKn1RpmrTiQHy9/N7DUrTIXFdRgoXDGIdORlgDTgQ/4f4OgndhtHnYPer2YAwNXm5gNlhqOsI9Eklhk8cUJimOExHHIoq7raQgyIX1kysLu/VadWmBZhKVc8P62Rjn+gMwCf+NEwHzR8PZhZX8/LEOkVnhXv/aBPJj5BHRKZplTOoORhUtpy690E91ATSK0/IzI6pAS8zc2UNdJ1tvJ3pfIIUQldIl4dYtxR7o/ddqTXwL2aKelPkHf8dgmHW/NIAc+BwJrMX9Vx+uTLVW7qRG95vLWfO6K5vuXn1+LwgZLir3J3M=
MIME-Version: 1.0
X-OriginatorOrg: psu.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ef5770b8-2359-4ae7-7b9b-08d6e5616300
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2019 00:46:15.3396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cf48d45-3ddb-4389-a9c1-c115526eb52e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fzj28@psu.edu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB2720
Subject: [USRP-users] =?gb2312?b?u9i4tDogu9i4tDogIEEgcHJvYmxlbSBvbiB0cmFu?=
 =?gb2312?b?c21pdHRpbmcgZGF0YSB1c2luZyA1R0h6?=
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
From: "Jiang, Fengyang via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Jiang, Fengyang" <fzj28@psu.edu>
Cc: USRP Users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9089367136491800873=="
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

--===============9089367136491800873==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_MWHPR02MB26554323EE96D5596519123DAA190MWHPR02MB2655namp_"

--_000_MWHPR02MB26554323EE96D5596519123DAA190MWHPR02MB2655namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgTWljaGFlbCwNCg0KSSd2ZSBiZWVuIHRyeWluZyBkaWZmZXJlbnQgd2F5cyBvbiB0aGF0LCBh
bmQgYWZ0ZXIgcmVzZXR0aW5nIGJvdGggdHdvIFVTUlBzLCB0aGV5IGJlZ2FuIHRvIHdvcmsuIEkn
dmUgYmVlbiB1c2luZyB0aGVtIGZvciBzZXZlcmFsIGRheXMgYnV0IG9ubHkgY29uZmlndXJlZCB0
aGVtIG9uY2UgYXQgdGhlIHZlcnkgYmVnaW5uaW5nLCBtYXliZSBzb21ldGhpbmcgd2VudCB3cm9u
ZyB3aXRoIHRoZSBzeXN0ZW0uLiBub3cgdGhleSB3b3JrIGF0IHRoZSB+NUdIeiByYW5nZS4gSSBh
cG9sb2dpemUgZm9yIGJyaW5naW5nIHRoZSBpbmNvbnZlbmllbmNlLCBhbmQgcmVhbGx5IHRoYW5r
IHlvdSBmb3IgYWxsIHlvdXIgaGVscCENCg0KQmVzdCByZWdhcmRzLA0KRmVuZ3lhbmcNCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fDQq3orz+yMs6IE1pY2hhZWwgRGlja2VucyA8bWlj
aGFlbC5kaWNrZW5zQGV0dHVzLmNvbT4NCreiy83KsbzkOiAyMDE5xOo11MIzMMjVIDE1OjA4DQrK
1bz+yMs6IEppYW5nLCBGZW5neWFuZw0Ks63LzTogVVNSUCBVc2Vycw0K1vfM4jogUmU6ILvYuLQ6
IFtVU1JQLXVzZXJzXSBBIHByb2JsZW0gb24gdHJhbnNtaXR0aW5nIGRhdGEgdXNpbmcgNUdIeg0K
DQpDb3VsZCB5b3UgYWxzbyBwcm92aWRlIHRoZSBmaWxlcyB0aGF0IGRvIHRoZXNlIFB5dGhvbiBj
b21tYW5kcz8NCnt7ew0KZnJvbSByZWNlaXZlX3BhdGggaW1wb3J0IHJlY2VpdmVfcGF0aA0KZnJv
bSB0cmFuc21pdF9wYXRoIGltcG9ydCB0cmFuc21pdF9wYXRoDQpmcm9tIHVoZF9pbnRlcmZhY2Ug
aW1wb3J0IHVoZF9yZWNlaXZlcg0KfX19DQpUaG9zZSByZWFsbHkgYXJlIHRoZSBoZWFydCBvZiB5
b3VyIFR4IGFuZCBSeCAhIC0gTUxEDQoNCi0tLS0tIE9yaWdpbmFsIG1lc3NhZ2UgLS0tLS0NCkZy
b206ICJKaWFuZywgRmVuZ3lhbmciIDxmemoyOEBwc3UuZWR1Pg0KVG86IE1pY2hhZWwgRGlja2Vu
cyA8bWljaGFlbC5kaWNrZW5zQGV0dHVzLmNvbT4NClN1YmplY3Q6ILvYuLQ6IFtVU1JQLXVzZXJz
XSBBIHByb2JsZW0gb24gdHJhbnNtaXR0aW5nIGRhdGEgdXNpbmcgNUdIeg0KRGF0ZTogVGh1cnNk
YXksIE1heSAzMCwgMjAxOSAyOjI0IFBNDQoNCkhpIE1pY2hhZWwsDQoNClRoYW5rcyBmb3IgeW91
ciByZXNwb25zZSEgSSdsbCBhdHRhY2ggdGhlIGNvZGVzIGZvciB0cmFuc21pdHRlciBhbmQgcmVj
ZWl2ZXIsIGFuZCBoZXJlIGFyZSB0aGUgY29tbWFuZHM6DQoNCnB5dGhvbjMgYmVuY2htYXJrX3R4
X2NvcGllZF9mcm9tX2lucy5weSAtZiB4Lnh4RyAtLWFyZ3M9ImFkZHI9MTkyLjE2OC4xMC4zIiAt
LXR4LWdhaW49MjAgICAgICAoZm9yIHRyYW5zbWl0dGVyKQ0KcHl0aG9uMyBiZW5jaG1hcmtfcnhf
Y29waWVkX2Zyb21faW5zLnB5IC1mIHgueHhHIC0tYXJncz0iYWRkcj0xOTIuMTY4LjEwLjIiICAg
ICAgICAgICAgICAgICAgICAgICAgICAoZm9yIHJlY2VpdmVyKQ0KKHgueHhHIGlzIHRoZSBmcmVx
dWVuY3kpDQoNClRoYW5rIHlvdSBmb3IgeW91ciBoZWxwIQ0KDQpCZXN0IHJlZ2FyZHMsDQpGZW5n
eWFuZw0KDQpBdHRhY2htZW50czoNCg0KICAqICAgYmVuY2htYXJrX3J4X2NvcGllZF9mcm9tX2lu
cy5weQ0KICAqICAgYmVuY2htYXJrX3R4X2NvcGllZF9mcm9tX2lucy5weQ0KDQo=

--_000_MWHPR02MB26554323EE96D5596519123DAA190MWHPR02MB2655namp_
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
Hi Michael,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I've been trying different ways on that, and after resetting both two USRPs=
, they began to work. I've been using them for several days but only config=
ured them once at the very beginning, maybe something went wrong with the s=
ystem.. now they work at the ~5GHz
 range. I apologize for bringing the inconvenience, and really thank you fo=
r all your help!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Fengyang</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> Michael=
 Dickens &lt;michael.dickens@ettus.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2019=C4=EA5=D4=C230=C8=D5 15:08<br>
<b>=CA=D5=BC=FE=C8=CB:</b> Jiang, Fengyang<br>
<b>=B3=AD=CB=CD:</b> USRP Users<br>
<b>=D6=F7=CC=E2:</b> Re: =BB=D8=B8=B4: [USRP-users] A problem on transmitti=
ng data using 5GHz</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css">
<!--
p.x_MsoNormal, p.x_MsoNoSpacing
	{margin:0}
p.x_MsoNormal, p.x_MsoNoSpacing
	{margin:0}
-->
</style>
<div>
<div style=3D"font-family:Arial">Could you also provide the files that do t=
hese Python commands?<br>
</div>
<div style=3D"font-family:Arial">{{{<br>
</div>
<div style=3D"font-family:Arial">from receive_path import receive_path<br>
</div>
<div style=3D"font-family:Arial">from transmit_path import transmit_path<br=
>
</div>
<div style=3D"font-family:Arial">from uhd_interface import uhd_receiver<br>
</div>
<div style=3D"font-family:Arial">}}}<br>
</div>
<div style=3D"font-family:Arial">Those really are the heart of your Tx and =
Rx ! - MLD<br>
</div>
<div style=3D"font-family:Arial"><br>
</div>
<div>----- Original message -----<br>
</div>
<blockquote id=3D"x_qt" type=3D"cite">
<div>From: &quot;Jiang, Fengyang&quot; &lt;fzj28@psu.edu&gt;<br>
</div>
<div>To: Michael Dickens &lt;michael.dickens@ettus.com&gt;<br>
</div>
<div>Subject: =BB=D8=B8=B4: [USRP-users] A problem on transmitting data usi=
ng 5GHz<br>
</div>
<div>Date: Thursday, May 30, 2019 2:24 PM<br>
</div>
<div><br>
</div>
<div id=3D"x_qt-qt" type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi Michael,<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks for your response! I'll attach the codes for transmitter and receive=
r, and here are the commands:<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
python3 benchmark_tx_copied_from_ins.py -f x.xxG --args=3D&quot;addr=3D192.=
168.10.3&quot; --tx-gain=3D20 &nbsp; &nbsp; &nbsp;(for transmitter)<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span class=3D"x_highlight" style=3D"background-color:rgb(255,255,255)"><sp=
an class=3D"x_font" style=3D"font-family:Calibri,Arial,Helvetica,sans-serif=
">python3 benchmark_rx_copied_from_ins.py -f x.xxG --args=3D&quot;addr=3D19=
2.168.10.2&quot; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp;(for receiver)</span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
(x.xxG is the frequency)<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thank you for your help!<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Best regards,<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Fengyang<br>
</div>
<div style=3D"font-family:Arial"><br>
</div>
<div style=3D"font-family:Arial"><b>Attachments:</b><br>
</div>
</div>
<ul>
<li>benchmark_rx_copied_from_ins.py<br>
</li><li>benchmark_tx_copied_from_ins.py<br>
</li></ul>
</blockquote>
<div style=3D"font-family:Arial"><br>
</div>
</div>
</body>
</html>

--_000_MWHPR02MB26554323EE96D5596519123DAA190MWHPR02MB2655namp_--


--===============9089367136491800873==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9089367136491800873==--


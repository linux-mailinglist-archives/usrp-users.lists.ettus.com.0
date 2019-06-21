Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1648C4F00D
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jun 2019 22:37:20 +0200 (CEST)
Received: from [::1] (port=36456 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1heQHe-00085z-TZ; Fri, 21 Jun 2019 16:37:18 -0400
Received: from mail-eopbgr740105.outbound.protection.outlook.com
 ([40.107.74.105]:14016 helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <fzj28@psu.edu>) id 1heQHb-0007xy-96
 for usrp-users@lists.ettus.com; Fri, 21 Jun 2019 16:37:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=PennStateOffice365.onmicrosoft.com;
 s=selector1-PennStateOffice365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SMJkMYkfQm7DXXeq6aoDSVUnIERKsQCQ09E89nlP/n8=;
 b=CzAumEDztvzCm+l+vqpmEkhIpA0oblDc03DVpAdbAO//Z8LjLGJjN5efoywV+ClVb9eV+X+dktWRE8wBRjshMYcb7H3xxZzwusuFQZIWLszzZCdaaDDEffbPGxbT5kVAIyyaJf0QmKRhK/ei6odQ+Ah5ZJobi2FfS/9NgwGLwmk=
Received: from CY4PR02MB2647.namprd02.prod.outlook.com (10.173.40.139) by
 CY4PR02MB2646.namprd02.prod.outlook.com (10.173.41.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.13; Fri, 21 Jun 2019 20:36:34 +0000
Received: from CY4PR02MB2647.namprd02.prod.outlook.com
 ([fe80::8538:4eb4:63b1:38fa]) by CY4PR02MB2647.namprd02.prod.outlook.com
 ([fe80::8538:4eb4:63b1:38fa%7]) with mapi id 15.20.1987.014; Fri, 21 Jun 2019
 20:36:34 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, "Marcus D.
 Leech" <patchvonbraun@gmail.com>
Thread-Topic: =?gb2312?B?u9i4tDogW1VTUlAtdXNlcnNdIEFHQyBpbiBVU1JQ?=
Thread-Index: AQHVKGmY7NLyd/ALUEqp95ByTjZvZKamjCeA//+/+AM=
Date: Fri, 21 Jun 2019 20:36:33 +0000
Message-ID: <CY4PR02MB26470159FDA5AF0494BA1A96AAE70@CY4PR02MB2647.namprd02.prod.outlook.com>
References: <CY4PR02MB264708D827A2DD842CE243F8AAE70@CY4PR02MB2647.namprd02.prod.outlook.com>,
 <5D0D3B95.6070006@gmail.com>
In-Reply-To: <5D0D3B95.6070006@gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is ) smtp.mailfrom=fzj28@psu.edu; 
x-originating-ip: [130.203.38.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea000946-246a-4fa5-351c-08d6f688267e
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR02MB2646; 
x-ms-traffictypediagnostic: CY4PR02MB2646:
x-microsoft-antispam-prvs: <CY4PR02MB2646C5F614DED0E925783763AAE70@CY4PR02MB2646.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0075CB064E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(396003)(39860400002)(136003)(366004)(346002)(376002)(199004)(189003)(40764003)(74316002)(76176011)(478600001)(186003)(6436002)(55016002)(5660300002)(102836004)(256004)(7696005)(99286004)(54896002)(71190400001)(6506007)(53546011)(33656002)(2501003)(3846002)(6116002)(71200400001)(4744005)(81166006)(110136005)(19627405001)(26005)(316002)(2906002)(11346002)(786003)(446003)(68736007)(88552002)(8936002)(476003)(81156014)(64756008)(75432002)(66476007)(25786009)(66446008)(66946007)(14454004)(73956011)(66556008)(91956017)(76116006)(486006)(66066001)(52536014)(7736002)(86362001)(105004)(9686003)(224303003)(53936002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR02MB2646;
 H:CY4PR02MB2647.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: psu.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: D+b4IcTLp8fq6OnPia0cNb6AFMg/SJaL/DRWVgSF5SJtmLa2xWKMJNu2GTLMpr6pcL9jmDyvr7RpZO9m0gje8ERFTzw6gJkPhU9qeB2mBrS07Aa0cicBcu1ztpZDsicUh4J1O8ScR505WkviYLP9fQ1RCDlatRmrgdh6wJ6+obJ9YP63h/jrKZ76gYv1Fl9SFoJfs5TxB0+REJO3SI+cBWQQJXXgEnC5GBzbBnSUYgFwl+kBWASK/oomuYcp5xo9ixPeZ9wNmu2l0TByFHmk8N4xqo+1sDkdRfO0Y/U436c7K9rbetO94AgPWR4hHk+ie2w05WYJ6tMfmfZ3EwKItkczFt9p7IdZmlkYe+wc15FXId+cc0cwlv4bjAPuH8xd0n7ba2G9zRu+/NwKTXGZSvALY4+3IYYPfmjGnxg3NCM=
MIME-Version: 1.0
X-OriginatorOrg: psu.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: ea000946-246a-4fa5-351c-08d6f688267e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2019 20:36:33.9753 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7cf48d45-3ddb-4389-a9c1-c115526eb52e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fzj28@psu.edu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2646
Subject: [USRP-users] =?gb2312?b?u9i4tDogIEFHQyBpbiBVU1JQ?=
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
Content-Type: multipart/mixed; boundary="===============6300569106923027204=="
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

--===============6300569106923027204==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_CY4PR02MB26470159FDA5AF0494BA1A96AAE70CY4PR02MB2647namp_"

--_000_CY4PR02MB26470159FDA5AF0494BA1A96AAE70CY4PR02MB2647namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgTWFyY3VzLA0KDQpHb3QgaXQsIHRoYW5rcyBhIGxvdCBmb3IgeW91ciBoZWxwIQ0KDQpCZXN0
LA0KRmVuZ3lhbmcNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQq3orz+yMs6IFVT
UlAtdXNlcnMgPHVzcnAtdXNlcnMtYm91bmNlc0BsaXN0cy5ldHR1cy5jb20+ILT6se0gTWFyY3Vz
IEQuIExlZWNoIHZpYSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4NCrei
y83KsbzkOiAyMDE5xOo21MIyMcjVIDE2OjE4DQrK1bz+yMs6IHVzcnAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQrW98ziOiBSZTogW1VTUlAtdXNlcnNdIEFHQyBpbiBVU1JQDQoNCk9uIDA2LzIxLzIw
MTkgMDM6NDMgUE0sIEppYW5nLCBGZW5neWFuZyB2aWEgVVNSUC11c2VycyB3cm90ZToNCkhpLA0K
DQpJJ20gdXNpbmcgVVNSUCB0byB0cmFuc21pdCBhbmQgcmVjZWl2ZSBzb21lIHNpZ25hbHMuIENh
biBJIHVzZSBjb3JyZWxhdGlvbiB0byBjb21wYXJlIHRoZSBzdHJlbmd0aCBvZiByZWNlaXZlZCBz
aWduYWxzIGFjcm9zcyBkaWZmZXJlbnQgZXhwZXJpbWVudHM/IEVhY2ggdGltZSBJIHdpbGwgaW5j
cmVhc2UgdGhlIGRpc3RhbmNlIGJldHdlZW4gdGhlIHRyYW5zbWl0dGVyIGFuZCB0aGUgcmVjZWl2
ZXIgYnkgYSBsaXR0bGUsIGFuZCBpcyB0aGVyZSBhbiBBR0Mgb3Igb3RoZXIgbW9kdWxlcyB3aGlj
aCB3aWxsIGFmZmVjdCB0aGUgcmVjZWl2ZWQgZGF0YSAoZm9yIGV4YW1wbGUsIHdoZW4gdGhlIHNp
Z25hbCBpcyB0b28gd2Vhaywgd2lsbCBpdCBhdXRvbWF0aWNhbHkgYWRqdXN0IHRoZSBnYWluKT8g
SSdtIHVzaW5nIFVTUlAgTjIxMCwgU0JYIGRhdWdodGVyYm9hcmRzLiBUaGFuayB5b3UgZm9yIHlv
dXIgaGVscCENCg0KQmVzdCwNCkZlbmd5YW5nDQoNClRoZXJlIGlzIG5vIEFHQyBpbiB0aGF0IGNv
bmZpZ3VyYXRpb24sIGl0IHN0YXlzIGF0IHdoYXRldmVyIGdhaW4gc2V0dGluZyB5b3Ugc2V0Lg0K
DQoNCg==

--_000_CY4PR02MB26470159FDA5AF0494BA1A96AAE70CY4PR02MB2647namp_
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
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Got it, thanks a lot for your help!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Best,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Fengyang</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> USRP-us=
ers &lt;usrp-users-bounces@lists.ettus.com&gt; =B4=FA=B1=ED Marcus D. Leech=
 via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2019=C4=EA6=D4=C221=C8=D5 16:18<br>
<b>=CA=D5=BC=FE=C8=CB:</b> usrp-users@lists.ettus.com<br>
<b>=D6=F7=CC=E2:</b> Re: [USRP-users] AGC in USRP</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 06/21/2019 03:43 PM, Jiang, Fengyang vi=
a USRP-users wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm using USRP to transmit and receive some signals. Can I use correlation =
to compare the strength of received signals across different experiments? E=
ach time I will increase the distance between the transmitter and the recei=
ver by a little, and is there an
 AGC or other modules which will affect the received data (for example, whe=
n the signal is too weak, will it automaticaly adjust the gain)? I'm using =
USRP N210, SBX daughterboards. Thank you for your help!</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Best,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Fengyang</div>
<br>
</blockquote>
There is no AGC in that configuration, it stays at whatever gain setting yo=
u set.<br>
<br>
<br>
</div>
</body>
</html>

--_000_CY4PR02MB26470159FDA5AF0494BA1A96AAE70CY4PR02MB2647namp_--


--===============6300569106923027204==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6300569106923027204==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FEA9FD6E
	for <lists+usrp-users@lfdr.de>; Wed, 28 Aug 2019 10:48:16 +0200 (CEST)
Received: from [::1] (port=53428 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2tcf-0005gC-Ff; Wed, 28 Aug 2019 04:48:09 -0400
Received: from mail-eopbgr1280112.outbound.protection.outlook.com
 ([40.107.128.112]:58749 helo=KOR01-PS2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ksshin@postech.ac.kr>)
 id 1i2tca-0005by-Qp
 for usrp-users@lists.ettus.com; Wed, 28 Aug 2019 04:48:05 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e3Q7msZPb7JS6tBf7L9QWYpw8ARjCvSbNH5vmj+59JJtGKvdZEvUY+pcV1j9Ag5K4qnEiXXHoc10xj3SJf+yPo092B9K7u3PnLCC4eiH6pL6jwIxjHQpXUovnWgibcFXJL7tfzLJPtwcsIZk98HoYHhB7dxmta1IvEceE+cLR8JqJvUAKwnTt70nIcC92bT3T/zUhiovzJhZJK30M0yanPsfco9JFUkFzUcLMkruhhpt7Eq20iYSz9y+fyzjoZQymQGlBh7mnxF6TQclPT5tEKmklLsc1AzxAGWEjykTGGqsQsBWUgKaHUhnQZkIdU3xQAOIUlzvUGP9ihtlQp6C4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O6sx+SF06uM9Iin44uqSJYJBDs2egxR5EIDowsUiRVc=;
 b=RzIb+SUdcL21DSYNY6HeQ9Xai4wFt/+QUu3cnLgbt4wxX8K6QYO4X2bgQl6egUx/x/G9pq+lYvGbhwhyMssk4t+EBPsuBZd5oC+HDgaO/FBGqXqjbU70Kkyu7zvdTV4N+hWoTSIH6i53m0PNk+jnfW4gCFO5ks3N3UVwtRgd2qCA2zesEJwsMZXwwt88Udxrkw8sBdPkXOQYjjTwAINzP7HD2Ul5nUDm6A3OgolZj0Wi7vcANtRsMik7ShH/2LHpOcGvWzB5uXthEoizeC6RA+fEYAMD7KyCvI6x3xO4fMF+P7JV+Od3vDF78ZXWPQoJqqk1k9Y02apwVry1dTGmNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=postech.ac.kr; dmarc=pass action=none
 header.from=postech.ac.kr; dkim=pass header.d=postech.ac.kr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=postechackr.onmicrosoft.com; s=selector2-postechackr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O6sx+SF06uM9Iin44uqSJYJBDs2egxR5EIDowsUiRVc=;
 b=mEiQ8NzfDDG8KREQq5TlrTyMTWLf2d9u9QNUeMDVf/Gm6HapuACU2DAYW88gDUd++4buC/7sZvGmwl2KOoyD+Bv6AY5sc2AV2LXwwvptjjARAW2SzvSkM0QdRSP/fgmH88ZSeE0Kz/mxlUUqJ95e3pz4aDacJeysxYZA9tq1/Ko=
Received: from SL2P216MB0938.KORP216.PROD.OUTLOOK.COM (10.174.47.146) by
 SL2P216MB0377.KORP216.PROD.OUTLOOK.COM (10.174.120.23) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2199.21; Wed, 28 Aug 2019 08:47:21 +0000
Received: from SL2P216MB0938.KORP216.PROD.OUTLOOK.COM
 ([fe80::503d:6515:9aa3:b95]) by SL2P216MB0938.KORP216.PROD.OUTLOOK.COM
 ([fe80::503d:6515:9aa3:b95%10]) with mapi id 15.20.2178.023; Wed, 28 Aug 2019
 08:47:21 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, Remco Vink
 <r.vink@opnt.nl>
Thread-Topic: [USRP-users] Overrun on USB vs Ethernet
Thread-Index: AQHVXW5wBplNRWziZE6zO6XrE1apQacQODpS
Date: Wed, 28 Aug 2019 08:47:21 +0000
Message-ID: <SL2P216MB0938126B83F61183B049D0FA93A30@SL2P216MB0938.KORP216.PROD.OUTLOOK.COM>
References: <CAJ4BvYETtM==U1NrFYJMeTdykP6NNuk0B3eWAmYj3ibKj-zVEA@mail.gmail.com>
In-Reply-To: <CAJ4BvYETtM==U1NrFYJMeTdykP6NNuk0B3eWAmYj3ibKj-zVEA@mail.gmail.com>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ksshin@postech.ac.kr; 
x-originating-ip: [141.223.88.211]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f0a7628a-6d5a-4f56-98f2-08d72b94572f
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:SL2P216MB0377; 
x-ms-traffictypediagnostic: SL2P216MB0377:
x-microsoft-antispam-prvs: <SL2P216MB0377608C466DAA573EC6033793A30@SL2P216MB0377.KORP216.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 014304E855
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(376002)(366004)(346002)(39850400004)(396003)(199004)(189003)(71190400001)(5660300002)(64756008)(66556008)(66476007)(66946007)(66446008)(76116006)(52536014)(2906002)(71200400001)(5024004)(256004)(33656002)(74316002)(14454004)(7736002)(478600001)(66066001)(81166006)(6436002)(9686003)(2501003)(26005)(54896002)(86362001)(476003)(446003)(11346002)(486006)(55016002)(25786009)(7696005)(99286004)(6116002)(76176011)(786003)(8936002)(19627405001)(110136005)(81156014)(102836004)(229853002)(6246003)(53936002)(316002)(105004)(8676002)(186003)(6506007)(3846002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SL2P216MB0377;
 H:SL2P216MB0938.KORP216.PROD.OUTLOOK.COM; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: postech.ac.kr does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OE0JxOiijP3WXyH+m0rR048l8kKpphHZaBHhCb1GI9JsBwdcdcTV3PimFnpLXPN+Lhqrafp2mozlsvcGaJ7Eyv9thveyOxGQzF3brlKuBKuJMQjMF/adcvAbJ6IkOWVbGTyOJl5ErtHmk/576uhh2RxC6KJS8LE8RuTuRgta+1UTB9ukTVDkMJ7f6OCYk1EqAdwDCl4R7PK2NWpvMYT+LJnvqo+96berqEuyGfywSEzEwI/QeSx1yVbsflSshlhKYPPpoTaiZvCD4JhIumLkxjHfA4X+ZOnAL/H7xi8EIfQ1aWzLJCw+KHujuJz350GDh1t5o4oW0oo+4ixJMA8ZYOHZvi3PLp/1TmPmM5yVrm9Rj8ej7oMnP5xHNqdljv3ioopBUXZXpQwOlaaoi1q13l4NINkhjx4PVuBvMEWlQkc=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: postech.ac.kr
X-MS-Exchange-CrossTenant-Network-Message-Id: f0a7628a-6d5a-4f56-98f2-08d72b94572f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2019 08:47:21.2866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bff3e98c-5cca-455c-adc8-5fd24fc9908d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yWoBe8+u5vf/HYNAdOwJN0ODTY2VPCAz2P9/HU3W9m0JTkDKjyrH3PiyWOwjlIVwkCXLjad+LYWszuBRS9VzCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SL2P216MB0377
Subject: Re: [USRP-users] Overrun on USB vs Ethernet
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
From: Kyeong Su Shin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kyeong Su Shin <ksshin@postech.ac.kr>
Content-Type: multipart/mixed; boundary="===============2981348682964204501=="
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

--===============2981348682964204501==
Content-Language: ko-KR
Content-Type: multipart/alternative;
	boundary="_000_SL2P216MB0938126B83F61183B049D0FA93A30SL2P216MB0938KORP_"

--_000_SL2P216MB0938126B83F61183B049D0FA93A30SL2P216MB0938KORP_
Content-Type: text/plain; charset="ks_c_5601-1987"
Content-Transfer-Encoding: base64

SGVsbG8gUmVtY286DQoNCklmIGJlbmNobWFya19yYXRlIHJ1bnMgZmluZSBhdCB0aGUgdGFyZ2V0
IHJ4IHJhdGUsIHRoZSBwcm9jZXNzaW5nIHNwZWVkIG9mIHRoZSBDUFUgaXMgcHJvYmFibHkgdGhl
IG1haW4gYm90dGxlbmVjay4gSWYgeW91IHdhbnQgdG8gdGVzdCBpdCBmdXJ0aGVyLCB5b3UgY2Fu
IGNoZWNrIHRoZSAibWF4aW11bSB0aHJvdWdocHV0IiBvZiB5b3VyIHNvZnR3YXJlIChtYXhpbXVt
IHJ4IHJhdGUgdGhhdCB5b3VyIHNvZnR3YXJlIGNhbiBrZWVwIHVwKS4NCg0KSWYgeW91ciBwcm9n
cmFtIGlzIGluIEdOVSBSYWRpbywgb25lIHRoaW5nIHRoYXQgeW91IGNhbiBkbyBpcyByZXBsYWNp
bmcgdGhlICJVU1JQIFNvdXJjZSIgdG8gYSBmaWxlIHNvdXJjZSB3aXRoIHByZS1yZWNvcmRlZCBk
YXRhIChvciBtYXliZSBhIHJhbmRvbSBzb3VyY2UsIGlmIHRoZSBwZXJmb3JtYW5jZSBvZiB5b3Vy
IGZsb3cgZ3JhcGggaXMgbm90IGFmZmVjdGVkIGJ5IHRoZSBpbmNvbWluZyBkYXRhKSwgYW5kIGF0
dGFjaGluZyBhICJQcm9iZSBSYXRlIiBhbmQgIGEiTWVzc2FnZSBEZWJ1ZyIgcmlnaHQgYWZ0ZXIg
dGhhdC4gSWYgdGhlIHByb2Nlc3NpbmcgcmF0ZSwgcHJpbnRlZCB0byBzdGRvdXQsIGlzIHNsb3dl
ciB0aGFuIHRoZSB0YXJnZXQgc2FtcGxpbmcgcmF0ZSwgdGhlbiB5b3VyIHlvdXIgQ1BVIGlzIG5v
dCBrZWVwaW5nIHVwLiBJZiBpdCBpcyBrZWVwaW5nIHVwLCB0aGUgcHJvYmxlbSBjb3VsZCBiZSBj
YXVzZWQgYnkgc29tZSBvdGhlciBpc3N1ZXMsIGluY2x1ZGluZyBidXQgbm90IGxpbWl0ZWQgdG8g
dHdvLWNsb2NrIGlzc3VlcywgVVNCIGNvbnRyb2xsZXIgaXNzdWVzLCBhbmQgVVNCIGNvbm5lY3Rp
b24gaXNzdWVzIChmYXVsdHkgVVNCIDMuMCBjb25uZWN0aW9uOyBpdCBkb2VzIGhhcHBlbiEpLiBZ
b3Ugc2hvdWxkIGJlIGFibGUgdG8gZG8gc29tZXRoaW5nIHNpbWlsYXIgZXZlbiBpZiB5b3VyIHBy
b2dyYW0gaXMgbm90IGluIEdOVSBSYWRpbyAoSSBkb24ndCBoYXZlIGRpcmVjdGlvbnMgZm9yIHRo
YXQsIHRob3VnaCkuDQoNCkluIG15IGV4cGVyaWVuY2UsIEV0aGVybmV0LWJhc2VkIFVTUlBzIChs
aWtlIE4yMDBzIGFuZCBYMzAwcykgYXJlIGluZGVlZCBhIGJpdCBiZXR0ZXIgYXQgdGhpcy4gSG93
ZXZlciwgaWYgdGhlIGJvdHRsZW5lY2sgaXMgY2F1c2VkIGJ5IHRoZSBzb2Z0d2FyZSwgdGhlbiBy
ZXBsYWNpbmcgdGhlIFNEUiBib2FyZCB3b24ndCBmaXggdGhlIHByb2JsZW0uDQoNClJlZ2FyZHMs
DQpLeWVvbmcgU3UgU2hpbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCrq4s70g
u+e29zogUmVtY28gVmluayB2aWEgVVNSUC11c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20+ILTrvcUgVVNSUC11c2VycyA8dXNycC11c2Vycy1ib3VuY2VzQGxpc3RzLmV0dHVzLmNvbT4N
Crq4s70gs6/CpTogMjAxObPiIDi/+SAyOMDPILz2v+TAzyC/wMjEIDQ6MDANCrnetMIgu+e29zog
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0K
waa48TogW1VTUlAtdXNlcnNdIE92ZXJydW4gb24gVVNCIHZzIEV0aGVybmV0DQoNCkFsbCwNCg0K
SSBhbSBleHBlcmllbmNpbmcgc29tZSBpc3N1ZXMgd2l0aCBvdmVycnVucyBzdG9wcGluZyB0aGUg
c3RyZWFtZXIgb2Ygb3VyIFVTQiBCMjAwIGRldmljZXMuIEN1cnJlbnRseSB0aGUgY29tcHV0ZXJz
IGluIHVzZSBhcmUgbm90IHRoZSBmYXN0ZXN0IGluIHRoZWlyIGtpbmQsIGJ1dCBJIGFtIHdvbmRl
cmluZyB3aGVyZSB0aGUgbGltaXRhdGlvbiBpcyBjb21pbmcgZnJvbS4gSSBoYXZlbid0IGZvdW5k
IGEgd2F5IHRvIG1lYXN1cmUgdGhlIHRocm91Z2hwdXQgb2YgdGhlIFVTQiwgc28gaXQgbWlnaHQg
ZWl0aGVyIGJlIHRoZSBVU0IgY29udHJvbGxlciBvciBwcm9jZXNzb3Igd2hpY2ggaXMgbm90IGZh
c3QgZW5vdWdoIHRvIGhhbmRsZSBhbGwgdGhlIGRhdGEuIFRoZSBiZW5jaG1hcmtfcmF0ZSBzZWVt
cyB0byBydW4gZmluZSBhdCB0aGUgcnhfcmF0ZSB0aGUgcHJvZ3JhbSBpcyBydW5uaW5nIG9uLg0K
DQpJZiBmb3IgaW5zdGFuY2UgSSB3b3VsZCB0byBzd2l0Y2ggdG8gYSBuZXR3b3JrIGJhc2VkIGRl
dmljZSBhbmQgaGF2ZSB0aGUgY29ubmVjdGlvbiBvdmVyIGV0aGVybmV0LCB3b3VsZCB0aGlzIHBv
c3NpYmx5IGZpeCB0aGUgaXNzdWUgb3Igd291bGQgdGhlIHByb2Nlc3NvciBvciBzb21lIG90aGVy
IGJvdHRsZW5lY2sgc3RpbGwgYXJpc2UuIFdvdWxkIGxpa2UgdG8gaGVhciB5b3VyIHRob3VnaHRz
IG9uIHRoaXMgb3ZlcnJ1biBhbmQgbW9zdCBsaWtlbHkgYm90dGxlbmVjayBwcm9ibGVtLg0KDQo=

--_000_SL2P216MB0938126B83F61183B049D0FA93A30SL2P216MB0938KORP_
Content-Type: text/html; charset="ks_c_5601-1987"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dks_c_5601=
-1987">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Hello Remco:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If benchmark_rate runs fine at the target rx rate, the processing speed of =
the CPU is probably the main bottleneck. If you want to test it further, yo=
u can check the &quot;maximum throughput&quot; of your software (maximum rx=
 rate that your software can keep up).
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If your program is in GNU Radio, one thing that you can do is replacing the=
 &quot;USRP Source&quot; to a file source with pre-recorded data (or maybe =
a random source, if the performance of your flow graph is not affected by t=
he incoming data), and attaching a &quot;Probe
 Rate&quot; and&nbsp; a&quot;Message Debug&quot; right after that. If the p=
rocessing rate, printed to stdout, is slower than the target sampling rate,=
 then your your CPU is not keeping up. If it is keeping up, the problem cou=
ld be caused by some other issues, including but not
 limited to two-clock issues, USB controller issues, and USB connection iss=
ues (faulty USB 3.0 connection; it does happen!). You should be able to do =
something similar even if your program is not in GNU Radio (I don't have di=
rections for that, though).<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
In my experience, Ethernet-based USRPs (like N200s and X300s) are indeed a =
bit better at this. However, if the bottleneck is caused by the software, t=
hen replacing the SDR board won't fix the problem.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Kyeong Su Shin<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=BA=B8=B3=BD =BB=E7=B6=F7:</b> =
Remco Vink via USRP-users &lt;usrp-users@lists.ettus.com&gt; =B4=EB=BD=C5 U=
SRP-users &lt;usrp-users-bounces@lists.ettus.com&gt;<br>
<b>=BA=B8=B3=BD =B3=AF=C2=A5:</b> 2019=B3=E2 8=BF=F9 28=C0=CF =BC=F6=BF=E4=
=C0=CF =BF=C0=C8=C4 4:00<br>
<b>=B9=DE=B4=C2 =BB=E7=B6=F7:</b> usrp-users@lists.ettus.com &lt;usrp-users=
@lists.ettus.com&gt;<br>
<b>=C1=A6=B8=F1:</b> [USRP-users] Overrun on USB vs Ethernet</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>
<div>
<div>All,<br>
<br>
</div>
I am experiencing some issues with overruns stopping the streamer of our US=
B B200 devices. Currently the computers in use are not the fastest in their=
 kind, but I am wondering where the limitation is coming from. I haven't fo=
und a way to measure the throughput
 of the USB, so it might either be the USB controller or processor which is=
 not fast enough to handle all the data. The benchmark_rate seems to run fi=
ne at the rx_rate the program is running on.<br>
<br>
</div>
If for instance I would to switch to a network based device and have the co=
nnection over ethernet, would this possibly fix the issue or would the proc=
essor or some other bottleneck still arise. Would like to hear your thought=
s on this overrun and most likely
 bottleneck problem.<br>
</div>
<br clear=3D"all">
</div>
</div>
</body>
</html>

--_000_SL2P216MB0938126B83F61183B049D0FA93A30SL2P216MB0938KORP_--


--===============2981348682964204501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2981348682964204501==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C62F2C4E7F
	for <lists+usrp-users@lfdr.de>; Thu, 26 Nov 2020 06:48:24 +0100 (CET)
Received: from [::1] (port=48792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kiA8e-0000nZ-TH; Thu, 26 Nov 2020 00:48:16 -0500
Received: from mail-co1nam11on2124.outbound.protection.outlook.com
 ([40.107.220.124]:58081 helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <xingjian@umass.edu>) id 1kiA8a-0000jI-LQ
 for usrp-users@lists.ettus.com; Thu, 26 Nov 2020 00:48:12 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JKuQBMTu45MMT/YQrWm9s3iq3Y/3unH8JId8o+ZyIBe9E2LzePV3QCx6ckPo9tf30QbLMSYrSWImmm9IReLHKUdGDS1q3xzmKa2Pr3Ye72ZVJuvCB9rWtLxV3jWY5Byf6a8NDsd3zLvJ4Jxq3Knpj0NcLp4+WqPe12fGYkzMtNT/gV7BfkuB9UZPdvc8zjDWVfPO2AbOtQqfamnswx+eMihCGYWitUXHx6sDqij7m4v/frnwlHAbiFgJaJIKG/sZxvmSfFo9qr6QPs+UcSPKrUpKlYPRbo3afvHs8voNfTq9YlCnfzbibDHJknJSk2VUjPqBPZf6GyZCDC+Y1rCPdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Um+h5yFX8/TB/22W+Ipx4L81Aat9mKLAjJ+NqA03/o4=;
 b=b2COeM4V7xQWaOGq5Wjp+cSW1BJpC8ZbPXxJf7rcmvJ+LbheyUOCkvF6KyPGp5/SWf8AW4EdGWc0wA7cSaiHeQnjHyKxaR+Zusn8cSnMAgyQUgFUUxF4KrWuC7+6Z4150zUwCKiL3paT2wIY2QYXVc0/XLShYGBnQLi0OcYVGZQPG8mGhXRTiUTdfFA11F74ZygRbB6ykQyb/z9c0nA8MMbz0VwQQhOEQ6Zl69XFP7QYyxUBWZknUwHt7e/SPY78cGo4HHykLwFY6OkGTEInuVLzMto66pLILO1mrT4rrfVUnTqkOCmEG7PkkzR7CSWMHh+k+9nctBHclgxBuge1ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=umass.edu; dmarc=pass action=none header.from=umass.edu;
 dkim=pass header.d=umass.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umass.onmicrosoft.com; 
 s=selector2-umass-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Um+h5yFX8/TB/22W+Ipx4L81Aat9mKLAjJ+NqA03/o4=;
 b=PLtA1DGfs8Jo1tqHdW1vjGxHtNSdv0b7wTi4Prl6MBmJaNn7SvYUF+pKaMBbZkdQtZt2stOFMqL2Cp6m4AT2H0NP15okyxkD7BfqXgZ8qnt2sEj5W6CFymGMhW4QxVeXrZriL5fvbI/CzCcBuxhUvb1vSYegetNcSYmlOLwdCKs=
Received: from MN2PR14MB4192.namprd14.prod.outlook.com (2603:10b6:208:1dd::12)
 by MN2PR14MB3232.namprd14.prod.outlook.com (2603:10b6:208:c8::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Thu, 26 Nov
 2020 05:47:29 +0000
Received: from MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::d058:3625:1048:9e51]) by MN2PR14MB4192.namprd14.prod.outlook.com
 ([fe80::d058:3625:1048:9e51%9]) with mapi id 15.20.3589.030; Thu, 26 Nov 2020
 05:47:29 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: How does recv() stops siggen?
Thread-Index: AQHWw63v3FeMOxiXZkKrBLUBsAwoMw==
Date: Thu, 26 Nov 2020 05:47:29 +0000
Message-ID: <MN2PR14MB41927C1F4EF685E0561EB379CDF90@MN2PR14MB4192.namprd14.prod.outlook.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=umass.edu;
x-originating-ip: [128.119.202.122]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9485f99-c1c6-4d48-e3de-08d891cec303
x-ms-traffictypediagnostic: MN2PR14MB3232:
x-microsoft-antispam-prvs: <MN2PR14MB32325F396E126D498218DCA7CDF90@MN2PR14MB3232.namprd14.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X+drFeq2t/2q3ca1Z3+FH+JgIubFqCPNgGuJUDeAJymJiIx3S+7R9nlMqaC8GZJ74uo2sA28FrczdT/sqtVLdiSNyLnxnXag+Z2ljgr612NJ/GxuO+IS63hXNm+SOd+qfOaSoTlCO4qNVHWMOeMdWlYJ/c1uUYNXnFFCHlKTXEl+qPmk38FRlTWJ4mUKAwYbK9RIhNGyVn8mpIpviuDjHTrCjVyE6vWqBznJUibDtillQUSB3vzVxKVRVVsB+kS84xaUHUwbhMc+EM1uhwI0k+zQk7Y6Bdjs4+IR/ZFftXKuFzgS3iWKZptQhc57YMOJLSrGJ9TUDG2olwHEYSn/nQGZiss4i+NCI2wyBQLdo6fi0BKkmvZ/DbxYN8RbWej+jo9SebJKsgMdjLiiwjUe1Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR14MB4192.namprd14.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(136003)(376002)(366004)(39860400002)(396003)(786003)(8936002)(8676002)(166002)(71200400001)(7696005)(75432002)(6506007)(2906002)(83380400001)(26005)(21615005)(66556008)(186003)(86362001)(316002)(33656002)(55016002)(76116006)(66946007)(19627405001)(64756008)(966005)(478600001)(52536014)(66446008)(5660300002)(6916009)(66476007)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: muyh59s6cQntqWeLWGK7oUA5HtIQuspx5Xfwi4mYJPRNX9TI0mKT6ttYqsYyCftPXgIsO10F6RDzeKwUw7kL8ErjNTHaOnN1+vUEBdfjH9lO2Xl4SgFkYCnz64X71rpZUP+Gza88sVBWqsLV9PVKqT/Bjq+CfPC6xBBKiag4v0wm+A4AiIiTYlYkMtPpSYyPt772nn4WzXEgDlBdExkQ21ta7SNsKb6MoRBNGpAGP4tBtH3CpU17W3mni0ESNOXv+MsoImDetoNIv53SSvK2zGDD+XXuo+pAoV7g5IOn9xyr6KLIZhipi2P1dKOU/IcIUcgNeqYWYbOrCshde3QzidZB72qfF9KvC6XIPQappeyhb6XXDXyKFUXrblVP5npu8c0SmBSYxoTaErVGTinj5bseTUBSPYbi5FuC8YcAlHXlLbgdXDWPhCLGG9CiudHivfZwJ5tf9lm6lZkmgcIyMiwi9GGs0hkB3Wu92fsv5R+On9yDkHaw785TuaRpzT3tA6O7h+NbKlRR7wefcKggeQvxoX8lvGoWuE63LW4ljuihOkU6z4D0KvghWBdhYdYntbG471j+XbD3wOB0s5sr/8nhhpgl8JD9U0MV5d/Ab5ikXC5618YjhmbdAdFlpfSp+wbCtqcmqHYIuYKt+b9YY4O+n91i49RlO2mfHRqDO5DB6rX0cJ5mfVyQ9l4f+fGtOGdw0fisT2TTQF0lYJbziIpNZp65ddOlQw+ESPcNMpq83gVduA8MXUD2jYY3/4PWwTfWNQf9EHMcBNnZ1LUWdSCoZAOe/hOSkB3zwMUxwBwbvgI6gNrgVSt7n1J90vDsiCDoqpV1PclAJEMTxK9LPr0AASPPjWrMCY4kQ0SyFLZsK05BgS2gehJH3hIn3P9FhlQGIyn9TF8aHYLIB1Lbdw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: umass.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR14MB4192.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9485f99-c1c6-4d48-e3de-08d891cec303
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Nov 2020 05:47:29.1857 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7bd08b0b-3395-4dc1-94bb-d0b2e56a497f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WYR3hPiqzeGxbAbZkzSACkr+UX8Gt42g+jklrQPPtFHide8mbDsQx8V3IX0CUYClVIt72y16EFsVyo8TZn0KuA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR14MB3232
Subject: [USRP-users] How does recv() stops siggen?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Xingjian Chen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Xingjian Chen <xingjian@umass.edu>
Content-Type: multipart/mixed; boundary="===============6369870996562922007=="
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

--===============6369870996562922007==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_MN2PR14MB41927C1F4EF685E0561EB379CDF90MN2PR14MB4192namp_"

--_000_MN2PR14MB41927C1F4EF685E0561EB379CDF90MN2PR14MB4192namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

RGVhciBhbGwsDQpJIGNvbWJpbmVkIG5vY19ibG9ja19zaWdnZW4gYW5kIG5vY19ibG9ja19maXJf
ZmlsdGVyIHRvIHRyYW5zbWl0IHB1bHNlcyB3aXRoIGl0cyBzYW1wbGVzIGNhbiBiZSB1cGRhdGVk
IHVzaW5nIGEgRTMxMi4gSSBib3Jyb3dlZCBzb21lIGNvZGUgZnJvbSB0aGUgYXhpX2Zpcl9maWx0
ZXIudiBmb3Igc2FtcGxlIHVwZGF0ZS4gVGhlIHVwZGF0ZWQgc2FtcGxlcyBhcmUgc3RvcmVkIGlu
IGJsb2NrIG1lbW9yeS4gVGhlIHRyYW5zbWl0dGVyIHdvcmtzIHdlbGwgZm9yIGJvdGggY2hhbm5l
bHMuICBIb3dldmVyLCBhZnRlciBJIGFkZGVkIHJlY2VpdmVyIGJsb2NrcyBpdCBnYXZlIG1lIGEg
c3RyYW5nZSBlcnJvcjoNCg0KIlV0ZXJtaW5hdGUgY2FsbGVkIGFmdGVyIHRocm93aW5nIGFuIGlu
c3RhbmNlIG9mICd1aGQ6OmlvX2Vycm9yJw0KICB3aGF0KCk6ICBFbnZpcm9ubWVudEVycm9yOiBJ
T0Vycm9yOiBCbG9jayBjdHJsIChDRV8wMF9Qb3J0XzEwKSBwYWNrZXQgcGFyc2UgZXJyb3IgLSBF
bnZpcm9ubWVudEVycm9yOiBJT0Vycm9yOiBFeHBlY3RlZCBwYWNrZXQgaW5kZXg6IDk4MyBSZWNl
aXZlZCBpbmRleDogOTgyDQpzOiBsaW5lIDE0OiAgMTgyMCBBYm9ydGVkIg0KSGVyZSBhcmUgc29t
ZSBxdWVzdGlvbnM6DQoNCiAgMS4gIEkgZ3Vlc3MgIkNFXzAwX1BvcnRfMTAiIGlzICBvbmUgb2Yg
dGhlIG5vY19ibG9ja19zaWdnZW4gIHBvcnQsIGJ1dCBub3Qgc3VyZS4uLg0KICAyLiAgVGhpcyBl
cnJvciBoYXBwZW5zIHdoZW4gSSBzdGFydCB0cmFuc21pdHRpbmcgYW5kIHVwZGF0ZSB0eCBjaGFu
bmVsIDIuIE15IHR4IGNoYW5uZWwgMSB3b3JrcyBmaW5lIHdpdGggdGhlIHJlY2VpdmVyIHdpdGgg
bm8gZXJyb3IuIEkgaGF2ZSB0cmllZCB0byBmaW5kIGFueSB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVu
IHRoZSBjb2RlcyBpbiB2ZXJpbG9nIGFuZCBjKysgZm9yIHRoZSB0d28gdHggY2hhbm5lbHMuIEkg
dXNlZCB0aGUgc2FtZSByZm5vYyBtb2R1bGUoc2FtZSB2ZXJpbG9nIC52IGZpbGVzKSBpbiBlMzEw
X2NvcmUuIEp1c3Qgbm90IHN1cmUgd2hlcmUgdGhlIGRpZmZlcmVuY2UgY291bGQgYmUuLi4NCiAg
My4gIEkgYWxzbyBmaW5kIHRoYXQgcnhfc3RyZWFtLT5yZWN2KCkgc3RvcHMgdGhlIHRyYW5zbWlz
c2lvbiBhbmQgdHJpZ2dlcnMgdGhlIGVycm9yLiBGb3IgZXhhbXBsZSwgYWZ0ZXIgc3RhcnQgdHJh
bnNtaXR0aW5nIGFuZCB1cGRhdGUgdHggY2hhbm5lbCAyIHNhbXBsZXMsIHR4IGNoYW5uZWwgMiBj
YW4gdHJhbnNtaXQgdXBkYXRlZCB3YXZlZm9ybS4gQXMgbG9uZyBhcyByeF9zdHJlYW0tPnJlY3Yo
KSBzdGFydGVkIGFmdGVyIHRoZSBzYW1wbGUgdXBkYXRlLCB0aGUgdHJhbnNtaXNzaW9uIGlzIGtp
bGxlZC4gVGhlbiBhZnRlciBzZXZlcmFsIHNhbXBsZXMgcmVjZWl2ZWQsIHRoZSB3aG9sZSBwcm9n
cmFtIGV4aXRlZCB3aXRoIHRoZSBlcnJvci4NCk15IGZpcnN0IHRob3VnaHQgd2FzIHRvIG1hbmFn
ZSBteSB0cmFuc21pdCBhbmQgcmVjZWl2ZSB0aHJlYWRzIGluIG9yZGVyIHRvIGxldCByZWNlaXZl
IHRocmVhZCB3YWl0IGZvciB0aGUgdHggc2FtcGxlIHVwZGF0ZS4gSG93ZXZlciwgbm8gbWF0ZXIg
aG93IGxvbmcgcmVjZWl2ZXIgd2FpdCBmb3IgdGhlIHVwZGF0ZSwgdGhlIG5leHQgcnhfc3RyZWFt
LT5yZWN2KCkgd2lsbCBzdG9wIHRoZSBwcm9ncmFtLg0KICA0LiAgSSBkb24ndCBrbm93IGhvdyB0
aGUgcmVjZWl2ZXIgc3RyZWFtIGNvdWxkIHJlbGF0ZWQgdG8gdGhlIHRyYW5zbWl0dGVyLiBJIHVz
ZWQgc2V0X3RhcHMoKSBmb3IgdHggc2FtcGxlIHVwZGF0ZS4gU2luY2Ugc2V0X3RhcHMoKSByZWxh
dGVkIHRvIHdyaXRpbmcgcmVnaXN0ZXIgKHNyX3dyaXRlKFNSX1JFTE9BRCwgdWludDMyX3QodGFw
c1tpXSkpOyksIEkgaGF2ZSBjaGVja2VkIGNsZWFyX3R4X3N0cmVhbSBpbiBheGlfd3JhcHBlciBi
dXQgaXQgaXMgbm90IHJlbGF0ZWQgdG8gdGhpcyBpc3N1ZSBpbiBteSBjYXNlLiBJIGFsc28gY2hl
Y2tlZCBFT0IgZm9yIHRoZSB0cmFuc21pdHRlciwgaXQgc2VlbXMgbm90IHJlbGF0ZWQgdG8gdGhp
cyBpc3N1ZSB0b28uDQpodHRwOi8vbGlzdHMuZXR0dXMuY29tL3BpcGVybWFpbC91c3JwLXVzZXJz
X2xpc3RzLmV0dHVzLmNvbS8yMDE4LU1heS8wNTY0NjIuaHRtbA0KaHR0cDovL2xpc3RzLmV0dHVz
LmNvbS9waXBlcm1haWwvdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20vMjAxNy1KdW5lLzA1MzIx
MC5odG1sDQoNCkFueSBpZGVhcyBhbmQgY29tbWVudHMgYWJvdXQgdGhpcyBxdWVzdGlvbiBhcmUg
d2VsY29tZS4gVGhhbmsgeW91IGluIGFkdmFuY2UhISENCg0KPGh0dHA6Ly9saXN0cy5ldHR1cy5j
b20vcGlwZXJtYWlsL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tLzIwMTgtTWF5LzA1NjQ2Mi5o
dG1sPg0KDQo=

--_000_MN2PR14MB41927C1F4EF685E0561EB379CDF90MN2PR14MB4192namp_
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
Dear all,&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I combined noc_block_siggen and <span style=3D"background-color:rgb(255, 25=
5, 255);display:inline !important">
noc_block_fir_filter<span>&nbsp;</span></span>to transmit pulses with its s=
amples can be updated using a E312. I borrowed some code from the axi_fir_f=
ilter.v for sample update. The updated samples are stored in block memory. =
The transmitter works well for both channels.&nbsp;
 However, after I added receiver blocks it gave me a strange error:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
&quot;Uterminate called after throwing an instance of 'uhd::io_error'
<div>&nbsp; what(): &nbsp;EnvironmentError: IOError: Block ctrl (CE_00_Port=
_10) packet parse error - EnvironmentError: IOError: Expected packet index:=
 983 Received index: 982</div>
s: line 14: &nbsp;1820 Aborted&quot;<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Here are some questions:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<ol>
<li>I guess &quot;<span style=3D"background-color:rgb(255, 255, 255);displa=
y:inline !important">CE_00_Port_10&quot; is&nbsp; one of the&nbsp;<span sty=
le=3D"background-color:rgb(255, 255, 255);display:inline !important">noc_bl=
ock_siggen<span>&nbsp; port, but not sure...</span></span></span></li><li><=
span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica, =
sans-serif; font-size: 12pt;">This error happens when I start transmitting =
and update tx channel 2. My tx channel 1 works fine with the receiver with =
no error.&nbsp;</span><span style=3D"color: rgb(0, 0, 0); font-family: Cali=
bri, Arial, Helvetica, sans-serif; font-size: 12pt;">I
 have tried to find any the difference between the codes in verilog and c++=
 for the two tx channels. I used the same rfnoc module(same verilog .v file=
s) in e310_core. Just not sure where the difference could be...</span></li>=
<li>I also find that rx_stream-&gt;recv()&nbsp;stops the transmission and t=
riggers the error.&nbsp;For example, after start transmitting and update tx=
 channel 2 samples, tx channel 2 can transmit updated waveform. As long as =
rx_stream-&gt;recv() started after the sample update,
 the transmission is killed. Then after several samples received, the whole=
 program exited with the error.
<br>
My first thought was to manage my<span style=3D"color: rgb(0, 0, 0); font-f=
amily: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt;">&nbsp;</spa=
n><span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetic=
a, sans-serif; font-size: 12pt;">transmit</span><span style=3D"color: rgb(0=
, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12p=
t;">&nbsp;and
 receive threads in order to let receive thread wait for the tx sample upda=
te. However, no mater how long receiver wait for the update, the next rx_st=
ream-&gt;recv() will stop the program.&nbsp;</span></li><li>I don't know ho=
w the receiver stream could related to the transmitter. I used
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;">
set_taps()</span><span style=3D"color: rgb(0, 0, 0); font-family: Calibri, =
Arial, Helvetica, sans-serif; font-size: 12pt;">&nbsp;for tx sample update.=
&nbsp;</span><span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Aria=
l, Helvetica, sans-serif; font-size: 12pt;">Since
 set_taps() related to writing register (</span><span style=3D"color: rgb(0=
, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12p=
t;">sr_write(SR_RELOAD, uint32_t(taps[i]));</span><span style=3D"color: rgb=
(0, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 1=
2pt;">),
 I have checked clear_tx_stream in&nbsp;</span><span style=3D"color: rgb(0,=
 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt=
;">axi_wrapper but it is not related to this issue in my case.&nbsp;</span>=
<span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica,=
 sans-serif; font-size: 12pt;">I
 also checked EOB for the transmitter, it seems not related to this issue t=
oo.<br>
</span><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.c=
om/2018-May/056462.html" id=3D"LPlnk464628" style=3D"font-family: Calibri, =
Arial, Helvetica, sans-serif; font-size: 12pt;">http://lists.ettus.com/pipe=
rmail/usrp-users_lists.ettus.com/2018-May/056462.html<br>
</a><a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/=
2017-June/053210.html" style=3D"font-family: Calibri, Arial, Helvetica, san=
s-serif; font-size: 12pt;">http://lists.ettus.com/pipermail/usrp-users_list=
s.ettus.com/2017-June/053210.html</a></li></ol>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<p style=3D"margin-bottom:0in;line-height:100%">Any ideas and comments abou=
t this question are welcome. Thank you in advance!!!</p>
<p style=3D"margin-bottom:0in;line-height:100%"><a href=3D"http://lists.ett=
us.com/pipermail/usrp-users_lists.ettus.com/2018-May/056462.html"></a></p>
<p style=3D"margin-bottom:0in;line-height:100%"><br>
</p>
</div>
<div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<div style=3D"font-size:12pt; color:#000000; background-color:#FFFFFF; font=
-family:Calibri,Arial,Helvetica,sans-serif">
<div class=3D"BodyFragment"><font size=3D"2" style=3D"font-size:10pt">
<div class=3D"PlainText"><span style=3D"font-size:9pt; color:rgb(0,0,0)"></=
span></div>
</font></div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR14MB41927C1F4EF685E0561EB379CDF90MN2PR14MB4192namp_--


--===============6369870996562922007==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6369870996562922007==--


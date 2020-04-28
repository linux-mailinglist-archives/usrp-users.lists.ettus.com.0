Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B73F1BB572
	for <lists+usrp-users@lfdr.de>; Tue, 28 Apr 2020 06:46:33 +0200 (CEST)
Received: from [::1] (port=33604 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jTI8Y-0003Gp-IN; Tue, 28 Apr 2020 00:46:26 -0400
Received: from mail-eopbgr1290135.outbound.protection.outlook.com
 ([40.107.129.135]:39904 helo=KOR01-SL2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <ksshin@postech.ac.kr>)
 id 1jTI8U-0003Cn-7C
 for usrp-users@lists.ettus.com; Tue, 28 Apr 2020 00:46:22 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O90Fgtv/+27+JIkNGNi07i83xEUy3GWaQLr3fZgwSwu0mHq/G2ZM/fPF4h43E7GPLoveJokGFYn0EX2s6A4f7FntxfeQY07GSejtiOK1xRJQeDhucp84yJgAy4TxW3UBCTul/8cgBJ2agL9OathoKdZ9ZV9/7Qk9jPeztJnp4qrXfScHjkDKNMsslCff3gyKj5qUk5VkQNv0Xm97/kcYyvaVgKMaYDu/58zq3XQU0A2bSzsfB+p+vZ8UAhp/ZlSHPayO/xLnPhy9dV5eNzjQTtMAdEU7jCzJXJYv74eQiJDvWqlvLRneCUrqbCnsoP6Lb4/zTF9OjxjMnsePt7mfWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3d5NDQbBJ01gcJwBGoRy5JNMnywAE/AoORH5oA2lRFI=;
 b=c/p3EpVubV3oWbWlhDA4XX/BvUYk329mqlgPTGWyfnRbpZgqcMICFNrvMiw1ttITXFPzn+xUUoQkHn3AZ22jJvXXBWgIbP2XsPwR/fViv+SPlqJjLEbIoWLOsJclrM8d1gNC0mYZ5HDb50VIEGIVY5c9e6a35ahEZSVwjkiPe18nF4W9Lzc2LRe0VqQtFfzNdmFIaSrHzkX9VfhJ6QXR0Z0jb7N6GE2guddUyXie7vjllBALak7pD+7eOhzFECS390gUfwKPahnKPeolrFPOOfjWe8WGqSajwByImLOI+ZpoV1LXJHHLDfP9tLA4M6jFXJSaO6TfG/Qb8ZWnCtM2og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=postech.ac.kr; dmarc=pass action=none
 header.from=postech.ac.kr; dkim=pass header.d=postech.ac.kr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=postechackr.onmicrosoft.com; s=selector2-postechackr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3d5NDQbBJ01gcJwBGoRy5JNMnywAE/AoORH5oA2lRFI=;
 b=yCQZOmVf1yhHN0Vr30D6lIe4E0yFkJhniFwH6f8uXyWszJXMihSBz5rY89l/anH8faTTFkYpOsY22pT+jVSUfy2iKuJzUqNN4gPhngx0wxKvtHl5B9GQAHNSxtXQhoY9nbv/WDaDj3QI3kryoDkq6/Qj7rPzC2QIRf3XhMb0TSo=
Received: from SL2P216MB0331.KORP216.PROD.OUTLOOK.COM (10.174.46.149) by
 SL2P216MB0508.KORP216.PROD.OUTLOOK.COM (10.174.120.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2937.22; Tue, 28 Apr 2020 04:45:37 +0000
Received: from SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
 ([fe80::ecce:e6d0:76c9:759]) by SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
 ([fe80::ecce:e6d0:76c9:759%3]) with mapi id 15.20.2937.023; Tue, 28 Apr 2020
 04:45:37 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, guowang qiu
 <qiu.guowang007@gmail.com>
Thread-Topic: [USRP-users] 10.23Msps Sample Rate
Thread-Index: AQHWHMUfOiq3aLoG1kWnz5M4S8rVh6iN8TXc
Date: Tue, 28 Apr 2020 04:45:37 +0000
Message-ID: <SL2P216MB03313AE03A88DF8640648FA293AC0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
References: <CACjmV_mkuEX=JjGakNemNB0CSxZjWwrSCQvLWjQetXRHLGUs8A@mail.gmail.com>
In-Reply-To: <CACjmV_mkuEX=JjGakNemNB0CSxZjWwrSCQvLWjQetXRHLGUs8A@mail.gmail.com>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ksshin@postech.ac.kr; 
x-originating-ip: [141.223.84.210]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0b96a0a3-5878-4550-9c75-08d7eb2eff24
x-ms-traffictypediagnostic: SL2P216MB0508:
x-microsoft-antispam-prvs: <SL2P216MB050823B1A1738625ABBE513A93AC0@SL2P216MB0508.KORP216.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:159;
x-forefront-prvs: 0387D64A71
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SL2P216MB0331.KORP216.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(39850400004)(136003)(366004)(346002)(396003)(9686003)(55016002)(8676002)(19627405001)(8936002)(81156014)(71200400001)(5660300002)(2906002)(186003)(76116006)(66446008)(33656002)(64756008)(66946007)(66476007)(478600001)(66556008)(7696005)(6506007)(26005)(110136005)(86362001)(316002)(786003)(52536014);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: postech.ac.kr does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SnUmsxpjMllr67hElDFhIiG/JAGuHuMLjCwI4cEwrKgE09NGMhI/dHgV9G+BVMPJhSsyDWwEU8Uc8erfVuQ56fbxis4LuAwpARUW3MWSooLgvuDA/a9ZUveRO2GAYMzIGJDx1wltAPVPcvkNs0fqAclEjny/sZp4AEeeeIDceuOlVBtwHyOEPDMjTv6m5jmxmOStOacXo/8Zm94ZQc1Jrf8HQnhWJEIs60rlqQyK5VCSB/+XJwP73rccMCHUHjuYMUBvSIG9E4gBx+ag+226HTOMVGsdipNJ6EiQC/61Vt/YHIskalxjK0NXQtXT/XlnXelMR+CCp61EjNd2zlc5sq0keKV2SCGxvUv4QKXouvwDY1M7qCQ9Qmtniuu0gx+BFKW4pjyErggkda3Nfm6zbvOaHlqTEHQFPUAn7dEGb1X2ujoKX1R/sxfRq2b70eTW
x-ms-exchange-antispam-messagedata: TqARhzfJkucQuJ7ja8G5hxi6xUb5SnmTSwhtSjRQHSyfpP5krOULjphH9+Yic4c/YqUICDdvongZcHxgTRnyjT4TqQsp89463AicsH7fpArMahAoUsAjoL0f1Zu1xirtcXoMiCKY336iSoNewnJfo7sJYCc30TBQJcIkDet87JDKmbp7tjNP7UKiDDoUfbe9alrcCiiq5ElWBnh5qU1ZJmAqYgrOfAulU+roEZyerRuYjhZPa3wTXjm8pz+/0e4BjlJiAZdi4WJxW69rVybZfSy8g9+H81hZ5pjNvIcUgTxfsJRtYHVWG4GZ/jGda+mTcJFp3Y6Yz4xT4q4hmPE7Mf1I2XgfxFNvkhoaZplGfOYTakR1/0u35QMtjJvgDkKzdG+NGIFv7jL0xnrVobRgiSPlxc0uBW6RNBs9EI9Gb39EEfFKhJWfNmfLB5UJcTOa2VI+Ggst7sAuoL/7GrekzT7hcX0gfFQqpHw5mivU+fyQk3Koj6ZgTlbs+6bpjb7sTF1II1zcybkAjUzKI6e2aboVdTOolY2PLNSA3WatXlNlX81/YyqviOASySYHe9/utcS5erXOxNl/k0r/3P2wr2pQ6Da5pLD8fJW7/Hz0/EX/EU5ybY2tWyRHIek9o8YsLXidq3KzeAca9uUFUL404jyWHAKDB8jZF6Mc8rpNxHz/hT6rDZrAjh3jtHCs1PrxMnxqPbnKNj0Yk6KJd5YqFUADFB9jsSrfwe88VSeuThBHnxHV9k1+KKOWKYm11Z2TpMyRloBd1mHtWt3HRLK3rJRHtkxbL8KCFDi7rvWUp9Q=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: postech.ac.kr
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b96a0a3-5878-4550-9c75-08d7eb2eff24
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2020 04:45:37.7217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bff3e98c-5cca-455c-adc8-5fd24fc9908d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FXkpFARBVaZN/W9L6yiUjGMzXRT/bKW5JwlWIjrOY/hvAplVUFm6Nr7r9ZPQD8TJES/2Ad6RxuczruLbh7g+OA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SL2P216MB0508
Subject: Re: [USRP-users] 10.23Msps Sample Rate
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============5936336240595563505=="
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

--===============5936336240595563505==
Content-Language: ko-KR
Content-Type: multipart/alternative;
	boundary="_000_SL2P216MB03313AE03A88DF8640648FA293AC0SL2P216MB0331KORP_"

--_000_SL2P216MB03313AE03A88DF8640648FA293AC0SL2P216MB0331KORP_
Content-Type: text/plain; charset="ks_c_5601-1987"
Content-Transfer-Encoding: base64

SGVsbG8gR3Vvd2FuZzoNCg0KRmlyc3QsIGlmIHlvdSBhcmUgd29raW5nIG9uIEdOU1MgKGl0J3Mg
anVzdCBteSBndWVzcywgYnV0IHRoYXQncyB3aGVyZSAxMC4yMyBNSHogdXN1YWxseSBjb21lcyBm
cm9tKSwgeW91IHVzdWFsbHkgRE9OJ1QgbmVlZCB0byB1c2UgMTAuMjMgTVMvcyAoc2VlIEdOU1Mt
U0RSIGFuZCBncHMtc2RyLXNpbSBzb3VyY2UgY29kZXMpLiBTbywgeW91IG1heSB3YW50IHRvIHRo
aW5rIGFib3V0IHRoYXQgYmVmb3JlIHByb2NlZWRpbmcgZnVydGhlci4NCg0KSWYgeW91IGFic29s
dXRlbHkgd2FudCB0byB1c2UgMTAuMjMgTVMvcywgdGhlbiB5b3UgY2FuIHRyeSByZXNhbXBsaW5n
IHlvdXIgZGF0YSAoZWl0aGVyIG9uIHlvdXIgUEMsIG9uIHRoZSBGUEdBLCBvciBib3RoKS4gSXQg
bWF5IHJlcXVpcmUgYSBwcmV0dHkgc2VyaW91cyByZXNhbXBsZXIsIHRob3VnaCAoY291bGQgYmUg
ZGlmZmljdWx0IHRvIHRoaXMgaW4gcmVhbC10aW1lKS4NCg0KWW91IGNhbiB0cnkgYWx0ZXJpbmcg
dGhlIGFjdHVhbCBoYXJkd2FyZSBjbG9jayBvZiB0aGUgYm9hcmQsIGJ1dCBkbyBub3QgZXhwZWN0
IGl0IHRvIGJlIGEgdHJpdmlhbCB0YXNrLg0KDQpSZWdhcmRzLA0KS3llb25nIFN1IFNoaW4NCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQq6uLO9ILvntvc6IGd1b3dhbmcgcWl1IHZp
YSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gtOu9xSBVU1JQLXVzZXJz
IDx1c3JwLXVzZXJzLWJvdW5jZXNAbGlzdHMuZXR0dXMuY29tPg0KurizvSCzr8KlOiAyMDIws+Ig
NL/5IDI4wM8gyK2/5MDPIL/AwPwgMzo1Mg0Kud60wiC757b3OiB1c3JwLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbSA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQrC/MG2OiBEYW1vbiBRaXUgPHFp
dS5ndW93YW5nMDA3QGdtYWlsLmNvbT4NCsGmuPE6IFtVU1JQLXVzZXJzXSAxMC4yM01zcHMgU2Ft
cGxlIFJhdGUNCg0KSGkgYWxsLA0KDQpXZSBhcmUgdHJ5aW5nIHRvIGdldCAxMC4yM01zcHMgb3Ig
MjAuNDZNc3BzIHNhbXBsZSByYXRlIHdpdGggWDMxMC4gTGF0ZXN0IFVIRCBkcml2ZXIgZW5hYmxl
cyBVU1JQIHgzMTAgc3VwcG9ydCAxODQuMzJNSHogdG8gMjAwTUh6IG1hc3RlciBjbG9jayByYXRl
LiBCdXQgaXQganVzdCBzdXBwb3J0IHNvbWUgZGlzY3JldGUgdmFsdWVzo6x1bmZvcnR1bmF0ZWx5
LCBpdCBqdXN0IGRpZG4ndCBzdXBwb3J0IDEwLjIzTSoxOCBvciAxMC4yM00qMTkuDQpXZSBoYXZl
IHRyaWVkIHRvIGlucHV0IGFuIGV4dGVybmFsIHJlZmVyZW5jZSBjbG9jayBvZiAxMC4yM01Ieiwg
YW5kIHdlIHdhbnQgdG8gY2hlYXQgeDMxMCB0aGF0IHRoZSBleHRlcm5hbCBjbG9jayBpcyAxME1I
ei4gV2Ugc2V0IHRoZSBtYXN0ZXIgY2xvY2sgcmF0ZSBvZiB0aGUgc3lzdGVtIGFzIDIwME1Iei4g
SWYgdGhlIFBMTCBjYW4gbG9jayB0byB0aGUgZXh0ZXJuYWwgY2xvY2sgc291cmNlLCB0aGUgYWN0
dWFsIG1hc3RlciBjbG9jayByYXRlIGlzIDEwLjIzIKG/IDIwTUh6LiBIb3dldmVyLCB3aGVuIHRo
ZSBwcm9ncmFtIGlzIHJ1bm5pbmcsIHRoZSBVSEQgZHJpdmVyIHRocm93cyBhbiBleGNlcHRpb24s
IGluZGljYXRpbmc6DQp0ZXJtaW5hdGUgY2FsbGVkIGFmdGVyIHRocm93aW5nIGFuIGluc3RhbmNl
IG9mICd1aGQ6OnJ1bnRpbWVfZXJyb3InDQogIHdoYXQoKTogUnVudGltZUVycm9yOiBSZWZlcmVu
Y2UgQ2xvY2sgUExMIGZhaWxlZCB0byBsb2NrIHRvIGV4dGVybmFsIHNvdXJjZS4NCg0KSXMgdGhl
cmUgYW55IHdheSB0byBvYnRhaW4gMTAuMjNNc3BzIHNhbXBsZSByYXRlIHdpdGggWDMxMD8NCg0K
QmVzdCByZWdhcmRzLA0KRGFtb24NCg==

--_000_SL2P216MB03313AE03A88DF8640648FA293AC0SL2P216MB0331KORP_
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
Hello Guowang:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
First, if you are woking on GNSS (it's just my guess, but that's where 10.2=
3 MHz usually comes from), you usually DON'T need to use 10.23 MS/s (see GN=
SS-SDR and gps-sdr-sim source codes). So, you may want to think about that =
before proceeding further.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If you absolutely want to use 10.23 MS/s, then you can try resampling your =
data (either on your PC, on the FPGA, or both). It may require a pretty ser=
ious resampler, though (could be difficult to this in real-time).
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
You can try altering the actual hardware clock of the board, but do not exp=
ect it to be a trivial task.<br>
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
guowang qiu via USRP-users &lt;usrp-users@lists.ettus.com&gt; =B4=EB=BD=C5 =
USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt;<br>
<b>=BA=B8=B3=BD =B3=AF=C2=A5:</b> 2020=B3=E2 4=BF=F9 28=C0=CF =C8=AD=BF=E4=
=C0=CF =BF=C0=C0=FC 3:52<br>
<b>=B9=DE=B4=C2 =BB=E7=B6=F7:</b> usrp-users@lists.ettus.com &lt;usrp-users=
@lists.ettus.com&gt;<br>
<b>=C2=FC=C1=B6:</b> Damon Qiu &lt;qiu.guowang007@gmail.com&gt;<br>
<b>=C1=A6=B8=F1:</b> [USRP-users] 10.23Msps Sample Rate</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi all,
<div><br>
</div>
<div>We are trying to get 10.23Msps or 20.46Msps sample rate with X310. Lat=
est UHD driver enables USRP x310 support 184.32MHz to 200MHz master clock r=
ate. But it just support some&nbsp;discrete values=A3=ACunfortunately, it j=
ust didn't support 10.23M*18 or 10.23M*19.</div>
<div>We have tried to input an external reference clock of 10.23MHz, and we=
 want to cheat x310 that the external clock is 10MHz. We set the master clo=
ck rate of the system as 200MHz. If the PLL can lock to the external clock =
source, the actual master clock
 rate is 10.23 =A1=BF 20MHz. However, when the program is running, the UHD =
driver throws an exception, indicating:<br>
terminate called after throwing an instance of 'uhd::runtime_error'</div>
<div>&nbsp; what(): RuntimeError: Reference Clock PLL failed to lock to ext=
ernal source.</div>
<div><br>
</div>
<div>Is there any way to obtain 10.23Msps sample rate with X310?<br>
<br>
</div>
<div>Best regards,</div>
<div>Damon</div>
</div>
</div>
</body>
</html>

--_000_SL2P216MB03313AE03A88DF8640648FA293AC0SL2P216MB0331KORP_--


--===============5936336240595563505==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5936336240595563505==--


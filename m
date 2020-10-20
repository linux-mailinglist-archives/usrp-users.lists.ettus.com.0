Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C63293430
	for <lists+usrp-users@lfdr.de>; Tue, 20 Oct 2020 07:06:03 +0200 (CEST)
Received: from [::1] (port=56714 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kUjqS-0007Gm-4y; Tue, 20 Oct 2020 01:06:00 -0400
Received: from mail-eopbgr1280090.outbound.protection.outlook.com
 ([40.107.128.90]:15720 helo=KOR01-PS2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <ksshin@postech.ac.kr>)
 id 1kUjqO-0007Az-14
 for usrp-users@lists.ettus.com; Tue, 20 Oct 2020 01:05:56 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=odl+WcJ+6cKGYwLHjIuJEySVAXAWfYiA6zpRW7Koxi61/26s3r0Vz+xkXejC0yQB6ZNBuzZKJQkafl9cl9Xhin684a3OLMaaEjlbPD2fKy0n8d3NLyXh2QsTuY/9MIckRzXfYxjqXfFFfgtYRMvjgMW8vDn2pVtzT4FjFQGNP22/5b/xZPHFDTBQ0PA+FjCYIMscbUhRwAk4y3xZA3aOQxvwLk3C5QpJijqpvYk1H8f2l80U2sbiPdLbFSujfqwI4Yed4BYy+Hd+iBqDYBLUESKavr81vJhffjvsRNiYp6NE1OcSOZVKYrNvAG8X164fkooveURUZLKvi3isMAEEYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HU2ajzW/fTVs3cYuxr6d2W0xPBfxpti13v6m/PmbJ+k=;
 b=lQJ7SqsX4NkG2oAIcM6waFMSQfOEcEiEZDwt+OsWu5drjHgF4ODrPzVxZtBel0LZ1u6W5H+50iAjNbbKlMAu4tg4C7ZtSd4EowCbb9cWP7cdIrpe8QQPU8mSpKR2YUPVP6QOtqwPrfAEExW24bMTSnYFVFytOS1V22JBoA0BVq/inE13VVpI9axjt7wpOwM/IUJE6W+HprSXjEuCzNxluL/OCR7eEk9LJIkgsToGsBU3YzloQaZMNcIyjTVTpsBR3w7uHqHJdkYbKV45ERXFbgLmj1+PKRbKVJhfh+8SGwxxLJfxQnc72Yt0PbfqnKV+2Q3XakVRibvnRabsi3ITjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=postech.ac.kr; dmarc=pass action=none
 header.from=postech.ac.kr; dkim=pass header.d=postech.ac.kr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=postechackr.onmicrosoft.com; s=selector2-postechackr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HU2ajzW/fTVs3cYuxr6d2W0xPBfxpti13v6m/PmbJ+k=;
 b=ZqPUr/BF2HEURVN2MJNYUlEGTLcvUglW3S65qp9UCQDTPS6hOed4nn3aRCqt531Mex2urzql1V7bJ77KFABTsbiueLabz7BH2/D3r6MyOl9qtjflQdMZOgb8Gu0eNPUYIkFpR5j0hCO7V4FUbIbZPAuKf1VhIA5xZ5iuTtxyYh8=
Received: from SL2P216MB0331.KORP216.PROD.OUTLOOK.COM (2603:1096:100:1f::21)
 by SL2P216MB0009.KORP216.PROD.OUTLOOK.COM (2603:1096:100:25::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.23; Tue, 20 Oct
 2020 05:05:13 +0000
Received: from SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
 ([fe80::9d25:dceb:9aa7:c2de]) by SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
 ([fe80::9d25:dceb:9aa7:c2de%7]) with mapi id 15.20.3477.028; Tue, 20 Oct 2020
 05:05:13 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, My St
 <ms230317@gmail.com>
Thread-Topic: [USRP-users] spectrum availability measurement with usrp
Thread-Index: AQHWpoIeDs74OtO4NE6tU3BGzDPyXamf7OZc
Date: Tue, 20 Oct 2020 05:05:13 +0000
Message-ID: <SL2P216MB0331A7E8B4DD97FAF77519B9931F0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
References: <CAFsy4Xg+g3NR1dwe8uKj=rmZQ7TV-HLWvvZcoOuMU_u5Z9_Uow@mail.gmail.com>
In-Reply-To: <CAFsy4Xg+g3NR1dwe8uKj=rmZQ7TV-HLWvvZcoOuMU_u5Z9_Uow@mail.gmail.com>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=postech.ac.kr;
x-originating-ip: [141.223.122.191]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a43db155-1fd8-427a-9c33-08d874b5ba1b
x-ms-traffictypediagnostic: SL2P216MB0009:
x-microsoft-antispam-prvs: <SL2P216MB000979A61BF413A3D71589B2931F0@SL2P216MB0009.KORP216.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7p5TrCT74mNOca7KWX/XAd4jRnMAGcFEqBaqnkz5pnuPunq+vpqmCcC1Xt5HsPFeLtAZpEt1qbYCw58jJ+P21/vYiI+4ih8TTStX80vvLlmf+112DR1Pmbydng2Xry4Cb0MyvPMDXGIvJI0+BKLIZ0wXjg+RM2591j/x/Q5LlDbM0Az3mO44zBH1l5EH2/LaNEkrcKqXLjxl6AoZo2ph1OvaSP7MikCuMWMcPqpK/tM1ybb99diZFTrwzo4YF69F81AfrHJtJpUbci9Ez8519U10N/DbCkel27xmHx+KAMl6ZMM99K4XGv/o+JUizEbqDy5hZ9ZZ1fyXHkSa09DwqQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SL2P216MB0331.KORP216.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(376002)(346002)(396003)(39850400004)(366004)(136003)(33656002)(186003)(786003)(478600001)(9686003)(26005)(316002)(6506007)(55016002)(66476007)(66556008)(64756008)(66446008)(52536014)(7696005)(19627405001)(2906002)(66946007)(76116006)(5660300002)(86362001)(71200400001)(110136005)(83380400001)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: zueQuOCnVUixunecCuxmOmS2MekQpgOb8QOS10VXb7GbqCJByoJDy9s+nWwh+XhyiK95I3oNL7aszllJ7khKeyqO3jV3DvPcgKP0naTO0jpnVtw5HP/ZYgdHvOG6SEkVGuj6jD1NvZG5SBSWe+ALV7AsW5Re+xKe1YxgbIOpguqk0useYQA6DHt1bm9tGcp/iasyGdxrceI5rGzk/R0snq3AVixl83Sbtk7460LYjX2epkB1H0DJVtxt6qFVbfYn7i0B5pFLnGYKypbAJrVv7uhuh56Q52caZ7uhFezf1BzVxnMXPdBJRzHlleL9m6W2sieDpPcSYPmKW+VBSkdtS1QUh//IVotw/7AGcH9/kcbh22YvZP94vD/62KJfc+FwZ+NkL4OfNO9q5QSEdvOq5hR4mcsu08IWEbL0d/b7T4+r2FQJrGCGeIy3uLyY8u/KJGRTDQGsiupWSZ5vGFf2jj5PoYE/aPN5jvVK4VOLqE1jq6Z+Pupp9SWJfjbdPOgkd5LrvG2B8IVc/JP2HUbnx3Hnlg7B9cxI7MLe85lRkQ8p0dbN0gCupMTXr+X5zQ0sPi5tgANsLYWUo2snKoLrXiGZgTCa8OLS8SkFCXWy4mbxIxSpjAkZp5jDlpUzpDVCB3rMZH3vwodwo0boUET5aA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: postech.ac.kr
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a43db155-1fd8-427a-9c33-08d874b5ba1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2020 05:05:13.2019 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bff3e98c-5cca-455c-adc8-5fd24fc9908d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S2C4gCLt8pa9aMcGTtGNE/16T/FSXTga92wllX/vRtE47c/8X8AhJQmGVGL04+ppK25a81vdYjGmLNEZjy0XBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SL2P216MB0009
Subject: Re: [USRP-users] spectrum availability measurement with usrp
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
From: Kyeong Su Shin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Kyeong Su Shin <ksshin@postech.ac.kr>
Content-Type: multipart/mixed; boundary="===============2892654072270702538=="
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

--===============2892654072270702538==
Content-Language: ko-KR
Content-Type: multipart/alternative;
	boundary="_000_SL2P216MB0331A7E8B4DD97FAF77519B9931F0SL2P216MB0331KORP_"

--_000_SL2P216MB0331A7E8B4DD97FAF77519B9931F0SL2P216MB0331KORP_
Content-Type: text/plain; charset="ks_c_5601-1987"
Content-Transfer-Encoding: base64

SGVsbG8gVHJhbmc6DQoNCkl0IGRlcGVuZHMgb24geW91ciBhcHBsaWNhdGlvbnMuIFVTUlBzIENB
TiBiZSB1c2VkIHRvIHNjYW4gYW5kIG1hcCB0aGUgd2lyZWxlc3Mgc3BlY3RydW0sIGJ1dCB5b3Ug
d2lsbCBoYXZlIHRvIGRldGVybWluZSB3aGV0aGVyIHRoZSBzcGVjdHJ1bSBpcyBlbXB0eSBvciBu
b3QsIGFuZCBpdCBpcyBub3QgYSB0cml2aWFsIHF1ZXN0aW9uLiBGb3IgYW4gZXhhbXBsZSwgc2ln
bmFscyBmcm9tIHNhdGVsbGl0ZXMgYW5kIHNwYWNlY3JhZnRzIGFyZSBvZnRlbiBiZWxvdyB0aGUg
dGhlcm1hbCBub2lzZSwgc28geW91IHdpbGwgbmVlZCB0byB1c2Ugc3BlY2lhbCBkaXNoIGFudGVu
bmFzIGFuZC9vciBjb3JyZWxhdGUgdGhlIHNpZ25hbHMgd2l0aCBrbm93biBzZXF1ZW5jZXMgaW4g
b3JkZXIgdG8gZGV0ZWN0IHRoZW0uIEFsc28sIFVTUlAgQjIwMC9CMjEwIGFyZSBub3QgaGlnaC1l
bmQgc3BlY3RydW0gYW5hbHl6ZXJzLCBzbyB0aGV5IG1heSBzaG93IHlvdSBzb21lIHNwdXJpb3Vz
IHNpZ25hbHMgKHBvc3NpYmxlIGZhbHNlIHBvc2l0aXZlcykuDQoNClNvLCB5ZXMsIGl0IGlzIHBv
c3NpYmxlLCBidXQgSSBkb24ndCBrbm93IHdoZXRoZXIgdGhleSBhcmUgc3VpdGFibGUgZm9yIHlv
dXIgdXNlIGNhc2VzLg0KDQpSZWdhcmRzLA0KS3llb25nIFN1IFNoaW4NCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQq6uLO9ILvntvc6IE15IFN0IHZpYSBVU1JQLXVzZXJzIDx1c3Jw
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gtOu9xSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzLWJvdW5j
ZXNAbGlzdHMuZXR0dXMuY29tPg0KurizvSCzr8KlOiAyMDIws+IgMTC/+SAyMMDPIMitv+TAzyC/
wMD8IDEwOjQwDQq53rTCILvntvc6IHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIDx1c3JwLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbT4NCsGmuPE6IFtVU1JQLXVzZXJzXSBzcGVjdHJ1bSBhdmFpbGFi
aWxpdHkgbWVhc3VyZW1lbnQgd2l0aCB1c3JwDQoNCkRlYXIgYWxsLA0KDQpJJ20gbmV3IHdpdGgg
VVNSUCBidXQgSSB3b3VsZCBsaWtlIHRvIHVzZSBhIEIyMDAgb3IgQjIxMCBjYXJkIHRvIHNob3cg
dGhlIHNwZWN0cnVtIGF2YWlsYWJpbGl0eSBpbiB0aW1lLiBUaGF0IG1lYW5zLCBJIHdhbnQgdG8g
cHV0IGEgVVNSUCBjYXJkIGluIGEgcGxhY2UsIGNvbm5lY3QgaXQgdG8gYSBjb21wdXRlciwgY2hv
b3NlIGEgZnJlcXVlbmN5IGFuZCBzaG93IHRoZSBzdGF0aXN0aWNzIGFib3V0IHRoZSBvY2N1cGF0
aW9uL2F2YWlsYWJpbGl0eSBvZiB0aGlzIGZyZXF1ZW5jeSBvdmVyIGFuIG9ic2VydmF0aW9uIHBl
cmlvZC4gSXMgaXQgcG9zc2libGU/IENvdWxkIHNvbWVvbmUgdGVsbCBtZSB0aGUgc3RhcnRpbmcg
cG9pbnQgPyBUaGFuayB5b3UgdmVyeSBtdWNoLg0KDQpXaXRoIGtpbmQgcmVnYXJkcywNClRyYW5n
IE5ndXllbg0K

--_000_SL2P216MB0331A7E8B4DD97FAF77519B9931F0SL2P216MB0331KORP_
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
Hello Trang:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It depends on your applications. USRPs CAN be used to scan and map the wire=
less spectrum, but you will have to determine whether the spectrum is empty=
 or not, and it is not a trivial question. For an example, signals from sat=
ellites and spacecrafts are often
 below the thermal noise, so you will need to use special dish antennas and=
/or correlate the signals with known sequences in order to detect them. Als=
o, USRP B200/B210 are not high-end spectrum analyzers, so they may show you=
 some spurious signals (possible
 false positives).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
So, yes, it is possible, but I don't know whether they are suitable for you=
r use cases.<br>
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
My St via USRP-users &lt;usrp-users@lists.ettus.com&gt; =B4=EB=BD=C5 USRP-u=
sers &lt;usrp-users-bounces@lists.ettus.com&gt;<br>
<b>=BA=B8=B3=BD =B3=AF=C2=A5:</b> 2020=B3=E2 10=BF=F9 20=C0=CF =C8=AD=BF=E4=
=C0=CF =BF=C0=C0=FC 10:40<br>
<b>=B9=DE=B4=C2 =BB=E7=B6=F7:</b> usrp-users@lists.ettus.com &lt;usrp-users=
@lists.ettus.com&gt;<br>
<b>=C1=A6=B8=F1:</b> [USRP-users] spectrum availability measurement with us=
rp</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Dear all,</div>
<div><br>
</div>
<div>I'm new with USRP but I would like to use a B200 or B210 card to show =
the spectrum availability in time. That means, I want to put a USRP card in=
 a place, connect it to a computer, choose a frequency and show the statist=
ics about the occupation/availability
 of this frequency over an observation period. Is it possible? Could someon=
e tell me the starting point ? Thank you very much.</div>
<div><br>
</div>
<div>With kind regards,</div>
<div>Trang Nguyen<br>
</div>
</div>
</div>
</body>
</html>

--_000_SL2P216MB0331A7E8B4DD97FAF77519B9931F0SL2P216MB0331KORP_--


--===============2892654072270702538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2892654072270702538==--


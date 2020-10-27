Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 737DC29A4D2
	for <lists+usrp-users@lfdr.de>; Tue, 27 Oct 2020 07:43:16 +0100 (CET)
Received: from [::1] (port=48076 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXIhM-0005pr-5q; Tue, 27 Oct 2020 02:43:12 -0400
Received: from mail-mw2nam12olkn2099.outbound.protection.outlook.com
 ([40.92.23.99]:28613 helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <itchangeworld@hotmail.com>)
 id 1kXIhI-0005l2-0q
 for usrp-users@lists.ettus.com; Tue, 27 Oct 2020 02:43:08 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I+UmLtnui4fRrZNOPRu2lzEKDSd37K5lMHfGnGCoBwYIhYom5DJSxbSsYgtA3BFMLcmj/3ElC7gVwnZk14Gi6UMSBcU5CG+dnn289lZ4fw0/Awf9r6yNi/DsqTIjC5iSzSvoX7mnCOD9WBMMNo6lJOdrKuMtAH9vYM7xmbcHxbfUQjqm1OgNhXaBARQu1/aWSYWCLhvWx432Ww8k6igEiuhw2Yd1FVnMXxPfhVtLXGLogyAuYqhOLGcPs/fEQu/ZduNFnLEmzO674xOuxzyxcofsNATwlzYX0EkmchkiqSriMmA9h3jy9Aq++rrqi++fnH5cDBq2XbIMqHnplF8OXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KmUSYnIDIaSPVq3ZbrAJoTnuPlvoTp64MoquFBmCX5U=;
 b=WOE6D4mhkdvUT9yZ3figBmivBkjzYdCyB/58i0aptgCByXig0roF2Gqy24et+5NA9ClVzoPN3hLYINkAtGnr3d+YbkBLpk+igrrFHUKIQmaUSSPgfgoCdgQxALiddlxPrUo4xeValEKKxtTqdnyppMsqRpRQoyYsSPYFDGwoYbt8V0jQ0WluUQwS7bk3z2Q/pzM+K7P0B+vK3XgOWC5pJL7K3D3KB8bIfQCeyrjt0CO8rvlBlOgDi5McuxoCq03tVFUD+q1I/IhJ3ugE3KF/J9RA7pMJjJZHjFTf+rqJQonfGaXa+crkab3pEMkjdXndfJRfBg5kv3tEPKtlk4nLag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KmUSYnIDIaSPVq3ZbrAJoTnuPlvoTp64MoquFBmCX5U=;
 b=aC2h/gSWvzPn2sVQdsZVuWmwA1EQSOuG6cJKzmeVVq4eldJYxId1WEXayrYBZm+yWdsW8bkUzppe7j67vrbWKbzs9labF6igrHwFVVTb6xNmJqvBm1UtHN1Ry5Ofg5UuCn0ZKpa662ouAdZpRUWeuS9f2li8u0auGW7quI9d8DowjhoHvt3AQGqP98WGg7mjo8bK1Pfuo5ytQ4wks5T/CfjOs8cAWJJwXHq7JBy9imz/DvznvLEepWr0ygQpmMtI+UVSy5LKzwO6696ZC5Hi0G5hksahzvp0qCtySFyR6WtNPgTGyG3gb41c6TvDplJsknwvG8SpFzc+oGcLnKGw2w==
Received: from MW2NAM12FT048.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc65::4a) by
 MW2NAM12HT207.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc65::479)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3520.9; Tue, 27 Oct
 2020 06:42:26 +0000
Received: from BYAPR01MB4375.prod.exchangelabs.com (2a01:111:e400:fc65::4f) by
 MW2NAM12FT048.mail.protection.outlook.com (2a01:111:e400:fc65::215)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3520.9 via Frontend
 Transport; Tue, 27 Oct 2020 06:42:26 +0000
Received: from BYAPR01MB4375.prod.exchangelabs.com
 ([fe80::283b:b6f1:9e86:1fed]) by BYAPR01MB4375.prod.exchangelabs.com
 ([fe80::283b:b6f1:9e86:1fed%3]) with mapi id 15.20.3499.018; Tue, 27 Oct 2020
 06:42:26 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNOC: Radio doesnot work in Tx Mode for E310
Thread-Index: AQHWqt/jmMPrwy/aO02zcXaqULkx1KmrAIMb
Date: Tue, 27 Oct 2020 06:42:26 +0000
Message-ID: <BYAPR01MB43754594760BCDB57A4ABE7CB6160@BYAPR01MB4375.prod.exchangelabs.com>
References: <BYAPR01MB437580416D38F27E8CF70672B6180@BYAPR01MB4375.prod.exchangelabs.com>
In-Reply-To: <BYAPR01MB437580416D38F27E8CF70672B6180@BYAPR01MB4375.prod.exchangelabs.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F142F0A2CC4308F13A64F12CB3F31EC6DDC8312BBAE17E899C5DD1C0425D03C5;
 UpperCasedChecksum:CE37B07017BC8383B513CF8C2ABFE580267591E90CC805FBE7DFF44C6FA46EE8;
 SizeAsReceived:6893; Count:43
x-tmn: [mA0+x9bOfsp4mBCl1KMO/noldhAIZ+o4]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 45b7090c-aaa3-4798-eb3b-08d87a4377d5
x-ms-traffictypediagnostic: MW2NAM12HT207:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6HTkxyalzo34v6ogKYyK0KDMiTzmBOLKmlY18oSs1JImqbohjVPQwLhRQggETcPcX5QUrwb+nd+M51As/fZJ/ODMYnekCiQ+HbZfM2ZrXHTDxI/U21KktYVrw8H4s6jZuPi4HVkpwzy8s++QKlR1wsjtUTcNGsrZh8z+PgO6aqLtymn31ypn4+gk6Ny4RPN5rvytiq60SONwKJ/WvoOjAXLW2RoVkhGwu4DVKN+TssOrBA4K37T0+zFhtwoFqIxc
x-ms-exchange-antispam-messagedata: YmOY2uiMw04a3E8w/c3+gohRUEoAXORoxen3qSyJmaigtOC+pq8zzwO3XQg+B5krKCagR7gzvTtyXPOTAIDkEV0ULdeU2kEeXQ+TFSSg6zE0YECsxAOM9DMgNoe6ge/gPPFjAKkgUbye7/XkCx1ELQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM12FT048.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 45b7090c-aaa3-4798-eb3b-08d87a4377d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2020 06:42:26.3991 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM12HT207
Subject: [USRP-users] =?gb2312?b?u9i4tDogUkZOT0M6IFJhZGlvIGRvZXNub3Qgd29y?=
 =?gb2312?b?ayBpbiBUeCBNb2RlIGZvciBFMzEw?=
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
From: itchangeworld--- via USRP-users <usrp-users@lists.ettus.com>
Reply-To: "itchangeworld@hotmail.com" <itchangeworld@hotmail.com>
Content-Type: multipart/mixed; boundary="===============7284041164961076215=="
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

--===============7284041164961076215==
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_BYAPR01MB43754594760BCDB57A4ABE7CB6160BYAPR01MB4375prod_"

--_000_BYAPR01MB43754594760BCDB57A4ABE7CB6160BYAPR01MB4375prod_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SSBwbGFjZWQgb25lIKGwU3RyZWFtIHRvIFZlY3RvciIgYmxvY2sgYmV0d2VlbiBhbmFsb2c6c2ln
Z2VuIGFuZCBSRk5PQzpGSUZPLiBJdCB3b3JrISBUaGUgcmVkIFRYIGxlZCBsaWdodHMgdXAuIEl0
IHNlZW1zIHRoYXQgdGhlIGlzc3VlIGV4aXN0cyBpbiB0aGUgZGF0YS9zdHJlYW0gZm9ybWF0Lg0K
DQpGdXJ0aGVyLCBJIHVzZSB0aGUgUkZOT0M6IFNpZ0dlbiBhcyB0aGUgc291cmNlLCBhbmQgbm90
aWNlIHRoZSBzaWdnZW4gZW5hYmxpbmcgc2VxdWVuY2UgYWNjb3JkaW5nIHRvIHRoZSBwb3N0OiBo
dHRwOi8vbGlzdHMuZXR0dXMuY29tL3BpcGVybWFpbC91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNv
bS8yMDE3LURlY2VtYmVyLzA1NTEzNS5odG1sLCB0aGUgVHggbGVkIGlzIG9uLiBIb3dldmVyLCB0
aGVyZSBpcyBubyBzaWduYWwgYmVpbmcgdHJhbnNtaXR0ZWQuIFRoZSBmbG93Z3JhcGggc3RpbGwg
ZG9lc25vdCB3b3JrLg0KDQpOb3cgbXkgcXVlc3Rpb24gaXMgaG93IHRvIGxldCB0aGUgUkZOT0M6
U2lnR2VuIHdvcmsgd2l0aCBSRk5PQzpSYWRpbyBUeC4gIElzIHRoZXJlIGFueSBzdWNjZXNzZnVs
IGV4cGVyaWVuY2U/DQoNClNpbmNlcmVseSB5b3VycywNCkphc29uDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fDQq3orz+yMs6IFVTUlAtdXNlcnMgPHVzcnAtdXNlcnMtYm91bmNl
c0BsaXN0cy5ldHR1cy5jb20+ILT6se0gaXRjaGFuZ2V3b3JsZC0tLSB2aWEgVVNSUC11c2VycyA8
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQq3osvNyrG85DogMjAyMMTqMTDUwjI1yNUgMjM6
NTANCsrVvP7IyzogdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20gPHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPg0K1vfM4jogW1VTUlAtdXNlcnNdIFJGTk9DOiBSYWRpbyBkb2Vzbm90IHdvcmsg
aW4gVHggTW9kZSBmb3IgRTMxMA0KDQoNCkhlbGxvLA0KDQoNCg0KSXMgdGhlcmUgYW55Ym9keSBr
bm93IGhvdyB0byBtYWtlIHRoZSBSRk5PQzpSYWRpbyBtb2R1bGUgcHJvcGVybHkgd29yayBpbiAg
VFggbW9kZSB3aXRoIGdyLWV0dHVzIGZvciBhIEUzMTAgdGVybWluYWw/DQoNCg0KDQpJIGhhdmUg
dHJpZWQgYWxsIHRoZSByZWxhdGVkIGV4YW1wbGUgZmxvd2dyYXBoIGFuZCBtYWRlIHNvbWUgbW9k
aWZpY2F0aW9ucywgaW5jbHVkaW5nIGFsdGVybmF0aW5nIHRoZSBzb3VyY2UgZnJvbSBhbmFsb2c6
c2lnbmFsIHNvdXJjZSB0byBSRk5PQzpTaWdHZW4sIHcvbyBGSUZPLCB3L28gRFVDLCBldGMuIEkg
YWxzbyBtYWRlIHRoZSBtb2RpZmljYXRpb24gYWNjb3JkaW5nIHRvIGh0dHBzOi8vY29ydmlkLmlv
LzIwMTcvMDQvMjIvc3R1cGlkLXJmbm9jLXRyaWNrcy1sb29wYmFjay8uICBUaGUgVFggbGlnaHQg
aW5kaWNhdG9yIHN0aWxsIGtlZXBzIGRhcmsuDQoNCg0KDQpUaGUgZXhhbXBsZSBmb3NwaG9yIHdv
cmtzIHByb3Blcmx5LCBzbyB0aGF0IFJGTk9DOiBSYWRpbyBpcyBPSyBpbiB0aGUgUlggTW9kZS4N
Cg0KDQoNCk15IGNvbmZpZ3VyYXRpb25zIGFyZSBhcyBmb2xsb3dzLiBFMzEwIGlzIHVwLXRvLWRh
dGUuIFVIRCB2ZXJzaW9uIGlzIDMuMTQuMSBhbmQgdGhlIE9TIGlzIFVidW50dSAxOC4wNC4NCg0K
DQoNCkFueSBzdWdnZXN0aW9ucyB3aWxsIGJlIGFwcHJlY2lhdGUuDQoNCg0KDQpKYXNvbiBTdWVu
DQoNCg==

--_000_BYAPR01MB43754594760BCDB57A4ABE7CB6160BYAPR01MB4375prod_
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
I placed one =A1=B0Stream to Vector&quot; block between analog:siggen and R=
FNOC:FIFO. It work! The red TX led lights up. It seems that the issue exist=
s in the data/stream format.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Further, I use the RFNOC: SigGen as the source, and notice the siggen enabl=
ing sequence according to the post:
<a href=3D"http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017=
-December/055135.html" target=3D"_blank" rel=3D"noopener noreferrer" data-a=
uth=3D"NotApplicable">
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2017-December/0=
55135.html</a>, the Tx led is on. However, there is no signal being transmi=
tted. The flowgraph still doesnot work.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Now my question is how to let the RFNOC:SigGen work with RFNOC:Radio Tx.&nb=
sp; Is there any successful experience?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<div style=3D"color:black; font-size:12pt; font-family:Calibri,Arial,Helvet=
ica,sans-serif">
Sincerely yours, <br>
</div>
<div style=3D"color:black; font-size:12pt; font-family:Calibri,Arial,Helvet=
ica,sans-serif">
Jason<br>
</div>
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> USRP-us=
ers &lt;usrp-users-bounces@lists.ettus.com&gt; =B4=FA=B1=ED itchangeworld--=
- via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> 2020=C4=EA10=D4=C225=C8=D5 23:50<br>
<b>=CA=D5=BC=FE=C8=CB:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.=
ettus.com&gt;<br>
<b>=D6=F7=CC=E2:</b> [USRP-users] RFNOC: Radio doesnot work in Tx Mode for =
E310</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">Hello, &nbsp;</span></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">&nbsp;</span></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">Is there anybody know how to make the RFNOC:R=
adio module properly work in&nbsp; TX mode with gr-ettus for a E310 termina=
l? &nbsp;</span></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">&nbsp;</span></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">I have tried all the related example flowgrap=
h and made some modifications, including alternating the source from analog=
:signal source to RFNOC:SigGen, w/o FIFO, w/o
 DUC, etc. I also made the modification according to <a href=3D"https://cor=
vid.io/2017/04/22/stupid-rfnoc-tricks-loopback/">
<span style=3D"color:blue">https://corvid.io/2017/04/22/stupid-rfnoc-tricks=
-loopback/</span></a>.&nbsp; The TX light indicator still keeps dark.&nbsp;=
 &nbsp;</span></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">&nbsp;</span></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">The example fosphor works properly, so that R=
FNOC: Radio is OK in the RX Mode. &nbsp;</span></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">&nbsp;</span></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">My configurations are as follows. E310 is up-=
to-date. UHD version is 3.14.1 and the OS is Ubuntu 18.04.&nbsp;</span></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">&nbsp;</span></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">Any suggestions will be appreciate. &nbsp;</s=
pan></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">&nbsp;</span></p>
<p class=3D"x_MsoNormal" align=3D"left" style=3D"margin:0cm 0cm 0.0001pt; t=
ext-align:justify; font-size:10.5pt; font-family:=B5=C8=CF=DF; text-align:l=
eft">
<span lang=3D"EN-US" style=3D"font-size:12.0pt; font-family:&quot;Calibri&q=
uot;,sans-serif; color:black">Jason Suen&nbsp;</span></p>
<br>
</div>
</body>
</html>

--_000_BYAPR01MB43754594760BCDB57A4ABE7CB6160BYAPR01MB4375prod_--


--===============7284041164961076215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7284041164961076215==--


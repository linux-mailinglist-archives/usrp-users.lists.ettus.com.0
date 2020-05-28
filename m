Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 549881E5263
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2020 02:57:32 +0200 (CEST)
Received: from [::1] (port=42124 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1je6rQ-0002LJ-MM; Wed, 27 May 2020 20:57:28 -0400
Received: from mail-eopbgr1280095.outbound.protection.outlook.com
 ([40.107.128.95]:20253 helo=KOR01-PS2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <ksshin@postech.ac.kr>)
 id 1je6rL-0002Hg-UA
 for usrp-users@lists.ettus.com; Wed, 27 May 2020 20:57:24 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=b5W9PKlH12nMVV5jZVLHxFg/dXL2q6Y6nrAaRu8Ut1MvNTlfFSARFAM8Y5fiqGYqi1v0cc8VfhiBdrVsP5sQAk8K5PcHi0fFK7/Dp5bl0RCbmj27kHXC07pJH7Aa+bcBy+8hHLj6Hue5GVkV4I0n6hiTJYNX4noCLwSC4o0GxpC/8e3P91lcqBoIRdn3hjfHOK+xLkSwHJvy74aokODLAhLocFTCI+3/lt59ZXFfPaUHZe6LMOCHntXn4ufUeF8oGtA/HnKMrfxJM+72+PXjILVXw0s3iYURAnWSLc8xXbC6jgWF+qffGDrTtDEZuYKK8g1+rRFAbi/Owdr+Ewk1Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r+7+nz8Zly5ksrnRB7jzZDKAb/YddsRu3oDPQfVOEhM=;
 b=RXEMUY7JIwjQA2iX73UAp8rflYthd0gLZlcL16J3OBPydKs+VMtN/fNTEKqq0h1FWOXeyudxTGJf6Jm+U4FVVMTzAxMo+QK3ijMRnNTi8V9M7BDXISiL7BMz6myIySsiTyqz9pjkMZEn3wgdYCQCj0s7WG70ysOyFNYCa6ubJKWPLka/fVyAGjFmpjqPVpoAurXiItDeb2cgNo6SzKfE76V7rO/H80CCenrp5Q0WDnsw6yZxXS7uVAR5/l0wAYtxA/7x05Gl1MW1I+MajJcxlj9acauLHmH4V4cdoKXzlsMQPMWO8ai1uyO8qgLVSZSFqql+W5A6nug0zdBqSgeFCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=postech.ac.kr; dmarc=pass action=none
 header.from=postech.ac.kr; dkim=pass header.d=postech.ac.kr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=postechackr.onmicrosoft.com; s=selector2-postechackr-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r+7+nz8Zly5ksrnRB7jzZDKAb/YddsRu3oDPQfVOEhM=;
 b=OEJpVxXOeyT5S0NIAA564/xXPBdnjYM0wm2Z+MZIaPrClkkjxO5Yx36YwG73N8WKE/bJ0qzEZG2fulw+chmxqmKuKsOhMab6T6QrxaFeo0ABZ9k2w5dOS/kPNPiuPDTBbyXOEFMGB/K92RMdubuLedXjt5PXvCpR8z7T3M/T9Ww=
Received: from SL2P216MB0331.KORP216.PROD.OUTLOOK.COM (2603:1096:100:1f::21)
 by SL2P216MB0954.KORP216.PROD.OUTLOOK.COM (2603:1096:100:28::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Thu, 28 May
 2020 00:56:40 +0000
Received: from SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
 ([fe80::ecce:e6d0:76c9:759]) by SL2P216MB0331.KORP216.PROD.OUTLOOK.COM
 ([fe80::ecce:e6d0:76c9:759%3]) with mapi id 15.20.3021.029; Thu, 28 May 2020
 00:56:40 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>, AKINYELE
 ITAMAKINDE <aitamakinde@abuad.edu.ng>
Thread-Topic: [USRP-users] Modulation technique for sliding correlator channel
 sounder
Thread-Index: AQHWNHYOIUDixIyDH0GtxcoQ9ywCWKi8powJ
Date: Thu, 28 May 2020 00:56:40 +0000
Message-ID: <SL2P216MB033143F8DFB378EE40860B99938E0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
References: <CAD-eGGr6EaYEUKFLHW5zgg8yd5ctdDJ6Lf44LeP1sZ2X6W4Uaw@mail.gmail.com>
In-Reply-To: <CAD-eGGr6EaYEUKFLHW5zgg8yd5ctdDJ6Lf44LeP1sZ2X6W4Uaw@mail.gmail.com>
Accept-Language: ko-KR, en-US
Content-Language: ko-KR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none
 header.from=postech.ac.kr;
x-originating-ip: [119.202.91.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bd8e40c5-bd50-478c-7327-08d802a1fb99
x-ms-traffictypediagnostic: SL2P216MB0954:
x-microsoft-antispam-prvs: <SL2P216MB09546315FB7DD47EEFE3763C938E0@SL2P216MB0954.KORP216.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u0n7hDlJVTlQZgj467wNOu+WKzas0wjLcoxOevTTR/KIAPb36CFpghceypTvxMH1hDpHlgCHWg+ZtU/M8IQoEuJvNdZnNf4w7pPgBomP502D33cztzx8FygBqcN1UhdZ4OYMq1sO9b09DSbrYT5AOeO/y01sAlO+b/bS67gf5Cv04NQpFHmLzJQINN8nmQWgAqeD3yzHPg4J2r9vnjEozo54cn1CChn8BgTGRrdS62TESzcgbR/79FVNDaQC7WkxxEsLbDG/q4sf/BvWOw3fl0mIZAXIjyhYS/qkbfeiaanU2GorsNFt3G4khZC46YnqMNhnycP8Gt9NhAJQ54CzKLA6mVxhxDXrHIsNmzrx4PCTXrCs9Kjx+5ZufRj5XLGt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SL2P216MB0331.KORP216.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(39850400004)(396003)(376002)(136003)(366004)(9686003)(26005)(66574014)(8936002)(86362001)(186003)(55016002)(6506007)(33656002)(8676002)(316002)(478600001)(786003)(7696005)(71200400001)(19627405001)(110136005)(5660300002)(66556008)(2906002)(66946007)(52536014)(76116006)(64756008)(66446008)(66476007)(8956003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Mo/Z2pEbBHZPHZROT2GjmsNfVjhgrKsIggQJ6SLZBhUs8q+1e7DuCuS164tBrI85NsX/1AJorOpVTVi4bnaknN8B4Gq/D14djUtWy28TdUtf/xQxlEBwMALyU9KO5oNINlfcf65Yyj5YVKEaqkSIGuY39FCtsmaELk1zkxa7CNlFdqSKHxwqToq74slqtxaAxuJ5l100EiDwNYSqCWu38P6NnwQDkZtL430QDAJzfEL1TZCzjpdG0ESAoygOMikXOtllK88aRbWtav/Cc4yd/eSeq7MCRzuzPh+pCLVq0TK7k3u0e66JsDZxeQcIYdLGQIdOy/scLoNF9egtBLzxmYdnIUNddDqPAN45D4r53VFBBw5TM4KmRFyC0C/RlBd6QQfdNtzS/DlNR//d+ii+yamir/X0LmBsaQpdu4onT7///+jE/dDZJTS14uy8zZcrmRDLrOrPuQXr/mfOxlkRyeVSVRIum1JaCKBMJ0W1ElXppSPuu8rnpyRLfO0BXwC+
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: postech.ac.kr
X-MS-Exchange-CrossTenant-Network-Message-Id: bd8e40c5-bd50-478c-7327-08d802a1fb99
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 00:56:40.6493 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bff3e98c-5cca-455c-adc8-5fd24fc9908d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UUmSYQa+MhZlzw0/JovhC5gTdU48D1AC33uck544ZLZtry5t+ISMGdonBs/tZyU37bNPnWLBSBgKbILZXQArnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SL2P216MB0954
Subject: Re: [USRP-users] Modulation technique for sliding correlator
 channel sounder
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
Content-Type: multipart/mixed; boundary="===============0654880393860194757=="
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

--===============0654880393860194757==
Content-Language: ko-KR
Content-Type: multipart/alternative;
	boundary="_000_SL2P216MB033143F8DFB378EE40860B99938E0SL2P216MB0331KORP_"

--_000_SL2P216MB033143F8DFB378EE40860B99938E0SL2P216MB0331KORP_
Content-Type: text/plain; charset="ks_c_5601-1987"
Content-Transfer-Encoding: base64

SGVsbG8gQWtpbnllbGU6DQoNCllvdSBkbyBub3QgbmVlZCB0byB1c2UgYW55IHNwZWNpZmljIG1v
ZHVsYXRpb24gdGVjaG5pcXVlcyB0byBpbXBsZW1lbnQgYSBjaGFubmVsIHNvdW5kZXIuIFRoaXMg
aXMgYmVjYXVzZSB0aGUgcmVjZWl2ZXIgYWxyZWFkeSBrbm93cyB0aGUgdHJhbnNtaXR0ZWQgSS1R
IHNlcXVlbmNlLCBhbmQgY29ycmVsYXRpb24gaXMgdGFrZW4gZGlyZWN0bHkgb24gdGhlIGluY29t
aW5nIEktUSBzZXF1ZW5jZXMgdG8gbWVhc3VyZSB0aGUgY2hhbm5lbC4NCg0KT2YgY291cnNlLCB5
b3Ugc2hvdWxkIHN0aWxsIGNhcmVmdWxseSBkZXNpZ24gdGhlIHRyYW5zbWl0dGVkIHNlcXVlbmNl
cywgYXMgc29tZSBzZXF1ZW5jZXMgaGF2ZSBwb29yIGNvcnJlbGF0aW9uIHByb3BlcnRpZXMuIE1h
eWJlIHlvdSBjYW4gdXNlIHNvbWV0aGluZyBsaWtlIEJQU0stbW9kdWxhdGVkIFBOIHNlcXVlbmNl
cy4NCg0KUmVnYXJkcywNCkt5ZW9uZyBTdSBTaGluDQpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KurizvSC757b3OiBBS0lOWUVMRSBJVEFNQUtJTkRFIHZpYSBVU1JQLXVzZXJzIDx1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4gtOu9xSBVU1JQLXVzZXJzIDx1c3JwLXVzZXJzLWJv
dW5jZXNAbGlzdHMuZXR0dXMuY29tPg0KurizvSCzr8KlOiAyMDIws+IgNb/5IDI4wM8guPG/5MDP
IL/AwPwgODoyNg0Kud60wiC757b3OiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSA8dXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20+DQrBprjxOiBbVVNSUC11c2Vyc10gTW9kdWxhdGlvbiB0ZWNo
bmlxdWUgZm9yIHNsaWRpbmcgY29ycmVsYXRvciBjaGFubmVsIHNvdW5kZXINCg0KSSBhbSB3b3Jr
aW5nIG9uIHByb3BhZ2F0aW9uIGNoYW5uZWwgbWVhc3VyZW1lbnQgdXNpbmcgYSBzbGlkaW5nIGNv
cnJlbGF0b3IgY2hhbm5lbCBzb3VuZGVyIGZsb3dncmFwaCBmb3IgVHggYW5kIFJ4LiBUaGUgc2xp
ZGluZyBjb3JyZWxhdG9yIGNoYW5uZWwgc291bmRlciBmbG93Z3JhcGhzIEkndmUgZ290dGVuIHNv
IGZhciBmcm9tIGludGVybmV0IHNlYXJjaCBoYXZlIG5vIG1vZHVsYXRpb24gdGVjaG5pcXVlLiBE
b2VzIHRoYXQgc2hvdyBpdCBkb2VzIG5vdCByZXF1aXJlIG1vZHVsYXRpb24gdGVjaG5pcXVlPyBJ
ZiB5ZXMsIHdoeT8NClRoYW5rcy4NCkFraW55ZWxlDQo=

--_000_SL2P216MB033143F8DFB378EE40860B99938E0SL2P216MB0331KORP_
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
Hello Akinyele:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
You do not need to use any specific modulation techniques to implement a ch=
annel sounder. This is b<span style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; background-color: rgb(255, 255, 255); display: inline !impo=
rtant">ecause the receiver already
 knows the transmitted I-Q sequence, and correlation is taken directly on t=
he incoming I-Q sequences to measure the channel.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Of course, you should still carefully design the transmitted sequences, as =
some sequences have poor correlation properties. Maybe you can use somethin=
g like BPSK-modulated PN sequences.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Kyeong Su Shin</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=BA=B8=B3=BD =BB=E7=B6=F7:</b> =
AKINYELE ITAMAKINDE via USRP-users &lt;usrp-users@lists.ettus.com&gt; =B4=
=EB=BD=C5 USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt;<br>
<b>=BA=B8=B3=BD =B3=AF=C2=A5:</b> 2020=B3=E2 5=BF=F9 28=C0=CF =B8=F1=BF=E4=
=C0=CF =BF=C0=C0=FC 8:26<br>
<b>=B9=DE=B4=C2 =BB=E7=B6=F7:</b> usrp-users@lists.ettus.com &lt;usrp-users=
@lists.ettus.com&gt;<br>
<b>=C1=A6=B8=F1:</b> [USRP-users] Modulation technique for sliding correlat=
or channel sounder</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>I am working on propagation channel measurement using a sliding correl=
ator channel sounder flowgraph for Tx and Rx. The sliding correlator channe=
l sounder flowgraphs I've gotten so far from internet search have no modula=
tion technique. Does that show it
 does not require modulation technique? If yes, why?<br>
</div>
<div>Thanks.</div>
<font color=3D"#888888">
<div>Akinyele</div>
</font></div>
</div>
</body>
</html>

--_000_SL2P216MB033143F8DFB378EE40860B99938E0SL2P216MB0331KORP_--


--===============0654880393860194757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0654880393860194757==--


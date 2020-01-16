Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D8A413EF20
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jan 2020 19:13:37 +0100 (CET)
Received: from [::1] (port=38928 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1is9eA-0007qt-E6; Thu, 16 Jan 2020 13:13:34 -0500
Received: from mail-mw2nam12on2092.outbound.protection.outlook.com
 ([40.107.244.92]:14176 helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <ilbeeman@wpi.edu>) id 1is9e7-0007jo-2h
 for usrp-users@lists.ettus.com; Thu, 16 Jan 2020 13:13:31 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SDCYrWFnyFreP3bfoJgDNlFR8EtJZ0wAkPbN7c9t+yyOj7wsH/sQM0pAqbrpfc7bN7+fQ2Px8DVN5nZojPKG3F+wg7qTJxjoIn+tuV/svW1yubIPXgLq6PWs4FOL3nVYkp3yne2PBExP376IMO7eDuMBN5WOxb41lJHUD9ZVU8WkZY05oUrDhx+APT0o65kRJJJr2Pb1hBGr/SWJ0mrfxr0IkcBI8wPNouZItnm29Q34PRzT46ymI2cVl5uK2phSsTlNKnUfLXCSAzC+bGe2dry5xZjF/xz7I+Cm5DqvAkONdsA8iJyvoYeBAaBKU4PVwi2JRONzBIRBnLtGSp57dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7kaXNj5+rMrNEhvnB3r/Ktj6yjX3mPHvt6Ryco1Dy40=;
 b=J5s/yf3XpzFoGoTNWr7LnKIsoX3atVZisVh/0SfGn7rMl0JrDUI74yb5XTH2cEF1E1CMOq9X2xtT7EEs/KoQHjYoFVEQYcLkQMIDB2gjB+/H2+Aq6GrEKIDQiWydG7zIWZXwZl1fPzbv8V7lhnBTP3B4+LiXiseAhsh5nQ3WWTZKZqPUBYCn3hK8zbeNe6sr+BM8ccfh9z6m0ce8Jsuwpu1tEfW+TFq9yadiqISwdL1dqDOqNWNdYlC/Be3YsRKGU+3qmhGZf5uuAR75ZPPp05fyQc2sQQBM+eMdv3FJZMazI3IBq0YndJJm3FkM0ti69CyoB44Vspjz9Wf3/vSvUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wpi.edu; dmarc=pass action=none header.from=wpi.edu; dkim=pass
 header.d=wpi.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wpi.edu; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7kaXNj5+rMrNEhvnB3r/Ktj6yjX3mPHvt6Ryco1Dy40=;
 b=rdXBGQclk4vkeRDkKr54QhfV6UjAluvQ+IhPkZsjLDJe8TNjp+hwCgULC3LQxiD4A5TBspdERBCVEzyO+ZaScf7gSw3XSAv1Hwsv5seqgJWajy/IgPb8T5JjzT/wyqp5Z7ZqQSQRJc5tWDpiGMGgdN/gAIfbwfbNiBj+x6NSejQ=
Received: from BL0PR0102MB3537.prod.exchangelabs.com (52.132.22.160) by
 BL0PR0102MB3345.prod.exchangelabs.com (52.132.17.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Thu, 16 Jan 2020 18:12:47 +0000
Received: from BL0PR0102MB3537.prod.exchangelabs.com
 ([fe80::952c:ddb0:33a9:668b]) by BL0PR0102MB3537.prod.exchangelabs.com
 ([fe80::952c:ddb0:33a9:668b%7]) with mapi id 15.20.2644.015; Thu, 16 Jan 2020
 18:12:46 +0000
To: Sam Reiter <sam.reiter@ettus.com>
Thread-Topic: [EXT] Re: [USRP-users] E312 RX_B issue
Thread-Index: AdWvB6DuxGPqJzIfRLqn8zV1yUAafwG0BOuABbAuSTA=
Date: Thu, 16 Jan 2020 18:12:46 +0000
Message-ID: <BL0PR0102MB3537145A998DDBC28CF295D7CB360@BL0PR0102MB3537.prod.exchangelabs.com>
References: <BL0PR0102MB35373B0C189BE4F553378871CB5B0@BL0PR0102MB3537.prod.exchangelabs.com>,
 <CANf970YcgCH0aBVFvUtGhfs0PokmjkNe3gK-1GBSs2rrr-BDLg@mail.gmail.com>
In-Reply-To: <CANf970YcgCH0aBVFvUtGhfs0PokmjkNe3gK-1GBSs2rrr-BDLg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=ilbeeman@wpi.edu; 
x-originating-ip: [130.215.127.177]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3e75089-5ba3-4e99-cad9-08d79aafb0a4
x-ms-traffictypediagnostic: BL0PR0102MB3345:
x-microsoft-antispam-prvs: <BL0PR0102MB3345DFDE589F9574976B44EECB360@BL0PR0102MB3345.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(366004)(396003)(346002)(136003)(189003)(199004)(8936002)(75432002)(53546011)(71200400001)(186003)(66946007)(316002)(64756008)(66476007)(26005)(966005)(19627405001)(66556008)(52536014)(76116006)(6506007)(33656002)(786003)(55016002)(81156014)(9686003)(2906002)(86362001)(7696005)(5660300002)(6916009)(8676002)(4326008)(81166006)(66446008)(478600001)(15519875007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR0102MB3345;
 H:BL0PR0102MB3537.prod.exchangelabs.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wpi.edu does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QdBTmsHGiA26vePE4WnuR9Kw0SjH36PIR6dka6pxhfPkGyANGHSRPYC9XW6VQIGihTFRE6aH4SmSvSknzcKJx+0mRD5HpZl9mROTA27JTPgLbGAIH3WUW6iqIE4OOY5W6y1V8foo20x2c9YJo3NyVudS9fXIdWQ3h1fstTL4MJpfbGlsGYEmLzKPDSoCFNeNFduYjAmMg4Gq6fauebVK6w3M4DW1xEQ09QpMGBCA2c1MF5UbbGt4hTutMUU6oU6JYtFoJ86czPLAm8aPWwLr2WMmcyyHJPWGhxgZwOBa/rP7BYzCXBZ9AP2wOJ5OMZOfe8ja7aboNQBu2SqRIYQCIceMGsR2q7Wr17B3Kha0zaNiH8B23tWbmngdDRcYJN5YTl/zMF4kFkJZyPSy7OpykjlzOFT8EbFeVErYXYIVHnNdOcTZmZHcmNRiBlmJd1MZqYgkz5BJPQPIiyiUq7ztstu5sJm52jEizjftao7szPIK2j++aTQoph9mK3kQAPa86Zp5IVQ/Q6UEiFoZGsDnn622dHe2STzCN1+R3qIDjps=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wpi.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e75089-5ba3-4e99-cad9-08d79aafb0a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 18:12:46.7719 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 589c76f5-ca15-41f9-884b-55ec15a0672a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PrsBNc37YOcDekAlZYDWYmFUrRtMMc7iXUhYf6HDETBes7+5GQy20MqUqZpR9XMaJYE7Lg5KLtSCURgvEAXXow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR0102MB3345
Subject: Re: [USRP-users] [EXT] Re:  E312 RX_B issue
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
From: "Beeman, Isaac L. via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Beeman, Isaac L." <ilbeeman@wpi.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8251545744931237213=="
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

--===============8251545744931237213==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR0102MB3537145A998DDBC28CF295D7CB360BL0PR0102MB3537_"

--_000_BL0PR0102MB3537145A998DDBC28CF295D7CB360BL0PR0102MB3537_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Sam,

I am using UHD_3.15.0.0-0-gdbaf4132.


Isaac Beeman

________________________________
From: Sam Reiter <sam.reiter@ettus.com>
Sent: Wednesday, December 18, 2019 2:16 PM
To: Beeman, Isaac L. <ilbeeman@wpi.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [EXT] Re: [USRP-users] E312 RX_B issue

Isaac,

What version of UHD are you using to elicit this behavior?

Sam Reiter
Ettus Research


On Mon, Dec 9, 2019 at 9:21 PM Beeman, Isaac L. via USRP-users <usrp-users@=
lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:

Hello group,



I have run into an issue with the RX_B port (channel 1) on the E312 that I =
haven=92t been able to make any sense of.



RX_A (channel 0) works great: I get clear in-phase and quadrature component=
s that I have been able to graph<https://nam03.safelinks.protection.outlook=
.com/?url=3Dhttps%3A%2F%2Fimgur.com%2FdQRl5mN&data=3D02%7C01%7Cilbeeman%40w=
pi.edu%7C5bf8fdff9ec647f642e508d783eee06e%7C589c76f5ca1541f9884b55ec15a0672=
a%7C0%7C0%7C637122935264104241&sdata=3DzKk3L704ojjJ4i8puoG%2FpQEvdWkP0ZD%2F=
JUp0%2FTkkdOU%3D&reserved=3D0>. When I do the same thing with RX_B (channel=
 1), I get something completely unexpected<https://nam03.safelinks.protecti=
on.outlook.com/?url=3Dhttps%3A%2F%2Fimgur.com%2F4WgU5R5&data=3D02%7C01%7Cil=
beeman%40wpi.edu%7C5bf8fdff9ec647f642e508d783eee06e%7C589c76f5ca1541f9884b5=
5ec15a0672a%7C0%7C0%7C637122935264104241&sdata=3DtJdj4Zv1ZoG1VDsXkpTNybVgov=
wxVgUl54L9FNvumm4%3D&reserved=3D0>. I am using the same rate (=3D0.5 Msps) =
frequency (=3D900 MHz), gain (=3D50 dB), bandwidth (=3D200 kHz) on each and=
 have had this happen whether I use both channels at the same time or read =
from RX_B individually.



I haven=92t had anything like this happen when I transmit on both TX_A and =
TX_B, and I have tested this on multiple USRP E312 radios and 900 MHz anten=
nas to make sure it wasn=92t something unrelated to the channel/port itself=
.



Does anyone know what could be happening?



-Isaac Beeman

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
nam03.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F%2Flists.ettus.com%=
2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com&data=3D02%7C01%7Cilbeeman=
%40wpi.edu%7C5bf8fdff9ec647f642e508d783eee06e%7C589c76f5ca1541f9884b55ec15a=
0672a%7C0%7C0%7C637122935264114238&sdata=3Dq0ZZ70c%2Bnud%2FEKo%2FXAvtaIRUPD=
ZJsObASL4FQDgqgiA%3D&reserved=3D0>

--_000_BL0PR0102MB3537145A998DDBC28CF295D7CB360BL0PR0102MB3537_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Sam,<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I am using UHD_3.15.0.0-0-gdbaf4132.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><span id=3D"ms-rterangepa=
ste-start"></span></p>
<div style=3D"color:rgb(33,33,33); font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont; f=
ont-size:15px; margin:0px">
<font size=3D"3" face=3D"Times New Roman,serif"><span style=3D"font-size:12=
pt"><font face=3D"Calibri,sans-serif" color=3D"black">Isaac Beeman</font></=
span></font></div>
<span id=3D"ms-rterangepaste-end"></span>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"></p>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Sam Reiter &lt;sam.re=
iter@ettus.com&gt;<br>
<b>Sent:</b> Wednesday, December 18, 2019 2:16 PM<br>
<b>To:</b> Beeman, Isaac L. &lt;ilbeeman@wpi.edu&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [EXT] Re: [USRP-users] E312 RX_B issue</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Isaac,
<div><br>
</div>
<div>What version of UHD are you using to elicit this behavior?</div>
<div><br clear=3D"all">
<div>
<div dir=3D"ltr" class=3D"x_gmail_signature">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter&nbsp;
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Dec 9, 2019 at 9:21 PM Beem=
an, Isaac L. via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div lang=3D"EN-US">
<div class=3D"x_gmail-m_8398194028674980837WordSection1">
<p class=3D"x_MsoNormal"><span style=3D"font-family:Georgia,serif">Hello gr=
oup,<u></u><u></u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-family:Georgia,serif"><u></u>&=
nbsp;<u></u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-family:Georgia,serif">I have r=
un into an issue with the RX_B port (channel 1) on the E312 that I haven=92=
t been able to make any sense of.
<u></u><u></u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-family:Georgia,serif"><u></u>&=
nbsp;<u></u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-family:Georgia,serif">RX_A (ch=
annel 0) works great: I get clear in-phase and quadrature components that I=
 have been able to
<a href=3D"https://nam03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2=
F%2Fimgur.com%2FdQRl5mN&amp;data=3D02%7C01%7Cilbeeman%40wpi.edu%7C5bf8fdff9=
ec647f642e508d783eee06e%7C589c76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C637122=
935264104241&amp;sdata=3DzKk3L704ojjJ4i8puoG%2FpQEvdWkP0ZD%2FJUp0%2FTkkdOU%=
3D&amp;reserved=3D0" originalsrc=3D"https://imgur.com/dQRl5mN" shash=3D"mJF=
C0IZO2N&#43;nfrO4LOLuCfNUXhmXyCpqI4bHu2gyd6eB2WUclkIeX8GdkYukeUgwJ0uc6hBTIW=
BgXh3Izp99Cc1Po4PLQpo87QM2lkFdmq0eZY3m/Aqr3xyNVYxnNGcmgFlKTnnPb&#43;YBMT8Cm=
irMU3IJJo27kvzdQi4PNSyQ8lA=3D" target=3D"_blank">
graph</a>. When I do the same thing with RX_B (channel 1), I get <a href=3D=
"https://nam03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fimgur.=
com%2F4WgU5R5&amp;data=3D02%7C01%7Cilbeeman%40wpi.edu%7C5bf8fdff9ec647f642e=
508d783eee06e%7C589c76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C6371229352641042=
41&amp;sdata=3DtJdj4Zv1ZoG1VDsXkpTNybVgovwxVgUl54L9FNvumm4%3D&amp;reserved=
=3D0" originalsrc=3D"https://imgur.com/4WgU5R5" shash=3D"XL6deBGAmvaNt/ENTD=
jzFR55m4qw7yIaMJLdU/YgrCY9&#43;5VT&#43;Y&#43;RhbeZl3az3YRYrAQea0BAJO6Al8&#4=
3;U6Ca0U00izIMbtU2l5AGXzCWPFN7DdpLFtG6Iv&#43;bcdyI70SU9ywd8K3naT9YkkgxbTaTP=
Y0qDKicVKVJqbiX2wVGRUhA=3D" target=3D"_blank">
something completely unexpected</a>. I am using the same rate (=3D0.5 Msps)=
 frequency (=3D900 MHz), gain (=3D50 dB), bandwidth (=3D200 kHz) on each an=
d have had this happen whether I use both channels at the same time or read=
 from RX_B individually.
<u></u><u></u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-family:Georgia,serif"><u></u>&=
nbsp;<u></u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-family:Georgia,serif">I haven=
=92t had anything like this happen when I transmit on both TX_A and TX_B, a=
nd I have tested this on multiple USRP E312 radios and 900 MHz antennas to =
make sure it wasn=92t something unrelated
 to the channel/port itself.<u></u><u></u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-family:Georgia,serif"><u></u>&=
nbsp;<u></u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-family:Georgia,serif">Does any=
one know what could be happening?<u></u><u></u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-family:Georgia,serif"><u></u>&=
nbsp;<u></u></span></p>
<p class=3D"x_MsoNormal"><span style=3D"font-family:Georgia,serif">-Isaac B=
eeman<u></u><u></u></span></p>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://nam03.safelinks.protection.outlook.com/?url=3Dhttp%3A%2F=
%2Flists.ettus.com%2Fmailman%2Flistinfo%2Fusrp-users_lists.ettus.com&amp;da=
ta=3D02%7C01%7Cilbeeman%40wpi.edu%7C5bf8fdff9ec647f642e508d783eee06e%7C589c=
76f5ca1541f9884b55ec15a0672a%7C0%7C0%7C637122935264114238&amp;sdata=3Dq0ZZ7=
0c%2Bnud%2FEKo%2FXAvtaIRUPDZJsObASL4FQDgqgiA%3D&amp;reserved=3D0" originals=
rc=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" s=
hash=3D"x/Ziv7gdBkqElOx3jFGCfyjaui8OXjmcr772I3GLzqqzV0uzdKNCTaPpctMZZSfH9uz=
CveySi4&#43;DZQmMJxx9KZNenw7OH6EefniPeExuqcrQUy3vSeCbcofGVxpkzsVJ5wdKYkgaht=
eotKYyTXAvYzkoUZm8sX3dL3MoRRTj5zk=3D" rel=3D"noreferrer" target=3D"_blank">=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BL0PR0102MB3537145A998DDBC28CF295D7CB360BL0PR0102MB3537_--


--===============8251545744931237213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8251545744931237213==--


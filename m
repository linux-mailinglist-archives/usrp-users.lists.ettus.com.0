Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C5E3058F6
	for <lists+usrp-users@lfdr.de>; Wed, 27 Jan 2021 11:58:20 +0100 (CET)
Received: from [::1] (port=53262 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l4iWf-0001ta-Hy; Wed, 27 Jan 2021 05:58:17 -0500
Received: from mail-eopbgr1380107.outbound.protection.outlook.com
 ([40.107.138.107]:41312 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1l4iWa-0001nh-FP
 for USRP-users@lists.ettus.com; Wed, 27 Jan 2021 05:58:12 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CaL1x3v6t4p4pXUOR66g7WuT1oeGFExtisccQ/GJbIepXPrWqw2aqyhAXSAE6VDMHczp2j+rzpCykiy2avZOjkpFQVRXfN/j47/VsRzu+zC6JkXhasrX+UGSQP/aBhLnSuA1dX5UJgi2JOGVVG6dP4RkdtGyC86tbrBix0adqwv6rJhYkI7QoeKjC8GI8EzEWKJfUDXCZZhbzkB2zTPWWJZ7OyCzTxklkS3/u5ILafk9GRQ3n76Jm0kTYgY9sjhaW/A5KDWrwi1MOqoqt4VPueb1TIDivzkxptKh4cnEyUaZgTSkqrJmDIRhob3js7nYIJQ+ChyDDZXCRE6Xlee2xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ia7CJ2y93pwBBglSSG/01IOF3rmNidKtxQBE/d88nEw=;
 b=gBanszKa4+AWQks/vxJPu+3cNhvBlVz1edCPABXuA2ghMObv4bYvDpTsMRK/v6Fm0JWA3NzclH4l/gOtirIETlDx3fhsuS1mH3uQQd4QEB7dmOFh33GM1UG7un2AK/bgn8S0xj3mBG/fgnLlF9sIibtl/7obYHsGsI+Gar31o3xiHjnlbhk5tPm7JeEHUqu4n38isE7fnxL0lTVaYnWeao5XNWkmwrr6xg4u5cy9e58bwTsqnBzW+bVDj17g5k5lFIZhH2Qb+inEzrqXH6lCHbf7ijJGMehmLROxzCz+7sphlQl4vaYPqAhyLtUsocIuox6kXRNHw9qJg2q7TKdruw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ia7CJ2y93pwBBglSSG/01IOF3rmNidKtxQBE/d88nEw=;
 b=h0pNHXr0+pYwb2plYM7gZLOImyZttrX6erZx0I/wK8avC3sg6LWVBMRMHJ+Yc+i3he9dy+kWFSPsvOZeS2p/B95T7wEAp9tvuT+F9eg+roMlgQzhxSjZtZ6gSEydqZQvu2cwURcovqLj4QdFCQxjamDoc77Nx6TxyvvMgOOkigE=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR0101MB1688.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:2a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.17; Wed, 27 Jan
 2021 10:57:29 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d5de:6495:1afb:73f3]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d5de:6495:1afb:73f3%3]) with mapi id 15.20.3784.019; Wed, 27 Jan 2021
 10:57:28 +0000
To: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>, "Marcus D.
 Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] USRP sample rate and bandwidth
Thread-Index: AQHW6XG/cAfb865gnU+dBcxvX5qtbaoloogAgBW/+Yw=
Date: Wed, 27 Jan 2021 10:57:28 +0000
Message-ID: <MA1PR01MB258853948A0738D874D0141690BB0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB2588D349CDCE2F00C0B209C090A90@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5FFF077E.9040704@gmail.com>
In-Reply-To: <5FFF077E.9040704@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none; lists.ettus.com; dmarc=none action=none header.from=vehere.com; 
x-originating-ip: [219.65.75.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5df34bc5-44cb-493f-4fac-08d8c2b256cc
x-ms-traffictypediagnostic: MA1PR0101MB1688:
x-microsoft-antispam-prvs: <MA1PR0101MB1688251603F3A1FEC7C996DB90BB0@MA1PR0101MB1688.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U6k4UR4AhYT/yhq/IVt8gxw5cEEXQvsCag1FjoFdQsBuClxtcixGuB9MpaVnxErwuQppKxMoeuj68HJc+ZreECwyOHEhYN8r8NZgWuc+D6RbRNVUCy3QrJftpl3hZvG4IH1OfgOn/PwWd0LuLdcot4oonkcweAGk4sXU71Ia5FiirU8IR0LFZOxXUJgP6fZvTEtmMqfyCA95keaRUNJl06vKtlzoUfWLzWVFiv4E3YzVy1/3pzbMFL/O9Cnzz98WzK2YAc8AcaKrikl7ZC2TAD31Xfx5Odq9vfe8popx9WJ8pbQN5X13D1K8to/NVdc/XPWfEJUfWhko8ZDw3Sb6sOMBxAxwAifmtlExBmjd818R+eo1RckXCPIRsgbYnVePbnq764FAaf0cUwMK+iMDN2fDZqQoARXdgk3q+7O/fivQz9giAwzzL++kz97MRjBiLyeuEJ6XWEoL6EWcRJK7R12sBFemgOHV1C52gSAF063BaUUbfz4z+doIviYBBbUVJ3ma1HLx/xX7w3DYwHvvSm+Oenfp6UMAWUqfPBjGksviKb+MVK4+J242AifZhhjD38R2pR9O2fdfUTdbyTdyucd7G7v0ljdLap4KjRfp4FE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(396003)(346002)(376002)(136003)(366004)(39840400004)(76116006)(55016002)(316002)(478600001)(53546011)(71200400001)(5660300002)(86362001)(19627405001)(91956017)(8936002)(9686003)(110136005)(26005)(66574015)(2906002)(6506007)(33656002)(186003)(66946007)(64756008)(66446008)(66476007)(66556008)(7696005)(52536014)(8676002)(166002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?Windows-1252?Q?ltlyD6pKCZLgGOkMDnjNZVRnfwv40D/YxYKEhvSZ4+W8jGU8iMKaJrbG?=
 =?Windows-1252?Q?HRd7lEktv+g0OgQJ4XbARja/dlbX44pS0QQ3U5tNBi6OgoRM+9WE+fRY?=
 =?Windows-1252?Q?Uzh24f00xXcw6LvHGDG76vgf/oJc3yDu4z1XlTeVhRGC8ONQJNg+QDYt?=
 =?Windows-1252?Q?kP7/OYuIq5AG9TyypPnm2lS8ilTkioCaLSlRwx/Fam+wX6f8+lm+fbDd?=
 =?Windows-1252?Q?gtZzG+LxRQ/zlH7azutLhqvxWVRp9Xz4w7z5LH9Q+CGz5LC5JhM+1ifD?=
 =?Windows-1252?Q?QqqBV9oSzO/PRXZGMBMeHuudXCnWEeD9FrAtrOuGLqh7K3RFoV9hpjfB?=
 =?Windows-1252?Q?MaXLaB9fDspw4KQi8a/Xv2tSJpcJGzRK5ClmOSHrTkFSqwBT9w2LkuFr?=
 =?Windows-1252?Q?3NZKkMqYY3IDfBDOd6wI3V8BoFpK4axigkLMpQpjP3puRwfKrAcrAjXZ?=
 =?Windows-1252?Q?6nC8Ij/P27jzBi3TncSLKXMLkHn4kHYeXQ/ObS9m3hk5PNrNkV4YIpkz?=
 =?Windows-1252?Q?RvMROB+AKgQalYcpBsHuz7pAh++cwQnr9Hx+WS8cyZ5rr99ywOOebST9?=
 =?Windows-1252?Q?XpmyzA/kBq75ySrp0bFSKMCAdZPASegIaNw9t94a0Oe/ntIXMAJzPWct?=
 =?Windows-1252?Q?ffQfDIzqL3hhBzbyGWKsZpTA31i8D02ZSj3XOmmOMKBfSM0+aMO6e2Of?=
 =?Windows-1252?Q?Jml8id0oC5z2CNe9Dyw6K0qe19FNuhoJa68PFnQgBgJtXpW0u9GkMAn1?=
 =?Windows-1252?Q?KedYO7Ytfh8g8xxK02+RvVz8cqKPTNWtNLYkyDIOM2J0mdDAu0shV3W2?=
 =?Windows-1252?Q?IgOykXiIT6IfC9oT5W4p9iEIQ4HDeTV46qQgVkarM9FHq096iZ8ZvZhq?=
 =?Windows-1252?Q?p0ReUg9hKUN0fs662qVsNSXQvUTRzTz0LFhyoU/i4hTsrNuKU9uUagj3?=
 =?Windows-1252?Q?rMmmLALq6DFkJCA9gkWBydk/PWh2cfKQjDNvW/+NheFZ0pRkTWGumks9?=
 =?Windows-1252?Q?fk3CwNSoUh1mE0FLPZ6twspeLcKIb6naTRQ2VvEEHfLP/3+PUUdYaCea?=
 =?Windows-1252?Q?bPoB4qQg1XtkIhisks3nI1U0oXzGnA6zIrA25iYiQ63izmk3lMaONlQo?=
 =?Windows-1252?Q?/Ws=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 5df34bc5-44cb-493f-4fac-08d8c2b256cc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2021 10:57:28.7283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RLZ2sXO7M/yffQRaFyOakErR7AeMcNV/mdUNnZW9fvJ5SvOYXZE8Hi5rdqLB1v9YhjbPKecNS/h8hfrN6w1RyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR0101MB1688
Subject: Re: [USRP-users] USRP sample rate and bandwidth
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
From: "Koyel Das \(Vehere\) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Koyel Das \(Vehere\)" <koyel.das@vehere.com>
Content-Type: multipart/mixed; boundary="===============6905849851106215170=="
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

--===============6905849851106215170==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB258853948A0738D874D0141690BB0MA1PR01MB2588INDP_"

--_000_MA1PR01MB258853948A0738D874D0141690BB0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thanks Marcus and Kyeong for the information. Could you also provide inform=
ation on how much is the analog bandwidth being set ahead of the ADC? Is it=
 greater than 20 MHz? If so then will my setting bandwidth =3D 20 MHz filte=
r 20 MHz band out of the total band?

Regards,


Koyel Das
Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>

[unnamed]<https://www.linkedin.com/company/vehere-interactive-p-ltd> [unnam=
ed (1)] <https://twitter.com/VehereIndia>  [unnamed (2)] <https://www.faceb=
ook.com/VehereIndia/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Wednesday, January 13, 2021 8:15 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP sample rate and bandwidth

On 01/13/2021 01:08 AM, Koyel Das (Vehere) via USRP-users wrote:
Hi,

The USRP sample rate and bandwidth are two different parameters in gnuradio=
 so if I want 20 MHz bandwidth and 100 MSps sample rate then will setting b=
andwidth =3D 20 MHz and sample rate =3D 100 MHz serve my purpose? Normally =
sample rate (100 MHz in this case) is the bandwidth unless filter is used s=
o does that mean USRP is filtering out 20 MHz keeping sample rate at 100 MH=
z by itself?

Regards,

Koyel Das
Senior =96 Product Engineer

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>
Indeed, FOR HARDWARE WITH VARIABLE BANDWIDTH, this parameter sets the analo=
g filter bandwidth ahead of the ADC.

Many hardware configurations, however, have fixed analog bandwidth ahead of=
 the ADC, and this parameter setting will do
  nothing in those situations.

Hardware based on the AD9361 or AD9371 (USRP B2xx, USRP N3xx, USRP E31x) ha=
s this control, as do some of the older
  daughtercards--DBSRX2, TVRX2.



--_000_MA1PR01MB258853948A0738D874D0141690BB0MA1PR01MB2588INDP_
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
Thanks Marcus and Kyeong for the information. Could you also provide inform=
ation on how much is the analog bandwidth being set ahead of the ADC? Is it=
 greater than 20 MHz? If so then will my setting bandwidth =3D 20 MHz filte=
r 20 MHz band out of the total band?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;margin-top:0; margin-bottom=
:0"></p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-family:Calibri,Helveti=
ca,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&=
quot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,=
EmojiSymbols; font-size:16px; line-height:16px">
<font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
Senior =96 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: +919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" styl=
e=3D"font-size:16px"><font style=3D"font-size:9pt">T: +91&nbsp;33 40545454 =
| F: +91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.vehere.com/" targ=
et=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP">www.vehere.com</a><=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; fon=
t-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><span sty=
le=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,se=
rif,EmojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed"=
 style=3D"width:18pt; height:18pt" src=3D"https://mail.google.com/mail/u/0/=
?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;a=
ttid=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ_cw8QOmJOuH5dOGgYLOxSybsCNVtf-=
NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kcoQwHmymFim1kkqNhKdcHOp=
lQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4=
a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34)=
; font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;</sp=
an><a href=3D"https://twitter.com/VehereIndia" target=3D"_blank" rel=3D"noo=
pener noreferrer" id=3D"LPNoLP"><span style=3D"color:rgb(34,34,34); font-si=
ze:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont; text-decoration-lin=
e:none"><img border=3D"0" alt=3D"unnamed (1)" style=3D"width:18pt; height:1=
8pt" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&am=
p;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;=
attbid=3DANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-=
plEkGO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-=
h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1">=
</span></a><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family=
:Arial,sans-serif,serif,EmojiFont">&nbsp;</span><a href=3D"https://www.face=
book.com/VehereIndia/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"=
LPNoLP"><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Ar=
ial,sans-serif,serif,EmojiFont; text-decoration-line:none"><img border=3D"0=
" alt=3D"unnamed (2)" style=3D"width:18pt; height:18pt" src=3D"https://mail=
.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D1=
5cd46f4a213fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=3DANGjdJ9JZdmekO-=
R6DmUlgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjwSBYH5Rw=
gNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&amp;ats=3D1498219245=
179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=
=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,seri=
f,EmojiFont">&nbsp;&nbsp;</span><span style=3D"color:rgb(34,34,34); font-fa=
mily:Tahoma,sans-serif,serif,EmojiFont"><br>
</span><br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!</i></font></font><font face=3D"Tahoma,s=
erif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><br>
<br>
The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are n=
ot the addressee, or the person responsible for delivering it to the addres=
see, any disclosure, copying, distribution or any action taken or omitted t=
o be taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error,=
 please notify the sender and remove this communication entirely from your =
system. The recipient acknowledges that no guarantee or any warranty is giv=
en as to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the v=
iews contained in the email message are those of the sender and may not nec=
essarily reflect those of Vehere Interactive Pvt Ltd. Before opening and ac=
cessing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email=
. The recipient should check this email and any attachments for the presenc=
e of viruses. The company accepts no liability for any damage caused by any=
 virus transmitted by this email.</font></font><br>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"></p>
</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Marcus D. Leech via USRP-user=
s &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, January 13, 2021 8:15 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] USRP sample rate and bandwidth</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 01/13/2021 01:08 AM, Koyel Das (Vehere)=
 via USRP-users wrote:<br>
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
The USRP sample rate and bandwidth are two different parameters in gnuradio=
 so if I want 20 MHz bandwidth and 100 MSps sample rate then will setting b=
andwidth =3D 20 MHz and sample rate =3D 100 MHz serve my purpose? Normally =
sample rate (100 MHz in this case) is
 the bandwidth unless filter is used so does that mean USRP is filtering ou=
t 20 MHz keeping sample rate at 100 MHz by itself?</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Regards,</div>
<div id=3D"x_Signature">
<div>
<meta content=3D"text/html; charset=3DUTF-8">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D""><font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koy=
el Das &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b=
r>
Senior =96 Product Engineer</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: +919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" styl=
e=3D"font-size:16px"><font style=3D"font-size:9pt">T: +91&nbsp;33 40545454 =
| F: +91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.vehere.com/" targ=
et=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP">www.vehere.com</a><=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><i></i></font></font><br>
</div>
</div>
</div>
</div>
</blockquote>
Indeed, FOR HARDWARE WITH VARIABLE BANDWIDTH, this parameter sets the analo=
g filter bandwidth ahead of the ADC.<br>
<br>
Many hardware configurations, however, have fixed analog bandwidth ahead of=
 the ADC, and this parameter setting will do<br>
&nbsp; nothing in those situations.<br>
<br>
Hardware based on the AD9361 or AD9371 (USRP B2xx, USRP N3xx, USRP E31x) ha=
s this control, as do some of the older<br>
&nbsp; daughtercards--DBSRX2, TVRX2.<br>
<br>
<br>
</div>
</body>
</html>

--_000_MA1PR01MB258853948A0738D874D0141690BB0MA1PR01MB2588INDP_--


--===============6905849851106215170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6905849851106215170==--


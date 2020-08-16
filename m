Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0ED2458B3
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 19:16:47 +0200 (CEST)
Received: from [::1] (port=45722 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7MGz-0003Kf-Jg; Sun, 16 Aug 2020 13:16:45 -0400
Received: from mail-eopbgr1390101.outbound.protection.outlook.com
 ([40.107.139.101]:61408 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k7MGv-0003Cz-4l
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 13:16:41 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nvYqMeTn7/4MYO78rj9pOvHUCBbMbY82mj7EkZ5uzYFqOGxIzX7fB4u+K7G0U+cpSMU4JKEBb4lqm1C4OXf/cCwfSJIsyByXXUxLWJBai/1FWgr5z/sCp4+85ogAzTZvZOtOfvhqf99HNFb/F6mAEpRf4D6CmVYB/X/5j+ARXs/IohC/cYPXd0gMVkQvRPop7xz0BKqH7yG+jZA1bX/QFC11+hMQuQH7eNQuh9UadvegToYo6cUoms3mGPNk7+sTigkC2dQCJe097vXGBPdErooU3QI2hEpcIboepzEh+Wo4tPM0dBG3sb439ADEweLRzC7xsj1UzdqXheNRJYYcKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EynTjIny0/6qaNUIazSX6LzAtaeAGk22KY5BaSRiunM=;
 b=kYXotCgir71XPiPNjV8chcEEAD3XRXnuvLr1tZMqC5kE4jB9mG2vCRuNZkGNtJPeQWaHorb88b+9L8AbzwYEqMgPybOa8PyoJTonY1Nu3P1jLiirpcVBCi1ONPw2zylgKRW1o1XbukTusSrbg5aimi/M/2clQFNCsHOBMvqD5V59XcgAqKG+IyMg6wIHdRsPk62LAevKcoLV7xir+1qTNcuyzL69XuHBewlaVoUrCLaAZlZMEXbZ4+aZEMoeMLepfWmGTylvubdNOKbEEk6lWylPOSS8vnRbk+NyFljMmc4kQMdeBHGkmV88afH6cXk+7psi5ieQ/aIT4qcUjGqhjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EynTjIny0/6qaNUIazSX6LzAtaeAGk22KY5BaSRiunM=;
 b=bLhcJTqE8SSZbIWImGtvLq0s741fqTfV6xxi2lL1KkwxGIRDaentE00A8A1oftq4lGO4/3ElDTiaHZyRXQeBhRZIduT/QbbNPc8VXKhjkQ3mhD3RhWhigcSrSBI2hvLeZiJ0sRAjmHYg2P7hmM45xX91fI4CZKtT3+0gAfBioPQ=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR0101MB1274.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:19::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.15; Sun, 16 Aug
 2020 17:15:56 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3%6]) with mapi id 15.20.3283.027; Sun, 16 Aug 2020
 17:15:56 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Incorrect data from usrp 2955
Thread-Index: AQHWcybNOTailyD99kmbADMt8WJI1Kk5hQWAgACW7GuAANQ9gIAAAHiPgAACmfWAAAZ4gIAAADeN
Date: Sun, 16 Aug 2020 17:15:56 +0000
Message-ID: <MA1PR01MB25882A435C92F1F1BBE5DF2E905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F382FA9.60900@gmail.com>
 <MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39604D.6030303@gmail.com>,
 <MA1PR01MB2588632D2A24063E8E4E1F22905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <MA1PR01MB2588B859845EA8B4E4FB4477905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39684D.1060702@gmail.com>
In-Reply-To: <5F39684D.1060702@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.154.85]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a429291-48a8-44e3-4a04-08d8420809e6
x-ms-traffictypediagnostic: MAXPR0101MB1274:
x-microsoft-antispam-prvs: <MAXPR0101MB1274A36A1E483FC6429C0E7D905E0@MAXPR0101MB1274.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: d07FmguHCnbgmwgyNL6wtdLA+83UdpXgWWXLTVh8tdkPnt327sBnd+vBwQQgwEXTXl46trHqSo2V+bDDMQJZCy9qy7+NTwh+xKXT5vnl1diePdvgISGvqNyljl+9UdYhCfi3EzacFywJckHIJ8KUyoL1y17MiRSgA5monE4hEXrkabvRD7Tj1wcYdi5I61m4kbXV9wvOtNoXIeG5sgNJIyhwc/ZKGntSJZWiYwLAwXviEpA5YdGlAJL27h0LGzdbh6y6za4P8kS4Ju5YmSjDh6p3fuFH4n19diN22H4OW2dEpoaW31w6SfffwkWjc0olIE5yk43eVXdjqvYK8Y2HaeRkYW0OFAf/sCRt2PCwYIpXGT7xoyAHqVzr8c3T8Rb6+WQZFBoOauSdQhVGRMlo0Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(376002)(39830400003)(366004)(136003)(346002)(396003)(186003)(9686003)(26005)(966005)(86362001)(55016002)(8676002)(83380400001)(52536014)(8936002)(5660300002)(7696005)(6506007)(53546011)(478600001)(33656002)(166002)(66446008)(2906002)(64756008)(76116006)(66556008)(66476007)(316002)(110136005)(66946007)(71200400001)(45080400002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: DAvsU1WZlwLelYOJhtbFVp2bZKdJsV+JDkKk4CNlMPW4Ol+JaHyCoCiIisnjLZdOO9ULNBt9An4lDBRQY6+j0sNrHbM+3MlWTVLCiYYp29PuU64BvaaNjdJvhllqlN4azflqyHzmEmZB6zDecjAgJxAiMsmOco9Aisj6mRde7YG/E7cb1p1rnsHF8sIjJLCPBg9+2c5bREVx3KH//Yt4EhQudeZa2BXfH0NmxIoXv+G29GFNlPZTcxrtYhryvK/cPSDsVNpU7krNavgdTBekog49hWVskZqieL9gY3QxS90RouLI5y/G7lZOrdXoI190/WTQsHRfxNnKpqtKjEKyNGVn7leIuYfO3xq+YqWJctGj25+eOzRpBvKVnapCTBJZw+b50101lkrm8uTg+couXpuM/vLKc1jPo+YuMSL3uRAxkAJZGDYJl8L0fMNtUi2s1R2iQEk3gDCYfcg6/hfOkgAqDsLZab2yAjhvNoa5p6p/JkjjWujRt/b+rkQqZHy+4cKGT9pa0YYZuArHXlkvEG/pqO6IrDcWwFtwDXri1b8Yq5Md7HVH/Y0qWoelmrJXKIJkyqju329sUnN+oVSip5hTidWTarVwFWswaJEiwVSwcZ4prkB0tS8E9Sz8Pyh8NmATjWHxZGaq2zzNFkmVpA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a429291-48a8-44e3-4a04-08d8420809e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2020 17:15:56.4614 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NJwU+ZY1+fcvVkklIYKl0CfhNa99FKHWcKe1jdgtwd03833fbWrsdNHQ7QYYGy+RE14Nqmf0Pi00zgvMVU5tYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR0101MB1274
Subject: Re: [USRP-users] Incorrect data from usrp 2955
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
Content-Type: multipart/mixed; boundary="===============7337201178744572878=="
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

--===============7337201178744572878==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB25882A435C92F1F1BBE5DF2E905E0MA1PR01MB2588INDP_"

--_000_MA1PR01MB25882A435C92F1F1BBE5DF2E905E0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I am not observing one individual channel but phase difference between two =
channels. I very well know individual channel would show random phases but =
not the phase difference when same signal is injected in two channels. I ho=
pe you are aware that phase difference =3D 2pi/lambda* path_difference. Pat=
h difference is constant as that=92s the difference between two paths of tw=
o daughterboards and hence this phase difference is constant. Remember same=
 signal is injected so initial phases would be same for two channels and on=
ly the difference in the signal path lengths bring the difference which is =
constant

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Sunday, August 16, 2020 10:39 PM
To: Koyel Das (Vehere); usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Incorrect data from usrp 2955

On 08/16/2020 12:46 PM, Koyel Das (Vehere) wrote:
The measurement is not initial phase but the phase difference between two c=
hannels

Get Outlook for iOS<https://aka.ms/o0ukef>
Are you using an external reference, or using the internal clock in the X31=
0?

If you observe an individual channel, is it "sane" ?  That is, apparently o=
n-frequency, and with correct amplitudes and low distortion?


________________________________
From: Koyel Das (Vehere) <koyel.das@vehere.com><mailto:koyel.das@vehere.com=
>
Sent: Sunday, August 16, 2020 10:15:48 PM
To: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.co=
m>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

the phase difference between two channels of USRP as a function of frequenc=
y and time,  when measured by splitting the same signal and feeding two cha=
nnels of usrp, are wandering around wrt one another which was not happening=
 before. I had given demo more than 30 times based on this principle and te=
sted previously more than 50 times and I got correct result every time. Now=
 only suddenly it started happening. The frequency is 2.4 GHz and bandwidth=
 I tried from 1 MHz to 100 MHz. Previously the whole bandwidth was showing =
similar values but then suddenly started behaving abnormally giving near to=
 correct result sometimes and sometimes junk.

Regards,
Koyel
Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Sunday, August 16, 2020 10:05 PM
To: Koyel Das (Vehere); usrp-users@lists.ettus.com<mailto:usrp-users@lists.=
ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

On 08/15/2020 11:59 PM, Koyel Das (Vehere) wrote:
No it doesn=92t look better again after reducing gain. Sometimes the phase =
differences are closeby but not so same as we were getting before and most =
of the times they are totally incorrect. Strength of the signal when we tri=
ed with maximum gain was near -40 dbm.

Regards,
Koyel
To clarify some things.

(A) The phase errors are just the initial phases--they don't wander around =
with respect to one another during a run?
(B) What frequency range?



Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com><mailto:usrp-users-bou=
nces@lists.ettus.com> on behalf of Marcus D. Leech via USRP-users <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Sent: Sunday, August 16, 2020 12:25:37 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Incorrect data from usrp 2955

On 08/15/2020 01:16 PM, Koyel Das (Vehere) via USRP-users wrote:
Hi,

We are using USRP 2955. Something has gone wrong. Before we were getting co=
nstant phase difference across channels for limited bandwidth and with time=
 when we split single antenna signal using splitter and fed two channels of=
 USRP but now it is not doing so. This happened on Friday that after gettin=
g a series of correct results : constant phase difference across channels b=
y feeding signal using splitter as mentioned above, we suddenly started to =
receive wrong data: random phase  across channels and with time using the s=
ame setup with splitter. The thing we did was setting gain to near maximum =
and receiving 100 MHz sample rate. But I don't think amplifier has damaged =
because in this usrp we have four independent channels and when we connecte=
d the splitter to unused channels then also we got wrong data. What can go =
wrong that USRP is streaming data but phases are wrong? What do you think? =
Please let me know.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


Does it look better again when you reduce the gain?

What is the magnitude of the signals going to the RX ports?





--_000_MA1PR01MB25882A435C92F1F1BBE5DF2E905E0MA1PR01MB2588INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>I am not observing one individual channel but phase difference between=
 two channels. I very well know individual channel would show random phases=
 but not the phase difference when same signal is injected in two channels.=
 I hope you are aware that phase
 difference =3D 2pi/lambda* path_difference. Path difference is constant as=
 that=92s the difference between two paths of two daughterboards and hence =
this phase difference is constant. Remember same signal is injected so init=
ial phases would be same for two channels
 and only the difference in the signal path lengths bring the difference wh=
ich is constant&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
<div id=3D"id-add88a81-197d-43fc-a088-cb38d9d34fbf" class=3D"ms-outlook-mob=
ile-reference-message">
<hr style=3D"display: inline-block; width: 98%; font-family: -webkit-standa=
rd; font-size: 12pt; color: rgb(0, 0, 0);" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif"><b=
>From:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, August 16, 2020 10:39 PM<br>
<b>To:</b> Koyel Das (Vehere); usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3DWindows-1252">
<div class=3D"moz-cite-prefix">On 08/16/2020 12:46 PM, Koyel Das (Vehere) w=
rote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">The measurement is not initial phase but the phase differe=
nce between two channels&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
</blockquote>
Are you using an external reference, or using the internal clock in the X31=
0?<br>
<br>
If you observe an individual channel, is it &quot;sane&quot; ?&nbsp; That i=
s, apparently on-frequency, and with correct amplitudes and low distortion?=
<br>
<br>
<br>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div></div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Calib=
ri, sans-serif" style=3D"font-size:11pt"><b>From:</b> Koyel Das (Vehere)
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:koyel.das@vehere.com">&lt=
;koyel.das@vehere.com&gt;</a><br>
<b>Sent:</b> Sunday, August 16, 2020 10:15:48 PM<br>
<b>To:</b> Marcus D. Leech <a class=3D"moz-txt-link-rfc2396E" href=3D"mailt=
o:patchvonbraun@gmail.com">
&lt;patchvonbraun@gmail.com&gt;</a>; <a class=3D"moz-txt-link-abbreviated" =
href=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"moz-txt-link-rfc2396E" href=3D"m=
ailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>
<div dir=3D"ltr"><span style=3D"font-size:inherit">the phase difference bet=
ween two channels of USRP as a function of frequency and time,&nbsp; when m=
easured by splitting the same signal and feeding two channels of usrp,&nbsp=
;are wandering around wrt one another which was
 not happening before. I had given demo more than 30 times based on this pr=
inciple and tested previously more than 50 times and I got correct result e=
very time. Now only suddenly it started happening. The frequency is 2.4 GHz=
 and bandwidth I tried from 1 MHz
 to 100 MHz. Previously the whole bandwidth was showing similar values but =
then suddenly started behaving abnormally giving near to correct result som=
etimes and sometimes junk.</span><br>
</div>
<div dir=3D"ltr"><span style=3D"font-size:inherit"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"font-size:inherit">Regards,</span></div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div class=3D"x_ms-outlook-ios-signature" id=3D"x_ms-outlook-mobile-signatu=
re">Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
<div id=3D"x_id-d2ed923a-74ce-4157-8a68-f15a06251364" class=3D"x_ms-outlook=
-mobile-reference-message">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%; font-size:12p=
t; color:rgb(0,0,0)">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri,=0A=
                sans-serif"><b>From:</b> Marcus D. Leech
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com">=
&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Sunday, August 16, 2020 10:05 PM<br>
<b>To:</b> Koyel Das (Vehere); <a class=3D"moz-txt-link-abbreviated" href=
=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3DWindows-1252">
<div class=3D"x_moz-cite-prefix">On 08/15/2020 11:59 PM, Koyel Das (Vehere)=
 wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div>No it doesn=92t look better again after reducing gain. Sometimes the p=
hase differences are closeby but not so same as we were getting before and =
most of the times they are totally incorrect. Strength of the signal when w=
e tried with maximum gain was near
 -40 dbm.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel <br>
</div>
</div>
</div>
</blockquote>
To clarify some things.<br>
<br>
(A) The phase errors are just the initial phases--they don't wander around =
with respect to one another during a run?<br>
(B) What frequency range?<br>
<br>
<br>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div><br>
</div>
<div class=3D"x_ms-outlook-ios-signature" id=3D"x_ms-outlook-mobile-signatu=
re">Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Cal=
ibri,=0A=
                  sans-serif" style=3D"font-size:11pt"><b>From:</b> USRP-us=
ers
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:usrp-users-bounces@list=
s.ettus.com">
&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on behalf of Marcus D. Leech=
 via USRP-users
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.=
com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Sent:</b> Sunday, August 16, 2020 12:25:37 AM<br>
<b>To:</b> <a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:usrp-user=
s@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_x_moz-cite-prefix">On 08/15/2020 01:16 PM, Koyel Das (Veher=
e) via USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div><span>Hi,<br>
</span>
<div dir=3D"ltr"><br>
</div>
<span>We are using USRP 2955. Something has gone wrong. Before we were gett=
ing constant phase difference across channels for limited bandwidth&nbsp;an=
d with time when we split single antenna signal using splitter and fed two =
channels of USRP but now it is not doing
 so. This happened on Friday that after getting a series of correct results=
 : constant phase difference across channels by feeding signal&nbsp;using s=
plitter as mentioned above,&nbsp;we suddenly started to receive wrong data:=
 random phase &nbsp;across channels and with time
 using the same setup with splitter.&nbsp;The thing we did was setting gain=
 to near maximum and receiving 100 MHz sample rate. But I don't think ampli=
fier has damaged because in this usrp we have four independent channels and=
 when we connected the splitter to unused
 channels then also we got wrong data. What can go wrong that USRP is strea=
ming data but phases are wrong? What do you think? Please let me know.</spa=
n><br>
</div>
<div dir=3D"ltr"><span><br>
</span></div>
<div dir=3D"ltr"><span>Regards,</span></div>
<div dir=3D"ltr"><span>Koyel&nbsp;</span></div>
<div><br>
</div>
<div class=3D"x_x_ms-outlook-ios-signature" id=3D"x_x_ms-outlook-mobile-sig=
nature">Get
<a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
</div>
<br>
<fieldset class=3D"x_x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________=0A=
USRP-users mailing list=0A=
<a class=3D"x_x_moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.e=
ttus.com">USRP-users@lists.ettus.com</a>=0A=
<a class=3D"x_x_moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/list=
info/usrp-users_lists.ettus.com</a>=0A=
</pre>
</blockquote>
Does it look better again when you reduce the gain?<br>
<br>
What is the magnitude of the signals going to the RX ports?<br>
<br>
<br>
</div>
</blockquote>
<br>
</div>
</div>
</div>
</blockquote>
<br>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB25882A435C92F1F1BBE5DF2E905E0MA1PR01MB2588INDP_--


--===============7337201178744572878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7337201178744572878==--


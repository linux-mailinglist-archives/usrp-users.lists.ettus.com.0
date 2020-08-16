Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C53CD24589A
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 18:46:40 +0200 (CEST)
Received: from [::1] (port=45494 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7Lno-0000YL-27; Sun, 16 Aug 2020 12:46:36 -0400
Received: from mail-eopbgr1390114.outbound.protection.outlook.com
 ([40.107.139.114]:13552 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k7Lnj-0000IY-Qi
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 12:46:32 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NUH6n4ffjVMIxVvY0m10J5c3U0TyGk2vuhjJ3368KbqTx18LzFCposYKOAWkh4Z2U0dTaoIpRZNeutPMEESDbnCidU2x1qV7c9Fdq985aQEVbeekeMb7Rpc3xSnxYVzTW39tI9+GPouSxNnJyLlzPpuOQPN9RsbXysob1LPFe1981qSvWuStE4PMqsDmImmiU2sF1g5KHQ/Zt9OgA5z/M4aGugQELR1FUqSbO2drZfGzmlDpM44+IqbMzYmrS/FWvcdcH+gMmZ4pJ+XCFUmBfT1LmO0nKNNmsTMjwrYCSVST5OmQnnvHlHcPbsimzhtAu1Emo93a5p88+1srhttteg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IMzkuZOpEKpoxZgn5q+8GEbSBOd2svyXZpnxfWAoJLw=;
 b=jB7Y59K/i0ff5NDe66xpvMJ5dVOzJOoX9na2JlHgQB/MajW/LefhCsQ6ri8Z2QcAT7aLmJ/6yP4fSwEDsINbrvnMoxeCgOImCOKfeBuWcf0jpZJ1/g6GNkaXKazqPCDSZ85PMbZVBInsrtFX5A/6sMSnHKWcnO01Krfl0QEhV1Ke9eh0odS3stNOhKyGcmQdM9bf2T3e0eV0V38sFzJDTPfvqLT+to/xG4yQKL4spaehobQvA/R69jJvkquQnySd2XB9qezmZpxqti42R8t0Xia+YYwqMAqtAcozOFxeK36+2Gg0VG9Q3E8gkp4k85igZRyP4iqezPLGr486l6Tjqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IMzkuZOpEKpoxZgn5q+8GEbSBOd2svyXZpnxfWAoJLw=;
 b=nEuz7LlKVYKESaF+TM/nIo+9an2Oo8zTnVukzeytpllM0C9HyRihsjKzXMGpm8vspNSdP41+CJXN9y/YCE0rA1as13hLWsvPpV49PVNpV1SFj8iBaE5pgVI7mbtLEuiyTOU3P/6P1Sl1vUKgrHxhWj1drFM+gg3mQfJtLjWUGP0=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB2268.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:39::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.18; Sun, 16 Aug
 2020 16:45:48 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3%6]) with mapi id 15.20.3283.027; Sun, 16 Aug 2020
 16:45:48 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Incorrect data from usrp 2955
Thread-Index: AQHWcybNOTailyD99kmbADMt8WJI1Kk5hQWAgACW7GuAANQ9gIAAAHiP
Date: Sun, 16 Aug 2020 16:45:48 +0000
Message-ID: <MA1PR01MB2588632D2A24063E8E4E1F22905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F382FA9.60900@gmail.com>
 <MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39604D.6030303@gmail.com>
In-Reply-To: <5F39604D.6030303@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.154.85]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 58b9497f-c6bf-46ef-19e6-08d84203d43d
x-ms-traffictypediagnostic: MA1PR01MB2268:
x-microsoft-antispam-prvs: <MA1PR01MB2268D95BF83533039803F227905E0@MA1PR01MB2268.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k4wjsrh1dsmRZJNIX3a4ERv/q2pXOC0J3mSti8lsDNQBaWJCCga5pSPfZc5dIyU/1vTZnO1ox+TV6uV9SGO7KVN/3VR6HiepYYYR9BuQL2w/m8j4eHaVxaPT89HjZ/nGq5vBPHAK7nR/NQu7AcVUTU4XkbOaRmx0vMQkkrhg9iCxi/gHfIdrWLGEpHNPK+nJeXw8ZwmXmMAJC9vEsg0TRJWaHRPFhhaKFx6oUIwmux2FByAAUn+EBH5a0KoMAOclo45PWKiUI4paXI3JqJLoPBTIYpXwhiQE2TnAzk7WPf989ZAlsUzaYvBKGO//dZ8BG6N+udbkAnaCVerHQ4ffBHarRso4uAR87RClbyKJK4KtqGc92gniVzBjzdqbmQs+ynkuHULUixKwfJnmJZvyYw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(346002)(366004)(136003)(376002)(39830400003)(396003)(186003)(166002)(316002)(26005)(45080400002)(8676002)(8936002)(86362001)(966005)(66946007)(55016002)(76116006)(7696005)(478600001)(66446008)(64756008)(66556008)(66476007)(33656002)(52536014)(5660300002)(6506007)(9686003)(83380400001)(53546011)(110136005)(71200400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: QwfTW08L8KjpzELEShgnSvQ5IR3Ka8d1FIAiG25Z07bnyf5soc4z1fm0fs6OoYr4rIYD9Ynq8fXDh3tEcgadMii/HQcLCM+oh336vC73JMgMIVmTe6mEdpKeyWr25mjPcYSOAB/pabPJkR2AaqHG4nw2teSQ5kWg3PYmMOVZAuleue6Cmba6L+Hv47FYdF5JtllMnKeC131iWAuN0oDwVCHSNGOUoli1TElDCtx7zxrOfXT/69mtcqnUWlv4ld4iLnQEfhRjfkfGOd2Hm1uiSwtcd86XlswegggUKwlIi1/Oirov0jid2vKg4TxnxpytJEenat5yRS0VM+9GylLkRN2n75DGPHv3LrAkl7ZXxGpLhlvP8vaSgQGamQBTzMJjOd9pAXhUG3++2hHHE4UyW7yiZCoZrYFkwR6qe4k53zudoHZ6S8s5a8/rp4TZKcvOjUMnpB59afIMiEjw/6xDo/vr+Zep8CLW8jdlypkEjWiscbKaOyvdebh+LlWqS8QH9jqCzTwQdwetJP4/zv+BfUM1D9cDXT9VsB06y5bI7fPjtAXgQ01kc635TDhBQIKbSmE0hrwRyn3t7xbOiBQS1A8sTrsP7P1QFNwVtJ6mPZ/+36qCe83S7+EiPl6vf+s3NvLZlXJZe9iGARYUpmkzmA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 58b9497f-c6bf-46ef-19e6-08d84203d43d
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2020 16:45:48.4185 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d63b1REEW6L+t060iQQXJ3KoWynwlN9A3jvdzmnfEnJo+HkSvKXS7xKDYvoKl6slRDrxqOOJO30B3c/djln+nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2268
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
Content-Type: multipart/mixed; boundary="===============6699583093175548381=="
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

--===============6699583093175548381==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588632D2A24063E8E4E1F22905E0MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588632D2A24063E8E4E1F22905E0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

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
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Sunday, August 16, 2020 10:05 PM
To: Koyel Das (Vehere); usrp-users@lists.ettus.com
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




--_000_MA1PR01MB2588632D2A24063E8E4E1F22905E0MA1PR01MB2588INDP_
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
<div dir=3D"ltr"><span style=3D"font-size: inherit;">the phase difference b=
etween two channels of USRP as a function of frequency and time,&nbsp; when=
 measured by splitting the same signal and feeding two channels of usrp,&nb=
sp;are wandering around wrt one another which
 was not happening before. I had given demo more than 30 times based on thi=
s principle and tested previously more than 50 times and I got correct resu=
lt every time. Now only suddenly it started happening. The frequency is 2.4=
 GHz and bandwidth I tried from
 1 MHz to 100 MHz. Previously the whole bandwidth was showing similar value=
s but then suddenly started behaving abnormally giving near to correct resu=
lt sometimes and sometimes junk.</span><br>
</div>
<div dir=3D"ltr"><span style=3D"font-size: inherit;"><br>
</span></div>
<div dir=3D"ltr"><span style=3D"font-size: inherit;">Regards,</span></div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
<div id=3D"id-d2ed923a-74ce-4157-8a68-f15a06251364" class=3D"ms-outlook-mob=
ile-reference-message">
<hr style=3D"display: inline-block; width: 98%; font-family: -webkit-standa=
rd; font-size: 12pt; color: rgb(0, 0, 0);" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif"><b=
>From:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, August 16, 2020 10:05 PM<br>
<b>To:</b> Koyel Das (Vehere); usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3DWindows-1252">
<div class=3D"moz-cite-prefix">On 08/15/2020 11:59 PM, Koyel Das (Vehere) w=
rote:<br>
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
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Calib=
ri, sans-serif" style=3D"font-size:11pt"><b>From:</b> USRP-users
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users-bounces@lists.=
ettus.com">
&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on behalf of Marcus D. Leech=
 via USRP-users
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:usrp-users@lists.ettus.co=
m">&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Sent:</b> Sunday, August 16, 2020 12:25:37 AM<br>
<b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp-users@=
lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"moz-txt-link-rfc2396E" href=3D"m=
ailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div style=3D"background-color:#FFFFFF">
<div class=3D"x_moz-cite-prefix">On 08/15/2020 01:16 PM, Koyel Das (Vehere)=
 via USRP-users wrote:<br>
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
<div class=3D"x_ms-outlook-ios-signature" id=3D"x_ms-outlook-mobile-signatu=
re">Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset> <br>
<pre>_______________________________________________=0A=
USRP-users mailing list=0A=
<a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:USRP-users@lists.ett=
us.com">USRP-users@lists.ettus.com</a>=0A=
<a class=3D"x_moz-txt-link-freetext" href=3D"http://lists.ettus.com/mailman=
/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listin=
fo/usrp-users_lists.ettus.com</a>=0A=
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
</body>
</html>

--_000_MA1PR01MB2588632D2A24063E8E4E1F22905E0MA1PR01MB2588INDP_--


--===============6699583093175548381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6699583093175548381==--


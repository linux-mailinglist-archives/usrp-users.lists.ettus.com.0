Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2597224589B
	for <lists+usrp-users@lfdr.de>; Sun, 16 Aug 2020 18:47:43 +0200 (CEST)
Received: from [::1] (port=45520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7Los-0000t3-4E; Sun, 16 Aug 2020 12:47:42 -0400
Received: from mail-eopbgr1390129.outbound.protection.outlook.com
 ([40.107.139.129]:21266 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k7Loo-0000jI-4F
 for usrp-users@lists.ettus.com; Sun, 16 Aug 2020 12:47:38 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X9tMoSdrkvYd4JebGU/PDIe4GgVp7ZhNTLONoD09bM0WpTyoahPJn7liT3Cb/9tMYuNeDaU2lbwkc4o5zkbc9DMWtGwSf3tLic9lMOF6tYfJcpZ9OYnFeO77U8GwjWh1dY+W8QajNjHu3A4GrTa/icRB+opX/1T9U5qquYjYnaY5RKfNFaQLMX1VndH345XV36bVQwDFOR2tzvhi76+RtKIpZGDYDU9WYeO4U4e0CbKAkdXI1jpmJ8DuIgQAoioSIcDlvGqmN7qNwLFnJSpK7kToIw2zmH9B+dpNcghC/Fh7amcFHc02woICcuZOEm6lx8R90pXa2p6RcyA6z+ncPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5cciD8S3nNnqjR/cfAFDfFhcTmG6FqxePzvDTLVqmuk=;
 b=SDiu4xjY7aKotaGOAS/qnk4BzZFjEvdq/b9fBofyR7IetuQaTl0q5HLHLL04jNz0JgPKAIM4lcIyy7bAiAUts0RQELLnCp1jxYiYE3cWMx+INQt5iF4if4bB4Pq76OUGrmWMehyLBd5fCz+0uboAilAibziGn6aNmkg2x3OMYL2m1G8z6x9kDj+udC+ALiP28+Tbet+evzHHnHMKzMBNsVDEPq67+nTw4o0K+CBL3b+s1NRRCdayOiSo/ecxIx7I2pMKi9JH/jWmydoNHCGKA1mUI5DlyvFicmqD6PNGJcJmDjIftbwEtkkVRFSAG4jC7XwZqWmjrh+iTQ/1o8p46Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5cciD8S3nNnqjR/cfAFDfFhcTmG6FqxePzvDTLVqmuk=;
 b=ZjaOaz4DgU9T6QDJq+fPn6yy2yjRgAg3nTqnbD7FBtvbGjLC/0v/3srfqDxIyT8eAjqErdPC1zMZOzJs7RhMtEp+4oVIp4Se11puCIyYXt6Y5xovUSiHmvTn6jiVDJ/MNI+35F/2KrmgPLgm5DuiFL4/UWaFI1o2foRfYRUduag=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB2268.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:39::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.18; Sun, 16 Aug
 2020 16:46:54 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3%6]) with mapi id 15.20.3283.027; Sun, 16 Aug 2020
 16:46:54 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Incorrect data from usrp 2955
Thread-Index: AQHWcybNOTailyD99kmbADMt8WJI1Kk5hQWAgACW7GuAANQ9gIAAAHiPgAACmfU=
Date: Sun, 16 Aug 2020 16:46:54 +0000
Message-ID: <MA1PR01MB2588B859845EA8B4E4FB4477905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F382FA9.60900@gmail.com>
 <MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39604D.6030303@gmail.com>,
 <MA1PR01MB2588632D2A24063E8E4E1F22905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MA1PR01MB2588632D2A24063E8E4E1F22905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.154.85]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 107ed6ae-6a6d-4343-e69a-08d84203fba4
x-ms-traffictypediagnostic: MA1PR01MB2268:
x-microsoft-antispam-prvs: <MA1PR01MB22681553B7E4BFD34A15C268905E0@MA1PR01MB2268.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UX+dz3Xd/fj4LirD1yghzudfGLfGheE15Rjz48Yt4W/44V/h3O/rqX346RtI6A8CfH/O2VG52uyef0B4zcD3J7qF3tB+Xe8zRIcF7kY2rWwHVCPvbz7UepSYPKrRRDz4dT12TNHKGEQ3rCmJc4RsrQkIV4ZGr7/JPzgPmaxlmNZ+Ba6XezfkIJ/nxxnATuN0I6zGtBUTcnUxpSoSsl5yXIm+fiOCqhLH8U0TJ2PaIgDBxZ9kPmQUtdzxb4wepDVe1ZrbkvJ8OOwD5T/hTvegxTYnhkk4PcVrWs8q8x/lN/fhkEO4DCvRABRFW9mf16f5pwtCWTbxUdWnKCqHw0wt0eMdqr/I+g5rrXWwvW+l5eZrQ8+4iOlEadwL+82vFjsvGxiCtmIDCcATuYd8jAjGRw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(346002)(366004)(136003)(376002)(39830400003)(396003)(186003)(166002)(316002)(26005)(45080400002)(8676002)(8936002)(86362001)(2940100002)(966005)(66946007)(55016002)(76116006)(7696005)(478600001)(66446008)(64756008)(66556008)(66476007)(33656002)(52536014)(5660300002)(6506007)(9686003)(83380400001)(53546011)(110136005)(71200400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: eiXIQmrxJI9Gkn4viBkwDCHQ3LklKe+00Y+hSkMDtJjkAAhsWahyYM/GbxskAKvkmfWFQZ/y9yzzx1p/+t1l2CwxOzdC0Lw8ZO9M9sczGz6ZwxXtsYrjvelGTzqU59mX2dujIkOi6SHY7K/b28lyY7m46ITU/AMEefNX4xlhcGGsqSYLOWPVw9zQM0wDSzjn1GAhyhje13sjQQDKbyd5AvVuhPLSk9gDlISLQdZ9AoBMbzWHjvjDoLzgJP7HzoQJeObP14bLuP1oAmwRsscMxwS3qRdOiTFB+QwhmDuSOL3nuhuL1MFjI+SSeE1ji6bGoeJdCFdek4EBBkEuRqiUXCsVPpOTY8LBED0B1LptL95GNvUcSSaKH3Uhm3WwAS1ZP5Ck0trT+HbPlysFntpd5n5oZeJvI6okRPyRU35wEVkir0Fb7W0wBU1CtUmXaG+T48E0ldFCpDq+man9r6Ma5dHMYf7dHMv7VqF5qQ2J5p4KAwOjyFAlBOGdaBnlgt5dUhSSsJ4xmkssp5RTqmTxzQBiQX73yEtR1n+k2fc6Mr0+91jCM2zBvN8+SawR9b6bkPGCl39YD99NyAAc1w5Nbr1AaV+wAwjohRvCRmoGeo2yF07e/BQ3KMZ/aLwrcaWgcblzo9bGRI1eydkkEQ5qAg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 107ed6ae-6a6d-4343-e69a-08d84203fba4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2020 16:46:54.5949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rmmrm1tsZc02WRF6a6ORkKdz7Xljp3IZANiRCwR8gBFer6vcx6kYI6LKO23sMDLMS8bZ1oaAChOQrO54dL/auA==
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
Content-Type: multipart/mixed; boundary="===============8299203814246914407=="
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

--===============8299203814246914407==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588B859845EA8B4E4FB4477905E0MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588B859845EA8B4E4FB4477905E0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

The measurement is not initial phase but the phase difference between two c=
hannels

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Koyel Das (Vehere) <koyel.das@vehere.com>
Sent: Sunday, August 16, 2020 10:15:48 PM
To: Marcus D. Leech <patchvonbraun@gmail.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
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




--_000_MA1PR01MB2588B859845EA8B4E4FB4477905E0MA1PR01MB2588INDP_
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
<div dir=3D"ltr">The measurement is not initial phase but the phase differe=
nce between two channels&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Koyel Das (Vehere) &l=
t;koyel.das@vehere.com&gt;<br>
<b>Sent:</b> Sunday, August 16, 2020 10:15:48 PM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div></div>
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
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif">=
<b>From:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, August 16, 2020 10:05 PM<br>
<b>To:</b> Koyel Das (Vehere); usrp-users@lists.ettus.com<br>
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
ibri, sans-serif" style=3D"font-size:11pt"><b>From:</b> USRP-users
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
</body>
</html>

--_000_MA1PR01MB2588B859845EA8B4E4FB4477905E0MA1PR01MB2588INDP_--


--===============8299203814246914407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8299203814246914407==--


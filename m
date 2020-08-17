Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C29D6245BA5
	for <lists+usrp-users@lfdr.de>; Mon, 17 Aug 2020 06:38:02 +0200 (CEST)
Received: from [::1] (port=50194 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k7WuF-0003c2-Dl; Mon, 17 Aug 2020 00:37:59 -0400
Received: from mail-eopbgr1390134.outbound.protection.outlook.com
 ([40.107.139.134]:61253 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k7WuB-0003XN-D1
 for usrp-users@lists.ettus.com; Mon, 17 Aug 2020 00:37:55 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HnX8HbgrFJZf4Ksnm+Sd67rh1ABcvd6FMTluAeuv92clzd+FuTj22dN1xitoiTK0ZvU687V1JXQD8EZ6sNRQDQRGXjRAZ/Qh8anM9oa2/yXtalFj6WLqpevCZ7ULbOiJ9MqmRzaWc2W22Cdemp6iGyuo+tKsKi9Wop65xn49m5QoHnPovWFRy6QpSloRlRpTXT9vKHHrBmBUKddk9c96iMsf6KH76phQMpncChI8DxCnv1BIwnQTHEKRN18XCh17AyKUOMIqRP0wH7VMfY+8k0feSmxCEjE5lMZimTowZgyuhmTxzn4rN79Xkc57+luQ1aEkBmfEv/6fYPSazzAqEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1xZT1XjvSFc+VmgvR4MvXlVqeR28fYgBSNcLP3zIWUY=;
 b=OK7OEwZKZwVCStghb0rLeY1mhdW3VPTJfkg3JvyfVHJuRCS3hx+gxxVFO5/QMSq55nzAlm50aC19d5APcRKN9zKgA62DjquVeI1RV6dyHfDYpEuQNMt/7c3ViFfLF/8lQU41G2+X53DsT2WDm9OYYWP7kEjkerff1N+WWk0lwPd2I9zoxGPl2IzUOq0aMC7/q1Zw3hLo0qmSCGq6VmI3fRQWu8m9lBe/osI0koxLM0l30qe7XDHyOyAf0BIvkdFnhyMezSYaYeRuN2yX3BREaqEJsIuEsN/qr/9qMKM2NioTA/b4dJS0Xjm927qbRSMDHXXF6cYnf/HXNmA1C8zv+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1xZT1XjvSFc+VmgvR4MvXlVqeR28fYgBSNcLP3zIWUY=;
 b=l0F3c7KP9dj8D06fi/ri3Mks4R4eMBW5yzxBwy52NQu1LNwpBOTnEM+yFeaD5xQTkYmxHdPAUwxH4BFlRnjrCe7FL1JWs1tHThZhMhl/NMfA1JtdKf78EXdayuDwl9oVZ6iJ+S2rEjMsJtSvLpEiLKa6A7tfC6R14AvP9oI4nvk=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB3578.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:7c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.24; Mon, 17 Aug
 2020 04:37:06 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::c050:8571:1b47:feb3%6]) with mapi id 15.20.3283.028; Mon, 17 Aug 2020
 04:37:06 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Incorrect data from usrp 2955
Thread-Index: AQHWcybNOTailyD99kmbADMt8WJI1Kk5hQWAgACW7GuAANQ9gIAAAHiPgAACmfWAAAZ4gIAAADeNgAADg4CAALwlEg==
Date: Mon, 17 Aug 2020 04:37:05 +0000
Message-ID: <MA1PR01MB2588A12BD3A661DE22EABC31905F0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25885B004EA06FFE0C1B69DC90410@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F382FA9.60900@gmail.com>
 <MA1PR01MB258848062639094C9A33858A905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39604D.6030303@gmail.com>,
 <MA1PR01MB2588632D2A24063E8E4E1F22905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <MA1PR01MB2588B859845EA8B4E4FB4477905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F39684D.1060702@gmail.com>
 <MA1PR01MB25882A435C92F1F1BBE5DF2E905E0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F396B6D.9080001@gmail.com>
In-Reply-To: <5F396B6D.9080001@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.155.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 52a10a51-aa8b-4d9c-45c3-08d842673205
x-ms-traffictypediagnostic: MA1PR01MB3578:
x-microsoft-antispam-prvs: <MA1PR01MB357865100110D1588CEA8E39905F0@MA1PR01MB3578.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PK11ov7tpWoj9egGYSyBwI+9jMGtiCy1jX29wlm5UHGXakKRPjk3DhRns47wbiPUPOgY5ULqZQ/9JfpQZGg6bFJ9bYDX4nFSl8bJdBvaNUZuikuGKOWIKaEnXRGPJTZ915EgNTbxQ5m4EzLCfmwtWLZYFaL5je5dpKlNLkSCCwc9Y9XqplVInte94CUGfLHXKzV/knPVTdHkrF3lezIXT+OmkeMD0+aPLrf0Ad6ZdNJap2lrr6q5C6kmWu3NouDhKCwDhY6Y3zRck7MhrxFgp5t0LCQB3lES7kcKQa4QV/LpuDKNqYqcgBBG9hn0l9SrKYBgExhcagYeU7gEnvQd16sWzqgQRXGIDALWxpaLNsKZ/zUueooA+nHBlOu96IvGX5qMFdaI45oalCC5+9Ug1Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(136003)(346002)(376002)(396003)(39830400003)(366004)(8936002)(8676002)(2906002)(110136005)(316002)(9686003)(478600001)(45080400002)(966005)(86362001)(55016002)(76116006)(66946007)(66446008)(64756008)(66556008)(66476007)(33656002)(5660300002)(52536014)(7696005)(71200400001)(166002)(83380400001)(53546011)(6506007)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: Y6GRoZ3lJTcacNlHFQlY5jzyEIZA3LFHnzpIRDViRoSuaNdzF3h+N+UFIu48kgi3kBxtc8+LeZWDTq0SfCPFEMnjm6awwCVcTRM7hWSZ6HexZCKvKz3OOe2fCrsWm3hmeD7C7rl2fecOEIAWVzuns4vosD3CFEzHEFPW/2TIMlRID8WV+OL+1BuMOaoqLsTb/FtGPSxxYB4oY+wzkuNNsEM1CN3yW8UEAGDMg6/7EY44vY/rb4FlN8BMYQz8wb7/uMXobbAM4bG/cfJGLDT6j7YEC9azHAHSKEO5wOIxYPyJV7rTP6pBf6rb1HTulhRpw/3xs5tCJd0lRbMR+sXYTELzo3rTIaM8wpRNHbJQ7bT9K2Q7z5ykp4FUDmdFNnPgtSuaQVkxXS/y7PZJxcNjWJ7xsCnEZdjNW2B4VCqtcQMbpyIU2GaMLYmorCAuTjudqaFxohMM0CNawUcacIlSpzwCkrxxBFtp4y5gK+ElLw71rPlgsIscctaMqcWiDaTGFwmJFAlKlKasPrQKWKUTDNWKp7oWnTS7ZqXe1uNKlq+hBvKtmUnz4PJD2a54+Bn5iuE1lYH89IspldAG3QpXLwBG8gdAKLOJaAbdDi8N2YJFkhstwGiGejhPZy/kdxAVZT4gdO6OypnnOXvAiu/v9w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 52a10a51-aa8b-4d9c-45c3-08d842673205
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2020 04:37:05.9067 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8PbVqWSDJBNhTgSQwl2/6YYwOMFukxy13m5KKrVgII1QHpm5JByGb9ozYR4+O7dGq/OMIov3h1sKXgb+ZMIMXQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB3578
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
Content-Type: multipart/mixed; boundary="===============4685640683494294130=="
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

--===============4685640683494294130==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588A12BD3A661DE22EABC31905F0MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588A12BD3A661DE22EABC31905F0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Ok Marcus I will try to figure out if individual channels are working fine.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Sunday, August 16, 2020 10:52 PM
To: Koyel Das (Vehere); usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Incorrect data from usrp 2955

On 08/16/2020 01:15 PM, Koyel Das (Vehere) wrote:
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
Yes, I fully understand that.  I'm simply suggesting some simple diagnostic=
s to determine whether, as individual channels, the receivers are
  working correctly.


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Sunday, August 16, 2020 10:39 PM
To: Koyel Das (Vehere); usrp-users@lists.ettus.com<mailto:usrp-users@lists.=
ettus.com>
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






--_000_MA1PR01MB2588A12BD3A661DE22EABC31905F0MA1PR01MB2588INDP_
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
<div>Ok Marcus I will try to figure out if individual channels are working =
fine.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature" id=3D"ms-outlook-mobile-signature">=
Get <a href=3D"https://aka.ms/o0ukef">
Outlook for iOS</a></div>
</div>
<div id=3D"id-605e9ec6-33cb-4fce-8630-166096f685f2" class=3D"ms-outlook-mob=
ile-reference-message">
<hr style=3D"display: inline-block; width: 98%; font-family: -webkit-standa=
rd; font-size: 12pt; color: rgb(0, 0, 0);" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif"><b=
>From:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Sunday, August 16, 2020 10:52 PM<br>
<b>To:</b> Koyel Das (Vehere); usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Incorrect data from usrp 2955
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3DWindows-1252">
<div class=3D"moz-cite-prefix">On 08/16/2020 01:15 PM, Koyel Das (Vehere) w=
rote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
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
</div>
</blockquote>
Yes, I fully understand that.&nbsp; I'm simply suggesting some simple diagn=
ostics to determine whether, as individual channels, the receivers are<br>
&nbsp; working correctly.<br>
<br>
<br>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div></div>
<div id=3D"id-add88a81-197d-43fc-a088-cb38d9d34fbf" class=3D"ms-outlook-mob=
ile-reference-message">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%; font-size:12p=
t; color:rgb(0,0,0)">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri,=0A=
              sans-serif"><b>From:</b> Marcus D. Leech
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com">=
&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> Sunday, August 16, 2020 10:39 PM<br>
<b>To:</b> Koyel Das (Vehere); <a class=3D"moz-txt-link-abbreviated" href=
=3D"mailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
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
<div dir=3D"ltr"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font color=3D"#000000" face=3D"Calib=
ri,=0A=
                sans-serif" style=3D"font-size:11pt"><b>From:</b> Koyel Das=
 (Vehere)
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
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif">=
<b>From:</b> Marcus D. Leech
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
</blockquote>
<br>
</div>
</div>
</blockquote>
<br>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB2588A12BD3A661DE22EABC31905F0MA1PR01MB2588INDP_--


--===============4685640683494294130==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4685640683494294130==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B101F2FEEEF
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 16:35:37 +0100 (CET)
Received: from [::1] (port=48828 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2bzh-0006lh-Oi; Thu, 21 Jan 2021 10:35:33 -0500
Received: from mail-mw2nam10olkn2036.outbound.protection.outlook.com
 ([40.92.42.36]:30272 helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <e070832@hotmail.com>) id 1l2bze-0006h1-5o
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 10:35:30 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xj+atY+Usf8BzUqQZEgxIpylXLOY5ZohS0nt4HFkwYpAR47kUpXU0aSZAeAxeNokOxPq+83nDv+7OSvCv44BllP0x8S3WUtd1zi/KvX7GwASaoNcQKdOQP9KHxjgXsBLDfFLa8Ecneb+AW/uK+CPVsvM2zF/5dOd2DJ54z94MGfF/oB+QLo8KGQ/kKv3pBqSX/Dl/96i6xjhq1HJn8dcDBKqFIWeEfVdnFOSoOGAnd7y8QQpmLJElnSD9NqmjtSbDKfpwiI1xEh5qcsw1oDxxiTf72602d6bAsHbOgmKIzGrsKnoYgUtwmYYuIlazRdz/5xcGedAd8rwoYoPMpZ3Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vkGV/cBjVh3GsNZd60/Qg9WO8NUDHmhfgKPyo1zplw=;
 b=QfZueCBV8SYm19NpbfiHMT6cI6aUwgBw1V6jhGn2lQ3BBhhUaeI9zA6iOKgiDdbzQcJ9YyTvh+yv7rXxNewIOjSevhu5Z7my1Mg9bPGVT/TZVxrjR1VsHvN5g9clFm3MpS3U71eI+Gawf4hsF4E1DyJdPfMpBhJ1otSHaxBSycYM9PW41kpey7QoFkrbKoFUkL21q8POxMNVyYW0LWoRI58nVLi/bTfdkLUPl8gFZIDUKBo0HX5Oi8K6O50R4CW8YmPkNIL4IPieX/NNt99BqvF9ol91Ux3JPphEE5YDZHLp2ZomqmBzP6SYlieoBAGQyJmOW9VkSibff4nFR/NlOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0vkGV/cBjVh3GsNZd60/Qg9WO8NUDHmhfgKPyo1zplw=;
 b=uimb0g+3jxjw2XJjBoPViW1Vvs1dXj8f68a6oOorji/tuHUDmkoR0c3AkYvKyD4fs9Tt73nwNeeL0z94esLGhOs3NS3MLKMRLFngMixm9rHzdhoKknETGAOMiYgsED4vKNhxTNEtz+PlCO25vXWHbZalodP2ACas237IG8yVEXZkvzLyMKIlNOaj84r8LkYntAHGYdZl1mR8tpKG73N35PDyXNG0DWcIkxZH8BMvHuQCVDUoeyNVfuAOOkqZ08BDRLMmuijj6XxQuJvrfis7l8BHDCg0vGiLMP2/xUv4HXA5F5QL+DYMcavxS1VYXvn1gw/XwXfpOrhkvQcrGBZIoA==
Received: from MW2NAM10FT004.eop-nam10.prod.protection.outlook.com
 (2a01:111:e400:7e87::44) by
 MW2NAM10HT049.eop-nam10.prod.protection.outlook.com (2a01:111:e400:7e87::143)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11; Thu, 21 Jan
 2021 15:34:48 +0000
Received: from SN6PR1901MB4688.namprd19.prod.outlook.com
 (2a01:111:e400:7e87::51) by MW2NAM10FT004.mail.protection.outlook.com
 (2a01:111:e400:7e87::428) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3784.11 via Frontend
 Transport; Thu, 21 Jan 2021 15:34:48 +0000
Received: from SN6PR1901MB4688.namprd19.prod.outlook.com
 ([fe80::8961:3c2a:dd3a:3910]) by SN6PR1901MB4688.namprd19.prod.outlook.com
 ([fe80::8961:3c2a:dd3a:3910%6]) with mapi id 15.20.3763.014; Thu, 21 Jan 2021
 15:34:48 +0000
To: =?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>, usrp-users
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
Thread-Index: AQHW8ALyB/1PoI1sxU22uloXxNssy6oyLdiAgAABoxU=
Date: Thu, 21 Jan 2021 15:34:48 +0000
Message-ID: <SN6PR1901MB468884AC8FAC5C9476CC6678A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>
References: <SN6PR1901MB46884B4D0EBC22B0D4F7CF08A4A10@SN6PR1901MB4688.namprd19.prod.outlook.com>,
 <6c457450-6f9e-892b-ac53-5ea7956b7f0b@ettus.com>
In-Reply-To: <6c457450-6f9e-892b-ac53-5ea7956b7f0b@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:C700CC829A94418E1BCA5893A1A0057205950F7A017E21E11DAF9EFAAFC958FC;
 UpperCasedChecksum:AA85CBBD275196C10206FC6A40F8351D9FBE2D54DB7C5FEAF29577AF22E011DD;
 SizeAsReceived:6996; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [K0wPtenvUs19EA4xPiALiWlfSVce6Bll]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 630c85f4-7712-4208-4399-08d8be22166a
x-ms-traffictypediagnostic: MW2NAM10HT049:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yppLKJO7lSaC7D5s8qxdC3qdr/GXGx9UlKlL45rygxKUeo1Jp32Hx29Y7xi4SXspkoQtgI7/ppXKynLuwGf0odOtqmEQ6/AlzE9sRd7nhkI2QaUIILX4oq+onZIHDAZbJqNqbQdWWVArOh1XS7nBOe25tEghA5sJNeUEKFXyFkrBC4PdDOZ8rUbrUNIv2QS7lFiBB6vv1X2pgvfU87T8SpOSLlvx3/G8CJf5VxGDTrH2Y/MFFYMGCSOoy19bx9dIQax7bg3Zdb2rFBRjWvPCjWQgKrJYdVxU9PyT1r415CI=
x-ms-exchange-antispam-messagedata: hhVzThJm+pXrhw3vtm/YIS4IZfYPEj5hRMw+oxKvmcKlmOvf01oHfuKLJFsRQwk9xxVxL9jCJO5M0NDq4lwDdo0UIGyYX7UOg4k6yXAz6b9EGD6B0D5Phjbk0WKYsJ0EH0Ork7sWfOFr/fywggYTAQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: MW2NAM10FT004.eop-nam10.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 630c85f4-7712-4208-4399-08d8be22166a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2021 15:34:48.6923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW2NAM10HT049
Subject: Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal
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
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============7484993685825601573=="
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

--===============7484993685825601573==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR1901MB468884AC8FAC5C9476CC6678A4A10SN6PR1901MB4688_"

--_000_SN6PR1901MB468884AC8FAC5C9476CC6678A4A10SN6PR1901MB4688_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks, Marcus.

Of course, I forgot the important version information.  I'm currently using=
 v3.7.13.5.  We are also doing some RFNoC work, which we had some issues up=
grading a while back, so we were holding off until it matured more.  I'll a=
sk our team if they want to try and upgrade to 3.8 again.

I'm sure my description wasn't clear, so I'll try and clarify a little bett=
er based on your feedback.

I created the Random Source, and it is sending approximately 10,000 samples=
 to the UHD USRP Sink as one message, with a tx_sob at the start and a tx_e=
ob at the end.  My thought was that the sink would not transmit anything un=
til the EOB was received.  The way GNURadio seems to be running, I'm gettin=
g [noutput_items =3D=3D 4096], so it takes three calls to the work function=
 to deliver all 10K samples of one message to the Sink.  I only want one bu=
rst from the sink of those 10K samples.  What I am receiving seems to be th=
ree transmissions that make up the one sample.  The length of the three tra=
nsmissions seem to correspond to the value of noutput_items I was seeing.

The mention of 100 ms between bursts was only indicating how fast the modul=
ator was being requested to transmit a single message.  So if I only reques=
ted one message, there would have been one group of three signals seen in t=
he Rx signal.

Hope that clarified what I was trying to convey a little better.

Regards,
Jeff


________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Thursday, January 21, 2021 9:06 AM
To: Jeff S <e070832@hotmail.com>; usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signal

Hi Jeff,

which version of GNU Radio are you using? Judging by the looks of your flow=
 graph it's the
(now legacy) 3.7, but *if* I remember correctly (it's really been a while),=
 the SOB/EOB
functionality appeared *somewhen* in 3.7.x; it might be worth trying your e=
xact same
application in GNU Radio 3.8 (or 3.9).

Conceptually, it's important to note that after tx_sob you need to supply t=
he full burst
of samples: I think you're doing that, but then again, you say you get thre=
e data bursts
100 ms apart, so I'm not sure about that, to be honest. The USRP sink can't=
 guess that you
want three bursts of samples to be sent as one; it starts streaming as fast=
 as you supply
it data after the SOB, and will tell you you're late or too slow at supplyi=
ng data (tG/U
printed to your console) if you don't give it 10 million samples a second, =
until it gets
an SOB.

Best regards,
Marcus


On 21.01.21 15:53, Jeff S via USRP-users wrote:
> I am attempting to use burst mode on an X310.  I'm generating a random si=
gnal from one
> X310 and receiving it on another.  My simple flowgraph is:
>
> I can see the tx_sob and tx_eob tags, set to true, from the time sink:
>
>
> where I verify that I can see the EOB, followed by a new SOB in the next =
message (both set
> to true, according to
> https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html
> <https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html>)=
.  But when I am
> receiving the signal, the message seems to be broken up into three differ=
ent transmissions
> instead of one burst:
>
>
>
> I'm transmitting a message every 100 ms, which seems to correspond to the=
 start of the
> three messages.
>
> Analyzing the modulator in a debugger indicates that there are three time=
s that the work
> function is called to build the message, which may correspond to the thre=
e messages seen
> in the signal, but I'm not sure why the tx_sob and tx_eob tags are not be=
ing followed.
> Maybe I may just have a major misunderstanding of how burst mode works.
>
> Any ideas on what I may be doing wrong?
>
> Thanks,
> Jeff
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--_000_SN6PR1901MB468884AC8FAC5C9476CC6678A4A10SN6PR1901MB4688_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks, Marcus.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Of course, I forgot the important version information.&nbsp; I'm currently =
using v3.7.13.5.&nbsp; We are also doing some RFNoC work, which we had some=
 issues upgrading a while back, so we were holding off until it matured mor=
e.&nbsp; I'll ask our team if they want to try
 and upgrade to 3.8 again.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I'm sure my description wasn't clear, so I'll try and clarify a little bett=
er based on your feedback.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I created the Random Source, and it is sending approximately 10,000 samples=
 to the UHD USRP Sink as one message, with a tx_sob at the start and a tx_e=
ob at the end.&nbsp; My thought was that the sink would not transmit anythi=
ng until the EOB was received.&nbsp; The way
 GNURadio seems to be running, I'm getting [noutput_items =3D=3D 4096], so =
it takes three calls to the work function to deliver all 10K samples of one=
 message to the Sink.&nbsp; I only want one burst from the sink of those 10=
K samples.&nbsp; What I am receiving seems to
 be three transmissions that make up the one sample.&nbsp; The length of th=
e three transmissions seem to correspond to the value of noutput_items I wa=
s seeing.<br>
</div>
<div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
The mention of 100 ms between bursts was only indicating how fast the modul=
ator was being requested to transmit a single message.&nbsp; So if I only r=
equested one message, there would have been one group of three signals seen=
 in the Rx signal.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Hope that clarified what I was trying to convey a little better.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards,<br>
Jeff<br>
</div>
<div id=3D"Signature">
<div>
<p><br>
</p>
</div>
</div>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt=
;marcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Thursday, January 21, 2021 9:06 AM<br>
<b>To:</b> Jeff S &lt;e070832@hotmail.com&gt;; usrp-users &lt;usrp-users@li=
sts.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] SOB/EOB Burst Mode on X310 Splitting Signa=
l</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">Hi Jeff,<br>
<br>
which version of GNU Radio are you using? Judging by the looks of your flow=
 graph it's the<br>
(now legacy) 3.7, but *if* I remember correctly (it's really been a while),=
 the SOB/EOB<br>
functionality appeared *somewhen* in 3.7.x; it might be worth trying your e=
xact same<br>
application in GNU Radio 3.8 (or 3.9).<br>
<br>
Conceptually, it's important to note that after tx_sob you need to supply t=
he full burst<br>
of samples: I think you're doing that, but then again, you say you get thre=
e data bursts<br>
100 ms apart, so I'm not sure about that, to be honest. The USRP sink can't=
 guess that you<br>
want three bursts of samples to be sent as one; it starts streaming as fast=
 as you supply<br>
it data after the SOB, and will tell you you're late or too slow at supplyi=
ng data (tG/U<br>
printed to your console) if you don't give it 10 million samples a second, =
until it gets<br>
an SOB.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
<br>
On 21.01.21 15:53, Jeff S via USRP-users wrote:<br>
&gt; I am attempting to use burst mode on an X310.&nbsp; I'm generating a r=
andom signal from one<br>
&gt; X310 and receiving it on another.&nbsp; My simple flowgraph is:<br>
&gt; <br>
&gt; I can see the tx_sob and tx_eob tags, set to true, from the time sink:=
<br>
&gt; <br>
&gt; <br>
&gt; where I verify that I can see the EOB, followed by a new SOB in the ne=
xt message (both set<br>
&gt; to true, according to<br>
&gt; <a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp=
__sink.html">
https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__sink.html</a><=
br>
&gt; &lt;<a href=3D"https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1=
usrp__sink.html">https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usr=
p__sink.html</a>&gt;).&nbsp; But when I am<br>
&gt; receiving the signal, the message seems to be broken up into three dif=
ferent transmissions<br>
&gt; instead of one burst:<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; I'm transmitting a message every 100 ms, which seems to correspond to =
the start of the<br>
&gt; three messages.<br>
&gt; <br>
&gt; Analyzing the modulator in a debugger indicates that there are three t=
imes that the work<br>
&gt; function is called to build the message, which may correspond to the t=
hree messages seen<br>
&gt; in the signal, but I'm not sure why the tx_sob and tx_eob tags are not=
 being followed.&nbsp;<br>
&gt; Maybe I may just have a major misunderstanding of how burst mode works=
.<br>
&gt; <br>
&gt; Any ideas on what I may be doing wrong?<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Jeff<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; USRP-users@lists.ettus.com<br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com=
</a><br>
&gt; <br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_SN6PR1901MB468884AC8FAC5C9476CC6678A4A10SN6PR1901MB4688_--


--===============7484993685825601573==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7484993685825601573==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C6747132F11
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jan 2020 20:12:37 +0100 (CET)
Received: from [::1] (port=37548 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iouHL-0003xj-Ur; Tue, 07 Jan 2020 14:12:35 -0500
Received: from mail-mw2nam12olkn2026.outbound.protection.outlook.com
 ([40.92.23.26]:33632 helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <e070832@hotmail.com>) id 1iouHI-0003sb-MG
 for usrp-users@lists.ettus.com; Tue, 07 Jan 2020 14:12:32 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MIUGle3yQ8/my9Oyxh9Wg3QnGwBlGndlJssexfLOI1ehUs7NCugcYWIVEtOsFBthYsYSeTO/l8qhox8DCYBXPGmjjt0W2RrjqSmwIoWZaGrvVT4BloI28PeID3x/v9aDc+egTx/wvZOwrPqEGmw4OKM9qVrTvTKRoipWw4u8aCRiq+tqnZ8JCVl7+UqlbsrtjwvFyhcdmnevXJYr15PPvTHFW2ODZWeg1an+aeH1ncRYq45Z0Yc+CZVWwAnP4Wdzq0DEoRpF8l60HZSkILBntRTQdZhPo5EGR6MWf3ulBi8Vh2WCwQleHYDDWnDe1yej2n73FtVaUetlabMYWX+SJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15OIujXoEA+bd8OWKLsT3+UBg9J5gHGpGcPugYHja18=;
 b=Hn0Dz7J9Beed+HZ/IMAef1zvQOpCyyrVljBEIwpT3m8qs2zpnVhgPWneRr1ZdksJ5aN++D5fahryBuT/DUyySwQVC7WxQp+r2PeNCyAqUGzc/odNJgFAM+UoIZVAH/jEvTrIkoYGy1VIins4WDVgphKYlDZ58CF1IJY+tLV4mS9B+TCpy0GKv5lhJ6P65Bz3GXnh4pDVIHz9EiimelYhGDtdvFTLvrxQs1RwG1vekHvg5bQDtrMPYxpm8snX1dj9jRFlECCrMM8Lzdt9fEUiGB1eOGQvdXjcwG7g9pDcKJc4YXoDvMbelRLg1yagt0uVHeBjy+BnUSmXSqg4jzZWsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=15OIujXoEA+bd8OWKLsT3+UBg9J5gHGpGcPugYHja18=;
 b=a2QxXN9Yt30uYmaNBtIaFLGIgBpw0wiECezfJwiv/NoOxHtLGYh7XTgs4FE+o7Dmj473Nbu1vYjuF5T1dtYmG4N8swqR9rjm1KW63Uq6G+fvpxpArPnUvuI188yX8wlmRyo7wENBFUevnt6o5QUljJ5m5XrLQWOuOWOfzypWfzy+1NWBWdVc2x3YX5+UA17ozGEzQGHOaXRZv60+jtzXdKlVdcQCUCqMRLvSTkcsNHEJlvOWPw66D/l6WdlEhs3Ofl1o+5tWAZkEPztvqyjF+EVwokqeBxc7FypY3f9KSzMO4GaFGg5nPuscLzuSneyXlJcrRiwvJ6opBIwquPlgHw==
Received: from DM6NAM12FT066.eop-nam12.prod.protection.outlook.com
 (10.13.178.56) by DM6NAM12HT081.eop-nam12.prod.protection.outlook.com
 (10.13.179.154) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.4; Tue, 7 Jan
 2020 19:11:50 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com (10.13.178.55) by
 DM6NAM12FT066.mail.protection.outlook.com (10.13.178.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.4 via Frontend Transport; Tue, 7 Jan 2020 19:11:50 +0000
Received: from BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::7032:41e7:a3a9:7125]) by BN6PR19MB1635.namprd19.prod.outlook.com
 ([fe80::7032:41e7:a3a9:7125%10]) with mapi id 15.20.2602.016; Tue, 7 Jan 2020
 19:11:49 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: X310 GPIO Ettus Code Example Question
Thread-Index: AQHVxY5PloyVeGnBCUeDk5Lr5lfpxQ==
Date: Tue, 7 Jan 2020 19:11:49 +0000
Message-ID: <BN6PR19MB1635EA176626D1A33DFA5CC5A43F0@BN6PR19MB1635.namprd19.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:7FEFB6EFD6FD24C7BCB7B5A7F7C51B3D025631928233CAE1D484BEB43B2A2FF1;
 UpperCasedChecksum:09A42BA744EEAF25900AA4A9168730954D8B9738EC56C0AD67B780033DAC4995;
 SizeAsReceived:6683; Count:42
x-tmn: [xILIQm0IQmliNyavQ3abuKstmQqQ2iz3]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: a79ec8a1-9bb6-4118-9e81-08d793a57283
x-ms-traffictypediagnostic: DM6NAM12HT081:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Huo46GZ5LfqG/xIIt+jwyW3dEkNTV/EjdE9THu7GAimqzMx5sn1FtUig7aAirH92MR0wTmOr3TLLbXpXohdi0fWcqGiqWPhYxJHhu9VbfjxuL8Lfvkbz64rgP8vevdXyCQdJ14vXKscGIu46ihk+0Vvni09E805ajpMoYIB8iku4s+Z1DVVGr699sCqT5n+jAM6Hzst6yT+mGC10IXFR6Y2+5ZhWraHa4xhL3/RobWo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a79ec8a1-9bb6-4118-9e81-08d793a57283
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jan 2020 19:11:49.5340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM12HT081
Subject: [USRP-users] X310 GPIO Ettus Code Example Question
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
From: Jeff S via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jeff S <e070832@hotmail.com>
Content-Type: multipart/mixed; boundary="===============4802924894153905869=="
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

--===============4802924894153905869==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN6PR19MB1635EA176626D1A33DFA5CC5A43F0BN6PR19MB1635namp_"

--_000_BN6PR19MB1635EA176626D1A33DFA5CC5A43F0BN6PR19MB1635namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Relating to the description of the GPIO:  https://files.ettus.com/manual/pa=
ge_gpio_api.html



Should the code example on this page, which has the following code:



// finally, let's set up GPIO6 as we described above

usrp_x300->set_gpio_attr("FP0", "ATR_0X", 0, AMP_GPIO_MASK);

usrp_x300->set_gpio_attr("FP0", "ATR_RX", 0, AMP_GPIO_MASK);

usrp_x300->set_gpio_attr("FP0", "ATR_TX", 0, AMP_GPIO_MASK);

usrp_x300->set_gpio_attr("FP0", "ATR_XX", 0, AMP_GPIO_MASK);



actually be:



// finally, let's set up GPIO6 as we described above

usrp_x300->set_gpio_attr("FP0", "ATR_0X", 0, AMP_GPIO_MASK);

usrp_x300->set_gpio_attr("FP0", "ATR_RX", 0, AMP_GPIO_MASK);

usrp_x300->set_gpio_attr("FP0", "ATR_TX", 1, AMP_GPIO_MASK);  // Should it =
be a 1?

usrp_x300->set_gpio_attr("FP0", "ATR_XX", 0, AMP_GPIO_MASK);



for setting up GPIO6 to be high only when transmitting?  If not, then I'm n=
ot understanding what the code is really doing to get GPIO6 to be high when=
 transmitting.


Thx.

Jeff


--_000_BN6PR19MB1635EA176626D1A33DFA5CC5A43F0BN6PR19MB1635namp_
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
<p>Relating to the description of the GPIO:&nbsp; <a href=3D"https://files.=
ettus.com/manual/page_gpio_api.html" target=3D"_blank" rel=3D"noopener nore=
ferrer">
https://files.ettus.com/manual/page_gpio_api.html</a></p>
<p>&nbsp;</p>
<p>Should the code example on this page, which has the following code:</p>
<p>&nbsp;</p>
<p style=3D"margin-left:75.75pt; text-indent:-39.75pt"><span style=3D"font-=
size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&qu=
ot;; color: maroon">// finally, let's set up GPIO6 as we described above</s=
pan><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;, s=
erif, &quot;EmojiFont&quot;; color: black"></span></p>
<p style=3D"margin-left:75.75pt; text-indent:-39.75pt"><span style=3D"font-=
size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&qu=
ot;; color: black">usrp_x300-&gt;set_gpio_attr(</span><span style=3D"font-s=
ize: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quo=
t;; color: rgb(0, 32, 128)">&quot;FP0&quot;</span><span style=3D"font-size:=
 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quot;; =
color: black">,
</span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;=
, serif, &quot;EmojiFont&quot;; color: rgb(0, 32, 128)">&quot;ATR_0X&quot;<=
/span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;,=
 serif, &quot;EmojiFont&quot;; color: black">, 0, AMP_GPIO_MASK);</span></p=
>
<p style=3D"margin-left:75.75pt; text-indent:-39.75pt"><span style=3D"font-=
size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&qu=
ot;; color: black">usrp_x300-&gt;set_gpio_attr(</span><span style=3D"font-s=
ize: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quo=
t;; color: rgb(0, 32, 128)">&quot;FP0&quot;</span><span style=3D"font-size:=
 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quot;; =
color: black">,
</span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;=
, serif, &quot;EmojiFont&quot;; color: rgb(0, 32, 128)">&quot;ATR_RX&quot;<=
/span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;,=
 serif, &quot;EmojiFont&quot;; color: black">, 0, AMP_GPIO_MASK);</span></p=
>
<p style=3D"margin-left:75.75pt; text-indent:-39.75pt"><b><span style=3D"fo=
nt-size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont=
&quot;; color: black">usrp_x300-&gt;set_gpio_attr(</span><span style=3D"fon=
t-size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&=
quot;; color: rgb(0, 32, 128)">&quot;FP0&quot;</span><span style=3D"font-si=
ze: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quot=
;; color: black">,
</span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;=
, serif, &quot;EmojiFont&quot;; color: rgb(0, 32, 128)">&quot;ATR_TX&quot;<=
/span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;,=
 serif, &quot;EmojiFont&quot;; color: black">, 0, AMP_GPIO_MASK);</span></b=
></p>
<p style=3D"margin-left:75.75pt; text-indent:-39.75pt"><span style=3D"font-=
size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&qu=
ot;; color: black">usrp_x300-&gt;set_gpio_attr(</span><span style=3D"font-s=
ize: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quo=
t;; color: rgb(0, 32, 128)">&quot;FP0&quot;</span><span style=3D"font-size:=
 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quot;; =
color: black">,
</span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;=
, serif, &quot;EmojiFont&quot;; color: rgb(0, 32, 128)">&quot;ATR_XX&quot;<=
/span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;,=
 serif, &quot;EmojiFont&quot;; color: black">, 0, AMP_GPIO_MASK);</span></p=
>
<p>&nbsp;</p>
<p>actually be:</p>
<p>&nbsp;</p>
<p style=3D"margin-left:75.75pt; text-indent:-39.75pt"><span style=3D"font-=
size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&qu=
ot;; color: maroon">// finally, let's set up GPIO6 as we described above</s=
pan><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;, s=
erif, &quot;EmojiFont&quot;; color: black"></span></p>
<p style=3D"margin-left:75.75pt; text-indent:-39.75pt"><span style=3D"font-=
size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&qu=
ot;; color: black">usrp_x300-&gt;set_gpio_attr(</span><span style=3D"font-s=
ize: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quo=
t;; color: rgb(0, 32, 128)">&quot;FP0&quot;</span><span style=3D"font-size:=
 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quot;; =
color: black">,
</span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;=
, serif, &quot;EmojiFont&quot;; color: rgb(0, 32, 128)">&quot;ATR_0X&quot;<=
/span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;,=
 serif, &quot;EmojiFont&quot;; color: black">, 0, AMP_GPIO_MASK);</span></p=
>
<p style=3D"margin-left:75.75pt; text-indent:-39.75pt"><span style=3D"font-=
size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&qu=
ot;; color: black">usrp_x300-&gt;set_gpio_attr(</span><span style=3D"font-s=
ize: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quo=
t;; color: rgb(0, 32, 128)">&quot;FP0&quot;</span><span style=3D"font-size:=
 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quot;; =
color: black">,
</span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;=
, serif, &quot;EmojiFont&quot;; color: rgb(0, 32, 128)">&quot;ATR_RX&quot;<=
/span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;,=
 serif, &quot;EmojiFont&quot;; color: black">, 0, AMP_GPIO_MASK);</span></p=
>
<p style=3D"margin-left:75.75pt; text-indent:-39.75pt"><b><span style=3D"fo=
nt-size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont=
&quot;; color: black">usrp_x300-&gt;set_gpio_attr(</span><span style=3D"fon=
t-size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&=
quot;; color: rgb(0, 32, 128)">&quot;FP0&quot;</span><span style=3D"font-si=
ze: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quot=
;; color: black">,
</span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;=
, serif, &quot;EmojiFont&quot;; color: rgb(0, 32, 128)">&quot;ATR_TX&quot;<=
/span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;,=
 serif, &quot;EmojiFont&quot;; color: black">,
<span style=3D"background:yellow">1</span>, AMP_GPIO_MASK);&nbsp; <span sty=
le=3D"font-size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;E=
mojiFont&quot;; color: maroon">
// Should it be a 1?</span><br>
</span></b></p>
<p style=3D"margin-left:75.75pt; text-indent:-39.75pt"><span style=3D"font-=
size: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&qu=
ot;; color: black">usrp_x300-&gt;set_gpio_attr(</span><span style=3D"font-s=
ize: 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quo=
t;; color: rgb(0, 32, 128)">&quot;FP0&quot;</span><span style=3D"font-size:=
 10pt; font-family: &quot;Courier New&quot;, serif, &quot;EmojiFont&quot;; =
color: black">,
</span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;=
, serif, &quot;EmojiFont&quot;; color: rgb(0, 32, 128)">&quot;ATR_XX&quot;<=
/span><span style=3D"font-size: 10pt; font-family: &quot;Courier New&quot;,=
 serif, &quot;EmojiFont&quot;; color: black">, 0, AMP_GPIO_MASK);</span></p=
>
<p>&nbsp;</p>
<p>for setting up GPIO6 to be high only when transmitting?&nbsp; If not, th=
en I'm not understanding what the code is really doing to get GPIO6 to be h=
igh when transmitting.</p>
<p><br>
</p>
<p>Thx.</p>
<p>Jeff<br>
</p>
<br>
</body>
</html>

--_000_BN6PR19MB1635EA176626D1A33DFA5CC5A43F0BN6PR19MB1635namp_--


--===============4802924894153905869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4802924894153905869==--


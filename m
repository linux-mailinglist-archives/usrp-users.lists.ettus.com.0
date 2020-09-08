Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E002621B4
	for <lists+usrp-users@lfdr.de>; Tue,  8 Sep 2020 23:08:27 +0200 (CEST)
Received: from [::1] (port=53666 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFkqo-0006Ir-9z; Tue, 08 Sep 2020 17:08:26 -0400
Received: from mail-oln040092253014.outbound.protection.outlook.com
 ([40.92.253.14]:32784 helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <snehasish.cse@live.com>)
 id 1kFkqk-0005kl-S3
 for usrp-users@lists.ettus.com; Tue, 08 Sep 2020 17:08:23 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DW5R09wH4vnlh13OgXDqhIJwE5xlT5DzPKztPsBCp7nzZY+qFBZgpyGqkpZnC51RnG8ZSKL4hPx85hKnnNBhzpVIRQJ9anwzLZrTwR7a5TsX6T8zEH4spglghh7Rlni/EBdZn7dyuZW/kHWYUxiE4WSNwMBCN6WjbEl8Je0bgB+ee6ib1fqEx2u2OB2F2V2IG7jlWws6sym3lzHuNGpPgJtiD19JQJjpbNuuhN4zKpL9F8TKv6FNfaqnbYgcRW2mo+rAVJBlT5C8490nJRLbcieoOM7l/PF1PIlii0U47GYQuK9b3e32LJ5UUzIIrpW1iIvDbZaGzt4LGi1WB2Z26w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bSfPLiKaaIi+lkZP38dvHRnT4C0sooZaZv4cza6+Mjs=;
 b=Q/7Lss6RGnmEDE2slPZ+Yu+O6Ou8XbQGGBZluHUxB4R5SqRB1YBnz12V0jkIbkZSSH1jcRExv3QESBsz8UGQBV6cZ01cFhYz/ZDOmDKeGcgESgXc8At0WyLd/RdHkf+Mf+gVnXcKG4YNWTXDQLPYv39ULa7wYpMba+MRFLhSTTp+6Yg8j+AJexk37XdtpO/Of7f0oWyXy1C6pG7SWOybDWnUir0LOZBAxSE+BSQG7u4T3PD4SmGL0VxSIPjYzH2uMQQTlwSlbjufXgz66IPaaz7zzTsKUFyua1KRKUnsT6bFnksJczuj/Nb8cPug+84pmIsagv8k3laVLoV16S6hHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bSfPLiKaaIi+lkZP38dvHRnT4C0sooZaZv4cza6+Mjs=;
 b=hFcfa0FIgmDRnOyUBLuhXMaCN8RagvnU0K1pSTYQ+rTRjmEmQJxxQrv9pog4F1O/k7yJLoQ/62IMaRvH+YyqDa8bOZvGsU/pzxHjsVCIwKTxM+rNVAXMo76IaKBS/Mtrjz4pVEu9t3ThFpbQK7ZMreBolvGeLW+DE+92Eg7eAI4N0HGr/5q1ygsGYkE3OE8X4B893GV05fdvRs/iVVV3t+aLYKCFPHSHknpFZcJHx1QxGqpvSdBySl0ndCyLjELWaGYIwlEwUqx8qPqOxf0wi2nf9IH1xjgkMfcdZALxru5gt6XsL0/EDG2nLJitOyjiujWNtGVTiZAdTg7jQiRsFw==
Received: from HK2APC01FT027.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::45) by
 HK2APC01HT030.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::246)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16; Tue, 8 Sep
 2020 21:07:33 +0000
Received: from BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 (2a01:111:e400:7ebc::4f) by HK2APC01FT027.mail.protection.outlook.com
 (2a01:111:e400:7ebc::179) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.16 via Frontend
 Transport; Tue, 8 Sep 2020 21:07:33 +0000
Received: from BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::8573:9456:db8d:adc]) by BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::8573:9456:db8d:adc%8]) with mapi id 15.20.3348.019; Tue, 8 Sep 2020
 21:07:33 +0000
To: Martin Braun <martin.braun@ettus.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] USRP sensitivity
Thread-Index: AQHWg5OMJebIind1hUCTMMLlf4n416laIvELgAS+C4CAAF9xfw==
Date: Tue, 8 Sep 2020 21:07:33 +0000
Message-ID: <BM1PR0101MB149191EDB483E8E0D9393EDB88290@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25887D46F7718F3B577EB766902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <MA1PR01MB25885B58121EBCF0777551D1902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <28485733-4c7f-6b74-3455-fe3575a7eecf@ettus.com>
In-Reply-To: <28485733-4c7f-6b74-3455-fe3575a7eecf@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:B2BAB1339C71BC4A05402EFC05EA20863BF13621B6B583E36FB54F051361BCCE;
 UpperCasedChecksum:D9F20DEB001D3445A2C10F36C51015D7517A1B4254D58798DA31192F9A10E5F4;
 SizeAsReceived:7036; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [656XSrbJCUBYHdV/5DaiWmOX4C3+uN00]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: a29ed998-0c06-47a2-d18d-08d8543b348e
x-ms-traffictypediagnostic: HK2APC01HT030:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XxLDXbC0J+f2AcDrEHp9qqE2EWtl0jmI5FDuYhJus0bb1edFrrO8E0EExsnLzToLumahWwpK8ZKCv9EqFd7VfWhruP2wFlYj8sX2VK8S+8Z3SKx60MLpNKoLvUMZ+j2nbxq7XbIMrJzp66XdIp+jMlzQzb4WWnvSjH3RDnBcu09+c2fYYoA/5rLrVBOGf7QFMUEjguazTo6oO1Sl6RUr/dWyb5WAMJrzGVnt85/GPf51shG576xzRAfRr0ZOo+XN
x-ms-exchange-antispam-messagedata: 4AcTPgOJN/tAA0xm02Qon6t0OX38jglwAvRnoUcU/hT83w+Qpe6coOzE2yeAOqYBxCAgWfKrWoafapVRZgMVAZrVM/TXOiCkkxOGu/NxmBN58m3oT34llesDlIiX1+9ZhOazpOLoEQyoAFrEbIQReQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT027.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a29ed998-0c06-47a2-d18d-08d8543b348e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2020 21:07:33.3454 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT030
Subject: Re: [USRP-users] USRP sensitivity
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
From: Snehasish Kar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Snehasish Kar <snehasish.cse@live.com>
Content-Type: multipart/mixed; boundary="===============9009699701050651483=="
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

--===============9009699701050651483==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BM1PR0101MB149191EDB483E8E0D9393EDB88290BM1PR0101MB1491_"

--_000_BM1PR0101MB149191EDB483E8E0D9393EDB88290BM1PR0101MB1491_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Marcus

Just had a query in this context, how do we calculate the Power or Received=
 signal strength then from the IQ samples.

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Martin B=
raun via USRP-users <usrp-users@lists.ettus.com>
Sent: Tuesday, September 8, 2020 8:53:57 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] USRP sensitivity

On 9/5/20 4:59 PM, Koyel Das (Vehere) via USRP-users wrote:
> NI told me magnitude of IQ samples received in usrp is the voltage in vol=
ts.

Can you point us to where you got that information?

For the list archives: UHD 4.0 will have the ability to map digital
signals to power levels for X3x0 and B200 series, if you can provide
your own calibrated gear.

--M

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_BM1PR0101MB149191EDB483E8E0D9393EDB88290BM1PR0101MB1491_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>
<div style=3D"direction: ltr;">Hello Marcus</div>
</div>
<div style=3D"direction: ltr;" dir=3D"ltr"><br>
</div>
<div style=3D"direction: ltr;" dir=3D"ltr">Just had a query in this context=
, how do we calculate the Power or Received signal strength then from the I=
Q samples.</div>
<div style=3D"direction: ltr;" dir=3D"ltr"><br>
</div>
<div style=3D"direction: ltr;" dir=3D"ltr">Regards&nbsp;</div>
<div style=3D"direction: ltr;" dir=3D"ltr">Snehasish</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature">Get <a href=3D"https://aka.ms/o0uke=
f">Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-u=
sers-bounces@lists.ettus.com&gt; on behalf of Martin Braun via USRP-users &=
lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Tuesday, September 8, 2020 8:53:57 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] USRP sensitivity</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On 9/5/20 4:59 PM, Koyel Das (Vehere) via USRP-use=
rs wrote:<br>
&gt; NI told me magnitude of IQ samples received in usrp is the voltage in =
volts.<br>
<br>
Can you point us to where you got that information?<br>
<br>
For the list archives: UHD 4.0 will have the ability to map digital<br>
signals to power levels for X3x0 and B200 series, if you can provide<br>
your own calibrated gear.<br>
<br>
--M<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
USRP-users@lists.ettus.com<br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
br>
</div>
</span></font></div>
</body>
</html>

--_000_BM1PR0101MB149191EDB483E8E0D9393EDB88290BM1PR0101MB1491_--


--===============9009699701050651483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9009699701050651483==--


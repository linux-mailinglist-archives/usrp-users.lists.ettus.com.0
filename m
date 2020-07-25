Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDE722D839
	for <lists+usrp-users@lfdr.de>; Sat, 25 Jul 2020 16:51:52 +0200 (CEST)
Received: from [::1] (port=54404 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzLWg-0008LF-38; Sat, 25 Jul 2020 10:51:50 -0400
Received: from mail-eopbgr1390137.outbound.protection.outlook.com
 ([40.107.139.137]:42336 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1jzLWc-0008Ey-98
 for usrp-users@lists.ettus.com; Sat, 25 Jul 2020 10:51:46 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kZLZS9gZ54BwzI3SB+qFexfCDFJ8kLi3jZ9Zx3OU4mPmbqXye/YcAPK/jlI04n/mL/UDECoQFj+DhG/IPcs5Du0MMRVGVj6O58F6RHU2KeK8tW4A0HYL/e1NMysENYtR1PdVPWuLr95p9rV+1tIxRyuHDHZ78yzbLOGLQVgWIqTHCG9mfbm5EkGBRpgHEzjyWDL3HHjX7KJbriVoqFLEOkv+USlnDfDPoodwa/XkVWebFENG9w13UZXHWLV7uis/lI8ofAZO+vND36aIvRO2BnPSqIeADHjwQevhaton+Wy8ygFDYZ2KxwyzXPHw2EuDhqKhwPWsp5c4ezd78xcg4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=shbeqpcHRZpMPDu/2STekeJw3Q8ueVzU3hXAHUlAR+4=;
 b=dsbvSuhdrHcukLZdH6El5Vpc4PBh1XnH0XIFRxzwcPV6zao6yU71XvpZNqpTMWXo5nsY9fM4KzoeWLJtK+011wRsZunQAJ89ZNx95O7qK4/FwWuouvmKVrdk2YQI/bG1ylgZ3POx32JjAxdvR0oeSCiSE2qhbyNE9zXdsM55dkveTbn4/fKDZVz+Ga6dVQER9e853+FQmbm5buUOrNIkQDvM4L3ouBnWKw8BARFaqQEW8SoG9ELDf89iinAOF6JlYD3bLNy8XPAr/zqq+ZOskdvhlpTrXkBn01E3fiObOFxH/rBB8oRe9WQ+x7cmoUEH1v3ATCda3f7d3us1EI8XPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=shbeqpcHRZpMPDu/2STekeJw3Q8ueVzU3hXAHUlAR+4=;
 b=hx9TDdX+1mL93AOIdci7m+iXcLaYJNCfgieUWIessu1ouO6lIpRkUiv3b2ZZ9pn2Z6TTNIFbmM/JyhnA+S+euaTMXhlsKzW7G5hjCcq/Bb2JD1ku2yz78H3y8NwvqG4xFseBYZVGca9oweFL5jf+koeccCVfB1rPnbgOZ6la4ww=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB3179.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:73::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Sat, 25 Jul
 2020 14:51:01 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3216.028; Sat, 25 Jul 2020
 14:51:01 +0000
To: =?Windows-1252?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
 "'USRP-users@lists.ettus.com'" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Data rate using usrp and grc
Thread-Index: AQHWYlbbHjnwDUz39U+Gftus+wZMPakX9kiAgAAzE+2AACHHgIAAFLoD
Date: Sat, 25 Jul 2020 14:51:01 +0000
Message-ID: <MA1PR01MB258881AEE532398017AD032F90740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25884DB85773F1978595CD6890740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <a7903b46-932a-4848-cffe-4dba3c53f43b@ettus.com>
 <MA1PR01MB2588B4D9AE8EE8E9E48363DC90740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <2ae3dbb9-667a-f30a-0a24-509de972bb43@ettus.com>
In-Reply-To: <2ae3dbb9-667a-f30a-0a24-509de972bb43@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.138.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2182db4-134e-4a5d-2996-08d830aa2650
x-ms-traffictypediagnostic: MA1PR01MB3179:
x-microsoft-antispam-prvs: <MA1PR01MB3179CDC308CA90A49391D6C490740@MA1PR01MB3179.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5IQCeBtU/ZfkS0nzafo4giisdixyxK1vJBEcWmIyLKOe3vSAxt7AwwqHXVmRilCtrGigYtog0+4cbcuvvRPToXeuf23xVUS1RzlU82o1vgXnyXLXI3IFXHFrEci4BxMoH4HSpiCE/ik2dTwWo/FhxOLoxhG0lUMxIHlUP6wbSW8UXUJApupZZGq7JZKXBJfkg/Bv7sZ19eeBWUY8Vg+jrEd8RJ32GibQl1qmtrcNmSboLjp/0qiy+3pVCy+Yy/s5PUL9u0S9it+p40MWmAUnd0v909rcY0N/rTuuvPgGHbLMLUwDlF1GBZv3qRY2DXUCYGThpRNgxXF7QCE30yoJGoDEmH4Z6VyB4PWnEgQxkrgsG3luHJvQmTQX1I7QgQ/TYEP0ed4mtOwBm+cvEQDb1CWf3phB/Q7Wz9HISB2j+mQYSwh/lMsxN0vgEWn/cudr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(366004)(376002)(136003)(39830400003)(396003)(55016002)(83380400001)(8936002)(166002)(9686003)(76116006)(66556008)(508600001)(86362001)(2906002)(66574015)(966005)(64756008)(66476007)(66946007)(66446008)(71200400001)(6506007)(110136005)(316002)(26005)(52536014)(5660300002)(45080400002)(53546011)(33656002)(186003)(7696005)(8676002)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: eEIs6Us0yS2xmVQcB2If2Hk8NGCn74GW7kQHa1F7ab8QNxwnVb23B3nSI0tkE5WzcH0u3pMpRSWJmjXI7jP0aG2Cps+CBUtBR0mpRE+6FL5ujzAUOKfvGdnldhXNqmGoD1EIEiPmgVFWpJpgQFJ5f8NQL4BBv3YQ5+Oe62f7G1rse+J8+F4kWhpsE6ZgYq44OzRMTaY0UtlXpHpfNyZ8GVJy2G3qAg2lvJl8tCtmxGWMg6w4KTFh7hOCNeB7SsUtdSyjHyKhlOEvA9ei3WoWoFpQMUQkkjf6+CDIrwxF1+rQAKhiHzdmL0FkNFMOB9Zklv0Xmdjknkp/BEINlQaL+vg9UUB8VgHxjrPzlz37PFihPDqC49kRq3+GpAxz19V4dVXedg9y5UrmTP5UGPCUAsYDlzVqybkw6msGaxoLykTp4rrporfx0FvAY+IyWBVUIkI4SMsr6ibh2X2z7bGe6jrHcr5NubBXKDwd2p63+AXkBEOnzSjQDRdqn7cOdP40
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c2182db4-134e-4a5d-2996-08d830aa2650
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2020 14:51:01.8016 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VR1yq/0/lCtC50yP43SqwaruQJsT1VhhFlOMyXVHLosF3nFViSnkL5mVXez5AK+bOApcVnnUALS0/wu9JaW7Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB3179
Subject: Re: [USRP-users] Data rate using usrp and grc
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
Content-Type: multipart/mixed; boundary="===============7700575144103650147=="
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

--===============7700575144103650147==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB258881AEE532398017AD032F90740MA1PR01MB2588INDP_"

--_000_MA1PR01MB258881AEE532398017AD032F90740MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

I don=92t know what system features would ensure a 6 gbps continuous data r=
eception and storage from usrp. I only know we have 10 gbps servers so I wa=
s asking if that is not enough to ensure that data rate or something more i=
s needed. I was expecting the system requirements to be outlined for the me=
ntioned data rate.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Saturday, July 25, 2020 7:01:31 PM
To: Koyel Das (Vehere) <koyel.das@vehere.com>; 'USRP-users@lists.ettus.com'=
 <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Data rate using usrp and grc

Hi Koyel,

I'm sorry if I'm repeating myself. I see this seems hard to believe, but:

we really can't tell you. We don't know how well your system performs.

Best regards,
Marcus

On 25.07.20 13:32, Koyel Das (Vehere) wrote:
> Hi Marcus,
>
> =93as to your previous questions regarding "will my computer be able to
> keep up": We can't tell you how fast your computer and storage is.=94
>
> If I use a 10 gbps server and
>
> RAM disk storage or as you said the following:
>
> =93Also, setting larger output buffers in the GNU Radio blocks can help,
> too, if you don't need low latency (which you don't need at all, if
> you're just recording). Try setting "2**24" in the min output buffer
> setting in your USRP source's "advanced" tab.=94
>
>
>  Then will I be able to write data at 6 gbps ?
>
> Regards,
> Koyel
>
>
>
> Get Outlook for iOS<https://aka.ms/o0ukef>
> ________________________________
> From: Marcus M=FCller <marcus.mueller@ettus.com>
> Sent: Saturday, July 25, 2020 1:57:49 PM
> To: Koyel Das (Vehere) <koyel.das@vehere.com>; 'USRP-users@lists.ettus.co=
m' <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Data rate using usrp and grc
>
> Hi Koyel,
>
>> Will there be packet drops if USRP source is set at 32 bit complex
> float in grc when receiving at 100 MSPS each from two channels?
>
> as to your previous questions regarding "will my computer be able to
> keep up": We can't tell you how fast your computer and storage is.
>
> Anyway,
>
>> I am unable to set usrp source block in grc to 16 bit complex as then
> the usrp source block is not compatible with file sink which doesn=92t
> have option for 16 bit complex
>
> Nothing in GNU Radio cares about the content of the data bytes you're
> pushing around: simply set your file sink to e.g. int, or float, or to
> short with vector length 2, or to byte with vector length 4: Doesn't
> matter, as long as the item size ends up being 32 bits.
>
> Best regards,
>
> Marcus
>
> On 25.07.20 09:43, Koyel Das (Vehere) via USRP-users wrote:
>> Hi,
>>
>> I want to capture data from usrp 2955 using USRP Source block of grc and=
 write to file using file sink block of grc. Will there be packet drops if =
USRP source is set at 32 bit complex float in grc when receiving at 100 MSP=
S each from two channels? That makes 2*100e6*64 (32 bit I and 32 bit Q) =3D=
 12800e6 or 12.8 gbps. I am unable to set usrp source block in grc to 16 bi=
t complex as then the usrp source block is not compatible with file sink wh=
ich doesn=92t have option for 16 bit complex. Please help
>>
>> Regards,
>> Koyel
>>
>> Get Outlook for iOS<https://aka.ms/o0ukef>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_MA1PR01MB258881AEE532398017AD032F90740MA1PR01MB2588INDP_
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
<div>Hi Marcus,&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">I don=92t know what system features would ensure a 6 gbps =
continuous data reception and storage from usrp. I only know we have 10 gbp=
s servers so I was asking if that is not enough to ensure that data rate or=
 something more is needed. I was expecting
 the system requirements to be outlined for the mentioned data rate.</div>
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
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt;m=
arcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Saturday, July 25, 2020 7:01:31 PM<br>
<b>To:</b> Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;; 'USRP-users@lis=
ts.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Data rate using usrp and grc</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Koyel,<br>
<br>
I'm sorry if I'm repeating myself. I see this seems hard to believe, but:<b=
r>
<br>
we really can't tell you. We don't know how well your system performs.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On 25.07.20 13:32, Koyel Das (Vehere) wrote:<br>
&gt; Hi Marcus,<br>
&gt;<br>
&gt; =93as to your previous questions regarding &quot;will my computer be a=
ble to<br>
&gt; keep up&quot;: We can't tell you how fast your computer and storage is=
.=94<br>
&gt;<br>
&gt; If I use a 10 gbps server and<br>
&gt;<br>
&gt; RAM disk storage or as you said the following:<br>
&gt;<br>
&gt; =93Also, setting larger output buffers in the GNU Radio blocks can hel=
p,<br>
&gt; too, if you don't need low latency (which you don't need at all, if<br=
>
&gt; you're just recording). Try setting &quot;2**24&quot; in the min outpu=
t buffer<br>
&gt; setting in your USRP source's &quot;advanced&quot; tab.=94<br>
&gt;<br>
&gt;<br>
&gt;&nbsp; Then will I be able to write data at 6 gbps ?<br>
&gt;<br>
&gt; Regards,<br>
&gt; Koyel<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Get Outlook for iOS&lt;<a href=3D"https://aka.ms/o0ukef">https://aka.m=
s/o0ukef</a>&gt;<br>
&gt; ________________________________<br>
&gt; From: Marcus M=FCller &lt;marcus.mueller@ettus.com&gt;<br>
&gt; Sent: Saturday, July 25, 2020 1:57:49 PM<br>
&gt; To: Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;; 'USRP-users@lists=
.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<br>
&gt; Subject: Re: [USRP-users] Data rate using usrp and grc<br>
&gt;<br>
&gt; Hi Koyel,<br>
&gt;<br>
&gt;&gt; Will there be packet drops if USRP source is set at 32 bit complex=
<br>
&gt; float in grc when receiving at 100 MSPS each from two channels?<br>
&gt;<br>
&gt; as to your previous questions regarding &quot;will my computer be able=
 to<br>
&gt; keep up&quot;: We can't tell you how fast your computer and storage is=
.<br>
&gt;<br>
&gt; Anyway,<br>
&gt;<br>
&gt;&gt; I am unable to set usrp source block in grc to 16 bit complex as t=
hen<br>
&gt; the usrp source block is not compatible with file sink which doesn=92t=
<br>
&gt; have option for 16 bit complex<br>
&gt;<br>
&gt; Nothing in GNU Radio cares about the content of the data bytes you're<=
br>
&gt; pushing around: simply set your file sink to e.g. int, or float, or to=
<br>
&gt; short with vector length 2, or to byte with vector length 4: Doesn't<b=
r>
&gt; matter, as long as the item size ends up being 32 bits.<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Marcus<br>
&gt;<br>
&gt; On 25.07.20 09:43, Koyel Das (Vehere) via USRP-users wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; I want to capture data from usrp 2955 using USRP Source block of g=
rc and write to file using file sink block of grc. Will there be packet dro=
ps if USRP source is set at 32 bit complex float in grc when receiving at 1=
00 MSPS each from two channels? That makes
 2*100e6*64 (32 bit I and 32 bit Q) =3D 12800e6 or 12.8 gbps. I am unable t=
o set usrp source block in grc to 16 bit complex as then the usrp source bl=
ock is not compatible with file sink which doesn=92t have option for 16 bit=
 complex. Please help<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt; Koyel<br>
&gt;&gt;<br>
&gt;&gt; Get Outlook for iOS&lt;<a href=3D"https://aka.ms/o0ukef">https://a=
ka.ms/o0ukef</a>&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; USRP-users@lists.ettus.com<br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus=
.com</a><br>
</div>
</span></font></div>
</body>
</html>

--_000_MA1PR01MB258881AEE532398017AD032F90740MA1PR01MB2588INDP_--


--===============7700575144103650147==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7700575144103650147==--


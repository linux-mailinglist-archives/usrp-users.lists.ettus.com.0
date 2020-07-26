Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE46422DC42
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jul 2020 08:00:43 +0200 (CEST)
Received: from [::1] (port=60196 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzZiB-0003NQ-Dv; Sun, 26 Jul 2020 02:00:39 -0400
Received: from mail-eopbgr1390119.outbound.protection.outlook.com
 ([40.107.139.119]:24253 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1jzZi6-0003Gl-In
 for usrp-users@lists.ettus.com; Sun, 26 Jul 2020 02:00:34 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iSz7SG1oAtiIFNVwdriSs0qyUVesGL0wPLg5VBgehG7DaDQbZP5M/RTxdkkdqqsD7MNIDWMDKYEI+zLzNFkCy+Ts9j+k49hb8aM4df0e1CkN7ckgrBsYwV9yhno+jgRG25pRQ/HOjZe7SBS+QkrWHFuPHrODNl17uUlsdrqfxBWXt9WggOMoknCQxmu15CAXCaMK91JXhisyQVKkVjkwjXWN+PZSph1vZlefjuFMTyh0B5NskRcoc24uQNVLTX3qI79SGYoTaHnhjeuNnZiBnhVpf38AEo2eI/xt45sqFDazOh1iOH6nfJ6BZtuDqV/131cYfjY6r9gQUUeTC42Uxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nw+9E8C08kBOCFy2GWW+D8882rbrnKUip9Rl7TIvfQE=;
 b=CRrr6wWpSCdlg409dNJem2auSrprLx4dehWE9pF7wYZyG0pu9kFDkQGkZeojrA9cn4l5FNqtQ1wmhRDttLAuxLJ7wgAgceiYa/Hi89fTLvHfTuYj/xF3c47fZPmFmeOU9cw98KcgVa/kaNJiV8ieLLOmYgBdBHago4qUYyJew+OVtMij6MOUPintya4IsvB1A128ygP7ANiv3XtQuzR/djn+nL4VND3FLzoyb+jaPw6F0mHy5XFiaiiiDouoQ/RKyVJOQ+EvW1yWfE8Xc0iOBLPRnnDtCjTMHWmLWgQ7xicjFa2zncJ08v1W7uIx49eCJkPutykUXTybCtrPLAA9bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nw+9E8C08kBOCFy2GWW+D8882rbrnKUip9Rl7TIvfQE=;
 b=nGZNmOuzj1rS90FLEcLuBPtrbGVhw/u9s6jaKCAaU0bFngCdbKaZGqOSDdNSaJzsON8gL7jjydWYuJ1bP++eVlSjJAtQPwTgi7gv88re1DEFgzJg3w/6Wmn5g0dB3BMCyRQiYWoQHnhZ0zgp40P+ql0Q+vZgO1opz6fUXMaAE5Y=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB2668.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:37::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Sun, 26 Jul
 2020 05:59:47 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3216.030; Sun, 26 Jul 2020
 05:59:47 +0000
To: Snehasish Kar <snehasish.cse@live.com>, =?Windows-1252?Q?Marcus_M=FCller?=
 <marcus.mueller@ettus.com>, "'USRP-users@lists.ettus.com'"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Data rate using usrp and grc
Thread-Index: AQHWYlbbHjnwDUz39U+Gftus+wZMPakX9kiAgAAzE+2AACHHgIAAFLoDgADguQeAAB6RsQ==
Date: Sun, 26 Jul 2020 05:59:47 +0000
Message-ID: <MA1PR01MB258852E24DA14D9374DE7AA190750@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25884DB85773F1978595CD6890740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <a7903b46-932a-4848-cffe-4dba3c53f43b@ettus.com>
 <MA1PR01MB2588B4D9AE8EE8E9E48363DC90740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <2ae3dbb9-667a-f30a-0a24-509de972bb43@ettus.com>,
 <MA1PR01MB258881AEE532398017AD032F90740@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <BM1PR0101MB149167EA077CA8B89D09CD5688750@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <BM1PR0101MB149167EA077CA8B89D09CD5688750@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: live.com; dkim=none (message not signed)
 header.d=none;live.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.138.224]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c6af69da-6873-4eaf-9f7a-08d8312919e7
x-ms-traffictypediagnostic: MA1PR01MB2668:
x-microsoft-antispam-prvs: <MA1PR01MB2668965FD2D2A9E50FA4C52B90750@MA1PR01MB2668.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XcNvI+gX02JW3Qg/o8AwBwHLlTbYH9i9OP+CFhxt52roq9JD2MFGil9BE6g7volT/Nd2cazaZDXHJ9MtYlMYwa0Np1sVVEjYeQlHc67H/zgmKpxJ+x51zOeDZfkMlBX7IrBSSqhtTO3mnh42fF8TLDIeAc+DIwBijZ3090i7xsfV4KtjAgx0K5NI0rxsfb8EDVfQKTNmRxuDv5KzQM7rG5jxsgFgYu5lYO9Fze7LIfiihFnS7MpNy9nuwdjs6lSZkcjwi8/rvl9WXBG6FYekQmRYnyry69AFUgOil809z112ivkhhfItnqRrzbAsMzbpBQtHhugpaLsZd96anUE7qSCytkqb/I2459dK8aPNS5v54x3LO1NBxV+SaxLML+wAM48f3LfBFKP/5UcmVGg6qoDrBVzpIpg5vrOFWcMgLVlt9ItW79Uu80FCxmZHGZko
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(39830400003)(366004)(346002)(376002)(136003)(508600001)(71200400001)(55016002)(9686003)(45080400002)(2906002)(966005)(186003)(316002)(110136005)(26005)(8676002)(8936002)(86362001)(166002)(66476007)(66556008)(64756008)(53546011)(6506007)(83380400001)(7696005)(66446008)(66574015)(33656002)(52536014)(5660300002)(66946007)(76116006)(491001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 0AeiyghC0mTsOA37eQv7f8U7o4LZ9F1vfvV2Raw6CtCWP4wT8UyrrsoitwKeT2WklvfzHDXjmZLBYtM9cgmDn7L3W3boHKYa7S7YX5+K8BMx95V6EK9MHt4vGzXcDzmnSrZRgmxH5scc/guzHe/f42cRp0sQTYd12dc764RnOAMC77qu6HRoGuJS2bMjXrt0uEJKfKi6F+LQ9uipLU+C1Hhr1eKLgvRm5OZjvGqJbkN4JO7TlhyEzF3pm2oLd0nPiCewtDrfzLwxlg7nVXGPwzA1LJqAwWS5FmO2ff7K2mE52VR/CemEw6rDWBNmEpIZx4QOUXtD90VT7iBc5vhXCx6L5IRL9HZOq22XHDBtkShC+ZGaFWs1eux7EQOhjSef/lfAZ+rA8/AguCMN0AswoRXRoaWS0SbMpvhN5ZLHrG+ZFHjbtU5n8Lfj/VjlZkDKbanH8i2BV0olcQE+Yljk2f85wEK8qfjo2cPElRDcwWPfeYlPVwMw7WF38AgsQZle
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c6af69da-6873-4eaf-9f7a-08d8312919e7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2020 05:59:47.0215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiAclyUpXNx3clSlW3LR3FRZJzJIhbBPEVspU4auDpTN03pUZMMXjn67tGUeW6Cg9GSzNufYzqJOPVTX5dXUcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2668
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
Content-Type: multipart/mixed; boundary="===============7927805623982105356=="
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

--===============7927805623982105356==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB258852E24DA14D9374DE7AA190750MA1PR01MB2588INDP_"

--_000_MA1PR01MB258852E24DA14D9374DE7AA190750MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thanks Snehasish for the information.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Snehasish Kar <snehasish.cse@live.com>
Sent: Sunday, July 26, 2020 9:42:09 AM
To: Koyel Das (Vehere) <koyel.das@vehere.com>; Marcus M=FCller <marcus.muel=
ler@ettus.com>; 'USRP-users@lists.ettus.com' <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Data rate using usrp and grc

Hello Koyel

I think using a 10gbps nic card, a processor with 3.6GHz clockspeed, DDR4 R=
AM with an nvme ssd or ssd should be fine.

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Koyel Da=
s (Vehere) via USRP-users <usrp-users@lists.ettus.com>
Sent: Saturday, July 25, 2020 8:21:01 PM
To: Marcus M=FCller <marcus.mueller@ettus.com>; 'USRP-users@lists.ettus.com=
' <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Data rate using usrp and grc

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

--_000_MA1PR01MB258852E24DA14D9374DE7AA190750MA1PR01MB2588INDP_
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
<div>Thanks Snehasish for the information.</div>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Snehasish Kar &lt;sne=
hasish.cse@live.com&gt;<br>
<b>Sent:</b> Sunday, July 26, 2020 9:42:09 AM<br>
<b>To:</b> Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;; Marcus M=FCller=
 &lt;marcus.mueller@ettus.com&gt;; 'USRP-users@lists.ettus.com' &lt;usrp-us=
ers@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Data rate using usrp and grc</font>
<div>&nbsp;</div>
</div>
<div>
<div>
<div>
<div style=3D"direction:ltr">Hello Koyel </div>
<div><br>
</div>
<div style=3D"direction:ltr">I think using a 10gbps nic card, a processor w=
ith 3.6GHz clockspeed, DDR4 RAM with an nvme ssd or ssd should be fine.</di=
v>
<div><br>
</div>
<div style=3D"direction:ltr">Regards</div>
<div style=3D"direction:ltr">Snehasish <span id=3D"x_ms-outlook-ios-cursor"=
></span></div>
</div>
<div><br>
</div>
<div class=3D"x_ms-outlook-ios-signature">Get <a href=3D"https://aka.ms/o0u=
kef">Outlook for iOS</a></div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> USRP-users &lt;usrp=
-users-bounces@lists.ettus.com&gt; on behalf of Koyel Das (Vehere) via USRP=
-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Saturday, July 25, 2020 8:21:01 PM<br>
<b>To:</b> Marcus M=FCller &lt;marcus.mueller@ettus.com&gt;; 'USRP-users@li=
sts.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Data rate using usrp and grc</font>
<div>&nbsp;</div>
</div>
<div>
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
<div class=3D"x_x_ms-outlook-ios-signature" id=3D"x_x_ms-outlook-mobile-sig=
nature">Get
<a href=3D"https://aka.ms/o0ukef">Outlook for iOS</a></div>
</div>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif=
" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus M=FCller &=
lt;marcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Saturday, July 25, 2020 7:01:31 PM<br>
<b>To:</b> Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;; 'USRP-users@lis=
ts.ettus.com' &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Data rate using usrp and grc</font>
<div>&nbsp;</div>
</div>
<div class=3D"x_x_BodyFragment"><font size=3D"2"><span style=3D"font-size:1=
1pt">
<div class=3D"x_x_PlainText">Hi Koyel,<br>
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
</div>
</div>
</body>
</html>

--_000_MA1PR01MB258852E24DA14D9374DE7AA190750MA1PR01MB2588INDP_--


--===============7927805623982105356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7927805623982105356==--


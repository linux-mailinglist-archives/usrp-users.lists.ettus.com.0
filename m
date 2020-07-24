Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16E2622C21A
	for <lists+usrp-users@lfdr.de>; Fri, 24 Jul 2020 11:22:01 +0200 (CEST)
Received: from [::1] (port=42394 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyttw-0002BM-2D; Fri, 24 Jul 2020 05:22:00 -0400
Received: from mail-eopbgr1390124.outbound.protection.outlook.com
 ([40.107.139.124]:35636 helo=IND01-BO1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1jyttr-00023U-1y
 for usrp-users@lists.ettus.com; Fri, 24 Jul 2020 05:21:55 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CxnEMVz6hgrfbd/Byz5PnObW93fEL/2MO7Vy+Em26e1tFl8gEF5ZJYsSTGODdYmTsZGQBHlUXDsAYue4qYttRzilf7EDHUZIB8HNOI45nP0JP4Jk5y29bZJ9A/iflgfPnY/6hTTEpSpvTBGIlmeItqII/wGVTuLc1mxQSrzsjbweEWc1XJ/eRNG0/rmNkH7PcOTJgLmPvMaAOhWzgWmPRIt/0VcXpZi3XAPVJEzMah+AcjbDChSa2G0Pto3rXfG1mBEzGo33vnbO1f4AnH7jF9ouH1y3UMZJttzk7Mkv0v/BqUqdNK2veu6ScllttouoxOnOV1OCYzIg3xPY5tnoEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CerFuEPydwkEx/2rlEW9+kVtNAmz1NBVpsauwgYZyvo=;
 b=Y34EfJedjMIiEwMtTn8HtAcrLUOU2pG/w/9HKH2jDPmEsGrb7wcn/NOZ9POckgJcErReqO6ugZNQ5MVUj+4R6Jfq039maKMe7mM+RaG5KoGPQd0cYKHqdClAjPOHd+5iaERfaY/vnNczr+vXneDXvWLCKeIR5RxhjTw3SXf2XlGMz6GMaQzGnO1QogE948l0MT4ISi9SrMWp3Vt7sB7s66/QmWBl+lGbkxTSjtz739TzJH4kyboJl/8LAos1MJhFI9W1JRl5EQPwDdOx5WMeddw3JktpaqG1vQoehmPZSzKFbdTEV88wip6LaeLNk3CdjJpq23EsCtEoTYWjrOBPKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CerFuEPydwkEx/2rlEW9+kVtNAmz1NBVpsauwgYZyvo=;
 b=D2Al7NRO+xeGkz8kqczZ41t7LzjI/opQHgzWQ95lg0PE8fRfMQ6KbVJEdYPGU51G8UBYy6xJsLgRqZZY0ei0fcvE+UmPJt69yKU7oBGvwfNjRRIuAM56B3XlK4SitsTj/OGkVnS6WslBvjsQ0C5TOd3CuHrandevYtxOmi958TQ=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR01MB3502.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:6f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Fri, 24 Jul
 2020 09:21:11 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3216.021; Fri, 24 Jul 2020
 09:21:11 +0000
To: =?Windows-1252?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] 4 channel capture using grc and pcie
Thread-Index: AQHWYZMiVuDmc7CcMku3Q1nlFH28VqkWbx8AgAAA8CGAAAQJAIAAADmF
Date: Fri, 24 Jul 2020 09:21:11 +0000
Message-ID: <MA1PR01MB2588FFEF19FCCDEFB3AA43A190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB2588ED02A93680AA89569A3490770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <b4de024f-54fd-fe62-0ae0-c0bbe2d0d4f3@ettus.com>
 <MA1PR01MB2588551C27619A8DF3078F6190770@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <a24f048a-ee4a-b313-dd10-455af9baf010@ettus.com>
In-Reply-To: <a24f048a-ee4a-b313-dd10-455af9baf010@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.154.20]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 807aabd0-cdea-4417-2bda-08d82fb2e7eb
x-ms-traffictypediagnostic: MAXPR01MB3502:
x-microsoft-antispam-prvs: <MAXPR01MB3502605B06DDEE7705D2511490770@MAXPR01MB3502.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q23m0iA+8zb4hvzVWdfRv8mmxnvITQKLWzarjwm9c3/PPrb5bCDMD0STXHKDJ3dHgImGn998ltVfID2NF63UpJU2tT+7pH1SjCeZqgW1W29C/cA0FvzGYfvLjKhyXXlrbuE3GjdKwqJJHYSD7CNPhf18YD35yEo89U2J49ajcsypqgBD73LScO8Ow1n+i0xmC4BC1+vd1iFZ5BkEUqyE3AKWzMo+gB3mjxI5YXQHcjt8FFTNU+giJs+HfTr0wDouTR2rgtTkWbCVvplGlBp5XiY5NtfUegDkte4asn3bdEjXmZ516dkG7gnYicrzl+mKAMU/LjHBO8GGX0clTFWUo58hXk6/eqNWlF/f97DrJdQYijllsYXW0txbFlTpfx5nldLkf/GWR4V2jr7d1facGw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39840400004)(136003)(346002)(376002)(366004)(396003)(2906002)(5660300002)(7696005)(6506007)(966005)(33656002)(53546011)(86362001)(26005)(9686003)(45080400002)(110136005)(166002)(64756008)(316002)(508600001)(8936002)(186003)(55016002)(66556008)(66476007)(66446008)(52536014)(76116006)(8676002)(66946007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: uN2OdwAPPRJ6l4Z3AydLgfN1PpvKX4edvFMCkPEyj+dZxM8lAA4l7dyLmzUxMp814SKJHWx26MUjHqZ2IibQ9e2AFV0UtiEJ0Y68B5MfEORqK0ZYhyfMrPne6SuFvMduxZqN7NuK2fPysLQk5aNNBvNCZiidJcmLCXspz3fZQRRkfWJPm/tJl+e+jNtIfht5ogNxMjaWSSmsvT38p7KCdhd9cnVOTpqS5xAQiB8PPkNL/RV4eDjEg1uoNbSzSUsiesG3BDUSipEPzO1d+CX7KxeHBZBhgsPzbM6NhmRdXCipicB+Teys+ujrNFIK0gjgldnM+SVIehNrXiCKAGHceghqnqbtwdZtrpxuWlvslK/xGlHu5ubw0WFN1Pg3tWmG1duiJ52veVaunK0KaHUkT9wOOyNnvmue4YTlLUpCzvA6BZ4jsovHIsV/Ui8Vwbme3i5fWs17lEbPLLhFvCYnY6ZiIcezC3Jqyyzw8WmwXCpRUrzXOBh7FpwugakKXeJ7
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 807aabd0-cdea-4417-2bda-08d82fb2e7eb
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2020 09:21:11.3479 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zl+D4oN3FX5JBzXNQBeQ4Ry/pH+W0urDTwOeqsIyElmT6o2jdAWCnbzBKjVRoruUgFMS5Pi9geW4OwtiaK2nxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB3502
Subject: Re: [USRP-users] 4 channel capture using grc and pcie
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
Content-Type: multipart/mixed; boundary="===============2989268191576194355=="
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

--===============2989268191576194355==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588FFEF19FCCDEFB3AA43A190770MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588FFEF19FCCDEFB3AA43A190770MA1PR01MB2588INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Ok thanks so much for the information.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Friday, July 24, 2020 2:50:08 PM
To: Koyel Das (Vehere) <koyel.das@vehere.com>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] 4 channel capture using grc and pcie

Yes. That's why I recommended it.

(also, GNU Radio Companion **is** the GUI. GNU Radio is the framework!)

On 24.07.20 11:07, Koyel Das (Vehere) wrote:
> With this command `sudo apt install gnuradio` on Ubuntu 20.04 LTS will gn=
u radio companion will also get installed with its GUI?
>
> Get Outlook for iOS<https://aka.ms/o0ukef>
> ________________________________
> From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus=
 M=FCller via USRP-users <usrp-users@lists.ettus.com>
> Sent: Friday, July 24, 2020 2:32:20 PM
> To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] 4 channel capture using grc and pcie
>
> Hi Koyel,
>
> The NI 2955 (hardware-wise: an X310 with TwinRX daughterboards) can be
> used with modern GNU Radio.
>
> I'd think you'll be most happy with installing Ubuntu Linux 20.04LTS,
> from which
> `sudo apt install gnuradio`
> will give you a working GNU Radio, and a matching UHD.
>
> (Don't follow any other guides on installing UHD =96 you've already got
> the recommended version, then, and installing anything else is just
> asking for trouble)
>
> Best regards,
> Marcus
>
> On 24.07.20 10:21, Koyel Das (Vehere) via USRP-users wrote:
>> Hi,
>>
>> Is it possible to receive data from 4 channels simultaneously of usrp 29=
55 using PCIe ? Which version of Linux and grc should be installed for that=
?
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
>>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--_000_MA1PR01MB2588FFEF19FCCDEFB3AA43A190770MA1PR01MB2588INDP_
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
<div>Ok thanks so much for the information.</div>
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
<b>Sent:</b> Friday, July 24, 2020 2:50:08 PM<br>
<b>To:</b> Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] 4 channel capture using grc and pcie</font=
>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Yes. That's why I recommended it.<br>
<br>
(also, GNU Radio Companion **is** the GUI. GNU Radio is the framework!)<br>
<br>
On 24.07.20 11:07, Koyel Das (Vehere) wrote:<br>
&gt; With this command `sudo apt install gnuradio` on Ubuntu 20.04 LTS will=
 gnu radio companion will also get installed with its GUI?<br>
&gt; <br>
&gt; Get Outlook for iOS&lt;<a href=3D"https://aka.ms/o0ukef">https://aka.m=
s/o0ukef</a>&gt;<br>
&gt; ________________________________<br>
&gt; From: USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt; on behalf =
of Marcus M=FCller via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
&gt; Sent: Friday, July 24, 2020 2:32:20 PM<br>
&gt; To: usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
&gt; Subject: Re: [USRP-users] 4 channel capture using grc and pcie<br>
&gt; <br>
&gt; Hi Koyel,<br>
&gt; <br>
&gt; The NI 2955 (hardware-wise: an X310 with TwinRX daughterboards) can be=
<br>
&gt; used with modern GNU Radio.<br>
&gt; <br>
&gt; I'd think you'll be most happy with installing Ubuntu Linux 20.04LTS,<=
br>
&gt; from which<br>
&gt; `sudo apt install gnuradio`<br>
&gt; will give you a working GNU Radio, and a matching UHD.<br>
&gt; <br>
&gt; (Don't follow any other guides on installing UHD =96 you've already go=
t<br>
&gt; the recommended version, then, and installing anything else is just<br=
>
&gt; asking for trouble)<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Marcus<br>
&gt; <br>
&gt; On 24.07.20 10:21, Koyel Das (Vehere) via USRP-users wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; Is it possible to receive data from 4 channels simultaneously of u=
srp 2955 using PCIe ? Which version of Linux and grc should be installed fo=
r that?<br>
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
&gt;&gt;<br>
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
</body>
</html>

--_000_MA1PR01MB2588FFEF19FCCDEFB3AA43A190770MA1PR01MB2588INDP_--


--===============2989268191576194355==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2989268191576194355==--


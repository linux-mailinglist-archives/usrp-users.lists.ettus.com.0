Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 928CB23C629
	for <lists+usrp-users@lfdr.de>; Wed,  5 Aug 2020 08:42:28 +0200 (CEST)
Received: from [::1] (port=37774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3D82-0005zw-0p; Wed, 05 Aug 2020 02:42:22 -0400
Received: from mail-eopbgr1380120.outbound.protection.outlook.com
 ([40.107.138.120]:24547 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k3D7x-0005tl-HN
 for usrp-users@lists.ettus.com; Wed, 05 Aug 2020 02:42:17 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kFgPL+drNN+68MFSKi0ToKlsQdmE+SkhTFVOcjaEUCuYIdhRBcZOqwNhGhHifrVobL1YheoRya4PNL6ip0thsu1r48WFI7vjvDsGn5yKMiJorGkuJCtA9tb14pFhPjg3IqzUfn1QQ0z/rthbOVo881c3psFP54z4IfWZ7HTbJhXQu03fD8+Dydgl8PGH04d7hG77bawIY4uIGqFWtq8ouVUcwAeXqSVIIAcjyW66bFpD10EETz47b/DsM9f5PW5VuxTCEosjwSxm6zkm4yNVS5aNnlOuAStA52aKlQ28rRcTamITtm7W91tOHsH/OAkIfBeSKalSyXFppiYrrKz96Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U/uYBK3Gu1W8TCQLBYzw+md7Yqqr1F4EiYjF9y6zVdI=;
 b=XCwnNdB8GSu2CJLBGmP8gEU5q8YCp1UuYyGl2cuw/llEwKs9dpeeHYRN/V8CFBICZ2ty8DcddJwvQHdQquTs3m9a/6uAP2V+1qLqcFlqOyJf1nL6wACbK8EyUdW6aQvwfXZXti4TbIETWS8Q3YHH3bGYKRBPo780dPLrBV0aCqyfZVXCOmfL03wlXY6x7IRTNkRHv8WyXa1v9b1cpNNAuaR1tV5ziNHFl4O+sR+UdUPlNgyatdoUeesbBsDaFv/W9vPiRdwonZt57cC01305ELW+uOxur1887FkseeIuWag150LjzhbWmUyqJS4WZSoWUmkVJfX173tYt0WfeYHXvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U/uYBK3Gu1W8TCQLBYzw+md7Yqqr1F4EiYjF9y6zVdI=;
 b=VfRaHLBIHOrBLiC5oJXDUg6Ym7n/ogWJIRzBmk+G8hAD0sOkyzR7r+SoCt7zuPxj2KKUe7jq4o7g+jQazwgA18EzPWjkCgJ5+OqBcUH8sA63Xe1vZbveokKp5oK+Csbb9cUcHdPCzCleEjDRFftGHot1LGl8a1ieGder8mhIodU=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB3932.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:7e::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.19; Wed, 5 Aug
 2020 06:41:32 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3239.022; Wed, 5 Aug 2020
 06:41:32 +0000
To: Neel Pandeya <neel.pandeya@ettus.com>
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Using PCIe
Thread-Index: AQHWakF9cd8W3UayJkaSdYrS2z36hqkoyQcAgABIg8o=
Date: Wed, 5 Aug 2020 06:41:32 +0000
Message-ID: <MA1PR01MB25885E1FF1757CDC836DF65B904B0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB2588409C6077BABC4BF92A9D904A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <CACaXmv8yKe-Zr8xYvRb5_U4-rtNvMMd9u0TrL15u5+t7Ojd95w@mail.gmail.com>
In-Reply-To: <CACaXmv8yKe-Zr8xYvRb5_U4-rtNvMMd9u0TrL15u5+t7Ojd95w@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.154.196]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 013d97f0-debf-46f4-c23e-08d8390a9775
x-ms-traffictypediagnostic: MA1PR01MB3932:
x-microsoft-antispam-prvs: <MA1PR01MB3932619D52AB04E11481F9FD904B0@MA1PR01MB3932.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yfMdTbto1HhDEh1JKp7INhTmQ//oDc5ovdBjZStnYhgdNfCwZPKDtl1ePX1dJ0aZN+/NZnmc1w7/RSXzlINL/6eJSD19d4czQ3Ys+EVNU+S2VMW8JPKEmWqITDKDrfNCRcdQv7YfcttcLFTqEXeaFOOimfVdy78D4LUtPzYYtynjXc9L4UWpiumSgd4KWvFqLvmNUIZVxZNvOvpoWBb/iJVvXkXWc2eBG8g5i+ivxNF1dtAw4C6LBSqTzg0/gQk7zBM0w+oQn4SXN1Uaoablb1jFrn6p4ht3mqZgJ14u6gb2rf6ymWes6fjWNjh89rKi+WV3SthMFoSEWY3CanqpyERmOhSsbh8WK2iDpP4OEi37i0wX5EbCzOpkx29mijv8mvhbwdeEilX1c98bhvgL1A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(396003)(346002)(136003)(376002)(39830400003)(366004)(26005)(7696005)(6916009)(66946007)(9686003)(53546011)(76116006)(186003)(166002)(66476007)(71200400001)(83380400001)(966005)(66446008)(66556008)(64756008)(508600001)(6506007)(55016002)(4326008)(5660300002)(86362001)(316002)(8676002)(8936002)(52536014)(45080400002)(33656002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: dlivEMj8VArITiHpc7NR4pQI64eFA0JkrucsBfdk1bC4wIGguYSzglRryDrHQ2LfTdtg6r2LJrCtuwrHfbtPAV/+JWNeCv+b/8nPBv7ESMXAa/Zx3/Qlu6m55qex22WoCejtD4ucXdF3Gw+fybmcPF+bvM/7cAjT+1QQYFqEm4LxL+1v4LPKKPdVwpYi2eEbrIzX8Gz69vpfylTjfHNTN+FP39LnLzCsutHRUVUvzMxM9dSE43NibpeKTNflKEnUAS1ViW9Iph5QtULMGWp+BmkQ6K+o3Jf3zlgnDbx5Yfe8c0KOLmq1GfwknbN26asFyUNCHlV+w4l+bqaBCRFPF9LjgB9BKL8BKCUnK8tKlSnkJ4tnIWxJbLp7+/7yAXRwT9uI4ACi3rxw+tNn/NHpxrJXq7Rfl7/N7fUOn2fEHPF9MJhNLQGD0ZeRefiJ/VPmoRjLTtByDWtPiTzlr8Y8F8jzu79pJJwgqcQ6HQ5ZVbjSS6NzNIIsWNv/JSeGAIq97CwjtGUHayIBMcrPaOT9ODA3fvYQWMCiwlyxoL6wr1gPaEeK4mRLcMps9gu5zOuB9ccW0yC5gTgMeQFMPoXs6b84cZZIwLyBtX7Ny4ILXvzzWClD/PjLbV+lN3MZURmQq+RV6kTk5yoB4ZboD+aDhw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 013d97f0-debf-46f4-c23e-08d8390a9775
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2020 06:41:32.4459 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J3e+t4egJhDzKL8q2m+qAHfaz1wS7vjTkNMt7BDc+nPLmGGmGM/9GVQ07lNV9SASqBltV/IWTnN4AAcWrkagIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB3932
Subject: Re: [USRP-users] Using PCIe
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
Content-Type: multipart/mixed; boundary="===============0661585169277057142=="
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

--===============0661585169277057142==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB25885E1FF1757CDC836DF65B904B0MA1PR01MB2588INDP_"

--_000_MA1PR01MB25885E1FF1757CDC836DF65B904B0MA1PR01MB2588INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Neel,

Thanks for your reply. But to use 10 Gbps NIC we need to change the FPGA im=
age to that supports 10 Gbps communication right?

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Neel Pandeya <neel.pandeya@ettus.com>
Sent: Wednesday, August 5, 2020 7:48:56 AM
To: Koyel Das (Vehere) <koyel.das@vehere.com>
Cc: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Using PCIe

Hello Koyel:

Yes, to use PCIe with the USRP X300/X310, you need to download and install =
the PCIe driver.

However, if you're using UHD/C++ or GNU Radio, then I would recommend using=
 10 Gbps Ethernet instead.

--Neel Pandeya



On Tue, 4 Aug 2020 at 04:30, Koyel Das (Vehere) via USRP-users <usrp-users@=
lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
Hi,

Do we need to install driver for using PCIe with USRP 2955? If so which lin=
k to follow for all installations to be able to use PCIe.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--_000_MA1PR01MB25885E1FF1757CDC836DF65B904B0MA1PR01MB2588INDP_
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
<div>Hi Neel,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Thanks for your reply. But to use 10 Gbps NIC we need to c=
hange the FPGA image to that supports 10 Gbps communication right?&nbsp;</d=
iv>
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
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Neel Pandeya &lt;neel=
.pandeya@ettus.com&gt;<br>
<b>Sent:</b> Wednesday, August 5, 2020 7:48:56 AM<br>
<b>To:</b> Koyel Das (Vehere) &lt;koyel.das@vehere.com&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Using PCIe</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">Hel=
lo Koyel:</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">Yes=
, to use PCIe with the USRP X300/X310, you need to download and install the=
 PCIe driver.</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">How=
ever, if you're using UHD/C++ or GNU Radio, then I would recommend using 10=
 Gbps Ethernet instead.</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif">--N=
eel Pandeya</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
<div class=3D"x_gmail_default" style=3D"font-family:verdana,sans-serif"><br=
>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, 4 Aug 2020 at 04:30, Koyel =
Das (Vehere) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div></div>
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Do we need to install driver for using PCIe with USRP 2955=
? If so which link to follow for all installations to be able to use PCIe.<=
/div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards,</div>
<div dir=3D"ltr">Koyel&nbsp;</div>
<div><br>
</div>
<div id=3D"x_gmail-m_5891566876836178092ms-outlook-mobile-signature">Get <a=
 href=3D"https://aka.ms/o0ukef" target=3D"_blank">
Outlook for iOS</a></div>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB25885E1FF1757CDC836DF65B904B0MA1PR01MB2588INDP_--


--===============0661585169277057142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0661585169277057142==--


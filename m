Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3183922F5CB
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jul 2020 18:50:42 +0200 (CEST)
Received: from [::1] (port=46750 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k06Kj-0004Ul-O3; Mon, 27 Jul 2020 12:50:37 -0400
Received: from mail-eopbgr1380095.outbound.protection.outlook.com
 ([40.107.138.95]:29120 helo=IND01-MA1-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <koyel.das@vehere.com>)
 id 1k06Kf-0004LM-QC
 for usrp-users@lists.ettus.com; Mon, 27 Jul 2020 12:50:34 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nj+kT1VoEYrMjOo+7wH55w5BjqCIndl2DEUl5BLWAqjWd5OHB8QktdnokABOp+bFUXg3uzuJYlzKsuTlEHNw5LpFChM7EOiDqExqqX6AmlN5rrNmzA+UlcCDJYmvRPeDnKFAz3qGr7oR69rDtczCWKFa+66vsybmdSxMhmLsftMHp+YFq+HLJTlJohCtKxGcpqByGP7FldZPccVLuNB6pvD47yl+uEKCmcmGw4lpeJTvsDr3zFLFoR80v7HtvfU6giuYZfo5LWtxsdDjuMBUSz/sKURpujUG12Lw7ze9mtOTaek4dZGVSZ4Jyo72Gs56Z27AApCJlj0vyukMXLMRGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cp9u6QzZhLXRSyU74qxSwD1EWBudW3m0mjuizIBuPUY=;
 b=O9WBaELFcMhlEpBJiFX5b7wElaeWWUIfZxeIXmXzFc7NU2u1D6yGFv73yRnnB3eIJ/Gsz2bwxaZzHaOR19MUA8BXZU/AkUFPOUgCycKIkGwv7mpf7om/91PET8NJvcKBZgm+hnGJaN991sYsIqBhqBtMD0jzY76eaN9pfK+RP3mlfJrIxmviPfO7d2oP2PVRDPkz60/rm3ceox+ebOUNrFSKGFgtbimMrRW5ZoczGmvV82A3hj/g857vhu9ggnOPLzpqYKDkLN45KkHnc1+IiIZF7504UD9ubgMHIU5INkludwy5nQ4GpOIMMi91aK7nVY6Us3E+x8wT42l07KMpbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Cp9u6QzZhLXRSyU74qxSwD1EWBudW3m0mjuizIBuPUY=;
 b=KEyd+3Ty9YxAWPUFaywXnD1e2w3Sdba9y5iGtANegvOpQTKfbwQlruu0yWRyiN/HQfUqw1FKBlq6l8aZpbJBdcNcDc/SzQbeSc1SDT5QZzWsGKs908wLcPE6VVWRoR5FxkrKnZ+d6L8eCr5pXMoczcQmNvn3Jdo5riwcc6aPrio=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MA1PR01MB2459.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:38::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Mon, 27 Jul
 2020 16:49:49 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::b527:579d:9786:f41f%3]) with mapi id 15.20.3216.033; Mon, 27 Jul 2020
 16:49:49 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Maximum phase offset in usrp channels
Thread-Index: AQHWY//D844esIbWPkiYrfk4Q5RWJKkbllgAgAANUSc=
Date: Mon, 27 Jul 2020 16:49:49 +0000
Message-ID: <MA1PR01MB25889A5CE905D84DFB88AC7990720@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB25881E21C70C5AC940E50E9F90720@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>,
 <5F1EFA52.2090108@gmail.com>
In-Reply-To: <5F1EFA52.2090108@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [42.110.155.173]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a8338d70-ba3d-4ca6-9aa9-08d8324d137d
x-ms-traffictypediagnostic: MA1PR01MB2459:
x-microsoft-antispam-prvs: <MA1PR01MB24595971684C047E211C70D690720@MA1PR01MB2459.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RA23WI0zvSLc2SAJ9swReIXX96fg9QI4/zmXK+dH7//9wMDc9AzGFuF4MsunfojcH3kLXSql5WkxEq2MXoc6pN/JAdJYYEfO4FuQer7xE6VRz81EH0T5gIABjmnbzVbEAcZG3NrdcTsM/K1G0itUyZHGXSYXdJoEQfSb4x3zuF9eRFllMj45vXTXo5UZompt1SC2kwsGTi2GTwgTvOMUp4d/sJ24n3prRJS+TNNudhZXgIXfjfVTAFRiZv7mkJpyg3VvdkpAMbHEljhlHzkRBTlA7JCedNP71NGby10CUNGypKDGxZOUAXgUfv+UayWI6L33NzoLnTWfV61sLuXotn//7qm/41OY8arOcU2BaUWukYCZF0NTReMdMTIFKihMe1BBracXuRAWOsgcdcCCmA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(39840400004)(396003)(366004)(376002)(346002)(8936002)(83380400001)(5660300002)(508600001)(166002)(86362001)(52536014)(33656002)(55016002)(9686003)(316002)(26005)(71200400001)(66556008)(66476007)(186003)(110136005)(76116006)(45080400002)(4744005)(2906002)(8676002)(66446008)(64756008)(66946007)(6506007)(53546011)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: RzPdFHRs2hBm/C4QSHh95QTrLKyL7hlT76ENQOrRw8HHCgIL6OT8sgnLCmJlK1LeNHCva8CGIhXMRvONOtASHNQQGnEwaT91lqv50LuJff/RTg+Z2eXV1Rg9+nju+eUInjg3YdBcBQ8iq/99+xXtx/i3NVeS7c/uyXu8Huh45qnriytUiSrI2pvyhcChzsNyAFY+8kLDNIbqUdPR3sKVNM9VPF79XQUXpJJaTkGVJCk8ZnoSgwH9atMyidttiDkPeaD6Fre7+e0YLThjK8p3ajieuGFpErplHWVa2AfTdn1aTMUNShzRf+w38N5It2/7K0iYyj64HBwhXGTCZaW3LkEP3bRTfj1sUMzocJZ28+15E8hdHCsQ9hXWD/GyhFQpT+lhmnOMHLiy6LTqyTNf6SpirWe5BeQDbdI+v5CDtEYkD/0Ngv+WkQ+xjwA+YblKIwz3oaQoeIP3h6iMl4RSJdcZ8gansoHyzRJd3b3PuoMk5Ay1ey57nCn15n+wKE5m
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a8338d70-ba3d-4ca6-9aa9-08d8324d137d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2020 16:49:49.2964 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sznbHi6rYw+EUvW2XqW4xa8zwEmm5q+VvtLs/gPzyEWuNX8AzaGqqmWVovmzswN4iyskumEm+vpSWQI2yUVlUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA1PR01MB2459
Subject: Re: [USRP-users] Maximum phase offset in usrp channels
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
Content-Type: multipart/mixed; boundary="===============0722698638038311257=="
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

--===============0722698638038311257==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB25889A5CE905D84DFB88AC7990720MA1PR01MB2588INDP_"

--_000_MA1PR01MB25889A5CE905D84DFB88AC7990720MA1PR01MB2588INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ok thanks Marcus so much for the information.

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of Marcus D=
. Leech via USRP-users <usrp-users@lists.ettus.com>
Sent: Monday, July 27, 2020 9:32 PM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Maximum phase offset in usrp channels

On 07/27/2020 06:26 AM, Koyel Das (Vehere) via USRP-users wrote:
Hi,

Normally usrp is phase coherent that is instrumental phase offset between t=
wo channels is constant in any one run of the application. I want to know i=
f this phase offset can be any value from -pi to pi or can be more than tha=
t?

Regards,
Koyel

Get Outlook for iOS<https://aka.ms/o0ukef>

Phase offset (if any) would be limited to +/- pi



--_000_MA1PR01MB25889A5CE905D84DFB88AC7990720MA1PR01MB2588INDP_
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
<div>Ok thanks Marcus so much for the information.</div>
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
<div id=3D"id-82326e50-9e5f-4e00-8436-69095e62a45b" class=3D"ms-outlook-mob=
ile-reference-message">
<hr style=3D"display: inline-block; width: 98%; font-family: -webkit-standa=
rd; font-size: 12pt; color: rgb(0, 0, 0);" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif"><b=
>From:</b> USRP-users &lt;usrp-users-bounces@lists.ettus.com&gt; on behalf =
of Marcus D. Leech via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Monday, July 27, 2020 9:32 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Maximum phase offset in usrp channels
<div>&nbsp;</div>
</font></div>
<meta content=3D"text/html; charset=3DWindows-1252">
<div class=3D"moz-cite-prefix">On 07/27/2020 06:26 AM, Koyel Das (Vehere) v=
ia USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<div dir=3D"ltr">
<div>
<div>Hi,</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Normally usrp is phase coherent that is instrumental phase=
 offset between two channels is constant in any one run of the application.=
 I want to know if this phase offset can be any value from&nbsp;-pi to pi o=
r can be more than that?</div>
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
<br>
</blockquote>
Phase offset (if any) would be limited to +/- pi<br>
<br>
<br>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB25889A5CE905D84DFB88AC7990720MA1PR01MB2588INDP_--


--===============0722698638038311257==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0722698638038311257==--


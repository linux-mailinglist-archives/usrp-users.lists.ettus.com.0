Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B793F475E26
	for <lists+usrp-users@lfdr.de>; Wed, 15 Dec 2021 18:05:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA64F3851EA
	for <lists+usrp-users@lfdr.de>; Wed, 15 Dec 2021 12:05:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=usask.ca header.i=@usask.ca header.b="Mm6UiCX8";
	dkim-atps=neutral
Received: from CAN01-QB1-obe.outbound.protection.outlook.com (mail-eopbgr660116.outbound.protection.outlook.com [40.107.66.116])
	by mm2.emwd.com (Postfix) with ESMTPS id 0D965384FF7
	for <usrp-users@lists.ettus.com>; Wed, 15 Dec 2021 12:04:23 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k4oeNc3c9meCKKmYdJPCrLhKXXLxju1Y5Npp7WKKLsQHuE3s+r8RX5Zo7V0/DOQY+t8K7px1Ow6KsZnLN8KZTGlHE2vcDiQjCFJclT/IIxYpMYvt8FCciBt1kNiIFEEKu2+TwPt58Ft0G90MMfU4o2QrIJ/WfRvUzBNZxgPdfbiJ5jk9vDSJAhODlegLbCjWk5Bl0h8bUPvAlFGFL03GEt9TLcR+wC64HIosHSiVRZObO5t7xCmi6dJR0epIYvwhgdGrKaQlDf+XlDWCAmJZgCMMQmbMqc0lAGUq7CNs8XSuZxDgwAdKDdZYudkXHvCC3kGVPegEYJtE2XQFW7WAAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UqVBIhGuC7U1uGoIkFxnka5B5FDiY0Ex4aRc3TxyDdQ=;
 b=OZYstNnm3w05+gJqpp8duje29uzgO0dv1dspcSCvTs92Fu1SacAp9Q7f7FBiSPs6XYCgsy8CBc/jJTVNxnVQo5GXYwbo8z2VyETaL+p+KQTtI2s5R5GoEf2c5g3I7UPIp4uW8fuvmniFGIgfuqoqBXPU0QmSD+OoZaH3yqXEPks+3T5/Z9pWTpnlapU/sMFzo8mPjvudnDft6Fr6wPCGewwm4EjnwkQjcPV25fLdv1ZjRXlxsHL7ybRJxm+sNeYBnISBJxUI/wTjRB+W8LMj92jK9zJ9HVT5PQC0JO57kz/vjnkK94ZbGCIHYSd7FbUt9wrC04/iZm0tdteE0u7hAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=usask.ca; dmarc=pass action=none header.from=usask.ca;
 dkim=pass header.d=usask.ca; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=usask.ca; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UqVBIhGuC7U1uGoIkFxnka5B5FDiY0Ex4aRc3TxyDdQ=;
 b=Mm6UiCX8n6lOpP31mFOu66IujbteafCju43SbtDWFxfnJzKqxweBd32VLzs0LNi6n9Yl6C/kBZOl3FHMSePkqy9uFI9lS8133+pQpDCL378njjbAL16TeGf+dFj3YaK9vlDCRXEFY5eWq92yupBS2y+LRHogfi1oiqtwbI5L3wI=
Received: from YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:1c::25) by YT2PR01MB6192.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:4f::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.17; Wed, 15 Dec
 2021 17:04:22 +0000
Received: from YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::953e:bf4e:df:66ac]) by YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM
 ([fe80::953e:bf4e:df:66ac%6]) with mapi id 15.20.4801.014; Wed, 15 Dec 2021
 17:04:22 +0000
From: "Rohel, Remington" <remington.rohel@usask.ca>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Python equivalent of multi_usrp_clock
Thread-Index: AQHX8cWmzEkPXVi0sEWKI0gVe7D4XKwztV0AgAAQF3g=
Date: Wed, 15 Dec 2021 17:04:22 +0000
Message-ID: 
 <YTOPR0101MB1401E7E170B997F7815CE34994769@YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM>
References: 
 <YTOPR0101MB14019905FFD39868EFF8EAFE94769@YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM>
 <cfbdd6b5-e395-10b7-c05d-32a85cece2cd@gmail.com>
In-Reply-To: <cfbdd6b5-e395-10b7-c05d-32a85cece2cd@gmail.com>
Accept-Language: en-CA, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: f29aa849-f31a-cbf6-0e68-1ef26127d702
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=usask.ca;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01d6de87-3b9c-4571-aade-08d9bfecf0e3
x-ms-traffictypediagnostic: YT2PR01MB6192:EE_
x-microsoft-antispam-prvs: 
 <YT2PR01MB61924CB2DA13607AFAD122DB94769@YT2PR01MB6192.CANPRD01.PROD.OUTLOOK.COM>
x-uofs-origin: Internal
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 mgcGHFWnPhJ32DVI5ZmGo7s09jIJQpubkIAJi4c0Y+ttukdTpUYEan9IG7KD6EI8KoxzevqVcj0IbrJvmQolakOE2RDAQhxAIqUpW15UaNgtqxcLiFZdlFC+19ByENOimYFEFgs7isRqXfRjCdKxvkQJugfC2zSYE9EqSRJl1tndtVGZvw5CM0DiNG1Llucl4a2QOkHtIVR+/G6k/3DVRU31fqjts6eE+/vdopjx50lq1A7G0MVzpUcGEexY1ZHcFXwzOWny8hF+LGJntMiBk5rS3kWptIae8wdU35+3nEeiUv19f+LGigMCqIbjwGmB8HH5t185ETeYhUM8st1wb7s7N83Pm5Pers9Y5nQfZ2U6ZIpoExwnLtnbdC2e8VVNedGkSKuxV//7TGDAfb/umCD5hwbRmCxDbAJGFYyEaL/cpMlcKx/c/D5IK4cZdBHsXdJYup+gCMDzLHg2nsHYSHOKuNwolrDKDal8DIx18VUyTQuPn0ATBtRlmtZn/sH1pF6gPWosr2ttfJXSPwicf0Wff7U2JiWdr7zt6XbRjP7aiPu9DoVP1wLtH8We8EYlLm0pcEeUBlRxbxam6iFHTcLB3tSqGPGlmib4Xh5s2y6prhwrkX9iZBjua8uFxZqp7pC1P93A30FntelDZM/V4fP3Az359qoGLvFHJT+y1cR7QmkvrwFJn6bH3lJVO9+oHv3eXbNzMC9rx3dY0O4UzA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(366004)(83380400001)(19627405001)(122000001)(38100700002)(9686003)(8936002)(2906002)(508600001)(5660300002)(38070700005)(4001150100001)(66946007)(33656002)(786003)(8676002)(6506007)(66446008)(76116006)(91956017)(64756008)(66556008)(316002)(66476007)(6916009)(26005)(186003)(86362001)(71200400001)(7696005)(55016003)(52536014)(53546011);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?B5ssru+EQEjpDIPgc48vjhc1+PVIv+7FqaALbSJ2JzBs4I2SKOVTQTvTbV3T?=
 =?us-ascii?Q?pD2yBFIrkJutd3Lc7Mb1UOuUlSMDy1zlrA+nCw1P+IetfEyGRXh5iGuqhn5o?=
 =?us-ascii?Q?FzdNDfEiDOr5AifWJwC3i8vtT5NI7PKwJCBujGkpaNQFxDq7w3AK5jxTZQbG?=
 =?us-ascii?Q?uCkUifJSxvNS2UWBO1gwzehta4v99CeRG3TTiK0fHsD0Xwz0hWbCT62e9MUP?=
 =?us-ascii?Q?IXpsY130qPXEvrSH1ROqQx8kxqTEqXYNnIVESoTvneChjP79IB/1uzrH92yb?=
 =?us-ascii?Q?0qd4zE6g6FrTdXoWvR7G/pJIIJo4o4r6/mbAr37VGdv3vjJWPDLIJr0W6PTv?=
 =?us-ascii?Q?Va3fyvatF+7hArzc6wtLtUzgUR8ACTVFS1zD2GpWVlDH7l/+8Ez1lvJf0Oim?=
 =?us-ascii?Q?E5s3ucHshASL47mBMlalZDMVLH5sqb0B2B7lDkd0dNZFB2ogi5ZqI3E6jXz1?=
 =?us-ascii?Q?VqAhFKVY2/+gV5ke4euB63UqKxZcnQu522OIwxVgMtTusYeRbcMK1NkuxABq?=
 =?us-ascii?Q?JdGVf/ope++dokGHpXIGwQ/9OgjFRahAZy3SmPOTUoEtZaSB2zsA0Z2E7PkB?=
 =?us-ascii?Q?I1jeUivXCl1Mw2YSjvQAb9SQ37S0k1Z/8cZYOrraNOu7Ofhvc/9MFsi6BAeg?=
 =?us-ascii?Q?t5LgJfjeegNp8FUfNhzxcnXvGyiv1K37r4hMjvZQjoYxQD58oUZR8qkJCHBZ?=
 =?us-ascii?Q?CWPOcDBXFP0vjcl+S3L3QFpMaPXGiTKRadpuPSxcUzBA0vMJRM9galTD361A?=
 =?us-ascii?Q?IZQk8ZMdpt7lYQgPFBr0paiDNzRH96VBaHuyrdM0l3YNzwfyl5jGLWmKubjJ?=
 =?us-ascii?Q?/9yiV+UTOPiT4YkOEnMiwt10aLDwoseoAp2D+SFQCLdhhXAF58waBwDRP5cI?=
 =?us-ascii?Q?O74DZYa3FUYIGV83gzQj6qi8oMpEeNATaUJqssuIcpL8UgWefW6YaVOTEdrW?=
 =?us-ascii?Q?CfCyJzaLPd6WwL3pJsqwHsKkpLrRH/TPrZ4NvSauG4wRx1BnJQwIhwrSRqx1?=
 =?us-ascii?Q?+8zHdxoUwknLyxYGT0DYu9IhDPuJNzAc2J/l6AojdgzMVeKYipME2HMe37oH?=
 =?us-ascii?Q?sTIkU9JeSG20OXg6fCzvGRjC+lxmCLT2Ez9hDjyXmOeOztLYvUlCwWsdyiS/?=
 =?us-ascii?Q?fqChRCC/fNS22YZWoCBF5KQhYSI+XeBUnbJJpdwnvrOrtWyEESh4uKEEYfv5?=
 =?us-ascii?Q?BiNeiXMkrGtrnJFrAIJYWe1k+9tLV4hdUfCt2kl+dWCymTMzDZCsKlHQ0ULD?=
 =?us-ascii?Q?XCn7xcb3X22q13K8xWIZFObc1HH5CgoJl0vTmJdNyyqEoRDyW1Zeq6AlebUC?=
 =?us-ascii?Q?NkLTBwdTrPzGZtd6q10K0t19XMfcX0Jp8Bg3yRLhOp4PbKvHv8DFxY3z2E/b?=
 =?us-ascii?Q?R51IMFXcZcUbO6461WEkq+uMzj/+uUoeaTZYsVeiN8XwxQ6dNVcekfnhd9ji?=
 =?us-ascii?Q?/7ElYA9UdySwHx3+GMtLUUv+rPluokrh/HT+C4V/iNqUMS76UCo5vzK+Keoy?=
 =?us-ascii?Q?6jefOW7IbYnT460OXmRC5cbP6ZAsKEHyZlRyJd4cyVnX+MiIZur3j234Ug?=
 =?us-ascii?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: usask.ca
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: YTOPR0101MB1401.CANPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 01d6de87-3b9c-4571-aade-08d9bfecf0e3
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2021 17:04:22.3375
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 24ab6cd0-487e-4722-9bc3-da9c4232776c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: miDnDsW8u/bW+j+ZUViunujldijiO7516lsPU3E5CySI66BnE0lFOMSulK18C2Ri
X-MS-Exchange-Transport-CrossTenantHeadersStamped: YT2PR01MB6192
Message-ID-Hash: JY4CK5BURT65VEORW4UZZGUJ2LPDTJZS
X-Message-ID-Hash: JY4CK5BURT65VEORW4UZZGUJ2LPDTJZS
X-MailFrom: remington.rohel@usask.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Python equivalent of multi_usrp_clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HMZ73DLSVJVGVZAXA7P7HD4MRZOSXXNP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3807170710869164242=="

--===============3807170710869164242==
Content-Language: en-CA
Content-Type: multipart/alternative;
	boundary="_000_YTOPR0101MB1401E7E170B997F7815CE34994769YTOPR0101MB1401_"

--_000_YTOPR0101MB1401E7E170B997F7815CE34994769YTOPR0101MB1401_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I can take my best stab at it.

We got a new USRP-based system running in 2019 and installed at the last of=
 our sites this past year.
I'm new with the organization so I don't know Robyn myself, but I've heard =
her name floated around her several times.
________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: December 15, 2021 9:57 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Python equivalent of multi_usrp_clock

CAUTION: External to USask. Verify sender and use caution with links and at=
tachments. Forward suspicious emails to phishing@usask.ca

On 2021-12-15 10:48, Rohel, Remington wrote:
Hello,

I am currently trying to convert a USRP driver program from C++ to Python, =
but I can't seem to find a Python equivalent to the uhd::usrp::multi_usrp_c=
lock class. For my setup, there are 16 N200s being synced by three Octocloc=
ks (one is an Octoclock-G which disciplines the other two, which in turn di=
scipline the N200s). With the C++ program, a multi_usrp_clock object was ma=
de using the three octoclocks, then used to set the time of the N200s (as a=
 multi_usrp object). The functions that were used from multi_usrp_clock wer=
e get_time() and get_sensor(<arg>) with <arg> being one of "gps_locked", "u=
sing_ref", or "gps_detected".

I've tried searching through my UHD build (versions 3.14 and 4.0), but ther=
e isn't a reference to multi_usrp_clock anywhere in the python modules. Any=
 help is appreciated.

Thanks,

Remington Rohel
Engineer-in-Training
SuperDARN Canada


I don't think multi_usrp_clock has been wrapped for Python yet.  You could =
try doing that yourself if you have the knowledge to do so.

When did SuperDARN get USRPs?   I did some contract work for NRCCan a few y=
ears ago, working with Robyn Fiori, working on the existing
  NRCCan riometer network.




--_000_YTOPR0101MB1401E7E170B997F7815CE34994769YTOPR0101MB1401_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I can take my best stab at it.<br>
<br>
We got a new USRP-based system running in 2019 and installed at the last of=
 our sites this past year.
<br>
I'm new with the organization so I don't know Robyn myself, but I've heard =
her name floated around her several times.<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> December 15, 2021 9:57 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: Python equivalent of multi_usrp_clock</fon=
t>
<div>&nbsp;</div>
</div>
<div>
<div style=3D"background-color:#FFEB9C; width:100%; border-style:solid; bor=
der-color:#9C6500; border-width:1pt; padding:2pt; font-size:10pt; line-heig=
ht:12pt; font-family:'Calibri'; color:Black; text-align:left">
<span style=3D"color:#9C6500">CAUTION:</span> External to USask. Verify sen=
der and use caution with links and attachments. Forward suspicious emails t=
o phishing@usask.ca</div>
<br>
<div>
<div class=3D"x_moz-cite-prefix">On 2021-12-15 10:48, Rohel, Remington wrot=
e:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello,<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
I am currently trying to convert a USRP driver program from C++ to Python, =
but I can't seem to find a Python equivalent to the uhd::usrp::multi_usrp_c=
lock class. For my setup, there are 16 N200s being synced by three Octocloc=
ks (one is an Octoclock-G which
 disciplines the other two, which in turn discipline the N200s). With the C=
++ program, a multi_usrp_clock object was made using the three octoclocks, =
then used to set the time of the N200s (as a multi_usrp object). The functi=
ons that were used from multi_usrp_clock
 were get_time() and get_sensor(&lt;arg&gt;) with &lt;arg&gt; being one of =
&quot;gps_locked&quot;, &quot;using_ref&quot;, or &quot;gps_detected&quot;.=
<br>
<br>
I've tried searching through my UHD build (versions 3.14 and 4.0), but ther=
e isn't a reference to multi_usrp_clock anywhere in the python modules. Any=
 help is appreciated.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Remington Rohel</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Engineer-in-Training</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
SuperDARN Canada</div>
<br>
<br>
</blockquote>
I don't think multi_usrp_clock has been wrapped for Python yet.&nbsp; You c=
ould try doing that yourself if you have the knowledge to do so.<br>
<br>
When did SuperDARN get USRPs?&nbsp;&nbsp; I did some contract work for NRCC=
an a few years ago, working with Robyn Fiori, working on the existing<br>
&nbsp; NRCCan riometer network.&nbsp; <br>
<br>
<br>
<br>
</div>
</div>
</body>
</html>

--_000_YTOPR0101MB1401E7E170B997F7815CE34994769YTOPR0101MB1401_--

--===============3807170710869164242==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3807170710869164242==--

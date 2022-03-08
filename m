Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BCF4D1854
	for <lists+usrp-users@lfdr.de>; Tue,  8 Mar 2022 13:52:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA4E1384FB8
	for <lists+usrp-users@lfdr.de>; Tue,  8 Mar 2022 07:52:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="NthnpbD7";
	dkim-atps=neutral
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70090.outbound.protection.outlook.com [40.107.7.90])
	by mm2.emwd.com (Postfix) with ESMTPS id 5DFBD38475C
	for <usrp-users@lists.ettus.com>; Tue,  8 Mar 2022 07:51:16 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oeflf4YG8DpVQHgxDcisPMhwF4Y0ELzdZgcm9x9u9UljS4yXsTBI9n4+NnLSom6YXBHunOvq9BZLI1+1ypmySVMQASfoOXyw6KNcZDEaFlpcthRLd1r+6RJODEhoGkSN2KYy9Jxjh8ExRpmyYJeAJdIASIH+WGo5FRrXmsqNAzdrrwvl7Of5zlhUhdD31Nvv8vfb6qufO/LessG93/S3nrWX4J3d3EltIlPWuOfWXxRUxE1Zc464zfj0y7FCbYzRqmoBepGgOP5RqFJsG35P1054c8ghH/X5we62ilIjJ3XZskaEm9EoPwwjQCWGhFNVAqo1PQbp1/9mzmK+upxj9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BqcCrxf+8DEKUkEbW2XAzdioHCl61UR468XDgU8w+Bg=;
 b=BXpmJT0kGwg076ff0DFr4bC8cKrZh+SuBiGst7LWjGQBXaBVVTxJulb354rfvg7dtvBgiMVAF6EEZM+fz66QqRwIyWICMGZhx5sT8++5LBbGUS9D9G4n/r/HcVmbQb0XCSUlfRKs7X2xvAj+4Is14nhl1G+VDTXxy4hnAlH94PlGrVxbloLCT4sYVCMJ2XHaQvW0qxCJSmSyPxSwbrFDBgPevsVcmgSPttKcqXwefVAHmy9wifQoY3+d9h1KmJ9RDFIzwTlRCbAdxdd2X2DgAZoCK7m8MXcwvmsLtUoNPNBZekfHh6C0mnGpBURQed4gjB/i5twpJCNlWuSyJ0qIFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BqcCrxf+8DEKUkEbW2XAzdioHCl61UR468XDgU8w+Bg=;
 b=NthnpbD7WvH15sHwvvh/vbVVZgOxMT5kT457hWWSPyF5H2gMC6ELxjshNJlEuS04csYzCOuJfhn6jn3fY+SHbGV/J/UTsH6nKQM6Euj0JzWZ2XAgwjN0sDe6THLXbLZBqNcrZKr7f0mekdVQ1Fgf/ePH+7AOId38XQwXbfTae6U=
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:36e::5)
 by AM8P250MB0375.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:32a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.17; Tue, 8 Mar
 2022 12:51:13 +0000
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::e951:ee1a:ae1d:187a]) by AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::e951:ee1a:ae1d:187a%5]) with mapi id 15.20.5038.027; Tue, 8 Mar 2022
 12:51:13 +0000
From: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: GPS alarm PIN set to true
Thread-Index: AQHYMusxjCFeRu2IikK1hJ3r8Z9+vw==
Date: Tue, 8 Mar 2022 12:51:13 +0000
Message-ID: 
 <AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-150, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 4779babb-ca87-4e71-e6e1-2ff6429a6cca
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4a0e4211-8756-4f98-5c7d-08da010253e1
x-ms-traffictypediagnostic: AM8P250MB0375:EE_
x-microsoft-antispam-prvs: 
 <AM8P250MB0375FECAA90E11128F8F3F8A9B099@AM8P250MB0375.EURP250.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 w0+CLU1UpTVzhaT2afEWxySUjCR5iVF7Bezecy5Y87NXXgT+q+Oxr/3mmORLXXJHWnksaTOtBZj6EYQSHqxOPcVFnl1Y0D6WQ4STMBL0iSnTW9/E1N2TdQG+iZTVuXLM0WDJoAZm7l/cXmo4jEx9oj+0iCIgoWlkoYqMWYX89qQ6xDNzqz9pQFCmQShcPeQflqLNi8OLRuuGzGP+6UxV7HArEli/t4miltzmCj9o4dHvPBl3dV+9A2oOx5SqhLTUTtu2dhkTHd8NJfTOcjZIm/xBxC1U4JTBgf76r3X4Unj+Mr6KpGPH3CxWuLPlHnM1fp2kjL2kE+TCt997I1dytKmD/EhdKN5Z58PQPaN63PflWRSCKn+jX3+49nkoc27Ia1Gk3hb18UUOvqCt0ssjToZr4k2SgfHV69V5uQ1AQfQj4uKuvjcTyEVoXcfyMlX23ljhBjOwtBd6kBNGCWFC37sCyD9w3SdyChLWiu1uxq417MoFt5p6hcIMEuayfqoSjiuYB+BifkafrHbU5y0cePK3ZCT7KVQo8oS8vl49ThmTxs5vpfdEI38meQXjnqXuKH4sAQHUohUyTOgQWq/dQdx+cK70A0HYM792jw2l2uiEFRTEptAJbzgcGJgCiNEOIKTu9/EpUr/HW83+drMGqYV8sVtNeFCbghty9f+0wcShWpsSk1CGF1/lFm0q2wNY3QSv10rI+/gQ8a1D3kIO6A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0107.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(39830400003)(396003)(376002)(136003)(346002)(508600001)(66574015)(26005)(86362001)(6506007)(9686003)(71200400001)(91956017)(15974865002)(8936002)(7696005)(38100700002)(8676002)(52536014)(66446008)(19627405001)(66476007)(76116006)(66946007)(44832011)(64756008)(122000001)(186003)(5660300002)(66556008)(33656002)(38070700005)(966005)(316002)(55016003)(83380400001)(6916009)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?VIfVROK7VRm9cffB5985XDd6RLQ/QqaWxSmgXpwgM0RCiZaHAAUde0Xff4?=
 =?iso-8859-1?Q?z4mcfFdAfUkfu9PCVmgMsgGp0oqp3FhV/yvZlKHXUIsDo2O92Qod3V+AJT?=
 =?iso-8859-1?Q?WvfEqFXZlHgoQ3NFdPzk+gI1hW87AVY6zoRWnOXUXq8NOfpCC4Tuz+kUxh?=
 =?iso-8859-1?Q?y7qjkxZieNoBrE/X1ronyteM5KXFXD+PgxL/fHdwigTnRZXRAZpeu7c2I6?=
 =?iso-8859-1?Q?ErHQG07xgp/Slq7RHyebHIx7fNrZBYYxcXFltMYjLA+xan+gGPwosJDMOW?=
 =?iso-8859-1?Q?/t6DHWvzreUMvTc/4OpWvw7aFGXV8my5wYx7tCdXEftXYPWw4H+TPgYE0H?=
 =?iso-8859-1?Q?ADTaJPXMSPctjHV78jROZZCN+ikX6BkJE9l75BCyOAd3ZTG8zusTcPL6l9?=
 =?iso-8859-1?Q?bn2nk6Uz3mAqVemWrV/GUvYSGL5KVmI+hzdkI7Rj2yMPoVROVK6mT+oZXg?=
 =?iso-8859-1?Q?hcReiFpeXxGnCaZ4Gxyh4cHBmCe1yKv07lZ8vdX2S9EZwKT5cUrZmsb7bl?=
 =?iso-8859-1?Q?gEquoUyoobZc6yVsaTfNZK3yzKnZN/FGgk3ZyPlSZnLUueVlxdLFxSX/in?=
 =?iso-8859-1?Q?jGKekS4EEM92qYcFQicO4VcswIwdXsKVlk+wEp8GwFZsvDHldmp+2Sz764?=
 =?iso-8859-1?Q?eV+xr/lcPO2GNA/PXsbun6Ri+bz5/rRiF6Yp35BLQIFys6a2zC4zphRmJ1?=
 =?iso-8859-1?Q?91JDkP6jIyG874KL+x8QaDSiwdSU4N6i1uvd/NVn4ZDtFA7LjXhoPNwZ3B?=
 =?iso-8859-1?Q?HYo+8jVVBnqqP9bykfaHN7haMS7o4fAJ9WVtzkDximPyb480KLBChAvaDG?=
 =?iso-8859-1?Q?hDWuS9J/hm9zvSD3Pu1z2OpFBcaH6LjDHhCDAPadYI1wF6971SdURrE9Mw?=
 =?iso-8859-1?Q?qHA3dC+/rWLWH34JHwUhAWLQsum/plsoTgumDBMmHTFVfg8VkTHBBf0ZPb?=
 =?iso-8859-1?Q?gpM4xcfgAcyGsx6W6FBnomMkxijg6nG7FJC2sSj7CFr6fHsVIBy8R6nkib?=
 =?iso-8859-1?Q?R8X3GGHxI9+MJaBsyuw9drKGiANRJ2Ly8Fg07RWcP4SFyjqtsVkMpcH180?=
 =?iso-8859-1?Q?w2isp+fZkdal64RpnpVcoZ2CkKzczG7i8hnBZi+349hclhTSS1S0A7lds4?=
 =?iso-8859-1?Q?8DPTs4Tgz+/6M22MtKnp4RMOQHpK0b960YDngUcKvxBfk6BzLbXeLmZiO5?=
 =?iso-8859-1?Q?usDVHOnrwR9pflAyN3Np2BnmNBOVKX2FIg5CrbP/PhRjS395YCm6wK+20R?=
 =?iso-8859-1?Q?bHqcL9Og1tBGwt53o5IhTXhXAc6v/4vLE/xX+RVJL1PEwFmFkr18I5PAEF?=
 =?iso-8859-1?Q?qxD1ufEdu9L0/16WJcerSKxKFjZagJDIwJNv1GFxFegGZ2kQF4OFGEP9lh?=
 =?iso-8859-1?Q?bZJ+Pm4qGovUPHI8jT/h+kUcFTCjdchT/XFYX+Y5xAMkjWov2AYUUMaNAm?=
 =?iso-8859-1?Q?JBeo0RSAgpZ4VJ4RneP3EIdy3DiCVTK/K34QwA1hygd8rYhER+HhGSoZEF?=
 =?iso-8859-1?Q?bQvGkIyJ8Gzbp5RN0jYswjqXfhr3HIItyHgD/hQM/PuT//mw4uqykdXRpj?=
 =?iso-8859-1?Q?ezA0DE0WjlS5G9mSLbwPfS21IVOwVQqUqFFjRMYsj6Zasmc7z2k5n6XRwQ?=
 =?iso-8859-1?Q?S8RoeDglLJbNre5RaDqIXMEWiVAguq6T1TgtKPU3nRVj+sopcBOwmSgQ4p?=
 =?iso-8859-1?Q?TOCKLHj/srdlK5QilqtQQEi28XDxsuG9Wa5KQ541zQTgtWdE4blI5ST2V8?=
 =?iso-8859-1?Q?sCjojtRR1n5l9OvxQ9sIEjrz2jkU37c+VA8qBRuZx8cz/f?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a0e4211-8756-4f98-5c7d-08da010253e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2022 12:51:13.4562
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O8WM1Qq3hOMMosBLIoMLfHlBiRlvpyrVN4TAoOIq0RE/+eR9ZGjk0kgbrBejXVvErKJDwwRnAamoys+vyjSt1WxHMZ1/tUCpe8HoIQc+I8stOiojkq8MsPM1K0Y6zKzE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P250MB0375
Message-ID-Hash: WP27ZAIBCKZ67TKPM5RBI7IOR2GLUWWH
X-Message-ID-Hash: WP27ZAIBCKZ67TKPM5RBI7IOR2GLUWWH
X-MailFrom: tobias.kronauer@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] GPS alarm PIN set to true
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VFBVMQYHPOH5DP6Q2LLWKW3USNMKIAWE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7851306192285649604=="

--===============7851306192285649604==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM8P250MB0107E39DAA11AA08F47D2EB89B099AM8P250MB0107EURP_"

--_000_AM8P250MB0107E39DAA11AA08F47D2EB89B099AM8P250MB0107EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

I want to synchronize multiple USRP devices using a GPS antenna. I use a X4=
10. Running the example file `./sync_to_gps`, I get the warning that the GP=
S is not locked (ref is locked however). Further, if I probe the GPS module=
 pins, I receive the following:

GPS locked? 0
gps enabled? 1
gps alarm? 1
gps warmed up? 0
gps survey? 0

I am wondering, why the GPS alarm PIN is true... I cannot find any informat=
ion on this in the documentation. Interestingly, I get the same results if =
a GPS antenna is NOT connected to the USRP... Plus, the example file prints=
 me a GPSDO timestamp. am I missing something entirely fundamental?

Thanks in advance,
Tobias


Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W=FCrzburger Stra=DFe 46, 01187 Dresden, =
Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FC=
hrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gese=
llschafterdelegation: Dr. Andreas Handschuh

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_AM8P250MB0107E39DAA11AA08F47D2EB89B099AM8P250MB0107EURP_
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
Dear all,
<div><br>
</div>
<div>I want to synchronize multiple USRP devices using a GPS antenna. I use=
 a X410. Running the example file `./sync_to_gps`, I get the warning that t=
he GPS is not locked (ref is locked however). Further, if I probe the GPS m=
odule pins, I receive the following:</div>
<div><br>
</div>
<div>GPS locked? 0</div>
<div>gps enabled? 1</div>
<div>gps alarm? 1</div>
<div>gps warmed up? 0</div>
<div>gps survey? 0</div>
<div><br>
</div>
<div>I am wondering, why the GPS alarm PIN is true... I cannot find any inf=
ormation on this in the documentation. Interestingly, I get the same result=
s if a GPS antenna is NOT connected to the USRP... Plus, the example file p=
rints me a GPSDO timestamp. am I
 missing something entirely fundamental?</div>
<div><br>
</div>
<div>Thanks in advance,</div>
Tobias
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | S=
itz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Am=
tsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettw=
eis, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:
 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any att=
achments are intended only for the person to whom this email is addressed a=
nd may contain confidential and/or privileged information. If you received =
this email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</body>
</html>

--_000_AM8P250MB0107E39DAA11AA08F47D2EB89B099AM8P250MB0107EURP_--

--===============7851306192285649604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7851306192285649604==--

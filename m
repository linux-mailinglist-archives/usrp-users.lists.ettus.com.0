Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DB66B3E96
	for <lists+usrp-users@lfdr.de>; Fri, 10 Mar 2023 13:02:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D83933849B1
	for <lists+usrp-users@lfdr.de>; Fri, 10 Mar 2023 07:02:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678449751; bh=XydwBu92ldTBv+rhjI4/y/PJtWM+mw0V/gBgNPhejDU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=j/YEav+uXMryLxAWeDIcE+zLL5pHjKh81FNWxgRfOzZhtasQsj0y/dGluQt138pd7
	 XQRLbqabwVmIJ3TBikM21b8NFThMywswdaO8vThFxU2lwbLpqpZgqLR7w5dSDJaqzn
	 /ZpykMjeGwgNa6p2++LCbNIQhEoWdlLp4SMbvBcwf5qLJ1cf5cHxQPWG04Zn7FbitF
	 JisvQeOq46eOEwo177Gu3W6A6V9IxJkI+QPtV7+Bdx0gP6HP1aA31YXpq53lJzevjB
	 s47hHhS16OcLwg0RyFKMqIuFB79e8MSV3UV6kCp+EJNtepLHwpHazpGkkPbfiN2Bsk
	 u/4H4rVMaZoaQ==
Received: from GBR01-CWL-obe.outbound.protection.outlook.com (mail-cwlgbr01on2050.outbound.protection.outlook.com [40.107.11.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 01769384952
	for <usrp-users@lists.ettus.com>; Fri, 10 Mar 2023 07:01:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=brunel365.onmicrosoft.com header.i=@brunel365.onmicrosoft.com header.b="NxpuUtLB";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ez6ZD/kLrR/stS8UEZ7gxne2DOq7n+RCNE+I1IGeSkvMn2ITVNc4E05vSvOidaOsUVN1sNEQGAFPx7CohSGYYIjuC+YMfNcXL4qlCfpewNcsZD7fVDkVBneSgUk7DGYpg6cx1Q8z50uIppgXY1ZDch/ikjCxEnqTJ9XvyOs52AYgXXrS4ilFsDA2l5S/VocggFptkogBzpiJe0AaZ2GeJh5M4Y5NlwcM4SmdojcKK+Di2ShGPcn+XXvasDnvZtzXSdCDIKorhhWHTy45U6EOn3YxjeE30Xo3YUrXM8JwawODAbRPVRH+Z+wHY2zONtmd4hgqRC76sMp6UhtCKkVSeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jUzdg86aQhuGxCjBjPWKp+4kR9rip2stNLr7GNxfAzM=;
 b=C0SYIbUmx2vxTAwRzE4RcIhDGOoqNpRfkCrSrB/s2JvxqvwQDXmzBriTytJfG07GBoMpzstS9oISvZXaECw8rgS2gJWr/ESwQKOl0xx4BGTVmQKVXU5aEAxPYemvnEzPdGf2AdvQ+zdmDA4NJIE6Yff6iANkAgYTYvpTwjtn3iKwuQSiKKIVCr0XjD3Pp3Aaxmyoz1KNDGhszF9bnOswVKRp+HAT4VWZ2RXDmafAGp8hvFhhFbuMK/rgSZZPEetdCWs9Sy8jlu/Qla9bRiL9vTmaZPxvk9zjPLd2F2feKZUrFkTz9D2PaNrkEJWV9FeNR49Cs6Y2FhbWB5HVrDKmWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=brunel.ac.uk; dmarc=pass action=none header.from=brunel.ac.uk;
 dkim=pass header.d=brunel.ac.uk; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=brunel365.onmicrosoft.com; s=selector2-brunel365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jUzdg86aQhuGxCjBjPWKp+4kR9rip2stNLr7GNxfAzM=;
 b=NxpuUtLBJT37/9dQvkcqgcUbk2svn+E6cYsr3Ff9fUAtaIWUgmUpVBn2hLCJqsJWlEx9RkgW+s9LVjx/Y28r+yNwD4tzanTDaE6dpUof0W4cRca6FjBxFUklZbt6baRawJKQN80YCrW1y7cFcCLKohVbb3GNJAbtu24Nu571OfA=
Received: from LO2P265MB3056.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:17b::13)
 by CWLP265MB1857.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:56::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 12:01:41 +0000
Received: from LO2P265MB3056.GBRP265.PROD.OUTLOOK.COM
 ([fe80::af67:7be0:ec7a:4fbf]) by LO2P265MB3056.GBRP265.PROD.OUTLOOK.COM
 ([fe80::af67:7be0:ec7a:4fbf%3]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 12:01:41 +0000
From: "Ali Mahbas (Staff)" <Ali.Mahbas@brunel.ac.uk>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: FM Antennas
Thread-Index: AQHZU0ZItW1fLXFK20C/EYwWMRL2jw==
Date: Fri, 10 Mar 2023 12:01:41 +0000
Message-ID: 
 <LO2P265MB3056F063CD252FBD41138A22BABA9@LO2P265MB3056.GBRP265.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=brunel.ac.uk;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LO2P265MB3056:EE_|CWLP265MB1857:EE_
x-ms-office365-filtering-correlation-id: b32af612-5c0a-4d06-bdb5-08db215f35c7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 NvzYy1GL3eZ6CqKfRYuGSRHm6ocVNwxiV/qRvPFpT9B0ITmVNk82amzVkAIcLIRuiRCr56S1/6L2ftGh+FPCuRAwvC+pTtqcWI6/FGZMDj9du/49uGAwjQ202esmL8NR91JrME7LqRTUTSO53vA+7moDccjW2daTz2hyrqKfDWI28LPGIOOLL6nVjmHu5pnP2wQbnLGbdzrIx2Wu25C5yJoPSTI7KVN83b9lsTrMRJOl76ydYjNZB9b5sKP3XA15leAzbTCHy5kcdDTQmqiWlgzHEuh3U0A+K6NASfTWorPbgiGs2vpXfxqsnPFP80EN6lOt8NORHC8W1iZMss44Ml12ivt/oviKJketcDHUPgyfh/LH1VtEgkSU6fBLLSQ0TmVtPqqgQbjtN5+ZyIIHZNq58dxaMCLEV+RjqCsPj7TUdANvNNfJ3fnPowCVgvvLmflpuGfg0OwF2xPsYhCkVKpe/2KPzufqhhV78xEyc6GK4IOl9+PFU7HSHF+l9XJUVmkyR+IKLjjkEIbMSvrd0r29D5b/1k2kQaWjiaEpiDTkkhbBgblCIElvEbdowTMO5wcOW6SsXcZ3OsDAppugsO6G8bOiReT6NEDC9XZPAUUGmQ/zYi7acntQ/OzioNNBAo7hFeSwFMk4R3N2TBV5pAl8Nl42lYzWo9YX2AK5ubDFkP4eNe0kHbxsgYjfzlmStmgALt/Lb6jPsXBz3xsRFg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LO2P265MB3056.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(451199018)(33656002)(83380400001)(3480700007)(26005)(6506007)(9686003)(186003)(8936002)(41300700001)(7696005)(76116006)(2906002)(7116003)(6916009)(8676002)(66476007)(66946007)(66556008)(52536014)(86362001)(64756008)(5660300002)(66446008)(4744005)(71200400001)(122000001)(38070700005)(38100700002)(316002)(786003)(55016003)(478600001)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?mUn56P06UjGGfDHGOTBoMUQSGSZywswPxRXYxdHcAR+x8VnOxfQJiLkAw7?=
 =?iso-8859-1?Q?n3y19PofVq9sbCGF8XvDEHhuIFbDP11xzaBAc/j4IJsudcc2qNAcEPxrR2?=
 =?iso-8859-1?Q?vkwxtC3A6kTFQJDLcqi783bWYASuYmffJwVNcyykuNrLBYnUZ8pVW6+ezC?=
 =?iso-8859-1?Q?vZGmsZC8szEF0ueaokEVPRgI9C3tPcdiRhzZrGI7/6H3OCiLJdy4Ixv3T8?=
 =?iso-8859-1?Q?kkyJBLUT37hwsWTJn8rfSNDG9LDYy7ODNm5o8qoLBapASHt9YU2Q3xvYau?=
 =?iso-8859-1?Q?JY259sl5BjoOMteuZYDkqXbvVZ6CKpO1dPOSxFFcKMJBXEWiV+a0TM6N9B?=
 =?iso-8859-1?Q?u8szR/UjNtikg0sTq+0PV8AeWszaVPYLYLvrYPy+teheIlFqgqlo0H9uhL?=
 =?iso-8859-1?Q?llkWaQUOtOEVJz5CtHE9iZrCISbul43ZPNvU02c0H+LGHhEuy3B96Fs1U+?=
 =?iso-8859-1?Q?uPgJMQIm+aFDmJaf2a1rBJnu2IhdjUKyLDM1wZXgKhccu7KX/hPVfifu/H?=
 =?iso-8859-1?Q?p42DSQglU1mf8Pxf3TfOZIDtwsFqT4zXQu20Gg+1/NGx2W8gNw09YxRvR2?=
 =?iso-8859-1?Q?0LwFX1YmHd4ieEDry0mFDkB8UzlQ7R2fFSUk/OpaMYVBVhP/U403GhHRft?=
 =?iso-8859-1?Q?1lOIHvIYJ784mL47jAQ9rk/wt54B9CNwve7zKDcLHpI9mVVX+bhabnDidC?=
 =?iso-8859-1?Q?wRk/aVsDJd7c4Rs5+0TyToT3XC8ZYEF8beZUyY3dhv0hmtY6SVb7miv2Cc?=
 =?iso-8859-1?Q?+Q/G4t13A7OY/rkh6QB0GubwS+qUtmBOiseh2rCyVZm2AsOlOirTz7CZN7?=
 =?iso-8859-1?Q?42ANZrsannLmt+E5MuUbh4o3tWc7wpuDLaxU8gmSFFveG5g/EGRHBGTBWB?=
 =?iso-8859-1?Q?ssIMKl6EjPwwFcc4WwzcbWP1tkM0VMwzxWSQBQ76hV9kL4a9FwCK6w+NzG?=
 =?iso-8859-1?Q?Q+FRzCJl1bwTB5DjASPjFZtwIMMqWP5PZA97N0alwraypX0AupZ8NQ9UCx?=
 =?iso-8859-1?Q?icsucSdS/m5k7dg4zYOwOFfnov4F46mA1J91tqK5jFUNr4Lh6E3Y+21u5f?=
 =?iso-8859-1?Q?FFyhbnNlCuE6Lzdxh4KkJNt7IEVB3Im6ZhNR12eQ7MqU5/jEnO8FARp63y?=
 =?iso-8859-1?Q?dlcbjcub7H/VaVRWKOKr0k7j2J1E40dfbN+gmaKmAlp+bE3i0MTuWNt3/W?=
 =?iso-8859-1?Q?6mbdZiexVK1/luXF2J5yMaiMhY2IBil1cDY3j0CKDsSgp+etb6qLl71Y5e?=
 =?iso-8859-1?Q?STCu2Fv/1VEGiJzPgZgWDp4hy8pxuu71aV7ndiJ3UB3hUc0fZiPtj2LHhA?=
 =?iso-8859-1?Q?lXgUW8ZyLKzPcm5nQtDulZj+8hepR1RG3wksDzaAH1e12gj6/JtwzUfQqQ?=
 =?iso-8859-1?Q?pDLEaouz2aQllftiPl3GT3/kLUEOIzx68Ej4uv+2JaWffLGY/2tGudEKDx?=
 =?iso-8859-1?Q?D/Nd3za4F5TteUDeJOfqtuHC1UtDPTuacCCxnOEGyT9NXoOmpWHUMTuwSD?=
 =?iso-8859-1?Q?/bCi8ebboXaW5t5VHOygqxbJ6C+Iu23CjV85k6jk51HzgfPhw+lptFEQC/?=
 =?iso-8859-1?Q?zyUcEfKPLGT9MeRUk2EQUEnMpBl18Z92Ij0Rp6M2pS8IE1RUS2mR9yEiHk?=
 =?iso-8859-1?Q?pBwh2dW33fKoEr4mobBmQx/OfgoBWKi852?=
MIME-Version: 1.0
X-OriginatorOrg: brunel.ac.uk
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LO2P265MB3056.GBRP265.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b32af612-5c0a-4d06-bdb5-08db215f35c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2023 12:01:41.0324
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 4cad97b1-5935-4103-a866-57ad98a1517e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8vvtfJoEdps9F3VqsEeJ7myhi7yN4LCTyOQahODxS+dEQVWPP3h/wCTKWI0c082vIRN+gkRB3zZaBnNIvqSQgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWLP265MB1857
Message-ID-Hash: EIKA4B4E5DSPY2RPVTFLHTXDHZSBBBRJ
X-Message-ID-Hash: EIKA4B4E5DSPY2RPVTFLHTXDHZSBBBRJ
X-MailFrom: Ali.Mahbas@brunel.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] FM Antennas
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z6WYSDJYBRSMYSCNTYLXX3VSJGFHU5SZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5329320936769182880=="

--===============5329320936769182880==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_LO2P265MB3056F063CD252FBD41138A22BABA9LO2P265MB3056GBRP_"

--_000_LO2P265MB3056F063CD252FBD41138A22BABA9LO2P265MB3056GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

We are interested in doing simple examples like FM radio transceiver exampl=
es. We need some antennas supporting this frequency band. Any recommendatio=
ns?
Thank you in advance.

Kind regards,
Ali

-----------------------------------------------------------------------
-----------------------------------------------------------------------

--_000_LO2P265MB3056F063CD252FBD41138A22BABA9LO2P265MB3056GBRP_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Dear all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
We are interested in doing simple examples like FM radio&nbsp;transceiver e=
xamples. We need some antennas supporting this frequency band. Any recommen=
dations?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Thank you in advance.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
&nbsp;</div>
<div class=3D"elementToProof">
<div id=3D"Signature">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt;">
<div style=3D"font-size: 14.6667px; font-family: Calibri; margin: 0px; text=
-align: start; background-color: rgb(255, 255, 255);">
<span style=3D"margin: 0px;"><font color=3D"#201f1e"><b>Kind regards,</b></=
font></span></div>
<div style=3D"font-size: 14.6667px; font-family: Calibri; margin: 0px; text=
-align: start; background-color: rgb(255, 255, 255);">
<span style=3D"margin: 0px;"><font color=3D"#201f1e"><b>Ali</b></font></spa=
n></div>
<div style=3D"font-size: 14.6667px; font-family: Calibri; margin: 0px; text=
-align: start; background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"color: rgb(32, 31, 30); font-size: 15px; font-family: &quot;S=
egoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quo=
t;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, =
sans-serif; margin: 0px; text-align: start; background-color: rgb(255, 255,=
 255);">
<span style=3D"font-size:14.6667px;font-family:Calibri;margin:0px;color:rgb=
(0, 0, 0);background-color:rgb(255, 255, 255)"><b>-------------------------=
----------------------------------------------</b></span></div>
<div style=3D"color: rgb(32, 31, 30); font-size: 15px; font-family: &quot;S=
egoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quo=
t;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, =
sans-serif; margin: 0px; text-align: start; background-color: rgb(255, 255,=
 255);">
<span style=3D"font-size:14.6667px;font-family:Calibri;margin:0px;color:rgb=
(0, 0, 0);background-color:rgb(255, 255, 255)"><b>-------------------------=
----------------------------------------------</b></span></div>
</div>
</div>
</div>
</body>
</html>

--_000_LO2P265MB3056F063CD252FBD41138A22BABA9LO2P265MB3056GBRP_--

--===============5329320936769182880==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5329320936769182880==--

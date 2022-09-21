Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 707455BF53F
	for <lists+usrp-users@lfdr.de>; Wed, 21 Sep 2022 06:25:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0F23D38418C
	for <lists+usrp-users@lfdr.de>; Wed, 21 Sep 2022 00:25:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663734318; bh=OU0aEFwJU+CP76POyS67QYiMOcdy6/3KJWRlLeu/fk4=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=MuSSHeH5+hFT5jI1a/5QC5nYxDQ78v7MYC4muURr8PmYKRl/nmVl32WwhFF3gOntP
	 J5BvR7H2g76Jri5h2fUWWaJIqha1r9jDdwFbwKx+XYdXf1++HEWDEHzfojKfHpc0dU
	 RV/QFkRfMJ8p4VJ+hzpY+3oIRUSwVsYl8DVBvxDcZyzKaQdAsMnqOXszCvf1RMkHra
	 PTo5aD7IxyeyAQ0J4Q/ZAT1pf2BtR2FXqPXKOE2chDuTX8BVGA44DdDX++nCw7Ephl
	 tV6KBa+iggdYLA5aDH1fPRaANxr3C6PaDMFOYf5J71CS64PT34vx2uC791gPpX5chk
	 l5Zn/37Xjh14g==
Received: from IND01-MAX-obe.outbound.protection.outlook.com (mail-maxind01on2074.outbound.protection.outlook.com [40.107.222.74])
	by mm2.emwd.com (Postfix) with ESMTPS id 0ED83383AF2
	for <usrp-users@lists.ettus.com>; Wed, 21 Sep 2022 00:24:25 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eHDv5nSAj5X5923oVUNtPLI6FT/11ohAvWHIpW0/k0lPvJV3s7fhupyPpiu9qNyehO6/++6VR5YQ8SN13H6F015Cde8h2YOYtx1gT7NL0mRfSN3+7vrDUiBk8rWT6x5VzdTk3AB1G8eooVBSQY2JxvClyTEPnC3GF062M1es+rR8Sj4cSGIss22gdQhDOMEQvUHRMr6kn5i+rJyVAXaFBpUBqQRkFJcTYg1G/sM7H3Cma7Z79byLrJWL2nblLa0ImqFgFXHopO0SV+FQqadfO/YPqiL/xnMrlzic3gpLlSBdtjZo462SdXiutdKck0+N1iaFb15YfEvSd1S5mvuqaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R4lY3+cz7sEzNO+DGAsSlopm4kETUTCDraXorrVP/rs=;
 b=cEsmumdx2uCk9BeJWSQWy82FgwH/uHyM6Cs+gCwXSx6mwsSE8pi2FmSk/4m0hw9Enz6aBD6CkTNB0FrHB1sDCoy2zCtkpU40bV6xRed8nSRA9Y/AJDbqc4FyYUMytePYmrgVK3WXWZR68DRm3g8d7WQYI9uCTMKz9Vt9tHieNb1lQXCO0UEi6nD/9mkuUU9ByfltmdFCZQckJwV/R8eWD6CDT9I3KRnGw5GwMNVJFi2DG5pQa+L9XiwoDsgng4mvPYftCKV0jwY+YX7OPVy2QLpa8DSu7q464MjoDy9ofpUkJC4VnXReaf5gYH3TFmCgwk2+nubf/YNf7yYYKnGn1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mobiveil.co.in; dmarc=pass action=none
 header.from=mobiveil.co.in; dkim=pass header.d=mobiveil.co.in; arc=none
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00:5f::20)
 by MA0PR01MB7571.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:26::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Wed, 21 Sep
 2022 04:24:22 +0000
Received: from BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ed:9105:3de2:980d]) by BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::ed:9105:3de2:980d%5]) with mapi id 15.20.5632.021; Wed, 21 Sep 2022
 04:24:22 +0000
From: Sivanesh Kumar K <k.sivaneshkumar@mobiveil.co.in>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Question about USRP B210  Board
Thread-Index: AQHYzXD5q+T5jRbXw0SteCK+7yBcvQ==
Date: Wed, 21 Sep 2022 04:24:22 +0000
Message-ID: 
 <BMXPR01MB355809682F5825CE6633E8FDD64F9@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-IN, en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=mobiveil.co.in;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BMXPR01MB3558:EE_|MA0PR01MB7571:EE_
x-ms-office365-filtering-correlation-id: d9f8e76c-91da-4a99-662c-08da9b8928f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 q5lsqwflWkb3jIbGr/Ah+NZeeepzne9ewnevIWnwer6owaJUy1kMsI11Yab5u/V5CCmRhxDkav85rLp9KpTkwbKpR6gLzPL+4l8Xnm3HZHD2tCUbde9PmI1GocWtXL41eQPwf15FLTJ3GNLg++PEBKFXqk4nTPHowmSb4Dj6Wg4yoLI4zPh5P/u59jjYJUewfnmD6tH3kwZZoMaI4zEVeJzvJ2PJ18/4fQwWt/KOxWYmD96W8UaRQchvwkb5CTNPAfeDBxfJHPW/d5xobMLsS74X6BYIojHMGEYT33OFc2Fdqw0LHG9/eKt1HALGmA81ciYGTFFIF+0anZYGcEYBFp2wUapd3pGRa6MTiObBj5xsJs91fCmc/LqHkEdmdvjwGvCrtQJwju45oy2LSAdql3uL/G2HjvIuTbipnuRYpDb6SU6hQE6672AX7ypK7vBe+jOkzFn4N2DT0tZt8BzB0W0KYbZw6whEkobT9o5zk4Au06BpqRCzsiBm7cyXvnVcyNwF/r3ki+lLd4YXpAmc746PvXGI9hRJOfZH+V5KfSMDlTvEbes8n4zqo4CfGkiyomgozmIeQ1IcmSyt4zf+DRNFxuGrLlxuDBJw4rHuISm4LRoB5n12UTAzpfsn5WPAjW9319pbvXMF8ZgKcigf4hyuH5BxkYHtehhMskCOnHWzGRfvZ5XjdRlDPZFzPD+mRMQHj3TKrGroiTnxfE/+y9vUkxgD2hTE4GF7U6N1KmRaeETc8ZAGPaAOzjqR7yWNSvQgOhzN6eMzJC96nQT5CA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(376002)(346002)(136003)(39850400004)(396003)(366004)(451199015)(2906002)(6916009)(86362001)(5660300002)(6506007)(478600001)(7696005)(52536014)(8936002)(71200400001)(122000001)(186003)(41300700001)(26005)(4744005)(38070700005)(9686003)(38100700002)(33656002)(19627405001)(8676002)(64756008)(66446008)(66476007)(316002)(66556008)(66946007)(55016003)(76116006)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?bQpJ57vMoE5nosgyQUa8/j2zhY9j29wUuBBkYZ4Xk5veP3WpeBfjTcO2KZ?=
 =?iso-8859-1?Q?DHAq7QQOiu1tNZbvr3CRz+vny5qpmGNBFcCMqdWeiBd3q32F+I4e76wTvz?=
 =?iso-8859-1?Q?G4fcAp5g5U3JVE+pyP4JMuPeCF+bkqwe3RehH1QObRDGW9NO60u5fjiDkq?=
 =?iso-8859-1?Q?4zdeOMVzU1IhrjRgFT0yqdr8L5aGDcpiU49xiq80y82EQQ/rPCHeT3XxdA?=
 =?iso-8859-1?Q?eeKivcqAEDFtM5TJf413bAMpVPBxjTnT4lliDKGXQBx1dLSpuZH0duuZZk?=
 =?iso-8859-1?Q?d4a4Sq5Xoss/eNGO2FDhMTUDG64XynwEd5YUZJckkWJ173u6ZbjHcS1kjY?=
 =?iso-8859-1?Q?Ld9TdJ6qBAThc4sBmpIE/Mj0D091+DtPDbh/pwg0b/39ecKm+zD6Kch2fL?=
 =?iso-8859-1?Q?z29igZU7YhUmrN6HybGrhWYsiZzdVyapuzQWQaXxuBalDjz27j2RyuQ/b0?=
 =?iso-8859-1?Q?OLbx9CYkYWZ/wLWyiFT4HpsZTSHheiaaPJ5Bka/QKJdDZ7dDdIShbisiq/?=
 =?iso-8859-1?Q?M9Ym3raqX0mhikp02/2yKeLWA2SwNqAQry6YnPDyM187IFKttFdQAqDRNa?=
 =?iso-8859-1?Q?9g8sRONE6FVw1vYfDM9gkqYcdb0r+0YnERh0TQAY3ZLOQBCzEdnTMBGTrq?=
 =?iso-8859-1?Q?EEyJDV6yOqHqSUfoZFNfoAQYoRvBMB8cUX8eJlHMwYWgo1e/Vf0s75Vin9?=
 =?iso-8859-1?Q?46iwy8HpkmvJ4nNZtMGdkPAqGLL2zrZaslIuQLOUmmsGAhJjyowzYUYe6T?=
 =?iso-8859-1?Q?A3iat0fn52++fZ4kz/fOAnKzuOXiXoXZ/sIoPgTl+WqMuPABmD9Px0a9Xd?=
 =?iso-8859-1?Q?AEOUuSTgDFCjYf9el3nm6UrvCsvIO3PeUXJExVuVEJaYPguClQ7VV/CEOi?=
 =?iso-8859-1?Q?ma35mSHCAmu05wNwtsz/JniA+WfxkizEj+YD0dOumOze5VvCcCI2QQ6Sdw?=
 =?iso-8859-1?Q?zsRAoxdsH3Uax21QkJu92yH8N/eAZxoNGISTksDk9QPA6Jqc3IVe2R85WN?=
 =?iso-8859-1?Q?rYtsOHpYOw4P7I7ifbZAclt9h4Wmm8WXD/uqyqF1SsvxB6gBnq+h8tBRf7?=
 =?iso-8859-1?Q?gi0UN9Smcvz1MP+xrhweKlnon0guzQCqAueQQYfinVL4T6QzzdrdyX5LSL?=
 =?iso-8859-1?Q?3Aj1n4KBIJHsAAEd5CVbRItYOqFzB/8kVEIRd+ZKcV6FmEHCkrZWr66woN?=
 =?iso-8859-1?Q?hQGDc18R+KeKrkY2inIAvqBL1d/z3hJFdKhiyPL5ck2aAsmNywp25GqwDW?=
 =?iso-8859-1?Q?M2sw14/Wx1KoGhQCfIlx7m/VYtCW+M9BUFVegbHkC949vsLA9WjIizvJjp?=
 =?iso-8859-1?Q?mHfmJnX34MgMeTdbIQjiLTvvLVshn55hd/GwAnQB0ZJ1xTnVYAOlLCZM0f?=
 =?iso-8859-1?Q?HWzZsSglNZtbwy8l36GFR6EBDJq0pDNHb1hHlxoM1xyI6lPYG8IGa1Xy/g?=
 =?iso-8859-1?Q?qAxZSoNyiM6HhjgmPqsurBUM2k17ahHWMEPXkV51byy++7qvhuBgEH13w4?=
 =?iso-8859-1?Q?uIoLsiFj5wchF0nmXC5vlv/u/7+QfdnSzRiDE2znOhzzvvNkCxZzCOD6XD?=
 =?iso-8859-1?Q?46TtRFzfWVK5GpRxdzDWyYFa9u+K8SUnAgiDngPirbLtEPGbp5wcnTYNIP?=
 =?iso-8859-1?Q?hzoTsoWGIhj8qzLfpkfFBeeL0mRt55tKLGH8s5egQCDo/tsUlFgEvC7A?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: mobiveil.co.in
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d9f8e76c-91da-4a99-662c-08da9b8928f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 04:24:22.5873
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fc646429-760a-4f9d-81fc-c568b17eb1c2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OkHgpApxrSLM/m0VKriBpAUuJIiXwyymMj4dOSA+wRVtoCdUqtfZDHzGxDhDkbY5U6YSx5uodTd4msu7Wwh8pv7mWpSBxaQFPIyOe9DIa+s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MA0PR01MB7571
Message-ID-Hash: 4I7DNHHG6AJUYQMSLEKOYXGIPV7FLWMA
X-Message-ID-Hash: 4I7DNHHG6AJUYQMSLEKOYXGIPV7FLWMA
X-MailFrom: k.sivaneshkumar@mobiveil.co.in
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Question about USRP B210  Board
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UOCP3SBIISIYFWCW4YFF2MOQC7HCSX5S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0364941296209486494=="

--===============0364941296209486494==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB355809682F5825CE6633E8FDD64F9BMXPR01MB3558INDP_"

--_000_BMXPR01MB355809682F5825CE6633E8FDD64F9BMXPR01MB3558INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,

I want to know any inbuild Wi-Fi card available in usrp B210 Board.

If no any possibility to add separate Wi-Fi card in usrp B210 Board to broa=
dcast Wi-Fi signal.


Regards,
Sivaneshkumar K

Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review, use, disclosure or distribution is pro=
hibited. If you are not the intended recipient, please notify the sender an=
d destroy all copies and the original message.

--_000_BMXPR01MB355809682F5825CE6633E8FDD64F9BMXPR01MB3558INDP_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi All,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I want to know any inbuild Wi-Fi card available in usrp B210 Board.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
If no any possibility to add separate Wi-Fi card in usrp B210 Board to broa=
dcast Wi-Fi signal.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Sivaneshkumar K<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any a=
ttachments, is for the sole use of the intended recipient(s) and may contai=
n proprietary confidential or privileged information or otherwise be protec=
ted by law. Any unauthorized review,
 use, disclosure or distribution is prohibited. If you are not the intended=
 recipient, please notify the sender and destroy all copies and the origina=
l message.
</body>
</html>

--_000_BMXPR01MB355809682F5825CE6633E8FDD64F9BMXPR01MB3558INDP_--

--===============0364941296209486494==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0364941296209486494==--

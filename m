Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC05546A94
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jun 2022 18:37:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 70CE33849E7
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jun 2022 12:36:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654879019; bh=Kd9jTyHQNttqsouTZEU3svrVttTzkts9pepPTdItCPs=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=hWPEhBYyhtddwAFNu/K2A3iQ/gN0GXsNQT7WJ7GA8Y5bkJExMaWa6mA2tm/AQdhmD
	 HxWZwnIxJIlUR8d4k8qh9dAUf6lmoarcWk4VVIYmgJ87xJ2SGTwW2m5bzGenocbkg/
	 wueYD/bCxVf2iRmxfL3aJn62/rCYm+HV4M3yrA5wcF3gWFPLcrQvITpTELiaBVfEnj
	 3suOQplrnE1bSgIanugk08hhJb3hCWfAfKyWnoSPjVJeR/1SCTTamlcCZbu8VVVS35
	 5cRh/I6g32iiIg47cQks9HOt5pYVuE+QtOdS07B4iUbCTEOae0o0yeZI40k60HD1IS
	 X83fDCv3nNrMg==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0098.outbound.protection.office365.us [23.103.208.98])
	by mm2.emwd.com (Postfix) with ESMTPS id F41FD3847DF
	for <usrp-users@lists.ettus.com>; Fri, 10 Jun 2022 12:35:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=riversideresearch.org header.i=@riversideresearch.org header.b="SUV0PnAa";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=DdUmtQjAkly5I7EW9geQR6Zgommnd1dWXia1CHFeGgEh26tzyvxz9nt5EwxJR9a9k2wIOkI3lO1wiW7K67CUgmAXqgwKh6jxc4UF95O3LtnwR8Znc56X1QHRQqS+xn8JkpQhk7zVALk1aPqCBwDWLhnox8hAOQ16+hSkHAlwJNXm8hQyar37Qg6NAMqXStJus52fA4eQZso1nI+KfE93LEox8cTgvjvHEZg/935DItB6ooJ6O1bLhEEvbfQvLicT0m+DB0G5l45XNEn4mYEWcPsBPDstUrQyiZVa8WdYigZd1upCsY5ZFyNzqMDAqjaeMSdjXqk0oJ9n0WEWT8CMBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OBKGHcoW7a/5HTgaK+H8NmYXUbF8WsejL8MrFL+7WMc=;
 b=V4nYjw+iRVZKUgTcCvFrIf44d3DLf8GSLaqulO8GwUAg7RQQQnvgzKSltMmdkZei3Jr2EVPgi/EqZDmeewHz3kAXOvKxnpqlg47Ylb0MAT9hMhqT3kWtScGLs5t7RjPmYjvZxYF9v1op1Gz8vrzYjUNFop+EsTKy6VDLVWlWFHFoh6bnpUNYLmrd4YK2EDCwAvC0Q9Qt8HzNlDNbKKRIWq3xEVdAUW/+I5yITdcCq6GOQr5/cK5BroW1VABW7ZS7zESbPBylJH0lRxNSqMXC2zZgrdJ3fdfwfoALgF23SxxC3DHSxg0vciEf6NAyQpvBbpFSpDSA/tPRbFu11TzdvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=riversideresearch.org; dmarc=pass action=none
 header.from=riversideresearch.org; dkim=pass header.d=riversideresearch.org;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=riversideresearch.org;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OBKGHcoW7a/5HTgaK+H8NmYXUbF8WsejL8MrFL+7WMc=;
 b=SUV0PnAalHy1KZT61CQDOY9gcoLwcP7EP6U3I8K3tsiaebmjqnNihKJZUoXFwLVE8YJjnI9rwpVRjw6EPax3cEGPGZfGa4IicdaF7P9k3fupvb6MqB0qRRKvLLInLQ+d5t5ybNqgJ5zeqEjoSWF2HTLVS/GExesUQiiEB98htyVw2Acs5OpHmgkKYcVRV60Tyjrd0CIXQATSejMNgpGnOZUbCB35mlyOslBZu7yg0uaPzU5Z1RS1uX4AQQllcaoSUqzub9nvIL5h5D4xrKqqiKfU4e6ZMHMfkwTXHIkikBAUPHvad7pWUvFp0UoN8DtMWiBIJda3BWV++mitQIQKfA==
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:16f::9)
 by BN0P110MB1644.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:186::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5332.13; Fri, 10 Jun
 2022 16:35:54 +0000
Received: from BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::b4fc:1671:39ef:7b52]) by BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
 ([fe80::b4fc:1671:39ef:7b52%5]) with mapi id 15.20.5332.013; Fri, 10 Jun 2022
 16:35:54 +0000
From: "White, Joshua J" <jjwhite@RiversideResearch.org>
To: =?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Test
Thread-Index: Adh81xwdqRiZgfEwRu+tz5y3d/phmQAAdNcAAAPCGXA=
Date: Fri, 10 Jun 2022 16:35:54 +0000
Message-ID: 
 <BN0P110MB1015A1CD5DC994357FF45151B1A69@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
References: 
 <BN0P110MB101568B51F419564572EF38DB1A69@BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM>
 <89c0f614-59a2-613c-b344-0d70fc2de0b3@ettus.com>
In-Reply-To: <89c0f614-59a2-613c-b344-0d70fc2de0b3@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=RiversideResearch.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 29ddbeff-8be3-47ad-7dbd-08da4aff4a34
x-ms-traffictypediagnostic: BN0P110MB1644:EE_
x-microsoft-antispam-prvs: 
 <BN0P110MB1644A48C1CF77BB4705216F6B1A69@BN0P110MB1644.NAMP110.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Mwk8Fm231jO8vzji4uAAWacfZ2eNcA7rbXT9gwHwoxTLN53g1ppdfNC178kXDHYDHGUUFD9xFVp1bEadI1dzVYU7gzjzvHqI4IHSKIAOrXjudeUbO7giPcwS2xjhR6gv/B5A0iN8ELwBBlwF9uR0bxHWHXwkkKXwqOQUK4//GCrYfqfYNG0TY/FVFek7XT1i5cOs+160jKyokVFnfP8O0SND8N/hAv2uA23B4qcIk2glTxqjL5YEhvZQeAGDXED7/etNmSV8TunYd8/lArH0ldbu/RPRSXdAQJqa3Z/Gw5ifjWmZrUAAkTiazNheFCmTgYGmHZUkcgFYdiGwWokQhhNC7qN66Gp9SpxzhCrTJkC8pjc7EAijkNqfqCcCP2nR/rGqflOEd8Z6kjr0/HsxNcuWKgzFnC0RODyF8JywKlhSK1QNEPCLtZKPSiaDfB5whlIku+G4eUi4gl4B5nzuPFTnHptlW5nZWxsmMinDh38wkME0A0+CVioyx8W5SBXtxrCunaeitO6wpw2GqN/SAWFFQD2xysYb7uadwG0la86iGgEYgv3IZqxItNcihed350feHmO4Ip0JTq4yn/pFVya+kwZEYd67ve2VQjVjQwNP0E5EIW2HxcsqQLaAFPeMtm95Pd7frUaLh3oeswCA7L0eXtVgbgMLrEUUEHwtjLqONwFPUUsaC9psMri7ZlFpa1v7Z/tXmG6NyHNUg+4OQlhkEu6/14GZcIOIo6V/Z9Q=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(366004)(55016003)(6506007)(33656002)(966005)(26005)(9686003)(53546011)(86362001)(52536014)(5660300002)(15974865002)(83380400001)(40140700001)(508600001)(2906002)(45080400002)(71200400001)(186003)(7696005)(66556008)(66946007)(38100700002)(76116006)(8676002)(316002)(110136005)(66574015)(38070700005)(99936003)(66476007)(8936002)(122000001)(82960400001)(64756008)(66446008)(85282002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 MXdUUoYvLGQtrtMd3bQX1kcr3AW1E+vd/O+i+7bz0jUn3YHn7viASIz9FTQvP8P7O64UndYr4hSB6myjoX30oPF7rf9RtPnD/khlhQuSRuphJhBLhlUQ10Dum4OztO+DIP2sjRdc47LWzvV7dxCF4VK2C6IR4/h0tRa7nqBiyuGJlSpTz0h6MN4+IcBKZeZDBEqpLeHRRvf3+0KgjUnIfBQTGKzFvDeZQgOdNrtonr5GG65ZOhOOXZQuXbluBPoewZo1HejQwGJWpZE5MGvYIV/hiROvNWQh/cJarjn/TquOMorPBhBPlSnncpFyhLfQ56bwiJ+euHVG6BHaxgU4x7oawVOQp4NszQrLWDZEbD3lw3lDeQulwXcyK7x6T5+Ereb8+U7LfgH0qsOGlOhPAkUvoDniQggcdeVE9deEJgs=
MIME-Version: 1.0
X-OriginatorOrg: riversideresearch.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1015.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 29ddbeff-8be3-47ad-7dbd-08da4aff4a34
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2022 16:35:54.7948
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bfc64a8d-9064-4c64-91c3-9d10b44c1cb6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1644
Message-ID-Hash: 7SOLJMBH7YU75KKOQEEV44FA3OBF2FW2
X-Message-ID-Hash: 7SOLJMBH7YU75KKOQEEV44FA3OBF2FW2
X-MailFrom: jjwhite@RiversideResearch.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Test
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S25VXP4EQJMXQ2VA4NQZEBVLCPWAUWMH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6568901083007176373=="

--===============6568901083007176373==
Content-Language: en-US
Content-Type: multipart/signed;
	protocol="application/x-pkcs7-signature";
	micalg=SHA1;
	boundary="----=_NextPart_000_01BB_01D87CC6.9FC730F0"

------=_NextPart_000_01BB_01D87CC6.9FC730F0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Marcus,

Thank you for responding. It's curious that only the last two messages I =
sent show up in the archive.=20

Very respectfully,

Joshua White
Precision Timing Systems Engineer
Engineering & Support Solutions Directorate
www.riversideresearch.org=20
T: 937.986.3153 | F: 937.431.3811

This e-mail message, including any attachments, is for the sole use of =
the intended recipient(s) and may contain proprietary, confidential or =
privileged information or otherwise be protected by law. Any =
unauthorized review, use, disclosure or distribution is prohibited. If =
you are not the intended recipient, please notify the sender and destroy =
all copies and the original message.

-----Original Message-----
From: Marcus M=C3=BCller <marcus.mueller@ettus.com>=20
Sent: Friday, June 10, 2022 10:47 AM
To: usrp-users@lists.ettus.com; White, Joshua J =
<jjwhite@RiversideResearch.org>
Subject: Re: [USRP-users] Test

Hi Joshua,

got it.

By the way, you can see how people responded, in our mail archive!

https://lists.ettus.com/empathy/search?q=3Djjwhite%40RiversideResearch.or=
g&slist=3Dusrp-users.lists.ettus.com&sort=3Dnewer&collapse=3Don

Best regards,
Marcus

On 10.06.22 16:35, White, Joshua J wrote:
>
> Hi,
>
> If anyone sees this message, please respond. I have sent several=20
> messages to the mailing list previously and have not received any=20
> confirmation or response, and I am attempting to troubleshoot the =
issue. Thank you.
>
> Very respectfully,
>
> **
>
> Logo Description automatically generated
>
> 2640 Hibiscus Way
> Beavercreek, OH 45431
>
>
> facebook icon
> <https://www.facebook.com/RiversideResearch/><https://twitter.com/Rive
> rsideRsch>linkedin icon=20
> <https://www.linkedin.com/company/riverside-research>
>
> *riversideresearch.org* <http://riversideresearch.org/>
>
> =09
>
> *Joshua White
> *Precision Timing Systems Engineer
> Engineering & Support Solutions Directorate
>
> *phone:*937.986.3153
> *fax:*      937.431.3811
>
> //
>
> /This e-mail message, including any attachments, is for the sole use=20
> of the intended
> recipient(s) and may contain proprietary, confidential or privileged=20
> information or otherwise be protected by law. Any unauthorized review, =

> use, disclosure or distribution is prohibited. If you are not the=20
> intended recipient, please notify the sender and destroy all copies=20
> and the original message.///
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe=20
> send an email to usrp-users-leave@lists.ettus.com

------=_NextPart_000_01BB_01D87CC6.9FC730F0
Content-Type: application/pkcs7-signature;
	name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="smime.p7s"

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
y5hBglp6x595DCG05IgGyQRzP9bNyqPglQMRekuqNtiM8s/BZZ0LiVtMDkna9k9jj28wggbAMIIF
qKADAgECAhMsAAP4qhx1+DitimPYAAcAA/iqMA0GCSqGSIb3DQEBCwUAMEExEzARBgoJkiaJk/Is
ZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREwDwYDVQQDEwhCUk8tRFMwMjAeFw0y
MTA3MjExNjI2MzhaFw0yMzEyMjcxNzIyNDFaMIGsMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTEMMAoGA1UECxMDRFJDMQ4wDAYDVQQLEwVVc2VyczEWMBQGA1UE
CxMNT24tU2l0ZSBVc2VyczEYMBYGA1UEAxMPV2hpdGUsIEpvc2h1YSBKMSwwKgYJKoZIhvcNAQkB
Fh1qandoaXRlQFJpdmVyc2lkZVJlc2VhcmNoLm9yZzCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkC
gYEAq1tErUsiT3Xmo0whVata7DEky+wTGh0D0AlHBuQNdHfogoK2vCrdCDk6216x7OSYO37lrxbB
Qd/3oXGaqk8zsyRl/N221uflWYVs9qgOqABYXkn7bWHrSQf15D/yQB/keqFeFjPrW+tmcjHEYJta
w2Dr0K9gyQVsbcrfbkk6HXUCAwEAAaOCA8cwggPDMD4GCSsGAQQBgjcVBwQxMC8GJysGAQQBgjcV
CIWbhmWDndEtgsWVEIGmmyuDmZlRgSWH0qVDgrHkJgIBZQIBBTA1BgNVHSUELjAsBgorBgEEAYI3
FAICBggrBgEFBQcDAgYIKwYBBQUHAwQGCisGAQQBgjcKAwQwCwYDVR0PBAQDAgWgMEMGCSsGAQQB
gjcVCgQ2MDQwDAYKKwYBBAGCNxQCAjAKBggrBgEFBQcDAjAKBggrBgEFBQcDBDAMBgorBgEEAYI3
CgMEMEQGCSqGSIb3DQEJDwQ3MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUr
DgMCBzAKBggqhkiG9w0DBzBXBgNVHREEUDBOoC0GCisGAQQBgjcUAgOgHwwdamp3aGl0ZUByaXZl
cnNpZGVyZXNlYXJjaC5vcmeBHWpqd2hpdGVAUml2ZXJzaWRlUmVzZWFyY2gub3JnMB0GA1UdDgQW
BBSSFzfpC6wiUiUs2WbKNUrY6pYBmzAfBgNVHSMEGDAWgBT+5/KpKajUn7P6830wA8KstUdQZTCC
AQAGA1UdHwSB+DCB9TCB8qCB76CB7IaBs2xkYXA6Ly8vQ049QlJPLURTMDIoNyksQ049QlJPLUNB
MDEsQ049Q0RQLENOPVB1YmxpYyUyMEtleSUyMFNlcnZpY2VzLENOPVNlcnZpY2VzLENOPUNvbmZp
Z3VyYXRpb24sREM9cnJpLXVzYSxEQz1vcmc/Y2VydGlmaWNhdGVSZXZvY2F0aW9uTGlzdD9iYXNl
P29iamVjdENsYXNzPWNSTERpc3RyaWJ1dGlvblBvaW50hjRodHRwOi8vY3JsLnJpdmVyc2lkZXJl
c2VhcmNoLm9yZy9jcmwvQlJPLURTMDIoNykuY3JsMIIBEwYIKwYBBQUHAQEEggEFMIIBATCBpwYI
KwYBBQUHMAKGgZpsZGFwOi8vL0NOPUJSTy1EUzAyLENOPUFJQSxDTj1QdWJsaWMlMjBLZXklMjBT
ZXJ2aWNlcyxDTj1TZXJ2aWNlcyxDTj1Db25maWd1cmF0aW9uLERDPXJyaS11c2EsREM9b3JnP2NB
Q2VydGlmaWNhdGU/YmFzZT9vYmplY3RDbGFzcz1jZXJ0aWZpY2F0aW9uQXV0aG9yaXR5MFUGCCsG
AQUFBzAChklodHRwOi8vY3JsLnJpdmVyc2lkZXJlc2VhcmNoLm9yZy9jcmwvQlJPLUNBMDEucnJp
LXVzYS5vcmdfQlJPLURTMDIoNykuY3J0MA0GCSqGSIb3DQEBCwUAA4IBAQBAcpalu96zFfEytfTu
gF/lYkyKgnMGiq64hC5VNVwKJ2dQ6TjJkFWONo3nMDL08QBPHVReQMqORLw+TkLxj6fA+8SYHiuP
i74wleDZzmP6iicscyf+mFsYSmvk6606E27c6Qq3FOMrbI3yNlDHP9K2KL9Dcv/JK0l266aQOGCK
LqDiS/DpYK7So4G+wUn932/go3CY02vxsmFq9RJZ7V2ax0cNtYk9fLNxKXhIVNCWhag0JuLZt1z5
YCWUoDZedDiV8aaBaOqtgDwiLwJCZlpdtte/5Zxb1zwpmtx/LklY1w1Ha1UBf0HC/0G1lkXtraWS
gLWtKHTC/TqNs6cfPKSFMYICyTCCAsUCAQEwWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYK
CZImiZPyLGQBGRYHcnJpLXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD
+KowCQYFKw4DAhoFAKCCAccwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUx
DxcNMjIwNjEwMTYzNTUzWjAjBgkqhkiG9w0BCQQxFgQUgEyWbNAvM1Dwt54QiffIbfRqJIswZwYJ
KwYBBAGCNxAEMVowWDBBMRMwEQYKCZImiZPyLGQBGRYDb3JnMRcwFQYKCZImiZPyLGQBGRYHcnJp
LXVzYTERMA8GA1UEAxMIQlJPLURTMDICEywAA/iqHHX4OK2KY9gABwAD+KowaQYLKoZIhvcNAQkQ
AgsxWqBYMEExEzARBgoJkiaJk/IsZAEZFgNvcmcxFzAVBgoJkiaJk/IsZAEZFgdycmktdXNhMREw
DwYDVQQDEwhCUk8tRFMwMgITLAAD+Kocdfg4rYpj2AAHAAP4qjCBkwYJKoZIhvcNAQkPMYGFMIGC
MAsGCWCGSAFlAwQBKjALBglghkgBZQMEARYwCgYIKoZIhvcNAwcwCwYJYIZIAWUDBAECMA4GCCqG
SIb3DQMCAgIAgDANBggqhkiG9w0DAgIBQDAHBgUrDgMCGjALBglghkgBZQMEAgMwCwYJYIZIAWUD
BAICMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASBgIuSOkKP7WFViFgtdaeOvqeynNO0aPwK
wTL3SD0FlVb/OVvYOlPuUXfsNC0rxdx+D6QeJHIpkCp0MerZcEJKyRHbIElyNJoXrS+nAr6kT2H4
dJZD4dx8K/XigriGBiyYYJNduQqZ2XCJHZAlsWZ42fD+LjnoS86Okbvq9tmSz4rEAAAAAAAA

------=_NextPart_000_01BB_01D87CC6.9FC730F0--

--===============6568901083007176373==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6568901083007176373==--

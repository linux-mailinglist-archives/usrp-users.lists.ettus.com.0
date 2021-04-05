Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EA9354323
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 17:04:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 773FD383A54
	for <lists+usrp-users@lfdr.de>; Mon,  5 Apr 2021 11:04:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=live.com header.i=@live.com header.b="A1mUepLh";
	dkim-atps=neutral
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-oln040092253021.outbound.protection.outlook.com [40.92.253.21])
	by mm2.emwd.com (Postfix) with ESMTPS id 826283837C7
	for <usrp-users@lists.ettus.com>; Mon,  5 Apr 2021 11:03:37 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jN0g6g2GTZONVsfCwciSJjGJ38w3WA0xBaXhgoyrvbgWBkOwMyJGRPRocJ1MG0kXWyKmSwpIievy5aQZ/ByrIY1d0Qxw56TPDw/5mSBgToireTbf8a7lpbc7yMZV7ojY/+J9M1J7QQ43Z6+ePdBjiJjPNCVddq0F4AlWpiwrdglVu9Jj3aBwczZuF3nvUkA36G3Pl1HXYHa9b9iQfskwKk8woEH5r9vC85YxorHqeyrc1W4sPC0UBjdoQl8kb9pSGROCMLZ9RE8nNKtTR+iAGaG3vFZ8+KuZFoSSc0Dp1RVURm7FnXe1zTiP+cLgDDq+0gL8k586jlFkluk0MyvIkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=loBnm9ZTdHBVH1G9chvz9+xGVSBv7HNCPjqHN/ZFxm4=;
 b=FiUUxeBqoLV+ZbFuKiygVWzA9Jij33h1gU5odP1xKRffskzPLpNQ0p5PJep2IIVO4x5VuMPDWdqVQJLxeLBbZ+AQGF2ZEvqFqLzu70dvYy3/+I7Wcbqb9k1eM/HFihhgxbhk6Awwa4FhfpWFBE8wwJuitBh0GpqdstZZKEJ7fU0lHbQ7fgzPWWji4tnCZqkNVTnpc2hhDAQwq9YedVk/BdRqKXezyqcqLyKdaS/4F4tkak1cTym7T8HzwP980K7mVmB4nAAFs7LGSKel/GfRSWA4C3Cx/szh9DjlBKQS3H4b1pQai3cKmQp1LB0DY/OayZBcdoSEvSntnjWg9knZ9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=loBnm9ZTdHBVH1G9chvz9+xGVSBv7HNCPjqHN/ZFxm4=;
 b=A1mUepLhJL3Tr/mEJnjUAgh34dRpEaB7bz3osdAfhaaEyF3li0hBhWoF8vN+4g8qCAMNx+Yao9LKKGXgGnn9nrHFBoT7KVot0duQb//SJ4HRk1mgrJbNrWenTMjHY3o7n/eZlvedM1G+vo1u4+4xZj0L5ppZrITvkHtoNVFGX+2bTMLtBgSAJ8uxIdcoqySMKsepsBhSuXS7Zwi/jYZQMwHdyLihfTSUXe43+M7R+y1qxh4E6qMLM+oVh5cjroM1rBMf30RUj7daQmx3u+PE59KwsBRhZIvrCwp/fFbKy1ERW8bjS9+Hxb9XiH7qLnb9PATAo1NvjNJib7Q/TMMjgg==
Received: from HK2APC01FT047.eop-APC01.prod.protection.outlook.com
 (2a01:111:e400:7ebc::4f) by
 HK2APC01HT036.eop-APC01.prod.protection.outlook.com (2a01:111:e400:7ebc::408)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28; Mon, 5 Apr
 2021 15:03:34 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 (2a01:111:e400:7ebc::42) by HK2APC01FT047.mail.protection.outlook.com
 (2a01:111:e400:7ebc::342) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.28 via Frontend
 Transport; Mon, 5 Apr 2021 15:03:34 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::1de6:5d4d:36ac:2b7a]) by BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::1de6:5d4d:36ac:2b7a%6]) with mapi id 15.20.3999.032; Mon, 5 Apr 2021
 15:03:33 +0000
From: Snehasish Kar <snehasish.cse@live.com>
To: =?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: troubleshooting pcie link card
Thread-Index: AQHXKiiya12idR8GwEu7bPeJg1TqvaqmBTGD
Date: Mon, 5 Apr 2021 15:03:33 +0000
Message-ID: 
 <BMXPR01MB246926F20B11175442992CBB88779@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <BMXPR01MB2469029ADD6C27D6096B9D5988779@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>,<da032485-0b2f-6b69-3485-c414205b5b55@ettus.com>
In-Reply-To: <da032485-0b2f-6b69-3485-c414205b5b55@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:B6DB5EFB9CAC234D2A3EAFF0052D94C7A52865F1F9C3BFDA2A019C99010CBF7C;UpperCasedChecksum:B37130AF5E09147F81C30F62BBB16F5C480A1E7D02A4DB8B524759D9BBDFBA5C;SizeAsReceived:6983;Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [CVBVFpIc+CCo5pAuAiATLpXfoVYlG77j]
x-ms-publictraffictype: Email
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 3f2869a7-ae6b-4286-4a28-08d8f843fb3e
x-ms-traffictypediagnostic: HK2APC01HT036:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 DKnHAHhYhL3IzfMd4PMpUIZXF8kcNlVYjAnBcYRTxmjK+HAuxLs5zOyn53DoiZr23WNzUXwHf6Iai+VlfZpcjVsad/GW0gsDWDxT/MNOSzZg99HG6JwotSuY4GKgV9ISOOMrh1wQ9VnNpQHTJ1fTC3yfz3MR8d/WDCfBnWsGS2btfDZmhwNxYHksk0C7KCpNhGshowSUoCFw7Y0Y0XSeN2dZMRMqUJRlJIg4LXR83MbyJgqYRZjEKIbcZlZ3iw3E9pEFkms54SuZBLbPImefg/lStRdymXcub6P8CCc11o8ez4GeBwXietLPkmduyXN+LDto+enENvWWlLlvmWuh6EkqK9AACpRlU6Vi2AEqZCPljNBaMrjhfReYzL/UhAb1R8es//u7Lh+SiGpYzwa1Hh6kBC5T1CqinFZIakvFfPn7RY4yZDyca4461PenVvUT
x-ms-exchange-antispam-messagedata: 
 dF6F0b3KVz0exoVqSm3KUdahgIGqCzPIdy7YkOPvyRRJNFqdyt3sJ4TnKNMcqm2Vy5WHHK4Vy23FUuX6FN1mCxuElePfr9rTzJFkL9s3B3U/cI/GUitffQnkaAK7+iVt5CnEIVz164fnYHpSnq+GOQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HK2APC01FT047.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f2869a7-ae6b-4286-4a28-08d8f843fb3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2021 15:03:33.3796
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT036
Message-ID-Hash: GGCQFRXRFD532HO373QKEZTH47KYBQ2Y
X-Message-ID-Hash: GGCQFRXRFD532HO373QKEZTH47KYBQ2Y
X-MailFrom: snehasish.cse@live.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: troubleshooting pcie link card
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RZ4WQ4JFNGJCMJDN4IDJH3PHTLNTHCNQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3413475276736920526=="

--===============3413475276736920526==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB246926F20B11175442992CBB88779BMXPR01MB2469INDP_"

--_000_BMXPR01MB246926F20B11175442992CBB88779BMXPR01MB2469INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for your prompt response. I will check it tomorrow and get back to y=
ou.

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Monday, April 5, 2021 8:03:32 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: troubleshooting pcie link card

Hi Snehasish,


chances are that if the board doesn't show up in lspci, there's not much yo=
u can debug;
your mainboard doesn't seem to play nice.

Try the following:


* Check dmesg for anything related to PCIe enumeration

* Check in your BIOS/UEFI setup whether it has some dialog to list connecte=
d PCIe devices

* Check whether using a different PCIe slot helps

* Check whether your mainboard's PCIe lane assignments can be changed. This=
 is often the
case for gamer mainboards with 2011 to ca 2019 intel CPUs, but it's also th=
e case on some
other platforms.


Best regards,

Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.  If our understanding is incorrect, please=
 notify us immediately because a specific authorization may be required fro=
m the U.S. Commerce Department before the transaction may proceed further.

On 05.04.21 14:39, Snehasish Kar wrote:
> Hello
>
> I need some help in troubleshooting pcie link card. I can see orange LED =
glowing in the
> card and even on giving the command lspci, I am not able to see the card =
in the list.
> Please help me with the troubleshooting.
>
> Regards
>
> Snehasish
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_000_BMXPR01MB246926F20B11175442992CBB88779BMXPR01MB2469INDP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>Thanks for your prompt response. I will check it tomorrow and get back=
 to you.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards&nbsp;</div>
<div dir=3D"ltr">Snehasish&nbsp;</div>
<div><br>
</div>
<div id=3D"ms-outlook-mobile-signature">Get <a href=3D"https://aka.ms/o0uke=
f">Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt;m=
arcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Monday, April 5, 2021 8:03:32 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: troubleshooting pcie link card</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Snehasish,<br>
<br>
<br>
chances are that if the board doesn't show up in lspci, there's not much yo=
u can debug;<br>
your mainboard doesn't seem to play nice.<br>
<br>
Try the following:<br>
<br>
<br>
* Check dmesg for anything related to PCIe enumeration<br>
<br>
* Check in your BIOS/UEFI setup whether it has some dialog to list connecte=
d PCIe devices<br>
<br>
* Check whether using a different PCIe slot helps<br>
<br>
* Check whether your mainboard's PCIe lane assignments can be changed. This=
 is often the<br>
case for gamer mainboards with 2011 to ca 2019 intel CPUs, but it's also th=
e case on some<br>
other platforms.<br>
<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms
 of the licenses to the UHD or RFNoC code with which the Code is used. Stan=
dard licenses to UHD and RFNoC can be found at
<a href=3D"https://www.ettus.com/sdr-software/licenses/">https://www.ettus.=
com/sdr-software/licenses/</a>.<br>
<br>
NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license
 requirement column of Supplement No. 4 to Part 744, U.S. Export Administra=
tion Regulations and (ii) such a company is not a party to the transaction.=
&nbsp; If our understanding is incorrect, please notify us immediately beca=
use a specific authorization may be required
 from the U.S. Commerce Department before the transaction may proceed furth=
er.<br>
<br>
On 05.04.21 14:39, Snehasish Kar wrote:<br>
&gt; Hello<br>
&gt;<br>
&gt; I need some help in troubleshooting pcie link card. I can see orange L=
ED glowing in the<br>
&gt; card and even on giving the command lspci, I am not able to see the ca=
rd in the list.<br>
&gt; Please help me with the troubleshooting.<br>
&gt;<br>
&gt; Regards<br>
&gt;<br>
&gt; Snehasish<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
_______________________________________________<br>
USRP-users mailing list -- usrp-users@lists.ettus.com<br>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font></div>
</body>
</html>

--_000_BMXPR01MB246926F20B11175442992CBB88779BMXPR01MB2469INDP_--

--===============3413475276736920526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3413475276736920526==--

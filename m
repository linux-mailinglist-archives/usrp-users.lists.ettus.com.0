Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E6D33E992
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 07:21:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 33D053837BC
	for <lists+usrp-users@lfdr.de>; Wed, 17 Mar 2021 02:21:58 -0400 (EDT)
Received: from IND01-MA1-obe.outbound.protection.outlook.com (mail-eopbgr1380090.outbound.protection.outlook.com [40.107.138.90])
	by mm2.emwd.com (Postfix) with ESMTPS id 3405B3832D1
	for <usrp-users@lists.ettus.com>; Wed, 17 Mar 2021 02:21:47 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IQ67IXuVncv9GRyc62rh471P3RP0vKYoaD/ib+zSiZr3JccK6V2R+958EK2fijdQEvd/Lq9BZOueN7K3dzkQdcXq2cdXBQNQMPPxdY546Ghj8k3YsPoJWSHdo63zokZN5SPD5H/xrC49I71thY65IvuRZnq9syOJMInXIHRw9EgRIWOnVP38sgN9hkODkPKPOIxI433g51r6T1RHj39AYwC5GzIwpCwu5WBornHJLvWonPDDJKacmv1LvzivSXbWZE1ZlnBuw4NfW2UmWOx185e8dnlLSQfM2ncwHfsFKsoNgLRv8Ds558U000/jUVrPshpnsmOqLYOHSDNF1hs2Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WDCkCoUowLOyPxdFgf/Drff54ReApT035EsgXMeF5q4=;
 b=GGGboA7c+3REfECZCgl6wctCJI+YgpQvYKfe+0lYnD3O9N1IveF31mZiOCp6FVzvVMRBdObTa1XKG6S0cnzjExACQcl28HFsxehB5sFA9D3qiv83z07H7WrSYZZBqylm49VK/Yi4+0ZANUvKHvARDWxwVJpiONKbjGzgiqPMvXvtcoMaCoEAok/2Ai30gYiASNQ3XGpSw14Dol10sLvh1pqpCDOW+PnOk/WNqdudpEhwu13NE2Cs/UdM2Efm7UkVdjMyMKyAWZtU10PkHhBJDVhqTX573bQ8GuMtXPtDoMSovOIFu0mi3IcqWfzfOtYwXV5cocs6HXm7pBDWHILv0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vehere.com; dmarc=pass action=none header.from=vehere.com;
 dkim=pass header.d=vehere.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vehereinteractive.onmicrosoft.com;
 s=selector2-vehereinteractive-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WDCkCoUowLOyPxdFgf/Drff54ReApT035EsgXMeF5q4=;
 b=D8mrd4MSZ8A52c6kIxV08N2V5wWqelQQb9RYT8+HdS9YJClLc8nr95jtHT2QKaGNNyZAqGqzw3Du4sNpuK4TE7RgUsHqHyX5Bz2EwJq0PJF7KvTHGsJW4eq7QCCIpkYgDEd+IrrvbSpebv9l+Fc2JS+gNpgZDD1LkSp6nh50/zE=
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:3e::22)
 by MAXPR01MB3101.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:51::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.32; Wed, 17 Mar
 2021 06:21:44 +0000
Received: from MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d5de:6495:1afb:73f3]) by MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::d5de:6495:1afb:73f3%3]) with mapi id 15.20.3955.018; Wed, 17 Mar 2021
 06:21:44 +0000
From: "Koyel Das (Vehere)" <koyel.das@vehere.com>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: PCIe not getting detected
Thread-Index: AQHXGvWd+AdgrDqd20uRMGiIjOeRfw==
Date: Wed, 17 Mar 2021 06:21:44 +0000
Message-ID: 
 <MA1PR01MB2588E472F91E0285E19AFC1E906A9@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.ettus.com; dkim=none (message not signed)
 header.d=none;lists.ettus.com; dmarc=none action=none header.from=vehere.com;
x-originating-ip: [219.65.75.30]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 68f61d6a-b6fe-4c7f-8a47-08d8e90cef8f
x-ms-traffictypediagnostic: MAXPR01MB3101:
x-microsoft-antispam-prvs: 
 <MAXPR01MB3101F2511E8B16544DF85C52906A9@MAXPR01MB3101.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RSgfFu1vI7oW99/jo3nbXPzFOu9FodrH6VfnXkk1kxdhIVBwK1WqzPHEn8krPj98huiNQAYz5sKu1HjchAieQLxHcX2kRJxxhOh+go9lChiQZGUvjINsYPwqQwEe8TB06oveoGOe/UpJ4r3mC9r4lZo2FUpIiJVnGSi7RdQIxGOPRK0l01fgrYCLRItKtkp/85LLltfocnqyYADKuZ4Nd2DDwsUR7qIGiEGyeUFGx+ZOMBbayIK1bKTdcrCxY9r4CwqVrl361dgTbGABO/5KEJNJtwnS2H0DDMksEevaOFwDCTRYfv/AnoMezEpUsDEhkqz+pcVqTBghr7XtL/ED/LNzRa3/EDvaAaQbCrzvfJk2VescFcJMencF2oR4qJPYpU0gjYvY5LZ0ZbZ1TSJsywPjGFANWXa0sO2KkqTs8dPc07deZ76bmmLc5ltuNciQEIh0hSGIfyAj+Q8ig3ovjruRLZfPHnSQdLwqk2iWoe/T6Eo7TldFWXUhu8B788UjY10+HRhBGDfdBZBSqtBThF+zy+I04VvdTn2jFhlBuquzuAItRN6rA8uxt1qiPxNxykjHAnD+QTG4KWiplMsf6bk2i0uzyfx0sPr002ACXQsSdm0D/z/Xse+bdyqGfgfPWhK0g4AlhIru5k1Y7jQalQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(39830400003)(136003)(396003)(346002)(366004)(376002)(66476007)(83380400001)(64756008)(52536014)(66446008)(66574015)(6916009)(166002)(91956017)(8676002)(8936002)(66556008)(9686003)(76116006)(66946007)(5660300002)(19627405001)(186003)(2906002)(26005)(3480700007)(71200400001)(478600001)(316002)(86362001)(33656002)(6506007)(7696005)(55016002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 =?iso-8859-1?Q?jv+viWW723z1yYWlwKj7ts+c17jatht28VtArz6f4IobiF9klOKspmF9Ow?=
 =?iso-8859-1?Q?8fBpUSZKfOegTzwPeOhYBbIi1NNI+JFvl4O2nd4rfgpscfkFNuKuqZbuhE?=
 =?iso-8859-1?Q?0W4pvDkDB0iSkXTR6mzPy5hrv6up5QZjZSFRkeIWOCEoyYglGAkdzkD8/t?=
 =?iso-8859-1?Q?BeqjxTJWavqXmUlpujMfSGMsF02tZW1xgBvZoqo8P8Z0EyK/WYe+C+9Wc3?=
 =?iso-8859-1?Q?M/P3yGuSAPx2lGyvbtEqXUrLtpsuUlmReXHD+6kiiJRNt1qMpxrPpT0efm?=
 =?iso-8859-1?Q?YaCDRvjM6rUC4Jgb88Rbywls/+XIoqQGPITm1mOmxBbrqzNVjdHvpv2kHQ?=
 =?iso-8859-1?Q?N+Jeq90J6T5ozOKt54t+36E++oB83jVojWL+m9Gybe0cTtAJ0VBLTX39pD?=
 =?iso-8859-1?Q?3v0xyi/Af0tSnfO4AAhBzR4D0av4YzEoQyfInx2OwmHm8D1yHooaxztXyy?=
 =?iso-8859-1?Q?tPqnbuHD9R7ADtweRn/G5rAfOmJ1wuhjY32ERvKsD9DbKKjhGbZ0rC+jNz?=
 =?iso-8859-1?Q?0/WiTwf2i4kIH2IhZwrcCc7zjzzQXF3/MSQKarP2DpMZKbMlXsNUvRWtZp?=
 =?iso-8859-1?Q?IQ7FGbX+qrsPoy4wt8Sr5V6exPdSYBTSVEhS66eCpgbn7YFL73kelEWPPO?=
 =?iso-8859-1?Q?omQH/SGkHwXSBUf/m+8UBaQmwY3B00i5VPhfMd4R8JfQUD8SdaAZPnaEqa?=
 =?iso-8859-1?Q?XR3tu9KNhzde9r4SVZD660PkaiTGXJSxd20uQ6VPes3+C8TiUinCCU7/O0?=
 =?iso-8859-1?Q?mwjz3oP6h1IpStE4hxSREuPEj9ujgPXkhyL8BE9RvVa+H33XsNjjCSWz1m?=
 =?iso-8859-1?Q?kbtw8tDj2fYRVM6Wa2KJmpPv8UhgHp4ddO+8k44psPdI2XI2UUnF/gqQ/S?=
 =?iso-8859-1?Q?dnoxIyQtKvpF4Lh+qMCA7iFvc6OCsvWpRbnnV07ZUF9pbOX6cL+VS8atZB?=
 =?iso-8859-1?Q?YMCDWkOyi/Ay6803Vw5JLBn3ier/vlGlOHPgOU4G8I5EK99Ye2R71Qru+V?=
 =?iso-8859-1?Q?qUkH7xhJ+LW5VUgpzj9gABzUJb+YoljJlSQLkSz9H+TV+kPByYaNk4LNwQ?=
 =?iso-8859-1?Q?Wdiwqi8OlAqLA6/XDCifoPlHjOL5mtwLQ378auVkoTruALUDXr+7FZtMvb?=
 =?iso-8859-1?Q?zEPJBdqpoLGZJ4VVRnK8z2oZKM8UCeWUFwh/jUbm6Y7KSc7TneSzSeSiuh?=
 =?iso-8859-1?Q?VxgMYN528/OzLvm92bcWPddPCKCY2hAednb32CFEIUHwybmAJSIE3a1XH9?=
 =?iso-8859-1?Q?GMXkdibCxXWuLe3CaUE8Nom9WLxSnj0n9AOxlhxRU07VpNPSKrv5gqE6Uy?=
 =?iso-8859-1?Q?tzeUwmprQbdKklN/UNPni5pCrdLrgTky8WUSrd08Zbl7YGg=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: vehere.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 68f61d6a-b6fe-4c7f-8a47-08d8e90cef8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Mar 2021 06:21:44.0746
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cbbeaea2-058a-4ae2-88ed-73be16b8230b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kPgmgoVK0vNLlIeS/m81+wFu7SwPzSfpbr1As+C343k5o6931FzmEvnf/dRKzHDpseycQU9CayefQmrrLvoNKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB3101
Message-ID-Hash: SZ2FTTSSBYK52WQCHAC7SA44HOY3VDKZ
X-Message-ID-Hash: SZ2FTTSSBYK52WQCHAC7SA44HOY3VDKZ
X-MailFrom: koyel.das@vehere.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] PCIe not getting detected
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OWUML5YJBDMFGXUWP7ROAXPYDLDBPDT5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6609765627018976964=="

--===============6609765627018976964==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MA1PR01MB2588E472F91E0285E19AFC1E906A9MA1PR01MB2588INDP_"

--_000_MA1PR01MB2588E472F91E0285E19AFC1E906A9MA1PR01MB2588INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

The PCIe card is displaying orange light and not green and also it is not g=
etting detected. Previously it was getting detected until suddenly this hap=
pened. What has gone wrong?

Regards,


Koyel Das
Team Lead - Wireless Division

Vehere | Proactive Communications Intelligence & Cyber Defence
M: +919051132173 | T: +91 33 40545454 | F: +91 33 40545455 | W: www.vehere.=
com<http://www.vehere.com/>

[unnamed]<https://www.linkedin.com/company/vehere-interactive-p-ltd> [unnam=
ed (1)] <https://twitter.com/VehereIndia>  [unnamed (2)] <https://www.faceb=
ook.com/VehereIndia/>

Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India & Asia since 2012!

The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive Pvt Ltd and/or its associates/ gro=
up companies/ subsidiaries. If you are not the addressee, or the person res=
ponsible for delivering it to the addressee, any disclosure, copying, distr=
ibution or any action taken or omitted to be taken in reliance on it is pro=
hibited and may be unlawful. If you have received this e-mail in error, ple=
ase notify the sender and remove this communication entirely from your syst=
em. The recipient acknowledges that no guarantee or any warranty is given a=
s to completeness and accuracy of the content of the email. The recipient f=
urther acknowledges that the views contained in the email message are those=
 of the sender and may not necessarily reflect those of Vehere Interactive =
Pvt Ltd. Before opening and accessing the attachment please check and scan =
for virus. WARNING: Computer viruses can be transmitted via email. The reci=
pient should check this email and any attachments for the presence of virus=
es. The company accepts no liability for any damage caused by any virus tra=
nsmitted by this email.

--_000_MA1PR01MB2588E472F91E0285E19AFC1E906A9MA1PR01MB2588INDP_
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
: 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
The PCIe card is displaying orange light and not green and also it is not g=
etting detected. Previously it was getting detected until suddenly this hap=
pened. What has gone wrong?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div></div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0; margin-bottom:=
0"></p>
<p style=3D"margin-top:0px; margin-bottom:0px; font-family:Calibri,Helvetic=
a,sans-serif,EmojiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&q=
uot;,NotoColorEmoji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,E=
mojiSymbols; font-size:16px; line-height:16px">
<font face=3D"Tahoma,serif"><font style=3D"font-size:9pt">Koyel Das &nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
Team Lead - Wireless Division</font></font></p>
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt">Vehere | Proactive Communications Intelligence &amp; Cyber Defence<=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><br>
M: +919051132173&nbsp;|&nbsp;</font></font><font face=3D"Tahoma,serif" styl=
e=3D"font-size:16px"><font style=3D"font-size:9pt">T: +91&nbsp;33 40545454 =
| F: +91&nbsp;33 40545455 | W:&nbsp;<a href=3D"http://www.vehere.com/" targ=
et=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP">www.vehere.com</a><=
/font></font><font face=3D"Tahoma,serif" style=3D"font-size:16px"><font sty=
le=3D"font-size:9pt"><i><br>
</i></font></font><br style=3D"font-family:Calibri,Helvetica,sans-serif,Emo=
jiFont,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEm=
oji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols; fon=
t-size:16px">
<font face=3D"Tahoma,serif" style=3D"font-size:16px"><font style=3D"font-si=
ze:9pt"><i><a href=3D"https://www.linkedin.com/company/vehere-interactive-p=
-ltd" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"LPNoLP"><span sty=
le=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,se=
rif,EmojiFont; text-decoration-line:none"><img border=3D"0" alt=3D"unnamed"=
 style=3D"width:18pt; height:18pt" src=3D"https://mail.google.com/mail/u/0/=
?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;a=
ttid=3D0.1&amp;disp=3Demb&amp;attbid=3DANGjdJ_cw8QOmJOuH5dOGgYLOxSybsCNVtf-=
NS_WwKXHuMOvYfeSER9hREJrjlPeF3OcG8GnDWaciM5m8KcKUu6kcoQwHmymFim1kkqNhKdcHOp=
lQP4e4KtrWgsZRDQ&amp;sz=3Dw48-h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4=
a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=3D"color:rgb(34,34,34)=
; font-size:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont">&nbsp;</sp=
an><a href=3D"https://twitter.com/VehereIndia" target=3D"_blank" rel=3D"noo=
pener noreferrer" id=3D"LPNoLP"><span style=3D"color:rgb(34,34,34); font-si=
ze:9.5pt; font-family:Arial,sans-serif,serif,EmojiFont; text-decoration-lin=
e:none"><img border=3D"0" alt=3D"unnamed (1)" style=3D"width:18pt; height:1=
8pt" src=3D"https://mail.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&am=
p;view=3Dfimg&amp;th=3D15cd46f4a213fe89&amp;attid=3D0.2&amp;disp=3Demb&amp;=
attbid=3DANGjdJ9np2yLYTWiL8_66KixMdVQ5nVZKUBvlRtQ_pTYQysvBjAQVxtHSIbIzZfOj-=
plEkGO73mWlh0cet3WXZglkDC-aWFdkAnUmOv3L6NAaCgYTaxHO_-lXXFvlK4&amp;sz=3Dw48-=
h48&amp;ats=3D1498219245179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1">=
</span></a><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family=
:Arial,sans-serif,serif,EmojiFont">&nbsp;</span><a href=3D"https://www.face=
book.com/VehereIndia/" target=3D"_blank" rel=3D"noopener noreferrer" id=3D"=
LPNoLP"><span style=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Ar=
ial,sans-serif,serif,EmojiFont; text-decoration-line:none"><img border=3D"0=
" alt=3D"unnamed (2)" style=3D"width:18pt; height:18pt" src=3D"https://mail=
.google.com/mail/u/0/?ui=3D2&amp;ik=3Dc1534bb6ee&amp;view=3Dfimg&amp;th=3D1=
5cd46f4a213fe89&amp;attid=3D0.3&amp;disp=3Demb&amp;attbid=3DANGjdJ9JZdmekO-=
R6DmUlgNehr-eRw41OXSOu3PfaFGXC98wY0jrXYMynJ1Fl8O89Y6zdclhyH28j5k5hjwSBYH5Rw=
gNDRHAoz8EfzpBBa4gm0Wk9Ke6qojICfael_k&amp;sz=3Dw48-h48&amp;ats=3D1498219245=
179&amp;rm=3D15cd46f4a213fe89&amp;zw&amp;atsh=3D1"></span></a><span style=
=3D"color:rgb(34,34,34); font-size:9.5pt; font-family:Arial,sans-serif,seri=
f,EmojiFont">&nbsp;&nbsp;</span><span style=3D"color:rgb(34,34,34); font-fa=
mily:Tahoma,sans-serif,serif,EmojiFont"><br>
</span><br>
Vehere is the proud recipient of the Fastest Growing Technology Company Awa=
rds in India &amp; Asia since 2012!</i></font></font><font face=3D"Tahoma,s=
erif" style=3D"font-size:16px"><font style=3D"font-size:9pt"><br>
<br>
The content of this e-mail is confidential and intended solely for the use =
of the addressee. The text of this email (including any attachments) may co=
ntain information, which is proprietary and/or confidential or privileged i=
n nature belonging to Vehere Interactive
 Pvt Ltd and/or its associates/ group companies/ subsidiaries. If you are n=
ot the addressee, or the person responsible for delivering it to the addres=
see, any disclosure, copying, distribution or any action taken or omitted t=
o be taken in reliance on it is
 prohibited and may be unlawful. If you have received this e-mail in error,=
 please notify the sender and remove this communication entirely from your =
system. The recipient acknowledges that no guarantee or any warranty is giv=
en as to completeness and accuracy
 of the content of the email. The recipient further acknowledges that the v=
iews contained in the email message are those of the sender and may not nec=
essarily reflect those of Vehere Interactive Pvt Ltd. Before opening and ac=
cessing the attachment please check
 and scan for virus. WARNING: Computer viruses can be transmitted via email=
. The recipient should check this email and any attachments for the presenc=
e of viruses. The company accepts no liability for any damage caused by any=
 virus transmitted by this email.</font></font><br>
<p style=3D"margin-top:0px; margin-bottom:0px"></p>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MA1PR01MB2588E472F91E0285E19AFC1E906A9MA1PR01MB2588INDP_--

--===============6609765627018976964==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6609765627018976964==--

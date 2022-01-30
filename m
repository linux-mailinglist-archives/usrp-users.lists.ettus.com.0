Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70CCF4A3656
	for <lists+usrp-users@lfdr.de>; Sun, 30 Jan 2022 13:47:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1D7743847B7
	for <lists+usrp-users@lfdr.de>; Sun, 30 Jan 2022 07:47:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=Netline2019.onmicrosoft.com header.i=@Netline2019.onmicrosoft.com header.b="R2K6mrSC";
	dkim-atps=neutral
Received: from EUR03-DB5-obe.outbound.protection.outlook.com (mail-eopbgr40136.outbound.protection.outlook.com [40.107.4.136])
	by mm2.emwd.com (Postfix) with ESMTPS id 062C7384420
	for <usrp-users@lists.ettus.com>; Sun, 30 Jan 2022 07:46:11 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VzzwhBthx3lJnoTo2aax1JudaH0fi70HFElNIvQim0IxLYLdSNOuQY+adUpT7sz6jAAJ7lir9aMUfXOnwoiCuM2xpREVASMsY/eD83oR0piiE006zecvLYdNhcsC180Sk1dEjf5zMdq1Vx3tKNxBgrKPq8/1gz5ElghqBAvi1NMuWxS34vuUSoEq90UzBpwkYV1rksOHhc52i5C0eAAnZOW2oKbMIEHgDS58vLQzNgxsSP8YdydQtADpWHkXy11ToDsa7EN+DMRFdDbuBTTku3JA/8hTGvyLygDtlN5u1DLNrapjBQS9O1iByCkAWjCbIcx409TRaZC5ps4KQLNEtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qJXnpWC82ApM6+l+fvspKbp4HhbfZB8Ktj7Y2Unpl3c=;
 b=PcPY0h0LRzW4+I6/U7QTIT7GenPVwDyGatGHH09A1Px96sBV/rYn1uTZvEBbTPhN1nxQQY7hxLqKJd2WoU/JxGHLOBB/dYq8rfLnNzDSkcVzg+2Lzq1LXqoNuVWByx9OI4359APzulIadJoWDDkY37Q/KIvQFv9o6kv6wsh5PNvT7BTa9Ih2Fz4s18YWr7Z2J76XK2inUBHT9o1iW8Ze7h2TWu4Y6AhBLuuESCl5aLftox5KKIPpF5NuAr+zrFXKdVEqyyX+4DYygGRFTzG3UC51iSN4AMrCEeP6exFsMUAKWNH8DvAK8tPIxKJ93AGeOn3n1K+1qGANz2pb6Uqehg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Netline2019.onmicrosoft.com; s=selector1-Netline2019-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qJXnpWC82ApM6+l+fvspKbp4HhbfZB8Ktj7Y2Unpl3c=;
 b=R2K6mrSCywvlsarolmKqGjM20E0J61lzLG4po2Ez8yDNlHs31NPnyPhLNILgi/afA99VJQpjOvYuGqcOaAj6lXfgV52ws6lzchQS8q8tIYVr8pPEtU58EN+uDZ72ihetU0ea3PZYBVa0dzJaCaX07EanRvpjVDts+F5DIn1TfVw=
Received: from DB8P194MB0631.EURP194.PROD.OUTLOOK.COM (2603:10a6:10:147::15)
 by AM9P194MB1201.EURP194.PROD.OUTLOOK.COM (2603:10a6:20b:3ae::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.15; Sun, 30 Jan
 2022 12:46:09 +0000
Received: from DB8P194MB0631.EURP194.PROD.OUTLOOK.COM
 ([fe80::b871:e8ac:6b23:667a]) by DB8P194MB0631.EURP194.PROD.OUTLOOK.COM
 ([fe80::b871:e8ac:6b23:667a%7]) with mapi id 15.20.4930.021; Sun, 30 Jan 2022
 12:46:09 +0000
From: Dmitry Kupchinetsky <Dmitryk@netlinetech.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: x300 fw communication failure error 
Thread-Index: AdgV10ruIMFXYxwdSLOKqnbS9esFVA==
Date: Sun, 30 Jan 2022 12:46:09 +0000
Message-ID: 
 <DB8P194MB06314633F0EC4389D4DDBCB0AA249@DB8P194MB0631.EURP194.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=netlinetech.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b9170930-2405-4597-3834-08d9e3ee7d7c
x-ms-traffictypediagnostic: AM9P194MB1201:EE_
x-microsoft-antispam-prvs: 
 <AM9P194MB1201DBE6C81AE9CEB12C1CC0AA249@AM9P194MB1201.EURP194.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 uqHw2j1leTnCaZbwVfqZHVo1oga36IMTDT8zhhV7wk9/Jzs5cb0FRaq6gwV0yyiCYupYcWfdOmPA8feDHLNDMW1++Yq7wd2x2bYoAQ0gvIk1WGg+NCXex03MFDERQWBlmdkkuvFH0dc600S03ftlMAYGXHvQECD8UkXI1glbv/2L4tT3HTFdvzndiTXP2MhzCHGPdnBBYcF3veKC6CMPcMFXHeNljsWaqR4vERI/VBN+y51WdXt+a01je74G9RcdywoGe5U/mOUu0Xgo8eoJhlDIYBjZVIceqwKSKDuPAQbSo3t6eEwQhvzROsvxhS1bprTGUHoBf8mXJiZRSKhLfVn9dpAdjPTDdMx/dfGw7rCp+WRyjT5jqlFl1/+gtwTPnhIZmzR7rbXqmvEGu2ddtj30JypfjXX8wx/zmMx/czzYWWHax9XM2UiMrpJl0o67jEY5TW0euORfZZJ9KCwRAD2h9BI1cr98NmuGr7RrbAdOnAfL9ck7A07JpLwr7RWfRJLv2OMPwMEGRaixY9x0b8izr8VaJLj85Yxc+vDw7omBze3ktlV6Vw2D7OBwUQRzaMFBB+YiN8qTr5zLPAHBitSLOMFge/OhiXu4zqd7+dYyj9M8u27DOpPWDP4URscdSybKgGi9fa2ZmApgt+h56r/QoUmuaddrBvqCM3NuT5E4LEx7klszgPpSCF1zshpR3rOZAaW+qRJOQXAnkL1xqw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8P194MB0631.EURP194.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(346002)(136003)(376002)(396003)(39830400003)(83380400001)(4743002)(8936002)(8676002)(66446008)(76116006)(66476007)(66556008)(64756008)(66946007)(55016003)(122000001)(86362001)(38100700002)(7696005)(9686003)(26005)(186003)(33656002)(71200400001)(6506007)(38070700005)(9326002)(5660300002)(52536014)(6916009)(316002)(2906002)(508600001)(20210929001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?9ubapCBJWiQmlf5LGvIoO8Xhp0mzJkz1k55Jxzbpb3PMuNH85T1QyNLbdEfu?=
 =?us-ascii?Q?Mx/7Qhk2mR6d2poJyS/GsU2e42hoqjPhBSuuhvu6KXNXTkKGoz2UNZ/yRKLA?=
 =?us-ascii?Q?LHA53+qzjixkP2uXiAFEN7DGub6XiiIlYt+N7nNKwVSUc1ckPNVo/CP5kEZ5?=
 =?us-ascii?Q?Eb6D3CFoqxmkYrWOQJ+ioX6cGuzC91OykeHGethiONoDmTSYMwXm7Wov0quC?=
 =?us-ascii?Q?dAjK28BO3C2KjmCq6R+zTvpsh7u7QGkUQ9xvUhCrMet8hue9sDmT7NAZpKY9?=
 =?us-ascii?Q?LI77azd7Pp5jIN6HvCgaCLOSM+x1wpcMvbE+eEd98DUlIy7UF5zGoOLB55uH?=
 =?us-ascii?Q?bYmB4sA355Jf5WE9Ptg5StwjVroi8427Kg96jqjOjykpaeOxn6Yauium18nx?=
 =?us-ascii?Q?Ruq/AKkGBknZQC1cCU78T8PyGnI4QzUNxYmm6EGy7TNkPYARXsan8FpzTkMr?=
 =?us-ascii?Q?kjOYDR3asnek19KV6l2lyyM8pQpWvEAdNO9UWbE6VfZcj0XDDOAyTSrUl3+E?=
 =?us-ascii?Q?ceLnUE6TS5DDkV2yYpByWfP82xKZFgN+v/kZ4Qva4a51JvXclB2j9/A7f5hG?=
 =?us-ascii?Q?cUu8J77ZysCZ8JywBbmDzffwxkpQf8FTHXKkS46lTdQ3C4MLwMUbcxQSnNiR?=
 =?us-ascii?Q?INXnIecxRiDJQWVisLrZxOgFQbpCKv5HOXuPpwApuWxOCrru6JGoR8oa0yj7?=
 =?us-ascii?Q?bVd2pS36SnVCTxzdxh3pcGb58zfpBjj2LKhBiXb4m/XdOGpe+6uLoIzdaTnA?=
 =?us-ascii?Q?IarQzYNGaWm1lBDhjzvFrsv23UbAxaZsoeGrOHG8oq8Kp/66T3lKIlKv08T/?=
 =?us-ascii?Q?k2dnhslORSJ8TUnIADviamda73yjI3eVVnvPZx+3LmZ/3ocO479kcNyk9m+e?=
 =?us-ascii?Q?bRPw0sFWoInj0s6gFIdT4Wy/012sWUbnZf+FpqfJNWY9fTi5tIAeA3fvGWTd?=
 =?us-ascii?Q?B3J5dJwg3XzJHpJQMZZjn+FQ8iCK5te6Ijd6GAQjUZ88QCQiuFl3SmIu6vso?=
 =?us-ascii?Q?jQwOchTthAGQrIkOcW15dW75lrrg2ql6VZEPPeU0cNDxneMFiZM2Ks9/F3z1?=
 =?us-ascii?Q?p6FzoIpBmuuwFT4VcpMTXuznKz/MLlxGvbkdpRVFTARRXwt32YZcJuaJD9m6?=
 =?us-ascii?Q?ebtYFxu1zdNO+6nnrN7ytVIIAA+fE033akbQ0iZwpW78QkE7eib2sqdg3wD0?=
 =?us-ascii?Q?Db5SRo9978MxDpOm/uqT89HwCeaSOYdew3a3IjrT5jvmllm/2GSmpxwHSpA5?=
 =?us-ascii?Q?21em4ITJj2sm26mvoZJQ3G6yt9yo8lQVnZ6/Kn92bruZ6EnX+yuSpaUUyZzB?=
 =?us-ascii?Q?/r3TAHbEv5+VCwFfqSEfXwXz0h9xUlXwpm8oTBMv9iYmoxN/0a9lOaTKuvGM?=
 =?us-ascii?Q?PSGoGUFCyU1nkHP4+sY7EHsVkgnsXqYgEQ7CWAbrr7j9vohado/RIRDHxAvX?=
 =?us-ascii?Q?63N5TkVqKfXcANROv1GnDnyZGxYLuL1MZmxId0Asr/o/WNFqMk1BgNnHN+rM?=
 =?us-ascii?Q?wq8jG6vxCMjfZcqb0BBoT3o8IP800NhkT+DW0OCgwQwG6gUBgKexKy/dal7y?=
 =?us-ascii?Q?LgYpklUAXMQkZlow1QPxWZlpmANEKoYdm6v23J7xHyFMGmZblnWSGgGA66td?=
 =?us-ascii?Q?pNkj9ZpDgTWvRPdAq+tHLM4=3D?=
MIME-Version: 1.0
X-OriginatorOrg: netlinetech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB8P194MB0631.EURP194.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b9170930-2405-4597-3834-08d9e3ee7d7c
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2022 12:46:09.5744
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8305e2c-ed75-4c6e-b53e-8ba0db504e52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h78/9pFe9oq6N+YAkoNxJfEUiC5cJSOy3PyFS6F4inf+6pwf3CQvTBfghbLmTFNHIF+wxl8PkoWMoNZwU51RZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9P194MB1201
Message-ID-Hash: WLY7TMXOS7R7QKH2BZFI4W2OUGC5ZE5F
X-Message-ID-Hash: WLY7TMXOS7R7QKH2BZFI4W2OUGC5ZE5F
X-MailFrom: Dmitryk@netlinetech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] x300 fw communication failure error 
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/URMAI33CLSVT5Z32MYXPQEL5QJ7VQJH4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2738410791537641401=="

--===============2738410791537641401==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB8P194MB06314633F0EC4389D4DDBCB0AA249DB8P194MB0631EURP_"

--_000_DB8P194MB06314633F0EC4389D4DDBCB0AA249DB8P194MB0631EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
during receive samples from usrp following error occur:

[ERROR] [X300] 192.168.40.2: x300 fw communication failure #1
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.40.2: x300 fw communication failure #2
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.40.2: x300 fw communication failure #3
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [UHD] An unexpected exception was caught in a task loop.The task lo=
op will now exit, things may not work.EnvironmentError: IOError: 192.168.40=
.2: x300 fw communication failure #3
EnvironmentError: IOError: x300 fw poke32 - reply timed out

After this error there's no communication between host and usrp. What is a =
root cause of this error and does exist any work around?

Regards,
Kupchinetsky Dmitry.
This e-mail and any attachments thereto (the "Message") contains proprietar=
y, business sensitive, confidential or otherwise protected by law informati=
on. If you are not the intended recipient of this Message, you are hereby n=
otified that any review, dissemination, distribution, taking of any action =
in reliance upon or copying of this Message is strictly prohibited. If you =
have received this Message in error, please notify the sender by replying t=
o this message or by telephone and permanently delete the original and copy=
 of this Message. Electronic messages are not secure or error free and can =
contain viruses or may be delayed, and the sender is not liable for any of =
these occurrences. Thank you.

--_000_DB8P194MB06314633F0EC4389D4DDBCB0AA249DB8P194MB0631EURP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	text-align:right;
	direction:rtl;
	unicode-bidi:embed;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">during receive samples from usrp following error occur:<o:p></o:p></=
p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed"><span lang=3D"HE" dir=3D"RTL" style=3D"font-family:&quot;Arial&quot;=
,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed"><span dir=3D"LTR"></span><span dir=3D"LTR"></span><span dir=3D"LTR">=
</span><span dir=3D"LTR"></span>[ERROR] [X300] 192.168.40.2: x300 fw commun=
ication failure #1<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">EnvironmentError: IOError: x300 fw poke32 - reply timed out<o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">[ERROR] [X300] 192.168.40.2: x300 fw communication failure #2<o:p></=
o:p></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">EnvironmentError: IOError: x300 fw poke32 - reply timed out<o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">[ERROR] [X300] 192.168.40.2: x300 fw communication failure #3<o:p></=
o:p></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">EnvironmentError: IOError: x300 fw poke32 - reply timed out<o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">[ERROR] [UHD] An unexpected exception was caught in a task loop.The =
task loop will now exit, things may not work.EnvironmentError: IOError: 192=
.168.40.2: x300 fw communication failure
 #3<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">EnvironmentError: IOError: x300 fw poke32 - reply timed out<o:p></o:=
p></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed"><span lang=3D"HE" dir=3D"RTL" style=3D"font-family:&quot;Arial&quot;=
,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">After this error there's no communication between host and usrp. Wha=
t is a root cause of this error and does exist any work around?<o:p></o:p><=
/p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed"><span lang=3D"HE" dir=3D"RTL" style=3D"font-family:&quot;Arial&quot;=
,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-align:left;direction:ltr;unicode-bidi:=
embed">Kupchinetsky Dmitry.<o:p></o:p></p>
</div>
This e-mail and any attachments thereto (the &#8220;Message&#8221;) contain=
s proprietary, business sensitive, confidential or otherwise protected by l=
aw information. If you are not the intended recipient of this Message, you =
are hereby notified that any review, dissemination,
 distribution, taking of any action in reliance upon or copying of this Mes=
sage is strictly prohibited. If you have received this Message in error, pl=
ease notify the sender by replying to this message or by telephone and perm=
anently delete the original and
 copy of this Message. Electronic messages are not secure or error free and=
 can contain viruses or may be delayed, and the sender is not liable for an=
y of these occurrences. Thank you.
</body>
</html>

--_000_DB8P194MB06314633F0EC4389D4DDBCB0AA249DB8P194MB0631EURP_--

--===============2738410791537641401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2738410791537641401==--

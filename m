Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C9E4D2C2E
	for <lists+usrp-users@lfdr.de>; Wed,  9 Mar 2022 10:35:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0ED2B384B96
	for <lists+usrp-users@lfdr.de>; Wed,  9 Mar 2022 04:35:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="bLnk2bkt";
	dkim-atps=neutral
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (mail-vi1eur05on2123.outbound.protection.outlook.com [40.107.21.123])
	by mm2.emwd.com (Postfix) with ESMTPS id 32706384677
	for <usrp-users@lists.ettus.com>; Wed,  9 Mar 2022 04:34:49 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y1acqniSOfZLcXmVOGpFH5e1vVdNxXJE/JLCvjLsiX1pulLmK+fNLXvatUsr7v8dcFHaImPXQXIgpAT2HEJpuTAu30m+nHes7+b9VFNft02kY3/PmcS2ZZeDq1op2ABo8/bAtc/r9aYetYaJJBBFgGpyVFT5CGoqTT3vb8qBhsWezQs2GomxWsubSwl1YM31tcLjya1/vAwXJ8H7kZX3iSm2qCZep3r6jeR0R1d4/oFpC2tCTgVvEtyXsSVDeM49clpQIn0PpyE+S4/SqB37WgP6JSHP3lRs2BLQO8BSgdC2BeQszhGd/vd9WaXFSv0uJu/scZBfqrqEblmtcgiNGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t/tx+ouyboyltyJdsNXAQi5MUBl0EWPWU0gAUzkIG/4=;
 b=IkR4YeDxD5JnF3dVtAWnWkL3ikFDyoYsrkQ5QO1mooesWVpjhmF+3AMJBZBml9ngh2kRkItcfBEMZcWXAHa9GhZBOgojI9O8+3oYRkbHy25YK/rHRpUGZdWVBzJ8kWTkh/K+8s8C7mhyPY7YoHB6lbOoIJy0SH4loqsdoSo7GvDZd5codJOvadhJZHgWwqqN1zBNE04pNbPZRmMb4Y5rpgf69w+HkUHbkAS1at5u+gLbgrWAv2qiynT+mgnfZ0TU9WqY0YE0crkA/wqvZZM3WJrxbx3RNjhWdIqdJYAiBX/JfKJ8ttjfUkJH593SOMzdtusvqDeyXZZHRc3UMtJCZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=t/tx+ouyboyltyJdsNXAQi5MUBl0EWPWU0gAUzkIG/4=;
 b=bLnk2bktExqhQW0qiBbqYxCwEOr3gs47nT6HwH5h4NSFAjaBgVl2fHXe32fp1lRqJZPBT6xy4nvtADgZf/qsKlWYjFgExpfoI2U5LQDbBPgwGP3HNO0qBevh/BwrZODWIp6Hxul5Xatw1WJV5SSz0kEDRTZV5k4CE+mszJ8t6jk=
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:36e::5)
 by AM8P250MB0312.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:32b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 9 Mar
 2022 09:34:46 +0000
Received: from AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::e951:ee1a:ae1d:187a]) by AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
 ([fe80::e951:ee1a:ae1d:187a%5]) with mapi id 15.20.5038.027; Wed, 9 Mar 2022
 09:34:46 +0000
From: Tobias Kronauer <tobias.kronauer@barkhauseninstitut.org>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] Re: GPS alarm PIN set to true
Thread-Index: AQHYMusxjCFeRu2IikK1hJ3r8Z9+v6y2ycQi
Date: Wed, 9 Mar 2022 09:34:46 +0000
Message-ID: 
 <AM8P250MB01078848E6B9E7E818D989539B0A9@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
References: 
 <AM8P250MB0107E39DAA11AA08F47D2EB89B099@AM8P250MB0107.EURP250.PROD.OUTLOOK.COM>
 <b6f6c119-6c99-2a6a-4a80-117f382d265a@gmail.com>
In-Reply-To: <b6f6c119-6c99-2a6a-4a80-117f382d265a@gmail.com>
Accept-Language: de-DE, en-150, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 799f91a9-db16-fc86-b519-69218435c8b7
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 74b722b6-9cba-410a-1fd0-08da01b00cc2
x-ms-traffictypediagnostic: AM8P250MB0312:EE_
x-microsoft-antispam-prvs: 
 <AM8P250MB0312E401DF792C520511DC679B0A9@AM8P250MB0312.EURP250.PROD.OUTLOOK.COM>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 b02O8smy4Yh+wJIPj56SZkh//JiCr6IOOtAvl3y3LEzNHmsfhgp3RJTRHbhAn7LyDf1jqVeZak2TwiJDXO0wKc9ZSdOtTqeeSYOSQcjLuLv2ATImpDjAng+wedVA0vCx3zQBYZNcL2QK6m98iSPTOJW9t+skI/Q3VIdpIPsZEBLMcVl3n4EmqnsFUuHgELJ5/kaDZ48JCTKieKvLqTi95+hWCWcN8UUqySgVS0Z1NaXltQyilJuxGPrs4zryCVmPs9bxJ87+msiwvwYewaBG0TYvtmTypCChO/ie7kPv9PPAYLep8O1O2ppCdUVKfu8+nvdIXB+xiM6cJiI4G18TG6kSf1DSFOPhbZEyxT7m5sISfjgfx4JV+ACAFKsiWLnaNnDhZ5WR4LcFSA08/ttEi3YL6N3zOak62082qNPNZLsLYxfNZh5d3eySb5lGTDNRN5e46/DG/cK9DQ9OBO1vklS6Mmvw0cNZklTOvBgJ4rHGSQE9sits5tN+bisECCBpYQ46p1o/BJi1oitCih587qVIKZuRUHzPaPPMLsBQupMVtfQknZNwJanqcdV81k4rMkyI59zM492Ni5+rPbdng9/tlmSj0oZ8/XyZ6bM2huc/cxFNvxyx3143YBgMFssVd91exvAQU7GuEb9sAUAAZ1QD6qqRSV4UDuXONaOHPrsUI46UT0a7gf1EMtcNKWqx8YpiFNlcJ00DLFS38Ak1Cw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM8P250MB0107.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(396003)(376002)(366004)(39830400003)(136003)(346002)(66476007)(66556008)(64756008)(38100700002)(71200400001)(6506007)(7696005)(86362001)(66946007)(66446008)(76116006)(38070700005)(508600001)(966005)(83380400001)(26005)(53546011)(66574015)(8676002)(4326008)(6916009)(9686003)(186003)(122000001)(316002)(2906002)(15974865002)(33656002)(5660300002)(8936002)(19627405001)(52536014)(44832011)(55016003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?WpNUVx30nVM8tAakOklRum03FFAD6vkYGu0xf+6veVrO0ykLIbuCVOz8Gs?=
 =?iso-8859-1?Q?y+C0kEpB+QP5V+vwpXvufGPw025oRERwbNHpTCzHcpPJStVcH7FK1NTff7?=
 =?iso-8859-1?Q?ikXLL/avVcLe/12O0dX8WhztQeL5a+3E8fy7tlyojLKS1N7/yniKUFCJa6?=
 =?iso-8859-1?Q?BjPTaf9hkDO4Lm79iYY99Iz/1xuOQCMlFnOO/pR7qcfMBZZ8QENAmrcqjv?=
 =?iso-8859-1?Q?hvyAQiRSY+kd/lZS4GeTQKl9mEUFV0Tqu4SPPAJFY11pFzswOgTCps4PMC?=
 =?iso-8859-1?Q?HxeoPvb4HqtNIpDwxwg1mJNF09qRWqDTTPDdNk7jp9goVgPysWQKG82NnL?=
 =?iso-8859-1?Q?kcJY7Bnk4WruMdzAy9lSMMV1aB11WJocOencg/8XuQyncp7eCdmALTw/66?=
 =?iso-8859-1?Q?kcv2VJsMEkecZ+1wls7GxYATWEZKNdntN8rv0W/YIRHeWSYr2IERzbNIEZ?=
 =?iso-8859-1?Q?dVGJOBqntFL5hpo2MOG91F4wrVESszVcLHMgyc2t30ke58BLHy8YSTHfUW?=
 =?iso-8859-1?Q?ttqqwmoq1xsO7VWPwKi1POwR3VWXH8jihoQgWxv+AuiC3J0tChx2xh4Vnc?=
 =?iso-8859-1?Q?mcuHmUfA0Kv05aO/5uSPO6EC4XB4fTyG5ZNQvd/oVy0xGBkN42zpTveQLC?=
 =?iso-8859-1?Q?SbshaDorYqIZ4VocKDXsMpO53dQ4B5SYv+jbFApz4nF9bl4+hG7vf5S/f6?=
 =?iso-8859-1?Q?NsSlkR34QwH0GCmknZoEnRQXzA2hX5NDM4QvFS87SU0YrASEb8JjaLuInF?=
 =?iso-8859-1?Q?bijx7tUIhQO0SWp9FRDcMl4/svWn8VrOf+NVZYi7I3L14VXRW1eQbnQr/g?=
 =?iso-8859-1?Q?ftBxIOXivwIFRPkdODyUh/s7KY+dyx4oQHYht0D0Xkzh64xQUfunJAy2nZ?=
 =?iso-8859-1?Q?pgADRol3o40lOD3PMujnsrn2ZSXvdy20p8RSg6YQEsDlBhZquHZ0/ZealV?=
 =?iso-8859-1?Q?2O9PA+xLSL78JeVgZoAAsjLKZdf7XtItuN7ZEOM2oD18+S43G1YSuyvSsn?=
 =?iso-8859-1?Q?ZDdg2kF1J3sfe0kxhYE5fJo8WTsPOJfIpBk38IGj5nrvSK624a+GWIGSzm?=
 =?iso-8859-1?Q?N4c0FfuBd6YK/MEDgALQChxsMfD65iKiK/AQbYCEIP/YPNKaueErQ97m1c?=
 =?iso-8859-1?Q?GqCAf6fwks/ttHphrfmUax3uCwC0+r/p4DjEjuGOw63AFMBAExiXUOsP+b?=
 =?iso-8859-1?Q?QY5DEUIbwY3RYNgi0Hd8KSGNX2xIUDZTDMgwItmshu55N4QD/NNJf2hEwz?=
 =?iso-8859-1?Q?Jdtlg7pimdLK2yMxtWTEoNQ2Qc0PM5kzfvTshRmzDvyiznN2Z0/2dHnosg?=
 =?iso-8859-1?Q?L04kfJoZyRFgxXS5uiPbJXQH4gazLaE6AI2d+sJJOSzC9iRDsPwkZDm5tI?=
 =?iso-8859-1?Q?OB6/aKSWZ6DhVVTDNEciXKAs4MiD8xTQrEAA20gH5/cmnc2AFFh0LYM2Mu?=
 =?iso-8859-1?Q?8PfnCCe5PgHcItvurHKCsD3SRK3hFJlFvmtyr7R2hGLzSsrYFeFGW4CWm8?=
 =?iso-8859-1?Q?HQiU6ZJDpwSGIigyy1UpYTF3w/fi09Qqx9nvb82yhzU7GDpIqlH27T0Lnb?=
 =?iso-8859-1?Q?2RQNhvjF339tZBbEiLJiX/7ilduq5nHRyJHa5bagTtIDYw9L3AvrJOxdHt?=
 =?iso-8859-1?Q?1QFR0gKFlbCTPxFwZLTU1jk493Fhwrm6gAO/JsN947eB7NYtYOOBRjHOiW?=
 =?iso-8859-1?Q?pEOSCVR4UujonR7Kp7hxEYcDkCqZHYBh4TyZEiafzszZ15lAKweljuYKh9?=
 =?iso-8859-1?Q?WW+XdbiY5+F6RbFa+pR6vMMEDSc6Xuxvv8opM3YqfJVrxH?=
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM8P250MB0107.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 74b722b6-9cba-410a-1fd0-08da01b00cc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2022 09:34:46.5797
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KYa0Qd6bClsPqaDUCkub6D00JEeJDbxyEy9l1IPOPENr2kmQEw45qHwSBFfKB/vfvoBw2sgVjMzJNV7ATtrNIDcUwLrO2PyajzdlSN326gsQcH0OkLZGyTtawGmnhPOZ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P250MB0312
Message-ID-Hash: 3C5QHWMULMA34CX7UUTJ4PBXAGWGTLUI
X-Message-ID-Hash: 3C5QHWMULMA34CX7UUTJ4PBXAGWGTLUI
X-MailFrom: tobias.kronauer@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPS alarm PIN set to true
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V2VBXNMLY4SNFWO6TVLHXHUJGCRTLKFQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1767289725865399442=="

--===============1767289725865399442==
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM8P250MB01078848E6B9E7E818D989539B0A9AM8P250MB0107EURP_"

--_000_AM8P250MB01078848E6B9E7E818D989539B0A9AM8P250MB0107EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

If the GPS light is the light left to the GPS ANT port, then yes it it shin=
ing green.

Currently, I have two GPS antennas connected to two X410. The GPS antenna h=
as multiple outputs, I use the "GPS" output and screw it to the SMA connect=
or. Then I probe the module pins (and call the `./sync_to_gps` example).

We use a Poynting A-Puck-0005-V1-01 antenna, in case it helps.

________________________________
Von: Marcus D. Leech <patchvonbraun@gmail.com>
Gesendet: Dienstag, 8. M=E4rz 2022 15:27
An: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Betreff: [USRP-users] Re: GPS alarm PIN set to true

On 2022-03-08 07:51, Tobias Kronauer wrote:
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




Is the GPS light on the USRP illuminated?

How are you distributing your GPS antenna signal to your multiple X410s?

Looking at the documentation from Jackson Labs for the GPSDO, the "ALARM" s=
ignal indicates a hardware fault, which may be nothing more
  than "I'm not seeing a GPS signal".




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


--_000_AM8P250MB01078848E6B9E7E818D989539B0A9AM8P250MB0107EURP_
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
If the GPS light is the light left to the GPS ANT port, then yes it it shin=
ing green.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Currently, I have two GPS antennas connected to two X410. The GPS antenna h=
as multiple outputs, I use the &quot;GPS&quot; output and screw it to the S=
MA connector. Then I probe the module pins (and call the `./sync_to_gps` ex=
ample).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
We use a Poynting A-Puck-0005-V1-01 antenna, in case it helps.<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>Von:</b> Marcus D. Leech &lt;=
patchvonbraun@gmail.com&gt;<br>
<b>Gesendet:</b> Dienstag, 8. M=E4rz 2022 15:27<br>
<b>An:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Betreff:</b> [USRP-users] Re: GPS alarm PIN set to true</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-03-08 07:51, Tobias Kronauer wrote=
:<br>
</div>
<blockquote type=3D"cite">Dear all,
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
<p style=3D"margin-top: 0px; margin-bottom: 0px;font-size:11pt; font-family=
:Calibri,sans-serif,serif,&quot;EmojiFont&quot;; margin:0px">
<br>
<br>
<br>
</p>
</div>
</blockquote>
Is the GPS light on the USRP illuminated?<br>
<br>
How are you distributing your GPS antenna signal to your multiple X410s?<br=
>
<br>
Looking at the documentation from Jackson Labs for the GPSDO, the &quot;ALA=
RM&quot; signal indicates a hardware fault, which may be nothing more<br>
&nbsp; than &quot;I'm not seeing a GPS signal&quot;.<br>
<br>
<br>
<b></b></div>
</div>
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

--_000_AM8P250MB01078848E6B9E7E818D989539B0A9AM8P250MB0107EURP_--

--===============1767289725865399442==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1767289725865399442==--

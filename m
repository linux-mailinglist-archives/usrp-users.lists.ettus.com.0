Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D1B887AB3
	for <lists+usrp-users@lfdr.de>; Sat, 23 Mar 2024 23:54:41 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7229385BE7
	for <lists+usrp-users@lfdr.de>; Sat, 23 Mar 2024 18:54:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1711234479; bh=/BuO7mW8RuPJNstPoE3MCcYYLN2Skf4hKC0xGpzzYjc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bFF/WvXtTa0Mhac7q0tIGweVbqUkP6Umq4K0MZhFH2uHzzt0mFI9sw++TexeSEF3W
	 EW47tj17ZxWluu+ZYVRPvOTqbhm2ITRu+HqleLd5UKwU6tscAwLqwrIMJpe+mSNmMx
	 GI4xz2qa19o17dn7pCDrfFVL7kUZIxeT+ZL2xBb7KU8EC6lOMjbgfGH6hA1J41KkFV
	 OKLkbx5hhL+61jpWmrmJtK8M8o+9v+V2zMA7D8lHhJb09i7wMqFpC4llP0tCO63gua
	 7CmHTQZLfYKaV4i/cacTzFNPZpvyzzIyGUXBzpXYuXcGfHWrJT0lxiuvAyHcKEQYXP
	 cJj2F+0sOFI2w==
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2076.outbound.protection.outlook.com [40.107.220.76])
	by mm2.emwd.com (Postfix) with ESMTPS id 849F5385BBA
	for <usrp-users@lists.ettus.com>; Sat, 23 Mar 2024 18:54:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="EEkUAMCa";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jveh1/jpRx+aIFxDJI0Nen/suXhUGVv4fub8d80WwHqPq74d3iEt3vYCtL8Ccnze5wg1suul+tZU+b49fFwyjPa9VcvXtVkoQTWaFEZDihbsYLAH+vUEP3GMmY+NwrpEgDOnb8hGKGKcvOikzVEyXfPqAi2hnIlpwMUX1kIVAzc/0AH4tB7E5MRtgv9jEC/JI7SfQ0w7KWmxLfD/QSFdyEAnq5s2p218gnj2f0FlMN8whGOJbAEPpgMUUBDVPuHqxRSzw37N2diFl9dveGIkbfJe/3vHB1K1MZ5vwLJsmo+mb4jP5HfysbB06HMQfXyZDSdd2nvmnPyCSUHSyC1FQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gg21DblQHEZa3w0SeR0YCnQViPiXHg01AXxjvnF6I00=;
 b=BHWX3kZVTTjjtzTbgdMZfpmtTcn7HSjBLaYGdCIas+yqmWQY7SLjBMKi79DVkObTQuESMNNNQTdhUyFzCVGNMom67nYKhHbtX32sU3dLcA+sz3A7Fgr+MSPTt4XdrK0WayyO3aXil+OgxXvJ/W6y9NUn3EexM0y0J8BX6GKGPzfOChyR9O+t02uY25Nq5rh0uiXoul77NAsdY8KTNSqPXvH2uGotpedWVx6lZnuR75ngN90rxf5eTdzi/P6pS2T8f9a6mPSlNfx7RpJRm8oQJPk2hBdyqbSbNYt8BS19CqI4kqvGutoGvPdnjALvIsx62RGI/fjac7i9niBcs9i9OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gg21DblQHEZa3w0SeR0YCnQViPiXHg01AXxjvnF6I00=;
 b=EEkUAMCal5XrsfzzJi2/Kcp6+gcidzvMIuvP1CvUZIf49pqe+QVcx3bsepdjI4634bfy6X8EQdQqHrddg127bL3L69qnAdEKCj6c9vvufvgVstIh/tbU3Xm+M2AW8iTcPHg5MwLgeU5l5gd8s6Y8EAPoGOnhsQHTeDlwbWs+CDQ=
Received: from DM8PR04MB7848.namprd04.prod.outlook.com (2603:10b6:8:26::13) by
 DM8PR04MB7944.namprd04.prod.outlook.com (2603:10b6:8:6::9) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.26; Sat, 23 Mar 2024 22:54:16 +0000
Received: from DM8PR04MB7848.namprd04.prod.outlook.com
 ([fe80::cd:7cd2:ebb6:adc1]) by DM8PR04MB7848.namprd04.prod.outlook.com
 ([fe80::cd:7cd2:ebb6:adc1%4]) with mapi id 15.20.7409.028; Sat, 23 Mar 2024
 22:54:15 +0000
From: Lars Amsel <lars.amsel@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: RFNOC Python API for timed GPIO
Thread-Index: AQHaeUNp1Z6eWXl9/UW6bx8KPUT6sLFF9zGK
Date: Sat, 23 Mar 2024 22:54:15 +0000
Message-ID: 
 <DM8PR04MB7848924D60396027ACA3BAD4E6302@DM8PR04MB7848.namprd04.prod.outlook.com>
References: gDl51suQwnMbsbrRcQHMmd2UQ8OtkbgQsdMTWS3DE@lists.ettus.com
 <30V0zXNQWpRnVb6jq1bxCrf85h4pl97tIlYaK1V0@lists.ettus.com>
In-Reply-To: <30V0zXNQWpRnVb6jq1bxCrf85h4pl97tIlYaK1V0@lists.ettus.com>
Accept-Language: en-DE, en-US
Content-Language: aa
X-Hashtags: #NewslettersPlus
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR04MB7848:EE_|DM8PR04MB7944:EE_
x-ms-office365-filtering-correlation-id: 950a1897-4b26-48f0-f7ce-08dc4b8c2a3e
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KnmKN/O8kV4xK7QrAr2L0rjgLYFtt6nj3WqSO+2S6EiQmt2Cw4gRkL/7EE9PNXmcfXavtv0EBuAi62Yg3AZoL8CX2voKPd28dGxrzMw8Vl870DZ0paNXnrEwBURLZDoh3d/T0UWjAh5BfkUAvr7pKVFJdGd8jVfPfBd+z2JombakPxL8mwAvZm2xfEJaD7g3hBA/EMs2yVocIRQDqAOcKnrkRCaYxb+s2MyiEE77tCgumxkW960WMWkrO8FOXayNW4TXFteLaK6F6lq8fzglCeCfoDX55Y78LcN06FJXeXwox0Z/Zm6o2Z6dTDmU1ZLb1PCSGbgVjwRSGvKt40xjwGPE3I3hSwHF6k+Pw4Y3vys1Htf6ZzjzYfTZH+cUgrmH6nS9+EG4UyPRsCHvN5VyyH5S575QMgziVu2WcPhUyrBWv7DyKBGRkbZrGyb9Kow/0vTVSvlMYTItvWxkqfW0WAaiJoHbzH1sJLR4TQRlE/e1/Gv8bgRypd5ztCVh9PEUZPClJSjv52Nlug+b+NrRVajRmzBouhSK4taP6HqZpdTY7DYGmqXunhLDgqzvn7knOTGP+bBG0NBMqaUlbZNXyAqDEK11KKprCch3Xyon+XzjeVXPTcbZvX52DcJslcVDTJNMt0eLKFusgrdGELB04tWsHg4CItZ0oiilSgephHdwIYj2gG1YslJ9/95ECY/v
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB7848.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?vpAlD3M/5SOs0/YNtWvnBDVnY82OHuMaT97HADmLE/imBfTgF96ErRSe?=
 =?Windows-1252?Q?UZrISiJ/vdEfAErFXtdiWZmT2/aCC3FSaK6sbJgpgmEo16/HDwIM9Rbq?=
 =?Windows-1252?Q?QuBzhBLmZU6gMQwRJS+pCKYr5Qpa+uOlv4gYhRvNriHmY8KQMec9le++?=
 =?Windows-1252?Q?KsIadd4Y2OF1tlYwYEvYGs6s84g0+2Jg6XCVO/W1Ji9CN9P6VBz9QWhz?=
 =?Windows-1252?Q?NO+QLh+ARGXUmyiYeXe4ijoRxpaPMP8pAUoHCxnCnxlVp8njXOdWZd3F?=
 =?Windows-1252?Q?GWtXT+jmpJDWINnhIqjwHCrrjZaDnOFbU5Cn+JONRN661BmYuMxSOnzm?=
 =?Windows-1252?Q?NkEI6Uu4IMG726yu1062YUOGT8QBQtirtD+vYes3wDcsiHS7xDHqx0yY?=
 =?Windows-1252?Q?tTdD4g+Wfl8qA5GlP2dY0R/L9TPc2XZd0RDnN0/c5HYmlRYKXfo1qiDW?=
 =?Windows-1252?Q?AZhhWSjbcji77wEewoCH/n3yUBkPo5yjFD7n+Xtya7928oAGoW1mtxIJ?=
 =?Windows-1252?Q?nZ2+ztfNQk8GtYl6OC1kn5pM59VeQkObdK6y7SN+/l7FU//IeM+zMkED?=
 =?Windows-1252?Q?L2DRJJXZcupmdsKDJFNcdU2eRWaNeNsbMbiHEXWBXEiU3yIonNV90S2V?=
 =?Windows-1252?Q?T2fhKpxtqqravXBvSxAkDuD5iAf5YjGpGFlGjygjyjbhaIg7gaqK9Ukh?=
 =?Windows-1252?Q?yKX4JxbqK1bqi2gSNwGI4iYKZEWHQ6uX1mXceHzlMotxyrmCrTXSGpyZ?=
 =?Windows-1252?Q?CJ/1jOrUFO57eq/2BUFPbAPRbcvVNeUXMauC/Za1edxFW7W9e24LXxAq?=
 =?Windows-1252?Q?vhbets+Vb3Bq+sdsrdyCWydPgNoZ7OstqC7QpWuZgU6LxJ+4fvA3ciol?=
 =?Windows-1252?Q?NP4a1XO+eDXJIy5ye1Znn+JgAFc2xaWlZat7e0LYOJsuAwCg7wBoJBvO?=
 =?Windows-1252?Q?7o90uwB2EyChiWsfTKKUTqfZIniwVxF3BHEo9uQjox+jB5SOBqD59zoC?=
 =?Windows-1252?Q?zqZkrL1DVTouJpph3A547zgO7pouX7LOEAnWAjZ6K61SCy26ogT6UOUy?=
 =?Windows-1252?Q?tSIPUv7r0rjWECoNrUoh9kCg2vOIWtYho3iPdxOO9Zc8HUlVecaEqS8a?=
 =?Windows-1252?Q?dI2ZZts5R3jEpZWfpcFAGF0DK1abvNPTK+9cSi/yzKFP74S+P/CRuWKN?=
 =?Windows-1252?Q?MzQYOsZ6xGmUYitLlUb8+3SfRshf4b7cao7p90ln+kv7BO49Z5mB/9Lc?=
 =?Windows-1252?Q?zcckDwEjE0J0NIbo73a5iXi8GKptus8QGSEdyM8bbRaV/8JtFI6hryNA?=
 =?Windows-1252?Q?sR1FWpck9pSUHcRmtLUZARnvwb4QfPFvFMek5tq07N1QTmU8bSNPxY/s?=
 =?Windows-1252?Q?TpWptS1axxeCK5kzlPTSOyZow7Lm6ZQFKrAyYoEAIAOZxo2/6nTrkhh5?=
 =?Windows-1252?Q?3mDVvllKtIS4a54lekasMGLg8uHxqy9LV5+mvxFSjNf7UYaC06UcS5uX?=
 =?Windows-1252?Q?/ap8ZhANRzCnPmiT5qqrBiUp0bBVXrFVX3lCIF7hAGOxVlLgrstExRNH?=
 =?Windows-1252?Q?ahpcM4cgxJKUpASYOpa9Pchf/Pqp3h09BaCpEy6OL7RRNrZIlFPprCnw?=
 =?Windows-1252?Q?D5hhCkZEmMHGgXZ7Ve2fl1BRn6vav5AEEw++ojQhTvZ32syZrLTOmnuF?=
 =?Windows-1252?Q?ux+1mYc+1Uc=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB7848.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 950a1897-4b26-48f0-f7ce-08dc4b8c2a3e
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2024 22:54:15.5778
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w6Bu8RN98WQdjgNsoDMQ82aNHtlaQj+7V55/t1dSyHHxWA0zK8ieeui98kvMspFuNZjgLWFPyx06xx3BQAh41Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR04MB7944
Message-ID-Hash: QZRFM4SSSWWVH56HIW2F7AY6TED5ZQME
X-Message-ID-Hash: QZRFM4SSSWWVH56HIW2F7AY6TED5ZQME
X-MailFrom: lars.amsel@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC Python API for timed GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UXO62NPGYXUEQLVKHB6PJUWNVLEY3WZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0093696910473700100=="

--===============0093696910473700100==
Content-Language: aa
Content-Type: multipart/alternative;
	boundary="_000_DM8PR04MB7848924D60396027ACA3BAD4E6302DM8PR04MB7848namp_"

--_000_DM8PR04MB7848924D60396027ACA3BAD4E6302DM8PR04MB7848namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

This behavior is also described as such in the documentation of the FPGA co=
mmand queue https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comm=
ands_in_UHD#Command_Queue

Regards Lars



[NI]<https://www.ni.com/r/zf03uz>



Lars Amsel
Principal Software Engineer
SW Discipline
+49351206931427<tel:+49351206931427>  |  ni.com<https://www.ni.com/>
[National Instruments is now NI.]


________________________________
From: a.lapini@ifac.cnr.it <a.lapini@ifac.cnr.it>
Sent: Monday, 18 March 2024 15:48
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: RFNOC Python API for timed GPIO

You don't often get email from a.lapini@ifac.cnr.it. Learn why this is impo=
rtant<https://aka.ms/LearnAboutSenderIdentification>

After spending some time, I arrived at the following conclusions (thanks al=
so to Jonathon Pendlum):

a) =93set_command_time()=94 and =93clear_command_time()=94 are available in=
 Python API of UHD 4.6, also for RFNOC interface.

b) The non-intuitive part is that, given the following sequence of commands=
:

1) radio_control_block.set_command_time(radio_control_block.get_time_now() =
+ 10, 0)

2) COMMAND_A

3) radio_control_block.clear_command_time(0)

4) COMMAND_B

will make COMMAND_A to be executed after 10 seconds and COMMAND_B just afte=
r COMMAND_A. The Radio block (and all RFNoC blocks in general) has only one=
 command FIFO. When a timed command is sent, it is put in the block's comma=
nd FIFO and all subsequent commands (timed or untimed) will be blocked by t=
hat timed command. In this sense, "clear_command_time()" has no effect.

I hope this will be useful for other users.


National Instruments Dresden GmbH; Gesch=E4ftsf=FChrer (Managing Directors)=
: John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; Sitz (=
Registered Office): Dresden; HRB (Commercial Register No.): 22081; Register=
gericht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_DM8PR04MB7848924D60396027ACA3BAD4E6302DM8PR04MB7848namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div style=3D"font-family: inherit; font-size: inherit; color: rgb(0, 0, 0)=
; background-color: transparent;">
</div>
<div>This behavior is also described as such in the documentation of the FP=
GA command queue https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed=
_Commands_in_UHD#Command_Queue</div>
<div><br>
</div>
<div>Regards Lars&nbsp;</div>
<br>
<div><br>
</div>
<div><br>
</div>
<div>
<meta name=3D"ProgId" content=3D"Word.Document">
<meta name=3D"Generator" content=3D"Microsoft Word 15">
<meta name=3D"Originator" content=3D"Microsoft Word 15">
<link rel=3D"File-List" href=3D"Emerson%20(lars.amsel@ni.com)_files/filelis=
t.xml"><link rel=3D"Edit-Time-Data" href=3D"Emerson%20(lars.amsel@ni.com)_f=
iles/editdata.mso"><!--[if !mso]>=0A=
<style>=0A=
v\:* {behavior:url(#default#VML);}=0A=
o\:* {behavior:url(#default#VML);}=0A=
w\:* {behavior:url(#default#VML);}=0A=
.shape {behavior:url(#default#VML);}=0A=
</style>=0A=
<![endif]--><!--[if gte mso 9]><xml>=0A=
 <o:OfficeDocumentSettings>=0A=
  <o:AllowPNG/>=0A=
 </o:OfficeDocumentSettings>=0A=
</xml><![endif]--><link rel=3D"themeData" href=3D"Emerson%20(lars.amsel@ni.=
com)_files/themedata.thmx"><link rel=3D"colorSchemeMapping" href=3D"Emerson=
%20(lars.amsel@ni.com)_files/colorschememapping.xml"><!--[if gte mso 9]><xm=
l>=0A=
 <w:WordDocument>=0A=
  <w:View>Normal</w:View>=0A=
  <w:Zoom>0</w:Zoom>=0A=
  <w:TrackMoves/>=0A=
  <w:TrackFormatting/>=0A=
  <w:HyphenationZone>21</w:HyphenationZone>=0A=
  <w:PunctuationKerning/>=0A=
  <w:ValidateAgainstSchemas/>=0A=
  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>=0A=
  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>=0A=
  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>=0A=
  <w:DoNotPromoteQF/>=0A=
  <w:LidThemeOther>DE</w:LidThemeOther>=0A=
  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>=0A=
  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>=0A=
  <w:DoNotShadeFormData/>=0A=
  <w:Compatibility>=0A=
   <w:BreakWrappedTables/>=0A=
   <w:SnapToGridInCell/>=0A=
   <w:WrapTextWithPunct/>=0A=
   <w:UseAsianBreakRules/>=0A=
   <w:DontGrowAutofit/>=0A=
   <w:SplitPgBreakAndParaMark/>=0A=
   <w:EnableOpenTypeKerning/>=0A=
   <w:DontFlipMirrorIndents/>=0A=
   <w:OverrideTableStyleHps/>=0A=
   <w:UseFELayout/>=0A=
  </w:Compatibility>=0A=
  <m:mathPr>=0A=
   <m:mathFont m:val=3D"Cambria Math"/>=0A=
   <m:brkBin m:val=3D"before"/>=0A=
   <m:brkBinSub m:val=3D"&#45;-"/>=0A=
   <m:smallFrac m:val=3D"off"/>=0A=
   <m:dispDef/>=0A=
   <m:lMargin m:val=3D"0"/>=0A=
   <m:rMargin m:val=3D"0"/>=0A=
   <m:defJc m:val=3D"centerGroup"/>=0A=
   <m:wrapIndent m:val=3D"1440"/>=0A=
   <m:intLim m:val=3D"subSup"/>=0A=
   <m:naryLim m:val=3D"undOvr"/>=0A=
  </m:mathPr></w:WordDocument>=0A=
</xml><![endif]--><!--[if gte mso 9]><xml>=0A=
 <w:LatentStyles DefLockedState=3D"false" DefUnhideWhenUsed=3D"false"=0A=
  DefSemiHidden=3D"false" DefQFormat=3D"false" DefPriority=3D"99"=0A=
  LatentStyleCount=3D"376">=0A=
  <w:LsdException Locked=3D"false" Priority=3D"0" QFormat=3D"true" Name=3D"=
Normal"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"=
heading 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"heading 9"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"index 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"index 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"index 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"index 4"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"index 5"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"index 6"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"index 7"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"index 8"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"index 9"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" Name=3D"toc 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" Name=3D"toc 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" Name=3D"toc 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" Name=3D"toc 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" Name=3D"toc 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" Name=3D"toc 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" Name=3D"toc 7"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" Name=3D"toc 8"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" Name=3D"toc 9"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Normal Indent"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"footnote text"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"annotation text"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"header"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"footer"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"index heading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"35" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"caption"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"table of figures"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"envelope address"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"envelope return"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"footnote reference"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"annotation reference"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"line number"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"page number"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"endnote reference"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"endnote text"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"table of authorities"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"macro"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"toa heading"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Bullet"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Number"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List 4"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List 5"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Bullet 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Bullet 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Bullet 4"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Bullet 5"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Number 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Number 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Number 4"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Number 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"10" QFormat=3D"true" Name=3D=
"Title"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Closing"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Signature"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" Name=3D"Default Paragraph Font"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Body Text"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Body Text Indent"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Continue"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Continue 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Continue 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Continue 4"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"List Continue 5"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Message Header"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"11" QFormat=3D"true" Name=3D=
"Subtitle"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Salutation"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Date"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Body Text First Indent"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Body Text First Indent 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Note Heading"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Body Text 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Body Text 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Body Text Indent 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Body Text Indent 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Block Text"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Hyperlink"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"FollowedHyperlink"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"22" QFormat=3D"true" Name=3D=
"Strong"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"20" QFormat=3D"true" Name=3D=
"Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Document Map"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Plain Text"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"E-mail Signature"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Top of Form"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Bottom of Form"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Normal (Web)"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Acronym"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Address"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Cite"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Code"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Definition"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Keyboard"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Preformatted"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Sample"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Typewriter"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"HTML Variable"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Normal Table"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"annotation subject"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"No List"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Outline List 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Outline List 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Outline List 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Simple 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Simple 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Simple 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Classic 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Classic 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Classic 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Classic 4"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Colorful 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Colorful 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Colorful 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Columns 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Columns 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Columns 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Columns 4"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Columns 5"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Grid 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Grid 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Grid 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Grid 4"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Grid 5"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Grid 6"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Grid 7"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Grid 8"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table List 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table List 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table List 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table List 4"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table List 5"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table List 6"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table List 7"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table List 8"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table 3D effects 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table 3D effects 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table 3D effects 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Contemporary"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Elegant"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Professional"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Subtle 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Subtle 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Web 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Web 2"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Web 3"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Balloon Text"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"Table Grid"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Table Theme"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" Name=3D"Placeholder =
Text"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"1" QFormat=3D"true" Name=3D"=
No Spacing"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 1"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" Name=3D"Revision"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"34" QFormat=3D"true"=0A=
   Name=3D"List Paragraph"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"29" QFormat=3D"true" Name=3D=
"Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"30" QFormat=3D"true"=0A=
   Name=3D"Intense Quote"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Ac=
cent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accen=
t 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accen=
t 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1=
 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2=
 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Ac=
cent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Ac=
cent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Ac=
cent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Ac=
cent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Ac=
cent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent=
 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading=
 Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Ac=
cent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Ac=
cent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"19" QFormat=3D"true"=0A=
   Name=3D"Subtle Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"21" QFormat=3D"true"=0A=
   Name=3D"Intense Emphasis"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"31" QFormat=3D"true"=0A=
   Name=3D"Subtle Reference"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"32" QFormat=3D"true"=0A=
   Name=3D"Intense Reference"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"33" QFormat=3D"true" Name=3D=
"Book Title"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"37" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" Name=3D"Bibliography"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true"=0A=
   UnhideWhenUsed=3D"true" QFormat=3D"true" Name=3D"TOC Heading"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"41" Name=3D"Plain Table 1"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"42" Name=3D"Plain Table 2"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"43" Name=3D"Plain Table 3"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"44" Name=3D"Plain Table 4"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"45" Name=3D"Plain Table 5"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"40" Name=3D"Grid Table Light=
"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Lig=
ht"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Col=
orful"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Col=
orful"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"Grid Table 1 Light Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"Grid Table 6 Colorful Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"Grid Table 7 Colorful Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"Grid Table 1 Light Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"Grid Table 6 Colorful Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"Grid Table 7 Colorful Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"Grid Table 1 Light Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"Grid Table 6 Colorful Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"Grid Table 7 Colorful Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"Grid Table 1 Light Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"Grid Table 6 Colorful Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"Grid Table 7 Colorful Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"Grid Table 1 Light Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"Grid Table 6 Colorful Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"Grid Table 7 Colorful Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"Grid Table 1 Light Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Acc=
ent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Acc=
ent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Acc=
ent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dar=
k Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"Grid Table 6 Colorful Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"Grid Table 7 Colorful Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Lig=
ht"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4"/>=
=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Col=
orful"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Col=
orful"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"List Table 1 Light Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"List Table 6 Colorful Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"List Table 7 Colorful Accent 1"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"List Table 1 Light Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"List Table 6 Colorful Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"List Table 7 Colorful Accent 2"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"List Table 1 Light Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"List Table 6 Colorful Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"List Table 7 Colorful Accent 3"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"List Table 1 Light Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"List Table 6 Colorful Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"List Table 7 Colorful Accent 4"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"List Table 1 Light Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"List Table 6 Colorful Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"List Table 7 Colorful Accent 5"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"46"=0A=
   Name=3D"List Table 1 Light Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Acc=
ent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Acc=
ent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Acc=
ent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dar=
k Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"51"=0A=
   Name=3D"List Table 6 Colorful Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" Priority=3D"52"=0A=
   Name=3D"List Table 7 Colorful Accent 6"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Mention"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Smart Hyperlink"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Hashtag"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Unresolved Mention"/>=0A=
  <w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"tr=
ue"=0A=
   Name=3D"Smart Link"/>=0A=
 </w:LatentStyles>=0A=
</xml><![endif]--><!--[if gte mso 10]>=0A=
<style>=0A=
 /* Style Definitions */=0A=
 table.MsoNormalTable=0A=
	{mso-style-name:"Table Normal";=0A=
	mso-tstyle-rowband-size:0;=0A=
	mso-tstyle-colband-size:0;=0A=
	mso-style-noshow:yes;=0A=
	mso-style-priority:99;=0A=
	mso-style-parent:"";=0A=
	mso-padding-alt:0in 5.4pt 0in 5.4pt;=0A=
	mso-para-margin:0in;=0A=
	mso-pagination:widow-orphan;=0A=
	font-size:11.0pt;=0A=
	font-family:"Calibri",sans-serif;=0A=
	mso-ascii-font-family:Calibri;=0A=
	mso-ascii-theme-font:minor-latin;=0A=
	mso-hansi-font-family:Calibri;=0A=
	mso-hansi-theme-font:minor-latin;=0A=
	mso-bidi-font-family:"Times New Roman";=0A=
	mso-bidi-theme-font:minor-bidi;=0A=
	mso-font-kerning:1.0pt;=0A=
	mso-ligatures:standardcontextual;}=0A=
</style>=0A=
<![endif]-->
<div class=3D"WordSection1" style=3D"page: WordSection1;">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"450" style=3D"width:337.5pt;border-collapse:collapse;mso-yf=
ti-tbllook:1184;=0A=
 mso-padding-alt:0in 0in 0in 0in">
<tbody>
<tr style=3D"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes">
<td width=3D"450" style=3D"width:337.5pt;padding:0in 0in 0in 0in">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"450" style=3D"width:337.5pt;border-collapse:collapse;mso-yf=
ti-tbllook:1184;=0A=
   mso-padding-alt:0in 0in 0in 0in">
<tbody>
<tr style=3D"mso-yfti-irow:0;mso-yfti-firstrow:yes">
<td width=3D"450" valign=3D"top" style=3D"width:337.5pt;padding:0in 0in 0in=
 0in">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"450" style=3D"width:337.5pt;border-collapse:collapse;mso-yf=
ti-tbllook:1184;=0A=
     mso-padding-alt:0in 0in 0in 0in">
<tbody>
<tr style=3D"mso-yfti-irow:0;mso-yfti-firstrow:yes;mso-yfti-lastrow:yes;=0A=
      height:75.0pt">
<td width=3D"100" valign=3D"top" style=3D"width:75.0pt;padding:0in 0in 0in =
0in;=0A=
      height:75.0pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"100" style=3D"width:75.0pt;border-collapse:collapse;mso-yft=
i-tbllook:=0A=
       1184;mso-padding-alt:0in 0in 0in 0in">
<tbody>
<tr style=3D"mso-yfti-irow:0;mso-yfti-firstrow:yes;height:60.0pt">
<td width=3D"80" style=3D"width:60.0pt;padding:0in 0in 0in 0in;height:60.0p=
t">
<p class=3D"MsoNormal" align=3D"center" style=3D"margin: 0in; font-size: 11=
pt; font-family: Calibri, sans-serif;text-align:center">
<b><span style=3D"font-size:27.0pt;font-family:&quot;Arial&quot;,sans-serif=
;mso-fareast-font-family:=0A=
        Calibri;mso-font-kerning:0pt;mso-ligatures:none"><a href=3D"https:/=
/www.ni.com/r/zf03uz" target=3D"_blank" data-ogsc=3D"" style=3D""><span sty=
le=3D"font-size: 1pt; font-family: Calibri, sans-serif; color: windowtext; =
font-weight: normal; text-decoration: none;"><!--[if gte vml 1]><v:shapetyp=
e id=3D"_x0000_t75"=0A=
         coordsize=3D"21600,21600" o:spt=3D"75" o:preferrelative=3D"t" path=
=3D"m@4@5l@4@11@9@11@9@5xe"=0A=
         filled=3D"f" stroked=3D"f">=0A=
         <v:stroke joinstyle=3D"miter"/>=0A=
         <v:formulas>=0A=
          <v:f eqn=3D"if lineDrawn pixelLineWidth 0"/>=0A=
          <v:f eqn=3D"sum @0 1 0"/>=0A=
          <v:f eqn=3D"sum 0 0 @1"/>=0A=
          <v:f eqn=3D"prod @2 1 2"/>=0A=
          <v:f eqn=3D"prod @3 21600 pixelWidth"/>=0A=
          <v:f eqn=3D"prod @3 21600 pixelHeight"/>=0A=
          <v:f eqn=3D"sum @0 0 1"/>=0A=
          <v:f eqn=3D"prod @6 1 2"/>=0A=
          <v:f eqn=3D"prod @7 21600 pixelWidth"/>=0A=
          <v:f eqn=3D"sum @8 21600 0"/>=0A=
          <v:f eqn=3D"prod @7 21600 pixelHeight"/>=0A=
          <v:f eqn=3D"sum @10 21600 0"/>=0A=
         </v:formulas>=0A=
         <v:path o:extrusionok=3D"f" gradientshapeok=3D"t" o:connecttype=3D=
"rect"/>=0A=
         <o:lock v:ext=3D"edit" aspectratio=3D"t"/>=0A=
        </v:shapetype><v:shape id=3D"_x0000_i1033" type=3D"#_x0000_t75" alt=
=3D"NI"=0A=
         style=3D'width:60pt;height:60pt'>=0A=
         <v:imagedata src=3D"data:image/png;base64, iVBORw0KGgoAAAANSUhEUgA=
AAKAAAACgCAYAAACLz2ctAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAJO=
gAACToAYJjBRwAAAY9SURBVHhe7d1LaFxlGMbxM2euTUsDUtvipd5BtLgQLO3Chbg0FbW6caM7N=
yLuXUrtQlEEFVcuBUVrQd1V0IrgBbxSFEpB68JUadXmNpmr3/d+3zeCFsmcSXxOJ/9feXyttMmZ=
8OT1THJyplJ9//AwA0TyOAEJCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCgg=
pCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCg=
gpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCgipqS/gcLi++b9d7BgKx=
b+t8CZLhQ0Iqal9xfT0oAari+Ff/BqYRCXOQT/MvBZmtRFnPYxK+oOTGcTjHabjn1StZSOvheNc=
n6OcHBsQUlO7AfvLv9vsHnzG5kqva3NQ8EyoknbGcGDjy4WzNt+YP2nz1TNf2Ey7Ja+HjTPuphl=
tvl47zHuetvnn6pLNcc3GzXf/t2/bPDb/vc1q3NhqbEBITe8GXDpnc3jfszZXO3Gj2D8nV8/D52=
41nQNWwu8fP/mezZdPn7BZac3azNd4bjjagN3lMA8ettluh9+Pq1XfYvPQN2/ZPBo39ui4xdiAk=
Jr+AtoXwYZZ3+2+9UzbPRv2WewsW5Y7S5aX9s5ZThx4zDJsX7D4zZa221j8X3G52DGsJf6s1858=
w4ehdNiAkKKAE6q4czufuKiyxfai5c4d11ne3feIJW3C9OcQUEBIUcB1ljZiOjecu+IWy6Grb7c=
MeqsWBBQQUhRwg6RN6L9+5/P63nstWb9nKfyseMpQQEhRwA3WGw4sjcYWy107b7IMBz3LZkcBIU=
UBN1g6F8x6HcvDu2+1ZINuyCZHASFVugL2B/2Q7krBtC2Zv57Op1a1zNSalq0F06hULUV1BwPL/=
u27Le5BhmxybEBIleZ6QL/1vOtnwvVzT+7Zb3OpX/Q8KTyshXRd3ehrbuNdo7wSz9Me2nmzzTtm=
r7TZGcafDVmjerxe8Od4ZfONH71gM6/P2LTzROdf1wPOhesBlwpeEb01Xpn9wNdHbb5zlusBgZH=
ybED/HQLn7sv22Dx+4FGbWWfcDRgfTit8hleOPWXTPdI4x/wpDX8+6by4d87mE9ekzeye1Y4hbc=
BfOmGzXfvh8zbZgIBQ6QrYHbpni/4nz3puE7j4TTNOFnsh8UJg9wzYfaZbmpbqmEl/r5G7Z8Euk=
/L7rRT/yykJNiCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKGDZ=
TfkFhBQQUhSwZPxPhthPh8TN91v7gqVWqVimDQWEFAUsmdG9ZOIq/OT8T5ZJ78xQVhQQUhSwrKp=
Ny5EfP7VUGk2Lv8PD33d5uPRRQEhRwJLK86rl83OnLT/8MW/ZUq1ZpgUFhBQFLKnRs+HGVsu+z1=
6zVOutEPcU2cedEdqvSxUFhBQFLLmqOw/0WeitWm77+BVLqzkTUqlZLtVnxxQQUiUuYPhmaPrMX=
ms2XrHjSr+KSnfr+m7hrGXXB89Zzrut6LOtuc2SvmMSv5GSDre02ICQKl0Bm+58xydruENz2dZy=
n9kFYo/MHl3aBZOtglm3fXzszqsuF3uf/5WmO1/zudw9o/UpKm3CX7srll3Hj1ge/OpNy6mV85b=
0qgBZ030sXcr69UM2IKRKc4/odG/kZrzm7aq4JfzrrBVRz8Pn1qmVBZt5fLvpXsxr1Y/vf0e8p/=
J2f7dVZ9xXuqyEM7Ksb7dtzbIz8V7Refzv4x5X4s8vvUF63bn4du3rh84Nre025/1rpjhL8dUIq=
gXf33pjA0KqNBswGd0lvuDm+6c83p2+6IZJ0iZ0BxZmYeE4im7kteqn40zHHT8OZdl8CRsQUqXb=
gNhc2ICQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooC=
QooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQoo=
CQooCQooCQooCQooCQooCQooCQooCQooCQooCQooAQyrK/AAKzFtHKVJyKAAAAAElFTkSuQmCC"=
=0A=
          o:title=3D"93E5FB58"/>=0A=
        </v:shape><![endif]--><!--[if !vml]--><img border=3D"0" width=3D"80=
" height=3D"80" alt=3D"NI" v:shapes=3D"_x0000_i1033" src=3D"data:image/png;=
base64, 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
K/AAKzFtHKVJyKAAAAAElFTkSuQmCC"><!--[endif]--></span></a><o:p></o:p></span>=
</b></p>
</td>
<td width=3D"20" style=3D"width:15.0pt;padding:0in 0in 0in 0in;height:60.0p=
t">
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
Calibri, sans-serif;">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;=
=0A=
        mso-fareast-font-family:&quot;Times New Roman&quot;;mso-font-kernin=
g:0pt;=0A=
        mso-ligatures:none">&nbsp;
<o:p></o:p></span></p>
</td>
</tr>
<tr style=3D"mso-yfti-irow:1;mso-yfti-lastrow:yes;height:15.0pt">
<td width=3D"80" style=3D"width:60.0pt;padding:0in 0in 0in 0in;height:15.0p=
t">
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
Calibri, sans-serif;">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;=
=0A=
        mso-fareast-font-family:&quot;Times New Roman&quot;;mso-font-kernin=
g:0pt;=0A=
        mso-ligatures:none">&nbsp;
<o:p></o:p></span></p>
</td>
<td width=3D"20" style=3D"width:15.0pt;padding:0in 0in 0in 0in;height:15.0p=
t">
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
Calibri, sans-serif;">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;=
=0A=
        mso-fareast-font-family:&quot;Times New Roman&quot;;mso-font-kernin=
g:0pt;=0A=
        mso-ligatures:none">&nbsp;
<o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td width=3D"350" valign=3D"top" style=3D"width:262.5pt;padding:0in 0in 0in=
 0in;=0A=
      height:75.0pt">
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
Calibri, sans-serif;margin-bottom:4.5pt">
<b><span style=3D"font-size:=0A=
      10.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-fareast-font-fami=
ly:Calibri;=0A=
      mso-font-kerning:0pt;mso-ligatures:none">Lars Amsel</span></b><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;mso-farea=
st-font-family:=0A=
      Calibri;mso-font-kerning:0pt;mso-ligatures:none">&nbsp;
<br>
Principal Software Engineer<br>
SW Discipline<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
Calibri, sans-serif;">
<span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif;=
=0A=
      mso-fareast-font-family:Calibri;mso-font-kerning:0pt;mso-ligatures:no=
ne"><a href=3D"tel:+49351206931427" data-ogsc=3D"" style=3D""><span style=
=3D"color: windowtext; text-decoration: none;">+49351206931427</span></a>&n=
bsp;&nbsp;|&nbsp;
<a href=3D"https://www.ni.com/" target=3D"_blank" title=3D"https://www.ni.c=
om" data-ogsc=3D"" style=3D"">
<span style=3D"color: windowtext;">ni.com</span></a><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr style=3D"mso-yfti-irow:1;mso-yfti-lastrow:yes;height:59.25pt">
<td width=3D"542" valign=3D"top" style=3D"width:406.5pt;padding:0in 0in 0in=
 0in;=0A=
    height:59.25pt">
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
Calibri, sans-serif;vertical-align:top">
<span style=3D"font-size:1.0pt;=0A=
    mso-ascii-font-family:Calibri;mso-fareast-font-family:&quot;Times New R=
oman&quot;;=0A=
    mso-hansi-font-family:Calibri;mso-bidi-font-family:Calibri;mso-font-ker=
ning:=0A=
    0pt;mso-ligatures:none"><!--[if gte vml 1]><v:shape id=3D"_x0000_i1034"=
=0A=
     type=3D"#_x0000_t75" alt=3D"&#10;National Instruments&#10;is now NI." =
style=3D'width:199.5pt;=0A=
     height:28.5pt'>=0A=
     <v:imagedata src=3D"data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAAh4=
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3D"=0A=
      o:title=3D"2C7FF326"/>=0A=
    </v:shape><![endif]--><!--[if !vml]--><img border=3D"0" width=3D"266" h=
eight=3D"38" alt=3D"National Instruments=0A=
is now NI." v:shapes=3D"_x0000_i1034" src=3D"data:image/png;base64, iVBORw0=
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3D"><!--[end=
if]--></span><span style=3D"font-size:16.0pt;font-family:&quot;Arial&quot;,=
sans-serif;mso-fareast-font-family:=0A=
    Calibri;mso-font-kerning:0pt;mso-ligatures:none"><o:p></o:p></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
Calibri, sans-serif;">
<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal" style=3D"margin: 0in; font-size: 11pt; font-family: =
Calibri, sans-serif;">
<o:p>&nbsp;</o:p></p>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> a.lapini@ifac.cnr.it =
&lt;a.lapini@ifac.cnr.it&gt;<br>
<b>Sent:</b> Monday, 18 March 2024 15:48<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: RFNOC Python API for timed GPIO</font>
<div>&nbsp;</div>
</div>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"border:0; display:table; width:100%; table-layout:fixed=
; border-collapse:seperate; float:none">
<tbody style=3D"display:block">
<tr>
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpadding=3D"7px =
2px 7px 2px" style=3D"padding:7px 2px 7px 2px; background-color:#A6A6A6">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"width:100%; background-color:#EAE=
AEA; padding:7px 5px 7px 15px; font-family:wf_segoe-ui_normal,Segoe UI,Sego=
e WP,Tahoma,Arial,sans-serif; font-size:12px; font-weight:normal; color:#21=
2121; text-align:left; word-wrap:break-word">
<div>You don't often get email from a.lapini@ifac.cnr.it. <a href=3D"https:=
//aka.ms/LearnAboutSenderIdentification">
Learn why this is important</a></div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#EAEAEA" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"width:75px; backgro=
und-color:#EAEAEA; padding:7px 5px 7px 5px; font-family:wf_segoe-ui_normal,=
Segoe UI,Segoe WP,Tahoma,Arial,sans-serif; font-size:12px; font-weight:norm=
al; color:#212121; text-align:left; word-wrap:break-word">
</td>
</tr>
</tbody>
</table>
<div>
<p>After spending some time, I arrived at the following conclusions (thanks=
 also to Jonathon Pendlum):</p>
<p>a) =93set_command_time()=94 and =93clear_command_time()=94 are available=
 in Python API of UHD 4.6, also for RFNOC interface.</p>
<p>b) The non-intuitive part is that, given the following sequence of comma=
nds:</p>
<p>1) radio_control_block.set_command_time(radio_control_block.get_time_now=
() + 10, 0)</p>
<p>2) COMMAND_A</p>
<p>3) radio_control_block.clear_command_time(0)</p>
<p>4) COMMAND_B</p>
<p>will make COMMAND_A to be executed after 10 seconds and COMMAND_B just a=
fter COMMAND_A. The Radio block (and all RFNoC blocks in general) has only =
one command FIFO. When a timed command is sent, it is put in the block's co=
mmand FIFO and all subsequent commands
 (timed or untimed) will be blocked by that timed command. In this sense, &=
quot;clear_command_time()&quot; has no effect.</p>
<p>I hope this will be useful for other users.</p>
<p><br>
</p>
</div>
</div>
National Instruments Dresden GmbH; Gesch=E4ftsf=FChrer (Managing Directors)=
: John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; Sitz (=
Registered Office): Dresden; HRB (Commercial Register No.): 22081; Register=
gericht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.
</body>
</html>

--_000_DM8PR04MB7848924D60396027ACA3BAD4E6302DM8PR04MB7848namp_--

--===============0093696910473700100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0093696910473700100==--

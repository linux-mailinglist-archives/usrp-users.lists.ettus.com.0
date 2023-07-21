Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF1575D180
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jul 2023 20:48:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A703B38435A
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jul 2023 14:48:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1689965288; bh=Xy6qahO0KLkG/jCfZ67tv8JcO6WYy9l78bGyMPByUmU=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=VLIrQTfLCbE3RRAE4KGlKkGUhnvptk+qHTEqtV4osdGe4tv4iyQmsW7VLv9wG3Zg9
	 f2i+2KPN6ZGZ4J87ZEv6anWmN9szFl20yNHMwAWPCprTEcY4klt7CI1Z9yOkdpS51L
	 m0h0XzURT4Nl9zO5uzehKK/ZAclfu7n+Hn1k6P2C6UNgWufbmLwCvRiFutUqdaidg8
	 NdPWCkzWMbECCXzu824Q0US5kua8pacfZDhgp3ws69P7XzeGmyUWPWboRXJrQ0CKMn
	 FXXnnpT5jfleVIS4wUZY3azbDYjAGJoN7qvCHFiq01IXCo91hyqqo1BroOwBjZLred
	 7GNqlPj4S8NjA==
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2057.outbound.protection.outlook.com [40.107.93.57])
	by mm2.emwd.com (Postfix) with ESMTPS id D3075380F47
	for <usrp-users@lists.ettus.com>; Fri, 21 Jul 2023 14:47:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=NETORG330411.onmicrosoft.com header.i=@NETORG330411.onmicrosoft.com header.b="SUd6RvUP";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EjMrUFTMR3WCH9WPadyCiEe5zzypFy8X45MQd08Ye9HmRkje/GZWKdM2EDz3/KxAuRIKNPX3QbgcDU8WYrdHpf6Q765mQX+gHP0+9LrXut5Lf4ZR53wu/ugZq5K7xqvqoGgs4OSucl/EEhOpn/jYfVylOCMDdjDLIqO7wyJAxADVjS/R1AuXR/9rPu4/6dBG6g2jlgHY4jDntrLD7Wes1k0KnipLFd2nUDxY3JWcNiOcU5XriAX4Y/RaZW++99Ud3czikbGcxUFbpjsTDVBxkLI32GCaNo9kBPWuHayiWKrDoBVLh2RjTjfWFTpKy0yGjZSs7BjO5rWnprQx2h3YmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YrMzQTcIlCZP2tbq0SM/fsS6h1AjiTj4WORn2xSGbNo=;
 b=VDlbv/Vlai1iSIu70OPZ1WE1N8Kb0YinK1IYiegfu5JfF5UrEHPUOmIBsfk79BBq0+EOucz1mdLGiChCLPJgQxLDlrbdvqF4ejRsHuGKCHd+gsLiGxeX/l4Ge+KxuMMIgGeq4G2ErrhrK6JA+eFnVNUuUxynEc9Jwj+jBRcNmtomOOYOOlZh78HoGitbdxUEcf37XwjkjEMTcUm7t4SvNENrIXywFiaWzGKU7Y68+xQEQ/zFCWTTsc1jwctmxMaLQv5iA+MnFa4bWHi2cZMWBGZYjhObd3OhqeEmKp9jT9oNpe+/5kf3W8Qi/Z3z55MxRRWV7FF25wytvukjg2IqoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=iubelttechnologies.com; dmarc=pass action=none
 header.from=iubelttechnologies.com; dkim=pass
 header.d=iubelttechnologies.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=NETORG330411.onmicrosoft.com; s=selector2-NETORG330411-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YrMzQTcIlCZP2tbq0SM/fsS6h1AjiTj4WORn2xSGbNo=;
 b=SUd6RvUPWAfgfNQzLHdOSkDjedeV+P31X5dfNYHlLhmFHTphnm36XCxxrwCWgdQNwOeMRCC1aW/C8WodVghdUHnHL9DHg4B70pW0WZcBtQ7+SdaLxlNeVVcYn36Vgd5mSYl/o/8DjuKzfBto1FZeFZJjjbDL0oH61U23mKrX+Ts=
Received: from DM4PR12MB6302.namprd12.prod.outlook.com (2603:10b6:8:a4::21) by
 MW4PR12MB7261.namprd12.prod.outlook.com (2603:10b6:303:229::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6609.25; Fri, 21 Jul
 2023 18:47:48 +0000
Received: from DM4PR12MB6302.namprd12.prod.outlook.com
 ([fe80::d792:a290:9134:2069]) by DM4PR12MB6302.namprd12.prod.outlook.com
 ([fe80::d792:a290:9134:2069%4]) with mapi id 15.20.6588.031; Fri, 21 Jul 2023
 18:47:48 +0000
From: Mark Koenig <mark.koenig@iubelttechnologies.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Trouble Starting Continuous Rx Stream with X310
Thread-Index: AQHZvAGdiDV5JarqBEGbRLZ8G6KZ3A==
Date: Fri, 21 Jul 2023 18:47:48 +0000
Message-ID: 
 <DM4PR12MB6302F2051F21AD5C55DF3F0A8C3FA@DM4PR12MB6302.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iubelttechnologies.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR12MB6302:EE_|MW4PR12MB7261:EE_
x-ms-office365-filtering-correlation-id: ef52ac30-9c77-4fb5-8d42-08db8a1afab1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 m+a6cZpld2+VVQD+3e2axPIqwDH+WXWAziuGDVo4giRtQFKAUU1kySYwazq3Cberp19sHr2zrUQIP+4sMqVCMvW5c9dpy1T+G9mTway6R74MeqKMgTjd+RzG/6PaFef8eQzFrqOfJr4OW8fuBb2cyRsLEKUNqMid7ZbQ5F8m4Me6lw5VK63mvyB4KxhG0IjER9gFehtvFTIvoRmnZgS32GjVQTkLDNts6FBrACED76Nwc4gGxWmNBT7opbcEruonO5RJcfGZoejznPXh5mpg3gidALWFOMZJRO03obSkueIbgXVxZnOV8FgCeI4vWNFkMS/9yPoYCGPLLrb/evFeuErbXJQ6p6MjAGMaKNf6dNS1zT9UdJPl3811numlZGEZPsb7QsADbEDnpSouTH9CLz24xD70w/fhPelvBfyj17XWgISRRXYELnfFMEv94kKWqrS5LIjic+5P5UuZ3ilYZOqiQxujfgriC555Fv9nRf4ssExEyQT+saAR/QoZNMYs9gcPeOEfw5udzdfk7vw3bay9KUi0v28DvjtRjq0rJnaJKLtFIMiwI/e4k1tZgsfiDkDCN8Zcpb8/mJiYNm8DWT/POtHQmVy0DKFJ4x5WHyro240KMgDHX+ub0aFKqY89
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR12MB6302.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(396003)(366004)(346002)(376002)(136003)(39830400003)(451199021)(55016003)(38100700002)(71200400001)(186003)(26005)(6506007)(6916009)(76116006)(66946007)(66446008)(64756008)(316002)(91956017)(66476007)(8676002)(66556008)(52536014)(41300700001)(7696005)(5660300002)(8936002)(9686003)(4744005)(478600001)(2906002)(33656002)(86362001)(44832011)(38070700005)(19627405001)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?dz8CNw+4e8W8pk0i+KDoNlfKwZYEUXKmghNRkXfOnmzGOyOgv99eVMBtYg?=
 =?iso-8859-1?Q?c954bQTKCdKbONvH45886FpFADpmhOOwFhUe1h4exwNlq2rJcZjpciW48z?=
 =?iso-8859-1?Q?DcP+lLV6e5uWMvJh/YFTa4fVLHgf/c5/qqPe4BB1k2LqDDw5DMcAT+Wc9P?=
 =?iso-8859-1?Q?RL7/0i4pRYj6FxHcWMxPX+NrYol7JlMhJ0wHUfKHDy25L1o1fLS/8GGCSo?=
 =?iso-8859-1?Q?ZoyzlfRu6Rnloa9FigKURatwIiIMVtjXAaZ0Lq4KyOCi/lrc7S5gttH5gf?=
 =?iso-8859-1?Q?h1KLB5noUDHgtjb1XHpgX1c5jDbmL2KnZpYX4C0ZM/HfPCe+W+Xc2KvDlW?=
 =?iso-8859-1?Q?rIZ5Q3dkZv98sQ20sYYb2CX8s87mod649CqAcg9Hxehkx+mrDkECu4G7sI?=
 =?iso-8859-1?Q?+OlfTXkPZzUAdkpBCA0sMgfH+SuQhdJu5U+gfMDyT9BzRyE7Cpd4CjzXFw?=
 =?iso-8859-1?Q?8kxNI21YyUraNkM5GZ6cb5Uv+TTcFQPhrzcGuiLEPg/vMaVIhcpYuvD2s9?=
 =?iso-8859-1?Q?4q0eeW/Ebs7GycLTuvYMq5uaFrVbY+TKIbindTYVoeAvL83GulusmYk3x+?=
 =?iso-8859-1?Q?hp2BR973XU5RwLe+dRYYeujRevbPCbOe+PkY4E3UkIkDPdjMstZz7/gxr3?=
 =?iso-8859-1?Q?DMCzWFuuhoYGyn6Z/h8rRV9iWjNq6hWbKVAleL3PvNawNp319YFSNFVaJf?=
 =?iso-8859-1?Q?v2gIf7cr68O2xB0ZdEI8qfHmvkjZTB0KNDR2wWE9NaPLxIpSIHQkbacprE?=
 =?iso-8859-1?Q?KA5xFT6XNWP5FjmQHn4EVuBlNKbxMrhajF6lgRAh2Yo9+TPute9bNtu7HJ?=
 =?iso-8859-1?Q?7Efv5TKCUcGHrFDVtlRj7RqN9vmOeul7OlREDKq1HMVBW+Oy+BVnQXLprJ?=
 =?iso-8859-1?Q?iORaV2XXUEkEC4vhZyXQ+kbSqnZ9q/XKt9B7NFBHPyiG5ddpA/urc8RnRy?=
 =?iso-8859-1?Q?c3M1+bxlurR30+MdHu8NrkZuriIrX+ScjPBLUttMrYgg/4mQtJk6gbja0T?=
 =?iso-8859-1?Q?3HaTAkdMskwFFnSklj54Shaw82oHwlNqql2jT9kBet0rcf78r/Eh38ESlh?=
 =?iso-8859-1?Q?lO7TTbgWSOGx7RnN44tZYgG8CjUrfwEvywbaha7h5DT+e3kPiODs7C6llb?=
 =?iso-8859-1?Q?akZ9H/jGa8JD2zaqJ+ytnQyTe3HbR59unICB2jH4JAw0t0J+S4HvKa6Yql?=
 =?iso-8859-1?Q?M+dT5FvZBXyFWulCfog5qlMZwZd+PFLuvz18yAoF1Gl+uWpiQbSGJQmVDO?=
 =?iso-8859-1?Q?36+md4GEFRhKZfyX7j56U4U49vFXtTyEaycAtnf8Kq5ayxDnrydfkYyDiG?=
 =?iso-8859-1?Q?PUPKoVsr513Gmd/pMmUQb/ctcIG/zj0qjfHk07QLThqb3LumattHUHaskd?=
 =?iso-8859-1?Q?oho+6zQqlsaPt16VWWzBxnti9aw1D8cjkeTJWHUFgSWF3tcbk+a7BxMImO?=
 =?iso-8859-1?Q?3RI94AcrVNoP4kN0dFYSYW9tIi0UKaqEAJi36kAYccPmpDqSmbTha1Lff6?=
 =?iso-8859-1?Q?UahpTIMtcDgfA3swzfv8IEUssYIHyEZeJUTwkkkNFQR8nG9VV3y03MEjxm?=
 =?iso-8859-1?Q?hE7nmGmcK8weirF+4t+5YFFJmivWIwsVMem+W0m2PeKQXSXNobla6fnImS?=
 =?iso-8859-1?Q?Lha59KOs8/zghJlBClAORru19mK1Gt9XG41NAgoHydfrP8g3DnnqeV1g?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: iubelttechnologies.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB6302.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef52ac30-9c77-4fb5-8d42-08db8a1afab1
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2023 18:47:48.2404
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a86298a-7d59-4320-a7f5-798264e69360
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WObjUz1FIJMGPc9fFEkxAfAnK2u8/wEsPDMYNI25GTfntgntaec2GaEvlK06CD5fe6T6LcyLOZf4nPnlot04QTu0AaltVzx6MpWC97XySh/geklaxVgll+qfbrhOirsn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR12MB7261
Message-ID-Hash: AGRL4IC6XCQA7XF4W7TPR5AGWKVWMJLU
X-Message-ID-Hash: AGRL4IC6XCQA7XF4W7TPR5AGWKVWMJLU
X-MailFrom: mark.koenig@iubelttechnologies.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Trouble Starting Continuous Rx Stream with X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DCLI3O3JSD7JQMFW5YZEOFTA2BOTI4YJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4757151761582643401=="

--===============4757151761582643401==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM4PR12MB6302F2051F21AD5C55DF3F0A8C3FADM4PR12MB6302namp_"

--_000_DM4PR12MB6302F2051F21AD5C55DF3F0A8C3FADM4PR12MB6302namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to start a continuous Rx stream with the X310.  I have it worki=
ng fine for the N210 and B200mini, but for some reason the X310 only sends =
a single shot of samples.  I know this because I am using wireshark to look=
 at the interface.  Below is the code I am using.

Thank you.

Mark

 receiver.send_command(&StreamCommand {
                command_type: StreamCommandType::StartContinuous,
                time: StreamTime::Now,
            })

pub mod uhd_stream_mode_t {
    pub type Type =3D ::std::os::raw::c_uint;
    pub const UHD_STREAM_MODE_START_CONTINUOUS: Type =3D 97;
    pub const UHD_STREAM_MODE_STOP_CONTINUOUS: Type =3D 111;
    pub const UHD_STREAM_MODE_NUM_SAMPS_AND_DONE: Type =3D 100;
    pub const UHD_STREAM_MODE_NUM_SAMPS_AND_MORE: Type =3D 109;
}


--_000_DM4PR12MB6302F2051F21AD5C55DF3F0A8C3FADM4PR12MB6302namp_
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
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Hello,</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I am trying to start a continuous Rx stream with the X310.&nbsp; I have it =
working fine for the N210 and B200mini, but for some reason the X310 only s=
ends a single shot of samples.&nbsp; I know this because I am using wiresha=
rk to look at the interface.&nbsp; Below is the
 code I am using.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Thank you.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Mark</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp;receiver<span style=3D"">.send_command(&amp;StreamCommand {</span>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; command_type: StreamCommandType::StartContinuous,</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; time: StreamTime::Now,</div>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; })<br>
</div>
<div class=3D"elementToProof ContentPasted0" style=3D"font-family: Calibri,=
 Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof ContentPasted0 ContentPasted1" style=3D"font-f=
amily: Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color: rgb(0=
, 0, 0);">
pub mod uhd_stream_mode_t {
<div class=3D"ContentPasted1">&nbsp; &nbsp; pub type Type =3D ::std::os::ra=
w::c_uint;</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; pub const UHD_STREAM_MODE_START=
_CONTINUOUS: Type =3D 97;</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; pub const UHD_STREAM_MODE_STOP_=
CONTINUOUS: Type =3D 111;</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; pub const UHD_STREAM_MODE_NUM_S=
AMPS_AND_DONE: Type =3D 100;</div>
<div class=3D"ContentPasted1">&nbsp; &nbsp; pub const UHD_STREAM_MODE_NUM_S=
AMPS_AND_MORE: Type =3D 109;</div>
}<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</body>
</html>

--_000_DM4PR12MB6302F2051F21AD5C55DF3F0A8C3FADM4PR12MB6302namp_--

--===============4757151761582643401==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4757151761582643401==--

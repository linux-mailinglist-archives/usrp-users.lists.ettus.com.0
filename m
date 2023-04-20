Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F95D6E9765
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 16:42:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AFDC1383FA2
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 10:42:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682001734; bh=KQEKgg82EKpFQCzwppyTAc35TTrtOjp7WMpCDdyHfcM=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=XPyWalpVBaukuQz24Sm+p7q+YY+DpsZcmrnvPW45eTsBtV03bwntakLyPgi1FB62H
	 k1jTZwlUqfwvvIL8m9rLenvF6kQsT1NkWQiIo17kNag0hl6M2UJzo/Z+3Y5dK4wI5x
	 XL0QJ8te3sWTmTPiZ1IfFcwe9gYD7LjN8YLkmquKaoyZuR/OV5bMxZ9HYVaX62hr0E
	 +g9szYYxqb2MiL1JxWk2a+ZGAXDih1xInQji2ptROUxP5F5AFAW67lvjmq0VFbXku9
	 T+NwQejEo4pmECiMPtXESkQO66iIagxyPTiUco3+O0EBYquZpGdVt1YHuvMu2jlj4r
	 6hFRi1vpre1jw==
Received: from pta-smg2.csir.co.za (pta-smg2.csir.co.za [146.64.81.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 89559383FA2
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 10:42:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=csircoza.onmicrosoft.com header.i=@csircoza.onmicrosoft.com header.b="pTPSH5ye";
	dkim-atps=neutral
Received: from pta-smg2.csir.co.za (localhost.localdomain [127.0.0.1])
	by localhost (Email Security Appliance) with SMTP id 748C628EE35B
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 14:42:06 +0000 (GMT)
Received: from ZAF01-CT2-obe.outbound.protection.outlook.com (mail-ct2zaf01lp2173.outbound.protection.outlook.com [104.47.19.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client CN "mail.protection.outlook.com", Issuer "DigiCert Cloud Services CA-1" (verified OK))
	by pta-smg2.csir.co.za (Sophos Email Appliance) with ESMTPS id 161932913518
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 14:42:05 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EU8ohm+S1WVHx+2o6yPZEbGQKVJXdCntbgfvosfRy+FQ+CeE3OFsHd6J5h1VO3tfvqHWzl65w0pbHfHYtf57lt0mKKUVQ6Pufbs1JHDUdEBPVBh10mv2CWDl3uvtaQxrsnaWKVfm9pA0M+wGx78Lw2fK51dksx8qD/d2MaBhmCp87ZIxUdwNZNiGoi0n6Bbd6hhMbQ8Yl1UUV9bH36GyyNgmgcxFAFenZm1NtXf8PLVQvffxrHliwXNn+RnmGMQrT4K+nLuiS6PgUfH7eRBne6nDyzzTb/EeaVSRbmQYZgeUYmrgO3VPuHvdKp8Ub5UN9msvZNRDiq2LZ/zeBEq/bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yhUV1vWNteBBI1WGFmOBSUSLR+RD4yy7uyz3rgg1h/A=;
 b=FpU3cD9tR4SPmDbovQwkOsu71wOJVLKQ98Pu+T0Ymp/q/dpeYZThXVgXNgF62Oj4w3RjzgSdggKxDZPNPu0PcFwp0bnJadHGFuAi9JvhiIRWfgZyPqbmk0oAmZJBmVru1ptH+gYYM2Oc7O73oQLfeDAxnIQnu4SAOHqzutqYz7fnAJwhFyw+KrEDVixQ6zRgSuTALdDVlpFKHpGtQopbdyfVI1vAjZRYFS5k6+Ot+MRgwXBqR8nUWTd9jvNCBvKkRaGic/nXvHpOcjM5OcjYZS9qhWmmBxL7mM9Kxx4SMcNtGLEdTH8IBQXoL9AbXTXBMOFGlN6PnllrNW5pqdw+7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=csir.co.za; dmarc=pass action=none header.from=csir.co.za;
 dkim=pass header.d=csir.co.za; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=csircoza.onmicrosoft.com; s=selector2-csircoza-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yhUV1vWNteBBI1WGFmOBSUSLR+RD4yy7uyz3rgg1h/A=;
 b=pTPSH5yeGhcHNTBW6DaGKd4fb7sNmekuGHLdHoIfWxi3gXIHFm1yjEfln0XnZHzPwsICYB871fcIGt2ombYWGsLU99qsoYH6wVRKPLy4s7GC7tjTS5qItq8SIBtH+PeTpN4x63iJ23VKB8I8OMVC6X9dN/vd/AsfT632zZTVzqY=
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:24::13) by
 JN2P275MB0398.ZAFP275.PROD.OUTLOOK.COM (2603:1086:0:9::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6340.11; Thu, 20 Apr 2023 14:42:02 +0000
Received: from JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::dc42:fa67:2bcf:f1b8]) by JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
 ([fe80::dc42:fa67:2bcf:f1b8%4]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 14:42:02 +0000
From: Leon Wabeke <LWabeke@csir.co.za>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: TwinRX phase synchronisation using different versions of UHD
Thread-Index: AQHZc1l3HiHM3aslT0mdg/sdj9faPQ==
Date: Thu, 20 Apr 2023 14:42:02 +0000
Message-ID: 
 <JN1P275MB053554638C3D2E4F1C0C67BD95639@JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM>
Accept-Language: en-ZA, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=csir.co.za;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: JN1P275MB0535:EE_|JN2P275MB0398:EE_
x-ms-office365-filtering-correlation-id: 535cbec3-b794-486f-81ea-08db41ad678b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 jEa0F22XmWRzWueMUgDXetRdUIxoGitdHBE+pBn8Q7+VK4ty9MGf3RR9XEKcSFn/IUJ+VvpTs9cqulIXatapxntoEcYSxvGX5/3I2yBV9WFtpAbQfbRXK6LGxZrZPn12Lg5ldf9GXaOzyAkFVGkvrX85+5eUhUKTSGvkoAssYIZbALAKzSxIBWidR1QpovpcYpST2ckHULjbzGmR0H+9R1FiyYnYhG+gNQM8xicuaEIaFtiFp/lgsnE+vLqOEcswMt5UZ7uUHf6w/wS1KFbudKaxM/c5goOqKDHF+37TFXECsletdS8SmWLejIhtSqhxBaERL8hKgitVFOVZ4t+NBXaWSccslGuP/kSQ6zx2jWmgOqJFeJ6zBJnbu0IMkN/MCA1wsfOteQKIfJkEnEe1BVk+skuBZNUR8xkCp7dgwiqXqY1i+rewGZPr2q0L+H3ZVctWhIduSmRX7oC1AN4HTOklivwi6XfCvtap/WUSLnO1oS24AS1P0cs/XAnkU2qRG1zl6kL8Nd9RtuBij46DL0Mtxm7g9j2Bz/Pv3CKvwXx9ZyjcmN5nO3CW143vcx+pVLKhZEtiDwRnh6hjEpGvI9E4ZdHfRBuDfrGa2jkr4kw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(136003)(346002)(366004)(396003)(39860400002)(376002)(451199021)(83380400001)(478600001)(55236004)(7696005)(55016003)(26005)(6506007)(9686003)(71200400001)(6916009)(64756008)(316002)(99936003)(186003)(66446008)(66476007)(66556008)(76116006)(66946007)(5660300002)(52536014)(166002)(8936002)(2906002)(8676002)(38100700002)(122000001)(38070700005)(41300700001)(33656002)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?MhEoWwnzkVQEH44xp2LtB6k8JlEiNjw1UezYj6Wwsqjyp1hkWaXCZPIT?=
 =?Windows-1252?Q?B6Sf8ncJ46mJBN7UMPohDhzJhxlnJ5eMQzqxM1CYJEkNSogRbvI/vSyZ?=
 =?Windows-1252?Q?dUWfWpbQuQss0aqxLxGE5uvVi02dO+V46bGADsPPI1P710i55d3r1+Gm?=
 =?Windows-1252?Q?+ppzED0UGInhGCxt0NdDtk4BR/HYTry3mBW7kSjv6jOpL3nFGC1sfr1a?=
 =?Windows-1252?Q?2FZ55pr90LpHxESiZdSMDw7IN6qHZS6jZjSgF8YNX5mj8uESatDnTB3U?=
 =?Windows-1252?Q?QYiheUcdQXwBVmLbbjxOoXJAg9agbCtKUPOADzKoC3pEXHP/c6/qDFKc?=
 =?Windows-1252?Q?+RCEiTQlApLZF4zgfoTA4Ij6PjR9eVIPp+hbpuWALzlO9/66gTOY484m?=
 =?Windows-1252?Q?QbtdJolK60OJrJe9RpCsizq3/bsFm4JsiX53FlNp5ECKvl6iVI6AQhT4?=
 =?Windows-1252?Q?6BGy9BCQ06QTJ3x0Db3esAi7w0iWwDtHhzLOhV8c7ikrNzhFQP+J+dti?=
 =?Windows-1252?Q?uHKc1jYdEdtVl3xnUmYtQWXJEDtkXcNpUTquPvM9LyC7KGcNivw+QlK2?=
 =?Windows-1252?Q?o3OoHphaIHZpriOQgFdGkpVFcwgEWadZGUVaTaSCV3hAByBHCRPxIZla?=
 =?Windows-1252?Q?5OPfk9aHqpx6jD/Xp2WsypyWaF9YvkFX2aOv59SQByH88hNQlDizS4C9?=
 =?Windows-1252?Q?YjeQU0itbORVoRlcBmSOuN92wNCfRFqt2mbRZRHdP7JKxy4epGVmXSs1?=
 =?Windows-1252?Q?smJvzzfgg9tYIvo40m/P97wnS1VoaA8nqyX0epdPQ/batnqiq8Kz6qEJ?=
 =?Windows-1252?Q?bPl8zvKgTOSBwW/hOO/N6QeL1OInPJkHu9qk+wjl0TtPhkq0i86pGoV0?=
 =?Windows-1252?Q?YcwD3+IG2Oj6VaG8OGtlFBsUt2KjxPSRzxcoiiF/rxjd7HD1QEWZf/lN?=
 =?Windows-1252?Q?AI9QmhFwKbu6rU3/BQhqyEh0GLGatC6e3bHtD1hCzvF/tL/7pEgyUt/X?=
 =?Windows-1252?Q?xo2JBcJYIhnDpuwfItghnti1aXc0RZaRszVlZCjiiMZizf6Z1xw3UEWn?=
 =?Windows-1252?Q?4WHvo3KLIobrP+dFKt8+QXxyO+SJB/uXCDgXS1ZyUNQrUOrCIor5z8k2?=
 =?Windows-1252?Q?9jtu2zrGTzY99HD3PboIt77y7lBRx31mDpo+h61imvDn5hf/e+5/IIev?=
 =?Windows-1252?Q?g3wG2YPx2nqffFG7ZfupYmnj04pzqDJUtQLYRgF342kps8ZwpR8UpE7q?=
 =?Windows-1252?Q?jEBpkLQ9NzWrKiQDbIlb1rmcYuj1tF6aiv3aLr086ohiuv7zYB8X6JSU?=
 =?Windows-1252?Q?5MtVr+TQufLzIOfXCrMfUtu5E7YFmgPKBjX+Vwnq+QXF2xFTsFmSInji?=
 =?Windows-1252?Q?f0ZI1TLCLV1czS5UTGgVQV21hvF2/4CQ4nOoKZ7+HYxQUmxA5hRCFyMn?=
 =?Windows-1252?Q?fmNETCWu/BVUSb6rz5Hz3RIp3XTlX/DBn2UZxUZ+Swa4fflAngjmG2Va?=
 =?Windows-1252?Q?7GctLxi3qnVk6zuMjfw3dg85BbAqDIHYYlLtmArSC8/vUatfQ4RMmonn?=
 =?Windows-1252?Q?lgFDOO+a7r45Qr8TQaNc/D/kXPfx3mkv/FHFCVnnPYtCA3yRnIZJ+h6R?=
 =?Windows-1252?Q?KCGNoJry6kS5r0XJN+qLtezoOkYTuaHnJQ+51GZzCYdSzamIy8VmnZP1?=
 =?Windows-1252?Q?1KcOQkhPbTU6JIz4jErkhfXcVfvqDlgvaX+K9NG99lVD+1DmAZe0ug?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/mixed;
	boundary="_004_JN1P275MB053554638C3D2E4F1C0C67BD95639JN1P275MB0535ZAFP_"
MIME-Version: 1.0
X-OriginatorOrg: csir.co.za
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: JN1P275MB0535.ZAFP275.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 535cbec3-b794-486f-81ea-08db41ad678b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 14:42:02.5097
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2fd3c5d5-ddb2-4ed3-9803-f89675928df4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pM/pQfNnr8w8NoSBdjTgBlTvIEjwrajSjuZwNxNJ8VXHD4ozhqfaQuALp0Wc/652Ic2uq0bS1yHtRhtPlWfwvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JN2P275MB0398
X-SASI-RCODE: 200
Message-ID-Hash: 2V5HHQ2OLCBRXP3C2ZL7SIB5I5ZUMFC3
X-Message-ID-Hash: 2V5HHQ2OLCBRXP3C2ZL7SIB5I5ZUMFC3
X-MailFrom: LWabeke@csir.co.za
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] TwinRX phase synchronisation using different versions of UHD
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O26VEXHLOW5KEKTX5WKXEYOLZYRIRS3P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--_004_JN1P275MB053554638C3D2E4F1C0C67BD95639JN1P275MB0535ZAFP_
Content-Type: multipart/alternative;
	boundary="_000_JN1P275MB053554638C3D2E4F1C0C67BD95639JN1P275MB0535ZAFP_"

--_000_JN1P275MB053554638C3D2E4F1C0C67BD95639JN1P275MB0535ZAFP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I am using code utilizing the UHD library to capture samples from a X310 wi=
th 2 TwinRX daughterboards. The sample rate is set to 25MSps. This is to ch=
aracterize the system to ultimately use it in for phase interferometry dire=
ction finding similar to AN-244 (https://kb.ettus.com/Direction_Finding_wit=
h_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2). (I tried installing that=
, but still some compiling issues to try to resolve)

As a test setup, I am using another X310 with UBX to generate a test signal=
, passing through a 4 way splitter to the 4 channels of the TwinRX. In soft=
ware I correlate with the transmitted signal and extract the phase of the p=
eak. I then plot it relative to ch0=92s phase. Theory says that if I do it =
for different frequencies, the slope of the phase over frequency correspond=
s to path length differences of the cables (and the splitter/receiver respo=
nse).

Using an application developed a few years ago using UHD v3.13.0.0 directly=
 (and UHD v3.15.0.0), I am able to successfully capture data. The process i=
s script driven, launch the custom app to initialize the SDR on a specific =
frequency and capture data to a file. Then close and quit the app and repea=
t this over 60 frequencies.
The application also supported a mode where instead of quitting completely,=
 it could stop streaming, change frequency and start capturing again. I onl=
y tested this mode using UHD-3.13, however in that case, I saw that after t=
he frequency change, there was a random multiple of 90 degrees phase offset=
 present on some of the channels. This implies there was some nuance in the=
 process of stopping, changing frequency and restarting streaming that was =
different from my process of initializing (during which a frequency is sele=
cted). Testing seemed to indicate that if I stopped and restarted on the sa=
me frequency, these phase jumps did not occur.
When I tried upgrading to UHD v4.2.0.0 or UHD v4.4.0.0, I found that this r=
andom frequency offset was also present if I captured just using the initia=
lize process.
The attached figure shows the phase in the frequency range 5.25GHz, with th=
e solid lines from the capturing using UHD 3.13 while the dots are from the=
 capture using UHD 4.4. The change in the lines between 5.21-53GHz and 5.51=
-5.6GHz I assume is due to changes in internal mixing strategy chosen by th=
e expert mode tuner to avoid mixing products? While that is not nice, it at=
least is repeatable while the offsets in the dots are random multiples of 9=
0.
I assume that the 90 degrees originate either from mixing up I and Q somewh=
ere in the data stream or what I suspect has to do with the decimation proc=
ess to reduce the sample rate down to 25MSps. Years ago I worked with anoth=
er sampler, where the clocks were not constrained properly and it also exhi=
bited this behaviour due to clocks locking on one of 4 clock edges.
Any ideas where I can further dig to locate the problem? For the 3.13 the f=
act that it seemed consistent on initialization, while being problematic on=
 freq change hinted I need to carefully study the sequence of events during=
 those activities, but the fact that the initialization sequence no longer =
gives consistent results in >=3D4.2, makes me wonder that even if I chase t=
hat difference, it might only be of historic value. Can someone confirm tha=
t they have either seen this 90 degree random phase and/or that they are ge=
tting consistent phases (under what conditions?)
Thanks
Leon



--_000_JN1P275MB053554638C3D2E4F1C0C67BD95639JN1P275MB0535ZAFP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-ZA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using code utilizing the U=
HD library to capture samples from a X310 with 2 TwinRX daughterboards. The=
 sample rate is set to 25MSps. This is to characterize the system to ultima=
tely use it in for phase interferometry
 direction finding similar to AN-244 (<a href=3D"https://kb.ettus.com/Direc=
tion_Finding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2%84%A2">https://k=
b.ettus.com/Direction_Finding_with_the_USRP%E2%84%A2_X-Series_and_TwinRX%E2=
%84%A2</a>). (I tried installing that,
 but still some compiling issues to try to resolve)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">As a test setup, I am using ano=
ther X310 with UBX to generate a test signal, passing through a 4 way split=
ter to the 4 channels of the TwinRX. In software I correlate with the trans=
mitted signal and extract the phase
 of the peak. I then plot it relative to ch0=92s phase. Theory says that if=
 I do it for different frequencies, the slope of the phase over frequency c=
orresponds to path length differences of the cables (and the splitter/recei=
ver response).
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Using an application developed =
a few years ago using UHD v3.13.0.0 directly (and UHD v3.15.0.0), I am able=
 to successfully capture data. The process is script driven, launch the cus=
tom app to initialize the SDR on a specific
 frequency and capture data to a file. Then close and quit the app and repe=
at this over 60 frequencies.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The application also supported =
a mode where instead of quitting completely, it could stop streaming, chang=
e frequency and start capturing again. I only tested this mode using UHD-3.=
13, however in that case, I saw that
 after the frequency change, there was a random multiple of 90 degrees phas=
e offset present on some of the channels. This implies there was some nuanc=
e in the process of stopping, changing frequency and restarting streaming t=
hat was different from my process
 of initializing (during which a frequency is selected). Testing seemed to =
indicate that if I stopped and restarted on the same frequency, these phase=
 jumps did not occur.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">When I tried upgrading to UHD v=
4.2.0.0 or UHD v4.4.0.0, I found that this random frequency offset was also=
 present if I captured just using the initialize process.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The attached figure shows the p=
hase in the frequency range 5.25GHz, with the solid lines from the capturin=
g using UHD 3.13 while the dots are from the capture using UHD 4.4. The cha=
nge in the lines between 5.21-53GHz
 and 5.51-5.6GHz I assume is due to changes in internal mixing strategy cho=
sen by the expert mode tuner to avoid mixing products? While that is not ni=
ce, it atleast is repeatable while the offsets in the dots are random multi=
ples of 90.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I assume that the 90 degrees or=
iginate either from mixing up I and Q somewhere in the data stream or what =
I suspect has to do with the decimation process to reduce the sample rate d=
own to 25MSps. Years ago I worked with
 another sampler, where the clocks were not constrained properly and it als=
o exhibited this behaviour due to clocks locking on one of 4 clock edges.<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Any ideas where I can further d=
ig to locate the problem? For the 3.13 the fact that it seemed consistent o=
n initialization, while being problematic on freq change hinted I need to c=
arefully study the sequence of events
 during those activities, but the fact that the initialization sequence no =
longer gives consistent results in &gt;=3D4.2, makes me wonder that even if=
 I chase that difference, it might only be of historic value. Can someone c=
onfirm that they have either seen this
 90 degree random phase and/or that they are getting consistent phases (und=
er what conditions?)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Leon &nbsp;<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p></o:p></span></p>
</div>
</body>
</html>

--_000_JN1P275MB053554638C3D2E4F1C0C67BD95639JN1P275MB0535ZAFP_--

--_004_JN1P275MB053554638C3D2E4F1C0C67BD95639JN1P275MB0535ZAFP_
Content-Type: image/png; name="phaseResp_UHD3.13_vsUHD4.4.png"
Content-Description: phaseResp_UHD3.13_vsUHD4.4.png
Content-Disposition: attachment; filename="phaseResp_UHD3.13_vsUHD4.4.png";
	size=74974; creation-date="Thu, 20 Apr 2023 14:11:12 GMT";
	modification-date="Thu, 20 Apr 2023 14:11:12 GMT"
Content-Transfer-Encoding: base64

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
0viHYUh2v6FsPfeYlNQ3ezbxsuWBp9V0WryFyWeakU133ox0o3beejW+dh7NuAnW7kAcbuOkVlOY
3hN1VWt8/a3o+yGU4lJkXzMNgED3kamY+fFotLB+DVlShkSU28ZCgr5JSA0MoVSh0Y3EeQJzbCTq
qWcjrTXNcxLSqzbJPTUYBhkqMvAMSSXHWpvm0VzVEtl889U+B0p959Uv9fI866NCLPDAO8yiGkXS
+hUXqlhhm0KibodQivMR/c3IvJrZ/keiBe4O8pRM7ZPoJ81YeHxKYAilfB7tL6IAck+OlZl6Ski0
qZJS/CvtWj9XM44h6QrN1STu/OPH1a3yZGxwsubtu/86MIRS3w2fVD/PEw8iwAIPvkcl1jTNoHnO
M7b1fOTNEEpx8c1Ac0o/VY1QzPU5HCVwqyZPzTHVS8pobY69jPkQGEIpn0qbiyl9R8hKop4UEi2S
BShexfbyyb1vEDiSKlcHhlDkO6mdCAXIvQqqWHIbr7/6swqlvh8+2Te3KwQBlocGHk5ChWKWYxG9
/5oq1viOyxFXQyjlxdeDLGh9AyQUQ6/DUfzatop0mfZpQ4uNBRYa/T4whFI+krYSk/pf01qifvv2
bYMGDXRb5PJ8UkmbmJh8qbKKjrL2CG1sbHTj1yzLZmdn29rafmnnunXrxnwiMjJSnB8WFtYZ2blX
e2Qc1aWpV0ww78rPXgnJeUosJSTzro302tPawrG27ah2TNvnO102Tm9xc+PvnSkPZ7uYYN6bifUz
Umj9oeKYRP72Af4xwbyxHf0j4nP/AzQkJ0KxuKFWcT9XIxggqdw2EfHsr0FNYoJ56/s3kSbmmmGO
g6w0KmqiR0wwr6atRZaMBfj4dBkRR3Vv7h0TzLs4wutdcu4VCACJycTNUV4xwbwOjdyj43NDOVIz
mXoOtjHBvPCJXumfaf7A3znQLyaYN7J948i4XM0qDWfG48UONosfbY9qOEpvuj4ynpvapWlMMG91
36bR73P/NVkWZOmUdKJ7TDDP2do8W57bW0Qs1SugQUww7+ww7/ikPOVSPyTjd0d7xQTz2vi4Rb/L
1ZyUznjVqBYTzHs5wSs9mc2jOUmwd2CjmGDeiPaNI+Nzf02VmrMU8GN/EseNdeKUjL7mqHfczO5N
Y4J5y/s0jX6f+2/MsKDIpGIm1o0J5jlYSmSKXM1vY+m+LXxignn/DPWOT86jOSkZXd+rbks7pqV3
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
jtoT5bqF4wAAAABJRU5ErkJggg==

--_004_JN1P275MB053554638C3D2E4F1C0C67BD95639JN1P275MB0535ZAFP_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_004_JN1P275MB053554638C3D2E4F1C0C67BD95639JN1P275MB0535ZAFP_--

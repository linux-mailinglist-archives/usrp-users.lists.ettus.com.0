Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA842B51D1E
	for <lists+usrp-users@lfdr.de>; Wed, 10 Sep 2025 18:10:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 780DF386157
	for <lists+usrp-users@lfdr.de>; Wed, 10 Sep 2025 12:10:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1757520638; bh=MSMC6DFUYhSJCJJ8Xvdg1hXpb+6qzomVPM8tvm2HFtE=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=fre1f5gUKAAQTY1XKKJhsFmovllYLNM49ddY/SyGLnDXbi1zmMEIQ/pgItOxTxEqR
	 8AVt4zOqyYvkFFWBNiEXHgUYpDXY5EyX2FF1auilVgA5id8VV/lxSY/fVAOSivBi9F
	 PUPD6MUJicUvBIuQG/DwtNfXAHfn/224f7WEY289pT6pEnO0VvruxF4VUHw91Fp9wL
	 78BS7xIPJ7Hn4DLgkf6IfEU559yncdQTuY/+KWNogUgHG7th6ditHRY/w/UtiHsqWu
	 nuaBV6GHUd406o0aekJuqzSD/6jmpJG2WpFPJv5baxbty7tVQLK+laODAPejsgCUPe
	 vtG+aoYrBRpmw==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0048.outbound.protection.office365.us [23.103.209.48])
	by mm2.emwd.com (Postfix) with ESMTPS id E8FCA3844C6
	for <usrp-users@lists.ettus.com>; Wed, 10 Sep 2025 12:10:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="GrLd00vh";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=IRlrwshepLo8Ex3zARgSw8iQIYr38M5afs/ogBpyexgO8x0tBXwwCSDYZLth3KfHjLwt7sdv3aavY07IMXdcDGzySiEOVFEH+oZXme1wv29OABIDbD7/ltSTN2EV1yIHJePC8vBQka5QQd2pNPeC38sGlfKF70eBHzTda1eWT7KVvh8wKdfhiRI1pvZVM0Yhj3Elb6OnrAkYqhn8MGarnCRIeJ4rl9+xX1IXfvvTidE2vraiHMHaB+TNQXX/5MBf7cXYF8YCbsC4GVoG13t0FohBFs+eAuSfAR6jRVcXp14R3kc3J7lRtzhgGZZe0g9P7w+tITS7VHXVH8DqTjcgYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/PzZm/TNiixZg+JhyeWOdpuppDhzMw6HswUtynqd3wI=;
 b=snDQ0TLWRVrvwpxmDXq9LtZFyElZicadtOxpUxhJaGGAEI+b/Yt/3JlcYl6gW4m0GiQKVMQMFjXPJEmkC4qeadk7dj+YHwdcr8CSMQr37iNwcm9HeKvbBntZDApGnSygZ9OmJwZn7XsZKLz1d2PH1yC9yUkfSyrKck/cDEWh9S8kKxsV+z/GhdJCmrjpiYaGsj4iMsh8/QSHWvxUl6FxfT0z/NWEzcs2NSP+ajoq44mcSIAp5quYxtdllZEY9kb4CHyuQHM23MmhNRjMfCf31CT3eqwtFDiKfomMCP5/wo2Eyx0qnO9Pzjgj98f6aAVq55KXiIVWbQ70eS0NIdQVtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/PzZm/TNiixZg+JhyeWOdpuppDhzMw6HswUtynqd3wI=;
 b=GrLd00vhofNU+QWAzUR22JxgVuWx98LiUjpCWOGjaSGGwYHil8U5JGjEOx8ozDKaQgwnBM9mHODHEdp/KVSdl6BB/yRKr/0OyyA5Y9RSs+tIbx7WPWebzHzG+CyArx5seCu/PNSukbV5uuV6x4vFYNRsRkJi3c1lXf+mukYxdDnFyWZpCD4+yR5u9KYvtT42FxqbS5RvZuoiYJnO91QM97oUvp3vLZ/oRtYycNOoVYg495/3J0qPDcdiGwNXjtJtH3AIQA5gh0UIxBP5cZ8HWkbP+03piUtIEOKibjcnf2njvTEGr37hMHUpZRDnDbQkQQH/SgDDjlFJHZB62GM0bQ==
Received: from SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:198::9)
 by PH1P110MB1634.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:188::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 16:10:17 +0000
Received: from SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM
 ([fe80::6905:cffb:f7d5:9517]) by SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM
 ([fe80::6905:cffb:f7d5:9517%3]) with mapi id 15.20.9094.021; Wed, 10 Sep 2025
 16:10:17 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: USRP E320 sporadically not autobooting
Thread-Index: AdwiaQuxQ3qqaTMBQMepEorMlVJlhg==
Date: Wed, 10 Sep 2025 16:10:17 +0000
Message-ID: 
 <SA1P110MB1932C6DBAB53659AE7EA51B3B70EA@SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1P110MB1932:EE_|PH1P110MB1634:EE_
x-ms-office365-filtering-correlation-id: c88119c7-30e4-41bd-1fa2-08ddf0848889
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|1800799024|366016|10070799003|38070700021|8096899003;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?D72nLdf2NsHFsGStyr4PEPKU8gFxPde8d0d+mSKXtT8Q4xBkagH23NVArWgw?=
 =?us-ascii?Q?m1vR1IhdkluSvoZluq+KiNMW+BU0sK89wQfPECMzJrpKq0K/LTMv5B9MDFf1?=
 =?us-ascii?Q?YaWXBE5rJVoW6csfrKR+Wzw3sxVM2AGEJuym6rajFtYXFNNpGfo1/S8hPX7x?=
 =?us-ascii?Q?WrgoO6o3fpVdntySEZY04bE7P8F/iwRKpjYoj3fR6NNRkTzzfUXehwU92vSJ?=
 =?us-ascii?Q?7VoIWbCfUm6XM6PXoEP35IpxsQoMWd90sJsuf3zpNMW+4TENvD9hSMWD3BDO?=
 =?us-ascii?Q?8Uogl0oP+3Xu0CdokqyKgL57aA0LMYc2xzmTIJNFHvHqlwUt7oIKfzT+O/Es?=
 =?us-ascii?Q?JS4U3hgAksAjhV3usebp9ik3NN3dnnmeKJTD/RW3BKMbogS/sLVOWvT0g15X?=
 =?us-ascii?Q?fZGXD1Kfsoj7wDjPHN7/QD6og0l88DNV/YhVaEvr7Zyu3SzNIxdQqyRw1PNI?=
 =?us-ascii?Q?mAHprCsEn/6TWaA38k/2cYSUsXTawoIOK6vFFChq/oY78+lsFJX9flrBeDI+?=
 =?us-ascii?Q?TwZ1wcCdGnQ2Mf5YdyMiT2F4SMEKzrS+XRrUegNaDkB/OJx3mRpelspgcsCs?=
 =?us-ascii?Q?bJJoWBPFjZ3lnzoITko+YeY3rl8n3bG/l4uyoako3WW0WV4EOh1LI7ITdBi4?=
 =?us-ascii?Q?6WTBxmqAWD2qtCpJlQYR6BcH/aejcfOb/TaqouFfYDEdyQjd4HHdyM9EHJag?=
 =?us-ascii?Q?CQO1pY86bXAWTPZLJrGPLdgMZ4Mk1oWS7LOOM88SHzmglXdSqW9rg+ga2juD?=
 =?us-ascii?Q?5c/U+PPMSPauTNtYbYKuT/H4BzLMLFsBm2D6KYNDJI70BDDiMMgWl3oTJzgg?=
 =?us-ascii?Q?QX83t+OBn8g7AQN2QFdA7liKH+Res3L3Bk0ouSSyt1xR+FPrq3SfAxZtqVuT?=
 =?us-ascii?Q?Xw5Qge10UHO1QGR9mriilP6u47lT6j+szGZapMp6fRn3eVCX/dGh0qMU2MlS?=
 =?us-ascii?Q?2IKx0hioVjJarWjTXmxtDAliWW4ZDkev4dAO2DP5l2xJO5AgD14I+RrXOwmS?=
 =?us-ascii?Q?nQvnw7SB6xqAOE6yQbNBI4jekX9YcK8eRsEd+04OeW/t+IYIlMFuy1I5a326?=
 =?us-ascii?Q?IBCCo9pq1Hr1rxYQW7gxtz6pnIYeP1ErVtxtiQ37UWg4OcuQZyBGYsb7A9tR?=
 =?us-ascii?Q?0i85uegRLmRGimXMt7nH39j7rHLlx5XwdqwA5rr4r9BdWMtRZavaFhrfiBa4?=
 =?us-ascii?Q?Au2wErVrP2NtSGTEHpT6ZRlD3MuD5H+kM1aaWeFc+Rx/RdC76kyhSEeiBt5Q?=
 =?us-ascii?Q?936H8WcukuWLqIt+EiryNbqAQB8Le5tLoFR6BBc2PGCvtmi7rFEpN5ypgesd?=
 =?us-ascii?Q?dmyLsda+20wAvYbw7pQSEPoTz+sUHJvSrv3u895pmtA/Y9HqE6CcDGhcsZCu?=
 =?us-ascii?Q?asiS9CRmMvK0RO/pBJUO6ThI7z4Zt2dxX64HRCl+cdvk79tLJKchLjnL2Ou6?=
 =?us-ascii?Q?4dFjt8GevZFSBi7QfhgY8D/D20GMPwjHCJdy6kSp6EZvsQWw7tFZLqCSWFaO?=
 =?us-ascii?Q?+zUkldMcZNR0tEo=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(1800799024)(366016)(10070799003)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?jhBkIcke19NfoiVUab4ugGwNdbZQxQD8GfO+H5SN67w2UfurtyIdo7c7t3Pp?=
 =?us-ascii?Q?ifMAt28bSvss15oneNdiE3o9kerbUEzYho8DTCsv+bHvhcV8sQ3XwxmC5JjQ?=
 =?us-ascii?Q?0SAtngXTk07aML+EXTzXH07Ci2rw3C8vfQ9dtZb1KLu1iNQdFvaAztUnZ036?=
 =?us-ascii?Q?FSHtmlkZRSKmyKnPFxKwtLp2ZYLcDGH/aFArBUEkgJpPjBgrEQK6P/6BvYSS?=
 =?us-ascii?Q?JADkiaRKb9zViDCxyexUVLrA3PGLYykqY9sp5A2AzmP+QpmzJzUXBwni6fE+?=
 =?us-ascii?Q?n3Gyuz9FIwCwy8nu81l7ovZAGlnAtX4WrTzltEw8FdG3N10TcOtsyFCqm3I4?=
 =?us-ascii?Q?HqTQYrBPicZgtds1ldAU0yEaGyHhstGzA3q6vormcA6BQTTvV6mP6U3yXgN4?=
 =?us-ascii?Q?wJiMYrgnohLj1NMslQbtVfVtaHyFHyTje6KWxZapa0317te5OxM5TDqC+l7a?=
 =?us-ascii?Q?ipETrYzy9DfoHuZ1GvnzuuPAP9hlHu4Jh8r0QFUdbDDue1u2wiucdrrtqz6w?=
 =?us-ascii?Q?4PfqLY4PJCE/dKHb7O1zrodyqrL45WSAGHVB29r1NroDleUkSVd0/sg76cR+?=
 =?us-ascii?Q?/SHgrjV+8C+0UBPPlsvXfnT1KSjGAm1v4SYBQU2RwWyNlyvnrctt55BSa9sN?=
 =?us-ascii?Q?gFPjG3s6oVbA2aT4UKdmnzw8lbha3R4DFLdcblbjZgWmU8Vc1uwjRTmoqAvc?=
 =?us-ascii?Q?Xj+UJuXMlOD/laP9halLXPQkcJSABJQmnvBcjNH5MF/kJAsFMNICTEsGfPCj?=
 =?us-ascii?Q?TT/adVRmo9HwNwBYVCTI+Aq5N85XYtRg1ChRrhvres36uFDXGtmM9GIbJ3Si?=
 =?us-ascii?Q?LxB+W46BkuQLPnZFV8QoI4b58m3TFcC0OuBrup9OUP0IlrqmG+lUP05qLpJ4?=
 =?us-ascii?Q?mqmi3V38HqpQuv3TBpwhisP5EG1vRFu9ZN9UkPZ4uNMkYJPX/pxb1Ot7pgLm?=
 =?us-ascii?Q?ATjn1FhBNoWFsytIJc6YwqZztys27C8vrLA95x9PNOoGKIco4HyoxvscjjBm?=
 =?us-ascii?Q?34K1t0dKhG2wX+turMkh/UeRt6YViw38mzIFDlGSCpUgUkXqF8XDAxlX5kee?=
 =?us-ascii?Q?Ps5jjqmTov8oZeiw8uAtzAtwFmzrcp3wd6gZUTyGL7l7G7ffty+SCVUgMzUA?=
 =?us-ascii?Q?YsXCRfRIOWZca4PfDe4OE8BIOIe1FzQ9gYvatgzeA4X/94wxlZ98v5N0ndIm?=
 =?us-ascii?Q?+D4uQw2WdLeKMaR+aL+iJvcbXU7l6d7+Pd0JYo1r9EXdkD61BjVsVGnawYc3?=
 =?us-ascii?Q?paVmGop7/yqx2/sFiacsu3va4dYfgD9Kpa7WB/r+VTVnDnsnsYntwoVc2tov?=
 =?us-ascii?Q?eFYSsB+sBVavpWY09PUfEhpqGG6ztI4GSdaRtVl8nVQU+8HHfe+Fd3mVYOoI?=
 =?us-ascii?Q?8Dr+JG3uf4VlnFkGOGT0eKiecl56QA+d0oV5o7EK5TbPm0IiAk9cdLczD91U?=
 =?us-ascii?Q?oFZN26JCnuB7/H0fLOUz+rdiKapcxPaTJi9BdDmeh+KzBp+QLv0bOjEZ/+mQ?=
 =?us-ascii?Q?F5nYj07eKWB3ptjm90vWXtIjbJl5HsKDcIDdp8S38jmqu5/r4H95h9KMqP0A?=
 =?us-ascii?Q?pASylN99C4Fa1aTzG7gxUWy3P1ZJEU2gWZ/6NROJVVGhqSogPu3tRDgfWRvE?=
 =?us-ascii?Q?Tw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1P110MB1932.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c88119c7-30e4-41bd-1fa2-08ddf0848889
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2025 16:10:17.3446
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1634
Message-ID-Hash: HT3KZNKRQPH4J6E5EO2HECOTQ5J2BZKF
X-Message-ID-Hash: HT3KZNKRQPH4J6E5EO2HECOTQ5J2BZKF
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRP E320 sporadically not autobooting
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WJQ2KGIJKJYHMZKUR4POY3L6QPQ2WJ54/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: David Raeman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Raeman <david@SynopticEngineering.com>
Content-Type: multipart/mixed; boundary="===============3372052971328009700=="

--===============3372052971328009700==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1P110MB1932C6DBAB53659AE7EA51B3B70EASA1P110MB1932NAMP_"

--_000_SA1P110MB1932C6DBAB53659AE7EA51B3B70EASA1P110MB1932NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I sometimes use USRP E320 radios in unattended collection systems with the =
autoboot feature enabled. I'm aware that the shipped firmware did not origi=
nally support the autoboot flag, and these radios have updated firmware fla=
shed in early 2024 (RO and RW are both neon_v1.1.7358-a190641).

What I notice is that autoboot almost always works, but on rare occasion it=
 fails to boot when power is applied. Anecdotally, the failure seems much m=
ore likely if the E320 hasn't been powered in a long time (months). It's al=
most always fine if I've used the radio in the past few days. Recently I wa=
s able to catch it occur while monitoring the STM32 console:

--- UART initialized after reboot ---
[Reset cause: reset-pin power-on]
[Image: RO, neon_v1.1.7358-a190641 2019-10-11 15:41:40 @b6fa67df8407]
[0.000359 Inits done]
[0.034868 SW 0x03]
Enclosure version ... using alternative thermal parameters
Console is enabled; type HELP for help.
> [0.045631 power state 4 =3D G3->S5, in 0x0000]
[0.045802 power state 1 =3D S5, in 0x0000]
[0.045942 power state 5 =3D S5->S3, in 0x0000]
[0.046128 event set 0x00002000]
[0.046246 hostcmd init 0x2000]
[0.060178 power state 2 =3D S3, in 0x0002]
[0.074411 power state 6 =3D S3->S0, in 0x01fe]
[0.311983 power button released]
[0.312175 SW 0x01]
[1.074642 AP didn't come up, shutdown]
[1.074810 power state 7 =3D S0->S3, in 0x01fe]
[1.090703 Watchdog timeout, ignored]
[1.106994 power state 2 =3D S3, in 0x0002]
[1.107180 power state 8 =3D S3->S5, in 0x0002]
[1.107397 power state 1 =3D S5, in 0x0000]
[1.107548 power state 9 =3D S5->G3, in 0x0000]
[1.107709 power state 0 =3D G3, in 0x0000]

There is no further output. The "sysinfo" command shows that the STM32 is s=
till running the RO firmware and hasn't jumped. From here, if I run "powerb=
tn 1000" or press the physical button, it will fail again. Then if I do it =
a second time, it always works - the Zynq comes up and everything is good:

> powerbtn 1000
Simulating 1000 ms power button press.
[549.731435 power button pressed]
[549.731588 power button is pressed]
[549.731755 power state 4 =3D G3->S5, in 0x0000]
[549.731947 power state 1 =3D S5, in 0x0000]
[549.732131 power state 5 =3D S5->S3, in 0x0000]
[549.732434 SW 0x03]
[549.732565 event set 0x00000004]
[549.746562 power state 2 =3D S3, in 0x0002]
[549.760907 power state 6 =3D S3->S0, in 0x01fe]
Simulating power button release.
> [550.731581 power button released]
[550.731780 SW 0x01]
[550.761149 AP didn't come up, shutdown]
[550.761350 power state 7 =3D S0->S3, in 0x01fe]
[550.777265 Watchdog timeout, ignored]
[550.793740 power state 2 =3D S3, in 0x0002]
[550.793958 power state 8 =3D S3->S5, in 0x0002]
[550.794208 power state 1 =3D S5, in 0x0000]
[550.794392 power state 9 =3D S5->G3, in 0x0000]
[550.794585 power state 0 =3D G3, in 0x0000]

> powerbtn 1000
Simulating 1000 ms power button press.
[644.821458 power button pressed]
[644.821612 power button is pressed]
[644.821779 power state 4 =3D G3->S5, in 0x0000]
[644.821972 power state 1 =3D S5, in 0x0000]
[644.822156 power state 5 =3D S5->S3, in 0x0000]
[644.822459 SW 0x03]
[644.836578 power state 2 =3D S3, in 0x0002]
[644.850931 power state 6 =3D S3->S0, in 0x01fe]
Simulating power button release.
> [645.821604 power button released]
[645.821804 SW 0x01]
[645.845928 power state 3 =3D S0, in 0x01ff]
[645.846349 HC 0x01]
[645.847056 HC 0x02]
[645.849352 HC 0x9e]
+++(++)[649.114626 HC 0x02]
[649.116925 HC 0x16]
[649.117941 HC 0x11]
+++(++)[650.450201 HC 0xd2]
[650.450414 Executing host reboot command 2]
[650.450709 Jumping to image RW]
[650.459254 UART initialized after sysjump]
[Image: RW, neon_v1.1.7358-a190641b3 2019-10-11 15:41:40 a@xaphan]
...

I'd like to rely on the autoboot feature without console intervention, and =
at some point I'll probably trace through the STM32 logic, but I'm hoping t=
he knowledgeable folks at NI/Ettus might have a quicker solution..

Thank you,
David Raeman


--_000_SA1P110MB1932C6DBAB53659AE7EA51B3B70EASA1P110MB1932NAMP_
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
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hello,<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I sometimes use USR=
P E320 radios in unattended collection systems with the autoboot feature en=
abled. I&#8217;m aware that the shipped firmware did not originally support=
 the autoboot flag, and these radios have
 updated firmware flashed in early 2024 (RO and RW are both neon_v1.1.7358-=
a190641).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">What I notice is th=
at autoboot almost always works, but on rare occasion it fails to boot when=
 power is applied. Anecdotally, the failure seems much more likely if the E=
320 hasn&#8217;t been powered in a long time
 (months). It&#8217;s almost always fine if I&#8217;ve used the radio in th=
e past few days. Recently I was able to catch it occur while monitoring the=
 STM32 console:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">--- UART initialized after rebo=
ot ---<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[Reset cause: reset-pin power-o=
n]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[Image: RO, neon_v1.1.7358-a190=
641 2019-10-11 15:41:40 @b6fa67df8407]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[0.000359 Inits done]<o:p></o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[0.034868 SW 0x03]<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">Enclosure version ... using alt=
ernative thermal parameters<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">Console is enabled; type HELP f=
or help.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">&gt; [0.045631 power state 4 =
=3D G3-&gt;S5, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[0.045802 power state 1 =3D S5,=
 in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[0.045942 power state 5 =3D S5-=
&gt;S3, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[0.046128 event set 0x00002000]=
<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[0.046246 hostcmd init 0x2000]<=
o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[0.060178 power state 2 =3D S3,=
 in 0x0002]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[0.074411 power state 6 =3D S3-=
&gt;S0, in 0x01fe]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[0.311983 power button released=
]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[0.312175 SW 0x01]<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[1.074642 AP didn't come up, sh=
utdown]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[1.074810 power state 7 =3D S0-=
&gt;S3, in 0x01fe]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[1.090703 Watchdog timeout, ign=
ored]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[1.106994 power state 2 =3D S3,=
 in 0x0002]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[1.107180 power state 8 =3D S3-=
&gt;S5, in 0x0002]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[1.107397 power state 1 =3D S5,=
 in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[1.107548 power state 9 =3D S5-=
&gt;G3, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[1.107709 power state 0 =3D G3,=
 in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">There is no further=
 output. The &#8220;sysinfo&#8221; command shows that the STM32 is still ru=
nning the RO firmware and hasn&#8217;t jumped. From here, if I run &#8220;p=
owerbtn 1000&#8221; or press the physical button, it will fail again.
 Then if I do it a second time, it always works - the Zynq comes up and eve=
rything is good:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">&gt; powerbtn 1000<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">Simulating 1000 ms power button=
 press.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[549.731435 power button presse=
d]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[549.731588 power button is pre=
ssed]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[549.731755 power state 4 =3D G=
3-&gt;S5, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[549.731947 power state 1 =3D S=
5, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[549.732131 power state 5 =3D S=
5-&gt;S3, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[549.732434 SW 0x03]<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[549.732565 event set 0x0000000=
4]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[549.746562 power state 2 =3D S=
3, in 0x0002]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[549.760907 power state 6 =3D S=
3-&gt;S0, in 0x01fe]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">Simulating power button release=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">&gt; [550.731581 power button r=
eleased]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[550.731780 SW 0x01]<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[550.761149 AP didn't come up, =
shutdown]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[550.761350 power state 7 =3D S=
0-&gt;S3, in 0x01fe]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[550.777265 Watchdog timeout, i=
gnored]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[550.793740 power state 2 =3D S=
3, in 0x0002]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[550.793958 power state 8 =3D S=
3-&gt;S5, in 0x0002]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[550.794208 power state 1 =3D S=
5, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[550.794392 power state 9 =3D S=
5-&gt;G3, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[550.794585 power state 0 =3D G=
3, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">&gt; powerbtn 1000<o:p></o:p></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">Simulating 1000 ms power button=
 press.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[644.821458 power button presse=
d]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[644.821612 power button is pre=
ssed]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[644.821779 power state 4 =3D G=
3-&gt;S5, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[644.821972 power state 1 =3D S=
5, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[644.822156 power state 5 =3D S=
5-&gt;S3, in 0x0000]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[644.822459 SW 0x03]<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[644.836578 power state 2 =3D S=
3, in 0x0002]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[644.850931 power state 6 =3D S=
3-&gt;S0, in 0x01fe]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">Simulating power button release=
.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">&gt; [645.821604 power button r=
eleased]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[645.821804 SW 0x01]<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[645.845928 power state 3 =3D S=
0, in 0x01ff]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[645.846349 HC 0x01]<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[645.847056 HC 0x02]<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[645.849352 HC 0x9e]<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">+++(++)[649.114626 HC 0x02]<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[649.116925 HC 0x16]<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[649.117941 HC 0x11]<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">+++(++)[650.450201 HC 0xd2]<o:p=
></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[650.450414 Executing host rebo=
ot command 2]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[650.450709 Jumping to image RW=
]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[650.459254 UART initialized af=
ter sysjump]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">[Image: RW, neon_v1.1.7358-a190=
641b3 2019-10-11 15:41:40 a@xaphan]<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:.5in"><span style=3D"font-size:=
10.0pt;font-family:&quot;Courier New&quot;">&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I&#8217;d like to r=
ely on the autoboot feature without console intervention, and at some point=
 I&#8217;ll probably trace through the STM32 logic, but I&#8217;m hoping th=
e knowledgeable folks at NI/Ettus might have a quicker
 solution..<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thank you,<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">David Raeman<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
</body>
</html>

--_000_SA1P110MB1932C6DBAB53659AE7EA51B3B70EASA1P110MB1932NAMP_--

--===============3372052971328009700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3372052971328009700==--

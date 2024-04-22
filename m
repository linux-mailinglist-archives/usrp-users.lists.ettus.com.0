Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA908AC5C4
	for <lists+usrp-users@lfdr.de>; Mon, 22 Apr 2024 09:43:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3F9653857E1
	for <lists+usrp-users@lfdr.de>; Mon, 22 Apr 2024 03:43:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1713771794; bh=pcxyFmCtOKfgE01IdKiUwBFliaQbUprED82a1qNBWuc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SdK/3Z0N+M1cFenk8Dl2uyKpxQ5aXlY+HzB9wXZkCTHIiRNwQBVdoFkiklUYIyDBS
	 W/+f1T88F0gi1fJBD7X44BupyKJEaaAETtHPeippUKSifdYpKlt8fbrFCAjXpn7Anl
	 bYRJUD/t8/1if26ZVW3WAY4t6wpOtJyXF8afSF01lOOZVySb8/PeI+jptJjKs70iyX
	 DSzfzPcyIGvpza0KSMxfbDp3Nl4TIGaQ2dM5xFDgdQrSlycg6bX9ej99eqEkRoS2H3
	 xK4qt/+w0URDeMo/GOFzZga0n0B26XQUeFuu2rOoojoLN9so3jsnucUmlsASEUZ+C5
	 4fTcGQsfIXLiQ==
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (mail-dm6nam04on2089.outbound.protection.outlook.com [40.107.102.89])
	by mm2.emwd.com (Postfix) with ESMTPS id 6E19C385772
	for <usrp-users@lists.ettus.com>; Mon, 22 Apr 2024 03:42:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="Xs5UMuSG";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nF5KHTJhgfj9oeb/sQKr//bvOeBK51VB1W+ITQKl1aWMeB/QnnrYjQm6Og2c+wc55i2CEMng7LS3/4mokrycb6BhlN7W0HsaGvQDC6+ltsiLHJtL6XF12eCuFTaeo3OZx0P7Rs4ckhO0PortVUIqI6GL28mturD2v/0YOyRZ/7J0C1n6fOQFBrTWiHhAoQJuw0rvt2d0QZ90G3HrfwSavhlGe3haz/BncyVMgORe5LJLS2CwoG80Pw9Z7o62cQCsTMh8VDei6yh6/HZy3To1NEjI+8c2ASOy2x2Eshdu+hInALu+giT2rrfDlMhkE9YkWCAF1xigo2vIkQ6IuEgApg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QuwYMZZKbyA1x992ACPZRv8KWX5Blihmt6w9mSbTINA=;
 b=WiJPEacWOEKP3iqzFeUyJwiy0P8P3VUd81PUh0cmemcff8Icz/acCr+PpWgd2sxhvF0tA49l+ha6TI9u4lNl7nHw8KnCFjcCj68//NSnIQAnPba6LVi5qVVsxMLsVcKXJX1pdXyUK0XnswAOOgPgLv38UbEc1PyjCM0EGL/WTG1bc2Qd/N9SWzuBHQvkYTivx+3gmvjHqL8o4Q6RA18FuYguuY3f0qbKTH7UEiADN4WmBfgtQ5W4AX5PXa+yOfrvxWRLx9EtnIwFfHKah/H8gwYlpAuHLgCwDK+60sOWaZ1GEEdcV+vFRkHZ9wgj2OeedM9eGTU8NP2kIpykA8HKdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QuwYMZZKbyA1x992ACPZRv8KWX5Blihmt6w9mSbTINA=;
 b=Xs5UMuSGPDU8EaRQyOArMN8Z0HyaP42uXirZikik0USzu1YruIhryErn8tMpY60jJFTiHWRnfw0ErnK/gkMZev46uL1fzdk8050cX+Lwxi/fj3ZyYCdcAQXeKMlMP+RdpY4S/ftWyyNnxTMw5i4Zuk7Cpza93m0ORh8yiXr5QYo=
Received: from DM8PR04MB7848.namprd04.prod.outlook.com (2603:10b6:8:26::13) by
 DM6PR04MB6858.namprd04.prod.outlook.com (2603:10b6:5:242::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7472.44; Mon, 22 Apr 2024 07:42:43 +0000
Received: from DM8PR04MB7848.namprd04.prod.outlook.com
 ([fe80::3615:f040:e01e:4327]) by DM8PR04MB7848.namprd04.prod.outlook.com
 ([fe80::3615:f040:e01e:4327%4]) with mapi id 15.20.7472.044; Mon, 22 Apr 2024
 07:42:43 +0000
From: Lars Amsel <lars.amsel@ni.com>
To: "Chapman, Christian - 0664 - MITLL" <Christian.Chapman@ll.mit.edu>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Transmitting on both X300 channels without streaming samples
Thread-Index: AdqR0XUuU7CBF8e5QPe+8RY7OngB/wAyCzRm
Date: Mon, 22 Apr 2024 07:42:43 +0000
Message-ID: 
 <DM8PR04MB7848A9206F2A6C0349723592E6122@DM8PR04MB7848.namprd04.prod.outlook.com>
References: 
 <PH1P110MB123645553A1002F6C034706FD90EA@PH1P110MB1236.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH1P110MB123645553A1002F6C034706FD90EA@PH1P110MB1236.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-DE, en-US
Content-Language: en-US
X-Hashtags: #NewslettersPlus
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=True;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2024-04-20T18:11:28.951Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR04MB7848:EE_|DM6PR04MB6858:EE_
x-ms-office365-filtering-correlation-id: 85dad326-55ad-438f-998c-08dc629fcb9f
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?/xsxqks416jNpg4ss0b6sklHNXaP8CYfe7vS4dg7ChshRGLwVF7A8RSZuSbm?=
 =?us-ascii?Q?kjNv2Cezmfp9fd0kVh8yv0WC1shuq2PTHOtm5fyUu0nhFHLndAF6S21dE59G?=
 =?us-ascii?Q?qyGY6XQfuz74nuJlQLT8Bgzic0hEkO7aM/lRgPMJDA8qDLDXemJ7Wxz872Qc?=
 =?us-ascii?Q?05qbdQUZszuJud8/4vm7pweWKjb/5n9OmoQLVBZX2pZ5rUWNodac8EVxeztc?=
 =?us-ascii?Q?qO+RtWrH3J5LMHre82pGafLhVkPU3Rr1QwKAiICiht4PC1dUe9+sHliAo7Zd?=
 =?us-ascii?Q?ompthbE4lKmlLlNB1AYUjk5eCOETanLtB3PH1HT4WD5R+4GeyAc1ri4xgrjj?=
 =?us-ascii?Q?pZsyiQ56tMKWsmbilW2NnK9LYGChHTIm3O+dUDjeK2+rCcJ4QFojfyc49KK/?=
 =?us-ascii?Q?6/NWqGG4BqYU4z448z0YNVQL6l6rmTNuvBBlQb+atR8DkYsXwCDSDeZF/JEo?=
 =?us-ascii?Q?5hhYWv94W6b7eB5O4lo7FwX0AK5AyYubxGEFmbKpARY1UnuV/kPnwQn0lCCH?=
 =?us-ascii?Q?g7X053S/xKKi0ydXHTlzxghPtyI2kuxCEJtyQcMh0Jwr2ux3Pk0AoBh33Cmy?=
 =?us-ascii?Q?/hjD2ocnE7BxGdVhkxheWEcxY85W3cGSCfJZBP4UIsiUpBD5yXj7YVZvuCrN?=
 =?us-ascii?Q?XsnpAsFof4Hl8icO8yvP0p7ao6BlkhNZYowhL3m0NC6ge/LGDH3CRuLkdGb0?=
 =?us-ascii?Q?BvpIgzIrrXoMxptiFFHljKptZG8A7W4cKFIXSTOpiNPd4D6ubmY5eor/B6RF?=
 =?us-ascii?Q?ObZ757nKgZvlzxhbVVb28B7O0cs0woukzfTri0f3TsUUb1m6c/domQFNvmRJ?=
 =?us-ascii?Q?qrx5KOz6EIkcgPU6xGsmZk2Px1xgsybbUgb/umO511mZ8dzlJd+ReJdQQQ0H?=
 =?us-ascii?Q?3nZnnHufAJcJrYZL6wLOPPhQFqp81k6W8XWE85t9izpI6r1fPasBWZnKvUR6?=
 =?us-ascii?Q?DtwLj0y+dqcBuAL4UEoKzA7DIbBiQxr7w7O7fhr3DctByjjbJa9pc8v0OKhX?=
 =?us-ascii?Q?T87D9iPoTyGMeSSUhrCg902t55ijkz23dBSrIKPnv607GtIPxd5Bj3UcIYRS?=
 =?us-ascii?Q?vkpiZm6MBGi3AYiJPL6gXuyAF1Tu+M9KQ46i0tiyvyWI4HPQJPPcxnx+vtS2?=
 =?us-ascii?Q?iHqrDULQwanmkY6GuZ3ZuTiAske50lex8r51ypxWqVDJ5X9Lm8h3qVMAbuNs?=
 =?us-ascii?Q?PrTpp/M1RtOjGG2MJCK6wB0guuIUnOf7uu/j1qgeMmZdo+LAiEJQ87nRxUtX?=
 =?us-ascii?Q?uDb96/xMzT8nNPpAmibijtlTJoJYllmXNjx2qXek8Lnx2hKXdOG903wkx6wd?=
 =?us-ascii?Q?05Y=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB7848.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?rkBMDTgBKINFU4HjxB/dPd7IqT3qc/LD+t0z/iyclM1/DyfCXzIlFX3WKsss?=
 =?us-ascii?Q?IYh+EJooQWZiCd3TpMwmaNRfZFkiMvUFALMSS6kaXWOpZamSTfj4Xxwm6fWu?=
 =?us-ascii?Q?zdDFRYjcza0YUn975XAsX0pnqt4bZYD6HJrGd2PSgIvPtGlnxKSehGFMR7v1?=
 =?us-ascii?Q?GyICA8kdqqfDtOd+jAC/N8kuuIEz6MgXDivqhunnYk8PVGco+MEBfKzd8FZQ?=
 =?us-ascii?Q?6+A/dEVTnHE8h1T6WQZ24Mw/Rgvi7Fu2RYGIN+kU6FR7wvhI8Li7IVBrSGwU?=
 =?us-ascii?Q?TlP7s82GxD6pZoWn3psiFUbLN4af8hd2BZUgA+zP20kP0FZjCHuqSZAWRA0u?=
 =?us-ascii?Q?qvwfpGGZpv77bUizL33cdLvU++SGtDWj/ktOqne8KMcwqq5jvUTO4KwhnqeW?=
 =?us-ascii?Q?mZiGgtdcrFubk062E94ZLv52OMtAtJul+Lt+t7yx01a3iVr3sSaBE5WukFxj?=
 =?us-ascii?Q?fXn9xfxUEsmbD+0MlKkjW1CmsqWl3fK5k0jql69nm4g/ixFxC15ZX21AyoMa?=
 =?us-ascii?Q?NvZSTu1S2ULOy3u4JRZrUHjzDV1mFyaozbBX8X3nJ9vzDKcSV1+mapt4OgYj?=
 =?us-ascii?Q?hCNmT3XhvjXRCEHPNkBdpLvBvIbBePXvTPdQMG/qsUg6Kj/g1Kp3CeURspzC?=
 =?us-ascii?Q?Nnky7KEPGxQShjyS2ldR+pZ9dxxXcbzZR8CTBlCzKAqWkqzxKqjMIZxYEvuJ?=
 =?us-ascii?Q?S8QDaJ1bqC5aHU5exUKTN/qXw0c9Tl2RhdWv7VmnpkG6JW66dWiS++eZi91o?=
 =?us-ascii?Q?cHpachdlDsEI95+oyCTk5+lLqeVxEa7F0WJtqg5EjmjhK9/lmeTt/lKP2PVo?=
 =?us-ascii?Q?FTYhM57WSNy45n6e40ps3MIY0uHuLQBbn5opn0ItkpBDCmrborWHJRke60OS?=
 =?us-ascii?Q?Kx28G1LJKbrUJ2BweYOJ7s6NLlGjhgDzezt3140oIPlMub2QhHabrxGmpCXB?=
 =?us-ascii?Q?MRmIpLNe9NMb8nCsCiCpGT/bMufIhMW8exA31jmE3psmlsAa1ASvyQX9P9+N?=
 =?us-ascii?Q?oivO3NFX5q4inzqTANoEMwTSIg+DtLkXcS50o25k6twlwyo7+zdPKtc4NUJ8?=
 =?us-ascii?Q?8M8fYCrdxwwEZKqtR4QBOPFZcgLGFeIr70ONDawSX1WsmyaZQQ0TNB8fsxoo?=
 =?us-ascii?Q?5bX+fWfdBg6d1Tzt1GZK29Z9sBsGz7Nf0sY+AGni97IR1KjpR4r1sebpXcWT?=
 =?us-ascii?Q?1xX1g/kMNyGuQU8unoN+7g2zs88Mo+FXbC8OaygdzWnsQHZ0A96AB337ZIdk?=
 =?us-ascii?Q?zbDXxF1Bngk2MTZNkNU1GibOExLyktSe38Smx/aPJLNSN9rBSphO7yN7jneP?=
 =?us-ascii?Q?Z9lbXq3GyTD2/lqRQ4pEREtsbUTut0xYofFK0sPcpRCtmMt1p1OvQOHaXYfC?=
 =?us-ascii?Q?Xd9B91oImNOreN5lIQGMx0IuvCF4UuigBSOO3O6kQYP1Hri+Pe8cdx4K7inH?=
 =?us-ascii?Q?uBf+WooYyzcb+CxhoLnY/R7n2o0jNxnA28/xUGp8QM4WLDu8sqeVXmFy6i9C?=
 =?us-ascii?Q?VFtwBAPu41tZhtYQ8s4bTQaEQiRoL426YXhwHXpHLsD2Dl85/YSTQekQ9T7i?=
 =?us-ascii?Q?QkB8A7WRXE/E9Mg5B30=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB7848.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85dad326-55ad-438f-998c-08dc629fcb9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2024 07:42:43.4949
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S6WLUuKPXY2iwqISTxgNE8VsUlsMlQw54YmmUsXTcUXSwqM++FudOhyu+p1n8JMvuJawRT6TM/vR2PtrC0f/ZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6858
Message-ID-Hash: ID32S4JX4X73D73ZOOIB44NEP2HAEYTS
X-Message-ID-Hash: ID32S4JX4X73D73ZOOIB44NEP2HAEYTS
X-MailFrom: lars.amsel@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transmitting on both X300 channels without streaming samples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GNAAGZBHH6RORU3EZRS6WADBHPGIFOMI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1449608760630136116=="

--===============1449608760630136116==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_005_DM8PR04MB7848A9206F2A6C0349723592E6122DM8PR04MB7848namp_";
	type="multipart/alternative"

--_005_DM8PR04MB7848A9206F2A6C0349723592E6122DM8PR04MB7848namp_
Content-Type: multipart/alternative;
	boundary="_000_DM8PR04MB7848A9206F2A6C0349723592E6122DM8PR04MB7848namp_"

--_000_DM8PR04MB7848A9206F2A6C0349723592E6122DM8PR04MB7848namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Christian,

you did not mention what version of UHD you are using, so I assume you use =
something recent. UHD has a replay block that is shipped with the default i=
mages (if the USRP has sufficient resources), see here: https://kb.ettus.co=
m/Using_the_RFNoC_Replay_Block_in_UHD_4. So your X300 is able to do it.

The replay block always manages all the memory, and you are free to divide =
the available memory into portions for different tasks. So you could split =
it in half, download two TX signals to each half and then play one to each =
radio. Beside the good introduction linked above, you might also want to ta=
ke a look at the Python TX waveform example https://github.com/EttusResearc=
h/uhd/blob/master/host/examples/python/tx_waveforms.py. This example (with =
the -dram option) contains most of what you need. The necessary extension w=
ould be to download two signals and do two play calls to play each signal t=
o one of the radios. You might want to  use a timed command here to ensure =
both signals start at the same time.

Regards

Lars


[NI]<https://www.ni.com/r/zf03uz>







Lars Amsel
Principal Software Engineer
SW Discipline

+49351206931427<tel:+49351206931427>  |  ni.com<https://www.ni.com/>

[National Instruments is now NI.]






INTERNAL - NI CONFIDENTIAL

________________________________
From: Chapman, Christian - 0664 - MITLL <Christian.Chapman@ll.mit.edu>
Sent: Thursday, 18 April 2024 23:08
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Transmitting on both X300 channels without streaming =
samples

You don't often get email from christian.chapman@ll.mit.edu. Learn why this=
 is important<https://aka.ms/LearnAboutSenderIdentification>

Hi, I'm interested in using an X300 to repeat several 100 ms of >100 MHz sa=
mples, a different signal on both channels, and my host computer can't stre=
am samples into the X300 continuously.

It would seem the RFNoC replay block could serve this need, but according t=
o a thread from Thomas Harder on a very similar question[1] some firmware c=
hange is required.

Thomas seems to have settled on the approach I can't use: his samples are s=
treamed continuously via 10G Ethernet.

If I understand properly, Rob Kossler's txarb block can serve this need, bu=
t I can't find it published it anywhere. Do I have to recreate something si=
milar to do what I need?

More broadly, has anyone done this and/or have simpler solutions appeared i=
n the last few years?



[1]: transmitting on two channels with replay block, msg09472



Thank you,

Christian

National Instruments Dresden GmbH; Gesch?ftsf?hrer (Managing Directors): Jo=
hn Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; Sitz (Regi=
stered Office): Dresden; HRB (Commercial Register No.): 22081; Registergeri=
cht (Registration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_DM8PR04MB7848A9206F2A6C0349723592E6122DM8PR04MB7848namp_
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
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Times New Roman",serif;
	color:black;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<div>
<p class=3D"MsoNormal"><span style=3D"color:black">Christian,<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span style=3D"color:black"><o:p>&nbsp;</o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black">you did n=
ot mention what version of UHD you are using, so I assume you use something=
 recent. UHD has a replay block that is shipped with the default images (if=
 the USRP has sufficient resources), see
 here: <a href=3D"https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_=
4">https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4</a>. So your =
X300 is able to do it.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black">The repla=
y block always manages all the memory, and you are free to divide the avail=
able memory into portions for different tasks. So you could split it in hal=
f, download two TX signals to each half
 and then play one to each radio. Beside the good introduction linked above=
, you might also want to take a look at the Python TX waveform example
<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/p=
ython/tx_waveforms.py">
https://github.com/EttusResearch/uhd/blob/master/host/examples/python/tx_wa=
veforms.py</a>. This example (with the -dram option) contains most of what =
you need. The necessary extension would be to download two signals and do t=
wo play calls to play each signal
 to one of the radios. You might want to &nbsp;use a timed command here to =
ensure both signals start at the same time.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black">Regards<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black">Lars<o:p>=
</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:black"><o:p>&nbs=
p;</o:p></span></p>
</div>
<div id=3D"Signature">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"450" style=3D"width:337.5pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"450" style=3D"width:337.5pt;padding:0cm 0cm 0cm 0cm">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"450" style=3D"width:337.5pt;border-collapse:collapse">
<tbody>
<tr>
<td width=3D"450" valign=3D"top" style=3D"width:337.5pt;padding:0cm 0cm 0cm=
 0cm">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"450" style=3D"width:337.5pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:75.0pt">
<td width=3D"100" valign=3D"top" style=3D"width:75.0pt;padding:0cm 0cm 0cm =
0cm;height:75.0pt">
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" width=3D"100" style=3D"width:75.0pt;border-collapse:collapse">
<tbody>
<tr style=3D"height:60.0pt">
<td width=3D"80" style=3D"width:60.0pt;padding:0cm 0cm 0cm 0cm;height:60.0p=
t">
<p align=3D"center" style=3D"text-align:center"><a href=3D"https://www.ni.c=
om/r/zf03uz"><span style=3D"font-size:1.0pt;font-family:&quot;Calibri&quot;=
,sans-serif;color:black;text-decoration:none"><img border=3D"0" width=3D"80=
" height=3D"80" style=3D"width:.8333in;height:.8333in" id=3D"Picture_x0020_=
1" src=3D"cid:c5f89e5e-3baf-48a8-a353-fd11c0c0f896" alt=3D"NI"></span></a><=
o:p></o:p></p>
</td>
<td width=3D"20" style=3D"width:15.0pt;padding:0cm 0cm 0cm 0cm;height:60.0p=
t">
<p><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">&nbsp;</span><o:p></o:p></p>
</td>
</tr>
<tr style=3D"height:15.0pt">
<td width=3D"80" style=3D"width:60.0pt;padding:0cm 0cm 0cm 0cm;height:15.0p=
t">
<p><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">&nbsp;</span><o:p></o:p></p>
</td>
<td width=3D"20" style=3D"width:15.0pt;padding:0cm 0cm 0cm 0cm;height:15.0p=
t">
<p><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
">&nbsp;</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
<td width=3D"350" valign=3D"top" style=3D"width:262.5pt;padding:0cm 0cm 0cm=
 0cm;height:75.0pt">
<p style=3D"margin-bottom:4.5pt"><b><span lang=3D"EN-US" style=3D"font-size=
:10.0pt;font-family:&quot;Arial&quot;,sans-serif">Lars Amsel</span></b><spa=
n lang=3D"EN-US" style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sa=
ns-serif">&nbsp;<br>
Principal Software Engineer<br>
SW Discipline</span><span lang=3D"EN-US"><o:p></o:p></span></p>
<p><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,sans-serif=
;color:black"><a href=3D"tel:+49351206931427"><span style=3D"color:black">+=
49351206931427</span></a></span><span style=3D"font-size:10.0pt;font-family=
:&quot;Arial&quot;,sans-serif">&nbsp;&nbsp;|&nbsp;
<span style=3D"color:black"><a href=3D"https://www.ni.com/" title=3D"https:=
//www.ni.com"><span style=3D"color:black">ni.com</span></a></span></span><o=
:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr style=3D"height:59.25pt">
<td width=3D"542" valign=3D"top" style=3D"width:406.5pt;padding:0cm 0cm 0cm=
 0cm;height:59.25pt">
<p><span style=3D"font-size:1.0pt"><img border=3D"0" width=3D"266" height=
=3D"38" style=3D"width:2.7708in;height:.3958in" id=3D"Picture_x0020_2" src=
=3D"cid:c68a155d-4b64-4925-8947-0f8c2833cf3a" alt=3D"National Instruments=
=0A=
is now NI."></span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;<o:p></o:p></p>
<p>&nbsp;<o:p></o:p></p>
</div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center"><br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Left">
INTERNAL - NI CONFIDENTIAL<br>
</p>
<hr size=3D"2" width=3D"98%" align=3D"center">
</div>
<div id=3D"divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif;color:black">From:</span></b><span=
 lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,s=
ans-serif;color:black">&nbsp;Chapman, Christian - 0664 - MITLL &lt;Christia=
n.Chapman@ll.mit.edu&gt;<br>
<b>Sent:</b>&nbsp;Thursday, 18 April 2024 23:08<br>
<b>To:</b>&nbsp;usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&g=
t;<br>
<b>Subject:</b>&nbsp;[USRP-users] Transmitting on both X300 channels withou=
t streaming samples</span><span lang=3D"EN-US">
<o:p></o:p></span></p>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
</div>
</div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" align=3D"left" width=3D"100%" style=3D"width:100.0%;border-collapse:=
collapse;display:table;border-spacing: 0px;box-sizing: border-box">
<tbody>
<tr>
<td width=3D"1" style=3D"width:.75pt;background:#A6A6A6;padding:5.25pt 1.5p=
t 5.25pt 1.5pt">
</td>
<td width=3D"100%" style=3D"width:100.0%;background:#EAEAEA;padding:5.25pt =
3.75pt 5.25pt 11.25pt">
<p class=3D"MsoNormal" style=3D"mso-element:frame;mso-element-frame-hspace:=
2.25pt;mso-element-wrap:around;mso-element-anchor-vertical:paragraph;mso-el=
ement-anchor-horizontal:column;mso-height-rule:exactly">
<span lang=3D"EN-US" style=3D"font-size:9.0pt;font-family:&quot;Segoe UI&qu=
ot;,sans-serif;color:#212121">You don't often get email from christian.chap=
man@ll.mit.edu.
</span><span style=3D"font-size:9.0pt;font-family:&quot;Segoe UI&quot;,sans=
-serif;color:#212121"><a href=3D"https://aka.ms/LearnAboutSenderIdentificat=
ion">Learn why this is important</a><o:p></o:p></span></p>
</td>
<td width=3D"75" style=3D"width:56.25pt;background:#EAEAEA;padding:5.25pt 3=
.75pt 5.25pt 3.75pt">
</td>
</tr>
</tbody>
</table>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,sans-serif">Hi, I&#8217;m interested in using an X300 to repeat seve=
ral 100 ms of &gt;100 MHz samples, a different signal on both channels, and=
 my host computer can&#8217;t stream samples into the X300 continuously.<o:=
p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,sans-serif">It would seem the RFNoC replay block could serve this ne=
ed, but according to a thread from Thomas Harder on a very similar question=
[1] some firmware change is required.<o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,sans-serif">Thomas seems to have settled on the approach I can&#8217=
;t use: his samples are streamed continuously via 10G Ethernet.<o:p></o:p><=
/span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,sans-serif">If I understand properly, Rob Kossler&#8217;s txarb bloc=
k can serve this need, but I can&#8217;t find it published it anywhere. Do =
I have to recreate something similar to do what I need?<o:p></o:p></span></=
p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,sans-serif">More broadly, has anyone done this and/or have simpler s=
olutions appeared in the last few years?<o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,sans-serif">&nbsp;<o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,sans-serif">[1]: transmitting on two channels with replay block, msg=
09472<o:p></o:p></span></p>
<p><span lang=3D"EN-US" style=3D"font-size:11.0pt;font-family:&quot;Calibri=
&quot;,sans-serif">&nbsp;<o:p></o:p></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if">Thank you,<o:p></o:p></span></p>
<p><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-ser=
if">Christian<o:p></o:p></span></p>
</div>
National Instruments Dresden GmbH; Gesch&auml;ftsf&uuml;hrer (Managing Dire=
ctors): John Stanton McElroy, Albert Edward Percival III, Kathleen Spurck; =
Sitz (Registered Office): Dresden; HRB (Commercial Register No.): 22081; Re=
gistergericht (Registration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.
</body>
</html>

--_000_DM8PR04MB7848A9206F2A6C0349723592E6122DM8PR04MB7848namp_--

--_005_DM8PR04MB7848A9206F2A6C0349723592E6122DM8PR04MB7848namp_
Content-Type: image/png; name="Outlook-NI.png"
Content-Description: Outlook-NI.png
Content-Disposition: inline; filename="Outlook-NI.png"; size=1704;
	creation-date="Fri, 19 Apr 2024 20:40:10 GMT";
	modification-date="Mon, 22 Apr 2024 07:42:42 GMT"
Content-ID: <c5f89e5e-3baf-48a8-a353-fd11c0c0f896>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAYAAACLz2ctAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAAJOgAACToAYJjBRwAAAY9SURBVHhe7d1LaFxlGMbxM2euTUsDUtvipd5B
tLgQLO3Chbg0FbW6caM7NyLuXUrtQlEEFVcuBUVrQd1V0IrgBbxSFEpB68JUadXmNpmr3/d+3zeC
FsmcSXxOJ/9feXyttMmZ8OT1THJyplJ9//AwA0TyOAEJCggpCggpCggpCggpCggpCggpCggpCggp
CggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggp
CggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCgip
qS/gcLi++b9d7BgKxb+t8CZLhQ0Iqal9xfT0oAari+Ff/BqYRCXOQT/MvBZmtRFnPYxK+oOTGcTj
Habjn1StZSOvheNcn6OcHBsQUlO7AfvLv9vsHnzG5kqva3NQ8EyoknbGcGDjy4WzNt+YP2nz1TNf
2Ey7Ja+HjTPuphltvl47zHuetvnn6pLNcc3GzXf/t2/bPDb/vc1q3NhqbEBITe8GXDpnc3jfszZX
O3Gj2D8nV8/D5241nQNWwu8fP/mezZdPn7BZac3azNd4bjjagN3lMA8ettluh9+Pq1XfYvPQN2/Z
PBo39ui4xdiAkJr+AtoXwYZZ3+2+9UzbPRv2WewsW5Y7S5aX9s5ZThx4zDJsX7D4zZa221j8X3G5
2DGsJf6s1858w4ehdNiAkKKAE6q4czufuKiyxfai5c4d11ne3feIJW3C9OcQUEBIUcB1ljZiOjec
u+IWy6Grb7cMeqsWBBQQUhRwg6RN6L9+5/P63nstWb9nKfyseMpQQEhRwA3WGw4sjcYWy107b7IM
Bz3LZkcBIUUBN1g6F8x6HcvDu2+1ZINuyCZHASFVugL2B/2Q7krBtC2Zv57Op1a1zNSalq0F06hU
LUV1BwPL/u27Le5BhmxybEBIleZ6QL/1vOtnwvVzT+7Zb3OpX/Q8KTyshXRd3ehrbuNdo7wSz9Me
2nmzzTtmr7TZGcafDVmjerxe8Od4ZfONH71gM6/P2LTzROdf1wPOhesBlwpeEb01Xpn9wNdHbb5z
lusBgZHybED/HQLn7sv22Dx+4FGbWWfcDRgfTit8hleOPWXTPdI4x/wpDX8+6by4d87mE9ekzeye
1Y4hbcBfOmGzXfvh8zbZgIBQ6QrYHbpni/4nz3puE7j4TTNOFnsh8UJg9wzYfaZbmpbqmEl/r5G7
Z8Euk/L7rRT/yykJNiCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCk
KGDZTfkFhBQQUhSwZPxPhthPh8TN91v7gqVWqVimDQWEFAUsmdG9ZOIq/OT8T5ZJ78xQVhQQUhSw
rKpNy5EfP7VUGk2Lv8PD33d5uPRRQEhRwJLK86rl83OnLT/8MW/ZUq1ZpgUFhBQFLKnRs+HGVsu+
z16zVOutEPcU2cedEdqvSxUFhBQFLLmqOw/0WeitWm77+BVLqzkTUqlZLtVnxxQQUiUuYPhmaPrM
Xms2XrHjSr+KSnfr+m7hrGXXB89Zzrut6LOtuc2SvmMSv5GSDre02ICQKl0Bm+58xydruENz2dZy
n9kFYo/MHl3aBZOtglm3fXzszqsuF3uf/5WmO1/zudw9o/UpKm3CX7srll3Hj1ge/OpNy6mV85b0
qgBZ030sXcr69UM2IKRKc4/odG/kZrzm7aq4JfzrrBVRz8Pn1qmVBZt5fLvpXsxr1Y/vf0e8p/J2
f7dVZ9xXuqyEM7Ksb7dtzbIz8V7Refzv4x5X4s8vvUF63bn4du3rh84Nre025/1rpjhL8dUIqgXf
33pjA0KqNBswGd0lvuDm+6c83p2+6IZJ0iZ0BxZmYeE4im7kteqn40zHHT8OZdl8CRsQUqXbgNhc
2ICQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQ
ooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQ
ooCQooCQooCQooCQooCQooCQooCQooCQooAQyrK/AAKzFtHKVJyKAAAAAElFTkSuQmCC

--_005_DM8PR04MB7848A9206F2A6C0349723592E6122DM8PR04MB7848namp_
Content-Type: image/png; name="Outlook-National I.png"
Content-Description: Outlook-National I.png
Content-Disposition: inline; filename="Outlook-National I.png"; size=13664;
	creation-date="Fri, 19 Apr 2024 20:40:10 GMT";
	modification-date="Mon, 22 Apr 2024 07:42:42 GMT"
Content-ID: <c68a155d-4b64-4925-8947-0f8c2833cf3a>
Content-Transfer-Encoding: base64

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

--_005_DM8PR04MB7848A9206F2A6C0349723592E6122DM8PR04MB7848namp_--

--===============1449608760630136116==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1449608760630136116==--

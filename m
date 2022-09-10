Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1425B472B
	for <lists+usrp-users@lfdr.de>; Sat, 10 Sep 2022 16:58:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09DE0383BB4
	for <lists+usrp-users@lfdr.de>; Sat, 10 Sep 2022 10:58:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662821932; bh=I/cdoCFkhTQ5T1XQ39JFZBs59yhRA08rFINGHtH3l/g=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=MKpAySfuL+oII+0hWx5ySXd2T7/K1bCQGImvwkgukVTY2Y5UibdG00fEHuyjLx5DX
	 aFQpF2wToHqmoBBYFl5sBhbJNCBjqyEC0EMoSaGj4QIPaAYOxKacMlqpBJv6hlIRqD
	 bMMbNBtga332SqsNwUOy7NKNAgwgo92rImyXG6/IMB3GpJewIGLmSo0FEGH0OlPHx0
	 J2WImnasWRYo9QiWofDqzrC5HhRpQT8yZRvI+OpTdf8ZUXLL99ECDuFrn6DXxL1jfr
	 Na8z886zZWrHPsyyKa9J2PRzU9WhjeUnp+Etu+5zRzmY5xi7+b+vRjsU0Y6lcMpuMx
	 dfdSoycltVRVQ==
Received: from NOR01-SV0-obe.outbound.protection.outlook.com (mail-sv0nor01on2073.outbound.protection.outlook.com [40.107.225.73])
	by mm2.emwd.com (Postfix) with ESMTPS id D83FF381292
	for <usrp-users@lists.ettus.com>; Sat, 10 Sep 2022 10:57:39 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=sintef.no header.i=@sintef.no header.b="XuK3QZbo";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PTmwNah9oS0mqPpqZd+PyaDV5KZ7KzXz839ZRXzY1RoNr7R1KrUguF0jx0l3CivpuU/yXyIeItDQHKNGnsNNq2zczjVGh/nxadrPTsX0P4WGiscE+IplNrSpyVlsteXEUScvkqclnjlvkaMkerzlc6JhBM5f+K2fABSZMg9n0w10z9ZfeDPAMgNvWkz3vGuG9dTAJ31s4wFFpMC0qaR/uCzOZYHPGk7HurABTs9GMT2tJ/GSCaDDR5qkck8seAxKKMPpCqr3lOu+6nRgfAXFM5oWa0pX9a0Xeds0A5cP568cwtI/wNit6WCMCNKVI3wh/umfVFeakLQnR2GDYttgQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jvYAqnV/kBRcDNao5MVFmA+lTKvrHMbsOtYmk81GCN0=;
 b=a7UWnXsHUAkjyAw+Jv7TdYjsq4EWa84zsRjuC3Qg/njSvMZCN+p0UInKjbvlIja2EUAwleswrZlt6PRtaC5HfL+cmg+/CntCnIdnD3hQJvEq0Gpvph9Aj7Pwv8r9fDeWf2eT95RKra5DPkoDYjgCmA/kbxUR9WBgJdHL5MIQz1T0+9mHTITHecym0/fm2QNOuYlnlS74cZ2I9YFJzi79x5NOcQ+o26lFX05D6Qt8FKMJ4PIxmDeY3B8l2LYK8/W5Nd+ZL7RRP62PsX6SFrRihDd5vPMociEg+tY2l/fSXF87gUbPMWSlfTnGRiBkWs4emWKZh++tLwDkmH2a++PxmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sintef.no; dmarc=pass action=none header.from=sintef.no;
 dkim=pass header.d=sintef.no; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sintef.no;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jvYAqnV/kBRcDNao5MVFmA+lTKvrHMbsOtYmk81GCN0=;
 b=XuK3QZbosKbPa64bMXe7B7bBHIMlO9S6NlmZFtuffA+wgTsRwViOJfIli8ILQi1rMG36C8hSHnbniq9jrv19SK5M4BZtzv/2IVKMXcZIuLS8nZSY0mdsxOvSw02hZI9+FPcJQA+ba0+lNmFBZUhzi4RqGNrsKZBWvE2qPZa3lh4=
Received: from OL1P279MB0084.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:10::14)
 by OS4P279MB0617.NORP279.PROD.OUTLOOK.COM (2603:10a6:e10:2b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Sat, 10 Sep
 2022 14:57:37 +0000
Received: from OL1P279MB0084.NORP279.PROD.OUTLOOK.COM
 ([fe80::fe8e:3ff9:9394:ed84]) by OL1P279MB0084.NORP279.PROD.OUTLOOK.COM
 ([fe80::fe8e:3ff9:9394:ed84%6]) with mapi id 15.20.5612.022; Sat, 10 Sep 2022
 14:57:37 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N210 USRP synchronization performance 4x worse
 than expected - suspect configuration problem
Thread-Index: AdjDXmcBt9R0T29bQnqJjfTB/2MhuAAM3XSAAFq6e0MACfy0gAAAA0Im
Date: Sat, 10 Sep 2022 14:57:37 +0000
Message-ID: 
 <OL1P279MB0084B741E6D12D6226CA5D9386429@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
References: 
 <OL1P279MB008439AD371C6A7E87C1D4F786409@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
 <81395d53-7dfb-ac73-620b-2768d4fa9d0c@gmail.com>
 <OL1P279MB00846F6159EE85D5823D9C9386429@OL1P279MB0084.NORP279.PROD.OUTLOOK.COM>
 <9dcb3a2c-9e76-c07c-6d36-d3a68c650d72@gmail.com>
In-Reply-To: <9dcb3a2c-9e76-c07c-6d36-d3a68c650d72@gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sintef.no;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: OL1P279MB0084:EE_|OS4P279MB0617:EE_
x-ms-office365-filtering-correlation-id: 503743bf-5ead-4151-28bd-08da933ccce9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 92bFc6M3CIZX67jmlSElBURNlclzUyxm7XiJQIatWexW/+VT67I85++ukPpiz2+abfiAdSW1jt2BI+Jfw2o7CID8BG1XVHPnufbnWXQAdGhpn0H4W4IUJMif45XMs7uaGSn4+5z+z/+pQE6gmDKMH6oikbCHwYaazsxHE+ewpB/8GWCPZzcH27tnL0tXlDEDCa6YGXsfocGM/k/C33ld8aeGx6/30SyUXSJSEJ0BNbEGX+9J5BkwedIVrFmYck1dUvjO2jHPoyL/j+BeN63jwdXbg5FaUYaqGoME0shEheQCD7f3frvKn9mukVte8DHV++JEAwqcCsSz3iSBUQJ8rhmKLPcCIBLguToqAs7ewO6FsdZJkdLn0Y9xueb/EG6G9hQy3X/8jOUTphAMtOKvHMzWbZhVhnyFkEl/ezo4LPgXt1b49hVqbe1EWZPuIDj0VM11C8gHGfjFGOgc4TVNJ4SmHGI6wW3duc8fJrJiORcOtRN2phWIqmWoOF1KWiG65wtvPOPWlBHjCKfLy50achT/47pOI+8X4ZYtOkjolNu6pXbEku9NzYs171ckOpsTKZNhlWeMvcLAQEyOe5ADGNUuRji8/DqZrxeu8028ICLFQp804C9LoXPD+SOhJZJZPYo35oFLGqHWA2P60O93U3SNfG9EgZ9hH3IFM7OIDamUvvUeouEYsb65QVKv+nbSXSxxK84IECpTQUP0YhFDz+kYuJRaCOJu6zok/+EoeUV7EY5KgfSvhhapMpSiTO7zKhwBHDPd7T4KFaS6AhAwa2pVcIc5UJ326wLhfLyNVN/m+Z8t2wWhyBqFOS2L110rtjYkom1RqRk4FTXrRE3NSA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:OL1P279MB0084.NORP279.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(366004)(136003)(39850400004)(396003)(346002)(122000001)(86362001)(19627405001)(15974865002)(8676002)(66476007)(66946007)(76116006)(66556008)(66446008)(64756008)(33656002)(38070700005)(166002)(38100700002)(83380400001)(186003)(26005)(41300700001)(71200400001)(53546011)(7696005)(6506007)(9686003)(966005)(478600001)(55016003)(41320700001)(786003)(316002)(19627235002)(110136005)(2906002)(8936002)(5660300002)(52536014)(15398625002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?xSe6m7eARo/2YrWsizmEfBnjb8RfwTMlK+SiwZDo5kH+GMoraBaVVmAyv2Y/?=
 =?us-ascii?Q?GnZTUJ4m5/YDtRLzuKXcp5khHs+7FsEhUyx5/gJIdq+eBhW8Jzbu0G6c0o8L?=
 =?us-ascii?Q?G6G51weuNFrTJ3A/Xsundmb/fGwRlUf3twX6m2AOfIQzj/NYNtFXGByqFVge?=
 =?us-ascii?Q?EOEcGGI8WcYpZJgeR+SIVd10VfqUSBObSAZdgo33DZ+ZrOIm77S0Al/WC7c9?=
 =?us-ascii?Q?1+8XDG0vOg9qLC9oY6NvTvuVevrttX0GDT1ki3f6NTNp+72OOV1AjPMHYC5Q?=
 =?us-ascii?Q?cUijJ8zSAGaVDRrBgn6o8E9dHrBLuEaTQMk1vG2wf2aiv0qaOxrtJud1+f6D?=
 =?us-ascii?Q?o43I7hES23P/Q9XIxTctlypM4hNmZ2mqAXrOYl0uAOEWiTGL8CnsGjg6upJi?=
 =?us-ascii?Q?sD+oXXVKUeQic7JhgDx3pv7ID46O+niVNGgfy05B0sgE8NbftOf/DmENu01C?=
 =?us-ascii?Q?Qa+TODMYf6ZtQuzCeky98PWiDviZetxucaEFg9qBLpN3u1+AcUL1fQ/ZtPzX?=
 =?us-ascii?Q?5eMfxcoJh5m5i4LKMuBZRReIL22BRRJ4P08CKQgjZv7pcdJ5LvK7Hxz+AFd3?=
 =?us-ascii?Q?6LpDRwBGI6DIPYb3vCvqw682LWrsNcORprPgW089P5z4ZS8iNb21X64iP404?=
 =?us-ascii?Q?KjhHjxN+gFgl4IIaFpAopCPeiFSNl2IL05NJHeFYZ3Y+Kcv6iYfH3DGComee?=
 =?us-ascii?Q?0NbsUIRSxfmisbrwUCs2vOfcQLntyV9sME6aJKcwwz5Qy0vNrN8W4EEbV11D?=
 =?us-ascii?Q?b2F3o2+n34GkbpzfjEvy0cDmRf3VVzyUH9GWvuufhGLp/NA5SN06lRJ9LC61?=
 =?us-ascii?Q?ECxkhDyl/O/2rie4oDbeXlFLD6n0JU+OyeXD8GnjmiGrJAdrELuS8jp4YxK9?=
 =?us-ascii?Q?pBRpetLjhQBM3Bo0AYsVZTYnsyjeRplkp+jtxG4B8Jvp5hZcRDQhJgYx7AeD?=
 =?us-ascii?Q?dg1ZQvSp5ncf+xhoQfDI+4dvyAqfE7+urSRY5KG0mn/7+ACDh4i8ha11Le4B?=
 =?us-ascii?Q?RSVyVQE86mQPuzHO+mJQN4eyhb+tT1DEBBGINs0guBZINJrUlgNxybBjt5br?=
 =?us-ascii?Q?6I9cBivuYDcRub3/doZrshX0VanbX/63dkGO1V4g4AOAjcm/18TbtUtuew8t?=
 =?us-ascii?Q?X+5mjJLF8sWLc+xwkBO0yJotGJHXpGZAR9P4Fh9jCAQbHY/Ordxnkwey27dZ?=
 =?us-ascii?Q?kg4pfkzOXLKjCWyDNSqPSL9Nl4DzFA1q7nYcSdqscMOUE+dJDay6JdJvRmlF?=
 =?us-ascii?Q?DkDBZtu+IM0YYdY2rYMtlShB1KDlZoCBDDZnhTk5t0nPkn46rqMlK5VQNCeX?=
 =?us-ascii?Q?AqfYqqtPvoLgnVUvaAZFy5GvCPYPwUPT8zeLwAFgQuVQ9/piRS7zjYuMIUul?=
 =?us-ascii?Q?v5Hxamvo6JZtNjM6yjmBtUiDlIzljrOzlJAdYpzDXa/HxUbWrpnUpFlXwwZh?=
 =?us-ascii?Q?A7erM3icvVnWVsaRM7z6aRN9pGWS5JsdNEysIVCwbE0aikmnwLzAq91cI1sB?=
 =?us-ascii?Q?q0fHq9CFKRleqDvLghtxBOkU9ioGweyI2Btp8FdrW+u0GfAj7PiYJvPrRqwl?=
 =?us-ascii?Q?lOAa8FHUrqZv7DTLp9XtQQCafv5XNJmcFGZQ3wLb?=
MIME-Version: 1.0
X-OriginatorOrg: sintef.no
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: OL1P279MB0084.NORP279.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 503743bf-5ead-4151-28bd-08da933ccce9
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2022 14:57:37.1343
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e1f00f39-6041-45b0-b309-e0210d8b32af
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TYVoAZE48Ar7DqeeE68giTIribCYMhrlH8nI3WHxnxpKABnwKmSEtm0k2iMUBMfwIffyAxTAIIch4Jmok6WEkc/JbQH+SWVSq7nCZGf8l74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OS4P279MB0617
Message-ID-Hash: 4GWNXNKOA5QHHBHTZDGPGPY3JJ36FFDG
X-Message-ID-Hash: 4GWNXNKOA5QHHBHTZDGPGPY3JJ36FFDG
X-MailFrom: Aiden.Morrison@sintef.no
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N210 USRP synchronization performance 4x worse than expected - suspect configuration problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E2FTJA7KDE6AH723IFF5IZ4SSMUFZ25F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Aiden Morrison via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aiden Morrison <Aiden.Morrison@sintef.no>
Content-Type: multipart/mixed; boundary="===============7687187526876647421=="

--===============7687187526876647421==
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_OL1P279MB0084B741E6D12D6226CA5D9386429OL1P279MB0084NORP_"

--_000_OL1P279MB0084B741E6D12D6226CA5D9386429OL1P279MB0084NORP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

This situation occurs with both our laboratory RB oscillator (it's also a G=
PSDO so provides a 1pps aligned to UTC and a 10 MHz output) and with the Et=
tus research GPSDO modules
purchased here: https://www.ettus.com/all-products/gpsdo-kit/
[https://www.ettus.com/wp-content/uploads/2019/01/GPSDO_650x650-650x630.jpg=
]<https://www.ettus.com/all-products/gpsdo-kit/>
GPSDO Kit for USRP N200/N210 | Ettus Research, a National Instruments Brand=
 | The leader in Software Defined Radio (SDR)<https://www.ettus.com/all-pro=
ducts/gpsdo-kit/>
USRP GPS-Disciplined Oscillator Kit . Includes GPS locked reference oscilla=
tor for USRP N200/N210 series (rev 4 and above).
www.ettus.com
The RB oscillator has a shorter PPS high duration than the USRP specifies a=
s the minimum duty cycle, but again since this is happening with both this =
timing source and the ettus supplied GPSDO sources, we think the fault is i=
n either the software or the USRP.

-Aiden


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: 10 September 2022 16:50
To: Aiden Morrison <Aiden.Morrison@sintef.no>; usrp-users@lists.ettus.com <=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: N210 USRP synchronization performance 4x wors=
e than expected - suspect configuration problem

On 2022-09-10 06:06, Aiden Morrison wrote:
Hi Marcus,

The timestamps returning from the radios are always in perfect agreement in=
 the metadata between the two USRPs. We are checking the synchronization by=
 doing a correlation on the captured sample blocks and observing the peak s=
hifting by 0-3 samples. If the front-ends were actually synchronized at the=
 ~100 ns level, this would be +/-1.
To be clear, this is with your laboratory setup, with an Rb refclock, and s=
ome kind of shared 1PPS signal?

What are the characteristics of your 1PPS signal in this case?  Rise time, =
pulse duration, voltage, etc.


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: 08 September 2022 16:47
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N210 USRP synchronization performance 4x worse th=
an expected - suspect configuration problem

On 2022-09-08 04:54, Aiden Morrison via USRP-users wrote:

Hello,



I am attempting to do synchronized multi-site reception using USRP N210 rad=
ios. Our first attempt was to make use of 2x radios with ettus GPSDO module=
s installed, feeding the radios with a common PRN sequence and correlating =
the outputs to evaluate timing offset. The Ettus GPSDO radios say they prov=
ide +/-60ns timing accuracy, so even in the worst case where one of the rad=
ios goes to each side of the limit, at 10 MHz we would have slightly more t=
han 1 sample of offset between them, but in testing we observed +0 to +3 sa=
mples of offset.



To isolate the problem we repeated the test with two different N210 radios =
fed by a common external 10 MHz and PPS signal from a GNSS disciplined Rubi=
dium source, and observed exactly the same +0 to +3 samples of shift betwee=
n the captured sequences. Seeing the same error when using a common clock i=
ndicates the problem is very likely to be in our test software.



In our software we follow https://files.ettus.com/manual/page_sync.html<htt=
ps://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Ffiles.ettu=
s.com%2Fmanual%2Fpage_sync.html&data=3D05%7C01%7CAiden.Morrison%40sintef.no=
%7Cb3cb5353e62b4b076f0408da933bde15%7Ce1f00f39604145b0b309e0210d8b32af%7C1%=
7C0%7C637984182589926129%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIj=
oiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&sdata=3Dl0fbP8XnZ5=
khyJaJC3zBR5%2B3CAlOVb4LHGrs%2BorfQN0%3D&reserved=3D0> for synchronization:

  1.  We create two USRP objects, one for each radio.

I would repeat this experiment, but using a single multi-usrp object.  UHD =
will time-align samples across radios in the
  same multi-usrp container object.  But not across objects.


  1.
  2.  We command the USRPs to use the external synchronization (radios repo=
rt back that they are synchronized to the GPSDO in the former configuration=
)
  3.  We use a common time in the time spec commands for each configuration=
 change (e.g. setting LO frequencies)
  4.  For each burst capture of 50,000 samples we set a time_spec for each =
USRP a long time in the future (1.0 seconds since the last capture)

To be clear you are requesting streaming start at the same time?


  1.
  2.  Step 4 is repeated 1000 times giving us 1000 bursts for evaluating th=
e synchronization



The only factor I can see is that we are using WBX radio modules, and we ar=
e uncertain if this is somehow a factor in what we are seeing.



Thanks in advance for feedback.



-Aiden

Also, how are you checking time alignment?  Are you actually looking at the=
 timestamps on the sample frames?





--_000_OL1P279MB0084B741E6D12D6226CA5D9386429OL1P279MB0084NORP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
This situation occurs with both our laboratory RB oscillator (it's also a G=
PSDO so provides a 1pps aligned to UTC and a 10 MHz output) and with the Et=
tus research GPSDO modules&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
purchased here:&nbsp;<a href=3D"https://www.ettus.com/all-products/gpsdo-ki=
t/" id=3D"LPlnkOWALinkPreview">https://www.ettus.com/all-products/gpsdo-kit=
/</a></div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1">
<div id=3D"LPBorder_GTaHR0cHM6Ly93d3cuZXR0dXMuY29tL2FsbC1wcm9kdWN0cy9ncHNkb=
y1raXQv" class=3D"LPBorder900146" style=3D"width: 100%; margin-top: 16px; m=
argin-bottom: 16px; position: relative; max-width: 800px; min-width: 424px;=
">
<table id=3D"LPContainer900146" role=3D"presentation" style=3D"padding: 12p=
x 36px 12px 12px; width: 100%; border-width: 1px; border-style: solid; bord=
er-color: rgb(200, 200, 200); border-radius: 2px;">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td>
<div id=3D"LPImageContainer900146" style=3D"position: relative; margin-righ=
t: 12px; height: 232.615px; overflow: hidden; width: 240px;">
<a target=3D"_blank" id=3D"LPImageAnchor900146" href=3D"https://www.ettus.c=
om/all-products/gpsdo-kit/"><img id=3D"LPThumbnailImageId900146" alt=3D"" h=
eight=3D"232" style=3D"display: block;" width=3D"240" src=3D"https://www.et=
tus.com/wp-content/uploads/2019/01/GPSDO_650x650-650x630.jpg"></a></div>
</td>
<td style=3D"width: 100%;">
<div id=3D"LPTitle900146" style=3D"font-size: 21px; font-weight: 300; margi=
n-right: 8px; font-family: wf_segoe-ui_light, &quot;Segoe UI Light&quot;, &=
quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Taho=
ma, Arial, sans-serif; margin-bottom: 12px;">
<a target=3D"_blank" id=3D"LPUrlAnchor900146" href=3D"https://www.ettus.com=
/all-products/gpsdo-kit/" style=3D"text-decoration: none; color: var(--them=
ePrimary);">GPSDO Kit for USRP N200/N210 | Ettus Research, a National Instr=
uments Brand | The leader in Software Defined
 Radio (SDR)</a></div>
<div id=3D"LPDescription900146" style=3D"font-size: 14px; max-height: 100px=
; color: rgb(102, 102, 102); font-family: wf_segoe-ui_normal, &quot;Segoe U=
I&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; margin-bottom: 12=
px; margin-right: 8px; overflow: hidden;">
USRP GPS-Disciplined Oscillator Kit . Includes GPS locked reference oscilla=
tor for USRP N200/N210 series (rev 4 and above).</div>
<div id=3D"LPMetadata900146" style=3D"font-size: 14px; font-weight: 400; co=
lor: rgb(166, 166, 166); font-family: wf_segoe-ui_normal, &quot;Segoe UI&qu=
ot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;">
www.ettus.com</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
The RB oscillator has a shorter PPS high duration than the USRP specifies a=
s the minimum duty cycle, but again since this is happening with both this =
timing source and the ettus supplied GPSDO sources, we think the fault is i=
n either the software or the USRP.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
-Aiden</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> 10 September 2022 16:50<br>
<b>To:</b> Aiden Morrison &lt;Aiden.Morrison@sintef.no&gt;; usrp-users@list=
s.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: N210 USRP synchronization performance =
4x worse than expected - suspect configuration problem</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 2022-09-10 06:06, Aiden Morrison wrote:=
<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hi Marcus,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
The timestamps returning from the radios are always in perfect agreement in=
 the metadata between the two USRPs. We are checking the synchronization by=
 doing a correlation on the captured sample blocks and observing the peak s=
hifting by 0-3 samples. If the front-ends
 were actually synchronized at the ~100 ns level, this would be +/-1. <br>
</div>
</blockquote>
To be clear, this is with your laboratory setup, with an Rb refclock, and s=
ome kind of shared 1PPS signal?<br>
<br>
What are the characteristics of your 1PPS signal in this case?&nbsp; Rise t=
ime, pulse duration, voltage, etc.<br>
<br>
<br>
<blockquote type=3D"cite">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Marcus D. Leech
<a class=3D"x_moz-txt-link-rfc2396E" href=3D"mailto:patchvonbraun@gmail.com=
">&lt;patchvonbraun@gmail.com&gt;</a><br>
<b>Sent:</b> 08 September 2022 16:47<br>
<b>To:</b> <a class=3D"x_moz-txt-link-abbreviated" href=3D"mailto:usrp-user=
s@lists.ettus.com">
usrp-users@lists.ettus.com</a> <a class=3D"x_moz-txt-link-rfc2396E" href=3D=
"mailto:usrp-users@lists.ettus.com">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] Re: N210 USRP synchronization performance 4x w=
orse than expected - suspect configuration problem</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_x_moz-cite-prefix">On 2022-09-08 04:54, Aiden Morrison via =
USRP-users wrote:<br>
</div>
<blockquote type=3D"cite">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
            medium)">
<style>
<!--
@font-face
	{font-family:"Cambria Math"}
@font-face
	{font-family:Calibri}
p.x_x_MsoNormal, li.x_x_MsoNormal, div.x_x_MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
a:link, span.x_x_MsoHyperlink
	{color:#0563C1;
	text-decoration:underline}
p.x_x_MsoListParagraph, li.x_x_MsoListParagraph, div.x_x_MsoListParagraph
	{margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif}
span.x_x_EmailStyle17
	{font-family:"Calibri",sans-serif;
	color:windowtext}
.x_x_MsoChpDefault
	{font-family:"Calibri",sans-serif}
ol
	{margin-bottom:0cm}
ul
	{margin-bottom:0cm}
-->
</style>
<div class=3D"x_x_WordSection1">
<p class=3D"x_x_MsoNormal">Hello,</p>
<p class=3D"x_x_MsoNormal">&nbsp;</p>
<p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">I am attempting to do synch=
ronized multi-site reception using USRP N210 radios. Our first attempt was =
to make use of 2x radios with ettus GPSDO modules installed, feeding the ra=
dios with a common PRN sequence and
 correlating the outputs to evaluate timing offset. The Ettus GPSDO radios =
say they provide +/-60ns timing accuracy, so even in the worst case where o=
ne of the radios goes to each side of the limit, at 10 MHz we would have sl=
ightly more than 1 sample of offset
 between them, but in testing we observed +0 to +3 samples of offset.</span=
></p>
<p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">&nbsp;</span></p>
<p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">To isolate the problem we r=
epeated the test with two different N210 radios fed by a common external 10=
 MHz and PPS signal from a GNSS disciplined Rubidium source, and observed e=
xactly the same +0 to +3 samples of
 shift between the captured sequences. Seeing the same error when using a c=
ommon clock indicates the problem is very likely to be in our test software=
.
</span></p>
<p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">&nbsp;</span></p>
<p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">In our software we follow <=
a href=3D"https://eur03.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F=
%2Ffiles.ettus.com%2Fmanual%2Fpage_sync.html&amp;data=3D05%7C01%7CAiden.Mor=
rison%40sintef.no%7Cb3cb5353e62b4b076f0408da933bde15%7Ce1f00f39604145b0b309=
e0210d8b32af%7C1%7C0%7C637984182589926129%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiM=
C4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000%7C%7C%7C&a=
mp;sdata=3Dl0fbP8XnZ5khyJaJC3zBR5%2B3CAlOVb4LHGrs%2BorfQN0%3D&amp;reserved=
=3D0" originalsrc=3D"https://files.ettus.com/manual/page_sync.html" shash=
=3D"MkKNyl+kATTEQew+NHtArocd/dBgTVuVx3Q0rGJu8l4l3OggfNlFh5x4EAIugKPnIiA0PV/=
7XAltsPe9FhHjIvs8ZwJz18iJH2FhhyQmT2MIFCrKu/XDCRJ01BVtyNIEVbpuouLy4BSBZRe4X3=
7UN0oHtm5oXLO41Rpmz0Hd66I=3D" originalsrc=3D"https://files.ettus.com/manual=
/page_sync.html" shash=3D"laHvTFzKZhk63fpSlND2gasulAo37lHrJaSeTNP69yuhPWGko=
+gyBBApi+QpXoknnfd+vLpujeqijbgdF4kNvGedRpwPg7iHIutaD436IO7Tx6KNyeYblej2XHnL=
Ee5gTlMhUKaLYADUJ48bpgnUdCN5jOWtChxZxA6+4CRULHg=3D" class=3D"x_x_moz-txt-li=
nk-freetext">
https://files.ettus.com/manual/page_sync.html</a> for synchronization:</spa=
n></p>
<ol type=3D"1" start=3D"1" style=3D"margin-top:0cm">
<li class=3D"x_x_MsoListParagraph" style=3D"margin-left:0cm"><span lang=3D"=
EN-GB">We create two USRP objects, one for each radio.</span></li></ol>
</div>
</blockquote>
I would repeat this experiment, but using a single multi-usrp object.&nbsp;=
 UHD will time-align samples across radios in the<br>
&nbsp; same multi-usrp container object.&nbsp; But not across objects.<br>
<br>
<blockquote type=3D"cite">
<div class=3D"x_x_WordSection1">
<ol type=3D"1" start=3D"1" style=3D"margin-top:0cm">
<li class=3D"x_x_MsoListParagraph" style=3D"margin-left:0cm"><span lang=3D"=
EN-GB"></span><br>
</li><li class=3D"x_x_MsoListParagraph" style=3D"margin-left:0cm"><span lan=
g=3D"EN-GB">We command the USRPs to use the external synchronization (radio=
s report back that they are synchronized to the GPSDO in the former configu=
ration)</span></li><li class=3D"x_x_MsoListParagraph" style=3D"margin-left:=
0cm"><span lang=3D"EN-GB">We use a common time in the time spec commands fo=
r each configuration change (e.g. setting LO frequencies)</span></li><li cl=
ass=3D"x_x_MsoListParagraph" style=3D"margin-left:0cm"><span lang=3D"EN-GB"=
>For each burst capture of 50,000 samples we set a time_spec for each USRP =
a long time in the future (1.0 seconds since the last capture)</span></li><=
/ol>
</div>
</blockquote>
To be clear you are requesting streaming start at the same time?<br>
<br>
<blockquote type=3D"cite">
<div class=3D"x_x_WordSection1">
<ol type=3D"1" start=3D"1" style=3D"margin-top:0cm">
<li class=3D"x_x_MsoListParagraph" style=3D"margin-left:0cm"><span lang=3D"=
EN-GB"></span><br>
</li><li class=3D"x_x_MsoListParagraph" style=3D"margin-left:0cm"><span lan=
g=3D"EN-GB">Step 4 is repeated 1000 times giving us 1000 bursts for evaluat=
ing the synchronization</span></li></ol>
<p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">&nbsp;</span></p>
<p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">The only factor I can see i=
s that we are using WBX radio modules, and we are uncertain if this is some=
how a factor in what we are seeing.</span></p>
<p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">&nbsp;</span></p>
<p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">Thanks in advance for feedb=
ack.</span></p>
<p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">&nbsp;</span></p>
<p class=3D"x_x_MsoNormal"><span lang=3D"EN-GB">-Aiden</span></p>
</div>
<br>
</blockquote>
Also, how are you checking time alignment?&nbsp; Are you actually looking a=
t the timestamps on the sample frames?<br>
<br>
<br>
<br>
</div>
</blockquote>
&nbsp;&nbsp;&nbsp; <br>
</div>
</body>
</html>

--_000_OL1P279MB0084B741E6D12D6226CA5D9386429OL1P279MB0084NORP_--

--===============7687187526876647421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7687187526876647421==--

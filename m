Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD468ACFFC
	for <lists+usrp-users@lfdr.de>; Mon, 22 Apr 2024 16:56:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BDA9C385978
	for <lists+usrp-users@lfdr.de>; Mon, 22 Apr 2024 10:56:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1713797791; bh=FpjIGjKFuXbskKDzUVNxLVaLrEn2g1vIq9Wd6qmOFMc=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=VqjrkPyNiPA+a4p8bWc9iLEkKMW7lGjji/b9wSQaAV6HAP8OqUrs5KrxbHmXRLSKB
	 SVYvSQR3A/i2KvAvqERUE/o/XihmruELvDXJl7rU8T3XJTHbVENSPCUt3zgZRimvPb
	 6PxX7CRsO7RhHYqRlAQVIYRCGh4igTYqIyZSbe9n+PqWwM73w+31Ekumetq1I/0KIi
	 TGAyaQ2LBtLwkQLw/RzNVeeojtYaj0xLGjT7sWyZobDOUDNG5ln3w9MMKbLt/bNg9M
	 6FssvdC6vYXaNVnz2JNt8nZU3uzLog/l8svG/YLWI90VpJJYz+8fW+TAzFdUrSGnX9
	 nQLUr71MF0DCA==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0095.outbound.protection.office365.us [23.103.208.95])
	by mm2.emwd.com (Postfix) with ESMTPS id 7D9F538563D
	for <usrp-users@lists.ettus.com>; Mon, 22 Apr 2024 10:56:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="k6ev1gFx";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=GpM15eBnORrpF5POftFAM3zwyr0Wv6ul8Omlxb/r/86nH2PqfuRw2GQgvTQvCEbMe6/C2L3KgSw188RdI26km5+oBUCWbLYzJHe1TK8aevatNUKOOWUQoRPGwNvpY9SQ7cKKd4WJfdS4huWWj77Z83MPRZmCY6xFypZ1rHLdfEpXrXIevcbdZrhchIGnwOcvdTlcInxrdIUsxpPaqd5Z773dMq7dcLkEmBSrma0bqDEkBuhuBqxUraG0+xQWAlD6suJ+r0QMWMWRQiiBw91zCkkiXi7ss5UuoxvclZxYEmM1pvF3PUqUJzfCAlJDOjJ/+rtfjzTBMKbiGhmdWgQXuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fpa5Cd3SC56dW+e7kwG5lrbcUURg0H9MS5cNVexHa4E=;
 b=jH2OXbav6Tk0QZswPGjS3m2bFkb9k+o4nFnFgDlOf6Ng9H4/ZPmqJwyv0DV7whiG57vJMqnqvBkui9EJtW4wGMDWgzbHoAbVcMzH8Iyr0yJxT3UUobjU8tbW7foJqRXXlBwT83NyYCGb39Kn0SY1uRbd3jx0VIwsvS+EJf5F8XRlZKHFXx1GRVhg6txW7rqsAFLi++HTBXHZC/hakZxV18pnZrE9HxTGR1XlAMbWm5+9D6n5xdUx7Ko69xU7fbMRFuLnE4IqR6gMQ8uekYRcxkTUZoFhvL3Bj4IGafThmPYjjr6oTuOSzZakUrWUNwLVaLmyhcq91Fr7hpTXQpOa9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fpa5Cd3SC56dW+e7kwG5lrbcUURg0H9MS5cNVexHa4E=;
 b=k6ev1gFxoj72xFfM1iVH0CFWpLEtBqrvqpY6CcPFuawMebI/5kWue55emuIAUmY8uH60kQsYngMEPS/pd1KXQBhtKFAiK2lzieyypIytxUymW6R4u4+YsvfhExJeCYcFCPxBrq0RgJD1xNE6AovuJtnXDRC598bBtsaIrYX2J6PWVONa3FM7y+bZ2vAzDmEYDywDnIBixGt68CGaN+0c8zJYOGezpKcPhTwQ8R3LjcRkoBPaalPPFUvqSMP5F0ewb8JLqE05MM0e6pjEuQ/gXqrgF/LSrbQzJJgmiEnrQYyFTBhP/eXkQ7ThRbTi6qnjNvK89VONFVTaRNUgMaaPcw==
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:168::14)
 by BN2P110MB1653.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Mon, 22 Apr
 2024 14:56:04 +0000
Received: from BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::55f8:31c:b09:841]) by BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
 ([fe80::55f8:31c:b09:841%5]) with mapi id 15.20.7472.044; Mon, 22 Apr 2024
 14:56:04 +0000
To: "edenmclaughlin123@gmail.com" <edenmclaughlin123@gmail.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] About Two E320's Synchronization using GPSDO's
Thread-Index: AQHalI7pnzHciXw0gkyhXD8IQmFitLF0XAng
Date: Mon, 22 Apr 2024 14:56:04 +0000
Message-ID: 
 <BN2P110MB1747CB3FD646EE5CC091A28AB712A@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM>
References: <zOJJ7EgLjbGE8l37A47H9XZKXDcRKXcbAYZ0Ql4IgBg@lists.ettus.com>
In-Reply-To: <zOJJ7EgLjbGE8l37A47H9XZKXDcRKXcbAYZ0Ql4IgBg@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB1747:EE_|BN2P110MB1653:EE_
x-ms-office365-filtering-correlation-id: f8f060df-cafc-411b-74ef-08dc62dc5542
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?1Ag79aLrP8ze6b5dkLAYAYArWfrSCS547E2muhEUrGVMSP6iecf+iOt8Rbcq?=
 =?us-ascii?Q?0aIBWzqQK+uFMmH1rfywFY2laVy53KfgCzKS5qDR9G87GiO9+oIikDlo+Fcs?=
 =?us-ascii?Q?2hzCRa3fiH9iIZmXMcbRY0jdgP+UCksc7/3odPRx80im6+5JIePrIFwD6dn+?=
 =?us-ascii?Q?EqxdEfklmruQKGRheN1BX6RVfLiF5xybUl3ybOKhArRnSxP0N8TcdQx4rEFt?=
 =?us-ascii?Q?PLosoz9/esQTYVFLiOf1vCTQsqxpAELueVRBls+t/7+Q9r0t9KZWMmJwXNLF?=
 =?us-ascii?Q?F/XR5vRuwLgXyjizcE3wTIXe49EVbrkWuvi3Meuxy24Eu3HybJGoRxXbzGmy?=
 =?us-ascii?Q?G3dsVoKKr+gmCy/5vbzrkRZZf12cZiwBP2zoFod18T8zPcRZCrQ5hWtGtzdz?=
 =?us-ascii?Q?rwAjouvX+V4a4Y10FXouHqtQ/7EtMLnyqguHL69SZynEKAGhHo5sq5yjeJMR?=
 =?us-ascii?Q?bCD1ztZgNl6Djk6qL1KB/1JrZi8ZPhNxU1eGmQ9VMoOtcraezsTolN4h896Z?=
 =?us-ascii?Q?qZgsF5Vb8axOkJMB+ZVPk16G2N9bb66VyoEJvjWfX6NBulJH8/QZxxVIsZCI?=
 =?us-ascii?Q?hDtyTPJQqvYo+8nLe/iXfi/ncnamcqupmFomZXUtisY9+sY/XuboQX8uhVQ9?=
 =?us-ascii?Q?fK0UGJCjlolRrSSSL6vMv9jVMQhPAmPK7dptEdUU7n3umFOWdvQzTzHKotF9?=
 =?us-ascii?Q?nTfNN7fcewDghtL2ftgvonp4icl4nZki/ng3rjoe5uWq2nMGsbl45NBrxXG3?=
 =?us-ascii?Q?gQxjdRnkfgHgKwQJPcKsMKZdS9mGCkjeQH+eKLKyZbJLrMW7jP/ouUKLp0GM?=
 =?us-ascii?Q?XERXM+LLH3WoV8IcoFI/y2z1BZJ1EPX4deRjpQKVufl5gHf11p6GKc0tf+gv?=
 =?us-ascii?Q?gVptg7vnA2vQXVuLCkiZ+MxUrbaiYHp2+HKqZNQh1EJ3HJsk4TBd3/T2CzOo?=
 =?us-ascii?Q?MYi/SQSfsgYxDLmw5SuaA3udPTIV1PwMFQlMb2ODIOCZWo3q8c7NpIq6IuGl?=
 =?us-ascii?Q?CnF9h7mxx5jdaIJFL0QPXO2HZtFirZ8kPKAgxnVDumQAmJ+NDG3muKdBp+xZ?=
 =?us-ascii?Q?y5NWkr3Lsmfxz44Kl2kUeBpb+kw1pTXRBlJlq01i9NvytjAppsKSUDZ+uF9j?=
 =?us-ascii?Q?xOiJQ5K8m6DcT4AJrb0D12bxSzv0lOGh1qP/MWtC+QajJ3wm4nAfQCvIbM1r?=
 =?us-ascii?Q?pX16aGNa6DAYrLHY0tZjpmz17vBLlgYhUll8ZCRVvRuMr406PVCxtfPQqnCk?=
 =?us-ascii?Q?aRfpTW/dxHR3o+m5TEJw+Zp/kABTne34zKBkyyUYRA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(41320700004)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?a2zxfM6eHOysLyI7nM3yqAIWtzjv2vdZHMU6AfGvwdDtbxG1GyTdpFA6NIQ5?=
 =?us-ascii?Q?zQzPJtzIyoOgiWv+cFYLIJuzDK2E+SvukE0hf0dQD0bbXU77lVATj8Hc6Q5Z?=
 =?us-ascii?Q?DXxcMholnARpgOBaczpIckg7v/KgxzRzophv6BWadNYkKW6+MRSGLnw1ZeuG?=
 =?us-ascii?Q?ega45rMScJYBXsBqszuNu6Q4Vvx0ALGQNAnBfJWOKHs851Qllw5XmyYZhpoM?=
 =?us-ascii?Q?Dbh0B07+O6xgBwYF1GEH0dSag33q/XIl+uwjmU53GN2ag8zKpRRRbChPjyHJ?=
 =?us-ascii?Q?POMhHrVQMtEj6z1nSibWKE07MOKOSOcJS18pAH5wADCCzQhzWUWGzzEckNac?=
 =?us-ascii?Q?kCSLXAUVWi95oF6Z3+/DyvphcKvtGMMxwM6IDXffnzY/e/Yv8H9rU5fXqdLV?=
 =?us-ascii?Q?/a1ReLuHejQEHtyi5AP9ELmmi6vM+/D+Spxx03DDlrBgL2EYQKdRhh4OJiIh?=
 =?us-ascii?Q?psscxF6Z+dhM5zd50pN2NKwqzIDz/k6L7xCkkvohIN5TmTF99Dm6/64BJ5tY?=
 =?us-ascii?Q?z2n8hC30OulHlW7JfJWlqnsYBCmPics8pJgr7zOKrCjN26qeDeS3aTMeGd8Z?=
 =?us-ascii?Q?htZeGbk+8aS80Yh26yImYbgHj2y1NFLyMUkUccgqD3WZsUWr6m/iPjnUK3wS?=
 =?us-ascii?Q?y1F58JmSjmCScyZkkXzOY+iXTp0MD03iEmJTBZ1g2zvc1G5G9imGcj2gqEOM?=
 =?us-ascii?Q?6vsG9NWfombVtuaa5+T3DzV85fjZCb1ndMENnb2i340QdVyuVHrL8sBWwsgH?=
 =?us-ascii?Q?QvZQRnZYV1MrM6FoDc+NDZCRd2IbmftH148z4jiHZupIJzwihHWFp4W6BApF?=
 =?us-ascii?Q?tIOvpQ0SVBk+5u12q7D943H3guaPJSnpoRIVwKWJL2DCSKh7MCgPBAkLhE+o?=
 =?us-ascii?Q?hZAlfto8EnDGAFNLUJy/QzCA9Z2IvCA5q2yGYVH3tzh7f22y+i5bUss3L8uO?=
 =?us-ascii?Q?FZBCTEjUf6c6dXKdemTiMqvkD5vcY0J/nwSxp1Z+yf7UYHGWiPI/UqMueUv8?=
 =?us-ascii?Q?bMxcRdgyyMRZcrY3OCRwSPM29EoMngasm7NbbGZviec5IoMAh0NQbyP2xMII?=
 =?us-ascii?Q?8j5YCseqBKDQXdHrwJmWYO1gsOoRe1gbdRilFS8Rs7oUTHgHGRwsNcvZMsl7?=
 =?us-ascii?Q?ONFXugQYWKWcqgKOhWHAtJDy7woZCY8/qo1nBa27Ea+t58/n5NgjzLiMm0Kz?=
 =?us-ascii?Q?XVGx0Zqs5xGmCx+rX22LMiXEYUxoCsk0bs/Xuf+ZhSToHPFlRT/RVU8t9mXa?=
 =?us-ascii?Q?AmwnB67QTM/FVfiv+LVrUeHjAL51z+t3L3TpofDCHllch4Bc18OLqUtpppNE?=
 =?us-ascii?Q?/kdqN/YF2V4kI9/NC521hsCctUuObI9y3l8I365h6P8SVjr4jlPyOsV1ekmt?=
 =?us-ascii?Q?YqrVjsCIpWg3SXlxWaCKX/UZZqitTnCQ6rgLZACgZ8w/MuSUSTEf/XJRds+K?=
 =?us-ascii?Q?7trG1yhfiaM1LhUtycTp2HoZobQEBM9GikrEAvLWtP5oqqbX/AzDrLdUCnt0?=
 =?us-ascii?Q?CaFYTM0zR5HgmkVWjUkpsCQx3Z8jYclIhHgchmxcZoY+yuFaCZHz79jf7TGl?=
 =?us-ascii?Q?KlZBmm6ZDYiY4fv93e2bcB4aJfD5KSgNkyr1H4b8w5MPlYCm3Q7Dhy5U5gq0?=
 =?us-ascii?Q?bw=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f8f060df-cafc-411b-74ef-08dc62dc5542
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2024 14:56:04.2315
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1653
Message-ID-Hash: ERDGFSBASGKQ5KUAKUKD4MSOSVIB2MC3
X-Message-ID-Hash: ERDGFSBASGKQ5KUAKUKD4MSOSVIB2MC3
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: About Two E320's Synchronization using GPSDO's
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QVBNTKNP7WAKFC3RVALJFCJCIIH6BF3L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: David Raeman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Raeman <david@SynopticEngineering.com>
Content-Type: multipart/mixed; boundary="===============0190088295186098009=="

--===============0190088295186098009==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB1747CB3FD646EE5CC091A28AB712ABN2P110MB1747NAMP_"

--_000_BN2P110MB1747CB3FD646EE5CC091A28AB712ABN2P110MB1747NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am also using multiple distributed E320s for an application that uses the=
 integrated GPSDO to have a common sense of time for precise TOA estimation=
. I don't have the measurements at my fingertips at the moment, but I found=
 that synchronization was substantially better using a high-quality externa=
l clock/time source (e.g. Octoclock or a good OCXO), compared to using the =
integrated GPSDO.

The synchronization performance of the integrated GPSDO improved if I let t=
he radios sit for quite a while. For example, if two radios had GPS lock fo=
r 5 minutes before running an experiment, relative carrier drift would be m=
easurably worse than if they were allowed to sit with GPS lock for an hour.=
 I believe that once the GPS receiver acquires time, the 10 MHz reference c=
onvergence occurs very slowly.

In the case of a using an external clock, to get good phase performance I a=
lso had to power down the internal GPSDO. The RF switch used to select betw=
een the two sources seems to introduce some coupling/interference when both=
 sources are present at the switch inputs. My old mailing list inquiry abou=
t the problem is here<https://lists.ettus.com/empathy/thread/XK7DJMNXTZVTKH=
GVAPZFJL3NZEF73XME>. I pushed a patch to Ettus, incorporated into UHD 4.4, =
which allows you to power off the integrated GPSDO by passing "enable_gps=
=3D0" in your UHD session args.

Interestingly, in that thread somebody mentions having a similar issue on a=
 B210 device if the GPSDO add-on module is installed, which doesn't seem to=
 have been an issue with your prior results.

I can try to follow-up with some measurements from our experiments, and I'd=
 appreciate any additional insights you might find as well since this is st=
ill an active project for me.

-David

From: edenmclaughlin123@gmail.com <edenmclaughlin123@gmail.com>
Sent: Monday, April 22, 2024 4:24 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] About Two E320's Synchronization using GPSDO's


We have a setup with two USRP devices, attempting to acquire signals' time =
of arrival (TOA) with matched filters. We can observe stable and accurate T=
OA using USB-driven devices (i.e., B210's) with a single external PPS and 1=
0MHz feed.
However, when testing the design with two E320's using their integrated GPS=
DO as the clock and timing source, we could not achieve a steady TOA anywhe=
re close to the clock performance specified here<https://www.ettus.com/wp-c=
ontent/uploads/2019/01/USRP_E320_Datasheet.pdf>. A constant drift over time=
 (i.e., +50 ns over ~120 seconds) was observed on one E320 device with resp=
ect to the other for each run. We are almost certain that neither of the de=
vices is damaged (they are fresh out of the box), also we are aware of this=
<https://lists.ettus.com/empathy/thread/EDXCIKFY5LW7IEQN2JZOGXGWNCBELU3F?ha=
sh=3D4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK#4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK> iss=
ue.

The setup includes one source signal symmetrically fed to the devices from =
the same RF channels. The E320 devices share the same GPS antenna, which is=
 an externally fed active GPS antenna while the E320 GPSDO's ports are DC b=
locked.

We are yet to try:

  1.  Observing the behavior with another pair of E320 devices.
  2.  Feeding the source signal from the other RF ends.
  3.  Synchronizing the E320's with an external clock and timer, as we have=
 done with the B210 devices.

We are wondering if there are any software tricks applicable specific to th=
e E320 devices that we should be employing. Any help will be appreciated!

--_000_BN2P110MB1747CB3FD646EE5CC091A28AB712ABN2P110MB1747NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
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
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle21
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:891581860;
	mso-list-template-ids:-662690332;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am also using multiple distributed E320s for an ap=
plication that uses the integrated GPSDO to have a common sense of time for=
 precise TOA estimation. I don&#8217;t have the measurements at my fingerti=
ps at the moment, but I found that synchronization
 was substantially better using a high-quality external clock/time source (=
e.g. Octoclock or a good OCXO), compared to using the integrated GPSDO.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The synchronization performance of the integrated GP=
SDO improved if I let the radios sit for quite a while. For example, if two=
 radios had GPS lock for 5 minutes before running an experiment, relative c=
arrier drift would be measurably worse
 than if they were allowed to sit with GPS lock for an hour. I believe that=
 once the GPS receiver acquires time, the 10 MHz reference convergence occu=
rs very slowly.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In the case of a using an external clock, to get goo=
d phase performance I also had to power down the internal GPSDO. The RF swi=
tch used to select between the two sources seems to introduce some coupling=
/interference when both sources are
 present at the switch inputs. My old mailing list inquiry about the proble=
m is <a href=3D"https://lists.ettus.com/empathy/thread/XK7DJMNXTZVTKHGVAPZF=
JL3NZEF73XME">
here</a>. I pushed a patch to Ettus, incorporated into UHD 4.4, which allow=
s you to power off the integrated GPSDO by passing &#8220;enable_gps=3D0&#8=
221; in your UHD session args.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Interestingly, in that thread somebody mentions havi=
ng a similar issue on a B210 device if the GPSDO add-on module is installed=
, which doesn&#8217;t seem to have been an issue with your prior results.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I can try to follow-up with some measurements from o=
ur experiments, and I&#8217;d appreciate any additional insights you might =
find as well since this is still an active project for me.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-David<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> edenmclaughlin123@gmail.com &lt;edenmcl=
aughlin123@gmail.com&gt;
<br>
<b>Sent:</b> Monday, April 22, 2024 4:24 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] About Two E320's Synchronization using GPSDO's=
<o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>We have a setup with two USRP devices, attempting to acquire signals' ti=
me of arrival (TOA) with matched filters. We can observe stable and accurat=
e TOA using USB-driven devices (i.e., B210's) with a single external PPS an=
d 10MHz feed.<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">However, when testing the design with two E320's using their integ=
rated GPSDO as the clock and timing source, we could not achieve a steady T=
OA anywhere close to the clock performance
 specified <a href=3D"https://www.ettus.com/wp-content/uploads/2019/01/USRP=
_E320_Datasheet.pdf" title=3D"https://www.ettus.com/wp-content/uploads/2019=
/01/USRP_E320_Datasheet.pdf">
here</a>. A constant drift over time (i.e., +50 ns over ~120 seconds) was o=
bserved on one E320 device with respect to the other for each run. We are a=
lmost certain that neither of the devices is damaged (they are fresh out of=
 the box), also we are aware of
<a href=3D"https://lists.ettus.com/empathy/thread/EDXCIKFY5LW7IEQN2JZOGXGWN=
CBELU3F?hash=3D4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK#4KGAPCNGJL6WXKC4IBZBITVNSFT=
DXXRK" title=3D"https://lists.ettus.com/empathy/thread/EDXCIKFY5LW7IEQN2JZO=
GXGWNCBELU3F?hash=3D4KGAPCNGJL6WXKC4IBZBITVNSFTDXXRK#4KGAPCNGJL6WXKC4IBZBIT=
VNSFTDXXRK">
this</a> issue.<o:p></o:p></p>
<p>The setup includes one source signal symmetrically fed to the devices fr=
om the same RF channels. The E320 devices share the same GPS antenna, which=
 is an externally fed active GPS antenna while the E320 GPSDO's ports are D=
C blocked.<o:p></o:p></p>
<p>We are yet to try:<o:p></o:p></p>
<ol start=3D"1" type=3D"1">
<li style=3D"mso-list:l0 level1 lfo1">Observing the behavior with another p=
air of E320 devices.<o:p></o:p></li><li style=3D"mso-list:l0 level1 lfo1">F=
eeding the source signal from the other RF ends.<o:p></o:p></li><li style=
=3D"mso-list:l0 level1 lfo1">Synchronizing the E320's with an external cloc=
k and timer, as we have done with the B210 devices.<o:p></o:p></li></ol>
<p>We are wondering if there are any software tricks applicable specific to=
 the E320 devices that we should be employing. Any help will be appreciated=
!<o:p></o:p></p>
</div>
</body>
</html>

--_000_BN2P110MB1747CB3FD646EE5CC091A28AB712ABN2P110MB1747NAMP_--

--===============0190088295186098009==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0190088295186098009==--

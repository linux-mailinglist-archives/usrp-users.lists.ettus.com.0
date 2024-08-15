Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A82DA9537DF
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 18:04:18 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83F543856BB
	for <lists+usrp-users@lfdr.de>; Thu, 15 Aug 2024 12:04:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1723737857; bh=6KgnS7yZ04NTVpB1LkH8BfT19d97jLL1W8/00GVPAKY=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=itiDam7hnd6AaKUdpzuwrUQ4++UZtmt6qvT4iVPfX7mr7jUtxDWBrj3xSl+OrWSer
	 vkSRPoC9VPoBd7GxJyZaTowQhndKx82d8nfO5URq1f8395jnso6+/WecFMmEM+okGM
	 At0dnljYwXZV95x0q2PVnRi225gNoi7zIULzr7izQ1nZbHzMXVFCLMSX6NbdOcrd1r
	 sfeXp1/5H4v4wm4T2OJxf3+Zw8Vf9D713rOBknzDaqrvirtYP0Wj29bp1Nn/uc0Kdq
	 S3pKY6FQS/V0SuxGb/wSnajYRfiG24j0YPKEyQOiEw/nBqzgZDr9V5DQIzLpSbG4Gi
	 6vIzAo6wpkCvA==
Received: from MX2.LL.MIT.EDU (mx2.ll.mit.edu [129.55.12.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 56A2A3854D4
	for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 12:03:30 -0400 (EDT)
Received: from LLEX2019-03.mitll.ad.local (llex2019-03.mitll.ad.local [172.25.4.99] (may be forged))
	by MX2.LL.MIT.EDU (8.17.1.19/8.17.1.19) with ESMTPS id 47FG1ZIN152163
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
	for <usrp-users@lists.ettus.com>; Thu, 15 Aug 2024 12:01:35 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=gcJYvAsFAEiH+fOUbU+UGnx8pgMj5E3KNCDpNkEUHa+Y6R6xVRhIES0Pz+XwBYdiLo3BmLaWTm1M29udrLVUZvepktxquxRuw6jXXSLIg/QFS9nQLMW+1to0UFJk5DPJlRbTSNPTLNf6SpSl00bKDw6EoZHkib0SHQ6Kkcd91RDueenZvlPBOb96gNrqJ8EC1/7ADw6dfFWR39pF4+2N7PXy/mw0Mpml2Z7ZZ3sNVn3mlQF0fnXFgA/6Ue+07rF9/IzZWGDWgCRa5uOWOiarhovjo7mrElMbwN5Ky8w++ip7xEd0zE3sNHJ3bkXacBQ6aUknnYxjDvH6ztQQYwgd5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KYtYo6QCRmMlRkeaJ4Nz9EWIByQxcoC5ZTA9W4fdp5E=;
 b=byn7fedcKZtNzkzy/1rO8jNUW92NvMt5CDynvxnm0XqFpMwU7RZ1EoSTYC7u8C8sQdcqaduey6iZ4UMtevKOJtx7XJrnIPq25ZV3dL9o7MdNT1VmNOOvMBmDEijLKLDBKPiUnyB8Obup5HvHV1wjpmagZ9FpdPME/R4dJLUNGUo+jL9rsi3YI1fq440uAso6JHmXMofc0+0lbOwqkLRwQbaR/zTXt+VKIkPDB335LJkIgVmtKS/oTpauvxx8m/HxKv6yFBWqCauZ3Rem/zYFBJBzFFX+4OtNUISFlz8po1809r3IYKaDfd6F4S/u856R5Bem+6tqki0LzmHC2WdKHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ll.mit.edu; dmarc=pass action=none header.from=ll.mit.edu;
 dkim=pass header.d=ll.mit.edu; arc=none
From: "Chapman, Christian - 0664 - MITLL" <Christian.Chapman@ll.mit.edu>
To: "Chapman, Christian - 0664 - MITLL" <Christian.Chapman@ll.mit.edu>,
        "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Transmitting on both X300 channels without streaming samples
Thread-Index: AdqR0XUuU7CBF8e5QPe+8RY7OngB/xdWnCYw
Date: Thu, 15 Aug 2024 16:03:26 +0000
Message-ID: <PH1P110MB1236FFD2E97D6308907C780FD980A@PH1P110MB1236.NAMP110.PROD.OUTLOOK.COM>
References: <PH1P110MB123645553A1002F6C034706FD90EA@PH1P110MB1236.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <PH1P110MB123645553A1002F6C034706FD90EA@PH1P110MB1236.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1236:EE_|PH1P110MB1411:EE_
x-ms-office365-filtering-correlation-id: 4968fc1a-59d4-48c9-8c73-08dcbd43cc63
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ZzUNl+o8wEegGtZIdWeYtx+kTXZk8h3+ANG+hbowTUTDwqCajkxaLcmmIZDL?=
 =?us-ascii?Q?zQUW8Iom5USsBbLqqv84/l2LizJNY1T17CeG1f0sg2HmDneT/53V2sMjNPNK?=
 =?us-ascii?Q?wpOZ8adaOOuu/ueoJLVB3dqj3LLWiZyn5bRLotqsubHhbbjHBoX9Rn/4yKPK?=
 =?us-ascii?Q?AYrCp2d1/U+YYOH6DaRHVB8TPWN3KxzgJq9Ze/toc5BEGIhTflUMHMc3Ro1P?=
 =?us-ascii?Q?kXQ9id9kERFhYbnaVMTECjqycm5pyfcWLhdZD4kxdJ1BeMOiz32BAEVJNzcs?=
 =?us-ascii?Q?JT5ZKcQDVT1F7r973evoGHXd/3dJX6irDG7XjhsY9e/j1UF4kSo3PeGBHPXI?=
 =?us-ascii?Q?kkoF5R1lpnYjJ9UrtWjd0y/qloWd2qkfBFAeeD3YNP9K/mK4aGnU1+vLAGuV?=
 =?us-ascii?Q?WB7tp1FbexumbBspUR2QPekOlX4/C1n5e+PszvVdiOeB41EUsHMS+tY1cjDm?=
 =?us-ascii?Q?4P6GlC/yQ2f6FxLK8JCDOBqOz7eAwu+CGAXP9CZYudv3SriQthJFRrBllTk9?=
 =?us-ascii?Q?cRq1EZCVARtlSuyRDp7u4J+y4jS4PW/80aT53PtAYXAdo0RSVLZmlfhFypHR?=
 =?us-ascii?Q?qJBCsHNCTUTTjrS2OsmQCq7vB5pYqddIdAlGe+Ln3yrJgPNG96PFKnTnrDLU?=
 =?us-ascii?Q?aFkJ1ZsPqrgtvfpZH3lKCIUGiP0xonhBthupfzq4fdq3InQCYu1QUkTwQmEY?=
 =?us-ascii?Q?HyOINvH/y+Lf8DUipHCu1/bKIgvI2foaXVYoBCE9FAQe/o1LrGOuncw3DOFU?=
 =?us-ascii?Q?K1W4vKl8r/SXb+6F1qhixnOzOVW5yYdCdZU75aJjHMrWHTcdor9gn0LO5JxQ?=
 =?us-ascii?Q?VW3Hcb9aC02oQSFeBpuHp6zpfwIXG1BWyBGclUMyl/YlN5GLkLcnRNjl2/NE?=
 =?us-ascii?Q?NBBnXN5c0W6Yx+Ty2bMH4PJrJh8P71TFugILdrUhJ/X7cMC1ihCc8vg8rVnv?=
 =?us-ascii?Q?8CQytwsS669YLCtX47tWv2HPz23OGezm+hPjWIcLwCaXU2pnpdjsr3r9rsfu?=
 =?us-ascii?Q?Vn8Yg25xN66rUL54S+F28UScjZPCKNLaexGsUjrwdzhVg2U2tM0cW1zvYY9K?=
 =?us-ascii?Q?IalN4enKcffpnnjl9TSGCFooTo8J/t3Ip+Pbn8+Lsot5lFHrpdnvux0pAAX2?=
 =?us-ascii?Q?Vsc6t3pS7NMdaqmAgOzEyyyaJELc/cylx5XJRVhV/RdgU1jQzx8h6ENr9UjZ?=
 =?us-ascii?Q?NqdG3G2qS33/qPhh5FuSCJJeIvBL69LeIOTkQR/SHnwxrsmgkFt4gMckNNOG?=
 =?us-ascii?Q?9yiXOUwJnQhAbY5wk0OV1xDfpLy1SX4RVBFJr3UBLZFWzTdSl22dwggLmiOL?=
 =?us-ascii?Q?oytVH6LkG9fF4iTYOOB5Q69RpvnKUuzxqhNBG4jWblHxPNqpEbnxxs3l7KIt?=
 =?us-ascii?Q?kfAs+Tg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1236.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5jED1In6OTiky8yuLGCkPInj3hXRK+Okoa69WBzn6r4em8K243wUHe8vRP+n?=
 =?us-ascii?Q?NIkZsR/PTkMADug2v5sJKNOi+M1l3oPe9FB5pW5fWmCAc8wrIGcdv7uLRkmY?=
 =?us-ascii?Q?14vJb9hQFRIrLa5/GB64+Mw46iMh7yAN8W72FkdDyZgegRT/fj0admjaHnLf?=
 =?us-ascii?Q?eAuip6mbtmpNIT9RXCTCewBc2M/k7uHLnsguigv30qbrwh3EeH5nwQ0C5WUG?=
 =?us-ascii?Q?bYRSyQwMeRgYlsIbR2H8aa4qCUQVhIMapcf0MQ4fmOVlIt/GEoGAuJSctVYW?=
 =?us-ascii?Q?pPPyXKxOg4Pfs6JvuYoK+0DQxWVPMANFQ/IuLLkv11+lrf+4gQ0HXLuyE9EW?=
 =?us-ascii?Q?WohjwGhcbzkwVC7awfPEIOyVkIXKRofFBXFtsFMMCmUyxHsw4wV3+6BoZTF5?=
 =?us-ascii?Q?+mDRWx7ypwGBoOuARdTuat6lhh+VFpAP6hXSZ2nGXvZJsDs1AfkWYg2I0q2E?=
 =?us-ascii?Q?RZyz0FlpWax25ODsDRc7yCg8njmqSiA5hMKaFRYsHUg4/e8uLQJbYqT7+5wU?=
 =?us-ascii?Q?uAbemJ+gtMeuiFWyq3Cn7WYBls3H8V2ycEDJ0KNdkG3D94COP1KEO0ky+75p?=
 =?us-ascii?Q?UcSLPZD6pV13PHlPcoHBYx0nrpscKSZPAf0II7Rmp06fgZVzF7hVTJRYQ1hc?=
 =?us-ascii?Q?uylQeYInJsDyTJid7I3YAYrJBUhnMIlh+6poe0iEbKoeOurhArCFKjRP03qf?=
 =?us-ascii?Q?Xe6GsrHNYPHpqspcys7JdA+5D5kdnqTSa6Ja4f7YOPbyfCHl/nn+RuraYVPU?=
 =?us-ascii?Q?DbxeOXcsPgocSg+nk+pJBg3BGQDoI0Q/EfVPWMw7AwSQU7xO3R+I40GbaRlV?=
 =?us-ascii?Q?9T8E4M4DnuuS5FwqCshAOp+Klgn7BxdU6Xnbd6e228YPyyE3AGdBNmF47cxj?=
 =?us-ascii?Q?K4eV9UEplxG5tE+Ig9pFW5Wrgyojf127TCminMVzE/rWJKiWNzgHL9VlAO0I?=
 =?us-ascii?Q?dWk4e0W138Q/Dn3iSrlXV0DDuEzA/IwrB8wWbwbScGD8uFQ4hHwPWBOZqv+j?=
 =?us-ascii?Q?1PDiPJ6Pf5H02Z0iYYvSR5D4MoxMe/TfK9Dm7bCIzEOR0XDhREIkjdrSQ6YI?=
 =?us-ascii?Q?/yo3udF+r8vM4mS2yg+Or7qQsTFo80J3EA4P0Q2EH/u/npFyHkv9Hg8+meoL?=
 =?us-ascii?Q?YzLwQY7+ofRCcy+Zfxz3FI07A9XLF1/jFXDK5iMruGiQz/ZL8kMl0Zfia+w4?=
 =?us-ascii?Q?Lg7Tp1ZBnMS1bXOF4o/tDAwQfW8ybOHWO3dIn1cCGONbHr09auGu71fO1m5b?=
 =?us-ascii?Q?mRcM4xSXhZ57+tOqgaENZ105Qbnvgx/soVRxjHEwHWrVu1JcgexyNODtcMiz?=
 =?us-ascii?Q?jQtWumKA5QaXHoVE0c/EZLJeOBhMoCXL4PDOkA4mbLuLMIz3rs6tC7k35sSM?=
 =?us-ascii?Q?0Vca9M/iSOarzBHVOui/LsJT8DbHDppzLysBREs9j9/IGN/yZZMFfL8zpDAy?=
 =?us-ascii?Q?1NTjMWc89r9J3nSjRka7FHKwxJvnn3BL06aQ07eDwE7sDcfLoeOyo2lc+K2k?=
 =?us-ascii?Q?0d0aqKVlrx1e5XrXoVvGjcUTGjbqDcsN+kgo?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1236.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4968fc1a-59d4-48c9-8c73-08dcbd43cc63
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2024 16:03:26.8773
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 83d1efe3-698e-4819-911b-0a8fbe79d01c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1411
X-Proofpoint-GUID: gTVGDBJdb99zD6GpVIJF3D0hkmKSAbyV
X-Proofpoint-ORIG-GUID: gTVGDBJdb99zD6GpVIJF3D0hkmKSAbyV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-15_08,2024-08-15_01,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxscore=0
 adultscore=0 phishscore=0 mlxlogscore=666 suspectscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2407110000 definitions=main-2408150116
Message-ID-Hash: 6ELKRUIB4FJPGFE7D34WJAK5QXEAEQHS
X-Message-ID-Hash: 6ELKRUIB4FJPGFE7D34WJAK5QXEAEQHS
X-MailFrom: prvs=0957a1fa2f=christian.chapman@ll.mit.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Transmitting on both X300 channels without streaming samples
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6ELKRUIB4FJPGFE7D34WJAK5QXEAEQHS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4386639838518362129=="

--===============4386639838518362129==
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=2.16.840.1.101.3.4.2.1;
	boundary="----=_NextPart_000_0029_01DAEF0B.167228F0"

------=_NextPart_000_0029_01DAEF0B.167228F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi everyone, I'm glad to report this can indeed be accomplished at full
samples rate on each channel with stock UHD 4.6.0.0, with code similar to
what's documented here (I did it in python):

https://kb.ettus.com/Using_the_RFNoC_Replay_Block_in_UHD_4 
 
One just does the same setup on two replay block channels. The sample rates
can even be different.

Thanks Maximilian, Lars and everyone
----

From: Chapman, Christian - 0664 - MITLL <Christian.Chapman@ll.mit.edu> 
Sent: Thursday, April 18, 2024 5:08 PM
To: usrp-users@lists.ettus.com
Subject: [EXT] [USRP-users] Transmitting on both X300 channels without
streaming samples

Hi, I'm interested in using an X300 to repeat several 100 ms of >100 MHz
samples, a different signal on both channels, and my host computer can't
stream samples into the X300 continuously.
It would seem the RFNoC replay block could serve this need, but according to
a thread from Thomas Harder on a very similar question[1] some firmware
change is required. 
Thomas seems to have settled on the approach I can't use: his samples are
streamed continuously via 10G Ethernet.
If I understand properly, Rob Kossler's txarb block can serve this need, but
I can't find it published it anywhere. Do I have to recreate something
similar to do what I need?
More broadly, has anyone done this and/or have simpler solutions appeared in
the last few years?

[1]: transmitting on two channels with replay block, msg09472

Thank you,
Christian

------=_NextPart_000_0029_01DAEF0B.167228F0
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCCF30w
ggOKMIICcqADAgECAgEBMA0GCSqGSIb3DQEBCwUAMFYxCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZN
SVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExMIFJvb3Qg
Q0EtMjAeFw0xNjA0MjAxMjAwMDBaFw0zNTA0MTkyMzU5NTlaMFYxCzAJBgNVBAYTAlVTMR8wHQYD
VQQKExZNSVQgTGluY29sbiBMYWJvcmF0b3J5MQwwCgYDVQQLEwNQS0kxGDAWBgNVBAMTD01JVExM
IFJvb3QgQ0EtMjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL91qARBjjibZuLnL2n+
ryiBT7PMGrQnekpsKv13kTaOz94zyMTT8Bd/fERg1JjySFwO4ncw+o9KKRSFvpC6mMnvXu/PD1dH
amiZV/PNfHzQ20hPvAeoYnqik0e1XziO+FFUBFClURbkRcOrlWLr4HsNk4/wtnRHnt+3q7kJeZx5
G1djrFp2ezvsrfnrXeh0XGly5T/avFioANwe75DlSDAiqALmlo/gRauyvljZIsovynTh/SZjqW8k
SuI3AO8Wy5xfCRVEjYOXOGNQSaxWmbZAnhujZvaeduBpZZERcz4KY/FYnFfgCvva2NO3U8dNpGKL
U5yrstGMQQMLFF8QEBMCAwEAAaNjMGEwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQU/8nJZUxT
gPGpDDwhroIqx+74MvswHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMA0GCSqGSIb3DQEBCwUAA4IBAQB6mHxH/9yeWjCoZWEND51AGzAfI2Uq/fx743zhdNHK
xVAn0q6hvCUMKPkv4quuoHKethRICdH0JA4FYOpvgthE6NS6FoksYWAn3EiEBApY5V8EfMBUmshf
NtkuvSKrx4XauHefI1OoGIurLI1OL8LL7FS0SSpP5vwoP8PIFumBzOWoQQ+v+QnHpdnyO6EprJDv
fdfqLawtdWHw8Ahb8+wJtK/ivYlYUlrWuIZiLldGAYmtO3mSkjtNiz4EPGDs95LtGLfpofFVkSrs
dgnGIzKZPlg1dATKe+bam+qagRZHCrxAV6sYPvPhv7po4ouB9HOZLyYWkMspG5jipsTvSHCSMIIE
wDCCA6igAwIBAgIBBjANBgkqhkiG9w0BAQsFADBWMQswCQYDVQQGEwJVUzEfMB0GA1UEChMWTUlU
IExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECxMDUEtJMRgwFgYDVQQDEw9NSVRMTCBSb290IENB
LTIwHhcNMTcwMzAyMTIwMDAwWhcNMjYwMzAyMjM1OTU5WjBRMQswCQYDVQQGEwJVUzEfMB0GA1UE
CgwWTUlUIExpbmNvbG4gTGFib3JhdG9yeTEMMAoGA1UECwwDUEtJMRMwEQYDVQQDDApNSVRMTCBD
QS01MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAp5qDDr05H8O56tfZq1msxmmvkPN1
L9PgE1096upK/lhMSDCGfOwu+FgnEV6bzu7r8ex7zLGFgBR1vd8EMIY8rcRyDmYCjSeFZxlQ1Jfi
iO4NJ/fmY7d4Qdx4R23L23vfmOI8/l8woi5djmmLyAim8b2wUgi7TxHmUOsek2+hCtMptIL2Hhzt
5LrmPkiRyTJbW6y5yFS8Y2azVUu+81yr7ukN4UnZESAe5CYBF3y/qf8/9qfeGxBGdk50M9E5Doxv
iau1JV5RUbb7GHAzxEA91DZGbFnF4AtYVxvExpJ1HAIZRsVYZSpRS5jXe9+NrHhstrPWMTQ50hPn
l07W9COSywIDAQABo4IBnDCCAZgwEgYDVR0TAQH/BAgwBgEB/wIBADAdBgNVHQ4EFgQUL++7xg0d
u+lq/qxn8wc7CHb2S1kwHwYDVR0jBBgwFoAU/8nJZUxTgPGpDDwhroIqx+74MvswDgYDVR0PAQH/
BAQDAgGGMGcGCCsGAQUFBwEBBFswWTAuBggrBgEFBQcwAoYiaHR0cDovL2NybC5sbC5taXQuZWR1
L2dldHRvL0xMUkNBMjAnBggrBgEFBQcwAYYbaHR0cDovL29jc3AubGwubWl0LmVkdS9vY3NwMDQG
A1UdHwQtMCswKaAnoCWGI2h0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXRjcmwvTExSQ0EyMIGSBgNV
HSAEgYowgYcwDQYLKoZIhvcSAgEDAQYwDQYLKoZIhvcSAgEDAQgwDQYLKoZIhvcSAgEDAQcwDQYL
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
YXBtYW4uQ2hyaXN0aWFuLkQuNTAwMTc0NzcwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
AQCTxVDyhTnOxUcS1NdfdlPf03tJ6NyQBeIFwTkRC+O7JQ1xkCbwoA0hP/4uiWOAeBQ4EmE/Sz9W
lbZh+l2zN1J1SJGi1/12ZWwPJSuOA6/94CNhheT66qpRV5cWlRdlzzudYMIahfTohtN1ggjBG612
a5CfBiDrSNsbLJ/cGwDhJ8IhgZ++BSuZfjbgfv52sG+H3JHtL8ZQeFs8GYSLQtWdOv+XG3uxCByC
vO5zFy+so/+96piYr6jzr9L/IT0WRW2UiquafghtNVZ6XsDsLq/c/V1Z/Z/IAte4pajBytC2fxcz
yblPxqbNWn9kiwgKNxXxqWJk2SuLjQoH0VpS8vUFAgMBAAGjggHDMIIBvzAdBgNVHQ4EFgQU9M7J
xcI0vqsY39b1hBemxRmhWlgwDgYDVR0PAQH/BAQDAgUgMB8GA1UdIwQYMBaAFC/vu8YNHbvpav6s
Z/MHOwh29ktZMDMGA1UdHwQsMCowKKAmoCSGImh0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXRjcmwv
bGxjYTUwZgYIKwYBBQUHAQEEWjBYMC0GCCsGAQUFBzAChiFodHRwOi8vY3JsLmxsLm1pdC5lZHUv
Z2V0dG8vbGxjYTUwJwYIKwYBBQUHMAGGG2h0dHA6Ly9vY3NwLmxsLm1pdC5lZHUvb2NzcDA9Bgkr
BgEEAYI3FQcEMDAuBiYrBgEEAYI3FQiDg+Udh+ynZoathxWD6vBFhbahHx2F69Bwg+vtIAIBZAIB
CzAlBgNVHSUEHjAcBgRVHSUABggrBgEFBQcDBAYKKwYBBAGCNwoDBDAnBgNVHREEIDAegRxDaHJp
c3RpYW4uQ2hhcG1hbkBsbC5taXQuZWR1MBgGA1UdIAQRMA8wDQYLKoZIhvcSAgEDAQgwJwYJKwYB
BAGCNxQCBBoeGABMAEwAVQBzAGUAcgBFAG4AYwAtAFMAVzANBgkqhkiG9w0BAQsFAAOCAQEAg/Ey
oaTwRjjj92AUCOfi/1niJW++Zm99t+taPk1cSnjEDmr5y5jElWnLUZyvpLZH/HxbvfybRhzKMXOK
6jy7sshypRoB0bNmPYxcfG7HsAF5LkGKyD5a5AnWESMBTuhyITgcSIuUvK1omysY9ev1sPV81I1O
K6B0TTiGYpUeX20WgFE/YRLdWrxrOaRCHjTrAHLSHXqV50G4x/5F8gIP67mddMuaSeIEInmp39qT
9VF0lwE1H4dylMrBCEiLKeMOK3cX6y2JTwHJaW1JCOpkoZdqkWxB3Qa21+Rtn0GAMwwjwwCjF13l
TetNiaUw2/Kp9VGCOsmhHalA1wnt5//tQDCCBVYwggQ+oAMCAQICEyYAAGJsPr1AiU7DLkgAAAAA
YmwwDQYJKoZIhvcNAQELBQAwUTELMAkGA1UEBhMCVVMxHzAdBgNVBAoMFk1JVCBMaW5jb2xuIExh
Ym9yYXRvcnkxDDAKBgNVBAsMA1BLSTETMBEGA1UEAwwKTUlUTEwgQ0EtODAeFw0yNDA0MjUxODU2
NDdaFw0yOTA0MjQxODU2NDdaMGYxCzAJBgNVBAYTAlVTMR8wHQYDVQQKExZNSVQgTGluY29sbiBM
YWJvcmF0b3J5MQ8wDQYDVQQLEwZQZW9wbGUxJTAjBgNVBAMTHENoYXBtYW4uQ2hyaXN0aWFuLkQu
NTAwMTc0NzcwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDN2oEr0Gd2h7GYiBgRCTD2
Y7emko3dD5UY/FEtIHezITRLT5zgjCBiHo9AAdk4FUeAUiOx0YzSyPn6l+GwferklHFJz8KsnS1S
hZwiPS2/+wE4UHtmPALPRqLv/bAQzHJbtri35udtZivwm61MLRAeF2KIn0OKQwwRIrXoIPH6RY71
NCmuzfsoPu+TghQVVV6ULA9XE4Hwqj3kyz5PAL8h2Kw+UbLGTq0WPnFu6JrR9xhr4MG4FJrcl2uO
sHZXkBDh4pI+Ms7Dw2w2skXGpfKUyRmpGovxdzeaRlBAAHuEmr0pxfhfj5PZzQzMIleVnmZy5VJa
wlYBeteqi4mV7BidAgMBAAGjggIQMIICDDAdBgNVHQ4EFgQUUFM70s67Tbi8AEoC/5Qh9ZvYmVQw
DgYDVR0PAQH/BAQDAgbAMB8GA1UdIwQYMBaAFAepY/eqZM/S+hvIfQE1id5IFbRrMDMGA1UdHwQs
MCowKKAmoCSGImh0dHA6Ly9jcmwubGwubWl0LmVkdS9nZXRjcmwvbGxjYTgwZgYIKwYBBQUHAQEE
WjBYMC0GCCsGAQUFBzAChiFodHRwOi8vY3JsLmxsLm1pdC5lZHUvZ2V0dG8vbGxjYTgwJwYIKwYB
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

------=_NextPart_000_0029_01DAEF0B.167228F0--

--===============4386639838518362129==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4386639838518362129==--

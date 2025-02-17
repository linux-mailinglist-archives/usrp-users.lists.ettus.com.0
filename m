Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C4FA38A61
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 18:11:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A70B3385DA7
	for <lists+usrp-users@lfdr.de>; Mon, 17 Feb 2025 12:11:29 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739812289; bh=Gd9mjKxNz4oDaHhu4rd65RRrLKoYXOD9MyGF2AhIfcg=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=nqOyoQXysLjY/nNn2MZYjBKrnJm0Yy9iNuHFO5wk7+b1JWiWRaEBLu6f+W17Ok6d/
	 Hu1prup+EgnS9YPL3ojokRGg/+s8rO8VMoqlXjD78wwahk/9ah5hFuN0hvsmPTWgiA
	 vIuicVfqiS3FvP5tLTZdYQcwdTyzxdPHE0hBZ5CYtuc8j3i8vA6aE8Sn9qPIaK/o4F
	 GICye7B7ezU9k0lxWNFWxwQ+KREYE8timBXM8g3jxfhraJa3Ck+k+kOoV4ySwkpAji
	 8eEZdG7dgCDm4ZN865nt5/Lj94l/yFlncWjRgt35J/ALHUZD3qqTS/9OONPRaxYv08
	 RNG1ltPLMAxLg==
Received: from USG02-CY1-obe.outbound.protection.office365.us (mail-cy1usg02on0062.outbound.protection.office365.us [23.103.209.62])
	by mm2.emwd.com (Postfix) with ESMTPS id D7045385D33
	for <usrp-users@lists.ettus.com>; Mon, 17 Feb 2025 12:11:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=synopticengineering.com header.i=@synopticengineering.com header.b="Tr4evpC/";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=HvY5KVFFzNHAIomiO8G0OkOl7+gIaDphsNRtw5nDqnCNs4n1MYWSBJvzx+vlvasUsKJKYAIIYQM66+NzHOfh6A3h9CZUY6yaUftuZvtETb7+qfQfnh7XpRQBdZC0Wgn0F+9for//lvIgJWJIdJMu+4pxhHqAR1oqVG6WkzvWmV7bER1KqHN+dPq6T9bFPBBXcKDEsM9/a9iy5ad59HmJP/QxN3Vl+A7n2letD0buO4/tMleqDOA2fARbtSVv6nJR8lwy4M5jT+s6gz3skWMKnJehJDISTTcZmndcXJT73RdA8iZZJMtjXg+bvoi5KUxTjE4qJp68v5H+xl6Y1x+kMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LIp9ED6gkIYq0hiwgtIGEUkxCYthBF22zX6jmrncbjU=;
 b=a0YzyHDapp6WfC9kg/k59wlr1FRrKqJTlsxn0UWYVQmCUxy3IDosjYPFty0R2/UjOPuq+y0TPzx26ovQFjO3iTnctV2JiZ5Sl/NYIBZDyZkV76njjmJ2RV1r0CRAgjdaBMXNLJm0Q1hCY9oukzGROBfSmvoX8/i6QHzDRzoteYwTk8sRda0ZsC3iRiA2ETsxSpZdubZgTA9AbXkgQBdfVfyKqwIbNnaAz4wANaEdxBmgrOYqn+aMXAB137u6vCNNOSyKX5jGNSW5Kk4+PA0jDROBXTHec0xPuG42QS3H417azJ+O88WT7ib0KGDitsO2puyByNdb1lZcUYFW7zOdng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopticengineering.com; dmarc=pass action=none
 header.from=synopticengineering.com; dkim=pass
 header.d=synopticengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopticengineering.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LIp9ED6gkIYq0hiwgtIGEUkxCYthBF22zX6jmrncbjU=;
 b=Tr4evpC/kyCLAmzCpljsw/1VQ38jCIrV5joG1/d3LMPpe7vkeG/a4/Y9seN7h08SUnhxS1nODyyCL+ErDHN8dgaHttQhyYikjj0rtrPQAO16P4D3TklOl5dqHhatRU5jpuEIJyrhDRmTGfETbrxaGMkktyE7mWrUMLY8BrvOmMT5nDc4zapqyi2nvt0dEv4J7ZWMLZONUkNiDfjsvsMO6DyHaEXsEg/Ur68IoGOul2YmvuT2dCrMslYbVkCAOWdnqjNglljP4X3/IBqRBp8uqHxhWZs9FDyOg0m3sgVA2Sbxo/v2hopri/aE2Eq1BG3Y0DUUiok3Rn6X5NDJCrE1wA==
Received: from SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:173::9)
 by SA1P110MB1740.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:173::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.24; Mon, 17 Feb
 2025 17:11:22 +0000
Received: from SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5230:8ea3:f498:529]) by SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM
 ([fe80::5230:8ea3:f498:529%5]) with mapi id 15.20.8422.021; Mon, 17 Feb 2025
 17:11:22 +0000
To: "cyberphox@gmail.com" <cyberphox@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Reading/Write registers - Timeout
Thread-Index: AQHbgVX+2fSxO6MdEkOoopTEARfJu7NLtArQ
Date: Mon, 17 Feb 2025 17:11:22 +0000
Message-ID: 
 <SA1P110MB1754DC7AED8867B08EBBCEB3B7FBA@SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM>
References: 
 SA1P110MB1754C2446AE77DCEF0A297D7B7FBA@SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM
 <IyZstKxnoxPrwyjlaMj82d0eDiB1iD89qeantfVdCzI@lists.ettus.com>
In-Reply-To: <IyZstKxnoxPrwyjlaMj82d0eDiB1iD89qeantfVdCzI@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=SynopticEngineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1P110MB1754:EE_|SA1P110MB1740:EE_
x-ms-office365-filtering-correlation-id: 04437a1d-8be4-4733-5593-08dd4f761a77
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|1800799024|366016|8096899003|7053199007|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?lOS1Yp1kqE+m3dYDc/ig9Sxz0qRlxv9EwypSXCa46brRoaovT5fs2EaD6OJM?=
 =?us-ascii?Q?cOVsHH+4NRQDeLTTdVdz4u/UW7NiQODQ5osQGNioY4w8Hrfq/jHUHhY0/WcE?=
 =?us-ascii?Q?tnL1D2/QgmntSQaEEs88x9rzg0pj2rl7d6logEmMmemgxdDwozToIrSwxORZ?=
 =?us-ascii?Q?KG+nH+qSMTunG4VndRhtJeACTWU84vd1tULkxTTQq0jMDPR34GgV7sFIdqI4?=
 =?us-ascii?Q?cK6c2iff/eLPs0EUUXdESQFQdNEa6/MkAE32vy43wgTz86MHMaLPnta9Jiht?=
 =?us-ascii?Q?cHDv1/OO1v0EywNDU3YnNMEyrWJz5C0Z1tn9YtfCRCRxnn4s2xLGin9xOAZ6?=
 =?us-ascii?Q?qtOXJ3Lj4VsH45TElPOHh9dWw0JkVQvbMeKNrovS67Q3IudLZ7iLNJhtB6pY?=
 =?us-ascii?Q?fjKSwhs4ifykx2+Fy6DXF5uYpNpmO0UV0iq5HC8OapuqHJgVop3gUAkhGghn?=
 =?us-ascii?Q?M3pZiFPNeDklUNCZgQEenY7anGaZoY81qcQzRd+YcwvTtlPZ+mcetj5d4TuX?=
 =?us-ascii?Q?icg2ZmvTIKtCom0btgVGd7x985g6+Buitz6yzhyUhrnCzRD+nk4gthN7Ueo3?=
 =?us-ascii?Q?4j/RtgSfHCHWQLR4mt9bU9kuK4+7BVtg3QEPGjdJlfgk/PTwdWSPZN/9y+og?=
 =?us-ascii?Q?HQmfgSSJh7Vp/Kiq27TTaBTNmGyOU9LAEszyQYgCrD9IAD42ol3ITDL6kOsn?=
 =?us-ascii?Q?uDRs41lxlDZM1N5yq4wo60qizcHoskfjFdi8ToN4sXkTeuEvWWWgb98JH9ms?=
 =?us-ascii?Q?KbJF6nQpUQpV8llBB8nhnv/xpLZMtZMLunoRnjdWlgPfB6UClGB6yaYchsCS?=
 =?us-ascii?Q?B2b7/5ltSt38xq9HpeKRPcDTHpzwz6k0Eww4V1XfWUvs2MLSdYNwKSavTAm+?=
 =?us-ascii?Q?4zy3E7K1BOczuZZ5vghtkjQOfmQSzY5TJKOS5Y3lcgtgtotTEOXUanZYdJuv?=
 =?us-ascii?Q?w4+1fuESa+czRfiZYaj6JLs1Lzyta8td16quFs3QGnlU5IdeXHPUsVdavWLP?=
 =?us-ascii?Q?4VMpxA4UxHtuvILR+3a6Gj3mRWKRYELtK9HMJ2Hq1BCl4pBPRWyxT0N7qVmL?=
 =?us-ascii?Q?Rf2GdqGJfb3VN+FyCkdGP1VN70Y0SAVaZpamuzhi794ijZJTs4iEZ1Y7VZcN?=
 =?us-ascii?Q?nZbf79MCc/Vyb57e5Og47AvZuBm5Uxgzywb/coDURiI3CuY4W/fVv7F0VQxb?=
 =?us-ascii?Q?huEHwItV+PtsX59+TBNjADBpQkAxigiSV9rw7B0R2jCt+dB6SOWP8yXQecRs?=
 =?us-ascii?Q?BbkhOXoJtqv0Y2/fQaYvMQfdbIn3hYUluSonQhMMoeoBS2H6Ha+uEyEeNl9g?=
 =?us-ascii?Q?woMU02pqlQgcWFd/4BlACD3lqs765WSbSb+QJtU7/atXsEZupDiv2sRWOJDj?=
 =?us-ascii?Q?Ns1bV6NtW5j33fksdt1MFQC0l2xzjQ6FreE6dryZL99C4w88VfTxlwP6ot8H?=
 =?us-ascii?Q?DN482yZU0nFLJxFCZd8vqH1rZ51X9hyD?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(1800799024)(366016)(8096899003)(7053199007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?xGfKU/3QzulyTsS2z2D1+VZNF4BEqQ3H62iu926VBP4kEH4WVRFGZq023KTq?=
 =?us-ascii?Q?Mecx5lNJeZefYEKdtiLYzpoaLIKdV/+iYSTqehcbwxQSwIDMP2srmgpKLx10?=
 =?us-ascii?Q?TI6CQ5RFET0WgD6ND2gtQuA7wzEi9ResgTA0B7Ln0PjSUwFDvqa2wivALbbc?=
 =?us-ascii?Q?HS059j/KcStPOPmGMVWHlaqnIN70jautMKJsc275L2bZDrb0sntkf6hcioIm?=
 =?us-ascii?Q?+dQskb5a8AYOTAMnvSdu2MfSqpMLbqP3lyKlNv9Fi36AnOHzQ89I38RaiwJ+?=
 =?us-ascii?Q?plgghZzOsxYHEAkslmqjVOuvEXqnS8S75Ed+T0BpnOgipj7XZC6A0BZeHpZU?=
 =?us-ascii?Q?b8BEx8oWc+bvjc097yTNY/YeNQDv7TfS2/T94yjbzTGzSn5bvUb17iGiGbrs?=
 =?us-ascii?Q?6iic26X5fnwEEY0kM4msojJlo9q+kRtwYphqjT3oWVa7l/MPXh93B+DM4BCT?=
 =?us-ascii?Q?zyys9ddUIeHjv1Ib8H47ewLBEWP4IAdg9D+dSs0NcXJ5yfOlgsitUiMvl8S9?=
 =?us-ascii?Q?oP8e6L+rYHxpvmv7rLttigimab1YpG17VEPNfeS5iAWAuEMKlBzBKBb13Crh?=
 =?us-ascii?Q?9MGQ25nqMSDzyuVM+Thrqd19NX/iX5Z9Ae1aHfMBSwW+JpIzWK0yYZ7gIFst?=
 =?us-ascii?Q?ePMu//U4+yJBNY4fFR/BzacrBGl0HZ0tziZOFstkxC2beBGT9je5Lzf7VJeT?=
 =?us-ascii?Q?ZZcbfD84dhw0IOGBB5plM4azDT++lXcbCZSZT/NL/nBshXFwSauvUBbllOFg?=
 =?us-ascii?Q?lpn5WNmMPZ4WSoHXW07L/gAxG2NAdCGGwBXtIj4ovcimTYnNJVNe8j0cowm3?=
 =?us-ascii?Q?jDp8nI/fLFYL9aWm9GSusMLmyObFONvHm+39+bwUyHGSLQMlndR0LCqsVq4J?=
 =?us-ascii?Q?SMfS1mZL0hTtbkLrhwAzVx95Owo2Cppdi2K+WjncNNoeFQXKjnET0EypC4tC?=
 =?us-ascii?Q?OHlO+Nvd/FghpQCyr0bj3rxJChHBN5WBH1L95uTrzYJJdQ2D9hDaWm8znU+9?=
 =?us-ascii?Q?uDLMirMJE6urXX15kV79Q2ljFHVDyrUCIBLipr6k4gmeLlH9TfFGy/E2RC4o?=
 =?us-ascii?Q?bP8vdQxewEP71CCuVPq9BVAwl5AoysaXrJPug4kC/AnJLWgehKiBwr4ye07b?=
 =?us-ascii?Q?1QM+ii77/f79oGkUZBPvy3vqnXRo0i7fzlHjmO8jobmVrLdic7ti6VP0G/ld?=
 =?us-ascii?Q?eW84u4bO5gjAa8fg2SQtfMIwMlEbZW0b/cJDI6sJ7gcjw9gHgBY4RWAhWuX8?=
 =?us-ascii?Q?bS2hE5kQMyOG7VXpNGXkY6ni0h60g132SDbm6+jR2chNUcTrEVBWBnRrE5i4?=
 =?us-ascii?Q?7hExfDX04gdGY5jnY1IfCiCKAEOrDBegMQ5DU7ULatjkCL0emxahJQwI1kCb?=
 =?us-ascii?Q?myRq5fo07PH9Gacp1i4LdrQRRYJ1S5XnYoRMkmMbQFw5CPIgRF6Mf7UqVsVS?=
 =?us-ascii?Q?cKgjGrVUuRnOS9RmnoJnpD9NFL3VoA01bWxBOOoUwEI5s8bmVq9jQZ/a6sSm?=
 =?us-ascii?Q?c7FNvLv1serCHppp4ayOW2ELrsUtefg5BKaD?=
MIME-Version: 1.0
X-OriginatorOrg: SynopticEngineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1P110MB1754.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 04437a1d-8be4-4733-5593-08dd4f761a77
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2025 17:11:22.4944
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e861c95e-27d6-448d-b078-edc45c1d9315
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1P110MB1740
Message-ID-Hash: 2I3JP2P34KDXSQEUQX7XERVINWGJESBV
X-Message-ID-Hash: 2I3JP2P34KDXSQEUQX7XERVINWGJESBV
X-MailFrom: david@SynopticEngineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DVSTXJWCRTA67WATANCA64SQAPUO3HXZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: David Raeman via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Raeman <david@SynopticEngineering.com>
Content-Type: multipart/mixed; boundary="===============1848583458675728708=="

--===============1848583458675728708==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SA1P110MB1754DC7AED8867B08EBBCEB3B7FBASA1P110MB1754NAMP_"

--_000_SA1P110MB1754DC7AED8867B08EBBCEB3B7FBASA1P110MB1754NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Marino, a couple quick thoughts:


  1.  My previous message was based on legacy USRP architecture - I think w=
ith RFNoC radios, each block may have its own command queue. So the behavio=
r may be different than mentioned in my earlier reply.
  2.  I think setting the command time to "lastPPS + span" is dubious. last=
PPS could be approaching one second stale, and span is only adding one seco=
nd of margin. There's a slim chance the requested command time is in the pa=
st when it hits the command FIFO in the radio. Since you already synchroniz=
ed the clocks across devices, I would try using "now + span" instead.
  3.  After you call set_tx_frequency(), I think it is canonical to then ca=
ll clear_command_time() so that subsequent commands in your application flo=
w are not timed. I don't expect this will be a fix though, since subsequent=
 commands would be considered "late" and executed immediately anyway.
  4.  If you need to wait for the retune to take effect before proceeding, =
and if you aren't retuning in a time-critical section of code, you might wa=
nt to consider adding std::this_thread::sleep_for() at least equal to your =
span value. I don't believe the set_tx_frequency() call blocks, though I co=
uld be wrong if that behavior has changed under RFNoC..

Cheers,
-David

From: cyberphox@gmail.com <cyberphox@gmail.com>
Sent: Monday, February 17, 2025 10:59 AM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: Reading/Write registers - Timeout


Hi David,

At the start where we initialise our siggen block there this snippet of cod=
e:

________________________________

std::cout << "MB Clock Source: " << graph->get_mb_controller(0)->get_clock_=
source() << std::endl;

std::cout << "MB Time Source: " << graph->get_mb_controller(0)->get_time_so=
urce() << std::endl;

std::cout << "MB Sync Source: " << graph->get_mb_controller(0)->get_sync_so=
urce().to_pp_string() << std::endl;

std::cout << "MB Ref lock status: " << graph->get_mb_controller(0)->get_sen=
sor("ref_locked").to_pp_string() << std::endl;

std::cout << graph->get_mb_controller(0)->get_sensor("gps_locked").to_pp_st=
ring() << std::endl;

// Initialise the USRP time to zero on the next 1 PPS

graph->get_mb_controller(0)->get_timekeeper(0)->set_time_next_pps(uhd::time=
_spec_t(0.0));

// Call this to synchronise all the RFNoC devices (needed for phase alignme=
nt?)

bool synchronised =3D graph->synchronize_devices(uhd::time_spec_t(2.0), fal=
se);





________________________________

Then when setting up the PLL's, to try and get phase coherence.

________________________________





const uhd::time_spec_t lastPPS =3D linux_uhd::get_graph()->get_mb_controlle=
r(0)->get_timekeeper(0)->get_time_last_pps();

const uhd::time_spec_t now =3D linux_uhd::get_graph()->get_mb_controller(0)=
->get_timekeeper(0)->get_time_now();

const uhd::time_spec_t span =3D uhd::time_spec_t(1.0);



// Specify that the tune should occur aligned with the next 1 PPS

const uhd::time_spec_t command_time =3D (lastPPS + span);



// Clear any previous timed commands

radio_ctrl[radio_id]->clear_command_time(0);



// Set the time for the LO tune to occur

radio_ctrl[radio_id]->set_command_time(command_time, 0);



// Set the LO frequency in Hz

actual_lo_frequency =3D radio_ctrl[radio_id]->set_tx_frequency(....







________________________________

I am not sure if this could affect the peek and pokes



thank you

Marino

--_000_SA1P110MB1754DC7AED8867B08EBBCEB3B7FBASA1P110MB1754NAMP_
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
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-ligatures:none;}
span.EmailStyle24
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1722557657;
	mso-list-type:hybrid;
	mso-list-template-ids:-1441264522 67698703 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style>
</head>
<body lang=3D"EN-US" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi Marino, a couple=
 quick thoughts:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<ol style=3D"margin-top:0in" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 =
lfo1"><span style=3D"font-size:11.0pt">My previous message was based on leg=
acy USRP architecture &#8211; I think with RFNoC radios, each block may hav=
e its own command queue. So the behavior may
 be different than mentioned in my earlier reply.<o:p></o:p></span></li><li=
 class=3D"MsoListParagraph" style=3D"margin-left:0in;mso-list:l0 level1 lfo=
1"><span style=3D"font-size:11.0pt">I think setting the command time to &#8=
220;lastPPS + span&#8221; is dubious. lastPPS could be approaching one seco=
nd stale, and span is only adding one second of
 margin. There&#8217;s a slim chance the requested command time is in the p=
ast when it hits the command FIFO in the radio. Since you already synchroni=
zed the clocks across devices, I would try using &#8220;now + span&#8221; i=
nstead.<o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margi=
n-left:0in;mso-list:l0 level1 lfo1"><span style=3D"font-size:11.0pt">After =
you call set_tx_frequency(), I think it is canonical to then call clear_com=
mand_time() so that subsequent commands in your application flow are
 not timed. I don&#8217;t expect this will be a fix though, since subsequen=
t commands would be considered &#8220;late&#8221; and executed immediately =
anyway.<o:p></o:p></span></li><li class=3D"MsoListParagraph" style=3D"margi=
n-left:0in;mso-list:l0 level1 lfo1"><span style=3D"font-size:11.0pt">If you=
 need to wait for the retune to take effect before proceeding, and if you a=
ren&#8217;t retuning in a time-critical section of code, you might want to
 consider adding std::this_thread::sleep_for() at least equal to your span =
value. I don&#8217;t believe the set_tx_frequency() call blocks, though I c=
ould be wrong if that behavior has changed under RFNoC..<o:p></o:p></span><=
/li></ol>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Cheers,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">-David<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> cyberphox@gmail.com &lt;cyberp=
hox@gmail.com&gt;
<br>
<b>Sent:</b> Monday, February 17, 2025 10:59 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [USRP-users] Re: Reading/Write registers - Timeout<o:p></o:=
p></span></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p>Hi David,<o:p></o:p></p>
<p>At the start where we initialise our siggen block there this snippet of =
code:<o:p></o:p></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
</div>
<pre><code>std::cout &lt;&lt; &quot;MB Clock Source: &quot; &lt;&lt; graph-=
&gt;get_mb_controller(0)-&gt;get_clock_source() &lt;&lt; std::endl;</code><=
o:p></o:p></pre>
<pre><code>std::cout &lt;&lt; &quot;MB Time Source: &quot; &lt;&lt; graph-&=
gt;get_mb_controller(0)-&gt;get_time_source() &lt;&lt; std::endl;</code><o:=
p></o:p></pre>
<pre><code>std::cout &lt;&lt; &quot;MB Sync Source: &quot; &lt;&lt; graph-&=
gt;get_mb_controller(0)-&gt;get_sync_source().to_pp_string() &lt;&lt; std::=
endl;</code><o:p></o:p></pre>
<pre><code>std::cout &lt;&lt; &quot;MB Ref lock status: &quot; &lt;&lt; gra=
ph-&gt;get_mb_controller(0)-&gt;get_sensor(&quot;ref_locked&quot;).to_pp_st=
ring() &lt;&lt; std::endl;</code><o:p></o:p></pre>
<pre><code>std::cout &lt;&lt; graph-&gt;get_mb_controller(0)-&gt;get_sensor=
(&quot;gps_locked&quot;).to_pp_string() &lt;&lt; std::endl;</code><o:p></o:=
p></pre>
<pre><code>// Initialise the USRP time to zero on the next 1 PPS</code><o:p=
></o:p></pre>
<pre><code>graph-&gt;get_mb_controller(0)-&gt;get_timekeeper(0)-&gt;set_tim=
e_next_pps(uhd::time_spec_t(0.0));</code><o:p></o:p></pre>
<pre><code>// Call this to synchronise all the RFNoC devices (needed for ph=
ase alignment?)</code><o:p></o:p></pre>
<pre><code>bool synchronised =3D graph-&gt;synchronize_devices(uhd::time_sp=
ec_t(2.0), false);<o:p></o:p></code></pre>
<pre><code><o:p>&nbsp;</o:p></code></pre>
<pre><o:p>&nbsp;</o:p></pre>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
</div>
<p>Then when setting up the PLL's, to try and get phase coherence. <o:p></o=
:p></p>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
</div>
<pre><code><o:p>&nbsp;</o:p></code></pre>
<pre><code><o:p>&nbsp;</o:p></code></pre>
<pre><code>const uhd::time_spec_t lastPPS =3D linux_uhd::get_graph()-&gt;ge=
t_mb_controller(0)-&gt;get_timekeeper(0)-&gt;get_time_last_pps();<o:p></o:p=
></code></pre>
<pre><code>const uhd::time_spec_t now =3D linux_uhd::get_graph()-&gt;get_mb=
_controller(0)-&gt;get_timekeeper(0)-&gt;get_time_now();<o:p></o:p></code><=
/pre>
<pre><code>const uhd::time_spec_t span =3D uhd::time_spec_t(1.0);<o:p></o:p=
></code></pre>
<pre><code><o:p>&nbsp;</o:p></code></pre>
<pre><code>// Specify that the tune should occur aligned with the next 1 PP=
S<o:p></o:p></code></pre>
<pre><code>const uhd::time_spec_t command_time =3D (lastPPS + span);<o:p></=
o:p></code></pre>
<pre><code><o:p>&nbsp;</o:p></code></pre>
<pre><code>// Clear any previous timed commands<o:p></o:p></code></pre>
<pre><code>radio_ctrl[radio_id]-&gt;clear_command_time(0);<o:p></o:p></code=
></pre>
<pre><code><o:p>&nbsp;</o:p></code></pre>
<pre><code>// Set the time for the LO tune to occur<o:p></o:p></code></pre>
<pre><code>radio_ctrl[radio_id]-&gt;set_command_time(command_time, 0);<o:p>=
</o:p></code></pre>
<pre><code><o:p>&nbsp;</o:p></code></pre>
<pre><code>// Set the LO frequency in Hz<o:p></o:p></code></pre>
<pre><code>actual_lo_frequency =3D radio_ctrl[radio_id]-&gt;set_tx_frequenc=
y(....<o:p></o:p></code></pre>
<pre><code><o:p>&nbsp;</o:p></code></pre>
<pre><code><o:p>&nbsp;</o:p></code></pre>
<pre><o:p>&nbsp;</o:p></pre>
<div>
<div class=3D"MsoNormal" align=3D"center" style=3D"text-align:center">
<hr size=3D"2" width=3D"100%" align=3D"center">
</div>
</div>
<p>I am not sure if this could affect the peek and pokes<o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<p>thank you <o:p></o:p></p>
<p>Marino<o:p></o:p></p>
</div>
</body>
</html>

--_000_SA1P110MB1754DC7AED8867B08EBBCEB3B7FBASA1P110MB1754NAMP_--

--===============1848583458675728708==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1848583458675728708==--

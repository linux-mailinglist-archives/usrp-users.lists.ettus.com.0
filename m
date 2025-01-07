Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F96A03D3D
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jan 2025 12:06:19 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3165A385532
	for <lists+usrp-users@lfdr.de>; Tue,  7 Jan 2025 06:06:18 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736247978; bh=dEugwA7FEvL5V4d0La+kmr8tDUcwPfmckKBn3f9ftZA=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=I+Yk8x85Or7Lz2i5JMn9+Hx+K24Oh9vgsmqik/kYk5zSi7Hy4DmlEgzfaCyjUyEkj
	 bM1ak3CQJ0FGTacEOtrTniaz3EPyiTxGMeip0sVNmDVt18ElKHN6dsolApYr2v/mpl
	 U4CKT2cQalCxpq+bVaPH3MIJv1PiH8kVmVSNAmwj7DFjjAsVn+z0hImeFvbjXrEwBx
	 KGURTEtQYgXGjM2dHZdKyYLbyHH1cSjYtFkC+OEB735kCJzsalsABPFNv2ivBFo1y/
	 MzuIwGOhfFLiwt4pAsKVCmyy+OLObFBMRORucG+fXS7wAMgNfozZMQNpxlu0NRQYT3
	 nrQ25cxssr1iA==
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (mail-am7eur03on2102.outbound.protection.outlook.com [40.107.105.102])
	by mm2.emwd.com (Postfix) with ESMTPS id DC1ED3853E5
	for <usrp-users@lists.ettus.com>; Tue,  7 Jan 2025 06:05:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="xwhFbXUv";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tUFo25zEObWmjo3mx1trKZCJ5yOJTthJOQ3NecYh0bxus9flJs0qmbCzXk10TOi/P5gUsV3UEVyyFArPs7ECpYoNr2MHLL6Mj6SYB+eUOgUDebkTwrjQEKUgBt6TSSURJk/kl2+ugpGEgVHLEsluZ9Bdgqyr9ds0hevC+jIwxyy+G2o3EXxvPJ0R/DeaLE5JNGm24lNCr+h947iBpmTZkeUW7W8P689T3XYV1jGKurbzppxUw/z0WlQIvTaHqrWlVisbUvGYhUVDHiwScV57bt/rn0ELLzXeCZHMikK8bUjrVZilShg3hluutGojqs9G0ffRGBuCyJq5s4FCbzDM5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KeIoXGMlXVgTOok76rVc6hZxWrKSbBE4ScaiQhsX3Xk=;
 b=FBGECc8lo8vnaj1gEk2RJ4qO2ptJqg8F70XEWWj3wONB6rqEQpRl+altxNq8aI/Omac9rRxb8gygGyInjl2YmsZAHjIazgHOZSoS2TOgwUBAAbjsXEFUz8O7rIwf3E6iaZ7ScTeA86iqMmLUuOLweuSyM/t5aGxnDr3EYJTG6RPASgs62ASJD0AidqtlV8hCS3Wgx6lrreWTVcIP8rh7jzoaYBPNI5cAGtDWC+tecSJsYC4FPpZfx3s/m1CW2FQCq6UsJa+kPj9dx8GUlUEs+GtPvnTP8wpEoQCrMTBuoeHB0bsIBThQ1OsqwvzuMAXQ903PdPBPIH3B6zMY7JIzUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KeIoXGMlXVgTOok76rVc6hZxWrKSbBE4ScaiQhsX3Xk=;
 b=xwhFbXUvwpgIhnNmTMj/258X15k1p3Rj5XDrjpD1FvjdzsceuvOAfHlxD0gzCSn+PDDHEWR0I2VYYrEuzSqxWAMU+SMnTuvrGURCMDHt8CPg4RamhaathliEuk/BkR9yOVcw/mHPYK/7LJ+wJSSEe2jsVUckK9efhKHBipXBAy8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 AM8P190MB0897.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:1dd::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.18; Tue, 7 Jan 2025 11:05:29 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::2ea0:4254:b809:a957]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::2ea0:4254:b809:a957%7]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 11:05:29 +0000
Date: Tue, 7 Jan 2025 12:05:27 +0100
To: usrp-users@lists.ettus.com
Message-ID: <sjh5ltvrjm6mus2dcylql3wz5iorwyofyjz2ip6n37hnugaxmf@znijngdsrgjr>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <89a4b5930a3e4d4693aa8bbb9f4b66ed@foi.se>
Content-Disposition: inline
In-Reply-To: <89a4b5930a3e4d4693aa8bbb9f4b66ed@foi.se>
X-ClientProxiedBy: AM0PR02CA0161.eurprd02.prod.outlook.com
 (2603:10a6:20b:28d::28) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXP190MB1848:EE_|AM8P190MB0897:EE_
X-MS-Office365-Filtering-Correlation-Id: dd19cf5e-7cc3-49cf-41d0-08dd2f0b328e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|376014|1800799024|52116014|366016|10070799003|27256017;
X-Microsoft-Antispam-Message-Info: 
	=?iso-8859-1?Q?suQSnjeZHyOH6Bw7OH5/hXmNAEWS7ULJxGHUuHdsviCe0/g7h1oMIZlljv?=
 =?iso-8859-1?Q?zPJGCE3ZlKWfT5IgdLkMFdbkDaOuX1qGF5/bX2zCmqi7r//8oK//eapeNA?=
 =?iso-8859-1?Q?IDTh0xTUyunXaX7/YwLzVUh72zvaQfvMspR/92HsXRLCN+9BATnJc/NGXY?=
 =?iso-8859-1?Q?onPuHkBh9EpPZuNK5nH4RbALQP0s3XEGeAgTX/UM6iXKhkwCqa9WL83uan?=
 =?iso-8859-1?Q?N8TdDtBF9bRR0slJA0MZX5qoFstwxXyCxpYfb6l/If2uB9SWX4dTrNQ6vG?=
 =?iso-8859-1?Q?rXaSLAIKCxnwmvK9o1LKzyZbhb/MF+xFl681UTPDy+BVhzr5tKXOztvFCb?=
 =?iso-8859-1?Q?9BdVefFVbTg15Yo8gekQUkXRIvFIu2RU7ISmLijgEM2AKj22dbUlr9k3v/?=
 =?iso-8859-1?Q?z4AYZCKx+xU4hnWQ1E8oJdKWn+WbWKK7G20D19X80yrm+fHF4BPQe/9ZTj?=
 =?iso-8859-1?Q?XS/B9+F9JCwqxMeWSFzJNguBIj1JSTTLDKHsrGMX1Bj9v2t1qhHALoDVtq?=
 =?iso-8859-1?Q?4qved/Hdj3UEJ9h4s+V7pl587Wd8sykTX+RLLwmIY/OvdZ2CAEBDNWZDSU?=
 =?iso-8859-1?Q?aM2oY5t8IdBw/rsVRUwXZgckcZvhlaTO7ePw7bAugojJo/FNa2AufqjKyQ?=
 =?iso-8859-1?Q?TuGXVHvPXjd7AO3PQNC04I2hnbbpA4Ceuhd/b/7YrcGf+ROs1zPzW/JpjU?=
 =?iso-8859-1?Q?EtEvifoGCy0T1FXzvzrCQwnu7QIM+2WCfEqkfVlpbE7bL7pLcFcXQUeSRY?=
 =?iso-8859-1?Q?S9DXo7RaRGCkNl9ppYQuB8nRAPmAWwj0mp/f4DIRZtDv4FHUZviHHTkcyd?=
 =?iso-8859-1?Q?Q+/qWqZFc5GrecAgOMaN9QNjljOfkyc/wjcSzlHTJAcaNvgin0/1ILcqQ5?=
 =?iso-8859-1?Q?OfC30UEn0boHMV+BDm8y0TxEG5oxgMqTSQHOJbAnvm4zfJWVVTiWcZtzDL?=
 =?iso-8859-1?Q?GIdNC7WwbJnvKdNxV61Yf+kTyl3+10nN2Hi191PoUHjcJtPwjZ+hvedmf7?=
 =?iso-8859-1?Q?1thG8AtTj+84N4wYcahUXmX4HRSftyiu6N7kd/BIp53YuOTAEM855E3smE?=
 =?iso-8859-1?Q?OGvcJLcNdATVHJ/xksorZszNT+rEfQVyrc+cvRCeUKkcoI++5t4oEgI7Aa?=
 =?iso-8859-1?Q?ZdQAtMypCcycl39FrsfI66TejNg2c150flm7CGk6FDFgvt333l2ckGjCuy?=
 =?iso-8859-1?Q?1DpB+tXYRBQe17OXo8H71tGo7OXB4ZgHT+t2TG7oMtzgYL1RFLgV3vvRUz?=
 =?iso-8859-1?Q?Ydp6qFzP2XgTiJgsDWof0AW+DnQmK+xwhjC2ORxrD5d5CbUVjcMMwYtbhg?=
 =?iso-8859-1?Q?mZzxW625/lUp6ISG2hJrqnc5vTgxstUbiHYXEE3+6VxfPqgLQ0V5EbbsoD?=
 =?iso-8859-1?Q?e+U5tgXXwUUjLJ4GnLbIbYHWfSOTBrLelK8z7pMJXBkJoHLesvSIDMwX4v?=
 =?iso-8859-1?Q?F6JEDxLgrvfR1kdL?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(52116014)(366016)(10070799003)(27256017);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?iso-8859-1?Q?KjN6SELfCFYkpdD3uXltdFQh9PkERWT0G9uom4udykKzgioVgM8GyMdUXt?=
 =?iso-8859-1?Q?CfYRhCoqwz6SbxxK8sjuJc7XBsLzCTwT7oaZfQHph9Pau1UqAT7sm8GNhe?=
 =?iso-8859-1?Q?4qxcUt3PqG4aPf63KzrCwOJyZJFnjpiNljfnJniZZ12Krk3PhLuhF1x83H?=
 =?iso-8859-1?Q?iRBTJid+ltzZrN7aEDyWI820kOsBS+6rVBTr61iO5r5Xk3ts5LcgniRM9D?=
 =?iso-8859-1?Q?fee+tOwkIdXxCUcmNuNE6kUqYRnMSTj2Ogj0wbzYTRTjF1ZXpnwo56ezmP?=
 =?iso-8859-1?Q?nCT131R/RLbQSchu+VwSJZfoLQwalcLmtW0RoeOmqWaL4V+UmdEPwXfVIm?=
 =?iso-8859-1?Q?Bq/AeX/JEqpbqYUWX+kj3g0aEzUmRA5UaXhLyQaAacjLMbGBKrPrdGyDk3?=
 =?iso-8859-1?Q?prwwLGVNeMbswNuAis/tjURBdVPMUsKCjeaI6jBJJElmrF7nr8TMlpcKN+?=
 =?iso-8859-1?Q?mPXiFDR6ao6JPo33PUbvehq8lNJy7LCw5JbiqoU88vT4KcnYPWozTzCsy4?=
 =?iso-8859-1?Q?4FC+Jt9paqvuq5Q7zhcLOkxDoc3O9rVGit4wfUijBzEDeny76pI3sjILFT?=
 =?iso-8859-1?Q?f4vYwodE/zsNJV8ufOUgg0lutSLJmGh5OPuvcP+3xIPQciKAfCGFYIA18q?=
 =?iso-8859-1?Q?4M91x8nOiIN3bXxD5hfOHbDpKwpEDq/GfiDoyhp9Em1AR4gX8YhHPyhUwm?=
 =?iso-8859-1?Q?fbUO0T+KegQA1idbsfVhInghiSJYFi/wRlfsyQ5YOmEJefyeyiPoGQS9L+?=
 =?iso-8859-1?Q?tnsruR+NC1Vp2VOs5adzlmdif6SaxR8CXG2Mlk3Hr16KW4PhC7hDXlTFV7?=
 =?iso-8859-1?Q?zj+M2llJRVPFUE0GvVPsOaF6qFDqVGJddG4PqoytzFlkunW4OBXVSI3UHq?=
 =?iso-8859-1?Q?TdQR1iy0pIbpbOWGsnboS7+yDVNC/TwVOWB3yGD0debPzeSopxFMZotgkp?=
 =?iso-8859-1?Q?dp/lsmRoX6JDCxJw0arEkusVc6PI8JeRGLicmQauplPkvVnF+5uaY1bQN5?=
 =?iso-8859-1?Q?OXOxMQMBfUIdwLv9J7JmPUMqkciqzpZVxtk30zx1Iyf4ox4q0w9+8qliz2?=
 =?iso-8859-1?Q?SpC3hYOgbwG7/9Sg6kGBfAzCbOKcQGYhD/nKLqgbUuemrVhuUlGm8dHh0T?=
 =?iso-8859-1?Q?mcvkIqTTlqkJ1e9eVN30wBAdQVpluugMlHX7FE8L9Khbm08/r6jDWvtE+6?=
 =?iso-8859-1?Q?8P0iQ3dAYYCNcDTWmgwpOMoTeEK/pzmkqnxxHbrkxjYjYy1j96hxvN7S44?=
 =?iso-8859-1?Q?QbSEpOdvzybo7T8VyeeAz9mQUWzCImMZUlNs8AJ/nlgN69jFo9LNRZR8oK?=
 =?iso-8859-1?Q?jnRSvimilYChCCm2k0LPf+LUYnG2jFva2tvZJ2lvGbLFK4BpPLgybkvgh2?=
 =?iso-8859-1?Q?3L0NLLjqm22Oeb7sPk/yM9AiHFaDAkmBtNvDIqQptoqJb9RpJi/0Mzw3Kr?=
 =?iso-8859-1?Q?8Gxvh7S89Dji2O8rCgNySWCBq4/X8VnWr6plLk/bkYh8cMByzLyDC4BqoS?=
 =?iso-8859-1?Q?h8z91VeDWQhkT8phdrR+tMEzXPRpdHg2jy/FBQ/wkbbYoRw0LuSOIhHHw2?=
 =?iso-8859-1?Q?MZvqXj7omSrqS4x6EUYvqFVv538j/oVeOKD7kzAnAkRyIJXJQDZr/AndDa?=
 =?iso-8859-1?Q?37BAiZTQisNHO9JLWduUw4lBDpF4SnSFaJImVAeUJ6E8LwG+qacSeemyDm?=
 =?iso-8859-1?Q?fNoIj/EsyQYv6VoOlRwT+NS5rVB5ZbchirZTSZ4NkGHIPeMpQGqxG2WyJW?=
 =?iso-8859-1?Q?vbYA=3D=3D?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: dd19cf5e-7cc3-49cf-41d0-08dd2f0b328e
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 11:05:29.7030
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NkAECI/1goee4rEWDkCn9bTvkT/VX435dzcoC8+SemgEPA1USiLUNTlN2Yrx6PQsdaUe/7uqU/e1I64GTF0ROA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P190MB0897
Message-ID-Hash: 2GG2UBPEWGKH6AC3AOJKJ5YNEPWRIUP6
X-Message-ID-Hash: 2GG2UBPEWGKH6AC3AOJKJ5YNEPWRIUP6
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problem sending samples with tx_samples_from_file to two USRP2/USRPN210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2GG2UBPEWGKH6AC3AOJKJ5YNEPWRIUP6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear Per,

On 2025-01-07 10:45 +0000, Per Zetterberg via USRP-users wrote:
> I am trying to stream using tx_samples_from_file as:
>=20
>=20
> ./tx_samples_from_file --args=3D"addr0=3D192.168.10.2,addr1=3D192.168.10.=
3" --rate=3D390625 --freq=3D0 --repeat --ref=3Dexternal
>=20
>=20
> However only the LED-A of USRP 192.168.10.2 is on. If I change order to
>=20
>=20
> ./tx_samples_from_file --args=3D"addr0=3D192.168.10.3,addr1=3D192.168.10.=
2" --rate=3D390625 --freq=3D0 --repeat --ref=3Dexternal
>=20
>=20
> only LED-A of USRP 192.168.10.3 is on. The results are the same on a pair=
 of USRP2 as on a pair of N210.
>=20
> I use ubuntu 22.04 with UHD version "tag: v4.7.0.0-rc1". The USRPs are co=
nnected though a netgear switch. Below is an example printout from a run:
>=20
> ./tx_samples_from_file --args=3D"addr0=3D192.168.10.3,addr1=3D192.168.10.=
2" --rate=3D390625 --freq=3D0 --repeat --ref=3Dexternal

You need to specify the channels you want to use,
e.g. `./tx_samples_from_file [...] --channels '0,1'`.
Indeed, if you read the source code of tx_samples_from_file=A0[1]
it only uses channel 0 by default.
You can use `./tx_samples_from_file --help`
for the list of options.

[1] https://github.com/EttusResearch/uhd/blob/e75629c3cfb4d0a654648f775e65e=
79375cf4f13/host/examples/tx_samples_from_file.cpp#L127

Best regards
--=20

C=E9dric Hannotier
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

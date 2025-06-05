Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0584EACF9BF
	for <lists+usrp-users@lfdr.de>; Fri,  6 Jun 2025 00:40:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF84E385D9D
	for <lists+usrp-users@lfdr.de>; Thu,  5 Jun 2025 18:40:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749163217; bh=RqbeTo/CBSguiS9o0qrIQeYU3LayOe50zKh/BzPIziY=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=lbKoANHbpIwTToGK44Bncszo88bvR9Y9ksHJ8yYbJLmEKDjE8ycVLF6UBfq4jeR9U
	 to/gaXyHSptFun23IA1dcmddh5dS/6CS7DiPTni/yi/jjFS43DSwS5+4YsXaljMDnd
	 bEgJ9iLKQzrljDLyVfjlIUl9hVQtcC2lC/vG9ivbLunelDw+x46VS9c09T5aPtEkMK
	 jN9QarOZVQYvUj8RQ1JBubgNa8KRpKv5gmYGOq7Q+UPgW2+F6zDbw+wluBpY5f3IZ6
	 UpaUPt3qJjrqwD+hAivD8rrdEGjBXeSYP+8jgbqvZKMkLIvOY52yR2lS4ZdlljDivQ
	 f1SrgIsh9MWBQ==
Received: from USG02-BN3-obe.outbound.protection.office365.us (mail-bn3usg02on0073.outbound.protection.office365.us [23.103.208.73])
	by mm2.emwd.com (Postfix) with ESMTPS id 8EAFA385D9D
	for <usrp-users@lists.ettus.com>; Thu,  5 Jun 2025 18:39:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=W5USA.onmicrosoft.com header.i=@W5USA.onmicrosoft.com header.b="l7HltaBh";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=L/WvQTprsIRWvGJirlxE0U2AWSK2z4oAZHiqcv/nUg0iIwgTD9NdNiOUieTw04QJ6Il2KFDUHp/DzxPvBUjH5yUkoHXBAElWF7ORz2YowoZbYiDcfd5pMWqUoFr4xFLjIJKz40L+YFu5gIomwt/JtVKFedCzBM43vUSxDtmFQGJkJ0jxeOvak9iCBi0pRJLr2ywAfnFfJQrmzjFtrKa1/fZix0rhCm+n1ghxpv8EvuxPcLs8b2G078OgVS7xGL/XumG4kby4duxH/qqKCVyjkHNe54XckCtElO1NTreduHzpZLa/XIsjHpP2nF5bxXyHXWMOPqSoK8SjFxwpro2uGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hrkvuLjlFDUaCpa+yBx/iyhH9Yz6E/UuNb/Tz0+EkgE=;
 b=OqU6GhGFcHkFu91wYkRkdWD3PbqSer26AFa2mwitPjKshTqkoWnum2Y+A29B/t/6z//voFTZ6wE/J0ph2a9mYbCsUyd3lt1xJG9wzjtuyro7p3HHs2kuckNw1p/hSceZ0XXvsuZ9b5jqEj758zWom9+8mdkqxVbWUOsu0/sa97nMOiiUlJHREkVtWEmBLknMFVg/0GMF1P/8ZdeJvq7DOQgUP0nCqFX4szXzd59Gew8boz0kCyt4rYBU4EpLNkneJyX7AZUDGriUb2ZUcPTP2IxM2a7Gn2jVI9KkAfFufnD7aB/OhnprxZJ5lKIKClUdKUfWUSy6A0a/Pa27SfwKSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=w5tech.com; dmarc=pass action=none header.from=w5tech.com;
 dkim=pass header.d=w5tech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=W5USA.onmicrosoft.com;
 s=selector1-W5USA-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hrkvuLjlFDUaCpa+yBx/iyhH9Yz6E/UuNb/Tz0+EkgE=;
 b=l7HltaBhfVxx5id4WOCKbmVUEwLFneyJDM+hvQ7EC3jNAWpTRbTb10BmwJFobXkCOnSZ4xM8+z/nGrjLijTgiNwxHwr1v1mH/26Ew/pKNRqD1E3/XRnhwdPW1iVVtpMraCEmGFFj6f3UCTnFbGQ9brvuG0Hq4+YL8q220Z6ziEQqfbqvnsjWNmQJXi2Nf3EvV9cxXwyoRkwF/OkG73bqWMn874b19nN68eSEkIcF3TVEzUjso05eUQ1XEOnK30gzoV8zIOdnVHnkQaGSqXT6SsQqBMvGJoQrLgTf3wDclEji5m4tc46RcEF63CYJHt0hbQWQ5ijRXeUGfeRh0BfwBg==
Received: from BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1a8::8)
 by BN0P110MB1276.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:183::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.35; Thu, 5 Jun
 2025 22:39:19 +0000
Received: from BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM
 ([fe80::a7c9:fb57:d8bf:259b]) by BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM
 ([fe80::a7c9:fb57:d8bf:259b%5]) with mapi id 15.20.8792.034; Thu, 5 Jun 2025
 22:39:19 +0000
From: Tommy Tsui <tommytsui@w5tech.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: tx_offset and rx_offset parameter usage on UHD calibration
 utilities
Thread-Index: AdvWahNE+oWKqvETSlSpjfAw+um5SQ==
Date: Thu, 5 Jun 2025 22:39:19 +0000
Message-ID: 
 <BNAP110MB1885A39CCAFA92666DE91AC7946FA@BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=w5tech.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BNAP110MB1885:EE_|BN0P110MB1276:EE_
x-ms-office365-filtering-correlation-id: 4c27a34c-5cbf-47ae-d55d-08dda481cf50
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|366016|1800799024|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?M0GsGSnsKmXLOyRE57SOO8bY46f8HaSCGJQRA8a5RDj/6wOo06uAX2JJjo+0?=
 =?us-ascii?Q?/Ye8qIO46iDpBAyO4YDHV0zydFuYbh808PdzBXxVlqKa28lPIsO7qwPRl7vE?=
 =?us-ascii?Q?22QCpPVd6mNpEUAk4IKuUMRiEcZZU/N1UF1PVRjhV5Z4Na0Q/5Uz+GNjoixQ?=
 =?us-ascii?Q?PfWfJN+eXTUM0sulWPCCXbakdQC8/3uO1RtiC0h6oMp2HskK0xLTHtjQUqAM?=
 =?us-ascii?Q?3/SYlz5FYLLji9EBTAA0efZOA8j+G9c7OzHcs8W5Y+UKD8/OLY/fsCKFwwMS?=
 =?us-ascii?Q?9G2fdD6J8etgogN9NFq1nZbhf8S7b/9+NCb1ffBmGCLnirNcsOEmdNSQuiDW?=
 =?us-ascii?Q?hvmgzD8PfDh2/rV5X2sXzziCpiaC2Dt+ntzkEBpXMRzzDBoHD3iLrmQVQ7pp?=
 =?us-ascii?Q?0ktFG6pE/OOwnRnGtgs1BzUfSDlpCQiKzctdomXonI/xw+leEVfwIkmErezy?=
 =?us-ascii?Q?1k7TwyU1SuZuLxxug4R+M+OLU3NL989laAiHphyuUoOlTrEsOh82YAKSgGse?=
 =?us-ascii?Q?mJmkLPSpNhi67faaBFD8G1snsoFXorjkMjm5EJZsDG4HO30LOZpgieFTsKW3?=
 =?us-ascii?Q?xAbL0AAyjYXKmuENXnIv+X0eJlqIc/zmlzvfmJmoZzwSgsxrrXvoVZwD+6eL?=
 =?us-ascii?Q?aER2JJ3ol3pFS3lWuPuFVo7omnPs7IK9ty70dYDOwREhsLWxEFoXJ4JVyJiw?=
 =?us-ascii?Q?m9pDhZsAHvIt3XxlQhV232iW3KJwX599D/Ta0ulHYjJtc1s9qu82O1rZUcAo?=
 =?us-ascii?Q?13mRGk6ICQL7x/geja+cVHPD6hINEg0jIF8k12TigAG70i/6QYVnaiK2YEmg?=
 =?us-ascii?Q?hP1SpZFYSPjaRybCZ2w8oswldRLjDKlrVNB8j7rQ6Bc1OymLqdUPu9GtCFEX?=
 =?us-ascii?Q?S5ZOTd/DRagEqTnw9wLsMSxkI0nsz9ZRfwDiZXQQfCsH15wGBff63Gs7RqGK?=
 =?us-ascii?Q?+xpSBoUIj80yAcHzqYXC82pRNCM7UFrnxYz4hlUoXnw75jNMEdzRSn6jHEIJ?=
 =?us-ascii?Q?Ia6xab7gdhNzMVzXD0TaSU4QPdTqTpzcGQ2c8cNrj5rWozqIwNlsmmWg/pKg?=
 =?us-ascii?Q?L4cJ7V+1OI0vwfDEwPUjJYg+eh8u/9QWshwrjimvT8hvB9InDj0p02bLlnN+?=
 =?us-ascii?Q?yzYwQfCVitFZvsXyPJmw4XaDpjMrsi6KB0+AKnwLJH4x5U8dKq/+CYMYL6KQ?=
 =?us-ascii?Q?niqie2ANaF7gKCce3KeutF0lWtxpB/OszzqQp/mXiTrBW4uItmnQynuJCJdZ?=
 =?us-ascii?Q?HxRq7imXQwW8Q9PqvT/jEsJKbTadz5fu3yaHY+dX1U9lFLHrWuI4wAVxVakm?=
 =?us-ascii?Q?2wiQMQ+nQlP96gKu3yjC+dTlZmTA3FOkp8qW2vUX9meq6RPVgSQ2/KZIb0VD?=
 =?us-ascii?Q?sS6IPk2say892EgjLeCsCXfW8pv0sjxfd/i/rxq1O5KPQvlQlnZp7eTZ9F63?=
 =?us-ascii?Q?F41FO+GWXvlPcZTfuGBKW+KUkdu7Lbk83GB5OOuzc/TV0zl0Ubc03Q=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(38070700018)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?10VD83sNbbkbLtpZR7ON94kr6c0sREgqWJ3pcQWJEurjSSQ44U/jKVbS/0Gt?=
 =?us-ascii?Q?bgiqyqYERlCx58yS2OPsJrJYQl6TNoD2c9MtbAxS80SvIJkcARaabIH7OEJu?=
 =?us-ascii?Q?HegjRnRUdTPaqxxSNAN2AYwRjb2lPN5x50dSwoZucjy/b3yAesrI5y3cfpHV?=
 =?us-ascii?Q?S0Pc3iU36BySVmJ1e5gQrBuN7E0dHkqjprrqMCVLBIlbY8KtFr1ElCD6s7QQ?=
 =?us-ascii?Q?ZeMnCWihMxaPLFkHrtIRXGUqIdgTiX8c+XMKNFgQxyAgZzJfr9OyXCzYkeIM?=
 =?us-ascii?Q?SLiNusa4pPpty+iNQ8C7L+MJ+zMVsZbq/y5mb2c8GxRrb1t5RQVVhVGQzzpr?=
 =?us-ascii?Q?2PyUjiRrqrkGUGXy0yjYNQ1YyqQzfckhdtIZ0jQJJO1dra4t92xfwtp4fdKc?=
 =?us-ascii?Q?syCVX474HqItaFcpBzOkF7zD//O1CxX32Zvy0FZmbyMBtHhsct7fw760yksH?=
 =?us-ascii?Q?+cMXMMeO8EJVn3tC7VWniRF9wW5awmOOvI85ReW2LvUu1L11vz4YDF6yNEY8?=
 =?us-ascii?Q?W8iMCl099aWAHxuEIs0HjvlwdEszdW++lsb4fxZFkh4BEWwf8fTvIJsW9dId?=
 =?us-ascii?Q?HO1AbsRAyNpti7Xy4G4uhxxsoqmCkgNPkBMIcMkG2HVijPnwpXv9JQCNcmoY?=
 =?us-ascii?Q?IP6zUh9fN1PjKIKQMe4KKBhdq44B7ytViLLCDYUCciNtxpJikjtJ73nxibCS?=
 =?us-ascii?Q?26sQ0W+d8RrY3Rsr07va1Zz9n+4gilLHALK18tav1dQldZy16L5NfOiVT8Eg?=
 =?us-ascii?Q?3p5HMPdw38ydA9cQIKLZqrOKge3DfJsznEbhLF+giYbi5NNSvskAIGwqnDs1?=
 =?us-ascii?Q?eUN+7t/G4Ux3yEEa33nwOOuyqzeyhb5x2U+XPIjKVGWQnIaAWdFh7Lx2Qexs?=
 =?us-ascii?Q?z4mekNRoDdic3dYFOgYkWOIQRrJ1usU9DZRfic80anHlXxfqr/gVeMySchW4?=
 =?us-ascii?Q?ZGK8+6LQFu5BPrpJwsA6WnWr34b/4ukBwBJ74diosVOLDxFAfTBrXPciURkN?=
 =?us-ascii?Q?csazb7hB0jbw34MntDgZeJztQL1Inwpe5XhVCzr9xD8SlMXU+ZE4FqVauM0K?=
 =?us-ascii?Q?A6Ep2ReeVUvfOj+nrTHsJ3sdZHxBi/vkEEnRXgGA7PFt2EB8mkjhckek0UHQ?=
 =?us-ascii?Q?q8beDR7tSpiekQXJTypLi5dbfMZ/eUKu0UFkU7IXdfTTLPpZzyJUgePwSzr6?=
 =?us-ascii?Q?krgO/Vn8k8uydWcWDUAWfxcS9FmUPeO7s3dmejZcUzXNG2kj+Fxjs8xSMzvX?=
 =?us-ascii?Q?CDwgzUzt1zN5dHIKvtdcZqpE5nsfMjmIIWD3u5NBdvcMxKFTf+AeIQ/eQ+rm?=
 =?us-ascii?Q?N0pe/H8tPonEjr4QqOUZmS3+9t7Szc1nJCSLeVmVbZaexsZIF7n69mKt06I0?=
 =?us-ascii?Q?hfC4C0BCyCHxtZQCM/rRBP0lgNcR5zZjF1gR42T0uzKxHa35rDeqmSur+1sM?=
 =?us-ascii?Q?HhRNbzlDkBn7ejBCtZs0Y8Z1lYjvn6V4GzQ6YxZAHz7ZuqPlRYwV8mzqP/aI?=
 =?us-ascii?Q?/+S/Rrbo4moPV1s=3D?=
MIME-Version: 1.0
X-OriginatorOrg: w5tech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c27a34c-5cbf-47ae-d55d-08dda481cf50
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jun 2025 22:39:19.2103
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7e629b05-df8b-47da-97f7-2ae859536370
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1276
Message-ID-Hash: C4A3UBYJVPZPEHG73J5DKXHFNCL4IYO4
X-Message-ID-Hash: C4A3UBYJVPZPEHG73J5DKXHFNCL4IYO4
X-MailFrom: tommytsui@w5tech.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] tx_offset and rx_offset parameter usage on UHD calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F5KZVYFRNNL2VIKKY5SMAFI67YPU4Z2I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5852287701415924253=="

--===============5852287701415924253==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BNAP110MB1885A39CCAFA92666DE91AC7946FABNAP110MB1885NAMP_"

--_000_BNAP110MB1885A39CCAFA92666DE91AC7946FABNAP110MB1885NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Hi,

I have some open questions about tx_offset and rx_offset parameter usage fo=
r the UHD calibration utility uhd_cal_rx_iq_balance, uhd_cal_tx_iq_balance,=
 and uhd_cal_tx_dc_offset.

The cal util -help output indicates tx_offset is the TX LO offset from the =
RL LO in Hz. Likewise, for the rx_offset. If the usrp app uses a direct fre=
quency conversion and no LO is involved, then tx_offset is zero. One strang=
e thing is that when the parameter is not specified, the cal util will use =
a default value 934400 internally. I don't know where this constant came fr=
om. Does it mean for direct frequency conversion, I should specify tx_offse=
t of 0 (to override the default 934400) when performing a calibration?

My application runs on X310 with 2 UBX-40 installed for duplex operation. I=
t does specify a Rx LO on the receive and a Tx LO on the transmit, but the =
difference between the Tx LO and Rx LO is 40MHz, which exceeds the tx_offse=
t/rx_offset max limit of 20MHz. Therefore, my only option is to run the cal=
ibration without tx_offset and rx_offset specified, but I wonder how the ca=
libration result would impact my application performance.

I appreciate it if anyone can share his/her experience on the UHD cal utili=
ty rx_offset & tx_offset usage.

Thanks,
Tom

________________________________
The information contained in this e-mail and any attachments from W5 Techno=
logies, Inc. may contain confidential and/or proprietary information, and i=
s intended only for the named recipient to whom it was originally addressed=
. If you are not the intended recipient, any disclosure, distribution, or c=
opying of this e-mail or its attachments is strictly prohibited. If you hav=
e received this e-mail in error, please notify the sender immediately by re=
turn e-mail and permanently delete the e-mail and any attachments.

--_000_BNAP110MB1885A39CCAFA92666DE91AC7946FABNAP110MB1885NAMP_
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Hi,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I have some open qu=
estions about tx_offset and rx_offset parameter usage for the UHD calibrati=
on utility uhd_cal_rx_iq_balance, uhd_cal_tx_iq_balance, and uhd_cal_tx_dc_=
offset.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">The cal util &#8211=
;help output indicates tx_offset is the TX LO offset from the RL LO in Hz. =
Likewise, for the rx_offset. If the usrp app uses a direct frequency conver=
sion and no LO is involved, then tx_offset
 is zero. One strange thing is that when the parameter is not specified, th=
e cal util will use a default value 934400 internally. I don&#8217;t know w=
here this constant came from. Does it mean for direct frequency conversion,=
 I should specify tx_offset of 0 (to override
 the default 934400) when performing a calibration?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">My application runs=
 on X310 with 2 UBX-40 installed for duplex operation. It does specify a Rx=
 LO on the receive and a Tx LO on the transmit, but the difference between =
the Tx LO and Rx LO is 40MHz, which
 exceeds the tx_offset/rx_offset max limit of 20MHz. Therefore, my only opt=
ion is to run the calibration without tx_offset and rx_offset specified, bu=
t I wonder how the calibration result would impact my application performan=
ce.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">I appreciate it if =
anyone can share his/her experience on the UHD cal utility rx_offset &amp; =
tx_offset usage.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Thanks,<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt">Tom<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt"><o:p>&nbsp;</o:p></=
span></p>
</div>
<div style=3D"font-size:8pt; font-family: 'Calibri',sans-serif;">
<hr>
The information contained in this e-mail and any attachments from W5 Techno=
logies, Inc. may contain confidential and/or proprietary information, and i=
s intended only for the named recipient to whom it was originally addressed=
. If you are not the intended recipient,
 any disclosure, distribution, or copying of this e-mail or its attachments=
 is strictly prohibited. If you have received this e-mail in error, please =
notify the sender immediately by return e-mail and permanently delete the e=
-mail and any attachments.</div>
</body>
</html>

--_000_BNAP110MB1885A39CCAFA92666DE91AC7946FABNAP110MB1885NAMP_--

--===============5852287701415924253==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5852287701415924253==--

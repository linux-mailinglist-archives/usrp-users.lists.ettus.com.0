Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAF6ACDDA6
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 14:16:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 872A3385E1B
	for <lists+usrp-users@lfdr.de>; Wed,  4 Jun 2025 08:16:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749039386; bh=dUcCzily9uWWB4SyFywfvU5/OdhHceyfKQWRVvCNN3U=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=DtJ+OX+RT+XXIu8ibQ9VOCxwgkh8x8wFj6abn8lcYOZ6TxYqx9Tt7NoHd/R+Ooa4a
	 s3hsqKAWpmJ/xwlDjabd05XfIWrZI+70hi93F1GvzZO7kQrcyAfrkvfl4j1ou5aZEo
	 VNDHGYGxyTvy6WDi9pTdf0bxWr7cy7TbC/DYZsxFOc960TI9/aOxYGkji6CfA3+pBV
	 jUdXf7I+DU4MvDAkkh/6D/HaNeoK+2CKtCBsbge4yh4+y4QwQLRt7d0JZ4b9hFt7Eh
	 FLxvqhaQBRVhmBdJRG/QQMc77jI1ivYvyP/wmrz9s4Tfs3Crad4bSFQUIUZxrSONkS
	 DLMvncVS0pILg==
Received: from outp.meo.pt (outp.meo.pt [83.240.183.2])
	by mm2.emwd.com (Postfix) with ESMTPS id EBB90385E1B
	for <usrp-users@lists.ettus.com>; Wed,  4 Jun 2025 08:15:29 -0400 (EDT)
Received: from pcamsmtac01.meo.pt (localhost [127.0.0.1])
	by pcamsmtac01.meo.pt (Postfix) with ESMTP id 4bC63g6cfQz12P8Q;
	Wed,  4 Jun 2025 13:15:27 +0100 (WEST)
X-MPSId: 4bC63g5KfWz12P5H5SCY:1749039327
X-MPS-IPData: [ cc=PT net=62.28.0.0/16 asn=15525 asname=MEO-EMPRESAS MEO - SERVICOS DE COMUNICACOES E MULTIMEDIA S.A., PT ]
Received: from smtp365out.altice.pt (smtp365out.altice.pt [62.28.90.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pcamsmtac01.meo.pt (AnubisMTA) with ESMTPS id 4bC63g5KfWz12P5H;
	Wed,  4 Jun 2025 13:15:27 +0100 (WEST)
Received: from PTPPICEXCH05.PTPortugal.corpPT.com (10.162.104.102) by
 PTPPICEXCH02.PTPortugal.corpPT.com (10.162.104.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.4; Wed, 4 Jun 2025 13:15:27 +0100
Received: from DU2PR03CU002.outbound.protection.outlook.com (40.93.64.27) by
 smtp365.altice.pt (10.162.104.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.4
 via Frontend Transport; Wed, 4 Jun 2025 13:15:27 +0100
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ulCT5bn1vmXo0U9YdX+ajZu2tRMqS0Y7OILzTwJpfMczSerUDd+7hKuosuEEM2sib2a8+Y1cHXn5ed1hL6uk3fU5Mn++Lh5ACYCiy6wdiEnM+j2ajcUTYX3xUXdraT5Lnbc9trcdNU2Z6++5VH1JB81mdVMaE/uWSsBVI6m6LrYT8WsRS3Q6WvB1k2JdA2+9rJWCYFAYY9VE+pWGIzL30s74Gro2Dpae4xAUM6wzugwhLXC4YJKVHdLf/MoSaEt+o7iSxBUXiazpR7joUx8UXfYg49H70gGs5XmK+q2msNvqFEwsFuBXdSJsmURqeQSgWR5ZNiwCRNy9hHTNJiqQBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWvCUFuXgwz7pB5NWvAGX0VFPJgz2HX2+/inUXfP3Hk=;
 b=GMy8FNWxSR0f2BsN2SXf7rPnLsxnHp7ZRZYDw7kG3/gHAGDhsXQYFaCrBZ+/TMrYsO3rb+YaBTTk91EKqC5Vmumfpsn0uml0+VIadvj+DTVkplzGFYB8qh9OCUg7jQBCz48atTsD/4XtrcTbnU1BfPectjS4zJzpU+qimB4+Iq/vFuBq0P6kLAs7Nf1rTrudk95DTCAycTqhC3aRH+el1nu3Htm04n5Uuc0vmGQvlXpenODhmWMX+l94v3guCqqQduCoiv+5MBvTLcMeRaRFelOzwfulHItf+ScsMx6crZ3qNI7LzUy7VZILtlZe6x+V5RoPa68EB/QJIH2FJIGvGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alticelabs.com; dmarc=pass action=none
 header.from=alticelabs.com; dkim=pass header.d=alticelabs.com; arc=none
Received: from HE1PR06MB3993.eurprd06.prod.outlook.com (2603:10a6:7:9d::18) by
 PR3PR06MB7052.eurprd06.prod.outlook.com (2603:10a6:102:8f::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8813.20; Wed, 4 Jun 2025 12:15:25 +0000
Received: from HE1PR06MB3993.eurprd06.prod.outlook.com
 ([fe80::415e:75da:dda9:1029]) by HE1PR06MB3993.eurprd06.prod.outlook.com
 ([fe80::415e:75da:dda9:1029%5]) with mapi id 15.20.8769.037; Wed, 4 Jun 2025
 12:15:25 +0000
To: Tommy Tsui <tommytsui@w5tech.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: UHD 4.8 set_tx_bandwidth() and set_rx_bandwidth() method no
 longer works
Thread-Index: AdvR1qwmkmu3YEPFQ46KeG9Raz1UpQDb64dC
Date: Wed, 4 Jun 2025 12:15:24 +0000
Message-ID: <HE1PR06MB3993FAE909030D93C82468E6DB6CA@HE1PR06MB3993.eurprd06.prod.outlook.com>
References: <BNAP110MB18852576F534C5C65C5BCDE09460A@BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM>
In-Reply-To: <BNAP110MB18852576F534C5C65C5BCDE09460A@BNAP110MB1885.NAMP110.PROD.OUTLOOK.COM>
Accept-Language: pt-PT, en-US
Content-Language: pt-PT
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
X-authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=alticelabs.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: HE1PR06MB3993:EE_|PR3PR06MB7052:EE_
x-ms-office365-filtering-correlation-id: 10584706-04bf-43c1-8191-08dda3617c5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007|8096899003|38070700018;
x-microsoft-antispam-message-info: =?Windows-1252?Q?tkp/i9YoOyOWd2N2HsAALWiq5qDCOD5wv9zBEKaJmhYqQtBDCl4Sm4P3?=
 =?Windows-1252?Q?APaWtj70d7TMHsb28PBXaSVkwRXE3BRHiMpZJQZ2RSao8LdtV1KRaZJJ?=
 =?Windows-1252?Q?oDVTZOsyQO9yC+uqGtug6h5Sgu0IkZP/qSEYKqYzJIy/tajn+iW0N8iF?=
 =?Windows-1252?Q?hbOMIDvJpF9A8G+qMqQOXTa9sVXw9r2J3uP1iF8gghAdCsHAd1LrDvx9?=
 =?Windows-1252?Q?uHOS86v25T5kErIR04uuI46S5QiFN8GVZCHWXKUkGnnmHX1xYUTS7X43?=
 =?Windows-1252?Q?v2nsVe36/WtoaLiZlqiId7bFBU/pCaJd8j6P96AuZ6Wm3vfIwP7Im5Lj?=
 =?Windows-1252?Q?0w+C2te7nPCa7cXskmDxRozSfNxv0ZqlHvqwrCDEuz+tDSm1K/NMkO5b?=
 =?Windows-1252?Q?sMHvOH7H6Z5X7gPSgpXLwttmtXf7yxRTrT7ffbFobUSVBFzk+qRdu5EA?=
 =?Windows-1252?Q?6KSaVEc3k/qaqMhISETjUrJqZd5ujlUPH6/rhk6CCN1IbiGb1xfUJnfR?=
 =?Windows-1252?Q?dK+VwVPvbNxEcdN6FArDPHFfBnGtPv/B2U0GdJInbAkB1eSGTW8MvUi2?=
 =?Windows-1252?Q?BvIHcdUs9i4ZfxGP3L2OA+N4pL9fvPtpw3tYv3f06IVrsIeEvLuK4AuG?=
 =?Windows-1252?Q?EqVKgJ/eyYR2ANTKr8Km7WFm+ycQaXMOsjR+HqOZerHLKSkmmkMYTyUK?=
 =?Windows-1252?Q?j2tLwcBGRfc9HneHelke6htMkPeAg0ydvrEX8UoA7SukQxX36nL0XVfO?=
 =?Windows-1252?Q?0O1miyCimlo/wJC4Zwyx3cGgpOXLJ4AB0NMzog/oai/DcV2JxrX6p9X2?=
 =?Windows-1252?Q?f4s8W9Z5sc6tQVjrBRZRWfXq3s1OViHe4pr/mMKW6P4qIx1pKGc0I6eL?=
 =?Windows-1252?Q?kXZF6XZu2ADbgT3w3QCrdp/ItpJ0sgsI+BH7kBQRR47C+X/fFBCqAEpd?=
 =?Windows-1252?Q?EzSgHd/jU1W5eRVDCwZeNTSSPC/48TjgurKKKrlRH/HTXISi0FNqOHA5?=
 =?Windows-1252?Q?K1qs0s3fHNr8nmV97qbLrOYo1HHNRraJf0uyzBcNWYphgssYNpys4bD5?=
 =?Windows-1252?Q?jWtPf3F5uXtedd6qFnPVxGMYiFRpSN8oGH0SwVbmtwrWthDgDuhSbjlF?=
 =?Windows-1252?Q?ZrM30zqhWfuywZfKZNkZJggcZvRpPJcza/JkwCyn8CXWTwAkZQOo1d/k?=
 =?Windows-1252?Q?oKx6wOJkI0nwDRMn8N093z/NSwhbHYeZCyx0EFh8ZXlPsWqxmDrGPrmS?=
 =?Windows-1252?Q?GP/4bcWZX5ZYWmY4HJVqAQyQOP8Ht0j++Z0iz6go6jAQWsgxW1SHyYTh?=
 =?Windows-1252?Q?cjT2CWSi9guCM+0OuurfVjqPa9Q7f8Ph0PMwhyV94TXaEA4KFcrt90EB?=
 =?Windows-1252?Q?Gf6fEpFE6R3F7GS6DzfwuyWiMIFPYsGJulVBana7GVlR7NVj5Ne7GZfQ?=
 =?Windows-1252?Q?NekXDNRmvE2qjjSNoo4/hKrdqZe16R0tnFm22Dxc8sQyBAa3bgobY8dX?=
 =?Windows-1252?Q?vD06GaMMGG9gvaMtGu+ULcnO2MTqEM4ApuRVT3OqvEReA4Z0/JLP1My3?=
 =?Windows-1252?Q?ec0rU3ocEOH95VXfvJmvKJHlwBepUnvADbeSeQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HE1PR06MB3993.eurprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(8096899003)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?Windows-1252?Q?ECq8tl2p26OKAk0sySPrM95svGo9LyPawlyu7LlkxC6nj1/Qp+IDU1XA?=
 =?Windows-1252?Q?2dawfBzJIF3XOGCz7lhxcDbQEbj+ohQV8Rhmo1L6lpz4zmXWvPPV/K12?=
 =?Windows-1252?Q?BdHcZOT7jtsrsWyAoQ6HAOMSSkHF0KSkwnWBaKJxfe6dAYSl2Xt+1CwD?=
 =?Windows-1252?Q?peX+ijeRV/hheBQfUDGfrOQuRY9QC1TUMNle0v91BKCNFU8gS9ewC4t3?=
 =?Windows-1252?Q?Vg6AM5c3nmQej8GwFj6Skp4/kZ2HyKxFAOFGn3/JkFkYON3FFv+pTDqg?=
 =?Windows-1252?Q?npGBgJpnk6gUv5EA28qJMtwCdlkS3wFWkPcC3FJAMfqP2vPaiYQ/iKaJ?=
 =?Windows-1252?Q?UWEMCIDkEAvi0XpWNiESpl3y+T2ky1lZjx15yvWxdhuqKOezsNtmsyDC?=
 =?Windows-1252?Q?Z5XU04OaBmPeCOSw92tQd+5R5QmGkvhJHPioKdfH1UFdX8ZHIPyw3eGv?=
 =?Windows-1252?Q?sHFVaAsy/y1Wa/9HQCZxLiWgHvNt1QnKM+MEqRwDz5XpPgbJMJ8whUIT?=
 =?Windows-1252?Q?d2aWnHAfzgom6c2g1IAPC9cXn7cdtI8EOb/cCcYUG5TSbra+2r7IIsK8?=
 =?Windows-1252?Q?QDASWDqynznoM+g+GVARZ4cWH5LiGC1GgHi8MGXutcU/jfDaPeDUcucE?=
 =?Windows-1252?Q?KSQsI+Uvi4HY5hZCq7a5ERWyG98Rl/muDumvuI3zhx09HY6vlG6AN8Rd?=
 =?Windows-1252?Q?Xp+rV3LR/qaHW4eBiJ5vZufJwJjMJITxBOj0EhJoBilss20DSE5kbd5v?=
 =?Windows-1252?Q?IQCB1a6HMGZ/U5KO1SfRkDyme7CFBxBDT7f8Hu1QQgRwx6hTMrhO0cLI?=
 =?Windows-1252?Q?LbeN5iFCvYPep1W6NtdHQiVPX1U4xdWEmy9jfYIE0f+0wW7JcgMkTzY4?=
 =?Windows-1252?Q?TnJQSjvLGFjQQtXdoNQDemuP0tGrp96dsAwpbwi/5qnNEqvMO6oItOOJ?=
 =?Windows-1252?Q?YX3FM9UwT6zAzANWzbmUhZ+0YdUmMwHrfhmX44/axz/8EVNyVtEoObGm?=
 =?Windows-1252?Q?S9ExePmh6LajGq3a/7MIeLXZT8m2CM9N7ZvhNpg4FRvFMsQ+9EtK0Xk2?=
 =?Windows-1252?Q?KTYZNBkaBiiEG3qy95Ps1FLc0kn5jzV9mx3FT6WKOqJn6gtvtIRR2SuE?=
 =?Windows-1252?Q?lBapZ+N5fEeu1vZlh1fMVvtHJZqAZa0eOb75Kk904/NX0iEGRGtDVAVW?=
 =?Windows-1252?Q?qVh3OIDPIpvZfRGxlrkvghNaDi4Uny0+Wu2MtX6jkJMHro4y7+DaBBVz?=
 =?Windows-1252?Q?wJ75Ptrq/wXb6WF8j3L4B1cVzziOmCZnzG18uc/6neru2tXK0KNdiCpD?=
 =?Windows-1252?Q?4DdyCE90kj8sCQhPcHpK6CvAQDrrc9pQ2fquM+COQiAe12iJXL6jlsF2?=
 =?Windows-1252?Q?8DcFIHMrHEL11IN2Aow9PN3RrBNvNBrwEgTQRN+97t9N4n1ravjAxoWJ?=
 =?Windows-1252?Q?y7Ishzs50hTHvz69YTRYLT+FcHG0cXIfTfc5zugczBUnFWZ69Vhx0vjX?=
 =?Windows-1252?Q?vF//QVp4+FjTbKBJTro3k11g2OcRjv2MbwVOszMnpdp/VxIsRSmUUyGR?=
 =?Windows-1252?Q?EOGkPIAkoOUTjjwDbQiQ99zyFUyMSQiGUy58c4pOKSagnkfNtmT2mx+9?=
 =?Windows-1252?Q?jDLJ0bzQNiwx1OAZdXvQPhhUmOa+kkptm1L/fDkmpO9OzWwVP/fjaKPH?=
 =?Windows-1252?Q?Ewri92476K+fdTHNOJkdezpEI2t2WFag?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HE1PR06MB3993.eurprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10584706-04bf-43c1-8191-08dda3617c5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 12:15:24.9962
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9acd2dbd-ad97-4768-9854-5e28ec55fc41
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lvye1L49LPOnJ0Xes2bJvgR0GHBfMcSRAeT7slJ8lr8Sl97C23tct/pQzX3I386/q/DlMIalv2UEWPK+1lSBdghURaf1s6+jBrzl1vDoKCg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR06MB7052
Message-ID-Hash: ZNSEH2X2Z3OZEXF5UKW4IHFHCII3FZL3
X-Message-ID-Hash: ZNSEH2X2Z3OZEXF5UKW4IHFHCII3FZL3
X-MailFrom: alexandre-j-serio@alticelabs.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.8 set_tx_bandwidth() and set_rx_bandwidth() method no longer works
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZNSEH2X2Z3OZEXF5UKW4IHFHCII3FZL3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?Alexandre_Jos=C3=A9_Monteiro_S=C3=A9rio_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?Windows-1252?Q?Alexandre_Jos=E9_Monteiro_S=E9rio?= <alexandre-j-serio@alticelabs.com>
Content-Type: multipart/mixed; boundary="===============3810810011066532600=="

--===============3810810011066532600==
Content-Language: pt-PT
Content-Type: multipart/alternative;
	boundary="_000_HE1PR06MB3993FAE909030D93C82468E6DB6CAHE1PR06MB3993eurp_"

--_000_HE1PR06MB3993FAE909030D93C82468E6DB6CAHE1PR06MB3993eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I'm working with NI x310 USRPs for OAI testing and developing purposes and,=
 when using v4.8 of the UHD i have the same issue as well. With the v4.7, t=
he set_tx_bandwidth()/set_rx_bandwidth() do work, getting the values from t=
he get_tx_bandwidth()/get_tx_bandwidth() in accordance. In the case of v4.8=
, it seems that those "set" functions are not doing anything as you say... =
Couldn't find any solution or explanation for that yet...

________________________________
De: Tommy Tsui <tommytsui@w5tech.com>
Enviado: 31 de maio de 2025 04:14
Para: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Assunto: [USRP-users] UHD 4.8 set_tx_bandwidth() and set_rx_bandwidth() met=
hod no longer works

You don't often get email from tommytsui@w5tech.com. Learn why this is impo=
rtant<https://aka.ms/LearnAboutSenderIdentification>
Aten=E7=E3o: Este email foi originado fora da MEO SGPS, S.A. Por favor, n=
=E3o clique em links nem abra anexos, a n=E3o ser que conhe=E7a o remetente=
 e saiba que o seu conte=FAdo =E9 seguro.




Hi,

Recently I upgraded UHD driver from 4.7 to 4.8. After the update, I discove=
red my RFNOC application has a new issue. Method set_tx_bandwidth() and set=
_rx_bandwidth no longer works properly. A call to get_tx_bandwidth() and ge=
t_rx_bandwidth() returned 40MHz regardless of the bandwidth parameter speci=
fied in the set function call. I installed UHD 4.8 FPGA image to my X310 pr=
operly.  I built UHD 4.8 driver source and installed it on my development h=
ost without any issue. When running the same app compiled with UHD 4.7, get=
_tx_bandwidth() and get_rx_bandwidth() returned the same value as the param=
eter specified in the set method call.

I compiled the UHD RFNOC example application rfnoc_radio_loopback with UHD =
4.8 library. It produced a similar issue.

Has anyone experienced the same issue on UHD 4.8?

In some old posts, some people thought set_tx_bandwidth() and set_rx_bandwi=
dth() doesn=92t do anything if the radio daughter card has a fixed analog b=
andpass filter. Is it still the case for UHD 4.8?

The radio daughter card WBX-120 has a fixed bandwidth of 40MHz, but I would=
 assume set_tx_bandwidth() and set_rx_bandwidth() adjust the digital filter=
 bandwidth rather than the analog RF bandpass filter.

Hardware & Software driver used:
X310, radio daughter card WBX-120.
UHD 4.8 release installed on the Ubuntu host, UHD 4.8 release FPGA (usrp_x3=
10_Fpga_HG.bit) installed on X310.

Host OS: Ubuntu 24.04 LTS

Tom









________________________________
The information contained in this e-mail and any attachments from W5 Techno=
logies, Inc. may contain confidential and/or proprietary information, and i=
s intended only for the named recipient to whom it was originally addressed=
. If you are not the intended recipient, any disclosure, distribution, or c=
opying of this e-mail or its attachments is strictly prohibited. If you hav=
e received this e-mail in error, please notify the sender immediately by re=
turn e-mail and permanently delete the e-mail and any attachments.

AVISO DE CONFIDENCIALIDADE
Esta mensagem e quaisquer ficheiros anexos a ela cont=EAm informa=E7=E3o co=
nfidencial, propriedade do grupo MEO e/ou das demais sociedades que com ela=
 se encontrem em rela=E7=E3o de dom=EDnio, Funda=E7=E3o MEO e MEO ACS, dest=
inando-se ao uso exclusivo do destinat=E1rio. Se n=E3o for o destinat=E1rio=
 pretendido, n=E3o deve usar, distribuir, imprimir ou copiar este e-mail. S=
e recebeu esta mensagem por engano, por favor informe o emissor e elimine-a=
 imediatamente. Obrigado


--_000_HE1PR06MB3993FAE909030D93C82468E6DB6CAHE1PR06MB3993eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
I'm working with NI x310 USRPs for OAI testing and developing purposes and,=
 when using v4.8 of the UHD i have the same issue as well. With the v4.7, t=
he set_tx_bandwidth()/set_rx_bandwidth() do work, getting the values from t=
he get_tx_bandwidth()/get_tx_bandwidth()
 in accordance. In the case of v4.8, it seems that those &quot;set&quot; fu=
nctions are not doing anything as you say... Couldn't find any solution or =
explanation for that yet...</div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div id=3D"divRplyFwdMsg">
<div style=3D"direction: ltr; font-family: Calibri, sans-serif; font-size: =
11pt; color: rgb(0, 0, 0);">
<b>De:</b>&nbsp;Tommy Tsui &lt;tommytsui@w5tech.com&gt;<br>
<b>Enviado:</b>&nbsp;31 de maio de 2025 04:14<br>
<b>Para:</b>&nbsp;usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com=
&gt;<br>
<b>Assunto:</b>&nbsp;[USRP-users] UHD 4.8 set_tx_bandwidth() and set_rx_ban=
dwidth() method no longer works</div>
<div style=3D"direction: ltr;">&nbsp;</div>
</div>
<table style=3D"direction: ltr; text-indent: revert; line-height: revert; w=
hite-space: revert; background-color: revert; display: table; margin: rever=
t; width: 100%; height: revert; table-layout: fixed; color: revert; border-=
collapse: collapse; border-spacing: 0px; box-sizing: border-box;" cellspaci=
ng=3D"0" cellpadding=3D"0">
<tbody>
<tr style=3D"background-color: revert;">
<td style=3D"direction: ltr; text-indent: revert; line-height: revert; whit=
e-space: revert; border-width: revert; border-style: revert; border-color: =
revert; background-color: rgb(166, 166, 166); padding: 7px 2px; word-break:=
 revert; color: revert; width: 0px; height: revert;">
</td>
<td style=3D"direction: ltr; text-align: left; text-indent: revert; line-he=
ight: revert; white-space: revert; border-width: revert; border-style: reve=
rt; border-color: revert; background-color: rgb(234, 234, 234); padding: 7p=
x 5px 7px 15px; word-break: revert; color: rgb(33, 33, 33); width: 100%; he=
ight: revert;">
<div style=3D"direction: ltr; text-align: left; text-indent: revert; line-h=
eight: revert; white-space: revert; font-family: wf_segoe-ui_normal, Segoe =
UI, Segoe WP, Tahoma, Arial, sans-serif; font-size: 12px; color: revert;">
<span style=3D"letter-spacing: revert; background-color: revert; line-heigh=
t: revert;">You don't often get email from tommytsui@w5tech.com.
<a href=3D"https://aka.ms/LearnAboutSenderIdentification" id=3D"OWAcb708ed9=
-228a-5563-d601-e1f58bf9b4f2" class=3D"OWAAutoLink" style=3D"color: revert;=
 display: revert; background-color: revert;" data-auth=3D"NotApplicable">
Learn why this is important</a></span></div>
</td>
<td style=3D"direction: ltr; text-align: left; text-indent: revert; line-he=
ight: revert; white-space: revert; border-width: revert; border-style: reve=
rt; border-color: revert; background-color: rgb(234, 234, 234); padding: 7p=
x 5px; word-break: revert; color: rgb(33, 33, 33); width: 75px; height: rev=
ert;">
</td>
</tr>
</tbody>
</table>
<div style=3D"text-align: left; line-height: 10pt; background-color: rgb(0,=
 0, 0); padding: 2pt; border-width: 1pt; border-style: solid; border-color:=
 rgb(0, 0, 0); width: 100%; font-family: &quot;Altice&quot;; font-size: 10p=
t;">
<span style=3D"color: rgb(255, 255, 255);">Aten=E7=E3o:</span><span style=
=3D"color: white;">&nbsp;Este email foi originado fora da MEO SGPS, S.A. Po=
r favor, n=E3o clique em links nem abra anexos, a n=E3o ser que conhe=E7a o=
 remetente e saiba que o seu conte=FAdo =E9 seguro.</span></div>
<div><br>
</div>
<p style=3D"margin: 0in; font-family: &quot;Aptos&quot;, sans-serif; font-s=
ize: 12pt;"><span style=3D"font-size: 11pt;">&nbsp;</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">Hi,</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">Recently I upgraded UHD driver from 4.7 to 4=
.8. After the update, I discovered my RFNOC application has a new issue. Me=
thod set_tx_bandwidth() and set_rx_bandwidth
 no longer works properly. A call to get_tx_bandwidth() and get_rx_bandwidt=
h() returned 40MHz regardless of the bandwidth parameter specified in the s=
et function call. I installed UHD 4.8 FPGA image to my X310 properly. &nbsp=
;I built UHD 4.8 driver source and installed
 it on my development host without any issue. When running the same app com=
piled with UHD 4.7, get_tx_bandwidth() and get_rx_bandwidth() returned the =
same value as the parameter specified in the set method call.</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">I compiled the UHD RFNOC example application=
 rfnoc_radio_loopback with UHD 4.8 library. It produced a similar issue.</s=
pan></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">Has anyone experienced the same issue on UHD=
 4.8?</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">In some old posts, some people thought set_t=
x_bandwidth() and set_rx_bandwidth() doesn=92t do anything if the radio dau=
ghter card has a fixed analog bandpass filter.
 Is it still the case for UHD 4.8?</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">The radio daughter card WBX-120 has a fixed =
bandwidth of 40MHz, but I would assume set_tx_bandwidth() and set_rx_bandwi=
dth() adjust the digital filter bandwidth rather
 than the analog RF bandpass filter.</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">Hardware &amp; Software driver used:<br>
X310, radio daughter card WBX-120.<br>
UHD 4.8 release installed on the Ubuntu host, UHD 4.8 release FPGA (usrp_x3=
10_Fpga_HG.bit) installed on X310.</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">Host OS: Ubuntu 24.04 LTS</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">Tom</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">&nbsp;</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">&nbsp;</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">&nbsp;</span></p>
<p style=3D"background-color: white; margin-right: 0in; margin-bottom: 12pt=
; margin-left: 0in;">
<span style=3D"font-family: &quot;Segoe UI&quot;, sans-serif; font-size: 10=
.5pt; color: rgb(31, 35, 40);">&nbsp;</span></p>
<hr>
<div style=3D"font-family: &quot;Calibri&quot;, sans-serif; font-size: 8pt;=
">The information contained in this e-mail and any attachments from W5 Tech=
nologies, Inc. may contain confidential and/or proprietary information, and=
 is intended only for the named recipient to
 whom it was originally addressed. If you are not the intended recipient, a=
ny disclosure, distribution, or copying of this e-mail or its attachments i=
s strictly prohibited. If you have received this e-mail in error, please no=
tify the sender immediately by return
 e-mail and permanently delete the e-mail and any attachments.</div>
<br>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;mso-fareast-font-fami=
ly:&quot;Times New Roman&quot;;=0A=
color:black">AVISO DE CONFIDENCIALIDADE
<br>
Esta mensagem e quaisquer ficheiros anexos a ela cont=EAm informa=E7=E3o co=
nfidencial, propriedade do grupo MEO e/ou das demais sociedades que com ela=
 se encontrem em rela=E7=E3o de dom=EDnio, Funda=E7=E3o MEO e MEO ACS, dest=
inando-se ao uso exclusivo do destinat=E1rio. Se n=E3o
 for o destinat=E1rio pretendido, n=E3o deve usar, distribuir, imprimir ou =
copiar este e-mail. Se recebeu esta mensagem por engano, por favor informe =
o emissor e elimine-a imediatamente. Obrigado
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</body>
</html>

--_000_HE1PR06MB3993FAE909030D93C82468E6DB6CAHE1PR06MB3993eurp_--

--===============3810810011066532600==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3810810011066532600==--

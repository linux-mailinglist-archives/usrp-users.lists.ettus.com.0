Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5CB5866AA
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 11:01:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F43F383860
	for <lists+usrp-users@lfdr.de>; Mon,  1 Aug 2022 05:01:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1659344499; bh=414ENqye4Dn23n4HGkkMSlbMTj+e2SuEybM0TQXUlio=;
	h=Date:To:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=nByjNY1eUvQE1wQZtEb7fwOOHVqhDcPgPY/a/1KlkO6rhp6xZTH24uXqRzsPQHAe5
	 EfQiTi/egV589AfFRyx1zKyZrAovHgig5oH8xd6TF6Ay+FfNNhrVrQyIqiEJdlvOoh
	 7Vnd5eqLo00+rJVclJBNKNnOmTrLpcKa5h+sA4yevSVpg2mbjNjP3/UCiGJMGhXN/Y
	 8HpJGSmySSussQvoMeRp0C3rvHqWKWFrMex7wRR1LMvEX0yKDdR913SwxgG4mt85WC
	 FgXglqUj1U+yvWHJhcD2n20U4jX+XlpmiUaLJVLPBnsB7BiPdaP4K8EKItADKT9rOx
	 GS42cMbtoVqAQ==
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-eopbgr70139.outbound.protection.outlook.com [40.107.7.139])
	by mm2.emwd.com (Postfix) with ESMTPS id 0C0D93836FC
	for <usrp-users@lists.ettus.com>; Mon,  1 Aug 2022 05:00:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ulb.be header.i=@ulb.be header.b="YCFzHqzY";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CwrDk8/0GPW0bNPIJWdOnxBfF7L7UzEmGGAu02Njyhj2ZJ8T0Wsf8uNL/n9q100ROium/Y0lFJDL/xcN4WpsqHF/j8qMkhHp5kDmnGTUJHbCIcdOb2LgGqA+PfHJudm6856SV5pT+CspHt8vnhP+m2XSUe2qKgI1lKrr8/cW8dvgLPG8OQ0iE7VS5Ju2f3E8mNsFDvG9r+JYOH1b3WmFKS2QRWbpq/za/1HDUm03qaEguv4V2Th7YPj9V9Hihes5d1Rxd1xOlYSxS4cd7q1MBdoeFrcR0Pr0qRB33JlEkfb3QlXu4XMORAOUyX+YLNLkI826kF4oyh9ka1rqGosH+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E4VabeevS0D4TY9v4hZoAV2aYdMNnjqPj03KRD62lE4=;
 b=cpgYYZmz/I6GPLDUZQCyvuiDQINrSwPOW0usFaqP/dUhLZogF2NByhKLzjMAjIH5KtNoRG3ziOCSldYpXlfGC6ZehcP4M0RnzQx5bzexuRZ+8yHZRcdXnP84yXQWkkpZtLafBZq/6UVfJtlEXaShd0DqV4HqAkYDlXeemtTu1BVo6yJV1Y5kZKNinBVCpeDQx0bDVaew/EDxOG4IW5jtU7P4oC+FAcHEwoWA3M9nuirZhkPs3cbuFsZMqukA7b8FNEHaKlymhBLXIrvAEnjOEvyRhsEH+mpIxA004dS+1Nv14xeRHuq99Il0OTmLuF035Lw3fpHO0eez1A2EiyRI6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ulb.be; dmarc=pass action=none header.from=ulb.be; dkim=pass
 header.d=ulb.be; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ulb.be; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E4VabeevS0D4TY9v4hZoAV2aYdMNnjqPj03KRD62lE4=;
 b=YCFzHqzYIJ9WwT4r/BGjyuFV/G0URo7ni7wmRRd0+VKxgrnJbWEB20ZXAvUXt1MTkKptFDcDAif+0+4T/bgr2ALLS0NTSbprQJ4paVxhsiuW02neZ8cyM8XFre99nO0Mipvu/xPy1dBjGHEBjpFwKAK67N80a/trN3RJs7T1314=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ulb.be;
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM (2603:10a6:150:6e::6) by
 AM7P190MB0615.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:11e::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5482.11; Mon, 1 Aug 2022 09:00:16 +0000
Received: from GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::e47c:7fa9:a65f:1228]) by GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 ([fe80::e47c:7fa9:a65f:1228%4]) with mapi id 15.20.5482.016; Mon, 1 Aug 2022
 09:00:16 +0000
Date: Mon, 1 Aug 2022 11:00:14 +0200
To: usrp-users@lists.ettus.com
Message-ID: <20220801090014.ekedafqill4f5lvp@barbe>
Mail-Followup-To: usrp-users@lists.ettus.com
References: <DGTT1gkdzjUFIP5Jril9sRDzclNJARs6DBQLGzpsgoM@lists.ettus.com>
Content-Disposition: inline
In-Reply-To: <DGTT1gkdzjUFIP5Jril9sRDzclNJARs6DBQLGzpsgoM@lists.ettus.com>
X-ClientProxiedBy: FR3P281CA0088.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1f::16) To GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:150:6e::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 415a8af3-dd96-4d90-60d5-08da739c40c0
X-MS-TrafficTypeDiagnostic: AM7P190MB0615:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cv0lkhXnZOvNTp0b2oe4bwNM/xEUQYXh3Sz0PTJwNW0J6k1CJFvQC8m1Iuurk3H5aZwFXcST6nkj0BfaiXjbHmm6owGMP4DYcYP2KY3HM7hfuY844J3xf5Kbv7R988qplU9SO9RycJmXT0slOGuj8l89vwv+R0JPPAKro+EFs6ray4b4aSKu6x1IUtUwuZ/PT0uNW39tg9Rf8xOb/dhsuIN/UbxEzyMw3lthFtGMmtIMZCm/xbMKM4l7L96ehY+OVTWNeLnQi+qsXiROTUcJa3R+ZI+E7uOhO/VtjDuKHmfUbKmpFekacXk5qZXqX+tF9HebS+WIH7yaYK51hEuuWmCM8vkVUkbin5xrbuNf5Ifg49LBPLhGx+ffqEjKbBnarl9KDJbAwrpwXD8T+8yefbx/DnGRgmZgGmat2YM/BBjJJHAa3bJGlY8WBPYKvXLqAHxPxEpgHhOwJVKbqaX2YQMeWkrfb/XGTO6gyKuWPVWXSCckzzaGaQ5fdmgrpauppDGepLXjaXBzJ2FklsHft8A9co6IupVJyHA2HJ0J4PrsYYfOelwJ0R6727wSzIh/CrhBdjP+2ZaI3md2xE8eN7YpU8zwHRkkY5PQN1AG6l5cEz/3fIrk3yCr/AFavri7dhxgr4mqjNX4wiZrZx6JUyCOrnD56Imt5zGcOam9kMea8IbJIE+eUXqnKye0AuVUauj69ntRrHbFuHaRvjR94QoYSsTz72PS9hUQdSjGnE8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXP190MB1848.EURP190.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230016)(4636009)(7916004)(136003)(366004)(376002)(346002)(396003)(39850400004)(786003)(316002)(6512007)(9686003)(6916009)(5660300002)(8936002)(83380400001)(66476007)(66556008)(66946007)(1076003)(186003)(38100700002)(8676002)(41300700001)(478600001)(86362001)(41320700001)(33716001)(6486002)(52116002)(53546011)(7116003)(6506007)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?QStYMkpwOXh4RnVXZURuV2JLRnUzUVlMNzk4UnZOSUo4WHR6aW56YmdpUm13?=
 =?utf-8?B?STJQOCtxa3JMOTE0VXU2MHFZOGZYd2ZKSytQekZQK2FSejkrMHY5MU11QVdP?=
 =?utf-8?B?NHFQQnB4WXJ5RlAvYU04VU1iWDc3bzIyYXJVUVFpOE9tQWZnKzBHUmVZMkdj?=
 =?utf-8?B?V2dCK1BiRDNFMW9Va2JLWEFCUjJLRXVTN2xUTUNCcHMzMVZaWmhNUDdkZVNG?=
 =?utf-8?B?VyttOHZiUlZjQlJxVnFkSFErT0M5YmxwUVNBWjRHNzlpN201SFB5QlhXaG8v?=
 =?utf-8?B?QjZoYk8rajNvcUMrM2ZqTE16NkVNQXVaSzlWc1lYTUhhL0lzbDF0cmZvQ1FW?=
 =?utf-8?B?WHY1MjlUZzF4YmxDaDJ4Y2pvM3NOcStrS3JkSG5pT2cwd0F2OEpIQiszb1do?=
 =?utf-8?B?dVhLemhxN3ZCeEFNd2JtVUNkelY5bzZJTFpjYStQS0tDQnFzTUxYNThEOWwv?=
 =?utf-8?B?MVpSSFAwcnJhRnRzdWRTeGZOb21STit4YnYrR1JkWnFvbFVnMFdKUmdiejBH?=
 =?utf-8?B?SElONmphYVB5bVQ4dDQwZjR2d3Bya24wMEpMYXdPM1hPMW8xRUJYWHpVWDg2?=
 =?utf-8?B?alZXY2xhSklFU0VRSnd3WEwrWnhEZ3VyTXpsUUFjVWJDcWV0dVRWRTNVT3Yz?=
 =?utf-8?B?MlcrWDI2LzRybVN5RWtlcjdYaTA2bXF3VklSTENzaXFKRUpHbFNBSHlHSTln?=
 =?utf-8?B?VU9EL2JackZpU21VNElqcnA5cXFKNFpwaGNscjFlNDFyNUhCV2VjZ0pZOWlY?=
 =?utf-8?B?RUNDZTlobWhjRzE0THZGRmVaVnYydVFOOFp1S3NHWDdvTWsvOEpWRnlLL1pJ?=
 =?utf-8?B?QlhsUktHeG8zakx3VEsxRUlxcERCd1luaWk5VmF4N3NVdFVGWnBLaG9iRURu?=
 =?utf-8?B?ZEhWV0cxcStONGlhVUN3OS9zZmY2Mmc4MXd6V0Z0OTFlak45aG05bUxpOFFh?=
 =?utf-8?B?NmVtNHJucjhkNDJKS1BSMGhFRkxvcm5DVHFCWk5xSXRieGhWZzdtU0VVbi9J?=
 =?utf-8?B?UGtXNlUwS0xsRTRTZDNzNjVjVEdUM2pCRDF4dWhVdHlNTy9TbmtyV09vU2tl?=
 =?utf-8?B?UU1uc25WbmVXUlVWV3kyakpnRnAwQVZDa3hkVVBhcDJNQ2ZHNzFBRFZWK2RC?=
 =?utf-8?B?ZHBrdEtadTJHYnlJMEdXZkx4QjZhQzRXZWgzdlJkdy9ua0NXWVU4N3k5b29w?=
 =?utf-8?B?QUFTWVlWdGg4ZndDbkNrOTNPeWNKWlFPMjNHZHZtWUorNlVoWlgwWG1oOFJ0?=
 =?utf-8?B?SURHMEx1NUE2NkxPMHpSb1FCZTR4cjg2My92bTFsK2lWWXVpUHh0dGN5dUox?=
 =?utf-8?B?cnVCeHZhTnc3c0ZjQ2sxYkhvT04zTlhjeXd5ZU83bmlGbFhJc1Q2b1d1d2N3?=
 =?utf-8?B?NDdYZEwyWjFOUVZxSmZuWlFGVjVjeVh4Z0FNZGxxNzV3bVEycnQyZkNtWTJQ?=
 =?utf-8?B?aHIzKzNjRERRWDhUb1dKcGRFL3RqSXdGRW80RExVeHhxL0k5dWUwZGo0aHR1?=
 =?utf-8?B?NVk3Y0EydGxjQ09EbGhVV1VCbHBqK1NTdkFMbWdFc0F3djlCcmF4WEFSeER1?=
 =?utf-8?B?N1lFK0tVSzUxUVVyUzZFZC8xWWhubEV6djJEdWF4VFdaRHpEVkR2MkE5b2E4?=
 =?utf-8?B?V3cvNzdNSm9PMzhKU0JBNCtjcG5LR25wZUVpYjdYYktwUGxDSUJ2bVF3eGZv?=
 =?utf-8?B?cnhGVEpGdXVQemplc0drdlh0bkNyT09hMzJBay9VOTRVSHBWc29MVy9XVWlP?=
 =?utf-8?B?U1lmSDlFTWhXTm54Y3J5dFBlV3BIOXFCSTdlTS9kTnYzVmZadjF4SUFKWkRs?=
 =?utf-8?B?cEdObjFzeUFKOExXaGYrWjJGU0IvUlZIVE1VY3gzWjI2ZFVTVzJCZ2ZMRFZ4?=
 =?utf-8?B?WTNsNXVVUHRqTkdUTC9lclVYMVBZSUg2amVOMndwZkVpbDlUc1crcXFKQUxM?=
 =?utf-8?B?c1FqMTU0bHhOOS9sQXFKQXQwU2kxMjd1a0cvNi8rN1VxRlBOdEljcEEvUS9y?=
 =?utf-8?B?cml3SGFsNG00U0dyT1ppaDVSa2N1OGI3R2MvaUV6QVVGdDdNeGgwNE9vaGdu?=
 =?utf-8?B?NDRhTHFnV2hUc0V3L1JqMG0xdWpxdExrNVY4ZzliZjF0NlU2WEFHSTExWTdz?=
 =?utf-8?B?aGIvOTVqQ0RRWTNXSTBZOHlMWXM3MzRhWXpqSEI3cDRaVFZkdHRhbnY3RXdj?=
 =?utf-8?B?UERwNVEvNmZQVmVmMm4xSDZNanlZZm5BeWFxcTk5SGJSK2tSaFFtSU9jUHI4?=
 =?utf-8?B?bjBoa2pveThmRDhpUU40LzkzK1ZRPT0=?=
X-OriginatorOrg: ulb.be
X-MS-Exchange-CrossTenant-Network-Message-Id: 415a8af3-dd96-4d90-60d5-08da739c40c0
X-MS-Exchange-CrossTenant-AuthSource: GVXP190MB1848.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 09:00:16.6663
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 30a5145e-75bd-4212-bb02-8ff9c0ea4ae9
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HvUMCHrkfySf4hO5SaqSzK1goxEYEkYa1skoylef26dGOkn3xlN8zr6wByKkA7Q57h5kzreGoGoDyemhDRsLVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7P190MB0615
Message-ID-Hash: N5PUTNH4H3NB4DTQUXOSYQ22DTRTG473
X-Message-ID-Hash: N5PUTNH4H3NB4DTQUXOSYQ22DTRTG473
X-MailFrom: cedric.hannotier@ulb.be
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Sample Rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/N5PUTNH4H3NB4DTQUXOSYQ22DTRTG473/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: =?utf-8?q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?utf-8?Q?C=C3=A9dric?= Hannotier <cedric.hannotier@ulb.be>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgc2t5dW5nLA0KDQpPbiAyMDIyLTA3LTI5IDIwOjA4ICswMDAwLCBza3l1bmctLS0gdmlhIFVT
UlAtdXNlcnMgd3JvdGU6DQo+IEkgYW0gc2V0dGluZyB1cCBPQUkgNUcgZ05CIGFuZCBVRSB3aXRo
IFVTUlAgTjMxMCAoY29ubmVjdGVkIHRocm91Z2gNCj4gMUdiRSB0byBhIGRlc2t0b3Agd2l0aCB0
aGUgZm9sbG93aW5nIENQVToNCj4gDQo+IFwtIEludGVsKFIpIENvcmUoVE0pIGk5LTc5MDBYIENQ
VSBAIDMuMzBHSHoNCj4NCj4gSSB0cmllZCBydW5uaW5nIGEgYmVuY2htYXJrIHdpdGggdWhkIChy
eC90eF9yYXRlIDQxLjY2N01IeikgYW5kIGZvdW5kDQo+IHRoYXQgaXQgd2FzIGRyb3BwaW5nIHRo
ZSBwYWNrZXRzLCBtZWFuaW5nIHRoZSBDUFUgY2xvY2sgcmF0ZSBpcyBub3QNCj4gZW5vdWdoIGZv
ciBoYW5kbGluZyB0aGUgdHJhbnNtaXNzaW9uLg0KPiANCj4gVGhlIG91dHB1dCBvZiANCj4gDQo+
IGBgYA0KPiAuL2JlbmNobWFya19yYXRlIC0tcnhfcmF0ZSA0MS42NjdlNiAtLXR4X3JhdGUgNDEu
NjY3ZTYgLS1hcmdzICJhZGRyPTEwLjAuMC4xMOKAnSANCj4gYGBgDQoNCklzIGl0IGluIG5ldHdv
cmsgbW9kZSAoZGVza3RvcCBydW5zIFVIRCBjb2RlKSBvcg0KZW1iZWRkZWQgbW9kZSAoZGVza3Rv
cCAtPiBTU0ggdG8gdGhlIE4zMTAgZW1iZWRkZWQgT1MgLT4gVUhEIGNvZGUpPw0KDQpJZiBpdCB0
aGlzIGluIG5ldHdvcmsgbW9kZSwgdGhlbiBpdCBjYW4ndCB3b3JrLg0KMSBjaGFubmVsIGF0IDQx
IE1zcHMgaXMgYWxtb3N0IDEuMyBHYnBzICg0MSAqIDE2ICogMikgdHJhbnNmZXIgcmF0ZQ0Kb3Zl
ciB5b3VyIDFHYkUgaW50ZXJmYWNlLg0KRnVydGhlcm1vcmUsIGJ5IHNwZWNpZnlpbmcgdGhlIHJ4
IGFuZCB0eCByYXRlLA0KeW91IHN0YXJ0IHRoZSBiZW5jaG1hcmsgaW4gZnVsbC1kdXBsZXggKGku
ZSBUeCArIFJ4KSwNCmRvdWJsaW5nIHRoZSByZXF1aXJlZCB0cmFuc2ZlciByYXRlLg0KRWl0aGVy
IHdheSwgeW91ciBuZXR3b3JrIGlzIG5vdCBjYXBhYmxlIG9mIGhhbmRsaW5nIHRoYXQgdHJhbnNm
ZXIgcmF0ZSwNCnlvdSBuZWVkIHRvIHNldHVwIGEgMTBHYkUgbmV0d29yay4NCg0KSSBkb24ndCBr
bm93IHRoZSBsaW1pdGF0aW9uIG9mIHRoZSBOMzEwIGVtYmVkZGVkIEFSTSB0byBoYXZlIGFuIG9w
aW5pb24NCmluIGVtYmVkZGVkIG1vZGUuDQoNClJlZ2FyZHMNCi0tIA0KDQpDw6lkcmljIEhhbm5v
dGllcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQ
LXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1
YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
Cg==

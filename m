Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IIjiM72kg2nprQMAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 04 Feb 2026 20:57:49 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E214AEC4CE
	for <lists+usrp-users@lfdr.de>; Wed, 04 Feb 2026 20:57:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8213A38664F
	for <lists+usrp-users@lfdr.de>; Wed,  4 Feb 2026 14:57:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1770235067; bh=l9u9HZ3i7sBLufKS+HENjSMdya42FKOm4qE/4a01Fx0=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=hEOxCUFUNbwnd71qFANFg+dYZACbMpgEFnQ9k6U34u5nd87mTCx6phYq7UDouQmYq
	 m+A0FiQ6PeMRa2SmNh1iZ6ISQQ2zktZ/CADOLcInLjzwc53xkNgwY6iNjJLRwIpPCX
	 e/9SFjthZtQLQ3QwfuYx3GcrNb0jx1eV0UZcUmCvuNiSAGu0tUg9GEtrzEUW484/+r
	 dsAJpFFCMyo77ssI4j/t8WGE/GtTF4/c7oOzeOMm2N4+ADM59sxu1edWxgm3S3WxmJ
	 XIv6Grnvfanef49T4bydIKKVqdRJAZGBM2NLdD8Pf/l0TT31G+sTjGIZ2kiVQK1MPN
	 psReXuse11zlw==
Received: from BN8PR09CU001.outbound.protection.outlook.com (mail-eastus2azon11012020.outbound.protection.outlook.com [52.101.58.20])
	by mm2.emwd.com (Postfix) with ESMTPS id 195233864FB
	for <usrp-users@lists.ettus.com>; Wed,  4 Feb 2026 14:56:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="mTbEJtEA";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ROTL05qLtxxikECvPBUcGDp1oPdfTXB7JxDlNO1ysitBCVc8gzeq9/NfIUS1iCbzH6U+BMDHVUBL1XFRkilG41bdYImziBZ5xKcMHW9eq+W8oNOqdK7LRuQ+sBZDeIwOsdoHn2q6aYokCK7alu5KyTa6GBKAaudNxwzDDC6RYY3jB4TcAbYBizZAON7bxMoGFt3bWrdT05LJm+323C6bW1H+GNrxvEQ7DVax8jSM8cKqHBiSdE3tN75GoOadn4OEpBPkHq0YDh3EbG01aVE2EZOOKpFcOoLdW8ml+POPvKAquhbJN0FOdwrxLULZl2XU0tfC2B4tO+ZZbnYOw3CXfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h5hmqid4KirVxkEutYfP9ujRGuDESw1VV1c+6CEavSM=;
 b=Ksb1qeYVRifUC6xUf5FhQsTVHvoP7d/Zxhb3kzqDNVVGH9kRFvofCmRc1h8j+fV3qnTrUvIxq4hMC/UCxQSl2wNaptZlc1Y+UrKOwr4+fKLNRuWaa5eG+u76fzO+GKGaoPKApA0tuawnbrSIeL9jdoHKB4CsWzlsqOOukmBdrcSdPLU0/5/2eBXZ0BE2ZE9ieTEJqrU27I7CNK3jnA0eFTr0jlHpIHHrXaxa7o/0rst/+xtHvDNTU7OxIYxKmL1Zj32nTZ1KEm6+gSWvzj9rw3voy5SOw9lRDFC8Y+5clBj5sDJq3RSn3O5kPnRXOnhYGL9VNOYXk22jRtmEyN3YUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=h5hmqid4KirVxkEutYfP9ujRGuDESw1VV1c+6CEavSM=;
 b=mTbEJtEA54GKuhIPGE9HWwt+tLhgPTOnRTa8R/J69v3rBokj6/cRgyarwnDPT+Br9BNsd0ktLUKfVCkdTt9YazWcVD0SghWrPimeoLFzSgHPQVTKHk344hebFAXPpgVFmM7uNG5tfkIVueq3+yp9PDLFn8LrajJfXFPaakI6lTs=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by MN2PR09MB5692.namprd09.prod.outlook.com (2603:10b6:208:213::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Wed, 4 Feb
 2026 19:56:45 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9587.010; Wed, 4 Feb 2026
 19:56:45 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440 Dual DDC per channel
Thread-Index: AQHclg/BBzKnB5J0jUq6d9dKTVwjLQ==
Date: Wed, 4 Feb 2026 19:56:44 +0000
Message-ID: 
 <SJ0PR09MB912622C7566AE804EB53B2D0EC98A@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|MN2PR09MB5692:EE_
x-ms-office365-filtering-correlation-id: 8a79c3fa-7a05-432a-9dce-08de6427861b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|41320700013|38070700021|8096899003;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?AYRzZR4z2f0S86vZLM77Wt+E7KIJVMx7YwxzqY2cIIvrR7Lm2pLkmSLD+6?=
 =?iso-8859-1?Q?m1m3qKpubdF+cj+DTWEoccBr9ZvtejC0zkYZjntoEy2GS8On5TYV0LTI/c?=
 =?iso-8859-1?Q?0wXAr7JQuJfQWpacusqpMW5KkX3uGZG5qx36XbLpCfx+z8jvxY5xX5cOcb?=
 =?iso-8859-1?Q?ejiDyTjKfuNCUX9Bwmmc9HZ1bl8mYH+Rbk0gnJrXOny3hvv+Ue9bt4hnah?=
 =?iso-8859-1?Q?z5E7u/75fWpEo6FRD/6VBpzwthIxAxQvk8azKGcxyXWDHgYkQFqRTD8z8X?=
 =?iso-8859-1?Q?QKwHLxs6E0ie7gmAkzpLI01Y7B84HNGHHuK5jOnPHevW0bB+Iu7bkIlt+c?=
 =?iso-8859-1?Q?oBE/7MuYN0gPZ78MyLSLCoSvwuSyi50vlMniQHquJ0b97U7LkCxCqo5rFo?=
 =?iso-8859-1?Q?DemqRuF0gKhD1+Sry4TtwB0BpDXPMd50ywyhvhY/xxCDXPQgBofkjVXMz/?=
 =?iso-8859-1?Q?g1Ye3bldBOFFDlNFocw68u0T8DFkbGKCXL/9xPSmOgIKNcO61BrV+J87NE?=
 =?iso-8859-1?Q?SOKpsAeSc7hT2ijQMBWlGL+W9QXobAGJ1AeLeTeartviYO4GXV+yd8Yu5B?=
 =?iso-8859-1?Q?/tTmjhjsChk35fVyJ55SRTKDs7JHZIpXJBfNvP03hUMXlwuNpiKW/NIoFd?=
 =?iso-8859-1?Q?8CJSMOS7crcUcDGxMtcmV3YlS9I9nFKZs5IJkcqLxpir1proMbHPshEx7B?=
 =?iso-8859-1?Q?WVoATz75k788+4QqJLGRHapC5r3qPEViOhy55VQu0/GiSaVriS02tNQDB7?=
 =?iso-8859-1?Q?/AcRr7/urnF4xbL6xiH7GqktFyvBAobd/yM4XTAkZvlMhylpUStrTOA1iD?=
 =?iso-8859-1?Q?yP05liYUYqbYCXH5lES7QKm3trnBNL/KDO6bkBm1+3uFJ7uy0vMk+IZk6Z?=
 =?iso-8859-1?Q?O5UUSTlfklnicWCDPQqKVYQF+SnPyiqLpkinqIly6lL/rExtVD1/YK1+sT?=
 =?iso-8859-1?Q?I24dWR/HhqnKNmSuGBDWJKuZq4pO7WDSyIykwTscA+oLmWUcXMrhBiFsgG?=
 =?iso-8859-1?Q?mNAZI8RRcCZU5J+ibHBCsKIKgUsNDLv3eaeXRsRS0Cqxe9QXu6hHDohul+?=
 =?iso-8859-1?Q?Qd10PuhJLS774GJcEgW4R70A7lI8BwJZJaLLpAVkMYBMnr3BLNChak73bO?=
 =?iso-8859-1?Q?bdIMO7Nb5AM7LL9UnKFcobqWYfJpsUVFHs2BEY7Bx6IKt4xuyDfv0rcJiI?=
 =?iso-8859-1?Q?0ramaP9EJjK2JiyLrnRDqLKq9D2hJ98g/oAN9O00hzYg3rUWMOjy8uj5Ys?=
 =?iso-8859-1?Q?rMwkyqp0qZh2LnUIRjf5DgJiqAutrE9zRTxz8yr2vkK2zj2fl+KKw6Xfxi?=
 =?iso-8859-1?Q?02UjF8wY4RcWTs5ngl9jueY4mZ1Bsl0S9i9fT/q0CkUUdD8uxD4qJmMMlN?=
 =?iso-8859-1?Q?NX12LrbbZlMtOtXrh7+BS0bdN3FmT2W7hkLitq7gozdua9VHrsKy2iBsh/?=
 =?iso-8859-1?Q?gIypA2PTrrBEOOwAdZQYIYVgDU0SS4sVKFrJwRL2vWQhvgUzRvcdfk2817?=
 =?iso-8859-1?Q?HH60aFIoMLfstQgWzyHpNFJydeJOOEYxnHksMmrbQ4r1UHGm74q7o8+gZG?=
 =?iso-8859-1?Q?m0N1u+ECtJ1Vz71kH4hnhk7UsY4p8xoExRE8hIxDe++9qCeAx0kUc/44Y0?=
 =?iso-8859-1?Q?j3jQoKI6tu5wsXei1JMDVGjKLaY/lTzcblPIyOzOQYvzQ5kCsYPqHlhmyW?=
 =?iso-8859-1?Q?wsYT8mo/ylZLyKusCl8=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?doTLkq55tc7CwjbHDbO/djyhMUayPdrKfk8Ndz9BU9W4sLqkiphqOYOaKt?=
 =?iso-8859-1?Q?yNyqDIg4vIxbFq0k84MDGwGMc/cSAobdrPVzB1hM3mTxv5xnZuig60lcFc?=
 =?iso-8859-1?Q?nDMnTxJzT2cNeQfp8tASJrs0UrYLmGGvNY4DmrX6dlSy/ma61z6QnGWM8y?=
 =?iso-8859-1?Q?ZAPZ1RzcvcExDAR6MNh6gZeGgQ3glM6XgN4s4Yuf20uVA6gaSdHKAh2mn9?=
 =?iso-8859-1?Q?LlRJ/Fp/Y3Hvbai7xV8CemSQ9/c27GewpsJqffpjVtK/ZoVxYKGn8bajiQ?=
 =?iso-8859-1?Q?ehcTJ1N0CAY0f+HO05URdGVNTmQPPIrA3PVrmgFikfbxqQ6bSpfPnhbTrF?=
 =?iso-8859-1?Q?cmLkRHpb304+k7+YH3MJgMq5IFAyAoM5dVXnHcL5fRDyoatW/e5hHiLL8E?=
 =?iso-8859-1?Q?tNxFQ7NJD+z5mtIIl/lRP81+pMPbQNoisNLhIjjpYPdFKOgqa8FuPM8Lx8?=
 =?iso-8859-1?Q?5W6+vaL2LAoAK2reAJl/+CU9998SfRWsobPg/N07heaKbyclo8H6gESPd0?=
 =?iso-8859-1?Q?l8SSYEXc9Zvcg5wadvSLfAQHM0sOLS8TyQVktUImA3fDbut7vZr/jhwW2p?=
 =?iso-8859-1?Q?rqwN09yHaosKQDgbD0Vmcp88R26olXqBcyf1oZLCjoL3Mhl/dQRbkK9m0y?=
 =?iso-8859-1?Q?+aU6wezxl07MlMuHqgKdb+iITIeurW4PbgCx/1+9x5jXJsN1/zKeiUyPYj?=
 =?iso-8859-1?Q?oABBZbD2ij7WP0o7PB7NAjZ254g7wmbehj5ZeA+M2m2xY5gT20OKW4+JK3?=
 =?iso-8859-1?Q?EYS4KpMRl0PgfApEakx4ToJNT0z6VBwQ4Mkfmf8JS+sb7AZrwnwLw4nlk2?=
 =?iso-8859-1?Q?riqWZ5r0l/OjoR1IFjKlzs0XuvTm6S/bQgWR93x/VPLznPKvOo21glDAf/?=
 =?iso-8859-1?Q?PRN9eOSy2ogH2OVyHUPVtJGPGUAhRkjAJGD//bMw3afHws3SPIyOvRu604?=
 =?iso-8859-1?Q?fUJuAaVymFf+wTAmYayWpAGdvOZE/+wzgFReND3U9zUph3YbSg5tSZdkjM?=
 =?iso-8859-1?Q?tY4ve6P2XxSjQ+n/9uQiphE3bYLOOLa6yND6zwh5sGjGzBe5k6weuJ73ky?=
 =?iso-8859-1?Q?EjTrQCkNfPvfy3u7Cna21iTHyBvbLHB8JlC0sWME0tnYPlcLatNbY8ocyV?=
 =?iso-8859-1?Q?rFerukif2p1XzZ45n7noBfnRf9zQVueBDy46Q0W4jeWJlQf5eridVmjtyZ?=
 =?iso-8859-1?Q?vX31Mldfc/A6lO6C3nwXuCD+MCo5a0x2ws9Y2DtFgfxWcMLnfvdVIoRaPP?=
 =?iso-8859-1?Q?gjEa9tCtAIbixs1qKd2mM8VTTj31aJivFm71WBkC0YTC9f8lC67b8ScoP5?=
 =?iso-8859-1?Q?/eR8wTsIxqaIl/5cVlFFLTbyHcjMESPmX07I91UMHC/a9i4r101ZJRA4ZU?=
 =?iso-8859-1?Q?0J9JPtVuh4d85/8w7+nI/I9ccXOev1AfAbMRCAksDMwnt5PYyblykRzxwf?=
 =?iso-8859-1?Q?kN4YfjF+T5HFDBKfdUB7Ogh72cOPHj91C3lH+NOviTaWE483AcTeLE/y26?=
 =?iso-8859-1?Q?cqbjF0pMMnVq+dwSlKGgxdGc9DKnr96HFoxATzbo7/v4o0vXf8lZSQeTEJ?=
 =?iso-8859-1?Q?fI/U11AuGDs/Ur+SVa+Blj0t6t5yGgOjXAsBWltTO/2znbSbMkpe2y9v7K?=
 =?iso-8859-1?Q?WsqLJNX43SxM8eGptxDpIq66i4+4i06F/dkCwh00D29i9QVj9lOEHEq1Ef?=
 =?iso-8859-1?Q?OVFQkbfNp6qWzMDv2VmEeqofIZ1Zc5B8ThSFoiWn0UN1KlNu7Cti2rIBXG?=
 =?iso-8859-1?Q?KXIRvIeYmschDHmo5RxKKHLaS//Mn7cQWgcijAu+8V8oE9?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a79c3fa-7a05-432a-9dce-08de6427861b
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2026 19:56:44.9380
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR09MB5692
Message-ID-Hash: 5JCLC5GOXEINM3WB76VN6LWGWNOV47IB
X-Message-ID-Hash: 5JCLC5GOXEINM3WB76VN6LWGWNOV47IB
X-MailFrom: eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 Dual DDC per channel
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3WHP7Y4WVHHPNQVBXM2QFJMXFGO6QXLI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8014352793918898330=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	R_DKIM_REJECT(0.00)[aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	DKIM_TRACE(0.00)[emwd.com:+,aerospacecloud.onmicrosoft.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,mm2.emwd.com:helo,mm2.emwd.com:rdns]
X-Rspamd-Queue-Id: E214AEC4CE
X-Rspamd-Action: no action

--===============8014352793918898330==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912622C7566AE804EB53B2D0EC98ASJ0PR09MB9126namp_"

--_000_SJ0PR09MB912622C7566AE804EB53B2D0EC98ASJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I may be getting greedy but ...

I want to record GPS signal with separate streams for L1 (at 1.6 GHz)  and =
L2 (at 1.2 GHz)  Each signal is about 50 MHz wide by itself, but getting bo=
th would require ~400 Msps.

I need all 8 channels of the X440.

Ideally, I would use the 200 MHz variant with **two** DDCs per channel.  On=
e DDC for L1 and one for L2.  That way the total sample rate would be only =
100 Msps (vs. 400).


  *
Would UHD support that?
  *
I assume it's a custom RFNoC build

Any suggestions on how to set that up?  Would 16 streams even work?

Thanks

Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB912622C7566AE804EB53B2D0EC98ASJ0PR09MB9126namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I may be getting greedy but ...</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I want to record GPS signal with separate streams for L1 (at 1.6 GHz)&nbsp;=
 and L2 (at 1.2 GHz)&nbsp; Each signal is about 50 MHz wide by itself, but =
getting both would require ~400 Msps.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I need all 8 channels of the X440.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Ideally, I would use the 200 MHz variant with **two** DDCs per channel.&nbs=
p; One DDC for L1 and one for L2.&nbsp; That way the total sample rate woul=
d be only 100 Msps (vs. 400).</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<ul style=3D"margin-top: 0px; margin-bottom: 0px; list-style-type: disc;" d=
ata-editing-info=3D"{&quot;applyListStyleFromLevel&quot;:false,&quot;unorde=
redStyleType&quot;:1}">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">Would UHD support that?=
&nbsp;&nbsp;</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div role=3D"presentation" class=3D"elementToProof">I assume it's a custom =
RFNoC build</div>
</li></ul>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Any suggestions on how to set that up?&nbsp; Would 16 streams even work?</d=
iv>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thanks</div>
<div class=3D"elementToProof" id=3D"Signature">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Principal Engineer</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB912622C7566AE804EB53B2D0EC98ASJ0PR09MB9126namp_--

--===============8014352793918898330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8014352793918898330==--

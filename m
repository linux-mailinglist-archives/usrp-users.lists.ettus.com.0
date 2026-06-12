Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id i41rAC/OK2qJFQQAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 11:15:27 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6486D67827A
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 11:15:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=IyTtv2Vf;
	dkim=fail ("body hash did not verify") header.d=fugro.com header.s=ppselector1 header.b=F0BCHvfv;
	dkim=fail ("body hash did not verify") header.d=fugro.com header.s=selector1 header.b=dq0XmoyO;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6001438690D
	for <lists+usrp-users@lfdr.de>; Fri, 12 Jun 2026 05:15:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781255725; bh=eTScDSqPEbHzc7XAdzRLmPiUWNkZRQFCJ0H+KDQAHH8=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=IyTtv2Vf3rcwSD7Y+OoTeCtXHQxeJ7qLpwdPCkg3o7+n3qJ7CEpcF6H3ICEcQUDxA
	 U9KtPqpxkfc1/FfWjRM7QVDTlQYSt+n50ocspOPyBej7up5jRt3hXPe5OB+Cj00iNS
	 D8KWs0CAlBgTdoabr2WeIerqHL/sXxuTmr4rgxhqULoOPNqZ6IHC74mphzDahH7Cfz
	 PZsrAWmAilhameqSHh1oYoZdNwYtVLoHgrPJQoxpkxD7reV7+z6bB8yCW5jML8nOu+
	 o8D3anSSy0fTrl+AGD69HyybZFPQlFI6XcTOaGa5AKhlXAkRNappdlDqNR6nD28YdQ
	 KFqN181opI5Zw==
Received: from mx08-0002cd01.pphosted.com (mx08-0002cd01.pphosted.com [66.159.246.70])
	by mm2.emwd.com (Postfix) with ESMTPS id 69A3D38690B
	for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2026 05:14:53 -0400 (EDT)
Received: from pps.filterd (m0483091.ppops.net [127.0.0.1])
	by mx08-0002cd01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C8hUVK4139767;
	Fri, 12 Jun 2026 09:14:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fugro.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=ppselector1;
	 bh=7DBPeU614koeETy6Wg14h53lEAL2nX3PiWwPiW9VK2s=; b=F0BCHvfv9zgx
	dLOUa8tdFoJI7hA5uW7//NsBXF/edH7GLZRaHuIBorQ451oi5o0/+IfQZXf6kDQK
	rU7gFVjf65YWEMYu9u12NiZhA1jNZi0ZFuZnMKQJLkRNRz6oz0xiJSctM3wvX++p
	pGA5fuBdzt2iAjk+Mnn3tsht7mdremjC99cqaIeLVUKrFaeqdCR6QKr9N2eSaVCh
	LDFNKUbrEAZlv7dBNo4g6NAgBjmeP7ApoE+3It/9DcgNPL+4agZ8Rz8wTSrwEhu1
	p3hyZgNNjGRcjcf64E92jvpntg3wj8kZAoTF/zqnn8DZQqN8mZYdTUJ3uW0ihIfy
	QLk/nosaTA==
Received: from cy7pr03cu001.outbound.protection.outlook.com (mail-westcentralusazon11020124.outbound.protection.outlook.com [40.93.198.124])
	by mx08-0002cd01.pphosted.com (PPS) with ESMTPS id 4eqe60ktuy-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK);
	Fri, 12 Jun 2026 09:14:51 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l4n1sUWZqKyKqEMO6A+F221NdG5f137XffV0ONfyk1PV/zBAn00OdR38jmw2QB432VLixfAeOX57edylAfNvxUjsyi8o4oh1t4JwoHKLOL8I/lEwXohMSve20WKRx0U9T/plDO3hgXtouN3Z7bRnuQ5p9Ys3lGYWs/LWhQAMGG91qN86QcZURMBgPB9JOAyAL2mscDdEF3evbL/Dpv1060as6wqjPS6FJJKtUmE56IOs1pYTw5MKeREMkg6dYdYdx23cECglEGbVtI5aXUXP+VuP6OtlixuUQC2YTygnI0Kpj0Li6KOAOVZCHFXA4U5dqoQa7qPU5pibEidPO+zqFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7DBPeU614koeETy6Wg14h53lEAL2nX3PiWwPiW9VK2s=;
 b=U+REJjm7fxri/y6RFh3dk6pe7mRx486KlSmkJCw32TSicQw9hY9xjCZieX9g8s8+VIpnMDPpFfdX0ZccICZOGsgGHxpjOmPXY6avFLJOX3UxflW478GxDt6fhZo2WDs1z1M1ZdtluYADhk/Z7fADuHfndqGuL0gOHJBaxoPkHn1DOWlVcKjw+sIkm+LGsb2DULNa2bz1zDmkKOOrtuGzz9ppgMbkh9CBwBpXUohemsokKTOPYCsbpCkGtChbpPq7spTPktrrCcUbR26JKx1wevNxeV1qLWn4ZK9FO/OjpW5QwJLrOjpntKfHll0xWrUpQSRIgx8V7/ACaGG59crCNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=fugro.com; dmarc=pass action=none header.from=fugro.com;
 dkim=pass header.d=fugro.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fugro.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7DBPeU614koeETy6Wg14h53lEAL2nX3PiWwPiW9VK2s=;
 b=dq0XmoyOGLUViUjtLcUC8yqJaeW7PMFxEb3tzDI0ZP5078bxjy4N5166y31fd/M815La6cK1ocKctUaESnXv0YoAQ4lviwgNkgvmkaq4CZRZJ5s5Xa02VmSpftdsaku0QT3YhMIDiMg2FMq3QZvErJrvzhjM50EcYDWs0uOrRgIhfAxJDZHXhxit+mBYK1to8EHa8/k+XfxQLoIqwEgVPaYyu9q2LXyY6xInb8sv7XnwSdqnWQLoAHtYxYhgPtijcK+7QGhKWzGHYfZR9eJDfDsRnzmpGuJiJlDTMNTgVojPUymHQsMwI5G6AibAhcgxKNoWRCc3Mb6TRcu8SIvLdg==
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by CH8PR11MB9481.namprd11.prod.outlook.com (2603:10b6:610:2bb::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.14; Fri, 12 Jun
 2026 09:14:47 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::770b:7229:68c0:5ded]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::770b:7229:68c0:5ded%3]) with mapi id 15.21.0113.013; Fri, 12 Jun 2026
 09:14:47 +0000
To: =?utf-8?B?Q2hyaXN0aWFuIFrDpHNrZQ==?= <christian.zaeske@syss.de>,
        usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] B200 frequency shifted
Thread-Index: AQHc+kZ/96ZvLh2/80OCAgb4wHPkobY6mUFwgAADAQCAAAZ/oA==
Date: Fri, 12 Jun 2026 09:14:47 +0000
Message-ID: 
 <PH0PR11MB5095F734F5F4164369315EF39C182@PH0PR11MB5095.namprd11.prod.outlook.com>
References: <896d01fd-d484-4d45-89d6-7b498e03aa3a@syss.de>
 <PH0PR11MB5095564916CB9A0C3E0F11E69C182@PH0PR11MB5095.namprd11.prod.outlook.com>
 <ebbc933d-3e1d-40fa-845b-dc1e66f61c3d@syss.de>
In-Reply-To: <ebbc933d-3e1d-40fa-845b-dc1e66f61c3d@syss.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5095:EE_|CH8PR11MB9481:EE_
x-ms-office365-filtering-correlation-id: 7eade83c-75c2-4fe6-d7d0-08dec8630ca8
x-proofpoint-id: 3519383A-0CA2-4417-AA76-B13B775710EE-Outbound
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|23010399003|376014|1800799024|38070700021|56012099006|3023799007|4133799003|11063799006|4143699003|18002099003|22082099003;
x-microsoft-antispam-message-info: 
 21xJSDP6FNlTiPDCipxZrUsIDoOLs0VL83NX12l0pebBiCy3HGjP96DOiHYYkh/gJQdhXWHimb37+4z7R9pNSiot3vAW9dlpJi9HnA6onMCK/RkOrmYJbhlACkae6ISRs9quahwthgQ3BdQXkF2zNcjfQkzRCO17T8ziK647TR2uyhB5KR7VmVobSJhfHfit/S3r0V+SKZ5sJS0RdmpKcIdjJD9FBz+FVMatmOE7PxIP1a68XoANhB2ZqxaltirzIg6Mj39dumyTw+Ht+X2XK0jrXiBTNWu7AGFWOMYRgaKaqSaGinV623ASRFw3Whdt+x7RilFndC8Dza7Q9tglrwZaKQLDi/KHoK/12cOfYM3FfZdIce6twsJK50kmpQFd/GnTl1qQf+Rnz2BgYp2Cqi5M/oxlhCgRdylilJAK/Mq/9ykCAQWcGSzPoKpqIyK13vivHZpypv+V7+y07x9LtGlRGoDqn33KRETAmDAcE+QKAzV0bxxtc1vxwCz4C/0Ekl00yXiQ6TJtk2SA5ZJCMOpDoaLedvk4kql4ntfJ/j77Jhmx+w1xwvfK0LrkCKIcuGpec1uCuuDAAQbT114y/elARU/Cp5WbeWcACFjIdl3jH+ioaxhSWPPPumagwEtzBDqkLr5qgJFmv9lK69RdSxp0R/WkJM2c3fADW8EIqRa3i2gwlZrAGy//31OXB3Rb
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR11MB5095.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(23010399003)(376014)(1800799024)(38070700021)(56012099006)(3023799007)(4133799003)(11063799006)(4143699003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?dGhJODhWZVhwNC9LRGp1TlgzTDZtVHp4S1BUSXYzcnlCVmVyWTgxQ0lhaDFo?=
 =?utf-8?B?dytCVFJJTXFlYm44ZHNCZWhheDVCb1hnWHVYemNFbVlTQmJISksvRHp5WEJ2?=
 =?utf-8?B?UlJ5eUN1NW5QSUs5RVJrbzQxb1pDckZuWmcvV0NMcnZDaXJQeGsxdk9kZHF4?=
 =?utf-8?B?NHoxeStNcXU0RllSVmtWTElYdVNuYjdNWWdYOElSTXhZeDdnZGhKNjBTa001?=
 =?utf-8?B?R0R3bVBESnVTL3BEMmRqQWsvV1FjTThBbEQ5Wlk1eXZ6bTVkTlpKcUx0dmFI?=
 =?utf-8?B?bzBJUkZjSXQyckErUWtMU3ZYUTM4NkpPbzk5amVjL29RRDNDMFB3aDFHNFRn?=
 =?utf-8?B?QThHZDBJN0RVL0xQeGhjMi9FRnJrbkVIcTZvTFlnWUN3amxkbWlwUEFnUG5T?=
 =?utf-8?B?bTl5ZVlyOUZEQk0ya0tlSXVuWGFhc3NKTGJGZVM1L3RyNjlmY3RaZHZKcWpL?=
 =?utf-8?B?SEozOTR2L0NFdU11dEYzRkpxajVmQ0ZUNExnNkQwWStlSzRFNEVxYTlJcGMy?=
 =?utf-8?B?RmRtY0ZBT3YyT20vUThBZVZydDY5ZXgzTHdzNnQzS3B6cG9qOExJcFQ3NGNQ?=
 =?utf-8?B?Y0psUi9uajR4REV6RXpIY1Y4czVUVnJqZEVicytJNmVLeWx5V2lXZmtRUm01?=
 =?utf-8?B?aGpLbW0vWWZYYzBVOUFPSTNjVTg1bkpNcUx1Zy9seHV2YlpvRmN3aTg0R1hu?=
 =?utf-8?B?NlBwSWFVVnAzNTQyblhMdlNaeEJyZkRaNFFVeG11bmR5d0NTVDFWQlFqdzUy?=
 =?utf-8?B?cXVDS20rbTlGNTZ4dUdqUW5sclg5c0VXLzFjL1FEWGk4aVNlUDZsekRCMGRP?=
 =?utf-8?B?NEtDMVQ1Vytnb2I2b002ZUVCOUtWVW1aa3hxK1NOVFZadjFUMGl2ekw0cDJR?=
 =?utf-8?B?U3k2N2ZjeG9HaWFlaE5CTGNNOG1Ia05sMHAzUjVFOWdqTDh6SUw3Z3hBNkM4?=
 =?utf-8?B?Vzk2S0trZDFybUFjckJnL3VmUDg4MjRPTHNENXROcmxvUU1EWG9wWFQ3V3ls?=
 =?utf-8?B?c3Y1M0FrUE5seUFZTGs3VXVkQ0U4cEV4Tnk3NFU3R2VQVklXRFBtbExkTWpI?=
 =?utf-8?B?NXV2THhmSGU3L2tDY0xEMW9aZk5JTVhwZmZ5SmYxKzFmZkR6U0g2SW5ISkxt?=
 =?utf-8?B?OEpqMDB6cXBPS0NSQlJXcE1zU2pwYlR6bTBjMkRtUHUyTzBqL3NtaHhpdUw0?=
 =?utf-8?B?TU5IcXlSU3dSeXlmeVN6dm9BVjRyZHExT3JpQWN0YUJLZDhJbktxTUpTdU9n?=
 =?utf-8?B?RFRrUGVpT2dCL0NWQk0rZUJRditZeUQrRFFGZUtOUjVic2dPSUxZSjZSb0Y0?=
 =?utf-8?B?Y3gvVEJnUzdFVGd1OGUwOHNheGhJYXFlb1BaUTAzeFVCMHU3VzFxL3hZUVdF?=
 =?utf-8?B?TTVtVlhtRzFkWFI0VVR6UHNuYS8yUFBWT1hYZU9WMWcvdzhOM3BLSGNnSENj?=
 =?utf-8?B?Z2pHTDZhYVZFdUVma1RqZmpyM2tncGVGWENnaWZ2a09nZjJONFh6Y2d6SE9O?=
 =?utf-8?B?MVdlekNUaXp5cmRBWUxWeXV6bktUS2tBUy9LUnp0MTZBRTJnZmwzNGM5c3lI?=
 =?utf-8?B?TGswNVk1OFVjTDliWk9zZEZBZFd4Qm4rd09KeTIvT2laeEFzSGMrbDNVbjY0?=
 =?utf-8?B?N0J6dndCWDVVL2k1QU1PRWRkNEZhQ2RJaEZaNjNrdjhmd1h0eGlQV1IvOGh1?=
 =?utf-8?B?dUVOQ0lCT1BSREhZMWtaSDJIeUdDOEw0czBBODFudldFODVpbHp4SlZ3NkU5?=
 =?utf-8?B?dmtBSWgyY1RsV1p2QmF3b1Zpd2U4N1RNandCT3lUOG1NTmRYNHIrQThYS2lQ?=
 =?utf-8?B?SFZZOStUQTc5VnU5QUljU2IwUFcxdFhkUnpxSFlTdGJkMWt1cFZabGpmd1Ux?=
 =?utf-8?B?Z0JGLytjMndHdzl4RGxTakVNT1M3NTFKZm41Z2gweTRlQWlZYVJCSGlkUVRp?=
 =?utf-8?B?alpubzRFOStYeW82UFNLZ29TMEMzcytUOThQSVdFQzMvZDQ0NXFCR3FOVElQ?=
 =?utf-8?B?cVJkdTVMQ3hVZ3RxTGx3aWhTQ1lORkhQc1lTbUprSzR0Y21KVytuaXgvZ2Jh?=
 =?utf-8?B?U0NCZjFXd0c3V3BxUUVJL0NVVUZjdHdCUS9hN3QvcTdLT1Zvd2hXZVJ5QWY2?=
 =?utf-8?B?WkJZbTJiOFUvdkY3RkQvTkJFK3RrTkNUNUt5ZU1DVDRlM3Zsa2xDYWlHWDB5?=
 =?utf-8?B?UXBOaXB1eWQzMXB5R1VaY2hBUU9IVjNpTFBWd1pRMmF3L2pnbmlSSlpiTnFs?=
 =?utf-8?B?MmNub0UyQjl0UFNtTHNUc085ZzVVRTMwQ3VJZkJvd05xOGxFT0hid1krUEc1?=
 =?utf-8?Q?UwOKL9Kah8kKTVv41q?=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	n8oGaDgsf9g/AKO2A3wj8S+GiK1frh6yHk8NalHfvmuFwhI/jqpOBSVyOFslVJWK2a1svMdvBuFhu/j73gC9LlTFD3xuGm+WWnC0kDH/Wt+boXqlije9HoQExeEpvs5dcm9awDT133vMvwxg7jif9gYUrfDN8TnLHbVvVrvkQzUzwsGvElbmaOBw2tSoGND98f/lp7dF88ICfKBQcnThxmmYvRS/bwcey4cdtEHXhwai/J8fAbLiWz4vuCJrOV1sbGdwF8t/dS/pbuBKaeFommXhlqvAZnTkZed3R94K+zlazlaG01ma9+sUzJ3foDLWPn3pOsA0Y5/qlLfAIUtC2w==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	QjR0jO99+ijBt4vuQZPw7puDXHu7eNqdbBeQbzPNl3elXsZQ63qalO1aoGGS0bXrhqRVIvGBvz8TgRwMmS7lpl/E7PcsgPCMSUOD6WJxv/x9ajeeJ9UQN5ICmxIFE7mxDFW5MNYqsWjSjQGHAoyMR2HbE8GOL3u2CW4QwuDy9djz9u8Z42bPiECg1u4wVp5FsKiuyUm8cbwt0Y8+sgZpPLS78fzbKjSZJ228YSvexeyNB0iCCaTsW12HTPf7arTnls9ipvlQbr3Ql3e7Xg6JhdGddwMKusImdrEGTkeoOWe7woviDkpR0LK9Yxua0njJWsSXh+oy5re3x+AbtDV+Rxxb9y6qwxnN9WyYUIj371DCGoRGd/3G2iQVaHzNb0SxXZDSRaRA/mQ2jNN3qk5kAEAM6I/Uqs6DGrxzOsMA/4Qck8nCujN620MCVVhmApkKE5AR6lZ9vBC94ekJVc4Ie7I+Oh3Ii/vNzUF8GxuORU93fgy8CyfjYUqynKHKFB3XNV6GfczrHPHNP9rS47w1uiw54CkwlnEOysV219Pn4G0dEEqlAMo4dlARkN3DeLKInmv95h+kAyGpAeoZVkG7c33yQw1MF3KiUk8xKCF/icPr9ThrxiYTXNH3VuGU7Hz4
X-OriginatorOrg: fugro.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eade83c-75c2-4fe6-d7d0-08dec8630ca8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2026 09:14:47.2594
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e3b48527-4cbe-42a2-b4d2-11b3cc7a86fc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iQRlqvIadLxCyY5Z29+Gh3m3Lrkc8ZtycECMB8qTCMbWNFnqVCpDtU9uwXgW4uHEqgJYP8Gj1EYO9Id6jpr/Pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9481
X-Proofpoint-ORIG-GUID: bsICyeJpSZqL1wNc0U-ZnMhsfLBEcIXP
X-Authority-Analysis: v=2.4 cv=WeU8rUhX c=1 sm=1 tr=0 ts=6a2bce0b cx=c_pps
 a=nZATa2kLtWKrFGnilCG7Rg==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=FelO9ux0wxsA:10 a=ZfOrz009xn0A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=CzfQkN5Hhodbu-m26Zdm:22 a=Mf16fT3Xq2QyUispdtRY:22 a=Iho2fNeVAAAA:8
 a=yaJQvKJ9AAAA:8 a=etiEgX_XAAAA:8 a=LAhtlLsltOQusDLYkGsA:9 a=QEXdDO2ut3YA:10
 a=S0uMAesbcOi45TRniFeu:22 a=6Di8dfcBUeNmn65zsdoV:22 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA4MyBTYWx0ZWRfXy9vFeFbUAswZ
 I6YGuvkUvrV5mAbMKOj2+qdnbxS/MjxHSFYZk4+aUoFbf5J89wh4ZYlp74sDLxpLcOexkkpL6cA
 Xln0t1qLLA+1ySdiNcPdNIfrOD6ONN0=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA4MyBTYWx0ZWRfXyuACh3gZnhWE
 Nkmz7by9//ON+Ae1y2hFAjy9/FW6ChbSjI4fZN5cAI/DTVOd1eA4rZpCQfypA6eC6IuzAEjvNye
 VYfHCwKyjhLIvM6SwmE4ZKTxGpKTa9BckFg4z3hMUW775FievfqwS4VcTvOerrw4Df9l4oQsydt
 98QVgMlVJjj+DSTa+oO9EgBB72degW7y6LHxca6E/6KG5YkneZJ13ur/wPt2lberPMpY69asaN8
 7bNsvGfbGN/CMxjO4sJieB0bjlP5tzyiqUjHnhxq1uvse5ydk2NrFpLgQCEepTG1ND9+m/g0J/I
 bribPB02gumYNDLlVEQV3s9HUJmtIffSMFsPXyioAuhrvcihwOMJ5bPOSSo47irZkVtwkmwmEjh
 FykOmvDn1sLFMFMhUGY/gPtTrk4OO95hCUGnWQcpm2TrktE79J8zM0ySWG/WoQp+sLcIrr3jEWy
 awf1WLtmJEdX4lSD40A==
X-Proofpoint-GUID: bsICyeJpSZqL1wNc0U-ZnMhsfLBEcIXP
Message-ID-Hash: SOGL33GKVU3R5QHZFORQANJW7MDOL4R4
X-Message-ID-Hash: SOGL33GKVU3R5QHZFORQANJW7MDOL4R4
X-MailFrom: prvs=06237f065c=j.rognskog@fugro.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B200 frequency shifted
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WVGHF7RZQQSOQ5ZL3X2LVG7LMYUGFPCS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Rognskog, John-Harry via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Rognskog, John-Harry" <j.rognskog@fugro.com>
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:christian.zaeske@syss.de,m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_MIXED(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[ettus.com];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	R_DKIM_REJECT(0.00)[fugro.com:s=ppselector1,fugro.com:s=selector1];
	DKIM_TRACE(0.00)[emwd.com:+,fugro.com:-];
	HAS_REPLYTO(0.00)[j.rognskog@fugro.com];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	REDIRECTOR_URL(0.00)[urldefense.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[urldefense.com:url,syss.de:email,fugro.com:replyto,fugro.com:email,mm2.emwd.com:rdns,mm2.emwd.com:helo,ettus.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6486D67827A

SGkgQ2hyaXN0aWFuLA0KDQpObywgd2hhdCB5b3UgbmVlZCBpcyBhIGdvb2QgZXh0ZXJuYWwgY2xv
Y2suIFRoZSBpbnRlcm5hbCBjbG9jayB3aWxsIGRyaWZ0IHdpdGggdGVtcGVyYXR1cmUgYW5kIGFn
ZSBldGMgYW5kIGlzIG5vdCBkZXRlcm1pbmlzdGljLg0KRGVwZW5kaW5nIG9uIHlvdXIgcHJpY2Ug
cG9pbnQsIHRoZXJlIGFyZSBtdWx0aXBsZSBvcHRpb25zLCBmcm9tIGNoZWFwIEdQU0RPJ3MgZG8g
dGhlIGhpZ2hlc3QtZW5kIEZ1Z3JvIEF0b21pY2hyb24gb25lcyAoU3BhcmtmdW4gR05TU0RPIGZv
ciBleGFtcGxlKS4NCg0KS2luZCByZWdhcmRzLA0KSm9obg0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogQ2hyaXN0aWFuIFrDpHNrZSA8Y2hyaXN0aWFuLnphZXNrZUBzeXNzLmRl
PiANClNlbnQ6IEZyaWRheSwgSnVuZSAxMiwgMjAyNiAxMDo1MCBBTQ0KVG86IFJvZ25za29nLCBK
b2huLUhhcnJ5IDxqLnJvZ25za29nQGZ1Z3JvLmNvbT47IHVzcnAtdXNlcnMgPHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tPg0KU3ViamVjdDogUmU6IFtVU1JQLXVzZXJzXSBCMjAwIGZyZXF1ZW5j
eSBzaGlmdGVkDQoNCkhpIEpvaG4sDQoNCnllcyB3ZSBhcmUgdXNpbmcgdGhlIGludGVybmFsIGNs
b2NrLiBJdCBpcyBqdXN0IGEgYml0IHdlaXJkIHRoYXQgdGhlIA0KZXhhY3Qgc2FtZSBzZXR1cCB3
b3JrZWQgaW4gdGhlIHBhc3QuIFdlIHRoZW4gaGFkIHRoZSBTRFIgZGVwbG95ZWQgaW4gDQphbm90
aGVyIHByb2plY3QgYW5kIG5vdyB3YW50ZWQgdG8gdHJ5IHRoZSBzZXR1cCBhZ2FpbiBhbmQgaXQg
c3RvcHBlZCANCndvcmtpbmcgYmVjYXVzZSBvZiB0aGUgc2hpZnQuDQoNCkJ1dCBpZiBpdCBpcyB0
ZWNobmljYWxseSB3aXRoaW4gc3BlYyBhbmQgd2UgY2FuJ3QgcmVhbGx5IGRvIGFueXRoaW5nIHRv
IA0KZml4IHRoaXMsIEkgZ3Vlc3Mgd2UganVzdCBuZWVkIGEgbmV3IFNEUg0KDQpPbiA2LzEyLzI2
IDEwOjQyLCBSb2duc2tvZywgSm9obi1IYXJyeSB3cm90ZToNCj4gSGksDQo+IEkgYXNzdW1lIHlv
dSBhcmUgdXNpbmcgaW50ZXJuYWwgY2xvY2s/IDVrSHogaXMgd2l0aGluIGl0cyBzcGVjIChiYXJl
bHkpLiBNeSB1bml0cyB2YXJ5IGluIHRoYXQgcmFuZ2UsIGFsdGhvdWdoIG5vdCBhcyBtdWNoIGlu
ZGl2aWR1YWxseS4NCj4gS2luZCByZWdhcmRzLA0KPiBKb2huDQo+DQo+IC0tLS0tT3JpZ2luYWwg
TWVzc2FnZS0tLS0tDQo+IEZyb206IENocmlzdGlhbiBaw6Rza2UgdmlhIFVTUlAtdXNlcnMgPHVz
cnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0KPiBTZW50OiBGcmlkYXksIEp1bmUgMTIsIDIwMjYg
MTA6MzUgQU0NCj4gVG86IHVzcnAtdXNlcnMgPHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPg0K
PiBTdWJqZWN0OiBbVVNSUC11c2Vyc10gQjIwMCBmcmVxdWVuY3kgc2hpZnRlZA0KPg0KPiBIZWxs
bywNCj4NCj4gKFNvcnJ5IGlmIHRoaXMgaXMgYSBkdXBsaWNhdGUsIEkgdGhpbmsgdGhlcmUgd2Vu
dCBzb21ldGhpbmcgd3Jvbmcgd2l0aCBteSBsYXN0IGVtYWlsIHRvIHRoZSBtYWlsaW5nIGxpc3Qp
DQo+DQo+IEluIHRoZSBwYXN0LCB3ZSB1c2VkIGEgQjIwMCBhbmQgc3JzUkFOIHRvIGJ1aWxkIG91
ciBvd24gTFRFIGNlbGwsIHdoaWNoIGFsd2F5cyB3b3JrZWQgZmxhd2xlc3NseS4gQWZ0ZXIgc29t
ZSB0aW1lLCB3ZSB3YW50ZWQgdG8gYnVpbGQgdGhpcyBzZXR1cCBhZ2FpbiBidXQgd2UgcmFuIGlu
dG8gYW4gaXNzdWU6IFRoZSBwaG9uZSBuZXZlciBmb3VuZCB0aGUgY2VsbC4NCj4NCj4gQWZ0ZXIg
bG9va2luZyBpbnRvIHRoZSBwcm9ibGVtIEkgbm90aWNlZCwgdGhhdCB0aGUgb3V0cHV0IGZyZXF1
ZW5jeSBvZiB0aGUgQjIwMCBpcyBzaGlmdGVkIGFyb3VuZCArNSBrSHogYXQgYXJvdW5kIDIuNiBH
SHogKFZlcmlmaWVkIGl0IHdpdGggYW5vdGhlciBTRFIpLiBUb28gbXVjaCBmb3IgdGhlIHBob25l
IHRvIGdldCB0aGUgc2lnbmFsIHByb3Blcmx5LiBXaGVuIEkgbWFudWFsbHkgYWRqdXN0IHRoZSBm
cmVxdWVuY3kgaW4gc3JzUkFOIHRvIGNvbXBlbnNhdGUgZm9yIHRoZSA1IGtIeiBzaGlmdCwgdGhl
IHBob25lIGltbWVkaWF0ZWx5IGRldGVjdHMgdGhlIGNlbGwuDQo+DQo+IEF0IGxvd2VyIGZyZXF1
ZW5jaWVzLCB0aGUgc2hpZnQgYWxzbyBnZXRzIGxvd2VyLg0KPg0KPiBJcyB0aGVyZSBzb21ldGhp
bmcgd2UgY2FuIGRvIHRvIHJldml2ZSB0aGUgQjIwMD/CoCBCZWNhdXNlIHRoaXMgZXhhY3Qgc2V0
dXAgd29ya2VkIGluIHRoZSBwYXN0LCBJIHRoaW5rIHNvbWV0aGluZyBoYXBwZW5lZCB0byB0aGUg
YjIwMCB0aGF0IGNhdXNlcyB0aGlzIHNoaWZ0Lg0KPg0KPiBUaGFua3MgaW4gYWR2YW5jZSwNCj4g
Q2hyaXN0aWFuDQo+DQotLSANCkNocmlzdGlhbiBaw6Rza2UNCklULVNlY3VyaXR5IENvbnN1bHRh
bnQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQoNClN5U1MgR21iSA0KU2NoYWZmaGF1c2Vuc3RyYcOfZSA3NywgNzIwNzIgVMO8
YmluZ2VuLCBHZXJtYW55DQpUZWw6ICs0OSAoMCk3MDcxIC0gNDAgNzggNTYtNjIxMQ0KTW9iaWw6
ICs0OSAoMCkxNTEgLSA0MyAxNSA3NiAxNw0KRS1NYWlsOiBjaHJpc3RpYW4uemFlc2tlQHN5c3Mu
ZGUNCldlYjogaHR0cHM6Ly91cmxkZWZlbnNlLmNvbS92My9fX2h0dHBzOi8vc3lzcy5kZV9fOyEh
SXUyd3hpTSF3d3ByS0V5RHVjVndPcFNmRGJDd2w5TUVRc0lUVGtfdno4YkxUWFREVXUzaEtvemMx
YUpMN2lJemJqN0YzZGFtRWtBUWZMblNxTk1Ra3p6elRRQnRaVnZoWVZBWVp3JCANCg0KUEdQLUZp
bmdlcnByaW50OiA1MUQ0IDZFOUIgM0MyOSA3MzQ3IEFDMDEgMEY1QSA3QjAwIEQxNjQgQTMyRiA5
QUM5DQoNCkdlc2Now6RmdHNmw7xocmVyOiBTZWJhc3RpYW4gU2NocmVpYmVyLCBTZWJhc3RpYW4g
TmVyeg0KUmVnaXN0ZXJnZXJpY2h0OiBBbXRzZ2VyaWNodCBTdHV0dGdhcnQgLyBIUkIgMzgyNDIw
DQpTdGV1ZXJudW1tZXI6IDg2MTE4IC8gNTU4MDkNCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gdXNycC11
c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byB1c3Jw
LXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=

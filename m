Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OhyBpsbp2kUeAAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 18:34:19 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F9E71F4AC4
	for <lists+usrp-users@lfdr.de>; Tue, 03 Mar 2026 18:34:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C00B386466
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2026 12:34:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772559256; bh=XsGgxVhm9ZlnI91rnIdn/xD0G4E0RYSJy8FFK7AKi5g=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=wkMvATSSWQnnfkHhjV9AgG+1txT2M6lv+NOCCqVsyO33+b9vD1yXLcfiMH4wA15o7
	 8maV+MGKKm92Vzlm9AzHEQrI6J1cjViVK3pTCAeI3zFMy61ZAVwaJixCbxso2QjqXV
	 mWviEIeeS6hjojWPKljQreyoShdytYYMBf5GoL/oPgwOtKTTZkY6v/1oReYUuKnVYU
	 wXFfjPTjQE0Y/CxyUdz3YMHw1kCkzherony4Z58Qq6SvYro4MUvcj9ArYKxBeCJdWk
	 dxfsdrIrXgrHqjdzBNc72h49IWxGzATrg7Rzx6VUg+hF7xunh9E8s5qT4WUassU8So
	 G17z4YSTffl9A==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id C35F738644A
	for <usrp-users@lists.ettus.com>; Tue,  3 Mar 2026 12:33:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=aero.org header.i=@aero.org header.b="Spwd3HUq";
	dkim=pass (1024-bit key; unprotected) header.d=aerospacecloud.onmicrosoft.com header.i=@aerospacecloud.onmicrosoft.com header.b="wQibqaov";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1772559199; x=1804095199;
  h=from:to:subject:date:message-id:mime-version;
  bh=GBFf14UNzZInKAg2mUlo0SaVfVQqCMcj5PJCGT/YBrg=;
  b=Spwd3HUqyxU6Fb6I917rKtFNWzOi3O4tDmYSdI62azBqZ6fx3YFjpnKt
   vSE0MAzc4DfOwvmjoPQEE/0kvxup2G66ALc4CH9ydvE4+UemTWxMTh/s9
   g7sosatVjQqqUrLnUXimkgEmuLKjMqmxc3AgQzZSXq1K40qkBhTtdMLq0
   U=;
X-CSE-ConnectionGUID: RyW3mexfSCO/M2XwwJXaQA==
X-CSE-MsgGUID: KULr0Z/7TZG1t5TnHha+hg==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="8634842"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800";
   d="scan'208,217";a="8634842"
X-IPAS-Result: =?us-ascii?q?A2FSAQDHGqdpjhQOXShXAx4BPAwCCxWBUIE9gQRBAUOBb?=
 =?us-ascii?q?K4ShleBJQNXDwEBAQEBAQEBAQcCUQQBAQMEggyCdAKNISc1CA4BAgQBAQEBA?=
 =?us-ascii?q?wIDAQEBAQEBAQEOAQEBBQEBAQEBBwQBAgIQAQEBAQEBOQUOO4ZPDYQHgSYBA?=
 =?us-ascii?q?QEBAQEBAQEBAQEdAjWBHAEBBSUKBBEBfycEG4J6gh4HBAsHAzaqGYE0gQGCD?=
 =?us-ascii?q?AEBBgQEM9p0GGOBZwmBTYFhghyBcoJlASqBNQGEFIUwgVVEgRVCgjdvhEUfJ?=
 =?us-ascii?q?oNOgi+CJnoUHYEohiGEMIZygUQiAyYzLAFVExcLBwVegQgDgQYyPDIdgSM+F?=
 =?us-ascii?q?zNYGwcFhVwPiHOBZIETgigDC209NxQbAwSBNQWNAAdVP4IUgRsJgXujc4F8j?=
 =?us-ascii?q?GOUYzQHhB+BXgYMoB4XqmuZBqkWAgQCBAUCEAiBagJkgS4zGjCDKlIZD446g?=
 =?us-ascii?q?2fEAXg8AgcLAQEDCZNpAQE?=
IronPort-PHdr: A9a23:TQJg/x0BesDJ2s2HsmDPrFBlVkEcU/3cMg0U788hjLRDOuSm8o/5N
 UPSrfNqkBfSXIrd5v4F7oies63pVWEap5rUtncEfc9AUhYfgpAQmAotSMeOFUz8KqvsaCo3V
 MRPXVNo5Te1K09QTc/zfVqUpWe9vlYv
IronPort-Data: A9a23:3VwmqK6gpJY4dyqyZB/8BwxRtCbHchMFZxGqfqrLsTDasY5as4F+v
 jEbUGuFa6zeMzHyfY90aYvg9xtVvJ6GzII2SAs6r3tmEysa+MHILOrCIxarNUt+DCFioGGLT
 ik6QoOdRCzhZiaE/n9BFJC//SEkvU2vbuOlV7eUUsxJbVY5Dn9n0FQ7wLZRbrdA2bCRGxmKt
 c75v/rRMVqk3y8cGm8P4spvkjs31BjJkG1e5AVWicxj5geEySFOVMlHfMldElOhKmVqNr/iL
 wr85Ozhlo/p109FIs+olL/9bnoLTtb6VeRZoic+twCK23CulwRqukoJHKN0hXR/0l1lq+tMJ
 OBl7vRcfy90Z/eUwLx1vy5wSEmSNYUekFPOzOPWXca7lyUqeFO0qxli4d1f0ST1NY+bDEkXn
 cH0JgzhYTi5lt3txb+rRNJHoYMGdvn0I6Evs0hJmGSx4fYOGfgvQo3xzI5g5m9hrf0WRayYY
 NcFYz1yahiGewdIJlocFJM5mqGvm2X7dDpb7lmSoMLb4UCPlEogi/60bJyPIrRmRu0M9qqcj
 m/b8Gn/D1cVLtWO1zef2nuhnOiJmjn0MG4XPO3mraI63Af7Kmo7KyAyTwOJ5qaFuGHnR49jL
 WwU82kuov1nnKCsZoKmBUHnyJKehTYBQMBIVvAh5RuW4q7V+BqCQGUYUiNaLtchsacLqScC0
 1aIm5byAiFzsLaYT26H/7OJtjqgPTBMcjdbPXdeFU0C/sXpp5w1glTXVNF/HaWpj9rzXzbt3
 zSNqyt4jLIW5SIW60ml1WrWvGmpq4jHdSUSoSCNbn26zDNwXafwMuRE9mPnAeB8wJF1p2RtU
 VABksmaqfsJEI2NnyGLXP8EGKyy7uSBKGSD2Qc3R8N5sTOw53SkYIZcpilkI1tkOdoFfjmvZ
 1LPvQRW59lYO37CgU5Lj2CZVJhCIUvITI6NuhXogjxmOccZmOivp38GWKJo9zqx+HXAaIlmU
 XthTSpTMZrqIf88lmbpLwvs+boqzTo53mTdWdjwyA6/uYejiIquYe5dajOmN7lhhIvd+Vm92
 4gFa6OilU4FOMWgOXa/zGLmBQxQRZTNLcys85QPHgNCSyI6cFwc5wj5m+p9Jdw0xvQKzo8lP
 BiVAydl9bY2vlWfQS3iV5ypQOiHsUpXxZ7jARERAA==
IronPort-HdrOrdr: A9a23:eS3ZPqkYO10OfCArGG6WaAFD4HjpDfPOimdD5ihNYBxZY6Wkfp
 +V8cjzhCWftN9OYhodcIi7Sc+9qADnhOdICOgqTMGftWzd1FdAQ7sSibcKrweAJ8SczJ8V6U
 4DSdkYNDSYNzET4qjHCWKDYrUdKay8gcWVbJDlvhVQpG9RC51I3kNcMEK2A0d2TA5JCd4SD5
 yH/PdKoDKmZDA+ctm7LmNtZZmJm/T70LbdJTIWDR8u7weDyRmy7qThLhSe1hACFxtS3LYZ93
 TfmQCR3NTojxj78G6Q64bg1eUYpDLT8KoMOCW4sLlYFtyjsHfoWG0rYcz7gNl8mpDV1L9tqq
 iFn/5oBbUP15vcE1vF2yfFyk3u1i0j5GTlzkLdiXz/odbhTDZ/EMZZg5lFGyGpnnbIkesMo5
 6j5VjpxaZ/HFfFhmDw9tLIXxZlmg69pmcji/caizhaXZEFYLFcoIQD9AcNea1wax7S+cQiCq
 1jHcvc7PFZfReTaG3YpHBmxJipUm4oFhmLT0Aesoie0iRQnnp+00wErfZv6kso5dY4Ud1J9u
 7EOqNnmPVHSdIXd7t0AKMbTc6+GgX2MGLx2aKpUCXa/Y08SgzwQsTMkckIDcmRCeM18Kc=
X-Talos-CUID: 9a23:6IyYVWzW0yeMIO5fIsReBgUuC/9+d3DNwkz7BAidU1Z2V5+lQGa5rfY=
X-Talos-MUID: 9a23:HuhWkAmgOa8R0KkdPz7JdnpBCeNyu5bpV3w/vswa5vWCFSx5eDeS2WE=
Received: from mail-southcentralusazlp17010020.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.20])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Mar 2026 09:33:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mOPEKL6KENgOskSFQJPNFnfD2HB1i1A8ZSpwZInhkq5DzPTkTmd228Cpnr6cJ9iC/R31xJ7z+t98e7iUVZl3/cMJJjyK1UT701iRVLfBnA7fxH5NFJZ4TSje2CRp6TFjbMxVarZSe8BnLAGPp0stoZoR3i6WGKqgM45XPtzoZpTWDtX9wFArGqrhU512pmAqWadoSMHaJkiamHvvcROLIcAVrZx2F5uI+ndG9C+nkcHDiHtZRUKt8NAMgLR7ctqKR6Enej143CV5UfdRhwyX8705zPuDXjb42DoGC34To+A959Qr0yKRZTDG62/zSx258qHUb6+PEGnueFxwa3NBjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBFf14UNzZInKAg2mUlo0SaVfVQqCMcj5PJCGT/YBrg=;
 b=dT3FhFe2X4BKisr+xuCthCd8PcYX90LzTjHrmiZc95Re+Y36HSZl6gHU1/RnqrYdvvGVCxGkM6pI/J+x8tbOXWX18Eu514sRgZgt/hXnGOMUhKAlNitsNgCzspYHZw9HNZ4E+cthUJ/XhYrpcxm4pl7Ixr9yB3d/z5XABesF5CoI6u5mHLn1RVTf8qeR0d5H6FDQJpSdk6uU5U4lUf8sD0KNNqdSRaoIWI37p7viw+32wMN2Xdhyf0GZPT7gQUMVqYdHdv97P4Nsb5LceDTWnxLNSaz1cHiqpZJEtSCSE8lLrq5IvNF0PkbslhKn2NFg5Be0aCNiuvzAadLHWZje8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GBFf14UNzZInKAg2mUlo0SaVfVQqCMcj5PJCGT/YBrg=;
 b=wQibqaovcsyPtHBx1LI2uB/pSU2e5zYN5ahrl6h+Wof3dYW4iNDfTx4pVijl3QyPBcQ0YXCtG29+sVbSY0YEpm7SGTZMmhXSHuENZtSpEa7w4/iVv9wYo53euugbQz416+dUWsGQSYFPDm393s20f8goIm3rmAqaIgAV8bMUkns=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by BY5PR09MB4961.namprd09.prod.outlook.com (2603:10b6:a03:24c::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.22; Tue, 3 Mar
 2026 17:33:16 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%4]) with mapi id 15.20.9654.022; Tue, 3 Mar 2026
 17:33:16 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440: Could not find appropriate gain for performing ADC self
 cal
Thread-Index: AQHcqzOU6IK1tFLOLEeqCnZzlrZldQ==
Date: Tue, 3 Mar 2026 17:33:16 +0000
Message-ID: 
 <SJ0PR09MB912686CBC2CC3BA97673827BEC7FA@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aero.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|BY5PR09MB4961:EE_
x-ms-office365-filtering-correlation-id: cf12b134-9083-441f-57ad-08de794af41a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|41320700013|366016|1800799024|38070700021|8096899003;
x-microsoft-antispam-message-info: 
 53qcfZR/1CR86Xr//NNof4MDF8KalIRsgTbDTXtFzt2jkpSTi7J3XJ3DX2YwWq1TxYI0Nedyty+ZsWsZ+9BFgi2SQ1nveKJ4lvDKOWHKD/F5Lwh3VL4gVfuHrqwADpEF7KoVqBJTPGVosvaIz/Q+Y2UrHBndRl2rf/VpriPjL2mI08CEnzQGgwg7L0NcHn/LD1D41UfsxRJE8kXY4CnkGHZuMgLVn1JY0kE1prDs1vbngkCWy6222nPKNuuxH1njms/3KO8Vo8b27nFfnfseyBNXw6hMLcpgCctX3Ut40OM/Rotp/ilctKzXHKlpizq9essr/s+Tk+j+lfJINep/neSvsgGlI2y+s519N2D3qcI8sVJ9H2eSlGxmeC36I9WGLqTknQbJOz277FFa3Lu+AIWTbGoZGrIl0laIpl6iD5E8sbTkZA6qNTjdvlgi76g9U3dc8tRqjdoAQLjkkgbwxr2CTY+24kKxZH/JY2b7djXbdPU9X/oDhyGejz4g2PJGJWDL3GtAEl1gdURmX0eoRksoMqCvOfapVkV9JPUB3+6I2t+6RQtqUtENCl9WGBKIvw52ksv+cpMKzj+K+CM9/YXFu/XZuK/fi1D59sSHlIaKuwtOif1XD8SnCyuEFUkCU5HERlbn6XmxAXn5ngq35yaKe2BPHyb9t3Wp75kdauYLKVoAGabIMhHyNNlmT+btgiHHatSK2k5haDzb12S8Y46/iVtjGVRO8msN5Gl20ozWOwSslgL4IcdasdYUhDoi+v1bhv98Cpt/vHDEad852hWQjf6bdPGttOEZgz76D9s=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(41320700013)(366016)(1800799024)(38070700021)(8096899003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?mVWSXly6U1LWd6EIydkGPiXchRNxmWhOydTTMaZLs1MlrCOdhg23/SEZTk?=
 =?iso-8859-1?Q?VYAaHkyohXoV0SycbrfMNUfmCwwWEfjrx/jxKjs8tE+jnTwSjXG17riTjW?=
 =?iso-8859-1?Q?C6P0f2W6EoMxXKIVy3+iskVtpdCZmO1hdH0kFe3W6himtgRJV/+Jlk3O5s?=
 =?iso-8859-1?Q?Be+djdyflewJKTMQInwcoeHZkWJlW5Mmw/8/kxGadSEywZrUbMYcqdlLbE?=
 =?iso-8859-1?Q?0cPS2OqsI35rcB68/wzna1VZDB4g9O/M48/dZL7dA9qu5WQNyMCC6RASIj?=
 =?iso-8859-1?Q?GCDoXKU2vpCx+4h4c+yg5KyK6/Wif88pRVazJ7H2c0KjLPX/yCQM7TzjXe?=
 =?iso-8859-1?Q?r+0ofCG4uiSDnJotodatCZHuFg0c/Rj/YuK9rzcf8C/vq01RXw9yhatkR5?=
 =?iso-8859-1?Q?TMFdVBtCcqcs7O5cXgQoOMXeBCvaaUY2Zu4QjJnhXXmqei78aogAN6tk/D?=
 =?iso-8859-1?Q?pq05/te6OrQ90leMDAUXg/Vw8pffpbLLExhoptQI2KKrWpjLda74Q2+jjt?=
 =?iso-8859-1?Q?vUrHeDP21rhGCqxGip5V8ILuZc6mB1OIB/PrVvTFrWn+xwqbm9jDxxQPxw?=
 =?iso-8859-1?Q?+1ybWx7GCvN2bx5tOFpo+fPIsVwoSNVUMhNg+Uk1wHvJqDDyKKaXQqHlxG?=
 =?iso-8859-1?Q?bot50+qFnG8e75mQGvOnsWM5uwQ9Cm+VtoHRE5nMP7OuYd3/SfUO836ALg?=
 =?iso-8859-1?Q?utJUD6xGq/Y2aU+53aNuo/RJJC3Ihq21CoVylkeP2G5H8sPio4t4jgpmjC?=
 =?iso-8859-1?Q?Rwa4VUa7hcAsLOYvi5rrPxATQQbTuBgc10oaDmn1CO9wzVffBqVGSD1QqK?=
 =?iso-8859-1?Q?U8JRm/g2+cKp5LeOBlbbyGg12fDOG9EkbrrT7bYAibVubR5ozE+Zgdes1a?=
 =?iso-8859-1?Q?h6lsRGug193pA76AS4VLKRt+m1b1X5gkbWehduE2+vOtVr+IaJSkTdqeB1?=
 =?iso-8859-1?Q?CixilhTwSnMOvBlvfNKzSF8vq3lnWvelhZjdvBWGJT7G5TMavaCIco2X+U?=
 =?iso-8859-1?Q?pVG8vEY2c9aW/9JgcYvf9WckgFxJZWMBxQQXvEK/Ouce9QFRHoQ7N5RcU4?=
 =?iso-8859-1?Q?HRJ8s239+mhR+SqyDlzpsKBiIQ98QJmP5mKzjtnHqxzLPzX/vO0lEHOyrs?=
 =?iso-8859-1?Q?l/wBYLBEb+za7JxdNcOADWNj4K2tm99NCUcs0aYNR/ZiAbep0tnPUrE+ck?=
 =?iso-8859-1?Q?kSCvY4VY+lqUjO787axuBas5JNr2LghbyurkA/3RvOsNk/vRQ9QqHipKm+?=
 =?iso-8859-1?Q?blsyt0IsJHBoj01Be4XBzYBX6+pfUrXAaBfoNQpJ900AT1GIOFdXAHZgvl?=
 =?iso-8859-1?Q?Mh9E8sOqxEtivF6nyuVyb87k1P67lj7rKo8ltxf4Fsx2OOJSrrbYXy0CRX?=
 =?iso-8859-1?Q?ZcO8YJgRBsEkkiueeWw7ZYAjOzQpOdUV8QzlzW1yWN5uqzM5mD3x2hHD6+?=
 =?iso-8859-1?Q?heplLZp5XH631VW+pC1N7DuzMi6INAJp/g2cNvuzO/DmDRn4u8SP1aUuPr?=
 =?iso-8859-1?Q?1i5BXgYOORIF+900y84uplkKEXrH4B0AZLEEB5qC9oNca7EwK49XoaDL8H?=
 =?iso-8859-1?Q?1/gnSgjhhdqNYyjQbjVm3yC8NH5aFR2GI4GSXbb5N1yZttxnPB+Aphgp4E?=
 =?iso-8859-1?Q?SvFrGmP+BJnIdSCS8R4xud03ahq9V3xM9Tg7lBrMQe9IbK8snBSoD5gZpM?=
 =?iso-8859-1?Q?eDQ/gHyNAeO4s+5Ln04GhUu27cQCkOXJT4NiU9tvlcpRQDB7XqYCNxN8tR?=
 =?iso-8859-1?Q?d9U9XgA54lGWbwk5+R9tGVd2GrlJ/DrKLwo1ft4cbKc9dK?=
MIME-Version: 1.0
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cf12b134-9083-441f-57ad-08de794af41a
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2026 17:33:16.2748
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR09MB4961
Message-ID-Hash: DN7LY2CDGOG27BIYDYFV7MUCBJRSQF43
X-Message-ID-Hash: DN7LY2CDGOG27BIYDYFV7MUCBJRSQF43
X-MailFrom: prvs=5153118e6=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440: Could not find appropriate gain for performing ADC self cal
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CK2Z4FX2MWVM3RPH6MEW4Z662YY4ZYFS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6124805959571530447=="
X-Rspamd-Queue-Id: 1F9E71F4AC4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[emwd.com:dkim]
X-Rspamd-Action: no action

--===============6124805959571530447==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912686CBC2CC3BA97673827BEC7FASJ0PR09MB9126namp_"

--_000_SJ0PR09MB912686CBC2CC3BA97673827BEC7FASJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I get the following error about every fourth time I start the software.

-------
Error during initialization of block 0/Radio#0! [ERROR] [RFNOC::GRAPH] Caug=
ht exception while initializing graph: RuntimeError: Could not find appropr=
iate gain for performing ADC self cal Error: RuntimeError: Failure to creat=
e rfnoc_graph.
-------

UHD 4.9.0.1
I see it with either uhd_usrp_probe OR rx_samples_to_file.

NOTE: there may be an actual hardware problem with one of the channels (TBD=
).

Anyone seen this?

Thanks.


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB912686CBC2CC3BA97673827BEC7FASJ0PR09MB9126namp_
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
I get the following error about every fourth time I start the software.</di=
v>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
-------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Error during initialization of block 0/Radio#0! [ERROR] [RFNOC::GRAPH] Caug=
ht exception while initializing graph: RuntimeError: Could not find appropr=
iate gain for performing ADC self cal Error: RuntimeError: Failure to creat=
e rfnoc_graph.</div>
<div class=3D"elementToProof" id=3D"Signature">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
-------</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
UHD 4.9.0.1</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
I see it with either uhd_usrp_probe OR rx_samples_to_file.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
NOTE: there may be an actual hardware problem with one of the channels (TBD=
).</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Anyone seen this?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thanks.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
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

--_000_SJ0PR09MB912686CBC2CC3BA97673827BEC7FASJ0PR09MB9126namp_--

--===============6124805959571530447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6124805959571530447==--

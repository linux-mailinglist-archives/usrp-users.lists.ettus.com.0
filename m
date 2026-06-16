Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LBb8EHq4MWrkpQUAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jun 2026 22:56:26 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AA569553A
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jun 2026 22:56:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=TXL1evbX;
	dkim=fail ("body hash did not verify") header.d=aero.org header.s=mailhub header.b=BZxykRMD;
	dkim=fail ("body hash did not verify") header.d=aerospacecloud.onmicrosoft.com header.s=selector2-aerospacecloud-onmicrosoft-com header.b=x9QEDAPQ;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=fail reason="No valid SPF, DKIM not aligned (relaxed)" header.from=aero.org (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D960380933
	for <lists+usrp-users@lfdr.de>; Tue, 16 Jun 2026 16:56:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1781643384; bh=A8FIeldk1n6dbWIEksz4UxZBZwscTNr5zKd024uvE8o=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=TXL1evbXzufb/0UeQkRREUGaSUk5gfg1Hq/yyi+gIGmvhflox5ksdr4c/3j1N+Zq2
	 ymjKnQqaStMbRcvXAYXcv++ERp57oY8eU/HTylqFYHhzsf5SJ0cyMxF4FHvC2yYXKU
	 2M6KJAO6QqMxj/QGnH1Jwg8OydidASohPEwDM1yh8k/1EqKhDRxFinTcNVaBgRtC25
	 5uViNEIbQQW1ZBfo529nmzAq4vs3Vd3wAU53/xRds9TEfCoaeba+LhX1+UroX1fXdj
	 I8MnXH2F9t2D6N5MlGzzcOLXvWa/oulKpexrSzY/H7brXUyCyzMKvtN8dIvXq6joHZ
	 ocKVq6adcvBLg==
Received: from email5-west.aero.org (email5-west.aero.org [130.221.16.30])
	by mm2.emwd.com (Postfix) with ESMTPS id 303C7384A40
	for <usrp-users@lists.ettus.com>; Tue, 16 Jun 2026 16:56:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=aero.org; i=@aero.org; q=dns/txt; s=mailhub;
  t=1781643378; x=1813179378;
  h=from:to:subject:date:message-id:mime-version;
  bh=WUdgO7dGln++jzHTB7Onz32khyMkM9nFUc9mcgSIfuw=;
  b=BZxykRMD11TdaEGykilvixT603hAjPn9eUsdS1vwCPZLCdvNwx8bGMkO
   Q1z0ebDJ7UmPdFA994XWOV66t/0av7GLjaZjJO0Fl0o6XA3zJ7wvuAoQ9
   2QL8X/BIrcEAiA1wK6I445Wxb+DFlqAwtQuXtX9slBPBRKegA6Ms04BEe
   8=;
X-CSE-ConnectionGUID: gsEf3Xr4SbCg3seelnCg3A==
X-CSE-MsgGUID: +xu5+1PxRN6dHufxZ8rPmQ==
x-SBRS: 4.2
x-SenderGroup: Inbound_Office365
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="9439473"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600";
   d="scan'208,217";a="9439473"
X-IPAS-Result: =?us-ascii?q?A2FoAQAttzFqjhQOXShXA4JZgT2BBEIBRYFsrhOGV4EkA?=
 =?us-ascii?q?1cPAQEBAQEBAQEBBwJRBAEBAwSEfwKNQyc2Bw4BAgQDAgMBAQEBAQEBAQ4BA?=
 =?us-ascii?q?QEFAQEBAQEHBAECAhABAQEBAQE5BQ47hk8NhAeBJgEBAQEBAQEBAQEBAR0CN?=
 =?us-ascii?q?YEcAQE4EQEMAXInBBuCeoIeBwQLBwM2snyBNIEBggwBAQYEBNsqGGWBaQmBT?=
 =?us-ascii?q?YN+gXOCagEqgTUBhBaFMoFVRIFXh2xFg06CMIImehIbgSOCNY0sgUQiAyYzL?=
 =?us-ascii?q?AFVExcLBwVegQgDgQZuMh2BIz4XNFgbBwWBHoIIgQKFBiMfAzl/gW+BJWdmF?=
 =?us-ascii?q?TA1gQIRHwp6AwttPTcUGwMEgTUFjA1dFw+pMYF8oUc0B4QggWAGDKAfF6psm?=
 =?us-ascii?q?QipFwIEAgQFAhAIgW8EggszGjCDKlMZD446g2nIPnk/BwIHDwKTcgEB?=
IronPort-PHdr: A9a23:cg2cThc2OxHMVvOXUrz73mSUlGM/toqcDmcuAtIPh7FPd/Gl+JLvd
 Aza6O52hVDEFYPc97pfiuXQvqyhPA5I4ZuIvH0YNpAZURgDhJYamgU6C5uDDkv2ZPfhcy09G
 pFEU1lot3G2OERYAoDwfVrX93S/9zlUHQ/wZmJI
IronPort-Data: A9a23:h8MIxaAb/leoaxVW/zfjw5YqxClBgxIJ4kV8jS/XYbTApDki1TNWx
 mAfWT2OPvncajOjL98jb4W3p0JS7Z+AztZhTANkpHpgZkwRpJueD7x1DKtR0wB+jyHnZBg6h
 ynLQoCYdKjYaFeC9k/1WlTGhSAlhfjZLlbEILeZfHg3HEk8E39JZStLw4YRmpRvjcWyHzSDs
 Nbzp9y3EFK+0laYCEpMg064gE0p5qiaVA8w5ARkO6gV5QGGzBH5MbpGTU2PByqgKmVrNrPiL
 wrz5OnR1n/U+R4rFuSknt7TGqHdauO60aCm0xK6aoD66vRwjnVaPpUTbZLwXXxqZwChxLid/
 v0Q7MboEV9B0prkw4zxWzEAe8130DYvFLXveRBTuuTLp6HKnueFL1yDwyjaMKVBktubD12i+
 tQXMx0DNSCZ29m8673gUeRhgsIII5LCadZ3VnFIlVk1DN4daMH7ef2bzuIAhG12gd1SF/HDY
 cZfcSBocBnLfxxIPBEQFY46m+CrwHL4dlW0qnrJ/exmuC6KkEoriNABM/KMEjCObchIkUueq
 yTJ5W3oHBwAHNWS0z3D9Wij7gPKtXKnA9NOS+bQGvhCw02Omy9KMA0scwW3geS3mnzuQepaE
 hlBksYphfNprhD0JjXnZDWlu2Sc+wMHVsBLO+k78x2WjKfI/xuCQGMDS1Z8hMcOscY3QXkx0
 UKVn9jkAyB1ubmIUnuP8q/N8mvrYXBPdSkFeDMOShYD75/7uoYvgxnTT9FlVqmoktnyHjK2y
 DePxMQju1kNpcEQ+qvgzUqbuDiHqcPSQwMx4C7YBUvwu2uVe7WZi5qUBU83BMuswa6cR1iF+
 WMDhtSe5+0IEYuEkDGWSfcJBOj2v6/daGeEx1lyA5Mm6jKhvWa5epxd6y1/I0EvNdsYfTjuY
 wnYvgY5CH5v0JmCMvcfj2GZUppCIU3c+TLNDa28gj1mPsEZSeN/1HsyDXN8Jki0+KTWrU3AB
 XtrWZ33VypFYUiW5D+3TP0ayrgl2mg1wnnLLa3GI+Cc+ePGPha9EO5dWHPXN7xRxP3e/G39r
 Y0FX+PUkEo3bQELSnWNmWLlBQxQdSBjbX03wuQLHtO+zv1OQj9/VaCKke54IOSIXc19z4/1w
 510YWcAoHKXuJENAVzihqxLAF83YatCkA==
IronPort-HdrOrdr: A9a23:2hXDQKi2jAzpY9uW3IAcQaw8vHBQX1113DAbv31ZSRFFG/FwyP
 rCoB1L73XJYWgqM03IwerwXpVoMkmsjKKdgLNhS4tKOTOLhILGFvAH0WKP+Vzd8k7Fh6dgPM
 VbAs9D4bTLZDAU4/oSizPIcOrIteP3lZxA8t2urUuFIzsLV4hQqytpAAeSFUN7ADJBGYc4E5
 Sk4M9GrSqLeHgcbMi3b0N1F9TrlpnurtbLcBQGDxko5E2lljWz8oP3FBCew1M3Ty5P6a1Kyx
 mOryXJooGY992rwB7V0GHeq75MnsH699dFDMuQzuAINzTXjBqybogJYczOgNl1mpDi1L8Zqq
 iDn/4SBbUz15rlRBD7nfKi4Xih7N9k0Q6b9bbRuwqZnSW+fkNwNyMJv/MlTvPUhnBQxu1Uwe
 ZF2XmUuIFQCg6FlCPh58LQXxUvjUasp2E++NRj+kC3fLFuG4O5l7Zvjn99AdMFBmb3+YonGO
 5hAIXV4+tXa0qTazTcsnN0yNKhU3wvFlPeK3JyzfC9wnxThjR03kEYzMsQkjMJ8488UYBN46
 DBPr5znL9DQ8cKZeZ2BfsHQ8GwFmvRKCi8RF66MBDiDuUKKnjNo5n47PE84/yrYoUByN8olJ
 HIQDpjxB4PkoLVeLyzNbFwg27wqT+GLEjQI+llludEhoE=
X-Talos-CUID: =?us-ascii?q?9a23=3Ac4Lbq2qU9bnI1O6mfgMxOKTmUc8+X3OG/G2MGEW?=
 =?us-ascii?q?TBj1yRbCRT3Sfo4oxxg=3D=3D?=
X-Talos-MUID: 9a23:2nffNQbd++tXf+BT9C/x2XI7DNdSxfqiKF0DgadWofGBDHkl
Received: from mail-southcentralusazlp17010020.outbound.protection.outlook.com (HELO SA9PR09CU002.outbound.protection.outlook.com) ([40.93.14.20])
  by email5-west.aero.org with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jun 2026 13:56:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EHwn8laNGi61YXq31tYLNYT9St4dDAepz+D0WXMtrPSQt6vYrldohnGgaDjSVUDOdomDvY5CpsBCtnfUmNQvAl6XtCi7XEXAvpzs5nSs2L7cAAkJJZJej1FIAGDUAkzTq3CM4veBsugkMJ9hyfajsBL1qXtIW9GWHJlypdI6Csx7yoHsJtJzJzdE0IHUi5bsgYeJZV5qXEXjrhXY1nMrIYEwOUyIaPSXFsi7OZTAKxZorTqOve6CkTphMIHNE/qFcg1DTbslVftNoSds7QlfyrJ6bX3WQAd0dHsYuNu0LhZpNPpvcxqoMIbSymW6x6/HcGMiomGaOHqorPIe+RU3Pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e+qcpKfxzIj8A7q6+r9dOHYoBkNG+e6xEmfmUNourNE=;
 b=FKpkb1xUeyXR9baoVHNWCGMWsF9OW1YAmy2Szd9FIapAe9sIsRkHmFIP5O1/ZUHjB5ZYjXxV+8hxZJxRCok7qJVMRz//jP9NX0D9T+BttJuyXhQU1zdZaJED+63lzBGQ81rQ4zLHsKHDIER1AMSdRWw5eNfvpYRUPSRHTePZhaUN3bfmrs1zjmOXm99csJoTQlSu4R7rVxN7cYWxPhkzj8006lSmQPqQElnlCE4t6EqUv0ub4G3D+66hFUlOcijzqROOXua3K4HAHqOTsJgx4bzS3Vg32MWaTDgq1rmVWUuFCPdLQU0ihtwGR3/UlW0+OVElFaDPkEp3vd92e0LJZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aero.org; dmarc=pass action=none header.from=aero.org;
 dkim=pass header.d=aero.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aerospacecloud.onmicrosoft.com; s=selector2-aerospacecloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=e+qcpKfxzIj8A7q6+r9dOHYoBkNG+e6xEmfmUNourNE=;
 b=x9QEDAPQa6KT+ciM9K07HyFyKzPLWMlRrpE8bXvxwi9heiKxQkvZOZhhxFuw9zcQUqIQOA31wOajoaABc+sKD+C3QbQ7GM5GmRNuKFUHBJdS0wkvb4p6z8cJh0L0e65QAUv0lO8Ho6Qnl9myshVlfuYL/CBkJPZ8UGdIbiBKRtQ=
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com (2603:10b6:a03:444::22)
 by DS9PR09MB12057.namprd09.prod.outlook.com (2603:10b6:8:2ca::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Tue, 16 Jun
 2026 20:56:12 +0000
Received: from SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8]) by SJ0PR09MB9126.namprd09.prod.outlook.com
 ([fe80::4b5:d448:c89e:48e8%7]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:56:12 +0000
From: Eugene Grayver <eugene.grayver@aero.org>
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440 timed commands for tuning
Thread-Index: AQHc/dJSf1XYYsD3fE2cmts9JLCUww==
Date: Tue, 16 Jun 2026 20:56:11 +0000
Message-ID: 
 <SJ0PR09MB912603E936D78C167ABC8C14ECE52@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR09MB9126:EE_|DS9PR09MB12057:EE_
x-ms-office365-filtering-correlation-id: 19807df8-e669-4910-ee39-08decbe9b2bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|23010399003|41320700013|366016|1800799024|18002099003|6133799003|3023799007|56012099006|8096899003|38070700021;
x-microsoft-antispam-message-info: 
 S+sEQt21YKosM2OQeEgZ0U5PsWw1cEWaLq5lRrEAwsgaVy7meLDEtJb0jfZNItk2KsY9OxyHCFZQKQgUaNkr3x3MFuJMUXXuztp4Oobmitaa/HT9ZdPxAwBbrRX7EV0W2UF1hOgJMdYkarqnJIRPD7GqRfV691DTqsoMu6TT+dJs+x5mlBcdtFHSaqOlxhmZ6RJBxWihFsJ2Jb5hqpiUEyyYAuLp7dIxiKjv7oscBHpF66zPncOI/bbyYRzGL7e1Td4gbznh/GMWmaB+k8LKuYYnVgz+vOSTmzKEE7amzq46vkVoFWU6vn3YmM3HplUelQ1Ndi9ghKDlw1f1oDX54/X9ce7GYxWp40et4WFa+YppXaY4XUFp64fGtXoKF6wRXCZA8aLz0OYBhZDt18TsP3o6/3UhRyov+/dshL8l3NY3E3VliQnqVSnDupQ81GXOg8qgAwyb4HBtLgOLSWfR2Kyplk5LfmnUZOpkZaQr3ZXZrXGu4MYaVmB0MgjIsMK/N5Fkb2E54c/enk2ayg7PB3up9hyPGWy+ifrjZcfxga3lLhs2THDfBuDWeHcxoRA7W2tzibaLBfzQoRDnqpBMYTZVTDtyY1oEGJgifj2JNpob5m8vucBUNQ3RTq5azSJ72d4QxgctBEGdy2HXFld/p/JZehTS+eHcNKozU/D5CmNB3qlUHMkNPzYGo+ziOCx1HXEeTOPKh1ttkCiDBlezQ3GStlLOf9T0aJpYWUHxPFNXhuFO8XzOamgvnhKPJjQE
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR09MB9126.namprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(41320700013)(366016)(1800799024)(18002099003)(6133799003)(3023799007)(56012099006)(8096899003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?dkk2gY/WvL5kebbdvkOgqGth8fqftD44HpCRTHkYiyvvlxqkA59u0V4UiZ?=
 =?iso-8859-1?Q?QjOuw/VBmv7DtPyrA/DOpU7yC+tqE5/Ze1HhQLpJQwMkRizrS0dNAqs7L6?=
 =?iso-8859-1?Q?ZtqinPo2CAcs81B7S312sXyVWgvsXiq4wBFuydC7wYO/P7RN1HEAcqilqf?=
 =?iso-8859-1?Q?k4C9G8GNwjwa9tSkckpxDeSuy/ME1e5gWS2VSsNfTgTCLLDVy3gZvPAatn?=
 =?iso-8859-1?Q?Qx/p555LeQnRFGO+NHLvl2xjVgM7qsOxzw472Gvnxcd6MwblAx2ROPNSjb?=
 =?iso-8859-1?Q?n+4HuzSUyOHiwUjP7jwTgNc5ANjwAWKkcq1KnddpgWH7x82cU0Dj5kiW9B?=
 =?iso-8859-1?Q?EoHoHlpSIGqDvgtX5LDzCiOXIdOGjmPT3UexokpUy6Ad9XlrtZqfUrs4nl?=
 =?iso-8859-1?Q?uDCIvF5a7HXvTQz/mTPIXGQuah2pm7xzd7DTQgCcjh6DGA2oltz7TDGm7/?=
 =?iso-8859-1?Q?s78wlNfgqANVjRRSQRVKAxvqNiPNFhUM+43JjZyonmOfmWgVmhUdIorGX6?=
 =?iso-8859-1?Q?qgRWCZ2oZAxVmaMj5z7KI01KW+Yc6+21HLM38N/9+qtQsuZiv18o4gx8NK?=
 =?iso-8859-1?Q?X69wrl4BVnhIcyC4UHkgEXM4jkJB/zlbLneJy9ykmIE78lB6SjbluWPfej?=
 =?iso-8859-1?Q?6cTZgietU40gAOAoThzRya3/lHYMmGNqKu9VCc0IRo/BOQLgJwliBW5csI?=
 =?iso-8859-1?Q?6bzp+/A7Mvlw31O1K6PkKj5GwIhtRMTi7ZRYqfe0ZtdlnxlMbUroKFyCbA?=
 =?iso-8859-1?Q?Ai8RI4wT368LpuPtTKPAyah48jDCd1eAXJyuekNZ3zaXAxjqjeNbJct2AC?=
 =?iso-8859-1?Q?cYd6621lW+RbBAYrXxf0pIcdT6BhKT+cFyt19+Q0/1ihF0LFebQgkFoGpv?=
 =?iso-8859-1?Q?v5gSWwW4k2OiW81lfZMsFamArGX1wDGZ5hVCkSBHfoYBozhsAh0pHZdHe/?=
 =?iso-8859-1?Q?mwq6K10z4yP5e7sPYNGi9oA6XE7EZiqh5lyWu4T3rDfyiZXkPr7MCEBDak?=
 =?iso-8859-1?Q?hXOMm8iJTmte+y36wQ8ICq/kyUB8/V/zYgVgPVx0SwG5upwe9p2r6KSswC?=
 =?iso-8859-1?Q?jMsTdrdkz8wNOvORY2RfAqTf3mW3ytbNI2UB0xlS8+WpucOnDcu6WNX1+a?=
 =?iso-8859-1?Q?zHIAFpnIijsRXDG/rE+o58k6EzFyg9BObtcauMoKszzD2GO8YrV2g7P8h2?=
 =?iso-8859-1?Q?mKNmmLVufx5BP/Z8uqQ4Z7zsZTW4MZ5Tu1aku/EWv7ZE7c5VQHsMurDruJ?=
 =?iso-8859-1?Q?wdzXzLcFcPtGgevKImCLeS8ObcfNyrFHIC2PinuUP+zaUJOWrIxUcR71Co?=
 =?iso-8859-1?Q?5L86gNyS6NuXGmgbHIT0iFHsSmVaWGvqL63Gtz/Z6dIAQl+IGENHtgpZgh?=
 =?iso-8859-1?Q?Ekz1P3O5OwGKmjlBByN8VMK5JmAR4c8pJwdu+LfxiHyjyjoYQKW+hkj4Vu?=
 =?iso-8859-1?Q?J8Nrt6VpQhddXLnhFTq7Hk4fiIC6ovWGessGOM2YDHwwey7lngJAGTp+jk?=
 =?iso-8859-1?Q?WxAoFdlEwo2YTPqqGBVptu7yLhFNGMsEXafRYbmhOO6hk/QHgft8fvOFSw?=
 =?iso-8859-1?Q?zmXR9pRK1dedE+RUBSsJcZllY5vbBKm51591Q5ZaShem3ntzt4KFXj/lZ7?=
 =?iso-8859-1?Q?30rFV3sLIxV+fTp/tanxvgTHQBNBhApexCvoPzQSoo8xuz375B08QQ88JK?=
 =?iso-8859-1?Q?DRvBs21YvCjSzyVxMLNqALPZ2P4RmzYOG9mItwS7eOSfpqrXmn5riaPhWB?=
 =?iso-8859-1?Q?qQxyRj9XDV2JQD8UZHYbuWllX2ZkEZTmLhvkbA3u81Wxf5?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	Yhk7G8IqCZOmm2GA/FpFkUftBpa8GhY680mGlYhebSTAqGqxkV499UvuOLJkXDWATa8N+Y73TVRMvbrVzv/MKUvgZPCzuzgmWmiHlM+qlf3j2a3n58ZSs9KCfOkH32PVZGviBPZVohpjrdRkw/cjvaIrV2p88OgFN2NBheXH/uHh+5/Q7qFara5D4Jo/1Ux1gdKupStl9M+SLxHqpqGjYDx1uPqNyGjMbs2zgVbajlkoQfd19h3v/gholeAC53muOvHDtf1LMyXt2OT7P052ANYG4LSufyhRXmpxWqfl8IsORLIiJiO+k8XYMz29rP1PoBgeDCPmxJdm2956mCfd3w==
X-OriginatorOrg: aero.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR09MB9126.namprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19807df8-e669-4910-ee39-08decbe9b2bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 20:56:11.9354
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c8294700-c5a4-4ca1-a876-1457d39899fd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS9PR09MB12057
Message-ID-Hash: DKANBBBZ56LOZDP2JPWMICC3DXFI3I33
X-Message-ID-Hash: DKANBBBZ56LOZDP2JPWMICC3DXFI3I33
X-MailFrom: prvs=6202afb71=eugene.grayver@aero.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] X440 timed commands for tuning
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AVB7ZGDXMW2GAFSKGMTPGT53LFX4Z5HX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0439420421321700559=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[aero.org : No valid SPF, DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	FORWARDED(0.00)[lists@lfdr.de];
	R_DKIM_REJECT(0.00)[aero.org:s=mailhub,aerospacecloud.onmicrosoft.com:s=selector2-aerospacecloud-onmicrosoft-com];
	DKIM_TRACE(0.00)[emwd.com:+,aero.org:-,aerospacecloud.onmicrosoft.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[eugene.grayver@aero.org,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,lists.ettus.com:from_smtp,SJ0PR09MB9126.namprd09.prod.outlook.com:mid,mm2.emwd.com:rdns,mm2.emwd.com:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 42AA569553A

--===============0439420421321700559==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR09MB912603E936D78C167ABC8C14ECE52SJ0PR09MB9126namp_"

--_000_SJ0PR09MB912603E936D78C167ABC8C14ECE52SJ0PR09MB9126namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Why are timed commands (specifically freq tuning) not supported on the X440=
?  The RFSoC definitely allows using FPGA (PL) logic to trigger cross-tile =
configurations.

Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_SJ0PR09MB912603E936D78C167ABC8C14ECE52SJ0PR09MB9126namp_
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
Why are timed commands (specifically freq tuning) not supported on the X440=
?&nbsp; The RFSoC definitely allows using FPGA (PL) logic to trigger cross-=
tile configurations.</div>
<div id=3D"Signature" class=3D"elementToProof">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Principal Engineer</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
310-336-1274</div>
</div>
</body>
</html>

--_000_SJ0PR09MB912603E936D78C167ABC8C14ECE52SJ0PR09MB9126namp_--

--===============0439420421321700559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0439420421321700559==--

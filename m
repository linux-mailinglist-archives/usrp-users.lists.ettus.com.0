Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N6eEOMjJRGra0woAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 01 Jul 2026 10:03:20 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 098796EAEE2
	for <lists+usrp-users@lfdr.de>; Wed, 01 Jul 2026 10:03:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=IAG20Hw4;
	dkim=fail ("body hash did not verify") header.d=emerson.com header.s=email header.b=PD9dlCAK;
	dkim=fail ("body hash did not verify") header.d=Emerson.com header.s=selector1 header.b=nOA3sg20;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4EA843867FA
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jul 2026 04:03:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1782892999; bh=qg28nsTcOHQ0WP3ArxvIusx36ex5C946Wu5kVmzjWp8=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=IAG20Hw4reNiVJ++JFCRdl3ZVKwbh3A2gaav4zOta3r/vr9GIEMgMo5jER9c8JP/k
	 sEhSwxId18bCh4IXr2P1FatJQdPLaDZSbL1qVlSKjAJeE0Yc8JDoExrol4J3gzLLDw
	 ylBR/oW1G8LvmgHUxe/F4ma8ik1TXTbk41FLYij6rnR9vYOnVBQxBTx/UrEvfK6bOy
	 qmmT2jUJUL43Ozh9GuCb330jXfxeX/SlWZ4r0kecYYSJCGTM/w6IpYEwYhqgMYYhry
	 OFVzaV4fSzlMcV3S2Q4gKFuiFfq/dsLWtFzcvHOkQnhDsY8bDmEAzFsG+FFz0dKI85
	 J0G6+GUNfZ0Ng==
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
	by mm2.emwd.com (Postfix) with ESMTPS id BFC8638668A
	for <usrp-users@lists.ettus.com>; Wed,  1 Jul 2026 04:02:36 -0400 (EDT)
Received: from pps.filterd (m0484881.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66155bv22088771
	for <usrp-users@lists.ettus.com>; Wed, 1 Jul 2026 08:02:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=BrWBzy+kHqQ7oF/KZehKD9l9w2Fx
	SCs4/jxaE279NJI=; b=PD9dlCAKQkkV1WYnEpOJ9uCPclPJX+hzWMr6idTC9Nyr
	+84ASZJEJ7eUJOfZRordXl5XjgxYiMZX5+8L7PruMIc1IMOXd6IR5FDnG+PUsKVh
	PKE1UgsYelstHfJ+DrIjH6chNj9Y/xH+LoYhxPx8dXtPfdni6omCiPdIianyrBgg
	lB1++NwsV0bMBSVYWYuJXizpkDfVyF2Zc8YIpTd+x3H2tqIqcoCbL0ehvrz23/OC
	Lh4VNM5fsUwyQCUnTOSpcB93GwlTAzuNtTWHjxB6EWvPxt+Yyk95NYh64evZdFnB
	KjUI6PAs/KY1vNWXBBm6oatLglmNISYO6y5sIPffGw==
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazon11013044.outbound.protection.outlook.com [40.93.196.44])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4f4veqs9bc-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 01 Jul 2026 08:02:35 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Afkp8tm2Th0nwg4hnzK9zA3aJeT6XQujXJEReEBhfH6jhKY+8WvP710rBBzaQpDYII0nrp5uKTpPZj21l7JMXXCEhPc5V68i3E9SSsI9cVHVGGtFDIED8J5nvWtFa4O8E5qBdDJ+aRIIC3mY2Oqb6eO4J16m+79o8WTBAmbczhevItAgMNeML6Z8loBz/6RzFGfgyUmhwYBt4PlWCJ8wXhKLfKUfHc/ybOvwJzhXnUA4Xu4LvR0a1U6BljT4xYvASjMaEINdvwTQivhLLotLiPe/BpRJaDoZOf/Vyyp86DyiO+fpPwyugJrLVOUiSCfefPwW8rFEs2vHSdltC6Pnlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7K6QHpVQbvVBo2oHM9hhEihTYkiYnSH2hsLktI6zkCA=;
 b=Pri0YaU3HHMsf9InCn437I1Yh8aGk++TsWMQWRhCFEytw5cD/Bwe3ypU8nH8kiOI0nUFmaBdpt2wBBdg0W9bwyZYQdEQc0CbbVOeL8qYdg5xS3vjvYOza0slN/5X6DsiOLLWo562xPpKxLw8q254Janm6lzDoQRup7eBZghH8LlV7kGONVGZb1rS8NKNqNNdzqnM2/pfr3zuVoMbOOAjvJL0gngale1HdTFhiSvLttajMV0k9DeZkObhk9nbPI7v6ywOJzxZSW4hKjxzV39Fy1+NwWdh8oUqu6H+mlbTdIk+Ne37+MEYMlITszCDKlOA5SX5b1jY9uMBf/1OzCF5zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7K6QHpVQbvVBo2oHM9hhEihTYkiYnSH2hsLktI6zkCA=;
 b=nOA3sg20qnaHjOsYkhBX0FF6upsXqeluPv8Ld+YwCgaxwoD/ksybPB1T7LyMLgNKq+9KGkYVP/ipA11LDGcs0lVg2HeokvwE6FwdnmKuytrRmpndCAssHrCyOtZdGHfThq2n/2a10yC5sA/1HR04BVAHGDaxJW5C3UmAFb0MbAYuo/soRIT9/FAIDYB2dBvX8RxeQv5bEyeHVBlnHoFvV8c0fZQljmdgJmm0CvysCxNGJFYia0562weaSAm5Swx3I0KYB8ugi5I7dpVLnFT+GNtsi3VOLE7GjjNzRm094vreZvw9oovajIYi4xDci2ke4VcZMWeSXeU/D4Zwf0EIQQ==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by IA3PR10MB8516.namprd10.prod.outlook.com (2603:10b6:208:57d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 08:02:33 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705%3]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 08:02:33 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: X440 RFNoC build with TX FIFO
Thread-Index: AQHdCOeSaclwuRlUrEyueQFJgPeIyrZYOlJg
Date: Wed, 1 Jul 2026 08:02:33 +0000
Message-ID: 
 <CH0PR10MB51793D09910638296032B5AB99F62@CH0PR10MB5179.namprd10.prod.outlook.com>
References: 
 <SJ0PR09MB9126AD2BAD8585D2EFFFA073ECF72@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB9126AD2BAD8585D2EFFFA073ECF72@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=994c6776-95b6-4e98-87a9-221df7ad3de9;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2026-07-01T06:51:38Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Tag=10,
 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|IA3PR10MB8516:EE_
x-ms-office365-filtering-correlation-id: d64ef265-84a9-4bbf-61c6-08ded7471b58
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|38070700021|8096899003|11063799006|3023799007|6133799003|56012099006;
x-microsoft-antispam-message-info: 
 tQUkXZmmH6dxTV9tyHxyEJH+habLluSCZ1myu4d8vdIPTxRFnEyLg6XMeJ+CjNQCv3WDyyLgu1/FDQJhPfmyzcSfHVb51fr+fg4G28B2X36xjfOTqe9QuHxRYs1iDn+Xfm0jHXySsULzIreRyTq7VLKHtMJWuK8lFnmXe61OEPASuGXDne3+rRfZUC0sZijAkDAozsxF0YDCtskWiX2e4NxhyLgVLnmnffQuNKSPfx8ClIUWpm3uNeUQbyPF4gSGfdCCW3KmS6XFdsybM/N+7yeV4s0Hmuo66ZHPSbOGHqgWriYMlG5VUKSZF39KeoFggz2K4vE6o6j5ObftqL7GK8icJdAbT+5Bdst93+qEN4Cjp+MEpq8JwqLSKmcZlwzAa92xxPupJCyH3sY88H2l2eTTnR5Tzv5n/4RuMMZMv+6DGTWrQbOfhy4J3wMvzvfXMCgrPWKslxl7OlTqy2W+6SvAvPejiSuKWdgtvd8cHWHw93zXzD5kDOxp1TvkIIxQL+Pd4X6KKz146akZCJVnYJJb4YCoUg4ckTR4qvA+pFkbXlarW9n4+3fA27eHgjkUfUf8JAwEfb8XgKyz9ngQWQkc0xNq8jpQfheJyBzGC4+CFZJ2aTH45fLHXT/TkWQfdUpe4JxkIH6byGcTde0IvOM7TuXIo3wLJVxkaOvD+lc9S5/5uIKvc1eqhU+MLgqdRSycSV9ChOgPD3Kea38D+5hFkdcZ05VzpWyoMyKP7P0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(38070700021)(8096899003)(11063799006)(3023799007)(6133799003)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?SmJ5VmZQYkN0RVRqQnZhZzRodzY5LytuRSttQ0dYTXdTQ0kwZ0Jlb2hjZkNV?=
 =?utf-8?B?MGZtZGlCbk1hdXEyQzNyU0F6cHNlSWRwbDVBVzE5UXJDRXhhOG5ERDNoNGI3?=
 =?utf-8?B?WEk1R3o5VEZSektpbWw1b0loMVhMWThES3E5MG43ZFdpWFdKNVV1UTk0cjYy?=
 =?utf-8?B?QnBIYWR0cXNwMm1nOEhlbGNFcDVvL1VyWWNBTlRtSmR6TVN4My9SMUx5K0tG?=
 =?utf-8?B?cHlUdnJhY2o1SHNxZEpOZHpzbFZNcDhFSmQvcXhqN2U2dXVpbW5lSUhFdVZS?=
 =?utf-8?B?c2RGTjQ3Z3ZjcUMyQ1p0bDU2WlF1QW44YW1UaWJFRm5BTzNSZG53aUppRU9z?=
 =?utf-8?B?dkpYMTJVQnJ4S3dmSXBRdEs2MEVmeVcyZWQyS0RhRVlYdWZRUHgwbWdUUzA2?=
 =?utf-8?B?ekVCR1BrZWRGWjh4RjlPRDhSYjlZeXAyaElLTjJFQ28yTXk5SDJsaEx0N3Vn?=
 =?utf-8?B?TXdtc0RYSTFlb0pET2M0NjNKSS9tSzBkT2NTVU5nc090a3VvTGJZaHFSSTc3?=
 =?utf-8?B?RVlVdm1JUzNvU096ODBiaktjRXFJaUtjSlhTaDJaMTkvQkduS0lNemRKQkM2?=
 =?utf-8?B?K2hac1N3TVpmZ3hHZTd6aUVWSjBXbmkxTFJhTm1mYmRra2FSeE9FQUZGVkVh?=
 =?utf-8?B?ZXRaQVdGNHZaTmVnK0twSzRUMTlScUVHeFliaEFReDlETTYrcUNhZUV2UmM5?=
 =?utf-8?B?aENtSXVmVktYUTVvbWFNakdialZzVVlheFgycXQzNVdRS0gvYWU1QTBJMkxC?=
 =?utf-8?B?K1o3blZuaXJxbTZXNll0WWNhK1JQdVZnajlGbE95NXVZamhaYjNDU1JQOHA1?=
 =?utf-8?B?bXlCS0VuZ1Y2akY3cVp1RmppbGZrd083dWp5VVRmSjZCcm9nK3BPN2tOa3Mz?=
 =?utf-8?B?Q1B5cDlucmJHTWFHMS9wMUpIRnUrUldDdXgydlEwSGp1NGNzbVFNZ1g0N1dM?=
 =?utf-8?B?eFdIYitmczhEUjlKbHdmMlRMb0NtTXgrTk12eStKU0NGWTFraDk4UVlkOVcw?=
 =?utf-8?B?TnZ2N0JzM1V4S01iSi8wZVBNcW03dDAzYmhZcFlhaVowREg4MHRSWit4U3Vr?=
 =?utf-8?B?NlNNeHg2dTFoR2Npb0lEYTIxSHlwLzFsVUdoVnF3cXFzb3JTNisvUmJCYU1P?=
 =?utf-8?B?RDQ2RmlmT1M5N0FySkJ6ZEx5TU0zUTdPNFdmSy9veHpoU0dwL0NTY2RUWGlY?=
 =?utf-8?B?TWMyV1ZSNTk4SkpEOVBqcnlTWXluWjlSb1pyRkp2Ujk3Y0JTVlBHenB4STR2?=
 =?utf-8?B?Q0xFL3MwM2N1OG5wNWlYMDlDckUyNW0zc2FRSHBGNlJVbjREWndLaWhSWDUx?=
 =?utf-8?B?NTNhMTE0UjlOaEw5azVyMmFiZFg2c0lUaWFpNjMvc21QeDNiRCtQSVZTS0JR?=
 =?utf-8?B?K0RpcTFiVGJxd28vSm1CYWxiT2d6QmNaV2d6WDg2cFNHcUxLZjFQRzgzQWky?=
 =?utf-8?B?aXF5bUhEWWVmWTVwMFd3dk0ycGZ5VjZ0RXczYXgvZlhtTGhldXhaL3FVYTh1?=
 =?utf-8?B?TU1RVUR4Q2M5REtyZDlmZTRJZUZrMFdNWlhzTDJDbUMrV2hrbnQ5VkNFWjM2?=
 =?utf-8?B?RGxuK2Z5UWRodURTYUZUSXNIeGVST3F4eUJoanREZkVKdmJDa1crNzVETVBR?=
 =?utf-8?B?TUlsZ3VQWGQvcVMvRGhGd21yODR1V0pWYUVXekVVbk4vOG1sUmFzR0FqSUpo?=
 =?utf-8?B?MnRkck41Mm11eG0vK040RWcwOEcza1lrUExGaHl6TUVoWVh4M3F0c3ZPVWFW?=
 =?utf-8?B?c1VlKzFKVVdjUFNjVmRidEdsOUVITnpmcjlhYmN5TEhoYnlZMWx4cHZSNFlM?=
 =?utf-8?B?UFFrOXUwUFp2dmp6UVBKU2YzZXVjU2xXMXl4cTNWWVhYNW45RURuZzhtVXIz?=
 =?utf-8?B?RVJMazdZN1IrblQ0d3hmaFE2amMrdWlPdjUwZ1VBb3NsN2Vmb0FnV0NheVFQ?=
 =?utf-8?B?Y0F2UVRjZnNkQUNqRmx1SzArNWY3YStUdWNlSTIyVXZkeVUyQXhrZU1IOHo0?=
 =?utf-8?B?cEQ5OGRUMjBzUHVlbWR5SWhMTUpUTGd5ei8yTHpoNENDUUFmVno4bEJwQ3kv?=
 =?utf-8?B?YTlXVUZGU0ZNK3laTTd0d1MyUzkrK2dtZUJITDlXQVg5SCthWE5EUU5KVDJv?=
 =?utf-8?B?YTEvblgvZGhIWFQybmtiODhnNmxSMVpJVVlxSzNwaENiSHg2MEpDd1V0SDcw?=
 =?utf-8?B?SXlndEt2M0RzRWl3WTh4U3VoQ0dHbHd0dEFPd2JoS3pkRmt0endRcThKbEhQ?=
 =?utf-8?B?dW01a3p4aVFjVHB2azNIVmxqYUF4MGV4N1kwZ2hCbkhWaURiVTVRQ2NQaTBZ?=
 =?utf-8?B?K2FUUkJoQUtsL2xlSnA4U3R0Y2I0a1pEbk5uUVMvOGxLK1JCcmpHQT09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	qFnVCMiA+G7MNy6K5ibGxG6sWXCICf+p2Amp8tvXRhPgrVArZPqYPR1DKvTPxePQWXBE9MnZefa6ntYi0Kiu1zZO5kPkm+YH8PpOh0eJ6hV5y/bLe5zMxG5K0c55vUz2hthexbwqj62gqsnq5xilgvXlFSymz0ktOJtPg+1T0MGLzHIzBMeuwlXdWRCTk0cihf1+NkAHAT6jNzEpUpgGZcB1USh1umj1e3ZOSM8hSCqsHaSjEqo1ae+VlEE7T7vbLmTY49X3ZMTr4itLF4KKHQV9ZWyc4U9LxwoW7t7PFKFeWiQ3zkYnN9YyV08BDN6KlbePyDjDXGbbpJW0M0ZzBQ==
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d64ef265-84a9-4bbf-61c6-08ded7471b58
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2026 08:02:33.4432
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gg9KL72F2SRdSNxwpJmkE1RJiHRi/vO3bIckNmks0mj92birrC33oSNG8gmQ3pqd2CVcL3C/XaAaJxLN2zqcwfmIlIeOtw+AO9+hZ+RGjuE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8516
X-Proofpoint-GUID: 7C8Ho1BtYwabPdwxNOBtaklB4VuPsXfa
X-Proofpoint-ORIG-GUID: 7C8Ho1BtYwabPdwxNOBtaklB4VuPsXfa
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDA4MSBTYWx0ZWRfX7rYhlYO5zdJ6
 ia58GULBKaEPOgao6wEKUxc6PeIrLVgs6RoxxDMSyzKtCyTDR1tthnJ6euV/2SfpqnxB6Q8QwM6
 hOxFvvZaIwTcUzr74VEJ19IlqD7VUmnIvMv/vr6gyyXkPi92QHKn
X-Authority-Analysis: v=2.4 cv=JIELdcKb c=1 sm=1 tr=0 ts=6a44c99b cx=c_pps
 a=Ji2ygefkweamrNJ/4LFw0Q==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=RAioF0-LDSMA:10
 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22 a=Ps6gwBxKFAOpZu8f3VnT:22
 a=w-TWy_O1uGRWD6PSa5rv:22 a=RpNjiQI2AAAA:8 a=8CGCo7kxAAAA:8 a=etiEgX_XAAAA:8
 a=D3gASegTpVpD0IN6FMYA:9 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8
 a=d0So0zVRHEtkc6NBWzQA:9 a=9vP0lyyKA0_DAENA:21 a=gKO2Hq4RSVkA:10
 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
 a=uyKDLsAT3yn652Fg1vMC:22 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDA4MSBTYWx0ZWRfX17h8+OD4vEoO
 rFYPjESL6abRZ80K9NgOJeHYLKPssm21vrrrbVQx4PHtdZabiOlwfJRQwz/NxFMWjiGxY7VGcDi
 p77pT8tZ9JFmH5GYjeC6v5w8T4LvaVlBN8zg8bH51N4NiTwXt0i/yf2k8lpslOgOhvtmlumSrOb
 TT1ja1FZHrE+QBC86/8evMSEy0fto8pXkEh09myiRkBwSWnEsUh/N+taRDIc8xCtifqiQ9u1wXx
 k9qO9iFWoXYz25wl5LTX4xGEv2ioFo4ct2Saguy5/IxKbfe5eH/8LoMgn6RFjs1hckbVeOJIHAO
 +fBXbB3Y8+VTTl5mjSeivctKN9BEehxSxy6lJahQxQHc4mNMVmWaDKW2l2oRutvVgqZfXxgHGOt
 P0VijQAz99m/StUy4a/AoJKZDML8CUfV6cSJkLH+KfeVTmSEiw//XJU4orOq7uoK4HzQDwpLXBq
 OQ8NVJeLUhTGvIbbVPw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 suspectscore=0 adultscore=0 clxscore=1015
 impostorscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010081
Message-ID-Hash: I2IPBQ6GJTB4W6R2RF3PIYMS3ZPF4IRQ
X-Message-ID-Hash: I2IPBQ6GJTB4W6R2RF3PIYMS3ZPF4IRQ
X-MailFrom: prvs=864294e54b=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X440 RFNoC build with TX FIFO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3EJ7JHO5X7XCYSJ7V6ZWE435XXLQDGNK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============5275864030090180437=="
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:usrp-users@lists.ettus.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[ettus.com];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	TO_EQ_FROM(0.00)[];
	RCPT_COUNT_ONE(0.00)[1];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DKIM_MIXED(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[martin.anderseck@emerson.com];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	R_DKIM_REJECT(0.00)[emerson.com:s=email,Emerson.com:s=selector1];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	DKIM_TRACE(0.00)[emwd.com:+,emerson.com:-,Emerson.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[CH0PR10MB5179.namprd10.prod.outlook.com:mid,emwd.com:dkim,lists.ettus.com:from_smtp,lists.ettus.com:from_mime,mm2.emwd.com:rdns,mm2.emwd.com:helo,ettus.com:email,aero.org:email,emerson.com:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 098796EAEE2

--===============5275864030090180437==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB51793D09910638296032B5AB99F62CH0PR10MB5179namp_"

--_000_CH0PR10MB51793D09910638296032B5AB99F62CH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene,

You enabled the DRAM while there are no replay endpoints in your crossbar r=
outes. And it seems like you cleaned up the RX part while you don=E2=80=99t=
 have the corresponding VHDL changes. That probably explains the error that=
 you=E2=80=99re seeing.
Unfortunately, I cannot tell you how to exactly fix this. But I=E2=80=99d r=
ather like to fix the original issue.

/Martin

From: Eugene Grayver <eugene.grayver@aero.org>
Sent: Wednesday, July 1, 2026 1:33 AM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [EXTERNAL] [USRP-users] X440 RFNoC build with TX FIFO



Hi,

I am trying to work around the underflows on the TX.

I added a AXI DMA FIFO and rebuilt.  As far as I can tell the yaml is OK, b=
ut when I load the new bit file,

uhd_image_loader --args type=3Dx4xx,addr=3D192.168.10.2,clock_source=3Dinte=
rnal,time_source=3Dinternal --fpga-path ./uhd-4.9.0.1/fpga/usrp3/top/x400//=
build-usrp_x440_fpga_X4_200_fifo/X440.bit

I get an error:

[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: Specified destination address is unreachable: 1:0

Note: I had to rename the resultant bit file from x4xx.bit to X440.bit to a=
void an error related to a missing .dts file (since the DTS file is correct=
ly named X440.dts).


Here's the .yml file.  Note that I removed the RX DDC to reduce the FPGA co=
ngestion.

-----------------------
# General parameters
# -----------------------------------------
schema: rfnoc_imagebuilder_args          # Identifier for the schema used t=
o validate this file
copyright: >-                            # Copyright information used in fi=
le headers
  Copyright 2023 Ettus Research, a National Instruments Brand
license: >-                              # License information used in file=
 headers
  SPDX-License-Identifier: LGPL-3.0-or-later
version: '1.0'                           # File version
chdr_width: 64                           # Bit width of the CHDR bus for th=
is image
device: 'x440'                           # USRP type
image_core_name: 'usrp_x440_fpga_X4_200_fifo' # Name to use for the generat=
ed output files
default_target: 'X440'                   # Default make target
inherit:
  - 'yaml_include/x440_radio_base.yml'
  - 'yaml_include/x4xx_x4_base.yml'

parameters:
  RF_BW: 400
  ENABLE_DRAM: True
  NUM_DRAM_BANKS: 2
  NUM_DRAM_CHANS: 8
  DRAM_WIDTH: 128

# A list of all stream endpoints in design
# ----------------------------------------
stream_endpoints:
  ep0:                                  # Stream endpoint name
    ctrl: True                          # Endpoint passes control traffic
    data: True                          # Endpoint passes data traffic
    buff_size_bytes: 262144             # Ingress buffer size for data
  ep1:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep2:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep3:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep4:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep5:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep6:
    ctrl: False
    data: True
    buff_size_bytes: 262144
  ep7:
    ctrl: False
    data: True
    buff_size_bytes: 262144

# A table of which crossbar routes to include
# -------------------------------------------
# Rows correspond to input ports and columns correspond to output ports.
# Entering a 1 includes and a 0 removes that route from the crossbar.
crossbar_routes:
  #  eth0  eth2  dma   ep1   ep3   ep5   ep7
  #     eth1  eth3  ep0   ep2   ep4   ep6
  - [ 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth0 (QSFP Port 0, Lane 0)
  - [ 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth1 (QSFP Port 0, Lane 1)
  - [ 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth2 (QSFP Port 0, Lane 2)
  - [ 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1 ] # eth3 (QSFP Port 0, Lane 3)
  - [ 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1 ] # dma
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep0 (radio0.0)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep1 (radio0.1)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep2 (radio0.2)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep3 (radio0.3)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep4 (radio1.0)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep5 (radio1.1)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep6 (radio1.2)
  - [ 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0 ] # ep7 (radio1.3)

# A list of all NoC blocks in design
# ----------------------------------
noc_blocks:
  radio0:
    block_desc: 'radio.yml'
    parameters:
      NUM_PORTS: 4
  radio1:
    block_desc: 'radio.yml'
    parameters:
      NUM_PORTS: 4
  duc0:
    block_desc: 'duc.yml'
    parameters:
      NUM_PORTS: 4
  duc1:
    block_desc: 'duc.yml'
    parameters:
      NUM_PORTS: 4
  fifo0:
    block_desc: 'axi_ram_fifo.yml'
    parameters:
      NUM_PORTS: 4
      MEM_ADDR_W:   32
      MEM_DATA_W:   128
      MEM_CLK_RATE: "300e6"
      # Create 4 non-overlapping 2 MB buffers
      FIFO_ADDR_BASE: "{32'h00600000, 32'h00400000, 32'h00200000, 32'h00000=
000}"
      FIFO_ADDR_MASK: "{32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF, 32'h001FF=
FFF}"

  fifo1:
    block_desc: 'axi_ram_fifo.yml'
    parameters:
      NUM_PORTS: 4
      MEM_ADDR_W:   32
      MEM_DATA_W:   128
      MEM_CLK_RATE: "300e6"
      # Create 4 non-overlapping 2 MB buffers
      FIFO_ADDR_BASE: "{32'h00600000, 32'h00400000, 32'h00200000, 32'h00000=
000}"
      FIFO_ADDR_MASK: "{32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF, 32'h001FF=
FFF}"

# A list of all static connections in design
# ------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys
#   - srcblk  =3D Source block to connect
#   - srcport =3D Port on the source block to connect
#   - dstblk  =3D Destination block to connect
#   - dstport =3D Port on the destination block to connect
connections:
  # RF A:0 TX
  - { srcblk: ep0,    srcport: out0,  dstblk: fifo0,  dstport: in_0 }
  - { srcblk: fifo0,  srcport: out_0, dstblk: duc0,   dstport: in_0 }
  - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
  # RF A:1 TX
  - { srcblk: ep1,    srcport: out0,  dstblk: fifo0,  dstport: in_1 }
  - { srcblk: fifo0,  srcport: out_1, dstblk: duc0,   dstport: in_1 }
  - { srcblk: duc0,   srcport: out_1, dstblk: radio0, dstport: in_1 }
  # RF A:2 TX
  - { srcblk: ep2,    srcport: out0,  dstblk: fifo0,  dstport: in_2 }
  - { srcblk: fifo0,  srcport: out_2, dstblk: duc0,   dstport: in_2 }
  - { srcblk: duc0,   srcport: out_2, dstblk: radio0, dstport: in_2 }
  # RF A:3 TX
  - { srcblk: ep3,    srcport: out0,  dstblk: fifo0,  dstport: in_3 }
  - { srcblk: fifo0,  srcport: out_3, dstblk: duc0,   dstport: in_3 }
  - { srcblk: duc0,   srcport: out_3, dstblk: radio0, dstport: in_3 }
  #
  # RF B:0 TX
  - { srcblk: ep4,    srcport: out0,  dstblk: fifo1,  dstport: in_0 }
  - { srcblk: fifo1,  srcport: out_0, dstblk: duc1,   dstport: in_0 }
  - { srcblk: duc1,   srcport: out_0, dstblk: radio1, dstport: in_0 }
  # RF B:1 TX
  - { srcblk: ep5,    srcport: out0,  dstblk: fifo1,  dstport: in_1 }
  - { srcblk: fifo1,  srcport: out_1, dstblk: duc1,   dstport: in_1 }
  - { srcblk: duc1,   srcport: out_1, dstblk: radio1, dstport: in_1 }
  # RF B:2 TX
  - { srcblk: ep6,    srcport: out0,  dstblk: fifo1,  dstport: in_2 }
  - { srcblk: fifo1,  srcport: out_2, dstblk: duc1,   dstport: in_2 }
  - { srcblk: duc1,   srcport: out_2, dstblk: radio1, dstport: in_2 }
  # RF B:3 TX
  - { srcblk: ep7,    srcport: out0,  dstblk: fifo1,  dstport: in_3 }
  - { srcblk: fifo1,  srcport: out_3, dstblk: duc1,   dstport: in_3 }
  - { srcblk: duc1,   srcport: out_3, dstblk: radio1, dstport: in_3 }
  #
  # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: gpio0=
 }
  # - { srcblk: _device_, srcport: _none_, dstblk: _device_, dstport: gpio1=
 }
  # BSP connections are inherited from YAML include files
  - { srcblk: fifo0, srcport: axi_ram, dstblk: _device_, dstport: dram0 }
  - { srcblk: fifo1, srcport: axi_ram, dstblk: _device_, dstport: dram1 }

  - { srcblk: radio0, srcport: out_0, dstblk: ep0,    dstport: in0  }
  - { srcblk: radio0, srcport: out_1, dstblk: ep1,    dstport: in0  }
  - { srcblk: radio0, srcport: out_2, dstblk: ep2,    dstport: in0  }
  - { srcblk: radio0, srcport: out_3, dstblk: ep3,    dstport: in0  }
  - { srcblk: radio1, srcport: out_0, dstblk: ep4,    dstport: in0  }
  - { srcblk: radio1, srcport: out_1, dstblk: ep5,    dstport: in0  }
  - { srcblk: radio1, srcport: out_2, dstblk: ep6,    dstport: in0  }
  - { srcblk: radio1, srcport: out_3, dstblk: ep7,    dstport: in0  }


# A list of all clock domain connections in design
# ------------------------------------------------
# Format: A list of connection maps (list of key-value pairs) with the foll=
owing keys
#   - srcblk  =3D Source block to connect (Always "_device"_)
#   - srcport =3D Clock domain on the source block to connect
#   - dstblk  =3D Destination block to connect
#   - dstport =3D Clock domain on the destination block to connect
clk_domains:
  - { srcblk: _device_, srcport: ce,         dstblk: duc0,   dstport: ce   =
 }
  - { srcblk: _device_, srcport: ce,         dstblk: duc1,   dstport: ce   =
 }
  # Other clock domains are inherited from YAML include files
  - { srcblk: _device_, srcport: dram,   dstblk: fifo0, dstport: mem   }
  - { srcblk: _device_, srcport: dram,   dstblk: fifo1, dstport: mem   }


--------------------------------


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_CH0PR10MB51793D09910638296032B5AB99F62CH0PR10MB5179namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:10.0pt;
	font-family:"Aptos",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	mso-ligatures:none;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:70.85pt 70.85pt 56.7pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:break-w=
ord">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">Hi Eugene,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">You enabled the DRAM while there are no replay endpo=
ints in your crossbar routes. And it seems like you cleaned up the RX part =
while you don=E2=80=99t have the corresponding
 VHDL changes. That probably explains the error that you=E2=80=99re seeing.=
 <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">Unfortunately, I cannot tell you how to exactly fix =
this. But I=E2=80=99d rather like to fix the original issue.<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">/Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
Eugene Grayver &lt;eugene.grayver@aero.org&gt;
<br>
<b>Sent:</b> Wednesday, July 1, 2026 1:33 AM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] X440 RFNoC build with TX FIFO<o:p><=
/o:p></span></p>
</div>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span lang=3D"EN=
-US" style=3D"font-size:1.0pt;font-family:&quot;Arial&quot;,sans-serif;colo=
r:white"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;color:white"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hi,<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">I am trying to work around the underflows on the TX.&nbsp;<o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">I added a AXI DMA FIFO and rebuilt.&nbsp; As far as I can tell the =
yaml is OK, but when I load the new bit file,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">uhd_image_loader --args type=3Dx4xx,addr=3D192.168.10.2,clock_sourc=
e=3Dinternal,time_source=3Dinternal --fpga-path ./uhd-4.9.0.1/fpga/usrp3/to=
p/x400//build-usrp_x440_fpga_X4_200_fifo/X440.bit<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">I get an error:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: R=
fnocError: Specified destination address is unreachable: 1:0<o:p></o:p></sp=
an></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">Note: I had to rename the resultant bit file from x4xx.bit to X440.=
bit to avoid an error related to a missing .dts file (since the DTS file is=
 correctly named X440.dts).<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">Here's the .yml file.&nbsp; Note that I removed the RX DDC to reduc=
e the FPGA congestion.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">-----------------------<o:p></o:p></span></p>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># General parameters<o:p></o:p></span=
></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># -----------------------------------=
------<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">schema: rfnoc_imagebuilder_args&nbsp;=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;# Identifier for the schema used to valid=
ate this file<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">copyright: &gt;-&nbsp;&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;# Copyright information used in file headers<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; Copyright 2023 Ettus Research,=
 a National Instruments Brand<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">license: &gt;-&nbsp;&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;# License information used in file headers<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; SPDX-License-Identifier: LGPL-=
3.0-or-later<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">version: '1.0'&nbsp;&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; #=
 File version<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">chdr_width: 64&nbsp;&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; #=
 Bit width of the CHDR bus for this image<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">device: 'x440'&nbsp;&nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; #=
 USRP type<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">image_core_name: 'usrp_x440_fpga_X4_2=
00_fifo' # Name to use for the generated output files<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">default_target: 'X440'&nbsp;&nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Default make target=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">inherit:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - 'yaml_include/x440_radio_bas=
e.yml'<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - 'yaml_include/x4xx_x4_base.y=
ml'<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">parameters:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; RF_BW: 400<o:p></o:p></span></=
p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; ENABLE_DRAM: True<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; NUM_DRAM_BANKS: 2<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; NUM_DRAM_CHANS: 8<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; DRAM_WIDTH: 128<o:p></o:p></sp=
an></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># A list of all stream endpoints in d=
esign<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># -----------------------------------=
-----<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">stream_endpoints:<o:p></o:p></span></=
p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; ep0: &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;# Stream endpoint name<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; ctrl: True&nbsp;&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;# Endpoint passes control traffic<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; data: True&nbsp;&nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;# Endpoint passes data traffic<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; buff_size_bytes: 262144=
&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Ingress buffer size for d=
ata<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; ep1:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; ctrl: False<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; data: True<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; buff_size_bytes: 262144=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; ep2:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; ctrl: False<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; data: True<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; buff_size_bytes: 262144=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; ep3:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; ctrl: False<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; data: True<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; buff_size_bytes: 262144=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; ep4:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; ctrl: False<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; data: True<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; buff_size_bytes: 262144=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; ep5:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; ctrl: False<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; data: True<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; buff_size_bytes: 262144=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; ep6:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; ctrl: False<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; data: True<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; buff_size_bytes: 262144=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; ep7:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; ctrl: False<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; data: True<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; buff_size_bytes: 262144=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># A table of which crossbar routes to=
 include<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># -----------------------------------=
--------<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># Rows correspond to input ports and =
columns correspond to output ports.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># Entering a 1 includes and a 0 remov=
es that route from the crossbar.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">crossbar_routes:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # &nbsp;eth0 &nbsp;eth2 &nbsp;=
dma &nbsp; ep1 &nbsp; ep3 &nbsp; ep5 &nbsp; ep7<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # &nbsp; &nbsp; eth1 &nbsp;eth=
3 &nbsp;ep0 &nbsp; ep2 &nbsp; ep4 &nbsp; ep6<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 1, 0, 0, 0, 0, 1, 1, 1, 1,=
 1, 1, 1, 1&nbsp;] # eth0 (QSFP Port 0, Lane 0)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 0, 1, 0, 0, 0, 1, 1, 1, 1,=
 1, 1, 1, 1&nbsp;] # eth1 (QSFP Port 0, Lane 1)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 0, 0, 1, 0, 0, 1, 1, 1, 1,=
 1, 1, 1, 1&nbsp;] # eth2 (QSFP Port 0, Lane 2)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 0, 0, 0, 1, 0, 1, 1, 1, 1,=
 1, 1, 1, 1&nbsp;] # eth3 (QSFP Port 0, Lane 3)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 0, 0, 0, 0, 1, 1, 1, 1, 1,=
 1, 1, 1, 1&nbsp;] # dma<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0,=
 0, 0, 0, 0&nbsp;] # ep0 (radio0.0)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0,=
 0, 0, 0, 0&nbsp;] # ep1 (radio0.1)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0,=
 0, 0, 0, 0&nbsp;] # ep2 (radio0.2)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0,=
 0, 0, 0, 0&nbsp;] # ep3 (radio0.3)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0,=
 0, 0, 0, 0&nbsp;] # ep4 (radio1.0)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0,=
 0, 0, 0, 0&nbsp;] # ep5 (radio1.1)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0,=
 0, 0, 0, 0&nbsp;] # ep6 (radio1.2)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - [ 1, 1, 1, 1, 1, 0, 0, 0, 0,=
 0, 0, 0, 0&nbsp;] # ep7 (radio1.3)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># A list of all NoC blocks in design<=
o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># ----------------------------------<=
o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">noc_blocks:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; radio0:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; block_desc: 'radio.yml'=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; parameters:<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; NUM_PORTS: 4<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; radio1:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; block_desc: 'radio.yml'=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; parameters:<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; NUM_PORTS: 4<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; duc0:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; block_desc: 'duc.yml'<o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; parameters:<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; NUM_PORTS: 4<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; duc1:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; block_desc: 'duc.yml'<o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; parameters:<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; NUM_PORTS: 4<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; fifo0:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; block_desc: 'axi_ram_fi=
fo.yml'<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; parameters:<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; NUM_PORTS: 4<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; MEM_ADDR_W: &nbs=
p; 32<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; MEM_DATA_W: &nbs=
p; 128<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; MEM_CLK_RATE: &q=
uot;300e6&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; # Create 4 non-o=
verlapping 2 MB buffers<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; FIFO_ADDR_BASE: =
&quot;{32'h00600000, 32'h00400000, 32'h00200000, 32'h00000000}&quot;<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; FIFO_ADDR_MASK: =
&quot;{32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF}&quot;<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; fifo1:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; block_desc: 'axi_ram_fi=
fo.yml'<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; parameters:<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; NUM_PORTS: 4<o:p=
></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; MEM_ADDR_W: &nbs=
p; 32<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; MEM_DATA_W: &nbs=
p; 128<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; MEM_CLK_RATE: &q=
uot;300e6&quot;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; # Create 4 non-o=
verlapping 2 MB buffers<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; FIFO_ADDR_BASE: =
&quot;{32'h00600000, 32'h00400000, 32'h00200000, 32'h00000000}&quot;<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; &nbsp; &nbsp; FIFO_ADDR_MASK: =
&quot;{32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF, 32'h001FFFFF}&quot;<o:p></=
o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># A list of all static connections in=
 design<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># -----------------------------------=
-------<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># Format: A list of connection maps (=
list of key-value pairs) with the following keys<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># &nbsp; - srcblk &nbsp;=3D Source bl=
ock to connect<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># &nbsp; - srcport =3D Port on the so=
urce block to connect<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># &nbsp; - dstblk &nbsp;=3D Destinati=
on block to connect<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># &nbsp; - dstport =3D Port on the de=
stination block to connect<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">connections:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # RF A:0 TX<o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: ep0, &nbsp; &nbsp;=
srcport: out0, &nbsp;dstblk: fifo0, &nbsp;dstport: in_0&nbsp;}<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: fifo0, &nbsp;srcpo=
rt: out_0, dstblk: duc0, &nbsp; dstport: in_0&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: duc0, &nbsp; srcpo=
rt: out_0, dstblk: radio0, dstport: in_0&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # RF A:1 TX<o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: ep1, &nbsp; &nbsp;=
srcport: out0, &nbsp;dstblk: fifo0, &nbsp;dstport: in_1&nbsp;}<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: fifo0, &nbsp;srcpo=
rt: out_1, dstblk: duc0, &nbsp; dstport: in_1&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: duc0, &nbsp; srcpo=
rt: out_1, dstblk: radio0, dstport: in_1&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # RF A:2 TX<o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: ep2, &nbsp; &nbsp;=
srcport: out0, &nbsp;dstblk: fifo0, &nbsp;dstport: in_2&nbsp;}<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: fifo0, &nbsp;srcpo=
rt: out_2, dstblk: duc0, &nbsp; dstport: in_2&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: duc0, &nbsp; srcpo=
rt: out_2, dstblk: radio0, dstport: in_2&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # RF A:3 TX<o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: ep3, &nbsp; &nbsp;=
srcport: out0, &nbsp;dstblk: fifo0, &nbsp;dstport: in_3&nbsp;}<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: fifo0, &nbsp;srcpo=
rt: out_3, dstblk: duc0, &nbsp; dstport: in_3&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: duc0, &nbsp; srcpo=
rt: out_3, dstblk: radio0, dstport: in_3&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; #<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # RF B:0 TX<o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: ep4, &nbsp; &nbsp;=
srcport: out0, &nbsp;dstblk: fifo1, &nbsp;dstport: in_0&nbsp;}<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: fifo1, &nbsp;srcpo=
rt: out_0, dstblk: duc1, &nbsp; dstport: in_0&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: duc1, &nbsp; srcpo=
rt: out_0, dstblk: radio1, dstport: in_0&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # RF B:1 TX<o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: ep5, &nbsp; &nbsp;=
srcport: out0, &nbsp;dstblk: fifo1, &nbsp;dstport: in_1&nbsp;}<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: fifo1, &nbsp;srcpo=
rt: out_1, dstblk: duc1, &nbsp; dstport: in_1&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: duc1, &nbsp; srcpo=
rt: out_1, dstblk: radio1, dstport: in_1&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # RF B:2 TX<o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: ep6, &nbsp; &nbsp;=
srcport: out0, &nbsp;dstblk: fifo1, &nbsp;dstport: in_2&nbsp;}<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: fifo1, &nbsp;srcpo=
rt: out_2, dstblk: duc1, &nbsp; dstport: in_2&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: duc1, &nbsp; srcpo=
rt: out_2, dstblk: radio1, dstport: in_2&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # RF B:3 TX<o:p></o:p></span><=
/p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: ep7, &nbsp; &nbsp;=
srcport: out0, &nbsp;dstblk: fifo1, &nbsp;dstport: in_3&nbsp;}<o:p></o:p></=
span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: fifo1, &nbsp;srcpo=
rt: out_3, dstblk: duc1, &nbsp; dstport: in_3&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: duc1, &nbsp; srcpo=
rt: out_3, dstblk: radio1, dstport: in_3&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; #<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # - { srcblk: _device_, srcpor=
t: _none_, dstblk: _device_, dstport: gpio0 }<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # - { srcblk: _device_, srcpor=
t: _none_, dstblk: _device_, dstport: gpio1 }<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # BSP connections are inherite=
d from YAML include files<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: fifo0, srcport: ax=
i_ram, dstblk: _device_, dstport: dram0&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: fifo1, srcport: ax=
i_ram, dstblk: _device_, dstport: dram1&nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: radio0, srcport: o=
ut_0, dstblk: ep0, &nbsp; &nbsp;dstport: in0&nbsp;&nbsp;}<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: radio0, srcport: o=
ut_1, dstblk: ep1, &nbsp; &nbsp;dstport: in0&nbsp;&nbsp;}<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: radio0, srcport: o=
ut_2, dstblk: ep2, &nbsp; &nbsp;dstport: in0&nbsp;&nbsp;}<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: radio0, srcport: o=
ut_3, dstblk: ep3, &nbsp; &nbsp;dstport: in0&nbsp;&nbsp;}<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: radio1, srcport: o=
ut_0, dstblk: ep4, &nbsp; &nbsp;dstport: in0&nbsp;&nbsp;}<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: radio1, srcport: o=
ut_1, dstblk: ep5, &nbsp; &nbsp;dstport: in0&nbsp;&nbsp;}<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: radio1, srcport: o=
ut_2, dstblk: ep6, &nbsp; &nbsp;dstport: in0&nbsp;&nbsp;}<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: radio1, srcport: o=
ut_3, dstblk: ep7, &nbsp; &nbsp;dstport: in0&nbsp;&nbsp;}<o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt;line-height:14.25pt"><=
span lang=3D"EN-US" style=3D"font-size:12.0pt;color:black"><o:p>&nbsp;</o:p=
></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># A list of all clock domain connecti=
ons in design<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># -----------------------------------=
-------------<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># Format: A list of connection maps (=
list of key-value pairs) with the following keys<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># &nbsp; - srcblk &nbsp;=3D Source bl=
ock to connect (Always &quot;_device&quot;_)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># &nbsp; - srcport =3D Clock domain o=
n the source block to connect<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># &nbsp; - dstblk &nbsp;=3D Destinati=
on block to connect<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"># &nbsp; - dstport =3D Clock domain o=
n the destination block to connect<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">clk_domains:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: _device_, srcport:=
 ce, &nbsp; &nbsp; &nbsp; &nbsp; dstblk: duc0, &nbsp; dstport: ce&nbsp;&nbs=
p; &nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: _device_, srcport:=
 ce, &nbsp; &nbsp; &nbsp; &nbsp; dstblk: duc1, &nbsp; dstport: ce&nbsp;&nbs=
p; &nbsp;}<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; # Other clock domains are inhe=
rited from YAML include files<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: _device_, srcport:=
 dram, &nbsp; dstblk: fifo0, dstport: mem&nbsp;&nbsp; }<o:p></o:p></span></=
p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black">&nbsp; - { srcblk: _device_, srcport:=
 dram, &nbsp; dstblk: fifo1, dstport: mem&nbsp;&nbsp; }<o:p></o:p></span></=
p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"line-height:14.25pt"><span lang=3D"EN-US" s=
tyle=3D"font-size:12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">--------------------------------<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div id=3D"Signature">
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">Eugene Grayver, Ph.D.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">Principal Engineer<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">310-336=
-1274<o:p></o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_CH0PR10MB51793D09910638296032B5AB99F62CH0PR10MB5179namp_--

--===============5275864030090180437==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5275864030090180437==--

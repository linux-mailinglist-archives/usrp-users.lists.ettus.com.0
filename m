Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VlSiDJLJRGrS0woAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 01 Jul 2026 10:02:26 +0200
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD386EAECE
	for <lists+usrp-users@lfdr.de>; Wed, 01 Jul 2026 10:02:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=emwd.com header.s=harmony header.b=KXlOeG5q;
	dkim=fail ("body hash did not verify") header.d=emerson.com header.s=email header.b=R+OfeoCy;
	dkim=fail ("body hash did not verify") header.d=Emerson.com header.s=selector1 header.b=B3r334k3;
	spf=none (mail.lfdr.de: domain of "usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com" has no SPF policy when checking 172.104.30.75) smtp.mailfrom="usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 030943867E7
	for <lists+usrp-users@lfdr.de>; Wed,  1 Jul 2026 04:02:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1782892944; bh=TT464StMLghLA6Dp6eh3J3kXK4TKG4zuilt8t6diE5c=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=KXlOeG5qQXCKp8ObmaMXKuAiHUFPP+LgQAS66sFbYu0FE5sl6xnFT8NTWKKvzYWBc
	 gKomQvYg2wRSJfs3+gw7Lw4eddg1x/7ELNTg79mol18DuP77iI8yD9iQhPjZJNMqzy
	 ifMKKfUkJZQCfc7WM9SRUEgTOiwbSpLKDWjrTakqF6e1aQ/lNXWDaHMT7G8PUz6ej0
	 VkMuo7YtghuXmTru4uNQbXHEZMbbSSMIiLuWKMQLhxlfJiX1fTpA0RS2sc7li1JcSW
	 kcGwnbhnrdrCtwD75nnFfDljYNYx18Fe/+9f2apNXYC3/jtGpvJnEPVJBOmOvxaVPv
	 3pgMmtHd8XatA==
Received: from mx0a-00300601.pphosted.com (mx0a-00300601.pphosted.com [148.163.146.64])
	by mm2.emwd.com (Postfix) with ESMTPS id 30A09386668
	for <usrp-users@lists.ettus.com>; Wed,  1 Jul 2026 04:02:09 -0400 (EDT)
Received: from pps.filterd (m0484890.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6613Fje02151600
	for <usrp-users@lists.ettus.com>; Wed, 1 Jul 2026 08:02:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=sOaHLzccszttGgFbEQJWu1GMh46Y
	h0qEAtkYTS+Hbh4=; b=R+OfeoCyTES8iqoPOts2otQkqq8JQ9V7hPDg77bgZuCH
	8EA47kN97Wxx6LLe5BGULw+45OzPyTjd73Oe0ueDNITSoxXMs77euYegLRN8fC8Z
	3x0C6WdtRE6cpZT5Onixm4YBZ1nXEGEDj+WOFSjs7Nt5cTpL8sYfrdkWVi1fOjFJ
	1IT3j4tTfMIOdkNE81petPqxQ+qLHL8ii/RU0gsRoWXDG9YEKVLqXLeHsJJdnEOn
	S+Wx0RjnwcJzW8C+IQEy+TDatvIbBnxVN/ms+WZIIXTO4S2IpAR1vhhREqihEQUU
	SBCn2T56E7a6mSAKTtmp7I3xW7z/wvyaTTtrT+nvrA==
Received: from sa9pr02cu001.outbound.protection.outlook.com (mail-southcentralusazon11013060.outbound.protection.outlook.com [40.93.196.60])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4f4tu71sc1-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 01 Jul 2026 08:02:07 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JmrsKgJRqC0c0DGYNFMZSbo64o7VelQFhnTT3wBCprN9PhxHKxJKUGaelLvfOWEpb+zdD6sWKj3kHNvWWyhBq5LVJ6IikxOZOG/B0aJVq2rEgQbsRQ/QjUoj3NDqnoqob3ReBJtyy5nXeyUOcibALFMRr6biXMHpxtYxZZzaK1EiIXHVJpAzbeK7wzDtahfkzEWHz2ASK5byDepim1fNeww66lOSs3BZUsN/jlVlsuWVT4ElHPxuXelfw0kMcunEfzCzNTuLZvKzsLbNo706S34addEVmybCKfJt2a3/VAbbPRNztwO5KZ5e4W5bHNaSepL9yd7Galij5VyX5Hhq2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kQ+IzdclY6jGRM6fmbbOL0rANMPXO2sF/RAACXrVTI8=;
 b=xQUDW8r9WY2bEDhczwI5jmXdcTQaALuubej/6Klcy2BF4Epm6Wg85QXK9pzSmUsw/rkQ8z0rbNeg+Ly2PsUYkEIoaPth0zwcGOaaozPH+DX+gShhKzK5lqZd2bIHopbWdFJ4UjfKvBj6tsPofqfdddXJ9mTMkDuSlJSecGWHNDIbQl68P6zgq0kvx/UGcm+HMWa/PA6jvni3Yx+5roDTSO4OcwHLjrh86LMDYQNfmLVLFlalVjzaqOcbI7aGqJNTodqeF4SKcqxw1IqLqHOBQNBdX9wXX/1AYO9HBofq5vCRErPSMtVRZsOsreaNXebA2ARNSLXyU1h3ChO64vFQLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kQ+IzdclY6jGRM6fmbbOL0rANMPXO2sF/RAACXrVTI8=;
 b=B3r334k3VLEuWYboMC1CVJk+nGKWHEkUEvQ6A7VYJ8glx5cA1a6t3x1F0ukJdEWFAzpqPqeQf7Cyjy0sszpvJm1lRmZFLTxEcg/TvNHaADOALoAq3CqdmmkNLVDe601TW8gh4/vuc0sWVBAXL7YaNs2KgyeTWuAJJ2SJer/PlTzDBtqrboYBnypXb/x7Pobhk8XNOaLKqm8fDEdojHwmK4vXMWtmBK3F5C/TpBGN0YlJXKJhFwQ/8v9a9SalAC+qJ9d+oG4QSkL2f+Poq+Ild/JeaCQZPWcfTWCXUHiDmV/RkZGMQsB8sKqmTc5NiRcPbR368b1GynNv2T1/Q6FDcA==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by IA3PR10MB8516.namprd10.prod.outlook.com (2603:10b6:208:57d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 08:02:05 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::4415:6064:40b9:6705%3]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 08:02:05 +0000
To: usrp-users <usrp-users@lists.ettus.com>
Thread-Topic: Underflows on X440 TX
Thread-Index: AQHdB/c1QzxkLAVUZEyLcGMkftC+e7ZYSHLw
Date: Wed, 1 Jul 2026 08:02:05 +0000
Message-ID: 
 <CH0PR10MB517922054AE43C3A2417B5F699F62@CH0PR10MB5179.namprd10.prod.outlook.com>
References: 
 <SJ0PR09MB91269679895FCEA5C6F8A3DCECE82@SJ0PR09MB9126.namprd09.prod.outlook.com>
In-Reply-To: 
 <SJ0PR09MB91269679895FCEA5C6F8A3DCECE82@SJ0PR09MB9126.namprd09.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=88e89f2c-4a4d-42cb-94a2-345bde59aaf1;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2026-07-01T07:35:28Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Tag=10,
 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|IA3PR10MB8516:EE_
x-ms-office365-filtering-correlation-id: 63566451-cd69-42ef-5f64-08ded7470a82
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|23010399003|376014|1800799024|366016|18002099003|22082099003|38070700021|8096899003|11063799006|56012099006;
x-microsoft-antispam-message-info: 
 SYoWUtur5whcR94iXDGTuvfpzJ9ADA0jw4wT5OricIiluNOXTS3j7tWsadAi49VbZfXF+I2Komec2GgU06xnf/z86b3UgWv9v4w/EhczmI2OmN8lige+H4KJLNMk1GHfAsr9uj5tbfWtNkLHJNdpukx0qEWrGUd8Jye1JDxNL81hoVw5BFz1Vsn1zJuXyI/41VciYNE3KrHfzHn7ABUfn2EH/iqAMEGOQ0+pj10DrUdKVkWf/3ORlo6btyOYsDuU9JupLDSJ5xm4m3zr088Vmr1shBQLv3AArzpM67gIl5EfXdtiu9ar6/ykyJKxDLvqVkdZ0xphk4xiPkwoSLBIl5yImwpsfGrkuw8X24kjq9AqQz/B4CuH5VOadnvjgvuhIP7Vf8a5NyW76kpWaF7OrPXHmJlCFyJ8T8jfatIwz1KE7HnnDENEPFiSCuOcEANDvJZSYIufw5vD9wqZR4VF6nTnejBN0BMt/rKliK53OXAtg1/QQKyi4y+TTZ/QwPsp2re2ApFptZXcfZzWF74tPFie2QUSbuJuG62h72Pm2aBHMD97jHNS6GrXIjWRrUPm3EVDPnU6wsUcDuHWYfM02xnupaNwA/YDx2YQA+CzGqn8DvQVs5l28r4e+9wJv9sLNCi2hS8h2b5vH4YmcAQJGQ6mFy5tsI2tv7IpCURZNhOom0ZGl6LYnZfXgxYGGrPgf628zqNJLCAJzMbIwnZLQB5uGVZlL/k4FFejNMcSqAQ=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(18002099003)(22082099003)(38070700021)(8096899003)(11063799006)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?VWFCN2RQTVBEdUxnZlAyS0Q0d0M5S0JRVmVTREI2TzA4UWR1aTNSeStDL1ln?=
 =?utf-8?B?cUVCVzc4TFpPb3BMdTA1MEJ5aEExOFpUSnpyUWxjUW9XeGRjTkNBeWp5S2RD?=
 =?utf-8?B?OUhqWnFQalZzaWVBSm1wTEdnN1VrMlA2ckwzUzdHenJlNmlRRXkycy9WU3FF?=
 =?utf-8?B?cDJuc1cvTTQ1Q2JGOHBZQmx3TXo1TlRpdHVTd2NwMEFTUXZyQmlubmNFUmF1?=
 =?utf-8?B?YlBGbEE0TWNOWGROY21PYnIzZDdJd3c4a2h6NWhKbDZpRDZtZmF3WFRVVDg4?=
 =?utf-8?B?d0dVcEFlMCtoOFQ0V2YvczZadXB1N3UrdXg1bU1ESTRteFlwYUtlL1l1aERp?=
 =?utf-8?B?UG84VjIyZEtPSWU0bEttUUVFVzdPZW1SSUhubWY3QnNZbHJCdUpIM3NKbUhs?=
 =?utf-8?B?a0ZEVkNuRDdraW5MRU82ZUNiS1Z6OUs0cUVvQlFNWjNvUVlMRjRwU0NEb3NG?=
 =?utf-8?B?RFhHTnRNV2wvcjZreVlCemp1SDVCcURpTk9EODZEVG4zN1ZtWDZSNEhnRUJj?=
 =?utf-8?B?ZldwUkZra0FnemEyODh3ZUpxT0g0SStocnUwY2ZPZW0vQjdDdkZ1ckgyd1Bh?=
 =?utf-8?B?d2w4SUEvUDVqWWtUZ2xBVVpkWGovZFMwWDJKMDhPRzExenJWMGFUdmxMRFkx?=
 =?utf-8?B?UEk4T29sOElMNGZoZnFZZS8xRjlEZzhyRGNPVWNsaU9uMWRtTlo0Q0s4WGZn?=
 =?utf-8?B?VHc3UlJQUnJOMUswY3FFcDFaNFpIVE5Ob0lkcDVTcDlndzltNlBWeEFvanIz?=
 =?utf-8?B?S3FOUHJoSHoxTUYzSWRxdFpHWWQ5MmNxdExjZXlkZlNYaitLMHVIdmxsaDY5?=
 =?utf-8?B?eHRwWEl6V1RqM2Fhd1U2SFFQKzJaUXZsWnorbGo0SDBZbnJSbWdMZEZPcnQv?=
 =?utf-8?B?dHhBMUhESFUrNFFwMmluem9oWFdxUllxM1R6Y3V5b2tEVldUSnV5LzVnaDdG?=
 =?utf-8?B?QVg0bEZva2lCRUhmOHVKbkxwMzlHQTk3QVB6WjROYzNpWEVzV3lWcHdyZWdI?=
 =?utf-8?B?UlRrelo0VTF5cmprWlZWa3NnZkZCT20zTlNoRWF2M1VYaXNpR0w1RjZsSWRm?=
 =?utf-8?B?L3M2Z1RRTzNvM0dBK2ZsVXdDQU1yUm1uWk1XSVJrbzlVZXdxTkI5QnZjazBn?=
 =?utf-8?B?UEZzdm5Pc2ZDT0IrYS9HR0xUNk50RUJadzFCOVhmRUtKZmVsK1VEakd5WEVH?=
 =?utf-8?B?UEphNnQvRldLcThnYnJ6ZzREdjVOWHAxeUY3VFdaRUk4ajZSS0ptbnZBTjQ0?=
 =?utf-8?B?dUFWWmlWOG52ZktXVFdHQVluZWhvTDNMalpIaXFYMWlOTS9lZGlCZ05ncUdE?=
 =?utf-8?B?aUFPdjVNTktEUVp4UWdnUVFJK3Zub2U5bnRYZzhHOUV5R2N1Qm5rM3locEgr?=
 =?utf-8?B?Z1k2aGdvRk5SaElaVTlxZFc5REs2cXNLeWFLOXNTWktIWkVZdUtzWmRzcmNm?=
 =?utf-8?B?S3hTN3lzTXlJeTZIUURBTVhZeDUwZ3FldnBzTDFyUWFMMEo1RzQyVk9DenlS?=
 =?utf-8?B?NERVcGpycVkrZ2F0TWJ3c2RENWg5RGJjeVlaRjk1dFpCSWVKcUp4REpFc3oy?=
 =?utf-8?B?WFpBd2owMHlyNXBhZDhrZUF6clRoL1pBZnZpNnFJRVNFZ2pjRFY5K3NocnpL?=
 =?utf-8?B?bjZ4K2JFZ1l4UHQwcUhzdU82THhkRENXTk9ValJQMG41OHB4dHJJdW5UZDUx?=
 =?utf-8?B?YlVTNmxIK3NYK29yWEEyelN2WDVRbndyQmtqb3NMV2hNT1N4dk1WYTlHeVhK?=
 =?utf-8?B?OVBTVjY2TDNSVm12NG9RcXVPand4MHJQbkdOUmJFQWtvYUpLSW1JSVB0b0gx?=
 =?utf-8?B?SEF4czRQZjFRemNoZ2FSSldwcGNGS05iQnlUMlg1Z0R6b0Npam5DdkMvdTBT?=
 =?utf-8?B?UU92cXpQN1NHUDNaYUQvcTZER1VlWXRvdmhwdVoxTENiQmxnZ3dlM2FENDdr?=
 =?utf-8?B?RjVOaDgwdHRQMVI5T1pYT21Gck1XOWczajU2U3hZSG5WbDdlRG11ME0zdGRM?=
 =?utf-8?B?eDZxV3pXbHl6MmxlM1Y5OGN0LzY1Qk5aOExyUCtCUDUzTDRZek5tRm9QYUxR?=
 =?utf-8?B?ZHpENFZnUDVWd2tEd1BCbGU3RmZuK01CUzdnOTFsSWFaMnl5R0dXSVE4UHgz?=
 =?utf-8?B?WTJESkR4dXk4TklmSUFJU2NpWGRKbERFRDhjQXZ2ZWlkZkJRNHlQQ2hKUHQv?=
 =?utf-8?B?U0xjQXU5VUNPNmlsMnVoc3JvbjRsV1kyOHNjVTVkcldvcmhvdFQva0FUSk9Z?=
 =?utf-8?B?RDNWUEYyVURHanhRTjZZR3FUOWZnNHk1ZmU0RUN3MnJ6NUg0LzVtM0R5VEZP?=
 =?utf-8?B?L2xSck9RV1FCNkU1Y0s1cTZvSVJNSzkxYWpWd0VFTytBS0JqejUrUT09?=
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: 
	j0MNnOJRaGoHiJJYhBEhoHGMINilF0R3VpuVC3duoMEtlb1oAByMEexzU60e95uafu1SH33J9z1hXT2ep4tST7CRP2UVTJKWaIQ9Re0uy4Fz6bFaNdqvzK24KQSbLgFVUx2XqtZVphv53NII9/rhVB73xI/de5b52x/Ro0NWpWyOh4CYIoguH8JZUGyuUTdVE5Y5r1mYDjBZSx/ktl3Pra3L34PaliBvTknUZnN1jD+/ig8Zx7OayauMslakAcc4+jfOjWdLGWBBdAyM+qsH6G4B56BGg1sfbflTL7wU1iHCc42EtWBsGU3d4cwm+AtIVNOZuqYhSkdxctrLL4HfZw==
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 63566451-cd69-42ef-5f64-08ded7470a82
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jul 2026 08:02:05.1679
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VR34LZkzbtF2Hwpyy0hyQL6uQAQDYrng3MOFGDFH9TBQ51t+cOi/+Xb7QGa69VK5WW8dCxTQNQE5+4xRvlU/3GWRMu6EIygOfpii4/EbxLg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR10MB8516
X-Authority-Analysis: v=2.4 cv=eaMNubEH c=1 sm=1 tr=0 ts=6a44c97f cx=c_pps
 a=Ei0IHGVoEhmO3RFfwX1Atw==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=RAioF0-LDSMA:10
 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22 a=Ps6gwBxKFAOpZu8f3VnT:22
 a=SDIZ3FJ79mIEoUtHsglc:22 a=RpNjiQI2AAAA:8 a=8CGCo7kxAAAA:8 a=etiEgX_XAAAA:8
 a=aXZF6L8IeHADYflBNpQA:9 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8
 a=LQmePqxFgAn0DRhd:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10
 a=frz4AuCg-hUA:10 a=uyKDLsAT3yn652Fg1vMC:22 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDA4MSBTYWx0ZWRfXyU7SdSkIa8TH
 b/T9HxuonkxNcNlH4Z0YfzEcdlpf7Djduomwauosh/Yz0n008mKjmS8a98pGZ7H4vZkF0uU+/no
 Dbwj8TT6EGSkigZAUJeb6V+jBODibxZjl5g5+YptuaMncRlRfsjBqsBRTu28ffe+sKMQh1xyiIy
 ycKF9PMuZ7MYJuUnFAbEHH4BDfhb51+BEcjC9PT2NYSOycrYAYV9txNVd0xeuATymhOoaY7NYu7
 sHQKrDHbkYwQQmn8VQE6v2Jg8dbkIi+hBhU2HM6OrGEgsnckhsp58PbhGy7ueBJG8q0k28Xe6Ab
 FAIVHPIQN87NZKyMSQqhe6Ux/Kq/v5ZWzH1sKuljIvem6i3jq4epWt/CV7Qc2Qsyt83i19AWK0b
 LjCEYm+RNIiJd0y3TKQX9S2VaLbloICYTWldlPZ07yrObLC9ZoNttueucK8SkG7sZndhU+MHWWN
 6FKYlrhUwmWmViu8oOA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDA4MSBTYWx0ZWRfXwrNqqSEHzQ3V
 h2YhHcpR7esTsekBKXn2GG/No49XmhRPjFHXq8a7ZthKGyCfOSeK6Q8n6ku7mCJCyv/57kDWlvD
 S5qtnhFVSBCqVSqZHVEbxb4IUKNmCENiFaRd2oJQLQrGmRchvdUX
X-Proofpoint-ORIG-GUID: qi-LGLNdXGUPOjwY_xNaCLjHQrA9ivQ6
X-Proofpoint-GUID: qi-LGLNdXGUPOjwY_xNaCLjHQrA9ivQ6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_01,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 phishscore=0 suspectscore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607010081
Message-ID-Hash: V6QJUCRNDLH7TU5JVQ57WY53VX37ACEJ
X-Message-ID-Hash: V6QJUCRNDLH7TU5JVQ57WY53VX37ACEJ
X-MailFrom: prvs=864294e54b=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflows on X440 TX
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RNMIB2ZWYJSGQLJUAUSCUHK4TADREIVY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============0926179117315551621=="
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,emwd.com:dkim,aero.org:email,CH0PR10MB5179.namprd10.prod.outlook.com:mid,lists.ettus.com:from_smtp,lists.ettus.com:from_mime,mm2.emwd.com:rdns,mm2.emwd.com:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3AD386EAECE

--===============0926179117315551621==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB517922054AE43C3A2417B5F699F62CH0PR10MB5179namp_"

--_000_CH0PR10MB517922054AE43C3A2417B5F699F62CH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene,

Thanks for sharing this. I agree, this is unexpected. You describe that you=
=E2=80=99re using two X440s and this is also what you do in your benchmark_=
rate command, even though only the channels of the first device are in use.=
 What=E2=80=99s the behavior if you omit everything about the second device=
, so basically only use
./benchmark_rate --args=3Daddr=3D192.168.10.2,second_addr=3D192.168.11.2,mg=
mt_addr=3D192.168.1.10,clock_source=3Dexternal,use_dpdk=3D1,type=3Dx4xx,pro=
duct=3Dx440 --tx_channels 0,1,2,3,4,5,6,7 --tx_rate 40.96e6 --tx_cpu sc16 -=
-multi_streamer --duration 120

Does that show the same underflow behavior (that would make it easier to re=
produce)?
You describe that you use two 10 GbE direct connect cables for each USRP. D=
oes that mean you have a breakout cable and use two lanes of that from each=
 USRP?

/Martin

From: Eugene Grayver <eugene.grayver@aero.org>
Sent: Monday, June 29, 2026 9:02 PM
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [EXTERNAL] [USRP-users] Underflows on X440 TX



Hello,

I am returning to the problem reported a few months ago:

I have two X440s with X_200 image connected to a Threadripper 24 core.  I a=
m using two 10 GbE direct connect cables for each USRP (total of 4x 10 GbE).

I was able to get RX working, but TX is getting continuous underflows.


  *   Using the benchark_rate example.

  *   Underflows observed both w/ DPDK and w/out DPDK

  *   Underflows observed with 4, 8 channels and 16 channels

     *   Fewer underflows with 4 channels, but still get a few per minute

  *   Priority high/normal does not make a difference (usually)

IMPORTANT: If I use only one interface ( =E2=80=94args=3Daddr=3D192.168.10.=
2,mgmt_addr=3D192.168.1.10) there are no underflows with up to 7 channels (=
max to fit in 10 GbE).

./benchmark_rate --args=3Daddr0=3D192.168.10.2,second_addr0=3D192.168.11.2,=
mgmt_addr0=3D192.168.1.10,addr1=3D192.168.15.2,second_addr1=3D192.168.16.2,=
mgmt_addr1=3D192.168.1.20,clock_source=3Dexternal,use_dpdk=3D1,type=3Dx4xx,=
product=3Dx440 --tx_channels 0,1,2,3,4,5,6,7 --tx_rate 40.96e6 --tx_cpu sc1=
6 --multi_streamer --duration 120

This should be trivial for such a powerful machine!

I am suspecting an issue with handling of packets across multiple network i=
nterfaces.  Are the TX flow control packets not getting to the right place?

This is a critical failure =E2=80=94 not something I expect for a $35k box =
=F0=9F=99=82


Eugene Grayver, Ph.D.
Principal Engineer
310-336-1274

--_000_CH0PR10MB517922054AE43C3A2417B5F699F62CH0PR10MB5179namp_
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
@font-face
	{font-family:"Segoe UI Emoji";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:10.0pt;
	font-family:"Aptos",sans-serif;}
span.EmailStyle20
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
/* List Definitions */
@list l0
	{mso-list-id:1475028923;
	mso-list-template-ids:-593231044;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=B7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;mso-fareast-language=
:EN-US">Hi Eugene,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">Thanks for sharing this. I agree, this is unexpected=
. You describe that you=E2=80=99re using two X440s and this is also what yo=
u do in your benchmark_rate command, even though
 only the channels of the first device are in use. What=E2=80=99s the behav=
ior if you omit everything about the second device, so basically only use<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;color=
:black">./benchmark_rate --args=3Daddr=3D192.168.10.2,second_addr=3D192.168=
.11.2,mgmt_addr=3D192.168.1.10,clock_source=3Dexternal,use_dpdk=3D1,type=3D=
x4xx,product=3Dx440 --tx_channels 0,1,2,3,4,5,6,7 --tx_rate
 40.96e6 --tx_cpu sc16 --multi_streamer --duration 120<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">Does that show the same underflow behavior (that wou=
ld make it easier to reproduce)?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;mso-f=
areast-language:EN-US">You describe that you use two 10 GbE direct connect =
cables for each USRP. Does that mean you have a breakout cable and use two =
lanes of that from each USRP?<o:p></o:p></span></p>
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
<b>Sent:</b> Monday, June 29, 2026 9:02 PM<br>
<b>To:</b> usrp-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Underflows on X440 TX<o:p></o:p></s=
pan></p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;font-family:&quot;Arial&quot;,sans-serif;color:white"><o:p><=
/o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-line-height-alt:.75pt"><span style=3D"f=
ont-size:1.0pt;color:white"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hello,<=
o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I am re=
turning to the problem reported a few months ago:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I have =
two X440s with X_200 image connected to a Threadripper 24 core.&nbsp; I am =
using two 10 GbE direct connect cables for each USRP (total of 4x 10 GbE).<=
o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I was a=
ble to get RX working, but TX is getting continuous underflows.<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l0 level1 lfo1"><span=
 style=3D"font-size:12.0pt">Using the benchark_rate example.&nbsp;&nbsp;<o:=
p></o:p></span></li></ul>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l0 level1 lfo1"><span=
 style=3D"font-size:12.0pt">Underflows observed both w/ DPDK and w/out DPDK=
<o:p></o:p></span></li></ul>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l0 level1 lfo1"><span=
 style=3D"font-size:12.0pt">Underflows observed with 4, 8 channels and 16 c=
hannels<o:p></o:p></span></li></ul>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<ul style=3D"margin-top:0in" type=3D"circle">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l0 level2 lfo1"><span=
 style=3D"font-size:12.0pt">Fewer underflows with 4 channels, but still get=
 a few per minute<o:p></o:p></span></li></ul>
</ul>
</div>
<div>
<ul style=3D"margin-top:0in" type=3D"disc">
<li class=3D"MsoNormal" style=3D"color:black;mso-list:l0 level1 lfo1"><span=
 style=3D"font-size:12.0pt">Priority high/normal does not make a difference=
 (usually)<o:p></o:p></span></li></ul>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">IMPORTA=
NT: If I use only one interface ( =E2=80=94args=3Daddr=3D192.168.10.2,mgmt_=
addr=3D192.168.1.10) there are no underflows with up to 7 channels (max to =
fit in 10 GbE).<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">./bench=
mark_rate --args=3Daddr0=3D192.168.10.2,second_addr0=3D192.168.11.2,mgmt_ad=
dr0=3D192.168.1.10,addr1=3D192.168.15.2,second_addr1=3D192.168.16.2,mgmt_ad=
dr1=3D192.168.1.20,clock_source=3Dexternal,use_dpdk=3D1,type=3Dx4xx,product=
=3Dx440
 --tx_channels 0,1,2,3,4,5,6,7 --tx_rate 40.96e6 --tx_cpu sc16 --multi_stre=
amer --duration 120<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">This sh=
ould be trivial for such a powerful machine!<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I am su=
specting an issue with handling of packets across multiple network interfac=
es.&nbsp; Are the TX flow control packets not getting to the right place?<o=
:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">This is=
 a critical failure =E2=80=94 not something I expect for a $35k box
</span><span style=3D"font-size:12.0pt;font-family:&quot;Segoe UI Emoji&quo=
t;,sans-serif;color:black">&#128578;</span><span style=3D"font-size:12.0pt;=
color:black"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span style=3D"font-s=
ize:12.0pt;color:black"><o:p>&nbsp;</o:p></span></p>
</div>
<div id=3D"Signature">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Eugene =
Grayver, Ph.D.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Princip=
al Engineer<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">310-336=
-1274<o:p></o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_CH0PR10MB517922054AE43C3A2417B5F699F62CH0PR10MB5179namp_--

--===============0926179117315551621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0926179117315551621==--

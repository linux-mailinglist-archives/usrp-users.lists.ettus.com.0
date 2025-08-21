Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A6DB2F3B8
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 11:22:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 757483865A0
	for <lists+usrp-users@lfdr.de>; Thu, 21 Aug 2025 05:22:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1755768162; bh=hhHQQUWM1O4qWTKnHC2cvqB2Q476ZyVVWGLJGa94uoI=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Z1hbQ0/4g/QSp3oX/KFqJJmYewkTgQG5F4sTyNUjx/JTyfqBtxGjSpfZ3Mq2+XvdM
	 FnmAU5WR/mbY71RivtswmigX5vfVDDddjSB/YdEduVAI8ledKi3Gc1ZqN462uRbx0u
	 5ID734iCGYL980WnIDJzv+16l3FIfz6tdQwpnezl6T2q+x11+VvCvSsstBTi2SbLfq
	 JPRKX5ickiRldg41V1b5If9w+g8EW5XPUnpvn3ftYMykug+DgNltHuFd5DmwRZkQjx
	 geFrtmPMP4wNeJi/zxmxClETNm0aX/Uu1dtxZRUPvg6GMU1P3Jok62e2E4dcEgwgKu
	 dlYGukdETQpbQ==
Received: from mx0a-00300601.pphosted.com (mx0a-00300601.pphosted.com [148.163.146.64])
	by mm2.emwd.com (Postfix) with ESMTPS id D15AC386347
	for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 05:22:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="Z3GTc6bM";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="HttT5sG7";
	dkim-atps=neutral
Received: from pps.filterd (m0484888.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L2Nf2a017811
	for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 09:22:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=Ayhtg/94Haoisfq0wkJel5u+WPsI
	Km8jgxwvx9pTi9k=; b=Z3GTc6bMaAJiFBar/sQW3mPNqQFlSglfwunYfFwMnguJ
	+uKlvv8gczmuBWMBD86pPsDlb838W+RJR2BIdvzzdyCC6PDAmkUnIPpRTaBOk6/u
	eTSBCI8bb83FMvVZA74Ghm4Ox7O9XdCstgVl8d9glgaAri8mV5/ZkvBsczyHVf/7
	Tp7z3G2NfLvo61sExFLgcxgSME56KM416ovPtQDILoWwyOdrYq0EsOGi3EHlxMVM
	tqEmWPMZs8pv4cKcj4h+TSQZuFYnFIB6bxrV19frGRh7YNOm+Cd89DS4nnTrE0Fm
	f/QTXJ39lb/7w3tFlTQ3+l3fAFinGD1/ciVTTmPHiA==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12on2081.outbound.protection.outlook.com [40.107.237.81])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 48ntmt2awu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Thu, 21 Aug 2025 09:22:00 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=M4NtOvlNDzLAzeClkttrsomdb7Hf1Lp1ulr8v9XuZP+xJzlYPlBXoZnTk5hOwQnPr/glequ8G6V+GKKvRpiYiMm5RVvlfmqD1lFxc7jKett6K/VXnBgHOaImuDEpTTRPS9mGCuFWRXOVY+hShQOrKL/nrZnmRlLIqvtl3viP4d8i7Gri4TRmU3Oy9juzMoLybrHmYi70NT7zTG4oyvcuaZHUOIVC4IOdRH40uk2l5CNNEGNlYCaaoQQgS5XJ+Sv2jag9AtiMH0mZjshjS/7/Zxhu2Aodr1zU54Fa4IupgEAh6B+J5V65IEiLUYq42/p/HWEQCniu/CP/O8oRBbvFzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oOtKEKI0kt6S37wE7zF9LyMKPNNuSqOCInxIfeKi408=;
 b=uVQLohyS9En1yh7AV4PdTTmTzq/84fAvKsGgzyBFz+OtiLfP5NRvyFP+/RrzgcwkBmtCwzGEpIbqG735NODfs8d8UXPrc6aRiug4opOwQBG4tiIo5aibZKnwzmJP0AKB11GRxO2ldqwdhHcT8I3Pwgil4Qrf/f0z2oiS0sEu2j5f5i640lIrkys1zTlJ4fn+VK/LJtzwbDPU+78oPTTXD5iuJPG1tRPc/qERPJoNyGbr/KAGd6mK5atrzP83FILnTgldAOq4Pgx11kNOmq03X90h3alu8zJwqSSYSjey8NlQwwmWBm8L+gv8YtgMZ0+2skrnWMVcCCqwMMjmzEReGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oOtKEKI0kt6S37wE7zF9LyMKPNNuSqOCInxIfeKi408=;
 b=HttT5sG7SMHKTDlAIYtrUmcXkkq+Uz79axT3oC6lSfRfQCbHhZAOhBX9V6KtpDuOOHc7CdGY5K2jvy8HCEvvN8MY4VNoDuNUflBlNmJVux6T2j/v2gpLRDFVgr4wuYllsakE0Zbo2mEKHMv4BJ+oiRCccxjmKcEcPVqDA5oDduV4ZElgVGAxNhklAH8y5KDD/R9KVm+Ax0JqKxbCmIkeUAXAVwA5uOQfBNiq2rIK953dfJJ85X0tlJFpDiV7YCqdLZgoL/ig+TWXI3HP0dqQSfOcyv31XwaWDQV7hK6vptRS491VUQ/WnkqjuTSHBxeKgpb6evbyJUL+YEv1UC7LoA==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by MW6PR10MB7687.namprd10.prod.outlook.com (2603:10b6:303:244::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Thu, 21 Aug
 2025 09:21:56 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9%5]) with mapi id 15.20.9052.013; Thu, 21 Aug 2025
 09:21:56 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Error with ettus x440: Failure to create rfnoc_graph.
Thread-Index: AQHcEn0JwWSYWLLI2EqJQihRZhdA8w==
Date: Thu, 21 Aug 2025 09:21:55 +0000
Message-ID: 
 <CH0PR10MB5179F6CDC06E17C3A7AE5FF09932A@CH0PR10MB5179.namprd10.prod.outlook.com>
References: <ZKRt0EBuCJ9zzcpM9twvJvP2tu45aGStSrZluuHW29s@lists.ettus.com>
In-Reply-To: <ZKRt0EBuCJ9zzcpM9twvJvP2tu45aGStSrZluuHW29s@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ActionId=0eb925d9-7219-4841-8084-0f64de812cce;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ContentBits=0;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Enabled=true;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Method=Privileged;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Name=Public;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SetDate=2025-08-21T09:09:08Z;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Tag=10,
 0, 1, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|MW6PR10MB7687:EE_
x-ms-office365-filtering-correlation-id: e37e0665-2433-4be0-001b-08dde0942c73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|366016|1800799024|38070700018|8096899003|13003099007|7053199007;
x-microsoft-antispam-message-info: 
 =?utf-8?B?QzF4RWN5aWlJRWJQNk8rTi8vcC9DdTA1Yy9KeWt3enBzQXREeGx3MTRZdUR2?=
 =?utf-8?B?dU43c1lMVU5HV0tjR3RyczRQN3A1cjF2QllRSUhnMCtpVCt3KzFVSCsxd3dY?=
 =?utf-8?B?U3JrNWdzLzVRTjdtR2srb1lmMm8wUUJuNGFKTkxURTcyUzgyaW5SN2RVRlFa?=
 =?utf-8?B?Z284RWhwVWRFeG91QkE3a1NkdkxvRHg0bEN0MzQ5Nmw4UEFUK2xsUzdxNmZq?=
 =?utf-8?B?UUxXeGZ6T0pZWHFZWkxpWnVBWTBKRVh5VmhwRmJmNnBLaTFsMDdGUmtLdDZQ?=
 =?utf-8?B?eEN6TWFoY0ppQmRtdTJOUmRwM0MzbldJL3ZSMXV4WXFVOFE4ejVVa1JMMDJD?=
 =?utf-8?B?TWJOdHI1ZEsybWZGZnlyVW9TR0YwbUk5d2hoQnFwUVlvc1pMVWkxM25ITmpz?=
 =?utf-8?B?WEZNUlFuemVtWFFqRnFucFlpbnJBcm5jSWZMeENMUjNRYnBhd01heXVERmVB?=
 =?utf-8?B?Rjh2YXFLVThDUnRRbENVUlVPeitrSWtiZUluVExJTzUvdW9FY2lpTXo3V1RH?=
 =?utf-8?B?aTFSMEpxM25WbFhnSzRUcUcwd3dGV2JrV082VGtCV1c1S0ZtVzBMNGxBTmhB?=
 =?utf-8?B?dHVzbysvcFVXUTc1emVDTFIwZTArSERoc2ZXdUZzajBjUDNLSTVaaTFtVkVp?=
 =?utf-8?B?b2w3cmdBWGlTOHViQURHY0JadGxsWmZkNXdabVV6eHRtMlpEcUR4SFhIVkNH?=
 =?utf-8?B?STErQW5UYnhjMnhYcUxHNWUvTHVKQTU0VTFkd1AybnltSnR0bmk0WWFtRWpk?=
 =?utf-8?B?c29EY1BDSFhxUWUzWC9CbXBwdHhEenpITFRXQVgwcU1hcmNxeUtKMG4xMU9F?=
 =?utf-8?B?N2RNSUdWRzFpN2JLSlJBeU5rbDZTVkxDdSs4MU5KcUM0bThMdUh3RDlkblZh?=
 =?utf-8?B?NTh2Qmo5VEtLYmRwWlBQRWhVaGZSeUxsamRoMExkWUdSMkxKWVhYbUpOUzRl?=
 =?utf-8?B?WVZ6Nzd3VXBjQVNkdldxbFNHVUNPRHIzV1ovNHNPRmp5OVdPZmRmeWI0TGsr?=
 =?utf-8?B?WXlSTUVIRGhCZVY0QXlockw0ZzlWb1hTTmllUm45dWg2Z0NqSDI1Qk5KRXEw?=
 =?utf-8?B?ZTFPYXhtc2FqRUFjQ1dYY1FkdW5wVzN4Q0JpVjBVMzRaQ3ZTYlVqYnJIc3ZF?=
 =?utf-8?B?SDl6MkRQNW92UUZGd0MyZDBjbC95WVJ5UnY3d1d6a21zR3NzbmpTRlYyakt4?=
 =?utf-8?B?dTlyWVpRdkZ5NkpJSlU0NjFrcGE0L1lBYlRZRDBMZE9LaGhvWDhqaXRaeWhI?=
 =?utf-8?B?R211TmNHcDRKWFFvNExRVldGR0R6STZxa3NGRXdqZ0NvSUR1a1V6SE1DdzRp?=
 =?utf-8?B?NktndHl1SStJSEUrek84d0s4QVoxaWhnMG05RCtaUXJmRXo5OS9lUXMwMnJa?=
 =?utf-8?B?ZFF1bTNSWG5rQ1FtSUpXZlpGREc5emR6NVZOOG1iK1I3V1FNa3ZPdjRrYk1v?=
 =?utf-8?B?cXQyY3cxa2NwOVVub2hkZlBNODRCV1pqR28zRmRuN0RvRkI5aWU5bmR0R2lD?=
 =?utf-8?B?cGwyRWdObXlCUmoySWhhbUdvV0VieWFzNVg4dis4SGlhNkp0a1M5dVNnZU4v?=
 =?utf-8?B?UUZPN0RqRDgyN3N6cHVlcVNiSVBYTnpudW43ajcwM0J0VjhmYWhhTWJ6QTBI?=
 =?utf-8?B?MnNheVpvSlFKUUg4c1NHUWNhdFEwVGdRSFVSbm9QN3E5R3JSU0FYTHZOS0Nl?=
 =?utf-8?B?ZEFZNEgwYm5ybHc2MFFEaFp0L1ZPeUppcjA5TEVScmFlL1NHOE14UEJoaHVU?=
 =?utf-8?B?c2I3L3ZEYVpsdmJ3MU5qQmxUZmU5VDJMVHIvbUZoV2FXcHU1RlQvMUdPSzBx?=
 =?utf-8?B?R1lUVWJGYmtYM1VZdSs3bkVjcWwwSFZaOGovQjc5NFFJeWp2elJwL2ZyUTBX?=
 =?utf-8?B?MFA1YzVDWFQzNkUrdHo1dkJ0MExBVWZ4UVQ4eWlrTFFGQzZkR3NvT25WWG9K?=
 =?utf-8?Q?GNh6DdMW1as=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(8096899003)(13003099007)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?MlBnMzgzSUdmYVF5a0w4MXNCdnIvS0RzeFZCRDRJMktuR2UrNi9zNXJ0Z0FT?=
 =?utf-8?B?SDNPYzg3N3Vra3FUUXRjeGR5M0g4a0xOdVV1WUwxcjVhSVJOZEJVcTE1SU1H?=
 =?utf-8?B?b2VkcGsySWFVVjFvNE1SRWtiNmlhbzB2UGVDNUwyYkJpSEtGZUhva2RiVXBK?=
 =?utf-8?B?L2tUVy9DcUoxTWplRUpLVXNvV0ZmSXlUSk1objVXUk55VzBnT2ZRbWlGcE1p?=
 =?utf-8?B?YXFIUEtkZkFSWmVrSnZ1QmhjdjFVY1JZa216WWoxWTNLT0tsVkRUWmRCQVZk?=
 =?utf-8?B?RzlCLzRPQyt1RXFwNzlXWUhNbnJjYnhPRTRxVXVzRVlET3NOWHd6YUtxTmo5?=
 =?utf-8?B?b0xxYmR5ajFnY1JVRVROV0syQklBVkFZVVE1OXNkeGlGSXZ0ZlZ0TVFlUHBI?=
 =?utf-8?B?R2JQbkM1SmxMNUR6OGdCVC9HelVsOTg1RUpSU3VLWVBudEY2dGlwQVpxSGNs?=
 =?utf-8?B?MlZCY3JVekhLOUlrZkhaQWJIOVVCdnFUMlFFRTRmbUJMeUltQVdxVlQ1ZnND?=
 =?utf-8?B?eU10NjRWOWxTZHlaT0NYa3VCSFM5WlBIbGl0OHNpLzUyTktrWUNXZ0hFREVl?=
 =?utf-8?B?UjRsaUFEWFVMQkdjcVI0eVRHa1lLVUZzUEJsY1EvVGZNNE9Eb0w2aEIrcTJo?=
 =?utf-8?B?V3lvL1gvdVZlcGpvbU55eXdCL1YxWG02SnJadzVlcTJkOXhUcys0UE15djdF?=
 =?utf-8?B?OWVQblV6dTJkMWJITHdPUE5yK050T290bVF4NjFMbnkxL0hTMC9QUkhVMWVI?=
 =?utf-8?B?K3NpalgreUU1WlJteUp4c1JLalp4elJsR3FZOGI1Mzh2MktlanhKa2l6U0E0?=
 =?utf-8?B?d2E1dGdhSnFpV2owbkl5cTVmRWNjNDhER24wc1dBUkc5YUVZRTlucXEzT3Br?=
 =?utf-8?B?OThCcEpHdGNzbkJjbHRORXg4MS92MGJlTnBTaGw5ZzE0UGo2ekt5d2ZUK29y?=
 =?utf-8?B?V1p2bEp1YkJNUERvOUpWdkx0Z1hheXdYbzBSSWZGVk5PQVJLZWt4MVdPQSth?=
 =?utf-8?B?UEYxMUwwZ211Q3UzbnNSb1FxQWwxN2FxQ1BhaVJOWFBRL3FGNFpGQ3RMSFUx?=
 =?utf-8?B?WG1rY1JlZWxxNDhlemNYUHNwT0R0ME5nNnh2TWEvUUo1eUxyVzRRaTVYWExE?=
 =?utf-8?B?d0ZDSDZqWjFudTdjdVpzb0ZRZmhFVzdvZFV1U0t1K0szdUpSY2U3a3I0b2pO?=
 =?utf-8?B?eTUzeHVOVlowcDlJL3pNR1RtQVcwRlh3YTNYa1Zkeml6cjhoVFk4V3dUb00r?=
 =?utf-8?B?Sm4rUlVMdlZOdFpvTFFOVDZXMzQ4dUlrZkV4SEF1SFhlaThCbUN5aFZvcVlh?=
 =?utf-8?B?ZlBUYUlsd0IwN3ZhM1cvTkoxWDVjOVhkbGlOVzBRczY5NzF2ZU1Hdjc1TUwx?=
 =?utf-8?B?OVpWa3c3TVMva1RuQWdiT1FqS0pqMjFlcjRmSnpWcXc5c3VKcnFHVHlDSjFl?=
 =?utf-8?B?TDV4NmlGdkNiTjlmZVMvTGt0OTc1S3o2RDJKc3FjUzRoY2VxRmp4c2RXZHBw?=
 =?utf-8?B?Rm8zVEVHcUNTUWxoaVlnbWRnT1U4WEhwRExzWldxcEdXMHkybVM2MTBkQW0y?=
 =?utf-8?B?dUExV0dpL0Q1eTM2ZWxGNk9pelViaWJPQlBmT0dqdm0xNUoyYys1NmI5RDFU?=
 =?utf-8?B?MHVORlNScWdZVUw5R05QQUk0RW9PYXNOSEJRQ2lXWXhOdHdhN0NTamVIc2sx?=
 =?utf-8?B?S2pUblN0Vy9YRVo1L2p5MXhMT3gxa0pGeEg5d0NvREl5VlBIYUNZSmdmbnJM?=
 =?utf-8?B?OUZJR1dsUy9yaXpkNmorMkM2ODRVdDVzTzQ4UWFmSWYzdnVqSWhnOEtNcTVD?=
 =?utf-8?B?YmhpU0NFUUNyNlBrZElPQ1drY1l5djMrSm9mQUJWUzRtOThrVFNPN2tkNG4y?=
 =?utf-8?B?SCtFT044Szcxd3QrMnUxdDViRDkrcVlaUjEwRi9oRzJ1S0NsYkVGK2QvUjI5?=
 =?utf-8?B?eGhDYktlR0ppc0dBZ2NHRjhydVVTUzZ0SmVDMy90MUxiVHFOSW5TVFhRRmxP?=
 =?utf-8?B?YUhtQTl3NXlodFFicThBakhrOEdId0FrWmQ5VlNUOGgvN0NRcmtSb2FhWmky?=
 =?utf-8?B?VnBXaDR3ZnZTd2NRNVJKUnJia0ZaeEJWZ2Q2U0JtUHgzUUt3YVBiS2pVS3NX?=
 =?utf-8?B?TFprNkxzYWcybDJxYlNGR25PZ24vdG4vb0xwY2YrbTFqcEM1MGhSa0E0cmRk?=
 =?utf-8?B?MFE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e37e0665-2433-4be0-001b-08dde0942c73
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 09:21:56.1845
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YH3t79wOZpxymLN8nev+rdBWRAU1irkkVQ4p4Q6n170ldiPBwRC8oR+YtSmtjMFrPcSFKvOpVawF9dWB3Js1qY8oM2msgLEaQOwibl2CTcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR10MB7687
X-Proofpoint-GUID: nyXDgeEFSF4AtRgJOsRN_XFM_mSYn7zN
X-Proofpoint-ORIG-GUID: nyXDgeEFSF4AtRgJOsRN_XFM_mSYn7zN
X-Authority-Analysis: v=2.4 cv=b+zrItGx c=1 sm=1 tr=0 ts=68a6e538 cx=c_pps a=HAUmu1/dIFYeD7zUjD/L9A==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=xqWC_Br6kY4A:10 a=2OwXVqhp2XgA:10 a=ZPWZ4rD8_x8A:10 a=UXIAUNObAAAA:8 a=RpNjiQI2AAAA:8 a=etiEgX_XAAAA:8 a=1wSZJzIKg3FwEST7zqcA:9 a=QEXdDO2ut3YA:10 a=GmVhgefln_IA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=LVMMuahM2Zx3eKKogikA:9 a=22Pb2WUjJRcLv6pH:21
 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10 a=a1s67YnXd6TbAZZNj1wK:22 a=MLbIUA-Bjd6y1alW9qBG:22 a=poXaRoVlC6wW9_mwW8W4:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIxMDA3MyBTYWx0ZWRfXxgOMHEcVTsB3 2km1wxZa1la74IEYf4jhvfUjtqYDq33kaHg8TGkEfrzJ6ait+REY7dtBceilbdPwficI5ZZZMIX xob/4Am4Vqi1K7oezixJtx/fA8tjn5GNob8esA8MOlSjDtFtiB9Y4HaRZSfJp4SZspnKb54ExaY
 mCZEm1rE3YaYa86wmXAtF4ySfbOKnF+P7GBvAzS/yRdD3IQFSojaJYftXLStZSU75eguZyuDdoI 6ri3bNtE4WWnjxcF6exAeRKQfoJUirW4T8FSlgeclBgOQNLeGKIQ0D/SMKqwT1yGxULvwehGZQ0 JuDNhqhoDTASd4Kqhw0On2O/dKKeBM/SJfYm8fX9I/y+lv/wGtPxDNccO2G0TLTXc7ZnQgNKICj
 ymz8F7g91gv/lVt2Fh1qZVfenzFaLVYP6t1jzcBEi8AArEd3gWwEhn+USUeQPXMO2t83a6Lm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 mlxlogscore=999 spamscore=0 adultscore=0
 impostorscore=0 lowpriorityscore=0 mlxscore=0 phishscore=0 bulkscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000
 definitions=main-2508210073
Message-ID-Hash: A46HDNYUEV7EEUXE7IOEXZNDVOGX2N4C
X-Message-ID-Hash: A46HDNYUEV7EEUXE7IOEXZNDVOGX2N4C
X-MailFrom: prvs=7328608a44=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error with ettus x440: Failure to create rfnoc_graph.
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HULLMHR6INFEELGIWYQ47UWGMI5EIFQS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============4084872013509844205=="

--===============4084872013509844205==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB5179F6CDC06E17C3A7AE5FF09932ACH0PR10MB5179namp_"

--_000_CH0PR10MB5179F6CDC06E17C3A7AE5FF09932ACH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Rub=C3=A9n,

To me this looks like a network issue. From your printout I can see that yo=
u call uhd_usrp_probe on the good device itself. Have you logged into the e=
rroneous device and run uhd_usrp_probe there just to verify? Have you check=
ed that the IP configuration is correct? We have seen some weird things wit=
h wrong routes, IP addresses in the wrong subnet, using two SFP connections=
 crossed and so on.
Some of them have been collected in our manual: https://uhd.readthedocs.io/=
en/latest/page_usrp_x4xx.html#x4xx_network_troubleshooting_tips

A typical setup is having the X440 connected via the RJ45 connector to eith=
er the host directly or via a switch (plus the SFP connection for data). If=
 this network uses DHCP it takes you the burden to configure the IP address=
es properly. For uhd_usrp_probe this is sufficient and with that it should =
return the expected output. For the actual streaming it may make sense to o=
pen the session with those arguments: addr=3D[the IP of the 10 Gbps interfa=
ce],mgmt_addr=3D[the IP of the RJ45 interface].

I hope that helps,
Martin

From: Rub=C3=A9n Serrano via USRP-users <usrp-users@lists.ettus.com>
Sent: Thursday, August 21, 2025 9:00 AM
To: usrp-users@lists.ettus.com
Subject: [EXTERNAL] [USRP-users] Error with ettus x440: Failure to create r=
fnoc_graph.




Hi All,

I am trying to run the following command with a configurated ettus x440:

uhd_usrp_probe

, and i am getting the next (complete) output:

[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.8.0.heads-v=
4.8.0.0-0-g308126a4

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.0.3,type=3Dx4xx,product=3Dx440,serial=3D34B2ACC,name=3Dni-x4xx-34B2A=
CC,fpga=3DX4_400,claimed=3DFalse,addr=3D192.168.0.3

[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D192.168.0.3,name=3Dni-x4xx-34B2ACC,product=3Dx440,clock_source=3D=
internal,time_source=3Dinternal,initializing=3DTrue'.

[WARNING] [UDP] The send buffer could not be resized sufficiently.

Target sock buff size: 2500000 bytes.

Actual sock buff size: 1048576 bytes.

See the transport application notes on buffer resizing.

Please run: sudo sysctl -w net.core.wmem_max=3D2500000

[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph: RfnocErro=
r: OpTimeout: Control operation timed out waiting for ACK

Error: RuntimeError: Failure to create rfnoc_graph.



I know that this is not an error due to the uhd installation because I have=
 purchased another one ettus x440 device and the output obtained with the s=
ame command is completely different:



[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107800; UHD_4.8.0.0-0-g30=
8126a4

[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx440,serial=3D34B2ACC,name=3Dni-x4xx-34B2ACC=
,fpga=3DX4_400,claimed=3DFalse

[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3Dni-x4xx-34B2ACC,product=3Dx440,clock_source=3Din=
ternal,time_source=3Dinternal,initializing=3DTrue'.

  _____________________________________________________

 /

|       Device: X400-Series Device

|     _____________________________________________________

|    /

|   |       Mboard: ni-x4xx-34B2ACC

|   |   module_pid: 42048

|   |   module_rev: 4

|   |   module_serial: 34B2ACC

|   |   pid: 1088

|   |   rev: 6

|   |   rev_compat: 6

|   |   serial: 345A6FE

|   |   MPM Version: 5.3

|   |   FPGA Version: 8.3

|   |   FPGA git hash: 8e780be.clean

|   |   Device DNA: 40020000017166A5242062C5

|   |   RFNoC capable: Yes

|   |

|   |   Time sources:  internal, external, qsfp0, gpsdo

|   |   Clock sources: mboard, internal, external, nsync, gpsdo

|   |   Sensors: ref_locked, fan0, fan1, temp_fpga, temp_main_power0, temp_=
main_power1, temp_scu_internal, temp_sample_clock_pcb, temp_dram_pcb, temp_=
tmp464_internal, temp_power_supply_pcb, gps_alarm, gps_enabled, gps_gpgga, =
gps_locked, gps_phase_lock, gps_sky, gps_survey, gps_time, gps_tpv, gps_war=
mup

|     _____________________________________________________

|    /

|   |       RFNoC blocks on this device:

|   |

|   |   * 0/Radio#0

|   |   * 0/Radio#1

|   |   * 0/Replay#0

|   |   * 0/Replay#1

|     _____________________________________________________

|    /

|   |       Static connections on this device:

|   |

|   |   * 0/SEP#0:0=3D=3D>0/Radio#0:0

|   |   * 0/Radio#0:0=3D=3D>0/SEP#0:0

|   |   * 0/SEP#1:0=3D=3D>0/Radio#0:1

|   |   * 0/Radio#0:1=3D=3D>0/SEP#1:0

|   |   * 0/SEP#2:0=3D=3D>0/Radio#0:2

|   |   * 0/Radio#0:2=3D=3D>0/SEP#2:0

|   |   * 0/SEP#3:0=3D=3D>0/Radio#0:3

|   |   * 0/Radio#0:3=3D=3D>0/SEP#3:0

|   |   * 0/SEP#4:0=3D=3D>0/Radio#1:0

|   |   * 0/Radio#1:0=3D=3D>0/SEP#4:0

|   |   * 0/SEP#5:0=3D=3D>0/Radio#1:1

|   |   * 0/Radio#1:1=3D=3D>0/SEP#5:0

|   |   * 0/SEP#6:0=3D=3D>0/Radio#1:2

|   |   * 0/Radio#1:2=3D=3D>0/SEP#6:0

|   |   * 0/SEP#7:0=3D=3D>0/Radio#1:3

|   |   * 0/Radio#1:3=3D=3D>0/SEP#7:0

|   |   * 0/SEP#8:0=3D=3D>0/Replay#0:0

|   |   * 0/Replay#0:0=3D=3D>0/SEP#8:0

|   |   * 0/SEP#9:0=3D=3D>0/Replay#0:1

|   |   * 0/Replay#0:1=3D=3D>0/SEP#9:0

|   |   * 0/SEP#10:0=3D=3D>0/Replay#0:2

|   |   * 0/Replay#0:2=3D=3D>0/SEP#10:0

|   |   * 0/SEP#11:0=3D=3D>0/Replay#0:3

|   |   * 0/Replay#0:3=3D=3D>0/SEP#11:0

|   |   * 0/SEP#12:0=3D=3D>0/Replay#1:0

|   |   * 0/Replay#1:0=3D=3D>0/SEP#12:0

|   |   * 0/SEP#13:0=3D=3D>0/Replay#1:1

|   |   * 0/Replay#1:1=3D=3D>0/SEP#13:0

|   |   * 0/SEP#14:0=3D=3D>0/Replay#1:2

|   |   * 0/Replay#1:2=3D=3D>0/SEP#14:0

|   |   * 0/SEP#15:0=3D=3D>0/Replay#1:3

|   |   * 0/Replay#1:3=3D=3D>0/SEP#15:0

|     _____________________________________________________

|    /

|   |       TX Dboard: 0/Radio#0

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 0

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, CAL_LOOPBACK

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 1

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, CAL_LOOPBACK

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 2

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, CAL_LOOPBACK

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 3

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, CAL_LOOPBACK

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0__________________________

|   |    /

|   |   |       RX Frontend: 3

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, RX1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|     _____________________________________________________

|    /

|   |       TX Dboard: 0/Radio#1

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 0

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, CAL_LOOPBACK

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 1

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, CAL_LOOPBACK

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 2

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, CAL_LOOPBACK

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|   |     _____________________________________________________

|   |    /

|   |   |       TX Frontend: 3

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, CAL_LOOPBACK

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|     _____________________________________________________

|    /

|   |       RX Dboard: 0/Radio#1

|   |     _____________________________________________________

|   |    /

|   |   |       RX Frontend: 0

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, RX1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|   |     _____________________________________________________

|   |    /

|   |   |       RX Frontend: 1

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, RX1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|   |     _____________________________________________________

|   |    /

|   |   |       RX Frontend: 2

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, RX1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

|   |   |   Uses LO offset: No

|   |     _____________________________________________________

|   |    /

|   |   |       RX Frontend: 3

|   |   |   Name: FBX

|   |   |   Antennas: TX/RX0, RX1, SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM

|   |   |   Sensors: temperature, rfdc_rate, lo_locked, nco_locked

|   |   |   Freq range: 1.000 to 4000.000 MHz

|   |   |   Gain range all: 0.0 to 0.0 step 0.0 dB

|   |   |   Bandwidth range: 1600000000.0 to 1600000000.0 step 0.0 Hz

|   |   |   Connection Type: IQ

| | | Uses LO offset: No Do you have any idea of what is happening or could=
 you help me to fix the error? Thank you all!!!

--_000_CH0PR10MB5179F6CDC06E17C3A7AE5FF09932ACH0PR10MB5179namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;
	mso-ligatures:none;
	mso-fareast-language:DE;}
span.EmailStyle24
	{mso-style-type:personal-reply;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:11.0pt;
	mso-fareast-language:EN-US;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US">Hi Rub=C3=A9n,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;mso-fareast-language=
:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">To me this looks like a network issue. From your pri=
ntout I can see that you call uhd_usrp_probe on the good device itself. Hav=
e you logged into the erroneous device
 and run uhd_usrp_probe there just to verify? Have you checked that the IP =
configuration is correct? We have seen some weird things with wrong routes,=
 IP addresses in the wrong subnet, using two SFP connections crossed and so=
 on.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">Some of them have been collected in our manual:
<a href=3D"https://uhd.readthedocs.io/en/latest/page_usrp_x4xx.html#x4xx_ne=
twork_troubleshooting_tips">
https://uhd.readthedocs.io/en/latest/page_usrp_x4xx.html#x4xx_network_troub=
leshooting_tips</a><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">A typical setup is having the X440 connected via the=
 RJ45 connector to either the host directly or via a switch (plus the SFP c=
onnection for data). If this network uses
 DHCP it takes you the burden to configure the IP addresses properly. For u=
hd_usrp_probe this is sufficient and with that it should return the expecte=
d output. For the actual streaming it may make sense to open the session wi=
th those arguments: addr=3D[the IP
 of the 10 Gbps interface],mgmt_addr=3D[the IP of the RJ45 interface].<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">I hope that helps,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
Rub=C3=A9n Serrano via USRP-users &lt;usrp-users@lists.ettus.com&gt;
<br>
<b>Sent:</b> Thursday, August 21, 2025 9:00 AM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] Error with ettus x440: Failure to c=
reate rfnoc_graph.<o:p></o:p></span></p>
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
<p>Hi All,<o:p></o:p></p>
<p><strong><span style=3D"font-family:&quot;Aptos&quot;,sans-serif">I am tr=
ying to run the following command with a configurated ettus x440:</span></s=
trong><o:p></o:p></p>
<p><em><span style=3D"font-family:&quot;Aptos&quot;,sans-serif">uhd_usrp_pr=
obe</span></em><o:p></o:p></p>
<p><strong><span style=3D"font-family:&quot;Aptos&quot;,sans-serif">, and i=
 am getting the next (complete) output:</span></strong><o:p></o:p></p>
<pre><code>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; UHD_4.=
8.0.heads-v4.8.0.0-0-g308126a4</code><o:p></o:p></pre>
<pre><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mg=
mt_addr=3D192.168.0.3,type=3Dx4xx,product=3Dx440,serial=3D34B2ACC,name=3Dni=
-x4xx-34B2ACC,fpga=3DX4_400,claimed=3DFalse,addr=3D192.168.0.3</code><o:p><=
/o:p></pre>
<pre><code>[INFO] [MPM.PeriphManager] init() called with device args `fpga=
=3DX4_400,mgmt_addr=3D192.168.0.3,name=3Dni-x4xx-34B2ACC,product=3Dx440,clo=
ck_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.</code><o:=
p></o:p></pre>
<pre><code>[WARNING] [UDP] The send buffer could not be resized sufficientl=
y.</code><o:p></o:p></pre>
<pre><code>Target sock buff size: 2500000 bytes.</code><o:p></o:p></pre>
<pre><code>Actual sock buff size: 1048576 bytes.</code><o:p></o:p></pre>
<pre><code>See the transport application notes on buffer resizing.</code><o=
:p></o:p></pre>
<pre><code>Please run: sudo sysctl -w net.core.wmem_max=3D2500000</code><o:=
p></o:p></pre>
<pre><code>[ERROR] [RFNOC::GRAPH] Caught exception while initializing graph=
: RfnocError: OpTimeout: Control operation timed out waiting for ACK</code>=
<o:p></o:p></pre>
<pre><code>Error: RuntimeError: Failure to create rfnoc_graph.<o:p></o:p></=
code></pre>
<pre><o:p>&nbsp;</o:p></pre>
<p><strong><span style=3D"font-family:&quot;Aptos&quot;,sans-serif">I know =
that this is not an error due to the uhd installation because I have purcha=
sed another one ettus x440 device and the output obtained with the same com=
mand is completely different:</span></strong><o:p></o:p></p>
<p><o:p>&nbsp;</o:p></p>
<pre><code>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107800; UHD_4.=
8.0.0-0-g308126a4</code><o:p></o:p></pre>
<pre><code>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mg=
mt_addr=3D127.0.0.1,type=3Dx4xx,product=3Dx440,serial=3D34B2ACC,name=3Dni-x=
4xx-34B2ACC,fpga=3DX4_400,claimed=3DFalse</code><o:p></o:p></pre>
<pre><code>[INFO] [MPM.PeriphManager] init() called with device args `fpga=
=3DX4_400,mgmt_addr=3D127.0.0.1,name=3Dni-x4xx-34B2ACC,product=3Dx440,clock=
_source=3Dinternal,time_source=3Dinternal,initializing=3DTrue'.</code><o:p>=
</o:p></pre>
<pre><code>&nbsp; _____________________________________________________</co=
de><o:p></o:p></pre>
<pre><code> /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Device: X400-Series Device=
</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp;&nbsp; ______________________________________=
_______________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mboard: ni-x=
4xx-34B2ACC</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; module_pid: 42048</code><o:p></o:p><=
/pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; module_rev: 4</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; module_serial: 34B2ACC</code><o:p></=
o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; pid: 1088</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; rev: 6</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; rev_compat: 6</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; serial: 345A6FE</code><o:p></o:p></p=
re>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; MPM Version: 5.3</code><o:p></o:p></=
pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA Version: 8.3</code><o:p></o:p><=
/pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA git hash: 8e780be.clean</code><=
o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; Device DNA: 40020000017166A5242062C5=
</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; RFNoC capable: Yes</code><o:p></o:p>=
</pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; </code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; Time sources:&nbsp; internal, extern=
al, qsfp0, gpsdo</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; Clock sources: mboard, internal, ext=
ernal, nsync, gpsdo</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: ref_locked, fan0, fan1, tem=
p_fpga, temp_main_power0, temp_main_power1, temp_scu_internal, temp_sample_=
clock_pcb, temp_dram_pcb, temp_tmp464_internal, temp_power_supply_pcb, gps_=
alarm, gps_enabled, gps_gpgga, gps_locked, gps_phase_lock, gps_sky, gps_sur=
vey, gps_time, gps_tpv, gps_warmup</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp;&nbsp; ______________________________________=
_______________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFNoC blocks=
 on this device:</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; </code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#0</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#1</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#0</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#1</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp;&nbsp; ______________________________________=
_______________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Static conne=
ctions on this device:</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; </code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#0:0=3D=3D&gt;0/Radio#0:0</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#0:0=3D=3D&gt;0/SEP#0:0</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#1:0=3D=3D&gt;0/Radio#0:1</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#0:1=3D=3D&gt;0/SEP#1:0</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#2:0=3D=3D&gt;0/Radio#0:2</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#0:2=3D=3D&gt;0/SEP#2:0</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#3:0=3D=3D&gt;0/Radio#0:3</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#0:3=3D=3D&gt;0/SEP#3:0</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#4:0=3D=3D&gt;0/Radio#1:0</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#1:0=3D=3D&gt;0/SEP#4:0</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#5:0=3D=3D&gt;0/Radio#1:1</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#1:1=3D=3D&gt;0/SEP#5:0</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#6:0=3D=3D&gt;0/Radio#1:2</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#1:2=3D=3D&gt;0/SEP#6:0</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#7:0=3D=3D&gt;0/Radio#1:3</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#1:3=3D=3D&gt;0/SEP#7:0</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#8:0=3D=3D&gt;0/Replay#0:0</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#0:0=3D=3D&gt;0/SEP#8:0</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#9:0=3D=3D&gt;0/Replay#0:1</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#0:1=3D=3D&gt;0/SEP#9:0</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#10:0=3D=3D&gt;0/Replay#0:2</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#0:2=3D=3D&gt;0/SEP#10:0</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#11:0=3D=3D&gt;0/Replay#0:3</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#0:3=3D=3D&gt;0/SEP#11:0</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#12:0=3D=3D&gt;0/Replay#1:0</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#1:0=3D=3D&gt;0/SEP#12:0</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#13:0=3D=3D&gt;0/Replay#1:1</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#1:1=3D=3D&gt;0/SEP#13:0</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#14:0=3D=3D&gt;0/Replay#1:2</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#1:2=3D=3D&gt;0/SEP#14:0</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#15:0=3D=3D&gt;0/Replay#1:3</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#1:3=3D=3D&gt;0/SEP#15:0</=
code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp;&nbsp; ______________________________________=
_______________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard: 0=
/Radio#0</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; TX Frontend: 0</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, CAL_=
LOOPBACK</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; TX Frontend: 1</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; | &nbsp;&nbsp;|&nbsp;&nbsp; Antennas: TX/RX0, CAL_=
LOOPBACK</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; TX Frontend: 2</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, CAL_=
LOOPBACK</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; TX Frontend: 3</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, CAL_=
LOOPBACK</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0__________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; RX Frontend: 3</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, RX1,=
 SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp;&nbsp; ______________________________________=
_______________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard: 0=
/Radio#1</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; TX Frontend: 0</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, CAL_=
LOOPBACK</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; TX Frontend: 1</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, CAL_=
LOOPBACK</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; TX Frontend: 2</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, CAL_=
LOOPBACK</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; TX Frontend: 3</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, CAL_=
LOOPBACK</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp;&nbsp; ______________________________________=
_______________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard: 0=
/Radio#1</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; RX Frontend: 0</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, RX1,=
 SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; RX Frontend: 1</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, RX1,=
 SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; RX Frontend: 2</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, RX1,=
 SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</co=
de><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ________________________=
_____________________________</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; RX Frontend: 3</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: FBX</code><o:p><=
/o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX0, RX1,=
 SYNC_INT, SYNC_EXT, CAL_LOOPBACK, TERM</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: temperature, =
rfdc_rate, lo_locked, nco_locked</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 4=
000.000 MHz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to=
 0.0 step 0.0 dB</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 16000=
00000.0 to 1600000000.0 step 0.0 Hz</code><o:p></o:p></pre>
<pre><code>|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</c=
ode><o:p></o:p></pre>
<p>| | | Uses LO offset: No <strong><span style=3D"font-family:&quot;Aptos&=
quot;,sans-serif">Do you have any idea of what is happening or could you he=
lp me to fix the error? Thank you all!!!</span></strong><o:p></o:p></p>
</div>
</body>
</html>

--_000_CH0PR10MB5179F6CDC06E17C3A7AE5FF09932ACH0PR10MB5179namp_--

--===============4084872013509844205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4084872013509844205==--

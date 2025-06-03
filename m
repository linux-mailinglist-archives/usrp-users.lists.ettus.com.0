Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1233AACC1B8
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jun 2025 10:07:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EADAA385D9D
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jun 2025 04:07:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1748938060; bh=gCnTO2PXYiPouhsS8vzDGTVeylkBXqXvRGubkypQFGQ=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Uiu0lyNz4SmwFNqN2aa2KIlkkMZp4vLETHadsi40PGEOuFyvkEwghCRoynGmjfE8L
	 tp0prtpnyPjinoqxhwmZ3tT5d1u1t0KW2usOX1mxcISRhBqzNkttwkAecZMi6uiRnz
	 pADuHqXVMbWWYQM7YJ/8QzZWbL7gsZevNVR6jxud1peN5SEjhA069BHMuYrdv12V5C
	 VR5XUQLJmvkAFyfP85Min8ROFX2/Im6WKNpWxO4hPQKzOo9q06XxLmIvUX2BNjvLjr
	 KDjqUfUfxK+4qHiSzxMfdgNyX3SMKCNUJx2tklByVt4bK3P+r/AnqX9yBjx7fs6ouy
	 eIrIMZ88u9B7w==
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
	by mm2.emwd.com (Postfix) with ESMTPS id B5023385C40
	for <usrp-users@lists.ettus.com>; Tue,  3 Jun 2025 04:06:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="3EvG1/os";
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="lUHTbWPb";
	dkim-atps=neutral
Received: from pps.filterd (m0144091.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5537xDri018449
	for <usrp-users@lists.ettus.com>; Tue, 3 Jun 2025 08:06:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=email; bh=s6B+D7ANlFjkQTZ5pjdZXgAxhZpv
	LTliCCTt0+kyetY=; b=3EvG1/os4vBMp6idC/a4ElNBoVOBIlsQELqSCMwaR50u
	WwbZL5doHj/1tyLnAotvXafgPO9gO+qUhpWYgQXGEj3GzlN075Fh/Q8u78hB/OkJ
	fKUoZtqSg6f2pR+IykyO/GzKlYoEg9lA6EZnZ36q0PphmNAAY9rSvM1EAyUw8iMf
	GgVdZmDdNf77Jvi1IZ1qUTHZpWCM2THgoKn4LfcwGt5O6QpORI88+dM7ZM0VzeXZ
	4X5ErjBACxL1XVqPC8xPR/27Fw22cNLze52n8ckIg1P+OAL8gSRC5za/paLhSo08
	UTlfKkIKa8xnbh5LRdVq05SuOeMpBx1eABwPDvEl8A==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12on2044.outbound.protection.outlook.com [40.107.243.44])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 471w4u01s4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Tue, 03 Jun 2025 08:06:44 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hgJ5tuPj7Axb8xB65fe/HocGyXxqQEBF36LU+yJEZxku2bAVFnmLuUROSj9x05Wb65NqceoVEQCuny2I3vj7pxKptUZhUHA7UsES2k2QTTSUXZujntKezI4JfdLgwtvMebyXIpy4KyqfpPievojeAvDCiG7TtnWSRUL1ydrhLPxe6RqLvtKN3ryHXROJ6QycJWXdB9ZK4dgUpfcT1cCEGh/utFkdGbn5w8poG7WGXq23Kzy9XB6VpnHgp4eDPmmdY73yF185YC2AjOGykNI9U5C2LpUTgkkKE7cCMpKGNlz047X0/okkJW2fR9HTLnDYUrZxoN1jqBwj80x9x8OGlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9jGC48QK8XaEUAhAUkGd+gGUSAHu9sohOodajVy8oas=;
 b=y/KvYjx6FsLKzkqAtCVMAe5X+NaZriJPvswkooAyW059wB2+yiIVnWtdmWYrKqSe5+oLzC2ymUIaLyBG8gU5X+dPlXOp+i6+oMqL9K5QoQPzqcrNFIpbZ0T9uWajgzzIAqMVoQO1Z+27zsjKrfEOb/2yOEGJoQ2uNO9OTUeOgzJgMSmxi6QZIrlaTiFr+TduQes7X2ZzucV1krcRB8hGiImJeCTonXtCK5wlZOdzmYAv+CqkDxfP+3u8eEFF5url1tggTyWZ+ebdzAjpm0JMDWnDti5rX64v5dKFkzopDWkI0wN3qyMtRBOv/TaogvvqNn2cB9FfNhTfy8DijBav7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9jGC48QK8XaEUAhAUkGd+gGUSAHu9sohOodajVy8oas=;
 b=lUHTbWPb/mVyIe6Dtovp7J2WAUEfr7pJ6cHE+vq/cb1lMkKb37BLu+WYAdB5+ZY0btTDEYoZ0P0LBhVywnaLSdllf1qrpKVvmjVYElCRjIT/afkLsQD4el3DADOTi6bEk9yGImcPV7gJwOX+nimfFeSbXpWi5qEjX0+pqt7ohXREC3XzkxLI1TfGS1BLo3U9Qeo//82IpFn82mQYcXYFlRl0ogSTgDX6XeQjuqQ6OFair7pGwdttDSiw38m8XzV3+qG5rbeQwkSYyT6ITBTuLK9DNyLehpfMDa6c6jEOqpJHlevA0ZaoepWVqlqMLXxSConOLjI0Ldg427RPrX628Q==
Received: from CH0PR10MB5179.namprd10.prod.outlook.com (2603:10b6:610:c7::21)
 by PH0PR10MB4567.namprd10.prod.outlook.com (2603:10b6:510:33::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.34; Tue, 3 Jun
 2025 08:06:34 +0000
Received: from CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9]) by CH0PR10MB5179.namprd10.prod.outlook.com
 ([fe80::d078:840:de7d:57d9%5]) with mapi id 15.20.8746.035; Tue, 3 Jun 2025
 08:06:34 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] X410 Initialization Failure - "RFDC is not powered
 on"
Thread-Index: AQHb1F5rtcrpreXxX0yAxMfGW6A8eA==
Date: Tue, 3 Jun 2025 08:06:33 +0000
Message-ID: 
 <CH0PR10MB5179ACD6E0ACE55DB89DBD86996DA@CH0PR10MB5179.namprd10.prod.outlook.com>
References: <WLsLmUe4DgDm7LuakNzVX3q1TlDhDhFYq8dtpr6tLpQ@lists.ettus.com>
In-Reply-To: <WLsLmUe4DgDm7LuakNzVX3q1TlDhDhFYq8dtpr6tLpQ@lists.ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ActionId=4e6299e3-967a-4a11-bc9c-c52826743b47;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_ContentBits=0;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Enabled=true;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Method=Privileged;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Name=Public;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SetDate=2025-06-03T07:30:35Z;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_b74dbf3d-dd19-4e95-b2d0-8dffb6ec560c_Tag=10,
 0, 1, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR10MB5179:EE_|PH0PR10MB4567:EE_
x-ms-office365-filtering-correlation-id: 727f78d1-2f6a-4265-6bcb-08dda2758e6f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018|8096899003|7053199007;
x-microsoft-antispam-message-info: 
 =?utf-8?B?QWlVaEJjSE1iNDdISElsTWJSK1F2RllPRmI0QlRLMGQrdHgzZVdLaGE0cE0x?=
 =?utf-8?B?NUkxMXNlbEo3OERZaTRVUHlhYWVtNThoUGRCd2w4WXo3QS94RERoanhlK3Ir?=
 =?utf-8?B?SExLbFRaZ0pQVTlMdGpZOEd1Z2h3WXZLa0ljVGJjbmxBVWE0UzFLODBQanhM?=
 =?utf-8?B?emVUVDhPNTk4YXNTOSs5UXhOOUFJa2tMeEdiKzhaZE1Qam1CSzVYeVAySWJD?=
 =?utf-8?B?MWttVG5RMVZWbDN4QlIvakpGVDlCY3hycEdZc0VKSjllSUZiUjk1djBCVlp0?=
 =?utf-8?B?L3pxZ0Naa0pzeE0wb2dnbmZSQXEwKzB5QXI4Smdadks0c2FkY00wY21LZ2VL?=
 =?utf-8?B?TVpzb1B4RTNQektFUmVwaFpVRWZTbEY1a2dMa3BTR2RWc3dxNmQxMkJ2UnZo?=
 =?utf-8?B?YnNWV2xDWURsMzNJdXlSdjdzQVNCa0ZYdi9SUk8rdHczT0tNckk1UE5FZjBk?=
 =?utf-8?B?Tis4NWtCcU5QVEZEby91OHFkQ1FwdlRhd3BOYjViSXJZZTNuY2NHZXphelgw?=
 =?utf-8?B?bUtZcUJySGIybjZiZk5oY0pvQ3QwcUdibTVUYTJWSmE0emFqd05COVNYS0FB?=
 =?utf-8?B?c2xlTUdPaGFBZkhITXJJcHVXTnZDSmhLcU9sTFgxejVMd3k1TjJmQ0I3dGtF?=
 =?utf-8?B?UXZTbTBmU3lYM0FTRnZGYzFmOUtTaDhtSlE1MTd1ZWo3c3ZES21JT3F4emlL?=
 =?utf-8?B?RWRYUWJIV0NzN2NsUTM1Y3hHNGovaFhsanR3M3RQN28zOTJwSzFZNEYzQXkz?=
 =?utf-8?B?czlBa002eC83bE9rY0hGcnkwc2tGS3NSbmhMTnhkY3pyV3g2OWZpTTdFb3FD?=
 =?utf-8?B?T09iSTJESE5FaTN1eGcrdXZ4Yzczc1R3MWZyT2ZWaUtxYWZjWGdJSlczSTRr?=
 =?utf-8?B?dy9xTUZLSHBWbXdWUWVESmVyZGpCQVErSkZSblJxb2d3MS9Fcy80czdGaUF0?=
 =?utf-8?B?UHdpM3VDU1p2WnkvQ2xGRHdUVFp2UldoR0pncThoZDdjRkpJRUxEdGwwRlRt?=
 =?utf-8?B?em5pcy96YU9sd1gvazhsM00rVHZ2Q3VmNHIyOUJJQ0NDV21KZ0ZKZlBJczd1?=
 =?utf-8?B?S2lXdFoxUUhYWDdqR3A4dUNpS0FaMHZWRHlYM2pYVG4zOHd3dk1YMy96ZDlo?=
 =?utf-8?B?ZUY4aURScjBLUGdZYS9jS0lLK3dpN29vNzBVNDNvdXNxSGhKRGNKUHlkUnVK?=
 =?utf-8?B?aHJJS2pqL3Z5ZDJhTjF5YlE1NXpwTC9LaG40STVTenhiWkVTK3RWQ2Ftckkr?=
 =?utf-8?B?Smx3QmNTM1gvME1YTHJiU3cwWWdQQVJRM3FpTkpYbDNYdzNNakRFZ1ZQeXR1?=
 =?utf-8?B?cm0vb0tPRjhUbjEzNXpSMnBWNGloNGRrdEtSa0FmSnpadkRWNTRueDh6bVdu?=
 =?utf-8?B?bHVhMUh0VCt3UTNYdE5Jd3lTWGFtelY4d2toUHJ1c1R0Vzc4a2hQc3Nkd1Z1?=
 =?utf-8?B?K2xEd2VlNkRNS1VyMk94RUN5eWpEZUR4TzdDb00yR0NTd0h4bllna1RvVkEx?=
 =?utf-8?B?UzNlZ0ZHbGFDYTFmYUF6ZFV1QUgrdzVSbEE5djhhblptdXVaMDh1V0Rza1ZN?=
 =?utf-8?B?Q08vNnNPd1Z2cG1kc2ZPc3F1YUhIVXA3azlEZU9LUDJZZXhsZGRISHc4UmV1?=
 =?utf-8?B?MVRONkNnWGhtK1hRNVIvZ3hFV2hjZ2ptS3RPTGpzU0I3eE94TWo0d0xQaEQx?=
 =?utf-8?B?eDJvRmRqK0hGZGtnTWZWVCsxV0Y5VnpkWUpIKzFhSUFmUkptMTJRbUpxMEJU?=
 =?utf-8?B?RFVMaXgwc3lpUlFDdDBaZi9DQXk0ZVpsSG1FUkNxQnRqU05qMDdSVzVHelFB?=
 =?utf-8?B?RTFJMTlWM01tTk1UbEdZTHBFcFlPeVRNMjcrZ0oxMTM1NHE4OEl0YzU5dldC?=
 =?utf-8?B?d1VCaWF5OHBBOG5JeW1iZDBxenZzeHl2OWordmpEU2NucFVEMTR3NDZMZVRq?=
 =?utf-8?Q?BrXiU7/1bik=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CH0PR10MB5179.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(8096899003)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?eDJnSnh5WWQ0dmdxSS90dlNneWVWdUlMbWpBUGREc2pheWNteFRmUlZhSW4w?=
 =?utf-8?B?R3lOUzNoWU5KN2wzWTc3T2FJTlJ6UERZM1M5NDRIUHRyYkVIZkRLdlNnbHZp?=
 =?utf-8?B?WHdUNHVVNnR3OUpoMzVhb2RKeGRUYnIwT2NRTjMzNnhRRnFlR3BNSzRFZXlN?=
 =?utf-8?B?bmFPd1N6MXZpaExDRVZLNW11Vm8yR3Q3N3EzQ291c0g4QXQrVkNLZEpKVzZW?=
 =?utf-8?B?emhPYkdxT2E1bmVWaHN1QmJmWUt0WUVNQjdVMnNnMFlBTWlzY3lMcEZvYkJm?=
 =?utf-8?B?S1NDTUxxZ1pyK0RzUURxQzdQVU1hSUVqWFZlT0t1WU5jbVN0VG5meWNJTjNJ?=
 =?utf-8?B?eVJIc2JwYTRCNC8xVzYyNHNDSnNBZHljRzYvdXdicWxxTzdsR2RrRm16UzVV?=
 =?utf-8?B?ZEY3K0RzMUlqUmtzT0VMVjBOTy9WM1M0d1dMZTZHWEhLaHNONVJWZDB4ZmxZ?=
 =?utf-8?B?TWMyaGd4V05HUitoQkNtQVJhQ2I5blp4L1J3cTZZNWlsbjNveklEQzMxWG1l?=
 =?utf-8?B?R0xjQTIzQ2xrdThPb09UUkdPd3BFUUIrd1RWK2UzeUhRTEFyYUdFRzduUVlB?=
 =?utf-8?B?T0xqMlFVS0lYa280Z05KV1lCdWRKOVk0V0JzUXR3R0ZFcmZOWUxVTFNtNURM?=
 =?utf-8?B?RXFXRmtOSGdCT29pRC9LYmZjMGpwdUtPcGhpenM0T0lLM1RGSHlWVDlrRDZG?=
 =?utf-8?B?MlNGc1dDUkROTWNYOG01cGRVcDNhNmU3RC82cmdDaG1neWplaHdXU0Vlbmht?=
 =?utf-8?B?a2orcElOc3pXdUtWQnVIUG9YZDVjM1NmZVBKTGlSOHEvTU5HN29Gdm9mcCtY?=
 =?utf-8?B?QjhubEt3ZkQycVJDd3JUOHdkNTdqL054WTNQczl4RUowaXNVQTVJNGdJZTVS?=
 =?utf-8?B?WVhITUJHWUJJQXVCVmFyZ3MybUhLM2d1dzhBQU5XanljdEM3ZmJlN2NRT21p?=
 =?utf-8?B?LzJjcFFEOFBzRDVyTlZZcVlIZ05NTDdWcElKZDRHT3orbzVPalk4RTFJSVVO?=
 =?utf-8?B?QXRyQmFCRG9HMmE5aVRLOWdYNnVlbHAvRVVJSXA4RDdocTFwVFlPeGJtazdP?=
 =?utf-8?B?RThXVmNEUDJrbzBiMUJPY1NsNzFaemRQNmRpMFVnTVhzRjVNc2s2R1pndkJE?=
 =?utf-8?B?ZWowV05aRlVONVRCdTdvOEpzRU92N3BPdEVpMHcrbDZwLys2N0kzR1ErSXg3?=
 =?utf-8?B?L0JxTzQwcEUvMXNITXVzcXVGRjNab2ZnQlROU29hMXJtKzZpMWdWYXYySW4z?=
 =?utf-8?B?dm00Skd5M2c2TGFueW9TbUI1OFVJTis4T29iV1YrM2V3M0JKMkRKNCtKdU5o?=
 =?utf-8?B?M3FpRlhNc3lCSlpmUlJzbnFRdlhXRzErY2hPcEJyMHY4eHNEbUxDSkIrbmZG?=
 =?utf-8?B?YkJpSEI3YmUyN3hpbjM0ODFhczNsTWQ4MHJBMThrL0xFUnZkaVVURWZHSm9t?=
 =?utf-8?B?d1NVSnpiZmhOTUc3NTJaSW1YS0ZxeXc2dmpDdlBMRGVvbG5lc0szd0lBUW1i?=
 =?utf-8?B?QmVvWS9iZG1vTFg5bFdiRVlYazQwdVRuRzE5citIRXFHQmRWOVVld2EwQ1pj?=
 =?utf-8?B?QXV3RXhjTVIva2tqWmY4SkhjSUxSY3RXaERXQktyZmRuaGFQVTVONzV4clNG?=
 =?utf-8?B?ajgrSnhqQksyMkVTMC9IR1E0T1JuZG5PbHZCTTNLVE1qSXpnSVVpKzQ1cXZq?=
 =?utf-8?B?NGZOajNQTHVsWGFsOHFvM0YvSkQzS3dYV2pZemJhUVJmZlhqdXlReFZrU1o0?=
 =?utf-8?B?TWVaaFNTcGRvZjFKM1F6WlNORm1haFJwRHNxbGJSM2M5Y3Y5cU9FNFFvL3RG?=
 =?utf-8?B?S1BiMXRvNk1zMDROayt1a2czQkxaTzJyaW1BWm5UK00rL2xjM1BmSU54VDFK?=
 =?utf-8?B?Y3llU0pZVVlYMGtBTnZoWmcxQk5LYXdETE5tckxwYloyVmdkS1oxcGF2aTJE?=
 =?utf-8?B?NTJtbWMvR05Jci81U2F0NEVOeVJQWkVENWtyVmw4NndvR3huUTFOckhsdUZm?=
 =?utf-8?B?Q3lTTmQzZjZGK0VCcGJ3dndHWThEWUZOVGIwQzdZeUhtZ0xVaWExY2dhNy93?=
 =?utf-8?B?RlQ3eXI5UzhDT1B3U0tCUm1iV0xYOEZaaUN4Zk4xMHJCQjZVbW5KZHlPNXQx?=
 =?utf-8?B?SzYyNUQ5M1dKeVlJZ3U4aFRaaElkU1NTTEJ3aTdyVEpralVaYitZY1QwZkRr?=
 =?utf-8?B?aEE9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR10MB5179.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 727f78d1-2f6a-4265-6bcb-08dda2758e6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2025 08:06:34.0484
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /InOeBXRkBVOUqRJFXt4MP+CfmfmjjeM3phtOGhDtXEbxYwXAA0IvwkfQBJZ6YMu7lDAmCyzwhiPmwR+h3RASN00lDEq7WRBRudXFfDfFb8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB4567
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDA3MCBTYWx0ZWRfX07RzkAjMtqaC e2duoGcG+HjNthTUf6AzkE1tzfXJOz7l2KN+0u1mAeT+7GU7yx1UnZJiTWJtzzcwo9/vDXYMu41 9lzoL7UWRN4+oU6JpboxPFhQdEqrBaXrnqDE7VUPOU5/7rcZrPBluLWVaIAq7LFziTp64Fk+NtX
 6TWZ7KCehGjgvctksdBK/2p+mwNwYXdPRw0Hd/sKfeqhxiKMfghQevG/7veh4V2Wco8Y3Ct9eWM lbbOGL/02kqBuIbrweo242pEjb9Sr5CGvd9dBT7/M5YnacUaT7j/qic9PAL1uRhvkz2/J6+2R4m oVjIr/dFbOAzxjpucp6uuWjPa8U8dhef5SjewqxUYMZ44LkL5bzZ3PM0cSDQ9cQGmIJUCt2hmwJ
 /eHrg28HShPBDod6ZpSqjIP4/c3goGhH+zxlGSshOSzZm2rsOwa7AAtPlOjBHJ++93Le1C7i
X-Proofpoint-GUID: Dwl_6qiEeob8paFUl4dIaMQ62Mqc3Xh1
X-Proofpoint-ORIG-GUID: Dwl_6qiEeob8paFUl4dIaMQ62Mqc3Xh1
X-Authority-Analysis: v=2.4 cv=XO0wSRhE c=1 sm=1 tr=0 ts=683ead14 cx=c_pps a=S+bK3CcnjRkaVKfFm0nHhg==:117 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=6IFa9wvqVegA:10
 a=ZPWZ4rD8_x8A:10 a=RpNjiQI2AAAA:8 a=vSrsW07gAAAA:8 a=etiEgX_XAAAA:8 a=a90ClLeRZUxIZt2RqPAA:9 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=qa2TAwpaeKiCYM5opjYA:9 a=vo-EjDZAtKdUgY8w:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10
 a=frz4AuCg-hUA:10 a=d6mgd8-VJuVA-KfxNBt9:22 a=MLbIUA-Bjd6y1alW9qBG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 malwarescore=0 mlxscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 lowpriorityscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506030070
Message-ID-Hash: DHK6HXZOGKJ6QB2NZUN6KLFZ44L5G4PV
X-Message-ID-Hash: DHK6HXZOGKJ6QB2NZUN6KLFZ44L5G4PV
X-MailFrom: prvs=52495ef8e2=martin.anderseck@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X410 Initialization Failure - "RFDC is not powered on"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2MZM4CL2C5JSASZ7EOEU62LCAY7KQGVS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Anderseck, Martin via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Anderseck, Martin" <martin.anderseck@emerson.com>
Content-Type: multipart/mixed; boundary="===============1414082052799943286=="

--===============1414082052799943286==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH0PR10MB5179ACD6E0ACE55DB89DBD86996DACH0PR10MB5179namp_"

--_000_CH0PR10MB5179ACD6E0ACE55DB89DBD86996DACH0PR10MB5179namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

You write that your environment consists of an X410 running MPM at version =
4.8 while your UHD is 4.7. While in general that may work, I=E2=80=99d enco=
urage you to synchronize that. Nevertheless, this shouldn=E2=80=99t cause t=
he described error.
Another issue I see is that in the output of uhd_find_devices it states =E2=
=80=9Cfpga: n/a=E2=80=9D. However, this is probably the consequence of the =
=E2=80=9CRFDC is not powered on=E2=80=9D error. To exclude that: Is the dev=
ice running a fresh firmware image?
And probably the most important point here: The X410 may only be used with =
both daughterboards installed, otherwise it must not turn on its RFDC. So i=
t may be that your device does not recognize one or both daughterboards for=
 whatever reason. One indicator for that may be that you cannot read back t=
he daughterboard eeproms using the `eeprom-dump db0` and `eeprom-dump db1` =
commands. But all in all, I fear that RMA is the way to go forward.

/Martin

From: yokeshwaran.m@maxeyetech.com <yokeshwaran.m@maxeyetech.com>
Sent: Monday, June 2, 2025 9:24 PM
To: usrp-users@lists.ettus.com
Subject: [EXTERNAL] [USRP-users] X410 Initialization Failure - "RFDC is not=
 powered on"




I'm encountering a critical issue while attempting to initialize an X410 US=
RP device. The device is detected correctly using uhd_find_devices, but fai=
ls to initialize with uhd_usrp_probe. Below is a summary of the setup and t=
he error messages:

Environment:

  *   USRP Model: X410
  *   UHD Version: 4.7.0 (HEAD-0-ga5ed1872)
  *   MPM Version: 4.8.0.0-g308126a4
  *   OS: [Ubuntu 22.04]
  *   Device IP: 192.168.1.120

uhd_find_devices output:

serial: 322ED50 addr: 192.168.1.120 claimed: False fpga: n/a mgmt_addr: 192=
.168.1.120 name: ni-x4xx-322ED50 product: x410 type: x4xx uhd_usrp_probe ou=
tput:

[ERROR] [MPM.PeriphManager] RFDC is not powered on [ERROR] [MPM.PeriphManag=
er] Failed to initialize motherboard: RFDC is not powered on RuntimeError: =
RFDC is not powered on [ERROR] [MPM.RPCServer] Uncaught exception in method=
 set_device_id: 'NoneType' object has no attribute 'set_device_id' [WARNING=
] [MPM.PeriphManager] Cannot run deinit(), device was never fully initializ=
ed! It seems the device is partially detected, but the RFDC does not power =
on and the RPC server fails with a 'NoneType' error when attempting to set =
the device ID. Could you please advise on possible causes or corrective act=
ions to resolve this issue?

--_000_CH0PR10MB5179ACD6E0ACE55DB89DBD86996DACH0PR10MB5179namp_
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
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;}
code
	{mso-style-priority:99;
	font-family:"Courier New";}
span.EmailStyle21
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
/* List Definitions */
@list l0
	{mso-list-id:673579760;
	mso-list-template-ids:-984833874;}
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
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:=EF=82=A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">You write that your environment consists of an X410 =
running MPM at version 4.8 while your UHD is 4.7. While in general that may=
 work, I=E2=80=99d encourage you to synchronize
 that. Nevertheless, this shouldn=E2=80=99t cause the described error. <o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">Another issue I see is that in the output of uhd_fin=
d_devices it states =E2=80=9Cfpga: n/a=E2=80=9D. However, this is probably =
the consequence of the =E2=80=9CRFDC is not powered on=E2=80=9D error.
 To exclude that: Is the device running a fresh firmware image?<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">And probably the most important point here: The X410=
 may only be used with both daughterboards installed, otherwise it must not=
 turn on its RFDC. So it may be that your
 device does not recognize one or both daughterboards for whatever reason. =
One indicator for that may be that you cannot read back the daughterboard e=
eproms using the `eeprom-dump db0` and `eeprom-dump db1` commands. But all =
in all, I fear that RMA is the way
 to go forward.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US">/Martin<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11.0pt;mso-f=
areast-language:EN-US"><o:p>&nbsp;</o:p></span></p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,sans-serif">From:</span></b><span lang=3D"EN-=
US" style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> =
yokeshwaran.m@maxeyetech.com &lt;yokeshwaran.m@maxeyetech.com&gt;
<br>
<b>Sent:</b> Monday, June 2, 2025 9:24 PM<br>
<b>To:</b> usrp-users@lists.ettus.com<br>
<b>Subject:</b> [EXTERNAL] [USRP-users] X410 Initialization Failure - &quot=
;RFDC is not powered on&quot;<o:p></o:p></span></p>
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
<p><code><span style=3D"font-size:10.0pt">I'm encountering a critical issue=
 while attempting to initialize an X410 USRP device. The device is detected=
 correctly using uhd_find_devices, but fails to initialize with uhd_usrp_pr=
obe. Below is a summary of the setup
 and the error messages:</span></code><o:p></o:p></p>
<p><code><b><span style=3D"font-size:10.0pt">Environment:</span></b></code>=
<o:p></o:p></p>
<ul type=3D"disc">
<li style=3D"mso-list:l0 level1 lfo1"><code><span style=3D"font-size:10.0pt=
">USRP Model: X410</span></code><o:p></o:p></li><li style=3D"mso-list:l0 le=
vel1 lfo1"><code><span style=3D"font-size:10.0pt">UHD Version: 4.7.0 (HEAD-=
0-ga5ed1872)</span></code><o:p></o:p></li><li style=3D"mso-list:l0 level1 l=
fo1"><code><span style=3D"font-size:10.0pt">MPM Version: 4.8.0.0-g308126a4<=
/span></code><o:p></o:p></li><li style=3D"mso-list:l0 level1 lfo1"><code><s=
pan style=3D"font-size:10.0pt">OS: [Ubuntu 22.04]</span></code><o:p></o:p><=
/li><li style=3D"mso-list:l0 level1 lfo1"><code><span style=3D"font-size:10=
.0pt">Device IP: 192.168.1.120</span></code><o:p></o:p></li></ul>
<p style=3D"margin-left:.5in">uhd_find_devices output:<o:p></o:p></p>
<p style=3D"margin-left:.5in">serial: 322ED50 addr: 192.168.1.120 claimed: =
False fpga: n/a mgmt_addr: 192.168.1.120 name: ni-x4xx-322ED50 product: x41=
0 type: x4xx uhd_usrp_probe output:<o:p></o:p></p>
<p style=3D"margin-left:.5in">[ERROR] [MPM.PeriphManager] RFDC is not power=
ed on [ERROR] [MPM.PeriphManager] Failed to initialize motherboard: RFDC is=
 not powered on RuntimeError: RFDC is not powered on [ERROR] [MPM.RPCServer=
] Uncaught exception in method set_device_id:
 'NoneType' object has no attribute 'set_device_id' [WARNING] [MPM.PeriphMa=
nager] Cannot run deinit(), device was never fully initialized! It seems th=
e device is partially detected, but the RFDC does not power on and the RPC =
server fails with a 'NoneType' error
 when attempting to set the device ID. Could you please advise on possible =
causes or corrective actions to resolve this issue?<o:p></o:p></p>
</div>
</body>
</html>

--_000_CH0PR10MB5179ACD6E0ACE55DB89DBD86996DACH0PR10MB5179namp_--

--===============1414082052799943286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1414082052799943286==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gNkoNynwd2lQmgEAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 23:52:25 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE558E0F3
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 23:52:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 989F038C5AA
	for <lists+usrp-users@lfdr.de>; Mon, 26 Jan 2026 17:52:23 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1769467943; bh=VBlbObD4K1HABCZJ0olamFcNMZOq+nYHoofWEaVVIEg=;
	h=To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:From;
	b=qCfzQp/wkpkF/2hWUbDQqf96g080ZPp8AUlws9E04179cXnb6QInNHzyTH9Ke5dUA
	 zlLm7qXxt+/FK2Grt4T+sq1qFy6fuiMz+/4FOKq1QPNg8qqDQXptHiX1po/oVZE1OA
	 H8Madl/vTDO9QNqHemGuzZJlRjnfwwO/R29ysJJOaoAP8OvQCA+B8rZ0vRksaCOYSp
	 SxuLcfUYftWQ3oBWo9m5o3DWcZ4Eu2q2zw8dCDuQ2rWmwyQDGok2ZIQYH+VA9ffHoh
	 C14OUKPD5OClHTwi0my4Qd9MyM9XZB/e5RznYS9A2F53xNj8RzFn03IT7z3IT4cE8H
	 C6FsEcstwHnMw==
Received: from mx0b-00300601.pphosted.com (mx0b-00300601.pphosted.com [148.163.142.35])
	by mm2.emwd.com (Postfix) with ESMTPS id 36AF838C5AA
	for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 17:51:27 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=emerson.com header.i=@emerson.com header.b="HYhDrhxl";
	dkim=pass (2048-bit key; unprotected) header.d=Emerson.com header.i=@Emerson.com header.b="zcNGNuwF";
	dkim-atps=neutral
Received: from pps.filterd (m0484882.ppops.net [127.0.0.1])
	by mx0b-00300601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 60QDWkiY018823
	for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 22:51:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emerson.com; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	email; bh=G3X4i7YN/xlAeEQOtJEwUuguy5XCJUZI/O214QoEd/E=; b=HYhDrh
	xltGeAwEKw6s2ZNLQAb5twAteyUH5hIR3cDJDo4ZIZsDdP6aWBA3IegYUNwWW8K4
	4DPlDEjPsIEdIeoVSVR7EgSiRmYHj1+EXZumFRctud1Bmpn9r3rJVShPqa0X1Let
	F8gIbn078MjA6sWrpsM39FdlYkw/CjJNAoOTkRtq6OvZWzDgqvrnXo208sjWWg9z
	IKwcctjWymX9ybvD6uRFkLSGbBpeZ55KGpQQ8ZW3GMQFHVWRqA1RzPsZOEcNH0av
	VztZ/V7y0o3r3YjfXPNQc1NsiS/UHIo3vGXGUW0PMmAEPHL4H4IOyMP7rSuX6fUj
	mQnALqxQsjMnshdg==
Received: from sj2pr03cu001.outbound.protection.outlook.com (mail-westusazon11012033.outbound.protection.outlook.com [52.101.43.33])
	by mx0b-00300601.pphosted.com (PPS) with ESMTPS id 4bw97u3jn4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Mon, 26 Jan 2026 22:51:26 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zIjfnAJ3JMvqXoFomlGkdqNpmydLb2m8J8i7tqDoM+P45sHa43XHPPIqHDg5+rzWx88rFu3J3uMlE1yBzrYEFgj2Z1dVFiJQa7AZeeCwpnMRcOeDv9hx4tsoa0wv/TBpG64SiyLPsO1J9o6+Fz88ZscDG+nXsmZJOeM0eQ4DXPz6z4gLs83uy5IucUNU3yj/r/JfqNmw6tzRpDtfnLzjgS7SHYkWZxqOy6ha1XhmryaBeczb1K/m1wOelNFimeBWbMofmBfZI5B6/uNlzXE/macGmE9pM9xgAUZzQnk3mPRVP74qaVLJnNL8MuU3Gh6oTIX6Pn2CNmM/SmuasjhIOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G3X4i7YN/xlAeEQOtJEwUuguy5XCJUZI/O214QoEd/E=;
 b=MQW5O3wQF3QYPtwWwSvkUofuZb3Vxi+dlHIQ5VAZaTUGUM3UuJbNMsqS4pq1vzWiNXUXvQ1BVGiyeY9H3d6tMMq2TKDMZyD+aA11GBMKJ9Thbt473cFUOIk47JKYd63Kqa/rbP0UoZrtPeSC44/DGjD8nV51nXfzpYOsH91qYXMbL26DmJYNDv12WoV4FBJoR+YDx81kPGJ3n9ktE7btFdOHhFTmnVwUCX01lTBX0wESCFLMIhX+iHQXN3VClQIF7EPSStdZoWg7uY2nb8BoVfPVHD0veWlta3Hx3fOUsDF42a5zaIblsGL6jwJ96kn/Gd9SlHg1Q7Ot8h2+NpNczA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=emerson.com; dmarc=pass action=none header.from=emerson.com;
 dkim=pass header.d=emerson.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Emerson.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G3X4i7YN/xlAeEQOtJEwUuguy5XCJUZI/O214QoEd/E=;
 b=zcNGNuwFvCf2PXwFsDWOGCBbc9xHaaTY+AURy916K9db7PV8YEzEAIPxjVPO6Hc9IGu2dUQtCYmGR3jYJS0IyhZTD0ldUWwMEMqu3Zc3BJdamyBIVEeBX5eZ8AdVNaU6JojUwAthQ8ritRj6KT3oxFo/8q9Ej+aowZ1w7v6YoQrvKKfakNawiA3/3oKTVrGw45dskIbP+HaibuvP6l5nUycSbFJCr0QWFDPjJ5pkcV1W8wBrNpAPAt1yC7lyFq/9uMgnhVIDMwkBQNyokRHbRSfVdUoii7KFkTHb6B3OYlRht7ZKKoHaHWzMtZup9xK+/BidMhLXQbVwr7rXFbSf1g==
Received: from IA4PR10MB8397.namprd10.prod.outlook.com (2603:10b6:208:566::6)
 by DS7PR10MB7279.namprd10.prod.outlook.com (2603:10b6:8:e2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.16; Mon, 26 Jan
 2026 22:51:23 +0000
Received: from IA4PR10MB8397.namprd10.prod.outlook.com
 ([fe80::e003:71bb:d72e:338d]) by IA4PR10MB8397.namprd10.prod.outlook.com
 ([fe80::e003:71bb:d72e:338d%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 22:51:23 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: How to disconnect streamers on RFNoC graph
Thread-Index: AdyPFC0CxxyuMivHT+GE2Vm0xikg/w==
Date: Mon, 26 Jan 2026 22:51:23 +0000
Message-ID: 
 <IA4PR10MB8397396A89682AD790D1F38E8693A@IA4PR10MB8397.namprd10.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ActionId=4e9081f1-a9e3-4112-8612-99d992f565d4;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_ContentBits=0;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Enabled=true;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Method=Standard;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Name=Internal
 - No
 Label;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SetDate=2026-01-26T22:35:40Z;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_SiteId=eb06985d-06ca-4a17-81da-629ab99f6505;MSIP_Label_d38901aa-f724-46bf-bb4f-aef09392934b_Tag=10,
 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA4PR10MB8397:EE_|DS7PR10MB7279:EE_
x-ms-office365-filtering-correlation-id: 7c1d385c-3526-42ea-0684-08de5d2d6e2f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|8096899003|38070700021;
x-microsoft-antispam-message-info: 
 =?utf-8?B?dnBJdWxOZE1oMU1CbWlYTG00ZU85WER3eEdyUDNFZGpCNkZ2NXk5YVZHSC9K?=
 =?utf-8?B?elRJbmNTTmNBT2lZb3R6MkY4SHpWb1ZCdTdJTVBsaTBrTElmRFBpL0o4ZUpy?=
 =?utf-8?B?SUlSbkJXeFU3OW5XMFJueE1vak9PNHNWUHQ0RWxvTUdUMGJoWVI1NkZNV2Ny?=
 =?utf-8?B?MkFuUEROQnNwRUF3NG5ZQTVkTmRFZmNzYXdHRmVQdGVZMHRRZ1Y3U0pqcVJk?=
 =?utf-8?B?U29JMGNad0grbS9nOHlYVU9uaytnbTVNM1lnZGROOXQzSXprczVIS2FRSDFW?=
 =?utf-8?B?b1BwbjlCaHZKcEtIc293dWZ2Q0dGR1o4enJscVhmclEvWXFVeWIzd2Z5ZDl6?=
 =?utf-8?B?Y0c4UmE0NHhOeHkwQWh0ZVFpWjQxU1dOc044RGpXSFhObWpCNUNNeFVjdjB4?=
 =?utf-8?B?dW9NeW41SExUNmJCU05MREM5UTZXdWpmV0ZWNlpEdnlKblB0U1pxS2lrRThL?=
 =?utf-8?B?NDF4UEpES2Ryd01TQ1dXSlNEUFYrT3VQMU9YZ1JvZ25jUndHdUlFK0NQVWY0?=
 =?utf-8?B?UmkvV3ZhVVFSdWlaakxkWEZpWWhhQS94cGI1Z2h1MnJmRWNXWUVmS0FFZUlM?=
 =?utf-8?B?Z1A4eE1wQkdacktaTU1udll4Tkc0aDR2Wi9TT2xNeVlhSUNpVjRPbjkrak9z?=
 =?utf-8?B?WElGaFVDWVh6ckQ0L1IvWnJmT1Q1cndvWU9CS2NhOFFVNzZqOExiUnoyT093?=
 =?utf-8?B?Ti8vTlEzRUo5QkFmZCsvRndxK2VRZm1VcjJYRW9LblFGazRwWWtiMFZnQ0xM?=
 =?utf-8?B?azY3eXd4UVhHa2w5WWttQktkNUNZNngwekZ0MmRvMnIxbU8rSERyUi9sUWwx?=
 =?utf-8?B?eTVRS3ZrY25pVXdOaWluc3lSelhQajNxY0RHSEZXM1hmbXAyOXBIekNsaHVB?=
 =?utf-8?B?VU13ZEFKcjNhdk5jOFVSV1dNY2UrTHlwb2hhRncrWEt4N2tGdWNHTTFnTlhV?=
 =?utf-8?B?ZTBJRkR4N2I4ZjB1cXV5OEg0V1diRjRDQ1JEOU5GUnBONTE4NVI2MzEwRno5?=
 =?utf-8?B?QVpwcWlvUkpuTXhxeHZaMUhYTmhKcWZqQWcrckRaRVVHMWRhRzBSYWNXaFZ0?=
 =?utf-8?B?amdWUCtmd0NKdWc4OUZoTXR0ZnVROXByRzJ1Y0hIM3ZTbGpoSC9teDUzeU5p?=
 =?utf-8?B?VVphWmVEdnB0UWlBejV5a2NTRVQwMGQza3kzc29pRWl2RGhDVmFnMWRlVzVK?=
 =?utf-8?B?Q0xldllvaUJLM3BISlJDNjcyRTgrK1hmZkRDUEhHcmQ3ZjNXY3U2Y2hTSXFR?=
 =?utf-8?B?NFo5eWZWeExURDZZMlNIdzVjdkNORkRVb3dabWM4d1lWTzJUTWVCZGlIczdR?=
 =?utf-8?B?Qy9qNHBzazBENHhaQ005a1FtSzR1QWd2aUFLM2FOTjRJMnNENnpuOGZlRDhj?=
 =?utf-8?B?cUpyd3NUU0JlWGNtRDVUUCtGUXhuRG1IbWdILzVWd1JwK2VhcWs2aGN5Rldj?=
 =?utf-8?B?bTlGVm56SUhhZGFmVU5NRHV2Y0w4TDhnZjI5WjMrRUFlb0lBUVIvdXZQZFFp?=
 =?utf-8?B?MTlkbitxM1BlOCt2bVM4emd6Z1cvVW5TdE1VSlU3TGEyQ1FwNm5PUHBBLzJv?=
 =?utf-8?B?Y3pQQUtWaHlocXN3NFZXd2lvK1JyZkdKekI0eStYUWp5YkpmdksvS3VwMGcx?=
 =?utf-8?B?dlZNWmpSWUU3VlZNdFBUdDAyREx5N0xteU84VWxGenZtLzRlUmN6VlhpdkJk?=
 =?utf-8?B?b3JoTFpselZuVDJxaCt1alg2MFJEdHcyTkxFTHJJeUlyRXU1NzJGRlRZNzZE?=
 =?utf-8?B?VFlIdmhXNTl5MjE5QlV1VUlzbWJYaTdFMUltV05zWWU4L0Q0SFEyMXJKYXNj?=
 =?utf-8?B?NnA0emJJV0RzZm40NGI0MFFBNUZVSmI0am1RWTZ6MWhnbnIvZVpxVEdzZnNa?=
 =?utf-8?B?aDNlblVmcnhaNWl2YUhyckV1bE45Sjd6bEJMS0p4aFRHeEwwWjRyaTB1bkFE?=
 =?utf-8?B?T3dPRTFlSUk1dmRWMVdMVzhMOUZsOGpEdnR0WXdjRHRBZVN4WUd1SDIyc0Zt?=
 =?utf-8?B?TlQwYlpZL2N1SFlieFJjM1YrUHI0aU5QOVZPWUdHTlpVdDdvQlA5aGFHYVdO?=
 =?utf-8?B?TENJR3NIN0tDNjE5TDZjd0xhcmgyMHV5TkMvcXArRVcybWhndkppanFtQUNF?=
 =?utf-8?B?c1VqbDdxQ0VUSUFhTC9vVVpoaVg3THdBU3hZRWZES3ZVTGwyMThrRmJac3BN?=
 =?utf-8?Q?WjuMZl/ZthFdCxoWhGFr3kM=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA4PR10MB8397.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(8096899003)(38070700021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?enJINFVWMUhOczhwQk9SRGoyekpKTitIc08yK09vTThIS0MwdTJrQ2JnN2F0?=
 =?utf-8?B?STZJSzB2cVZCOWlkaU5Ha0N2d29sRU9aZkhUU3B3Y3lRd0hTUlQxaU1zbGFF?=
 =?utf-8?B?SmpFTlg5NXY3QW9oQlg1NWhhTm9CR2Yzbks4ZStTMk4yU1YzOEhlQk9WL20y?=
 =?utf-8?B?TTBrWnNrWFRBbTQ2bmFPV21seGh1ajBWdEJGa0lKMXlUNGV3MnA5T2JmS1BY?=
 =?utf-8?B?cStwM2wwR0wwdzI0UVI5VENRdWVQaW9hSjc2RUNkQ2txb21LbU1rUzdVUStW?=
 =?utf-8?B?TGZUQXlERFF2eGVYUlJTby81M0p6RDNzaVo5YSt6M0YyNW1waVVXSy9FOWsz?=
 =?utf-8?B?eVg4LzhlRmdYMXpnSnpOTXIxQ1NhdHk5aHdvWFp4OE9PZjVEc2s5Y3ZRbnRp?=
 =?utf-8?B?ZHpWU1F5VWxMTlhJRVVkK3k2TGVjdWszRm9XenJ0L0R0UXl2ZEpMYXJuZnRp?=
 =?utf-8?B?Zy9WbmltYU1jbFZsTjNnM2FsZFA1RlBKRVV1dzhPV3pPNGZjTjdDS21Pdlpo?=
 =?utf-8?B?K21nV1V4UUdSN1djd0dNYzJYTkZ4NzhIdTNIZjVBOVpNODJ3enFaeHFuTDhP?=
 =?utf-8?B?bEJpckdjNTVseU8yanZ2THYyQ1lqTis0Y0haWENjUXl5dHlUUEtiZEZNTDUr?=
 =?utf-8?B?Y0liY3VFTnlQRzEvN3RMU2ZZNEFuTnJMNU9iS24vNFEyczhzcFB2c1pPa21n?=
 =?utf-8?B?MjNXU2VSM2tMRnZ3b2taNTdqK1FqakNwUW9KRFV1bENxMnl0RFJVUTFjT2hK?=
 =?utf-8?B?RnlWYlZma0dMTldtU3Y2cDc3cEY0aTdIbWpvR3JxbjVIZkRwbVJrWUd2TjRX?=
 =?utf-8?B?ODdDV09waG1nR01KdEptOE5RNTNBVnhCVkxOSXoyUHVEZWlJQ0lnNTdJM0dx?=
 =?utf-8?B?d3BLTDZwU2cvWXZ6V1VoWjY4YkNjZXVZTTNmaXFDRkhnYWtacEhXSHNSV2Fs?=
 =?utf-8?B?Y0xXT1V0NXJaRmFUTGtHQ3JqYWZUcUhKT0ZPQ3hZNUIvVzVqNGp1NGRYZTFi?=
 =?utf-8?B?NndpWE1LYjNSL3Y2VTk5RGdaWlJOall1WC9XdWRkY1hPMi9OU1RvZ1ZxSnZJ?=
 =?utf-8?B?ZmNxYUtOZ0diUDhSL1lkUGJSNmdVaVUxUnYwUC9vNUVCS05ZenBOYjkxWFNX?=
 =?utf-8?B?VWFyOXB4ZmJkcmszQkQzUm9uQzJtTklDNXdQTG9ZeEdrNVZqM04yeGxpQ3lk?=
 =?utf-8?B?a2dzeFVsOHcvWCtkdGxXU0srU0tyQ28xT3pQdkV5NDhKaitlS0VSVis5N3R3?=
 =?utf-8?B?Vndod3lZZDVSQkhsTS9wR3MwNlVsbVdRT0V4TmVCOS9ZazR6RUd6UkFSMFcv?=
 =?utf-8?B?amdNUjlHOUxzZEtOOEVLaC9DM0xvTjdNL0M3YWh0YWJnNml1NlVBdWM3dmtt?=
 =?utf-8?B?V1JsNkkrUTNtVFFuNDNZQ1VjVEZIdFVRWGE1RHVDbytCRFZqdGFsUEluWjk0?=
 =?utf-8?B?S3RjT3loVVJjd1BxcXFYamkvTUdpdzV6UVhwRnJvSC8rNjlpU05tYXVma2ZQ?=
 =?utf-8?B?WWxaN3dySHcwbGFNNU9EZk9UbkYySmx6TmpyTEpIa0xraW5rNk9TVlhabVhz?=
 =?utf-8?B?TXoraGMxNGwreUF4bXREdXJJNXVqTHVESksrUE5JWjJiVUhrWHRXZDFpMVl4?=
 =?utf-8?B?dXNTdjVQeXhVUmp1ek0zRTlnTmNPSEFBUkkwYVUyZXM1WHkxZ3RLeGdZQnNF?=
 =?utf-8?B?NU02VjhmZmtDOEwraWtuYUszTm5yR3BnUldFVVVabDBTbXIrRnozaHFUWGR0?=
 =?utf-8?B?cEc4bGNXeVUzWmJVMStmQVF2Zi9BMTd6emNaZDVxWHJ1VHBxb3REbjhGOStY?=
 =?utf-8?B?U2hibFg4TWJhMXJWTU5IYTZTSHFFeEJmdlVOYmRDaWcvMlJqay8wbm4yL2F3?=
 =?utf-8?B?bUlpcnZJUTVObVFFVU5YY3hzaVVsRlFpWGlHMHRrcjVmOTZBQTg3VnNqOHpw?=
 =?utf-8?B?WG40Q1o4cmEyRmMxaHhYeUJnVTVHMm9zL05JSnNhZ1NuV0c4NG53cjZ1OTg5?=
 =?utf-8?B?SUdLWlhQMm55TW96OElka0Y2ZE4xbHZlYk13eExOaCtwR2RMUEx4MFB2aVUz?=
 =?utf-8?B?TVk5Z2xHRGpZQzdmQThmOE5yZ3hYQ3E5TEQwZVArdjB1alR6SDlPQXBNeWZP?=
 =?utf-8?B?d1NyRDNqbFFRcWZhUmtScUV0NC9mZnlqSUkxS2NrS01UUnM4bDRoaTM1RzZn?=
 =?utf-8?B?bmNFblBmT3pWNUVvU3IrRjVrUTNoemhQcXNQT201UWNZUTdXV2FuVFBya2wv?=
 =?utf-8?B?YUxBVDdtTjEyS1NENnQrRERERENEYXl3MHlzc2lXSi9VRzFnNk1yN0ovZmtl?=
 =?utf-8?B?b3B2bjR3V3duRnBOME1aWlBBREZaUzdGWnNLN2JFeDdiL1JBQm14UT09?=
MIME-Version: 1.0
X-OriginatorOrg: Emerson.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA4PR10MB8397.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c1d385c-3526-42ea-0684-08de5d2d6e2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jan 2026 22:51:23.6259
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb06985d-06ca-4a17-81da-629ab99f6505
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s8gmBVOsvCyAyMy+gGMlreiLl0CX8XgqpAP0NnyovJdwGpMeHI4I1T0kdKyu2/sX7flFuLJE/3Mg3S763S4b8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR10MB7279
X-Proofpoint-GUID: _Sw-tpkbow6Vy_AUGRHLBHAZGlDSaMKg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDE5NiBTYWx0ZWRfX1JWi1LFDuIc9 iL5fE/SMw3n4f2wQUulr9w9I72u9B7/UURThzShO59ZTroQS08FQks2xPuH8jCQEQ9+UFOwPaNb UUwZRkY/fq+cLTR9VTI3/1471V/w7r8C9ClMeFPQifMAltrA4FdGn0SjRIXeT8fYn2EiJnEB+8V
 eHFxMPI1eUrVxXkQH8/S8pfF9UmdVkuEbIQ/LcSBQjU7CDlNWnV8MrTGXtcDyzCqFt4xoSBcQ0F Su4Az4kXYYAgu8vbVrJWiGJ/tlIjVM/up9LvAj9sJXl57YQZCWtIq9t1AyY0sUxgFBg+edsw0i0 EIgRSJQ5LLp0kKRJ967wGgyJgcG6RVraA399RH/ixifvVp88HawSqF2kLrdQd9LV6eefeNLuqGb
 N2KQNOQYXc/cjeN7zCOhMGWHjkGjWBs9v3hgoQqinYCtmvdfcTqAfXdot3VrUeB6cg7ffSmtxpG fBpKHv31pzlZmhyycsQ==
X-Proofpoint-ORIG-GUID: _Sw-tpkbow6Vy_AUGRHLBHAZGlDSaMKg
X-Authority-Analysis: v=2.4 cv=S77UAYsP c=1 sm=1 tr=0 ts=6977efee cx=c_pps a=BRoDR27eCUDGJJSfTO8W4A==:117 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10 a=ZPWZ4rD8_x8A:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OKE1-n2NS68Snvi1ZuYA:9 a=QEXdDO2ut3YA:10 a=yMhMjlubAAAA:8 a=SSmOFEACAAAA:8 a=qOZWpL5IP15xDPQSfEoA:9 a=h7ShcPKA0-KeWWJL:21 a=gKO2Hq4RSVkA:10 a=UiCQ7L4-1S4A:10 a=hTZeC7Yk6K0A:10 a=frz4AuCg-hUA:10
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_04,2026-01-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 malwarescore=0
 clxscore=1011 priorityscore=1501 spamscore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2601150000 definitions=main-2601260196
Message-ID-Hash: 4645GRTZMLDYKA6HHNHLB5T4M7NOYYBN
X-Message-ID-Hash: 4645GRTZMLDYKA6HHNHLB5T4M7NOYYBN
X-MailFrom: prvs=24862d6e5e=nan.yang@emerson.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] How to disconnect streamers on RFNoC graph
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y7NLWWOD6HD4FRYFXKS6SP55Q45SRK7R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Yang, Nan via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Yang, Nan" <nan.yang@emerson.com>
Content-Type: multipart/mixed; boundary="===============9154320143638670629=="
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	R_SPF_NA(0.00)[no SPF record];
	RCPT_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	DMARC_NA(0.00)[ettus.com];
	TO_EQ_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[emerson.com:s=email,Emerson.com:s=selector1];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[usrp-users@lists.ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	HAS_REPLYTO(0.00)[nan.yang@emerson.com];
	TAGGED_RCPT(0.00)[usrp-users];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[emwd.com:+,emerson.com:-,Emerson.com:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ettus.com:email,IA4PR10MB8397.namprd10.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 1DE558E0F3
X-Rspamd-Action: no action

--===============9154320143638670629==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_IA4PR10MB8397396A89682AD790D1F38E8693AIA4PR10MB8397namp_"

--_000_IA4PR10MB8397396A89682AD790D1F38E8693AIA4PR10MB8397namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gVUhEIGZvbGtzLA0KDQpJ4oCZbSB0cnlpbmcgdG8gYnVmZmVyIGFsbCA0IGNoYW5uZWxz
IHR4L3J4IGRhdGEgb24gRFJBTSBvbiBYNDEwLiBTbyBteSBhcHBsaWNhdGlvbiBkb2VzDQoNCiAg
MS4gIENvbm5lY3QgdHhfc3RyZWFtZXIgdG8gcmVwbGF5IGJsb2NrIGFuZCB3cml0ZSBzYW1wbGVz
IHRvIERSQU0NCiAgMi4gIERpc2Nvbm5lY3QgdHhfc3RyZWFtZXINCiAgMy4gIENvbm5lY3QgcmVw
bGF5IGJsb2NrIHRvIHJhZGlvIGJsb2NrDQogIDQuICBEbyB0eCBhbmQgcngNCiAgNS4gIERpc2Nv
bm5lY3QgcmFkaW8gYmxvY2tzDQogIDYuICBDb25uZWN0IHJlcGxheSBibG9jayB0byByeF9zdHJl
YW1lciBhbmQgcmVhZCBzYW1wbGVzDQoNCkkgZG9u4oCZdCBmaW5kIHRoZSBjb3JyZWN0IEFQSSBm
b3Igc3RlcCAyLiBUaGUgdWhkOjpyZm5vYzo6cmZub2NfZ3JhcGg6OmRpc2Nvbm5lY3QoKSBmdW5j
dGlvbiB0YWtlcyBzdGQ6OnN0cmluZyAmc3RyZWFtZXJfaWQsIGhvd2V2ZXIsIEkgY2Fu4oCZdCBm
aW5kIGEgcHVibGljIEFQSSB0aGF0IHJldHVybnMgYSBzdHJlYW1lcl9pZC4gVGhlIGNvbm5lY3Qo
KSBmdW5jdGlvbiBhY2NlcHRzIHVoZDo6dHhfc3RyZWFtZXI6OnNwdHIgYW5kIHVoZDo6cnhfc3Ry
ZWFtZXI6OnNwdHIsIEkgd29uZGVyIGlmIGRpc2Nvbm5lY3QoKSBzaG91bGQgYWNjZXB0IHNhbWUg
YXJndW1lbnQgdHlwZXMuDQoNCklmIEkgc2tpcCBzdGVwIDIsIEkgZ2V0IGFuIGVycm9yIGluIHN0
ZXAgMy4NCg0KUmVnYXJkcywNCk5hbg0KDQo=

--_000_IA4PR10MB8397396A89682AD790D1F38E8693AIA4PR10MB8397namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iR2VuZXJhdG9yIiBjb250ZW50PSJNaWNyb3NvZnQgV29yZCAxNSAoZmlsdGVyZWQg
bWVkaXVtKSI+DQo8c3R5bGU+PCEtLQ0KLyogRm9udCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFj
ZQ0KCXtmb250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2
IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6RGVuZ1hpYW47DQoJcGFub3NlLTE6
MiAxIDYgMCAzIDEgMSAxIDEgMTt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OkFwdG9zO30N
CkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IlxARGVuZ1hpYW4iOw0KCXBhbm9zZS0xOjIgMSA2
IDAgMyAxIDEgMSAxIDE7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBs
aS5Nc29Ob3JtYWwsIGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250LXNpemU6MTIu
MHB0Ow0KCWZvbnQtZmFtaWx5OiJBcHRvcyIsc2Fucy1zZXJpZjsNCgltc28tbGlnYXR1cmVzOnN0
YW5kYXJkY29udGV4dHVhbDt9DQpwLk1zb0xpc3RQYXJhZ3JhcGgsIGxpLk1zb0xpc3RQYXJhZ3Jh
cGgsIGRpdi5Nc29MaXN0UGFyYWdyYXBoDQoJe21zby1zdHlsZS1wcmlvcml0eTozNDsNCgltYXJn
aW4tdG9wOjBpbjsNCgltYXJnaW4tcmlnaHQ6MGluOw0KCW1hcmdpbi1ib3R0b206MGluOw0KCW1h
cmdpbi1sZWZ0Oi41aW47DQoJZm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiQXB0b3Mi
LHNhbnMtc2VyaWY7DQoJbXNvLWxpZ2F0dXJlczpzdGFuZGFyZGNvbnRleHR1YWw7fQ0Kc3Bhbi5F
bWFpbFN0eWxlMTcNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtY29tcG9zZTsNCglmb250LWZh
bWlseToiQXB0b3MiLHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVm
YXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25seTt9DQpAcGFnZSBXb3JkU2VjdGlvbjEN
Cgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGluO30N
CmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLyogTGlzdCBEZWZpbml0
aW9ucyAqLw0KQGxpc3QgbDANCgl7bXNvLWxpc3QtaWQ6MTUwNjE3MTc5MzsNCgltc28tbGlzdC10
eXBlOmh5YnJpZDsNCgltc28tbGlzdC10ZW1wbGF0ZS1pZHM6ODI3NzMzMjI2IDY3Njk4NzAzIDY3
Njk4NzEzIDY3Njk4NzE1IDY3Njk4NzAzIDY3Njk4NzEzIDY3Njk4NzE1IDY3Njk4NzAzIDY3Njk4
NzEzIDY3Njk4NzE1O30NCkBsaXN0IGwwOmxldmVsMQ0KCXttc28tbGV2ZWwtdGFiLXN0b3A6bm9u
ZTsNCgltc28tbGV2ZWwtbnVtYmVyLXBvc2l0aW9uOmxlZnQ7DQoJdGV4dC1pbmRlbnQ6LS4yNWlu
O30NCkBsaXN0IGwwOmxldmVsMg0KCXttc28tbGV2ZWwtbnVtYmVyLWZvcm1hdDphbHBoYS1sb3dl
cjsNCgltc28tbGV2ZWwtdGFiLXN0b3A6bm9uZTsNCgltc28tbGV2ZWwtbnVtYmVyLXBvc2l0aW9u
OmxlZnQ7DQoJdGV4dC1pbmRlbnQ6LS4yNWluO30NCkBsaXN0IGwwOmxldmVsMw0KCXttc28tbGV2
ZWwtbnVtYmVyLWZvcm1hdDpyb21hbi1sb3dlcjsNCgltc28tbGV2ZWwtdGFiLXN0b3A6bm9uZTsN
Cgltc28tbGV2ZWwtbnVtYmVyLXBvc2l0aW9uOnJpZ2h0Ow0KCXRleHQtaW5kZW50Oi05LjBwdDt9
DQpAbGlzdCBsMDpsZXZlbDQNCgl7bXNvLWxldmVsLXRhYi1zdG9wOm5vbmU7DQoJbXNvLWxldmVs
LW51bWJlci1wb3NpdGlvbjpsZWZ0Ow0KCXRleHQtaW5kZW50Oi0uMjVpbjt9DQpAbGlzdCBsMDps
ZXZlbDUNCgl7bXNvLWxldmVsLW51bWJlci1mb3JtYXQ6YWxwaGEtbG93ZXI7DQoJbXNvLWxldmVs
LXRhYi1zdG9wOm5vbmU7DQoJbXNvLWxldmVsLW51bWJlci1wb3NpdGlvbjpsZWZ0Ow0KCXRleHQt
aW5kZW50Oi0uMjVpbjt9DQpAbGlzdCBsMDpsZXZlbDYNCgl7bXNvLWxldmVsLW51bWJlci1mb3Jt
YXQ6cm9tYW4tbG93ZXI7DQoJbXNvLWxldmVsLXRhYi1zdG9wOm5vbmU7DQoJbXNvLWxldmVsLW51
bWJlci1wb3NpdGlvbjpyaWdodDsNCgl0ZXh0LWluZGVudDotOS4wcHQ7fQ0KQGxpc3QgbDA6bGV2
ZWw3DQoJe21zby1sZXZlbC10YWItc3RvcDpub25lOw0KCW1zby1sZXZlbC1udW1iZXItcG9zaXRp
b246bGVmdDsNCgl0ZXh0LWluZGVudDotLjI1aW47fQ0KQGxpc3QgbDA6bGV2ZWw4DQoJe21zby1s
ZXZlbC1udW1iZXItZm9ybWF0OmFscGhhLWxvd2VyOw0KCW1zby1sZXZlbC10YWItc3RvcDpub25l
Ow0KCW1zby1sZXZlbC1udW1iZXItcG9zaXRpb246bGVmdDsNCgl0ZXh0LWluZGVudDotLjI1aW47
fQ0KQGxpc3QgbDA6bGV2ZWw5DQoJe21zby1sZXZlbC1udW1iZXItZm9ybWF0OnJvbWFuLWxvd2Vy
Ow0KCW1zby1sZXZlbC10YWItc3RvcDpub25lOw0KCW1zby1sZXZlbC1udW1iZXItcG9zaXRpb246
cmlnaHQ7DQoJdGV4dC1pbmRlbnQ6LTkuMHB0O30NCm9sDQoJe21hcmdpbi1ib3R0b206MGluO30N
CnVsDQoJe21hcmdpbi1ib3R0b206MGluO30NCi0tPjwvc3R5bGU+DQo8L2hlYWQ+DQo8Ym9keSBs
YW5nPSJFTi1VUyIgbGluaz0iIzQ2Nzg4NiIgdmxpbms9IiM5NjYwN0QiIHN0eWxlPSJ3b3JkLXdy
YXA6YnJlYWstd29yZCI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPkhlbGxvIFVIRCBmb2xrcyw8
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjExLjBwdCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9
Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPknigJltIHRyeWluZyB0
byBidWZmZXIgYWxsIDQgY2hhbm5lbHMgdHgvcnggZGF0YSBvbiBEUkFNIG9uIFg0MTAuIFNvIG15
IGFwcGxpY2F0aW9uIGRvZXM8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8b2wgc3R5bGU9Im1hcmdp
bi10b3A6MGluIiBzdGFydD0iMSIgdHlwZT0iMSI+DQo8bGkgY2xhc3M9Ik1zb0xpc3RQYXJhZ3Jh
cGgiIHN0eWxlPSJtYXJnaW4tbGVmdDowaW47bXNvLWxpc3Q6bDAgbGV2ZWwxIGxmbzEiPjxzcGFu
IHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5Db25uZWN0IHR4X3N0cmVhbWVyIHRvIHJlcGxheSBi
bG9jayBhbmQgd3JpdGUgc2FtcGxlcyB0byBEUkFNPG86cD48L286cD48L3NwYW4+PC9saT48bGkg
Y2xhc3M9Ik1zb0xpc3RQYXJhZ3JhcGgiIHN0eWxlPSJtYXJnaW4tbGVmdDowaW47bXNvLWxpc3Q6
bDAgbGV2ZWwxIGxmbzEiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5EaXNjb25uZWN0
IHR4X3N0cmVhbWVyPG86cD48L286cD48L3NwYW4+PC9saT48bGkgY2xhc3M9Ik1zb0xpc3RQYXJh
Z3JhcGgiIHN0eWxlPSJtYXJnaW4tbGVmdDowaW47bXNvLWxpc3Q6bDAgbGV2ZWwxIGxmbzEiPjxz
cGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5Db25uZWN0IHJlcGxheSBibG9jayB0byByYWRp
byBibG9jazxvOnA+PC9vOnA+PC9zcGFuPjwvbGk+PGxpIGNsYXNzPSJNc29MaXN0UGFyYWdyYXBo
IiBzdHlsZT0ibWFyZ2luLWxlZnQ6MGluO21zby1saXN0OmwwIGxldmVsMSBsZm8xIj48c3BhbiBz
dHlsZT0iZm9udC1zaXplOjExLjBwdCI+RG8gdHggYW5kIHJ4PG86cD48L286cD48L3NwYW4+PC9s
aT48bGkgY2xhc3M9Ik1zb0xpc3RQYXJhZ3JhcGgiIHN0eWxlPSJtYXJnaW4tbGVmdDowaW47bXNv
LWxpc3Q6bDAgbGV2ZWwxIGxmbzEiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij5EaXNj
b25uZWN0IHJhZGlvIGJsb2NrczxvOnA+PC9vOnA+PC9zcGFuPjwvbGk+PGxpIGNsYXNzPSJNc29M
aXN0UGFyYWdyYXBoIiBzdHlsZT0ibWFyZ2luLWxlZnQ6MGluO21zby1saXN0OmwwIGxldmVsMSBs
Zm8xIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+Q29ubmVjdCByZXBsYXkgYmxvY2sg
dG8gcnhfc3RyZWFtZXIgYW5kIHJlYWQgc2FtcGxlczxvOnA+PC9vOnA+PC9zcGFuPjwvbGk+PC9v
bD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0Ij48
bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBz
dHlsZT0iZm9udC1zaXplOjExLjBwdCI+SSBkb27igJl0IGZpbmQgdGhlIGNvcnJlY3QgQVBJIGZv
ciBzdGVwIDIuIFRoZSB1aGQ6OnJmbm9jOjpyZm5vY19ncmFwaDo6ZGlzY29ubmVjdCgpIGZ1bmN0
aW9uIHRha2VzIHN0ZDo6c3RyaW5nICZhbXA7c3RyZWFtZXJfaWQsIGhvd2V2ZXIsIEkgY2Fu4oCZ
dCBmaW5kIGEgcHVibGljIEFQSSB0aGF0IHJldHVybnMgYSBzdHJlYW1lcl9pZC4gVGhlIGNvbm5l
Y3QoKSBmdW5jdGlvbg0KIGFjY2VwdHMgdWhkOjp0eF9zdHJlYW1lcjo6c3B0ciBhbmQgdWhkOjpy
eF9zdHJlYW1lcjo6c3B0ciwgSSB3b25kZXIgaWYgZGlzY29ubmVjdCgpIHNob3VsZCBhY2NlcHQg
c2FtZSBhcmd1bWVudCB0eXBlcy48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdCI+PG86cD4mbmJzcDs8L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
MS4wcHQiPklmIEkgc2tpcCBzdGVwIDIsIEkgZ2V0IGFuIGVycm9yIGluIHN0ZXAgMy48bzpwPjwv
bzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1z
aXplOjExLjBwdCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQiPlJlZ2FyZHMsPG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTox
MS4wcHQiPk5hbjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxv
OnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_IA4PR10MB8397396A89682AD790D1F38E8693AIA4PR10MB8397namp_--

--===============9154320143638670629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9154320143638670629==--

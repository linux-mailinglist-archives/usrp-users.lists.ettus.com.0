Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7794AFD90
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 20:37:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 548A6385180
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 14:37:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="CUSu1QXC";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=nio365.onmicrosoft.com header.i=@nio365.onmicrosoft.com header.b="LKqaUdgk";
	dkim-atps=neutral
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by mm2.emwd.com (Postfix) with ESMTPS id C66C6384B3E
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 14:35:47 -0500 (EST)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id 219APFTU011796;
	Wed, 9 Feb 2022 13:35:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=from : to : date :
 message-id : references : in-reply-to : content-type : mime-version :
 subject; s=PPS11062020; bh=/yLSnzqc68nI8rj2hO4bCjvLezQILRDNOwwDWOKaNP8=;
 b=CUSu1QXCxz9gM3TERJelo/vIPVtlKXcCp0Enyv6GizWJLEm9rWzklJvSkMTvnZXU0ass
 Yg/SE+rswEr0lywzLt643ELaSJnCpAsUnAWnyHhj7F6PFBJHtrQGu6WT0+FCMEbz16sF
 y0/l7RU+48AczVu6H+m86rn3/hBzFalRn/ZTVBjlrE4pGPd5+0lQab5Tvk0SM2jHhkaD
 AeS6syDh+XYCafJMA7hqFCJnzzKa9ntkX0Vw4zKHzmJhmb6Tp79Hif+wl9z9ITCWfw3S
 og7rCpHRxvBkQofj+IVyn/qriXrSP0Pdbt1+QgTVJsV4Gynr+OHmIlq31TDF23P/fqiW Jg==
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2173.outbound.protection.outlook.com [104.47.55.173])
	by mx0b-00010702.pphosted.com (PPS) with ESMTPS id 3e4buh8yk9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 09 Feb 2022 13:35:46 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FR6YCeGJdjKzP3Bh3la+hg4lnEwo3UKhk2MRDnATi/BsYFkogWklJ9dkJ3A7K5uW/YPVDbb1aulFuUgnu2aB871Oy9ztXXOI1JWlO65b6lLkusavdy4sSnQwlSiVEFmUNQPGKAkF/PbqeEJH4I8wUCHZKRBWpAhyqHiV9tetcbOiK6Po5vzVtVXB8Xf7InZyihi4aevJIFaTdJ0tI+L5CxulWERTlfcR+s0S7DqL1zUtfT5OpEG1Fq6yLeBjFi688OWsjr2YzMw3qzOPeMZWekZ3OmatEOtxBq1+dPkLWYaOd7n05ZQYnADBjQ3EQA8M2EQ+qxJpTdZxu5hxV86nCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/yLSnzqc68nI8rj2hO4bCjvLezQILRDNOwwDWOKaNP8=;
 b=EMRsQ6GZFf55FeSR1Fdcqo6VoEoC2VMt3mFSEulH4oPfBI3D7ppEntpz2lnH+ETAEeuCEn0uzkV+yGxhmW8VRPKSLW85Xi1jBZVbDiQ4kUVEgE91S+dF+ldk9FaooRfx382oXtvV1UBw90yvb+/bT/rWfhlUMvHl3Tg8+4T7g/npHglaOK587kzJIipk3eOhAqPv3P2HEtwN963g1BJFnYG3SwiQDqY4OMD/yL7UDx8AH14h2Kc4f6+McGck3B3rubP5Yg/5D9drYcqtFilyhgUhGvYPk+fagVnX6fOKVoRGn8WdZOVwbdExAHJZV9XXF890Lllxk4vQT1uiE0EyNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/yLSnzqc68nI8rj2hO4bCjvLezQILRDNOwwDWOKaNP8=;
 b=LKqaUdgkrkyJVohtR/TS++IWyuPe5PcXsMjg3IRPv+TOLVwyQ+2vX8L0sy3h4wBVgVCMO0z/bkGABSne3cCV0yF0M1ru3Q56a8q9NTKSihZN1tD0KT0v3sMS9rE/OyyGpeBRzzrlcDlyUD0ETLGXs+BagfM2bOAYq9vF8af830U=
Received: from SN6PR04MB5005.namprd04.prod.outlook.com (2603:10b6:805:92::14)
 by BN3PR04MB2372.namprd04.prod.outlook.com (2603:10b6:400:1::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4975.11; Wed, 9 Feb
 2022 19:35:45 +0000
Received: from SN6PR04MB5005.namprd04.prod.outlook.com
 ([fe80::d912:a61f:9984:49a7]) by SN6PR04MB5005.namprd04.prod.outlook.com
 ([fe80::d912:a61f:9984:49a7%6]) with mapi id 15.20.4951.019; Wed, 9 Feb 2022
 19:35:44 +0000
From: Humberto Jimenez <humberto.jimenez@ni.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
        Giuseppe Santaromita
	<giuseppe.santaromita1@gmail.com>,
        "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [EXTERNAL] [USRP-users] Re: Mender Update Process N310
Thread-Index: AQHYHeLdqAO4vslBbkK7Z8xXNiP6d6yLirKAgAAAyQCAABBr8A==
Date: Wed, 9 Feb 2022 19:35:44 +0000
Message-ID: 
 <SN6PR04MB50058DF77F2183D7DDEE2673F82E9@SN6PR04MB5005.namprd04.prod.outlook.com>
References: <deed8d5e-6ab5-21dc-5da9-9f580e859dee@gmail.com>
 <19c6d891-f98b-d88c-e55f-0e11ae0a2ef5@gmail.com>
 <52c77c46-09b6-9a26-440f-9e044dbff869@gmail.com>
 <fab6015f-d263-bb77-c2a0-c123344ec4c1@gmail.com>
In-Reply-To: <fab6015f-d263-bb77-c2a0-c123344ec4c1@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ActionId=042dbe96-a53a-4270-adc7-4cc43e45cc1d;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=true;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2022-02-09T19:32:55Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65fb1dac-2b0b-46dd-63b8-08d9ec035d4e
x-ms-traffictypediagnostic: BN3PR04MB2372:EE_
x-microsoft-antispam-prvs: 
 <BN3PR04MB2372912A495128D2955E84E1F82E9@BN3PR04MB2372.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hXCeq6axpJ2vH+7rmfQJImbL0LxFag+VH/pcyxYQMi1NDnaThQ0CX5lIXUP+/+RZDUDzNXnxuOE5p7V31Pm3HNbJ9ncax0QXXLLCGEmvpwaKEoEnpId//VNmiQUVUyxwFxLwka1gssM7jWdg5AEeDx0wk1Yvz+3Zg5gVbALsgBwajro+J59GHwC5k1Zd+PVSVtY2wy58tyG5lO3v8xuj0y1bYz42eQkUsv2dYQT04lz3PIHTLPO1UGf3ad06gLXGg5H4qPY4yzVdQrOaw0XkMs6DXd7CSZa4sda1lwPSAOCRnjqTEdeKBYqz1sSPSKjDtMMOvp6T7V0cBFP4a3iWS7OLW74PDUvpPqWd/qNtc7WLZHewhuFVWZ+6oZonHx9lR+7WlryqKPPDURUGjrSyvrPKMf92gnRFCMAeO4zGq9FXOxU+oFfc6w7jPOhnMavvtqUkXn57wNAc/9RwF7MmubW0fbGbMOMK245DXvWzRo8LbpCoTMb3NOaSDhpUGv2HcGbSYggiThVlliA0KRH67zF7TdxUiKXZ6FmgGadW0zYRzxqOYTN2Ya50ftTWRJ5WN5e7EshNZucJKpdR+QKJXuayYkkJKh50S2zbanHLclCikvWMcUYTIoRTolro5kaSfF0OIX9h3QACJ+oF9ecCYdXGgI4Xtk0CIv8s17Mj2AYDg2k5aEfBMGZ2d9/ouL/c7F75kggMXM6tJ6uNiPjHPQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB5005.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(52536014)(44832011)(5660300002)(9326002)(2906002)(122000001)(15650500001)(38100700002)(316002)(66556008)(76116006)(66476007)(66446008)(64756008)(508600001)(110136005)(33656002)(55016003)(66946007)(38070700005)(26005)(186003)(8936002)(8676002)(86362001)(9686003)(83380400001)(7696005)(6506007)(71200400001)(53546011);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?eGVSb3VLUXBZQ0xYWkRiQlQyWGQ0dFVqOUNjR2xKUndkdU54SXpKSS9OWmN4?=
 =?utf-8?B?R2FHZGxoMFNPVGRZeFlzMU9QaEloTE9nRWVkZzBBK3g5aStETjc3bjNsRkJl?=
 =?utf-8?B?WTVrWXBGMDhZOXNtWG5pV0xuRGxkTlBKS0ptWGZyLzdNbDdyVFYxMkN0amxB?=
 =?utf-8?B?UG5jUlFLZnVaaEJZS2RIM2xKWE45QUZJQ0NlNFVRREtha2ZaaWwrOUQ3d3NK?=
 =?utf-8?B?bU9zUFBRc0wvVXpVSUQrdXZUYklDc3NOd3oramgxZ0tjZ1BvSUJLNUZhZ21N?=
 =?utf-8?B?QTZITWdJQjFIRjdUcUhoZVRxbER3WUVLcVlUUjlXWkJHYU0vcjBSSFhqYXJq?=
 =?utf-8?B?cU82cjJmc2tvcFJ5eTdYY0ZHTWRCV0NnbEFYRktITDZiV05LTHNLNkFEUmc3?=
 =?utf-8?B?ZnljNmRaYS9VVUxmcXFwQ1RyTEJlWEl1QzR5Z2hqZFR4dVluckpwcWM5UzdI?=
 =?utf-8?B?S1ZlQUp6SXNFeFR5TTFScUJmRCt4SERqTXhlblBSbWRoMGY1Um85WWRKVDBm?=
 =?utf-8?B?Q1A0ZW9LVmkzNVhtVmp3SmVNSWNlQkVRZ2FWOEpjRjRoTzYrRUZuc3VqV2V2?=
 =?utf-8?B?ZHcwS3kvTllYa2F5blp6OWdHQTVtYnJCVUNkd3NkTCtqMmp3aDVYelpsUzd1?=
 =?utf-8?B?RTJYMEJibjB5blMxTkViOFZyaGtwZnJzOThxd0VwWEFqK250R3lRTDdScmlj?=
 =?utf-8?B?RjRUcS9IQkp6M001TXVFYkxpM1Boek9ONkhXSS9HQVFMdVE1aFpjODUyTml5?=
 =?utf-8?B?N3BWTnBKZDdoUG0zWGZsSmcrN2dkcEUwS3ZpYVlEVk5KUDRXZTV3L0RrVTZL?=
 =?utf-8?B?a1lIQkVSWS9Rd1FUWThjaEVLNWo3MnZpMGxFd04vMi9tcnNuV3d1REhsMzN3?=
 =?utf-8?B?NWpKc05Hd0xKMTljMXFpL051dlFxektJYkpIem5yWHRwajRNbHVERFoyb0s5?=
 =?utf-8?B?d0JuQmU2ZDROOXpoRFQ2NWlQbE83a1Z4djhadVZZSG1tci9NdCs0SGZIalh0?=
 =?utf-8?B?R0s1VXlwcWlZdFlVTUpyRzVneEIrMllESVJYdmRCQXhOWWpBT3NsTVE5b0xG?=
 =?utf-8?B?UXY2bGU5Qkt0SHdLejZFNTY2TmRWVzNMbmcrT1V0bFcxdTBqZUkyNjdiYllm?=
 =?utf-8?B?WVlVNE9Rb21uUTltMlhzZjZmUVpLSFlPbmc0VHhmaDhjVTFsM3hBUExrNkla?=
 =?utf-8?B?MmhUT2hGamc3U3FqVXk4SUF3UWZDOWV3czFiVHFsMzBDblU3RUxPQ3RhWGlF?=
 =?utf-8?B?RUhNbUlncUYvL25mSWRkcjVLVXV1ZHF5WXZ0RXl5cjVNR2Z1QlpVdTRGU3RI?=
 =?utf-8?B?ZSthS09hODg4QmppRHkrN0l5WFpKVk5qNVF5azhVMmVsckE5UEYwKzhEZjg1?=
 =?utf-8?B?YlBjV3pkRkZVcmhOaW1QallFQXFIVFhhNzVmZGRqS0JHRWZPbGpBSStqa1dF?=
 =?utf-8?B?UVcybGRQYWpZVy9XV0lxc3BmZXFuZllEOWNKakhWaU5wQnNjYngxMWRpUk9h?=
 =?utf-8?B?TnNlWkpES0tSVmtIR3lsS2t0V3NqSlA0L1BYVmJtVkx2MHNxbVgzdVhsM09u?=
 =?utf-8?B?Qm1JYkVxcVgwR2k4RVFDQnNobjRBUXA0aFRMa2xOVjhMKytFYmw4NjdqeVBR?=
 =?utf-8?B?ZUQweXdMa05uUUJxTm9FSHBTNGVCWU0yeXhockRCZFlteHhrbTB5UHRET1JW?=
 =?utf-8?B?YzlpQzd3cGFQL29OMy9iaENoUUpRMjQxQ25KbmJTaWlCNTNzTnJuOFBwV29j?=
 =?utf-8?B?YzBqeldDWk5RbmFZa2d0RWU1MGR0TTNYYjExVHBhV0pWSDlNRTIyb2dUdVM5?=
 =?utf-8?B?dlZMSjUxQ1g3cnQ5V0Q1ZDhhaS9MVEVxNmpCdWg3OXNzQUVMcXBQaW10Z2Vk?=
 =?utf-8?B?dWVnYzhxMzluVTd1TTlRMjMrSEQ3eXhEY2s1NjNTQy9tSlorT0JkNzVPNThI?=
 =?utf-8?B?alpndHNDVkRySmtjR05pLy82eXNRL3doM0dSWi9kWnZQNStMMVF2Z25WY1I3?=
 =?utf-8?B?ZytxREpPOTBuWTJxWE9LZWE2cGdwbDVKbTNyZ0IrbUZ2cFIvZlcxaXRjOGhC?=
 =?utf-8?B?THlJYVpRcWdlTE1zUis3M1dZZzVaMFNGTkRPcG1peXlFMTFQNHNxRi9YT0ZD?=
 =?utf-8?B?ckx6eXliODJCMmRLNEo1NFpJcGd2TW1XZGl6bWFuc0JXTEdOcDkyZ0hHUEFO?=
 =?utf-8?Q?0oorHfnGqm38Mm+aU86k71g=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB5005.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65fb1dac-2b0b-46dd-63b8-08d9ec035d4e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2022 19:35:44.3017
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KthOXGtLKAxjEnOutClYC/bcFTZzHRaA6zAjZXEIThLrHSCAprcX/cGLrzW8bZmz3B73KMMrYFlppp+vNIGJgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR04MB2372
X-Proofpoint-ORIG-GUID: ahNKZd31J9ugrWi2iYWJr30Csc3fUZep
X-Proofpoint-GUID: ahNKZd31J9ugrWi2iYWJr30Csc3fUZep
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-02-09_10,2022-02-09_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30 spamscore=0
 malwarescore=0 phishscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 mlxscore=0 mlxlogscore=999 clxscore=1011
 priorityscore=1501 adultscore=0 classifier=spam adjust=30 reason=mlx
 scancount=1 engine=8.12.0-2201110000 definitions=main-2202090103
Message-ID-Hash: FY665IYKQVR6XCVRUGHRDGKSKGIHDDIM
X-Message-ID-Hash: FY665IYKQVR6XCVRUGHRDGKSKGIHDDIM
X-MailFrom: prvs=90394b12d7=humberto.jimenez@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Mender Update Process N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EGLBOYGBVKYQIOR3ZAUYEDGCIJELX5ON/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6877631048577102163=="

--===============6877631048577102163==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_SN6PR04MB50058DF77F2183D7DDEE2673F82E9SN6PR04MB5005namp_"

--_000_SN6PR04MB50058DF77F2183D7DDEE2673F82E9SN6PR04MB5005namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgR2l1c2VwcGUsDQoNCkNvdWxkIHlvdSBwbGVhc2UgdHJ5IHJ1bm5pbmcg4oCcbWVuZGVyIC1p
bnN0YWxsIC9wYXRoL3RvL3gubWVuZGVy4oCdPw0KVGhlIGRvY3VtZW50YXRpb24gbWlnaHQgYmUg
b3V0ZGF0ZWQgYW5kIG5lZWQgdG8gY2hhbmdlLg0KDQpSZWdhcmRzLA0KDQpIdW1iZXJ0byBKaW1l
bmV6DQoNCkZyb206IE1hcmN1cyBELiBMZWVjaCA8cGF0Y2h2b25icmF1bkBnbWFpbC5jb20+DQpT
ZW50OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDksIDIwMjIgMTI6MzQgUE0NClRvOiBHaXVzZXBwZSBT
YW50YXJvbWl0YSA8Z2l1c2VwcGUuc2FudGFyb21pdGExQGdtYWlsLmNvbT47IHVzcnAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tDQpTdWJqZWN0OiBbRVhURVJOQUxdIFtVU1JQLXVzZXJzXSBSZTogTWVu
ZGVyIFVwZGF0ZSBQcm9jZXNzIE4zMTANCg0KT24gMjAyMi0wMi0wOSAxMzozMSwgR2l1c2VwcGUg
U2FudGFyb21pdGEgd3JvdGU6DQoNClllcC4gVGhlIGd1aWRlbGluZSBzYXk6DQoNCg0KDQpBZnRl
ciBjb3B5aW5nIHRoZSBNZW5kZXIgZmlsZSBzeXN0ZW0gaW1hZ2UgdG8gdGhlIE4zeHgsIGNvbm5l
Y3QgdG8gdGhlIE4zeHggdXNpbmcgZWl0aGVyIHRoZSBTZXJpYWwgQ29uc29sZSwgb3IgdmlhIFNT
SCB0byBnYWluIHNoZWxsIGFjY2Vzcy4NCg0KT24gdGhlIE4zeHgsIHJ1biBtZW5kZXIgLXJvb3Rm
cyAvcGF0aC90by9sYXRlc3QubWVuZGVyIHRvIHVwZGF0ZSB0aGUgZmlsZSBzeXN0ZW06DQoNCiAg
IHJvb3RAbmktbjN4eC1zZXJpYWw6fiMgbWVuZGVyIC1yb290ZnMgL2hvbWUvcm9vdC91c3JwX24z
eHhfZnMubWVuZGVyDQoNCg0KDQpBbSBJIGRvaW5nIHNvbWV0aGluZyB3cm9uZz8NCg0KR2l1c2Vw
cGUNCg0KQ2xlYXJseSAqc29tZXRoaW5nKiBpcyB3cm9uZy0tZWl0aGVyIHRoZSBkb2N1bWVudGF0
aW9uIGlzIGluY29tcGxldGUgb3IgaW5jb3JyZWN0Lg0KDQpJJ3ZlIG5ldmVyIHVzZWQgbWVuZGVy
IG15c2VsZiwgSSBhbHdheXMganVzdCBwcm9ncmFtIGEgbmV3IHN5c3RlbSBpbWFnZSBieSB3cml0
aW5nIGFuIFNEIGNhcmQgaW1hZ2UgdG8gdGhlIHVTRCBjYXJkLg0KDQoNCg0KSU5URVJOQUwgLSBO
SSBDT05GSURFTlRJQUwNCg==

--_000_SN6PR04MB50058DF77F2183D7DDEE2673F82E9SN6PR04MB5005namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDb25zb2xhczsNCglwYW5vc2UtMToyIDEx
IDYgOSAyIDIgNCAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJMdWNpZGEgU2Fu
cyBVbmljb2RlIjsNCglwYW5vc2UtMToyIDExIDYgMiAzIDUgNCAyIDIgNDt9DQovKiBTdHlsZSBE
ZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0K
CXttYXJnaW46MGluOw0KCWZvbnQtc2l6ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmki
LHNhbnMtc2VyaWY7fQ0KY29kZQ0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJZm9udC1mYW1p
bHk6IkNvdXJpZXIgTmV3Ijt9DQpwcmUNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1z
dHlsZS1saW5rOiJIVE1MIFByZWZvcm1hdHRlZCBDaGFyIjsNCgltYXJnaW46MGluOw0KCWZvbnQt
c2l6ZToxMC4wcHQ7DQoJZm9udC1mYW1pbHk6IkNvdXJpZXIgTmV3Ijt9DQpzcGFuLkhUTUxQcmVm
b3JtYXR0ZWRDaGFyDQoJe21zby1zdHlsZS1uYW1lOiJIVE1MIFByZWZvcm1hdHRlZCBDaGFyIjsN
Cgltc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJbXNvLXN0eWxlLWxpbms6IkhUTUwgUHJlZm9ybWF0
dGVkIjsNCglmb250LWZhbWlseTpDb25zb2xhczt9DQpzcGFuLkVtYWlsU3R5bGUyMg0KCXttc28t
c3R5bGUtdHlwZTpwZXJzb25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1z
ZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10
eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7fQ0KQHBhZ2UgV29yZFNlY3Rpb24x
DQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9
DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEt
LVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlk
bWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+
DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0
YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxi
b2R5IGxhbmc9IkVOLVVTIiBsaW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1NEY3MiIgc3R5bGU9Indv
cmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj5IaSBHaXVzZXBwZSw8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+Q291bGQg
eW91IHBsZWFzZSB0cnkgcnVubmluZyDigJxtZW5kZXIgLWluc3RhbGwgL3BhdGgvdG8veC5tZW5k
ZXLigJ0/PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5UaGUgZG9jdW1lbnRh
dGlvbiBtaWdodCBiZSBvdXRkYXRlZCBhbmQgbmVlZCB0byBjaGFuZ2UuPG86cD48L286cD48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj5SZWdhcmRzLDxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5IdW1iZXJ0
byBKaW1lbmV6PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxv
OnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRl
ci10b3A6c29saWQgI0UxRTFFMSAxLjBwdDtwYWRkaW5nOjMuMHB0IDBpbiAwaW4gMGluIj4NCjxw
IGNsYXNzPSJNc29Ob3JtYWwiPjxiPkZyb206PC9iPiBNYXJjdXMgRC4gTGVlY2ggJmx0O3BhdGNo
dm9uYnJhdW5AZ21haWwuY29tJmd0OyA8YnI+DQo8Yj5TZW50OjwvYj4gV2VkbmVzZGF5LCBGZWJy
dWFyeSA5LCAyMDIyIDEyOjM0IFBNPGJyPg0KPGI+VG86PC9iPiBHaXVzZXBwZSBTYW50YXJvbWl0
YSAmbHQ7Z2l1c2VwcGUuc2FudGFyb21pdGExQGdtYWlsLmNvbSZndDs7IHVzcnAtdXNlcnNAbGlz
dHMuZXR0dXMuY29tPGJyPg0KPGI+U3ViamVjdDo8L2I+IFtFWFRFUk5BTF0gW1VTUlAtdXNlcnNd
IFJlOiBNZW5kZXIgVXBkYXRlIFByb2Nlc3MgTjMxMDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8
L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPk9uIDIwMjItMDItMDkgMTM6MzEsIEdpdXNlcHBlIFNhbnRh
cm9taXRhIHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8YmxvY2txdW90ZSBzdHlsZT0i
bWFyZ2luLXRvcDo1LjBwdDttYXJnaW4tYm90dG9tOjUuMHB0Ij4NCjxwPlllcC4gVGhlIGd1aWRl
bGluZSBzYXk6PG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YnI+DQo8YnI+
DQo8bzpwPjwvbzpwPjwvcD4NCjxwIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6Ni4wcHQ7bWFy
Z2luLXJpZ2h0OjBpbjttYXJnaW4tYm90dG9tOjYuMHB0O21hcmdpbi1sZWZ0OjBpbjtiYWNrZ3Jv
dW5kOndoaXRlIj4NCjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuNXB0O2ZvbnQtZmFtaWx5OiZx
dW90O0x1Y2lkYSBTYW5zIFVuaWNvZGUmcXVvdDssc2Fucy1zZXJpZjtjb2xvcjpibGFjayI+QWZ0
ZXIgY29weWluZyB0aGUgTWVuZGVyIGZpbGUgc3lzdGVtIGltYWdlIHRvIHRoZSBOM3h4LCBjb25u
ZWN0IHRvIHRoZSBOM3h4IHVzaW5nIGVpdGhlciB0aGUgU2VyaWFsIENvbnNvbGUsIG9yIHZpYSBT
U0ggdG8gZ2FpbiBzaGVsbCBhY2Nlc3MuPC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAu
NXB0O2ZvbnQtZmFtaWx5OiZxdW90O0x1Y2lkYSBTYW5zIFVuaWNvZGUmcXVvdDssc2Fucy1zZXJp
ZiI+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgc3R5bGU9Im1zby1tYXJnaW4tdG9wLWFsdDo2
LjBwdDttYXJnaW4tcmlnaHQ6MGluO21hcmdpbi1ib3R0b206Ni4wcHQ7bWFyZ2luLWxlZnQ6MGlu
O2JhY2tncm91bmQ6d2hpdGU7bGluZS1oZWlnaHQ6aW5oZXJpdDtjb2xvcjpyZ2IoMCwNCiAgICAg
ICAgMCwgMCk7Zm9udC12YXJpYW50LWxpZ2F0dXJlczogbm9ybWFsO2ZvbnQtdmFyaWFudC1jYXBz
OiBub3JtYWw7b3JwaGFuczogMjt0ZXh0LWFsaWduOnN0YXJ0O3dpZG93czogMjstd2Via2l0LXRl
eHQtc3Ryb2tlLXdpZHRoOiAwcHg7dGV4dC1kZWNvcmF0aW9uLXRoaWNrbmVzczoNCiAgICAgICAg
aW5pdGlhbDt0ZXh0LWRlY29yYXRpb24tc3R5bGU6IGluaXRpYWw7dGV4dC1kZWNvcmF0aW9uLWNv
bG9yOg0KICAgICAgICBpbml0aWFsO3dvcmQtc3BhY2luZzowcHgiPg0KPHNwYW4gc3R5bGU9ImZv
bnQtc2l6ZToxMC41cHQ7Zm9udC1mYW1pbHk6JnF1b3Q7THVjaWRhIFNhbnMgVW5pY29kZSZxdW90
OyxzYW5zLXNlcmlmO2NvbG9yOmJsYWNrIj5PbiB0aGUgTjN4eCwgcnVuJm5ic3A7PC9zcGFuPjxj
b2RlPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuMHB0O2NvbG9yOmJsYWNrO2JvcmRlcjpzb2xp
ZCAjREREREREIDEuMHB0O3BhZGRpbmc6MS4wcHQ7YmFja2dyb3VuZDojRjlGOUY5Ij5tZW5kZXIg
LXJvb3RmcyAvcGF0aC90by9sYXRlc3QubWVuZGVyPC9zcGFuPjwvY29kZT48c3BhbiBzdHlsZT0i
Zm9udC1zaXplOjEwLjVwdDtmb250LWZhbWlseTomcXVvdDtMdWNpZGEgU2FucyBVbmljb2RlJnF1
b3Q7LHNhbnMtc2VyaWY7Y29sb3I6YmxhY2siPiZuYnNwO3RvDQogdXBkYXRlIHRoZSBmaWxlIHN5
c3RlbTo8L3NwYW4+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMC41cHQ7Zm9udC1mYW1pbHk6JnF1
b3Q7THVjaWRhIFNhbnMgVW5pY29kZSZxdW90OyxzYW5zLXNlcmlmIj48bzpwPjwvbzpwPjwvc3Bh
bj48L3A+DQo8ZGl2IHN0eWxlPSJtc28tZWxlbWVudDpwYXJhLWJvcmRlci1kaXY7Ym9yZGVyOnNv
bGlkICNEREREREQgMS4wcHQ7cGFkZGluZzoxMi4wcHQgMTIuMHB0IDEyLjBwdCAxMi4wcHQ7YmFj
a2dyb3VuZDojRjlGOUY5Ij4NCjxwcmUgc3R5bGU9ImxpbmUtaGVpZ2h0OjE1LjZwdDtiYWNrZ3Jv
dW5kOiNGOUY5Rjk7Ym9yZGVyOm5vbmU7cGFkZGluZzowaW47d2hpdGUtc3BhY2U6cHJlLXdyYXA7
Zm9udC12YXJpYW50LWxpZ2F0dXJlczogbm9ybWFsO2ZvbnQtdmFyaWFudC1jYXBzOiBub3JtYWw7
b3JwaGFuczogMjt0ZXh0LWFsaWduOnN0YXJ0O3dpZG93czogMjstd2Via2l0LXRleHQtc3Ryb2tl
LXdpZHRoOiAwcHg7dGV4dC1kZWNvcmF0aW9uLXRoaWNrbmVzczogaW5pdGlhbDt0ZXh0LWRlY29y
YXRpb24tc3R5bGU6IGluaXRpYWw7dGV4dC1kZWNvcmF0aW9uLWNvbG9yOiBpbml0aWFsO3dvcmQt
c3BhY2luZzowcHgiPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTAuNXB0O2NvbG9yOmJsYWNrIj4m
bmJzcDsmbmJzcDsgcm9vdEBuaS1uM3h4LXNlcmlhbDp+IyBtZW5kZXIgLXJvb3RmcyAvaG9tZS9y
b290L3VzcnBfbjN4eF9mcy5tZW5kZXI8bzpwPjwvbzpwPjwvc3Bhbj48L3ByZT4NCjwvZGl2Pg0K
PHA+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cD5BbSBJIGRvaW5nIHNvbWV0aGluZyB3cm9uZz88
bzpwPjwvbzpwPjwvcD4NCjxwPkdpdXNlcHBlPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvYmxvY2txdW90ZT4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiIHN0eWxlPSJtYXJnaW4tYm90dG9tOjEyLjBwdCI+Q2xlYXJseSAqc29tZXRoaW5n
KiBpcyB3cm9uZy0tZWl0aGVyIHRoZSBkb2N1bWVudGF0aW9uIGlzIGluY29tcGxldGUgb3IgaW5j
b3JyZWN0Ljxicj4NCjxicj4NCkkndmUgbmV2ZXIgdXNlZCBtZW5kZXIgbXlzZWxmLCBJIGFsd2F5
cyBqdXN0IHByb2dyYW0gYSBuZXcgc3lzdGVtIGltYWdlIGJ5IHdyaXRpbmcgYW4gU0QgY2FyZCBp
bWFnZSB0byB0aGUgdVNEIGNhcmQuPGJyPg0KPGJyPg0KPG86cD48L286cD48L3A+DQo8L2Rpdj4N
Cjxicj4NCjxwIHN0eWxlPSJmb250LWZhbWlseTpDYWxpYnJpO2ZvbnQtc2l6ZToxMHB0O2NvbG9y
OiMwMDAwMDA7bWFyZ2luOjVwdDsiIGFsaWduPSJSaWdodCI+DQpJTlRFUk5BTCAtIE5JIENPTkZJ
REVOVElBTDxicj4NCjwvcD4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_SN6PR04MB50058DF77F2183D7DDEE2673F82E9SN6PR04MB5005namp_--

--===============6877631048577102163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6877631048577102163==--

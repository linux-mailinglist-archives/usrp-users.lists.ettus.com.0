Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 038B74CB324
	for <lists+usrp-users@lfdr.de>; Thu,  3 Mar 2022 01:20:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9A2AD384A77
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 19:20:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="FFxuJPxl";
	dkim-atps=neutral
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2074.outbound.protection.outlook.com [40.107.220.74])
	by mm2.emwd.com (Postfix) with ESMTPS id 3202638492C
	for <usrp-users@lists.ettus.com>; Wed,  2 Mar 2022 19:19:08 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oFIxWJ/5SF1J+g5Z1ox+KP4vovkR2/0lshTfpn7T+1r6h355alnph9iwj+pHwQnVhQjfWvrMv36sXNRfZ9lkl+Il741xwSagisf9vJbDTHj+8kU3R9PKOaxibGXfbPuKn4IMqTUfIuTdEo+dKh22GRcKFP8tj9OvEcpyFPsQt87mcCKGe0gLGMyRxtVK1qBSrXEMLGAECSaTGi1es8FQ/1kbJLXmShT6Rzpwj38kbLF4Xex0BmvX9bEPN1C8GxgwAnKybhtn0S5RyPtKQsOIHVQORptKTFXGHXCbuDeaNUfcxuFKiLD8xDSS6LKRp62/3rVCQIKyaNycI6wfJ48N3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0B7TV/CRaWhU61cEunBVjDKQmaI0apXrvw7CU82anVQ=;
 b=dppOoBju74VBmS7wGEBVasfdfZDqnYyRunuvfhnj80VYQWZW4xcRfkTjYjDrdkT3zmfVjuU22hFWniu816Fh7QORqLth25HTGUkhfHgj158yM0GTJfgtVzRgCK1qVOX0m675wxIJCO/nh8nFfPIBerRIQkN16Vj/2csKJu8HeasLscNfryVe/pfDMc4Si/jfNkCyyL2gb49cANqct+OvmIzkBTmkvwj85ecCzHQK194g/r6jw8qSk7pdFFB+Wm+8RGecGsHTsHsEp2dthPrtwx0wvqi8C5wtEscPITUeS0HVYO6vyN1m3tY8TibX4uuOsuPTmHeW0Bw2LjYG/IVOrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0B7TV/CRaWhU61cEunBVjDKQmaI0apXrvw7CU82anVQ=;
 b=FFxuJPxln7FaFOsrzQHRADZpMUjCzoC/ge8sTOoIhzp9HphP0Qr4iSvUzw6+LpTsxH95CJlWfPvI3bSeWuVlAsmt3mo3nBk0UOBcOH5zBKh560WMvkaF9ivR2hUCrR702+V04eYh4YlG+N9hA2nrBkv8q3L2vdONmKEZr3i6hmg=
Received: from BN6PR16MB1700.namprd16.prod.outlook.com (2603:10b6:405:20::21)
 by SA0PR16MB3949.namprd16.prod.outlook.com (2603:10b6:806:82::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Thu, 3 Mar
 2022 00:19:06 +0000
Received: from BN6PR16MB1700.namprd16.prod.outlook.com
 ([fe80::895b:e239:fb85:9291]) by BN6PR16MB1700.namprd16.prod.outlook.com
 ([fe80::895b:e239:fb85:9291%12]) with mapi id 15.20.5017.027; Thu, 3 Mar 2022
 00:19:06 +0000
From: Jonathan Pratt <jpratt@srcaus.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: single flow utilising multiple receivers with
 high sample rate
Thread-Index: Adgt9O9LQahBt6bST06gwNL8f1d/iAALcJCAABXuugAAAHGUgAAGAAUg
Date: Thu, 3 Mar 2022 00:19:06 +0000
Message-ID: 
 <BN6PR16MB17000F370B47DC8B1001A1BAB9049@BN6PR16MB1700.namprd16.prod.outlook.com>
References: 
 <BN6PR16MB170007FD7537DF2A793E2D27B9039@BN6PR16MB1700.namprd16.prod.outlook.com>
 <c0d9dae1-5467-b4af-d4c9-889599f2f1c8@ettus.com>
 <BN6PR16MB1700F6B67CE5F3F4EA17DB7DB9039@BN6PR16MB1700.namprd16.prod.outlook.com>
 <15d3388e-530d-4f36-b060-18b98fb2a5c6@gmail.com>
In-Reply-To: <15d3388e-530d-4f36-b060-18b98fb2a5c6@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 21629142-010c-4deb-4952-08d9fcab6e28
x-ms-traffictypediagnostic: SA0PR16MB3949:EE_
x-microsoft-antispam-prvs: 
 <SA0PR16MB3949AAD26265838E198FD206B9049@SA0PR16MB3949.namprd16.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 INhcW2AKtGESZOA5RRs+qEVWXswZRYVnL58NiAyFUMLc+HCx8EXCc4DGcYZVHaGXDKYxNV+OMFtStUjghGbWNvu8JHDQq4IwIejxB3ID+3EwaTCy+l6RF/pYJpxO7DyFpbH+CDprwew3tMODyirlkrnqkFIuK29vjY4tX4D6k+BtWlyxbHQaOTs79GFdliehvYscbnrm0zCrOu8E4ivvNalm67lvvRu03oqGPxH+zFJM9x6f0w90GdBGa4DPbwH5HDA+f7nyw4cbqwG4+cPueNkxFR6LeK5hbDvbm+6RQYWW8ArRbRj1T2gcS1hIE+/WTpo7x3Y4cOFuLnBRr+IEYX7DiYt4R4uFJSZp6wYOhYFqYpE7171FyLEU8REET2rJjO6kviJnVK3/UFJ513EsjEQ47r625Ep13fp3IuA5QCsjjgEJ+Nvc92ZncrB0Eqv1amqJNJk3OKS8f89lr8naqnMIErWCEYaaB66eqne0i3RKN/NIcV5Tzz6+vlzRS+iPN5XbWygaqtztWe0mzTof5FvVqsRzNXDuAhmsvpC12+z7GD86tDVgpkieST8hKh7eY0V5rI4z+B2uK7rpBMX01FtZt1J6qwOXObl1nFfsJrFC4rD3l7IZ3BC6QB3DFZipHPbGh5BmBH/G/E2TU8bECbFxvPNlJsfdlYyViMhzkjt4jG5MNNHy3qNYBBXDEy3g2FFesU72nKSx1hlwhmRY6Q==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR16MB1700.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(346002)(396003)(366004)(136003)(39830400003)(376002)(33656002)(66556008)(5660300002)(6506007)(76116006)(66946007)(64756008)(8676002)(66446008)(66476007)(53546011)(7696005)(9686003)(52536014)(8936002)(71200400001)(508600001)(2906002)(186003)(86362001)(26005)(38100700002)(316002)(6916009)(122000001)(38070700005)(55016003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?OWN5RGg3cm1IeThrbFE2a0NwZWxJM2JEb2RJcXAvQ1B0bGRvTDVKNjQ1amlU?=
 =?utf-8?B?TS9kQW1DM09ZYkpOM0NVc3N1TlZ5T0plS3AwcEt4SG1FR00xWWVWWkdEUVRx?=
 =?utf-8?B?ZVVWclFtNTBFQXVReUVyQ001bXJmNHVKVEQrdnVqenl1SGw5YUJPRVo3eVdV?=
 =?utf-8?B?VCtxdkdoR2ZsM3lGaGlJQVozUUl5M3JxYUNKYnNySnBDL1ZMeXlCcm1lTHdw?=
 =?utf-8?B?dXFrTitra1BqSE1SblpQMXdrVm1VU2lZcHVQak9RdG9aem9BOXdvWnpmUmlk?=
 =?utf-8?B?YnNnUDJtWE55NzhzMzBNTlUrMU1va0tCVjRwc1dYUkl3WTFIRHNVMVRJQ09I?=
 =?utf-8?B?bVN5aitRY1EydysvZ3c2cU1yMWtUeVlDNlZGQkhHWHR5dlhESTBnaEZuOUNw?=
 =?utf-8?B?N2NaczRONjNJWkNQRlQrMTZBSk5KVkVmOHJzYkNXd1lTdHYzMldjSFUvS1VH?=
 =?utf-8?B?dkRLUXF1UFJwNVF3K1dvT2RVZ0tqYUxtMWgySVBFV1gvdGdmT3Zld0pVdGV3?=
 =?utf-8?B?WXdkWXIrd0N1UkZ0akV3WVlhMTM3Nm9aWUR5RDJIUkRldnVEei85eWd1bGtQ?=
 =?utf-8?B?cGRTaWRHQm1oczY3MjZDSVpCZFp5Nk1zZHJZMlVnbHVZVktLb0p6N05OY0Ir?=
 =?utf-8?B?c0MwV3hmelU3d3FjaEdGRWZNWmNXQWlBTjl5Z1h0bS8yMHR0bElrdmR0ejRQ?=
 =?utf-8?B?ODc3STlHQ2RWcVhmem5ITElZZWh3TzAvV3RmcFJvZUtIOEpjWGhqUXBXODRl?=
 =?utf-8?B?V0hzNXN6RVZIQVpVQjd0RUtJTnB4dEUvZVFiVmdBOWNMQVlhU1c3czhxL0tB?=
 =?utf-8?B?bTUvOWtqckFwZi9BMlA2WEQvRmxLVE9HMVJXbkRnaUdHbGIxZit0ZUlGQVhN?=
 =?utf-8?B?ZzBDeDhxQmFHQWZsQnNYVklTQU5vRVArMzVsMWd2N0lYcDdzU1AraVRUTUh1?=
 =?utf-8?B?d1Vkc2hLSUFRalNQVVJoR3l2MFlHNlAzNEhuT25GZmk5RmNndEhMclhpajAv?=
 =?utf-8?B?VmFKTW5QekxIM05QdWJUeFhFWnh2MU5vUTJZSUIyZ2w2SHY0aFlYWHBVZlFs?=
 =?utf-8?B?SURDeVV6NHNXVTNXSW1Ua0tyK1dpc1hRN3hxOTJPM0JFT0ZDTHMxZmZDTCsw?=
 =?utf-8?B?dkVpMDk2OTFKZmkwbStrWHVmZEZpQzJvZ09vVGlGRURDZ28rTFp4eHpBY1Vo?=
 =?utf-8?B?V2pwUTY0M1V0V05sanYvdExJdm0zVllxQUtFeXcvM3EzLzh5dXd1KzJ0LzZS?=
 =?utf-8?B?N3pKamMwY3M5eStkdC9XNXlJL29hazV3YXNBV0xNUFlIOXE2TjgwUXkrdEJq?=
 =?utf-8?B?Q0dKeXJsdkhLZkdMRVNSaEh1azRVRFlCYmxBZysrc1B4bTY1b1VtQWxWbjJN?=
 =?utf-8?B?d3d3akVFdEtnQmxwbnNveDJGdnRZc3RHcGdLM1EwK0Y5TVpGSzB5L09DU2tw?=
 =?utf-8?B?NXZyUFdjeVBaS29maWRYcXBqU3l0b0M3YVUyZEczaXJEVVZaTTMrVWpTdUhh?=
 =?utf-8?B?UHdxVmVCaUROZnBNc1FxYmNra1p5VjdZQk9vbVJLaEpZWFlxaC8xVFV2Zk1n?=
 =?utf-8?B?N0ZoSTg3L2JVTThQbmRSMHhlcVVNL25uVEh0OG9nSElidU9nWC94UFBZemF1?=
 =?utf-8?B?cXVqeU1reE5LREZjTjB4Vm4xWHVGblBvL1VWR21tdnI2aktGYnlFV056WkFT?=
 =?utf-8?B?M28rNjlEY1hFMERNUGQzTE9uUzR6eCtwNjdJNS91Nm1IMHp5SnhBcEtqN1Ra?=
 =?utf-8?B?T0pwekk0d3A3dTBYU1RCWGMrbG1xL0Rzc1pmdkRLNjFHb3NNUm9tQm5hUEtT?=
 =?utf-8?B?cDZpcE9tSzFsOFV6c2RubnVDV1c4eThMWWlOTnVjNGJvOU1idEdIZW1OcXQ2?=
 =?utf-8?B?TEh2NXJGbk5FMWpTSk80NjlmVHlPU2F1NnFGVnBneEtURFhzYjVtY3o3VFNO?=
 =?utf-8?B?bEpaQkV5N0xTbVBFSzFhQ0ZHU01IeXNFREtMOXIyZ3RmTmJTRlpXM0NocTJB?=
 =?utf-8?B?UFV2Tm54QWxjMlF1bmxNOGV0SFByZGg4U1V6TjVXaXM0WmcwUlFVdnFxTFVh?=
 =?utf-8?B?eG9vRG50RlVSK3BJekxaV2psSFAyYXhnVDdWYkNhSW51alZ3YUkzcHViZDNq?=
 =?utf-8?B?dXFUa092YlBWd0VkcTF0QXRVKzJGRWdVWlMxZytwMUFSNitBS0xZVHNRQlc5?=
 =?utf-8?B?OWc9PQ==?=
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR16MB1700.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21629142-010c-4deb-4952-08d9fcab6e28
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2022 00:19:06.5970
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bH+TYYgZJeDlIQkD4I2yA63GKwz/C3i5g6tkeSQWwj8BMbjMWQ5nmQbm7vETORGgEEdzdbSnkAmnJSLNhEDcjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR16MB3949
Message-ID-Hash: 3M4LHTYVK5EHYJ65UGDQW66VVEG5LQIF
X-Message-ID-Hash: 3M4LHTYVK5EHYJ65UGDQW66VVEG5LQIF
X-MailFrom: jpratt@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: single flow utilising multiple receivers with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ARISYK3ZCSMCJHQYQLGFCLJN2J2FZ53L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thanks. This worked

kind regards
JP

-----Original Message-----
From: Marcus D. Leech <patchvonbraun@gmail.com> 
Sent: Thursday, 3 March 2022 07:57
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: single flow utilising multiple receivers with high sample rate

WARNING: This message has originated from an untrusted source. Be mindful of attachments and embedded links.

On 2022-03-02 16:23, Jonathan Pratt wrote:
> Well, yes I do want to do that.
>
> It's a test of data transfer capabilities of the PC in preparation for use with an X410 in the future (but I don't have an X410 yet).
>
> The other reason for over sampling the band is that in detecting a pulse of RF signal, the precise start time is very important in our application so that the higher sample rate affords better resolution in that regard.
> The X310 has two 10GbE interfaces, is there not an approved way of using them in this manner? What if I had 2 x TwinRx and wanted to get 100MSPS from all four of them?
>
> kind regards
> JP
>
>
You just need to use the "second_addr" syntax, as I linked earlier in
this thread.   The "addrN=" syntax you're using is for
   multiple USRPs.

You'll also need the correct FPGA image to support 10GiGe on both ports, but I think you'd already said you'd done that.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

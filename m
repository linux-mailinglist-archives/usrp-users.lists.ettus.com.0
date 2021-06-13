Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F5C3A5A10
	for <lists+usrp-users@lfdr.de>; Sun, 13 Jun 2021 20:41:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 437AA3844FD
	for <lists+usrp-users@lfdr.de>; Sun, 13 Jun 2021 14:41:40 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="WUWfIVrT";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.184])
	by mm2.emwd.com (Postfix) with ESMTPS id E7FA838408E
	for <usrp-users@lists.ettus.com>; Sun, 13 Jun 2021 14:40:50 -0400 (EDT)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.164])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id AD7D640065;
	Sun, 13 Jun 2021 18:40:49 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam07lp2042.outbound.protection.outlook.com [104.47.56.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 6A6F9B00073;
	Sun, 13 Jun 2021 18:40:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aSiHeR5El6WdehrBPvqLCpEQp/yosJoTOVTAzJAm23HNhrNrb84owo/MPI2M0Zvt1CSFhf5IjBRZazoCOnyOlIdiD9KWjbMCO45W635gZl4OWVZqYvQadgtdiYoItbfARJiIQ7cfwidrIGqqss84NAP4ECVLUAsuaCd1rMUgV6Oen4npJ9h9/9dOYxU7dVVmEz0A03YfJ5p/hztjfTS7+3MUoALhuVNp8z+TahGB198ngS/NxoLlGBJbLftYFGcCmioQaqV0iTFBdXMK0d10Zjan5WeWD3782k2zn60iXmqy0K2CAl89e7yObMeXzvapDPm2NQaiH8tPnrmspdMvxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qm0uAQwmW/vgxYE74RKHfDZAoE/lzo7vgCNpWeubxRI=;
 b=S4eEV9+jY3PXXiLUhk148bYPTMn2CFEIWRU88moD4TLsrlkU4MTTrl9zA0TDwPTq6PX8v+c1Oay1uiteybVBUgYcQydCFpIJPjKygQPjxiC2MLvHrN8xMdENujiK5P3yVeSAjL3UJN9PVjjh+AchbXUKFTfBkcGgS38pPA7RbNVrBXElUmNLhJOdkn0hsQh0oqgdurVjLeBykNLtPVZ2HZC4sCSsU7WnRp/M+MR+Z1Eqkvew2WzYUfz5HbHp8I9puZevHBKAuE7GVQBLFcEW4Fy2oLnhMvVUKOi/axxvCe8kFNLCXz8aPkVmJiLNRaFSHuOv0Il7YS3IuDxQQ20row==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qm0uAQwmW/vgxYE74RKHfDZAoE/lzo7vgCNpWeubxRI=;
 b=WUWfIVrT7NL+XumFCE80YkwxNqUYD8wHjxpXQIDD7/VPf0mR54+oILSgCbaVcJNXy1Tmgq1UxDBpdq2mtm+SFThG4hbX2pN/cm+ozFvOJvmB26O7kByt3t30niEU4iU8Si6DqRGiiQvQwYxEaH5GWGkUv4rEDwNjw8z49T0pans=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3584.namprd12.prod.outlook.com (2603:10b6:208:c9::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Sun, 13 Jun
 2021 18:40:46 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::cb6:31ec:520c:c197]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::cb6:31ec:520c:c197%7]) with mapi id 15.20.4219.025; Sun, 13 Jun 2021
 18:40:45 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: =?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>, "Marcus D.
 Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 1PPS input voltage
Thread-Index: 
 AQHXXrsEFk6GKS0mUEmOl1kUojleFqsOyS4AgAAH0ACAAAD7EoAABFOAgABWLYCAAx0X5w==
Date: Sun, 13 Jun 2021 18:40:45 +0000
Message-ID: 
 <MN2PR12MB3312344CCB32F1F3FA55FAA6B8329@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB3312739D7A0996F851BC7093B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
 <18dc6abe-6785-2c0c-221a-03c48028b718@ettus.com> <60C3679C.8070900@gmail.com>
 <MN2PR12MB331229296F2D645E866AD0C4B8349@MN2PR12MB3312.namprd12.prod.outlook.com>
 <60C36C0F.7040209@gmail.com>,<8c624ce3-ab9e-477a-1b37-d2a9289e6f7d@ettus.com>
In-Reply-To: <8c624ce3-ab9e-477a-1b37-d2a9289e6f7d@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: ettus.com; dkim=none (message not signed)
 header.d=none;ettus.com; dmarc=none action=none
 header.from=gardettoengineering.com;
x-originating-ip: [69.136.237.142]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6642be1c-5c53-4469-4922-08d92e9ac1a3
x-ms-traffictypediagnostic: MN2PR12MB3584:
x-microsoft-antispam-prvs: 
 <MN2PR12MB3584443EC86315329C82EDC1B8329@MN2PR12MB3584.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3631;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 e/1vmf7jIhfXm9FfC9iMxDbImJ49VXEWF8wZnwl+R3gNbR6w8YO2TzdVB5XkuL+UthB2R/hVfbtQnvnr/vYCYhCvmKK2U96Q5ZvM06CrK31WHfaNJzo/bE6JAIMEmqVvLXkHN2j3q3njuMEZrleYOd/lzVOa/B4NLKGrJev7arjd25JlIUVsF7vJNm5Gb6IEnA6QCjYywZyNgP+i1HAGlKfYtV1C7Xn7KCFvUjLUnJ8xMQsf8uAFkJlqwL7XGeEuB2eFVQ+tof4YnSP0Qpp1uyw7zgSOZbputqzpyc5Rlsm4Djp8UIw3tcuIOkHF799NLN1fmCIGJ1ueRW9ojMgiDypFjYcNTvZH+VXbVlrDJr0HSS1nLNjE+elR5Oa4N2fqS8ZEZWX/otOqreH7FmorMdE1NjKohN6W3jWgaV4sIZQqTWivAGGUIFc09UgENJotttY/+zzqrnGvcAQ9xlTeQnMMp9O1JY6UOM1XjmJzMj/buWYsAYw9Mc/eW96tjsRSnUOhjHv24wSlLm8qbgfowEqMSuEfh6lrlZpmCjUfPAUbXb8MxAxzZ3KkOjwPicHhTyy/lgBtsEI/XqwLvrVXaet5uwFG6BcxavLiXdLNwhKaBBL1LLHKiUrwEP6MRIKEV12/IpMhfb2UAz5rCXZKsW5XryL5fDsUO6DtYWOU2IP2EM24ZbwS41XwLyUX8S2slbhXsWpu3VZdh1gT/OV6WQGXeEviZZSQgowgyM04YjEcqNSaooHR2P09oml7oYTqBm1/oaPNVW9S7gKvkWcylQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(346002)(396003)(39830400003)(366004)(136003)(110136005)(18265965003)(71200400001)(38100700002)(9686003)(53546011)(55016002)(33656002)(6506007)(186003)(166002)(8936002)(478600001)(8676002)(76116006)(83380400001)(5660300002)(19627405001)(86362001)(2906002)(26005)(122000001)(52536014)(66574015)(316002)(7696005)(66476007)(66556008)(64756008)(66946007)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?RlJwgyCG3jlExCPOGjhM+Lrc2HRHWb9XNteozYHS59MHXm7qAGwv4++LBi?=
 =?iso-8859-1?Q?ZSP5qmQ8ngjykbDRLXvFAS192IKLZVKwxToMR6FkFL9OXySvBj7AvN3XhN?=
 =?iso-8859-1?Q?juP3Fkog+hK3bESE5AkrY+oGqLu0z0fnf+wc5iqLES1YkzPTiP30ALC5dW?=
 =?iso-8859-1?Q?QwJArgLdsaAzcjOei7kINlM7LIOpe61GP76iIYp/mViRUp1Ay6BvmqI4zz?=
 =?iso-8859-1?Q?J5+Ir/GN+UfMOcRt24G7KT2PO4X3fBv0UAdrQ2VoWPhe//KYg2mnvX0coT?=
 =?iso-8859-1?Q?Tc46+kgSRXStifMb5O04dTTGboNPA6NNsMdM4RZOD4XhQsAXhYD351u4hL?=
 =?iso-8859-1?Q?ASrr6Vd3l8yBAvQz8bNY7nJqsk9BnRocKjsBYgUX9cgAvdEIuc8Wt8vk2c?=
 =?iso-8859-1?Q?OK2bHYv25DfNuPegh79t+Ql4/jtQARszNiSCzHiaYlS3LHNT7j7x9d2wyp?=
 =?iso-8859-1?Q?IDIgMDTUl/pXkmjKLK5qjc0lVoq08vRmlazRfBYreTvXU2xnEdWJglG6+5?=
 =?iso-8859-1?Q?D5B1NXLKH1P75g32jJKAIV7Sn5pb6F/WIodnhhfWIvQLDNuBDwsO/Ra/Mq?=
 =?iso-8859-1?Q?eExkiglXSg46MfM+mp8LA7Vp26hXJ1eE+iIhNk0UUDISLT3IUPTixQHkFk?=
 =?iso-8859-1?Q?Z/ixsgQCK1cJ7+9WOW1WQnLtaB+7EdqhrnWtQIER4iFGirypGcxCqcimIb?=
 =?iso-8859-1?Q?0Kk5po1UJ7NxhB2+RHop73kOqnYKGE4wZaEKXUWK87YaTghbvT4YHpvbQk?=
 =?iso-8859-1?Q?EhDTflQXXqMoIusiC+MZbrOAdTHqosQQXmgCjkwUtG5Gyt7UsrdCu4ONjR?=
 =?iso-8859-1?Q?3gb9cuhH7JqQ4NnXoFI5HNFIh77/bnxcsbh17SRsXou5xpcHs6QlwamgtA?=
 =?iso-8859-1?Q?m3XiGyLpCl/YGE4pt/SgQKtVq34ZFOYpWcisfCLhhoJmB6MN7mwiHp8WAJ?=
 =?iso-8859-1?Q?VpA05maeaFwfhE9l1L7szSnLvCC/YQ3aB8eKQc2qzzMMsC3yQv4JDjsVTg?=
 =?iso-8859-1?Q?GkBA2neps5wbqT6s+rs2laN1Y61fLOLs7chSZlmo+UhwaTYKwLJHPDmCZB?=
 =?iso-8859-1?Q?t/+k3uO1KsFySy3dYCfTBEziZXChU5djKaDZj/lqGe1ZJsj6bXuYK21Pyc?=
 =?iso-8859-1?Q?7PyvCiYrH5lYB+lF8VNs0OUWLTRZFYXF6XG6erGKuzVkKPAhxIugzdxCLn?=
 =?iso-8859-1?Q?wkvfbE3o7oH7usuMjprcQ6d00MpjhSUhvQN9+gFl1/Ot+rVB6MgkpiBnMd?=
 =?iso-8859-1?Q?s99k8sTM/JB1t/ujXq3u+utwW8KgDNyMAvt7Ql/hJZtjKkMWHphSaljRbs?=
 =?iso-8859-1?Q?SMhiX99qzZxiOZMIwRZC3TgYhATenBrM3YszJfC3NdpaVuw=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6642be1c-5c53-4469-4922-08d92e9ac1a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2021 18:40:45.6621
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: upCmelZ4DaIT6SQJH8uBbQSpAIW0wF9PcqX2pHAty/UwlHHf9t4DxJhhGtzJPPm8F506xQPrl5SZDpbiywLO1Q5rFglpTamnPlGq77JjEzM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3584
X-MDID: 1623609650-ACNUL8is5iP7
Message-ID-Hash: MRQ76UJKTJO37KJSJWOM4F64X5FN2RA4
X-Message-ID-Hash: MRQ76UJKTJO37KJSJWOM4F64X5FN2RA4
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 1PPS input voltage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/F6CTKPRAFOBVGTJYXGVQPQUV5E2WC2PG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3835323200489362316=="

--===============3835323200489362316==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3312344CCB32F1F3FA55FAA6B8329MN2PR12MB3312namp_"

--_000_MN2PR12MB3312344CCB32F1F3FA55FAA6B8329MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ok, thanks for the info. I appreciate you guys running this down.

Jim

________________________________
From: Marcus M=FCller <marcus.mueller@ettus.com>
Sent: Friday, June 11, 2021 3:07 PM
To: Marcus D. Leech <patchvonbraun@gmail.com>; Jim Palladino <jim@gardettoe=
ngineering.com>; usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: N320 1PPS input voltage

Hi Jim,

The congregation of Marcuses checked with R&D, and we figured out that in f=
act, the
NC7SV157 in U24 was replaced by a SN74LVC2G34, which is OK up to 6.5 V inpu=
t, in Hardware
revisions starting with Rev C.

So, if (and only if) you have a N320 in a revision that's C or greater, you=
're safe.
Otherwise, please don't connect a 5V source to the PPS input for now.

Best regards,

Marcus


On 11.06.21 15:58, Marcus D. Leech wrote:
> On 06/11/2021 09:45 AM, Jim Palladino wrote:
>> Hi Marcus,
>>
>> Right -- the output of the Octoclock is 5V. I'm not seeing how the N320 =
can accept that
>> as an input. The knowledge base article says the N320 expects 5Vpp at th=
e 1pps input.
>> But the schematics/parts data sheet for the input buffer don't seem to s=
upport that . .
>> . unless I'm missing something.
>>
>> Thanks,
>> Jim
> It certainly looks like a potential problem, but I haven't heard of anyon=
e having 1PPS
> failure issues on the N320 when used with
>   Octoclock--pretty sure it was tested with Octoclock prior to release.  =
But I'll check
> with R&D.
>
>
>>
>> ------------------------------------------------------------------------=
------------------
>> *From:* Marcus D. Leech <patchvonbraun@gmail.com>
>> *Sent:* Friday, June 11, 2021 9:39 AM
>> *To:* usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
>> *Subject:* [USRP-users] Re: N320 1PPS input voltage
>>
>> On 06/11/2021 09:11 AM, Marcus M=FCller wrote:
>> > Hello Jim,
>> >
>> >
>> > hm, that knowledge base article must be wrong: The octoclock internall=
y only has a 3.3V
>> > supply. But before I say something wrong here, let me check back.
>> >
>> >
>> > Best regards,
>> >
>> > Marcus
>> The 1PPS outputs on the Octoclock are bufered by 7404 inverters, which
>> appear to have a 5V Vcc.
>>
>> >
>> >
>> > On 11.06.21 14:17, Jim Palladino wrote:
>> >
>> >> Hello,
>> >>
>> >> We are planning on using an octoclock with several devices, including=
 an N320. The
>> >> octoclock outputs a 5V 1pps signal, but I'm confused about the N320 1=
pps input.
>> >>
>> >> According to
>> (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_N32=
0_N321-29-3A&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=
=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCWF4BKKIX7QR3SO2L=
J3yD1MyEElYsX5a8WMs&s=3DTdFHQJNItGehIsL1D4yXezIfq_vO05AvF1_lMSyNpHs&e=3D
>> >> "PPS - Pulse Per Second Using a PPS signal for timestamp synchronizat=
ion requires a
>> >> square wave signal with the following a 5Vpp amplitude."
>> >>
>> >> If I look at the schematics for the N320, on page 15,
>> >>
>> (https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_ima=
ges_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8=
b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=
=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3D6JTHdP9IoYFRQhn24LgJjEof=
kuFwgAsHTs9iHhgMuBg&e=3D
>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_ima=
ges_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8=
b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=
=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3D6JTHdP9IoYFRQhn24LgJjEof=
kuFwgAsHTs9iHhgMuBg&e=3D>)
>> they show that the input
>> >> 1pps signal goes through an NC7SV157. Vcc for that is 3.3V in the sch=
ematics.
>> >>
>> >> According to the datasheet, the absolute maximum rating on the input =
is 4.3V.
>> >>
>> "https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_p=
df_datasheet_nc7sv157-2Dd.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5=
A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCW=
F4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv=
_Rx01Xg&e=3D
>> <https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_p=
df_datasheet_nc7sv157-2Dd.pdf&d=3DDwIF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5=
A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D-9vS_HYCW=
F4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv=
_Rx01Xg&e=3D>"
>> >>
>> >> So, I'm not sure how the N320 can safely accept a 5V input (from the =
octoclock or other
>> >> device).
>> >>
>> >> Thanks,
>> >> Jim
>> >>
>> >>
>> >> _______________________________________________
>> >> USRP-users mailing list -- usrp-users@lists.ettus.com
>> >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> > _______________________________________________
>> > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_000_MN2PR12MB3312344CCB32F1F3FA55FAA6B8329MN2PR12MB3312namp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Ok, thanks for the info. I appreciate you guys running this down.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus M=FCller &lt;m=
arcus.mueller@ettus.com&gt;<br>
<b>Sent:</b> Friday, June 11, 2021 3:07 PM<br>
<b>To:</b> Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;; Jim Palladino &=
lt;jim@gardettoengineering.com&gt;; usrp-users@lists.ettus.com &lt;usrp-use=
rs@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: N320 1PPS input voltage</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Jim,<br>
<br>
The congregation of Marcuses checked with R&amp;D, and we figured out that =
in fact, the<br>
NC7SV157 in U24 was replaced by a SN74LVC2G34, which is OK up to 6.5 V inpu=
t, in Hardware<br>
revisions starting with Rev C.<br>
<br>
So, if (and only if) you have a N320 in a revision that's C or greater, you=
're safe.<br>
Otherwise, please don't connect a 5V source to the PPS input for now.<br>
<br>
Best regards,<br>
<br>
Marcus<br>
<br>
<br>
On 11.06.21 15:58, Marcus D. Leech wrote:<br>
&gt; On 06/11/2021 09:45 AM, Jim Palladino wrote:<br>
&gt;&gt; Hi Marcus,<br>
&gt;&gt;<br>
&gt;&gt; Right -- the output of the Octoclock is 5V. I'm not seeing how the=
 N320 can accept that<br>
&gt;&gt; as an input. The knowledge base article says the N320 expects 5Vpp=
 at the 1pps input.<br>
&gt;&gt; But the schematics/parts data sheet for the input buffer don't see=
m to support that . .<br>
&gt;&gt; . unless I'm missing something.<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt; Jim<br>
&gt; It certainly looks like a potential problem, but I haven't heard of an=
yone having 1PPS<br>
&gt; failure issues on the N320 when used with<br>
&gt; &nbsp; Octoclock--pretty sure it was tested with Octoclock prior to re=
lease.&nbsp; But I'll check<br>
&gt; with R&amp;D.<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; ------------------------------------------------------------------=
------------------------<br>
&gt;&gt; *From:* Marcus D. Leech &lt;patchvonbraun@gmail.com&gt;<br>
&gt;&gt; *Sent:* Friday, June 11, 2021 9:39 AM<br>
&gt;&gt; *To:* usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt=
;<br>
&gt;&gt; *Subject:* [USRP-users] Re: N320 1PPS input voltage<br>
&gt;&gt; &nbsp;<br>
&gt;&gt; On 06/11/2021 09:11 AM, Marcus M=FCller wrote:<br>
&gt;&gt; &gt; Hello Jim,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; hm, that knowledge base article must be wrong: The octoclock =
internally only has a 3.3V<br>
&gt;&gt; &gt; supply. But before I say something wrong here, let me check b=
ack.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Best regards,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Marcus<br>
&gt;&gt; The 1PPS outputs on the Octoclock are bufered by 7404 inverters, w=
hich<br>
&gt;&gt; appear to have a 5V Vcc.<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On 11.06.21 14:17, Jim Palladino wrote:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; Hello,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; We are planning on using an octoclock with several device=
s, including an N320. The<br>
&gt;&gt; &gt;&gt; octoclock outputs a 5V 1pps signal, but I'm confused abou=
t the N320 1pps input.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; According to<br>
&gt;&gt; (<a href=3D""></a>https://urldefense.proofpoint.com/v2/url?u=3Dhtt=
ps-3A__kb.ettus.com_N320_N321-29-3A&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvimE=
N8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnw=
pYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3DTdFHQJNItG=
ehIsL1D4yXezIfq_vO05AvF1_lMSyNpHs&amp;e=3D<br>
&gt;&gt; &gt;&gt; &quot;PPS - Pulse Per Second Using a PPS signal for times=
tamp synchronization requires a<br>
&gt;&gt; &gt;&gt; square wave signal with the following a 5Vpp amplitude.&q=
uot;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; If I look at the schematics for the N320, on page 15,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; (<a href=3D""></a>https://urldefense.proofpoint.com/v2/url?u=3Dhtt=
ps-3A__kb.ettus.com_images_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&amp;d=3DDw=
IF-g&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpa=
AEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEE=
lYsX5a8WMs&amp;s=3D6JTHdP9IoYFRQhn24LgJjEofkuFwgAsHTs9iHhgMuBg&amp;e=3D<br>
&gt;&gt; &lt;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-=
3A__kb.ettus.com_images_f_f4_USRP-5FN3XX-5FMB-5FSchematic.pdf&amp;d=3DDwIF-=
g&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEG=
xRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYs=
X5a8WMs&amp;s=3D6JTHdP9IoYFRQhn24LgJjEofkuFwgAsHTs9iHhgMuBg&amp;e=3D">https=
://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__kb.ettus.com_images_f_f4_=
USRP-5FN3XX-5FMB-5FSchematic.pdf&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvimEN8b=
7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx=
0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3D6JTHdP9IoYFRQ=
hn24LgJjEofkuFwgAsHTs9iHhgMuBg&amp;e=3D</a>&gt;)<br>
&gt;&gt; they show that the input<br>
&gt;&gt; &gt;&gt; 1pps signal goes through an NC7SV157. Vcc for that is 3.3=
V in the schematics.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; According to the datasheet, the absolute maximum rating o=
n the input is 4.3V.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &quot;<a href=3D""></a>https://urldefense.proofpoint.com/v2/url?u=
=3Dhttps-3A__www.onsemi.com_pdf_datasheet_nc7sv157-2Dd.pdf&amp;d=3DDwIF-g&a=
mp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI=
-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a=
8WMs&amp;s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv_Rx01Xg&amp;e=3D<br>
&gt;&gt; &lt;<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-=
3A__www.onsemi.com_pdf_datasheet_nc7sv157-2Dd.pdf&amp;d=3DDwIF-g&amp;c=3Deu=
GZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauO=
vsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKKIX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;=
s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv_Rx01Xg&amp;e=3D">https://urldefens=
e.proofpoint.com/v2/url?u=3Dhttps-3A__www.onsemi.com_pdf_datasheet_nc7sv157=
-2Dd.pdf&amp;d=3DDwIF-g&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM=
&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&amp;m=3D-9vS_HYCWF4BKK=
IX7QR3SO2LJ3yD1MyEElYsX5a8WMs&amp;s=3DXPmiCDRDfM2wVtI1g4KChC9dkOJhMyrqBTMv_=
Rx01Xg&amp;e=3D</a>&gt;&quot;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; So, I'm not sure how the N320 can safely accept a 5V inpu=
t (from the octoclock or other<br>
&gt;&gt; &gt;&gt; device).<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Thanks,<br>
&gt;&gt; &gt;&gt; Jim<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt;&gt; &gt;&gt; To unsubscribe send an email to usrp-users-leave@lists.et=
tus.com<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt;&gt; &gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.=
com<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt;&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<b=
r>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- usrp-users@lists.ettus.com<br>
&gt; To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font></div>
</body>
</html>

--_000_MN2PR12MB3312344CCB32F1F3FA55FAA6B8329MN2PR12MB3312namp_--

--===============3835323200489362316==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3835323200489362316==--

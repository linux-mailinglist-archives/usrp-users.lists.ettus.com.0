Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 584256A6AEE
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 11:39:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 46DBE3842BB
	for <lists+usrp-users@lfdr.de>; Wed,  1 Mar 2023 05:39:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677667177; bh=P1SsRQxlSX7XqQAw9EJ7emW3N4lFEjSI9hvOQgLMZXQ=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=JX6SPj/QYB7ROECaLQ70g36XW89aPdi6kW2BnjZznrQsx3S/NOuwB4f1HwALrAQ2Y
	 rW7HRHws+7ikKHhe3LpY7aKvBIdNRXQHBz6f9Cva79/hxZNKsCJXfsQnbjSGMGmTb/
	 I/b5XnOLg17R4t38XvgoA3K3FCH+aTW5Xwj4k8XsHBmxkLNDaz1+gUwWX4ndHp4S4c
	 0t73IDJXKuozAeZPF/GLO0AuZZ5VkM25C9GGZuuYmjo70qylE4V54SAkIb5rOcmt0h
	 rtwXk2fKpopvD/EDg1AuLdWROOVFyBfqzaN6GvuCIzeNnpQqOt8rAD9Jh96NyRILPN
	 8f1k3jnsdq0lw==
Received: from mx0a-00164e01.pphosted.com (mx0b-00164e01.pphosted.com [67.231.156.84])
	by mm2.emwd.com (Postfix) with ESMTPS id 953793842BB
	for <usrp-users@lists.ettus.com>; Wed,  1 Mar 2023 05:39:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=molex.com header.i=@molex.com header.b="gu5YIz5T";
	dkim-atps=neutral
Received: from pps.filterd (m0044337.ppops.net [127.0.0.1])
	by mx0b-00164e01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3216tEwY012411
	for <usrp-users@lists.ettus.com>; Wed, 1 Mar 2023 04:39:29 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=molex.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=00164e01; bh=HNQSMg6+qmZB5KWF0LNnpVnXVAc8dzQjue/PXTVbopY=;
 b=gu5YIz5Ta2QYvly8agxVwy6POxZK01Njbk/oGiR9gX6YYGEENexDJgqD44d9R5x5bNyM
 BkAOTfQzG5gtlRQjAbvoL/f7KdF/pYaMYLzfUCzc9I66XT+L3VbMmtAeNgk0tvZ+ZXzE
 KrhSLBAnjTYoG1Pr7seQNrsU4lLchfvrW8UQrImFXfdl8KqUxUYmnWmSOsuhIMmq/o0k
 gNOyGK+uwalPdGntJqcpbAiE8rRYqETfvQfEf6hI7ML+6+H0uiVEA9gnSh7l0cacSSDz
 G4km+MBnktXBhVAp0qJOgzkyvGlSFfklLYjJNl/+KDx4clPYLrOvGNI5aAX0ZJ/atd/H AA==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
	by mx0b-00164e01.pphosted.com (PPS) with ESMTPS id 3p21uy91bn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <usrp-users@lists.ettus.com>; Wed, 01 Mar 2023 04:39:29 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KUBdxWN2Yz1kngwgkKSB1xDeAkTJNeUC/h60dNzpVP4kbBjNCM9AraJ8q+XE/XzPPyS8GNja5mFqLNTiZjUJnBvfl4O0P660zcSx+2K+rcUgoEbPMSghjQZSExskiCUjvceqD3wVlRRCDY4vPUGOr42yjjJNH8nZr7bhygrE13/YSgopTuZJJFFF52DJ0iae2NcjqpQIpGoWXbFc/+VUSPGZq1g7ml2xo7rg9ZAUGcalaUAUKpkl9rz+9BgIYHEIyZ4mxCVsbFWs4gU0X8lb3ZGs1WEgpoBaACYNUgy/wF93f4pwK47igIQGJ5APwR360fIUqAw46zfI5xkVRDNY1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HNQSMg6+qmZB5KWF0LNnpVnXVAc8dzQjue/PXTVbopY=;
 b=V5rSpFZVh8TyFqL4cnpxkk1tdIYpUj1bhCJ0J3dVir5TXXabtJUqohu9jUhKfh0c7HX1Qxf+0ztpez0FZlfNZMAN6BxY1R8/7h50kSjMK55eSegKEYtZQzd8zHKJzIc2JK4b43mzDEVsukSvfyFnYKyoiPYXHxwLQqCqOT8kadMIeVRe6Ut6DHeQgTwpOgJOdNi8Jqz1vPt1kp24zXHYBrSNsle3cyt3JdwZOsIW5q1M68/hHHN5ujzFk13wZmn2rEgW3mCmwp535qoJmW2EwlA5DqAcdfsOCERlHgo108U7KeGyBJnOF/LCunlWQ6s05tftEf8O7Rz1AQoWoNQjfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=molex.com; dmarc=pass action=none header.from=molex.com;
 dkim=pass header.d=molex.com; arc=none
Received: from PH0PR15MB4704.namprd15.prod.outlook.com (2603:10b6:510:9a::7)
 by DM4PR15MB5518.namprd15.prod.outlook.com (2603:10b6:8:112::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.18; Wed, 1 Mar
 2023 10:39:27 +0000
Received: from PH0PR15MB4704.namprd15.prod.outlook.com
 ([fe80::b5cd:b5ea:7d0c:921d]) by PH0PR15MB4704.namprd15.prod.outlook.com
 ([fe80::b5cd:b5ea:7d0c:921d%7]) with mapi id 15.20.6134.030; Wed, 1 Mar 2023
 10:39:27 +0000
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: What do I need to do to make uhd_usrp_probe see my custom RFNOC
 module?
Thread-Index: AQHZTCBYMK/vG6/85UG66FXxbOMJlK7lu20d
Date: Wed, 1 Mar 2023 10:39:27 +0000
Message-ID: 
 <PH0PR15MB470475B739510FC1329965F2E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
References: 
 <PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
In-Reply-To: 
 <PH0PR15MB4704FC8A1F2B068355FDEDC8E3AD9@PH0PR15MB4704.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR15MB4704:EE_|DM4PR15MB5518:EE_
x-ms-office365-filtering-correlation-id: e5251fab-a208-4373-5350-08db1a413b47
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 SLdOv0Q6UoKAV9wTjdK5sXSog5dFksjGlIYfDgagvx9Qexo0E/wyTM9laOhpgTO+nZk8wn8jC07ayqb9oAYNjo/q5aJM+YlBgNZu3XQvipKiWbl1Zjxyqd21LFsgEE8uWThpOZz6+k+sLYDh4E3sCHfTp7FA9GXF32RS40FMVna72rsYbHl6fb0EU1bOlyrCwIV2VLbrg2r+8yf6xSxGcGzDOHc2F2y8s4zvTtCVBD3Qp4iwrBpWzTQsehcPqVCg89X/LcYVRNjNSc87971dhA3XMXFsmLGrJvR+3SOB9GknZOXUlFrrj/J5dWEfUtB9mB2KI4wkfUA9oZEtBfI5iB9x75IRGY3T0MaxQb+WT5INdGNNGWr0BabyVuPuBJ8BFd+Ypzr2VV9IJIhdo0mPIGfc36UL3gIFCJkCruowe0ZohHPv/qlMA2ZIOsYCctJYca7M/7+wyzQNt7+na4rUfhLqs4EWOcLohLWrdrofGSU9ldNF/yAIKWKWUb6J8ogG7IeEm77ZHAQI4yg5XyXhVJ41Z3GkQi66DRu7ExDmoj2ukJD44BaaSU0xNtfDGgBMkvkbkOhyx+I58jHDyGuQsALiav4gfAZJ0G+hZ1wE19++xQkSpbddHdCRMxfj9JogcRVKediz/GUtRUAQeGo+WlTmsFz42pS+nPrboUpPglpxTEXKg2KuDf7SXVFzd1W5
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB4704.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(39860400002)(376002)(366004)(136003)(346002)(451199018)(19627405001)(83380400001)(478600001)(316002)(33656002)(15974865002)(82960400001)(6916009)(122000001)(64756008)(38100700002)(76116006)(8676002)(66446008)(2940100002)(6506007)(53546011)(186003)(9686003)(7696005)(91956017)(71200400001)(5660300002)(66556008)(66476007)(66946007)(55016003)(52536014)(86362001)(41300700001)(2906002)(8936002)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?nIYHLGonjG+PCf2n2l0OeK4VAnMWEv4KxdMiSmTs7fBbotC0sTXz6j0MwrH7?=
 =?us-ascii?Q?tkh4fPNQQ/vxpGTzCZafMb8/YaSIKq1fON6lZ8KJ3MGtySiGJ2i96qczGUma?=
 =?us-ascii?Q?qemicPZrGTUT6xZDztSjeSy8wgZAIhUHtoRWAKphAAyTH8/bnPF/E0PePYCq?=
 =?us-ascii?Q?P3tNbfeU2faISSkzyWpLxPZBVImhIMNhyKmZD4k5v2M07YmKu3JGpRJVwiy1?=
 =?us-ascii?Q?fTDy1bie0TOYp5IsQf2969IFZSBMpJeh9Ai4zGezS0+VJwkMBS6wmGWWIhRs?=
 =?us-ascii?Q?I1nS+ESs8HcUkaoxvtJeyLQAb/aL2NsliGpEp0KposjQKcPzRnFJ4p4sE9pM?=
 =?us-ascii?Q?FkutYIMmw2sBfCuP+Ib6e3O6Stz9V0hyXh6WILUwL0OwptH26xzKn3yBDGAf?=
 =?us-ascii?Q?h1xTIPukXsw5HIB2jbmQq5miPaorPbw1HfIBy1xlPU5RTOGf0PVI8qmT+CNR?=
 =?us-ascii?Q?s6nvYZcYWB2EgenidbhmEI4RZk8c566KNHyPEcm7t9n6Gg0gDr3kEjqLQHOh?=
 =?us-ascii?Q?XA8bvCuCgcTcbuHYnErtjOblzDBOoT7s5Y9U/SejF3FdMlpNF9+dq2+3F/Tv?=
 =?us-ascii?Q?XepCcSFXqKa7KbqNmsy58vveCFVLyeZSm5+Ii2LaBMCl6isdqmVtYIevhvaY?=
 =?us-ascii?Q?Oi3/RzX+aYW3p3rsvFljCSDSUkzBsOiiTsiC06Czda6PBrD9LCmJ3M5KS1XX?=
 =?us-ascii?Q?ylnMkeuvtlSaxONCakMAGFQTasPnhT6rrio9daolnLuAy59sExpy+L7cbvW8?=
 =?us-ascii?Q?Kw3BcEWZmO8bFsn4ROY/bcVJSVUsQh/PbQePL9nHf7/ZJEIQRFkAeRngsm7K?=
 =?us-ascii?Q?RRiNwG0hB3ABeaYJOS3Q1l7OvcQ1J5q2WCOgwkOCxl1VTjc9KZKB8Vtz5XAT?=
 =?us-ascii?Q?BUix10nwCXcw+27Om6vsAvDJdrjLQ5tnM9oZwvyGK3HNOjDzhUiZSYTJBs3J?=
 =?us-ascii?Q?4aOAWw8mvddKSGIFSf//orK8gkRSiN5FjFHDdz5oqcr6/e4ZdSuzEeaz6QKo?=
 =?us-ascii?Q?gkbT39wQCqdYQ1hQ9bqQlOZ9ioySVi2NJxG43+SkuEEUNHMwbEcOgLuSZN7V?=
 =?us-ascii?Q?Lsvr7arE55GViOHEFI7pPIZ+bL+tT1jmsbSvotzb8IH5tAusm4J7fZYKjqDp?=
 =?us-ascii?Q?lDEZsPRmGMYYNJ1cxB+rKYSlSBkKRwFdNpoOxKc35ApRcuN+N0qlUW9PQCn+?=
 =?us-ascii?Q?GoLbmDkJzyrPdOQYDlFhIm6YRiU+F1bxN8iRwQazf9NpvZcMcIo3mOpmkoBm?=
 =?us-ascii?Q?O+kzeuTXAez2E5FksNEDqxdNPx/ZPFt/e/4YtrrJo7/L2rzZKKIH5h2ZRrsM?=
 =?us-ascii?Q?KlPZA6ADOgpi+x1yJ/HCBcXuHnY5JPU9Fsmexn9TS2IFgt94NCggiOtybbB2?=
 =?us-ascii?Q?FmzScU3awxO4HB1BUzSKFORbSEIeGt9oGDirqJMJILo6fN8Bj5HEh+RzTFfO?=
 =?us-ascii?Q?OiOxRi9loMlAo6MKpijVtVIu8ViJd6GC51zJOFud7Gj7/vA8ujjEO62uZajK?=
 =?us-ascii?Q?UVeDPU22aXMNi9931kinavextzCWQgJ14jNj0UtScdEFrpBQ5T0cOo4gG++/?=
 =?us-ascii?Q?ZiwLvREetQQsA/zc/Q2NiqhPFIV4XI0pXKNXsoYeYse1sS9ns0VgUutUgd9Q?=
 =?us-ascii?Q?1w=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: molex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB4704.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5251fab-a208-4373-5350-08db1a413b47
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2023 10:39:27.2315
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 101ce67d-13f2-447a-bb65-0989b89dfdb4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o538AC7WW+Erfc+dmabbojaxF5Wo2AMbwoFxIGo6yrrHOWQ6l5c/EbQnfm4EEmzfg74nANEdJjCLhKgyZxLxZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR15MB5518
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 04
X-MS-Exchange-CrossPremises-AuthSource: PH0PR15MB4704.namprd15.prod.outlook.com
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-messagesource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-originalclientipaddress: 2a10:3781:1f::465
X-MS-Exchange-CrossPremises-transporttraffictype: Email
X-MS-Exchange-CrossPremises-disclaimer-hash: 0c6d048b2a9fb806923cec0a756adc963e7cd1169c28b6f2f2da544dd13766d1
X-MS-Exchange-CrossPremises-antispam-scancontext: DIR:Originating;SFV:NSPM;SKIP:0;
X-MS-Exchange-CrossPremises-processed-by-journaling: Journal Agent
X-OrganizationHeadersPreserved: DM4PR15MB5518.namprd15.prod.outlook.com
X-Proofpoint-ORIG-GUID: CWMZRL6KDl5W0uNMaiZ80asRRYV6UiFR
X-Proofpoint-GUID: CWMZRL6KDl5W0uNMaiZ80asRRYV6UiFR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-01_04,2023-03-01_01,2023-02-09_01
X-Proofpoint-Spam-Reason: safe
Message-ID-Hash: ODPOG5SHU25OC4TPGFQRDRDZ4HTYF2RA
X-Message-ID-Hash: ODPOG5SHU25OC4TPGFQRDRDZ4HTYF2RA
X-MailFrom: prvs=842405d7a4=bas.vermeulen@molex.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What do I need to do to make uhd_usrp_probe see my custom RFNOC module?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HX2PPTKOLFQ2CYJHUKA7HJJWQSHADVI5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Vermeulen, Bas (Consultant) via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>
Content-Type: multipart/mixed; boundary="===============8418211446673731648=="

--===============8418211446673731648==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB470475B739510FC1329965F2E3AD9PH0PR15MB4704namp_"

--_000_PH0PR15MB470475B739510FC1329965F2E3AD9PH0PR15MB4704namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Just to answer my own question:

Run uhd_usrp_probe with LD_PRELOAD=3D/usr/lib/librfnoc-module.so uhd_usrp_p=
robe and it will be able to find the RFNOC modules.
The same for any test programs you use, those need the LD_PRELOAD as well.

Regards,

Bas Vermeulen
________________________________
From: Vermeulen, Bas (Consultant) via USRP-users <usrp-users@lists.ettus.co=
m>
Sent: Wednesday, March 1, 2023 11:04 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] What do I need to do to make uhd_usrp_probe see my cu=
stom RFNOC module?

Sent by an external sender
________________________________
Hi,

I've created a custom RFNOC module with two blocks, and have it installed.
The module.yml files are in /usr/share/uhd/rfnoc/blocks, I have a library f=
or it installed in /usr/lib (and VHDL files as well somewhere).

When I run uhd_usrp_probe I see the following:

[INFO] [UHD] linux; GNU C++ version 10.2.1 20210110; Boost_107400; DPDK_20.=
11; UHD_4.3.0.0-2molex1
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xdeadbee=
f, 0xffff
[INFO] [0/Block#0] Setting default MTU forward policy.
[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block with Noc-ID 0xdeadaff=
e, 0xffff
[INFO] [0/Block#1] Setting default MTU forward policy.
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X300
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30817
|   |   mac-addr0: 00:80:2f:34:fa:ba
|   |   mac-addr1: 00:80:2f:34:fa:bb
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.50.2
|   |   subnet3: 255.255.255.0
|   |   serial: 3252D36
|   |   FW Version: 6.0
|   |   FPGA Version: 39.0
|   |   FPGA git hash: 1e718d9-dirty
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: ref_locked
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/Block#0
|   |   * 0/Block#1
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|   |   * 0/Replay#0
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0=3D=3D>0/Block#0:0
|   |   * 0/Block#0:0=3D=3D>0/SEP#0:0
|   |   * 0/SEP#1:0=3D=3D>0/Block#1:0
|   |   * 0/Block#1:0=3D=3D>0/SEP#1:0
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#0
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 324BFA8
|   |   Revision: 5
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#0
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 324BFA8
|   |   Revision: 5
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#1
|   |   ID: UBX-160 v2 (0x007d)
|   |   Serial: 324BFA6
|   |   Revision: 5
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#1
|   |   ID: UBX-160 v2 (0x007e)
|   |   Serial: 324BFA6
|   |   Revision: 5
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No

How can I make libuhd correctly identify my custom RFNOC modules?

Regards,

Bas Vermeulen



________________________________



CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the sender, is prohibited.

This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly prohibited.

English | Chinese | Japanese
www.molex.com/confidentiality.html

________________________________



CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the sender, is prohibited.

This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly prohibited.

English | Chinese | Japanese
www.molex.com/confidentiality.html

--_000_PH0PR15MB470475B739510FC1329965F2E3AD9PH0PR15MB4704namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Just to answer my own question:<br>
<br>
Run uhd_usrp_probe with <span style=3D"font-family: &quot;Courier New&quot;=
, monospace;">LD_PRELOAD=3D/usr/lib/librfnoc-module.so uhd_usrp_probe</span=
> and it will be able to find the RFNOC modules.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
The same for any test programs you use, those need the LD_PRELOAD as well.<=
/div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Bas Vermeulen<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Vermeulen, Bas (Consu=
ltant) via USRP-users &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Sent:</b> Wednesday, March 1, 2023 11:04 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] What do I need to do to make uhd_usrp_probe se=
e my custom RFNOC module?</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr"><font color=3D"red">Sent by an external sender</font>
<hr>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
Hi,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
I've created a custom RFNOC module with two blocks, and have it installed. =
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
The module.yml files are in /usr/share/uhd/rfnoc/blocks, I have a library f=
or it installed in /usr/lib (and VHDL files as well somewhere).<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0 x_ContentPasted1" style=3D"=
font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0=
,0,0); background-color:rgb(255,255,255)">
When I run uhd_usrp_probe I see the following:<br>
<br>
<span style=3D"font-family:&quot;Courier New&quot;,monospace">[INFO] [UHD] =
linux; GNU C++ version 10.2.1 20210110; Boost_107400; DPDK_20.11; UHD_4.3.0=
.0-2molex1</span>
<div class=3D"x_ContentPasted1"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">[INFO] [X300] X300 initialization sequence...</span></di=
v>
<div class=3D"x_ContentPasted1"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">[INFO] [X300] Maximum frame size: 8000 bytes.</span></di=
v>
<div class=3D"x_ContentPasted1"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">[INFO] [X300] Radio 1x clock: 200 MHz</span></div>
<div class=3D"x_ContentPasted1"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block wi=
th Noc-ID 0xdeadbeef, 0xffff</span></div>
<div class=3D"x_ContentPasted1"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">[INFO] [0/Block#0] Setting default MTU forward policy.</=
span></div>
<div class=3D"x_ContentPasted1"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">[WARNING] [RFNOC::BLOCK_FACTORY] Could not find block wi=
th Noc-ID 0xdeadaffe, 0xffff</span></div>
<div class=3D"x_ContentPasted1"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">[INFO] [0/Block#1] Setting default MTU forward policy.</=
span></div>
<div class=3D"x_ContentPasted1 x_ContentPasted2"><span style=3D"font-family=
:&quot;Courier New&quot;,monospace">&nbsp; ________________________________=
_____________________</span>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">&nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp; &nbsp; Device: X-Series Device</span></d=
iv>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp; ________________________________________=
_____________</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp; &nbsp; Mboard: X300</span></div=
>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; revision: 11</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; revision_compat: 7</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; product: 30817</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; mac-addr0: 00:80:2f:34:fa:ba</span></d=
iv>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; mac-addr1: 00:80:2f:34:fa:bb</span></d=
iv>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; gateway: 192.168.10.1</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; ip-addr0: 192.168.10.2</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; subnet0: 255.255.255.0</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; ip-addr1: 192.168.20.2</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; subnet1: 255.255.255.0</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; ip-addr2: 192.168.30.2</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; subnet2: 255.255.255.0</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; ip-addr3: 192.168.50.2</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; subnet3: 255.255.255.0</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; serial: 3252D36</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; FW Version: 6.0</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; FPGA Version: 39.0</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; FPGA git hash: 1e718d9-dirty</span></d=
iv>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; RFNoC capable: Yes</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp;
</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; Time sources: &nbsp;internal, external=
, gpsdo</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; Clock sources: internal, external, gps=
do</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; Sensors: ref_locked</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp; ________________________________________=
_____________</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp; &nbsp; RFNoC blocks on this dev=
ice:</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp;
</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; * 0/Block#0</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; * 0/Block#1</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; * 0/Radio#0</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; * 0/Radio#1</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; * 0/Replay#0</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp; ________________________________________=
_____________</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp; &nbsp; Static connections on th=
is device:</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp;
</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; * 0/SEP#0:0=3D=3D&gt;0/Block#0:0</span=
></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; * 0/Block#0:0=3D=3D&gt;0/SEP#0:0</span=
></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; * 0/SEP#1:0=3D=3D&gt;0/Block#1:0</span=
></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; * 0/Block#1:0=3D=3D&gt;0/SEP#1:0</span=
></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp; ________________________________________=
_____________</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp; &nbsp; TX Dboard: 0/Radio#0</sp=
an></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; ID: UBX-160 v2 (0x007d)</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; Serial: 324BFA8</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; Revision: 5</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp; _______________________________=
______________________</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 0<=
/span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Name: UBX TX</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, CAL</span></=
div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked</span></di=
v>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Freq range: 10.000 to 6000.00=
0 MHz</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Gain range PGA0: 0.0 to 31.5 =
step 0.5 dB</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 160000000.0 =
to 160000000.0 step 0.0 Hz</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Connection Type: QI</span></d=
iv>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</span></di=
v>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp; ________________________________________=
_____________</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp; &nbsp; RX Dboard: 0/Radio#0</sp=
an></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; ID: UBX-160 v2 (0x007e)</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; Serial: 324BFA8</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; Revision: 5</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp; _______________________________=
______________________</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 0<=
/span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Name: UBX RX</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, RX2, CAL</sp=
an></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked</span></di=
v>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Freq range: 10.000 to 6000.00=
0 MHz</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Gain range PGA0: 0.0 to 31.5 =
step 0.5 dB</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 160000000.0 =
to 160000000.0 step 0.0 Hz</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Connection Type: IQ</span></d=
iv>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</span></di=
v>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp; ________________________________________=
_____________</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp; &nbsp; TX Dboard: 0/Radio#1</sp=
an></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; ID: UBX-160 v2 (0x007d)</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; Serial: 324BFA6</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; Revision: 5</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp; _______________________________=
______________________</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; TX Frontend: 0<=
/span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Name: UBX TX</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, CAL</span></=
div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked</span></di=
v>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Freq range: 10.000 to 6000.00=
0 MHz</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Gain range PGA0: 0.0 to 31.5 =
step 0.5 dB</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 160000000.0 =
to 160000000.0 step 0.0 Hz</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Connection Type: QI</span></d=
iv>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</span></di=
v>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp; ________________________________________=
_____________</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; &nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp; &nbsp; RX Dboard: 0/Radio#1</sp=
an></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; ID: UBX-160 v2 (0x007e)</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; Serial: 324BFA6</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; Revision: 5</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp; _______________________________=
______________________</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; &nbsp;/</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; &nbsp; &nbsp; RX Frontend: 0<=
/span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Name: UBX RX</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Antennas: TX/RX, RX2, CAL</sp=
an></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Sensors: lo_locked</span></di=
v>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Freq range: 10.000 to 6000.00=
0 MHz</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Gain range PGA0: 0.0 to 31.5 =
step 0.5 dB</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Bandwidth range: 160000000.0 =
to 160000000.0 step 0.0 Hz</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Connection Type: IQ</span></d=
iv>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace">| &nbsp; | &nbsp; | &nbsp; Uses LO offset: No</span></di=
v>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:&quot;Courier Ne=
w&quot;,monospace"><br>
</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:Calibri,Helvetic=
a,sans-serif">How can I make libuhd correctly identify my custom RFNOC modu=
les?</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:Calibri,Helvetic=
a,sans-serif"><br>
</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:Calibri,Helvetic=
a,sans-serif">Regards,</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:Calibri,Helvetic=
a,sans-serif"><br>
</span></div>
<div class=3D"x_ContentPasted2"><span style=3D"font-family:Calibri,Helvetic=
a,sans-serif">Bas Vermeulen<br>
</span></div>
<br>
</div>
<br>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
<br>
<br>
CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the
 sender, is prohibited.<br>
<br>
This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly
 prohibited.<br>
<br>
English | Chinese | Japanese<br>
www.molex.com/confidentiality.html<br>
</font></div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
<br>
<br>
CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the
 sender, is prohibited.<br>
<br>
This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly
 prohibited.<br>
<br>
English | Chinese | Japanese<br>
www.molex.com/confidentiality.html<br>
</font>
</body>
</html>

--_000_PH0PR15MB470475B739510FC1329965F2E3AD9PH0PR15MB4704namp_--

--===============8418211446673731648==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8418211446673731648==--

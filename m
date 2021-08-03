Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5523DF712
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 23:48:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2674F3846AB
	for <lists+usrp-users@lfdr.de>; Tue,  3 Aug 2021 17:48:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="DLCUIObr";
	dkim-atps=neutral
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2061.outbound.protection.outlook.com [40.107.223.61])
	by mm2.emwd.com (Postfix) with ESMTPS id B95DA38454B
	for <usrp-users@lists.ettus.com>; Tue,  3 Aug 2021 17:48:03 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ux/JKQrzEk+1cJqTDnWdgISpAxCbAkH4D3YbFegX15fgMna0aGQeHsi5pkcBY02YSPWnUGSK0LHf144VdS7Z08Cgdr5/7cg591yUapvNEt4WaaP2Wgi3aW2AsMOBV9GzayJQRHxrtYgS866Chr/Wx4E5BIpFzE/ChBcsQUx8fiNi+XbYd9ZYjpeykWB6eAktQZdBXWCh4EHfESNV7t4yzJvYSXzEwIPEwaQGqiUo+fWeW6HtSY3dmAWTCrYkdbjw8LOHPqm/rVxZ6olZXtL8nGYniXz3uPtBoS2zwAFzpNYknD9NKYdqr56x+GIOgEftDpsHcqtNCknrrHMK6eUEFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ze4KIo6pmqv55DnX/BKt+z6km/bKCaG9xrjNBE1TI84=;
 b=Y8KiKSDGoFW+oQD7x2TkaggJcf/uRb63V2Fz/TCb+FcYm8nFEc6rSGbAHp/ugo02vBW0Q3VTOwb3ZkhUhxN90hY6+j9n9MVZ16ZIMAbF+Fk9+okZkuEhQOGxV6vHTwUzeAsSuk0lpUUMRKXYFmkX8Hq8oc+tL03HDyVNd0JlBcXOCm3OSwUlDS1cBXNQjbm91/GfPtrBnO9MJjWcLEMkTyPDMgS5v8T0Y6rT/5rzRKv5Kw//oY79aZkxec1cuFY23V7ZvkssIJXKO6S+pWGKmjz+rseYb/wQpGm4PgNV6VRc5c+q6qOBi2+4+MiqqokuXe7ZwdFv3h/cvl9wFF+ccg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ze4KIo6pmqv55DnX/BKt+z6km/bKCaG9xrjNBE1TI84=;
 b=DLCUIObrmyUlI0TpnWdo0Mp2z52owcNkbnn5+EcD+XjiRViuJ8wXmh1/NHmR/fWfOn7V8BFmIOz9MwMXIVH4dgMwQawLmFseIwEXCIwO1iwpGXa7TKUPLQtHj8jze+boXNrTjJmudSnqQKpuYyd+SjgCaXosdZMNbU/L6UHL+xbkKQNm7x81cUCxBdBW2OEx6dBeTzlxupvXBewliyGw8ZFxZgJXlFlbdDVIH5L+TdVoCXbq2xxI8s20TpoOKj7DQGcMO2SGlyX58eKj00gw7/BJS/QenQ9Cs07muUvJKSz+Y2NZmMnc9kDaYMWioD6XWxqoPrW7reKwGlDRWOjWzw==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by BYAPR03MB4613.namprd03.prod.outlook.com (2603:10b6:a03:13d::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.20; Tue, 3 Aug
 2021 21:48:00 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::286b:a1e6:429e:f0b1]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::286b:a1e6:429e:f0b1%7]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 21:47:59 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Re: DPDK troubles (invalid ELF header loading dpdk
 library)
Thread-Index: AQHXh8RgOdINH69XLEWhA20d+q1RKKtiTpk2
Date: Tue, 3 Aug 2021 21:47:59 +0000
Message-ID: 
 <BYAPR03MB4678199CAFE846B2855F4A74D3F09@BYAPR03MB4678.namprd03.prod.outlook.com>
References: 
 <CAB__hTQStkhRY1nLDuRrd51AGFabiCgzrJka8ky50F=bbp=pbQ@mail.gmail.com>
 <24D1670E-9007-41CF-99CF-5F90B0A96D5A@gmail.com>
 <CAB__hTR3mok9BOmgjA2B3PsSGDhVryMYX3wqzv_EqOyk8nYQXg@mail.gmail.com>
 <CAB__hTT69FnSPdLO9X+D=qbnV-mKnJt-n5QNV103_0G_6Lh55Q@mail.gmail.com>
 <CAB__hTTYidO4ewEURTMV-4LLdZ8XcknwwCZ7+vBrKEMH3SXgSA@mail.gmail.com>
 <CAAg5+MyWcWoosJGfqvwkzqrXnhdxqk=vQptWbsK-G8jU=U=NAg@mail.gmail.com>
 <CAB__hTS2ECbCBYoGXDicytwurDEJsmtPwXm-tBp+d6JOw8a87A@mail.gmail.com>
 <CAAg5+MwQ1CqfBOMOiKrukhxkoRtxpSqh3ZdNz_7VPBHMBo3Nhg@mail.gmail.com>
 <CAB__hTS4d0uQTFpuUtGokV36PV+LJRistR1FsNAC7zg=b0ACEg@mail.gmail.com>
 <CAB__hTT6_UYrEdOt0Yj1gn5uZwsg-jMkDu2ayWb0fjadyA14YQ@mail.gmail.com>
 <CAB__hTR7K8242X02BPW+=8exppDi6Vu_r4HGoQstTLK5sYgVnA@mail.gmail.com>
 <CAOLzfShXVFSgO0yCpjjGMccxVavUQfJiOqfeOzjDUdiZbcsoFg@mail.gmail.com>
 <BYAPR03MB46788297B9DCE99BC1672738D3EC9@BYAPR03MB4678.namprd03.prod.outlook.com>,<CAB__hTS2TjOe6CZHYcZi2LZ1_cQqknXNUTca12N3zMnTYfLk6Q@mail.gmail.com>
In-Reply-To: 
 <CAB__hTS2TjOe6CZHYcZi2LZ1_cQqknXNUTca12N3zMnTYfLk6Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nd.edu; dkim=none (message not signed)
 header.d=none;nd.edu; dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 733e1e9e-a23d-4ee6-d7e2-08d956c85cc8
x-ms-traffictypediagnostic: BYAPR03MB4613:
x-microsoft-antispam-prvs: 
 <BYAPR03MB4613B3FB4675B3045317C130D3F09@BYAPR03MB4613.namprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 IPqrIIxKLrrqgid5Ve/CXei0mTBnpk5fIfYRXCGyzlm3eHsdE6VLzJivmxtbY7A813kY2tna4a+7xsO7JRyEH7K/Lcp4f0zTSugRs9STLRtC9bpJ5cCScRknyPcUcMPKTIh4bM8JRykJGxM0nIlUZAZWDC+NtZ/nUk6lcOCveltf8GDpL98lhA/WYrHxfW/ZvTxoGdjf1pHhABuM6ikVazWw+ZIKl1mzpK+MvjBNTsGnoiZbI1gSh8Ge/DHJsSqnNrlXi4GWIRUI83lNTrWvhY2rBt1ieHFDiKEnymJTFg5xyLWi26infZXs4RlFHBL/9fywH8cETiPJMtGPaylA9Ht8S49toGdKrex8VI786hQEndUTrQkashIewNJE1dvqU8apETuvAOA0TseduLGGDUkc+RKmbQNo4LnGtFLNwyCOzRoEJjqF4Cxme4lBWgs+J5Ujk09uqdqdQEnAdTDy56NgNanRHL2PwoF00dHNxeciC2pdhhr5PUpJkzHxCfkiQfqg6CK8Pn2m2lEZ+L4R9ZcHGHaz2SEEBu8Sdx2GCr8BJiyKJDjCfJwrA7WUZMtb2Y3Yg5V+6CyErVGSC4JYcLAZ33ZpRazy1J4Qv6C2nQeLpbfuoteSCoFvrB6wUblm2L+bA5csR71UnXqaAY2bBoQzK+Uix1YnBgQ7qN1Cy2W9lRFjUZ3XDh8kL86KY/MoJrncr4CR3z/GjS40Ntw9I02R1tgfhpltgesSqeBEeDtFcNYMVokGRw/xsn++ohde0kyxdmII6D/8WralKiDTqMNIEqmBuxA5slVLMLZ1cZSBkDUvpq6S76POTVqWrZxi
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(6019001)(4636009)(39860400002)(366004)(396003)(376002)(136003)(346002)(269900001)(26005)(19627405001)(52536014)(86362001)(9686003)(6506007)(5660300002)(186003)(55016002)(2906002)(30864003)(53546011)(7696005)(66476007)(66556008)(64756008)(66446008)(166002)(83380400001)(66946007)(76116006)(8936002)(75432002)(71200400001)(4326008)(8676002)(6916009)(786003)(122000001)(478600001)(316002)(38070700005)(38100700002)(966005)(33656002)(16193025007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?rStaCON4OkU6THV/jMSQaRDI68jWrPAbc/cqNHB/tFk0Y5VKEQAUnKGpFa3W?=
 =?us-ascii?Q?OLZ9/8nuLoZ+5a1okF2/l7uSZ5n+9Orayi/jO4DOoZzzNBFvj0FAbn43MGMP?=
 =?us-ascii?Q?Q0HrIHc0xwYuKLJOunLsssyYAR6nBAj0OPq5yAg3Uss70Cp/ybx7rXdLs68B?=
 =?us-ascii?Q?0iaCny7/kYcr1lJsCrje4c3tjngQQD0Vg9xb93Wij2pZGu4Rnz4IFY+aa2eq?=
 =?us-ascii?Q?nVhGNm90vKH5dGn/NONKx8o7EtIdJ+O55yv4C9zb3aIhoVOG9ssQ0VbeAisZ?=
 =?us-ascii?Q?+YYqzpO7uTPXBaTXwLuuRWWGC4Ate4TRwc/aoWxZQZkevQV+nhxhzXQpl9WG?=
 =?us-ascii?Q?qp5sVZQryZZXjNNskTOqrPAPTF5tJEiUY21Ub4qqd7fNLa8AMU5ql8S9tonp?=
 =?us-ascii?Q?cUfdHWu799YBtp3NAJ5NXL7W5gZecWHjh1WdtXR477BSfbX8RA0GGN+xwVmp?=
 =?us-ascii?Q?HuPwX7dUicG0a2usbTDT/QGQfCJiidbYNtC7z8Q2iYfPFE8LyyN+QBqmxTXE?=
 =?us-ascii?Q?g7Aej6o7OCPiJzm3uJqMIW61qa4HyiBSVbw60UVxUuzBXrP0A/K3S3P6uhTF?=
 =?us-ascii?Q?fgwOmWKrz2DM6b+ByEOpFHGl3kP6IvJ+W576EDO07PtgrrD0m6epxiSEwtTv?=
 =?us-ascii?Q?K4bTz24ryyI0nAwGIU/6lBbMNlX89gKYG+cWU+UzuCMwUEUAV9XBMlpdrcLO?=
 =?us-ascii?Q?mJFPDScw016MNhr9q5qbCfDuMRFJBjXr8PMLe6wrD94DrztofUN63bhgYEq3?=
 =?us-ascii?Q?qxqt7gVxwFUtiQ3CCRfkV91CmN4mwnl9ey5M45wx87bXz1v3QyHPKE5Tv7Ue?=
 =?us-ascii?Q?hKv0BQzNh31Gbi5w6pGTrwAhIthmhuOP6WjSVIga5wq4XpdvOy0zMFL4bvY+?=
 =?us-ascii?Q?7o26MeZayymGMEeZEgRz5TaHmAYSla0j7MWfaB//WoOOKHcXTC1Dnoui14If?=
 =?us-ascii?Q?IGbiIwSkt9iRu4Z9tjza82I5X9N1g0z+ckQZmwZQj/lSkCHPsvYf8Pv7Yt9o?=
 =?us-ascii?Q?U0ffJKJOSlm0t2urG2RivbP+XZQhInxKtABBDIYZk/qbasxH+Nu4LGKh/3Of?=
 =?us-ascii?Q?BJHAA6AHskKzJX52EKd1/QLIwB8j85tMm0OWqfUICQCQbAejCl3nmTBIwfaT?=
 =?us-ascii?Q?VZpI+2RQhmzpzvykn4jrb0zFggfm8YeYdpXnXX7fNukNx1tS8e2eR1tq2jlt?=
 =?us-ascii?Q?v3crIItAyq7gk/6Br0f5szf2NLLSbeKgkCq5PGo74Ih/WLKIRUpdAAxIN5wJ?=
 =?us-ascii?Q?FSZzOln9h77zXTfARbsewKMmWdOGKCXxAdlU3Fw+0zmvHPP4PHcI8qWJzxX5?=
 =?us-ascii?Q?kkuF6NxlfKKIW9QIrj+uutVO?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 733e1e9e-a23d-4ee6-d7e2-08d956c85cc8
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Aug 2021 21:47:59.8970
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r2NA8cIIwa5QNqtLYOpBXite9nSj0azNyrbmvU5XeD8YNIKuQpfTT8fak13XwdLssR8D4oZ0fXj8OQ2mjZZybA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR03MB4613
Message-ID-Hash: GRNNLLZFFTZ6UBHHESUDZ53I2EHHGDXS
X-Message-ID-Hash: GRNNLLZFFTZ6UBHHESUDZ53I2EHHGDXS
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: DPDK troubles (invalid ELF header loading dpdk library)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CS67VNLKUERDNWYFDMZ7QETRDCKMRSPF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2405793880059561423=="

--===============2405793880059561423==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB4678199CAFE846B2855F4A74D3F09BYAPR03MB4678namp_"

--_000_BYAPR03MB4678199CAFE846B2855F4A74D3F09BYAPR03MB4678namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the hint, reducing the files to only librte_pmd_* and librte_mem=
pool_* changed the error message.

Now what I get is:

VFIO gorup is not viable!

next to the 2 ports I wanted to use for the dpdk operations.

Digging a little bit sounded like the whole NIC had to be configured with t=
he VFIO driver. Doing that (on each 10G port) did not change anything.

Researching the issue on the web I formed this explanation: (disclaimer: th=
is is outside my competence area; I may have misunderstood what's happening=
)
Because my system has the NIC card in the 2nd PCIE slot of the motherboard =
and the first is occupied by the GPU, the iommu group contains both periphe=
rals. The VFIO driver needs to be applied to all devices within the iommu g=
roup to work correctly.

If what I just wrote is correct, I have two alternatives.
1) install a kernel patch that makes the groups different (virtually isolat=
ed) and hope for the best. I understand there may be problems, but I don't =
have the expertise to go further.
2) move the NIC in the other slots and hope it's going in its own iommu gro=
up.

Anyone commenting the above statements would help me a lot. Also, if that's=
 the case: is there any other software solution I can attempt?

Thanks,
Lorenzo
________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Monday, August 2, 2021 10:32 AM
To: Minutolo, Lorenzo <minutolo@caltech.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: DPDK troubles (invalid ELF header loading dpd=
k library)

How many files do you have in your "./dpdk_select" folder?  Just the 5 or 6=
 that Aaron had mentioned in the email below? What happens if you intention=
ally set the dpdk_select folder name incorrectly?

On Fri, Jul 30, 2021 at 6:42 PM Minutolo, Lorenzo <minutolo@caltech.edu<mai=
lto:minutolo@caltech.edu>> wrote:
Thanks everyone for this thread, it's very helpful.
Underruns occur even with top spec hardware on the host side, and my applic=
ation is very susceptible to streaming errors, hence, DPDK .

I'm still trying to get DPDK working, and I'm stuck with:

sudo uhd_usrp_probe --args=3D"use_dpdk=3D1,type=3Dn3xx,addr=3D192.168.10.2"
[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106600; UHD_4.0.0.0-154-gb=
061af4f
EAL: Detected 16 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
EAL: No free hugepages reported in hugepages-1048576kB
EAL: Probing VFIO support...
EAL: VFIO support initialized
[ERROR] [DPDK] No available DPDK devices (ports) found!
[ERROR] [UHD] Device discovery error: RuntimeError: No available DPDK devic=
es (ports) found!
Error: LookupError: KeyError: No devices found for ----->
Device Address:
    use_dpdk: 1
    type: n3xx
    addr: 192.168.10.2


I do have a folder with only the dpdk libs loaded and I managed to bind the=
 devices to vfio-pci:

Network devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:02:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=3Dvfio-pci =
unused=3Di40e
0000:02:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=3Dvfio-pci =
unused=3Di40e

Network devices using kernel driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:00:14.3 'Wireless-AC 9560 [Jefferson Peak] a370' if=3Dwlo1 drv=3Diwlwi=
fi unused=3Dvfio-pci
0000:00:1f.6 'Ethernet Connection (7) I219-V 15bc' if=3Deno2 drv=3De1000e u=
nused=3Dvfio-pci *Active*
0000:02:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Denp2s0f2 d=
rv=3Di40e unused=3Dvfio-pci
0000:02:00.3 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Denp2s0f3 d=
rv=3Di40e unused=3Dvfio-pci

My conf file looks like:

[use_dpdk=3D1]
dpdk_mtu=3D9000
dpdk_driver=3D/usr/local/lib/dpdk_select
dpdk_corelist=3D10,11,12,13
dpdk_num_mbufs=3D4096
dpdk_mbuf_cache_size=3D512

[dpdk_mac=3D***firts mac addr***]
dpdk_lcore =3D 10
dpdk_ipv4 =3D 192.168.10.2/24<http://192.168.10.2/24>
dpdk_num_desc=3D4096

[dpdk_mac=3D***second mac addr***]
dpdk_lcore =3D 11
dpdk_ipv4 =3D 192.168.20.2/24<http://192.168.20.2/24>
dpdk_num_desc=3D4096


Anyone has a hint on what could be going wrong?

Thanks,
Lorenzo

________________________________
From: USRP-users <usrp-users-bounces@lists.ettus.com<mailto:usrp-users-boun=
ces@lists.ettus.com>> on behalf of Patrick Kane via USRP-users <usrp-users@=
lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Sent: Wednesday, February 3, 2021 2:28 PM
To: Rob Kossler <rkossler@nd.edu<mailto:rkossler@nd.edu>>
Cc: usrp-users <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.co=
m>>
Subject: Re: [USRP-users] DPDK troubles (invalid ELF header loading dpdk li=
brary)

Hi Rob,

Thanks for documenting your steps. I can confirm most if not all of your pr=
oblems on Centos 7, USRP N321, Intel XL710. @Ettus can we get some attentio=
n for this issue? DPDK is marketted as a huge improvement for max bandwidth=
 applications, and I have failed to see any real testing or use cases of it=
 working more than once in a row. It is certainly a barrier for my applicat=
ions, forcing me to reduce the sample rate and simplify the use cases.

-Pat


On Wed, Feb 3, 2021 at 4:53 PM Rob Kossler via USRP-users <usrp-users@lists=
.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
I am now to the point where things are kind of working and I'm basically gi=
ving up trying to make them better.  A few remarks for anyone who tries DPD=
K in the future (with N310, Ubuntu 20.04, Intel XL710 NIC, and UHD 4.0).

1) I can only get my application to run once and then I have to do some stu=
ff (see NOTE 1 below) to run again.
2) I get occasional (but much too often) lock-ups of other applications run=
ning in Ubuntu.  This was previously my experience using DPDK under 3.15 (D=
PDK 17.11) but I had hoped things were better now.  They are not.  See belo=
w for more details (NOTE 2 below) on this. Note that these lockups do not o=
ccur even occasionally when not running with DPDK.
3) The instructions in the UHD manual are not nearly good enough to get thi=
ngs running.
4) I first got things working as "root" (as recommended), but this caused s=
ome ancillary issues with my apps. Fortunately, I was able to get it to run=
 as a lowly user (see NOTE 3 below)
5) I could not get things working even once until I followed Aaron's advice=
 of putting just a few symlinks in a folder and pointing to that folder fro=
m .config/uhd.conf (dpdk_driver=3D<folder>). See NOTE 4 below.

Read on for the details if interested.
Rob

NOTE 1: After I run and exit my app, I notice that the link LEDs on the SFP=
 ports of the N310 are not both on as they should be and I am unable to run=
 a second time.  The following sequence fixes this (perhaps there is a bett=
er sequence but I haven't found it yet) such that I am able to re-run succe=
ssfully.
- sudo dpdk-devbind -b i40e  03:00.0 03.00.1  # bind normal driver
- sudo dpdk-devbind -b vfio-pci 03:00.0 03.00.1 # re-bind vfio-pci driver
- physically, unplug & plug QSFP+ transceiver on XL710 (sometimes have to d=
o this 2 or 3 times before it "fixes" the link LEDs on N310 SFPs)

NOTE 2: The fact that DPDK takes over the CPU cores (at least 1 if not 2 of=
 them) seems to cause issues with other apps.  In the past I have even had =
issues with keyboard/mouse input that became intolerably slow. I didn't hav=
e keyboard/mouse issues this time, but I did have issues with a companion a=
pplication that I run alongside my c++/UHD application.  This companion app=
lication (actually Matlab based control/display GUI) would lock up such tha=
t I couldn't even close it down.  But, once I stop my c++/UHD application, =
everything starts behaving normally.  Note that I NEVER have this issue whe=
n running the same applications without DPDK.  I tried the grub update "iso=
lcpus=3DN,M" but not sure if this helped or not.  I also tried changing my =
DPDK corelist from 0,1 to 6,7 because in the past I had convinced myself (p=
erhaps wrongly) that things behaved better if not using CPU 0.  I have no h=
ard evidence to support this.  In the end, things mostly work, but these lo=
ckups are reason enough to avoid DPDK.

NOTE 3: I did the following to run as lowly user rather than root.
1) updated /etc/security/limits.conf to use the following. I really have no=
 idea if these are reasonable values or not. The DPDK docs indicated that t=
hese are the relevant settings to adjust but gave no advice on what they sh=
ould be set to.
<username> - memlock 2000000
<username> - nofile  2000
<username> - locks   2000
2) after binding the vfio-pci driver using dpdk-devbind, I ran the followin=
g. The first two are commands I determined after running the DPDK usertools=
/dpdk-setup.sh utility and then looking at the source to see the exact chmo=
d settings used by this utility (BTW, this utility was helpful).  The third=
 was recommended in the DPDK documentation.
sudo chmod a+x /dev/vfio
sudo chmod 0666 /dev/vfio/*
sudo chmod a+w /dev/hugepages/

NOTE 4: The following are the few symlinks I put in a folder I created "/us=
r/local/lib/dpdk-pmds/".  After pointing the dpdk_driver=3D<folder> setting=
 in uhd.conf to this, I was able to run successfully.
librte_mempool_ring.so, librte_pmd_i40e.so, librte_pmd_ixgbe.so, and librte=
_pmd_ring.so.

On Wed, Feb 3, 2021 at 10:44 AM Rob Kossler <rkossler@nd.edu<mailto:rkossle=
r@nd.edu>> wrote:
Hi Aaron,
Two things:
1) I am getting an error message at the conclusion of a successful run (see=
 below). Not sure if this is something I should be looking at or if it is h=
armless.
2) I figured out a sequence of steps that can "fix" my broken state followi=
ng a successful run. If I do the following, the links are fixed:
  a) dpdk-devbind -b i40e 03:00.0 03:00.1   // bind to the normal driver
  b) dpdk-devbind -b vfio-pci 03:00.0 03:00.1  // bind back to the vfio-pci=
 driver
  c) physically unplug & plug the XL710 QSFP+ transceiver (mine is optical,=
 but unplugging just the MTP does not do the trick - I need to unplug the f=
ull transceiver)

Once I complete the sequence above, the link LEDs are back to normal and I =
can complete another run of benchmark_rate. This is obviously a bad solutio=
n so if you have any ideas, please let me know.
Rob

[00:00:05.113788990] Testing receive rate 125.000000 Msps on 4 channels
[00:00:05.120454627] Testing transmit rate 125.000000 Msps on 4 channels
[00:00:15.373972384] Benchmark complete.

Benchmark rate summary:
  Num received samples:     5099558824
  Num dropped samples:      0
  Num overruns detected:    0
  Num transmitted samples:  4999335588
  Num sequence errors (Tx): 0
  Num sequence errors (Rx): 0
  Num underruns detected:   0
  Num late commands:        0
  Num timeouts (Tx):        0
  Num timeouts (Rx):        0


Done!

i40e_phy_conf_link(): Failed to get PHY capabilities: -7


On Wed, Feb 3, 2021 at 10:16 AM Rob Kossler <rkossler@nd.edu<mailto:rkossle=
r@nd.edu>> wrote:
Hi Aaron,
Unfortunately, I already tried playing around with the link timeout increas=
ing up to 10 seconds.  No luck.  But, I am presently troubleshooting the is=
sue and trying to switch back and forth between DPDK and normal networking.=
 I am finding that normal networking is not working after 1 run of DPDK. An=
d, I'm noticing that link LEDs are messed up and normal pings are not worki=
ng.  I am playing around with disconnecting / reconnecting links in order t=
o get the link LEDs back to normal.  My guess is that things are not cleani=
ng up as they should.
Rob

On Wed, Feb 3, 2021 at 9:51 AM Aaron Rossetto via USRP-users <usrp-users@li=
sts.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
I notice in the second and subsequent runs, you get this message from UHD:

[ERROR] [DPDK] All DPDK links did not report as up!

One of the other issues I've noticed with DPDK (and unfortunately
don't have an answer for) is that link detection seems to have issues.
I'm not sure if this is an XL710-specific problem or whether it's more
widespread, but I added some code to try to mitigate things somewhat
in commit eada49e4d. This commit checks the link status at
250-millisecond intervals for up to the link status timeout (default 1
second) in case the links take a while to register as up. One thing
you could try is overriding the default link status timeout and
increasing the value, which you can do by adding a dpdk_link_timeout=3DX
line to the [use_dpdk=3D1] section of your uhd.conf file, where X is the
new timeout in number of milliseconds.

Best regards,
Aaron

On Tue, Feb 2, 2021 at 1:47 PM Rob Kossler <rkossler@nd.edu<mailto:rkossler=
@nd.edu>> wrote:
>
> Hi Aaron,
> This did indeed help.  Now I am able to run ONCE successfully.  After tha=
t I get an error.  Same behavior on both systems.  Not yet sure how to clea=
r the error.  I played with dpdk_link_timeout and even tried resetting the =
N310 using "overlay rm n310 && overlay add n310 && systemctl restart usrp-h=
wd".  But no luck.
> Rob
>
> // First run succeeds
> root@irisheyes5-hp-z240-sff:~# uhd_image_loader --args=3D"addr=3D192.168.=
1.88,type=3Dn3xx,fpga=3DXG"
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-g=
e520e3ff
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.1.88,type=3Dn3xx,product=3Dn310,serial=3D3144673,claimed=3DFalse=
,skip_init=3D1
> [WARNING] [MPM.RPCServer] A timeout event occured!
> [INFO] [MPMD] Claimed device without full initialization.
> [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
> [INFO] [MPM.PeriphManager] Updating component `fpga'
> [INFO] [MPM.PeriphManager] Updating component `dts'
> [INFO] [MPM.RPCServer] Resetting peripheral manager.
> [INFO] [MPM.PeriphManager] Device serial number: 3144673
> [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
> [INFO] [MPM.PeriphManager] init() called with device args `clock_source=
=3Dinternal,time_source=3Dinternal'.
> [INFO] [MPMD IMAGE LOADER] Update component function succeeded.
> root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=3D62.5e6 --rx_rat=
e=3D62.5e6 --channels=3D"0,1,2,3" --args=3D"use_dpdk=3D1,mgmt_addr=3D192.16=
8.1.88,addr=3D192.168.60.2"
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-g=
e520e3ff
> EAL: Detected 8 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:03:00.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL:   using IOMMU type 1 (Type 1)
> EAL: PCI device 0000:03:00.1 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.2 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.3 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> [00:00:00.000152] Creating the usrp device with: use_dpdk=3D1,mgmt_addr=
=3D192.168.1.88,addr=3D192.168.60.2...
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=
=3D192.168.1.88,type=3Dn3xx,product=3Dn310,serial=3D3144673,claimed=3DFalse=
,use_dpdk=3D1,addr=3D192.168.60.2
> [INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D19=
2.168.1.88,product=3Dn310,use_dpdk=3D1,clock_source=3Dinternal,time_source=
=3Dinternal'.
> Using Device: Single USRP:
>   Device: N300-Series Device
>   Mboard 0: n310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: Magnesium
>   RX Channel: 1
>     RX DSP: 1
>     RX Dboard: A
>     RX Subdev: Magnesium
>   RX Channel: 2
>     RX DSP: 2
>     RX Dboard: B
>     RX Subdev: Magnesium
>   RX Channel: 3
>     RX DSP: 3
>     RX Dboard: B
>     RX Subdev: Magnesium
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: Magnesium
>   TX Channel: 1
>     TX DSP: 1
>     TX Dboard: A
>     TX Subdev: Magnesium
>   TX Channel: 2
>     TX DSP: 2
>     TX Dboard: B
>     TX Subdev: Magnesium
>   TX Channel: 3
>     TX DSP: 3
>     TX Dboard: B
>     TX Subdev: Magnesium
>
> [00:00:03.21715319] Setting device timestamp to 0...
> [INFO] [MULTI_USRP]     1) catch time transition at pps edge
> [INFO] [MULTI_USRP]     2) set times next pps (synchronously)
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.
> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
> Setting TX spp to 1989
> [00:00:04.907401082] Testing receive rate 62.500000 Msps on 4 channels
> [00:00:04.914615576] Testing transmit rate 62.500000 Msps on 4 channels
> [00:00:15.167869894] Benchmark complete.
>
>
> Benchmark rate summary:
>   Num received samples:     2549794336
>   Num dropped samples:      0
>   Num overruns detected:    0
>   Num transmitted samples:  2499910452
>   Num sequence errors (Tx): 0
>   Num sequence errors (Rx): 0
>   Num underruns detected:   0
>   Num late commands:        0
>   Num timeouts (Tx):        0
>   Num timeouts (Rx):        0
>
>
> Done!
>
> // Second run fails
> root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=3D62.5e6 --rx_rat=
e=3D62.5e6 --channels=3D"0,1,2,3" --args=3D"use_dpdk=3D1,mgmt_addr=3D192.16=
8.1.88,addr=3D192.168.60.2"
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-g=
e520e3ff
> EAL: Detected 8 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:03:00.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL:   using IOMMU type 1 (Type 1)
> EAL: PCI device 0000:03:00.1 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.2 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.3 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> [ERROR] [DPDK] All DPDK links did not report as up!
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK links =
did not report as up!
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL =
initialization
> [00:00:00.000122] Creating the usrp device with: use_dpdk=3D1,mgmt_addr=
=3D192.168.1.88,addr=3D192.168.60.2...
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL initia=
lization
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL =
initialization
> Error: LookupError: KeyError: No devices found for ----->
> Device Address:
>     use_dpdk: 1
>     mgmt_addr: 192.168.1.88
>     addr: 192.168.60.2
>
> // Third run fails
> root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=3D62.5e6 --rx_rat=
e=3D62.5e6 --channels=3D"0,1,2,3" --args=3D"use_dpdk=3D1,mgmt_addr=3D192.16=
8.1.88,addr=3D192.168.60.2"
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-50-g=
e520e3ff
> EAL: Detected 8 lcore(s)
> EAL: Detected 1 NUMA nodes
> EAL: Multi-process socket /var/run/dpdk/rte/mp_socket
> EAL: No free hugepages reported in hugepages-1048576kB
> EAL: Probing VFIO support...
> EAL: VFIO support initialized
> EAL: PCI device 0000:03:00.0 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL:   using IOMMU type 1 (Type 1)
> EAL: PCI device 0000:03:00.1 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.2 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> EAL: PCI device 0000:03:00.3 on NUMA socket -1
> EAL:   Invalid NUMA socket, default to 0
> EAL:   probe driver: 8086:1584 net_i40e
> [ERROR] [DPDK] All DPDK links did not report as up!
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK links =
did not report as up!
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL =
initialization
> [00:00:00.000148] Creating the usrp device with: use_dpdk=3D1,mgmt_addr=
=3D192.168.1.88,addr=3D192.168.60.2...
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL initia=
lization
> EAL: FATAL: already called initialization.
> EAL: already called initialization.
> [ERROR] [DPDK] Error with EAL initialization
> [ERROR] [X300] X300 Network discovery error RuntimeError: Error with EAL =
initialization
> Error: LookupError: KeyError: No devices found for ----->
> Device Address:
>     use_dpdk: 1
>     mgmt_addr: 192.168.1.88
>     addr: 192.168.60.2
>
>
>
> On Tue, Feb 2, 2021 at 11:53 AM Aaron Rossetto via USRP-users <usrp-users=
@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
>>
>> On Mon, Feb 1, 2021 at 9:02 PM Rob Kossler via USRP-users
>> <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
>>
>> > Has anyone successfully used DPDK with Ubuntu 20.04, UHD 4.0, Intel XL=
710 NIC, and N310 (or X310)?
>>
>> If I remember correctly, I believe DPDK tries to dlopen() *everything*
>> in the directory specified by the dpdk_driver parameter in the DPDK
>> section of uhd.conf, leading to a lot of errors similar to yours
>> ('Invalid ELF header' and the like). Having the correct collection of
>> .so files in that directory is key.
>>
>> What's worked for me in the past when using DPDK with an Intel XL710
>> is creating a directory (I used /usr/local/lib/dpdk-pmds) and copying
>> a specific set of DPDK .so files into this directory:
>> * librte_mempool_ring.so
>> * librte_pdump.so (I think this one is optional--I had been trying to
>> get packet dumps from DPDK a while back)
>> * librte_pmd_i40e.so
>> * librte_pmd_ixgbe.so (may be optional?)
>> * librte_pmd_pcap.so (this one is also optional, I think)
>> * librte_pmd_ring.so
>>
>> (Symlinking to the actual libraries wherever they get installed
>> instead of copying them into the directory would probably work as
>> well.)
>>
>> Then, make sure that the dpdk-driver key in the [use_dpdk=3D1] section
>> of uhd.conf points to that directory:
>> dpdk_driver =3D /usr/local/lib/dpdk-pmds
>>
>> Hopefully that will resolve the issue and get you a little further
>> down the road.
>>
>> Best regards,
>> Aaron
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_BYAPR03MB4678199CAFE846B2855F4A74D3F09BYAPR03MB4678namp_
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
: 12pt; color: rgb(0, 0, 0);">
Thanks for th<span style=3D"font-family: calibri, arial, helvetica, sans-se=
rif; font-size: 12pt; line-height: normal; color: rgb(0, 0, 0); background-=
color: rgba(0, 0, 0, 0);">e hint, reducing the files to only</span><span st=
yle=3D"font-family: calibri, arial, helvetica, sans-serif; font-size: 12pt;=
 line-height: normal; color: rgb(0, 0, 0); background-color: rgba(0, 0, 0, =
0);">
 librte_pmd_* and librte_mempool_*</span><span style=3D"font-family: calibr=
i, arial, helvetica, sans-serif; font-size: 12pt; line-height: normal; colo=
r: rgb(0, 0, 0); background-color: rgba(0, 0, 0, 0);"></span> changed the e=
rror message.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Now what I get is:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
VFIO gorup is not viable!</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
next to the 2 ports I wanted to use for the dpdk operations.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Digging a little bit sounded like the whole NIC had to be configured with t=
he VFIO driver. Doing that (on each 10G port) did not change anything.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Researching the issue on the web I formed this explanation: (disclaimer: th=
is is outside my competence area; I may have misunderstood what's happening=
)</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Because my system has the NIC card in the 2nd PCIE slot of the motherboard =
and the first is occupied by the GPU, the iommu group contains both periphe=
rals. The VFIO driver needs to be applied to all devices within the iommu g=
roup to work correctly.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If what I just wrote is correct, I have two alternatives.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
1) install a kernel patch that makes the groups different (virtually isolat=
ed) and hope for the best. I understand there may be problems, but I don't =
have the expertise to go further.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
2) move the NIC in the other slots and hope it's going in its own iommu gro=
up.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Anyone commenting the above statements would help me a lot. Also, if that's=
 the case: is there any other software solution I can attempt?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Lorenzo<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Monday, August 2, 2021 10:32 AM<br>
<b>To:</b> Minutolo, Lorenzo &lt;minutolo@caltech.edu&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Re: DPDK troubles (invalid ELF header load=
ing dpdk library)</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">How many files do you have in your &quot;./dpdk_select&quo=
t; folder?&nbsp; Just the 5 or 6 that Aaron had mentioned&nbsp;in the email=
 below? What happens if you intentionally set the dpdk_select folder name i=
ncorrectly?</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Jul 30, 2021 at 6:42 PM Min=
utolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltech=
.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks everyone for this thread, it's very helpful.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Underruns occur even with top spec hardware on the host side, and my applic=
ation is very susceptible to streaming errors, hence, DPDK .<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm still trying to get DPDK working, and I'm stuck with:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
sudo uhd_usrp_probe --args=3D&quot;use_dpdk=3D1,type=3Dn3xx,addr=3D192.168.=
10.2&quot;
<div>[INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106600; UHD_4.0.0.0-1=
54-gb061af4f</div>
<div>EAL: Detected 16 lcore(s)</div>
<div>EAL: Detected 1 NUMA nodes</div>
<div>EAL: Multi-process socket /var/run/dpdk/rte/mp_socket</div>
<div>EAL: No free hugepages reported in hugepages-1048576kB</div>
<div>EAL: Probing VFIO support...</div>
<div>EAL: VFIO support initialized</div>
<div><b><span style=3D"color:rgb(237,92,87)">[ERROR] [DPDK] No available DP=
DK devices (ports) found!</span></b></div>
<div>[ERROR] [UHD] Device discovery error: RuntimeError: No available DPDK =
devices (ports) found!</div>
<div>Error: LookupError: KeyError: No devices found for -----&gt;</div>
<div>Device Address:</div>
<div>&nbsp; &nbsp; use_dpdk: 1</div>
<div>&nbsp; &nbsp; type: n3xx</div>
<span>&nbsp; &nbsp; addr: 192.168.10.2</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>I do have a folder with only the dpdk libs loaded and I managed to bi=
nd the devices to vfio-pci:</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>Network devices using DPDK-compatible driver
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>0000:02:00.0 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=3Dvfio=
-pci unused=3Di40e</div>
<div>0000:02:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=3Dvfio=
-pci unused=3Di40e</div>
<div><br>
</div>
<div>Network devices using kernel driver</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>0000:00:14.3 'Wireless-AC 9560 [Jefferson Peak] a370' if=3Dwlo1 drv=3D=
iwlwifi unused=3Dvfio-pci
</div>
<div>0000:00:1f.6 'Ethernet Connection (7) I219-V 15bc' if=3Deno2 drv=3De10=
00e unused=3Dvfio-pci *Active*</div>
<div>0000:02:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Denp2s=
0f2 drv=3Di40e unused=3Dvfio-pci
</div>
<span>0000:02:00.3 'Ethernet Controller X710 for 10GbE SFP+ 1572' if=3Denp2=
s0f3 drv=3Di40e unused=3Dvfio-pci</span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><span><br>
</span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><span>My conf file looks like:</span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><span><br>
</span></span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span></span>[use_dpdk=3D1]
<div>dpdk_mtu=3D9000</div>
<div>dpdk_driver=3D/usr/local/lib/dpdk_select</div>
<div>dpdk_corelist=3D10,11,12,13</div>
<div>dpdk_num_mbufs=3D4096</div>
<div>dpdk_mbuf_cache_size=3D512</div>
<div><br>
</div>
<div>[dpdk_mac=3D***firts mac addr***]</div>
<div>dpdk_lcore =3D 10</div>
<div>dpdk_ipv4 =3D <a href=3D"http://192.168.10.2/24" target=3D"_blank">192=
.168.10.2/24</a></div>
<div>dpdk_num_desc=3D4096</div>
<div><br>
</div>
<div>[dpdk_mac=3D***second mac addr***]</div>
<div>dpdk_lcore =3D 11</div>
<div>dpdk_ipv4 =3D <a href=3D"http://192.168.20.2/24" target=3D"_blank">192=
.168.20.2/24</a></div>
<span>dpdk_num_desc=3D4096</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>Anyone has a hint on what could be going wrong?</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>Thanks,</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>Lorenzo<br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span></span><br>
</div>
<div id=3D"x_gmail-m_3824903891787522081appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_gmail-m_3824903891787522081divRplyFwdMsg" dir=3D"ltr"><font fa=
ce=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>Fr=
om:</b> USRP-users &lt;<a href=3D"mailto:usrp-users-bounces@lists.ettus.com=
" target=3D"_blank">usrp-users-bounces@lists.ettus.com</a>&gt;
 on behalf of Patrick Kane via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 3, 2021 2:28 PM<br>
<b>To:</b> Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bl=
ank">rkossler@nd.edu</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] DPDK troubles (invalid ELF header loading =
dpdk library)</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Rob,&nbsp;
<div><br>
</div>
<div>Thanks for documenting your steps. I can confirm most if not all of yo=
ur problems on Centos 7, USRP N321, Intel XL710.&nbsp;@Ettus can we get som=
e attention for this issue? DPDK is marketted as a huge improvement for max=
 bandwidth applications, and I have failed
 to see any real testing or use cases of it working more than once in a row=
. It is certainly a barrier for my applications, forcing me to reduce the s=
ample rate and simplify the use cases.&nbsp;</div>
<div><br>
</div>
<div>-Pat</div>
<div><br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Wed, Feb 3, 2021 at 4:53 PM Rob Kossler via USRP-users =
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div dir=3D"ltr">I am now to the point where things are kind of working and=
 I'm basically giving up trying to make them better.&nbsp; A few remarks fo=
r anyone who tries DPDK in the future (with N310, Ubuntu 20.04, Intel XL710=
 NIC, and UHD 4.0).
<div><br>
<div>1) I can only get my application to run once and then I have to do som=
e stuff (see NOTE 1 below) to run again.</div>
<div>2) I get occasional (but much too often) lock-ups of other application=
s running in Ubuntu.&nbsp; This was previously my experience using DPDK und=
er 3.15 (DPDK 17.11) but I had hoped things were better now.&nbsp; They are=
 not.&nbsp; See below for more details (NOTE 2
 below) on this. Note that these lockups do not occur even occasionally whe=
n not running with DPDK.</div>
<div>3) The instructions in the UHD manual are not nearly good enough to ge=
t things running.</div>
<div>4) I first got things working as &quot;root&quot; (as recommended), bu=
t this caused some ancillary issues with my apps. Fortunately, I was able t=
o get it to run as a lowly user (see NOTE 3 below)</div>
<div>5) I could not get things working even once until I followed Aaron's a=
dvice of putting just a few symlinks in a folder and pointing to that folde=
r from .config/uhd.conf (dpdk_driver=3D&lt;folder&gt;). See NOTE 4 below.</=
div>
<div><br>
</div>
<div>Read on for the details if interested.</div>
<div>Rob</div>
<div><br>
</div>
<div>NOTE 1: After I run and exit my app, I notice that the link LEDs on th=
e SFP ports of the N310 are not both on as they should be and I am unable t=
o run a second time.&nbsp; The following sequence fixes this (perhaps there=
 is a better sequence but I haven't found
 it yet) such that I am able to re-run successfully.</div>
<div>- sudo dpdk-devbind -b i40e&nbsp; 03:00.0 03.00.1&nbsp; # bind normal =
driver</div>
<div>- sudo dpdk-devbind -b vfio-pci 03:00.0 03.00.1 # re-bind vfio-pci dri=
ver</div>
<div>- physically, unplug &amp; plug QSFP+ transceiver on XL710 (sometimes =
have to do this 2 or 3 times before it &quot;fixes&quot; the link LEDs on N=
310 SFPs)</div>
<div><br>
</div>
<div>NOTE 2: The fact that DPDK takes over the CPU cores (at least 1 if not=
 2 of them) seems to cause issues with other apps.&nbsp; In the past I have=
 even had issues with keyboard/mouse input that became intolerably slow. I =
didn't have keyboard/mouse issues this
 time, but I did have issues with a companion application that I run alongs=
ide my c++/UHD application.&nbsp; This companion application (actually Matl=
ab based control/display GUI) would lock up such that I couldn't even close=
 it down.&nbsp; But, once I stop my c++/UHD
 application, everything starts behaving normally.&nbsp; Note that I NEVER =
have this issue when running the same applications without DPDK.&nbsp; I tr=
ied the grub update &quot;isolcpus=3DN,M&quot; but not sure if this helped =
or not.&nbsp; I also tried changing my DPDK corelist from 0,1
 to 6,7 because in the past I had convinced myself (perhaps wrongly) that t=
hings behaved better if not using CPU 0.&nbsp; I have no hard evidence to s=
upport this.&nbsp; In the end, things mostly work, but these lockups are re=
ason enough to avoid DPDK.</div>
<div><br>
</div>
<div>NOTE 3: I did the following to run as lowly user rather than root.</di=
v>
<div>1) updated /etc/security/limits.conf to use the following. I really ha=
ve no idea if these are reasonable values or not. The DPDK docs indicated t=
hat these are the relevant settings to adjust but gave no advice on what th=
ey should be set to.</div>
<div>&lt;username&gt; - memlock 2000000<br>
&lt;username&gt; - nofile &nbsp;2000<br>
&lt;username&gt; - locks &nbsp; 2000<br>
</div>
<div>2) after binding the vfio-pci driver using dpdk-devbind, I ran the fol=
lowing. The first two are commands I determined after running the DPDK user=
tools/dpdk-setup.sh utility and then looking at the source to see the exact=
 chmod settings used by this utility
 (BTW, this utility was helpful).&nbsp; The third was recommended in the DP=
DK documentation.</div>
<div>sudo chmod a+x /dev/vfio<br>
sudo chmod 0666 /dev/vfio/*<br>
sudo chmod a+w /dev/hugepages/<br>
</div>
<div><br>
</div>
<div>NOTE 4: The following are the few symlinks I put in a folder I created=
 &quot;/usr/local/lib/dpdk-pmds/&quot;.&nbsp; After pointing the dpdk_drive=
r=3D&lt;folder&gt; setting in uhd.conf to this, I was able to run successfu=
lly.&nbsp;</div>
<div>librte_mempool_ring.so, librte_pmd_i40e.so, librte_pmd_ixgbe.so, and l=
ibrte_pmd_ring.so.</div>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Wed, Feb 3, 2021 at 10:44 AM Rob Kossler &lt;<a href=3D=
"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<b=
r>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div><font face=3D"monospace">Hi Aaron,</font></div>
<div><font face=3D"monospace">Two things:</font></div>
<div><font face=3D"monospace">1) I am getting an error message at the concl=
usion of a successful run (see below). Not sure if this is something I shou=
ld be looking at or if it is harmless.</font></div>
<div><font face=3D"monospace">2) I figured out a sequence of steps that can=
 &quot;fix&quot; my broken state following a successful run. If I do the fo=
llowing, the links are fixed:</font></div>
<div><font face=3D"monospace">&nbsp; a) dpdk-devbind -b i40e 03:00.0 03:00.=
1&nbsp; &nbsp;// bind to the normal driver</font></div>
<div><font face=3D"monospace">&nbsp; b) dpdk-devbind -b vfio-pci 03:00.0 03=
:00.1&nbsp; // bind back to the vfio-pci driver</font></div>
<div><font face=3D"monospace">&nbsp; c) physically unplug &amp; plug the XL=
710 QSFP+ transceiver&nbsp;(mine is optical, but unplugging just the MTP do=
es not do the trick - I need to unplug the full transceiver)</font></div>
<div><br>
</div>
<div>Once I complete the sequence above, the link LEDs are back to normal a=
nd I can complete another run of benchmark_rate. This is obviously a bad so=
lution so if you have any ideas, please let me know.</div>
<div>Rob</div>
<div><br>
</div>
<font face=3D"monospace">[00:00:05.113788990] Testing receive rate 125.0000=
00 Msps on 4 channels<br>
[00:00:05.120454627] Testing transmit rate 125.000000 Msps on 4 channels<br=
>
[00:00:15.373972384] Benchmark complete.<br>
<br>
Benchmark rate summary:<br>
&nbsp; Num received samples: &nbsp; &nbsp; 5099558824<br>
&nbsp; Num dropped samples: &nbsp; &nbsp; &nbsp;0<br>
&nbsp; Num overruns detected: &nbsp; &nbsp;0<br>
&nbsp; Num transmitted samples: &nbsp;4999335588<br>
&nbsp; Num sequence errors (Tx): 0<br>
&nbsp; Num sequence errors (Rx): 0<br>
&nbsp; Num underruns detected: &nbsp; 0<br>
&nbsp; Num late commands: &nbsp; &nbsp; &nbsp; &nbsp;0<br>
&nbsp; Num timeouts (Tx): &nbsp; &nbsp; &nbsp; &nbsp;0<br>
&nbsp; Num timeouts (Rx): &nbsp; &nbsp; &nbsp; &nbsp;0<br>
<br>
<br>
Done!<br>
<br>
<span style=3D"background-color:rgb(255,255,0)">i40e_phy_conf_link(): Faile=
d to get PHY capabilities: -7</span><br>
</font>
<div><br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Wed, Feb 3, 2021 at 10:16 AM Rob Kossler &lt;<a href=3D=
"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<b=
r>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Aaron,
<div>Unfortunately, I already tried playing around with the link timeout in=
creasing up to 10 seconds.&nbsp; No luck.&nbsp; But, I am presently trouble=
shooting the issue and trying to switch back and forth between DPDK and nor=
mal networking. I am finding that normal networking
 is not working after 1 run of DPDK. And, I'm noticing that link LEDs are m=
essed up and normal pings are not working.&nbsp; I am playing around with d=
isconnecting / reconnecting links in order to get the link LEDs back to nor=
mal.&nbsp; My guess is that things are not
 cleaning up as they should.&nbsp;</div>
<div>Rob</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Wed, Feb 3, 2021 at 9:51 AM Aaron Rossetto via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp=
-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
I notice in the second and subsequent runs, you get this message from UHD:<=
br>
<br>
[ERROR] [DPDK] All DPDK links did not report as up!<br>
<br>
One of the other issues I've noticed with DPDK (and unfortunately<br>
don't have an answer for) is that link detection seems to have issues.<br>
I'm not sure if this is an XL710-specific problem or whether it's more<br>
widespread, but I added some code to try to mitigate things somewhat<br>
in commit eada49e4d. This commit checks the link status at<br>
250-millisecond intervals for up to the link status timeout (default 1<br>
second) in case the links take a while to register as up. One thing<br>
you could try is overriding the default link status timeout and<br>
increasing the value, which you can do by adding a dpdk_link_timeout=3DX<br=
>
line to the [use_dpdk=3D1] section of your uhd.conf file, where X is the<br=
>
new timeout in number of milliseconds.<br>
<br>
Best regards,<br>
Aaron<br>
<br>
On Tue, Feb 2, 2021 at 1:47 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@n=
d.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Aaron,<br>
&gt; This did indeed help.&nbsp; Now I am able to run ONCE successfully.&nb=
sp; After that I get an error.&nbsp; Same behavior on both systems.&nbsp; N=
ot yet sure how to clear the error.&nbsp; I played with dpdk_link_timeout a=
nd even tried resetting the N310 using &quot;overlay rm n310 &amp;&amp; ove=
rlay
 add n310 &amp;&amp; systemctl restart usrp-hwd&quot;.&nbsp; But no luck.<b=
r>
&gt; Rob<br>
&gt;<br>
&gt; // First run succeeds<br>
&gt; root@irisheyes5-hp-z240-sff:~# uhd_image_loader --args=3D&quot;addr=3D=
192.168.1.88,type=3Dn3xx,fpga=3DXG&quot;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-5=
0-ge520e3ff<br>
&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.1.88,type=3Dn3xx,product=3Dn310,serial=3D3144673,claimed=3DFals=
e,skip_init=3D1<br>
&gt; [WARNING] [MPM.RPCServer] A timeout event occured!<br>
&gt; [INFO] [MPMD] Claimed device without full initialization.<br>
&gt; [INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.<br>
&gt; [INFO] [MPM.PeriphManager] Updating component `fpga'<br>
&gt; [INFO] [MPM.PeriphManager] Updating component `dts'<br>
&gt; [INFO] [MPM.RPCServer] Resetting peripheral manager.<br>
&gt; [INFO] [MPM.PeriphManager] Device serial number: 3144673<br>
&gt; [INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br>
&gt; [INFO] [MPM.PeriphManager] init() called with device args `clock_sourc=
e=3Dinternal,time_source=3Dinternal'.<br>
&gt; [INFO] [MPMD IMAGE LOADER] Update component function succeeded.<br>
&gt; root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=3D62.5e6 --rx_=
rate=3D62.5e6 --channels=3D&quot;0,1,2,3&quot; --args=3D&quot;use_dpdk=3D1,=
mgmt_addr=3D192.168.1.88,addr=3D192.168.60.2&quot;<br>
&gt;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-5=
0-ge520e3ff<br>
&gt; EAL: Detected 8 lcore(s)<br>
&gt; EAL: Detected 1 NUMA nodes<br>
&gt; EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>
&gt; EAL: No free hugepages reported in hugepages-1048576kB<br>
&gt; EAL: Probing VFIO support...<br>
&gt; EAL: VFIO support initialized<br>
&gt; EAL: PCI device 0000:03:00.0 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; EAL:&nbsp; &nbsp;using IOMMU type 1 (Type 1)<br>
&gt; EAL: PCI device 0000:03:00.1 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.2 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.3 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; [00:00:00.000152] Creating the usrp device with: use_dpdk=3D1,mgmt_add=
r=3D192.168.1.88,addr=3D192.168.60.2...<br>
&gt; [INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.1.88,type=3Dn3xx,product=3Dn310,serial=3D3144673,claimed=3DFals=
e,use_dpdk=3D1,addr=3D192.168.60.2<br>
&gt; [INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=
=3D192.168.1.88,product=3Dn310,use_dpdk=3D1,clock_source=3Dinternal,time_so=
urce=3Dinternal'.<br>
&gt; Using Device: Single USRP:<br>
&gt;&nbsp; &nbsp;Device: N300-Series Device<br>
&gt;&nbsp; &nbsp;Mboard 0: n310<br>
&gt;&nbsp; &nbsp;RX Channel: 0<br>
&gt;&nbsp; &nbsp; &nbsp;RX DSP: 0<br>
&gt;&nbsp; &nbsp; &nbsp;RX Dboard: A<br>
&gt;&nbsp; &nbsp; &nbsp;RX Subdev: Magnesium<br>
&gt;&nbsp; &nbsp;RX Channel: 1<br>
&gt;&nbsp; &nbsp; &nbsp;RX DSP: 1<br>
&gt;&nbsp; &nbsp; &nbsp;RX Dboard: A<br>
&gt;&nbsp; &nbsp; &nbsp;RX Subdev: Magnesium<br>
&gt;&nbsp; &nbsp;RX Channel: 2<br>
&gt;&nbsp; &nbsp; &nbsp;RX DSP: 2<br>
&gt;&nbsp; &nbsp; &nbsp;RX Dboard: B<br>
&gt;&nbsp; &nbsp; &nbsp;RX Subdev: Magnesium<br>
&gt;&nbsp; &nbsp;RX Channel: 3<br>
&gt;&nbsp; &nbsp; &nbsp;RX DSP: 3<br>
&gt;&nbsp; &nbsp; &nbsp;RX Dboard: B<br>
&gt;&nbsp; &nbsp; &nbsp;RX Subdev: Magnesium<br>
&gt;&nbsp; &nbsp;TX Channel: 0<br>
&gt;&nbsp; &nbsp; &nbsp;TX DSP: 0<br>
&gt;&nbsp; &nbsp; &nbsp;TX Dboard: A<br>
&gt;&nbsp; &nbsp; &nbsp;TX Subdev: Magnesium<br>
&gt;&nbsp; &nbsp;TX Channel: 1<br>
&gt;&nbsp; &nbsp; &nbsp;TX DSP: 1<br>
&gt;&nbsp; &nbsp; &nbsp;TX Dboard: A<br>
&gt;&nbsp; &nbsp; &nbsp;TX Subdev: Magnesium<br>
&gt;&nbsp; &nbsp;TX Channel: 2<br>
&gt;&nbsp; &nbsp; &nbsp;TX DSP: 2<br>
&gt;&nbsp; &nbsp; &nbsp;TX Dboard: B<br>
&gt;&nbsp; &nbsp; &nbsp;TX Subdev: Magnesium<br>
&gt;&nbsp; &nbsp;TX Channel: 3<br>
&gt;&nbsp; &nbsp; &nbsp;TX DSP: 3<br>
&gt;&nbsp; &nbsp; &nbsp;TX Dboard: B<br>
&gt;&nbsp; &nbsp; &nbsp;TX Subdev: Magnesium<br>
&gt;<br>
&gt; [00:00:03.21715319] Setting device timestamp to 0...<br>
&gt; [INFO] [MULTI_USRP]&nbsp; &nbsp; &nbsp;1) catch time transition at pps=
 edge<br>
&gt; [INFO] [MULTI_USRP]&nbsp; &nbsp; &nbsp;2) set times next pps (synchron=
ously)<br>
&gt; [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br>
&gt; [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.<br>
&gt; [WARNING] [0/Radio#1] Attempting to set tick rate to 0. Skipping.<br>
&gt; [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.<br>
&gt; Setting TX spp to 1989<br>
&gt; [00:00:04.907401082] Testing receive rate 62.500000 Msps on 4 channels=
<br>
&gt; [00:00:04.914615576] Testing transmit rate 62.500000 Msps on 4 channel=
s<br>
&gt; [00:00:15.167869894] Benchmark complete.<br>
&gt;<br>
&gt;<br>
&gt; Benchmark rate summary:<br>
&gt;&nbsp; &nbsp;Num received samples:&nbsp; &nbsp; &nbsp;2549794336<br>
&gt;&nbsp; &nbsp;Num dropped samples:&nbsp; &nbsp; &nbsp; 0<br>
&gt;&nbsp; &nbsp;Num overruns detected:&nbsp; &nbsp; 0<br>
&gt;&nbsp; &nbsp;Num transmitted samples:&nbsp; 2499910452<br>
&gt;&nbsp; &nbsp;Num sequence errors (Tx): 0<br>
&gt;&nbsp; &nbsp;Num sequence errors (Rx): 0<br>
&gt;&nbsp; &nbsp;Num underruns detected:&nbsp; &nbsp;0<br>
&gt;&nbsp; &nbsp;Num late commands:&nbsp; &nbsp; &nbsp; &nbsp; 0<br>
&gt;&nbsp; &nbsp;Num timeouts (Tx):&nbsp; &nbsp; &nbsp; &nbsp; 0<br>
&gt;&nbsp; &nbsp;Num timeouts (Rx):&nbsp; &nbsp; &nbsp; &nbsp; 0<br>
&gt;<br>
&gt;<br>
&gt; Done!<br>
&gt;<br>
&gt; // Second run fails<br>
&gt; root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=3D62.5e6 --rx_=
rate=3D62.5e6 --channels=3D&quot;0,1,2,3&quot; --args=3D&quot;use_dpdk=3D1,=
mgmt_addr=3D192.168.1.88,addr=3D192.168.60.2&quot;<br>
&gt;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-5=
0-ge520e3ff<br>
&gt; EAL: Detected 8 lcore(s)<br>
&gt; EAL: Detected 1 NUMA nodes<br>
&gt; EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>
&gt; EAL: No free hugepages reported in hugepages-1048576kB<br>
&gt; EAL: Probing VFIO support...<br>
&gt; EAL: VFIO support initialized<br>
&gt; EAL: PCI device 0000:03:00.0 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; EAL:&nbsp; &nbsp;using IOMMU type 1 (Type 1)<br>
&gt; EAL: PCI device 0000:03:00.1 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.2 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.3 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; [ERROR] [DPDK] All DPDK links did not report as up!<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK lin=
ks did not report as up!<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [X300] X300 Network discovery error RuntimeError: Error with E=
AL initialization<br>
&gt; [00:00:00.000122] Creating the usrp device with: use_dpdk=3D1,mgmt_add=
r=3D192.168.1.88,addr=3D192.168.60.2...<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL ini=
tialization<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [X300] X300 Network discovery error RuntimeError: Error with E=
AL initialization<br>
&gt; Error: LookupError: KeyError: No devices found for -----&gt;<br>
&gt; Device Address:<br>
&gt;&nbsp; &nbsp; &nbsp;use_dpdk: 1<br>
&gt;&nbsp; &nbsp; &nbsp;mgmt_addr: 192.168.1.88<br>
&gt;&nbsp; &nbsp; &nbsp;addr: 192.168.60.2<br>
&gt;<br>
&gt; // Third run fails<br>
&gt; root@irisheyes5-hp-z240-sff:~# benchmark_rate --tx_rate=3D62.5e6 --rx_=
rate=3D62.5e6 --channels=3D&quot;0,1,2,3&quot; --args=3D&quot;use_dpdk=3D1,=
mgmt_addr=3D192.168.1.88,addr=3D192.168.60.2&quot;<br>
&gt;<br>
&gt; [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; UHD_4.0.0.0-5=
0-ge520e3ff<br>
&gt; EAL: Detected 8 lcore(s)<br>
&gt; EAL: Detected 1 NUMA nodes<br>
&gt; EAL: Multi-process socket /var/run/dpdk/rte/mp_socket<br>
&gt; EAL: No free hugepages reported in hugepages-1048576kB<br>
&gt; EAL: Probing VFIO support...<br>
&gt; EAL: VFIO support initialized<br>
&gt; EAL: PCI device 0000:03:00.0 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; EAL:&nbsp; &nbsp;using IOMMU type 1 (Type 1)<br>
&gt; EAL: PCI device 0000:03:00.1 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.2 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; EAL: PCI device 0000:03:00.3 on NUMA socket -1<br>
&gt; EAL:&nbsp; &nbsp;Invalid NUMA socket, default to 0<br>
&gt; EAL:&nbsp; &nbsp;probe driver: 8086:1584 net_i40e<br>
&gt; [ERROR] [DPDK] All DPDK links did not report as up!<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [UHD] Device discovery error: RuntimeError: DPDK: All DPDK lin=
ks did not report as up!<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [X300] X300 Network discovery error RuntimeError: Error with E=
AL initialization<br>
&gt; [00:00:00.000148] Creating the usrp device with: use_dpdk=3D1,mgmt_add=
r=3D192.168.1.88,addr=3D192.168.60.2...<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [UHD] Device discovery error: RuntimeError: Error with EAL ini=
tialization<br>
&gt; EAL: FATAL: already called initialization.<br>
&gt; EAL: already called initialization.<br>
&gt; [ERROR] [DPDK] Error with EAL initialization<br>
&gt; [ERROR] [X300] X300 Network discovery error RuntimeError: Error with E=
AL initialization<br>
&gt; Error: LookupError: KeyError: No devices found for -----&gt;<br>
&gt; Device Address:<br>
&gt;&nbsp; &nbsp; &nbsp;use_dpdk: 1<br>
&gt;&nbsp; &nbsp; &nbsp;mgmt_addr: 192.168.1.88<br>
&gt;&nbsp; &nbsp; &nbsp;addr: 192.168.60.2<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Tue, Feb 2, 2021 at 11:53 AM Aaron Rossetto via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Feb 1, 2021 at 9:02 PM Rob Kossler via USRP-users<br>
&gt;&gt; &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; &gt; Has anyone successfully used DPDK with Ubuntu 20.04, UHD 4.0,=
 Intel XL710 NIC, and N310 (or X310)?<br>
&gt;&gt;<br>
&gt;&gt; If I remember correctly, I believe DPDK tries to dlopen() *everyth=
ing*<br>
&gt;&gt; in the directory specified by the dpdk_driver parameter in the DPD=
K<br>
&gt;&gt; section of uhd.conf, leading to a lot of errors similar to yours<b=
r>
&gt;&gt; ('Invalid ELF header' and the like). Having the correct collection=
 of<br>
&gt;&gt; .so files in that directory is key.<br>
&gt;&gt;<br>
&gt;&gt; What's worked for me in the past when using DPDK with an Intel XL7=
10<br>
&gt;&gt; is creating a directory (I used /usr/local/lib/dpdk-pmds) and copy=
ing<br>
&gt;&gt; a specific set of DPDK .so files into this directory:<br>
&gt;&gt; * librte_mempool_ring.so<br>
&gt;&gt; * librte_pdump.so (I think this one is optional--I had been trying=
 to<br>
&gt;&gt; get packet dumps from DPDK a while back)<br>
&gt;&gt; * librte_pmd_i40e.so<br>
&gt;&gt; * librte_pmd_ixgbe.so (may be optional?)<br>
&gt;&gt; * librte_pmd_pcap.so (this one is also optional, I think)<br>
&gt;&gt; * librte_pmd_ring.so<br>
&gt;&gt;<br>
&gt;&gt; (Symlinking to the actual libraries wherever they get installed<br=
>
&gt;&gt; instead of copying them into the directory would probably work as<=
br>
&gt;&gt; well.)<br>
&gt;&gt;<br>
&gt;&gt; Then, make sure that the dpdk-driver key in the [use_dpdk=3D1] sec=
tion<br>
&gt;&gt; of uhd.conf points to that directory:<br>
&gt;&gt; dpdk_driver =3D /usr/local/lib/dpdk-pmds<br>
&gt;&gt;<br>
&gt;&gt; Hopefully that will resolve the issue and get you a little further=
<br>
&gt;&gt; down the road.<br>
&gt;&gt;<br>
&gt;&gt; Best regards,<br>
&gt;&gt; Aaron<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</blockquote>
</div>
</blockquote>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_BYAPR03MB4678199CAFE846B2855F4A74D3F09BYAPR03MB4678namp_--

--===============2405793880059561423==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2405793880059561423==--

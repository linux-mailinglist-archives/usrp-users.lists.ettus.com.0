Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BFB3A69FF
	for <lists+usrp-users@lfdr.de>; Mon, 14 Jun 2021 17:23:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 44EEF38464E
	for <lists+usrp-users@lfdr.de>; Mon, 14 Jun 2021 11:23:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="PbvrR3Wp";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.184])
	by mm2.emwd.com (Postfix) with ESMTPS id 040DD383FF4
	for <usrp-users@lists.ettus.com>; Mon, 14 Jun 2021 11:22:32 -0400 (EDT)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.24])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 68FCA120074;
	Mon, 14 Jun 2021 15:22:31 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2169.outbound.protection.outlook.com [104.47.55.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 452723C007C;
	Mon, 14 Jun 2021 15:22:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NcCZJqYRDX4RhfMhcALY9aCt75gKd+E7pNQEpHN1hc9iP6SEPSfItQ6C3erQIEvlpOq18Mp9u7U5NF7kvIU36ZvQqQmeXmcvrb4sGXU6ZvQq5v4sZRPJDk5vLbGgK/oHgvSjGt/k9k55rbgdIW6nsZLnuAwm4ibK1fb3l5mtJQoSYidUhCn/3Hhsj7sycSIGQVj3r1FTANC0CfjU8u3lZDiTZ2BRebq9YcuIX3BgiDoKjDHPoe0IB7zW2lvub7DNiLCYVScFvbEB53LiiVrTjuzZF10bPuOXtQA6PbIxV9lxuUHbBctvSXH+LNAzBiXaOrQqDwRjmSipK5fSFJFUGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ha7IPij7YWv6E5v6E60g46JcijN8b3XFIfC1JZXBpN4=;
 b=hfdqPkG+5NvRSX0c6UNiIldfgQzYrtgM11IHc/tOYEGDIkuldDLlI4b7m4REhZusvGrWbiNC9CAadvtHuAwsS1TTpFaRid7fgZ1h76CoSRUwSNVT3CWePC1tRZDee3thknQv/Gxss74bK4S0ig3pF8ceCE447MEj0zTF0EOKV4XLFE6YegLqmdkk2+Lf72JIsnZan5Bjrr9jjRvkn6HipjcWeezVsJUXzgPIRPtQtaxGG92Z3z3PGVNGITbM5sDSlgPS/BgoSMRVpVShvbfAAlxAo9epkLXwh3Bp8ZUsGXPlCXoJWNFzuwMwskDSJTAB9jpyIfbI5m8c02k2eSDQcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ha7IPij7YWv6E5v6E60g46JcijN8b3XFIfC1JZXBpN4=;
 b=PbvrR3WpjF6cThBs4fvodWeIRYOKNZTaMi81n/AWbG5EplAxeOz/8jKazMxi1RrLRJo8ehGUuObjnI/eVpZQrfD38Q2U0QhwlX3w7H0zRoITZGmZpZmjLVrhrAHaWp0HST1vh0o1XOjJd7SmiwqVf2JtICiC6X/mXlsFDZacUhg=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by MN2PR12MB3472.namprd12.prod.outlook.com (2603:10b6:208:d2::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.23; Mon, 14 Jun
 2021 15:22:28 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::cb6:31ec:520c:c197]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::cb6:31ec:520c:c197%7]) with mapi id 15.20.4219.025; Mon, 14 Jun 2021
 15:22:28 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: =?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>, "Marcus D.
 Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 1PPS input voltage
Thread-Index: 
 AQHXXrsEFk6GKS0mUEmOl1kUojleFqsOyS4AgAAH0ACAAAD7EoAABFOAgABWLYCABHbroA==
Date: Mon, 14 Jun 2021 15:22:28 +0000
Message-ID: 
 <MN2PR12MB33128E0A793E2550F2CBB98AB8319@MN2PR12MB3312.namprd12.prod.outlook.com>
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
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 710adc7d-ec09-40ed-0626-08d92f4838a7
x-ms-traffictypediagnostic: MN2PR12MB3472:
x-microsoft-antispam-prvs: 
 <MN2PR12MB347245111D1613D2CA17809EB8319@MN2PR12MB3472.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 EfeeGTLh9v5qgXljMwEQbBz1DvhMOQhgb/0dyR/+9PwZnfJfSWmlcdj3L0D0GVAVsr1Apo34u6e6TMz0bl6we2mERxODjWujdgqHn5/I9xu42jEgfjMbuTOT83ws3x9eUmf+mUMM8AKRrCC62vxFILhXzcUlTGbKCr9yIMzWN8t/uchtGxax0j84FT3zyhiYogAEcX36cOFAqWiZj0hrEptbwapY2uo49DROjWuctt/X98lccTLc+Ld+2IsEVxECig8qy0YNz2GuryD4yO4kLWeG/PyM6+iq4LwRiC4ZYmdKsqtlRr3qHMMOc0MNp9jBW0xtaKTIjBJ4p7EMco/cPzVD89ZwmGpVFoFQWMqQ9JrkeuFtX2RAN+gsev/PuCBPawbT7cMNyqY59BKvR4DLcjDoCTyn+Lu6kaSObPvrWMOeZY7Mhb0xSLck4I7XML9fzyLd0RBf/EerKC2OrvbyplVGm+AttR9gtk8LGjSLNqODrsELlROWZKMATvQuTcA+fKOfaBh++3POTTc/MEesDkIo9BeIjEqNnqifNXFu+/qTX1evxv6jonDiKiQMn3jYj7agjBUTKJXnwb09Rg2AvAp0TQ5PaEVI0vmtCjF0WDFkRSIOeAWsbdBpEinQNar2/RP5s3lKNqGTataJ18j4dphHmXPMKGpNlRhr3/Y389dfiYUsD5W/4isiO62n2T6I4EY9KjbXydapJpS+FPvB7Ea/VS58l0aY9L/VOC5VciUyyzE5FsX2HM2uEOJ4mYDx5aEmwcmWyJhw+lbs9/IhaA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(136003)(396003)(346002)(39830400003)(366004)(110136005)(7696005)(9686003)(33656002)(2906002)(186003)(26005)(71200400001)(316002)(52536014)(83380400001)(478600001)(19627405001)(18265965003)(86362001)(122000001)(53546011)(5660300002)(66946007)(66476007)(66556008)(64756008)(66446008)(6506007)(8676002)(55016002)(66574015)(76116006)(166002)(38100700002)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?P9EF43Bouwbwpa2H6elvFByCAxJ9Dc6dPrUvOltMf19D24QHgkgbKoJ4KV?=
 =?iso-8859-1?Q?1vzwD9zuv7u+LHyrOaQVPbV2B62HNZigbp9GmSboM1RQIG6ax5GyXCd7Ib?=
 =?iso-8859-1?Q?XZrqE6P/+C+URyitydpszgFdGDxHMCz124MVhNk3kPkZVu/nC8/ECXYKei?=
 =?iso-8859-1?Q?SyWkfXrriVNCocCD50hJyYrTM1aoNrB54r4GGK09id4IH/2sRMyYLcc7b5?=
 =?iso-8859-1?Q?TC4mwMXQgQbmvPy1xR3G1ezUpS8fI94g8qM5zZCmcjqZE/AC49TqNhlTHN?=
 =?iso-8859-1?Q?OKqBbM+sc5rdBUdWEwecWDiQtH7BqIY6tuwETGXTSYQT0C4AIJvZzfL7hc?=
 =?iso-8859-1?Q?VyXRvFygKxufti3aEcL1s5Mm72oGF9Nyz/4HK/NbMsMpLlidKgFGzL/zuD?=
 =?iso-8859-1?Q?KaC+XyaUe5Xv7ft66gphwcq/PGfYyrkzkChascDrtln0OCiED52QlZ5epH?=
 =?iso-8859-1?Q?yXXcdphOZi5cgfUSG75XgH9eXdtv4Cc0cEqGyMyOUGrNxpEuiY+cwjXMKu?=
 =?iso-8859-1?Q?Gqc3IkWbqzyaF35L1Y/HSzNeSEQTGK2Cs4/rjFb5BBqpiETVM8QCdzwftq?=
 =?iso-8859-1?Q?hs1lJAnF0s3CI2nf26oAbeUgQiNP+XylrJYQzsd6vJVu5a/pXlbF3X7GfV?=
 =?iso-8859-1?Q?CD5TVDvIlj4N3xziGoTvyXNX3pDOioW6C9qEA9n9aizycdrNIOrM8illRT?=
 =?iso-8859-1?Q?8Jzkwl3sj/QHzl7PaBncegm9nGgswi7k0WIqR7YWBAkDap1f9JiKwVsvow?=
 =?iso-8859-1?Q?0eKfjX6yPMy46estHn0IzaisuxB72S2bgVb/5OzpLaAkVpd/JkxWoraOpQ?=
 =?iso-8859-1?Q?6iP59I+uEKuW/siyy/atvAeuLZj6CKIho5/MF+5N5L/m/ZHqoA2Wvx4XCi?=
 =?iso-8859-1?Q?1N2nryKMu8uQKz3rLTpZ6Iwq+5NXmeK1QkVkgx0GREr/flcthNMqsAdzH9?=
 =?iso-8859-1?Q?vP3nn1ZYPEhALU6BC1wKb1OWNoKYJMxmncaBjUgrYgoQdkRjBaMzzNC7cS?=
 =?iso-8859-1?Q?6YweQ3y9ftbEDlzl/vKWbMzGGDA4aqVTA2uNChApONhoZQ9D8JGkmp86VF?=
 =?iso-8859-1?Q?02DpKDT3JccErfUT8g/J7wyNeameW9zUXToId58JFIBWHk1IMgA+aaZAXn?=
 =?iso-8859-1?Q?w2eNOmO7RaAH9sILynxTkXuIzBtHw20PNL92x2M4n8zhn4Tc/+/ijIG6sl?=
 =?iso-8859-1?Q?uj7+6/rAwTs73JjyjPlIdqUz6pPLU5Im9M62JA9DX3kfVH+lrWuoLi7Llw?=
 =?iso-8859-1?Q?ROmFPotPo8cQ12mBz6grm/EDGj8UHTz1onNPipszHA758Cs6bggxgAnrW5?=
 =?iso-8859-1?Q?fAahnA/Obzw5MqXL35XCmyZMZ2uCsvSJ3hbXnlCbbn/s84g=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 710adc7d-ec09-40ed-0626-08d92f4838a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2021 15:22:28.1038
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d/Te0NeGKG/xrpTaZsYo379vPvz244Rf1vDA2AyQDGYKABd0v1rcL0pq5vV9ozwxTP5DpRoDSbJgUm7T610Lc6ApjQppKyZC4VWIY9AY0cw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3472
X-MDID: 1623684151-abS9-mOKicy6
Message-ID-Hash: TI7F3HFAD5UF2KNM7QM636OWQ7YPRYUS
X-Message-ID-Hash: TI7F3HFAD5UF2KNM7QM636OWQ7YPRYUS
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 1PPS input voltage
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WME6HNM45JTOSYOERT6JNXD6U3XULUUN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6488541938864780773=="

--===============6488541938864780773==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB33128E0A793E2550F2CBB98AB8319MN2PR12MB3312namp_"

--_000_MN2PR12MB33128E0A793E2550F2CBB98AB8319MN2PR12MB3312namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

What is the best way to check the hardware revision? I don't have one in fr=
ont of me, but one of the other engineers checked the label on a N320 and d=
oesn't see a revision letter (at least it isn't obvious if it's there). Or =
can this be checked with uhd_usrp_probe. The only thing we see there is:

|   |   rev: 10

Thanks,
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

--_000_MN2PR12MB33128E0A793E2550F2CBB98AB8319MN2PR12MB3312namp_
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
Hi Marcus,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
What is the best way to check the hardware revision? I don't have one in fr=
ont of me, but one of the other engineers checked the label on a N320 and d=
oesn't see a revision letter (at least it isn't obvious if it's there). Or =
can this be checked with uhd_usrp_probe.
 The only thing we see there is:<br>
<br>
| &nbsp; | &nbsp; rev: 10<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,&nbsp;</div>
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

--_000_MN2PR12MB33128E0A793E2550F2CBB98AB8319MN2PR12MB3312namp_--

--===============6488541938864780773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6488541938864780773==--

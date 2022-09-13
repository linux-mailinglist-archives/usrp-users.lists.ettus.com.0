Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B7B5B79BA
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 20:38:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB3B7383BA9
	for <lists+usrp-users@lfdr.de>; Tue, 13 Sep 2022 14:38:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663094287; bh=+caQ29eOMO0ntzLd5e1PnHuNRdSboiL67jrU/N3QjNM=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EaHO1Stb8aR7WLDOK3csBKe7EJUK2iqBiX/riFOmGQETXYVS4RQ9EAuHEtIIyZaAH
	 XoewAIGeaEAINd3DPFysO9QQA6F5k0m08+Znpu6RFUbIKfwHr+5cZ/OVPAmnj97wa8
	 ZESNJGtvOQhPw8/ydFFCtrjSP0CCiBi3WZ8Z4V0mSH8ZAKUBcK+GlMkFasLWc9i3RG
	 p2vlCaztLb233Qo9+rVwDNE+Do0ycEZmLFcPj82GyEYF3QpBR+Dvf015HW5z7FDT/k
	 9G2Hu6jTA5amYAhE0/DZC3GuNOn89xK/sl2sNN2aHFeIPlnQwmzxllMXX/Vk8HnK5d
	 Mnco6UFqjdYhw==
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2085.outbound.protection.outlook.com [40.107.94.85])
	by mm2.emwd.com (Postfix) with ESMTPS id DD893383BAE
	for <usrp-users@lists.ettus.com>; Tue, 13 Sep 2022 14:35:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="JYI8YEil";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MQsTZ5QbUZs1u0+rIcRHVCjHdtVeQNiCM4/+SvK5VBc/FjHDRQz0I3y2xz5oQt4xpnbjd5vrbiask5DN3vO7vLYZf8fqFRsh67fDx7VwybqO2cKA3HGj1L7Yc5EDbRC1dk2kmuqpCYpUal3bsNHXEOFD9PEI/O+bIJWvMokK/ZofCcD00qosrZYg/D2ZyZtWguq3tnF3NpbYzUa+4EnTO3+5llffwI9ge4/fGXJXMZfJFlGFICoetVQo2QJXTp9VUTA1PyXMYJrZku4pxBmNdvZSeZtD0cY2CwHnoEEGKvKvevW+Vy1bVVbalqYlMRMiGq9pryddi/JgDSlLZBsKkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZI07kEpbP6ao8mrsEiJUbAlOvtLHRnUH5oVl6HqDvXk=;
 b=fRoRZw+7vNCp6Zac/9vGA2nhdNV8yJaKuilM2e+80QSzvW6l9aN2luLGsoIWzBXjFaZxrz8APrgYFv2Z3jeebWtHUfNY1ng+XxqsaaOQqj/E2zQJEZ1AXZEKvcU8Jmb50lzT7onXGMW6TsD2LJa5wDpPueHQuvUIrOOpS/kgMPdYK2Ktw74P6MIaF0C21Kj7zP4bfC/oYQI2wU8BuojyKEj+XWrjs4/dwKOG+Za5pCz0X308FH0Q0ZCpQDXoRtLJCqxKRNB9C2zxtX/cPsjCIboEANkRtdOpPeEjP1cBDZgFSy7U2HX6Qx7AVIoBp8bFRNZ4ADugdYkQx/p1CYDBAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZI07kEpbP6ao8mrsEiJUbAlOvtLHRnUH5oVl6HqDvXk=;
 b=JYI8YEilCaCtE00ejfrhWSBwMNkuz+nYW3ryEjYLwU8JL1fUGgC4AYO+9vlaFUKlb2ArsyUwGkKxt4bw8fTJirllXONNhQsVmEHTjQRvsUwuISxQ1E3ouBazajsB0VJXBgk52G8ciDXsTtFNJAX64495fzQ+YT1iGBnBOG+jA1KByZw97CFCLYbgM8iZghfTMQoqOMVcNfGPF4EOA7YkdJenIYulwYQVHlI83YYqYNyzIDwEgZ0GKpHqaGz4BjJ4ngoB68uaqiswA/nGpwtqRXRqkZ71PipcCdVF8GpS4vh0G4Xg+Cg7G4Qa1RHxhi8P62eX0Dc2/PeERIdctBGdtg==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by PH0PR03MB6462.namprd03.prod.outlook.com (2603:10b6:510:a9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Tue, 13 Sep
 2022 18:35:41 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ebd5:115e:465b:f692]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ebd5:115e:465b:f692%3]) with mapi id 15.20.5612.022; Tue, 13 Sep 2022
 18:35:41 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: Rob Kossler <rkossler@nd.edu>, Paul Atreides <maud.dib1984@gmail.com>
Thread-Topic: [USRP-users] Re: RFNOC4, FFT Block, Python
Thread-Index: AQHYx5sZrkL8Ihisa0inOnzz+QmQTa3dq5uAgAADv0M=
Date: Tue, 13 Sep 2022 18:35:40 +0000
Message-ID: 
 <BYAPR03MB467887B3F176E61D100C406BD3479@BYAPR03MB4678.namprd03.prod.outlook.com>
References: 
 <BYAPR03MB46780CFCA3FB71E223471337D3479@BYAPR03MB4678.namprd03.prod.outlook.com>
 <CAB__hTTGkkNKhVvau+gRAqsSaYypLpoatEZWm0Jrm-bH-3HnKA@mail.gmail.com>
 <DM6PR03MB370599116ECE3A17C98DB900AF479@DM6PR03MB3705.namprd03.prod.outlook.com>
 <CAB__hTQiHKPbeY-1EzfK1fPW6ERuMSD48wgL4Xu4sMqG75s6tQ@mail.gmail.com>
In-Reply-To: 
 <CAB__hTQiHKPbeY-1EzfK1fPW6ERuMSD48wgL4Xu4sMqG75s6tQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|PH0PR03MB6462:EE_
x-ms-office365-filtering-correlation-id: 5a14fc4c-b169-480f-833b-08da95b6c2b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 guZkJc6QOlJsgQ0ffW/1sa1q4JcLuPZoEOLTx1FM6XOTd6RpA6laFwFkWbUDoaDGIDGA1+OnsjHY5ebV/1WlXPaMLXJz294v9udwELZhgtAkB+xn4DKKztc+u5o1tm/OopTQjr1DfuKjLV09uo6gdb+5lPDiBuq2glCzRH9eitStMohPxZb9x8CtkhxA8GxXpwWmfX1mSYVTLM//Vm1+v9HVHCwtYyKsPfNzznawHYWNUHasnTvuzulUwemnWnC5fipXh0g4i5T/gMB1OXIq9Q9nPZoiE/Lu9iPS/oOUIq2khaPL5uLKlqHfuqy5UNrT9YwFwrzvzZEuvfpj2DD/+BhZjI6qAxC//194RdlcHRncaopXehl7U2cp7E87TMcJ0jCgT2V36h1S0U+MlOZxJzBY5gWhgPrb9JGlP+p5pryoXXAb/yUKiKb2XtF7wRnDPxvmxgZqiMuBFnvSwJfgk9dxvSrSRoxxrqy/16JN0bv10tDXtVBYoDLzmY3BpISsNyOeGtBRW9YsVISdF9+4xEFx99DZ36VtiAS/2WiTpXUeylDy9zNINUweWmrFUwy9LMMF1+EuXXxCK4ud1Pfd985LTLta8jLZYyhOG3Q1CAI3PNhlgFIpPHeis5omDdsQ7fsn3JuKoyJpeGPApNRxOKJzlihAfhu8CmWledqf7f0QOdXUGEy3Apd/pCKr2dDL5B5qfki1/Al0qDQKdI78UdiaPxZF11Tvu1WMADNUHfYjtWBiuH2mJ4nN46G+d4tuLGZAoVYrPah/jQ9RjlwS3KerN+Zr++6fQb1FeXOUq3M=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(346002)(39860400002)(396003)(366004)(451199015)(38070700005)(166002)(8936002)(52536014)(66446008)(75432002)(66556008)(55016003)(86362001)(66476007)(64756008)(26005)(41300700001)(110136005)(76116006)(38100700002)(8676002)(186003)(66946007)(478600001)(122000001)(786003)(316002)(41320700001)(19627405001)(83380400001)(33656002)(6506007)(4326008)(9686003)(91956017)(5660300002)(71200400001)(2906002)(45080400002)(53546011)(7696005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?yisf/DYDzRIgwR5Ni4JRUqZlXydCN/3hvvfWzp5ehW0H8kaHihbGT9zY?=
 =?Windows-1252?Q?zxTHDHqO3shDQ5fnm0IZAVu+pJwsHWy9Bcspf78NmBPvuVvGVkUbvdhc?=
 =?Windows-1252?Q?EzxZnYwF4TUslCJvzXm6qlSJ1BbZmqWhET3KzqLXBy8o0pGeDuE+gXpK?=
 =?Windows-1252?Q?qTAlApTzyp3M+maP7jSdiD4ltEVypOUCLAkRupVGtpmnKWjnIb6RHYw2?=
 =?Windows-1252?Q?TFe4S+Jx01cJlygHuiQCin35p7hvJ+Paarw/fcKJOTQp8DHSmPDoHBy4?=
 =?Windows-1252?Q?T9siURTKiZJlYSc0SuGfeGh9IkAD+qYU+q1kyKGhHQaLYhqFQFm4jIKj?=
 =?Windows-1252?Q?N9eS23zQXamuwU+dHufYSbvzWxv0NxGOCt7y6z1tseP+uSX6n6L397lt?=
 =?Windows-1252?Q?Xq7dHnccAuRw+bBh1lGxQC087MdzsqM9UhpYsPnmTjgTCp0wvHIEsvcb?=
 =?Windows-1252?Q?bbQxNK3gT3cEcZROPRfkKD1yWow3y149U87FNH3TlA6eKxr4G38uJj8O?=
 =?Windows-1252?Q?ltUJn6VWAHDj0QYeOCfHyj/J+qa/qwsfL4ssvqqnVNDZz5fSRVVkFasW?=
 =?Windows-1252?Q?fWCjnwqozE8pxsGcEBYNf+PNjtDMM4I2aFFD0SBLDfrFiW2bf4ZucSvP?=
 =?Windows-1252?Q?GpQPOXEu6zfUkBTtihUgV53Wq3vX33K+89CQbRSUfnx5/sdzVB5VJJsk?=
 =?Windows-1252?Q?2t7TVeh0psKmlgOGvLFDQlYJAc1TgxyGs1FIrT9kH94swS9hPwnxees2?=
 =?Windows-1252?Q?ejFBDSP66v/b47hnF1sHBbS3DgVTbWuXGN6j1LJ2XLZdmj+oHdOZhud0?=
 =?Windows-1252?Q?y0+SjnRASrncIrIpsLGsjggVf6LubLymFwlgQcAM4XCz1tFdfAjn0M4x?=
 =?Windows-1252?Q?c9L+sUqhyjhm8cxDBLCRcOgAWQEag6ReYQGsnN1o82P+PBOA4gPpUF6N?=
 =?Windows-1252?Q?qFEFmPsGlDegFrZXFq1OOJsG9tv5D30syBasCMRexein5Uvj1eIqwFsm?=
 =?Windows-1252?Q?P7exRGYW7JcaUe3tB+ZliFt/fyiENBmg67omfXq2HbsPcvIta/yNe7e7?=
 =?Windows-1252?Q?yku/nzNEIh4eMb4/0iHllaiVs3WHNK3FmEnMkE8NZNPQi70MbDpdpl9Y?=
 =?Windows-1252?Q?Fki14ZBZqXdIabevTCw/Q2rBBxaxnb+L7hwh6060MT9296h6dwiOxgC/?=
 =?Windows-1252?Q?Q6fbWk/YekPAaJItU2gimpg1a1YjrAVzxAWSkl11JQHRT4qq/+W/QXzR?=
 =?Windows-1252?Q?vfws3fpBLgRnY6NC39A6bdv+f+y3MjbOdM4qjsUw6Nlqk5n5ZSts6ROU?=
 =?Windows-1252?Q?71MjGiT1MwL2LlRiTBrZ3yRYCueF50O2R/zq4I4coONU2V8BkXvBpdMq?=
 =?Windows-1252?Q?EOq5sNIG/IL8WhodJgFvKh1tME3Is6aOOmjkOYuAJmKPgHxPF8guCtBL?=
 =?Windows-1252?Q?k8sZ3220xgzK0B7dAHJlBfCCxYUThtsXZvtC/u3v4zWlaYthOdklHgkJ?=
 =?Windows-1252?Q?7lM5fQyiJdlJNfGwGRZAFsQ9Ckm2uXg3VXQBjHGLRzXEDKbEFWsGKNmT?=
 =?Windows-1252?Q?hMPPfGXMaQKZnUMJKuMfuC4Ff1UnQ4aZ0rdhnWip7a+34rWLLpDCAItj?=
 =?Windows-1252?Q?Cgz4TwiCjaTrOFyBVxdNuBam5qtdb4e86Yk3Z2RrDQOFROXzYcHiU7Vr?=
 =?Windows-1252?Q?hvZBnbQSv/5D4Jtukr+vcnACxFUmSjd/?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a14fc4c-b169-480f-833b-08da95b6c2b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2022 18:35:40.8786
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: F5KwtFAXPUTGD+IH2m8DbSVLIQvv5ibiJJBwOoElrSXxtiIFTG+bbDUS6MxuoCc4oyh9I2MQVNPC84mjaPPXLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR03MB6462
Message-ID-Hash: SC4RIOD54LSUGZU7S4U33MHORMJY6YPB
X-Message-ID-Hash: SC4RIOD54LSUGZU7S4U33MHORMJY6YPB
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC4, FFT Block, Python
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RJLQ5B3GNOFNRBHB7DYLD5VZ4ASMD4DK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9152814649798371732=="

--===============9152814649798371732==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB467887B3F176E61D100C406BD3479BYAPR03MB4678namp_"

--_000_BYAPR03MB467887B3F176E61D100C406BD3479BYAPR03MB4678namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,
In the code I set the spp at the beginning and use it to configure every bl=
ock. I tried 128,512 and 1024 and I still receive the same error. Am I miss=
ing some configuration?
I'll try and reproduce the test in C++, just to confirm this is not a Pytho=
n implementation thing.

Thanks,
Lorenzo
________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Tuesday, September 13, 2022 11:19 AM
To: Paul Atreides <maud.dib1984@gmail.com>
Cc: Minutolo, Lorenzo <minutolo@caltech.edu>; USRP-users@lists.ettus.com <u=
srp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: RFNOC4, FFT Block, Python

Yes, the spp needs to be the same. I don't use gnuradio much so I don't kno=
w if it may be manually configuring something, but in recent versions of UH=
D, the graph connection process will automatically try to set the SPP appro=
priately for all blocks using the "atomic item size" property of each block=
. In the case of the FFT block, this size is the FFT length I think and so =
other blocks would have to conform to that SPP.

On Tue, Sep 13, 2022 at 2:03 PM Paul Atreides <maud.dib1984@gmail.com<mailt=
o:maud.dib1984@gmail.com>> wrote:
If I recall correctly, the app has to be the same in all blocks when you us=
e the FFT, that=92s the case for the Fosphor graph anyways.
Does that track with your understanding Rob?

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Rob Kossler <rkossler@nd.edu<mailto:rkossler@nd.edu>>
Sent: Tuesday, September 13, 2022 9:54:02 AM
To: Minutolo, Lorenzo <minutolo@caltech.edu<mailto:minutolo@caltech.edu>>
Cc: USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: [USRP-users] Re: RFNOC4, FFT Block, Python

Hi Lorenzo,
The FFT block requires the number of samples per packet to exactly equal th=
e FFT size.  When the graph commits, UHD will try to resolve a packet size =
that all of the blocks are happy with.  Perhaps if the FFT size is 2^11, th=
is packet size may be bigger than the radio wants to deliver (or bigger tha=
n the SPP you specified in the rx_streamer, I don't really know).

In my opinion, this is a really unnecessary limitation of the stock FFT blo=
ck. With relatively minor changes, this block would not need any linkage be=
tween packet size and FFT length.
Rob

On Mon, Sep 12, 2022 at 8:20 PM Minutolo, Lorenzo <minutolo@caltech.edu<mai=
lto:minutolo@caltech.edu>> wrote:
Hi All,
I'm using UHD 4.2 to play around with RFNOC4. I successfully added an FFT b=
lock to the XG image of an X300, no static connections. uhd_usrp_probe retu=
rns as expected. I use the attached code to test it out.
When I commit the graph I get the following error:

Traceback (most recent call last):
  File "/home/lorenzo/test_rfnoc_fft.py", line 71, in <module>
    graph.commit()
RuntimeError: ValueError: samples per package must not be smaller than atom=
ic item size

Digging a bit in the libraries I see that it originates from rfnoc_streamer=
.cpp, specifically:
[...]
  if (ais.is_valid()) {
                const auto spp =3D this->rx_streamer_impl::get_max_num_samp=
s();
                if (spp < ais.get()) {
                    throw uhd::value_error("samples per package must not be=
 smaller than atomic item size");
                }
[...]

Has someone encountered this error before?

Thenks,
Lorenzo





Attached code:

    args =3D "addr=3D192.168.30.2"
    graph =3D uhd.rfnoc.RfnocGraph(args)

    radio_ID_A =3D uhd.rfnoc.BlockID(0, "Radio", 0);
    radio_block_A =3D graph.get_block(radio_ID_A);
    radio_ctrl_A =3D uhd.rfnoc.RadioControl(radio_block_A)

    set_freq =3D 300e6
    spp =3D 512
    radio_ctrl_A.set_tx_frequency(set_freq, 0)
    tx_freq =3D radio_ctrl_A.get_tx_frequency(0)
    radio_ctrl_A.set_rx_frequency(set_freq, 0)
    rx_freq =3D radio_ctrl_A.get_rx_frequency(0)
    print("Tuning is TX %.1f, RX: %.1f MHz" % (tx_freq/1e6,rx_freq/1e6 ) )

    radio_ctrl_A.set_properties(f'spp=3D{spp}', 0)
    radio_ctrl_A.set_rx_antenna('RX2',0)
    radio_ctrl_A.set_rate(200e6)


    DDC_ID =3D graph.find_blocks("DDC")[0]
    DDC_block =3D graph.get_block(DDC_ID)
    DDC_control =3D uhd.rfnoc.DdcBlockControl(DDC_block)
    DDC_control.set_input_rate(200e6, 0)
    DDC_control.set_output_rate(5e6, 0)

    FFT_ID =3D graph.find_blocks("FFT")[0]
    FFT_block =3D graph.get_block(FFT_ID)
    FFT_control =3D uhd.rfnoc.FftBlockControl(FFT_block)
    FFT_control.set_length(spp)
    FFT_control.set_magnitude(uhd.libpyuhd.rfnoc.fft_magnitude.COMPLEX)
    FFT_control.set_direction(uhd.libpyuhd.rfnoc.fft_direction.FORWARD)
    FFT_control.set_shift_config(uhd.libpyuhd.rfnoc.fft_shift.REVERSE)

    stream_args =3D uhd.usrp.StreamArgs('fc32','sc16')
    stream_args.args =3D 'spp=3D'+str(spp)
    rx_stream =3D graph.create_rx_streamer(1, stream_args)

    graph.connect(
        radio_ID_A,0,
        DDC_ID,0,
        False
    )
    graph.connect(
        DDC_ID,0,
        FFT_ID,0,
        False
    )

    graph.connect(
        FFT_ID,0,
        rx_stream,0
    )

    graph.commit()

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_BYAPR03MB467887B3F176E61D100C406BD3479BYAPR03MB4678namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
In the code I set the spp at the beginning and use it to configure every bl=
ock. I tried 128,512 and 1024 and I still receive the same error. Am I miss=
ing some configuration?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I'll try and reproduce the test in C++, just to confirm this is not a Pytho=
n implementation thing.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Lorenzo</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Tuesday, September 13, 2022 11:19 AM<br>
<b>To:</b> Paul Atreides &lt;maud.dib1984@gmail.com&gt;<br>
<b>Cc:</b> Minutolo, Lorenzo &lt;minutolo@caltech.edu&gt;; USRP-users@lists=
.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: RFNOC4, FFT Block, Python</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">Yes, the spp needs to be the same. I don't use gnuradio mu=
ch so I don't know if it may be manually configuring something, but in rece=
nt versions of UHD, the graph connection process will automatically try to =
set the SPP appropriately for all
 blocks using the &quot;atomic item size&quot; property of each block. In t=
he case of the FFT block, this size is the FFT length I think and so other =
blocks would have to conform to that SPP.</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Sep 13, 2022 at 2:03 PM Pau=
l Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com">maud.dib1984@gmail=
.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">If I recall correctly, the app has to be the same in all b=
locks when you use the FFT, that=92s the case for the Fosphor graph anyways=
.&nbsp;</div>
<div dir=3D"ltr">Does that track with your understanding Rob?</div>
</div>
</div>
<div id=3D"x_m_-1942680106436659030ms-outlook-mobile-signature">
<div><br>
</div>
Get <a href=3D"https://aka.ms/o0ukef" target=3D"_blank">Outlook for iOS</a>=
</div>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-1942680106436659030divRplyFwdMsg" dir=3D"ltr"><font face=3D=
"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</=
b> Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rko=
ssler@nd.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, September 13, 2022 9:54:02 AM<br>
<b>To:</b> Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu" ta=
rget=3D"_blank">minutolo@caltech.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">=
USRP-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: RFNOC4, FFT Block, Python</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Lorenzo,
<div>The FFT block requires the number of samples per packet to exactly equ=
al the FFT size.&nbsp; When the graph commits, UHD will try to resolve a pa=
cket size that all of the blocks are happy with.&nbsp; Perhaps if the FFT s=
ize is 2^11, this packet size may be bigger
 than the radio wants to deliver (or bigger than the SPP you specified in t=
he rx_streamer, I don't really know).</div>
<div><br>
</div>
<div>In my opinion, this is a really unnecessary limitation of the stock FF=
T block. With relatively minor changes, this block would not need any linka=
ge between packet size and FFT length.</div>
<div>Rob</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Mon, Sep 12, 2022 at 8:20 PM Minutolo, Lorenzo &lt;<a h=
ref=3D"mailto:minutolo@caltech.edu" target=3D"_blank">minutolo@caltech.edu<=
/a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm using UHD 4.2 to play around with RFNOC4. I successfully added an FFT b=
lock to the XG image of an X300, no static connections. uhd_usrp_probe retu=
rns as expected. I use the attached code to test it out.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
When I commit the graph I get the following error:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Traceback (most recent call last):
<div>&nbsp; File &quot;/home/lorenzo/test_rfnoc_fft.py&quot;, line 71, in &=
lt;module&gt;</div>
<div>&nbsp; &nbsp; graph.commit()</div>
<div>RuntimeError: ValueError: samples per package must not be smaller than=
 atomic item size</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Digging a bit in the libraries I see that it originates from rfnoc_streamer=
.cpp, specifically:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
[...]</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp; if (ais.is_valid()) {
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; const auto spp=
 =3D this-&gt;rx_streamer_impl::get_max_num_samps();</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (spp &lt; a=
is.get()) {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
throw uhd::value_error(&quot;samples per package must not be smaller than a=
tomic item size&quot;);</div>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
[...]</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Has someone encountered this error before?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thenks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Lorenzo</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Attached code:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp; &nbsp; args =3D &quot;addr=3D192.168.30.2&quot;
<div>&nbsp; &nbsp; graph =3D uhd.rfnoc.RfnocGraph(args)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; radio_ID_A =3D uhd.rfnoc.BlockID(0, &quot;Radio&quot;, 0=
);</div>
<div>&nbsp; &nbsp; radio_block_A =3D graph.get_block(radio_ID_A);</div>
<div>&nbsp; &nbsp; radio_ctrl_A =3D uhd.rfnoc.RadioControl(radio_block_A)</=
div>
<div><br>
</div>
<div>&nbsp; &nbsp; set_freq =3D 300e6</div>
<div>&nbsp; &nbsp; spp =3D 512</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_tx_frequency(set_freq, 0)</div>
<div>&nbsp; &nbsp; tx_freq =3D radio_ctrl_A.get_tx_frequency(0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rx_frequency(set_freq, 0)</div>
<div>&nbsp; &nbsp; rx_freq =3D radio_ctrl_A.get_rx_frequency(0)</div>
<div>&nbsp; &nbsp; print(&quot;Tuning is TX %.1f, RX: %.1f MHz&quot; % (tx_=
freq/1e6,rx_freq/1e6 ) )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_properties(f'spp=3D{spp}', 0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rx_antenna('RX2',0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rate(200e6)</div>
<div><br>
</div>
<div><br>
</div>
<div>&nbsp; &nbsp; DDC_ID =3D graph.find_blocks(&quot;DDC&quot;)[0]</div>
<div>&nbsp; &nbsp; DDC_block =3D graph.get_block(DDC_ID)</div>
<div>&nbsp; &nbsp; DDC_control =3D uhd.rfnoc.DdcBlockControl(DDC_block)</di=
v>
<div>&nbsp; &nbsp; DDC_control.set_input_rate(200e6, 0)</div>
<div>&nbsp; &nbsp; DDC_control.set_output_rate(5e6, 0)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; FFT_ID =3D graph.find_blocks(&quot;FFT&quot;)[0]</div>
<div>&nbsp; &nbsp; FFT_block =3D graph.get_block(FFT_ID)</div>
<div>&nbsp; &nbsp; FFT_control =3D uhd.rfnoc.FftBlockControl(FFT_block)</di=
v>
<div>&nbsp; &nbsp; FFT_control.set_length(spp)</div>
<div>&nbsp; &nbsp; FFT_control.set_magnitude(uhd.libpyuhd.rfnoc.fft_magnitu=
de.COMPLEX)</div>
<div>&nbsp; &nbsp; FFT_control.set_direction(uhd.libpyuhd.rfnoc.fft_directi=
on.FORWARD)</div>
<div>&nbsp; &nbsp; FFT_control.set_shift_config(uhd.libpyuhd.rfnoc.fft_shif=
t.REVERSE)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; stream_args =3D uhd.usrp.StreamArgs('fc32','sc16')</div>
<div>&nbsp; &nbsp; stream_args.args =3D 'spp=3D'+str(spp)</div>
<div>&nbsp; &nbsp; rx_stream =3D graph.create_rx_streamer(1, stream_args)</=
div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; radio_ID_A,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; DDC_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; False</div>
<div>&nbsp; &nbsp; )</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; DDC_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; FFT_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; False</div>
<div>&nbsp; &nbsp; )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; FFT_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; rx_stream,0</div>
<div>&nbsp; &nbsp; )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.commit()</div>
<div><br>
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
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_BYAPR03MB467887B3F176E61D100C406BD3479BYAPR03MB4678namp_--

--===============9152814649798371732==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9152814649798371732==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5838B63E567
	for <lists+usrp-users@lfdr.de>; Thu,  1 Dec 2022 00:25:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7BFF43845BC
	for <lists+usrp-users@lfdr.de>; Wed, 30 Nov 2022 18:25:48 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1669850748; bh=zf1zq8Bh07N0+teJpLAwhoVQSuH8z3zULxOLa8jHtcY=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XEtlYVlloNYuusSg4aSULunZZhQpKlgBbprtW485pfhzWwFb1PvL5iv7FrarQvBRi
	 Gx++N8WLDjLjnlL3v9etpWRNJLie5mtRulGCYfn2VulMksC5L6cc+O0XGM57XJS97y
	 K1Ko6OWwjyzXKugv+rdc6eUY/0ab3h5ct+1FJmF3kpmKSxzZnQn20JYMiTeiXUbGrH
	 w1GSJSGAkHll+LqKscqHpA7ce1pilml9Sx+jM4wwG+D2+3B6HIfbyC8yI8vKZKPhry
	 Rkz9I715ex1hcf4kdHBFpnFrkC7YdbZv/0VWEf0v5r6lZtww55rTpMeiZ+WQruikxU
	 nuRiet0fFpAlg==
Received: from na01-obe.outbound.protection.outlook.com (mail-westus2azon11021018.outbound.protection.outlook.com [52.101.47.18])
	by mm2.emwd.com (Postfix) with ESMTPS id 41AB33845C9
	for <usrp-users@lists.ettus.com>; Wed, 30 Nov 2022 18:25:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=augustusaerospace.onmicrosoft.com header.i=@augustusaerospace.onmicrosoft.com header.b="VrGhGLW+";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EEhMBw349p+lrVvcDiApWyQpHdfAPdM7rDjTdbQXpjZfKpYsoiU4xvH2mHfNIPySaHVEHvfGNS2jjUfEpm5EfHyMtwxKgrj9TYhhA3/+CWmBWIMuxRfvslFIjpw/xwzNNiRMzKHWSNlPOWfjrN+3bgnp2vVWboB2a8hJQB/F9pnTxePnwuZHZij6GgwdZ0m6zk/iueZMI6U2HxyWtmytCGbaAbkeN77pCPz+EvoqMgiuETH8XMmqerKMYa1L5UQFGZnKQ7UKujZHlOfztqUHYkGngb64wHG4Uf75GPduRNGQf3HFIfvoCQJ1rQyNaElAz4FeuZSh57tSmv1E3NAKaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DKmnDyTVsBGeXMXHpcKYliHjJuVu5asoAolHAvdf6kQ=;
 b=FctviohYAn+QLQZ42iOOujH/J7ekK+bBr5Ilc5WWYkEP4F+L0CBCjhQdEu9aR8p9CNfcwNRxKODbfTOS6riA6OudtPM8IbApLjdEtZMGOc2iDd66wHbi5aaMKlW+JHMuODldyp3nqDYAbduizHPExi6de99NFtuQbgjAuTOMXZo7jEJPs75R52QElSK+8tUdOjMk/j6FMYUyJK8nEPBP0QmEwKE/F676/ym36uZi5F/Ec8V6mNIEVXbzDQyAWRCUHspuKdirkScpZFWGQA97DyfC/OEUyDGo/tAd0/ZCKApZChkNxHARhW2+6xsnutJlfLZqbpov/o2sEDb9bRiwWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=augustusaero.com; dmarc=pass action=none
 header.from=augustusaero.com; dkim=pass header.d=augustusaero.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=augustusaerospace.onmicrosoft.com;
 s=selector1-augustusaerospace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DKmnDyTVsBGeXMXHpcKYliHjJuVu5asoAolHAvdf6kQ=;
 b=VrGhGLW+7EIk9U3QZEsbb+iQ7HS0tW3XekiTKFBb0DoW4q+ONWyKVt20IX2MTk9k1BqqFYsaEiZyRYCSLegwbuHjv1qYfTfBWxGu5oB85rPDPhXwRbISvk9eqHfNrI6nhgJhjZi51fqd2T3Ikf9DoQLm1jj3KrvKmsX6TmbWlC0=
Received: from BN7PR05MB4500.namprd05.prod.outlook.com (2603:10b6:406:fb::28)
 by CH2PR05MB6775.namprd05.prod.outlook.com (2603:10b6:610:2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Wed, 30 Nov
 2022 23:25:38 +0000
Received: from BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::e97a:3180:c373:59df]) by BN7PR05MB4500.namprd05.prod.outlook.com
 ([fe80::e97a:3180:c373:59df%6]) with mapi id 15.20.5857.021; Wed, 30 Nov 2022
 23:25:38 +0000
From: Jonathan Tobin <Tobin@augustusaero.com>
To: Kenneth Burchfield <ksburchfield@gmail.com>, Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Re: TX from N310 External LO Error
Thread-Index: AQHZBRJRkplx9Yvd60SB0tyDQoLpb65YGwTo
Date: Wed, 30 Nov 2022 23:25:38 +0000
Message-ID: 
 <BN7PR05MB450008E1B7A8FB9D148375CBD5159@BN7PR05MB4500.namprd05.prod.outlook.com>
References: 
 <BN7PR05MB450083ED49C51CD1D1808E36D5159@BN7PR05MB4500.namprd05.prod.outlook.com>
 <CAB__hTQGa4a4Ut3EC7+UnGR5Gt2+7vtuFQzy+amGsdUB5=MS_g@mail.gmail.com>
 <CAChZci-a2thTXR70iXBQzT6qC=gqGA7SsuUwAWMwQ9XAmRZmFw@mail.gmail.com>
In-Reply-To: 
 <CAChZci-a2thTXR70iXBQzT6qC=gqGA7SsuUwAWMwQ9XAmRZmFw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=augustusaero.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN7PR05MB4500:EE_|CH2PR05MB6775:EE_
x-ms-office365-filtering-correlation-id: 985e1f03-4414-4b74-fecd-08dad32a3080
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 njpyZ1khkiehRpz2QUeRwcKDX1whOkrfp1J+dbr7rQQqlS9f1BgNSRUw2xteQYKRZIzgK/e6vLMVWSmJThJXZSknPscYFHkV4nJZD6M00wBRVi0VCf1lnebIvb9fPWiYfJnANXB50LD7T83KShyt/yNUgJQOe3K+gWXPAbkGi34J7lZRPdAkL271r/mKlgD7Ov6w0Ohrfn+o+1iJviuD7nHdTc2Owam1AJrQf2WMfMwb3SSGW7JRkYxEUpCZf5hZMkavgOLthAxK+rKG/jZryJ1i1qeOs1jM3dQFTLWI61v6sV9SHWoeUh2jGHdAn8mBS/b8bYK8F9D02JGMx8ga+C9fIxN/MPXTsSu5miXvgR+6wVkkM1uTvB1Wh3rNlxdJI/juxKZBT+PLhJPgFCebVIU109r8VrSFf6uxeCAIAvgZNYc8XMcSb6IjhkbXBIWlJRfVJqW9U/wL0aFGfvhVewdFYkubRVFsfefFRjdD2/L0W6KLINKu/TsLn74n4u8r5u5Hj29sjQYANzdgEJsitWr2VUImK7rCzS1fjJBz0vVTqMry/eR8iN9M4wu/XdlPLm11LFY6PAnaSaDzkwa9ouvW6gYomeXpw/8UE9U3PFywEb0YmJSNWw/tG6SRzUMa2F7ywfrex/M6mc4aSuIQwre5CNEF0Y2rzSdMeEYk4wD2i8ZRrIaw+BURFzbo3s9m37SKNCpYGDOXMapell1n9uu0vlUgePkFHFMEPgvXvEx23/cvkAkpBoDb0LerUiE9jrkM12xUGJt8JUBLYQHIf4qsgt7rpw3IHewGheSQQ/E=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR05MB4500.namprd05.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39830400003)(396003)(376002)(346002)(366004)(136003)(451199015)(966005)(19627405001)(478600001)(83380400001)(186003)(71200400001)(7696005)(53546011)(26005)(6506007)(9686003)(66899015)(91956017)(66946007)(52536014)(76116006)(8936002)(110136005)(55016003)(41300700001)(38070700005)(2906002)(122000001)(4326008)(66446008)(5660300002)(64756008)(86362001)(66556008)(66476007)(8676002)(38100700002)(33656002)(166002)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ANxhaqk4tPuSPs9KwmEovU/lO1GcbvH/SsVBLwS+ONEhJVORwrFflyisjPs9?=
 =?us-ascii?Q?+kiz9/pm7ORWYLzN2jBcHyPPLAWt3uFSeovsgskSbG8m2tEtA1LLIv4CLKKN?=
 =?us-ascii?Q?OUdd19/udYOVKhKVGClhujl/8airkpmy3E+ZI55JHuhwYocU1J87LGOOnR+o?=
 =?us-ascii?Q?VwVgG6XgUwYhGKFEi4/ODOB1inQHab2TWUHbxe4EB0eBrtQgPggH6b6oqzQl?=
 =?us-ascii?Q?AvRhPkKT+IBRRJzf+iEHoGEPK/8BJCyT7T8UH8Yy5BPkM+RCiEjXCWbkoGs3?=
 =?us-ascii?Q?UI1k3iyb2wvYhc8TdJ9LAf5tXWDbNG5T6W9uggrxD4lA7Qwymsy/MZTGu365?=
 =?us-ascii?Q?VE2xLPk/rIVPLmbY4BPmoZkKXCbnyOJhd/6r5OHBM8exog1cuYQJ6fM12BJz?=
 =?us-ascii?Q?6nuLfA9JYSyxg7qNnYRBxh1gbfBBDhDcxEGaTdhObRbFV6rB437IOqIq0JOE?=
 =?us-ascii?Q?QmHbl8CSqVCctSwVYAOpjTNz0J17gdR+CthUbcVTFEvy9lE++6oJ4RsVLddp?=
 =?us-ascii?Q?OPTrY2uWyiK/rQofehZ1AI72BCCILPVWmdwErPG9g4YZ7mD+r1Bo0AinSab1?=
 =?us-ascii?Q?o3C92p4NLk7DiFzXdgvZDzC3DFPMvmSRi8zjA87+QBnj0vv11t/gmF+NJOQm?=
 =?us-ascii?Q?TWlehTcQxuwm25oKDQyy6k5ftgN/IBD6Vz47NWqfDutmHmJ/q1ApeLObgZhW?=
 =?us-ascii?Q?TDrskJe4SNDojJK5379yZXHoMhpBLvBx3N8BdfjbqbElBYl5ZqreHYktfl2o?=
 =?us-ascii?Q?qaVEqwfYn34N12J/HSWakQ2dRaTgDFvZfJl63k1d9ib4XhErCgEN1Al7w5dn?=
 =?us-ascii?Q?hOtLK2V+v/ICd/a/NbAEZzR1FC+KOmzTLkF063knz7PpkNrTFysuH17/VuwF?=
 =?us-ascii?Q?w4Q6WaPf4zkAVeN8GiS5NGF8Qjnx2h9t7EnN4ZWdPu3HUYgcmRuG+0Isu+LM?=
 =?us-ascii?Q?2joTQnvmkoywjfmSaIbqg9RmD+UPuXWvt+xOrtm0VSTPrImxeQ4a9RyXK/uM?=
 =?us-ascii?Q?/xFxElmRoxyPIqwHV7bKPS3tzuTo5s4ol2+JzaVvJLhoXAv7I22jxP4VdPrk?=
 =?us-ascii?Q?HHphBtBusF1vVDoyKkZfaush3olHzwwHBMzXp09xPiuBV/byPvlOrgJ86LQw?=
 =?us-ascii?Q?eSgrJJkhPTY116bOcm/PrPy/207n8qzT6U8eCFBiP81PDQE4wqFi9gJZvFCx?=
 =?us-ascii?Q?ApVan6a+H9isG8RC8B2t4jevEwaAVVR2J5LfNiqNn6w4kcEDm/45O504ds0Y?=
 =?us-ascii?Q?BGlaw6GFnqveTZ6WICdU1hb3xnmBOGVfq0qit+d86fRfv/U4Js96mbpZjUUm?=
 =?us-ascii?Q?RFvVi9L+Ki2Uup1ScOV7ugEkKO7Bkk1DKVNBk7pO8lBtoNvVFd7L0EpoD470?=
 =?us-ascii?Q?StjnAwUv53AT4xe/4+LrAD2iFztn9xVC9Vws8YFUlVQdtqzpl1nu9sndTW09?=
 =?us-ascii?Q?Yq/y29U81T6rIGL/HJ/QNFFRekW5yfzUxOvTpGxtwvfD/dKcNrJJetl/DnTD?=
 =?us-ascii?Q?mHiLV9lwHLWITT3xjY9X+aCuNGZMT5defcYM2z3YupXMLjmNfGPwnNDp36hw?=
 =?us-ascii?Q?0f5Fetc467deaYv9FnkHTf8L05jMKX9JWUBqoJyZ?=
MIME-Version: 1.0
X-OriginatorOrg: augustusaero.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR05MB4500.namprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 985e1f03-4414-4b74-fecd-08dad32a3080
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2022 23:25:38.1881
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04d66077-4301-4950-bf2c-c3d5b922ae52
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AJs5YQSemosZU6cPTj2rDiBfVnhSOeotqOFElvCn9KAckumZ55JkarbaBXb+MYOUv3sBvXDXv/K6dxRq0GFshw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR05MB6775
Message-ID-Hash: 6MN4ADEMITFIKTPE6Q6OMZNZBTK3XNRY
X-Message-ID-Hash: 6MN4ADEMITFIKTPE6Q6OMZNZBTK3XNRY
X-MailFrom: Tobin@augustusaero.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TX from N310 External LO Error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LFJ3CV3X2V7WAZFWTG2M2YH4WRSJPGK6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8782526251029802881=="

--===============8782526251029802881==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN7PR05MB450008E1B7A8FB9D148375CBD5159BN7PR05MB4500namp_"

--_000_BN7PR05MB450008E1B7A8FB9D148375CBD5159BN7PR05MB4500namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the responses everyone. Adding the "init_cals=3DBASIC" argument =
got rid of the error (I suppose a band-aid until I can grab a higher freque=
ncy sig gen). I was only supplying a 2 GHz signal, but it was at +3 dBm. I'=
ll have to experiment the power.

Thanks for the help.


Thanks,
Jonathan
________________________________
From: Kenneth Burchfield <ksburchfield@gmail.com>
Sent: Wednesday, November 30, 2022 4:20 PM
To: Rob Kossler <rkossler@nd.edu>
Cc: Jonathan Tobin <Tobin@augustusaero.com>; usrp-users <usrp-users@lists.e=
ttus.com>
Subject: Re: [USRP-users] Re: TX from N310 External LO Error

Hi Jonathan,

What Rob said is correct.  You need to supply a 5 GHz LO initially so that =
the startup calibrations for the N310 will be correct.  However, if I recal=
l correctly, the device should still initialize even with an LO not equal t=
o 5 GHz (though your going to see imaging / possible LO leakage in the freq=
uency domain if this is the case).

Is your LO power within spec of the device?  The ad9371 requires an externa=
l LO between +0 dBm and +6 dBm with higher frequencies requiring higher pow=
er.  Providing an LO below that power spec will give you the MYKONOS_waitIn=
itCals() error.

If you are within that spec, then you can modify your init_cals and increme=
ntally test adding calibrations until you figure out which calibration is t=
hrowing the error.  So your args would look like this initially ( --args "a=
ddr=3D192.168.10.2,master_clock_rate=3D153.6e6,tx_lo_source=3Dexternal,init=
_cals=3DBASIC")  and then you can add more init_cals by doing init_cals=3DB=
ASIC|TX_ATTENUATION_DELAY|PATH_DELAY etc.  The | is the append operation.  =
The calibrations are listed in the link below.

https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_calibrations

Hope this helps
Scott

On Wed, Nov 30, 2022 at 4:48 PM Rob Kossler <rkossler@nd.edu<mailto:rkossle=
r@nd.edu>> wrote:
Hi Jonathan,
At startup, the init_cal will always be conducted at 2.5GHz requiring an ex=
ternal LO at 5 GHz.  After the init cal, then you can re-tune your external=
 LO to twice the desired operating frequency.  It wasn't clear to me from y=
our comment if your external LO is initially configured to 5 GHz or to 2 GH=
z.  If the latter, try with 5 GHz and if startup occurs correctly, retune i=
t to 2 GHz after that point.
Rob

On Wed, Nov 30, 2022 at 1:43 PM Jonathan Tobin <Tobin@augustusaero.com<mail=
to:Tobin@augustusaero.com>> wrote:
Hello all - I am trying to transmit a test waveform from an N310 using the =
sample program tx_waveforms. When I set "tx_lo_source=3Dexternal" I get the=
 error below. When I set it to internal, the program runs smoothly, but the=
re is no output. I am supplying an external LO at twice the desired output =
frequency. I am using uhd 4.3.0.0.


./tx_waveforms --args "addr=3D192.168.10.2,master_clock_rate=3D153.6e6,tx_l=
o_source=3Dexternal" --freq 1e9 --gain 10 --bw 1e6 --rate 9.6e6 --subdev "A=
:1" --channels "0" --wave-freq 100e3

Creating the usrp device with: addr=3D192.168.10.2,master_clock_rate=3D153.=
6e6,tx_lo_source=3Dexternal...
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.3.0.HEAD-0-g=
1f8fd345
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,name=3Dni-n3xx-3218=
B5F,fpga=3DHG,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D153.6=
e6,tx_lo_source=3Dexternal
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DHG,master=
_clock_rate=3D153.6e6,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-3218B5F,produ=
ct=3Dn310,tx_lo_source=3Dexternal,clock_source=3Dinternal,time_source=3Dint=
ernal'.
[ERROR] [RPC] RuntimeError: MYKONOS_waitInitCals() returned an ARM error

[ERROR] [MPM.RPCServer] init() failed with error: RuntimeError: MYKONOS_wai=
tInitCals() returned an ARM error

Error: RuntimeError: Error during RPC call to `init'. Error message: Runtim=
eError: MYKONOS_waitInitCals() returned an ARM error



Thanks,
Jonathan
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_BN7PR05MB450008E1B7A8FB9D148375CBD5159BN7PR05MB4500namp_
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
Thanks for the responses everyone. Adding the &quot;init_cals=3DBASIC&quot;=
 argument got rid of the error (I suppose a band-aid until I can grab a hig=
her frequency sig gen). I was only supplying a 2 GHz signal, but it was at =
+3 dBm. I'll have to experiment&nbsp;the power.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Thanks for the help.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Jonathan<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Kenneth Burchfield &l=
t;ksburchfield@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, November 30, 2022 4:20 PM<br>
<b>To:</b> Rob Kossler &lt;rkossler@nd.edu&gt;<br>
<b>Cc:</b> Jonathan Tobin &lt;Tobin@augustusaero.com&gt;; usrp-users &lt;us=
rp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: TX from N310 External LO Error</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jonathan,
<div><br>
</div>
<div>What Rob said is correct.&nbsp; You need to supply a 5 GHz LO initiall=
y so that the startup calibrations for the N310 will be correct.&nbsp; Howe=
ver, if I recall correctly, the device should still initialize even with an=
 LO not equal to 5 GHz (though your going
 to see imaging / possible LO leakage in the frequency domain if this is th=
e case).</div>
<div><br>
</div>
<div>Is your LO power within spec of the device?&nbsp; The ad9371 requires =
an external LO between&nbsp;+0 dBm and&nbsp;+6 dBm with higher frequencies =
requiring higher power.&nbsp; Providing an LO below that power spec will gi=
ve you the MYKONOS_waitInitCals() error.</div>
<div><br>
</div>
<div>If you are within that spec, then you can modify your init_cals and in=
crementally test adding calibrations until you figure out which calibration=
 is throwing the error.&nbsp; So your args would look like this initially (=
 --args &quot;addr=3D192.168.10.2,master_clock_rate=3D153.6e6,tx_lo_source=
=3Dexternal,init_cals=3DBASIC&quot;)&nbsp;
 and then you can add more init_cals by doing init_cals=3DBASIC|TX_ATTENUAT=
ION_DELAY|PATH_DELAY etc.&nbsp; The | is the append operation.&nbsp; The ca=
librations are listed in the link below.</div>
<div><br>
</div>
<div><a href=3D"https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_=
calibrations">https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_mg_ca=
librations</a><br>
</div>
<div><br>
</div>
<div>Hope this helps</div>
<div>Scott</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Nov 30, 2022 at 4:48 PM Rob=
 Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wro=
te:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Jonathan,
<div>At startup, the init_cal will always be conducted at 2.5GHz requiring&=
nbsp;an external LO at 5 GHz.&nbsp; After the init cal, then you can re-tun=
e your external LO to twice the desired operating frequency.&nbsp; It wasn'=
t clear to me from your comment if your external
 LO is initially configured to 5 GHz or to 2 GHz.&nbsp; If the latter, try =
with 5 GHz and if startup occurs correctly, retune it to 2 GHz after that p=
oint.</div>
<div>Rob</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, Nov 30, 2022 at 1:43 PM Jon=
athan Tobin &lt;<a href=3D"mailto:Tobin@augustusaero.com" target=3D"_blank"=
>Tobin@augustusaero.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Hello all - I am trying to transmit a test waveform from an N310 using the =
sample program tx_waveforms. When I set &quot;tx_lo_source=3Dexternal&quot;=
 I get the error below. When I set it to internal, the program runs smoothl=
y, but there is no output. I am supplying an
 external LO at twice the desired output frequency. I am using uhd 4.3.0.0.=
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
./tx_waveforms --args &quot;addr=3D192.168.10.2,master_clock_rate=3D153.6e6=
,tx_lo_source=3Dexternal&quot; --freq 1e9 --gain 10 --bw 1e6 --rate 9.6e6 -=
-subdev &quot;A:1&quot; --channels &quot;0&quot; --wave-freq 100e3
<div><br>
</div>
<div>Creating the usrp device with: addr=3D192.168.10.2,master_clock_rate=
=3D153.6e6,tx_lo_source=3Dexternal...</div>
<div>[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.3.0.HEA=
D-0-g1f8fd345</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D3218B5F,name=3Dni-n3xx=
-3218B5F,fpga=3DHG,claimed=3DFalse,addr=3D192.168.10.2,master_clock_rate=3D=
153.6e6,tx_lo_source=3Dexternal</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DHG,m=
aster_clock_rate=3D153.6e6,mgmt_addr=3D192.168.10.2,name=3Dni-n3xx-3218B5F,=
product=3Dn310,tx_lo_source=3Dexternal,clock_source=3Dinternal,time_source=
=3Dinternal'.</div>
<div>[ERROR] [RPC] RuntimeError: MYKONOS_waitInitCals() returned an ARM err=
or</div>
<div><br>
</div>
<div>[ERROR] [MPM.RPCServer] init() failed with error: RuntimeError: MYKONO=
S_waitInitCals() returned an ARM error</div>
<div><br>
</div>
Error: RuntimeError: Error during RPC call to `init'. Error message: Runtim=
eError: MYKONOS_waitInitCals() returned an ARM error<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Thanks,
<div>Jonathan</div>
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
</body>
</html>

--_000_BN7PR05MB450008E1B7A8FB9D148375CBD5159BN7PR05MB4500namp_--

--===============8782526251029802881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8782526251029802881==--

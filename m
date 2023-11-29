Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 640AC7FD821
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 14:31:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88FB9385CFA
	for <lists+usrp-users@lfdr.de>; Wed, 29 Nov 2023 08:31:06 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701264666; bh=80JiOHWCxxDHsYBvwL1murZG/cFg89PHH3n9j/RjTt8=;
	h=To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=oFcGFNlZdYzxLTcylUtCDk9JMr4STyQfbMI5scmebJQ1ca+PvAhthScRLWPeJsoIM
	 qxFiThHP1TH8tr/8SpmjVy43PTifChfWNySwbvATAiL+EchyUfqP8IbSxZGmxrNFNt
	 7pLCvD4l2D5/sB3kcq+EkQYTQV1epUtuIHmIB0vYtF2mgCD/xHud7Yydafo+8eI54V
	 aNw/4juzgRIjJKci0Dgtecgm/+DrQrWeOxQ088gS5kKpJA/lIbSi7SXIPppK4lBWT+
	 41aZXxdg2SQkSP0WZ0O9v2Faerl0MI1uUQg8o2JfAc+ihLnBwZTwkcwtihkCNthCxm
	 FHOgjyPn90kjw==
Received: from az25dmzegs02.gd-ms.com (az25dmzegs02.gd-ms.com [137.100.136.44])
	by mm2.emwd.com (Postfix) with ESMTPS id A8014385BD5
	for <usrp-users@lists.ettus.com>; Wed, 29 Nov 2023 08:30:13 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gd-ms.com header.i=@gd-ms.com header.b="gHFprDRh";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=gd-ms.com; i=@gd-ms.com; q=dns/txt; s=esa;
  t=1701264613; x=1732800613;
  h=from:to:subject:date:message-id:references:in-reply-to:
   mime-version;
  bh=MmZVRgdkskWnblAUEuuO2z2Th3XG/W0ybzxOb0AUGeY=;
  b=gHFprDRh2vxocn+zZ5lgill9waiLduPqXUPWYlKIw7ESxNTk/LTqF16V
   Opo5wnWB8YL67+K9hjidsowD/TMtkCIX9TLEVPa1dkfZzTnpfzElBcCvE
   py4sTnVh9bFZZLM6G+VHZEf6AhuRTlcnmi2d8f7fbutMhba4W6PdmqAk3
   Nks5dp11QNO4Bk4hK75iyolV2ZbPDJLRUuKVOGYSuf4KQDntr336iUpSe
   Y1OFBqHsYNFSjb1kVuny7nlpjzCjOhBDceQzEOAweVUD9KkcCB3ZsMz8v
   LGrfFURQCyWpvWpZoElSfnLcPHI/fWvWwSGfYd3Cjsm914zxRLpZj9cYv
   A==;
X-CSE-ConnectionGUID: T7ENEVBCTgy0xdWTyaJZfA==
X-CSE-MsgGUID: C6ucEacFSf+6I3KVD0srQw==
X-IronPort-AV: E=Sophos;i="6.04,235,1695711600";
   d="scan'208,217";a="53736733"
Received: from unknown (HELO az25sec06.localdomain) ([10.240.16.97])
  by az25dmzegs02.gd-ms.com with ESMTP; 29 Nov 2023 06:30:12 -0700
Received: from azr-a-mbx01.GD-MS.US (outlook.gd-ms.us [10.145.20.52])
	by az25sec06.localdomain (Postfix) with ESMTP id 7923325898C;
	Wed, 29 Nov 2023 13:30:12 +0000 (UTC)
Received: from azr-a-mbx01.GD-MS.US (10.145.20.52) by azr-a-mbx01.GD-MS.US
 (10.145.20.52) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35; Wed, 29 Nov
 2023 06:30:11 -0700
Received: from USG02-CY1-obe.outbound.protection.office365.us (137.100.136.86)
 by smtp-relay.gd-ms.us (10.145.20.55) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 29 Nov 2023 06:30:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=bKTXbZHhL7uPhEulK2ar8P5Tp5D5yIqQEHsHRvnSgNf2azlOLYgMpkZbTn/6kUkix0zgYKp7Ap4+t8wZfU3tHQFp3pvbLpxJ6D8lBcGXHuAt3HEQtdEGIZ8RwT9Eesj65QGE9vBCQEE67YBh+E2RApOSVCloSXtWUmiQU75Y0GlSadMlZhIDECI8H3dS6rH9Ru8RuF24cH8KnU/nhBmXldD815IQZOgQwNxr1z2J86A5eq//+sBNSNMkWgGJKRpBYHGTUqb965aTwBO23r05GtwXGkLZy5hFs1UXqxNmWhQQFwx7ktCdUAWN4fOI5VgSqDH6DyzpF7Qgx/wWgCFyVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9MeUWT4d0vPc89IkMuu2AXKSPuU+3+qsxenUPmVjE/8=;
 b=dpIH0qn//noDy8uF5y2foY+Iy7226jrikvrvoSZtevQEbERw7aGZIEB3JSf3MdBpT/xasprENEj0cnJGv2G5njEt2WN3juxa+6x1mGl0SooQAm/VBhUBh0I1XCi0PBj5hZxC/32k6BlBQ9arMu6IThxpmKsqKrIBp04CYQiLaUKdTeg/eueSy8s241QJjWtLXD1l9LC+owvO+iRlTR5oPHY77/tn1n93dhY+wzERnRp4/7ksIS0cNzXfbUeQnTyaUMydOaQByl8mWYoD0Lns+LxnsmhEBN4F9UvpmtZGw8xXhs6zIAYC9NeTHjBo8bt21zq8QqhDF/gy7FmOeXPCpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gd-ms.com; dmarc=pass action=none header.from=gd-ms.com;
 dkim=pass header.d=gd-ms.com; arc=none
Received: from BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:169::12)
 by BN2P110MB1192.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:17a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.38; Wed, 29 Nov
 2023 13:30:09 +0000
Received: from BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
 ([fe80::beee:268b:843e:284]) by BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
 ([fe80::beee:268b:843e:284%6]) with mapi id 15.20.7002.037; Wed, 29 Nov 2023
 13:30:09 +0000
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: peek32/poke32 slow
Thread-Index: AdoYyJBiQK/RwKoBTWem67/g/lkfAQAA/pMAAABGJDAAAGFZAAJ+Jueg
Date: Wed, 29 Nov 2023 13:30:09 +0000
Message-ID: <BN2P110MB09482B4A6F47A60FE3D0AB9ECA83A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
References: <BN2P110MB09483E08C99BAFC569FBD48FCAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
 <2b3d74f8-df85-4d60-9b1e-7a3e7d1b20fc@gmail.com>
 <BN2P110MB0948E12E41A840B64FA9A8F4CAB0A@BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM>
 <9737efed-cab8-4e86-abc5-75ff05df9a44@gmail.com>
In-Reply-To: <9737efed-cab8-4e86-abc5-75ff05df9a44@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gd-ms.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN2P110MB0948:EE_|BN2P110MB1192:EE_
x-ms-office365-filtering-correlation-id: d25acf11-f04d-44c5-cf31-08dbf0df4f15
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zcuaTNOSXL87OznaQyB3+V9GiDaKQJAJ5j0bcTJCLuiow1AxXlWrt+z2X/+bxbarYNlTy/ELUcC5070b7PZKRkrBH3e1occ/2J4Gs4HVasCCsgiJ9u+IEB4il7TgF4ksd3cNqspFrP0Z897vo5ke1aQhev+Ky35PP8TDt7HkyFJljL9dBP6L3+gnIE+xegnLZL1yEYCENjBCytgz/nfLVJ/XER+GRNWbtZau3AgGdr/laWJI/CtWHc5HeZCh7x1iLQxJRhtJw00raMI1MhEnK44aqXzy8SJbgFx0pphXffhI6cE1RUf1EgjVMhcz3jpdC4CwFhTg2PwvB8bGlE7YzaYBtgZTMABNFDuvaQVAF4UNRDLNFH4hPjHPMio0KWpICthl6vJyTmSUG7+Jphdp5nZbKscXpMD+ygyczenhlztibke63ISbw+0DCo5FKdvPa0Kd6ZRTgtd3SIsenvATHFSAtAJ3PABQwOUk8KZinUXjptH0X0cKtilFb1uIUOD1xAG4fGR8o+AwSgkXaglkzXcw0EG8UZ43p1LGI5KeVKTV/cQLYXQgWb0ukh+h01MvDjN2C1cV1MEscdwNtkegifmkTJ043kZ0vFtv+j3JdCsZCaDjrWaoIdjfgCqHRAe7GbSD6IIaCH66ELzl73z+tWjA9Z4koWdJVSdEZsr9GhU=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(230173577357003)(230273577357003)(230922051799003)(186009)(1800799012)(451199024)(6506007)(55016003)(71200400001)(9686003)(83380400001)(7696005)(53546011)(5660300002)(122000001)(8676002)(498600001)(52536014)(82960400001)(8936002)(33656002)(76116006)(66946007)(64756008)(66446008)(66476007)(66556008)(110136005)(38100700002)(38070700009)(66899024)(26005)(86362001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?PLzYmnPwmilTVmTSV84AJ7fBkCTy64LSfxaBISuJzqsI2iC+g/xVgniI/8?=
 =?iso-8859-1?Q?WncoS3qJa5MxFwiXLYpSeHB92Z3QKGFuQqtm0BViyOJD5Q7dDFe0mCCs6L?=
 =?iso-8859-1?Q?AaH8PMYxVxjt8GHYVW1mJtOVNur+G7FTJTylEU19OhCvn3BNukOYIjXOro?=
 =?iso-8859-1?Q?RJxWLr+ylQFuSmAlJBpBypbEzLoakz1h94Bdu+EwQg0/8EqTrpEjbiCQ/Y?=
 =?iso-8859-1?Q?IR1WrSueOdV8AbMmO6TWmcoRAUcqexpywXah1kdNvXbWjVV/S1HjdAwrZi?=
 =?iso-8859-1?Q?PkskzVGcSp2qB+cNfrp0uLpLeJZgnFYvZtYTH3pujwrq5ewoJZacIhiA0M?=
 =?iso-8859-1?Q?5M8h8lja3W42WEa+4uf2EEoKGAT4460hm6beoZ1sdaKfVC0zWNm0oL4Nhb?=
 =?iso-8859-1?Q?wNyco/ZYhSdfdgnWrmW/TbFSGHl+C/IjGC15opO8FLMCd2dl6mUsS7YMhl?=
 =?iso-8859-1?Q?ZvrYlkhhCNWNl8pIdFCCWDYrvVIgVNqdz9m9MvUDvAm30i5t5r59SARFll?=
 =?iso-8859-1?Q?BvDAzeXZsB2Mr/0+onffJjpA5CBt2TMbm+njSNFWVe5pYfDmsH3ziWD7u+?=
 =?iso-8859-1?Q?xTMmKaryuvBn1LKVPYvTpv9ah9QO2Yfy+1Xu8wXcd9lh2QPFY/5Vj3Qwgx?=
 =?iso-8859-1?Q?JU4PvhJ9ZPB4BvCqVqMt1KfStyTLW40D8ut+tdOo1L0y611h4Bc80hjiMb?=
 =?iso-8859-1?Q?gZ4/kL4hBR9E4ND3oqVVt75fHcwgy+N7vna45xj6tFEJlcooG1QYmfxwOF?=
 =?iso-8859-1?Q?gKIPhbFATcJ570GjSRcLKAYEgtoTPqMYu9u1dk/RW+7oH9ROOOQS57RCwi?=
 =?iso-8859-1?Q?eBvX4tFBBNtms+cPTjxZu1p9fXxw30/J+KY6qz2poDhEEGov3pj8/xAoX6?=
 =?iso-8859-1?Q?g+vJ/K1N6ZGxDE7bc6RBTMNBgiEVIZAyy+AYyl9Z/6HxttDgdzUBE8ifvr?=
 =?iso-8859-1?Q?xtJkCS5rpfsdOSm1AwHe6ALvO/18Gm6klCJ6hMQNmcDVZHdA1p+O3xwlYs?=
 =?iso-8859-1?Q?cvqxKuHO1yjg+1Jjm/frVdrQamHH8wbDKILnUJkdpLKRfeWqxmJsMG1YOy?=
 =?iso-8859-1?Q?38e51ULj6LgdZh4FJdK6IEa0mQxLvE5T8cDZQSWBnC8r3gF74c+IaUJI4A?=
 =?iso-8859-1?Q?qOkIi/5IeBTjO7KpYufCcJR8erx53jYyFEKQxtEuWL0ELoOkzE3IvMts9/?=
 =?iso-8859-1?Q?eyZd0BLi6vzqHiBTwPU/tJni0WgqtirohAVRRPZkOb143Ynnynl+GfJ1LR?=
 =?iso-8859-1?Q?2Xv/02fCSqzO29H5Yx5XZcBvWRsT2eThcuhpEceBcTTRSIlScl4AYtCZlt?=
 =?iso-8859-1?Q?Ghx/8JSBffKnfpz9HVOlUsF7A091V5ckCIa0ORat1qaFHoOEerZ5/y0brw?=
 =?iso-8859-1?Q?hflqXFrrl8yvB8BWA62WDfh9xI+isKnH0brI9QkQiK2G+bfgxtDB62EGAl?=
 =?iso-8859-1?Q?mGuqLm9t1cHFXepqu2KLfr1OPWjVZV93LfUMAgLEOAhaZhtejfmEORIKuG?=
 =?iso-8859-1?Q?hZCGwXCUYQq2wNyf/RLfliuAcYj6z0XOMzyfnXbyy2eXyWMA43pxwysKQ0?=
 =?iso-8859-1?Q?Qvz1YpKTq33perwfSIy8Zz2FS5+n?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN2P110MB0948.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d25acf11-f04d-44c5-cf31-08dbf0df4f15
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2023 13:30:09.8102
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 7c5a26cf-ddf0-400c-9703-4070b4e3a54d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN2P110MB1192
X-OriginatorOrg: gd-ms.com
X-Content-Scanned: Fidelis Mail
Message-ID-Hash: QI5V3GI3B53G254KCBPOHJUAMLBIYQJG
X-Message-ID-Hash: QI5V3GI3B53G254KCBPOHJUAMLBIYQJG
X-MailFrom: Alvin.Begaye@gd-ms.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: peek32/poke32 slow
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QI5V3GI3B53G254KCBPOHJUAMLBIYQJG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: "Alvin.Begaye--- via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Alvin.Begaye@gd-ms.com" <Alvin.Begaye@gd-ms.com>
Content-Type: multipart/mixed; boundary="===============6231154310670911624=="

--===============6231154310670911624==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BN2P110MB09482B4A6F47A60FE3D0AB9ECA83ABN2P110MB0948NAMP_"

--_000_BN2P110MB09482B4A6F47A60FE3D0AB9ECA83ABN2P110MB0948NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I would like to do the following, to figure out what is being tweaked on th=
e HW.

1) Update X410 with a mender image (via mender install)
2) git clone the UHD repo, rebuild it with -g and install over what was men=
der.

Is there a recommended way to do this?  I would like to see the call flow w=
ith GDB to figure out what register is being written to when I access a reg=
ister to an rfnoc block.

From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Thursday, November 16, 2023 1:55 PM
To: Begaye, Alvin A <Alvin.Begaye@gd-ms.com>; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: peek32/poke32 slow

External E-mail --- CAUTION: This email originated from outside GDMS. Do no=
t click links or open attachments unless you recognize the sender and know =
the content is safe.

On 16/11/2023 15:50, Alvin.Begaye@gd-ms.com<mailto:Alvin.Begaye@gd-ms.com> =
wrote:
I'm running the SW directly on the ARM of the X410, so that should rule out=
 network latency.
The ARM on the X410 is (AFAIR) dual-core, and not very speedy.  Even when y=
ou're talking locally, you
  still go through the network stack (localhost).  So even though there's n=
o actual network *hardware*
  involved, you're still paying the network stack costs.



When using the UHD API on the ARM does it still go through the MPM?
Yes, as far as I know.



Is there a way to bypass MPM?
Well, all the source code is freely available--so you could figure out how =
MPM turns those calls into actual "knobs"
  being tweaked on the hardware, and tweak those knobs yourself in your own=
 code.





From: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.=
com>
Sent: Thursday, November 16, 2023 1:36 PM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: peek32/poke32 slow

External E-mail --- CAUTION: This email originated from outside GDMS. Do no=
t click links or open attachments unless you recognize the sender and know =
the content is safe.

On 16/11/2023 15:11, Alvin.Begaye--- via USRP-users wrote:
Hi I am using an x410, and running through the init_gain_block example,   u=
sing the high resolution timer I am getting these results, which seem reall=
y slow, is there a faster way to read/write registers?
I believe that on the X410, operations like that actually end up going thro=
ugh the MPM process that is running in the Linux PS
  slice on the FPGA.

One can expect to pay various "latency tolls".  There's app-land-to-kernel =
latency on your host, latency of the network stack,
  latency of the network media itself, and then all of those things in reve=
rse order on the X410 side, since MPM is just a piece
  of software running as a normal app process in the Linux PS on the X410.

It has never been the case that what amounts to "session parameter" setting=
s were intended to be super-fast, because in general,
  those things happen at a MUCH MUCH slower pace than the signals themselve=
s.




Time 481.835 micro seconds.
Gain value read/write loopback successful!

Here is the code.

    t1 =3D high_resolution_clock::now();
    gain_block->set_gain_value(new_gain_value);
    const uint32_t gain_value_read =3D gain_block->get_gain_value();
    t2 =3D high_resolution_clock::now();

    delta_time =3D duration_cast<duration<double>>(t2-t1);
    std::cout << std::flush ;//<< std::endl;
    std::cout << "Time " << delta_time.count()*1000000.0 << " micro seconds=
." << std::endl;




_______________________________________________

USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>

To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>



--_000_BN2P110MB09482B4A6F47A60FE3D0AB9ECA83ABN2P110MB0948NAMP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple" style=3D"word-wrap:brea=
k-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I would like to do the following, to figure out what=
 is being tweaked on the HW.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">1) Update X410 with a mender image (via mender insta=
ll)<o:p></o:p></p>
<p class=3D"MsoNormal">2) git clone the UHD repo, rebuild it with -g and in=
stall over what was mender.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a recommended way to do this?&nbsp; I would=
 like to see the call flow with GDB to figure out what register is being wr=
itten to when I access a register to an rfnoc block.&nbsp;&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech &lt;patchvonbraun@gmail=
.com&gt; <br>
<b>Sent:</b> Thursday, November 16, 2023 1:55 PM<br>
<b>To:</b> Begaye, Alvin A &lt;Alvin.Begaye@gd-ms.com&gt;; usrp-users@lists=
.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Re: peek32/poke32 slow<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellpadding=3D"0" style=3D"bac=
kground:#3F7FBF">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto;text-align:center;line-height:12.0pt">
<strong><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif;color:yellow">External E-mail
</span></strong><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&q=
uot;,sans-serif;color:yellow">--- CAUTION: This email originated from outsi=
de GDMS. Do not click links or open attachments unless you recognize the se=
nder and know the content is safe.
</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal">&nbsp; <o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 16/11/2023 15:50, <a href=3D"mailto:Alvin.Begaye@=
gd-ms.com">
Alvin.Begaye@gd-ms.com</a> wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">I&#8217;m running the SW directly on the ARM of the =
X410, so that should rule out network latency.&nbsp;
<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal">The ARM on the X410 is (AFAIR) dual-core, and not ve=
ry speedy.&nbsp; Even when you're talking locally, you<br>
&nbsp; still go through the network stack (localhost).&nbsp; So even though=
 there's no actual network *hardware*<br>
&nbsp; involved, you're still paying the network stack costs.<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">When using the UHD API on the ARM does it still go t=
hrough the MPM?<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal">Yes, as far as I know.<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">Is there a way to bypass MPM?<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal">Well, all the source code is freely available--so yo=
u could figure out how MPM turns those calls into actual &quot;knobs&quot;<=
br>
&nbsp; being tweaked on the hardware, and tweak those knobs yourself in you=
r own code.<br>
<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Marcus D. Leech <a href=3D"mailto:patch=
vonbraun@gmail.com">
&lt;patchvonbraun@gmail.com&gt;</a> <br>
<b>Sent:</b> Thursday, November 16, 2023 1:36 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject:</b> [USRP-users] Re: peek32/poke32 slow<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<div>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"3" cellpadding=
=3D"0" style=3D"background:#3F7FBF">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal" align=3D"center" style=3D"mso-margin-top-alt:auto;ms=
o-margin-bottom-alt:auto;text-align:center;line-height:12.0pt">
<strong><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&quot;,san=
s-serif;color:yellow">External E-mail
</span></strong><span style=3D"font-size:10.0pt;font-family:&quot;Verdana&q=
uot;,sans-serif;color:yellow">--- CAUTION: This email originated from outsi=
de GDMS. Do not click links or open attachments unless you recognize the se=
nder and know the content is safe.
</span><o:p></o:p></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal">&nbsp; <o:p></o:p></p>
<div>
<p class=3D"MsoNormal">On 16/11/2023 15:11, Alvin.Begaye--- via USRP-users =
wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi I am using an x410=
, and running through the init_gain_block example,&nbsp;&nbsp; using the hi=
gh resolution timer I am getting these results, which seem really slow, is =
there a faster way to read/write registers?<o:p></o:p></p>
</blockquote>
<p class=3D"MsoNormal">I believe that on the X410, operations like that act=
ually end up going through the MPM process that is running in the Linux PS<=
br>
&nbsp; slice on the FPGA.<br>
<br>
One can expect to pay various &quot;latency tolls&quot;.&nbsp; There's app-=
land-to-kernel latency on your host, latency of the network stack,<br>
&nbsp; latency of the network media itself, and then all of those things in=
 reverse order on the X410 side, since MPM is just a piece<br>
&nbsp; of software running as a normal app process in the Linux PS on the X=
410.<br>
<br>
It has never been the case that what amounts to &quot;session parameter&quo=
t; settings were intended to be super-fast, because in general,<br>
&nbsp; those things happen at a MUCH MUCH slower pace than the signals them=
selves.<br>
<br>
<br>
<br>
<br>
<o:p></o:p></p>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Time 481.835 micro seconds.</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Gain value read/write loopback successful!</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal">Here is the code.<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; t1 =3D high_resolution_clock::now();</span><o:p></o:p></=
p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; gain_block-&gt;set_gain_value(new_gain_value);</span><o:=
p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; const uint32_t gain_value_read =3D gain_block-&gt;get_ga=
in_value();</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; t2 =3D high_resolution_clock::now();</span><o:p></o:p></=
p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; delta_time =3D duration_cast&lt;duration&lt;double&gt;&g=
t;(t2-t1);</span><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; std::cout &lt;&lt; std::flush ;//&lt;&lt; std::endl;</sp=
an><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
&nbsp;&nbsp;&nbsp; std::cout &lt;&lt; &quot;Time &quot; &lt;&lt; delta_time=
.count()*1000000.0 &lt;&lt; &quot; micro seconds.&quot; &lt;&lt; std::endl;=
</span><o:p></o:p></p>
<p class=3D"MsoNormal"><br>
<br>
<br>
<o:p></o:p></p>
<pre>_______________________________________________<o:p></o:p></pre>
<pre>USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a><o:p></o:p></pre>
<pre>To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com">usrp-users-leave@lists.ettus.com</a><o:p></o:p></pre>
</blockquote>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</blockquote>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_BN2P110MB09482B4A6F47A60FE3D0AB9ECA83ABN2P110MB0948NAMP_--

--===============6231154310670911624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6231154310670911624==--

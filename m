Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A7B68C6D7
	for <lists+usrp-users@lfdr.de>; Mon,  6 Feb 2023 20:33:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 52F03380C5D
	for <lists+usrp-users@lfdr.de>; Mon,  6 Feb 2023 14:32:56 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675711976; bh=u8IRCh4qFLeNWLHJbD7flLtZr2syZPyt8n07Q8Hxjek=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=dEGdlPVX1D+FZOvar/jpOL2CjxItu7WFucE/+sBXGgHB3zTrBW3nrFr7kfu2sU8y/
	 k/aszO+JA2LI81sw7AwhBP3Zrp8z73xVcvnYUCJ4b002sBlU7aXwDKjkXvwRm0kJkt
	 m/UC0kTp2KNA3JRiLsfiH4ZeTbeCwXowK/MtygMhF+IartTG+etUazZ3h8FBiLuwlw
	 3Y5xx58gwxjOCq+O79m+s23QmwtsP7F5FdP7o+LvBZ67xPzGFmSzthNztV6ZYxkbtb
	 u7Sc2ic1Ni+q4EK2X5Xbcs0eRGLu+qrF/CJVOFVtPfzfI/1tMjldFyHQ/PrvqNIeOm
	 sC1PJM7TjRclQ==
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2081.outbound.protection.outlook.com [40.107.220.81])
	by mm2.emwd.com (Postfix) with ESMTPS id EED64380AF8
	for <usrp-users@lists.ettus.com>; Mon,  6 Feb 2023 14:32:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="8hc38cr+";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HmG6SbpU4kw2Zi8pyG/DqFOj2kUOVyWMnEpdU9mzsxN60IlEFo46uYr3x7105xd9seGC8qhAY6iIWqGqKM381LQz1KvM4qUaYUU6yuGAx3PZY/2G0vav7B5pQAejnFzu6MwEkjfwEI8o3c8npNU5RMAsaEBQvpGRs8VREapk9dUYJd0YIBpMgq4mdT0hwrq7aYEcZBzLg7tlImJULAKo2NGTNlMIpJ0QdIqUbgMKhwD8jVhXkOZQJM4htPwPf7Ml0gvHfz9zljCejIEDnboS1Iyh0rQBw74EbrOtc480Yja83DtVCvt1WxONKBCv9AIyiAhZFRj8xf2vD+vteRVpSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ag5cN03rox6iR3eXRgAgElP//hZUvoiSUu0ccHU8068=;
 b=HMFVenoVcOhnLccyAHiUmU0S9WWS2mzulXzLq4L5WXWPlWDYgD6f96/O0/0VgYLPKbKJMD4CF/4s6gHvd4m1ncHHNuPaae95yjm0WWZ4X8zFF3UJ3P9uOKn+QgNN1hiilvk5jKmZoAdP+fvLOABaQ97/6idapIkbc32MUK3K8pPttfth8HJmUvlACUC+WiQlPxOuRk7RaNpvAvu0vP9W3llFyI/GljGquOaCOIytpyCaDDYwt9R0wSrQKjMGkqrF9Ur5puQlc1NK6UXUVyfMeVzx813XH+PQXoluZ1RXEeDqEqDYGz1EtJ36zyNgjZ/qcFjxfuQ+q0WbVt74u45ELg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ag5cN03rox6iR3eXRgAgElP//hZUvoiSUu0ccHU8068=;
 b=8hc38cr+2FxRlxaLPcM81/NSgqvLajy61iTR5s5gl/HRYvdFSwe7HBRWcWn9ISSaByFDG9Ndy841hycl6ZYMuvcQ7kTJItE6swFiteinPa3wXt2hYk90Eq3H4QP/rP4Ge24CVQ6m1CB5xjyHAT8D4SQF9gHGPT4XPGKCNDGng0gQIQU4KKvxn6it4J0qtYoQyHwjt642TkwsBr3W6DZzDNUIlrI7g/bnXGSE8hLlY2hvMoGf2jObFuNfAPwva+mGlPlwjaur7SaUF211X8KhgZzL9wAvDn31RK2FiSIS6+Mqy0Gj6m825y5HofIZArrqvfkZJgbnkfKRUANyo5344A==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by BLAPR03MB5377.namprd03.prod.outlook.com (2603:10b6:208:285::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Mon, 6 Feb
 2023 19:32:44 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::b0ce:a57b:7946:39b5]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::b0ce:a57b:7946:39b5%7]) with mapi id 15.20.6064.034; Mon, 6 Feb 2023
 19:32:44 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: Wade Fife <wade.fife@ettus.com>
Thread-Topic: [USRP-users] Re: Error when synthesizing example OOT block : IP
 "cmplx_mul" is locked
Thread-Index: AQHZNcJJ+zOZIyLwc0quNEfWmSQD5q65HhxMgAN4LICAAP03V4AADAWAgAS37a8=
Date: Mon, 6 Feb 2023 19:32:44 +0000
Message-ID: 
 <BYAPR03MB46783F40DAD8EE1AF9C9550AD3DA9@BYAPR03MB4678.namprd03.prod.outlook.com>
References: <UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ@lists.ettus.com>
 <BYAPR03MB467853DF27EFC17161E17D86D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
 <BYAPR03MB467806254313359B175385A6D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
 <BYAPR03MB4678F59BE3B3272608F8DB42D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
 <CAFche=gpxOnGaTJh=YaO25kCNP7=zhF8t4V+VU_PErhkwGp+fQ@mail.gmail.com>
 <BYAPR03MB46783B160B4CE02BA562E040D3D79@BYAPR03MB4678.namprd03.prod.outlook.com>
 <CAFche=i9z-oQWLmPw5GrXXscKrymgo9nJobct64G9b2SeyM3wQ@mail.gmail.com>
In-Reply-To: 
 <CAFche=i9z-oQWLmPw5GrXXscKrymgo9nJobct64G9b2SeyM3wQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|BLAPR03MB5377:EE_
x-ms-office365-filtering-correlation-id: 457bf55d-b62f-4dd2-2bf5-08db0878eb67
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 AcNFKoVs5WQw5+xgmrUZCZ0n5PXGDF/MrpwLyfYWUz/MvGMlN6BXEXfX6hDqRzKIYPBCBwLzRBw9TayPaRjBd70n7+iClUkv5dAwxy2FGXzuu1Mrw8RICoRTr7dqbHVKKOCEZabJVrWGv8ydbEyDp3YVLz0ggQFeX9geM4ArVfuShXxhqnLiQiYYOVrnm3SYhNAkTviR1M8nGbp4DyoijDQBbKrBQX5K6wFwIrfIi6ZWGg2QW80rTMzmyu8Cs5Vbun7HeaCb3HpqLQftCtRbY3Z0fy/VZp2j1/9iFJKlOR5JkDgx975hWCbwsEpEzOH4zNWGuoneZzR9k9bmstaXgp+3a+ONmd0uhkX8En/H0X1CdD2M+wQThpRf4lPoHPVCF4DYL4r2sNOBxAVHey40I0AeSGIh7DSaZ4Es1vrTmFbn0gYNEGzAvkJalLD/OC7vHEB3m595KZ4ZnVsMECPsHxS/cigOG9K9/gT28gXt1PQ4x+8XbZWldivfngkwA5Afaa3cTy+G6WvgCBRc0i1JV7NWvcNa19mMvrxgNUVExZrPS+G/bmnfNG981hiqBYEati+LU13HJ8i8m5OLQnMwNBxAgCzqTK9YiV6nvKKzCeE9ycYm9hhnJ/clCXk9Rcw9ovG1badP3BDbS06h08QxT7BdFGVdYhyIy6skReB/udvoCUjJRsq0l3urtwZNnXp/Ak3pZSNEdygjrYLvqfal9P9Y6BcKjnYlQ9kgEicCwHhWOq74RMZcBW66wSzAsKBYI7P0hl07+sj7eKkCO9Mx9A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(376002)(39860400002)(136003)(396003)(366004)(451199018)(19627405001)(66899018)(55016003)(7696005)(38070700005)(41320700001)(33656002)(75432002)(9686003)(122000001)(26005)(38100700002)(86362001)(186003)(166002)(83380400001)(30864003)(6506007)(53546011)(76116006)(478600001)(19627235002)(8676002)(71200400001)(316002)(786003)(966005)(91956017)(66946007)(52536014)(4326008)(6916009)(41300700001)(8936002)(5660300002)(66556008)(66446008)(64756008)(2906002)(66476007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?x4tuquhL2B7IfGxaqjR/6JsJ0wt7fhdplc6v/0Bt2LT+ToCT5z24pmpH?=
 =?Windows-1252?Q?GIqUduwqOCejgnQp27lwvr5FEjM4GnHVbLNpbReOmBMmXLpJ32yFvyuY?=
 =?Windows-1252?Q?YLuqLcuI2BJNZcDoR0gt4Kukb1Nnyy3rn9O6fzZYjagI2ElLCBTc8/2L?=
 =?Windows-1252?Q?RDqYtg8aeeZD4M8g0naZvXif6b38GYhmcQy5f2IsYpSZKZDF08mExLil?=
 =?Windows-1252?Q?5RpLZEIGVAoPWrCj/j65lm3MqEIceCuVCHcuvqEFDxg6As9HGBZuGtxZ?=
 =?Windows-1252?Q?aPhogbrGYUjiTMXUJmtpjDtUfJ975nTw930GbNfh3//jLqH5B/FG6FXy?=
 =?Windows-1252?Q?eVWLYpGruOTQc8xhONNuBcFoQktLKye/mtzEZrPITX8OUwqfugzKWmIc?=
 =?Windows-1252?Q?YGXIxFoQe4b6yRhAYdGCQrVTR8rAMLFTrqTckAAgSGWujk/BstEugO8A?=
 =?Windows-1252?Q?A4usSixZFxw4z/AN/QHZa7dfzV4U98K2tShGlrI/0MFHkg/26inxMAJT?=
 =?Windows-1252?Q?SiNUJS/ktXMlKYwnFDkE8YJTojWGGbYzuSRCb/lPGpgBEPZ/gVKujL3E?=
 =?Windows-1252?Q?gTBqq9N6hROmfp5Bbsqq95PHOhYIkjxtcSYYKufbpNALUzS4VvLR0UOf?=
 =?Windows-1252?Q?9eQO3KuQpvaoK+b6mEUZOEj0iCaLorrKzsW600c4+xg2Sha3A0NWr/Mb?=
 =?Windows-1252?Q?TebZvCfq58set1A8fEGeXpYYDDVXQWZ/2j2fcTd5xxZvGjfLlj50VeTk?=
 =?Windows-1252?Q?fdPnVNqKNyJS9qeusZnJYhch4CXKUi+QKgJCCaCv3vlb5Vm+QOPpyn5p?=
 =?Windows-1252?Q?5Kc2V6Loadujx/ZT75CaMAXcMCX1cXqHNLKKh6c6T7B+67/0Z+oXFkkE?=
 =?Windows-1252?Q?ff1PdSaluntRbFlytE1cg+pprsVh/xl4e6Bo2515J1opCFZvkOVE/tFV?=
 =?Windows-1252?Q?4pPt4UGd8kyMBWLlK2bMzmvOCJ+b26D+TeJ4fBuG01ihFWbYDwJIWVTp?=
 =?Windows-1252?Q?x/vA9rRyjhiN2XJ44dGzwPCXq967h29NdXbkZ2VDrv7iDPEteqJlYSHT?=
 =?Windows-1252?Q?+P19Urdsi/pYGLHaRhgs9nDA9Q33d3/30lqTTJWwWjlUbbpV0yV7FmOw?=
 =?Windows-1252?Q?2ocXpTeTdKqZ8De1xF6Hi5KiXIdpF3U4hRqrHr5OPS0HZwaJpTzJMVcL?=
 =?Windows-1252?Q?TsztTQouX+MzLDrXxfCZCLqszgvoYyNjMPnjDyoKTisbqG9QqFonZG08?=
 =?Windows-1252?Q?i7fyQnil79jjl8IlELbSwWVmaINgSd42Zcy4N2NoYmS9r+BnCRvP85BK?=
 =?Windows-1252?Q?flIcGcGf0MH8JzuSKwzrPW6cnU7IACPpBNGP62LfnTFUPiRrt9NVrWWZ?=
 =?Windows-1252?Q?hk1SbdSmkB/K870LyxwHVP57AJ9ZqxTjPt/knNFqvfX55dwfTSfaB9gQ?=
 =?Windows-1252?Q?PqpfnupiF7RpeN+bJW1A/+9Mz8wKMZTJIRsWew6Pl36qt1pADC9Nv4bG?=
 =?Windows-1252?Q?sJXBhG9hH5pXJId8A0Ak63e4Mc0RTaJocc9YfpovOq2lJzytdbyuJuRz?=
 =?Windows-1252?Q?/P//iXjqfgHxzTj8+s9ql+MLVuxHz999nFIS5jvxxuV9iYI8Yv/Cl+Yu?=
 =?Windows-1252?Q?vW7TofDiQi9sMAA4m2Ab01KagIKSRa/m7qILUG4sQW2QLQrReiAEjTtl?=
 =?Windows-1252?Q?eNBL0kBLrBukozlvPnQLZdXZDMkERGbe?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 457bf55d-b62f-4dd2-2bf5-08db0878eb67
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2023 19:32:44.1249
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: o4tUvTCE2KcYK2uVIxXEb+wT3WL8u8fo/wha5HLKnh3fSLbSvUJt1h2IY/J/6e2ivgiHsAnop9wBENjdN/QC4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BLAPR03MB5377
Message-ID-Hash: LYKFRRS7YUNO4VFK555MG75KAMRPQARO
X-Message-ID-Hash: LYKFRRS7YUNO4VFK555MG75KAMRPQARO
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "cmplx_mul" is locked
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/W5GBXTQQALIUOV727PG6FSUIMUWU4RVO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2074544324467728100=="

--===============2074544324467728100==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB46783F40DAD8EE1AF9C9550AD3DA9BYAPR03MB4678namp_"

--_000_BYAPR03MB46783F40DAD8EE1AF9C9550AD3DA9BYAPR03MB4678namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

I was puzzled too.
Tried on a fresh ubuntu install and still gives me the same error.

Maybe I am doing something wrong in the install process? The compiled firmw=
are works as expected (without FIRs).

Not a problem since I don't plan to use the FIR compiler. Just wanted to pu=
t it out there.

Lorenzo
________________________________
From: Wade Fife <wade.fife@ettus.com>
Sent: Friday, February 3, 2023 11:27 AM
To: Minutolo, Lorenzo <minutolo@caltech.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Error when synthesizing example OOT block : I=
P "cmplx_mul" is locked

Setupenv says you're using 2021.1_AR76780. The hbXX cores are already set t=
o 2021.1_AR76780, since UHD 4.3, so there should be nothing to update unles=
s you have old file versions.

That critical warning about axi_hb31 is expected.

Wade

On Fri, Feb 3, 2023 at 12:48 PM Minutolo, Lorenzo <minutolo@caltech.edu<mai=
lto:minutolo@caltech.edu>> wrote:
Hi,
This is the output of source setupenv.sh

Setting up a 64-bit FPGA build environment for the USRP-X3x0...
- Vivado: Found (/tools/Xilinx/Vivado/2021.1/bin)
          Installed version is Vivado v2021.1_AR76780 (64-bit)

Environment successfully initialized.

I ended up opening the hbXX cores with vivado and updating them to my versi=
on. That makes the firmware compile. However, it complains a lot with criti=
cal warnings about FIR filters during compile. Specifically, I read this li=
ne that makes me worry:

CRITICAL WARNING: [Designutils 20-1280] Could not find module 'axi_hb31'. T=
he XDC file /home/lorenzo/uhd/fpga/usrp3/top/UHD_revamp.gen/sources_1/ip/ax=
i_hb31/constraints/fir_compiler_v7_2.xdc will not be read for any cell of t=
his module.

Note that the folder UHD_revamp is the vivado project I used to import the =
xci files for updating. Maybe there is a better way to open the .xci withou=
t creating a new project?

Thanks,
Lorenzo

________________________________
From: Wade Fife <wade.fife@ettus.com<mailto:wade.fife@ettus.com>>
Sent: Thursday, February 2, 2023 7:37 PM
To: Minutolo, Lorenzo <minutolo@caltech.edu<mailto:minutolo@caltech.edu>>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Re: Error when synthesizing example OOT block : I=
P "cmplx_mul" is locked

Hi Lorenzo,

I tried your steps but couldn't reproduce the issue you're seeing. I wonder=
 if somehow the patch is not being picked up, or perhaps you somehow have s=
tale build files. Can you run the following?

cd fpga/usrp3/top/x300/
source setupenv.sh

What's the output of setupenv.sh?
At this point you can try:

make cleanall
make X300_HG

Typically the IP locked issue happens when there is a mismatch between the =
version of Vivado that was used to generate the IP and the version of Vivad=
o that is being used to build the FPGA. You can see the Vivado version that=
 was used to generate the IP here:

https://github.com/EttusResearch/uhd/blob/UHD-4.4/fpga/usrp3/lib/ip/axi_hb3=
1/axi_hb31.xci#L247

You can see the version of the version of Vivado you're using to build the =
FPGA when you run "source setupenv.sh". It is also possible to open the IP =
in Vivado and unlock it by fixing whatever version mismatch it sees, but yo=
u should be building with 2021.1_AR76780 or else other IP will give you sim=
ilar problems.

Please double check that you don't have changes or untracked files in your =
repo (running `git status` should tell you) or old builds laying around (`m=
ake cleanall` should remove those). And make sure that setupenv.sh reports =
v2021.1_AR76780. If you have multiple patches or the same patch installed i=
n multiple places, that might also cause a version mismatch.

Wade

On Tue, Jan 31, 2023 at 5:06 PM Minutolo, Lorenzo <minutolo@caltech.edu<mai=
lto:minutolo@caltech.edu>> wrote:
After reading about this conversation on the mailing list https://lists.ett=
us.com/empathy/thread/DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD
I went ahead and erased my UHD distribution folder and started from scratch=
. Here is how to reproduce what I did:

Given a patched version of Vivado installed on the system:

/tools/Xilinx/Vivado/2021.1/bin/vivado -version
Vivado v2021.1_AR76780 (64-bit)
SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021
IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021
Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.

Commands:

git clone git clone https://github.com/EttusResearch/uhd.git
cd uhd
git checkout UHD-4.4
<optional>
cd host
mkdir build && cd build
cmake ..
make -j10
sudo make install
cd ../..
<end optional>
cd fpga/usrp3/top/x300/
rfnoc_image_builder -c -d x300 -y ./x300_rfnoc_image_core.yml -t X300_HG -p=
 /tools/Xilinx/Vivado/

This results in the error reported below.


________________________________
From: Minutolo, Lorenzo <minutolo@caltech.edu<mailto:minutolo@caltech.edu>>
Sent: Tuesday, January 31, 2023 2:20 PM
To: jmaloyan@umass.edu<mailto:jmaloyan@umass.edu> <jmaloyan@umass.edu<mailt=
o:jmaloyan@umass.edu>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.=
ettus.com> <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "c=
mplx_mul" is locked

I tried installing Vivado 2021.1 and applying the right patch, using UHD-4.=
4 I still get the following error message:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Building IP axi_hb31
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
BUILDER: Staging IP in build directory...
BUILDER: Reserving IP location: /home/lorenzo/uhd/fpga/usrp3/top/x300/build=
-ip/xc7k325tffg900-2/axi_hb31
BUILDER: Retargeting IP to part kintex7/xc7k325t/ffg900/-2...
BUILDER: Building IP...
[00:00:00] Executing command: vivado -mode batch -source /home/lorenzo/uhd/=
fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log axi_hb31.log -nojournal
WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
[00:00:04] Current task: Initialization +++ Current Phase: Starting
CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the foll=
owing file is locked: /home/lorenzo/uhd/fpga/usrp3/top/x300/build-ip/xc7k32=
5tffg900-2/axi_hb31/axi_hb31.xci
CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the f=
ollowing file is locked: /home/lorenzo/uhd/fpga/usrp3/top/x300/build-ip/xc7=
k325tffg900-2/axi_hb31/axi_hb31.xci
[00:00:04] Current task: Initialization +++ Current Phase: Finished
[00:00:04] Executing Tcl: synth_design -top axi_hb31 -part xc7k325tffg900-2=
 -mode out_of_context
[00:00:04] Starting Synthesis Command
[00:00:04] Current task: Synthesis +++ Current Phase: Starting
WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products f=
or Synthesis target. These output products could be required for synthesis,=
 please generate the output products using the generate_target or synth_ip =
command before running synth_design.
WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:
ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources spec=
ified


Currently looking for a workaround before reverting to 2019.1 and UHD 4.2

Lorenzo

________________________________
From: Minutolo, Lorenzo <minutolo@caltech.edu<mailto:minutolo@caltech.edu>>
Sent: Tuesday, January 31, 2023 11:48 AM
To: jmaloyan@umass.edu<mailto:jmaloyan@umass.edu> <jmaloyan@umass.edu<mailt=
o:jmaloyan@umass.edu>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.=
ettus.com> <usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "c=
mplx_mul" is locked

Same here.
Since switching to Vivado 2021.1 and UHD-4.3 even compiling the stock firmw=
are results in [IP_Flow 19-2162] IP 'axi_hb31' is locked.
Apparently, this error is well known https://support.xilinx.com/s/article/5=
8832?language=3Den_US

I'm trying to switch to UHD 4.4 to see if this error goes away. Everything =
was working really well in UHD-4.2 and Vivado 2019.1.

Best,
Lorenzo
________________________________
From: jmaloyan@umass.edu<mailto:jmaloyan@umass.edu> <jmaloyan@umass.edu<mai=
lto:jmaloyan@umass.edu>>
Sent: Friday, January 27, 2023 2:17 PM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: [USRP-users] Error when synthesizing example OOT block : IP "cmplx=
_mul" is locked


Hello,


I have run into an issue when trying to synthesize the =93gain=94 RFNoC as =
described in the tutorial here https://kb.ettus.com/Getting_Started_with_RF=
NoC_in_UHD_4.0


I get an error that the module cmplx mul is locked. I found that in the ver=
ilog file =93rfnoc_block_gain.v=94, the module is instantiated there, but I=
 am unsure how I should proceed working around this.


Here is the output of the vivado -version

Vivado v2021.1_AR76780 (64-bit)

SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021

IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021

Copyright 1986-2021 Xilinx, Inc. All Rights Reserved

And here is the output of the error

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

BUILDER: Building IP cmplx_mul

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

BUILDER: Staging IP in build directory...

BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/=
xc7z100ffg900-2/cmplx_mul

BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...

BUILDER: Building IP...

[00:00:00] Executing command: vivado -mode batch -source /workarea/uhd/fpga=
/usrp3/tools/scripts/viv_generate_ip.tcl -log cmplx_mul.log -nojournal

[00:00:05] Current task: Initialization +++ Current Phase: Starting

WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:

CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the foll=
owing file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg=
900-2/cmplx_mul/cmplx_mul.xci

CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for the f=
ollowing file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100=
ffg900-2/cmplx_mul/cmplx_mul.xci

[00:00:05] Current task: Initialization +++ Current Phase: Finished

[00:00:05] Executing Tcl: synth_design -top cmplx_mul -part xc7z100ffg900-2=
 -mode out_of_context

[00:00:05] Starting Synthesis Command

WARNING: [Vivado_Tcl 4-391] The following IPs are missing output products f=
or Synthesis target. These output products could be required for synthesis,=
 please generate the output products using the generate_target or synth_ip =
command before running synth_design.

WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:

ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources spec=
ified

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

ERROR: [Common 17-53] User Exception: No open design. Please open an elabor=
ated, synthesized or implemented design before executing this command.

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

[00:00:06] Current task: Synthesis +++ Current Phase: Starting

CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file '/workare=
a/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xml'

ERROR: [Vivado 12-398] No designs are open

[00:00:06] Current task: Synthesis +++ Current Phase: Finished

[00:00:06] Process terminated. Status: Failure

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D

Warnings: 3

Critical Warnings: 7

Errors: 8

BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/=
xc7z100ffg900-2/cmplx_mul

make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_IP_CMPLX_M=
UL_TRGT] Error 1

make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'

make: *** [Makefile:90: N3X0_IP] Error 2

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_BYAPR03MB46783F40DAD8EE1AF9C9550AD3DA9BYAPR03MB4678namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I was puzzled too.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Tried on a fresh ubuntu install and still gives me the same error.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Maybe I am doing something wrong in the install process? The compiled firmw=
are works as expected (without FIRs).</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Not a problem since I don't plan to use the FIR compiler. Just wanted to pu=
t it out there.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Lorenzo</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Wade Fife &lt;wade.fi=
fe@ettus.com&gt;<br>
<b>Sent:</b> Friday, February 3, 2023 11:27 AM<br>
<b>To:</b> Minutolo, Lorenzo &lt;minutolo@caltech.edu&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] Re: Error when synthesizing example OOT bl=
ock : IP &quot;cmplx_mul&quot; is locked</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Setupenv says you're using 2021.1_AR76780. The hbXX cores are already =
set to 2021.1_AR76780, since UHD 4.3, so there should be nothing to update =
unless you have old file versions.</div>
<div><br>
</div>
<div>That critical warning about axi_hb31 is expected.<br>
</div>
<div><br>
</div>
<div>Wade<br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Fri, Feb 3, 2023 at 12:48 PM Min=
utolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltech=
.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div class=3D"x_msg-1290985547674527894">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
This is the output of&nbsp;source setupenv.sh</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Setting up a 64-bit FPGA build environment for the USRP-X3x0...
<div>- Vivado: Found (/tools/Xilinx/Vivado/2021.1/bin)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Installed version is Vivado v2021.1=
_AR76780 (64-bit)</div>
<div><br>
</div>
<div>Environment successfully initialized.</div>
<div><br>
</div>
<div>I ended up opening the hbXX cores with vivado and updating them to my =
version. That makes the firmware compile. However, it complains a lot with =
critical warnings about FIR filters during compile. Specifically, I read th=
is line that makes me worry:</div>
<div><br>
</div>
<div><span style=3D"color:rgb(37,43,55); font-family:Calibri,Helvetica,sans=
-serif; font-size:12pt; text-align:left; background-color:rgb(255,255,255);=
 display:inline">CRITICAL WARNING: [Designutils 20-1280] Could not find mod=
ule 'axi_hb31'. The XDC file /home/lorenzo/uhd/fpga/usrp3/top/UHD_revamp.ge=
n/sources_1/ip/axi_hb31/constraints/fir_compiler_v7_2.xdc
 will not be read for any cell of this module.</span><br>
</div>
<div><span style=3D"color:rgb(37,43,55); font-family:Calibri,Helvetica,sans=
-serif; font-size:12pt; text-align:left; background-color:rgb(255,255,255);=
 display:inline"><br>
</span></div>
<div><span style=3D"color:rgb(37,43,55); font-family:Calibri,Helvetica,sans=
-serif; font-size:12pt; text-align:left; background-color:rgb(255,255,255);=
 display:inline">Note that the folder UHD_revamp is the vivado project I us=
ed to import the xci files for updating.
 Maybe there is a better way to open the .xci without creating a new projec=
t?</span></div>
<div><span style=3D"color:rgb(37,43,55); font-family:Calibri,Helvetica,sans=
-serif; font-size:12pt; text-align:left; background-color:rgb(255,255,255);=
 display:inline"><br>
</span></div>
<div><span style=3D"color:rgb(37,43,55); font-family:Calibri,Helvetica,sans=
-serif; font-size:12pt; text-align:left; background-color:rgb(255,255,255);=
 display:inline">Thanks,</span></div>
<div><span style=3D"color:rgb(37,43,55); font-family:Calibri,Helvetica,sans=
-serif; font-size:12pt; text-align:left; background-color:rgb(255,255,255);=
 display:inline">Lorenzo</span></div>
<br>
</div>
<div id=3D"x_m_-421087967693053465appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-421087967693053465divRplyFwdMsg" dir=3D"ltr"><font face=3D"=
Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b=
> Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com" target=3D"_blank">wa=
de.fife@ettus.com</a>&gt;<br>
<b>Sent:</b> Thursday, February 2, 2023 7:37 PM<br>
<b>To:</b> Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu" ta=
rget=3D"_blank">minutolo@caltech.edu</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Error when synthesizing example OOT bl=
ock : IP &quot;cmplx_mul&quot; is locked</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">
<div>Hi Lorenzo,</div>
<div><br>
</div>
<div>I tried your steps but couldn't reproduce the issue you're seeing. I w=
onder if somehow the patch is not being picked up, or perhaps you somehow h=
ave stale build files. Can you run the following?</div>
<div><br>
</div>
<div>cd fpga/usrp3/top/x300/ <br>
</div>
<div>source setupenv.sh</div>
<div><br>
</div>
<div>What's the output of setupenv.sh?</div>
<div>At this point you can try:</div>
<div><br>
</div>
<div>make cleanall<br>
</div>
<div>make X300_HG</div>
<div><br>
</div>
<div>Typically the IP locked issue happens when there is a mismatch between=
 the version of Vivado that was used to generate the IP and the version of =
Vivado that is being used to build the FPGA. You can see the Vivado version=
 that was used to generate the IP
 here:</div>
<div><br>
</div>
<div><a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-4.4/fpga/usrp=
3/lib/ip/axi_hb31/axi_hb31.xci#L247" target=3D"_blank">https://github.com/E=
ttusResearch/uhd/blob/UHD-4.4/fpga/usrp3/lib/ip/axi_hb31/axi_hb31.xci#L247<=
/a></div>
<div><br>
</div>
<div>You can see the version of the version of Vivado you're using to build=
 the FPGA when you run &quot;source setupenv.sh&quot;. It is also possible =
to open the IP in Vivado and unlock it by fixing whatever version mismatch =
it sees, but you should be building with 2021.1_AR76780
 or else other IP will give you similar problems.</div>
<div><br>
</div>
<div>Please double check that you don't have changes or untracked files in =
your repo (running `git status` should tell you) or old builds laying aroun=
d (`make cleanall` should remove those). And make sure that setupenv.sh rep=
orts v2021.1_AR76780. If you have
 multiple patches or the same patch installed in multiple places, that migh=
t also cause a version mismatch.</div>
<div><br>
</div>
<div>Wade<br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Tue, Jan 31, 2023 at 5:06 PM Minutolo, Lorenzo &lt;<a h=
ref=3D"mailto:minutolo@caltech.edu" target=3D"_blank">minutolo@caltech.edu<=
/a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex; border-left:1px solid rgb(20=
4,204,204); padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
After reading about this conversation on the mailing list&nbsp;<a href=3D"h=
ttps://lists.ettus.com/empathy/thread/DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD" id=
=3D"x_m_-421087967693053465x_m_2829748491903905892LPNoLPOWALinkPreview" tar=
get=3D"_blank">https://lists.ettus.com/empathy/thread/DGJBPK6YADKXM2ETKPEVQ=
Q7F5ALJCIDD</a></div>
<div></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
I went ahead and erased my UHD distribution folder and started from scratch=
. Here is how to reproduce what I did:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Given a patched version of Vivado installed on the system:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
/tools/Xilinx/Vivado/2021.1/bin/vivado -version
<div>Vivado v2021.1_AR76780 (64-bit)</div>
<div>SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021</div>
<div>IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021</div>
<div>Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Commands:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
git clone git clone <a href=3D"https://github.com/EttusResearch/uhd.git" id=
=3D"x_m_-421087967693053465x_m_2829748491903905892LPlnk350834" target=3D"_b=
lank">
https://github.com/EttusResearch/uhd.git</a><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
cd uhd</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
git checkout UHD-4.4</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
&lt;optional&gt;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
cd host</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
mkdir build &amp;&amp; cd build</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
cmake ..</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
make -j10</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
sudo make install</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
cd ../..</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
&lt;end optional&gt;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
cd fpga/usrp3/top/x300/</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
rfnoc_image_builder -c -d x300 -y ./x300_rfnoc_image_core.yml -t X300_HG -p=
 /tools/Xilinx/Vivado/<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
This results in the error reported below.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div></div>
<br>
<div id=3D"x_m_-421087967693053465x_m_2829748491903905892appendonsend"></di=
v>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-421087967693053465x_m_2829748491903905892divRplyFwdMsg" dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font=
-size:11pt"><b>From:</b> Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@c=
altech.edu" target=3D"_blank">minutolo@caltech.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, January 31, 2023 2:20 PM<br>
<b>To:</b> <a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">jmaloyan=
@umass.edu</a> &lt;<a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">=
jmaloyan@umass.edu</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: Error when synthesizing example OOT block =
: IP &quot;cmplx_mul&quot; is locked</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
I tried installing Vivado 2021.1 and applying the right patch, using UHD-4.=
4 I still get the following error&nbsp;message:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
<div>BUILDER: Building IP axi_hb31</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D</div>
<div>BUILDER: Staging IP in build directory...</div>
<div>BUILDER: Reserving IP location: /home/lorenzo/uhd/fpga/usrp3/top/x300/=
build-ip/xc7k325tffg900-2/axi_hb31</div>
<div>BUILDER: Retargeting IP to part kintex7/xc7k325t/ffg900/-2...</div>
<div>BUILDER: Building IP...</div>
<div>[00:00:00] Executing command: vivado -mode batch -source /home/lorenzo=
/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log axi_hb31.log -nojour=
nal</div>
<div>WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:</div>
<div>[00:00:04] Current task: Initialization +++ Current Phase: Starting</d=
iv>
<div>CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for the=
 following file is locked: /home/lorenzo/uhd/fpga/usrp3/top/x300/build-ip/x=
c7k325tffg900-2/axi_hb31/axi_hb31.xci</div>
<div>CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) for =
the following file is locked: /home/lorenzo/uhd/fpga/usrp3/top/x300/build-i=
p/xc7k325tffg900-2/axi_hb31/axi_hb31.xci</div>
<div>[00:00:04] Current task: Initialization +++ Current Phase: Finished</d=
iv>
<div>[00:00:04] Executing Tcl: synth_design -top axi_hb31 -part xc7k325tffg=
900-2 -mode out_of_context</div>
<div>[00:00:04] Starting Synthesis Command</div>
<div>[00:00:04] Current task: Synthesis +++ Current Phase: Starting</div>
<div>WARNING: [Vivado_Tcl 4-391] The following IPs are missing output produ=
cts for Synthesis target. These output products could be required for synth=
esis, please generate the output products using the generate_target or synt=
h_ip command before running synth_design.</div>
<div>WARNING: [IP_Flow 19-2162] IP 'axi_hb31' is locked:</div>
<div>ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sources=
 specified</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Currently looking for a workaround before reverting to 2019.1 and UHD 4.2</=
div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Lorenzo</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div id=3D"x_m_-421087967693053465x_m_2829748491903905892x_appendonsend"></=
div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-421087967693053465x_m_2829748491903905892x_divRplyFwdMsg" d=
ir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.ed=
u" target=3D"_blank">minutolo@caltech.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, January 31, 2023 11:48 AM<br>
<b>To:</b> <a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">jmaloyan=
@umass.edu</a> &lt;<a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">=
jmaloyan@umass.edu</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Re: Error when synthesizing example OOT block =
: IP &quot;cmplx_mul&quot; is locked</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span style=3D"font-size:12pt; margin:0px; background-color:rgb(255,255,255=
)">Same here.</span>
<div style=3D"font-size:12pt; margin:0px; background-color:rgb(255,255,255)=
">Since switching to Vivado 2021.1 and UHD-4.3 even compiling the stock fir=
mware results in&nbsp;[IP_Flow 19-2162] IP 'axi_hb31' is locked.</div>
<div style=3D"font-size:12pt; margin:0px; background-color:rgb(255,255,255)=
">Apparently, this error is well known&nbsp;<a href=3D"https://support.xili=
nx.com/s/article/58832?language=3Den_US" target=3D"_blank" style=3D"margin:=
0px">https://support.xilinx.com/s/article/58832?language=3Den_US</a><br>
<br>
</div>
<div style=3D"font-size:12px; margin:0px"></div>
<span style=3D"font-size:12pt; margin:0px; background-color:rgb(255,255,255=
)">I'm trying to switch to UHD 4.4 to see if this error goes away. Everythi=
ng was working really well in UHD-4.2 and Vivado 2019.1.</span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span style=3D"font-size:12pt; margin:0px; background-color:rgb(255,255,255=
)"><br>
</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span style=3D"font-size:12pt; margin:0px; background-color:rgb(255,255,255=
)">Best,</span></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<span style=3D"font-size:12pt">Lorenzo</span></div>
<div id=3D"x_m_-421087967693053465x_m_2829748491903905892x_x_appendonsend">=
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-421087967693053465x_m_2829748491903905892x_x_divRplyFwdMsg"=
 dir=3D"ltr">
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b>
<a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">jmaloyan@umass.edu<=
/a> &lt;<a href=3D"mailto:jmaloyan@umass.edu" target=3D"_blank">jmaloyan@um=
ass.edu</a>&gt;<br>
<b>Sent:</b> Friday, January 27, 2023 2:17 PM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [USRP-users] Error when synthesizing example OOT block : IP=
 &quot;cmplx_mul&quot; is locked</font>
<div>&nbsp;</div>
</div>
<div>
<p>Hello,</p>
<p><br>
</p>
<p>I have run into an issue when trying to synthesize the =93gain=94 RFNoC =
as described in the tutorial here
<a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0" targ=
et=3D"_blank">
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0</a> </p>
<p><br>
</p>
<p>I get an error that the module cmplx mul is locked. I found that in the =
verilog file =93rfnoc_block_gain.v=94, the module is instantiated there, bu=
t I am unsure how I should proceed working around this.</p>
<p><br>
</p>
<p>Here is the output of the vivado -version</p>
<p><code>Vivado v2021.1_AR76780 (64-bit)</code></p>
<p><code>SW Build 3247384 on Thu Jun 10 19:36:07 MDT 2021</code></p>
<p><code>IP Build 3246043 on Fri Jun 11 00:30:35 MDT 2021</code></p>
<p><code>Copyright 1986-2021 Xilinx, Inc. All Rights Reserved</code></p>
<p>And here is the output of the error</p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>BUILDER: Building IP cmplx_mul</code></p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>BUILDER: Staging IP in build directory...</code></p>
<p><code>BUILDER: Reserving IP location: /workarea/uhd/fpga/usrp3/top/n3xx/=
build-ip/xc7z100ffg900-2/cmplx_mul</code></p>
<p><code>BUILDER: Retargeting IP to part zynq/xc7z100/ffg900/-2...</code></=
p>
<p><code>BUILDER: Building IP...</code></p>
<p><code>[00:00:00] Executing command: vivado -mode batch -source /workarea=
/uhd/fpga/usrp3/tools/scripts/viv_generate_ip.tcl -log cmplx_mul.log -nojou=
rnal</code></p>
<p><code>[00:00:05] Current task: Initialization +++ Current Phase: Startin=
g</code></p>
<p><code>WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:</code></p>
<p><code>CRITICAL WARNING: [filemgmt 20-1366] Unable to reset target(s) for=
 the following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-ip/x=
c7z100ffg900-2/cmplx_mul/cmplx_mul.xci</code></p>
<p><code>CRITICAL WARNING: [filemgmt 20-1365] Unable to generate target(s) =
for the following file is locked: /workarea/uhd/fpga/usrp3/top/n3xx/build-i=
p/xc7z100ffg900-2/cmplx_mul/cmplx_mul.xci</code></p>
<p><code>[00:00:05] Current task: Initialization +++ Current Phase: Finishe=
d</code></p>
<p><code>[00:00:05] Executing Tcl: synth_design -top cmplx_mul -part xc7z10=
0ffg900-2 -mode out_of_context</code></p>
<p><code>[00:00:05] Starting Synthesis Command</code></p>
<p><code>WARNING: [Vivado_Tcl 4-391] The following IPs are missing output p=
roducts for Synthesis target. These output products could be required for s=
ynthesis, please generate the output products using the generate_target or =
synth_ip command before running
 synth_design.</code></p>
<p><code>WARNING: [IP_Flow 19-2162] IP 'cmplx_mul' is locked:</code></p>
<p><code>ERROR: [Designutils 20-414] HRTInvokeSpec : No Verilog or VHDL sou=
rces specified</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>ERROR: [Common 17-53] User Exception: No open design. Please open =
an elaborated, synthesized or implemented design before executing this comm=
and.</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>[00:00:06] Current task: Synthesis +++ Current Phase: Starting</co=
de></p>
<p><code>CRITICAL WARNING: [IP_Flow 19-4739] Writing uncustomized BOM file =
'/workarea/uhd/fpga/usrp3/top/n3xx/build-ip/xc7z100ffg900-2/cmplx_mul/cmplx=
_mul.xml'</code></p>
<p><code>ERROR: [Vivado 12-398] No designs are open</code></p>
<p><code>[00:00:06] Current task: Synthesis +++ Current Phase: Finished</co=
de></p>
<p><code>[00:00:06] Process terminated. Status: Failure</code></p>
<p><code>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D</code></p>
<p><code>Warnings: 3</code></p>
<p><code>Critical Warnings: 7</code></p>
<p><code>Errors: 8</code></p>
<p><code>BUILDER: Releasing IP location: /workarea/uhd/fpga/usrp3/top/n3xx/=
build-ip/xc7z100ffg900-2/cmplx_mul</code></p>
<p><code>make[1]: *** [/rfnoc-foo/fpga//ip/cmplx_mul/Makefile.inc:21: LIB_I=
P_CMPLX_MUL_TRGT] Error 1</code></p>
<p><code>make[1]: Leaving directory '/workarea/uhd/fpga/usrp3/top/n3xx'</co=
de></p>
<p><code>make: *** [Makefile:90: N3X0_IP] Error 2</code></p>
</div>
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
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BYAPR03MB46783F40DAD8EE1AF9C9550AD3DA9BYAPR03MB4678namp_--

--===============2074544324467728100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2074544324467728100==--

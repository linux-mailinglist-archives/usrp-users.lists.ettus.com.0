Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5031468A23A
	for <lists+usrp-users@lfdr.de>; Fri,  3 Feb 2023 19:48:45 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0CB038407C
	for <lists+usrp-users@lfdr.de>; Fri,  3 Feb 2023 13:48:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1675450123; bh=MPRzHDsOgeKsxPnloE3ciGDF6CniBgMRG8ABqes61k4=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IN/MlJ7oOPgrG9fgv8rMmqpEEM2uKf90aIBjWRkLtmherQ3Las++NzN07J4Aph9Dz
	 w+2NZKotuPz29HpwtKlLwFFYNQupbb09VInrYevAOcyGZleTkliw2crF1ov1+UZl9G
	 /SFQ7SX2hUzaf+Znjf7jC1X/2vjMB+YggYA4b/X8i87CZ3AQGgMxVN8tG3BZPRreQz
	 SsCHXImI1+xf2W3emrwaLZlREOYyJ81hR4QaxL1mmJ5in2IedHsfdb/zgRlmeTpVB1
	 iB64S6/KxZrqFlAq8P5vjr+/jUlouucK4RMV/W/gz2ZTLMlOk5DAED2kRpyV7OPFeZ
	 1KH7B6iMKcOKQ==
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam04on2054.outbound.protection.outlook.com [40.107.100.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 66581380B52
	for <usrp-users@lists.ettus.com>; Fri,  3 Feb 2023 13:48:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="A6+II9yV";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ViUza2yIHTzgG+B+v9gRhCuoFEC8DapgYt5/mwvBKXs2TNZapB6RI/wZlW5JM+am/TLdR5U3pc6PrDMu8DBZhjL4gq7H4LGcMyw/koRoby2aaYLCLWOLDjDwDY0YsTqhKiTsWyXSkryJKZE4V+08si623KFIRe5NdQRxNgJmEBq7pIaGqoEYSiFgrPILcmyGWpa2yRkH+djv8Q6Kbw7okFEA56A3DwU78yh8772Q6k1YjWR5DospwClcB8rE3a4HPPRZLL+qpnJSpkWEsgiIkE7JhrnkBa/r6mctBl3pd1W52H3ukcrw12hJ/iOA95gggUevO4OorZHAKAlB5+9uTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RN2awO5lswICSsusJxjhF5vDmxycMgv5WSSSk9atUqw=;
 b=Qydq/+GBPMej1797j1TXQjDVp9tflHUnkr5y+G84H1F6xWzlS78hLK6MZEOcwKjGs6lsxbeWVA931Nsxe8u3fQTZVuDj3nSOt8pJ9rOMfwlv1D3ArxYg9DnvshrkIcqL0UsQjiKmcfs2ck0royO7WNKNGBsmoN66A84eMOBJaxjWJTtFHwfS38LOV89tAPEKvLmHIoobJdl6CuXeiCW455y5m2VhY9nl77BIxcOc6RzjMHR63ICKDUHpVfGOpfU0SMpcQ5WF8vsGxS0cEst5wEEH3n3pM2YZtKx/wXK7tQb9cp0eyqruFgPNRwQ0RWsxrqi/cLSOaTpToqtS4B17OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RN2awO5lswICSsusJxjhF5vDmxycMgv5WSSSk9atUqw=;
 b=A6+II9yVGF7QP0XO1xMyMqnFW4pjpIVEIJJofJXFAxYsz3D/0udyk8zVuAYjydXACuN/b77aWOkmmklGXGTvxmgParsQd7ZIsLDN5HyQW2bxycKbh15RYToL88Mn+EYCqICXY2GWRjU/luNfMrVlRk38ILoHa1tQdANin1s5t4iDucBIMQf2e8Dq0yDGOh44WN0YxL7/iMEi23DrW0TGGiNzFUsptAwlZNy+Op4/5ALBaq4bGW+O6YpvG2s/+khXeeoexdG1byHPse0HSZTfg/TA+59s4DXfw+cuPsmZPRn98TY6K8kTtFHNUr2yz6Q40s46050sw9fMJZidpoobsw==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by DM6PR03MB5290.namprd03.prod.outlook.com (2603:10b6:5:241::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.33; Fri, 3 Feb
 2023 18:48:32 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::b0ce:a57b:7946:39b5]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::b0ce:a57b:7946:39b5%7]) with mapi id 15.20.6064.029; Fri, 3 Feb 2023
 18:48:32 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: Wade Fife <wade.fife@ettus.com>
Thread-Topic: [USRP-users] Re: Error when synthesizing example OOT block : IP
 "cmplx_mul" is locked
Thread-Index: AQHZNcJJ+zOZIyLwc0quNEfWmSQD5q65HhxMgAN4LICAAP03Vw==
Date: Fri, 3 Feb 2023 18:48:32 +0000
Message-ID: 
 <BYAPR03MB46783B160B4CE02BA562E040D3D79@BYAPR03MB4678.namprd03.prod.outlook.com>
References: <UX8mi9utjbHMzjxx15xWBxXZPMWYdEURx50EsrFtWQ@lists.ettus.com>
 <BYAPR03MB467853DF27EFC17161E17D86D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
 <BYAPR03MB467806254313359B175385A6D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
 <BYAPR03MB4678F59BE3B3272608F8DB42D3D09@BYAPR03MB4678.namprd03.prod.outlook.com>
 <CAFche=gpxOnGaTJh=YaO25kCNP7=zhF8t4V+VU_PErhkwGp+fQ@mail.gmail.com>
In-Reply-To: 
 <CAFche=gpxOnGaTJh=YaO25kCNP7=zhF8t4V+VU_PErhkwGp+fQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|DM6PR03MB5290:EE_
x-ms-office365-filtering-correlation-id: f3c3f0c2-2ff4-4689-d52c-08db06173f87
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 DcAE3AHU6BofXoqtBzCUZAY3404ArZC3yL+4raHldAmEzRLG64MnsdjR9uH3y9bS2qZWhw0EH9xj9vt7ZkTEMsxzhvQqjhIMG2x3gIBrMsRVJ/BdAXN5cGVh8gUqJEkaMxVbC9LSC3CBp1YRGnr8XgrWogjcFyVbP7VFqFcIgk3Us3DyFXerSlxtMhSoETQnUe6YwrG87vZhFVjXSi1odeIL5V22u5vK5R6X7s7dolc8j0JhHvgkVrkb8vyzyatgs4iEERKzCI7YiEosylPxuQp+qpYMBh0F8jkURb4n6eRlS8V9+4SUyXJRvPHpHZGhJZR7n+KOU8X5b0PHFKZOOO+0dSyhAZwJSq7GZRQE+MD4g10QCTQ6sjoz+7h9FSlVqnE5zykW8eYSKxX0aUwfikMelbDND9iaP4GbLCPtWeGn491QgGCdEyNt7X0FtQp3rkryW9Xr2pMK5j/Qa2qvLWKf4Rzt4BdqLsPvRDOSrgeDC/GLs/VDzNl/8PjOAW7TPsTAHqwfLmy22k1bigLm1Zbog6nDcgAb49PBGv+4n1zr2figtTkCkcZcEmHR5W6M/wuAALceMi24e1LF+a9XpOMeSGoh2+gr7PIKbHqavq6Zf/Tx4/grPyPfvq93Tf078CvtabNYvA8IAKy1v38ppzs4yphLU4xuc6judXm52IUYV29PlW0C+3j9/ybEpWRlAofC/dGFewC+XQGopFGsesCdya4s4oahDDr3YtPKWSaYw3xQ+SrkRyPG7BfCYnP9uJpEaV1Xo3VbrW6QhgOeWA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39860400002)(376002)(136003)(366004)(346002)(396003)(451199018)(8936002)(66476007)(9686003)(66556008)(6506007)(5660300002)(41300700001)(66946007)(53546011)(52536014)(91956017)(19627405001)(76116006)(38070700005)(2906002)(316002)(122000001)(30864003)(33656002)(66446008)(6916009)(83380400001)(64756008)(7696005)(41320700001)(26005)(71200400001)(786003)(966005)(478600001)(55016003)(8676002)(38100700002)(166002)(4326008)(186003)(75432002)(86362001)(19627235002)(66899018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?S1btHhX78PD9uHx8nhzAr77ZkkJtNxcAQQwzwoHDMO7tZXj53KUb9C2x?=
 =?Windows-1252?Q?3LYB6Yk8vuiRUN6624jgaqjO2+3nD3zLOCClbsN9UY97D+RF3fJrcGlE?=
 =?Windows-1252?Q?1GQ848QbDI14JGfg0jy0XYk5ixSnNFEWgvIQkYNzzBKFWi88U0km2G0h?=
 =?Windows-1252?Q?rQebtJ2Xm/wnEpBMAPDJlfSb1EIETimSkuMDLLmVKYBiqamYtXwsYzUg?=
 =?Windows-1252?Q?HHj0LzXOa/F4cHbhkrzhXgMlXaKBNZFl3B6fLqpCjsbx51CigfCtObfT?=
 =?Windows-1252?Q?Get7pNFCdQUB3N6gbyxpun8tGzjQJzyJSCzRxZ99Hz/J3b38HmIayF/O?=
 =?Windows-1252?Q?4OYCwnyrG7AqMo4OnJksg82lbnLNNIc487k7XB86P+LBseSuNwj4iK3V?=
 =?Windows-1252?Q?rSdWg1qTzu22m7vRNFe9nh1JmEn/MmRGx2TIiw+D5LBfh24t8xhZZf8o?=
 =?Windows-1252?Q?qXQb+Pe2+gGdWz0RtvriVwlbcgdf5GOLm4SAmcewoK6CiXxigUqVHe5O?=
 =?Windows-1252?Q?Tfyafc6oiDO+683zQOraQjZV00F/jUV0y3tbHjh5FjZ4IetvgzGd3P5Q?=
 =?Windows-1252?Q?oVI4cO4vswbX35K4bs3TSfvSie3ynwRsJXwyPU2n6HSfiBNYNgxwlzvc?=
 =?Windows-1252?Q?73Rhgxt9ScAM9wsrgX4bOUqQ9p2jkWsKk4v2PE7Ybi6veKLLBe4SuOxK?=
 =?Windows-1252?Q?2nCZiR2p9vZ/QFpjcfv4AOpe7f4leg7EFvrYZ9a9PTBHkjBvWUioZt53?=
 =?Windows-1252?Q?i7VGzRnXb5fHTCP0du1lpgEVaD+6fuxlSfTrUUW2PZ17+Z+3ZDd01LMQ?=
 =?Windows-1252?Q?j0EkfSqkcMc+PvEYlcM3lI+Z4AyXSyBJlF2AagBo0S5Fm/0lCWx+bSL+?=
 =?Windows-1252?Q?spfPbYwlTXah6z37EOeUBFEmTp0/uw31LeIypVljPKYX3Gt39aOexlC0?=
 =?Windows-1252?Q?fsmY4YSw7ducJNNZMVfgr96Dwu6Geo2NOdClcy1freLUFuohLANfW0/M?=
 =?Windows-1252?Q?HHybg32TuhSb2hnq9w9wWUN5ZkDWsO24T0ZGSKkADSELMNtfKeqjWYn4?=
 =?Windows-1252?Q?nwupeEAwYgYbuebhSjnt5y0OAYfXJ3GKodXBdNmZRxMoH4ap21d1E9eD?=
 =?Windows-1252?Q?PqyvL4jPqemHGJXnF/mdZGrG8QHxJiRgnKbFaiMH+xcZpk1TADJAfps4?=
 =?Windows-1252?Q?qe6hMT7+28JxSiLLFn3VxSmoj7i28t17wrbYdeeIZXaw+WOP8L+jwY0I?=
 =?Windows-1252?Q?M0krV/OXuddyi3GtuNPutQezTYHWzmEiv6/f8hqJYan/WCC4zTTmJzOh?=
 =?Windows-1252?Q?+rirNUjt7CMegjex2QDCHJndKsWZs5XcTi2wMJhM84Gga4RJXXfz1OeE?=
 =?Windows-1252?Q?XXpi5gOJxLo4di+KeNhgClwN1C+nxbdi4ft9jX9UP1wO16KZf5nzlHWH?=
 =?Windows-1252?Q?t6AKhB0XJou10fmoNxXFlTOE/Ig7cAcZG+kzIlLAy+lTC6IuNFV0f1oi?=
 =?Windows-1252?Q?imcaOErNzUjEAW5OgNWY7v4I0/gcfet+VUw/Bbecdz3l3t1RFaoTHj68?=
 =?Windows-1252?Q?N4dqcVCbzJFvuqzKA9E6w5flXKrubrT4rF4Ic+P0JFwLyXpa9XF4VM/j?=
 =?Windows-1252?Q?lmce7jkYuOLVpf+sWUcTdW+yvQCOAlw4heSv8yxg2o2trYGknhFCtWaI?=
 =?Windows-1252?Q?kEXbJF+NGRMv8ozCbhNYZlF2RDfBL4IK?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3c3f0c2-2ff4-4689-d52c-08db06173f87
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 18:48:32.2781
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8XT1aLN++Xs7T63VNaSk1LW/BB5/1cCCqtO5ew9A4cU2+dkPPc3uMjj4cxgq6nbny5cOKJj1gVFkaVQT0HgjOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB5290
Message-ID-Hash: CFDAMMI4LIN7B2E2XTB7FHODLNNNODAO
X-Message-ID-Hash: CFDAMMI4LIN7B2E2XTB7FHODLNNNODAO
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error when synthesizing example OOT block : IP "cmplx_mul" is locked
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z54P5WKT7UF64P3CXJR6NHAQW2MLC7ME/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9062895934198535615=="

--===============9062895934198535615==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB46783B160B4CE02BA562E040D3D79BYAPR03MB4678namp_"

--_000_BYAPR03MB46783B160B4CE02BA562E040D3D79BYAPR03MB4678namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

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
From: Wade Fife <wade.fife@ettus.com>
Sent: Thursday, February 2, 2023 7:37 PM
To: Minutolo, Lorenzo <minutolo@caltech.edu>
Cc: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
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

--_000_BYAPR03MB46783B160B4CE02BA562E040D3D79BYAPR03MB4678namp_
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
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted1">
This is the output of&nbsp;source setupenv.sh</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Setting up a 64-bit FPGA build environment for the USRP-X3x0...
<div class=3D"ContentPasted0">- Vivado: Found (/tools/Xilinx/Vivado/2021.1/=
bin)</div>
<div class=3D"ContentPasted0">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Installed =
version is Vivado v2021.1_AR76780 (64-bit)</div>
<div><br class=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0">Environment successfully initialized.</div>
<div class=3D"ContentPasted0"><br>
</div>
<div class=3D"ContentPasted0">I ended up opening the hbXX cores with vivado=
 and updating them to my version. That makes the firmware compile. However,=
 it complains a lot with critical warnings about FIR filters during compile=
. Specifically, I read this line that
 makes me worry:</div>
<div class=3D"ContentPasted0"><br>
</div>
<div class=3D"ContentPasted0"><span style=3D"color: rgb(37, 43, 55); font-f=
amily: Calibri, Helvetica, sans-serif; font-size: 12pt; text-align: left; b=
ackground-color: rgb(255, 255, 255); display: inline !important;" class=3D"=
ContentPasted2 ContentPasted3">CRITICAL
 WARNING: [Designutils 20-1280] Could not find module 'axi_hb31'. The XDC f=
ile /home/lorenzo/uhd/fpga/usrp3/top/UHD_revamp.gen/sources_1/ip/axi_hb31/c=
onstraints/fir_compiler_v7_2.xdc will not be read for any cell of this modu=
le.</span><br>
</div>
<div class=3D"ContentPasted0"><span style=3D"color: rgb(37, 43, 55); font-f=
amily: Calibri, Helvetica, sans-serif; font-size: 12pt; text-align: left; b=
ackground-color: rgb(255, 255, 255); display: inline !important;" class=3D"=
ContentPasted2 ContentPasted3"><br>
</span></div>
<div class=3D"ContentPasted0"><span style=3D"color: rgb(37, 43, 55); font-f=
amily: Calibri, Helvetica, sans-serif; font-size: 12pt; text-align: left; b=
ackground-color: rgb(255, 255, 255); display: inline !important;" class=3D"=
ContentPasted2 ContentPasted3">Note that
 the folder UHD_revamp is the vivado project I used to import the xci files=
 for updating. Maybe there is a better way to open the .xci without creatin=
g a new project?</span></div>
<div class=3D"ContentPasted0"><span style=3D"color: rgb(37, 43, 55); font-f=
amily: Calibri, Helvetica, sans-serif; font-size: 12pt; text-align: left; b=
ackground-color: rgb(255, 255, 255); display: inline !important;" class=3D"=
ContentPasted2 ContentPasted3"><br>
</span></div>
<div class=3D"ContentPasted0"><span style=3D"color: rgb(37, 43, 55); font-f=
amily: Calibri, Helvetica, sans-serif; font-size: 12pt; text-align: left; b=
ackground-color: rgb(255, 255, 255); display: inline !important;" class=3D"=
ContentPasted2 ContentPasted3">Thanks,</span></div>
<div class=3D"ContentPasted0"><span style=3D"color: rgb(37, 43, 55); font-f=
amily: Calibri, Helvetica, sans-serif; font-size: 12pt; text-align: left; b=
ackground-color: rgb(255, 255, 255); display: inline !important;" class=3D"=
ContentPasted2 ContentPasted3">Lorenzo</span></div>
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Wade Fife &lt;wade.fi=
fe@ettus.com&gt;<br>
<b>Sent:</b> Thursday, February 2, 2023 7:37 PM<br>
<b>To:</b> Minutolo, Lorenzo &lt;minutolo@caltech.edu&gt;<br>
<b>Cc:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
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
3/lib/ip/axi_hb31/axi_hb31.xci#L247">https://github.com/EttusResearch/uhd/b=
lob/UHD-4.4/fpga/usrp3/lib/ip/axi_hb31/axi_hb31.xci#L247</a></div>
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
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Jan 31, 2023 at 5:06 PM Min=
utolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltech=
.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div class=3D"x_msg2151749560673001324">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0); background-color:rgb(255,255,255)">
After reading about this conversation on the mailing list&nbsp;<a href=3D"h=
ttps://lists.ettus.com/empathy/thread/DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD" id=
=3D"x_m_2829748491903905892LPNoLPOWALinkPreview" target=3D"_blank">https://=
lists.ettus.com/empathy/thread/DGJBPK6YADKXM2ETKPEVQQ7F5ALJCIDD</a></div>
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
=3D"x_m_2829748491903905892LPlnk350834" target=3D"_blank">
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
<div id=3D"x_m_2829748491903905892appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_2829748491903905892divRplyFwdMsg" dir=3D"ltr"><font face=3D"=
Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b=
> Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu" target=3D"_=
blank">minutolo@caltech.edu</a>&gt;<br>
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
<div id=3D"x_m_2829748491903905892x_appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_2829748491903905892x_divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From=
:</b> Minutolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu" target=
=3D"_blank">minutolo@caltech.edu</a>&gt;<br>
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
<div id=3D"x_m_2829748491903905892x_x_appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_2829748491903905892x_x_divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From=
:</b>
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
</body>
</html>

--_000_BYAPR03MB46783B160B4CE02BA562E040D3D79BYAPR03MB4678namp_--

--===============9062895934198535615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9062895934198535615==--

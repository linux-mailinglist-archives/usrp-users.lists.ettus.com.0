Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1BF596605
	for <lists+usrp-users@lfdr.de>; Wed, 17 Aug 2022 01:32:55 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D7F78380DE5
	for <lists+usrp-users@lfdr.de>; Tue, 16 Aug 2022 19:32:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660692774; bh=ugN5up8IzZ43GLkkJKRidG88kRzbpsk/qmkG4RDaUck=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=zpWQBKX1cLLC+5dYVhR6LMO9nj/6U4LExjgc2zXkYhmIxEXCLgy8TAYUANyywr0h6
	 btcCmKRbL7UZbRFh8FQr7Ayk1YMbTF41nPJnEIGC9jF9lC57+WGwwR3e0/+16OGLPk
	 RlJmGSQW+jryEp/4CpHu+V95k2io0hma8Vwc8fJmeyBOI3lifIoDdoAYHJhHOoKaCp
	 IifBj8sHjM+MnFMh0dr2sXV1RD8VbmSOPRVIk5Lc8ehVHn+dKn+zP2XM2XHfu9nihO
	 KpRxs1pS64ekUPEN4HAGqFEFlhQ+rJQCP1AnbxGRTjcezetaP+ZWXXWo7DFX+svPp6
	 CXsCbqRLOVPog==
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2051.outbound.protection.outlook.com [40.107.94.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 2452E380BB3
	for <usrp-users@lists.ettus.com>; Tue, 16 Aug 2022 19:32:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="4/bM6Jld";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ch9701oVvGzFEjTvQiPGwwSEQZWS9vNJP/XVt6Uimw4kemHPgopjbn4/fyRfGQM6ZVpZcOKwyZikZs/pIWZJO6ABBCTJztl75xVkjx0kJJ7qVgY18MHBj/L/paa/M7jLkk9EoQQAHd37lzy0T3RILlNio1xVIqNDRccOrnjZgIWE68RJxQZGhQ+s/tghlIOAiONcqQtXohNgZEvd+D9llfZF8zXKkmsjlMOYlDtuCyeghoF+oA3KHR50zpd7BgBiprdEVtMLGTdiqidIYUpNqt8Lj2y+AVnh8W9orgGgqmbZXAcKG5dEwcL2OI9ruoRaiaGoMSIVsJrYBB6wIagCSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kQd/dL3PrcJ6giJObOQi+WjkkP5mXGDPVRzt+ktwtFM=;
 b=Rvpr6fOeRt2f5UnG/5PUiqKu5P3MHpOSIG3QmhgPNx9w/4QdOr41rY4ePGz+u2p1WT14TJThxBkQdSsS9xkXRwIg9ES6HywLJ63C1OHJieKZpZNcUSLV7jfrUNS7DtjfA1ehp9Zpjhxq2h5mFmRzEOQWNgorLHzJUjyW8tysZVbx2pot90WN5zhr0ySm3OaoVfmO+MnsNBBQlD0TJKEJUaCgBPFOSKnoy5RxSLgQcanRMiQoMHZzNOJd0NLxgzWOCC4h8tkf1S46wfQLeqikPPlEDkVcvCRvoH0/rlKc2QHDkVQ/wzIXkpmSJSZQ8dL5dNvVwTnIOHpB1dLBFR91RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kQd/dL3PrcJ6giJObOQi+WjkkP5mXGDPVRzt+ktwtFM=;
 b=4/bM6JldtizHtNcqOQswLSY3YtMCz6sS48kMxwEgdrMI+4TFr1XVOmabB3wFAZJs+7W16h4bxHye6wxxKO1RRnAR2DUZtZgNvgKqGBP6warENZwpdsul9h8zoZjSUOAtTIcOGZkwp245AW1M/ls2+eWuGozI1p7B8HnsZo9mv9ZAfaXryVyFMQY2ZNfd3brS787l42btypKkAi+uCk0XanVqg2n8W+ahKMxVJ2RFjFzTAD2Ee0K3aWVkKIjzHiaZ3LRKuuQDpCP75y10iJo+7Kb4Lzrr4TlSjl/FcPE6V7cR2eUZnz9aB1qVl8VsoUY1JnUKm6PV28niWBRGNT9Q/g==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by SJ0PR03MB5693.namprd03.prod.outlook.com (2603:10b6:a03:2de::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Tue, 16 Aug
 2022 23:31:57 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::181f:ba31:5bbd:6230]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::181f:ba31:5bbd:6230%4]) with mapi id 15.20.5504.027; Tue, 16 Aug 2022
 23:31:57 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: rfnoc custom block design workflow
Thread-Index: AQHYscWcSMbXlaOtpE+URA0F6LEyPA==
Date: Tue, 16 Aug 2022 23:31:56 +0000
Message-ID: 
 <BYAPR03MB4678DE3E20CEF1CA12103A0BD36B9@BYAPR03MB4678.namprd03.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90f09023-c10a-45c7-760e-08da7fdf8284
x-ms-traffictypediagnostic: SJ0PR03MB5693:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 aKT75puvOwzv6Xa375XcLzMZUE2y5zxXsbSBKBuCuOdIRj4DbRLj3oZF+s7srm8dDjcjnUCuiDYzZXinvA2gsBj7W0UrhWWsOIwPdmJwOKTMZTFrAMz7iuEH2UXyaa39FKUk9zkhVrHmqc6uEgWhwOQUsdOkPsFUw31alTgWxyNOMEObeUYq7xv5iN7ELZe4Ly47aQAM2L0xlTsG6uftGlz5YSd3RdHaQP4KiBN0r+uikT/0iApEg7KsKW97eFoSwrm2l7FF79JU5xEXXfWdvBps0lnW02IdX7vIIp+QRZ4XNRe90SXUPU+VqLVo+ZRAt6XIALu/3ZCh+WdDgdtuS/dqgzgdjNEjq8DGsm30Z9AU5zE6USS2ljUBxzP11LWOrE+kerW7g7GlxtXk+S4xesMzaB1Rmc0Z+h1fBeD9voB9haGkUUGSdSppRaJoKODJrEny+hWCeivVgPHvxD3h3ZJ6jhOlP6pwqaOsrIrKv3kzscxkeiLEsnBzOZ6ilxrhXICfk3jTcXlIaawzcABZKSEQmNA5B8bRIcHiXiA8VPWuNa6462vgwlr78IGs8K4WRRuI8J7AX0+8vv7IWdaCbuBkCLDGo019+aPSbO6FcbXn5B80e5p5z4UByMy42JpofdG/oDuWCb8j8HceCGrF4vX8+w7RydRjdDZfYD66i5Jry2BbAUlLEnx4IZddEvpmWX3vWezc8rdajUFveAfInpeCSBjxtgQvKMQMVM501r0bFm8ZROZqH6iyqv3MdLemL8RaJqLEunLJFy0DweSGUndAwY9zbIdUmEpV9TiCtxI=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(366004)(346002)(396003)(376002)(39860400002)(71200400001)(316002)(41300700001)(41320700001)(66446008)(6916009)(91956017)(76116006)(66556008)(38100700002)(478600001)(64756008)(8676002)(66476007)(8936002)(5660300002)(66946007)(786003)(2906002)(52536014)(122000001)(38070700005)(75432002)(26005)(33656002)(86362001)(7696005)(19627405001)(6506007)(186003)(9686003)(55016003)(83380400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?nm9D2hvwa+Qs5WkLY4MbIeTdBRJl9fckYRYfXez7gqcGhz0zZPVsQGQXqu?=
 =?iso-8859-1?Q?hWV7Ngp+8aok7AeTShOF8w0VZoXJ+LsqfJETTOPwdBK+mRaQ0A1rI12y39?=
 =?iso-8859-1?Q?Llw/VXLiu7894OFfjX3AikBwfVZ4uKx6xQ67ZOTY1QzbIceM04O/5421BP?=
 =?iso-8859-1?Q?6+rB8aLqV2qRNRncXnSZkiAUsa80D5GLt01SToQ1YF572gKhTdlPh8KYJG?=
 =?iso-8859-1?Q?0sIdLjvowUlB8J9N5bxKUra/DyNsrFy6Uev3Y8MA3/8gO/PSVrrDJW/nsO?=
 =?iso-8859-1?Q?62SfRPaoa83DFtc7sHyi6wIKNqWDz5QvOHdvy4phmtIz4eckHga3oqYQNe?=
 =?iso-8859-1?Q?yVcudX30Bge0v2zHfNZo79Sx2ia81PQFHAIWJ3zLiZAJoxSfxXYJOgjMJ8?=
 =?iso-8859-1?Q?/rLnKLC5e/I6KaeRunojGvV3sMvQ8K2PyBFdX/mdFREtff30FldZOpADwt?=
 =?iso-8859-1?Q?QaZlJQlf/LGnH3ATE+Y1MQpfW5hfiiTMc4wYQ81cOD3FVF9qg1UfRPGNir?=
 =?iso-8859-1?Q?I4Dytkz/jt7HP+gvsrUpPFlXAs6IvyeYN14EfS1r6GmzPLqE3ubOJyivJD?=
 =?iso-8859-1?Q?uQvAKVkpnZt+tYblsGRel9vDIO6oAVyx++EigK4B721h5U1kFKpc20PeEh?=
 =?iso-8859-1?Q?p+4sVhAci56ByWVZ2gNDzWwK3wNl5iWwnSLBkuwBj9HKwBJPitQh411Qcc?=
 =?iso-8859-1?Q?7H8/gP69cRH7LkJjrMEnpKMggXgfz5kTtGpm58e1t475Awf9CoHqrrQ558?=
 =?iso-8859-1?Q?fD47HA9eA7zkuCKxTGMMB2XRnkyGrfUUa1J3XFXVQNrqR2rYNfTwH+q4Z8?=
 =?iso-8859-1?Q?M+OHSXeBwe0qrI7TRO1mXBfQIB8WZMb7AM1THRLk3c49kwgu5H7Ez8IO2t?=
 =?iso-8859-1?Q?X6BwORv4BPxcoglfLpWCqMIpv90yZwGYrs+WQDaVBdhFFtL2lM9lOfJfJa?=
 =?iso-8859-1?Q?WRTGp+wB1tqe1nnkO+W12opbGlGOk6ydOPvH0Q3DBgid5esxVHKVykCBNR?=
 =?iso-8859-1?Q?7qrfmyvYQFshnXJVwRyddJ5Z41iqjurX8Ray4uXS4I2AHotukhzfKzNpcP?=
 =?iso-8859-1?Q?EfHB8ODRosQyvL4gA9W3u7g4w3nt4B9IFbCxq4rIds7tRC4lLM/ILqJnoI?=
 =?iso-8859-1?Q?DAI72qNXA3y3g3vJazHCj0+OFgeyoqFR3jbwlVj3F5/KukQqvwNsimgWho?=
 =?iso-8859-1?Q?GtVUUnhXfeH/a1JrUVyjzfXBPdzgLzh3dCyX7CDgKVhRhvazwURgmjT1Vw?=
 =?iso-8859-1?Q?2WiFTW7z7XOnpG2XMk3pLTcl0+Acf0THqD+aYCCzD2LAvNah3WX1+AhPNr?=
 =?iso-8859-1?Q?cGBSLWwUHmyVKSd70zY0eiCW0sKVfaNZfR6SrxKfIDBpV3d9sW3H6vvpNs?=
 =?iso-8859-1?Q?qXwFOg3hZiiLKD7ck5NjvBD13X+XOHUYJEAvbV34go66aobu4Bctr5ajWl?=
 =?iso-8859-1?Q?koaD2iYO8zvDhAg7nXB/Ga8aBigxK62byqIr30rh9HvYel76u/65RLrVTt?=
 =?iso-8859-1?Q?IKCa2/0GS/eTb8FDgsPacSr0XnGzeIo00swSlATSETbFe/nOwTiWF7s9yY?=
 =?iso-8859-1?Q?V6eEgGu8ahFb3A5V9ISm6PPgVvdVKRSYAM3ym5RVXoYqGjwTimC25MUcCY?=
 =?iso-8859-1?Q?HF1C+La2nYTuaYR77+8Unv4/o6Xa0y1kKw?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90f09023-c10a-45c7-760e-08da7fdf8284
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 23:31:57.0031
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TtNYMBLpCWE1GCZ4CKKiWumw3XpzChPrKlDb1i5IwANlzO8HtJjapMmnN3KAqMl3ExKCpaRCqKyI0fbrJyl5Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR03MB5693
Message-ID-Hash: XIARAEWGSQMAX3HOMGGR6R5HME3AARFJ
X-Message-ID-Hash: XIARAEWGSQMAX3HOMGGR6R5HME3AARFJ
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] rfnoc custom block design workflow
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LOWRBUIKT3A6AAZY7Y3DATTGCQBZJ764/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8795011480681010697=="

--===============8795011480681010697==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB4678DE3E20CEF1CA12103A0BD36B9BYAPR03MB4678namp_"

--_000_BYAPR03MB4678DE3E20CEF1CA12103A0BD36B9BYAPR03MB4678namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,
I'm trying to make a custom OOT block for rfnoc4.
I already went through the synthesis of the stock rfnoc firmware, as well a=
s the gain example: all works well on my x300.
I added some custom logic in the gain example's verilog and I am quite sati=
sfied with the results.

The next step for me is to integrate a more complex design that includes CO=
RDICs, FFTs and other IPs from Xilinx.
To do that, I plan to develop a block design in Vivado and pass it to the r=
fnoc infrastructure.

I'd like to know if you attempted this workflow and if there is a guide of =
some sort for getting started.

Right now, I am quite lost.

  1.  The IPs that Vivado generate have an AXI interface, I suspect I canno=
t directly reproduce the steps to implement the gain block.
  2.  Once I have my top module, how do I integrate it in the rfnoc workflo=
w?

A basic example of the gain block (or even an empty pass-through block) imp=
lemented via the Vivado block design technique would be really appreciated.

I work for a non-profit research institution (Caltech); all my results will=
 be available under some open-source license. My plan is also to release a =
guide that documents how I developed the firmware.

Thanks,
Lorenzo


--_000_BYAPR03MB4678DE3E20CEF1CA12103A0BD36B9BYAPR03MB4678namp_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hi All,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I'm trying to make a custom OOT block for rfnoc4.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I already went through the synthesis of the stock rfnoc firmware, as well a=
s the gain example: all works well on my x300.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I added some custom logic in the gain example's verilog and I am quite sati=
sfied&nbsp;with the results.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
The next step for me is to integrate a more complex design that includes CO=
RDICs, FFTs and other IPs from Xilinx.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
To do that, I plan to develop a block design in Vivado and pass it to the r=
fnoc infrastructure.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I'd like to know if you attempted this workflow and if there is a guide of =
some sort for getting started.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Right now, I am quite lost.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<ol>
<li><span>The IPs that Vivado generate have an AXI interface, I suspect I c=
annot directly reproduce the steps to implement the gain block.</span></li>=
<li>Once I have my top module, how do I integrate it in the rfnoc workflow?=
</li></ol>
<div>A basic example of the gain block (or even an empty pass-through block=
) implemented via the Vivado block design technique would be really appreci=
ated.</div>
<div><br>
</div>
<div>I work for a non-profit research institution (Caltech); all my results=
 will be available under some open-source license. My plan is also to relea=
se a guide that documents how I developed the firmware.</div>
<div><br>
</div>
<div>Thanks,
<div>Lorenzo</div>
</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
</body>
</html>

--_000_BYAPR03MB4678DE3E20CEF1CA12103A0BD36B9BYAPR03MB4678namp_--

--===============8795011480681010697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8795011480681010697==--

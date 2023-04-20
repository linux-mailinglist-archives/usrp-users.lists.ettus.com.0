Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 903466E9778
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 16:45:28 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DFC74384039
	for <lists+usrp-users@lfdr.de>; Thu, 20 Apr 2023 10:45:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682001927; bh=tBuGiiyOo/K7e/nYIDPlLHeTQK5yyHL2DZ58O7aVI4c=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=RRLp6truMO+BFhp8Y1rHtzlTxTN+e+d1SKK6X2QzNuW5N+rO2Ix6oCc1af0v4IyOR
	 n87Uw7iE1ieEOqNYplT7BaaC+7j8md5K/J6V9qZcT7xdOizQZoMCsteJEdeVPTI8Ng
	 CzxYat1mhfUbgRZDH53QeW9A0XrUbyyzMc4bncHK+cEFPuTomjc1odcaZP0jiW+haW
	 vRBVNLEYV5uVih8IDQlSpFgvcfyCsoyKc5B3clj/Q59Z+0xccM+ctCJh2N1S27D1cQ
	 u+mnKVJxBRl4yICRfGyOxW4oRKZ0+kkFoQKne68fhXVkJtyqup31mNGyErTPvoUeA7
	 bzqMcYqRiI7pA==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.183])
	by mm2.emwd.com (Postfix) with ESMTPS id BEFFB3841BA
	for <usrp-users@lists.ettus.com>; Thu, 20 Apr 2023 10:44:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="W50Puhkz";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11lp2174.outbound.protection.outlook.com [104.47.56.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id F26C89C007D;
	Thu, 20 Apr 2023 14:44:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l6+XOtV3RwpIKFwZjQcTqdjiuf7Qluw/rVqnuxWjVqVqu6wIUpkQC4xDZZPSPG7+I8ibYo/ffnOYuc0dusmO8l7+zNkxdOARYV1TiSBrUuL0t0CjDTvSTVnZICQ4/k/QgnZjFh1ArTRlHVnDUES6Wbp0xSZZM0zX480LuXRcpTfPKbvMt0Gwz5w42HaK/ZEXi2jRX5KZ5qWnQWU5kYPijJf7phT5N3a8aQLGl1OeOx5f8c4siDgxUtqKiIXILXzOyYlgj00pxMMpeZnwrbSDp0bHodOq0go5WZOv4/pNR25g/2srNQMDWAUCyD1TorUHAw+oVlkVcDYTZl6fZ/dixA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1uOpNIDi78Zpcj/i7wwl3j/1Y4QUuIAw0sjzG58M78U=;
 b=AaIM3Q+bZpOaTBGJOqkDPq1Kb97tEBfKbZwHP5bGx9eYMDnJLUfshuyUc/lg5DVxOZ/RwiINV/Ss4tm36U4vcIeVTlJtTF1TM/63406ltI0TfU1gTZ3l4qK2NOUUyTXBkYo3457DTK60UFKFFdxKBfn/By/6cFy8txbETZDSBjoTgJNCNFK5h+nQ4I62RV5w8LaSIIpYehqQ9HwujHjVOOkQ+2D/mNbmyh9NL8akVd0HmMj2V8zj4+OGdk/FkbO/C688UpHGY1oCWImKOfrpO1p9J8r7CHFcmdiKIM/rOavajBGRYI9K2Mhjr5haY3oq7aeEfYIOwh1nFEOXEFGuyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1uOpNIDi78Zpcj/i7wwl3j/1Y4QUuIAw0sjzG58M78U=;
 b=W50PuhkzY2YREL4g/ge96MWD6H/7yaPmT/38g7K7DqxcGycm2gcavWN7yuKrTGW8BbGViKOBkcSNbJH9WL+eHunRchAE2vR6UAEpQdifoQQ/hdFsVGkF1ErfPTE+yVKUYSpXywMG9cQugc2BwYQ4OCSJ0zyOSZYCrbyt52wE7cA=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by DM4PR12MB6064.namprd12.prod.outlook.com (2603:10b6:8:af::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 14:44:43 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::faa2:a0cd:6825:d50f]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::faa2:a0cd:6825:d50f%4]) with mapi id 15.20.6298.030; Thu, 20 Apr 2023
 14:44:43 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 SFP MAC issue
Thread-Index: AQHZc42xO0n+DcHBGEG8MLnjd0jq+q80QiYAgAACpeU=
Date: Thu, 20 Apr 2023 14:44:43 +0000
Message-ID: 
 <MN2PR12MB331242313575B0B82520D48CB8639@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB331268F8C3D8C7217ACCCE37B8639@MN2PR12MB3312.namprd12.prod.outlook.com>
 <6ab98bea-9481-32e0-aef2-4d9dd9394e66@gmail.com>
In-Reply-To: <6ab98bea-9481-32e0-aef2-4d9dd9394e66@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB3312:EE_|DM4PR12MB6064:EE_
x-ms-office365-filtering-correlation-id: 0552f920-7f18-4ca2-8960-08db41adc769
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 0sRgfDvEzP1w8tXCi93gR+jg9/fSxKUxll+ISTzY6lHamDX16OMK/LoBt63OAXZjgxXJwOey3axB3CokzjTGPVn26Hg8had3Q9ZIOj89j6iwWVbWD3gRWRfK/wW5MwT8F5sJxzwVvQgIayEiSmHOD7Z91OTZv6THucPXD8VKgr3/OQ353nR2PDV8UBFm6BKZcJ10R7Zl/tNOCZQUfGKTG0/WaTuybaogSORd82PJWAsuE7r4BRrdX/yybsHfq68mrOXiuSFIV1IqKIEDdxrD0qrHa6de+EX5UPw23v6TufqVjG2VSozyoxGJw7t/s9eKNhzMrwthkRCgJStU+uZJO6s0XE4tH0AwfCs5ppgs+l/OUndHnFne7NHFoHMy8YOHoVUkCW2ifYdFhvBTElf0PNMTmIuEAkSx0CtmJFyYQzGUEHI9pmtCdlbPxF1omt04CJnrm96ww+XJ9h1FsCPVXjFbJaSf1S0W/erZtTKj2zOoK48f6sLz8AqT1zWYKKl+aEfGBvbLSATP26Uf1woT3W6rylkU4Nck9apr9nKNbfbFMcAbUtDuy/hxOFDbOZgbocqsunpsG3FPDHoQ18jcPXEXE/tn4crd/rbnUy0qpRnDhRWqLDF+9odu1tMi0mI3
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(346002)(366004)(376002)(136003)(396003)(39830400003)(451199021)(19627405001)(55016003)(6506007)(26005)(9686003)(186003)(316002)(53546011)(8676002)(8936002)(2906002)(86362001)(33656002)(5660300002)(52536014)(478600001)(110136005)(66556008)(83380400001)(41300700001)(122000001)(38070700005)(38100700002)(66946007)(64756008)(66446008)(66476007)(7696005)(76116006)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?bwNZRr3hdOtJozX8v3uaD4/AqhCznrmFrLAkjEzlQo+NZWO74iKQYHpZqjCB?=
 =?us-ascii?Q?5h586AeHH95y4gyaVvSSyHZNPibHXgFp5G1hyFeX0szdpnyCZG+AWNRdjF4h?=
 =?us-ascii?Q?ezyjPJAzg5NbVKxPZwDPSvshbvJtndZmGkrCkxovEJ+iNQSczSp6rm1Rvsfv?=
 =?us-ascii?Q?hkwtw49biMqHcr2hm8fcOseH5OJ2l2b89JaxFQFX3HADSpN3RhGu8VQe6cQr?=
 =?us-ascii?Q?DCADBRqfrVuCEq9kFYlkIvFSK8ebJCxm8CODNO269owzxw/wNu/FIrz9RoFA?=
 =?us-ascii?Q?7tK9uI4gGTdBGM7H4335OaYqhBatVoekWHShibTLdBxw0tbkA33soXCjxK1n?=
 =?us-ascii?Q?ja5D/aXLUBCdFGOemw3QErpEavmklDc8QwD06yC4EcBGdZjndye90s2bhok/?=
 =?us-ascii?Q?HuCX/XRI80cOrHGQuN3ZLntqaGoBBj4NJjB7i2gclqsAi9VbDD9FRFLTnAq3?=
 =?us-ascii?Q?2OL7x7ILWSjiXv0BVoNVUHVhAVN4ec3H2eCoxboU2UF1M/LFDyAl87uIkomT?=
 =?us-ascii?Q?gLB1MS33/G8S+Vi8AC2NSv2zz+2K7rRfr+1jUcpmj3Mf3hQuJynhge8lRTbL?=
 =?us-ascii?Q?7zYhmMHyFeDGLTS6JsCz0l3/4xARNdBQdMGG5PTul1KAObTcLH27Rvaa78+P?=
 =?us-ascii?Q?xPFWTNQrvQbn9d+V15TJBGyJVnci41XxtAkKqXBL94M/NjXvTklNGbc/qwuP?=
 =?us-ascii?Q?wQvAIvoNOFj7AoeKI6SQXgzofMFLpJBSd7ogBt6+XVu/IidqYvy034zah6cB?=
 =?us-ascii?Q?0x19tPDQgI9kgPaNrhQzYvDM51yhlVx+zX/rI2Tt2MP/po/y7eD1ZcUCmwGP?=
 =?us-ascii?Q?/NGtBST3KrbtpJcr+fgyE52Q4xEWUarQjRzomLDIGMfrYY9ocyYd0YfyEjRg?=
 =?us-ascii?Q?x1N8GJUcyo4qPJwMqFukOZ0aVZi94jeCuNs2k+bltTcKGqp+k39dLfyGbVOJ?=
 =?us-ascii?Q?B3f5K3yYgBeVZG28tI7VfVaidkdmEO6JgbOovsg9Q5rxjd8X+cqwEDkwxQ3E?=
 =?us-ascii?Q?HSTLzasmF4dJgedaoWFvGApeKsY10vyImIu19NCTTc+ghhRqDJ+u4x+j9iV3?=
 =?us-ascii?Q?AyGF6+P8kH92+2aydQaiP6lyvCKd/CRnmaKoJE/2fEERIziFlEln2zwoPv6Q?=
 =?us-ascii?Q?Yb9Rl1JQ/B83o7l6iktMpjr9ntTRkLY0N/1g3CLXXmaojUN1aEMakRTFfPaY?=
 =?us-ascii?Q?5bQw/bqHCiC4VLpIlVpz4TF2sOn7Am/p2FEIIEgiDE/uFz+PdftueJWa7KWd?=
 =?us-ascii?Q?MH9H4kS4aZMZpjD5xUWPv/0xiN69T8lWx941DRbpI759O9o572IlwC9UIJDA?=
 =?us-ascii?Q?h4n1o5uu/y+VO+7+LU2jIkMQeiJsMbP60vBmZN7hGEJwMo7SXhW2fY3l9/TI?=
 =?us-ascii?Q?I5xuom+NQ/iCJLv5cNM1LeEhJlXvZF/Vews59T2+Q5UYF1m6oDjAX8gAvils?=
 =?us-ascii?Q?SCwZh/qYW9O7+9Mbd4JeAWywTtHhMog0ezichX+y1eOdvNKHZxkjhzdac30i?=
 =?us-ascii?Q?DvZvM8Jw55E6JegAPQmzHkWL696ZwV8fybjSEmjBsN/Hpw5g7GcXafRYun8d?=
 =?us-ascii?Q?QJEjGumZHY9K0v/FCWrRrLP8rM173TGDOQEHGOee?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0552f920-7f18-4ca2-8960-08db41adc769
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 14:44:43.3721
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e1v4ziFYl2JhhSyrIY6B0kGg8m2xBDNztFMpuJhsi7lsqb5+bz5xoXLePzVC8+rb52AjBQMiGbKlLw+hiMrkycEfzQooYjkFxCqNwWZQHQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6064
X-MDID: 1682001886-H4LxciLLjY5m
X-MDID-O: 
 us1;at1;1682001886;H4LxciLLjY5m;<jim@gardettoengineering.com>;4eb4d757e01bd96d38b4bcd2f53190c9
Message-ID-Hash: K2XSGID7GM2MWOHUOFET77WZHZAJ2P2P
X-Message-ID-Hash: K2XSGID7GM2MWOHUOFET77WZHZAJ2P2P
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 SFP MAC issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/73IJWPAV5X6JEVXA3EPPGTNKHAZXDGDB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7725880367142448940=="

--===============7725880367142448940==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB331242313575B0B82520D48CB8639MN2PR12MB3312namp_"

--_000_MN2PR12MB331242313575B0B82520D48CB8639MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks for the ideas Marcus. I did check ifconfig/ethtool, and my desktop d=
ebugging setup shows no RX errors on the corresponding 10Gbps interface. I'=
ll keep monitoring just in case it's a matter of time until something shows=
 up. I've been testing for a day or so now . . .

I forgot to mention in the first post that we have a number of devices othe=
r than Ettus radios connected to the 100Gbps switch, and it's only the N320=
's that are exhibiting this problem.

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Thursday, April 20, 2023 10:30 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 SFP MAC issue

On 20/04/2023 10:17, Jim Palladino wrote:
Hello,

We have multiple N320's connected to a managed 100Gbps switch. Each switch =
port has a QSFP -- so 4 10Gbps connections per port. We're connecting and u=
sing both 10Gbps SFP interfaces on each N320 radio to the switch. Basically=
, one 100Gbps port on the switch will handle 2 N320's via the QSFP. This ha=
s been working reliably for over a year using UHD 4.1.0.5.

Recently, we updated to UHD 4.4.0.0. Now, everything seems to work fine for=
 a finite amount of time (hours/days), but then port security on our switch=
 gets tripped for one of the ports. That radio's corresponding SFP interfac=
e is then unusable until that port gets reset on our managed switch. What s=
eems to be happening is that our switch is configured to only allow 1 MAC a=
ddress per "interface". If a different MAC address ever shows up, port secu=
rity trips. Due to security constaints, we're required to run with this MAC=
 limitation.

To debug this issue, our network administrators temporarily increased the n=
umber of allowed MAC addresses per 10Gbps interface to be set to 3 instead =
of 1. They were able to see in switch logs that eventually a MAC other than=
 that programmed in the N320s EEPROM showed up on that port. The offending =
MAC (not the proper MAC for that SFP N320 SFP interface) was "00:00:b8:ce:f=
6:22". We can't figure out where this is coming from, and haven't been able=
 to determine if this happens when rebooting a radio, loading the FPGA, bri=
nging up the SFP interfaces, randomly during streaming, or what.

A thought is that at some point (when the FPGA is programmed and or the SFP=
 interface comes up) some garbage bits come out of the interface -- maybe t=
he switch interprets this as some sort of malformed packet?

I've been running tests at my desk with an N320 connected directly to a 10G=
bps interface on my desk PC trying to somewhat reproduce the issue. I've be=
en running loops that reboot the N320, stream samples from the N320, reboot=
 while streaming, try to start streaming before the SFP interface is up, et=
c, etc. With wireshark I've been watching and have not seen any packets wit=
h MACs other than the proper MAC that the N320 should assign to that interf=
ace. However we're wondering if maybe we wouldn't see a malformed packet on=
 wireshark (might get blocked by the interface and not get passed up the st=
ack?). However, maybe in our normal setup the CISCO switch might see it? We=
 haven't been able to get logs from the switch that show anything beyond th=
e fact that another MAC showed up on that port at some point.

Sorry for all the words, but this has been a tough one to debug/reproduce. =
We've had these issues with all 5 N320s we have connected to the switch. Ag=
ain, we never saw this before updating to UHD 4.4.0.0. So either this is re=
lated to N320 behavior that changed when updating UHD 4.4.0.0 or something =
else coincidentally happened at/around the same time as the update.

If anyone has any ideas it would be appreciated.

Thanks,
Jim


That MAC prefix is assigned to Seikosha -- part of the Seiko group of compa=
nies.  I don't believe that anything in the N320
  uses parts made by them -- and certainly not the MAC bits and pieces, whi=
ch live inside the FPGA.

Normally, if a device "babbles" a bunch of noise bits, that's an invalid fr=
ame, since the CRC won't pass, and tools like
  WireShark will never see those frames because they'll get dropped at a mu=
ch lower layer in the stack.  You might want to
  look at "ifconfig" on the relevant interface to see if RX errors are bein=
g logged.

If the CISCO switch is showing "invalid MAC received" for "babble frames", =
I don't think that's correct behavior, but not having
  played in that space for many years, I'm not sure.



--_000_MN2PR12MB331242313575B0B82520D48CB8639MN2PR12MB3312namp_
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
Thanks for the ideas Marcus. I did check ifconfig/ethtool, and my desktop d=
ebugging setup shows no RX errors on the corresponding 10Gbps interface. I'=
ll keep monitoring just in case it's a matter of time until something shows=
 up. I've been testing for a day
 or so now . . .&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I forgot to mention in the first post that we have a number of devices othe=
r than Ettus radios connected to the 100Gbps switch, and it's only the N320=
's that are exhibiting this problem.</div>
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
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Thursday, April 20, 2023 10:30 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: N320 SFP MAC issue</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 20/04/2023 10:17, Jim Palladino wrote:<=
br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
Hello,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
We have multiple N320's connected to a managed 100Gbps switch. Each switch =
port has a QSFP -- so 4 10Gbps connections per port. We're connecting and u=
sing both 10Gbps SFP interfaces on each N320 radio to the switch. Basically=
, one 100Gbps port on the switch
 will handle 2 N320's via the QSFP. This has been working reliably for over=
 a year using UHD 4.1.0.5.&nbsp;</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
Recently, we updated to UHD 4.4.0.0. Now, everything seems to work fine for=
 a finite amount of time (hours/days), but then port security on our switch=
 gets tripped for one of the ports. That radio's corresponding SFP interfac=
e is then unusable until that port
 gets reset on our managed switch. What seems to be happening is that our s=
witch is configured to only allow 1 MAC address per &quot;interface&quot;. =
If a different MAC address ever shows up, port security trips. Due to secur=
ity constaints, we're required to run with
 this MAC limitation.</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0); background-color:rgb(255,25=
5,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
To debug this issue, our network administrators temporarily increased the n=
umber of allowed MAC addresses per 10Gbps interface to be set to 3 instead =
of 1. They were able to see in switch logs that eventually a MAC other than=
 that programmed in the N320s EEPROM
 showed up on that port. The offending MAC (not the proper MAC for that SFP=
 N320 SFP interface) was &quot;00:00:b8:ce:f6:22&quot;. We can't figure out=
 where this is coming from, and haven't been able to determine if this happ=
ens when rebooting a radio, loading the FPGA,
 bringing up the SFP interfaces, randomly during streaming, or what.</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
A thought is that at some point (when the FPGA is programmed and or the SFP=
 interface comes up) some garbage bits come out of the interface -- maybe t=
he switch interprets this as some sort of malformed packet?</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
I've been running tests at my desk with an N320 connected directly to a 10G=
bps interface on my desk PC trying to somewhat reproduce the issue. I've be=
en running loops that reboot the N320, stream samples from the N320, reboot=
 while streaming, try to start streaming
 before the SFP interface is up, etc, etc. With wireshark I've been watchin=
g and have not seen any packets with MACs other than the proper MAC that th=
e N320 should assign to that interface. However we're wondering if maybe we=
 wouldn't see a malformed packet
 on wireshark (might get blocked by the interface and not get passed up the=
 stack?). However, maybe in our normal setup the CISCO switch might see it?=
 We haven't been able to get logs from the switch that show anything beyond=
 the fact that another MAC showed
 up on that port at some point.&nbsp;</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
Sorry for all the words, but this has been a tough one to debug/reproduce. =
We've had these issues with all 5 N320s we have connected to the switch. Ag=
ain, we never saw this before updating to UHD 4.4.0.0. So either this is re=
lated to N320 behavior that changed
 when updating UHD 4.4.0.0 or something else coincidentally happened at/aro=
und the same time as the update.</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
If anyone has any ideas it would be appreciated.&nbsp;&nbsp;</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
Thanks,</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
Jim</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0); background=
-color:rgb(255,255,255)">
<br>
</div>
<br>
</blockquote>
That MAC prefix is assigned to Seikosha -- part of the Seiko group of compa=
nies.&nbsp; I don't believe that anything in the N320<br>
&nbsp; uses parts made by them -- and certainly not the MAC bits and pieces=
, which live inside the FPGA.<br>
<br>
Normally, if a device &quot;babbles&quot; a bunch of noise bits, that's an =
invalid frame, since the CRC won't pass, and tools like<br>
&nbsp; WireShark will never see those frames because they'll get dropped at=
 a much lower layer in the stack.&nbsp; You might want to<br>
&nbsp; look at &quot;ifconfig&quot; on the relevant interface to see if RX =
errors are being logged.<br>
<br>
If the CISCO switch is showing &quot;invalid MAC received&quot; for &quot;b=
abble frames&quot;, I don't think that's correct behavior, but not having<b=
r>
&nbsp; played in that space for many years, I'm not sure.<br>
<br>
<br>
</div>
</body>
</html>

--_000_MN2PR12MB331242313575B0B82520D48CB8639MN2PR12MB3312namp_--

--===============7725880367142448940==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7725880367142448940==--

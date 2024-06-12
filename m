Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC00905C32
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2024 21:43:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 546F938593B
	for <lists+usrp-users@lfdr.de>; Wed, 12 Jun 2024 15:43:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1718221427; bh=Z6nOP1pOH1p4mNA1iR9DbasF5PE86hLrL3c1Z166jEI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=BznFL5K6TfbknSXfTkQ8VKSUQ6/p8LW/DJ9sKsAlyN/B2T1LgLd67tYA3zwprNjbw
	 veKpDSSoP6jYYAOMU7NRJTvZ+5fwcNYoX5Nm00wXdCOVANoQ8NMHoRB/bAq0L+gVN3
	 uNQz8Pb67DOAA3VLZcqLRe0cJGFgryuckyqrlj74WHTlmbsSCI/bWTtvjSA/o4zt7N
	 Ik1N4SK7qXkyCsW+AEc3C/VHpKRFBexy5n2HnOM03VyCdtKW3VW0NroKdLAyngx8UR
	 PL9X5qrLqb1C4i3AjH0fGJZslzUhAlu/kebuQAgLe8FEGgopJQl2k8by6HcdQJ6rXF
	 13BDSXLTNACAA==
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2058.outbound.protection.outlook.com [40.107.223.58])
	by mm2.emwd.com (Postfix) with ESMTPS id 08B32385936
	for <usrp-users@lists.ettus.com>; Wed, 12 Jun 2024 15:43:20 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=ni.com header.i=@ni.com header.b="azBiOKzQ";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LnXblTAsv2cv3XJAd/y3I7hjcOnP0bqi1+OxZmTMc4c91VBr7J3qOOrk0fxGDQExO6GmLvMizct9z1+9AD47IZEADgM/loZcsQssbYPq70XmTwnYTBU+guoyhbbpM0mMxIK8tZam8fV6/yxNxSL8Ap7PbmdI2erw66/ufh4ZM7uTAAIa6ID2tqCKUpw1nNPdYGeE/1Sr0t9V2QBWTt5f8EReH/JYC9LhnIFoZbmNVjRpOKSDg787LZepU/p/Go9/ZUeHNLp+0fvJj0HrNxnGiZRDpXLH6ux2bBo2uQ9+3wxLGIUHi40jUBXFLkn5YsKJkFcxUKO9ppn/YiH8I+8bKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=78VhWOyRjU9/qkbaaTYKtzwl7cQJr9t0+XB36GbnK8o=;
 b=F27RpMGexl+6p9wB8grb6re/oed3UiC91uhAJvPd23I2zFyaMgal0XAHnu2YeBAl9JR6wf0EopU+2BjL9avJP/urIx09mWSEs58VEFv0NooE35/tzKPwMltfJGkhLHxGfarVLwTER+DeR9Mh4hJ6Tv5row7Z9JFwXml0vqPL5a3fq7BQYUs0LCiSM/2ZiYhGAUt40u7XwMdgDQ1Nnkqh00pBjCepS/TtYLPtTNlwp3WnP7KYQ6SMzRT9OgVkomxSPPG0oxuht2JehTpWA0AuvZEurTgF2638Eh2qECmZ1CEd/cifj87aVGHryt9/S0wzcM9pubcnZQbQmQ5REyaiFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=78VhWOyRjU9/qkbaaTYKtzwl7cQJr9t0+XB36GbnK8o=;
 b=azBiOKzQRCufECjIdfWSlz6XWl6KF6iCFzID8lwhQf0BsrHQBkVFquM4d1GlzmEXcQ3JpquyMQuQNwCWc+UHRW4doxjCXvtfQuaM5T0jFrGu4SCL97px8P9uFUaHhWSjGdO7UO/xM/KwhnL82RHaOmMADhg5Gy5jN2isWgNYhns=
Received: from DM8PR04MB7848.namprd04.prod.outlook.com (2603:10b6:8:26::13) by
 IA0PR04MB8788.namprd04.prod.outlook.com (2603:10b6:208:490::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Wed, 12 Jun
 2024 19:43:18 +0000
Received: from DM8PR04MB7848.namprd04.prod.outlook.com
 ([fe80::3615:f040:e01e:4327]) by DM8PR04MB7848.namprd04.prod.outlook.com
 ([fe80::3615:f040:e01e:4327%4]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 19:43:18 +0000
From: Lars Amsel <lars.amsel@ni.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] How to put additional RFNoC block in Rx-Tx
 loopback?
Thread-Index: AQHavPSmWrXMBCprJ0K9VHCJV69TzbHEhEB5
Date: Wed, 12 Jun 2024 19:43:18 +0000
Message-ID: 
 <DM8PR04MB7848BA184FFED94A3984CC9EE6C02@DM8PR04MB7848.namprd04.prod.outlook.com>
References: <WuuGDriXx5TgJGGKFm9ikPNHzDxl1V5zN5CriwakU@lists.ettus.com>
In-Reply-To: <WuuGDriXx5TgJGGKFm9ikPNHzDxl1V5zN5CriwakU@lists.ettus.com>
Accept-Language: en-DE, en-US
Content-Language: aa
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Enabled=True;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SiteId=87ba1f9a-44cd-43a6-b008-6fdb45a5204e;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_SetDate=2024-06-12T19:43:18.735Z;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Name=Internal;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_ContentBits=0;MSIP_Label_76122db4-a595-414e-9ece-6adfb473e1a0_Method=Standard;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=ni.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR04MB7848:EE_|IA0PR04MB8788:EE_
x-ms-office365-filtering-correlation-id: ea94a4a1-81eb-41cf-769f-08dc8b17e891
x-ni-monitor: EOP Exclude NI Domains ETR True
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230034|376008|1800799018|69100299009|366010|38070700012;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?MfCtdfJBtczm2a7lcgvBi1JR/GBODcczHLcPsSvLCQ+c52if8EOrAcj3?=
 =?Windows-1252?Q?To96Q54zRIuq/Zz/6IR3oGSxLQ4PI0mWBFzQBfuUOtse2MyMg90XLgmA?=
 =?Windows-1252?Q?aMKWYxpWM0mv/LJn3fh2e9wJ5fSFOTJxofXKVpitCzv5CfOxnuPCzXHf?=
 =?Windows-1252?Q?5lMD9N8kWJd6NMEKK/KgR+pN2jpbopnZR1dnHfRF+3kdbv8wvAEuNUW8?=
 =?Windows-1252?Q?eSn3IRIhmk/0nUBCTLl8GJACzERrmwt0d+vwsmQf1xlU6sQDOwflPlOc?=
 =?Windows-1252?Q?Rni9zNcitNTD3tRpY8EThVH/U4xv/nXEZB54szJ+z9D01KL1A3m88JRd?=
 =?Windows-1252?Q?lhvrKQmOy35Tp7nau6ZtPFEQ0Xtxd7KLtG9EWjz4Waf2dn9llEAB4mQZ?=
 =?Windows-1252?Q?zNZug6Lx3EPjA6f+SCraYwXLGzqUr6dvEh3k2suV3y3MLoUzFcolXIGf?=
 =?Windows-1252?Q?cGFdmLEscS2qk11MetnKNZclJKsWc50HVG9s605hOexdxYD05LmEnGSb?=
 =?Windows-1252?Q?Lo1zmAzsFOfBvYRMoLq1kmDOsNZXE1eIZvnOGymbwGuTUTayxG+M2La8?=
 =?Windows-1252?Q?TuL4I6guv6428Mjk2dNhFDLe8JtBx/r0CGwDenIE5CzkSGSwm+Enktco?=
 =?Windows-1252?Q?XVJnmGS9ZUK9BE871OJQLiE2YbxvAW6R5DEs5xHu4blMtkWlKJuGJkA8?=
 =?Windows-1252?Q?rnYIyTKuzDU5H7YlFj8wvNfjzgP/9OGIXsgMYejLCrOlO2Jr4nXpUX3S?=
 =?Windows-1252?Q?dwwZznizNfTheTe9ZRjZwwpXvlP+6IWFZd0qa9shW0kbYb3lu7XM8rvk?=
 =?Windows-1252?Q?OBa0uAPpcI+mIRahH+NYKoQT8DmeEEiabhpY/tWQUqU+/3PD/siKYGKZ?=
 =?Windows-1252?Q?Rh1IHq9+jLwBPYlYQWBX3wk9is7U5ticUKjGnwx6rVSqCBZjjTSIcZQ3?=
 =?Windows-1252?Q?BQlf8swoOC8YeJ1jpY3oI+ax2aqpl0YU/KRsHO4n0LNQebIKm4ME7AIp?=
 =?Windows-1252?Q?Isp0Dej5OwhDu0UTE8VPdaVYvnz/V5x1EII3ApTOrJl9bRcQtDKWpceO?=
 =?Windows-1252?Q?8d2A6emGsAujgQpHfN+nbT6TwkK5QX+RMXLfuNHLqOeU15VLdXB2Phf2?=
 =?Windows-1252?Q?QYrewMTLvVzPVPMV/47h9IOv827vwII8XMJW78TpaTCCG13+TFwytASX?=
 =?Windows-1252?Q?qVRi+0FeKDKK0m9zxT4km5OCfMu8icTh06jhO9rJzcYBQj/EU8OQ4dg8?=
 =?Windows-1252?Q?C4Yv7j5/WuGecYMDXFuO2YKPPf01QJ6DzuDN58raLCw8GI18vKnvwNgB?=
 =?Windows-1252?Q?dupc3Wpnz3QJmhqkFj8eL9K4aVpz8ky4QdAnXgAHZT+7cE3syPFpaPjC?=
 =?Windows-1252?Q?qTR9g88MBdTIwKVsL7XRhrGkCqQeWMkw23/xwVCXKlKRwu9rYZzuDYh0?=
 =?Windows-1252?Q?uLBaKW4ZchG/hH+0XkGh6g=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM8PR04MB7848.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230034)(376008)(1800799018)(69100299009)(366010)(38070700012);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?qhqK82N4fZQL8iQ2LZzUlVtiP2n6DFi7VCkbKPSKGf5u0eZZIaxWPN1o?=
 =?Windows-1252?Q?IJTufoY482dYAxQV44erwdaOIz+C0mMr185OofMGUZ6NghWCBf8CIkCy?=
 =?Windows-1252?Q?zewwiUcbIoWqucmq9PiJqsIMIogJbivwv0Kano7ICHx/1PCzub7YXRQZ?=
 =?Windows-1252?Q?IMNXCQrwj0OajNg9YOrZ619shTiK/oXklPWZH0rGGYX2ABG8zz3k1zBG?=
 =?Windows-1252?Q?oKOW5Sy/hBZB/7I2WDvMm33MZ2/nrpAQG4iA/YXKAIOWApWHU4CNtzgI?=
 =?Windows-1252?Q?VjfYyf7EgdlD7EVcWBVfGUcT3cr8gWTuMqAJOn2BBQQXzerNd3lCHcRx?=
 =?Windows-1252?Q?pw3dyqa63YSLNtKjMJRrlXQT67vJMe3GUuqG5Qeow5UVrCYVwESmH2oY?=
 =?Windows-1252?Q?IaTSKTkhtVn9VPuIhBimuhkUBjPD12SaCI7zlFBeFvbxIxOKEe0VlTem?=
 =?Windows-1252?Q?tT8xV8P1aA8BigDJGlDKp+SFn3tqxXvcZjCRsj51u6vUGXa8drtrEvIX?=
 =?Windows-1252?Q?dt/Ur3trXrLR+8yhOpAHkPUYovZ/Bv8jQVmG2Q1SQdWT/piKLgQ7AGtk?=
 =?Windows-1252?Q?bufvSq+T5lSNW3r0Fbin7UM1e0P0/1gim9QyO/Jja3IJzJrofUm7bEqO?=
 =?Windows-1252?Q?aRvY4M7YM0aB0s5IefxSQ2DADqiVAUhurN1Na8dxZBXL0XOMhuuxsuzO?=
 =?Windows-1252?Q?6sAb+Nx8mmjc2EukB63+clTFpyU3KzKq4R02GD6ygGM0Vwc5xIU7idB/?=
 =?Windows-1252?Q?J0SDxiQIYUVDBnQ+z4idzXSqgHv0T5WApcyrGUtat7vAsbK5DhZQbMwU?=
 =?Windows-1252?Q?Rh8rEzXP2QdfXxvt107YcwpZkzECrnrg3pG+l3OqFYtw/gWO0e4WZPRA?=
 =?Windows-1252?Q?yBr+Bqdi1AMS4VHFUTQZ38qp3ZyWlEtYsrT2wqRCpMex70eMTjlejt+I?=
 =?Windows-1252?Q?ZQJfJ7E32DVXF7qDHC9h84XXa9cL9kqM7xSImkMgn0egN3qwvOesdwpR?=
 =?Windows-1252?Q?3JgPf6dz8YP5420J3nWwmi3gW5fSV3HuQMY8fZJ83zKV5kCq4q5Qd1Fi?=
 =?Windows-1252?Q?sTBCzvRyfj4ohBn7YNRNHKqSNh9/odIQSvb0M0s0KsDrArEH4+PMuK8i?=
 =?Windows-1252?Q?rbcDdcPvS2Kpf2n80Zho6E4w/87kKvyhinxs+58XB4IeIkssMtdxf1wT?=
 =?Windows-1252?Q?fABbC0Ftr0XLmBsJSYurJmJnie92iWz3KAmZ+S6pK+SSTaUeQfgIqPng?=
 =?Windows-1252?Q?aW4wEocHhMkzf0k2v8rli5t8VW3X1Lsr8qrU8O0hl56Yi3qlgeZOwMMy?=
 =?Windows-1252?Q?b8FgzSQTGv74qWAnRcpT6fKrA8atZ1QoHSXrBD1vYh/DSk6wRJcQs5k+?=
 =?Windows-1252?Q?miQGL86qSnrJTtJSO1acFi3Mb0Ej5ld5J9xBZv1m+cFMnIvTH3wiujV3?=
 =?Windows-1252?Q?QVz4TkMOZ4U3XQl7amsfW3kMnhRuEbMm91NgSCm1Gjryk4voGkaDwnSu?=
 =?Windows-1252?Q?+o7RwOnWlhY/vbMBHQYB/0uun2ApQerF2l1vmCHKs05Two/4E/cUQHBz?=
 =?Windows-1252?Q?LCT/3uSNZ0hhVrhFIj2Ej54H8PiksIf5s+/G5tg/CA6Wjl3pW5mfdDnj?=
 =?Windows-1252?Q?uHLeNdbOLycy53bQZyxyVC1wGk8Id6BB+BV6/b58qaq7lDUYd7gf0MnQ?=
 =?Windows-1252?Q?P9+/iI4ScGw=3D?=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR04MB7848.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea94a4a1-81eb-41cf-769f-08dc8b17e891
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2024 19:43:18.1572
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uB2Z2t5rRfhVpFbMsCFPKY1wbDxPxsQhbw/J28uwKAWaBLBvch/CqxWa9Gx9ASzFk/nO2xnhEg+bOgC1lbQ3Jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR04MB8788
Message-ID-Hash: WGOCMXAD3D4RWOGN2Z6ZBCLRV332NMFA
X-Message-ID-Hash: WGOCMXAD3D4RWOGN2Z6ZBCLRV332NMFA
X-MailFrom: lars.amsel@ni.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to put additional RFNoC block in Rx-Tx loopback?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BZOARO4KF74ZOGJKOTKMMSW6YLOVOB4O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3045092853380155757=="

--===============3045092853380155757==
Content-Language: aa
Content-Type: multipart/related;
	boundary="_005_DM8PR04MB7848BA184FFED94A3984CC9EE6C02DM8PR04MB7848namp_";
	type="multipart/alternative"

--_005_DM8PR04MB7848BA184FFED94A3984CC9EE6C02DM8PR04MB7848namp_
Content-Type: multipart/alternative;
	boundary="_000_DM8PR04MB7848BA184FFED94A3984CC9EE6C02DM8PR04MB7848namp_"

--_000_DM8PR04MB7848BA184FFED94A3984CC9EE6C02DM8PR04MB7848namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Piotr,

from cursory reading this looks good to me. Things you could check:

  *
if you have a fairly recent build from master, https://github.com/EttusRese=
arch/uhd/commit/d3e27d94052110b180267907c8c12f3c2d050271 adds a dot style p=
rint of the graph to TRACE when the graph is committed so you can verify wh=
ether it looks as expected. If you don't have TRACE enabled you can just ca=
ll to_dot from graph after commit and then render the resulting string.
[https://opengraph.githubassets.com/d65f8d77f90a59ad00f6ccbdb1a49b8c8269e1d=
4e43ee5e33e71785d99e293f4/EttusResearch/uhd/commit/d3e27d94052110b180267907=
c8c12f3c2d050271]<https://github.com/EttusResearch/uhd/commit/d3e27d9405211=
0b180267907c8c12f3c2d050271>
host: add ability to query dot representation of graph =B7 EttusResearch/uh=
d@d3e27d9<https://github.com/EttusResearch/uhd/commit/d3e27d94052110b180267=
907c8c12f3c2d050271>
Current implementation only support dot representation of the graph topolog=
y. This adds the ability to also query the current graph layout. The method=
 prints out connected blocks (including streame...
github.com

  *
Another thing that you can check is property propagation. Do radios and DDC=
/DUC have the expected rates?

Besides that, could you provide a log output of your example run?

Regards

Lars



[NI]<https://www.ni.com/r/zf03uz>







Lars Amsel
Principal Software Engineer
SW Discipline

+49351206931427<tel:+49351206931427>  |  ni.com<https://www.ni.com/>

[National Instruments is now NI.]






INTERNAL - NI CONFIDENTIAL

________________________________
From: perper@o2.pl <perper@o2.pl>
Sent: Wednesday, 12 June 2024 17:33
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] How to put additional RFNoC block in Rx-Tx loopback?


Hello all,

RxTx loopback is a feature that was missing(/hard to do) in RFNoC before at=
 least 4.0.

Currently it works and there are even nice examples showing how set it up, =
so one doesn=92t have to figure this out. There are examples both in pure U=
HD (https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc_ra=
dio_loopback.cpp) and GNU Radio (https://github.com/gnuradio/gnuradio/blob/=
main/gr-uhd/examples/grc/rfnoc_radio_loopback.grc).

I=92m trying to go one step forward and to add an RFNoC block to the loop-b=
ack on USRP X410. For simplicity I=92m starting from the rfnoc-example (htt=
ps://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-example).=
 The graph I want to get working looks like this: Radio#0=3D=3D>DDC#0-->Gai=
n#0-->DUC#1=3D=3D>Radio#1.

I=92ve build the rfnoc-example and I can confirm that it works with use of =
the example (https://github.com/EttusResearch/uhd/blob/master/host/examples=
/rfnoc-example/examples/rx_gain_estimate_power.py).

Then I tried to change the rfnoc_radio_loopback.cpp to connect Gain block b=
etween DDC and DUC.

In order to achieve that I changed this part (https://github.com/EttusResea=
rch/uhd/blob/master/host/examples/rfnoc_radio_loopback.cpp#L123):

uhd::rfnoc::connect_through_blocks(
graph, rx_radio_ctrl_id, rx_chan, tx_radio_ctrl_id, tx_chan, skip_pp);


to:
uhd::rfnoc::block_id_t gain_block_id("0/Gain#0");

rfnoc::example::gain_block_control::sptr gain_control =3D
graph->get_block<rfnoc::example::gain_block_control>(gain_block_id);

uhd::rfnoc::connect_through_blocks(
graph, rx_radio_ctrl_id, rx_chan, gain_block_id, 0, skip_pp);

uhd::rfnoc::connect_through_blocks(
graph, gain_block_id, 0, tx_radio_ctrl_id, tx_chan, skip_pp);

and later I added a call to function that sets the digital gain:

gain_control->set_gain_value(42);

Somehow I can=92t get it working this way. The version without my change pa=
sses the signal. The version with it included doesn=92t.

What might be wrong with this approach?

Best Regards,
Piotr Krysik

National Instruments Dresden GmbH; Gesch=E4ftsf=FChrer (Managing Directors)=
: Sabrina Gilman, Kathleen Heard Spurck, Carl Schumacher; Sitz (Registered =
Office): Dresden; HRB (Commercial Register No.): 22081; Registergericht (Re=
gistration Court): Dresden

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system.

--_000_DM8PR04MB7848BA184FFED94A3984CC9EE6C02DM8PR04MB7848namp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi Piotr,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
from cursory reading this looks good to me. Things you could check:</div>
<ul style=3D"margin-top: 0px; margin-bottom: 0px; list-style-type: disc;" d=
ata-editing-info=3D"{&quot;orderedStyleType&quot;:1,&quot;unorderedStyleTyp=
e&quot;:1}">
<li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, C=
alibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
if you have a fairly recent build from master, <a href=3D"https://github.co=
m/EttusResearch/uhd/commit/d3e27d94052110b180267907c8c12f3c2d050271" id=3D"=
LPlnk">
https://github.com/EttusResearch/uhd/commit/d3e27d94052110b180267907c8c12f3=
c2d050271</a>&nbsp;adds a dot style print of the graph to TRACE when the gr=
aph is committed so you can verify whether it looks as expected. If you don=
't have TRACE enabled you can just call
 to_dot from graph after commit and then render the resulting string.</div>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1">
<div id=3D"LPBorder_GTaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvdWhkL2Nvb=
W1pdC9kM2UyN2Q5NDA1MjExMGIxODAyNjc5MDdjOGMxMmYzYzJkMDUwMjcx" class=3D"LPBor=
der287536" style=3D"width: 100%; margin-top: 16px; margin-bottom: 16px; pos=
ition: relative; max-width: 800px; min-width: 424px;">
<table id=3D"LPContainer287536" role=3D"presentation" style=3D"padding: 12p=
x 36px 12px 12px; width: 100%; border-width: 1px; border-style: solid; bord=
er-color: rgb(200, 200, 200); border-radius: 2px;">
<tbody>
<tr valign=3D"top" style=3D"border-spacing: 0px;">
<td>
<div id=3D"LPImageContainer287536" style=3D"position: relative; margin-righ=
t: 12px; height: 120px; overflow: hidden; width: 240px;">
<a target=3D"_blank" id=3D"LPImageAnchor287536" href=3D"https://github.com/=
EttusResearch/uhd/commit/d3e27d94052110b180267907c8c12f3c2d050271"><img id=
=3D"LPThumbnailImageId287536" alt=3D"" style=3D"display: block;" height=3D"=
120" width=3D"240" src=3D"https://opengraph.githubassets.com/d65f8d77f90a59=
ad00f6ccbdb1a49b8c8269e1d4e43ee5e33e71785d99e293f4/EttusResearch/uhd/commit=
/d3e27d94052110b180267907c8c12f3c2d050271"></a></div>
</td>
<td style=3D"width: 100%;">
<div id=3D"LPTitle287536" style=3D"font-size: 21px; font-weight: 300; margi=
n-right: 8px; font-family: &quot;wf_segoe-ui_light&quot;, &quot;Segoe UI Li=
ght&quot;, &quot;Segoe WP Light&quot;, &quot;Segoe UI&quot;, &quot;Segoe WP=
&quot;, Tahoma, Arial, sans-serif; margin-bottom: 12px;">
<a target=3D"_blank" id=3D"LPUrlAnchor287536" href=3D"https://github.com/Et=
tusResearch/uhd/commit/d3e27d94052110b180267907c8c12f3c2d050271" style=3D"t=
ext-decoration: none; color: var(--themePrimary);">host: add ability to que=
ry dot representation of graph =B7 EttusResearch/uhd@d3e27d9</a></div>
<div id=3D"LPDescription287536" style=3D"font-size: 14px; max-height: 100px=
; color: rgb(102, 102, 102); font-family: &quot;wf_segoe-ui_normal&quot;, &=
quot;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif; margi=
n-bottom: 12px; margin-right: 8px; overflow: hidden;">
Current implementation only support dot representation of the graph topolog=
y. This adds the ability to also query the current graph layout. The method=
 prints out connected blocks (including streame...</div>
<div id=3D"LPMetadata287536" style=3D"font-size: 14px; font-weight: 400; co=
lor: rgb(166, 166, 166); font-family: &quot;wf_segoe-ui_normal&quot;, &quot=
;Segoe UI&quot;, &quot;Segoe WP&quot;, Tahoma, Arial, sans-serif;">
github.com</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
</li><li style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontServi=
ce, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Another thing that you can check is property propagation. Do radios and DDC=
/DUC have the expected rates?</div>
</li></ul>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Besides that, could you provide a log output of your example run?</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Regards</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Lars</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<table style=3D"width: 337.5pt; border-collapse: collapse; border-spacing: =
0px; box-sizing: border-box;">
<tbody>
<tr>
<td style=3D"padding: 0in; width: 337.5pt;">
<table style=3D"width: 337.5pt; border-collapse: collapse; border-spacing: =
0px; box-sizing: border-box;">
<tbody>
<tr>
<td style=3D"padding: 0in; vertical-align: top; width: 337.5pt;">
<table style=3D"width: 337.5pt; border-collapse: collapse; border-spacing: =
0px; box-sizing: border-box;">
<tbody>
<tr>
<td style=3D"padding: 0in; vertical-align: top; width: 75pt; height: 75pt;"=
>
<table style=3D"width: 75pt; border-collapse: collapse; border-spacing: 0px=
; box-sizing: border-box;">
<tbody>
<tr>
<td style=3D"padding: 0in; width: 60pt; height: 60pt;">
<p align=3D"center"><span style=3D"font-family: &quot;Calibri&quot;, sans-s=
erif; font-size: 1pt; color: rgb(0, 0, 0);"><a href=3D"https://www.ni.com/r=
/zf03uz" target=3D"_blank" style=3D"color: rgb(0, 0, 0); margin-top: 0px; m=
argin-bottom: 0px;"><img alt=3D"NI" style=3D"width: 80px; height: 80px; mar=
gin-top: 0px; margin-bottom: 0px;" width=3D"80" height=3D"80" data-outlook-=
trace=3D"F:1|T:1" src=3D"cid:d0ae2adb-d838-46d1-b476-6047ef3f3c07"></a></sp=
an></p>
</td>
<td style=3D"padding: 0in; width: 15pt; height: 60pt;">
<p><span style=3D"font-family: &quot;Arial&quot;, sans-serif; font-size: 10=
pt;">&nbsp;</span></p>
</td>
</tr>
<tr>
<td style=3D"padding: 0in; width: 60pt; height: 15pt;">
<p><span style=3D"font-family: &quot;Arial&quot;, sans-serif; font-size: 10=
pt;">&nbsp;</span></p>
</td>
<td style=3D"padding: 0in; width: 15pt; height: 15pt;">
<p><span style=3D"font-family: &quot;Arial&quot;, sans-serif; font-size: 10=
pt;">&nbsp;</span></p>
</td>
</tr>
</tbody>
</table>
</td>
<td style=3D"padding: 0in; vertical-align: top; width: 262.5pt; height: 75p=
t;">
<p style=3D"margin-bottom: 4.5pt;"><span style=3D"font-family: &quot;Arial&=
quot;, sans-serif; font-size: 10pt;"><b>Lars Amsel</b>&nbsp;<br>
Principal Software Engineer<br>
SW Discipline</span></p>
<p><span style=3D"font-family: &quot;Arial&quot;, sans-serif; font-size: 10=
pt; color: rgb(0, 0, 0);"><a href=3D"tel:+49351206931427" style=3D"color: r=
gb(0, 0, 0); margin-top: 0px; margin-bottom: 0px;">+49351206931427</a></spa=
n><span style=3D"font-family: &quot;Arial&quot;, sans-serif; font-size: 10p=
t;">&nbsp;&nbsp;|&nbsp;
</span><span style=3D"font-family: &quot;Arial&quot;, sans-serif; font-size=
: 10pt; color: rgb(0, 0, 0);"><a href=3D"https://www.ni.com/" target=3D"_bl=
ank" title=3D"https://www.ni.com" style=3D"color: rgb(0, 0, 0); margin-top:=
 0px; margin-bottom: 0px;">ni.com</a></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
<tr>
<td style=3D"padding: 0in; vertical-align: top; width: 406.5pt; height: 59.=
25pt;">
<p><span style=3D"font-size: 1pt;"><img alt=3D"National Instruments=0A=
is now NI." style=3D"width: 266px; height: 38px; margin-top: 0px; margin-bo=
ttom: 0px;" width=3D"266" height=3D"38" data-outlook-trace=3D"F:1|T:1" src=
=3D"cid:fee6b8ee-8b83-43a9-98f5-6d5a6f5730fb"></span></p>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
<div id=3D"appendonsend"></div>
<br>
<p style=3D"font-family:Calibri;font-size:10pt;color:#000000;margin:5pt;fon=
t-style:normal;font-weight:normal;text-decoration:none;" align=3D"Left">
INTERNAL - NI CONFIDENTIAL<br>
</p>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> perper@o2.pl &lt;perp=
er@o2.pl&gt;<br>
<b>Sent:</b> Wednesday, 12 June 2024 17:33<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] How to put additional RFNoC block in Rx-Tx loo=
pback?</font>
<div>&nbsp;</div>
</div>
<div>
<p>Hello all,</p>
<p>RxTx loopback is a feature that was missing(/hard to do) in RFNoC before=
 at least 4.0.</p>
<p>Currently it works and there are even nice examples showing how set it u=
p, so one doesn=92t have to figure this out. There are examples both in pur=
e UHD (https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc=
_radio_loopback.cpp) and GNU Radio
 (https://github.com/gnuradio/gnuradio/blob/main/gr-uhd/examples/grc/rfnoc_=
radio_loopback.grc).</p>
<p>I=92m trying to go one step forward and to add an RFNoC block to the loo=
p-back on USRP X410. For simplicity I=92m starting from the rfnoc-example (=
https://github.com/EttusResearch/uhd/tree/master/host/examples/rfnoc-exampl=
e). The graph I want to get working
 looks like this: Radio#0=3D=3D&gt;DDC#0--&gt;Gain#0--&gt;DUC#1=3D=3D&gt;Ra=
dio#1.</p>
<p>I=92ve build the rfnoc-example and I can confirm that it works with use =
of the example (https://github.com/EttusResearch/uhd/blob/master/host/examp=
les/rfnoc-example/examples/rx_gain_estimate_power.py).</p>
<p>Then I tried to change the rfnoc_radio_loopback.cpp to connect Gain bloc=
k between DDC and DUC.</p>
<p>In order to achieve that I changed this part (https://github.com/EttusRe=
search/uhd/blob/master/host/examples/rfnoc_radio_loopback.cpp#L123):</p>
<p>uhd::rfnoc::connect_through_blocks(<br>
graph, rx_radio_ctrl_id, rx_chan, tx_radio_ctrl_id, tx_chan, skip_pp);<br>
<br>
</p>
<p>to:<br>
uhd::rfnoc::block_id_t gain_block_id(&quot;0/Gain#0&quot;);</p>
<p>rfnoc::example::gain_block_control::sptr gain_control =3D <br>
graph-&gt;get_block&lt;rfnoc::example::gain_block_control&gt;(gain_block_id=
);</p>
<p>uhd::rfnoc::connect_through_blocks(<br>
graph, rx_radio_ctrl_id, rx_chan, gain_block_id, 0, skip_pp);</p>
<p>uhd::rfnoc::connect_through_blocks(<br>
graph, gain_block_id, 0, tx_radio_ctrl_id, tx_chan, skip_pp);<br>
<br>
and later I added a call to function that sets the digital gain:</p>
<p>gain_control-&gt;set_gain_value(42);<br>
<br>
Somehow I can=92t get it working this way. The version without my change pa=
sses the signal. The version with it included doesn=92t.</p>
<p>What might be wrong with this approach?</p>
<p>Best Regards,<br>
Piotr Krysik</p>
</div>
National Instruments Dresden GmbH; Gesch=E4ftsf=FChrer (Managing Directors)=
: Sabrina Gilman, Kathleen Heard Spurck, Carl Schumacher; Sitz (Registered =
Office): Dresden; HRB (Commercial Register No.): 22081; Registergericht (Re=
gistration Court): Dresden<br>
<br>
This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender
 by return email and delete this email (and any attachments) from your syst=
em.&nbsp;
</body>
</html>

--_000_DM8PR04MB7848BA184FFED94A3984CC9EE6C02DM8PR04MB7848namp_--

--_005_DM8PR04MB7848BA184FFED94A3984CC9EE6C02DM8PR04MB7848namp_
Content-Type: image/png; name="Outlook-NI.png"
Content-Description: Outlook-NI.png
Content-Disposition: inline; filename="Outlook-NI.png"; size=1704;
	creation-date="Wed, 12 Jun 2024 19:43:17 GMT";
	modification-date="Wed, 12 Jun 2024 19:43:17 GMT"
Content-ID: <d0ae2adb-d838-46d1-b476-6047ef3f3c07>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAKAAAACgCAYAAACLz2ctAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAAJOgAACToAYJjBRwAAAY9SURBVHhe7d1LaFxlGMbxM2euTUsDUtvipd5B
tLgQLO3Chbg0FbW6caM7NyLuXUrtQlEEFVcuBUVrQd1V0IrgBbxSFEpB68JUadXmNpmr3/d+3zeC
FsmcSXxOJ/9feXyttMmZ8OT1THJyplJ9//AwA0TyOAEJCggpCggpCggpCggpCggpCggpCggpCggp
CggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggp
CggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCggpCgip
qS/gcLi++b9d7BgKxb+t8CZLhQ0Iqal9xfT0oAari+Ff/BqYRCXOQT/MvBZmtRFnPYxK+oOTGcTj
Habjn1StZSOvheNcn6OcHBsQUlO7AfvLv9vsHnzG5kqva3NQ8EyoknbGcGDjy4WzNt+YP2nz1TNf
2Ey7Ja+HjTPuphltvl47zHuetvnn6pLNcc3GzXf/t2/bPDb/vc1q3NhqbEBITe8GXDpnc3jfszZX
O3Gj2D8nV8/D5241nQNWwu8fP/mezZdPn7BZac3azNd4bjjagN3lMA8ettluh9+Pq1XfYvPQN2/Z
PBo39ui4xdiAkJr+AtoXwYZZ3+2+9UzbPRv2WewsW5Y7S5aX9s5ZThx4zDJsX7D4zZa221j8X3G5
2DGsJf6s1858w4ehdNiAkKKAE6q4czufuKiyxfai5c4d11ne3feIJW3C9OcQUEBIUcB1ljZiOjec
u+IWy6Grb7cMeqsWBBQQUhRwg6RN6L9+5/P63nstWb9nKfyseMpQQEhRwA3WGw4sjcYWy107b7IM
Bz3LZkcBIUUBN1g6F8x6HcvDu2+1ZINuyCZHASFVugL2B/2Q7krBtC2Zv57Op1a1zNSalq0F06hU
LUV1BwPL/u27Le5BhmxybEBIleZ6QL/1vOtnwvVzT+7Zb3OpX/Q8KTyshXRd3ehrbuNdo7wSz9Me
2nmzzTtmr7TZGcafDVmjerxe8Od4ZfONH71gM6/P2LTzROdf1wPOhesBlwpeEb01Xpn9wNdHbb5z
lusBgZHybED/HQLn7sv22Dx+4FGbWWfcDRgfTit8hleOPWXTPdI4x/wpDX8+6by4d87mE9ekzeye
1Y4hbcBfOmGzXfvh8zbZgIBQ6QrYHbpni/4nz3puE7j4TTNOFnsh8UJg9wzYfaZbmpbqmEl/r5G7
Z8Euk/L7rRT/yykJNiCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCkKCCk
KGDZTfkFhBQQUhSwZPxPhthPh8TN91v7gqVWqVimDQWEFAUsmdG9ZOIq/OT8T5ZJ78xQVhQQUhSw
rKpNy5EfP7VUGk2Lv8PD33d5uPRRQEhRwJLK86rl83OnLT/8MW/ZUq1ZpgUFhBQFLKnRs+HGVsu+
z16zVOutEPcU2cedEdqvSxUFhBQFLLmqOw/0WeitWm77+BVLqzkTUqlZLtVnxxQQUiUuYPhmaPrM
Xms2XrHjSr+KSnfr+m7hrGXXB89Zzrut6LOtuc2SvmMSv5GSDre02ICQKl0Bm+58xydruENz2dZy
n9kFYo/MHl3aBZOtglm3fXzszqsuF3uf/5WmO1/zudw9o/UpKm3CX7srll3Hj1ge/OpNy6mV85b0
qgBZ030sXcr69UM2IKRKc4/odG/kZrzm7aq4JfzrrBVRz8Pn1qmVBZt5fLvpXsxr1Y/vf0e8p/J2
f7dVZ9xXuqyEM7Ksb7dtzbIz8V7Refzv4x5X4s8vvUF63bn4du3rh84Nre025/1rpjhL8dUIqgXf
33pjA0KqNBswGd0lvuDm+6c83p2+6IZJ0iZ0BxZmYeE4im7kteqn40zHHT8OZdl8CRsQUqXbgNhc
2ICQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQ
ooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQooCQ
ooCQooCQooCQooCQooCQooCQooCQooCQooAQyrK/AAKzFtHKVJyKAAAAAElFTkSuQmCC

--_005_DM8PR04MB7848BA184FFED94A3984CC9EE6C02DM8PR04MB7848namp_
Content-Type: image/png; name="Outlook-National I.png"
Content-Description: Outlook-National I.png
Content-Disposition: inline; filename="Outlook-National I.png"; size=13664;
	creation-date="Wed, 12 Jun 2024 19:43:17 GMT";
	modification-date="Wed, 12 Jun 2024 19:43:17 GMT"
Content-ID: <fee6b8ee-8b83-43a9-98f5-6d5a6f5730fb>
Content-Transfer-Encoding: base64

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

--_005_DM8PR04MB7848BA184FFED94A3984CC9EE6C02DM8PR04MB7848namp_--

--===============3045092853380155757==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3045092853380155757==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 465FA579F8E
	for <lists+usrp-users@lfdr.de>; Tue, 19 Jul 2022 15:23:53 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BB6C9383CCB
	for <lists+usrp-users@lfdr.de>; Tue, 19 Jul 2022 09:23:51 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1658237031; bh=po/mizV2tQCTtLAvRiXtW/PIxwgYUubWZZ3SdGE6h6Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=QY1TNWCCV8KRZfTLuIlgpcpXnTTF155655pRXWh0dKB5W8mrqWCwGVFblo15eccHM
	 35j0z2DTQWkzz+e5rwJGZ4kFqkPOwXsCaA41TqnaCjYpjPJAbJP3CUQVj0fTigJv0b
	 CmXKgUFTbxQmml8IfUuWkjrOVeRWzUXpc4GnzSdKnO71koZe+SAdaddJis85GEtvQi
	 b4dwRNX7A+N+8suK7TuC5F0Z4ItwbqKAjLe/jVDYD757LEKdzEkfiMeyhl91o+uIpn
	 odjjf5cMQ5Hi7yWPeeAlDZDquYSeEPiuAWChHNB8qKfhi/hmZYrVx28HYS5uiUmyvK
	 n/RMeeGTLalWg==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 12EC9383BD9
	for <usrp-users@lists.ettus.com>; Tue, 19 Jul 2022 09:21:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="RlAkCoS4";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.67.131])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 0A6D24007D;
	Tue, 19 Jul 2022 13:21:48 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11lp2175.outbound.protection.outlook.com [104.47.56.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id B3702980084;
	Tue, 19 Jul 2022 13:21:47 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RYp90rzujuMNR7RQpU77oEqbEMtl7vmALNaA4lokhyv8yOmBV82XsiX1v3iXRDEid0XRIDOHsyDWDuRbeewdZ9SfdQK8nL++XbITOWjhW5FkOSBBHzvPiuF8yp5tGK4cBZwobb4U7DF0Lx411Dp+1SmMmzwyAD43qBebfLa4jS2oyFBnqKK/EEAwDAU1sMHC7l8UHFYaLJYvx5irP2tDppcZCEgrrFAZv23SEdlR/ZYjH0JGr91ke/oDoXORwvNFqhI76U21tO9MnF/Zk+rliiUemBzVM71JwX6A3ZHcuzce/5hZllmZ2R+Ngcp7Q0rBP0bb4MxU7c0OCgvpoOXy7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fgTjiXAXuzvY6Si409Zh0SvvkJaljrQ1frEERFqOVFI=;
 b=AYWnQSl/523y0B0twmP3aaSXDh9PF3EMgOAKZmjv9dEZ9Bun5rqXdtOftsC1kAXRf9I4Z5VPnJPOIVfKzkPxvPhWuRzHOLRqAOQq4VPKwKyLj8YYBOmocy0b3/digUX+HW7mZEsQkYAIFPPqvf7/mLp6KH6w0aQOmXnU1QAaMFhcigCds/iBGY/32Q5Txa7IQMEYmpxrhXZLtktVJmiY3afLrwzALODVBjb5zLAJJxBiFUJdrbQTTpAuIswOCUPVb/OHUl+RdOLYtxoc9gDIHX2YuRSExLBjSOgb8SXhTXQ38iiwezUe3Wg1meev4PIsrRcmVvV7JSqmYInmx1Xogg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fgTjiXAXuzvY6Si409Zh0SvvkJaljrQ1frEERFqOVFI=;
 b=RlAkCoS4WfN4KRhu9nHHAWVWYYnA1AP4lieJMuzmuIUHSXT668FWb1aBPa1FMJjf1zbFSqNQ6uc4LCHEUhkXrYe+6le73fHbAUuIe+MSI0ZNnZltb1th1S/F+MYGkLrIA0M/Ju5NCHPjMsJ7PGTCIOv0A+oBzJWeMcs09EikjY0=
Received: from MN2PR12MB3871.namprd12.prod.outlook.com (2603:10b6:208:16a::17)
 by SJ0PR12MB5664.namprd12.prod.outlook.com (2603:10b6:a03:42b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.23; Tue, 19 Jul
 2022 13:21:45 +0000
Received: from MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::31dc:d0db:cbd:e6]) by MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::31dc:d0db:cbd:e6%6]) with mapi id 15.20.5438.024; Tue, 19 Jul 2022
 13:21:45 +0000
From: Jason Matusiak <jason@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: weird usrp coredump
Thread-Index: AQHYl3w7tR1ekwVgJUeyrR5T0Z/r/q1+UD0AgAAq8oCAACM/AIAHFxuO
Date: Tue, 19 Jul 2022 13:21:45 +0000
Message-ID: 
 <MN2PR12MB3871803828ECF2D1D37D4055AF8F9@MN2PR12MB3871.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB387160D39097A5A043F6B443AF889@MN2PR12MB3871.namprd12.prod.outlook.com>
 <3c5ed3e4-8df8-e0b6-0d03-14e790e19c25@gmail.com>
 <611a069c-01be-4886-2eb5-61dcddbf14b9@ettus.com>
 <f784e82c-6a9e-15eb-f60e-3f78b7fe611e@gmail.com>
In-Reply-To: <f784e82c-6a9e-15eb-f60e-3f78b7fe611e@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 8d1787f5-8326-b5c1-4851-727d3eddae4c
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dd16dbc5-c2f4-42c4-93f7-08da6989a090
x-ms-traffictypediagnostic: SJ0PR12MB5664:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /SeZqCzmNUXXEpwYAiL1Xa9VCyqMwsVg1CU3Iyv+57Krs+3avodZx+TbEkXqE8+Hfh/pPcIBX/pxrOfTji1B/86djM2NetkDLYDcuJAgalmIpDufjb43HA0FP8Nz2mGTPinNGVsSEBN0ysNVSHrh3HxFGnC1KGXHrLu9Zx4V9m2tOtNsniBm4rxHw1DvF485iT8kIODyExxTGTtWgOgnf5jdJN3HKxx/JHAVPGNXSRpD6P0FTJ/X4jYuvOXHmuDVjwyi+QhoKXW6qjGaNr7LlUn9aal5IsP1R7NU69qplv9V53fS2VpWKtxTSZTsu5sxFO7PqkubCjdiL5CtakcQRA23iVNPAdOiWkRsFRniEVM6ZZRZGAVFHi19Ob9L3oUgw8Pav699R1utAzRnJr6d73/pfAFK4hDO4CNtBnWx7Mx9NrYRXMbC1pGeTU5hFEHizkGtsNd5FE8eF5haxvMHEKCfBEBxUy0oOY2D+EJXkzVmGi2rA59uDs1aEmrViDvz3NGsZFTY8e9XeAmJupcygq6DmyDqNeheGVH5yll10rKufJriXHFqPQSkObwvdGyB5rMut2drSL69jW+isGyDI6fXyU16zaVBhH7HHgCfDqCO2vBuXgwsTUY960vfHnnopP12bMq7mIDK/Bmy3ZR7mHSTil7J+RSAdRUrdJOqRKmzHXUrM5s+u+sOQ6SJCccKK45ol0HYRkQ4ItohRwclrSfw9V7sXwHFA9hfpnBdgys1e4sVcFHu9e8MLWMwYmV2cqp5ObV+S+pv8Gu8/1iwUvX+u6NvE7BPafQ8CW2l763xNWUtHUw4aT54DrRlx9Ak
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3871.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(136003)(366004)(346002)(376002)(396003)(39830400003)(9686003)(316002)(110136005)(122000001)(6506007)(19627405001)(26005)(7696005)(71200400001)(2906002)(41300700001)(38070700005)(33656002)(66574015)(52536014)(38100700002)(64756008)(66946007)(55016003)(8676002)(66446008)(66476007)(478600001)(83380400001)(53546011)(186003)(5660300002)(86362001)(76116006)(66556008)(8936002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?hkPP9udK+eIiDyS+13hi0Akft5Y5070qdVSE6dUfISqiIURG3rG6TKkmdd?=
 =?iso-8859-1?Q?Wlcjxn84hAquCvbSZxKKhbULd1HrMQ0DodsbwnfyzgdCJMrtSpBCK5JhsV?=
 =?iso-8859-1?Q?I4agAwJSteoElQ1H89IXMXvkxounnFa/iPIljb1XMSNS8EgDZSCWJstjYE?=
 =?iso-8859-1?Q?1ca8eHmunrQcVCt9UfLBksSxBf5OITw9lWMUAFx7Ur1lp7XCvu/nqfRVwI?=
 =?iso-8859-1?Q?lGCHhlVUeKMZgqxLlDEE4C5spCvmtkz+vavw0JT3qidLyA0liT8vy+U6Xt?=
 =?iso-8859-1?Q?lRRJbTXuq9AT/z+OhgeBGPQmHs3LbhFe8JjPLDfgs2/9ouJGWT96D5tfJ1?=
 =?iso-8859-1?Q?YuVGNGW/dQSK06wnR7uhzxDxTrfoU9Ol1TPtPAdhw98JvmEe1N8DDr6O7g?=
 =?iso-8859-1?Q?scSnwwYay93KT9FuRbaE/OPcUCBfEZ5RiAVPGFz6CsEKzhPd8uJ96DDQ68?=
 =?iso-8859-1?Q?9cs60ZSUqmvpUSSHRm8niQ5GodKeDe7kRkZZA2C6QhMLSOaed0EM3x6naW?=
 =?iso-8859-1?Q?bRVrDVVa/l8Rdy70eFh9RhZRNlzqsAYrd+/FVzgEY1wJxcuqwrF5Wk5ONW?=
 =?iso-8859-1?Q?Ojp5zRMn/NsHXkkGpp6doL4wZh88RNCDLGooMfnsFfauu2tRDu6xbLTJHZ?=
 =?iso-8859-1?Q?SYSjxviQYtQwLI+v/Lc7qA4KzZS8kpXZT+n1ta2WnFSrs5jeEGwhIh3b1S?=
 =?iso-8859-1?Q?5WmyvB1Zlem1ZYGSd4sVYWHkhQfaPuziTOsaE3CUe2Tqcbb/7YHs+ZLoy9?=
 =?iso-8859-1?Q?MAHFbpqESwE9LZOLUpqOnB6egCrDKBPZ6rDMFQdpYyaS5ur3ioRRxN91fm?=
 =?iso-8859-1?Q?qKcwa37b+I8LbZ/T9ZmhsUFqxyi5Kt0O290vWAgV4mDBfLBUq9uXyX48+P?=
 =?iso-8859-1?Q?Ph+86WidC1yRNs+baTrbDrE15xdAgAeWZTwkmpEs4JLpNY/LrF+r3A5+Pd?=
 =?iso-8859-1?Q?K3cw5JFJffLkI00sWbYffajhPTxmNs3nCDMTwFxNya98Q4J8KSm48f7ALy?=
 =?iso-8859-1?Q?aXK9C8V2wv7A48IzKzCmocW4jmrjSoIC22luEDsX0vdAfmQisUHG/lnXJZ?=
 =?iso-8859-1?Q?7IV7Ps/gT2qU6XK4z0SOuNukTGD6dfj3gZ7iiFcs0k1wUUe8Wx6CN/NjDX?=
 =?iso-8859-1?Q?WJ89YFInKDFQFRTaiAInP28O2rJQFlkqFSuRcxRKPuzDAjDtTtrSdYKeTZ?=
 =?iso-8859-1?Q?nIJwamw517crtQeo+rK0j7TfO3+N0aZMoeZaI9FdylO2vo5BBExZZ8WXr0?=
 =?iso-8859-1?Q?zNTDlNmMpqungWA4wvpBKvldl/+FlgbRutznPAnHsdCPIcgPMrvIvcrpuF?=
 =?iso-8859-1?Q?rnr8Vv8aCihnH49PMNIkGxmXRqOw3Cr4K11fSpbi6oly/RYbkw78YNfR8t?=
 =?iso-8859-1?Q?SZEPCxRheGyIebR/pJrNq5+nIAD6UPKfkfTs79Jj4EmlXEpytvUdScAnAv?=
 =?iso-8859-1?Q?yHH87IceHf++XnEEHl3pMFSzmPqAkhewIpJcdfxl/q1CDasqGEwLbPoDMg?=
 =?iso-8859-1?Q?gm8ERPLjEi34kEdZzaitJdGyJHk8pUWU7xp4GepiXAvdjSJ1utxdFlimpK?=
 =?iso-8859-1?Q?BXX7heYGPeOVkzDaTtYur2esEgzKDpVeZhyZqq36yFo9hrp7hpM6Yl3aqf?=
 =?iso-8859-1?Q?js6C6z6yHLaJxBR0qonoTZ0KRDtZxYW4NXp8Gcb7dyJ9NSoX5kNnso9w?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3871.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd16dbc5-c2f4-42c4-93f7-08da6989a090
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2022 13:21:45.1455
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ilkDp1hEhCiQ23lJJhDjvrVTQWxucmeNk0ASmnxb/6nNPp0Qm/OHxLo6XPVDi2Uo16hCbyO3G9e+lmtWs3AMr9SaIOCuoWoX65/tJRWohQE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB5664
X-MDID: 1658236908-Je2HrKgNrcbh
Message-ID-Hash: Q6DDQ4B5IEYDXZZBNYGSIACLPZWMUHCV
X-Message-ID-Hash: Q6DDQ4B5IEYDXZZBNYGSIACLPZWMUHCV
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: weird usrp coredump
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HV3E7RLOVPCQG4CKPWLA3HTRHPIQUKJK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1753188061838999452=="

--===============1753188061838999452==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3871803828ECF2D1D37D4055AF8F9MN2PR12MB3871namp_"

--_000_MN2PR12MB3871803828ECF2D1D37D4055AF8F9MN2PR12MB3871namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks guys, that makes sense.  This was build against a GR and UHD that I =
installed via PyBombs, so I think I am OK on that front.  It is pretty rand=
om, so I don't think I have a steady memory leak, but it easily could be so=
mething I am doing on my end.  I'll try to keep a closer eye on it.


________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Thursday, July 14, 2022 9:03 PM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: weird usrp coredump

On 2022-07-14 18:57, Marcus M=FCller wrote:
> But that application is the USRP block of GNU Radio, so you're at
> least not the first to use it :)
>
>
> Wild stab:
>
> So, this is run on your PC, right; are you sure that the GNU Radio you
> run was built against the UHD you're using? (This is basically asking
> how you installed both GNU Radio and UHD)
>
>
> Best regards,
>
> Marcus
Indeed, mis-match between what an application was linked against, and
what it has dynamically loaded can cause Bad Things(tm).  It's
unfortunate that the
   *reality* of dynamically-linked, shared-library applications is that
you *cannot* mix-and-match.     This was one of the "promises" of DLLs
"back in the day", when
   they were a shiny-new thing.  Sigh.

But my comment still holds to a certain degree.   If you're writing an
app in C++ or C that uses Gnu Radio, you can still "paste" things in
such a way that some
    "distant" library loses its lunch.  Been there.   Done that. Yikes.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_000_MN2PR12MB3871803828ECF2D1D37D4055AF8F9MN2PR12MB3871namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Thanks guys, that makes sense.&nbsp; This was build against a GR and UHD th=
at I installed via PyBombs, so I think I am OK on that front.&nbsp; It is p=
retty random, so I don't think I have a steady memory leak, but it easily c=
ould be something I am doing on my end.&nbsp; I'll
 try to keep a closer eye on it.</div>
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
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Thursday, July 14, 2022 9:03 PM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: weird usrp coredump</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">On 2022-07-14 18:57, Marcus M=FCller wrote:<br>
&gt; But that application is the USRP block of GNU Radio, so you're at <br>
&gt; least not the first to use it :)<br>
&gt;<br>
&gt;<br>
&gt; Wild stab:<br>
&gt;<br>
&gt; So, this is run on your PC, right; are you sure that the GNU Radio you=
 <br>
&gt; run was built against the UHD you're using? (This is basically asking =
<br>
&gt; how you installed both GNU Radio and UHD)<br>
&gt;<br>
&gt;<br>
&gt; Best regards,<br>
&gt;<br>
&gt; Marcus<br>
Indeed, mis-match between what an application was linked against, and <br>
what it has dynamically loaded can cause Bad Things(tm).&nbsp; It's <br>
unfortunate that the<br>
&nbsp;&nbsp; *reality* of dynamically-linked, shared-library applications i=
s that <br>
you *cannot* mix-and-match.&nbsp;&nbsp;&nbsp;&nbsp; This was one of the &qu=
ot;promises&quot; of DLLs <br>
&quot;back in the day&quot;, when<br>
&nbsp;&nbsp; they were a shiny-new thing.&nbsp; Sigh.<br>
<br>
But my comment still holds to a certain degree.&nbsp;&nbsp; If you're writi=
ng an <br>
app in C++ or C that uses Gnu Radio, you can still &quot;paste&quot; things=
 in <br>
such a way that some<br>
&nbsp;&nbsp;&nbsp; &quot;distant&quot; library loses its lunch.&nbsp; Been =
there.&nbsp;&nbsp; Done that. Yikes.<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- usrp-users@lists.ettus.com<br>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<br>
</div>
</span></font></div>
</body>
</html>

--_000_MN2PR12MB3871803828ECF2D1D37D4055AF8F9MN2PR12MB3871namp_--

--===============1753188061838999452==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1753188061838999452==--

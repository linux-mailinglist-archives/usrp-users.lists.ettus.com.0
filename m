Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FFC84A48EA
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 15:03:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 139223843BE
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jan 2022 09:03:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="key not found in DNS" (0-bit key; unprotected) header.d=lboro.ac.uk header.i=@lboro.ac.uk header.b="gxrbS3X9";
	dkim-atps=neutral
Received: from mta-1.lboro.ac.uk (mta-1.lut.ac.uk [158.125.160.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 5538D3845F9
	for <usrp-users@lists.ettus.com>; Mon, 31 Jan 2022 09:02:42 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lboro.ac.uk
	; s=lboro-1; h=MIME-Version:Content-Transfer-Encoding:Content-Type:
	In-Reply-To:References:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JzRAqGuBHSpGfj93DuBpfOKThYedTK3WFchE3kVqvPc=; b=gxrbS3X9gkHiNq5Z388iHmLVOu
	vMFFDgKdhTzu6QDwR21A1VGl+PXkMvGI+J/noCeSuA8G+LMtf20RjclqbND0hXuDT5ISk70U1UfPo
	fjvMgNljCfXMEYlAWPVKuC3xsg8ciePOZ4JqCplIOg+epmggtDCUPL3fv11dDGE+N1Kla2XJpK1IF
	ilooO0vC9uOyYcsy14YnNdfO+TA05FmgPPZj1aX0Fok7EjmRQBGT2RXoIsAsXM19+wxZox7d1Z2A7
	CYd6igGjM0zyhtNihMq6+G894BprY91/ynqSbQThF/ugvlu9Wx4N5osJpaDyp7+KZ7iwLL7aYCYGU
	kTancNYQ==;
Received: from itsex-1.lboro.ac.uk ([158.125.160.16] helo=itsex-1.lunet.lboro.ac.uk)
	by mta-1.lboro.ac.uk with esmtps (TLS1.2:ECDHE-RSA-AES128-SHA256:128)
	(Exim 4.94.2)
	id 1nEXG7-0003II-9x
	for usrp-users@lists.ettus.com; Mon, 31 Jan 2022 14:02:23 +0000
Received: from itsex-2.lunet.lboro.ac.uk (2001:630:301:d314::160:17) by
 itsex-1.lunet.lboro.ac.uk (2001:630:301:d314:b8fc:8e06:90b0:b933) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2375.17; Mon, 31
 Jan 2022 14:01:43 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (104.47.12.58) by
 itsex-2.lunet.lboro.ac.uk (158.125.160.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2375.17 via Frontend Transport; Mon, 31 Jan 2022 14:01:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=da1JNwKpUYFn07hlc1ApDA9RU2mdBDoreORHPu67PvsV+Xy4GzrTaDw3Kld0zH6nGRFVxwJN/eFRKWhTxK+laTbg90uQPZ2ZU3lPmWRO+FzCWpsGuzF2Ej+lvVLyF9PSQDHxGE2wO5+XHgIhE+NrREL9Eb9+ldFaUEdSUB0RtH6qMZAFBfGRRbJ/xq7cniMGFK+9Oiyv/vp/f6s9fW5EEWFPNuoVtIemKI9r7qmJQLJny/VOrctuuRcdzyi28PWMKydv4k/ZiXSlpa0ALYlkDePAnySEIn1pOMxR87joCX1dcQIo4q6DYJudBE1RnKsvEJMSr2DMcSsoyQldTvLC1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JzRAqGuBHSpGfj93DuBpfOKThYedTK3WFchE3kVqvPc=;
 b=IoQkq0py4jXtwguZmUv2+LGdow/2RTo03qfuItFGRrsOJNc6PWRYnteBobSHiEUn6zfqydciIqju6WYMd1LkmBPiyuxoK/TaTOgXE363PetMLUz/dnZfhuoEay3eq2vPsYWcVJKdo9UJFKRAZvySaFYO2C8qjZ+/IPWVKDr/CbP14F/t8/UDz1yZt4x5Vl47QcIgsBME916CVT7Lxl/Ey/j4EuNi1F5V4VVRLtEm/V40UzZr8uy0E1Wg1P6g6J2nJ1q0XH5s9U0nNYOB1i/F8h0hcSdGUoWlMZosjnvtfmHPfLqnyyRgV4yVZ4KmFWKQqgPQLN5ZeorUkDcsKAT0bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com (2603:10a6:803:122::28)
 by AM0PR0402MB3460.eurprd04.prod.outlook.com (2603:10a6:208:20::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.21; Mon, 31 Jan
 2022 14:01:42 +0000
Received: from VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::6c58:52fa:37ca:9a5b]) by VE1PR04MB6653.eurprd04.prod.outlook.com
 ([fe80::6c58:52fa:37ca:9a5b%4]) with mapi id 15.20.4930.021; Mon, 31 Jan 2022
 14:01:42 +0000
From: Ming You <M.You@lboro.ac.uk>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Regarding Phase Noise of N321
Thread-Index: AQHYEKz+/5Z2VScrlU+kJfaBqu42v6xxSrQAgADFNh2AAGQ6AIAAADwTgAq/hC4=
Date: Mon, 31 Jan 2022 14:01:42 +0000
Message-ID: <VE1PR04MB665392D9D0728C4B0006762EBA259@VE1PR04MB6653.eurprd04.prod.outlook.com>
References: <VE1PR04MB6653B7870588CB7067893F2BBA5D9@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <f24351c6-0aae-d3e4-14be-9c531480bc75@gmail.com>
 <VE1PR04MB6653CF035A9E033C152BC5C7BA5E9@VE1PR04MB6653.eurprd04.prod.outlook.com>
 <374574be-bb6c-f737-46f4-97d738178b4d@gmail.com>
 <VE1PR04MB66534ADB1818F20E3FC23E8BBA5E9@VE1PR04MB6653.eurprd04.prod.outlook.com>
In-Reply-To: <VE1PR04MB66534ADB1818F20E3FC23E8BBA5E9@VE1PR04MB6653.eurprd04.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
suggested_attachment_session_id: 1e7a4a87-1110-f92f-dd8d-a1501fb8ee5e
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=lboro.ac.uk;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c63197d-3521-4f58-2cb6-08d9e4c235bb
x-ms-traffictypediagnostic: AM0PR0402MB3460:EE_
x-microsoft-antispam-prvs: <AM0PR0402MB3460CDD351D52BD028E01887BA259@AM0PR0402MB3460.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p2RLb/uCHOWvzApmNg1NZ3KocIRPZNv33eCC9e12S583cI1zidhqQZWuOhR4L0RjJ6XPNIDVzKOfiQXeCVV4gj+dLh22i28I+oSvt7vxSc6PX55Biu1dy5CGismAeEN2lYXyI9EtTRxGkJKbq/UOFFomHDsMlPh/0pfRC+0zUkpNsyhuisrngVjkry2ROGz38uicybXVs6jGOqWVw0cD1wNg81KwNMdf5+azH1o1e7Afz+bnp8et1cvEiWdKAubM1agUYXsUv+FhSIBHTFBqU3LFgJCVBORU6JICaSmhjoW3G2ngCyZ3RhTPolulmnAjTCiuPIOm84rbkVTZtR/QsMX1mznLVDxjY4NMLaAB0N0s0xzKeRBtU5jaiM4p1sbvFFrt21BWJRzpf+shMmyNbPKB/mLxFiJw9YBKjh7z3NkRSEO8U4x5oD143iD0+33LK3auKF+5NG6eLdP40YA180a00Y7lJxXFlpnKwvMuQttb6rSvVfPNiNUEBEQLvsUUpfv2hFKY61QzYjyjmvK1fCWvig3qa3+VdfpZRpBoPPAH6LsTWBANDAMjkLeu2RiK7fnZv1ol2+k2Uuph8hdLKiZHELMHNudE7je1IuD0kSoUFut2G2jK2baX3Z8jUGQ3ZFkfCSNCKDejDpfHsGt8el7QUxUykJsiiCwZeI4dl2PvvHekV1LEcy1yKwbmr/WtQHFpQlfaKuk/DvHr2VQtKQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6653.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(38100700002)(26005)(122000001)(5660300002)(33656002)(2906002)(186003)(55016003)(52536014)(66446008)(38070700005)(91956017)(8676002)(508600001)(66476007)(64756008)(6916009)(76116006)(86362001)(66946007)(55236004)(53546011)(66556008)(9686003)(8936002)(7696005)(316002)(6506007)(71200400001)(786003)(83380400001)(20210929001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?4YtkoJ1O0ymkjKVk+Y3FFeZRJ7KGdWJQW7fpQFUsWWTbZsHK7xYfhjVI97?=
 =?iso-8859-1?Q?6gBlesYxEoOE4TcJdKLPlUCADUYy1MNYh+nLMVhI5qtEPicT1IsDwdI1V6?=
 =?iso-8859-1?Q?xzrRBRt3oBlctDTK0hjdu9EvSBWgDOii1U+GXEDxrCeO0sAxfafQjVmxc2?=
 =?iso-8859-1?Q?05mI+Sp2br+xpdy3gGunbWI8xbxArz3bXpO5wbKJIf6y7dkmS01A0B/g7u?=
 =?iso-8859-1?Q?vlCWhlt+HVBTemfgH0YBYgEa5kDAVC5/DdmjA/6Qq41yOS3j15G3qkoCPn?=
 =?iso-8859-1?Q?ZfVHHyr4K2DkBJm7HNMoJndgG/LYigREs8Z/hFJQ/KkocNVSdkFvc9JCJl?=
 =?iso-8859-1?Q?7vEwbCZAN5GrnXSPABvmlf4nyj86xAfUVqB0U7otJFVopSRrl4ipAxunQB?=
 =?iso-8859-1?Q?tkiKID2xLYWEbLfy3SBDLRLDnj0YrneNt02mvIeGZBo0XuH7jppgRJzVUV?=
 =?iso-8859-1?Q?HIB4JzRxcbhu9OHH+x5E8mfl4SHQDA/w6+KdhxHj4CXMDGktIlCe7fLGFd?=
 =?iso-8859-1?Q?e2mkgP6egcmVU4/uTzoB56etMVoyVS3BS+RfsUPZD0IhsVqTrSXsaCS+IN?=
 =?iso-8859-1?Q?5gI8FqkCs+xsub7iFFuN4wcNXUZogNKg/Ig0EG7cSs0vpARoKKGtYE3kr0?=
 =?iso-8859-1?Q?xHw1vFjhwqG1yADw5ZAl+ZVdlAtt14W0VvLhS7RR1f6dPN3zavJR5NPvJ4?=
 =?iso-8859-1?Q?OvncOCyInm57ES1pDx5Schw2qtGH9YOVA/MUpKpK5aQ/xiliCtqHDxvi8f?=
 =?iso-8859-1?Q?cztN01BQtdo2tIL5penXQndZdJVKTuiEmHX2JH+rWrw1k6i1j46x7SzJ97?=
 =?iso-8859-1?Q?uWZBing+JsdWlVkBYW2Qpa4YvZ9h/8I0owd7jR0bmj7uGGyu5JesPu1rSG?=
 =?iso-8859-1?Q?d4ggKXrFj8V6zHGBAXfG6gKOQU175zkon2bNmsSj6BMDjFW8Rgabe4GqNb?=
 =?iso-8859-1?Q?jtGNOOz1DKaSbt2kL5MZBVoDPC2x9zO7t5BUtEFu2pMn7QlOP+76cQTDC8?=
 =?iso-8859-1?Q?deyWKUjU4zYwZwvcZ6G6NDql5aFFWEvqsRip2irC+GhE93dZU3ttPuizBK?=
 =?iso-8859-1?Q?l06svzw03YctednDNPPCn/XSL1d/8/hZCLSuA/p0xmwCkueAa3ioonAX01?=
 =?iso-8859-1?Q?U7oo9206FyRv5es2RE+Y0eKpb9xPcN5m7IBPRYGsPTDk/uG/hqn0MGetfO?=
 =?iso-8859-1?Q?3dQy2npA4k2g1jE7jmNFjXU0jwO9B5uhYqLs94V63Vy174IPhNIbr6PnKu?=
 =?iso-8859-1?Q?u80aV16vK/sLO4xE6egY08pvEuKrpk+/1KPglXJmZtUuH2OKvvtttvHnIT?=
 =?iso-8859-1?Q?aAfQqktHI0P45ory16BoMqkE2mYSGJlv1b+B0KRMxdyNxGStAOdwFFRjNT?=
 =?iso-8859-1?Q?0jsHzyKQ1sg+wYl2t4Tr/goGHOfwzsVWpGuPiWzz6zfeQYMzvEnwtFjEfu?=
 =?iso-8859-1?Q?Ot3T4lU5OvyL4KvMWRDjLz6xs5ZSavZowP3FHs0M/QOAyYQfg5vV805bse?=
 =?iso-8859-1?Q?4+1aANZ3Dh9rAiYfCZUuIJ/iQlt6LabaPdQbM2salwx3TW6VF3r9hAtXnI?=
 =?iso-8859-1?Q?hxqITLLDPaoM377xYPkgylnQDcvTQ6wNFTlWn2vxqOqtbvYPfeIkjJGsXO?=
 =?iso-8859-1?Q?zYAwu9PX6PyInh1NPQVPW3ifE693EvwFkzFZsNV0dLtocA7v8Cy/jzuQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6653.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c63197d-3521-4f58-2cb6-08d9e4c235bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jan 2022 14:01:42.4945
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: cf264fc0-aeb8-449f-9054-82ce4454084b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5VWIQcz8NvxI/jQx4rS0ICkvmaUAfKN98TJmLZN/1SthwGHbVrEGnnvZkDbyDbCLohTtaOhVUn63lG4cH0dKOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3460
X-OriginatorOrg: lboro.ac.uk
X-Scan-Signature: e629fa65265feb9c676f34414e2284f7
X-Lboro-Creds: scanned on mta-1.lboro.ac.uk
Message-ID-Hash: LB542PZC5WEP2EEUYICPXDNZNZBZTXOF
X-Message-ID-Hash: LB542PZC5WEP2EEUYICPXDNZNZBZTXOF
X-MailFrom: M.You@lboro.ac.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Regarding Phase Noise of N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LB542PZC5WEP2EEUYICPXDNZNZBZTXOF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Dear USRP-User list,

Has anyone used N321 together with CDA2990 before, and please let me know how to let N321 to work correctly for phase locking to the external REF signal, or this is a known bug with the UHD. 

Thanks,
Ming

________________________________________
From: Ming You <M.You@lboro.ac.uk>
Sent: 24 January 2022 17:58
To: Marcus D. Leech; usrp-users@lists.ettus.com
Subject: [USRP-users] Re: Regarding Phase Noise of N321

Thanks for the prompt reply. I've tried tuning the amplitude with a wide range, that doesn't affect the observed problem. Reducing the amplitude might make the signal strength smaller, but it is the phase problem, so zoom-in will still see the same.

I've tried both cable and antennas (3 different kinds antennas), and for cable case I am using 30dB attenuation. This doesn't change the observation, they phenomenon is exactely the same.

I can confirm the CDA-2990 is producing 10MHz and 1PPS, as I have mentioned, the set up and everything works perfected with X310, it is just N321 as I am controlling the variables in the experiment.

The phase rotation (constellation at rx) is not with a fixed pattern, for 900MHz case, it is rotating back and then forward, this seems not locking firmly to me. For higher frequencies, some cases it is rotating back and then forward, sometimes it is just rotating a lot (that is hard to tell if ti is rotating to one direction or just back-forward). Again, the same setup with X310 just as robust as expected.

Thanks,
Ming

Thanks,
Ming

________________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: 24 January 2022 17:49
To: Ming You; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: Regarding Phase Noise of N321

** THIS MESSAGE ORIGINATED OUTSIDE LOUGHBOROUGH UNIVERSITY **

** Be wary of links or attachments, especially if the email is unsolicited or you don't recognise the sender's email address. **

On 2022-01-24 12:37, Ming You wrote:
> Hi Marcus,
>
> The X310 is actually fulfilled by USRP-2950, i.e., X310 and WBX and GPSDO.
>
> The graph has been attached, actually it is very simple, just send a triangle signal over one channels from the tx (for convenience, I've only attached one antenna to the one channel on tx side, so that it is a much clear constellation figure on rx side). The constellation for such case should be a quadrilateral shape. With X310(WBX), the constellation at both channels at rx is very robust (the shape is not moving much), but with N321, the constellation shape is apparently rotating with time, and if increasing frequency it might just rotate. That is what I am confused about the N321 phase lock performance even with external REF and PPS from CDA 2990.  It seems to me that there should be some "proper" configuration/tuning, if this is not a bug.
>
> Regarding the 3rd question on what I am measuring, from the above description you can get an idea what I mean --  I just want the N321 to have the same phase performance as X310, since the robust phase locking is critical to any experiment when multiple channels/usrps are involved.
>
> Also to mention that I've tried all supported N321 master clock, 200M, 245.76M and 250M, they don't help and problems are the same.
>
> Any idea or suggestions will be much appreciated.
>
> Thanks,
> Ming
>
>
What happens if you reduce  the baseband amplitude a little -- perhaps
to 0.85 or 0.9?

Are transmitting over cable or antennas?  If cable, do you have an
attenuator in place? If so, how much attenuation?

Are you able to confirm that the CDA-2990 is producing a 10MHz and 1PPS
signal?



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

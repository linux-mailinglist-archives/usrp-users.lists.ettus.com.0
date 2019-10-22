Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F60CE01DE
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 12:17:27 +0200 (CEST)
Received: from [::1] (port=60434 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMrEE-0003xt-Ag; Tue, 22 Oct 2019 06:17:26 -0400
Received: from mail-eopbgr60102.outbound.protection.outlook.com
 ([40.107.6.102]:4225 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <demel@ant.uni-bremen.de>)
 id 1iMrEA-0003qS-L5
 for usrp-users@lists.ettus.com; Tue, 22 Oct 2019 06:17:22 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aOJkboDfga9qXOx/yyshCpESHwfsM37m3C0pa+gecq3zeBcy7+sB14o1Vvd6GEbFFfylUglJ4ybWRq2dzCs7C3GRxbfOYRJC/ajsfiDWhTcsCuG8Q+EXzKInY+F2rXNQpcw4PdNZoMyl5Hd7BZ4jBfC1XN6Ok5i9JzvwtcMKMLP3aqlkFwjJLn6S7OXTTHETbUgD26Z/KAYkNZaJxD8UL6P8AQkDy6uwQYGOYAc582cs7kbgclRMAvSgf6R5ZG8j8mNmfC27+4kBkGbT3+/N2RJgXPT3xxHoqOq/45oVttDUmwZB6K9TitduyLQgqz4eBqOI5BfLeVt+UiwbBbUetA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n1sXTVwDs+6osumJEJs7H1wOsua5mistpa1/RuefkWo=;
 b=m7eO/A4ZsvjVBbc4Ss5UWS72xDc5sCrXSNvZqfLCbCB+nzMDr49VwfGgXdemBo5JA6D1hgguxFtWhJYGkmujX5IxKYtxTXf13kohAv3WZMhdAG83vpfdF29tlsOn9kpjFZPMrlEoMGFdvHuIMnX4ktEIFOljGQrzRC9NOjF30mREeQBIalxeNZ9OHXfGj+39WFlpimbeSZufEbsczrXEr9aXXKCtOmDv/LcJHOuAZs/6IYHw5GC5Y397AeOHUwONd8BEZeyCSLVyI0+WUoJoUCZMUGwMrKw9T3A5JeNc74O66qY0/k/HYzYQy2Gn0rQUw+TLQ4ha08SbfyZ6KRDghw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ant.uni-bremen.de; dmarc=pass action=none
 header.from=ant.uni-bremen.de; dkim=pass header.d=ant.uni-bremen.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=antunibremen.onmicrosoft.com; s=selector2-antunibremen-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n1sXTVwDs+6osumJEJs7H1wOsua5mistpa1/RuefkWo=;
 b=OPVPolhpqAzjFXCGDMqA+/jj5TW1Ldr48Z55tEQxqRsu1f8ilulQABSEXQnh1xXk4QeojNp5BVSUgnkSkC4YBjf9YFt16uArY5GuKnct5CqbEMNKWcO/n/pfRd+aXRcMe924QTRqX0Orx9XNd8ZUGpIO8U2QulG8XVOsIh/AtSs=
Received: from AM0PR04MB6787.eurprd04.prod.outlook.com (52.132.215.71) by
 AM0PR04MB6484.eurprd04.prod.outlook.com (20.179.255.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2367.24; Tue, 22 Oct 2019 10:16:41 +0000
Received: from AM0PR04MB6787.eurprd04.prod.outlook.com
 ([fe80::51a2:617d:239b:de85]) by AM0PR04MB6787.eurprd04.prod.outlook.com
 ([fe80::51a2:617d:239b:de85%4]) with mapi id 15.20.2367.022; Tue, 22 Oct 2019
 10:16:40 +0000
To: Robin Coxe <coxe@close-haul.com>, "usrp-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Thread-Topic: N310 sensitivity
Thread-Index: AQHVhaPtYCVLk6qaKUuKizR2+TmdSqdgdEoAgAYEAYA=
Date: Tue, 22 Oct 2019 10:16:40 +0000
Message-ID: <e3e0f65b-9646-0059-8dd1-eef83c412898@ant.uni-bremen.de>
References: <0317ead0-5a23-2edc-7b80-3164cfe1dbc7@ant.uni-bremen.de>
 <DM5PR10MB194543FDE52C6C64A0985EE2AB6C0@DM5PR10MB1945.namprd10.prod.outlook.com>
In-Reply-To: <DM5PR10MB194543FDE52C6C64A0985EE2AB6C0@DM5PR10MB1945.namprd10.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0076.eurprd02.prod.outlook.com
 (2603:10a6:208:154::17) To AM0PR04MB6787.eurprd04.prod.outlook.com
 (2603:10a6:208:18a::7)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=demel@ant.uni-bremen.de; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [134.102.176.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d6a060f-a7bf-4b42-d079-08d756d8ee2c
x-ms-traffictypediagnostic: AM0PR04MB6484:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM0PR04MB648413CE21F2F31A0BEE01EAA9680@AM0PR04MB6484.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01986AE76B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(39830400003)(376002)(136003)(346002)(396003)(366004)(53754006)(189003)(199004)(7736002)(86362001)(31696002)(8676002)(229853002)(81156014)(2501003)(6486002)(305945005)(8936002)(81166006)(64756008)(66556008)(66476007)(66946007)(6436002)(66446008)(6306002)(6512007)(6116002)(6246003)(99286004)(2906002)(3846002)(476003)(486006)(6506007)(11346002)(102836004)(76176011)(53546011)(52116002)(2616005)(66066001)(14444005)(256004)(446003)(26005)(186003)(786003)(508600001)(14454004)(966005)(71200400001)(71190400001)(7116003)(25786009)(31686004)(110136005)(386003)(316002)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:AM0PR04MB6484;
 H:AM0PR04MB6787.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:0; 
received-spf: None (protection.outlook.com: ant.uni-bremen.de does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cxAw9b10Iw6ppPTtdzap131JIA2clVE6oI/pSYcSZaWUuvdVRWTFO3xgaxV1v0jP592GKyr8ZQ/xU6FaSfAVUMkabot6Emi6Y23yIMkQI8Gn6mvMp38FYOq19iEAAWQjwUBqUhOP5iWn6SnWIIT91t92bQsTUJ4RFLHFemzBA3kDQnYg+7ADivKiSk9CYDbc60azwq4xnwW405WWC3RJRkzs7bQYbL0BslHA3a4Q/2C9I0DCmpp7n1ukZ2ChrzHYqtjwCGtWRLj8BVqbWoL3Nz3zTQIV74oxGrw39JUrXSkJx68PIl62K9HWq2bj8skTT2F9ffCRO99UT3x9RoMhrtCT8f/zug2qSKqEgA9H7MjVF34jwmrM0CQRjECviTaoWfz37u8k2ZHsDisz4dnpnIgJCKVvlR2ydp2untesweB4peM6kiR4YyBG5DPykmUegw1o0qyVxfw3bCKATTuJpk8lPizwmPf1dCd90wvSy/0=
x-ms-exchange-transport-forked: True
Content-ID: <72C7787C3577994E815B6BE693943FB5@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: ant.uni-bremen.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d6a060f-a7bf-4b42-d079-08d756d8ee2c
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2019 10:16:40.7233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f018440b-2792-4fa0-b2bd-233acaf88ad2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N+2AAZcrvOGdRnabXF272xkfNEI91MFYz23POjvvS7HpZsUuCEtLW04UMpm1K5Ft6c5cKe+onstYZW7anqafoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6484
Subject: Re: [USRP-users] N310 sensitivity
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Johannes Demel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Johannes Demel <demel@ant.uni-bremen.de>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

Hi Robin and Marcus,

Thanks for your hints.

UHD 3.14.1.1 work perfectly fine with my X310s. Only the N310s seem to =

have problems. I use the default HG FPGA image that ships with 3.14.1.1.

For the moment, I use `VERT2450` antennas. The ones you can order from =

Ettus. I transmit/receive @2.484GHz. I mounted antennas on all antenna =

ports. So for the N310s that's a total of 8 antennas per device.
So far I did not specify a `Subdev Spec` in GRC.

I tried a few more options. Also, I unmounted the antennas on the RX2 =

ports on the N310s and made sure the `TX/RX` antenna port is configured.

Here are my observations:
1. X310 -> X310 everything works fine TXgain=3D20, RXgain=3D10.
2. N310 -> X310 everything works, though I need to raise TXgain=3D38 a bit.
3. X310 -> N310 works but it seems like sensitivity is still bad. I need =

to raise TXgain=3D70. RXgain seems to not make a difference at all.
4. N310 -> N310 bad performance but transmission is possible. Need to =

raise gains to almost maximum for bad performance.

This is the N310 setup code generated by GRC. I tried different `Subdev =

Spec`s for both TX and RX. I obtained the best results with `B:0` for TX =

and RX. Though, `best` is still way worse than X310 performance.
uhd.usrp_source(
     ",".join(("addr=3DX.X.X.214", "")),
     uhd.stream_args(
         cpu_format=3D"fc32",
         args=3D'',
         channels=3D[],
     ),
)
self.uhd_usrp_source_0.set_subdev_spec('B:0', 0)
self.uhd_usrp_source_0.set_center_freq(tfreq, 0)
self.uhd_usrp_source_0.set_gain(rgain, 0)
self.uhd_usrp_source_0.set_antenna('TX/RX', 0)
self.uhd_usrp_source_0.set_samp_rate(samp_rate)

Since Option 2 N310 -> X310 does yield good results, I assume that the =

N310 RX chain or configuration is the problem. Though, I have no idea =

how to debug that and which knobs to turn.
I tried to observe the spectrum with an N310 via `uhd_fft` from =

`gr-uhd/examples/grc` and it feels like the N310 just doesn't case about =

RXgain settings.

Johannes


On 18.10.19 20:42, Marcus D Leech wrote:
> What antenna are you specifying and which port are you rurally plugged in=
 to.
>
> Are you using offset tuning?  That may be necessary for Narrow signals ne=
ar the tuned frequency, due to DC offset removal.



On 18.10.19 16:24, Robin Coxe wrote:
> Hi Johannes. =A0That low response from the N310 sounds fishy. =A0Have you =

> tried another channel besides 0 on your N310? =A0It might be that: 1) the =

> TX and RX cables are connected backwards (note that the order on the =

> panel is funky due to layout constraints with the AD9371 RF IC on the =

> daughter cars. 2) signals are actually on the adjacent channel=97 =

> double-check the UHD subdev mappings listed in the Getting Started Guide =

> because if memory serves they changed at some point=97 or 3) or the SMA =

> connector center pin connections might be cracked.
> =

> Also, I=92m not sure how compatible GR3.8 is with UHD 3.14.1. =A0=A0Someo=
ne =

> who still works on Ettus products mentioned at GRCon that you have to =

> use master-next branches, but those use the new RFNoC, which is still =

> largely uncharted territory with the N310 as far as I can tell.
> =

> -Robin
> =

> =

> ------------------------------------------------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of =

> Johannes Demel via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Friday, October 18, 2019 4:06 AM
> *To:* usrp-users@lists.ettus.com
> *Subject:* [USRP-users] N310 sensitivity
> Hi all,
> =

> I figured out how to use our new N310s.
> =

> I ran into the next issue. Let me describe this one briefly.
> =

> With our X310s I set TXgain=3D20 and RX_gain=3D10. Both devices are 1-2m
> apart. I observe a really nice RX constellation with gr-gfdm and
> XFDMSync with bursts every 1ms (burst length ~50us). With our N310s I
> set RXgain=3D60, TXgain=3D70 and still, the constellation is very noisy.
> My assumption is that some part of the RX chain is not configured
> correctly. But I don't know what the problem is in particular.
> Also, I used an X310 as transmitter and an N310 as receiver. But the
> result is the same, the RX constellation is really noisy.
> =

> Another observation is, that my RX sample stream in a GR time sink does
> show quantization artifacts. i.e. I can see discrete steps which I
> assume are due to low RX sensitivity. The RX value amplitude is around
> 0.0005 for the samples that I get of a USRP source. I assume this should
> be a higher value. With the X310s it was more like 0.1.
> =

> Do I need to take special care when I only use 1 antenna port?
> Is there another AGC setting that I need to configure for N310s?
> =

> Johannes
> =

> Software
> UHD: 3.14.1.1
> GR: 3.8
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

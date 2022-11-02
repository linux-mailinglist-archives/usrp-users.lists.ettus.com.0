Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6F96162C9
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 13:38:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5210383BF4
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 08:38:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667392726; bh=kPIZzsRSJDuV1S0B0LxtWIoscIitMTNW7HnnFWUPta8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=SrB8vMILzKVWBvqdbTEA336Gu7q1sStJZRO7Vi59FWsjblqyu9tjSi67+bkEt4w3u
	 Ia2AnQexk+v0w7LksP7hYoOqwYYaWaC2MvdRrTgpUGvkbVAULmEQ6VziOHUQ27N5w1
	 Hjs/tzwDW97tbFPOYFz81sBX+75tLgM5xkfTmB8yu8mFmhwD5LLJuGqxXGB95APsKA
	 zLhn7f0ten7pSX9Kr7WxN4FJLEsJc7R3Kd9FOdIDZBHBminth2bzE8YgEeNoUZhwz4
	 SUgbGbwyfgzoHYUvQ8WzKcaJCiXcgaG44Xh/K5O96oktsrANNA90DNjylvtyjW7S1I
	 1ZPuhEK62UoaA==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.164])
	by mm2.emwd.com (Postfix) with ESMTPS id AC3FF383A1A
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 08:37:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="cSc+kWbU";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.172])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 2303B280072;
	Wed,  2 Nov 2022 12:37:34 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id DB9F614006E;
	Wed,  2 Nov 2022 12:37:33 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GEQh1QMU1HVcEiw/EhbpH/Pi70MaKVBKy+16jy83q2vEELnCTVDCKCiEK/LseKP1Z5r1NSxGfBDnnd4mlW1oDZOSivNEo0hPcqnOzcsvxmBxyOlapGpoEinIz4MAjNNdOE8BRbQYxi3cn2CHVAJk9A/mWapO+kxM13WiY5b8Pkn72qk/IQaHxjdU5i7rt7oha4cVD6Yqk0ekZIJCwe1MzGGYo3BxAm76dUPOJ2POzRficRvGIu/jRCOtpN1zXzec2YXELam8kEU5SIlTo/a7hT9Lhl3iheV1S7jiaviEC0x8rFj+56laJXTCNhPnKjua6XBSX62+uTh5GDLeyphG4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Aq5M80n/NMD2/TmcAtq7Ssvtun8HLH3VWXdCaYzxIc=;
 b=f9bhRSmBmJRqnbZojYmNqaydblt+ULy287DTcSIoIN1Syi/7k5lD08XwX5NFnerLFSnRSgODk98rjjQx4GYpj5EWOrzZVezMRdjpP8cFamKFh0FXbA4sGNzgqXxq9o/lQYiWZcQd74Ir7Y83GpaHJqLTIxcecNeX44NqQMOF0BK2JgPUMuIOrw4gAGVapr1nGCe0QzJLwcL7OhVUAUYz0twovZM6pgex1WK36kY/3fUsF8bW5u5SaS4YSVYI8O8PHFB/gMwyi+Y3NeSwyc6JE+PtwJ2zoXYIzCIaiEbmIo6lu5UV4vVmuRrr0gPaEqAiwZZ2zhdkScInn1UFHSIhFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Aq5M80n/NMD2/TmcAtq7Ssvtun8HLH3VWXdCaYzxIc=;
 b=cSc+kWbUkczSCeLxyUxsy+S+ndrtaXMpJ8pxXI70Ixo5rGEVoyENuHlezFqlC7dYE9aHGxHO/gILTVFpZUjT91ffT7vWznI97YXor4/9bWkIocMmEyBBjoxjzy3n46ROwoHEB+rKnSZEB0zR/z9yGwAYiRxSq1qf/YmCk2+J7CY=
Received: from BYAPR12MB3301.namprd12.prod.outlook.com (2603:10b6:a03:130::29)
 by PH7PR12MB6540.namprd12.prod.outlook.com (2603:10b6:510:213::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Wed, 2 Nov
 2022 12:37:30 +0000
Received: from BYAPR12MB3301.namprd12.prod.outlook.com
 ([fe80::8f72:aea4:ec1b:508]) by BYAPR12MB3301.namprd12.prod.outlook.com
 ([fe80::8f72:aea4:ec1b:508%7]) with mapi id 15.20.5769.019; Wed, 2 Nov 2022
 12:37:30 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, "usrp-users@lists.ettus.com"
	<usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: N320 LO stability problem
Thread-Index: AQHY7rAbGMBhLfKBpkKklSXlG+QYJ64rkK2AgAAA9ko=
Date: Wed, 2 Nov 2022 12:37:30 +0000
Message-ID: 
 <BYAPR12MB33013BD6E3BE1D6065E79830B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
References: 
 <BYAPR12MB33010775AE76FAB552039CF8B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
 <bc238838-4f69-b676-79b7-955751d6a628@gmail.com>
In-Reply-To: <bc238838-4f69-b676-79b7-955751d6a628@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR12MB3301:EE_|PH7PR12MB6540:EE_
x-ms-office365-filtering-correlation-id: 492d5965-9ff0-47a5-af10-08dabccf01f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 fHOtrWd1QsZcVRD7Pr/gOxQjV/HNZ++Ar0joFON8hRUN7e9axpcwegHAZNO/KksJAcTUZLc6WnQ0EljJqfbExJQsrct3bj9//TwiS4s62PXnc4uE/Ywt3z2iiMpooRqYOw5DnTetUilrQNuM/e5alnhq5Wcr40m2QEAFe+Mck0u0HYiCdS5kwCnjBsifww9McIteA38MO0rjENEWXCtOxJ4xNrscHSbARjs0hO2e3/YcZ3G6kb9yzIrSN0yfmQa4DFiqJ6bFaXc0dGcVoLXI16NOa9b9H9ibySZ6TncfkBetz+u9xFuCAsD0KAf1kayN9PnfyPFWYGcKlvo6Cn6ivWkLwtldNhKtdkAXNaeJHdSpyfXcnUk2M5WSxqUlMGGIZneasMmbww5C3CojVVyMX0ePqghW+b+T7+9eZrhIW6zf6/ghw5ah1BC6TAFesVSwoVr3TJ0zcy+waW1PLgY+6XIWDsr5iXgtTuFXSMNiM26Ue/jjR59R+kVwx4aJfoFqiJ6pYRaBkPzlM0llvlLzBRjlltjrcFL3NtbjycCF70E+S+UB3/z9mBhWMqyRyXZb7b2+xATa3FcPlaUDFa4yVkVU0TRmAqSBgZxHBVWg2DoxncFgJz0UKmpdt/OQkGA7s5BHAuO0RUzIo2rCzzgDex+3eACfjg9Aoc8hIrwKTbVKNYrU0atlKh2fSpRbSuqbROX7Ys5b1nLGkLbZykUW4kqELkqTGXH4H2Cv6s+Sa0FYZuJnztJVFoIaw92yJsTjB4MFAZDXzXyr6+rcrrkO1g==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3301.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(396003)(136003)(376002)(366004)(346002)(39830400003)(451199015)(186003)(5660300002)(83380400001)(2906002)(66899015)(19627405001)(86362001)(38070700005)(71200400001)(7696005)(122000001)(9686003)(76116006)(478600001)(52536014)(33656002)(66446008)(316002)(91956017)(41300700001)(66476007)(8936002)(8676002)(26005)(66556008)(66946007)(64756008)(53546011)(110136005)(6506007)(55016003)(38100700002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?f3QTndBxpVmDNaagNN+/vz5UhY1Bo8XEjJ03xFRin66xU8Ut1pDqJacevL4L?=
 =?us-ascii?Q?4o+Vgg/VJWvKe+d3g3wdjDTO3T6qbmvYF75G3EvBU3rdWDAos0ITlLc6VoOw?=
 =?us-ascii?Q?yxusEgfFpUXRJAS8VmUsZh9p3kAUYVTJZmw9+X77GBdjV2nvs4jWbqzbcjUq?=
 =?us-ascii?Q?iBBWkdo0g+ftQQY9QIxlUSKjLUd7K7AjxFIv8g0S6n2Z75HLjBgv+aMPnRBc?=
 =?us-ascii?Q?lmbwVBWDsa4OGoXZoFc3VaIlCAOncfZSIz/51wttbu+gT/89njNNfMLTIeVp?=
 =?us-ascii?Q?Q4j8TdQmc8EKNfiLiaKHvQeHTP/ArvxNS60wh/qVLbNTuGP0aUydB0Gturu6?=
 =?us-ascii?Q?ZvcfL0k40eEhr89ywkdyOPcBLi3JkYSW4RYqNRNZ+iIipyGbUi+kVn0ZrBvt?=
 =?us-ascii?Q?zLgaDDfDkwm4CtYuvuv63qrlhgu7Gd7mL3tmZBjZiPlLhuiOVRrkvRtKp2U5?=
 =?us-ascii?Q?TqPfxmuNTFePIWPDghRhcNO5PDJMTLW+K7dGET5Gl9Jbsowt/3B5i5Qoc9em?=
 =?us-ascii?Q?/n16APjqFyqWnzne8/zuiE6yFvkKBO9QN7nqolvkeFn1qVzqNxD6cqDijoeW?=
 =?us-ascii?Q?LhpmgxJ6pCQBDeatJV46L5eKhc99uA4b2aINpcEm63fb/l8kz6uHys948YIg?=
 =?us-ascii?Q?kObbAuaqpq0jbMxT9FQtZt1HlyJB5LP9uQ304LBXlT3TSKITJYK/3qP3JZot?=
 =?us-ascii?Q?UYmWX+n1YfJCpxMJhFOqnxHqwoaYYYmsJRv6M4QJyEX4GPopnXPR0PFDrxS6?=
 =?us-ascii?Q?mhZdiecCEsCZjO8OPZQ81XwszciOC+sR2DrEYQhvIFYnHCic1F0JXIuenppa?=
 =?us-ascii?Q?31+VYBx1+OF4j2N9LSjliesPLkckUVe1G8D3boHnHCNyiC6xEXrhoOKjK05S?=
 =?us-ascii?Q?bi9iLBhSir9Sw2ad+YeuVWYfEMRLqLHUyaJj83rdRsHW2pgGSEOfa+S95ezT?=
 =?us-ascii?Q?bpB0R9zLkgaD1OhFExHb+kK56PXxmwzIwTiWNVWHg/bADI+zo8pRhDfjCoAB?=
 =?us-ascii?Q?StS+nO9MjP4t0Aa08MjuJh/XtbjXPt45hjMyV0En4p1u70U/5mcdru8HixKk?=
 =?us-ascii?Q?FXCIxqRLPQ1jU4U1WSxI+9UdOCcwGxO5ov7Ub/lDD1KYXhASA9kn/fVttl7R?=
 =?us-ascii?Q?ycUCdRI8Yf5ngU+DdKkpfD/gW9MQW1kxGzxgoH3KKGnamkpneG+j5RLCCFo4?=
 =?us-ascii?Q?Wf2EYK6cQClscllGvREyshkCRLkBbgCqgymQMVW4bBWou7jimyXu73mVz8c8?=
 =?us-ascii?Q?kaw0JvY0Huyyg4UmLuzp6OAJX4c5mW2gJkYRY9/LTTrEzWTQFUdK7UCNURNC?=
 =?us-ascii?Q?VSKTtyRk8c0HsZMVtiNK+I/VogJn7tAp7IheYkeRNdDKmHxRR73qnZuJovaf?=
 =?us-ascii?Q?Y58W7EMJLNvu46MHKpina/uYf07N6+L4rKWGwPjHfs3HCB5vNaioTvj7Hf87?=
 =?us-ascii?Q?RLZUxxyggK7k99dYaHy8i+YOExjrv1RP6RGohLAFk19vqkzZqHB1TqFSg5LB?=
 =?us-ascii?Q?T2dW7ajpmPFVYFNMa+Vxmi+FA89f00xkeoEBm6Nyir3WHgbmJsE9c75VR6j/?=
 =?us-ascii?Q?tiBQwHXX6Iao4pP0G/3D/D1VaSsEVQ3bXa/5LYE6EoEqVmTWhkEf75pHVFHx?=
 =?us-ascii?Q?lQ=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3301.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 492d5965-9ff0-47a5-af10-08dabccf01f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 12:37:30.3048
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yTiYzLz+yIIr/QrlzaozSvJOemBFezDsDBycAgirT/VIcRzEAZZhvPGP6L7nzEETetY6Ouqe8BT5G1C0DkD73kn+DLvjCaWZ5tWduTNmaqA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB6540
X-MDID: 1667392654-iF35xv2gOPJ3
Message-ID-Hash: SY3ELMX5V74TVBRFBOFEMFE5L7KNC7KL
X-Message-ID-Hash: SY3ELMX5V74TVBRFBOFEMFE5L7KNC7KL
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO stability problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NHEXTSSQGXLDLK6Z3CIMG333AUBRXH4M/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6688371143470548186=="

--===============6688371143470548186==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR12MB33013BD6E3BE1D6065E79830B8399BYAPR12MB3301namp_"

--_000_BYAPR12MB33013BD6E3BE1D6065E79830B8399BYAPR12MB3301namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

Thanks for the responses. Yes, I have the same issue with tones off center =
-- we initially noticed the issue with some wide-band modulated waveforms. =
I did just try another flowgraph with a tone at 100KHz off of DC and confir=
med that the issue does still persist.

I'll try to experiment with other UHD versions today to see if that makes a=
 difference.

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com>
Sent: Wednesday, November 2, 2022 8:31 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: N320 LO stability problem

On 02/11/2022 08:11, Jim Palladino wrote:
Hello,

We have about ten N320s and almost all are exhibiting issues regarding the =
LO stability. It appears the LO is not locking at certain frequencies, or i=
f it does, it barely maintains lock. We can see this with either a gnuradio=
 flowgraph consisting of nothing more than a usrp_sink and a constant drivi=
ng it's input, or using the included UHD example "tx_waveforms". The proble=
m frequency I've been focusing on is 1112MHz. So, the following command dem=
onstrates the issue:

./tx_waveforms --freq=3D1112000000 --wave-type=3DCONST --wave-freq=3D0 --ra=
te=3D1000000 --gain=3D40

Some of the N320s seem to lock ok, and you can see a reasonable tone at the=
 output. However, other N320's don't lock -- we will see a several MHz-wide=
 "blob" about 4 MHz lower than the requested frequency. Note that they aren=
't reporting that the synthesizer isn't locked, but that is what it looks l=
ike. On units where the LO appears to lock, if I look closely on a spectrum=
 analyzer, the phase noise often looks horrible, or I see large spurs aroun=
d 106KHz off of center that slowly move up and down by 30 to 40 dB. It look=
s like it's barely maintaining lock.

This issue varies by N320 and also by channel ("A:0" vs "B:0") on the N320.=
 It doesn't matter if I use an internal or external reference -- the behavi=
or might be very slightly different, but not much. Gain settings, sample ra=
tes, etc. don't seem to matter -- it appears to be an RF/synthesizer issue.

I also tried enabling "spur_dodging", since that changes LMX loop parameter=
s and that seemed to help in some cases (units/channels) but hurt in others=
.

I've been focusing on the TX path, but someone else in my office was mentio=
ning that they have seen the same type of thing when receiving -- the resul=
t was that 1 out of several N320s he was using to simultaneously receive a =
signal showed the same signal several MHz off of what the other N320s saw -=
- and it looked very distorted. I'm guessing that what he saw was the resul=
t of the LO not locking properly.

We're using UHD 4.1.0.5 and associated filesystem, FPGA image.

Any thoughts on this?

Thanks,
Jim




_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


Also, if you try sending a tone at other than DC (perhaps 10kHz), do you ge=
t different results?  This might just be the
  DC-offset removal algorithm producing results that look like lack of synt=
hesizer lock.



--_000_BYAPR12MB33013BD6E3BE1D6065E79830B8399BYAPR12MB3301namp_
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
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thanks for the responses. Yes, I have the same issue with tones off center =
-- we initially noticed the issue with some wide-band modulated waveforms. =
I did just try another flowgraph with a tone at 100KHz off of DC and confir=
med that the issue does still persist.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I'll try to experiment with other UHD versions today to see if that makes a=
 difference.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Marcus D. Leech &lt;p=
atchvonbraun@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, November 2, 2022 8:31 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] Re: N320 LO stability problem</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"x_moz-cite-prefix">On 02/11/2022 08:11, Jim Palladino wrote:<=
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
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Hello,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
We have about ten N320s and almost all are exhibiting issues regarding the =
LO stability. It appears the LO is not locking at certain frequencies, or i=
f it does, it barely maintains lock. We can see this with either a gnuradio=
 flowgraph consisting of nothing
 more than a usrp_sink and a constant driving it's input, or using the incl=
uded UHD example &quot;tx_waveforms&quot;. The problem frequency I've been =
focusing on is 1112MHz. So, the following command demonstrates the issue:<b=
r>
<br>
./tx_waveforms --freq=3D1112000000 --wave-type=3DCONST --wave-freq=3D0 --ra=
te=3D1000000 --gain=3D40<br>
<br>
Some of the N320s seem to lock ok, and you can see a reasonable tone at the=
 output. However, other N320's don't lock -- we will see a several MHz-wide=
 &quot;blob&quot; about 4 MHz lower than the requested frequency. Note that=
 they aren't reporting that the synthesizer
 isn't locked, but that is what it looks like. On units where the LO appear=
s to lock, if I look closely on a spectrum analyzer, the phase noise often =
looks horrible, or I see large spurs around 106KHz off of center that slowl=
y move up and down by 30 to 40 dB.
 It looks like it's barely maintaining lock.<br>
<br>
This issue varies by N320 and also by channel (&quot;A:0&quot; vs &quot;B:0=
&quot;) on the N320. It doesn't matter if I use an internal or external ref=
erence -- the behavior might be very slightly different, but not much. Gain=
 settings, sample rates, etc. don't seem to matter --
 it appears to be an RF/synthesizer issue. <br>
<br>
I also tried enabling &quot;spur_dodging&quot;, since that changes LMX loop=
 parameters and that seemed to help in some cases (units/channels) but hurt=
 in others.<br>
<br>
I've been focusing on the TX path, but someone else in my office was mentio=
ning that they have seen the same type of thing when receiving -- the resul=
t was that 1 out of several N320s he was using to simultaneously receive a =
signal showed the same signal several
 MHz off of what the other N320s saw -- and it looked very distorted. I'm g=
uessing that what he saw was the result of the LO not locking properly.&nbs=
p;<br>
<br>
We're using UHD 4.1.0.5 and associated filesystem, FPGA image.<br>
<br>
Any thoughts on this?</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Thanks,</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Jim</div>
<div class=3D"x_elementToProof x_ContentPasted0" style=3D"font-family:Calib=
ri,Arial,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<br>
<fieldset class=3D"x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_moz-quote-pre">____________________________________________=
___
USRP-users mailing list -- <a class=3D"x_moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"x_moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.=
com</a>
</pre>
</blockquote>
Also, if you try sending a tone at other than DC (perhaps 10kHz), do you ge=
t different results?&nbsp; This might just be the<br>
&nbsp; DC-offset removal algorithm producing results that look like lack of=
 synthesizer lock.<br>
<br>
<br>
</div>
</body>
</html>

--_000_BYAPR12MB33013BD6E3BE1D6065E79830B8399BYAPR12MB3301namp_--

--===============6688371143470548186==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6688371143470548186==--

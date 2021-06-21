Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1023AF974
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 01:34:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A5222383D93
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 19:34:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=wisc.edu header.i=@wisc.edu header.b="ml718fL/";
	dkim-atps=neutral
Received: from wmauth3.doit.wisc.edu (wmauth3.doit.wisc.edu [144.92.197.226])
	by mm2.emwd.com (Postfix) with ESMTPS id 2F590383D85
	for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 19:34:00 -0400 (EDT)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2177.outbound.protection.outlook.com [104.47.56.177])
 by smtpauth3.wiscmail.wisc.edu
 (Oracle Communications Messaging Server 8.1.0.8.20210105 64bit (built Jan  5
 2021)) with ESMTPS id <0QV2005NHS4KH180@smtpauth3.wiscmail.wisc.edu> for
 usrp-users@lists.ettus.com; Mon, 21 Jun 2021 18:33:57 -0500 (CDT)
X-Spam-Report: AuthenticatedSender=yes, SenderIP=[104.47.56.177]
X-Wisc-Env-From-B64: Ym91dnlAd2lzYy5lZHU=
X-Spam-PmxInfo: Server=avs-3, Version=6.4.9.2830568,
 Antispam-Engine: 2.7.2.2107409, Antispam-Data: 2021.6.21.232715,
 AntiVirus-Engine: 5.82.0, AntiVirus-Data: 2021.5.20.5820000,
 SenderIP=[104.47.56.177]
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kjyur9IByuLoJwxsrBKX2g+R82DisF9CFw9DoA5AGi8PRrbA2i56wC+xTw0ppf1qFtYHBwx7V9OmE5vyvaZBX6n6tqy6WP6YsjnuclBria43wAjAMebs5iu3cetSSgZg5tZS6feM1QvNBCwVGz3R2Tw+HaKk9ovPtjh5XWF7SRIV+MumOYR3hL0r3g4wX0wTGwyIOjE50xaav6t9EouvLgm68svsM0En5NvNAI3fRpQYnOeKCj5DOkEqXmOekZ7zd0qxDP3xIZlMv95qWMie+vwx5suTsbz6DQCosxxLq59atpn4jXtQg51X4OZI8vNT2zdUSIASck6TkMpZgazDhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0FoxemP70ETtfxibWfX9/igFiWs+m0qrGZ5KxZbnWZc=;
 b=Uxz5SN/0PlHzWIYsF4sB6AXkQSYi51VB/1GKGQOcc9C6M1am7/wPzOpq9NgQ5oJ3yiOEjDBbaP1FilowLsCYNo11vhOrGLEz9SFPYrS2s4RVOJGV8QdeD0t6/kRyfZoabtnaluZS/QdZsdxkHxCXpxkTVRtbhqb7n7YGDinpJj3oJG3sU+ff1GeqRsLPeIqMiHZ4R5qZl0x52NJbXtpMAwsoAYiObJL31ymMF/9lfe/81KIkKTZh74ElyltG0iKAVzbhqnidbms/m5ATcKpmxIUdgLckO/wNrGnfa3fFa1pmP/GXfqY7nNKVFIVHOl9ucHcKynT/HpaaD479DosZOQ==
ARC-Authentication-results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wisc.edu; dmarc=pass action=none header.from=wisc.edu; dkim=pass
 header.d=wisc.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wisc.edu; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0FoxemP70ETtfxibWfX9/igFiWs+m0qrGZ5KxZbnWZc=;
 b=ml718fL/vjwVVxKn7tTBBuvwwP3NLtjyXFVS83rx11Vz7CiHFkID3grElpm5q6RPnxd9dg7EUTWqeLjzETAUclre9U+e0IkiwHRUdnq2tRgNdmKZml3V+qjk4iHsmuqsmAhrM8ho7K9YQrs5z3JBfsNUKRQxYQLW5jhnB9uAnR8=
Received: from BYAPR06MB5352.namprd06.prod.outlook.com (2603:10b6:a03:ab::29)
 by BYAPR06MB5253.namprd06.prod.outlook.com (2603:10b6:a03:ca::11)
 with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.4242.23; Mon, 21 Jun 2021 23:33:54 +0000
Received: from BYAPR06MB5352.namprd06.prod.outlook.com
 ([fe80::4c64:bb29:c55e:894c]) by BYAPR06MB5352.namprd06.prod.outlook.com
 ([fe80::4c64:bb29:c55e:894c%6]) with mapi id 15.20.4242.023; Mon,
 21 Jun 2021 23:33:54 +0000
To: =?iso-8859-1?Q?Marcus_M=FCller?= <marcus.mueller@ettus.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-topic: [USRP-users] Re: Adding Timestamps to B210 RX Samples
Thread-index: Addm7BywcxR/E7cAQ1GhYkAXSz/3egAAPuCAAAIsU0A=
Date: Mon, 21 Jun 2021 23:33:54 +0000
Message-id: 
 <BYAPR06MB5352256E7E9DB6E9A4035DF7D90A9@BYAPR06MB5352.namprd06.prod.outlook.com>
References: 
 <BYAPR06MB53523BE92F6B1451D1BD12BDD90A9@BYAPR06MB5352.namprd06.prod.outlook.com>
 <e1133a28-c110-2368-18e0-aa5ac38246b1@ettus.com>
In-reply-to: <e1133a28-c110-2368-18e0-aa5ac38246b1@ettus.com>
Accept-Language: en-US
Content-language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-Originating-IP: [2607:f388:1082:fffa:b5e5:9221:d52b:cf11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 129c8035-0fa8-4361-b892-08d9350d08ac
x-ms-traffictypediagnostic: BYAPR06MB5253:
x-microsoft-antispam-prvs: 
 <BYAPR06MB5253908714F92A919A634FB0D90A9@BYAPR06MB5253.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 liEMhtcJHEx5Buacjx8OGa/ku7n6JqSn92vUMBFhogeeoYU33aoBzP6SlCGX/58/2OUjzPQ3c5w/4t/zSlNIRrixXpovRJmfLDLw07El3fqkOmwoEgU4xu+WQ/cVljfC6HunLxKzwvXzbc5CZRYOFwIoBeGUlW/58K2zSoT2rAPnzaJ/as+v6G9RjiEANiWKHUl49z+0L/kcDiGrZ0yt+AkqbTHYjxMRZQC9UojKFE4bnwnQAOx0hfwmjBYzyhII9kqWOzqoDxHI8ms0R2url3pZrKzdALkCknBnSdHmBTsIF5baa0MkbQeh1d+cWWNImkRTe0KrkgXrFVvi7ZufHwRpvhiIupmwXDYKsxFvDpBNO78pShIehnFP+CMfTeCOa3E7uyzHm6hvnEsUGa0y8neniJqs3pkEMD/tc1jaBeU0iZ36MhIwMLNLATB2lucxFlupc/AfF6oGeDmAB3FaafZyqxJwlaGZ0CJJuRpjfMeFG39vEyTzkhmy5PcvBsxyYgOcE/h0lP4m+N3WGmIIEBYTg2SLLYlS3sGSdN9rjB6ZVwnCnMmiDVP7h8caY2oerz9WxZtb9+SYU2DgvzO7WVhL4wmeVJk6u+QDclEnfoLcOkhPcI3aUxjAXXtpaA/FBkLPLF8TLIDFRTcdlIg3m3ymFx6TGOGlZYDaPEAEIMStDhTUgNtO+ZqJPY64Rrpe4+shcGrAczjAlhIDqzbUmA==
X-Forefront-Antispam-Report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR06MB5352.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(396003)(376002)(136003)(346002)(39860400002)(366004)(53546011)(7696005)(6506007)(186003)(110136005)(316002)(786003)(5660300002)(478600001)(75432002)(2906002)(966005)(71200400001)(66574015)(52536014)(38100700002)(76116006)(33656002)(66946007)(55016002)(64756008)(66446008)(8676002)(122000001)(9686003)(83380400001)(66476007)(66556008)(86362001)(8936002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?bJSNjb9ZLBa4pkFoNDa4UUYxPWEqmS2+vPNkuQ5YO0dVFDXNRGYANBk3ZA?=
 =?iso-8859-1?Q?xOEgFm40anzUIkutpXnFbkKNPVgsG3t1FlByUTUo9jlQRunTlVfSjRu9fR?=
 =?iso-8859-1?Q?4ihaei/H23Re2IOIr9maeJIcSzuUM8Sg21gQkB3aAP09NSIaGY969o0rbX?=
 =?iso-8859-1?Q?zTEqjf8ZymO/RpgeOdgNk15iyM3EMktZa54a28seFsw0PtAM1wa2hgujg2?=
 =?iso-8859-1?Q?L2PTpY79qfxvMgJb0MCZdOt24oJwjFEbhf05E+NzRCAaALu6T8oYYb6Mzu?=
 =?iso-8859-1?Q?B84f0Ch2K/nHyMIfr7Qz2/dR2HzAITb37xkjqHPvnNSX5ssLnV2RUo2p55?=
 =?iso-8859-1?Q?9UDCIHjPVriP3lRcNnXVcyNUHBvE8UFJgIC/+32aDYKccqZaRb44i2ufTL?=
 =?iso-8859-1?Q?44rq7AZOBxwX7IWI7oeSx4JnmrutcEHjCtuN9KPcpMQWNBYvzICmOO/5ve?=
 =?iso-8859-1?Q?nR3T2DEapK1yqhNYKpuvW8lo2K8JgnGuRPUrPNOwHnxGt18GUYSqWPAOYv?=
 =?iso-8859-1?Q?XQYwa9vJdZZiiJ09o6pHJsEQmO+i/An3FQJvk/YayzWKRmICgVe54Mh6tK?=
 =?iso-8859-1?Q?dGM1YliVqfkh2u+11fzoPyZwYLQSPiy6Lo2jaWr7ZLXk/ydWye2yqdPUJA?=
 =?iso-8859-1?Q?FAZjyD+fCXdLTwCDOisBZihnRryYSFLrrCwfz1GDO8htywyLfAJQ98asIZ?=
 =?iso-8859-1?Q?DJc04Wh2SduX8JC9T2idOrTM/K6aR0Dyd/dPQct0qv88po2s4SsqscQkZG?=
 =?iso-8859-1?Q?uzIekh6Kzrr04ERt+QtPEBmUrmwIbi6NkvHX1tY/KQYKhiGv6wy/7AWBlV?=
 =?iso-8859-1?Q?rM+Y0KVnJhWoou5ed0PCUxAFLPqExSTt1rB0YZUscnAzTM8qsRm2axuHd/?=
 =?iso-8859-1?Q?Mwyb7CKK4bwxLGFVKOeJyxp9DduiPM2a5V9biaIWNlUJzEeWeV/oKaLv/L?=
 =?iso-8859-1?Q?BBDv3lU6WePX6pnwP8Dsk2Js17/cfzYmWIierhZN7HAdix31s+TLuVbGzM?=
 =?iso-8859-1?Q?qQM7lvLvt7u5/s/AP+COjSzTo9PhPRG6pGCAI2WRBeszcXf3nAznormd8e?=
 =?iso-8859-1?Q?5lACsjf5kIOgSuyegGhyT+QUIgmCIP2PHtrWdwLxtQTDeP3aQkykeza7RC?=
 =?iso-8859-1?Q?J5PZV9N4mJMbNAqCub0UPTZaokWj/BOB3N9BBDKoUhWcyAOmcB7b09YiFL?=
 =?iso-8859-1?Q?BnIdbI02cL3uYrY7cELSoVFwSjUhfwcwME4+u38ayQ+KuEyklKwcMnodZh?=
 =?iso-8859-1?Q?QKIhl2mmXhDycShPt+lP5+9iE7iQBdsaotGzgZ46JHKoVh47XIFUEz6VCH?=
 =?iso-8859-1?Q?RKAytXmMfUG2nhowkgk9y7hcvY724nJ2gKRfVyn+Vn2ArHIj7dkVwQD8sz?=
 =?iso-8859-1?Q?ZPxTlJ4qkyee3xzHWH0GqRbtMORhHYEy1FI44J3Uezg6RyvRS/OTKhg4VP?=
 =?iso-8859-1?Q?xuijygfBVb6lxbOV?=
x-ms-exchange-transport-forked: True
Content-type: text/plain; charset="iso-8859-1"
MIME-version: 1.0
X-OriginatorOrg: wisc.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR06MB5352.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 129c8035-0fa8-4361-b892-08d9350d08ac
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2021 23:33:54.5560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 2ca68321-0eda-4908-88b2-424a8cb4b0f9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 BXyBLN0jSWYUkFY2EeWzkn+UPHDev1q1SRntSAXp4DsJWgS2WkWLqpU+T5+tPA/6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR06MB5253
Message-ID-Hash: PAXAD2TDQ2UELVFWAYNVYUEY5Y3DYE54
X-Message-ID-Hash: PAXAD2TDQ2UELVFWAYNVYUEY5Y3DYE54
X-MailFrom: bouvy@wisc.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding Timestamps to B210 RX Samples
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RI34MNHTK23PECP4ZV3KPCUDEZQVFYIU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Alex Bouvy via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alex Bouvy <bouvy@wisc.edu>
Content-Transfer-Encoding: quoted-printable

Hi Marcus,=20

Got it, makes sense! Thanks for the info.

Regards,
Alex

-----Original Message-----
From: Marcus M=FCller <marcus.mueller@ettus.com>=20
Sent: Monday, June 21, 2021 5:31 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: Adding Timestamps to B210 RX Samples

Hi Alex,

that's the right (and only) approach: Metadata contains the time stamp for =
the first sample in a packet; the rest is counting!

Best regards,

Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.  If our understanding is incorrect, please=
 notify us immediately because a specific authorization may be required fro=
m the U.S. Commerce Department before the transaction may proceed further.

On 22.06.21 00:24, Alex Bouvy via USRP-users wrote:
>
> Hello,
>
> =A0
>
> In the paper below, the authors say that they have set up their USRP=20
> device to include timestamps for each recorded sample, but do not provide=
 detail on how this was achieved:
>
> =A0
>
> https://ieeexplore.ieee.org/document/6533293=20
> <https://ieeexplore.ieee.org/document/6533293>
>
> =A0
>
> I have been looking into what is required to achieve something=20
> similar. Particularly, I have been working with the source code of the=20
> rx_timed_samples.cpp example provided in the UHD files, along with this p=
age in the Ettus manual:
>
> =A0
>
> https://files.ettus.com/manual/page_sync.html
> <https://files.ettus.com/manual/page_sync.html>
>
> =A0
>
> Looking through the rx_timed_samples code, it appears that the=20
> metadata associated with the recv(..) function contains a time_spec=20
> field which is the timestamp for the first sample in the IO stream,=20
> but it's not immediately clear to me how that might be used to=20
> timestamp all of the samples, which makes me think this may be the wrong =
approach. Is there a simpler method to do this that is known?
>
> =A0
>
> Tangentially, I've also looked into adding the timestamps through=20
> GNURadio, but there does not appear to be a way to do this as far as I ca=
n tell.
>
> =A0
>
> Any help is much appreciated.
>
> =A0
>
> Thank you,
>
> Alex
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe=20
> send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send a=
n email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A11C5B3F3D
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 21:11:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F18C383F4F
	for <lists+usrp-users@lfdr.de>; Fri,  9 Sep 2022 15:11:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662750690; bh=AZizenj7XNjmbFD5PaCoYs1MHedIGgFthLOdtag4Pdc=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=cczVc4E2cR7GA1rLKgzB/7dognY97cNJQfNP6sys3kmoSnmBEcXn9DBoos09ZRSK/
	 J1R1s70TFxvEV/iGh6qVqmWxK6fuungPpcVkFkYfr3QxHPDW32z1eMEcfVbC0DjnY6
	 VRpNKRt+RV4RXgXbX9jS/KFEdicBFzdpxa8iR1bIEdNyj6RdzAaN+zKJgiHCuqgX/H
	 gSoPhJln8S02URJFl5GNQ8KhH/4j9bPIBSv8z1yiJCfvvVLnlk36raG9gax0+NTY61
	 kSNeaVmXC5h73TN+nPHS+jhG5YU+BIqyKwYjvmNv1+SjOpx0V5kG+VivJtmXAIBX0e
	 fQHW3Gw9ILsSA==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.184])
	by mm2.emwd.com (Postfix) with ESMTPS id E24C4383B4F
	for <usrp-users@lists.ettus.com>; Fri,  9 Sep 2022 15:09:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="Xr75pWsL";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.175])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 96F562C0070
	for <usrp-users@lists.ettus.com>; Fri,  9 Sep 2022 19:09:34 +0000 (UTC)
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (mail-dm3nam02lp2043.outbound.protection.outlook.com [104.47.56.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 7897D8C0078
	for <usrp-users@lists.ettus.com>; Fri,  9 Sep 2022 19:09:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lrfOZuliSO0vJh0q/KML1GN2drfKnqxCWADjEKh/72G3XIepbjld61NzxKlemWi6SzEyEDPRHlDN375zNwJrU7XC1K3/PaotAeNmzAepfpv4M9TSHWTHtuGeiCL7wMO6hgPF0pHGpeQLUNCd+8+JhNZx9ZPSKiT6HcIqN9iKbfu1nbyWvLX90SLBSKB019YmJMkJytjoTRu+DWv9qs+VjxaWixNh+J98Yzs9UsMliQqG0wcPAq85repM8IG0PBze7w0kZ4sYITALIJBoXWGG7t3WyChAUMv6ci20A5kwUXw41j3ZwrdEVfSGMypWDZZUMgeqwnCpJd/f3m0U3d3fNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VsBADQhUl84EdnuleXL0IvuMJQAIugFGP6zRvDUVdB4=;
 b=KHU8fJUTFCWo0M39dalwa2k+VNoTAZi1lNhLZt4ZO0PPnNhGdWWFnqILy+QzAGyeN6GrBCpfer55h0Ax9PVPuZM6EbdVsCBkWIG2fhdhpoVUWpDhW0tDsiDr0MIETwhBzgHvF7iamGFaOBd/VvzYL7hFyNyVqe5z0YKKPNx/0ToZOKB26lGjrlK2W/STmRiBmiph65sUUQTbyppdMzEfwOrDz34d6xczK+KOmAJEbsWMxlS732dzngkT9+yKCMm52Hzw9OxEkrfRz4kpokoHV02rm7cDBiF6hyRXOjJ5pYdKYDRqNQLvWXwo1UOaBaTVZoXfrXNRInF91H0xWsruyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VsBADQhUl84EdnuleXL0IvuMJQAIugFGP6zRvDUVdB4=;
 b=Xr75pWsLRoVXw36AeP68c3LlqG7HJj1hj+eksl+H09H1FJGWe6Ha09qvh/vfpuUeI+VIwT4DGAJP0ZqQ4R+TxfE1ij7ksHQsu7Frqzw1AYpeJTAl+QyVijl7ktYBjFRtJJZhhWIWs/rTEoSYcsrE3QQ6nArUsR7XQbFsKhZmp3A=
Received: from MN2PR12MB3871.namprd12.prod.outlook.com (2603:10b6:208:16a::17)
 by SJ0PR12MB7006.namprd12.prod.outlook.com (2603:10b6:a03:486::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.19; Fri, 9 Sep
 2022 19:09:31 +0000
Received: from MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::513c:7088:b9ee:d217]) by MN2PR12MB3871.namprd12.prod.outlook.com
 ([fe80::513c:7088:b9ee:d217%7]) with mapi id 15.20.5612.019; Fri, 9 Sep 2022
 19:09:31 +0000
From: Jason Matusiak <jason@gardettoengineering.com>
To: Ettus Mail List <usrp-users@lists.ettus.com>
Thread-Topic: N320 sample rate change locking-up
Thread-Index: AQHYxH59mMVkMcT+BUyPtZLFU1VQdg==
Date: Fri, 9 Sep 2022 19:09:31 +0000
Message-ID: 
 <MN2PR12MB3871623AB664F6C1063167E5AF439@MN2PR12MB3871.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB3871:EE_|SJ0PR12MB7006:EE_
x-ms-office365-filtering-correlation-id: 8bd4da3a-6fd8-4686-16ca-08da9296d348
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 OldKZTKBC42K5imtzOgT+tH2dMCwxXuxzJOShiiLK1HGZjl0ZAWuD+jlyVSLnWs6WtGyv6MbZp9iLfS+9+ivJIVO2yt9HP9RQi724Ch3O77biwzo0QAffzggJNVD0/3/QdzZUPrbkP+Y1eQEce11Cno+O6Bk//bY5bTo72/q1LquybGjU0i81bSjEOQCS0eJu+s7b2lJXae3cM5e+KIc/1oQlnPVTAS1i1J5nJpgS3UW8n8u47KuHyEtaRXm+AW15KvPOx+6Bmgn8uGplXR12UTzwz3QRG2Skx/rPcC9lUiJrimk6EOXcFnyWH5F/O/g4NgKrMhcAxXdJpfPIyGFMzwFPQkLUSYGK/NpjS0h/s2vBgU7d74PiPm77NI2zmDVE/HSDxI4Fv3pJWOCq7fjJpA2IKLdzGNDWyYR5WMqw6iF9EPTHyNjLUidTZhxvnDsaVER01O7Va6wbL366hAXy17wHZz4+XV+Y2+vcOjNxEMXTPAZjN8yIgRkOS7E1bKZ6lFge3ry1blzrVSRUIOHmMRb9l3nePe/vufs6I4lK/63C3HSHWa/6NpBvn5F+IpWsLQ6xgC9mR3UVOOtgshRQlPxlr4sSMT9oZizY5TwiPGeoLMomvrsQcElUsnM9smqzG9G4olVXiwx1cWsCTcmZAw5zCkLe/dXTnKqhOd/Xq8MqTGm9AJ8MKJ7KnJ+R2KsWxN2Abwv6qEwwrmL6Yy4sCsxj5dNQKYab7Bs1kRGNNs2aYTDqbM1dIirKfhSLz98BDrcHtl6sCjvlr0Xk3dovw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3871.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(366004)(39830400003)(346002)(376002)(136003)(396003)(38070700005)(86362001)(38100700002)(6916009)(316002)(122000001)(71200400001)(2906002)(5660300002)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(52536014)(76116006)(8936002)(186003)(26005)(83380400001)(41300700001)(478600001)(55016003)(7696005)(9686003)(6506007)(19627405001)(33656002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?LQVQHI6jNMB1sSiAZaAYGuz5Na2uieqCCx0R9JLRCKDm8CMajAsPWwd0MT?=
 =?iso-8859-1?Q?rMqQ0LPH6Umpnq9YcdfB5oPLwdZiEzig/VdthaYzTbIGNBfHpD9Sl/w2dB?=
 =?iso-8859-1?Q?Zw7tZXb63w2arS2/rCem48Y37QPYDyQ+G+WWW+t/Xm4MvbHtwyEJ+bhGKT?=
 =?iso-8859-1?Q?KP6VDhuEiUgWz2bJBWMvXZfc14ZT6923+laS1COAc0aonizD6vrRD1mDVV?=
 =?iso-8859-1?Q?qAaUSuBIaGiLa2MJuXUdeEk8u4BJopt+TNlZBjP7pXlyg7JqloqZL5tgB2?=
 =?iso-8859-1?Q?4Ja1/PseDCgxWdxr55ImGBux0GbXO37PZqQr80meniNmlNvcHehhe+QIy7?=
 =?iso-8859-1?Q?LycuZbyV6Y4tBQpnygSoPOAiWwcb19bivGWhfed4rdxUdCvXHUoBmXLh83?=
 =?iso-8859-1?Q?py9u0y7DcZNq7e6Tkhr2RF0HvmrWpUxJLFHeCrGKzunVYra29Trrs2H+Hf?=
 =?iso-8859-1?Q?W2EPhxJH6rCT4wUrCruh2HS03ApXtj8m2fMjkJyPMMfvmNJkY6vcoyEb+r?=
 =?iso-8859-1?Q?9Tx0yRH5QWsh1pIuHcrzs7meySAIb4fgDvdjgCkSt0wG0SXq5bPZwnYBPi?=
 =?iso-8859-1?Q?clXJIbS4l4MGR8+vhhWY5XBPRDl5cuxWhRJ7MwNBBdXwK5KBV/Y7xbCrBm?=
 =?iso-8859-1?Q?G+NANT6euA4ULWz4Pour9/mxXaIUBTcjdXsU7gZve14WWXqoLgSsd+v0MN?=
 =?iso-8859-1?Q?IADunE2Th+dqh6TnxK+h4qbHXDyBgm+LaBFi1bp5NTVJf6wgIQkH/PYlbq?=
 =?iso-8859-1?Q?LD6kSnwPVbLTa95GV8kUur/nQC69B8JngecU+3BYdTWGRw1as86DlfW2by?=
 =?iso-8859-1?Q?bX0UF0jtUc9b0HtkcicWeMARocbedmIg9SBlhkbiS7eNbWHSqpm/jbFcaG?=
 =?iso-8859-1?Q?wLQ2ZNohNZYwpThtMdzkWUcDXEwGkDioFC4p7L+mzyiED221VWUIp9WAXu?=
 =?iso-8859-1?Q?FYZi+T/3gmp75WgE2DQiMk1Lo6e/0vhioTzf+MGi5LCtAU/q501jEslp5o?=
 =?iso-8859-1?Q?mzXaswU91Ugf3uzXulg3VefFI2ocDcSKHciHsWcYwotc0aRPOYNhEPYPXu?=
 =?iso-8859-1?Q?8WylMHgcZThIICM4ZntbaCd2S9lG51hrlP1HBJx+/kf2D1XJI0FqhjGunK?=
 =?iso-8859-1?Q?CZY69xY7YjjMoTDevaPDkrQZtbvzMGUzTa/SXNPdR7IF0x2ulaKGAqXumU?=
 =?iso-8859-1?Q?+EWQ3jHZX3dDeFhHSBc5LBL3fFEndavXa/R5D7mIRdkh2RWuyw2a9zO8dK?=
 =?iso-8859-1?Q?ZCjs82a882rs8nbHMAAodZn48R9wAndmJdr61/4kuyuy8ajdEH5lznvXYm?=
 =?iso-8859-1?Q?rFEAeVIsW3TOE5wjOTMypirmORNFlFoBdflT3GRSHGXmTAZtZii7QaDb+a?=
 =?iso-8859-1?Q?TcFXqYkU3Li9BsaNFuDeIrgzw2+dJminBcIQj0I3TUHzQJnweXhlY3rreV?=
 =?iso-8859-1?Q?jMWa0bRNDJGfGc2FzSBx/GR/ltrso8HjLxlYusbF/zxPL2gJ8Yq2aEg078?=
 =?iso-8859-1?Q?qLblRbw5p/TvdIcLiGBBXYQGrM9vRtUYyXFYqAk2LSsA+QLbOGiLdL21zs?=
 =?iso-8859-1?Q?yr3pTUbkDeUkNK6OXjwBkj9W4aRUjdCHKpKqoxhMNLpalrdoDwkH12YgVu?=
 =?iso-8859-1?Q?CRvXXYphvimm8ErG3IL8MlrTTRH5dBLijw+3aFJp+HyjGsCUGi31KtIQ?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3871.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bd4da3a-6fd8-4686-16ca-08da9296d348
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2022 19:09:31.3656
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HATWQx2ixaif97f2MHQxR1ZGjInIjYq8WDFfX4kidSEpUaB90pp1irDyDe/WQ1BnoQ2Pr/NAk9lBBV3oW+GcnRtbNcG7c2VurcGhhsSAIts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR12MB7006
X-MDID: 1662750575-HeCn-4NbFWKv
Message-ID-Hash: IH6JQRESPMOZ6K6QC25E3SKTVKZANBIC
X-Message-ID-Hash: IH6JQRESPMOZ6K6QC25E3SKTVKZANBIC
X-MailFrom: jason@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N320 sample rate change locking-up
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3HOTE5RZK2A2JSVELTIX4GH3RQDU62RI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5711451412264166134=="

--===============5711451412264166134==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB3871623AB664F6C1063167E5AF439MN2PR12MB3871namp_"

--_000_MN2PR12MB3871623AB664F6C1063167E5AF439MN2PR12MB3871namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Are there any restrictions, or known issues, with changing the sample rate =
on an N320 while it is running?  While debugging an issue in our applicatio=
n, we noticed that we can toggle between two sample rates and get the n320 =
to lock up.  What I mean is that the N320 is still responsive to commands, =
and seems to continuously accept the new sample rate changes, but nothing i=
s streaming out (just the ~62B UDP packets).  At that point the only thing =
I can do is to close down the software for the N320 and start it back up ag=
ain (a reboot isn't needed).  If I only toggle once every 5s, I can get it =
to occur, so I don't think it is a matter of issuing the commands to rapidl=
y.  It also seems random in that one time it can occur on the 10th transiti=
on, and then the 148th transition the next time.

The really odd thing to me is that is if I do something like toggle between=
 3.125Msps and 100Msps, the lock-up ALWAYS (like 100/100) occurs when the c=
ommand is issued to transition from the lower sample rate to the higher one=
. It also seems to be more prevalent when doing a larger jump (like the exa=
mple above) vs a smaller just (like 3.125 to 6.5), but I might be fooling m=
yself on that one.

These are N320 with master clocks of 200MHz.  UHD 4.1.0.5 and XG images.

--_000_MN2PR12MB3871623AB664F6C1063167E5AF439MN2PR12MB3871namp_
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
Are there any restrictions, or known issues, with changing the sample rate =
on an N320 while it is running?&nbsp; While debugging an issue in our appli=
cation, we noticed that we can toggle between two sample rates and get the =
n320 to lock up.&nbsp; What I mean is that
 the N320 is still responsive to commands, and seems to continuously accept=
 the new sample rate changes, but nothing is streaming out (just the ~62B U=
DP packets).&nbsp; At that point the only thing I can do is to close down t=
he software for the N320 and start it
 back up again (a reboot isn't needed).&nbsp; If I only toggle once every 5=
s, I can get it to occur, so I don't think it is a matter of issuing the co=
mmands to rapidly.&nbsp; It also seems random in that one time it can occur=
 on the 10<span><sup>th</sup>&nbsp;transition,
 and then the 148<span><sup>th</sup>&nbsp;transition the next time.</span><=
/span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
The really odd thing to me is that is if I do something like toggle between=
 3.125Msps and 100Msps, the lock-up ALWAYS (like 100/100) occurs when the c=
ommand is issued to transition from the lower sample rate to the higher one=
. It also seems to be more prevalent
 when doing a larger jump (like the example above) vs a smaller just (like =
3.125 to 6.5), but I might be fooling myself on that one.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
These are N320 with master clocks of 200MHz.&nbsp; UHD 4.1.0.5 and XG image=
s.&nbsp;</div>
</body>
</html>

--_000_MN2PR12MB3871623AB664F6C1063167E5AF439MN2PR12MB3871namp_--

--===============5711451412264166134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5711451412264166134==--

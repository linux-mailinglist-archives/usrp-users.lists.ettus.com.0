Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8DE4CB137
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 22:24:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 608B538467C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Mar 2022 16:24:06 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=srcaus.onmicrosoft.com header.i=@srcaus.onmicrosoft.com header.b="D+Eo2n/e";
	dkim-atps=neutral
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2083.outbound.protection.outlook.com [40.107.236.83])
	by mm2.emwd.com (Postfix) with ESMTPS id 62F4C3845FC
	for <usrp-users@lists.ettus.com>; Wed,  2 Mar 2022 16:23:03 -0500 (EST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SHcxOeByjh0TMAuQ+6WA/i0FN4K0tq3w58wiZBixoTU0QnTt7nJ/AgFEsmcxeCOG3T0wLsAxS0XzL7ZfV/PLlkw/f8a0fI6KgQJ/51a7xiqxfUmH7oH9eT5lN51QbVwRFKKB/9G77IbAYf2seFmQdIS+v8XV7UWQMq0Rxs/RnsiTlhM1Sk+Hn3hftXna9Zhb+7oSvtBWw0uOdQ77pn8hMNxb63GFBRAkTChotDrJkz5zqudLomvwSWUceL20q82Pcx4wPFLFNE88+z8ufTJJurAVehPIG0apEgPMzwHzNRQ7yU0wd6EWc91TwuMJgnUw//3VrHMez+OrzdlAk+Vlug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lOPz5KX+aDbR7JBN1JEF5XOaCzUub0TiwxiYwI/u2CI=;
 b=a419039UDVdVH/R2hPReflVDEQTolFRkkA0rB+1TAhIpxNcSFhq5K8fTcmAIFUgonBgaa2aslub1QCwryGsEiKAyYM9TkqHr4Wt4PHTj+VvZ5T+pSsHru68aA9//iIG8mtPqmZ/7SlSU8ChqHByR22BQ+DqZykv12luH+/TubY3XzqMgMSyWPJwCbz3b2YTrPBPCH7+TBM7peyCK+kODOt7LNn6ictCKNCgcHZqFIKpfS7noH/MGznil9OvRpEH5rWqu0BNsTbBGHltpWaxy6PeIB+AWN5kIjcFlnJLWWIMe+3Z4LKCzOoPHVj9vFstmgh3JSfe8+syfa8sDJQLtBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=srcaus.com; dmarc=pass action=none header.from=srcaus.com;
 dkim=pass header.d=srcaus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=srcaus.onmicrosoft.com; s=selector2-srcaus-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lOPz5KX+aDbR7JBN1JEF5XOaCzUub0TiwxiYwI/u2CI=;
 b=D+Eo2n/eoHTz0zlZj0MHu1Cy6WWxhHsupj/J6T6aynYMqOga7VBIcD9QllxI7eTO4RNlOFHDeONtlePzH2h6zFDPbJwVe13VxFQQ2zw3M1Xh43lpn13VVR/zcfCoCpT2bqwssFYlUD4UgWK0E38KOou2nBU+8goCEX20WFLVpJ8=
Received: from BN6PR16MB1700.namprd16.prod.outlook.com (2603:10b6:405:20::21)
 by DM5PR1601MB1114.namprd16.prod.outlook.com (2603:10b6:3:e1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 21:23:00 +0000
Received: from BN6PR16MB1700.namprd16.prod.outlook.com
 ([fe80::895b:e239:fb85:9291]) by BN6PR16MB1700.namprd16.prod.outlook.com
 ([fe80::895b:e239:fb85:9291%12]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 21:23:00 +0000
From: Jonathan Pratt <jpratt@srcaus.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: single flow utilising multiple receivers with
 high sample rate
Thread-Index: Adgt9O9LQahBt6bST06gwNL8f1d/iAALcJCAABXuugA=
Date: Wed, 2 Mar 2022 21:23:00 +0000
Message-ID: 
 <BN6PR16MB1700F6B67CE5F3F4EA17DB7DB9039@BN6PR16MB1700.namprd16.prod.outlook.com>
References: 
 <BN6PR16MB170007FD7537DF2A793E2D27B9039@BN6PR16MB1700.namprd16.prod.outlook.com>
 <c0d9dae1-5467-b4af-d4c9-889599f2f1c8@ettus.com>
In-Reply-To: <c0d9dae1-5467-b4af-d4c9-889599f2f1c8@ettus.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=srcaus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 325092f4-4fba-4ecf-e4c9-08d9fc92d435
x-ms-traffictypediagnostic: DM5PR1601MB1114:EE_
x-microsoft-antispam-prvs: 
 <DM5PR1601MB1114381836FB248F11E031D9B9039@DM5PR1601MB1114.namprd16.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RQjVqU5ixgwo5i4IzJ6quKb8QaXS3NPO5N+KWE5uGAY0VGz9C2FwB8i2SdrW+7FxJpGfjEQlUY9lErCVFNIkATkBLtEbvv1Xyu1M1MA7dRYHzlihIjejqPrLbvHwPybbEzx1PwtX3P6d/VUCBAqAteKuxFXo/V4czuduzZHCW/2H6Jd2YbIYFDOb/MjpST6X4ztXsm3j4wwbCUa0U3vAN/+w1jTq4pKNtdRtW4F5sRyRpfnGz3viLr3XT42aO/2D+gm5rbJ/7jQtsAq0DIycwP6lBGDAPyK3BrElH2lZuqlOLjYERKbuD33jTwhRKH+vs1iprPL5eCvIBO2JowF23iy3g0XrBftcEBsTw3ZCpn4Sr+YrL8V2njcfqhv5rzZgGwZCamagTGcxHBIhjs/PkwTqjAzt+u2SCEm4tOM74HB6nxKq7ZsmR1XZ4zwefdZckbFIvu2q8FR81GsM8dT86saJExjCTbJABBsQMumXn3tHz8hsLDdlhGde6jCmNcHFT79odfGSOCRQFgzI5XbOq/FYSoTgkZNvef4HB8mt9SFmpVb/aZH7/qFUVfEBj4/2Qoq8d7KihuAO8puVU1vAR535RUBHqRaV1HXi8pBf32nB+KRHw4foZZzIyWJTpV8GNlH3Q0Zen/WmaDdbSdyEzzL0hkptyvzjyX7qViVMhMNPd6zyQAojIpwRQwKY1KVtCtOG+0wERRwKmuSM9srlaqdGBbmLhaki5ZQL4rT3B2KMJ/VVJS7Z/1fHQyrI5EKgJQ1dxvxZpgUgxmKdbWTJP5k2lafUNS/P7IH2JhWofsw=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN6PR16MB1700.namprd16.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(376002)(136003)(39830400003)(346002)(366004)(396003)(55016003)(122000001)(316002)(6916009)(83380400001)(66574015)(966005)(38070700005)(5660300002)(52536014)(8936002)(26005)(186003)(9686003)(7696005)(6506007)(71200400001)(38100700002)(86362001)(8676002)(33656002)(2906002)(66556008)(508600001)(64756008)(66476007)(66446008)(66946007)(76116006)(53546011);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?mn1nOjd5tGLP4ocSqkJas88ESFim+E046NxoPw68Ys7y/y9/dghefDYmQq?=
 =?iso-8859-1?Q?73zSGbkcms1uaqqjr61HRMFRAzJj15Uwncm4fUHGubi7JrcDxwB3f77knG?=
 =?iso-8859-1?Q?FnQz2y93YNn0rO1cenLyQ0jngMvEcT0bsRGZdqvZHQPYJaDjETWmMOnz1P?=
 =?iso-8859-1?Q?yW3NBL5xTZw27QNjwLhoLe1mszjB9jvMvPhEMN9VVhbOE55rMsWR3nHXW1?=
 =?iso-8859-1?Q?gWI5ahLiv99UBVuA1VTZxHTRtW98dRbvhnk2bjNw1qIRdERMyYd1bi1VO+?=
 =?iso-8859-1?Q?w/QG1waccbBMVzDez5250XvPlRITWTm+mplGKbLT0E2POJHzVkQNkRjeJI?=
 =?iso-8859-1?Q?837S6UG1UDKeyyUkndoWGcdXN9dPlSBzZYmJzweDBcwrbvVddty5FRwK7C?=
 =?iso-8859-1?Q?guJ0IRzzQO+LBHI2clNipB2siHUonPjOd3MP6/vxJnt6sG0QpAqi1KhpS1?=
 =?iso-8859-1?Q?yhA6wy/UprUXCCA6u/jZcCLfOOeaWZAj+XH/fLT0QlUtrb+O5Smo6UaP4e?=
 =?iso-8859-1?Q?60FoIOwdwACylEYnRwZrMWGF9dN31E6f75OyBwdZfZPwVKFV37F8I5H+gW?=
 =?iso-8859-1?Q?3Un6KEhwCHsMhSTU0SZknafobb4f0frEYgF4CEFw9nNIsAdHCqHh4i3tcs?=
 =?iso-8859-1?Q?ErKEE3iBSdw1nyC1ksDCowceKX1i83A3lVYW3xoc6+XOhdzZcWWnnj75gK?=
 =?iso-8859-1?Q?Tl9DUeXWhGlZeSCpUtz+QlvsyQ8qJg3YZuqAio4rYU9F+Gr6LQ7XnnlGF0?=
 =?iso-8859-1?Q?mTC1Z2jCu0o4M65BiXYSobHc21Kanbx+5bpkF/RaDGysdz4fUNYFhUVXB9?=
 =?iso-8859-1?Q?8EJaKz1KNOoGO0bsMWeSKAtIHHEc5jlum0jtnzWc2v5Ods40AmX2ZeqEJF?=
 =?iso-8859-1?Q?LWvhEYKOUo9F1Z/Sqly2zuhQhJSP2NEr1orcK0IvXZF0fp9xCyeeMwLrIX?=
 =?iso-8859-1?Q?TdQKXOvneIcsT/m+ARXwdX+RtfYNygiWn4XSudi2MYYEG4jLnZC/KdE4vh?=
 =?iso-8859-1?Q?IDnNraYXl3I0YRf5SNEk48cM0zDBhD9J60Ek6/dRnN1CpO7QAuG3oAayeI?=
 =?iso-8859-1?Q?/pcoB/eYZCZwyx15jKSqF0juRd96fw67073RZxu/Jt7URzboRN3ljtl8HI?=
 =?iso-8859-1?Q?/jbK9SISdp/aGd99FDCsIKMgMxdTfaEnylzyysRBAEO92OnOTIg/Yxv8es?=
 =?iso-8859-1?Q?i91AJf8fxMBAEDzEWR0hJ4l2FCYIMGqR7Rl2tiXN9nMC2S1oJHo0752Yq/?=
 =?iso-8859-1?Q?K1YBvO4yTQyU+6WeyYkK4oGUTFcq/0CMWrwHub7sIQYavoTSaWEkjRfWCH?=
 =?iso-8859-1?Q?Om9Ll3gb7wYYKoFFdzYX0LJqrBLCut27qXKTurrhNbolrdQSVoc/RlgWVb?=
 =?iso-8859-1?Q?HPCUfc+khgk2jZvACtg0qoWKygJeDiTXvM/hP5ARwXR3A5L6KINvFwOEnN?=
 =?iso-8859-1?Q?hCTM1kgiLvrFK0Ue6uMVPrVQeaOV46hRLsNzaocEA2RQmBK9CxtRHlqqLV?=
 =?iso-8859-1?Q?7MC/wpn0ZxzrAywrVcfPChYq00nNSaj9uC88aQ7P4QtUkkfO3MG/9XtvKE?=
 =?iso-8859-1?Q?QbYAIcgyWtVlmwFqvAJ9W3mgQFqwWSQAPLvn18F/VDjWVOAL/b/hkDVQi0?=
 =?iso-8859-1?Q?9IHCRLXtZmGrIVZcDu8fyLddRKvlqNWvHAnvLB4zyLnRHvonO7OUlQsQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
MIME-Version: 1.0
X-OriginatorOrg: srcaus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR16MB1700.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 325092f4-4fba-4ecf-e4c9-08d9fc92d435
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 21:23:00.4424
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 22db5897-105f-4d6a-8017-4b11749bab04
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cF5S2sH5ij0TGnxXJSQNjKjYGoDRdMTVdFX8McZYC4AcLf+mnJqXni/1UdHq0CXgt6h7YLO1ar3FtAWQ07A1Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1601MB1114
Message-ID-Hash: TMZOLXZPLLVKM7O7CEHVV4ZCGKXCG3HI
X-Message-ID-Hash: TMZOLXZPLLVKM7O7CEHVV4ZCGKXCG3HI
X-MailFrom: jpratt@srcaus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: single flow utilising multiple receivers with high sample rate
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KOIMRZZVC6WMG4OO244IMD4C4FLZTYTE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Transfer-Encoding: quoted-printable

Well, yes I do want to do that.

It's a test of data transfer capabilities of the PC in preparation for use =
with an X410 in the future (but I don't have an X410 yet).

The other reason for over sampling the band is that in detecting a pulse of=
 RF signal, the precise start time is very important in our application so =
that the higher sample rate affords better resolution in that regard.
The X310 has two 10GbE interfaces, is there not an approved way of using th=
em in this manner? What if I had 2 x TwinRx and wanted to get 100MSPS from =
all four of them?

kind regards
JP

-----Original Message-----
From: Marcus M=FCller <marcus.mueller@ettus.com>=20
Sent: Wednesday, 2 March 2022 21:16
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: single flow utilising multiple receivers with hig=
h sample rate

WARNING: This message has originated from an untrusted source. Be mindful o=
f attachments and embedded links.

Hi JP,

quick remark: Are you *sure* you want 200 MS/s from *both* channels? The fr=
ontend bandwidth per Channel is 80 MHz, so that 100 MHz would suffice.

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

On 02.03.22 06:33, Jonathan Pratt wrote:
> Hi.
>
> My setup is an X310 with a single twinRX installed. I am trying to get 20=
0MSPS off the device from both receive channels at the same time to one PC =
using two 10GbE connections.
>
> The radio has been flashed with the XG image appropriate for gnuradio 3.9=
.0 + uhd 4.1.0 which is running on ubuntu 20.
> There are 2x 10Gb  SFP+ modules on the radio (happen to be fibre) and an =
Intel X720-D2 with two 10Gb SFP+ modules on a PC and two fibre cables spann=
ing the gap.
>
> I can read at 200MSPS from either port - no problems.
>
> I have created a flow with a uhd source that has two channels. I have set=
 the motherboards to 1, and set the address (addr0 & addr1) to both of the =
ethernet addresses  that I can see and operate individually. both channels =
are driving null sinks for the purposes of testing.
>
> when I run this flow I get the following error [ERROR] [RFNOC::GRAPH]=20
> Caught exception while initializing graph : RfnocError: Specified=20
> destination address is unreachable with a meaningless traceback following.
>
> Is there a way to do what I am trying to achieve?
>
> thanks
> JP
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe=20
> send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com To unsubscribe send a=
n email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

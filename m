Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F8C61627D
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 13:13:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B122384133
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 08:13:45 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667391225; bh=rmymRo1aiZEk02XGJZca2wCokMR0HC+ibkY2tUiep9s=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=fqiPLac37gCM4j0jk3gnBVJQ0Z+0uRd51yUMIISWFdrtL/l/iy/cBMh+UiBx5l0hn
	 gLocBx2ng/crkpuQgAkMgnrq7xG2dS0G9e7bOKUgUgixndwchN+0MNiBC0jpNPiB66
	 ztHsgJZ91Hm8c6qzqjDDtF60ON2e9LDTtSG93CDd+3nmg2tId/XQADBgEnAxqCx2zS
	 +48uSJrHCv39e9qUwELIvSU4YzBboUgicyI4Hf8K/Jst47ghwH8wi1d+XTurwB1A0x
	 Re6CiTl4IXzLVjSlLFkLb3eZninng+qUvkobF7eNvpxa56U57mt8r0Rd/qVxDnIU0/
	 vRVBCj7MvDX7Q==
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [67.231.154.183])
	by mm2.emwd.com (Postfix) with ESMTPS id DE54F3840E6
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 08:11:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="PaHCesDg";
	dkim-atps=neutral
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.110.51.172])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id BD97E2C0062
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 12:11:50 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id AAED2140084
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 12:11:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ismjGhFAMJyMV+xRJhrvgS+LHnPIJRHO3alJJJmQQQ+uNQ7yqTJUMu+YrPR7bbEAt7BTM+DQa9eUrEGKfodKfn8XwlJLLREc396NblxG5os7xH03Yf6Xr+ov8MoKuYp/vIdT9N7ujdh6+XzEhJJ6RBSLuQXEvNSdqJqHNTx84YSxYXuXk0IGQ5RDu5hqgsFgpzrPSYzNuIoZOJJdEsl44vM1j+VC7qKNHbRLwipWUpcl0xpBJwQaHRLLv1oXoiBU31UZ7Waxp++eNgrTO37b7pf1Ia8BqN54ZFR5GQbB+smwccUEelxovFH6X/sS+DXd9gcpzbwYR4VBpFIm4dmAlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WRkdW6J6+ezHKL7hTgS2pEWmxTJmVt4iT8vAUupFpHk=;
 b=kTzQyVBi7HBGJOmdJRebTjx2cQgMQYc2CMEdFgk1B4oSvF984YL0M6U+5ehSGKaQR9nWD/VCvZDzhMH0CxxHEQ0P8OraCBPivh8r/BlU22EQV3npELy5umW+RHfMoCHLglgQtiVBgejfmZP+357sz+QfFiFAoPSQ0DeqDN2tIxBt9IeEIpTV418cWFcCl8MfTYoV5FF8zLdNgPuYnqffOKwRJTKGQqaK9xne9blgTnUlpP0XctBh/AlhUol8YkU6RJ76612i/i6oK/BEnmxua1JMWylTO2rk0LkHLsts8i0XHeSs1jg0lvZagAbQ9FSFA91e9l0ItdBz4ybWRHlrqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WRkdW6J6+ezHKL7hTgS2pEWmxTJmVt4iT8vAUupFpHk=;
 b=PaHCesDgZ2oxSnlkmnH7sF38xtnXo74vSdL5kH+jJlcpVFyAJyb/dOMkjBGFQVt8nIQu9klCoU4KyBvBWbuxALZj/EZIRmfgUzK32D23gP9+Hpmgs3JYq9Oo+5cfqeG6iJxUn2w6+tbLpMLAvzlRqLn9HxSG7Wr8qp5NFqZpRjo=
Received: from BYAPR12MB3301.namprd12.prod.outlook.com (2603:10b6:a03:130::29)
 by IA1PR12MB6258.namprd12.prod.outlook.com (2603:10b6:208:3e6::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22; Wed, 2 Nov
 2022 12:11:48 +0000
Received: from BYAPR12MB3301.namprd12.prod.outlook.com
 ([fe80::8f72:aea4:ec1b:508]) by BYAPR12MB3301.namprd12.prod.outlook.com
 ([fe80::8f72:aea4:ec1b:508%7]) with mapi id 15.20.5769.019; Wed, 2 Nov 2022
 12:11:43 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: N320 LO stability problem
Thread-Index: AQHY7rAbGMBhLfKBpkKklSXlG+QYJw==
Date: Wed, 2 Nov 2022 12:11:42 +0000
Message-ID: 
 <BYAPR12MB33010775AE76FAB552039CF8B8399@BYAPR12MB3301.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR12MB3301:EE_|IA1PR12MB6258:EE_
x-ms-office365-filtering-correlation-id: 1b292005-552f-4ba0-7b0a-08dabccb679d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 kW2Dg85dJiTEDoRD6vQ2gYE2hbwP1/t8egEZtW9DiBv3eZtG6Zb7VNzhmczKMN/csDUrn5tmQw/aEuH/LYjhUz218Q7xyzvTjy3FYklgqqUA3ZAj0w5wC+N1OXRbE3K6SUiud4F+z02IWgMxK/yZK6D7L9BZosgxwfvymHllehvIBbwLn6YACqDPtBAHVpU9KEkCCtUgX3FSKIkjz7CYVA/IXDvLgzq16OURuBqOF5LYw2n42Ge7Qi9ee1Da19UiAHGY/07zkeGKlcZ4euY0rInUjgQXOOqZ7MpicTTgsrdMDbdMnxyNNWYjGANBbBx5oZa5Ro8rvBLD0Qsj5WJjUe+Tsb9NcI3mq63SJR/tBPZzXEHVNXwIrQXUgqvwp5FwRBF57T+cI8XALwURzSaN1MwMSHQI7BWbeAVY9oeeAJr6lglHTfNP9CPOMdoehEeEqoKa4En8VMCaocfeHFDT6TvHcX16vL+rLGr1OoHJmiqoYnuqXZz8zM1dlCpxqu7UEUlebtWU5fDZ9+81dC7XVLhJNni8X6Tj4WvOfGI5Di5nbNLjMi/eT7CEYRrdEHOOgSbUYeu8q7yf1PcjZ2jC0ULhIOhReFTpBcZLDWx4G269sKZT7Twn0dU3OjTxz7J7JxhyKbdo73rb4kzh3GaCmhjyaFvs3RasplNh61nnEs6majobHltjW2nTvkMOK118Xb3oT4J8EQTOpSqMOzluO/a0oj//YEUNufGcZlvMu2FcfGPvdsQ47wF2EhlDKgXGROLhgqIcaui/sPCrM5fC2A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR12MB3301.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(376002)(39830400003)(346002)(396003)(136003)(451199015)(38070700005)(86362001)(33656002)(9686003)(41300700001)(26005)(55016003)(8676002)(66446008)(64756008)(66476007)(66556008)(186003)(8936002)(66946007)(5660300002)(52536014)(478600001)(71200400001)(76116006)(91956017)(7696005)(6506007)(6916009)(316002)(122000001)(38100700002)(2906002)(83380400001)(19627405001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?9JQS+4VermtR/+XHIlCnsfz6G0bmNXQtrWH864UvVFCE95Stmw3DSz3OpA?=
 =?iso-8859-1?Q?SVCTdpjLW1gYZDM+d396R0YUDRuc08b3+ChJDj1z8HuMryGO+ZCRppet0r?=
 =?iso-8859-1?Q?dc55MdXOodMZEqE+LCthrZoihj9CmQ+0Oyq1UcQo159/PYY2DPmPyd9gG+?=
 =?iso-8859-1?Q?q8TciOi6g1sc/SNEo7dJWIiDuAXDCWtzxEo4Y26EbjhUwqYRnQrZmbulL8?=
 =?iso-8859-1?Q?V+7h2FHrd+nSXmv87V1KRfOSOyZD2PCis+8IQMbL58UpBRuzYrdqZ7G/3k?=
 =?iso-8859-1?Q?r5k3XVJrV9fb0VRxI6MyW7n1Xo65QMq2Y9SQcyUQ0vzIYbeQPLzBHGZCrC?=
 =?iso-8859-1?Q?TC1HgKt29s/jQmjjgn4x3IYvm4oMQ3p0O+GNRbg7Hp3IvDcxGJgS/jMkYQ?=
 =?iso-8859-1?Q?2IgsiQ3U7+KZrSmHhyNncPiNl67LmutQdoaxINuISHVvgpnw+z98LCX4d0?=
 =?iso-8859-1?Q?bQNXxRdPpfKFYvVPFpki14FTZYJKkJ3UFwjvEqrMjhmhdP96qJ6R8A/2TB?=
 =?iso-8859-1?Q?23i2VaHs/TDAmu8WTvp4CfGQHJJem4ru/AQsGUOLYKqRT0twyk0T+sYjPi?=
 =?iso-8859-1?Q?SSHvs+bjROqIUIUcMaGW8T1ALlBJclNmvbY1V7fG6Xe0IVz5OYmOdZA3g1?=
 =?iso-8859-1?Q?ByJSmzmnuNBC0E2PW0NeF39zviDPbO2ujGeLoXlEJ8dDanfTBDbxm1hSQd?=
 =?iso-8859-1?Q?42Laa0iVtNSfjPEOVbQl79KW+BDhkLOBIKgsnKCM8M2SXE8gm1QWoVva6d?=
 =?iso-8859-1?Q?H6p+zgS1odyvQ8/s1QN9XCShQAQTNilrFMuqCDXcxXoDxr/BNdFbPzzGJz?=
 =?iso-8859-1?Q?/XZgA/IKZq/CD/ehvD67YohKhjs/tfHZDj9KyNJ6y7PcPa2C3cfNE/RKpi?=
 =?iso-8859-1?Q?VUxlw0zX1fr7Dcgok0XY3tILEV1l4CcyXQoypgVXNqBGR/qcUmim7ES9qL?=
 =?iso-8859-1?Q?IH3pxXwxRcC2yJHuoQgNRj32N53Kml1NZq491PeghjVbLo3zRC2bhh2JB5?=
 =?iso-8859-1?Q?rEhyPYY08w4ycjgF9kQbkhcKnmcSpXvstP9zafee9TFmCrMEkyEpY/XX+I?=
 =?iso-8859-1?Q?Te+yVFaXa6qmTvjo1mDkqWtVwNU4O4EkI/AwvnEEtWfS4R+/x8lR8dQLeN?=
 =?iso-8859-1?Q?uPuXQWjMZxiAMCBaQ1gLUA/vth3HtAGYIKswHeJaiv6BRK0oBuf5c/JfgE?=
 =?iso-8859-1?Q?U2GeF/4Khkn+vGTNVtCkx5cjgTpboW09TfksOT0tvKW4wMSx3JqOgjAVi6?=
 =?iso-8859-1?Q?mSzMkzfouv8E2eHK0+S8x5mtwe0RfVo0MaJYKG6NLGV0j4pul0EnosZ/DT?=
 =?iso-8859-1?Q?jLlmTmCF2IXrrPX+xlZ+nacrexoiHe5UjCvuaLV0HUeUlRnM50I8YvjR0e?=
 =?iso-8859-1?Q?0nHk7HDX8+mn4Xn2rVKrcMoKdxjc/kLsAixIKCYWwYavAmcaX+LyTq2y9y?=
 =?iso-8859-1?Q?6NggK8TUnqCqly3fySBMmB81LmU8kv4IQg50p08SF4+nqUF41hHF+4SsU6?=
 =?iso-8859-1?Q?w5iOOAL5zyqiJhxTkMrzFjCQ7PX9QJJ+ItZNKX2nTcGIa+DFGAKdrskgX6?=
 =?iso-8859-1?Q?0Eyg0H/Di3N6+RqhPthm5E/WBYcBeDBOAacFGJtkEY8uJzakOIjJ1qt5ou?=
 =?iso-8859-1?Q?XIAIeclPDGqlLGtZL4NbbxXKkWo7tGVMX3Uh8pbSqExfg/sqCq96GQqg?=
 =?iso-8859-1?Q?=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB3301.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b292005-552f-4ba0-7b0a-08dabccb679d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2022 12:11:42.8478
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Q2P46AIHaDVCPnhdJyjbG2ZYF/aDVuZ24QGXHM65JkdoVKkPKElR1fCFqd/UtQpfMUSoRukaTdlN/vPTOyVru50fRkQ0xr13GeXvCblWBUI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR12MB6258
X-MDID: 1667391111-LYxMEV0e9qfp
Message-ID-Hash: HUUMVQEKBV4CEWCITGWKGTZJQLNR4JZ5
X-Message-ID-Hash: HUUMVQEKBV4CEWCITGWKGTZJQLNR4JZ5
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] N320 LO stability problem
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SU22QSUENSVO7EOGGZCG7KBGISVWBWMU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7823484624379634891=="

--===============7823484624379634891==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR12MB33010775AE76FAB552039CF8B8399BYAPR12MB3301namp_"

--_000_BYAPR12MB33010775AE76FAB552039CF8B8399BYAPR12MB3301namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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


--_000_BYAPR12MB33010775AE76FAB552039CF8B8399BYAPR12MB3301namp_
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
Hello,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
<br>
</div>
</body>
</html>

--_000_BYAPR12MB33010775AE76FAB552039CF8B8399BYAPR12MB3301namp_--

--===============7823484624379634891==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7823484624379634891==--

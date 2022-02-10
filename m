Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C7AC14B13B8
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 18:00:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4371538507A
	for <lists+usrp-users@lfdr.de>; Thu, 10 Feb 2022 12:00:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=gardettoengineering.onmicrosoft.com header.i=@gardettoengineering.onmicrosoft.com header.b="djR74O2S";
	dkim-atps=neutral
Received: from dispatch1-us1.ppe-hosted.com (dispatch1-us1.ppe-hosted.com [148.163.129.49])
	by mm2.emwd.com (Postfix) with ESMTPS id D88E4384771
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 11:59:20 -0500 (EST)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from mx1-us1.ppe-hosted.com (unknown [10.7.64.31])
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 3AEAB260088
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 16:59:18 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2175.outbound.protection.outlook.com [104.47.59.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mx1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 0C323600077
	for <usrp-users@lists.ettus.com>; Thu, 10 Feb 2022 16:59:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LSPYnSdn+wKrl5trKuwpl+JKd9c5N5F7k9SwNAby1jIjkr+2WDNAUzXqhyFK5oq/e+Lrbidr4Ip1b6krB0TH0mOvaTwXkjt8rtf6ADKe/BicmThY4CCJJMQphqQI13AMAS0O588biJFhPDuRNMTy6tpoxnDJrpKpYKJMfCyTDbmFukMrQJViIkjHFRbpBdkH2SU2uUMFgwJtDb/GI8bHuaoq48p4kaiDBs3G1EU09ImURP3dQd//W0CBS0/GwWQ2M5AV/IELWNQDCLrRXftnOGj8X7MI29+8iqW9sgv8i0Bz4C0IP1FuPpgnXOBpSDIYxQAeg9UD5gF0xODkA9TH2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=je71igFm0CGD0LcgAJNS0VRapywEe2xZ7mIrJ5VZ1Fc=;
 b=hsFD+hXfsM6wB8RYf6umdihY8kIZPbCsMRT9M5+fmwLDRR9R43KMJdh1bPRpl6uFJrrXVuf4+xv5lqsf4eOL1GUcABDfVP3DmgecQ0Owq9be/AM5uk2hYjp8froF8OYkMX4rwuxhkD1NSdNLcRxAleBf7t21W1UM13JYJb0Y9+tCivAYtxW1c0u2+9L5Tttqj5RVoO53uaCty6Mg0UUTXrcx5SbJuWR9J3057M2q7YlIPGlfM7N2tKzsx6EyjcEwjOLfWuQKHFp1H1fEU9ZQHhclE89gavhJ8RvbCUjlCG1yJHf7kzAmmtOkR/+Bav5OkJVqSuYg8umOexTX7pcqaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=je71igFm0CGD0LcgAJNS0VRapywEe2xZ7mIrJ5VZ1Fc=;
 b=djR74O2SJyNc1HyhCyL4uXjrRphqXgJWP+0WkCBJzC/MrxO8WzAQ1CymkigCWoFhwOzJoySeKVOsVmRhyCrFoZng8td/W2SUDVPCfyqWb3LSNGwQO6nnBlthg7DQs9WqX0abkLBaxvWiotsw+ML7GtHMPq/jOLjsd5FwpoyrTnE=
Received: from MN2PR12MB3312.namprd12.prod.outlook.com (2603:10b6:208:ab::23)
 by BL0PR12MB2580.namprd12.prod.outlook.com (2603:10b6:207:3e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.18; Thu, 10 Feb
 2022 16:59:14 +0000
Received: from MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::b457:f58d:2410:5e24]) by MN2PR12MB3312.namprd12.prod.outlook.com
 ([fe80::b457:f58d:2410:5e24%4]) with mapi id 15.20.4975.015; Thu, 10 Feb 2022
 16:59:14 +0000
From: Jim Palladino <jim@gardettoengineering.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: [USRP-users] Re: Timed Commands Not Working
Thread-Index: AQHYHDfLsfSpNdA08kKOirsB5QNsA6yM/4YS
Date: Thu, 10 Feb 2022 16:59:13 +0000
Message-ID: 
 <MN2PR12MB331297AEAA500247C6D335D5B82F9@MN2PR12MB3312.namprd12.prod.outlook.com>
References: 
 <MN2PR12MB33128DBAE432D3F74D996B4DB82C9@MN2PR12MB3312.namprd12.prod.outlook.com>
In-Reply-To: 
 <MN2PR12MB33128DBAE432D3F74D996B4DB82C9@MN2PR12MB3312.namprd12.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=gardettoengineering.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4ccaa424-3fae-4eb0-86be-08d9ecb6aaab
x-ms-traffictypediagnostic: BL0PR12MB2580:EE_
x-microsoft-antispam-prvs: 
 <BL0PR12MB2580CD93BAF3AB0604A58E49B82F9@BL0PR12MB2580.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 u1/yE7JeP2apWbnpIpvzRjRL8xYXu23wi1TRVMd7KphT2z2dZ96TTjUJIYVCSSzasDmu8dAPYTW9IlN4A1f+so6JEcnLR2XzBPtzOpr4rocSCty4ge7qgT8XboAGI9+BaAexQSa/SBMqDd57gY3WhxdNxOFM3vWCc013jn4j8GOqpr3ySwWE0FjsUAZIsDudNXY48WSZvLmux0Za8RFZYn+wXRR0ufmuH2iWyTnaCmcUZBe/ZD8DvyH7NUJZ6Sb77t4I0SGEEzFDzOwqykj77DEjB+onfNvp/uJ51WdQcmpivUg1eikLjY/QToquzYIT11megC0bhJSxqvYl9//v5b35QwTd7NmQS44pRU9sQZIBRMNl2BhheSLxtM9Av1AyMMsKHLdbfIdaKSFD3cVGw6z483wTbhYN9bvJKEVFXjyMZWx0DXTyJZfnkJTCaWyqNpCUgPThRLdVGdNx9Qi72VcxHPY1ipBe5JLhDnZNLAmdgSpuZRE16c2YzeyzLhnjAEZYalaHKzMBJMySfT8fE4XjBaxsHN0okadoMJvSBXKcGiiq9prJjkDhX2worDBRCnuhgplPU/KQFRLfNloV190rPr7DEBEkbQxe17iKVzE2IT9y0bD0YkRxgJiTjH0sMiL3iirGYqiT7S4NVy7P8Ov1BfDvUZVCdf+y167Yit7yCHgaKA/+cwT7RALFYlfGzgDoW988IlQ4ZsfOsyNeciXFqD12i+YfX8HwvOnd1/m7nJBzDynF6uWe4em1x0EqnYANa385hs2b1a9sPFeecg0jSGjDKoIqUDQtdkxCHFo=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB3312.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(396003)(39830400003)(366004)(376002)(136003)(346002)(166002)(30864003)(122000001)(86362001)(76116006)(66556008)(66446008)(55016003)(66946007)(64756008)(38070700005)(8676002)(5660300002)(52536014)(38100700002)(8936002)(83380400001)(33656002)(508600001)(71200400001)(2906002)(6506007)(7696005)(9686003)(6916009)(66476007)(316002)(26005)(53546011)(186003)(19627405001)(966005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?62duQ2JqTkdftzxxt5RNqsHmYcBot0yjT8QUbLPxtN+UPMiT3IxZ6zxFFBff?=
 =?us-ascii?Q?RZVgXSb3b+qYXaTIpfEKhKSpGiCHKnioDdoiHpUpIdb39WYYOtaxdbmKyLdQ?=
 =?us-ascii?Q?dw4jJN9eWvb48hX2wYviclMojz5j9Vc2bIAZVSggd1zzwkmNpydQts3+DBky?=
 =?us-ascii?Q?H6ZrklCOy259R8Ne9wZMRfYBnt7JnQO68a1dYs7ZzWAX1K36rNX6ITDnSvxv?=
 =?us-ascii?Q?vxUtfpDGTx3Zg41yA2xdhf0DmJ+8/MSM7LIWEtgpvkMzIIaCzuFOYYewCpVF?=
 =?us-ascii?Q?LMk5rEqUZdXzG2lWOH9RXOzX/BVRvwWIMV1nhv8/th0gJukuU9zW59KD9t4S?=
 =?us-ascii?Q?7kdmSPvXuFDb+fSAZAZBdJBz8kc6w8NJnhSAxQcjBREl3opEwGLeOoOs1sDF?=
 =?us-ascii?Q?mbkbv5rVhsbHIfUewpJWJNA5cCo7OGtFFiuU0EK7jL7LfIiBTxaOIZC549e9?=
 =?us-ascii?Q?i0aYzyQHdD/+eVkBQgOVgrkoVf08qaPRhu4JISBeoZpWideZ0roBrC+I3oNv?=
 =?us-ascii?Q?txFUVUC8bK/4ZpxIUeS+Cmzo8i7+teoSMkVbdnRE8/FrHB6bXuIXOWVr64vO?=
 =?us-ascii?Q?pDUiPokzNiO4zdtpCvIVLwwf1OJJeqVQNjMjpV3GDWnCtmuXsF4tOIUomkGR?=
 =?us-ascii?Q?qhma419NdaMk+oetoe9tb9Kk8Jok3dJt+na3M8OMClUqZ7iwhrtrMw7tDNyM?=
 =?us-ascii?Q?PzRgGAi7+cQ2XYnEqCASU02vSWa4CaAl9Djnl4tMWUnlpjLtSbU0QbkbeAU0?=
 =?us-ascii?Q?o0Ryn8ELxCzy+l5PcNMgZk2N8Q4d3LYFIpcMbmaH01dXH7TPSH4K3hBcyW4t?=
 =?us-ascii?Q?zwZkfXj8vdRMJOoCKdZOAZBimwys28bBdujDbTSAvTUG/W+9kXcllkQLfKFC?=
 =?us-ascii?Q?mmsZ0b++EUWRNSUFyq/YRXqao8YeAl4LH+zduSBBUzF46fb/SAfN9y+6wIrc?=
 =?us-ascii?Q?CH75mj6Ul3dqmzXhMbmELCHNLPqL8VIBjQcE6tRtSDxUKaPQ9ihUNBmO+16u?=
 =?us-ascii?Q?t3WU95xw5tYx3g63lwgPxkFooga5/hbiFvkGkfSTEBs8b77gqBD40yipz5lc?=
 =?us-ascii?Q?mHH0pYgozPXZy4tAkQA3GTC5lEM0yEoCbaUbdWu4hsK3UlPS7Amu3krqGPed?=
 =?us-ascii?Q?k9NlYyzZ1k8pYE19gTyYg6I78RGPO4yvReh5AuSp5Q4t0Itq6/Gpu505Yj+s?=
 =?us-ascii?Q?m2Xjk5BmoY7xF3W0IfAkp2aR8FgeBzUVi83l256dsWYzM7V71ODBeblXoA+R?=
 =?us-ascii?Q?sVuKjzNat5d00SYnVBj3hUADaPiaVZqW1u8us+7VzUYjc9+oNEG5mHTte8DC?=
 =?us-ascii?Q?nBNtms8oSVClSw470un/WhQsw/OQjD1ZN5sOkVZr9SwH547Na7z4vrgXVJVl?=
 =?us-ascii?Q?aBYNzUKjl/uXw37TJ94PpObFPuWXkb+a3+jLu524fsfBuy2JykIJSjpVSMWS?=
 =?us-ascii?Q?rLVy/4//l0b29imIxG+tyTR8/aAMJGyANNEButBvmpSC2yPndgGudaG7kiJF?=
 =?us-ascii?Q?W/7lL43zkOh6e0EzKpYIt2mcsjJNm0pXYJsyX5zzo1x+xV/xVKIeUEsEOey0?=
 =?us-ascii?Q?QCiL8JHzlEpZW+kQgdTJ4AsBVYYooDWRbO/8AJFYoIF8F60nDj45+AFWxjxD?=
 =?us-ascii?Q?Jla3mXk0iNEwW36O5iXjmgQHleLeN+bClvqux8ikZpyG6zbnO2pqARQN13XG?=
 =?us-ascii?Q?LGsW3Q=3D=3D?=
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB3312.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ccaa424-3fae-4eb0-86be-08d9ecb6aaab
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2022 16:59:14.0581
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8NMWicZtZ6YuN591DC2Hg8XgS9unH9nAtlxqwajk4pmzuxp5gQ4u0cUgiFzZHbZ3GSKsl+KH/e2gzI35i5l5UyTXEh/j3b5QZh9QV1AqZUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2580
X-MDID: 1644512358-vxg57fjVwLTK
Message-ID-Hash: LIN7JCKNYHRIJPV3BAK2UD7QECTQCMKW
X-Message-ID-Hash: LIN7JCKNYHRIJPV3BAK2UD7QECTQCMKW
X-MailFrom: jim@gardettoengineering.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7T33EGF2TEAMWVD67KVPCQLMAQZ6DXRW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0700567484012261229=="

--===============0700567484012261229==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR12MB331297AEAA500247C6D335D5B82F9MN2PR12MB3312namp_"

--_000_MN2PR12MB331297AEAA500247C6D335D5B82F9MN2PR12MB3312namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I spent more time on this and found that it does appear that timed commands=
 (like set_rx_freq() and set_rx_gain()) are working on an N320 with UHD 4.1=
. This did not work on an E320 -- Marcus and Martin both pointed out that t=
his isn't supported on the E320.  The "get" commands (and thus the the "tes=
t_timed_commands" example UHD application) don't work on any platform that =
I've tried in UHD 4.1. This is probably related to the comments David made =
about blocking/not blocking. I'm not sure how that worked in any version of=
 UHD . . . . obviously something is different now.

Now that timed commands seem to be working, I'm wondering how to manage the=
 command queue. According to this, the command queue depth of the N320 (als=
o X300) radio core is 8:
https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#=
Command_Queue

In the following example, you can see they set the command depth for an X30=
0 to 16:
https://github.com/EttusResearch/uhd/blob/master/host/examples/twinrx_freq_=
hopping.cpp

I've been doing my own tests by writing timed commands to the fifo -- way o=
ut into the future, and waiting until I hit the point where I see:
"Error: RfnocError: OpTimeout: Control operation timed out waiting for spac=
e in command buffer"

What I've found is that the number of commands I can send varies a lot by t=
he command. If I send alternating "set_rx_freq()" and "issue_stream_cmd()" =
timed commands repeatedly, I found that I can send 14 commands before the a=
bove error.

If I repeatedly send only "set_rx_freq()" timed commands and keep the frequ=
ency the same every time, I can send 12 commands. If I increment the freque=
ncy by 250MHz each time, I can send 10 commands. If I make very large jumps=
 in frequency (like > 1GHz), I can only send 7 commands.

If instead of frequency, I send "set_rx_gain()" commands, I can send 104 be=
fore the fifo is full.

I'm assuming that the issue is either related to command length, or that wh=
en I call a function like set_rx_freq(), it really sends a series of comman=
ds that might vary depending on the frequency I'm tuning from/to. So, what =
I'm wondering is: how I can tell how much room remains in the command FIFO =
-- or some way to know how many future timed commands I can issue.

Thanks,
Jim



________________________________
From: Jim Palladino <jim@gardettoengineering.com>
Sent: Monday, February 7, 2022 10:37 AM
To: Dustin Widmann <dw2zq@virginia.edu>; usrp-users@lists.ettus.com <usrp-u=
sers@lists.ettus.com>
Subject: [USRP-users] Re: Timed Commands Not Working

Thanks Dustin and David -- that is good info regarding UHD versions that wo=
rked or didn't work with the test_timed_commands example application.

David, I'm not sure of the answer to your question regarding get_time_now()=
 and blocking . . . now that you got me thinking about it, I'm a little con=
fused by that, too. But I'm confident that the set_rx_freq() commands are n=
ot working in my own test code either. In that case, the response isn't an =
issue -- I can see that the LO gets tuned immediately when I call set_rx_fr=
eq() -- not at the time I specify with set_time_command().

Thanks,
Jim



________________________________
From: Dustin Widmann
Sent: Friday, February 4, 2022 1:23 PM
To: Jim Palladino; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: Timed Commands Not Working


For reference, I've done it over again with the latest commits from the UHD=
-4.0  and UHD-3.15.LTS branches.


Creating the usrp device with: ...
[INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400; UHD_4.0.0.0-240-gb=
38c9d83
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
 Difference between paired reads: 1060.659100 us

Testing control timed command:
 Span      : 100000.000000 us
 Now       : 249431.750000 us
 Response 1: 250515.950000 us
 Response 2: 251521.850000 us
 Difference of response time 1: -98915.800000 us
 Difference of response time 2: -197909.900000 us
 Difference between actual and expected time delta: -98994.100000 us

About to start streaming using timed command:
 Received packet: 100 samples, 0 full secs, 0.359452 frac secs
 Stream time was: 0 full secs, 0.359452 frac secs
 Difference between stream time and first packet: 0.000000 us

Done!


Creating the usrp device with: ...
[INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400; UHD_3.15.0.0-74-ge=
35f66e8
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] No GPSDO found
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1309 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 0
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 0
    TX Dboard: B
    TX Subdev: UBX TX


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
 Difference between paired reads: 60.434350 us

Testing control timed command:
 Span      : 100000.000000 us
 Now       : 1848964.600000 us
 Response 1: 1948964.655000 us
 Response 2: 2048964.655000 us
 Difference of response time 1: 0.055000 us
 Difference of response time 2: 0.055000 us
 Difference between actual and expected time delta: 0.000000 us

About to start streaming using timed command:
 Received packet: 100 samples, 2 full secs, 0.155770 frac secs
 Stream time was: 2 full secs, 0.155770 frac secs
 Difference between stream time and first packet: 0.005000 us

Done!



--


This is pretty concerning, looks like the latest commit of the UHD-4.0 bran=
ch has this broken as well? Timed commands at least used to work in UHD 4.0=
, but I hadn't tried in a while, and never with this nifty test program. I'=
m going to have to see if I can find where the breakage occurred, so I can =
roll back for the time being.


-Dustin


On 2/4/22 11:23, Jim Palladino wrote:
Dustin,

Thank you for running that. So apparently, it isn't just an issue on my end=
.

Thanks,
Jim

________________________________
From: Dustin Widmann <dw2zq@virginia.edu><mailto:dw2zq@virginia.edu>
Sent: Friday, February 4, 2022 11:16 AM
To: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: [USRP-users] Re: Timed Commands Not Working


"Hopefully, someone can try the uhd "test_timed_commands" example in 4.1 to=
..."


Figure I ought to be about as good as the next somebody.

test_timed_commands output with UHD 4.1.0 and an X310

Creating the usrp device with: ...
[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107800; UHD_4.1.0.HEAD-0-=
g6bd0be9c
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
Using Device: Single USRP:
  Device: X-Series Device
  Mboard 0: X310
  RX Channel: 0
    RX DSP: 0
    RX Dboard: A
    RX Subdev: UBX RX
  RX Channel: 1
    RX DSP: 1
    RX Dboard: B
    RX Subdev: UBX RX
  TX Channel: 0
    TX DSP: 0
    TX Dboard: A
    TX Subdev: UBX TX
  TX Channel: 1
    TX DSP: 1
    TX Dboard: B
    TX Subdev: UBX TX


Testing support for timed commands on this hardware... pass

Perform fast readback of registers:
 Difference between paired reads: 1079.015300 us

Testing control timed command:
 Span      : 100000.000000 us
 Now       : 253256.340000 us
 Response 1: 254437.230000 us
 Response 2: 255676.840000 us
 Difference of response time 1: -98819.110000 us
 Difference of response time 2: -197579.500000 us
 Difference between actual and expected time delta: -98760.390000 us

About to start streaming using timed command:
 Received packet: 100 samples, 0 full secs, 0.365935 frac secs
 Stream time was: 0 full secs, 0.365935 frac secs
 Difference between stream time and first packet: 0.000000 us

Done!

-Dustin


On 2/3/22 08:02, Jim Palladino wrote:
Thanks, Rob. I always appreciate when you "chime in". Hopefully, someone ca=
n try the uhd "test_timed_commands" example in 4.1 to help confirm whether =
or not it's a problem with something on my end or with UHD. Marcus already =
confirmed its working for him with an N310 and UHD 3.15.

Thanks,
Jim

________________________________
From: Rob Kossler <rkossler@nd.edu><mailto:rkossler@nd.edu>
Sent: Wednesday, February 2, 2022 3:26 PM
To: Jim Palladino <jim@gardettoengineering.com><mailto:jim@gardettoengineer=
ing.com>
Cc: Marcus D. Leech <patchvonbraun@gmail.com><mailto:patchvonbraun@gmail.co=
m>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com><mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

Hi Jim,
This sounds like a pretty big issue. I haven't chimed in because I couldn't=
 say for sure if timed commands were working for me or not in UHD 4.1. I am=
 using N321s with shared LO, so the normal commands I use for setting frequ=
ency aren't critical (from a timed command perspective) except for how the =
DDC/DUC might be handling them. In any case, once you find out the issue, c=
ould you please share the solution here. If I get a chance, I will try this=
 on some of my devices.
Rob

On Wed, Feb 2, 2022 at 12:22 PM Jim Palladino <jim@gardettoengineering.com<=
mailto:jim@gardettoengineering.com>> wrote:
Just to add one more data point, I just ran test_timed_commands on a differ=
ent computer connected to an X310 -- still UHD 4.1. I have the same problem=
 with that device where it looks like timed commands are not working right.

Thanks,
Jim

________________________________
From: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoenginee=
ring.com>>
Sent: Wednesday, February 2, 2022 10:44 AM
To: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.com=
>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-use=
rs@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

Correct -- I am using the stock FPGA image for the E320 and the N320.

Thanks,
Jim

________________________________
From: Marcus D. Leech <patchvonbraun@gmail.com<mailto:patchvonbraun@gmail.c=
om>>
Sent: Wednesday, February 2, 2022 10:39 AM
To: Jim Palladino <jim@gardettoengineering.com<mailto:jim@gardettoengineeri=
ng.com>>; usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com> <us=
rp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>>
Subject: Re: [USRP-users] Re: Timed Commands Not Working

On 2022-02-02 10:21, Jim Palladino wrote:
Thanks Marcus. Please let me know if R&D comes back with anything. I'm at a=
 bit of a loss . . .

Thanks,
Jim

________________________________

Just to clarify--this is with the stock FPGA image, correct?


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>


--_000_MN2PR12MB331297AEAA500247C6D335D5B82F9MN2PR12MB3312namp_
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
: 12pt; color: rgb(0, 0, 0);">
I spent more time on this and found that it does appear that timed commands=
 (like set_rx_freq() and set_rx_gain()) are working on an N320 with UHD 4.1=
. This did not work on an E320 -- Marcus and Martin both pointed out that t=
his isn't supported on the E320.&nbsp;
 The &quot;get&quot; commands (and thus the the &quot;test_timed_commands&q=
uot; example UHD application) don't work on any platform that I've tried in=
 UHD 4.1. This is probably related to the comments David made about blockin=
g/not blocking. I'm not sure how that worked in any
 version of UHD . . . . obviously something is different now.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Now that timed commands seem to be working, I'm wondering how to manage the=
 command queue. According to this, the command queue depth of the N320 (als=
o X300) radio core is 8:<br>
<a href=3D"https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Comma=
nds_in_UHD#Command_Queue" id=3D"LPNoLPOWALinkPreview">https://kb.ettus.com/=
Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD#Command_Queue</a><br>
<br>
In the following example, you can see they set the command depth for an X30=
0 to 16:<br>
<a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/examples/t=
winrx_freq_hopping.cpp" id=3D"LPlnk672928">https://github.com/EttusResearch=
/uhd/blob/master/host/examples/twinrx_freq_hopping.cpp</a><br>
<br>
I've been doing my own tests by writing timed commands to the fifo -- way o=
ut into the future, and waiting until I hit the point where I see:<br>
&quot;Error: RfnocError: OpTimeout: Control operation timed out waiting for=
 space in command buffer&quot;<br>
<br>
What I've found is that the number of commands I can send varies a lot by t=
he command. If I send alternating &quot;set_rx_freq()&quot; and &quot;issue=
_stream_cmd()&quot; timed commands repeatedly, I found that I can send 14 c=
ommands before the above error.&nbsp;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If I repeatedly send only &quot;set_rx_freq()&quot; timed commands and keep=
 the frequency the same every time, I can send 12 commands. If I increment =
the frequency by 250MHz each time, I can send 10 commands.&nbsp;<span style=
=3D"color: rgb(0, 0, 0); font-family: Calibri, Arial, Helvetica, sans-serif=
; font-size: 12pt;">If
 I make very large jumps in frequency (like &gt; 1GHz), I can only send 7 c=
ommands.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
If instead of frequency, I send &quot;set_rx_gain()&quot; commands, I can s=
end 104 before the fifo is full.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I'm assuming that the issue is either related to command length, or that wh=
en I call a function like set_rx_freq(), it really sends a series of comman=
ds that might vary depending on the frequency I'm tuning from/to. So, what =
I'm wondering is: how I can tell
 how much room remains in the command FIFO -- or some way to know how many =
future timed commands I can issue.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Jim</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
<div class=3D"_Entity _EType_OWALinkPreview _EId_OWALinkPreview _EReadonly_=
1"></div>
<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jim Palladino &lt;jim=
@gardettoengineering.com&gt;<br>
<b>Sent:</b> Monday, February 7, 2022 10:37 AM<br>
<b>To:</b> Dustin Widmann &lt;dw2zq@virginia.edu&gt;; usrp-users@lists.ettu=
s.com &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks Dustin and David -- that is good info regarding UHD versions that wo=
rked or didn't work with the test_timed_commands example application.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
David, I'm not sure of the answer to your question regarding get_time_now()=
 and blocking . . . now that you got me thinking about it, I'm a little con=
fused by that, too. But I'm confident that the set_rx_freq() commands are n=
ot working in my own test code either.
 In that case, the response isn't an issue -- I can see that the LO gets tu=
ned immediately when I call set_rx_freq() -- not at the time I specify with=
 set_time_command().</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div>
<div><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<b>From:</b> Dustin Widmann<br>
<b>Sent:</b> Friday, February 4, 2022 1:23 PM<br>
<b>To:</b> Jim Palladino; usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working
<div><br>
</div>
</div>
<div class=3D"x_rps_fb58">
<div>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px">For reference, I've done it over again with the latest commits from =
the UHD-4.0&nbsp; and UHD-3.15.LTS branches.</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px">Creating the usrp device with: ...<br>
[INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400; UHD_4.0.0.0-240-gb=
38c9d83<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
Using Device: Single USRP:<br>
&nbsp; Device: X-Series Device<br>
&nbsp; Mboard 0: X310<br>
&nbsp; RX Channel: 0<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: A<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; RX Channel: 1<br>
&nbsp;&nbsp;&nbsp; RX DSP: 1<br>
&nbsp;&nbsp;&nbsp; RX Dboard: B<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; TX Channel: 0<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: A<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
&nbsp; TX Channel: 1<br>
&nbsp;&nbsp;&nbsp; TX DSP: 1<br>
&nbsp;&nbsp;&nbsp; TX Dboard: B<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
<br>
<br>
Testing support for timed commands on this hardware... pass<br>
<br>
Perform fast readback of registers:<br>
&nbsp;Difference between paired reads: 1060.659100 us<br>
<br>
Testing control timed command:<br>
&nbsp;Span&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 100000.000000 us<br>
&nbsp;Now&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 249431.750000 us<br>
&nbsp;Response 1: 250515.950000 us<br>
&nbsp;Response 2: 251521.850000 us<br>
&nbsp;Difference of response time 1: -98915.800000 us<br>
&nbsp;Difference of response time 2: -197909.900000 us<br>
&nbsp;Difference between actual and expected time delta: -98994.100000 us<b=
r>
<br>
About to start streaming using timed command:<br>
&nbsp;Received packet: 100 samples, 0 full secs, 0.359452 frac secs<br>
&nbsp;Stream time was: 0 full secs, 0.359452 frac secs<br>
&nbsp;Difference between stream time and first packet: 0.000000 us<br>
<br>
Done!<br>
<br>
<br>
Creating the usrp device with: ...<br>
[INFO] [UHD] linux; Clang version 13.0.0 ; Boost_107400; UHD_3.15.0.0-74-ge=
35f66e8<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
[INFO] [GPS] No GPSDO found<br>
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1309 MB/s)<br>
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)<=
br>
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)<br=
>
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
Using Device: Single USRP:<br>
&nbsp; Device: X-Series Device<br>
&nbsp; Mboard 0: X310<br>
&nbsp; RX Channel: 0<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: A<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; RX Channel: 1<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: B<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; TX Channel: 0<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: A<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
&nbsp; TX Channel: 1<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: B<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
<br>
<br>
Testing support for timed commands on this hardware... pass<br>
<br>
Perform fast readback of registers:<br>
&nbsp;Difference between paired reads: 60.434350 us<br>
<br>
Testing control timed command:<br>
&nbsp;Span&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 100000.000000 us<br>
&nbsp;Now&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 1848964.600000 us<br>
&nbsp;Response 1: 1948964.655000 us<br>
&nbsp;Response 2: 2048964.655000 us<br>
&nbsp;Difference of response time 1: 0.055000 us<br>
&nbsp;Difference of response time 2: 0.055000 us<br>
&nbsp;Difference between actual and expected time delta: 0.000000 us<br>
<br>
About to start streaming using timed command:<br>
&nbsp;Received packet: 100 samples, 2 full secs, 0.155770 frac secs<br>
&nbsp;Stream time was: 2 full secs, 0.155770 frac secs<br>
&nbsp;Difference between stream time and first packet: 0.005000 us<br>
<br>
Done!<br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px">--
<br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px">This is pretty concerning, looks like the latest commit of the UHD-4=
.0 branch has this broken as well? Timed commands at least used to work in =
UHD 4.0, but I hadn't tried in a while,
 and never with this nifty test program. I'm going to have to see if I can =
find where the breakage occurred, so I can roll back for the time being.
<br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px">-Dustin<br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px"><br>
</p>
<div class=3D"x_x_moz-cite-prefix">On 2/4/22 11:23, Jim Palladino wrote:<br=
>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Dustin,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thank you for running that. So apparently, it isn't just an issue on my end=
.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif=
" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Dustin Widmann
<a href=3D"mailto:dw2zq@virginia.edu" target=3D"_blank" rel=3D"noopener nor=
eferrer" class=3D"x_x_moz-txt-link-rfc2396E">
&lt;dw2zq@virginia.edu&gt;</a><br>
<b>Sent:</b> Friday, February 4, 2022 11:16 AM<br>
<b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" =
rel=3D"noopener noreferrer" class=3D"x_x_moz-txt-link-abbreviated">
usrp-users@lists.ettus.com</a> <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_moz-txt-link-r=
fc2396E">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px">&quot;Hopefully, someone can try the uhd &quot;test_timed_commands&q=
uot; example in 4.1 to...&quot;</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px">Figure I ought to be about as good as the next somebody.
<br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px">test_timed_commands output with UHD 4.1.0 and an X310</p>
<p style=3D"margin-top:0px; margin-bottom:0px; margin-top:0px; margin-botto=
m:0px"><br>
Creating the usrp device with: ...<br>
[INFO] [UHD] linux; GNU C++ version 11.2.0; Boost_107800; UHD_4.1.0.HEAD-0-=
g6bd0be9c<br>
[INFO] [X300] X300 initialization sequence...<br>
[INFO] [X300] Maximum frame size: 8000 bytes.<br>
[INFO] [X300] Radio 1x clock: 200 MHz<br>
Using Device: Single USRP:<br>
&nbsp; Device: X-Series Device<br>
&nbsp; Mboard 0: X310<br>
&nbsp; RX Channel: 0<br>
&nbsp;&nbsp;&nbsp; RX DSP: 0<br>
&nbsp;&nbsp;&nbsp; RX Dboard: A<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; RX Channel: 1<br>
&nbsp;&nbsp;&nbsp; RX DSP: 1<br>
&nbsp;&nbsp;&nbsp; RX Dboard: B<br>
&nbsp;&nbsp;&nbsp; RX Subdev: UBX RX<br>
&nbsp; TX Channel: 0<br>
&nbsp;&nbsp;&nbsp; TX DSP: 0<br>
&nbsp;&nbsp;&nbsp; TX Dboard: A<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
&nbsp; TX Channel: 1<br>
&nbsp;&nbsp;&nbsp; TX DSP: 1<br>
&nbsp;&nbsp;&nbsp; TX Dboard: B<br>
&nbsp;&nbsp;&nbsp; TX Subdev: UBX TX<br>
<br>
<br>
Testing support for timed commands on this hardware... pass<br>
<br>
Perform fast readback of registers:<br>
&nbsp;Difference between paired reads: 1079.015300 us<br>
<br>
Testing control timed command:<br>
&nbsp;Span&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 100000.000000 us<br>
&nbsp;Now&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 253256.340000 us<br>
&nbsp;Response 1: 254437.230000 us<br>
&nbsp;Response 2: 255676.840000 us<br>
&nbsp;Difference of response time 1: -98819.110000 us<br>
&nbsp;Difference of response time 2: -197579.500000 us<br>
&nbsp;Difference between actual and expected time delta: -98760.390000 us<b=
r>
<br>
About to start streaming using timed command:<br>
&nbsp;Received packet: 100 samples, 0 full secs, 0.365935 frac secs<br>
&nbsp;Stream time was: 0 full secs, 0.365935 frac secs<br>
&nbsp;Difference between stream time and first packet: 0.000000 us<br>
<br>
Done!<br>
<br>
-Dustin<br>
<br>
</p>
<div class=3D"x_x_x_moz-cite-prefix">On 2/3/22 08:02, Jim Palladino wrote:<=
br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks, Rob. I always appreciate when you &quot;chime in&quot;. Hopefully, =
someone can try the uhd &quot;test_timed_commands&quot; example in 4.1 to h=
elp confirm whether or not it's a problem with something on my end or with =
UHD. Marcus already confirmed its working for him with
 an N310 and UHD 3.15.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_x_x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-ser=
if" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Rob Kossler
<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank" rel=3D"noopener norefe=
rrer" class=3D"x_x_x_moz-txt-link-rfc2396E">
&lt;rkossler@nd.edu&gt;</a><br>
<b>Sent:</b> Wednesday, February 2, 2022 3:26 PM<br>
<b>To:</b> Jim Palladino <a href=3D"mailto:jim@gardettoengineering.com" tar=
get=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-link-rfc2=
396E">
&lt;jim@gardettoengineering.com&gt;</a><br>
<b>Cc:</b> Marcus D. Leech <a href=3D"mailto:patchvonbraun@gmail.com" targe=
t=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-link-rfc239=
6E">
&lt;patchvonbraun@gmail.com&gt;</a>; <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-tx=
t-link-abbreviated x_x_moz-txt-link-freetext">
usrp-users@lists.ettus.com</a> <a href=3D"mailto:usrp-users@lists.ettus.com=
" target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-link=
-rfc2396E">
&lt;usrp-users@lists.ettus.com&gt;</a><br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jim,
<div>This sounds like a pretty big issue. I haven't chimed in because I cou=
ldn't say for sure if timed commands were working for me or not in UHD 4.1.=
 I am using N321s with shared LO, so the normal commands I use for setting =
frequency aren't critical (from
 a timed command perspective) except for how the DDC/DUC might be handling =
them. In any case, once you find out the issue, could you please share the =
solution here. If I get a chance, I will try this on some of my devices.</d=
iv>
<div>Rob</div>
</div>
<br>
<div class=3D"x_x_x_x_gmail_quote">
<div dir=3D"ltr" class=3D"x_x_x_x_gmail_attr">On Wed, Feb 2, 2022 at 12:22 =
PM Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com" target=
=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-link-freetex=
t x_x_moz-txt-link-freetext">jim@gardettoengineering.com</a>&gt;
 wrote:<br>
</div>
<blockquote class=3D"x_x_x_x_gmail_quote" style=3D"margin:0px 0px=0A=
                0px 0.8ex; border-left:1px solid rgb(204,204,204); padding-=
left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Just to add one more data point, I just ran test_timed_commands on a differ=
ent computer connected to an X310 -- still UHD 4.1. I have the same problem=
 with that device where it looks like timed commands are not working right.=
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_x_x_gmail-m_7375824889804353296divRplyFwdMsg" dir=3D"ltr"><f=
ont face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"=
><b>From:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.c=
om" target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-li=
nk-freetext x_x_moz-txt-link-freetext">jim@gardettoengineering.com</a>&gt;<=
br>
<b>Sent:</b> Wednesday, February 2, 2022 10:44 AM<br>
<b>To:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com" t=
arget=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-link-fr=
eetext x_x_moz-txt-link-freetext">patchvonbraun@gmail.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noop=
ener noreferrer" class=3D"x_x_x_moz-txt-link-freetext x_x_moz-txt-link-free=
text">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-=
link-freetext x_x_moz-txt-link-freetext">usrp-users@lists.ettus.com</a>&gt;=
<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Correct -- I am using the stock FPGA image for the E320 and the N320.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,
<div>Jim</div>
<div><br>
</div>
</div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_x_x_x_gmail-m_7375824889804353296x_divRplyFwdMsg" dir=3D"ltr">=
<font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11p=
t"><b>From:</b> Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.c=
om" target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-li=
nk-freetext x_x_moz-txt-link-freetext">patchvonbraun@gmail.com</a>&gt;<br>
<b>Sent:</b> Wednesday, February 2, 2022 10:39 AM<br>
<b>To:</b> Jim Palladino &lt;<a href=3D"mailto:jim@gardettoengineering.com"=
 target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-link-=
freetext x_x_moz-txt-link-freetext">jim@gardettoengineering.com</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noop=
ener noreferrer" class=3D"x_x_x_moz-txt-link-freetext x_x_moz-txt-link-free=
text">
usrp-users@lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus=
.com" target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-=
link-freetext x_x_moz-txt-link-freetext">usrp-users@lists.ettus.com</a>&gt;=
<br>
<b>Subject:</b> Re: [USRP-users] Re: Timed Commands Not Working</font>
<div>&nbsp;</div>
</div>
<div>
<div>On 2022-02-02 10:21, Jim Palladino wrote:<br>
</div>
<blockquote type=3D"cite">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks Marcus. Please let me know if R&amp;D comes back with anything. I'm =
at a bit of a loss . . .&nbsp;</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thanks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Jim</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr style=3D"display:inline-block; width:98%">
<br>
</blockquote>
Just to clarify--this is with the stock FPGA image, correct?<br>
<br>
<br>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-link-fre=
etext x_x_moz-txt-link-freetext">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-t=
xt-link-freetext x_x_moz-txt-link-freetext">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
<br>
<fieldset class=3D"x_x_x_moz-mime-attachment-header"></fieldset>
<pre class=3D"x_x_x_moz-quote-pre">________________________________________=
_______=0A=
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-txt-link-abb=
reviated x_x_moz-txt-link-freetext">usrp-users@lists.ettus.com</a>=0A=
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noopener noreferrer" class=3D"x_x_x_moz-t=
xt-link-abbreviated x_x_moz-txt-link-freetext">usrp-users-leave@lists.ettus=
.com</a>=0A=
</pre>
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MN2PR12MB331297AEAA500247C6D335D5B82F9MN2PR12MB3312namp_--

--===============0700567484012261229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0700567484012261229==--

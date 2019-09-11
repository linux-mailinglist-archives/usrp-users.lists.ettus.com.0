Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2DFAFF10
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 16:45:38 +0200 (CEST)
Received: from [::1] (port=36418 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i83sE-00036k-Ly; Wed, 11 Sep 2019 10:45:34 -0400
Received: from dispatch1-us1.ppe-hosted.com ([67.231.154.164]:51732)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jason@gardettoengineering.com>)
 id 1i83sA-0002vi-2v
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 10:45:30 -0400
Received: from dispatch1-us1.ppe-hosted.com (localhost.localdomain [127.0.0.1])
 by dispatch1-us1.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTP id
 BB4CE105D7E
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 14:44:48 +0000 (UTC)
X-Virus-Scanned: Proofpoint Essentials engine
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam03lp2055.outbound.protection.outlook.com [104.47.40.55])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us2.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 9DDAE8008B; 
 Wed, 11 Sep 2019 14:44:37 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ksi5xcTvll4EcSQmLXlTnmqQed9w30A5SNBqI4mKkpZXJotAmlm8dKSJTao2vHHHUbmhKwW0AJC26K7EspydfEg+mNGr8PMXL6agpA4Z+BeAStyOaueq9xjylXMDtIIwH72uzsO2iBcdXUU0mIHuDvRgwO0L8/8WRLoWgcYyyDABO+bCq9WJDL3zLiSOWs9oJgmV7GmesCZJ38lrzRObLM4JKwxP5V0aVAVkK1h+cFLmpcvvgSVoXhBMhmUhztbih2WyVYEgENPP7FEWCvru12lJ87vqX+INGjsvYdDh8fhG48hf9txNGH0wfZI592olqW/EkmFxsKuXzR8F7ucKhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XPqxd8kP0uhQ7AYYrDHSwOiRROEbPGJV4niE/+bqdBE=;
 b=ft/rVG4pfH+fGU6gFCGhkCenyLYqpY9f0rX20/tbzt3cLuIxpF/oZqr5X93IZvPDAazE5RvZg3QfmJMy2lM67r1F0BGkRwt/K7LVXYmfE8dMr1KO9g2iTPX+Jn0OQ5v9LTOynnCcSS/hTeX9Mw05PByZ142AFxCSrCR/rOi1epd56gjEMaSWPGXv7z1qDomAb3+S4Pho84Rffs8BwqQ1dewI3oKsf3J1Lv6h629pdsb0pcVXSHt/H3xWgK5usWlpCT1U4+7ew3A26lBCNsuTkAPaMq8txH8nFx10EC/Fbxl0i0fOjn8mPK485uXGXI+NliMvsIH4FNtGHyPkieZRkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=gardettoengineering.com; dmarc=pass action=none
 header.from=gardettoengineering.com; dkim=pass
 header.d=gardettoengineering.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gardettoengineering.onmicrosoft.com;
 s=selector2-gardettoengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XPqxd8kP0uhQ7AYYrDHSwOiRROEbPGJV4niE/+bqdBE=;
 b=nPd2JGFWYKIDDdmmg0lvnpsn+AHYrSsfpuqYWTqsVonEq0OgzQ2qeUYarSDlmrA93+BULB7dmXBBC/YXu43eCUOEbJR9zRIw9ZqZG/IR6y70CsdN5MjScGyR4nPyYcDaCRypUB1nNnJ7H5HGRwvzYaPPek2pV51p/oW4jdgjX2o=
Received: from BL0PR12MB2340.namprd12.prod.outlook.com (52.132.11.30) by
 BL0PR12MB2579.namprd12.prod.outlook.com (52.132.11.13) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Wed, 11 Sep 2019 14:44:36 +0000
Received: from BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::10b:c950:7de9:d8d8]) by BL0PR12MB2340.namprd12.prod.outlook.com
 ([fe80::10b:c950:7de9:d8d8%6]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 14:44:36 +0000
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] No block_id specified for channel 0
Thread-Index: AQHVZ9FuTCd9cpegNUeHAH76St9FT6cl1CQAgAC0/9Y=
Date: Wed, 11 Sep 2019 14:44:35 +0000
Message-ID: <BL0PR12MB2340D808FE92D5268DFEFE05AFB10@BL0PR12MB2340.namprd12.prod.outlook.com>
References: <BL0PR12MB2340FC4C7B3CCD31AF67D8AFAFB60@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <CAL7q81u_K6Rmh60FVts8nqtYZemb-OYWBmDhuC8ccsum9rmGCw@mail.gmail.com>
In-Reply-To: <CAL7q81u_K6Rmh60FVts8nqtYZemb-OYWBmDhuC8ccsum9rmGCw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=jason@gardettoengineering.com; 
x-originating-ip: [65.127.220.137]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e79c364d-394c-4a7a-4d95-08d736c69104
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BL0PR12MB2579; 
x-ms-traffictypediagnostic: BL0PR12MB2579:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <BL0PR12MB2579FAC70C35D4E82D37A77DAFB10@BL0PR12MB2579.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:883;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(39830400003)(136003)(376002)(366004)(396003)(199004)(189003)(81166006)(14444005)(53546011)(14454004)(508600001)(6246003)(76116006)(74316002)(76176011)(7736002)(7696005)(8676002)(2906002)(966005)(316002)(99286004)(66066001)(33656002)(3846002)(4326008)(86362001)(19627405001)(8936002)(5660300002)(25786009)(52536014)(26005)(71200400001)(6116002)(102836004)(81156014)(71190400001)(256004)(53936002)(476003)(486006)(6306002)(9686003)(236005)(55016002)(54896002)(66946007)(6506007)(66446008)(105004)(6916009)(6436002)(66476007)(606006)(229853002)(446003)(186003)(11346002)(66556008)(64756008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR12MB2579;
 H:BL0PR12MB2340.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gardettoengineering.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: u/xU6Nd5Wqt8QjYONk6eNksY9b4bqzFlQbvJGKCRRYCkr3wI75sJvBcqqcxs08SZTVwEvmq9UTVfqQ24fRnhNQ44puE3E5yc5S1uvwbPsP0jEJ4/+0NlC1608bXQ3ZtM4ehoI8EBZecN0rJ6gVgkdC+63QheuttINuX5j4pYVPOUjMTwI54xUsvF+knB5/yBv2n568ViZnMePy0Z2Bgy5IDJEaejfL/FUu5V/Jfc/y2ONMRgHrw784db9DYE6MC0/bfOLxtLEkw5TaYWkaHazpaEtmgcTbLyok+cKsT/mPZ98/UUIWtHszSKPJ0OHvVAUFsW/gCOZSmBNPEf6SZjMhn49KoaX7T8a4cEaQAYqw3nSzI1F4swpToYiJhe5wKNmN0yQGscfa4xa+UKq11VgOeCn0C+cQPyGkCr/HGksdo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: gardettoengineering.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e79c364d-394c-4a7a-4d95-08d736c69104
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 14:44:35.9168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1d762e6c-e2fd-44b0-85df-2e85e0aaa001
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jjQIitRKbJPydWvyA0B+IepmYLOIR5kisU4ZltTi7DogykjDQYT+ak/fzLUdJcfGxgCQNhHOyTTexSmrCA1F6LNoLk8VCYFUF9B03EYExMY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB2579
X-MDID: 1568213078-m2qu2gvnLa_u
Subject: Re: [USRP-users] No block_id specified for channel 0
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
From: Jason Matusiak via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jason Matusiak <jason@gardettoengineering.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0218165285168783685=="
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

--===============0218165285168783685==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR12MB2340D808FE92D5268DFEFE05AFB10BL0PR12MB2340namp_"

--_000_BL0PR12MB2340D808FE92D5268DFEFE05AFB10BL0PR12MB2340namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Howdy Jon,

Bingo.  I had suspected the same thing yesterday just before I left, but I =
wanted to let a new FPGA build overnight before I made any changes.  The FP=
GA change did nothing, but rolling back a commit for gr-ettus did.
I will say that even though things are "running" now, it doesn't seem to be=
 100%.  I am going to dig through the commits and see if I need to go back =
a few more.  I am running OK for a few seconds. and then getting "Doverrun =
on chan 0" and then "[ERROR] [X300] 192.168.27.2: x300 fw communication fai=
lure #1
EnvironmentError: IOError: x300 fw poke32 - reply timed out".  It seems lik=
e the network just goes out to lunch (this 10G connection of mine has alway=
s been reliable until this).

So to summarize, yep, the latest gr-ettus commit threw a curveball.  But, t=
hings are not 100% working, and this block of mine was working fine on the =
E312/E320s.  I'll report back if something else turns up.


________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Sent: Tuesday, September 10, 2019 11:35 PM
To: Jason Matusiak <jason@gardettoengineering.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] No block_id specified for channel 0

Hi Jason,

Could you try reverting gr-ettus back one commit to 4980cbef and let me kno=
w if that works?

Jonathon

On Tue, Sep 10, 2019 at 5:23 AM Jason Matusiak via USRP-users <usrp-users@l=
ists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
I have an RFNoC  flowgraph and bitfile combo that used to work but is error=
ing out now. I've been using the code successfully on the E320 and E310 and=
 decided to re-build for the X310 (and XG flowgraph).  When I run my flowgr=
aph, I am see a lot of addition debug that I am not used to seeing (which i=
s fine) and then my block in particular seems to cause problems and I get t=
he error in the subject.  I am guessing that since I just rebuilt everythin=
g, some change needs to be made in my impl for my block due to some UHD upd=
ate, but I can't quite figure out anywhere where something changes.  The be=
ginning of the output when I run my flowgraph is:

[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36); Boos=
t_105300; UHD_3.14.1.1-0-g98c7c986
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1323 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/DDC_2] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/DDC_3] Initializing block control (NOC ID: 0xDDC0000000000001)
[INFO] [0/keepMinN_0] Initializing block control (NOC ID: 0x229C30C91927522=
0)
[INFO] [0/keepMinN_1] Initializing block control (NOC ID: 0x229C30C91927522=
0)
[WARNING] [RFNOC] Can't find a block controller for key SplitStream, using =
default block controller!
[INFO] [0/SplitStream_0] Initializing block control (NOC ID: 0x575700000000=
0000)
[WARNING] [RFNOC] Can't find a block controller for key SplitStream, using =
default block controller!
[INFO] [0/SplitStream_1] Initializing block control (NOC ID: 0x575700000000=
0000)
Finding block for: Radio_1
Mapped external port 0 to 0
Mapped port 0 to 0/Radio_1
Mapped external port 1 to 1
Mapped port 1 to 0/Radio_1
TX args:
RX args:
0/Radio_1 has 1 input ports
0/Radio_1 has 2 output ports
getting block control for port 0
Finding block for: DDC_0
Mapped external port 0 to 0
Mapped port 0 to 0/DDC_0
TX args:
getting block control for port 0
getting block control for port 0


And the ehnd of that blob shows:

getting block control for port 0
getting block control for port 0
thread[thread-per-block[2]: <block keepMinN (10)>]: RuntimeError: Cannot cr=
eate streamers: No block_id specified for channel 0.


And finally, if I let it sit there, the X310 must get into a wonky state be=
cause I start to get:

[ERROR] [X300] 192.168.80.2<https://urldefense.proofpoint.com/v2/url?u=3Dht=
tp-3A__192.168.80.2&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfi=
iMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DHJQv_tP-l348DEC-L6f=
Sq05a8NuS_qL8oXAhNL7hdTw&s=3DRcTxqxOJH24llSidhjkaLXsSP1JwnViPVqwR1OKlzvo&e=
=3D>: x300 fw communication failure #1
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.80.2<https://urldefense.proofpoint.com/v2/url?u=3Dht=
tp-3A__192.168.80.2&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfi=
iMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DHJQv_tP-l348DEC-L6f=
Sq05a8NuS_qL8oXAhNL7hdTw&s=3DRcTxqxOJH24llSidhjkaLXsSP1JwnViPVqwR1OKlzvo&e=
=3D>: x300 fw communication failure #2
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.80.2<https://urldefense.proofpoint.com/v2/url?u=3Dht=
tp-3A__192.168.80.2&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfi=
iMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DHJQv_tP-l348DEC-L6f=
Sq05a8NuS_qL8oXAhNL7hdTw&s=3DRcTxqxOJH24llSidhjkaLXsSP1JwnViPVqwR1OKlzvo&e=
=3D>: x300 fw communication failure #1
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.80.2<https://urldefense.proofpoint.com/v2/url?u=3Dht=
tp-3A__192.168.80.2&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfi=
iMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DHJQv_tP-l348DEC-L6f=
Sq05a8NuS_qL8oXAhNL7hdTw&s=3DRcTxqxOJH24llSidhjkaLXsSP1JwnViPVqwR1OKlzvo&e=
=3D>: x300 fw communication failure #1
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.80.2<https://urldefense.proofpoint.com/v2/url?u=3Dht=
tp-3A__192.168.80.2&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfi=
iMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DHJQv_tP-l348DEC-L6f=
Sq05a8NuS_qL8oXAhNL7hdTw&s=3DRcTxqxOJH24llSidhjkaLXsSP1JwnViPVqwR1OKlzvo&e=
=3D>: x300 fw communication failure #2
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [X300] 192.168.80.2<https://urldefense.proofpoint.com/v2/url?u=3Dht=
tp-3A__192.168.80.2&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfi=
iMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DHJQv_tP-l348DEC-L6f=
Sq05a8NuS_qL8oXAhNL7hdTw&s=3DRcTxqxOJH24llSidhjkaLXsSP1JwnViPVqwR1OKlzvo&e=
=3D>: x300 fw communication failure #3
EnvironmentError: IOError: x300 fw poke32 - reply timed out
[ERROR] [UHD] An unexpected exception was caught in a task loop.The task lo=
op will now exit, things may not work.EnvironmentError: IOError: 192.168.80=
.2<https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__192.168.80.2&d=3DD=
wMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4m=
r51mTMqpeO4RbBBLexficV9DG8&m=3DHJQv_tP-l348DEC-L6fSq05a8NuS_qL8oXAhNL7hdTw&=
s=3DRcTxqxOJH24llSidhjkaLXsSP1JwnViPVqwR1OKlzvo&e=3D>: x300 fw communicatio=
n failure #3
EnvironmentError: IOError: x300 fw poke32 - reply timed out



What am I missing here?
_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com<mailto:USRP-users@lists.ettus.com>
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<https://=
urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettus.com_mailman_listi=
nfo_usrp-2Dusers-5Flists.ettus.com&d=3DDwMFaQ&c=3DeuGZstcaTDllvimEN8b7jXrwq=
Of-v5A_CdpgnVfiiMM&r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&m=3DHJQv=
_tP-l348DEC-L6fSq05a8NuS_qL8oXAhNL7hdTw&s=3D4gBtiQfqJBKgoojgtpx8pSk2gR61a8m=
NQn1X0wABXyA&e=3D>

--_000_BL0PR12MB2340D808FE92D5268DFEFE05AFB10BL0PR12MB2340namp_
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
: 12pt; color: rgb(0, 0, 0);">
Howdy Jon,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Bingo.&nbsp; I had suspected the same thing yesterday just before I left, b=
ut I wanted to let a new FPGA build overnight before I made any changes.&nb=
sp; The FPGA change did nothing, but rolling back a commit for gr-ettus did=
.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
I will say that even though things are &quot;running&quot; now, it doesn't =
seem to be 100%.&nbsp; I am going to dig through the commits and see if I n=
eed to go back a few more.&nbsp; I am running OK for a few seconds. and the=
n getting &quot;<span>Doverrun on chan 0&quot; and then &quot;<span>[ERROR]
 [X300] 192.168.27.2: x300 fw communication failure #1<br>
</span>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out&quot;.&nbs=
p; It seems like the network just goes out to lunch (this 10G connection of=
 mine has always been reliable until this).&nbsp;&nbsp;<br>
</div>
<div><br>
</div>
<div>So to summarize, yep, the latest gr-ettus commit threw a curveball.&nb=
sp; But, things are not 100% working, and this block of mine was working fi=
ne on the E312/E320s.&nbsp; I'll report back if something else turns up.</d=
iv>
<span></span><br>
</span><span></span></div>
<div id=3D"Signature">
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Jonathon Pendlum &lt;=
jonathon.pendlum@ettus.com&gt;<br>
<b>Sent:</b> Tuesday, September 10, 2019 11:35 PM<br>
<b>To:</b> Jason Matusiak &lt;jason@gardettoengineering.com&gt;<br>
<b>Cc:</b> Ettus Mail List &lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] No block_id specified for channel 0</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Jason,
<div><br>
</div>
<div>Could you try reverting gr-ettus back one commit to 4980cbef and let m=
e know if that works?</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Tue, Sep 10, 2019 at 5:23 AM Jas=
on Matusiak via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com=
">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I have an RFNoC&nbsp; flowgraph and bitfile combo that used to work but is =
erroring out now. I've been using the code successfully on the E320 and E31=
0 and decided to re-build for the X310 (and XG flowgraph).&nbsp; When I run=
 my flowgraph, I am see a lot of addition
 debug that I am not used to seeing (which is fine) and then my block in pa=
rticular seems to cause problems and I get the error in the subject.&nbsp; =
I am guessing that since I just rebuilt everything, some change needs to be=
 made in my impl for my block due to
 some UHD update, but I can't quite figure out anywhere where something cha=
nges.&nbsp; The beginning of the output when I run my flowgraph is:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>[INFO] [UHD] linux; GNU C&#43;&#43; version 4.8.5 20150623 (Red Hat 4=
.8.5-36); Boost_105300; UHD_3.14.1.1-0-g98c7c986<br>
</span>
<div>[INFO] [X300] X300 initialization sequence...<br>
</div>
<div>[INFO] [X300] Maximum frame size: 8000 bytes.<br>
</div>
<div>[INFO] [X300] Radio 1x clock: 200 MHz<br>
</div>
<div>[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D000000=
00000)<br>
</div>
<div>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1317 MB/s)<br>
</div>
<div>[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1323 MB/s)<br>
</div>
<div>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000=
001)<br>
</div>
<div>[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000=
001)<br>
</div>
<div>[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/DDC_2] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/DDC_3] Initializing block control (NOC ID: 0xDDC000000000000=
1)<br>
</div>
<div>[INFO] [0/keepMinN_0] Initializing block control (NOC ID: 0x229C30C919=
275220)<br>
</div>
<div>[INFO] [0/keepMinN_1] Initializing block control (NOC ID: 0x229C30C919=
275220)<br>
</div>
<div>[WARNING] [RFNOC] Can't find a block controller for key SplitStream, u=
sing default block controller!<br>
</div>
<div>[INFO] [0/SplitStream_0] Initializing block control (NOC ID: 0x5757000=
000000000)<br>
</div>
<div>[WARNING] [RFNOC] Can't find a block controller for key SplitStream, u=
sing default block controller!<br>
</div>
<div>[INFO] [0/SplitStream_1] Initializing block control (NOC ID: 0x5757000=
000000000)<br>
</div>
<div>Finding block for: Radio_1<br>
</div>
<div>Mapped external port 0 to 0<br>
</div>
<div>Mapped port 0 to 0/Radio_1<br>
</div>
<div>Mapped external port 1 to 1<br>
</div>
<div>Mapped port 1 to 0/Radio_1<br>
</div>
<div>TX args:<br>
</div>
<div>RX args:<br>
</div>
<div>0/Radio_1 has 1 input ports<br>
</div>
<div>0/Radio_1 has 2 output ports<br>
</div>
<div>getting block control for port 0<br>
</div>
<div>Finding block for: DDC_0<br>
</div>
<div>Mapped external port 0 to 0<br>
</div>
<div>Mapped port 0 to 0/DDC_0<br>
</div>
<div>TX args:<br>
</div>
<div>getting block control for port 0<br>
</div>
<div>getting block control for port 0<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
And the ehnd of that blob shows:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>getting block control for port 0<br>
</span>
<div>getting block control for port 0<br>
</div>
<div>thread[thread-per-block[2]: &lt;block keepMinN (10)&gt;]: RuntimeError=
: Cannot create streamers: No block_id specified for channel 0.<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
And finally, if I let it sit there, the X310 must get into a wonky state be=
cause I start to get:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<span>[ERROR] [X300] <a href=3D"https://urldefense.proofpoint.com/v2/url?u=
=3Dhttp-3A__192.168.80.2&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf=
-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=
=3DHJQv_tP-l348DEC-L6fSq05a8NuS_qL8oXAhNL7hdTw&amp;s=3DRcTxqxOJH24llSidhjka=
LXsSP1JwnViPVqwR1OKlzvo&amp;e=3D" target=3D"_blank">
192.168.80.2</a>: x300 fw communication failure #1<br>
</span>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] <a href=3D"https://urldefense.proofpoint.com/v2/url?u=
=3Dhttp-3A__192.168.80.2&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf=
-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=
=3DHJQv_tP-l348DEC-L6fSq05a8NuS_qL8oXAhNL7hdTw&amp;s=3DRcTxqxOJH24llSidhjka=
LXsSP1JwnViPVqwR1OKlzvo&amp;e=3D" target=3D"_blank">
192.168.80.2</a>: x300 fw communication failure #2<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] <a href=3D"https://urldefense.proofpoint.com/v2/url?u=
=3Dhttp-3A__192.168.80.2&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf=
-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=
=3DHJQv_tP-l348DEC-L6fSq05a8NuS_qL8oXAhNL7hdTw&amp;s=3DRcTxqxOJH24llSidhjka=
LXsSP1JwnViPVqwR1OKlzvo&amp;e=3D" target=3D"_blank">
192.168.80.2</a>: x300 fw communication failure #1<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] <a href=3D"https://urldefense.proofpoint.com/v2/url?u=
=3Dhttp-3A__192.168.80.2&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf=
-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=
=3DHJQv_tP-l348DEC-L6fSq05a8NuS_qL8oXAhNL7hdTw&amp;s=3DRcTxqxOJH24llSidhjka=
LXsSP1JwnViPVqwR1OKlzvo&amp;e=3D" target=3D"_blank">
192.168.80.2</a>: x300 fw communication failure #1<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] <a href=3D"https://urldefense.proofpoint.com/v2/url?u=
=3Dhttp-3A__192.168.80.2&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf=
-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=
=3DHJQv_tP-l348DEC-L6fSq05a8NuS_qL8oXAhNL7hdTw&amp;s=3DRcTxqxOJH24llSidhjka=
LXsSP1JwnViPVqwR1OKlzvo&amp;e=3D" target=3D"_blank">
192.168.80.2</a>: x300 fw communication failure #2<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [X300] <a href=3D"https://urldefense.proofpoint.com/v2/url?u=
=3Dhttp-3A__192.168.80.2&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf=
-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=
=3DHJQv_tP-l348DEC-L6fSq05a8NuS_qL8oXAhNL7hdTw&amp;s=3DRcTxqxOJH24llSidhjka=
LXsSP1JwnViPVqwR1OKlzvo&amp;e=3D" target=3D"_blank">
192.168.80.2</a>: x300 fw communication failure #3<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<div>[ERROR] [UHD] An unexpected exception was caught in a task loop.The ta=
sk loop will now exit, things may not work.EnvironmentError: IOError:
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__192.168.80=
.2&amp;d=3DDwMFaQ&amp;c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=
=3DW_MQLyUWPXWHfsF4mr51mTMqpeO4RbBBLexficV9DG8&amp;m=3DHJQv_tP-l348DEC-L6fS=
q05a8NuS_qL8oXAhNL7hdTw&amp;s=3DRcTxqxOJH24llSidhjkaLXsSP1JwnViPVqwR1OKlzvo=
&amp;e=3D" target=3D"_blank">
192.168.80.2</a>: x300 fw communication failure #3<br>
</div>
<div>EnvironmentError: IOError: x300 fw poke32 - reply timed out<br>
</div>
<span></span><br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
What am I missing here?</div>
</div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttp-3A__lists.ettu=
s.com_mailman_listinfo_usrp-2Dusers-5Flists.ettus.com&amp;d=3DDwMFaQ&amp;c=
=3DeuGZstcaTDllvimEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DW_MQLyUWPXWHfsF4mr51=
mTMqpeO4RbBBLexficV9DG8&amp;m=3DHJQv_tP-l348DEC-L6fSq05a8NuS_qL8oXAhNL7hdTw=
&amp;s=3D4gBtiQfqJBKgoojgtpx8pSk2gR61a8mNQn1X0wABXyA&amp;e=3D" rel=3D"noref=
errer" target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users=
_lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_BL0PR12MB2340D808FE92D5268DFEFE05AFB10BL0PR12MB2340namp_--


--===============0218165285168783685==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0218165285168783685==--


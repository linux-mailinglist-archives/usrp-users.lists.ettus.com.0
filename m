Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7D65E64F1
	for <lists+usrp-users@lfdr.de>; Thu, 22 Sep 2022 16:18:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 526CE383C7D
	for <lists+usrp-users@lfdr.de>; Thu, 22 Sep 2022 10:18:25 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663856305; bh=LCV7o1dltHt6EiAC9/V28oLbNBe8prs3NEPMFjt1Gek=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=04amy/I5MEvFsC9+Di4tTqdjUJE/A/YOguL/D0qApgDUvU/peanC8G2GuIUktu+mp
	 qbQuoMdIXbZ+3ojECfXh95MhBkTlgUn8gIDHHwKmQvii6vukOOvRnubREUb1dE1e/M
	 wjQB0wKVdhJPftUEYdxHqpIE0KzXrUCuBPbFEWKFZnvEdA+Hgb7Knel7o5Nhir2wsB
	 Kxlwt6LVqKttUqMYN/21iPbkGDl3Y4yeK1+84Koflp1B/8n3JmxB1sOIxyXD+W8TGY
	 dpDX+/RFZ7G8qVQ0jF4zBJOCzM1kRqeVHTc8o83wAUxRq2SYB9s3o+x68Ock9tDFSc
	 TzUXS+SGQZatw==
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-eopbgr150114.outbound.protection.outlook.com [40.107.15.114])
	by mm2.emwd.com (Postfix) with ESMTPS id F39B13818B9
	for <usrp-users@lists.ettus.com>; Thu, 22 Sep 2022 10:16:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="ggaNm98M";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ULKyHD6odYNaNO6Zku/GQCcvtUsFK3CVDazgWUSJzRHhSkItxEWKeYvz3xqMKXMAWjFeTzfRHXSzNpOsA6WJx4JcP+mBKMCMHL3goY0H9wZM26LiFmfZJq5y33PjqWtE2aW/LLCNiWH4ENyI9yPvn1bTKNtb0VisaYFII1ObKTSMy/9gx+yTd0hl1+HKr+wt9gzuFKvpqoPktZN21YB6XnRbx5LulrfZCC+eDdeHvvK1uu9iEpkZu4Gjr4aSr2xPsMlPuBmYi3aQcRbg0gdfgDrdNH3iTI4as1IqOO0Q/OofxPI8qcLxlgJ19TJDd5k9cKJty2pcgtkDKpus4b8HIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K4XZOSKE1IfUrmbljsI6sWZbEvjI1OKPbTzCIkepA04=;
 b=iuT47ZzCi68BP6f5KeW2gokQJ+7yZSxEYURzqLMETguePy3KiiCaMw9xfOVD3/+XMhypTKNtTf7/ysh7VfQ6XDKCU1jOn8nuW7ZOfGtAt3rPhA+z9DAFyQp5n4y+QKtzdSGNdx2Zr/muR4+5Kl9mpGLHI2IAw7wJGx3vUmVme6AMbZOBPdJeY7e/nth+Ara6V86N4GNfwBTcyWxxrxtBzF2oDw3zmAjv81OSNLNh6ADdc5yqda66FkSer/ipHc8eU1WA8UPdEGbwR3NXkMATdN85ueKfgUUPYaDOLoOQYRwv2NzA4br9xzgnoXetU+5h5JuVapx++HUmBm/wEq7kwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K4XZOSKE1IfUrmbljsI6sWZbEvjI1OKPbTzCIkepA04=;
 b=ggaNm98MjXVlCTiJr1KzGrHc34CClF1plrDTq5WP7pWlvL93MVHYT7lB83zveWyRuHc6E61PPQtqWSHp0OQ9GgsfA1jSawsHj5OVDnGqfjG39hvczkkrau5Fosjuik7qd0QcvZha/1Q+7A7ww1PbxwZJq7RajgSvGcsuuFZlgSA=
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM (2603:10a6:150:9f::17)
 by AS1P250MB0477.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:4a6::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Thu, 22 Sep
 2022 14:16:28 +0000
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::acc8:df95:ad6b:380a]) by GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::acc8:df95:ad6b:380a%7]) with mapi id 15.20.5654.016; Thu, 22 Sep 2022
 14:16:28 +0000
From: =?iso-8859-1?Q?Maximilian_Matth=E9?=
	<maximilian.matthe@barkhauseninstitut.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC Disconnect Streamer
Thread-Index: AQHYzAkIjGe1lv6ZOkK+DkQygQO/Oq3rgnE6
Date: Thu, 22 Sep 2022 14:16:28 +0000
Message-ID: 
 <GV1P250MB078547F105A7673F14E43959904E9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
References: 
 <GV1P250MB078581BDBAE53674592445AB904D9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
In-Reply-To: 
 <GV1P250MB078581BDBAE53674592445AB904D9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV1P250MB0785:EE_|AS1P250MB0477:EE_
x-ms-office365-filtering-correlation-id: 22d83af3-bf61-4043-d65f-08da9ca50a59
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 LBBtfJuYu43aJvWHpjOXRA2eYUvwFS8KNBbbSnueeXQ20eCFlYFBxCRNnduBZGVMTT7ashcR1reE1kk9o68/Qi/xACmJbQhhhk0SMREmnbr9o/QXVxoMpJwjtPqvkHWYNUca6sqGhvjIwch/EwCfk89doQdMSKt7eqUoz8t/UYmPP7odoSvIzhy/dg+BckPwfWAa4Zfs4scoyf6sDI8vP+ALzdojF6Xrn4zPfr1wG8sTnsmUykhU0VslU4ft1QPPIFhkuhQvUTTNHlHiOOvjbG+JL3WmyswS8CVlrKsb+3/CSAesIC6xfSjtLMraMH6G6WqXY+xgc5HQcJLN7Tfz3uL4UlMo3mlYLR3Gdvv5abMINVFNMldVWoUk+C8Kv+sT1wwNiCaQaoZxpF8cE2QjWNKtEU765/cWoucr29QxA/gwEOGZ9fDi8xlytyG+Gdaounp8DiXTt2obEgZ5A3UJ+E7z0glBwfTgxUzTnEGlFZVhyb7U6ZlR3EvGWO+b/baCgoAlL6O2gnkv6ZrNUX/XGIBbJFTUaMqJcQjphHQ0RCYGpQD62eL7pfAbtjRYt8r/5IeENA3Gz1VXrl7rGvmkOgcIOEBDOnDMxs/CjytnHRuSE2e9mqmEpUPuXXfVdfjcIRs+EgvSU8lkZR+bhiHigsEbBm6PZpN8tXgo9zgRUH3T0/NE6HZykeEWIDk5SFB9f+6kIxF9Y2KYYqp20qDqz8rl9XuUA2Ut8MV6YjXAqlWOfLa2aYVtCKbfNXEU9DQ0ZNKZ9MfBjqFcaVBoAzyiJcusQR2MjdL6STHqoU4lMegBiwOJxC8r+k2shrMi0XsI6+85ps7FBQPCmB0SESyCrQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1P250MB0785.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(39830400003)(376002)(346002)(366004)(396003)(136003)(451199015)(66574015)(19627405001)(7116003)(33656002)(122000001)(38100700002)(99936003)(41300700001)(478600001)(71200400001)(966005)(2906002)(86362001)(3480700007)(15974865002)(38070700005)(186003)(66946007)(7696005)(5660300002)(53546011)(9686003)(6506007)(8936002)(52536014)(26005)(6916009)(76116006)(83380400001)(316002)(66556008)(66446008)(91956017)(55016003)(8676002)(66476007)(64756008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?/Bluc9RwIXE6KGW4OBLvJk6myF/LlpHnN9ulNf7fUGnHZqwa2CyTrUSGIX?=
 =?iso-8859-1?Q?hbACpUZdw8FGXdjmwZymuKUvuV/9/+a2JF7DxyvaqiXcZBcAYyY4DfCEpe?=
 =?iso-8859-1?Q?60Ghvp9V2T26H5SpOmecm08caJ8ZlUfvlFHdZ9JChD3YEzCqk9ZYX4/az5?=
 =?iso-8859-1?Q?vAkQ197x/S3bbnovfBXzU7HtMV+z1ZfT8etgPge/4/nr1Yf9skAkECIM+d?=
 =?iso-8859-1?Q?xJLYbu+54Vipchg18oOekexz/XVUEGnS6PQGTJb5w/QkF/yt5CkeMPC8Fp?=
 =?iso-8859-1?Q?1F0epKfPM510S1QF9trXoIBh7poD6ii363l0fD4ybh3EpjAa+F2iZFNUPu?=
 =?iso-8859-1?Q?2+rdEH4Yc144siBVZfv69wjC8yc3kPQBYE8b8diTGzkziDtfL7XGAL4SUg?=
 =?iso-8859-1?Q?381n2AHf5lx0qEUDbScf35O3f7aB6M7qlBIXLH/Ejiny8P2VNfy5GhuWsz?=
 =?iso-8859-1?Q?NlC/n2Ve1P35V1FC/PD5/rsoo5IriketptxrevACTUYmU00pPATEQCwSVL?=
 =?iso-8859-1?Q?RDCukL9YYweoWgEmINGpI9pB7gcsjzcfE+2PvPeE8vzEWLRBwd/+TO1nsE?=
 =?iso-8859-1?Q?WcRq/lSB2QvxiTmuVJdxUR+Mop1ymbFoZpwAIDxYnE3RY7kYb52T+mMPEd?=
 =?iso-8859-1?Q?HDBBb92GnFV4CYL8oheJOKFgS3Titz7zQWnOvpy4LNk++1r703K+J8nBmf?=
 =?iso-8859-1?Q?pb720Naz+XcJg6NWkoCDNv8FoHMn1KMf/XuEz4ckIgMUb10eRuy+Ffz6EI?=
 =?iso-8859-1?Q?DEC0DFCJFmsyWjFc4hacQKhB8ZI0+f8jdCjwbJ4XC3i3vd3VBO5+yC/bIl?=
 =?iso-8859-1?Q?RCaDx9lTSbuD6Vmvvg+rHWfGN/oWF7yn1+G5pp2XuV9Xgcy7llqv9X9Vbu?=
 =?iso-8859-1?Q?zNjC5opmztChuQDIXMNF3yzcqhh2E1Wn3LSOhErR+GYuARxBWHse6aFd1d?=
 =?iso-8859-1?Q?Kcr7dyLjkj1O+oUlUaYoXelp+Ii8TbQfhNsUUNg51iORQ5do9sNL8miqFk?=
 =?iso-8859-1?Q?Nqs3RzbhrtQ4lQApSAtQr4wC+TX/74P8dpM5KLG0dhORAYn+rBpT/dBE38?=
 =?iso-8859-1?Q?rHTLywKKY7LaD0kTXA8Zrb/Ikkg2Td8V2k69YcNeQlZ2XVVoS6aLzVzj2n?=
 =?iso-8859-1?Q?qWraLuGQi9G8ZT7zbEq2Rs4IyxUZbi7voC+pZCezg56kNd4+z2q3jOyNIN?=
 =?iso-8859-1?Q?aSIXidp+2Q1BMbIJXd3cGmvsHI4EZj8/Npya6HlH6TNPxg9p1Y9Sdr7hYL?=
 =?iso-8859-1?Q?UWySqyenR41aCdlT8fEBBE1htqg74f9+F1I9Bp7CgaPsCMwyKP2SiYgjAB?=
 =?iso-8859-1?Q?xTNMQjAYnVCWDKkFYzh8uDL27ARAXkLsnXx9AxGbSNQif+Vz5naYJb+BLW?=
 =?iso-8859-1?Q?dG1MBmj7tYuTJV/naK8zxixvpyoCiImeC1IMkW5TKC6hkvv5l3WZ5MgKdz?=
 =?iso-8859-1?Q?SDHa54/pJr7O07rq5jSJs+IVtyoFu9Wjm3a78ccSb259NCHJN9eDhDQkBy?=
 =?iso-8859-1?Q?N0tksdzoVnfk9fDYQjjKwX96n7aMH56jvOp7AkfG/V8u8wdZALZxvJSFku?=
 =?iso-8859-1?Q?R9i/1vBQO5GS1Svivtnqn7ThdDmYG8AgL1vuz+nSXtMTZb6/ZnfGVomDJF?=
 =?iso-8859-1?Q?6310I10Gy7XX2rbwaGiCEIUjExRRv4N4ryObNSWsgk2h4c4uz7IjGVsuqn?=
 =?iso-8859-1?Q?SXaN4s1HHVzsllbZV7U=3D?=
Content-Type: multipart/mixed;
	boundary="_004_GV1P250MB078547F105A7673F14E43959904E9GV1P250MB0785EURP_"
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 22d83af3-bf61-4043-d65f-08da9ca50a59
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2022 14:16:28.3230
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h5dWsTgRxc5MgTbj1cuCiySsj572c0mV6A+9rktXtjvEIPAwb6ascrXHToud6OdPC7Z2vcgKm4t5HEeN588EcrLU2fG5Ukmhyb0OMPo3su5hIZWJBc0d3iQX2EcdYCn1auxoFmW/MnFFjBfE3blXGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1P250MB0477
Message-ID-Hash: BII3FT2L2WGRZ24VLXJBET3VB4BSPSJB
X-Message-ID-Hash: BII3FT2L2WGRZ24VLXJBET3VB4BSPSJB
X-MailFrom: maximilian.matthe@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Disconnect Streamer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AVUCLRMURHJQVY3LBNB6YDML5XFRGPI5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--_004_GV1P250MB078547F105A7673F14E43959904E9GV1P250MB0785EURP_
Content-Type: multipart/alternative;
	boundary="_000_GV1P250MB078547F105A7673F14E43959904E9GV1P250MB0785EURP_"

--_000_GV1P250MB078547F105A7673F14E43959904E9GV1P250MB0785EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear all,

I have tried the C++ version and am still struggling. I have figured out, t=
hat the correct name for the streamer Id seems to be "RxStreamer#0" and not=
 "0/RxStreamer#0". This way, the connection is kind-of deleted between a st=
reamer and the replay block (it does not show up anymore in  graph::enumera=
te_active_connections(). However, I still cannot reconnect the streamer aga=
in.

Can somebody reproduce the problem and indicate what is wrong with my appro=
ach?

Thank you,
Max

Find attached the MWE which produces the following output:

$ g++ full_duplex_rfnoc.cpp -o full_duplex_rfnoc -luhd
$ full_duplex_rfnoc
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.2.0.0-0ubunt=
u1~bionic1
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.189.131,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X4=
10-01,fpga=3DX4_400,claimed=3DFalse,addr=3D192.168.189.131
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D192.168.189.131,name=3DNE-LAB-X410-01,product=3Dx410,clock_source=
=3Dinternal,time_source=3Dinternal'.
0/Radio#0 --> 0/SEP#0
0/SEP#4 --> 0/Replay#0
Connections replay block/radio established!
Connections in graph:
0/Radio#0 --> 0/Replay#0
Connecting streamer
[WARNING] [0/Replay#0] Requested packet size exceeds MTU! Coercing to 1472
Connection established!
Connections in graph:
0/Radio#0 --> 0/Replay#0
0/Replay#0 --> RxStreamer#0
Disconnecting...
Connections in graph:
0/Radio#0 --> 0/Replay#0
0/Replay#0 --> RxStreamer#0
Connections in graph:
0/Radio#0 --> 0/Replay#0
Trying to connect the streamer again...
Error: RuntimeError: Streamer port number is already connected to a port
corola@PC-LAB-LINUX-001:~/max/playground$



Maximilian Matthe

Head of Engineering Lab

maximilian.matthe@barkhauseninstitut.org

Tel.: +49 173 4509667

________________________________
From: Maximilian Matth=E9 <maximilian.matthe@barkhauseninstitut.org>
Sent: Monday, September 19, 2022 11:34 AM
To: usrp-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: [USRP-users] RFNoC Disconnect Streamer

Dear all,

I'm working on a project where I have to connect and disconnect different s=
treamers from an RFNoC replay block. (I need to switch back and forth betwe=
en TX and RX Streamers and 4 Radios in TX/RX mode connected to the Replay b=
lock for using 4x4 MIMO configuration). I'm running on a USRP X410 with UHD=
 4.2

Here's the setup:

        self._graph =3D uhd.rfnoc.RfnocGraph('addr=3Dlocalhost')
        self._replay =3D uhd.rfnoc.ReplayBlockControl(self._graph.get_block=
("0/Replay#0"))
        for channel in range(NUM_CHANS):
            self._replay.set_play_type("sc16", channel)
            self._replay.set_record_type("sc16", channel)

        self._rxStreamer =3D self._graph.create_rx_streamer(NUM_CHANS, uhd.=
usrp.StreamArgs("sc16", "sc16"))
        self._txStreamer =3D self._graph.create_tx_streamer(NUM_CHANS, uhd.=
usrp.StreamArgs("sc16", "sc16"))

Here's the connection:

        for channel in range(NUM_CHANS):
            self._graph.connect(self._replay.get_unique_id(), channel, self=
._rxStreamer, channel)
        self._graph.commit()

Then, when I want to disconnect:
        self._graph.release()
        print("DISCONNECTING!")
        try:
            for port in range(NUM_CHANS):
                self._graph.disconnect("0/RxStreamer#0", port)
            self._graph.disconnect("0/RxStreamer#0")
        except Exception as E:
            print(E, type(E))

        for conn in self._graph.enumerate_active_connections():
            print("Disconnecting ", conn, "...")
            try:
                self._graph.disconnect(conn.src_blockid, conn.src_port,
                                    conn.dst_blockid, conn.dst_port)
            except Exception as E:
                print("Cannot disconnect ", E)
        self._graph.commit()

The connection works well, but upon disconnection I get
DISCONNECTING!
Disconnecting  0/Radio#0:0-->0/Replay#0:0 ...
Disconnecting  0/Radio#0:1-->0/Replay#0:1 ...
Disconnecting  0/Radio#1:0-->0/Replay#0:2 ...
Disconnecting  0/Radio#1:1-->0/Replay#0:3 ...
Disconnecting  0/Replay#0:0-->RxStreamer#0:0 ...
Cannot disconnect  LookupError: Cannot disconnect blocks, destination block=
 not found: 0/RxStreamer#0
Disconnecting  0/Replay#0:1-->RxStreamer#0:1 ...
Cannot disconnect  LookupError: Cannot disconnect blocks, destination block=
 not found: 0/RxStreamer#0
Disconnecting  0/Replay#0:2-->RxStreamer#0:2 ...
Cannot disconnect  LookupError: Cannot disconnect blocks, destination block=
 not found: 0/RxStreamer#0
Disconnecting  0/Replay#0:3-->RxStreamer#0:3 ...
Cannot disconnect  LookupError: Cannot disconnect blocks, destination block=
 not found: 0/RxStreamer#0

To me, this indicates that the calls to disconnect("0/RxStreamer#0") have n=
o effect (they have no return value as well).

Then, if I just ignore these errors and try to reconnect the streamer, I ge=
t
RuntimeError: RuntimeError: Streamer port number is already connected to a =
port

indicating that the streamer has not been disconnected. Can you let me know=
, what the correct way is to disconnect the streamer from the graph and ope=
n up the port for subsequent connections?

Thank you,
Max

Please find attached a MWE which shows the problems, with the following out=
puts

$ python3 disconnect.py
[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0-g46a=
70d85
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
27.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X410-01,=
fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_400,mg=
mt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_source=3Dint=
ernal,time_source=3Dinternal'.
DISCONNECTING!
['__class__', '__delattr__', '__dir__', '__doc__', '__eq__', '__format__', =
'__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_sub=
class__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce_=
_', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '_=
_subclasshook__', 'get_max_num_samps', 'get_num_channels', 'issue_stream_cm=
d', 'recv']
[WARNING] [0/Replay#0] Requested packet size exceeds MTU! Coercing to 8016
[WARNING] [0/Replay#0] Requested packet size exceeds MTU! Coercing to 8016
[WARNING] [0/Replay#0] Requested packet size exceeds MTU! Coercing to 8016
[WARNING] [0/Replay#0] Requested packet size exceeds MTU! Coercing to 8016
DISCONNECTING!
['__class__', '__delattr__', '__dir__', '__doc__', '__eq__', '__format__', =
'__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_sub=
class__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce_=
_', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '_=
_subclasshook__', 'get_max_num_samps', 'get_num_channels', 'issue_stream_cm=
d', 'recv']
Disconnecting  0/Replay#0:0-->RxStreamer#0:0 ...
Cannot disconnect  LookupError: Cannot disconnect blocks, destination block=
 not found: 0/RxStreamer#0
Disconnecting  0/Replay#0:1-->RxStreamer#0:1 ...
Cannot disconnect  LookupError: Cannot disconnect blocks, destination block=
 not found: 0/RxStreamer#0
Disconnecting  0/Replay#0:2-->RxStreamer#0:2 ...
Cannot disconnect  LookupError: Cannot disconnect blocks, destination block=
 not found: 0/RxStreamer#0
Disconnecting  0/Replay#0:3-->RxStreamer#0:3 ...
Cannot disconnect  LookupError: Cannot disconnect blocks, destination block=
 not found: 0/RxStreamer#0
Releasing graph...
Traceback (most recent call last):
  File "disconnect.py", line 81, in <module>
    main()
  File "disconnect.py", line 67, in main
    app.connectForDownload()
  File "disconnect.py", line 54, in connectForDownload
    self._graph.connect(self._replay.get_unique_id(), channel, self._rxStre=
amer, channel)
RuntimeError: RuntimeError: Streamer port number is already connected to a =
port





Maximilian Matthe

Head of Engineering Lab

maximilian.matthe@barkhauseninstitut.org

Tel.: +49 173 4509667


Barkhausen Institut
www.barkhauseninstitut.org


Barkhausen Institut gGmbH | Sitz: W=FCrzburger Stra=DFe 46, 01187 Dresden, =
Germany | Registergericht: Amtsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FC=
hrer: Prof. Dr. Gerhard Fettweis, Dr. Tim Hentschel | Vorsitzender der Gese=
llschafterdelegation: Dr. Andreas Handschuh

Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy

This email and any attachments are intended only for the person to whom thi=
s email is addressed and may contain confidential and/or privileged informa=
tion. If you received this email in error, please do not disclose the conte=
nts to anyone, but notify the sender by return email and delete this email =
(and any attachments) from your system. Information on data protection and =
processing of your personal information: https://barkhauseninstitut.org/dat=
a-privacy


--_000_GV1P250MB078547F105A7673F14E43959904E9GV1P250MB0785EURP_
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
Dear all,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I have tried the C++ version and am still struggling. I have figured out, t=
hat the correct name for the streamer Id seems to be &quot;RxStreamer#0&quo=
t; and not &quot;0/RxStreamer#0&quot;. This way, the connection is kind-of =
deleted between a streamer and the replay block (it
 does not show up anymore in&nbsp; graph::enumerate_active_connections(). H=
owever, I still cannot reconnect the streamer again.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Can somebody reproduce the problem and indicate what is wrong with my appro=
ach?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Thank you,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Max<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Find attached the MWE which produces the following output:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
$ g++ full_duplex_rfnoc.cpp -o full_duplex_rfnoc -luhd</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof ContentPasted0">
$ full_duplex_rfnoc<br>
<div class=3D"ContentPasted0">[INFO] [UHD] linux; GNU C++ version 7.5.0; Bo=
ost_106501; UHD_4.2.0.0-0ubuntu1~bionic1</div>
<div class=3D"ContentPasted0">[INFO] [MPMD] Initializing 1 device(s) in par=
allel with args: mgmt_addr=3D192.168.189.131,type=3Dx4xx,product=3Dx410,ser=
ial=3D323F754,name=3DNE-LAB-X410-01,fpga=3DX4_400,claimed=3DFalse,addr=3D19=
2.168.189.131</div>
<div class=3D"ContentPasted0">[INFO] [MPM.PeriphManager] init() called with=
 device args `fpga=3DX4_400,mgmt_addr=3D192.168.189.131,name=3DNE-LAB-X410-=
01,product=3Dx410,clock_source=3Dinternal,time_source=3Dinternal'.</div>
<div class=3D"ContentPasted0">0/Radio#0 --&gt; 0/SEP#0</div>
<div class=3D"ContentPasted0">0/SEP#4 --&gt; 0/Replay#0</div>
<div class=3D"ContentPasted0">Connections replay block/radio established!</=
div>
<div class=3D"ContentPasted0">Connections in graph: </div>
<div class=3D"ContentPasted0">0/Radio#0 --&gt; 0/Replay#0</div>
<div class=3D"ContentPasted0">Connecting streamer</div>
<div class=3D"ContentPasted0">[WARNING] [0/Replay#0] Requested packet size =
exceeds MTU! Coercing to 1472</div>
<div class=3D"ContentPasted0">Connection established!</div>
<div class=3D"ContentPasted0">Connections in graph: </div>
<div class=3D"ContentPasted0">0/Radio#0 --&gt; 0/Replay#0</div>
<div class=3D"ContentPasted0">0/Replay#0 --&gt; RxStreamer#0</div>
<div class=3D"ContentPasted0">Disconnecting...</div>
<div class=3D"ContentPasted0">Connections in graph: </div>
<div class=3D"ContentPasted0">0/Radio#0 --&gt; 0/Replay#0</div>
<div class=3D"ContentPasted0">0/Replay#0 --&gt; RxStreamer#0</div>
<div class=3D"ContentPasted0">Connections in graph: </div>
<div class=3D"ContentPasted0">0/Radio#0 --&gt; 0/Replay#0</div>
<div class=3D"ContentPasted0">Trying to connect the streamer again...</div>
<div class=3D"ContentPasted0">Error: RuntimeError: Streamer port number is =
already connected to a port</div>
<div class=3D"ContentPasted0">corola@PC-LAB-LINUX-001:~/max/playground$ </d=
iv>
<br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">Maximilian Matthe</p>
<p style=3D"margin-top:0; margin-bottom:0">Head of Engineering Lab</p>
<p style=3D"margin-top:0; margin-bottom:0">maximilian.matthe@barkhauseninst=
itut.org</p>
<p style=3D"margin-top:0; margin-bottom:0">Tel.: +49 173 4509667<br>
</p>
</div>
</div>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Maximilian Matth=E9 &=
lt;maximilian.matthe@barkhauseninstitut.org&gt;<br>
<b>Sent:</b> Monday, September 19, 2022 11:34 AM<br>
<b>To:</b> usrp-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> [USRP-users] RFNoC Disconnect Streamer</font>
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
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Dear all,</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
I'm working on a project where I have to connect and disconnect different s=
treamers from an RFNoC replay block. (I need to switch back and forth betwe=
en TX and RX Streamers and 4 Radios in TX/RX mode connected to the Replay b=
lock for using 4x4 MIMO configuration).
 I'm running on a USRP X410 with UHD 4.2<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Here's the setup:</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div class=3D"x_elementToProof" style=3D"font-family:Calibri,Arial,Helvetic=
a,sans-serif; font-size:12pt; color:rgb(0,0,0)">
&nbsp; &nbsp; &nbsp; &nbsp; self._graph =3D uhd.rfnoc.RfnocGraph('addr=3Dlo=
calhost')
<div>&nbsp; &nbsp; &nbsp; &nbsp; self._replay =3D uhd.rfnoc.ReplayBlockCont=
rol(self._graph.get_block(&quot;0/Replay#0&quot;))</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; for channel in range(NUM_CHANS):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; self._replay.set_play_type(&=
quot;sc16&quot;, channel)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; self._replay.set_record_type=
(&quot;sc16&quot;, channel)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; self._rxStreamer =3D self._graph.create_rx=
_streamer(NUM_CHANS, uhd.usrp.StreamArgs(&quot;sc16&quot;, &quot;sc16&quot;=
))</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; self._txStreamer =3D self._graph.create_tx=
_streamer(NUM_CHANS, uhd.usrp.StreamArgs(&quot;sc16&quot;, &quot;sc16&quot;=
))</div>
<div><br>
</div>
<div>Here's the connection:</div>
<div><br>
</div>
&nbsp; &nbsp; &nbsp; &nbsp; for channel in range(NUM_CHANS):
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; self._graph.connect(self._re=
play.get_unique_id(), channel, self._rxStreamer, channel)</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self._graph.commit()<br>
</div>
<div><br>
</div>
<div>Then, when I want to disconnect:</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self._graph.release()<br>
</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; print(&quot;DISCONNECTING!&quot;)
<div>&nbsp; &nbsp; &nbsp; &nbsp; try:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; for port in range(NUM_CHANS)=
:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; self._graph.di=
sconnect(&quot;0/RxStreamer#0&quot;, port)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; self._graph.disconnect(&quot=
;0/RxStreamer#0&quot;)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; except Exception as E:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; print(E, type(E))</div>
<br>
<div>&nbsp; &nbsp; &nbsp; &nbsp; for conn in self._graph.enumerate_active_c=
onnections():</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; print(&quot;Disconnecting &q=
uot;, conn, &quot;...&quot;)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; try:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; self._graph.di=
sconnect(conn.src_blockid, conn.src_port,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; conn.dst_blockid, c=
onn.dst_port)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; except Exception as E:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; print(&quot;Ca=
nnot disconnect &quot;, E)</div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self._graph.commit()</div>
<div><br>
</div>
<div>The connection works well, but upon disconnection I get <br>
</div>
<div>DISCONNECTING!</div>
<div>Disconnecting &nbsp;0/Radio#0:0--&gt;0/Replay#0:0 ...
<div>Disconnecting &nbsp;0/Radio#0:1--&gt;0/Replay#0:1 ...</div>
<div>Disconnecting &nbsp;0/Radio#1:0--&gt;0/Replay#0:2 ...</div>
<div>Disconnecting &nbsp;0/Radio#1:1--&gt;0/Replay#0:3 ...</div>
<div>Disconnecting &nbsp;0/Replay#0:0--&gt;RxStreamer#0:0 ...</div>
<div>Cannot disconnect &nbsp;LookupError: Cannot disconnect blocks, destina=
tion block not found: 0/RxStreamer#0</div>
<div>Disconnecting &nbsp;0/Replay#0:1--&gt;RxStreamer#0:1 ...</div>
<div>Cannot disconnect &nbsp;LookupError: Cannot disconnect blocks, destina=
tion block not found: 0/RxStreamer#0</div>
<div>Disconnecting &nbsp;0/Replay#0:2--&gt;RxStreamer#0:2 ...</div>
<div>Cannot disconnect &nbsp;LookupError: Cannot disconnect blocks, destina=
tion block not found: 0/RxStreamer#0</div>
<div>Disconnecting &nbsp;0/Replay#0:3--&gt;RxStreamer#0:3 ...</div>
<div>Cannot disconnect &nbsp;LookupError: Cannot disconnect blocks, destina=
tion block not found: 0/RxStreamer#0</div>
</div>
<div><br>
</div>
<div>To me, this indicates that the calls to disconnect(&quot;0/RxStreamer#=
0&quot;) have no effect (they have no return value as well).
<br>
</div>
<div><br>
</div>
<div>Then, if I just ignore these errors and try to reconnect the streamer,=
 I get</div>
<div>RuntimeError: RuntimeError: Streamer port number is already connected =
to a port<br>
</div>
<div><br>
</div>
<div>indicating that the streamer has not been disconnected. Can you let me=
 know, what the correct way is to disconnect the streamer from the graph an=
d open up the port for subsequent connections?</div>
<div><br>
</div>
<div>Thank you,</div>
<div>Max<br>
</div>
<div><br>
</div>
<div>Please find attached a MWE which shows the problems, with the followin=
g outputs</div>
<div><br>
</div>
<div>$ python3 disconnect.py
<div>[INFO] [UHD] linux; GNU C++ version 9.2.0; Boost_107100; UHD_4.2.0.0-0=
-g46a70d85</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D127.0.0.1,type=3Dx4xx,product=3Dx410,serial=3D323F754,name=3DNE-LAB-X41=
0-01,fpga=3DX4_400,claimed=3DFalse,addr=3Dlocalhost</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX4_4=
00,mgmt_addr=3D127.0.0.1,name=3DNE-LAB-X410-01,product=3Dx410,clock_source=
=3Dinternal,time_source=3Dinternal'.</div>
<div>DISCONNECTING!</div>
<div>['__class__', '__delattr__', '__dir__', '__doc__', '__eq__', '__format=
__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__ini=
t_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__re=
duce__', '__reduce_ex__', '__repr__',
 '__setattr__', '__sizeof__', '__str__', '__subclasshook__', 'get_max_num_s=
amps', 'get_num_channels', 'issue_stream_cmd', 'recv']</div>
<div>[WARNING] [0/Replay#0] Requested packet size exceeds MTU! Coercing to =
8016</div>
<div>[WARNING] [0/Replay#0] Requested packet size exceeds MTU! Coercing to =
8016</div>
<div>[WARNING] [0/Replay#0] Requested packet size exceeds MTU! Coercing to =
8016</div>
<div>[WARNING] [0/Replay#0] Requested packet size exceeds MTU! Coercing to =
8016</div>
<div>DISCONNECTING!</div>
<div>['__class__', '__delattr__', '__dir__', '__doc__', '__eq__', '__format=
__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__ini=
t_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__re=
duce__', '__reduce_ex__', '__repr__',
 '__setattr__', '__sizeof__', '__str__', '__subclasshook__', 'get_max_num_s=
amps', 'get_num_channels', 'issue_stream_cmd', 'recv']</div>
<div>Disconnecting &nbsp;0/Replay#0:0--&gt;RxStreamer#0:0 ...</div>
<div>Cannot disconnect &nbsp;LookupError: Cannot disconnect blocks, destina=
tion block not found: 0/RxStreamer#0</div>
<div>Disconnecting &nbsp;0/Replay#0:1--&gt;RxStreamer#0:1 ...</div>
<div>Cannot disconnect &nbsp;LookupError: Cannot disconnect blocks, destina=
tion block not found: 0/RxStreamer#0</div>
<div>Disconnecting &nbsp;0/Replay#0:2--&gt;RxStreamer#0:2 ...</div>
<div>Cannot disconnect &nbsp;LookupError: Cannot disconnect blocks, destina=
tion block not found: 0/RxStreamer#0</div>
<div>Disconnecting &nbsp;0/Replay#0:3--&gt;RxStreamer#0:3 ...</div>
<div>Cannot disconnect &nbsp;LookupError: Cannot disconnect blocks, destina=
tion block not found: 0/RxStreamer#0</div>
<div>Releasing graph...</div>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File &quot;disconnect.py&quot;, line 81, in &lt;module&gt;</div=
>
<div>&nbsp; &nbsp; main()</div>
<div>&nbsp; File &quot;disconnect.py&quot;, line 67, in main</div>
<div>&nbsp; &nbsp; app.connectForDownload()</div>
<div>&nbsp; File &quot;disconnect.py&quot;, line 54, in connectForDownload<=
/div>
<div>&nbsp; &nbsp; self._graph.connect(self._replay.get_unique_id(), channe=
l, self._rxStreamer, channel)</div>
<div>RuntimeError: RuntimeError: Streamer port number is already connected =
to a port</div>
<br>
</div>
<div><br>
</div>
<br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_Signature">
<div>
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p style=3D"margin-top:0; margin-bottom:0">Maximilian Matthe</p>
<p style=3D"margin-top:0; margin-bottom:0">Head of Engineering Lab</p>
<p style=3D"margin-top:0; margin-bottom:0">maximilian.matthe@barkhauseninst=
itut.org</p>
<p style=3D"margin-top:0; margin-bottom:0">Tel.: +49 173 4509667<br>
</p>
</div>
</div>
</div>
</div>
<div>
<p style=3D"font-size:11pt; font-family:Calibri,sans-serif,serif,&quot;Emoj=
iFont&quot;; margin:0px">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size:11pt; font-family:Calibri,sans-serif,serif,&quot;Emoj=
iFont&quot;; margin:0px">
<span lang=3D"de-DE" style=3D"font-size:9pt">Barkhausen Institut gGmbH | Si=
tz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Amt=
sgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettwe=
is, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:
 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span lang=3D"en-US" style=3D"font-size:9pt">This email and any atta=
chments are intended only for the person to whom this email is addressed an=
d may contain confidential and/or privileged information. If you received t=
his email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</div>
</body>
</html>

--_000_GV1P250MB078547F105A7673F14E43959904E9GV1P250MB0785EURP_--

--_004_GV1P250MB078547F105A7673F14E43959904E9GV1P250MB0785EURP_
Content-Type: text/x-c++src; name="full_duplex_rfnoc.cpp"
Content-Description: full_duplex_rfnoc.cpp
Content-Disposition: attachment; filename="full_duplex_rfnoc.cpp"; size=2598;
	creation-date="Thu, 22 Sep 2022 14:14:00 GMT";
	modification-date="Thu, 22 Sep 2022 14:14:19 GMT"
Content-Transfer-Encoding: base64

I2luY2x1ZGUgPHVoZC92ZXJzaW9uLmg+CiNpbmNsdWRlIDx1aGQvcmZub2MvYmxvY2tfaWQuaHBw
PgojaW5jbHVkZSA8dWhkL3Jmbm9jL2R1Y19ibG9ja19jb250cm9sLmhwcD4KI2luY2x1ZGUgPHVo
ZC9yZm5vYy9tYl9jb250cm9sbGVyLmhwcD4KI2luY2x1ZGUgPHVoZC9yZm5vYy9yYWRpb19jb250
cm9sLmhwcD4KI2luY2x1ZGUgPHVoZC9yZm5vYy9yZXBsYXlfYmxvY2tfY29udHJvbC5ocHA+CiNp
bmNsdWRlIDx1aGQvcmZub2NfZ3JhcGguaHBwPgojaW5jbHVkZSA8dWhkL3R5cGVzL3R1bmVfcmVx
dWVzdC5ocHA+CiNpbmNsdWRlIDx1aGQvdXRpbHMvZ3JhcGhfdXRpbHMuaHBwPgojaW5jbHVkZSA8
dWhkL3V0aWxzL21hdGguaHBwPgojaW5jbHVkZSA8dWhkL3V0aWxzL3NhZmVfbWFpbi5ocHA+CiNp
bmNsdWRlIDxib29zdC9wcm9ncmFtX29wdGlvbnMuaHBwPgojaW5jbHVkZSA8Y2hyb25vPgojaW5j
bHVkZSA8Y3NpZ25hbD4KI2luY2x1ZGUgPGZzdHJlYW0+CiNpbmNsdWRlIDxpb3N0cmVhbT4KI2lu
Y2x1ZGUgPHRocmVhZD4KCnVzaW5nIG5hbWVzcGFjZSBzdGQ6OmxpdGVyYWxzOjpjaHJvbm9fbGl0
ZXJhbHM7Cgp2b2lkIHNob3dDb25uZWN0aW9ucyh1aGQ6OnJmbm9jOjpyZm5vY19ncmFwaDo6c3B0
ciBncmFwaCkgewogICAgYXV0byBlZGdlcyA9IGdyYXBoLT5lbnVtZXJhdGVfYWN0aXZlX2Nvbm5l
Y3Rpb25zKCk7CiAgICBzdGQ6OmNvdXQgPDwgIkNvbm5lY3Rpb25zIGluIGdyYXBoOiAiIDw8IHN0
ZDo6ZW5kbDsKICAgIGZvciAoYXV0byYgZWRnZSA6IGVkZ2VzKQogICAgICAgIHN0ZDo6Y291dCA8
PCBlZGdlLnNyY19ibG9ja2lkIDw8ICIgLS0+ICIgPDwgZWRnZS5kc3RfYmxvY2tpZCA8PCBzdGQ6
OmVuZGw7Cn0KCmludCBVSERfU0FGRV9NQUlOKGludCBhcmdjLCBjaGFyKiogYXJndikgewogICAg
YXV0byBncmFwaCA9IHVoZDo6cmZub2M6OnJmbm9jX2dyYXBoOjptYWtlKCJhZGRyPTE5Mi4xNjgu
MTg5LjEzMSIpOwoKICAgIHVzaW5nIHVoZDo6cmZub2M6OmJsb2NrX2lkX3Q7CiAgICBibG9ja19p
ZF90IHJhZGlvSWQoIjAvUmFkaW8jMCIpOwogICAgYmxvY2tfaWRfdCByZXBsYXlJZCgiMC9SZXBs
YXkjMCIpOwoKICAgIGF1dG8gcmFkaW9fY3RybCA9IGdyYXBoLT5nZXRfYmxvY2s8dWhkOjpyZm5v
Yzo6cmFkaW9fY29udHJvbD4ocmFkaW9JZCk7CiAgICBhdXRvIHJlcGxheV9jdHJsID0gZ3JhcGgt
PmdldF9ibG9jazx1aGQ6OnJmbm9jOjpyZXBsYXlfYmxvY2tfY29udHJvbD4ocmVwbGF5SWQpOwoK
ICAgIGF1dG8gZWRnZXMgPSB1aGQ6OnJmbm9jOjpjb25uZWN0X3Rocm91Z2hfYmxvY2tzKGdyYXBo
LCByYWRpb0lkLCAwLCByZXBsYXlJZCwgMCk7CiAgICBmb3IgKGF1dG8mIGVkZ2UgOiBlZGdlcykK
ICAgICAgICBzdGQ6OmNvdXQgPDwgZWRnZS5zcmNfYmxvY2tpZCA8PCAiIC0tPiAiIDw8IGVkZ2Uu
ZHN0X2Jsb2NraWQgPDwgc3RkOjplbmRsOwogICAgc3RkOjpjb3V0IDw8ICJDb25uZWN0aW9ucyBy
ZXBsYXkgYmxvY2svcmFkaW8gZXN0YWJsaXNoZWQhIiA8PCBzdGQ6OmVuZGw7CiAgICBzaG93Q29u
bmVjdGlvbnMoZ3JhcGgpOwoKICAgIHVoZDo6c3RyZWFtX2FyZ3NfdCBzdHJlYW1BcmdzKCJzYzE2
IiwgInNjMTYiKTsKICAgIHVoZDo6cnhfc3RyZWFtZXI6OnNwdHIgcnhTdHJlYW1lciA9IGdyYXBo
LT5jcmVhdGVfcnhfc3RyZWFtZXIoMSwgc3RyZWFtQXJncyk7CgogICAgc3RkOjpjb3V0IDw8ICJD
b25uZWN0aW5nIHN0cmVhbWVyIiA8PCBzdGQ6OmVuZGw7CiAgICBncmFwaC0+Y29ubmVjdChyZXBs
YXlJZCwgMCwgcnhTdHJlYW1lciwgMCk7CgogICAgZ3JhcGgtPmNvbW1pdCgpOwogICAgc3RkOjpj
b3V0IDw8ICJDb25uZWN0aW9uIGVzdGFibGlzaGVkISIgPDwgc3RkOjplbmRsOwogICAgc2hvd0Nv
bm5lY3Rpb25zKGdyYXBoKTsKCiAgICBzdGQ6OnRoaXNfdGhyZWFkOjpzbGVlcF9mb3IoNTAwbXMp
OwogICAgc3RkOjpjb3V0IDw8ICJEaXNjb25uZWN0aW5nLi4uIiA8PCBzdGQ6OmVuZGw7CiAgICBz
aG93Q29ubmVjdGlvbnMoZ3JhcGgpOwoKICAgIGdyYXBoLT5yZWxlYXNlKCk7CiAgICBncmFwaC0+
ZGlzY29ubmVjdCgiUnhTdHJlYW1lciMwIiwgMCk7CiAgICBncmFwaC0+ZGlzY29ubmVjdCgiUnhT
dHJlYW1lciMwIik7CiAgICBncmFwaC0+ZGlzY29ubmVjdCgiUnhTdHJlYW1lciMwOjAiKTsKICAg
IGdyYXBoLT5jb21taXQoKTsKCiAgICBzdGQ6OnRoaXNfdGhyZWFkOjpzbGVlcF9mb3IoNTAwbXMp
OwoKICAgIHNob3dDb25uZWN0aW9ucyhncmFwaCk7CgogICAgc3RkOjpjb3V0IDw8ICJUcnlpbmcg
dG8gY29ubmVjdCB0aGUgc3RyZWFtZXIgYWdhaW4uLi4iIDw8IHN0ZDo6ZW5kbDsKICAgIHN0ZDo6
dGhpc190aHJlYWQ6OnNsZWVwX2Zvcig1MDBtcyk7CiAgICBncmFwaC0+cmVsZWFzZSgpOwogICAg
Z3JhcGgtPmNvbm5lY3QocmVwbGF5SWQsIDAsIHJ4U3RyZWFtZXIsIDApOwogICAgZ3JhcGgtPmNv
bW1pdCgpOwoKICAgIHN0ZDo6dGhpc190aHJlYWQ6OnNsZWVwX2Zvcig1MDBtcyk7CiAgICBzdGQ6
OmNvdXQgPDwgIkNvbm5lY3Rpb24gZG9uZToiIDw8IHN0ZDo6ZW5kbDsKICAgIHNob3dDb25uZWN0
aW9ucyhncmFwaCk7CgoKCgogICAgcmV0dXJuIDA7Cn0K

--_004_GV1P250MB078547F105A7673F14E43959904E9GV1P250MB0785EURP_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_004_GV1P250MB078547F105A7673F14E43959904E9GV1P250MB0785EURP_--

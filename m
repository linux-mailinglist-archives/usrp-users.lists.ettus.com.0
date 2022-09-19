Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB5D5BC57D
	for <lists+usrp-users@lfdr.de>; Mon, 19 Sep 2022 11:36:02 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 27B99383D14
	for <lists+usrp-users@lfdr.de>; Mon, 19 Sep 2022 05:36:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663580161; bh=w5i/Y0Ge4beYLugrIGy7tzV4MupVNUF1PQ1JzDtli9E=;
	h=From:To:Date:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=swsHSegxs+oWiI1KPk0mdWE3wQd1eXUgPEozSK+Q6bvZlswn77Ioc3Ktx+wbVygqB
	 N9Z1+1qgPiIQBPTOSaUUphlq+JPNISBAXa4crjJugHfgIo70xfjjLwkZSZoMST8qYs
	 PC60h5ZzwvepvSYE73JOTmxeSpEbnUfCGtZQGkvj2LvOkuqOzjbDQvPs4/Ba4//3ub
	 OifNUV08paLIXQgN9Axdjbjzho0kTeRAnR/IwRQ+/ou0un+S0uLLE+pV1gomyOwm2V
	 lc+WuAKbF7V2XoLL/zM9WkzRXW4LUPIBCaPE7GDBR2Bjs3vNj7LIHxPZqvxdPuNdg/
	 h99kjdS5FZfRA==
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (mail-eopbgr80097.outbound.protection.outlook.com [40.107.8.97])
	by mm2.emwd.com (Postfix) with ESMTPS id 02FDC383AA5
	for <usrp-users@lists.ettus.com>; Mon, 19 Sep 2022 05:34:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (1024-bit key; unprotected) header.d=barkhauseninstitut.onmicrosoft.com header.i=@barkhauseninstitut.onmicrosoft.com header.b="Hiow2nqq";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A4HRy71gs+WUK+NBtl5XyP1CB4V5OURmUrX0svRJ5EznvG3yIEd8XqR5ZCYTBs2UFp2B3eK9lBewOepuUSkzXH9UNAsH6Wo9yCGifUY+39bdevGlq1jxXnNs+FMeZPKmEwTBdQaIFiseQlL+OceGTSfHK0XAOlYERPBh4Y+KQopDg6p4Pju/tY0MUSRjQ7vLutDUwpedL8vyykoZvvdpyXTpybZ7sL1tQrcIotvEhO7EhOpGXwIV5KOaDOygJ2EYGN9Yb9gqyRl/fVd63E6a0JRLwLoTeb+poXB6VS5sWlpyEijsewtZ5G9oRU1f67eQARFFXAQHe+ESJfEL+hDDzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=16Qn6zp7LDUW2XRPJUnu07iRsa1AnbSBiuyW6xNf3gw=;
 b=Fv6b5cTE2+3Q7Qk58yWqS//q/P5VMlScbNff/4Lu3M/UCg9sMT+k8iD8369sEF9J80DwGCkkW7v3YtZevgbEwRMXowgP/VAtPSWa/gNjDeYGemFwL3axHYX9TXqcQAWZlx72+T7M2jFl8+AWvf+u2xmNUgC4RYdAz7QETAWRM/G/lHlby4XUkkJ67Z09KtH8izw7sbaSWqD/H9UQlM0RnzKfVFdvaSRVuLIjmTDLDKdrB7xSPJ+owr+p2GYJQEbOGFSYT5jeEFhgyhVEYqzUn/sW1I+AxFwEdN6wLOfXp/03yRU3aEwEN0aX8booP4Wmbkkrhu0CLkQxknMrONBhDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=barkhauseninstitut.org; dmarc=pass action=none
 header.from=barkhauseninstitut.org; dkim=pass
 header.d=barkhauseninstitut.org; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=barkhauseninstitut.onmicrosoft.com;
 s=selector2-barkhauseninstitut-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=16Qn6zp7LDUW2XRPJUnu07iRsa1AnbSBiuyW6xNf3gw=;
 b=Hiow2nqquKYqhvxaWSYWPxWow9zM1P3rf9udCau9n6FVC/y5Qe972+G8heNRZkrVfmDIkdzy89vrUwlDc41CRv8yeUqHbF89UVMTRpeuyXxfBG2Ud+P5fHMmT6cszkg9npBXf02hZifCpmDCAJPg8JRvdXiPysefYMTVbPdC5fA=
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM (2603:10a6:150:9f::17)
 by PR3P250MB0152.EURP250.PROD.OUTLOOK.COM (2603:10a6:102:17e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Mon, 19 Sep
 2022 09:34:11 +0000
Received: from GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::acc8:df95:ad6b:380a]) by GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
 ([fe80::acc8:df95:ad6b:380a%6]) with mapi id 15.20.5632.016; Mon, 19 Sep 2022
 09:34:10 +0000
From: =?iso-8859-1?Q?Maximilian_Matth=E9?=
	<maximilian.matthe@barkhauseninstitut.org>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: RFNoC Disconnect Streamer
Thread-Index: AQHYzAkIjGe1lv6ZOkK+DkQygQO/Og==
Date: Mon, 19 Sep 2022 09:34:10 +0000
Message-ID: 
 <GV1P250MB078581BDBAE53674592445AB904D9@GV1P250MB0785.EURP250.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=barkhauseninstitut.org;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: GV1P250MB0785:EE_|PR3P250MB0152:EE_
x-ms-office365-filtering-correlation-id: 066efcd4-6e47-43c2-979b-08da9a221b96
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 fNB2BswSAX3fhVtdHGD8WU17tW4ODpPWtmNFbrplDDzEEPDt77yhWUlegl3XmBCgRbBkfpMM/n0KPyGUgdri7Ftz2LUeT+L5h2FII4QFbeNAb2Stz4AdKAgcDGpQj1GEDPuncKqgFLvjtuI8581NpzTIIP7DBfvB0Ck9GnNClLAxuMVHGwfbP0jGiWEaF8am3hRLuO53PfvkwMnz6qLcccW+oKLvRcf7+kjwVs/TZU8veU/d0RMQMUmCsWqaEvAEUY4jihG7e4MTb6WMjja2pnD+FQpHfgWq45oDFWhNCdX9fILknQ2dM4tKfKXSMPU6Er9kdae1LtamKY2s9uXKPXwVQpIyGM5RVik2f4aG7m0iMlV/HiH0S1fUcsGhQIxsOU7h5SoEmu+wAxOZ3SsTm2sTHljuEUXWu4bisJs/aKxdWAsA2CJgqjRqbJqkFCyLqLpa9oA5sOiARGta8oSKn1nAx9O8Q3Uo+Sw4h6r88gk7y7PzXkNEdBnRGm8i1+gc0lwym4dT5G9e0jj7QTiA773/9ZvHksIHBFCeAwCVTio8052fHFv+S9mjYvcFrRT11+agVe442H7vsbIvKxE4etMd5wBfVW8MHY9SQCoz3BogVOfOFSFM7NepwPzXZU5Ep4ZLPZS5D/ayhyxeG0zeN//fsXip0IKviswPst+scu39BUVsyhdua+KT17LdmdU9+jSIhmAyHBecc/dykklRB2sVyxIq4py404UN6KVHZo0tBt7WHjFrlK2015BZENkSvhcLiJ/ubx2N3vOQkgnOLA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1P250MB0785.EURP250.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230022)(376002)(346002)(136003)(366004)(39830400003)(396003)(451199015)(3480700007)(52536014)(186003)(66574015)(122000001)(7116003)(41300700001)(8936002)(66556008)(15974865002)(64756008)(66446008)(2906002)(66476007)(91956017)(99936003)(83380400001)(66946007)(76116006)(38100700002)(55016003)(316002)(6916009)(38070700005)(7696005)(6506007)(19627405001)(5660300002)(8676002)(71200400001)(478600001)(966005)(86362001)(26005)(33656002)(9686003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?T18e9TuLYPy1QXKDBeWI72E5EqopRP9MQ5AUoq0zkYuGs8c7vMAmhiITJ1?=
 =?iso-8859-1?Q?64S6Oy/7OMYKMkbOavbJP2wvtVDlNp2dEVkGZyFDCkCBgSWs8ttfLIonHD?=
 =?iso-8859-1?Q?V6ue5/5RBf0TyMjKyPZZPQulUx09ist4Gnz4sNotFq6Ot9gy/4lqVYB8tp?=
 =?iso-8859-1?Q?4u6M7YveoZb9Nai+NLJcnxr8SRjOCWX6+9X6I/M3tez8rVhteufIMjUkUv?=
 =?iso-8859-1?Q?pW1VKsGmbkoZfdSjvbsm4b7lp+YNmExxm9IflzeijKy5F0pso5bCjd6zpF?=
 =?iso-8859-1?Q?KPo97zn4tg3LFqgOPECQnn5CF7U/DPFrT0vM+MyZ2gAyLkyhJzXv2gAnbM?=
 =?iso-8859-1?Q?r3Z1R6nWm8o0wzRqZaPT4DarHvZUitjtpfouHl8uKHHaDR/sNo3P4TmLrq?=
 =?iso-8859-1?Q?O6RVFm+vEjpp0WLBDakI3vYWY1ji7j71E0KBEu+hfSthG1XVteHlS3YwBj?=
 =?iso-8859-1?Q?XIaJGTQGfMTanUL6fOiZH9GRE+W10djOzVKHO90+GeF5fIIXoPMPKEoOa3?=
 =?iso-8859-1?Q?WwZKjdF4qJMSrYrPNP3HpI1B5XoIzLiqd8WbjcAzy9/VKsGfgjDAmlb9kc?=
 =?iso-8859-1?Q?sBMkOU67TLM5imQZyWhqqMVQqZzlHmpMq5N/qii/LPFdxgbdLvWDaMc69S?=
 =?iso-8859-1?Q?meIVnEqY75cDia6xJxaZvFk7a/VTgat8e9Y5QcILiGWBbbrG0GtUqS33Hf?=
 =?iso-8859-1?Q?HuYzm2T+3F4P/hOhOkvJxbbWfnKwYfRwb4sizLkw6ipopDl7pHH40KIUI6?=
 =?iso-8859-1?Q?ZqSIuMaZ03dzxb7r57MULvZ3KDQh5s7VgC30Hyk147t6NwE8axaCPp+5Kf?=
 =?iso-8859-1?Q?ymNjGMKRAF7t4J/gpgf71H/TcfB4wES1tLVcc0TZE0zIrWnKkC8rXABB38?=
 =?iso-8859-1?Q?gdpi1wglf80X2dM8/fqzasoFF9JEBBWjaam+c5Hek2V1RtMxj/FJCKidVK?=
 =?iso-8859-1?Q?nfL+9P2LbjwaFhHfQRtzo+VYE2VF4rQoMcSXyhyJ5w9vAWhiuNZDiwsahA?=
 =?iso-8859-1?Q?wRovQu2wOAIgzpzrWlR6Y09sS/G8XibpuXc3yH5s43vqlVtCaAEGelbK8g?=
 =?iso-8859-1?Q?GtY1shnTTVn72zsvd5PxjyUkV9FwdVXBMaN+h8k/7mWKFZBXKDw6KlOwDr?=
 =?iso-8859-1?Q?X2uIgptC71GRpfMKEdnWI+f5jZuxHyZL5Vk3f0GEE8nK2v4Eiz2mNiYhop?=
 =?iso-8859-1?Q?4vVy9px8GLzd3//al2kcIMBDtQQrAJywX0k8fXtyeCsmT4kcAsI1kSdRFj?=
 =?iso-8859-1?Q?j8CahJ7woVnxqQHgxgdKe91I85EtDaFNsHWVfNOWu4KHiY9VuGjX8Y8u5D?=
 =?iso-8859-1?Q?6t66ZtLF/oLe5Q7NaJU7sNf5g6xPO8/GPpTNCbupVqDZk7i+HfjsYw6bD0?=
 =?iso-8859-1?Q?BF3qxWREs6r5YPq/Whpdg6keBuHjQwPizqikXW9K28+OGSPyWyRDPgSqvf?=
 =?iso-8859-1?Q?uCJ3GjM702gvUSgpdP2Os40FJ3KtCynSGHLSb9mBPqG6cagb4Ia2tqqaGA?=
 =?iso-8859-1?Q?bgfJbyOhiOukES+PhJ8tXFR+rW92BH7QHC2eLFGTWEwSixYEZvZYrUT5i4?=
 =?iso-8859-1?Q?bQ1MXu+qFDVyrXj2kz0yLY0dMKhNM3b04Pruq5/Eo2hz8qSs+6p2hVOl7D?=
 =?iso-8859-1?Q?FyveUT/h0UUaT6c0zj5Of7/G7G/RC6hKzIiU0eruJzRLM+0tnyAupH1R6R?=
 =?iso-8859-1?Q?7vhUk1vGEwQbA9qX+cw=3D?=
Content-Type: multipart/mixed;
	boundary="_004_GV1P250MB078581BDBAE53674592445AB904D9GV1P250MB0785EURP_"
MIME-Version: 1.0
X-OriginatorOrg: barkhauseninstitut.org
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: GV1P250MB0785.EURP250.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 066efcd4-6e47-43c2-979b-08da9a221b96
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2022 09:34:10.8610
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 00487172-018a-4fb0-b279-f756ac552ea7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S1kDXXEc7sbUEfOd8TJ1ON84mTa0Fd0Hnz+wnEE1AkOLDW/KU4wjsRZwgCQylLfz98Cm7bswOkJODQm2qVC1X7EBr+yNkarEa5h57hm+tkg80RD6zGDeDVeegoNsVPmiAZDpzEd1zj/xhWq/NijucA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3P250MB0152
Message-ID-Hash: BXFGJWNQR7UHRPHZ3FFOZ2QIFELJNMGF
X-Message-ID-Hash: BXFGJWNQR7UHRPHZ3FFOZ2QIFELJNMGF
X-MailFrom: maximilian.matthe@barkhauseninstitut.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] RFNoC Disconnect Streamer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EEFV6MJKK6FZBKM2ACMYCD4FPY57AUST/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--_004_GV1P250MB078581BDBAE53674592445AB904D9GV1P250MB0785EURP_
Content-Type: multipart/alternative;
	boundary="_000_GV1P250MB078581BDBAE53674592445AB904D9GV1P250MB0785EURP_"

--_000_GV1P250MB078581BDBAE53674592445AB904D9GV1P250MB0785EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

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


--_000_GV1P250MB078581BDBAE53674592445AB904D9GV1P250MB0785EURP_
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
I'm working on a project where I have to connect and disconnect different s=
treamers from an RFNoC replay block. (I need to switch back and forth betwe=
en TX and RX Streamers and 4 Radios in TX/RX mode connected to the Replay b=
lock for using 4x4 MIMO configuration).
 I'm running on a USRP X410 with UHD 4.2<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Here's the setup:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
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
<div>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<br>
<br>
<b>Barkhausen Institut</b> <br>
www.barkhauseninstitut.org <br>
<br>
</p>
<p style=3D"font-size: 11pt; font-family: Calibri, sans-serif, serif, &quot=
;EmojiFont&quot;; margin: 0px;">
<span style=3D"font-size:9pt;" lang=3D"de-DE">Barkhausen Institut gGmbH | S=
itz: W=FCrzburger Stra=DFe 46, 01187 Dresden, Germany | Registergericht: Am=
tsgericht Dresden, HRB 37267 | Gesch=E4ftsf=FChrer: Prof. Dr. Gerhard Fettw=
eis, Dr. Tim Hentschel | Vorsitzender der Gesellschafterdelegation:
 Dr. Andreas Handschuh <br>
<br>
Hinweise zum Datenschutz und zur Verarbeitung Ihrer Daten finden Sie unter:=
 https://barkhauseninstitut.org/data-privacy
<br>
<br>
</span><span style=3D"font-size:9pt;" lang=3D"en-US">This email and any att=
achments are intended only for the person to whom this email is addressed a=
nd may contain confidential and/or privileged information. If you received =
this email in error, please do not disclose
 the contents to anyone, but notify the sender by return email and delete t=
his email (and any attachments) from your system. Information on data prote=
ction and processing of your personal information: https://barkhauseninstit=
ut.org/data-privacy
<br>
<br>
</span></p>
</div>
</body>
</html>

--_000_GV1P250MB078581BDBAE53674592445AB904D9GV1P250MB0785EURP_--

--_004_GV1P250MB078581BDBAE53674592445AB904D9GV1P250MB0785EURP_
Content-Type: text/plain; name="disconnect.txt"
Content-Description: disconnect.txt
Content-Disposition: attachment; filename="disconnect.txt"; size=2197;
	creation-date="Mon, 19 Sep 2022 09:33:56 GMT";
	modification-date="Mon, 19 Sep 2022 09:34:10 GMT"
Content-Transfer-Encoding: base64

aW1wb3J0IHVoZAppbXBvcnQgdGltZQppbXBvcnQgbnVtcHkgYXMgbnAKCk5VTV9DSEFOUyA9IDQK
TlVNX1NBTVBMRVMgPSAyKioxNgoKCmNsYXNzIEdyYXBoQXBwOgogICAgZGVmIF9faW5pdF9fKHNl
bGYpOgogICAgICAgIHNlbGYuX2dyYXBoID0gdWhkLnJmbm9jLlJmbm9jR3JhcGgoJ2FkZHI9bG9j
YWxob3N0JykKICAgICAgICBzZWxmLl9yZXBsYXkgPSB1aGQucmZub2MuUmVwbGF5QmxvY2tDb250
cm9sKHNlbGYuX2dyYXBoLmdldF9ibG9jaygiMC9SZXBsYXkjMCIpKQogICAgICAgIGZvciBjaGFu
bmVsIGluIHJhbmdlKE5VTV9DSEFOUyk6CiAgICAgICAgICAgIHNlbGYuX3JlcGxheS5zZXRfcGxh
eV90eXBlKCJzYzE2IiwgY2hhbm5lbCkKICAgICAgICAgICAgc2VsZi5fcmVwbGF5LnNldF9yZWNv
cmRfdHlwZSgic2MxNiIsIGNoYW5uZWwpCgogICAgICAgIHNlbGYuX3J4U3RyZWFtZXIgPSBzZWxm
Ll9ncmFwaC5jcmVhdGVfcnhfc3RyZWFtZXIoTlVNX0NIQU5TLCB1aGQudXNycC5TdHJlYW1Bcmdz
KCJzYzE2IiwgInNjMTYiKSkKICAgICAgICBzZWxmLl90eFN0cmVhbWVyID0gc2VsZi5fZ3JhcGgu
Y3JlYXRlX3R4X3N0cmVhbWVyKE5VTV9DSEFOUywgdWhkLnVzcnAuU3RyZWFtQXJncygic2MxNiIs
ICJzYzE2IikpCgogICAgICAgIHNlbGYuX2dyYXBoLmNvbW1pdCgpCgogICAgZGVmIF9fZGVsX18o
c2VsZik6CiAgICAgICAgc2VsZi5fZ3JhcGgucmVsZWFzZSgpCgogICAgZGVmIF9kaXNjb25uZWN0
QWxsKHNlbGYpOgogICAgICAgIHByaW50KCJESVNDT05ORUNUSU5HISIpCiAgICAgICAgdHJ5Ogog
ICAgICAgICAgICBwcmludChkaXIoc2VsZi5fcnhTdHJlYW1lcikpCiAgICAgICAgICAgIGZvciBw
b3J0IGluIHJhbmdlKE5VTV9DSEFOUyk6CiAgICAgICAgICAgICAgICBzZWxmLl9ncmFwaC5kaXNj
b25uZWN0KCIwL1J4U3RyZWFtZXIjMCIsIHBvcnQpCiAgICAgICAgICAgIHNlbGYuX2dyYXBoLmRp
c2Nvbm5lY3QoIjAvUnhTdHJlYW1lciMwIikKICAgICAgICBleGNlcHQgRXhjZXB0aW9uIGFzIEU6
CiAgICAgICAgICAgIHByaW50KEUsIHR5cGUoRSkpCiAgICAgICAgdHJ5OgogICAgICAgICAgICBm
b3IgcG9ydCBpbiByYW5nZShOVU1fQ0hBTlMpOgogICAgICAgICAgICAgICAgc2VsZi5fZ3JhcGgu
ZGlzY29ubmVjdCgiMC9UeFN0cmVhbWVyIzAiLCBwb3J0KQogICAgICAgICAgICBzZWxmLl9ncmFw
aC5kaXNjb25uZWN0KCIwL1R4U3RyZWFtZXIjMCIpCiAgICAgICAgZXhjZXB0IFJ1bnRpbWVFcnJv
ciBhcyBFOgogICAgICAgICAgICBwcmludChFLCB0eXBlKEUpKQoKICAgICAgICBmb3IgY29ubiBp
biBzZWxmLl9ncmFwaC5lbnVtZXJhdGVfYWN0aXZlX2Nvbm5lY3Rpb25zKCk6CiAgICAgICAgICAg
IHByaW50KCJEaXNjb25uZWN0aW5nICIsIGNvbm4sICIuLi4iKQogICAgICAgICAgICB0cnk6CiAg
ICAgICAgICAgICAgICBzZWxmLl9ncmFwaC5kaXNjb25uZWN0KGNvbm4uc3JjX2Jsb2NraWQsIGNv
bm4uc3JjX3BvcnQsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbm4uZHN0
X2Jsb2NraWQsIGNvbm4uZHN0X3BvcnQpCiAgICAgICAgICAgIGV4Y2VwdCBFeGNlcHRpb24gYXMg
RToKICAgICAgICAgICAgICAgIHByaW50KCJDYW5ub3QgZGlzY29ubmVjdCAiLCBFKQoKICAgIGRl
ZiBjb25uZWN0Rm9yRG93bmxvYWQoc2VsZik6CiAgICAgICAgc2VsZi5fZ3JhcGgucmVsZWFzZSgp
CiAgICAgICAgc2VsZi5fZGlzY29ubmVjdEFsbCgpCgogICAgICAgIGZvciBjaGFubmVsIGluIHJh
bmdlKE5VTV9DSEFOUyk6CiAgICAgICAgICAgIHNlbGYuX2dyYXBoLmNvbm5lY3Qoc2VsZi5fcmVw
bGF5LmdldF91bmlxdWVfaWQoKSwgY2hhbm5lbCwgc2VsZi5fcnhTdHJlYW1lciwgY2hhbm5lbCkK
CiAgICAgICAgc2VsZi5fZ3JhcGguY29tbWl0KCkKCiAgICBkZWYgZG9TdHJlYW0oc2VsZik6CiAg
ICAgICAgcGFzcwoKCgpkZWYgbWFpbigpOgogICAgYXBwID0gR3JhcGhBcHAoKQogICAgdHJ5Ogog
ICAgICAgIGZvciBfIGluIHJhbmdlKDEwKToKICAgICAgICAgICAgYXBwLmNvbm5lY3RGb3JEb3du
bG9hZCgpCiAgICAgICAgICAgIGFwcC5kb1N0cmVhbSgpCgoKCiAgICBmaW5hbGx5OgogICAgICAg
IHByaW50KCJSZWxlYXNpbmcgZ3JhcGguLi4iKQogICAgICAgIGRlbCBhcHAKCgoKCgppZiBfX25h
bWVfXyA9PSAnX19tYWluX18nOgogICAgbWFpbigpCg==

--_004_GV1P250MB078581BDBAE53674592445AB904D9GV1P250MB0785EURP_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_004_GV1P250MB078581BDBAE53674592445AB904D9GV1P250MB0785EURP_--

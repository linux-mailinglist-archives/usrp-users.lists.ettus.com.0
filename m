Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EC2A6A5D66
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 17:47:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C81E43841BD
	for <lists+usrp-users@lfdr.de>; Tue, 28 Feb 2023 11:47:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677602839; bh=Y7RIBhSRY55tSTYjT3WVPeC7B1LJdpD18HnI1p69Dfw=;
	h=From:To:Date:References:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EX5OT5GJCMqzlcp2kxoaiyETM5igtW55eBMRYAcw0BK/nik81lpCpqKfewvuBgQmS
	 1RswewH1lAPi5p4rGHneZIKhBYGu2NDSQTUZSVHTF1dPpz4JWqFBiyw3c9bcR7+RbB
	 eV7wYLLwGjesFKkse3SjvOsQvzbt9y20keUI19Tx/sVVb0jNo9Q2CWhaCAPiBmxpyH
	 7+nGLhLqh1J/qiiLpkw/i+3fWp/J1qlxsmd3Lzq+ayOuZByoLn1d2IQMs1simAtS1g
	 je35Ruitfj6MXq16WlA7Z/BMhdFyDSfIjoic8o3A+pOPS6wKAOZfyMvGYLydIASNZA
	 1Sxzq4NhxOKfQ==
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam02on2064.outbound.protection.outlook.com [40.107.212.64])
	by mm2.emwd.com (Postfix) with ESMTPS id EBF16384799
	for <usrp-users@lists.ettus.com>; Tue, 28 Feb 2023 11:44:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=caltech.edu header.i=@caltech.edu header.b="LgOvYkQm";
	dkim-atps=neutral
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJlOZDtGrM/JmqidwZXtPIN9hcCELnj7vjV0hZCZs5DTzqCmZ1o+K06VzWBbzO71MkcrrFZyTDc/oc8H1I4yQlm9WqD1uM+e96eYovekiKUjNyKrXmEmSxwUdgJVgZEG7QgKRELfM6kkxAlgZ76Dl2vwl4Y08MRzaYl7ff1bqw+sQ6slvLbs4o4cXtP5td8iP/NIVBpIPgLcVkS9w7IT9tdCaXlsZgfohpHKQ9HDkFraRGtul6lwxopI5Fk8mC+g1sCMr3Q/CJbD7zLLjUzi8VaKyQureBqSFQhHoVAkI2vjAvIt0pAfIi+TsP+eHWFEkmNebgcKFsWho1A57p0ewQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Kurwh4JCGyZBncHYar64cGJXKkyx7gwC1cz9a2zr4E=;
 b=cz4rcI2WF1Kph1LoEwu5PScynmEPW5+CPYK6Na0EUmdxZn8o+d3vfxF8kVRwGhiM9c4JP6+moAHtMVWgyJqpYudU2yXrn91uX+ep+TdQKbHtTVqJfXdMTG5A7KfVZiKU7apqMvqlDC/MxFRFm/3MDFMZEr6LPMLjWl+/Q8levMBv+ntLXQmy/Co7GBjX6/prRjJygwpRyPMu5ciI3GC4VvEdGcu0kf9RYVDmAXMMhaZmjKD+zT2qNh6Njq5O52zB51fu8Gul1zViVCGjGClC1oMy3G5qF19ZYFTmcBZ1YPGsct/s7WXseAxzM+IE9SONU3mK+F0fpMWeKaDCKBxdfQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=caltech.edu; dmarc=pass action=none header.from=caltech.edu;
 dkim=pass header.d=caltech.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=caltech.edu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Kurwh4JCGyZBncHYar64cGJXKkyx7gwC1cz9a2zr4E=;
 b=LgOvYkQmw3UvfDGtu/hs5Pb7sZqiKLjQxqmaLhA54mq5VWZQ4Ha4jhZQBYG1q8tzCR9RS1pnNRDgmBMzxS1XPbj5+Cqk6wlDR6zAfX+0IbJsXWTTt3k1pCGGl2tRpTvdzVxvoyv7c9SKnydp+LxS6ndgSXPkwJ/pGnkpRSbcK5t1sHcxsx9QHBB6dCS9v0X8sczMZx5pVs+BaAox7HKce4kVZW2giDDkakfAZrUnLIhaG629bzkyEnzj3QGU5e7fmboekPLQf6y9nwjByvRWpxKvlxSYefKZgWU8cJDF1LVFkyImnGBF+layxATxYuyLPb/5/LBlEYW1eoWPAZK6MQ==
Received: from BYAPR03MB4678.namprd03.prod.outlook.com (2603:10b6:a03:137::21)
 by BN8PR03MB4963.namprd03.prod.outlook.com (2603:10b6:408:7e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 16:44:55 +0000
Received: from BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ca6f:6cd4:d864:dcae]) by BYAPR03MB4678.namprd03.prod.outlook.com
 ([fe80::ca6f:6cd4:d864:dcae%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 16:44:54 +0000
From: "Minutolo, Lorenzo" <minutolo@caltech.edu>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] RFNOC4, FFT Block, Python
Thread-Index: AQHYxwT+eGu9EQU6FEy301ESNYYr163dYoUAgQg06a8=
Date: Tue, 28 Feb 2023 16:44:54 +0000
Message-ID: 
 <BYAPR03MB46787E90B5B3C150770F253DD3AC9@BYAPR03MB4678.namprd03.prod.outlook.com>
References: 
 <BYAPR03MB46780CFCA3FB71E223471337D3479@BYAPR03MB4678.namprd03.prod.outlook.com>
 <CAB__hTTGkkNKhVvau+gRAqsSaYypLpoatEZWm0Jrm-bH-3HnKA@mail.gmail.com>
In-Reply-To: 
 <CAB__hTTGkkNKhVvau+gRAqsSaYypLpoatEZWm0Jrm-bH-3HnKA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=caltech.edu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR03MB4678:EE_|BN8PR03MB4963:EE_
x-ms-office365-filtering-correlation-id: 2804f589-49c6-4854-5fe9-08db19ab1e9c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 H1qQIgfQKPTMhCiA7CgIwlXA5O54isnfjWO0Kr0t5xrMcWpsuuKBLaFYcLFGfHQ+7wRzMkhdC3qceJLHkh0TcGEZIQOBUZaXjnkiGJb33tBBSIIVZ3uVFOrPr3ItG3tIdolEklWxeQtaQAXQqYLDwyxjn0iuem1mWJcW9/oIabqlmYnJ8w+9GbUGtb0VGIpTHKqZSbCkex8H9UqZ12AIMH3DIGiybSF9OXs/C21ybAjl2ULVO++TdJVHAb6TCMIDKHU53rhrzlZUE0LcSHRhFCmmclM/1rVhS9SVFiMnDkn1TXXVopMX60tAXwNM5+VlX5iX/H6mfJTot8mVqidDJrk++IscojbstsbVBftMOU8I+LQms/nxL/eTPGS/db3rqVpszycqtmNWLqcKicdYrug61346syUe+tJccLEpBsPTEKQdZA6pfQYxNfTLgWVD20B548vXwwPvI8iPmE0lMxnmH0kUZKdiTjIou4Q8rJ+moTIRA7PdFdKTFjBQKcSERuST0jMjkwP3xZpdQaffGPFMLG0ww8qEFUkiGPSAucrJCB9EB+Qs9zF5OmwOoj7eMdnr2Kn7BDxR+NQ1acMNnst1nzGGI8Ig73Ayf/6sPNl9iFBxU3OY9ONHYvYEGcBs98WH6LbUP44XdsunvkbXn4pl7mDA1SpTP44kEDFYTgj88SthUnvqhyyW7U2Gue1H
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB4678.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(39850400004)(346002)(396003)(136003)(376002)(451199018)(38100700002)(122000001)(38070700005)(52536014)(86362001)(33656002)(5660300002)(8936002)(2906002)(21615005)(166002)(8676002)(64756008)(41300700001)(66946007)(55016003)(66476007)(66556008)(66446008)(4326008)(6916009)(41320700001)(7696005)(76116006)(9686003)(6506007)(186003)(26005)(83380400001)(53546011)(478600001)(91956017)(316002)(786003)(75432002)(71200400001)(966005)(66899018)(19627405001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ONuqTZLYOhXlbe5clcZvXG/WM0twrmDfXMy36UNqn8y556fjQLMPvuQxIwqp?=
 =?us-ascii?Q?3GWv2JjoOVhG5OFpGvdnQLeH3taL3leQJ38azndKjpbGy7I2RgKZa+o8OqF4?=
 =?us-ascii?Q?9tyUksDenOyrJWnCmqvTSc1WRRbBG06J1cZH+4K/GHkEbaZw22ASXv/PSJJu?=
 =?us-ascii?Q?nG8krwK2XY+VbhDQZz6q+Twp76X4xyDKBZ3uL0i2eSsDAAjrh5fQymPRHJ11?=
 =?us-ascii?Q?0nNu/ZZcngnwQDwNsBOasLPYQnqsaUeOaJhWMsbfHoP2TVLkN5kP2lR8B5GV?=
 =?us-ascii?Q?8BFmxtcVwYBrDIJzGaMMBhlfZALnFGpxf91TQZdZkhkkR62UBiPXOu+4rRsj?=
 =?us-ascii?Q?fDfQHU3UkVAmJKrgpyBKwCtFTwhkxxEiupxcIJn2jNeSlv4h5/QeuDx8RyWq?=
 =?us-ascii?Q?haFQszs7C4WleebVv+tfE6ddwOX8/44hTHg/zSBMwS7em14A6LWakLT6l1gt?=
 =?us-ascii?Q?KRdp1V6dB+fds51pkHTriW+d/SE9TOxePzpDMI97TYCnc03JhPTTetBczncp?=
 =?us-ascii?Q?uRg+tazfKwjuvK09zxerS3eaeJNhrn2j4HhYg2hiF65rR+GaEMcFVgmumrJI?=
 =?us-ascii?Q?N8oC0wDc+iNCxV4/3vw8xQqm+VD//Rq4GRXyn2CXIqtxeCJPA5RVH6tkmcxi?=
 =?us-ascii?Q?VKnc8ngqSr1utIYGjBvA7/z/0QwKgtF3289GzzN0SGRnWcfKIjqHwViYwFy6?=
 =?us-ascii?Q?t/paDrzzBcaLlp7AAerWjnKTX9+0sc9VKevPhHy9GQQIhWYTkcYtI+VEiMoi?=
 =?us-ascii?Q?kJ/CIYYbOge4/E00W6Fb//ICUqyr1Du78ryXRXPi/xvGumi/dTofy0YXlQ+z?=
 =?us-ascii?Q?jQI17PNSwUwYktoCc3qWlGF1Jm/xAnnqRPehMlGQUzBRUvUDpom52SoDmZ/P?=
 =?us-ascii?Q?+bqq7w/uNP0izJz02i660HDGb6cobZJtXenkDoR2cN5trAEQgXfW11UKLxn3?=
 =?us-ascii?Q?sAMwhocVI4+BA24IenYfo/o2lMTw7yfUj+s+pX6UJbxjqRYFEGJeuSu5vIvH?=
 =?us-ascii?Q?t2+B7HfCbjooURS+2Xbm1/sfAozWTxknRwAWCAiuGB04WJRFmfGzJrzUAR9V?=
 =?us-ascii?Q?djzmPXRqqk/YH01MdhmD0p2GAAJUjtmCY7IdPEOO9aN+CfhUp68aTQpDTidy?=
 =?us-ascii?Q?0dEa+1sCp5iXwrNSZimRvqRpc2CNUUm2ij6mgF8sds7b25ueg6Z3Co5xurvw?=
 =?us-ascii?Q?uNbclStMwyAkScmQWvWiSfDKriC964hstdX5aWLtB3J8HPhugvqIwl3sJy6C?=
 =?us-ascii?Q?bz30ylWCaEtzBS7RVi7BIy+6Ll6w5jSNDeDKjsvLZ/Mu8UJMeYTtulc5TFcp?=
 =?us-ascii?Q?CIThy/3b7ZDpv70Tj1p0h7+8i9FiFzIwopuD2SXpkI+vGVWvuSpGYZsfOvT3?=
 =?us-ascii?Q?hEv84S60G4j/NfCi9trNzBc/wjmS3SIhv0bka5fbBWeOcOkBKIzB+zSO0MIL?=
 =?us-ascii?Q?vyyEsG5b0y+KcZukkSne2DcztdeRvdiZ8g8dsJIPFWXvX3dIGBIV5TdI3iRS?=
 =?us-ascii?Q?FTZPJWLLokYqZBm6Rcc6xpgU0PnNRThMHEOWaKOpLP/WC7OQ6X0CCv5PydOR?=
 =?us-ascii?Q?o7r4FSBdkT/r5XiGXPlX+fyA1ctI8csCBNLp07A3?=
MIME-Version: 1.0
X-OriginatorOrg: caltech.edu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB4678.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2804f589-49c6-4854-5fe9-08db19ab1e9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Feb 2023 16:44:54.6567
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: fd5be9d9-7b72-4df9-830e-b1f9cc5b44bd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /mdWsibVW23yetmQ0yT5XJX1tl+eyRs6vKQE0iENJIZra1BNuj8LJ1nKfBHXol/raVmtFXXHKkP59gc1Q4y5jA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR03MB4963
Message-ID-Hash: FL27RELMGTR2JY2WMS3HEB5M6ULWYUHZ
X-Message-ID-Hash: FL27RELMGTR2JY2WMS3HEB5M6ULWYUHZ
X-MailFrom: minutolo@caltech.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC4, FFT Block, Python
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MJNT4PTNN5EOZRJYNACRU4QD5T3ZVEF6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8300414827429031650=="

--===============8300414827429031650==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR03MB46787E90B5B3C150770F253DD3AC9BYAPR03MB4678namp_"

--_000_BYAPR03MB46787E90B5B3C150770F253DD3AC9BYAPR03MB4678namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
Sorry for reviving this thread, I still have found no solution to this prob=
lem.
I moved my application from python to c++ for performance reasons and the i=
ssue is somehow different.

I found this old thread about the fft length on rfnoc: https://www.mail-arc=
hive.com/usrp-users@lists.ettus.com/msg07587.html

Apparently you can modify the fft block to accept multiple smaller packets,=
 perform the fft and output multiple packets.
The drawbacks are that you have to manually reset the fft (to avoid frames =
being mixed in different streams) and that errors will somehow be mishandle=
d.

Has there been any work in this direction? Is the modification as simple as=
 changing some parameter in the xilinx FFT IP definition in uhd?

Would be nice to have this feature by default, I'm trying to implement it, =
regardless of the drawbacks, because in the end I will need a real time FFT=
 of 2048 samples.

Thanks,
Lorenzo
________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Tuesday, September 13, 2022 6:54 AM
To: Minutolo, Lorenzo <minutolo@caltech.edu>
Cc: USRP-users@lists.ettus.com <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNOC4, FFT Block, Python

Hi Lorenzo,
The FFT block requires the number of samples per packet to exactly equal th=
e FFT size.  When the graph commits, UHD will try to resolve a packet size =
that all of the blocks are happy with.  Perhaps if the FFT size is 2^11, th=
is packet size may be bigger than the radio wants to deliver (or bigger tha=
n the SPP you specified in the rx_streamer, I don't really know).

In my opinion, this is a really unnecessary limitation of the stock FFT blo=
ck. With relatively minor changes, this block would not need any linkage be=
tween packet size and FFT length.
Rob

On Mon, Sep 12, 2022 at 8:20 PM Minutolo, Lorenzo <minutolo@caltech.edu<mai=
lto:minutolo@caltech.edu>> wrote:
Hi All,
I'm using UHD 4.2 to play around with RFNOC4. I successfully added an FFT b=
lock to the XG image of an X300, no static connections. uhd_usrp_probe retu=
rns as expected. I use the attached code to test it out.
When I commit the graph I get the following error:

Traceback (most recent call last):
  File "/home/lorenzo/test_rfnoc_fft.py", line 71, in <module>
    graph.commit()
RuntimeError: ValueError: samples per package must not be smaller than atom=
ic item size

Digging a bit in the libraries I see that it originates from rfnoc_streamer=
.cpp, specifically:
[...]
  if (ais.is_valid()) {
                const auto spp =3D this->rx_streamer_impl::get_max_num_samp=
s();
                if (spp < ais.get()) {
                    throw uhd::value_error("samples per package must not be=
 smaller than atomic item size");
                }
[...]

Has someone encountered this error before?

Thenks,
Lorenzo





Attached code:

    args =3D "addr=3D192.168.30.2"
    graph =3D uhd.rfnoc.RfnocGraph(args)

    radio_ID_A =3D uhd.rfnoc.BlockID(0, "Radio", 0);
    radio_block_A =3D graph.get_block(radio_ID_A);
    radio_ctrl_A =3D uhd.rfnoc.RadioControl(radio_block_A)

    set_freq =3D 300e6
    spp =3D 512
    radio_ctrl_A.set_tx_frequency(set_freq, 0)
    tx_freq =3D radio_ctrl_A.get_tx_frequency(0)
    radio_ctrl_A.set_rx_frequency(set_freq, 0)
    rx_freq =3D radio_ctrl_A.get_rx_frequency(0)
    print("Tuning is TX %.1f, RX: %.1f MHz" % (tx_freq/1e6,rx_freq/1e6 ) )

    radio_ctrl_A.set_properties(f'spp=3D{spp}', 0)
    radio_ctrl_A.set_rx_antenna('RX2',0)
    radio_ctrl_A.set_rate(200e6)


    DDC_ID =3D graph.find_blocks("DDC")[0]
    DDC_block =3D graph.get_block(DDC_ID)
    DDC_control =3D uhd.rfnoc.DdcBlockControl(DDC_block)
    DDC_control.set_input_rate(200e6, 0)
    DDC_control.set_output_rate(5e6, 0)

    FFT_ID =3D graph.find_blocks("FFT")[0]
    FFT_block =3D graph.get_block(FFT_ID)
    FFT_control =3D uhd.rfnoc.FftBlockControl(FFT_block)
    FFT_control.set_length(spp)
    FFT_control.set_magnitude(uhd.libpyuhd.rfnoc.fft_magnitude.COMPLEX)
    FFT_control.set_direction(uhd.libpyuhd.rfnoc.fft_direction.FORWARD)
    FFT_control.set_shift_config(uhd.libpyuhd.rfnoc.fft_shift.REVERSE)

    stream_args =3D uhd.usrp.StreamArgs('fc32','sc16')
    stream_args.args =3D 'spp=3D'+str(spp)
    rx_stream =3D graph.create_rx_streamer(1, stream_args)

    graph.connect(
        radio_ID_A,0,
        DDC_ID,0,
        False
    )
    graph.connect(
        DDC_ID,0,
        FFT_ID,0,
        False
    )

    graph.connect(
        FFT_ID,0,
        rx_stream,0
    )

    graph.commit()

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:usrp-users@lis=
ts.ettus.com>
To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:usr=
p-users-leave@lists.ettus.com>

--_000_BYAPR03MB46787E90B5B3C150770F253DD3AC9BYAPR03MB4678namp_
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
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
Sorry for reviving this thread, I still have found no solution to this prob=
lem.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
I moved my application from python to c++ for performance reasons and the i=
ssue is somehow different.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
I found this old thread about the fft length on rfnoc:&nbsp;<a href=3D"http=
s://www.mail-archive.com/usrp-users@lists.ettus.com/msg07587.html" id=3D"LP=
lnk631100">https://www.mail-archive.com/usrp-users@lists.ettus.com/msg07587=
.html</a></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Apparently you can modify the fft block to accept multiple smaller packets,=
 perform the fft and output multiple packets.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
The drawbacks are that you have to manually reset the fft (to avoid frames =
being mixed in different streams) and that errors will somehow be mishandle=
d.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Has there been any work in this direction? Is the modification as simple as=
 changing some parameter in the xilinx FFT IP definition in uhd?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Would be nice to have this feature by default, I'm trying to implement it, =
regardless&nbsp;of the drawbacks, because in the end I will need a real tim=
e FFT of 2048 samples.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=
=3D"elementToProof ContentPasted0">
Thanks,
<div>Lorenzo</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Tuesday, September 13, 2022 6:54 AM<br>
<b>To:</b> Minutolo, Lorenzo &lt;minutolo@caltech.edu&gt;<br>
<b>Cc:</b> USRP-users@lists.ettus.com &lt;usrp-users@lists.ettus.com&gt;<br=
>
<b>Subject:</b> Re: [USRP-users] RFNOC4, FFT Block, Python</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Lorenzo,
<div>The FFT block requires the number of samples per packet to exactly equ=
al the FFT size.&nbsp; When the graph commits, UHD will try to resolve a pa=
cket size that all of the blocks are happy with.&nbsp; Perhaps if the FFT s=
ize is 2^11, this packet size may be bigger
 than the radio wants to deliver (or bigger than the SPP you specified in t=
he rx_streamer, I don't really know).</div>
<div><br>
</div>
<div>In my opinion, this is a really unnecessary limitation of the stock FF=
T block. With relatively minor changes, this block would not need any linka=
ge between packet size and FFT length.</div>
<div>Rob</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Sep 12, 2022 at 8:20 PM Min=
utolo, Lorenzo &lt;<a href=3D"mailto:minutolo@caltech.edu">minutolo@caltech=
.edu</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div class=3D"x_msg-6585048748708128889">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I'm using UHD 4.2 to play around with RFNOC4. I successfully added an FFT b=
lock to the XG image of an X300, no static connections. uhd_usrp_probe retu=
rns as expected. I use the attached code to test it out.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
When I commit the graph I get the following error:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Traceback (most recent call last):
<div>&nbsp; File &quot;/home/lorenzo/test_rfnoc_fft.py&quot;, line 71, in &=
lt;module&gt;</div>
<div>&nbsp; &nbsp; graph.commit()</div>
<div>RuntimeError: ValueError: samples per package must not be smaller than=
 atomic item size</div>
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Digging a bit in the libraries I see that it originates from rfnoc_streamer=
.cpp, specifically:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
[...]</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp; if (ais.is_valid()) {
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; const auto spp=
 =3D this-&gt;rx_streamer_impl::get_max_num_samps();</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; if (spp &lt; a=
is.get()) {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
throw uhd::value_error(&quot;samples per package must not be smaller than a=
tomic item size&quot;);</div>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
[...]</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Has someone encountered this error before?</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Thenks,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Lorenzo</div>
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
<br>
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
Attached code:</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
&nbsp; &nbsp; args =3D &quot;addr=3D192.168.30.2&quot;
<div>&nbsp; &nbsp; graph =3D uhd.rfnoc.RfnocGraph(args)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; radio_ID_A =3D uhd.rfnoc.BlockID(0, &quot;Radio&quot;, 0=
);</div>
<div>&nbsp; &nbsp; radio_block_A =3D graph.get_block(radio_ID_A);</div>
<div>&nbsp; &nbsp; radio_ctrl_A =3D uhd.rfnoc.RadioControl(radio_block_A)</=
div>
<div><br>
</div>
<div>&nbsp; &nbsp; set_freq =3D 300e6</div>
<div>&nbsp; &nbsp; spp =3D 512</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_tx_frequency(set_freq, 0)</div>
<div>&nbsp; &nbsp; tx_freq =3D radio_ctrl_A.get_tx_frequency(0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rx_frequency(set_freq, 0)</div>
<div>&nbsp; &nbsp; rx_freq =3D radio_ctrl_A.get_rx_frequency(0)</div>
<div>&nbsp; &nbsp; print(&quot;Tuning is TX %.1f, RX: %.1f MHz&quot; % (tx_=
freq/1e6,rx_freq/1e6 ) )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_properties(f'spp=3D{spp}', 0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rx_antenna('RX2',0)</div>
<div>&nbsp; &nbsp; radio_ctrl_A.set_rate(200e6)</div>
<div><br>
</div>
<div><br>
</div>
<div>&nbsp; &nbsp; DDC_ID =3D graph.find_blocks(&quot;DDC&quot;)[0]</div>
<div>&nbsp; &nbsp; DDC_block =3D graph.get_block(DDC_ID)</div>
<div>&nbsp; &nbsp; DDC_control =3D uhd.rfnoc.DdcBlockControl(DDC_block)</di=
v>
<div>&nbsp; &nbsp; DDC_control.set_input_rate(200e6, 0)</div>
<div>&nbsp; &nbsp; DDC_control.set_output_rate(5e6, 0)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; FFT_ID =3D graph.find_blocks(&quot;FFT&quot;)[0]</div>
<div>&nbsp; &nbsp; FFT_block =3D graph.get_block(FFT_ID)</div>
<div>&nbsp; &nbsp; FFT_control =3D uhd.rfnoc.FftBlockControl(FFT_block)</di=
v>
<div>&nbsp; &nbsp; FFT_control.set_length(spp)</div>
<div>&nbsp; &nbsp; FFT_control.set_magnitude(uhd.libpyuhd.rfnoc.fft_magnitu=
de.COMPLEX)</div>
<div>&nbsp; &nbsp; FFT_control.set_direction(uhd.libpyuhd.rfnoc.fft_directi=
on.FORWARD)</div>
<div>&nbsp; &nbsp; FFT_control.set_shift_config(uhd.libpyuhd.rfnoc.fft_shif=
t.REVERSE)</div>
<div><br>
</div>
<div>&nbsp; &nbsp; stream_args =3D uhd.usrp.StreamArgs('fc32','sc16')</div>
<div>&nbsp; &nbsp; stream_args.args =3D 'spp=3D'+str(spp)</div>
<div>&nbsp; &nbsp; rx_stream =3D graph.create_rx_streamer(1, stream_args)</=
div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; radio_ID_A,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; DDC_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; False</div>
<div>&nbsp; &nbsp; )</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; DDC_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; FFT_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; False</div>
<div>&nbsp; &nbsp; )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.connect(</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; FFT_ID,0,</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; rx_stream,0</div>
<div>&nbsp; &nbsp; )</div>
<div><br>
</div>
<div>&nbsp; &nbsp; graph.commit()</div>
<div><br>
</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BYAPR03MB46787E90B5B3C150770F253DD3AC9BYAPR03MB4678namp_--

--===============8300414827429031650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8300414827429031650==--

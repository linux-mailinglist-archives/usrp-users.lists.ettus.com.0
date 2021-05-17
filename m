Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B993D383A47
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 18:45:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7D004384170
	for <lists+usrp-users@lfdr.de>; Mon, 17 May 2021 12:45:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=live.com header.i=@live.com header.b="J1L8m6xL";
	dkim-atps=neutral
Received: from KOR01-PS2-obe.outbound.protection.outlook.com (mail-ps2kor01olkn0182.outbound.protection.outlook.com [104.47.109.182])
	by mm2.emwd.com (Postfix) with ESMTPS id CFF8538411E
	for <usrp-users@lists.ettus.com>; Mon, 17 May 2021 12:44:45 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hUMkJlZJfA0768gmTaiz78BdqRt/7gvdgtvcabPHKsA197zACkKuRoZ3Ye2qnv9Q0U9wnMn4aHBXEVdBIZ+JHnCxlHhp+WiCZph2ClR62Xfkf12ZIAs7jFot/oyQKtr/1wV4OGFhB9RKt4yTXUx5gpMiQfsQp4VgFCYtPs6q4xle21oANk44H7L2QjDOuIpBxQ93MqhnyAoyLyN3hY9a7I2I2EIIXF5/VgRNeoMrb25UmuDG88shdy1oAiJqxzDQ98mI1tbsxhVjHto3sSUQGP0wiwNY5u/1T4pYMZPejTXmCLya+yajZHDC7+pnkMQr6n0xuGuTOdAoPCc1OZ5uGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H5nTueq92mriUMZO/hE3SEdHnU1xlvULQOzjq6u5rbA=;
 b=hRVjK3KNPf3oZ0GhsExnfXfAG1MOBdJ+hIMDbZ6d+X04MjCkvoCiEFnbSOrevw2wqghoAz5ZWDX8PW7J3Hj0XgqoQhIcZs891+k8yQsLpRE79+wD1hmpgUF9P82x3V86O2kx3KKQeT9fGPWLp1aXcXYoQOT4EtthLQwkZ8zDc/Pat+AILOd2EeqIYbL66Q6fsY1zfl4m5Hwbgguq5Udcdwbckq9fJejOKbUQY3mhHIGP0rfdGzun0BeVrlFRiODeAzkDifhsMZcBqjnR8lNamEivmA3MpO42ub9ozOAB8zsQhrs/uq0Xug7ub48XJI7isldGhMNTJ02NfV3Omcevag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=H5nTueq92mriUMZO/hE3SEdHnU1xlvULQOzjq6u5rbA=;
 b=J1L8m6xLA3nPM1bnrNha1k/PjlYX7jxjQaIPWDFJhltK9UOO3sIeuQr8PHd/REYNeF96znc7il9zoXsr91fFRIdPK5uPtwytaPX6xKB6QYPf2wI2UGzR+0RPRoxuuNVAs2TcrVfMgOzGUj9cu24JbPE2zRJUIctda2gbmAu7DKXXiu6qkQMcZFgkwk+0fJ3o3yb/Z7VxxPDKuYXuSPEik+bGtfnEzMKjLVTWK/pm2TkLfzkhXGNl7bxeR2X/RHlTy6I1iBLwwkEyQf+feTrbgUNVGoQLP658eRqIhURUNeSimObcKHOZ1lhNk5GIY3WUY9k2CwsXZC3RiwAVv4Gz0Q==
Received: from SLXP216CA0025.KORP216.PROD.OUTLOOK.COM (2603:1096:100:4::11) by
 PS2PR01MB2517.apcprd01.prod.exchangelabs.com (2603:1096:300:31::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Mon, 17 May
 2021 16:44:42 +0000
Received: from PU1APC01FT061.eop-APC01.prod.protection.outlook.com
 (2603:1096:100:4:cafe::4f) by SLXP216CA0025.outlook.office365.com
 (2603:1096:100:4::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.30 via Frontend
 Transport; Mon, 17 May 2021 16:44:42 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 (2a01:111:e400:7ebe::40) by PU1APC01FT061.mail.protection.outlook.com
 (2a01:111:e400:7ebe::280) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25 via Frontend
 Transport; Mon, 17 May 2021 16:44:42 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::9c13:cf2d:150c:d9f6]) by BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::9c13:cf2d:150c:d9f6%7]) with mapi id 15.20.4129.031; Mon, 17 May 2021
 16:44:40 +0000
From: Snehasish Kar <snehasish.cse@LIVE.COM>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Timeout while streaming IQ samples to host in RFNOC
Thread-Index: AQHXSzp6QhVokXZk/0mh1CholCzPtQ==
Date: Mon, 17 May 2021 16:44:40 +0000
Message-ID: 
 <BMXPR01MB24699C6422B8AF56601B87FA882D9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:1B9233F8D7BF04E6CB693EDBDCEAB2787BEFEFEFFC932A1C441A3B93F48B88D3;UpperCasedChecksum:869C7E29E8751C110E3F35946F1A9ECFA14C7BC070D062FBA94422394EA17DDD;SizeAsReceived:6667;Count:41
x-tmn: [FPUxSrlVZtrcvZR/FiKGVgcpacHahRuw]
x-ms-publictraffictype: Email
x-incomingheadercount: 41
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 1083a515-093c-4c55-1e64-08d919531111
x-ms-traffictypediagnostic: PS2PR01MB2517:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 BU3DKguaPhpRgO9vyTT5rTSHqy/T6bnSLs+bJMJkuBa9sbPgU4xjzHdYV5r9QQUnyfass/pZBf4GDJtsZv5AaF56qpOJKihHdwpD/ZJsqKvVCOP0BuUFHKq6BnEsi1A2pLiGib9Srd5wS0V5Zni6d7b8a/BqiqNR6M+rmqC7gsB3M5VeHdUiZ+wmwS4BtedU4c0me7DrnM0G+3LYI7F0vDOLB+34jwZ++pauuWIKCXuptn21MSstV8JtH065bOEirwpVLv4fKcQtRZORPjMLOlJqKFoRVIeFvqk9/rcHY5A6r4OoXVEELzQqR2/ijQR8Qf5brE403eEMYeH+Jfjs9i2vOe3S8V68PsevGwIFjDGGtVWfGN8no1yMP0LPWNM6Hn9wYdh9jBKE+G0UNlQYmm9L3I2GoxP9STgE9Y/nPV2TcxmOkmivQus1hs5p6TUdLMdgicfkKN7tjA2m7Jdukmn1q6r9udE3e5AYER1v7jM=
x-ms-exchange-antispam-messagedata: 
 7f3OrV6w+bBFnVD+eOatL7ffO3cD9rC3+awHNCY7TujZ4hRKE7Enx2M/N1jKxYQC2R/tBqE4mc/7iVTl/cmCpE1t3qXa87tCpSjtWy3lGlOWZnTHMpAugde+eFItJnPu4oh3RnNt6QrFEtZt6JfkSw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-5c337.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT061.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1083a515-093c-4c55-1e64-08d919531111
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2021 16:44:40.8140
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS2PR01MB2517
Message-ID-Hash: NWIGV7WOZOJWGTDEBHZHSCH7XDUSFJKE
X-Message-ID-Hash: NWIGV7WOZOJWGTDEBHZHSCH7XDUSFJKE
X-MailFrom: snehasish.cse@LIVE.COM
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Timeout while streaming IQ samples to host in RFNOC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RNMGD6RHVPWSHSAXCDN26EIQBRHEIOW2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8047646767723279032=="

--===============8047646767723279032==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB24699C6422B8AF56601B87FA882D9BMXPR01MB2469INDP_"

--_000_BMXPR01MB24699C6422B8AF56601B87FA882D9BMXPR01MB2469INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello

I am using the below code to stream IQ samples to host using RFNOC, but whi=
le streaming I am getting timeout. My rfnoc graph looks something like this=
:
Radio_0=3D>fifo=3D>fir_filter=3D>fifo=3D>host
Radio_1=3D>fifo=3D>fir_filter=3D>fifo=3D>host

With the above flowgraph we are able to stream samples in gnuradio.

Sample rate used: 100msps
Host PC configuration: intel i7 processor 9th gen
                                       RAM: 8GB
Interface: PCIE express
UHD version: UHD_3.14.1.0-0-unknown

Below is the output of  uhd_usrp_probe:

:~/Desktop/uhd_rfnoc_file_writter/Debug$ uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_3.14.1.0-0-unk=
nown
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Connecting to niusrpriorpc at localhost:5444...
[INFO] [X300] Using LVBITX bitfile /usr/local/share/uhd/images/usrp_x310_fp=
ga_XG.lvbitx...
[INFO] [X300] Radio 1x clock: 200 MHz
[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
[WARNING] [GPS] update_cache: Malformed GPSDO string: LC_XO, Firmware Rev 0=
.929a
[INFO] [0/DmaFIFO_0] Initializing block control (NOC ID: 0xF1F0D00000000000=
)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 MB/s)
[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 MB/s)
[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/Radio_1] Initializing block control (NOC ID: 0x12AD100000000001)
[INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/DDC_1] Initializing block control (NOC ID: 0xDDC0000000000000)
[INFO] [0/FIR_0] Initializing block control (NOC ID: 0xF112000000000000)
[INFO] [0/FIR_1] Initializing block control (NOC ID: 0xF112000000000000)
[INFO] [0/DUC_0] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
[INFO] [0/FIFO_0] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_1] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_2] Initializing block control (NOC ID: 0xF1F0000000000000)
[INFO] [0/FIFO_3] Initializing block control (NOC ID: 0xF1F0000000000000)
[WARNING] [X300] Cannot update master clock rate! X300 Series does not allo=
w changing the clock rate during runtime.
  _____________________________________________________
/
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 11
|   |   revision_compat: 7
|   |   product: 30960
|   |   mac-addr0: 00:80:2f:18:de:4d
|   |   mac-addr1: 00:80:2f:18:de:4e
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 314B293
|   |   FW Version: 6.0
|   |   FPGA Version: 35.1
|   |   FPGA git hash: fffffff-dirty
|   |   RFNoC capable: Yes
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: gps_gpgga, gps_gprmc, gps_time, gps_locked, gps_servo, ref=
_locked
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: A
|   |   |   ID: TwinRX Rev B (0x0093)
|   |   |   Serial: 3147FB8
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: TwinRX RX0
|   |   |   |   Antennas: RX1, RX2
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 93.0 step 1.0 dB
|   |   |   |   Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz
|   |   |   |   Connection Type: II
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 1
|   |   |   |   Name: TwinRX RX1
|   |   |   |   Antennas: RX1, RX2
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 93.0 step 1.0 dB
|   |   |   |   Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: A
|   |   |   |   Name: ads62p48
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
|   |     _____________________________________________________
|   |    /
|   |   |       RX Dboard: B
|   |   |   ID: TwinRX Rev B (0x0093)
|   |   |   Serial: 3147FC1
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 0
|   |   |   |   Name: TwinRX RX0
|   |   |   |   Antennas: RX1, RX2
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 93.0 step 1.0 dB
|   |   |   |   Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz
|   |   |   |   Connection Type: II
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Frontend: 1
|   |   |   |   Name: TwinRX RX1
|   |   |   |   Antennas: RX1, RX2
|   |   |   |   Sensors: lo_locked
|   |   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   |   Gain range all: 0.0 to 93.0 step 1.0 dB
|   |   |   |   Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz
|   |   |   |   Connection Type: QQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       RX Codec: B
|   |   |   |   Name: ads62p48
|   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: A
|   |   |   ID: Unknown (0x0092)
|   |   |   Serial: 3147FB8
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: Unknown (0x0092) - 0
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: 0.000 to 0.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: A
|   |   |   |   Name: ad9146
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       TX Dboard: B
|   |   |   ID: Unknown (0x0092)
|   |   |   Serial: 3147FC1
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Frontend: 0
|   |   |   |   Name: Unknown (0x0092) - 0
|   |   |   |   Antennas:
|   |   |   |   Sensors:
|   |   |   |   Freq range: 0.000 to 0.000 MHz
|   |   |   |   Gain Elements: None
|   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|   |   |   |   Connection Type: IQ
|   |   |   |   Uses LO offset: No
|   |   |     _____________________________________________________
|   |   |    /
|   |   |   |       TX Codec: B
|   |   |   |   Name: ad9146
|   |   |   |   Gain Elements: None
|   |     _____________________________________________________
|   |    /
|   |   |       RFNoC blocks on this device:
|   |   |
|   |   |   * DmaFIFO_0
|   |   |   * Radio_0
|   |   |   * Radio_1
|   |   |   * DDC_0
|   |   |   * DDC_1
|   |   |   * FIR_0
|   |   |   * FIR_1
|   |   |   * DUC_0
|   |   |   * DUC_1
|   |   |   * FIFO_0
|   |   |   * FIFO_1
|   |   |   * FIFO_2
|   |   |   * FIFO_3

Source code:

void uhd_interface::start_streamming(int32_t num_samples_to_receive, int16_=
t max_channels, uint64_t samples_per_burst, int32_t total_no_of_samps) {
              uhd::rx_metadata_t md;
              bool overflow_message =3D true;
              try {
                           uhd::rfnoc::graph::sptr rx_graph =3D usrp_rfnoc-=
>create_graph("antidrone_rx_chain");
                           usrp_rfnoc->clear();
                           //rx_graph->connect(radio_ctrl[0]->get_block_id(=
), fifo_ctrl[0]->get_block_id());
                           //rx_graph->connect(fifo_ctrl[0]->get_block_id()=
, fir_ctrl[0]->get_block_id());
                           //rx_graph->connect(fir_ctrl[0]->get_block_id(),=
 fifo_ctrl[1]->get_block_id());

                           //rx_graph->connect(radio_ctrl[1]->get_block_id(=
), fifo_ctrl[2]->get_block_id());
                           //rx_graph->connect(fifo_ctrl[2]->get_block_id()=
, fir_ctrl[1]->get_block_id());
                           //rx_graph->connect(fir_ctrl[1]->get_block_id(),=
 fifo_ctrl[3]->get_block_id());

                           rx_graph->connect(radio_ctrl[0]->get_block_id(),=
 0, fifo_ctrl[1]->get_block_id(), 0);


              } catch (const std::exception& ex) {
                           char msg[100]=3D{0x00};
                           sprintf(msg,"error: unable to create/set a radio=
/parameter %s", ex.what());
                           log_printf(msg, error_lvl, __FILE__, __LINE__);
              }
              uhd::device_addr_t stream_args_rfnoc;
              std::vector<std::string> block_port{"0", "1"};
              stream_args_rfnoc["block_id"] =3D   fifo_ctrl[1]->get_block_i=
d().to_string();
              stream_args_rfnoc["block_port"] =3D block_port[0];
              //stream_args_rfnoc["block_id"] =3D fifo_ctrl[3]->get_block_i=
d().to_string();
              //stream_args_rfnoc["block_port"] =3D block_port[1];
              uhd::stream_args_t stream_args("sc16","sc16");
              stream_args.args =3D stream_args_rfnoc;
              size_t spp =3D radio_ctrl[0]->get_args().cast<size_t>("spp", =
spp);
              stream_args.args["spp"] =3D boost::lexical_cast<std::string>(=
spp); //TODO: considering 1000 samples but check
              rx_stream =3D uhd_src->get_rx_stream(stream_args);
              {
                           char msg[100]=3D{0x00};
                           sprintf(msg, "info: Daemon launched with pid %d"=
, getpid());
                           log_printf(msg, error_lvl, __FILE__, __LINE__);
              }
              //samples_per_burst =3D 1000;
              uhd::stream_cmd_t stream_cmd(/*uhd::stream_cmd_t::STREAM_MODE=
_START_CONTINUOUS*/ uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_AND_DONE);
              stream_cmd.num_samps  =3D total_no_of_samps;
              stream_cmd.stream_now =3D true;
              //stream_cmd.time_spec =3D  uhd_src->get_time_now() + ::uhd::=
time_spec_t(0.1);//time_spec;
              rx_stream->issue_stream_cmd(stream_cmd);
              samples_per_burst =3D rx_stream->get_max_num_samps();
              std::vector<std::vector<std::complex<float>>> buffer_data(max=
_channels, std::vector<std::complex<float> >(samples_per_burst));
              std::vector<void *> buffs(max_channels);
              for(int8_t i =3D 0;i<max_channels;i++) {
                           buffs[i] =3D &buffer_data[i].front();
              }
              uint64_t total_samps_recvd =3D0x00;
              int32_t total_size_wrote_to_file =3D0x00;
              int32_t counter =3D 0x00;
              //std::complex<float> array1[100000][1000]{{0x00}};
              //std::complex<float> array2[100000][1000]{{0x00}};
              //fprintf(stderr,"total num of samps %d\n", total_no_of_samps=
);
              while(!stop_rx and ((total_samps_recvd!=3Dtotal_no_of_samps) =
or (total_no_of_samps=3D=3D0x00))) {
                           buffs.clear();
                           size_t num_rx_samps =3D 0x00;
                           try {
                                         num_rx_samps =3D rx_stream->recv(b=
uffs, samples_per_burst, md, 1.0);
                                         if(error_lvl=3D=3D3) {
                                                       char msg[700]=3D{0x0=
0};
                                                       sprintf(msg,"\n=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D\n  Number of samples received %u\n=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D", num=
_rx_samps);
                                                       log_printf(msg, erro=
r_lvl, __FILE__, __LINE__);
                                                       //std::cout << "tota=
l_samps_recvd : " << total_samps_recvd << "  total_no_of_samps : " << total=
_no_of_samps << "\n";
                                         }
                           } catch (const std::exception& ex){
                                         char msg[100]=3D{0x00};
                                         sprintf(msg,"error: error while st=
reaming %s", ex.what());
                                         log_printf(msg, error_lvl, __FILE_=
_, __LINE__);
                           }
                           if (md.error_code =3D=3D uhd::rx_metadata_t::ERR=
OR_CODE_TIMEOUT) {
                              log_printf("error: timeout while streaming", =
error_lvl, __FILE__, __LINE__);
                              break;
                           }
                           if (md.error_code =3D=3D uhd::rx_metadata_t::ERR=
OR_CODE_OVERFLOW) {
                                         if (overflow_message) {
                                                       overflow_message =3D=
 false;
                                                       log_printf("error: o=
verflow detected", error_lvl, __FILE__, __LINE__);
                                         }
                                         continue;
                           }
                           if (md.error_code !=3D uhd::rx_metadata_t::ERROR=
_CODE_NONE){
                                         char msg[100]=3D{0x00};
                                         sprintf(msg,"error: %s",md.strerro=
r());
                                         log_printf(msg , error_lvl, __FILE=
__, __LINE__);
                           }
                           total_samps_recvd+=3Dnum_rx_samps;
#if 1
                           //Read IQ samples from usrp and store the in the=
 FILE
                           for(int32_t i=3D0;i<max_channels;i++) {
                                         FILE *fp =3D fopen(file_name[i],"a=
+");
                                         size_t len =3D fwrite(&buffer_data=
[i].front(), sizeof(std::complex<float>), num_rx_samps, fp);
                                         fclose(fp);
                           }
#endif
#if 0
                           //Read IQ samples from usrp and store the in the=
 FILE
                           for(int32_t i=3D0;i<max_channels;i++) {
                                         switch(i) {
                                         case 0: memcpy(array1[counter], &b=
uffer_data[i].front(), sizeof(std::complex<float>)*num_rx_samps); break;
                                         case 1: memcpy(array2[counter], &b=
uffer_data[i].front(), sizeof(std::complex<float>)*num_rx_samps); break;
                                         }
                           }
                           counter++;
#endif
              }
              fprintf(stderr, "total samples received file: %d\n", total_sa=
mps_recvd);
              log_printf("warning: stopping streaming mode", error_lvl, __F=
ILE__, __LINE__);
              log_printf("warning: buffer flush started!", error_lvl, __FIL=
E__, __LINE__);
              uhd::stream_cmd_t stream_cmd_stop(uhd::stream_cmd_t::STREAM_M=
ODE_STOP_CONTINUOUS);
              rx_stream->issue_stream_cmd(stream_cmd_stop);
              //std::cout << "total_samps_recvd : " << total_samps_recvd <<=
 "  total_no_of_samps : " << total_no_of_samps << "\n";
#if 0
              constexpr double timeout { 0.010 }; //10ms
              static std::complex<short> dummy_buffer[50000000];
              static uhd::rx_metadata_t dummy_meta { };
              while (rx_stream->recv(dummy_buffer, 50000000, dummy_meta, ti=
meout)) {}
              uhd_src->clear_command_time(); //Reset all time counters unti=
ll next tune!!
              log_printf("warning: buffer flush completed!", error_lvl, __F=
ILE__, __LINE__);
#endif
}


Hoping for an early reply.

Regards
Snehasish

Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10


--_000_BMXPR01MB24699C6422B8AF56601B87FA882D9BMXPR01MB2469INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-IN" link=3D"blue" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using the below code to st=
ream IQ samples to host using RFNOC, but while streaming I am getting timeo=
ut. My rfnoc graph looks something like this:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Radio_0=3D&gt;fifo=3D&gt;fir_fi=
lter=3D&gt;fifo=3D&gt;host<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Radio_1=3D&gt;fifo=3D&gt;fir_fi=
lter=3D&gt;fifo=3D&gt;host<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">With the above flowgraph we are=
 able to stream samples in gnuradio.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Sample rate used: 100msps<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Host PC configuration: intel i7=
 processor 9<sup>th</sup> gen<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RAM: 8GB<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Interface: PCIE express<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">UHD version: UHD_3.14.1.0-0-unk=
nown<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Below is the output of&nbsp; uh=
d_usrp_probe:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">:~/Desktop/uhd_rfnoc_file_writt=
er/Debug$ uhd_usrp_probe
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [UHD] linux; GNU C++ ver=
sion 7.5.0; Boost_106501; UHD_3.14.1.0-0-unknown<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [X300] X300 initializati=
on sequence...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [X300] Connecting to niu=
srpriorpc at localhost:5444...<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [X300] Using LVBITX bitf=
ile /usr/local/share/uhd/images/usrp_x310_fpga_XG.lvbitx...<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [X300] Radio 1x clock: 2=
00 MHz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [GPS] Found an internal =
GPSDO: LC_XO, Firmware Rev 0.929a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[WARNING] [GPS] update_cache: M=
alformed GPSDO string: LC_XO, Firmware Rev 0.929a<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] Initializi=
ng block control (NOC ID: 0xF1F0D00000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] BIST passe=
d (Throughput: 1311 MB/s)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] BIST passe=
d (Throughput: 1315 MB/s)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/Radio_0] Initializing=
 block control (NOC ID: 0x12AD100000000001)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/Radio_1] Initializing=
 block control (NOC ID: 0x12AD100000000001)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/DDC_0] Initializing b=
lock control (NOC ID: 0xDDC0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/DDC_1] Initializing b=
lock control (NOC ID: 0xDDC0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIR_0] Initializing b=
lock control (NOC ID: 0xF112000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIR_1] Initializing b=
lock control (NOC ID: 0xF112000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/DUC_0] Initializing b=
lock control (NOC ID: 0xD0C0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/DUC_1] Initializing b=
lock control (NOC ID: 0xD0C0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIFO_0] Initializing =
block control (NOC ID: 0xF1F0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIFO_1] Initializing =
block control (NOC ID: 0xF1F0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIFO_2] Initializing =
block control (NOC ID: 0xF1F0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIFO_3] Initializing =
block control (NOC ID: 0xF1F0000000000000)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[WARNING] [X300] Cannot update =
master clock rate! X300 Series does not allow changing the clock rate durin=
g runtime.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp; ________________________=
_____________________________<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">/<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; Device: X-Series Device<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp;&nbsp; _____=
________________________________________________<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp; /<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; Mboard: X310<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; rev=
ision: 11<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; rev=
ision_compat: 7<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; pro=
duct: 30960<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; mac=
-addr0: 00:80:2f:18:de:4d<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; mac=
-addr1: 00:80:2f:18:de:4e<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; gat=
eway: 192.168.10.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-=
addr0: 192.168.10.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; sub=
net0: 255.255.255.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-=
addr1: 192.168.20.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; sub=
net1: 255.255.255.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-=
addr2: 192.168.30.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; sub=
net2: 255.255.255.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-=
addr3: 192.168.40.2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; sub=
net3: 255.255.255.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ser=
ial: 314B293<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; FW =
Version: 6.0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; FPG=
A Version: 35.1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; FPG=
A git hash: fffffff-dirty<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; RFN=
oC capable: Yes<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; <o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; Tim=
e sources:&nbsp; internal, external, gpsdo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; Clo=
ck sources: internal, external, gpsdo<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; Sen=
sors: gps_gpgga, gps_gprmc, gps_time, gps_locked, gps_servo, ref_locked<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard: A<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; ID: TwinRX Rev B (0x0093)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Serial: 3147FB8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp; ____________________________________________________=
_<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 0<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Name: TwinRX RX0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; | &=
nbsp;&nbsp;|&nbsp;&nbsp; Antennas: RX1, RX2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 to 6000.000 MHz<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0=
 Hz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Connection Type: II<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp; ____________________________________________________=
_<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 1<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Name: TwinRX RX1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Antennas: RX1, RX2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 to 6000.000 MHz<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0=
 Hz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Connection Type: QQ<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp; ____________________________________________________=
_<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec: A<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Name: ads62p48<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Gain range digital: 0.0 to 6.0 step 0.5 dB<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard: B<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; ID: TwinRX Rev B (0x0093)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Serial: 3147FC1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp; ____________________________________________________=
_<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;RX Frontend: 0<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Name: TwinRX RX0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Antennas: RX1, RX2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 to 6000.000 MHz<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0=
 Hz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Connection Type: II<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp; ____________________________________________________=
_<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 1<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Name: TwinRX RX1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Antennas: RX1, RX2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 to 6000.000 MHz<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0=
 Hz<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Connection Type: QQ<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp; ____________________________________________________=
_<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec: B<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Name: ads62p48<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Gain range digital: 0.0 to 6.0 step 0.5 dB<o:p></o=
:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard: A<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; ID: Unknown (0x0092)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Serial: 3147FB8<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp; ____________________________________________________=
_<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Frontend: 0<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Name: Unknown (0x0092) - 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Antennas: <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Sensors: <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Freq range: 0.000 to 0.000 MHz<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 0.0 to 0.0 step 0.0 Hz<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp; ____________________________________________________=
_<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; | &nbsp;&nbsp;|&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Codec: A<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Name: ad9146<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard: B<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; ID: Unknown (0x0092)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Serial: 3147FC1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp; ____________________________________________________=
_<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Frontend: 0<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Name: Unknown (0x0092) - 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Antennas: <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp; &nbsp;|&n=
bsp;&nbsp; |&nbsp;&nbsp; Sensors: <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Freq range: 0.000 to 0.000 MHz<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 0.0 to 0.0 step 0.0 Hz<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp; ____________________________________________________=
_<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Codec: B<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Name: ad9146<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFNoC blocks on this device:<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * DmaFIFO_0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * Radio_0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * Radio_1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * DDC_0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * DDC_1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * FIR_0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * FIR_1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * DUC_0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * DUC_1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * FIFO_0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * FIFO_1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * FIFO_2<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; * FIFO_3<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Source code:<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">void uhd_interface::start_strea=
mming(int32_t num_samples_to_receive, int16_t max_channels, uint64_t sample=
s_per_burst, int32_t total_no_of_samps) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::rx_metadata_t md;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool overflow_message =3D t=
rue;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::rfnoc::graph::sptr =
rx_graph =3D usrp_rfnoc-&gt;create_graph(&quot;antidrone_rx_chain&quot;);<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_rfnoc-&gt;clear();<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(r=
adio_ctrl[0]-&gt;get_block_id(), fifo_ctrl[0]-&gt;get_block_id());<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(f=
ifo_ctrl[0]-&gt;get_block_id(), fir_ctrl[0]-&gt;get_block_id());<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(f=
ir_ctrl[0]-&gt;get_block_id(), fifo_ctrl[1]-&gt;get_block_id());<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(r=
adio_ctrl[1]-&gt;get_block_id(), fifo_ctrl[2]-&gt;get_block_id());<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(f=
ifo_ctrl[2]-&gt;get_block_id(), fir_ctrl[1]-&gt;get_block_id());<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(f=
ir_ctrl[1]-&gt;get_block_id(), fifo_ctrl[3]-&gt;get_block_id());<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_graph-&gt;connect(rad=
io_ctrl[0]-&gt;get_block_id(), 0, fifo_ctrl[1]-&gt;get_block_id(), 0);<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } catch (const std::excepti=
on&amp; ex) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;error:=
 unable to create/set a radio/parameter %s&quot;, ex.what());<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, error_lv=
l, __FILE__, __LINE__);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::device_addr_t stream_a=
rgs_rfnoc;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;std::string&=
gt; block_port{&quot;0&quot;, &quot;1&quot;};<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args_rfnoc[&quot;blo=
ck_id&quot;] =3D&nbsp;&nbsp; fifo_ctrl[1]-&gt;get_block_id().to_string();<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args_rfnoc[&quot;blo=
ck_port&quot;] =3D block_port[0];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_args_rfnoc[&quot;b=
lock_id&quot;] =3D fifo_ctrl[3]-&gt;get_block_id().to_string();<o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_args_rfnoc[&quot;b=
lock_port&quot;] =3D block_port[1];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_args_t stream_a=
rgs(&quot;sc16&quot;,&quot;sc16&quot;);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args.args =3D stream=
_args_rfnoc;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t spp =3D radio_ctrl[0=
]-&gt;get_args().cast&lt;size_t&gt;(&quot;spp&quot;, spp);<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args.args[&quot;spp&=
quot;] =3D boost::lexical_cast&lt;std::string&gt;(spp); //TODO: considering=
 1000 samples but check<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream =3D uhd_src-&gt;g=
et_rx_stream(stream_args);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg, &quot;info:=
 Daemon launched with pid %d&quot;, getpid());<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, error_lv=
l, __FILE__, __LINE__);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //samples_per_burst =3D 100=
0;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_cmd_t stream_cm=
d(/*uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS*/ uhd::stream_cmd_t::ST=
REAM_MODE_NUM_SAMPS_AND_DONE);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_cmd.num_samps&nbsp; =
=3D total_no_of_samps;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_cmd.stream_now =3D t=
rue;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_cmd.time_spec =3D&=
nbsp; uhd_src-&gt;get_time_now() + ::uhd::time_spec_t(0.1);//time_spec;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream-&gt;issue_stream_=
cmd(stream_cmd);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; samples_per_burst =3D rx_st=
ream-&gt;get_max_num_samps();<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;std::vector&=
lt;std::complex&lt;float&gt;&gt;&gt; buffer_data(max_channels, std::vector&=
lt;std::complex&lt;float&gt; &gt;(samples_per_burst));<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;void *&gt; b=
uffs(max_channels);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int8_t i =3D 0;i&lt;max=
_channels;i++) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buffs[i] =3D &amp;buffer=
_data[i].front();<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint64_t total_samps_recvd =
=3D0x00;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int32_t total_size_wrote_to=
_file =3D0x00;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int32_t counter =3D 0x00;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std::complex&lt;float&gt;=
 array1[100000][1000]{{0x00}};<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std::complex&lt;float&gt;=
 array2[100000][1000]{{0x00}};<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //fprintf(stderr,&quot;tota=
l num of samps %d\n&quot;, total_no_of_samps);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while(!stop_rx and ((total_=
samps_recvd!=3Dtotal_no_of_samps) or (total_no_of_samps=3D=3D0x00))) {<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buffs.clear();<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t num_rx_samps =3D =
0x00;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num_rx_samps =
=3D rx_stream-&gt;recv(buffs, samples_per_burst, md, 1.0);<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(error_lvl=3D=
=3D3) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char m=
sg[700]=3D{0x00};<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg=
,&quot;\n=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D\n&nbsp; Number of samples received %u\n=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D&quot;,
 num_rx_samps);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_pr=
intf(msg, error_lvl, __FILE__, __LINE__);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std:=
:cout &lt;&lt; &quot;total_samps_recvd : &quot; &lt;&lt; total_samps_recvd =
&lt;&lt; &quot;&nbsp; total_no_of_samps : &quot; &lt;&lt; total_no_of_samps=
 &lt;&lt; &quot;\n&quot;;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } catch (const std::exce=
ption&amp; ex){<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=
=3D{0x00};<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&qu=
ot;error: error while streaming %s&quot;, ex.what());<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg,=
 error_lvl, __FILE__, __LINE__);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code =3D=3D=
 uhd::rx_metadata_t::ERROR_CODE_TIMEOUT) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; log_printf(=
&quot;error: timeout while streaming&quot;, error_lvl, __FILE__, __LINE__);=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; break;<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code =3D=3D=
 uhd::rx_metadata_t::ERROR_CODE_OVERFLOW) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (overflow_me=
ssage) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; overfl=
ow_message =3D false;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_pr=
intf(&quot;error: overflow detected&quot;, error_lvl, __FILE__, __LINE__);<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue;<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code !=3D u=
hd::rx_metadata_t::ERROR_CODE_NONE){<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=
=3D{0x00};<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&qu=
ot;error: %s&quot;,md.strerror());<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg =
, error_lvl, __FILE__, __LINE__);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; total_samps_recvd+=3Dnum=
_rx_samps;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">#if 1<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Read IQ samples from u=
srp and store the in the FILE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int32_t i=3D0;i&lt;m=
ax_channels;i++) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FILE *fp =3D fo=
pen(file_name[i],&quot;a+&quot;);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t len =3D =
fwrite(&amp;buffer_data[i].front(), sizeof(std::complex&lt;float&gt;), num_=
rx_samps, fp);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fclose(fp);<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">#endif<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">#if 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Read IQ samples from u=
srp and store the in the FILE<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int32_t i=3D0;i&lt;m=
ax_channels;i++) {<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; switch(i) {<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case 0: memcpy(=
array1[counter], &amp;buffer_data[i].front(), sizeof(std::complex&lt;float&=
gt;)*num_rx_samps); break;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case 1: memcpy(=
array2[counter], &amp;buffer_data[i].front(), sizeof(std::complex&lt;float&=
gt;)*num_rx_samps); break;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; counter++;<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">#endif<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fprintf(stderr, &quot;total=
 samples received file: %d\n&quot;, total_samps_recvd);<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning: s=
topping streaming mode&quot;, error_lvl, __FILE__, __LINE__);<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning: b=
uffer flush started!&quot;, error_lvl, __FILE__, __LINE__);<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_cmd_t stream_cm=
d_stop(uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS);<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream-&gt;issue_stream_=
cmd(stream_cmd_stop);<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std::cout &lt;&lt; &quot;=
total_samps_recvd : &quot; &lt;&lt; total_samps_recvd &lt;&lt; &quot;&nbsp;=
 total_no_of_samps : &quot; &lt;&lt; total_no_of_samps &lt;&lt; &quot;\n&qu=
ot;;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">#if 0<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; constexpr double timeout { =
0.010 }; //10ms<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; static std::complex&lt;shor=
t&gt; dummy_buffer[50000000];<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; static uhd::rx_metadata_t d=
ummy_meta { };<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while (rx_stream-&gt;recv(d=
ummy_buffer, 50000000, dummy_meta, timeout)) {}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd_src-&gt;clear_command_t=
ime(); //Reset all time counters untill next tune!!<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning: b=
uffer flush completed!&quot;, error_lvl, __FILE__, __LINE__);<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">#endif<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hoping for an early reply.<o:p>=
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Snehasish</span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986">
Mail</a> for Windows 10</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BMXPR01MB24699C6422B8AF56601B87FA882D9BMXPR01MB2469INDP_--

--===============8047646767723279032==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8047646767723279032==--

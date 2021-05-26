Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2D9391DDA
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 19:21:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AEA053843AD
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 13:21:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=live.com header.i=@live.com header.b="V2v++qQf";
	dkim-atps=neutral
Received: from APC01-SG2-obe.outbound.protection.outlook.com (mail-oln040092253088.outbound.protection.outlook.com [40.92.253.88])
	by mm2.emwd.com (Postfix) with ESMTPS id 21720383F00
	for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 13:20:09 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kc1rjJQjpoycPFqrygOHOo+QEL90f3C466pgM/XnzSrYfZRqPxk2u8aTkHl5YH4q1blBnnqIjcLMxcNLlkuvV86GhOH8WD7HMj5i1fKr2wTy2XEB3JSb95L/nTSU5Dw3J6oL/ecRnsZ8GiXggaIV4xsOK9I6aHXzzk2kF1II0AIiZOM7C1cHCeatgpXEi/wLAL54c2ouzkZkWwfRp9gqdZfApPEP2A/Psg+MkBsC+zJfO8bbcTly0HJoK8ScBgfBDqxRJ9IDtPpSxQ2dJRwCY7rBPrQtG+8pb0oYyRHt8cVg6oR83f0hqCNOv2nMGuLiwKvEIUlWid2hUjrAvns9ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QBauU4DDx2/ZOPTKg301RG6fZDg8EbqmTfQ62/BuRVI=;
 b=lDUJdgulU/Tm+zXYHlZGoNUA02yL81jHitbGXl12wHh/8cHS0ODUDNvAj6wLcpV6ioFuRM2I9nNeuzfQTOmckAw8HHcOAYhGdzCXcdMQ3wnMVSlvBz0uXq+zAeuHwlh/L4Gp/OpQww+TWeypMToGk5RGwjFDxw8paHALacqg6uzcp5JlzrFu1o5KFThXwT8lGlkSNx26URuw+yp/BJ4C0aPCHlAI70BR53BMQ9qdl+t/REzxk1ZMHRAbDc7Dy30iscMexcMfHVXLrO2ogaJVP41Dw1AsO1wmkFIbdA3JMfmwaAJ0g+VztNHzKD0v5ZszCiY9X/FqhjyOfSmnv1weVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QBauU4DDx2/ZOPTKg301RG6fZDg8EbqmTfQ62/BuRVI=;
 b=V2v++qQfXP6PeDcetFg/MVPF6g2TdONTwEl8qT8E3yc2sVIWFknrQTxV7M7j+Z2Azb6y5890oPFP+96OL8WAt4pN8WIH7aIKaFSir3/C3RLNLGWY4UWw6x7BdNhyGAOeArbDlQttuFC0Ozat+m9xgzYwyTqdRC3AeBkF3SQ/RhjR2f0DXi398RsgvaCnfFsH0zDt/d98NADa3/d98uY5hhajlnq/3mHPRcxN+mR8xJF/kMUrTsM9OwF01CSSM+76Tsz3cCrSnSPFdFyOYuGBGLCPxjDx1jdIF+eEcURmOBrPLGXPtMxymZEknI3wJiAPM4rjYM7CEipPiy0inNkLSA==
Received: from SL2P216CA0073.KORP216.PROD.OUTLOOK.COM (2603:1096:101:2::6) by
 HK0PR01MB2769.apcprd01.prod.exchangelabs.com (2603:1096:203:9c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.26; Wed, 26 May
 2021 17:20:06 +0000
Received: from PU1APC01FT041.eop-APC01.prod.protection.outlook.com
 (2603:1096:101:2:cafe::64) by SL2P216CA0073.outlook.office365.com
 (2603:1096:101:2::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.27 via Frontend
 Transport; Wed, 26 May 2021 17:20:06 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM (10.152.252.55) by
 PU1APC01FT041.mail.protection.outlook.com (10.152.253.108) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.25 via Frontend Transport; Wed, 26 May 2021 17:20:05 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::9c13:cf2d:150c:d9f6]) by BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::9c13:cf2d:150c:d9f6%7]) with mapi id 15.20.4150.027; Wed, 26 May 2021
 17:20:04 +0000
From: Snehasish Kar <snehasish.cse@live.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] Re: Timeout while streaming IQ samples to host in
 RFNOC
Thread-Index: AQHXTagoFtFNP6piD0SrwwnIBikjTar2Ckn+
Date: Wed, 26 May 2021 17:20:04 +0000
Message-ID: 
 <BMXPR01MB2469551EFD528CAB1E3A042288249@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <BMXPR01MB24699C6422B8AF56601B87FA882D9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAB__hTQ1DFQ7vzMwe+9kAtzG1G8bOoVo5BRx2xLJXmPeX3CWwA@mail.gmail.com>
 <BMXPR01MB246971902703CD9126282B6A882A9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>,<CAL7q81soMsO+gDqRs-DY9CGQ42gOgM5MsZxb28MhD448nh=QBQ@mail.gmail.com>
In-Reply-To: 
 <CAL7q81soMsO+gDqRs-DY9CGQ42gOgM5MsZxb28MhD448nh=QBQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:760C14301B6F60CFCCC61CDAE9A7E6EEE2E7A568EC0C23BDE6B1986446436B32;UpperCasedChecksum:8EA9DB8462EB166C9B01BDA9FF0808FED97D40ED253EA5C3F57420264E6FF80F;SizeAsReceived:7253;Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [aAW3kMmgl7EZj8GNLbAgWOvtA9mKVUMa6q3AzYd2g/c=]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 656e260f-a5f5-415b-1526-08d9206a8099
x-ms-traffictypediagnostic: HK0PR01MB2769:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 RdjCcGeVBPR/MQg9dDksutvR0Va6TMV5N9nffJk/QL7yMkdbyQc83FUW5N0iPDa8N58H5VAPsP5pW9GtZAxFQn8Zqm+9EnZ1MMlPE2DYCwWQCKPpmNUiybF64C6yWEgBt9WbAHvWHJhAxMPLRGr9p8BxqQfRRKwEBam4RYSr05q4uahkRtGAqgez5QUh0CW/uC4WMcG5t9/MJAT3xQAYH7OBQMj2xNU7wR3wCIhVrssVc9ti/cHxD4qEgNvYyeCeMxnJftCSCT3z2p0w6c25Lwm3PN4JJhiYDNpajiqYjS9DnyAAMYNkSnK4g10CupXhx2yWcnHjfUpCukV8upvbOTD/kC78F1y2gntTdDngzAYpFRc3hEU/FepDP1sWUsIs3nmtp8XmqcJXtP7TPdckfQTTup6GE7Z00LKburksKUHJX5y2KcB/DEwSAwY+Tbm0nwXvk0fyGZ6G6w23lTTtqA==
x-ms-exchange-antispam-messagedata: 
 V8pJpKLjRZmM4xibmeb81khw83MUxTQvuEfYeoCsn3x6+AfcfwepYTW/rgqCci+U0CVyMKGJ0vFg1bPzmG9w4X9Dw/WrEtwQG6yYIYyWn/sd9ZcHEy6fCzot70GQFvTyGw3iDEtAp/T07kVC8p+g4g==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-5c337.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT041.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 656e260f-a5f5-415b-1526-08d9206a8099
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2021 17:20:04.4944
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR01MB2769
Message-ID-Hash: ERDXCLNSOMKSJCZBY6HENIAFV6IDPVXA
X-Message-ID-Hash: ERDXCLNSOMKSJCZBY6HENIAFV6IDPVXA
X-MailFrom: snehasish.cse@live.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timeout while streaming IQ samples to host in RFNOC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7TADIRX5QMS4MTDTTEZMVOJ2FPCJ7LBT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3645951711149251443=="

--===============3645951711149251443==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB2469551EFD528CAB1E3A042288249BMXPR01MB2469INDP_"

--_000_BMXPR01MB2469551EFD528CAB1E3A042288249BMXPR01MB2469INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello Jonathan

Tried with the example as you said, but if only try to stream from rfnoc ra=
dio I am able get IQ samples in the host . But as soon as I connect a fir f=
ilter with cutoff frequency 20MHz and transition 5MHz, it gives a timeout e=
rror.

My current flowgraph looks something like this:
Radio=3D>fifo=3D>fir filter=3D>fifo=3D> host

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Sent: Friday, May 21, 2021 12:13:48 AM
To: Snehasish Kar <snehasish.cse@live.com>
Cc: Rob Kossler <rkossler@nd.edu>; usrp-users@lists.ettus.com <usrp-users@l=
ists.ettus.com>
Subject: Re: [USRP-users] Re: Timeout while streaming IQ samples to host in=
 RFNOC

Hello Snehasish,

I would suggest starting with a known working in-tree example like rfnoc_rx=
_to_file.cpp. It has a section that connects a user defined RFNoC block, an=
d you can easily modify that to instead connect the FIFOs and FIR filter.

Jonathon

On Thu, May 20, 2021 at 4:31 AM Snehasish Kar <snehasish.cse@live.com<mailt=
o:snehasish.cse@live.com>> wrote:

Hello Rob



Tried that but it didn=92t work. I am using the standard RFNOC fir filter a=
nd radio.



Regards

Snehasish



Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10



From: Rob Kossler<mailto:rkossler@nd.edu>
Sent: 18 May 2021 21:39
To: Snehasish Kar<mailto:snehasish.cse@live.com>
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Timeout while streaming IQ samples to host in RFN=
OC



Perhaps try issue_stream_cmd on the radio ctrl rather than the rx_streamer.

Rob



On Mon, May 17, 2021 at 12:45 PM Snehasish Kar <snehasish.cse@live.com<mail=
to:snehasish.cse@live.com>> wrote:

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

--_000_BMXPR01MB2469551EFD528CAB1E3A042288249BMXPR01MB2469INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr" data-ogsc=3D"" style=3D"">
<div></div>
<div>
<div>Hello Jonathan&nbsp;</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Tried with the example as you said, but if only try to str=
eam from rfnoc radio I am able get IQ samples in the host . But as soon as =
I connect a fir filter with cutoff frequency 20MHz and transition 5MHz, it =
gives a timeout error.</div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">My current flowgraph looks something like this:</div>
<div dir=3D"ltr">Radio=3D&gt;fifo=3D&gt;fir filter=3D&gt;fifo=3D&gt; host</=
div>
<div dir=3D"ltr"><br>
</div>
<div dir=3D"ltr">Regards&nbsp;</div>
<div dir=3D"ltr">Snehasish&nbsp;</div>
<div><br>
</div>
<div id=3D"ms-outlook-mobile-signature">Get <a href=3D"https://aka.ms/o0uke=
f" data-ogsc=3D"" style=3D"">
Outlook for iOS</a></div>
</div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jonathon Pendlum &lt;=
jonathon.pendlum@ettus.com&gt;<br>
<b>Sent:</b> Friday, May 21, 2021 12:13:48 AM<br>
<b>To:</b> Snehasish Kar &lt;snehasish.cse@live.com&gt;<br>
<b>Cc:</b> Rob Kossler &lt;rkossler@nd.edu&gt;; usrp-users@lists.ettus.com =
&lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timeout while streaming IQ samples to =
host in RFNOC</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hello Snehasish,
<div><br>
</div>
<div>I would suggest starting with a known working in-tree example like rfn=
oc_rx_to_file.cpp. It has a section that&nbsp;connects a user defined RFNoC=
 block, and you can easily modify that to instead connect the FIFOs and FIR=
 filter.</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Thu, May 20, 2021 at 4:31 AM Sne=
hasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com">snehasish.cse@live=
.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div lang=3D"EN-IN" style=3D"">
<div class=3D"x_gmail-m_5985758056975910704WordSection1">
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Hello Rob<u></u><u></u></span=
></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Tried that but it didn=92t wo=
rk. I am using the standard RFNOC fir filter and radio.<u></u><u></u></span=
></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US"><u></u>&nbsp;<u></u></span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Regards<u></u><u></u></span><=
/p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Snehasish</span></p>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<p class=3D"x_MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwli=
nk/?LinkId=3D550986" target=3D"_blank">
Mail</a> for Windows 10</p>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<div style=3D"border-right:none; border-bottom:none; border-left:none; bord=
er-top:1pt solid rgb(225,225,225); padding:3pt 0cm 0cm">
<p class=3D"x_MsoNormal" style=3D"border:none; padding:0cm"><b>From: </b><a=
 href=3D"mailto:rkossler@nd.edu" target=3D"_blank">Rob Kossler</a><br>
<b>Sent: </b>18 May 2021 21:39<br>
<b>To: </b><a href=3D"mailto:snehasish.cse@live.com" target=3D"_blank">Sneh=
asish Kar</a><br>
<b>Cc: </b><a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject: </b>Re: [USRP-users] Timeout while streaming IQ samples to host=
 in RFNOC</p>
</div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<p class=3D"x_MsoNormal">Perhaps try issue_stream_cmd on the radio ctrl rat=
her than the rx_streamer.<u></u><u></u></p>
<div>
<p class=3D"x_MsoNormal">Rob<u></u><u></u></p>
</div>
</div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<div>
<p class=3D"x_MsoNormal">On Mon, May 17, 2021 at 12:45 PM Snehasish Kar &lt=
;<a href=3D"mailto:snehasish.cse@live.com" target=3D"_blank">snehasish.cse@=
live.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none; border-right:none; border-bottom:none=
; border-left:1pt solid rgb(204,204,204); padding:0cm 0cm 0cm 6pt; margin-l=
eft:4.8pt; margin-right:0cm">
<div>
<div>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Hello </span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">I am using the below code to =
stream IQ samples to host using RFNOC, but while streaming I am getting tim=
eout. My rfnoc graph looks something like this:</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Radio_0=3D&gt;fifo=3D&gt;fir_=
filter=3D&gt;fifo=3D&gt;host</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Radio_1=3D&gt;fifo=3D&gt;fir_=
filter=3D&gt;fifo=3D&gt;host</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">With the above flowgraph we a=
re able to stream samples in gnuradio.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Sample rate used: 100msps</sp=
an></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Host PC configuration: intel =
i7 processor 9<sup>th</sup> gen</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RAM: 8GB</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Interface: PCIE express</span=
></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">UHD version: UHD_3.14.1.0-0-u=
nknown</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Below is the output of&nbsp; =
uhd_usrp_probe:</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">:~/Desktop/uhd_rfnoc_file_wri=
tter/Debug$ uhd_usrp_probe
</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [UHD] linux; GNU C++ v=
ersion 7.5.0; Boost_106501; UHD_3.14.1.0-0-unknown</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [X300] X300 initializa=
tion sequence...</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [X300] Connecting to n=
iusrpriorpc at localhost:5444...</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [X300] Using LVBITX bi=
tfile /usr/local/share/uhd/images/usrp_x310_fpga_XG.lvbitx...</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [X300] Radio 1x clock:=
 200 MHz</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [GPS] Found an interna=
l GPSDO: LC_XO, Firmware Rev 0.929a</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[WARNING] [GPS] update_cache:=
 Malformed GPSDO string: LC_XO, Firmware Rev 0.929a</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] Initiali=
zing block control (NOC ID: 0xF1F0D00000000000)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] BIST pas=
sed (Throughput: 1311 MB/s)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] BIST pas=
sed (Throughput: 1315 MB/s)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/Radio_0] Initializi=
ng block control (NOC ID: 0x12AD100000000001)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/Radio_1] Initializi=
ng block control (NOC ID: 0x12AD100000000001)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/DDC_0] Initializing=
 block control (NOC ID: 0xDDC0000000000000)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/DDC_1] Initializing=
 block control (NOC ID: 0xDDC0000000000000)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIR_0] Initializing=
 block control (NOC ID: 0xF112000000000000)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIR_1] Initializing=
 block control (NOC ID: 0xF112000000000000)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/DUC_0] Initializing=
 block control (NOC ID: 0xD0C0000000000000)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/DUC_1] Initializing=
 block control (NOC ID: 0xD0C0000000000000)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIFO_0] Initializin=
g block control (NOC ID: 0xF1F0000000000000)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIFO_1] Initializin=
g block control (NOC ID: 0xF1F0000000000000)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIFO_2] Initializin=
g block control (NOC ID: 0xF1F0000000000000)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[INFO] [0/FIFO_3] Initializin=
g block control (NOC ID: 0xF1F0000000000000)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">[WARNING] [X300] Cannot updat=
e master clock rate! X300 Series does not allow changing the clock rate dur=
ing runtime.</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp; ______________________=
_______________________________</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">/</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; Device: X-Series Device</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp;&nbsp; ___=
__________________________________________________</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp; /</span><=
/p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; Mboard: X310</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; r=
evision: 11</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; r=
evision_compat: 7</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; p=
roduct: 30960</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; m=
ac-addr0: 00:80:2f:18:de:4d</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; m=
ac-addr1: 00:80:2f:18:de:4e</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; g=
ateway: 192.168.10.1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; i=
p-addr0: 192.168.10.2</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; s=
ubnet0: 255.255.255.0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; i=
p-addr1: 192.168.20.2</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; s=
ubnet1: 255.255.255.0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; i=
p-addr2: 192.168.30.2</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; s=
ubnet2: 255.255.255.0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; i=
p-addr3: 192.168.40.2</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; s=
ubnet3: 255.255.255.0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; s=
erial: 314B293</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; F=
W Version: 6.0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; F=
PGA Version: 35.1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; F=
PGA git hash: fffffff-dirty</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; R=
FNoC capable: Yes</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; <=
/span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; T=
ime sources:&nbsp; internal, external, gpsdo</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; C=
lock sources: internal, external, gpsdo</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; S=
ensors: gps_gpgga, gps_gprmc, gps_time, gps_locked, gps_servo, ref_locked</=
span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp;&nbsp; _____________________________________________________</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard: A</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; ID: TwinRX Rev B (0x0093)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; Serial: 3147FB8</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp; __________________________________________________=
___</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 0</span></p=
>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Name: TwinRX RX0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
 &nbsp;&nbsp;|&nbsp;&nbsp; Antennas: RX1, RX2</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0=
.0 Hz</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: II</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp; __________________________________________________=
___</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 1</span></p=
>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Name: TwinRX RX1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: RX1, RX2</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0=
.0 Hz</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: QQ</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp; __________________________________________________=
___</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec: A</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Name: ads62p48</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Gain range digital: 0.0 to 6.0 step 0.5 dB</span=
></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp;&nbsp; _____________________________________________________</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard: B</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; ID: TwinRX Rev B (0x0093)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; Serial: 3147FC1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp; __________________________________________________=
___</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;RX Frontend: 0</span></p=
>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Name: TwinRX RX0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: RX1, RX2</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0=
.0 Hz</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: II</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp; __________________________________________________=
___</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 1</span></p=
>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Name: TwinRX RX1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: RX1, RX2</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: lo_locked</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0=
.0 Hz</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: QQ</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp; __________________________________________________=
___</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec: B</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Name: ads62p48</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Gain range digital: 0.0 to 6.0 step 0.5 dB</span=
></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp;&nbsp; _____________________________________________________</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard: A</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; ID: Unknown (0x0092)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; Serial: 3147FB8</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp; __________________________________________________=
___</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Frontend: 0</span></p=
>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Name: Unknown (0x0092) - 0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: </span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: </span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 0.000 to 0.000 MHz</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 0.0 to 0.0 step 0.0 Hz</span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp; __________________________________________________=
___</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; | &nbsp;&nbsp;|=
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Codec: A</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Name: ad9146</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp;&nbsp; _____________________________________________________</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard: B</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; ID: Unknown (0x0092)</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; Serial: 3147FC1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp; __________________________________________________=
___</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Frontend: 0</span></p=
>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Name: Unknown (0x0092) - 0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: </span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp; &nbsp;|=
&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: </span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 0.000 to 0.000 MHz</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 0.0 to 0.0 step 0.0 Hz</span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: IQ</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp; __________________________________________________=
___</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Codec: B</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Name: ad9146</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; |&nbsp;&nbsp; Gain Elements: None</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp;&nbsp; _____________________________________________________</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&n=
bsp; /</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFNoC blocks on this device:</span></p=
>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; </span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * DmaFIFO_0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * Radio_0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * Radio_1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * DDC_0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * DDC_1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * FIR_0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * FIR_1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * DUC_0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * DUC_1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * FIFO_0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * FIFO_1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * FIFO_2</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |=
&nbsp;&nbsp; * FIFO_3</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Source code:</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">void uhd_interface::start_str=
eamming(int32_t num_samples_to_receive, int16_t max_channels, uint64_t samp=
les_per_burst, int32_t total_no_of_samps) {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::rx_metadata_t md;</s=
pan></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool overflow_message =3D=
 true;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::rfnoc::graph::spt=
r rx_graph =3D usrp_rfnoc-&gt;create_graph(&quot;antidrone_rx_chain&quot;);=
</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_rfnoc-&gt;clear()=
;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect=
(radio_ctrl[0]-&gt;get_block_id(), fifo_ctrl[0]-&gt;get_block_id());</span>=
</p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect=
(fifo_ctrl[0]-&gt;get_block_id(), fir_ctrl[0]-&gt;get_block_id());</span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect=
(fir_ctrl[0]-&gt;get_block_id(), fifo_ctrl[1]-&gt;get_block_id());</span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect=
(radio_ctrl[1]-&gt;get_block_id(), fifo_ctrl[2]-&gt;get_block_id());</span>=
</p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect=
(fifo_ctrl[2]-&gt;get_block_id(), fir_ctrl[1]-&gt;get_block_id());</span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect=
(fir_ctrl[1]-&gt;get_block_id(), fifo_ctrl[3]-&gt;get_block_id());</span></=
p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_graph-&gt;connect(r=
adio_ctrl[0]-&gt;get_block_id(), 0, fifo_ctrl[1]-&gt;get_block_id(), 0);</s=
pan></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } catch (const std::excep=
tion&amp; ex) {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00}=
;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;erro=
r: unable to create/set a radio/parameter %s&quot;, ex.what());</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, error_=
lvl, __FILE__, __LINE__);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::device_addr_t stream=
_args_rfnoc;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;std::strin=
g&gt; block_port{&quot;0&quot;, &quot;1&quot;};</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args_rfnoc[&quot;b=
lock_id&quot;] =3D&nbsp;&nbsp; fifo_ctrl[1]-&gt;get_block_id().to_string();=
</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args_rfnoc[&quot;b=
lock_port&quot;] =3D block_port[0];</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_args_rfnoc[&quot=
;block_id&quot;] =3D fifo_ctrl[3]-&gt;get_block_id().to_string();</span></p=
>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_args_rfnoc[&quot=
;block_port&quot;] =3D block_port[1];</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_args_t stream=
_args(&quot;sc16&quot;,&quot;sc16&quot;);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args.args =3D stre=
am_args_rfnoc;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t spp =3D radio_ctrl=
[0]-&gt;get_args().cast&lt;size_t&gt;(&quot;spp&quot;, spp);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args.args[&quot;sp=
p&quot;] =3D boost::lexical_cast&lt;std::string&gt;(spp); //TODO: consideri=
ng 1000 samples but check</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream =3D uhd_src-&gt=
;get_rx_stream(stream_args);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00}=
;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg, &quot;inf=
o: Daemon launched with pid %d&quot;, getpid());</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, error_=
lvl, __FILE__, __LINE__);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //samples_per_burst =3D 1=
000;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_cmd_t stream_=
cmd(/*uhd::stream_cmd_t::STREAM_MODE_START_CONTINUOUS*/ uhd::stream_cmd_t::=
STREAM_MODE_NUM_SAMPS_AND_DONE);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_cmd.num_samps&nbsp=
; =3D total_no_of_samps;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_cmd.stream_now =3D=
 true;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_cmd.time_spec =
=3D&nbsp; uhd_src-&gt;get_time_now() + ::uhd::time_spec_t(0.1);//time_spec;=
</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream-&gt;issue_strea=
m_cmd(stream_cmd);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; samples_per_burst =3D rx_=
stream-&gt;get_max_num_samps();</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;std::vecto=
r&lt;std::complex&lt;float&gt;&gt;&gt; buffer_data(max_channels, std::vecto=
r&lt;std::complex&lt;float&gt; &gt;(samples_per_burst));</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;void *&gt;=
 buffs(max_channels);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int8_t i =3D 0;i&lt;m=
ax_channels;i++) {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buffs[i] =3D &amp;buff=
er_data[i].front();</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint64_t total_samps_recv=
d =3D0x00;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int32_t total_size_wrote_=
to_file =3D0x00;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int32_t counter =3D 0x00;=
</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std::complex&lt;float&g=
t; array1[100000][1000]{{0x00}};</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std::complex&lt;float&g=
t; array2[100000][1000]{{0x00}};</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //fprintf(stderr,&quot;to=
tal num of samps %d\n&quot;, total_no_of_samps);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while(!stop_rx and ((tota=
l_samps_recvd!=3Dtotal_no_of_samps) or (total_no_of_samps=3D=3D0x00))) {</s=
pan></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buffs.clear();</span><=
/p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t num_rx_samps =
=3D 0x00;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num_rx_samps =
=3D rx_stream-&gt;recv(buffs, samples_per_burst, md, 1.0);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(error_lvl=
=3D=3D3) {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char=
 msg[700]=3D{0x00};</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(m=
sg,&quot;\n=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D\n&nbsp; Number of samples received %u\n=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D&quot;,
 num_rx_samps);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_=
printf(msg, error_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //st=
d::cout &lt;&lt; &quot;total_samps_recvd : &quot; &lt;&lt; total_samps_recv=
d &lt;&lt; &quot;&nbsp; total_no_of_samps : &quot; &lt;&lt; total_no_of_sam=
ps &lt;&lt; &quot;\n&quot;;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } catch (const std::ex=
ception&amp; ex){</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=
=3D{0x00};</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&=
quot;error: error while streaming %s&quot;, ex.what());</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(ms=
g, error_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code =3D=
=3D uhd::rx_metadata_t::ERROR_CODE_TIMEOUT) {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; log_print=
f(&quot;error: timeout while streaming&quot;, error_lvl, __FILE__, __LINE__=
);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; break;</s=
pan></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code =3D=
=3D uhd::rx_metadata_t::ERROR_CODE_OVERFLOW) {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (overflow_=
message) {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; over=
flow_message =3D false;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_=
printf(&quot;error: overflow detected&quot;, error_lvl, __FILE__, __LINE__)=
;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue;</sp=
an></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code !=3D=
 uhd::rx_metadata_t::ERROR_CODE_NONE){</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=
=3D{0x00};</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&=
quot;error: %s&quot;,md.strerror());</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(ms=
g , error_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; total_samps_recvd+=3Dn=
um_rx_samps;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">#if 1</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Read IQ samples from=
 usrp and store the in the FILE</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int32_t i=3D0;i&lt=
;max_channels;i++) {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FILE *fp =3D =
fopen(file_name[i],&quot;a+&quot;);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t len =
=3D fwrite(&amp;buffer_data[i].front(), sizeof(std::complex&lt;float&gt;), =
num_rx_samps, fp);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fclose(fp);</=
span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">#endif</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">#if 0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Read IQ samples from=
 usrp and store the in the FILE</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int32_t i=3D0;i&lt=
;max_channels;i++) {</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; switch(i) {</=
span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case 0: memcp=
y(array1[counter], &amp;buffer_data[i].front(), sizeof(std::complex&lt;floa=
t&gt;)*num_rx_samps); break;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case 1: memcp=
y(array2[counter], &amp;buffer_data[i].front(), sizeof(std::complex&lt;floa=
t&gt;)*num_rx_samps); break;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; counter++;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">#endif</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fprintf(stderr, &quot;tot=
al samples received file: %d\n&quot;, total_samps_recvd);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning:=
 stopping streaming mode&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning:=
 buffer flush started!&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_cmd_t stream_=
cmd_stop(uhd::stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream-&gt;issue_strea=
m_cmd(stream_cmd_stop);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std::cout &lt;&lt; &quo=
t;total_samps_recvd : &quot; &lt;&lt; total_samps_recvd &lt;&lt; &quot;&nbs=
p; total_no_of_samps : &quot; &lt;&lt; total_no_of_samps &lt;&lt; &quot;\n&=
quot;;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">#if 0</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; constexpr double timeout =
{ 0.010 }; //10ms</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; static std::complex&lt;sh=
ort&gt; dummy_buffer[50000000];</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; static uhd::rx_metadata_t=
 dummy_meta { };</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while (rx_stream-&gt;recv=
(dummy_buffer, 50000000, dummy_meta, timeout)) {}</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd_src-&gt;clear_command=
_time(); //Reset all time counters untill next tune!!</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning:=
 buffer flush completed!&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">#endif</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">}</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Hoping for an early reply.</s=
pan></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Regards</span></p>
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">Snehasish</span></p>
<p class=3D"x_MsoNormal">&nbsp;</p>
<p class=3D"x_MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwli=
nk/?LinkId=3D550986" target=3D"_blank">
Mail</a> for Windows 10</p>
<p class=3D"x_MsoNormal">&nbsp;</p>
</div>
</div>
</blockquote>
</div>
<p class=3D"x_MsoNormal" style=3D"margin-left:4.8pt">______________________=
_________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><u></u><u></u></p>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</blockquote>
</div>
</div>
</body>
</html>

--_000_BMXPR01MB2469551EFD528CAB1E3A042288249BMXPR01MB2469INDP_--

--===============3645951711149251443==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3645951711149251443==--

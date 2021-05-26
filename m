Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 802B2391ED6
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 20:17:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C078F38465A
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 14:17:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=live.com header.i=@live.com header.b="YRT6FrDS";
	dkim-atps=neutral
Received: from KOR01-PS2-obe.outbound.protection.outlook.com (mail-ps2kor01olkn0158.outbound.protection.outlook.com [104.47.109.158])
	by mm2.emwd.com (Postfix) with ESMTPS id DB5C738452E
	for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 14:16:11 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nsvsEVed9GEl47oss1s33QXlSi7fQq9A/nZkevvM4EPQdylMyygL1NLeG2B+OXhiTQyuBlhLYxF9lVHuO7UNRIudVftsvYNK7wSbv3MbbI80n54peRI1aAic8Q+5m83ENohYlvUyPqoxniOnLQ5nocFY4/VX3gSZPoYtfinLKfMj4YyN4gDe35xzmRUzAtHWdJMfZVin3agWW3X2npDvYBygRL7iiAo+g0OX962TEdvMvsNGNuXirBUCvb6Ku3705m4zFhY0YwWYmJWuITdupTNUktLAupUC/ssVYS7QtSOIqnFj8QZ7bhYl1/JVR6cz+tMzCD50jA+hhHMOXEFwug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JajvZLCEE/0CScGcoG1IwTarl+LHT9KKVOnNJeadZrw=;
 b=ffpYxqgSNtmbtg3m8ILSOcI1UAmRy71NmLaPBV41O9PgNGWn7Q177Ot1k/yWAClaeGCCs8VmQyJwLyb+7+Ip8DnWj066nF7eInUcB6mIFb31HF6OAHYt3Soqrtm9+EmNtLUBFYQ5WkkZrmt6SBtJri+hEPulteTEvrbXq+f1ue8H2Gti8QF06CbC+BMjQmApV3BTgOJH6ft9nyElmqiIQExbtqUsLs4XVvcudGny5tFT5nwtZ4RPasmbQ1Z98altlI51KGrIFgXrCLyeDbzRES8wEIa+yy3k1jJtpkINRLesz9tkqyElGqfXqWi9GBoFLc2UNr1vgNTgss4qnT1sjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JajvZLCEE/0CScGcoG1IwTarl+LHT9KKVOnNJeadZrw=;
 b=YRT6FrDSqsU2TU8MmUq+bujHkw1ScuRhX6YnsJFxLSBhYHJ8Zo4cJkm/IJn/+oTvm+v0iwDR09lpsBPpbKSJb2DFnJBn8bTDlsewKkdKsLcyoilnJGQ4ODaZcIJzF7eja39EI/oGcBxulqNSAaJfmEI8a9999AvY1yWL3JfIye7upfD8KSB6EO32M3+ciL0AI3+y0AOMGm9WRWOE2kgaBxKPGLR/OILm0gk+zJeXotvi09P7zjANrJEc5DoiqYhCOTR6ECQm8k1MHgLJpZZOOd0DshWzWBQAx3sI05SgDwGvsJXEUdvoVXNYSgblbXIoD0gSwonG7sqd4gix9opXYQ==
Received: from SG2PR03CA0161.apcprd03.prod.outlook.com (2603:1096:4:c9::16) by
 SL2PR01MB3209.apcprd01.prod.exchangelabs.com (2603:1096:100:5f::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.23; Wed, 26 May
 2021 18:16:07 +0000
Received: from SG2APC01FT033.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:c9:cafe::45) by SG2PR03CA0161.outlook.office365.com
 (2603:1096:4:c9::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.11 via Frontend
 Transport; Wed, 26 May 2021 18:16:06 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 (2a01:111:e400:7ebd::4a) by SG2APC01FT033.mail.protection.outlook.com
 (2a01:111:e400:7ebd::119) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25 via Frontend
 Transport; Wed, 26 May 2021 18:16:06 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::9c13:cf2d:150c:d9f6]) by BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::9c13:cf2d:150c:d9f6%7]) with mapi id 15.20.4150.027; Wed, 26 May 2021
 18:16:05 +0000
From: Snehasish Kar <snehasish.cse@live.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] Re: Timeout while streaming IQ samples to host in
 RFNOC
Thread-Index: AQHXTagoFtFNP6piD0SrwwnIBikjTar2Ckn+gAAN3QCAAAKUjA==
Date: Wed, 26 May 2021 18:16:05 +0000
Message-ID: 
 <BMXPR01MB246969508CD28B3B28AF7A7D88249@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <BMXPR01MB24699C6422B8AF56601B87FA882D9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAB__hTQ1DFQ7vzMwe+9kAtzG1G8bOoVo5BRx2xLJXmPeX3CWwA@mail.gmail.com>
 <BMXPR01MB246971902703CD9126282B6A882A9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81soMsO+gDqRs-DY9CGQ42gOgM5MsZxb28MhD448nh=QBQ@mail.gmail.com>
 <BMXPR01MB2469551EFD528CAB1E3A042288249@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>,<CAL7q81sDJz9TxtE1jmoKd_58wJxi3QYONJcopH+hhwLS4cgN0A@mail.gmail.com>
In-Reply-To: 
 <CAL7q81sDJz9TxtE1jmoKd_58wJxi3QYONJcopH+hhwLS4cgN0A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-IN
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:83E226356A2C467C08A27E2D76CD6772F8782BBA16374DA2C9D75E80FDE7739C;UpperCasedChecksum:2D4B77AD9973F82433F7796B75E69B9CA7C4155531FE112977725A408ECAB4B2;SizeAsReceived:7428;Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [tcwd6vzWkMVVy2zgVH3ibNhh5bQ28tNNcgMcrvYVzYE=]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 603a91b6-3590-4dcc-5c7f-08d9207253f3
x-ms-traffictypediagnostic: SL2PR01MB3209:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 2Dh/90dut/xtY8uwetBudefgKGPP/pFj26qT4HLGJI/go4BQEuPtRzXmtnR0gcFw0ra8779jOGDMF7O629jydcTWgueMtOKXeEYXd06d8F0s78ZYg4MNKPjcESfXOTIWUoi9+ovNSuoA3/QGyCJqZBQfj5/S2+Ut2vUACVBPgqVzNjS4ZCuXDn+EF0qW9rTYtcPSL4GtnEKWd5nrVEs/JL1gCzjoyGg8bqnLaq2loDT+wqnXg3d5qsyDE4vZtJqTWJ8cXiQD9WhXtOLjWOnGD+OR0V+/f1UVORHdPnaYlf+4H7AbT1XVJl+dVBvmQVOmYUFn4iCCoWGR1KA6xX29GR1gRUxkdoCHUbqF9Jmfo0+y7CGVviOPpvx53r1qAFI2OTv895KWzyG30JOun3xZWvCK9ehvOGOrNZL8YWPn0GiE149j9YuHoZis0Q9mfuWMEgjvJBz8aMwn6Fi1xf3pTQ==
x-ms-exchange-antispam-messagedata: 
 1M0ueGJQm+FTF3SYcCY24ckQs3VLax/pqSUGWXpwb8uUk+XsFnSfNwHdGD3XYF3dxGrqFBwtrj8nl5/z2bRrNBjpAW/Q5f9TI+zWaKeTywVvm9/v0ihrgbJOSGYHcIAFjW2XTW9lsaApX+Ssuo8tPA==
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
	boundary="_006_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-5c337.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT033.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 603a91b6-3590-4dcc-5c7f-08d9207253f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2021 18:16:05.5155
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SL2PR01MB3209
Message-ID-Hash: DZCALTVHRXONJVSYAKTWACYXIR5RCWF5
X-Message-ID-Hash: DZCALTVHRXONJVSYAKTWACYXIR5RCWF5
X-MailFrom: snehasish.cse@live.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timeout while streaming IQ samples to host in RFNOC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3NNMKGYT3BY4UJ4ZJYQ4PRXDTB6NPIAZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--_006_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_
Content-Type: multipart/related;
	boundary="_005_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_";
	type="multipart/alternative"

--_005_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_"

--_000_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

No, I tried modifying it. I have attached the same for your reference.

Regards
Snehasish

Sent from Mail<https://go.microsoft.com/fwlink/?LinkId=3D550986> for Window=
s 10

From: Jonathon Pendlum<mailto:jonathon.pendlum@ettus.com>
Sent: 26 May 2021 23:36
To: Snehasish Kar<mailto:snehasish.cse@live.com>
Cc: Rob Kossler<mailto:rkossler@nd.edu>; usrp-users@lists.ettus.com<mailto:=
usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Re: Timeout while streaming IQ samples to host in=
 RFNOC

Hi Snehasish,

Do you get a timeout when connecting the FIR filter via rfnoc_rx_to_file's =
"--block-id" option? What about the FIFO block? Also, I would highly sugges=
t updating to the UHD 3.15 LTS branch.

 Jonathon

On Wed, May 26, 2021 at 1:20 PM Snehasish Kar <snehasish.cse@live.com<mailt=
o:snehasish.cse@live.com>> wrote:
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

From: Jonathon Pendlum <jonathon.pendlum@ettus.com<mailto:jonathon.pendlum@=
ettus.com>>
Sent: Friday, May 21, 2021 12:13:48 AM
To: Snehasish Kar <snehasish.cse@live.com<mailto:snehasish.cse@live.com>>
Cc: Rob Kossler <rkossler@nd.edu<mailto:rkossler@nd.edu>>; usrp-users@lists=
.ettus.com<mailto:usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com<m=
ailto:usrp-users@lists.ettus.com>>
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


--_000_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">No, I tried modifying it. I hav=
e attached the same for your reference.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Snehasish</span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Sent from <a href=3D"https://go.microsoft.com/fwlink=
/?LinkId=3D550986">
Mail</a> for Windows 10</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"mso-element:para-border-div;border:none;border-top:solid #E1E=
1E1 1.0pt;padding:3.0pt 0cm 0cm 0cm">
<p class=3D"MsoNormal" style=3D"border:none;padding:0cm"><b>From: </b><a hr=
ef=3D"mailto:jonathon.pendlum@ettus.com">Jonathon Pendlum</a><br>
<b>Sent: </b>26 May 2021 23:36<br>
<b>To: </b><a href=3D"mailto:snehasish.cse@live.com">Snehasish Kar</a><br>
<b>Cc: </b><a href=3D"mailto:rkossler@nd.edu">Rob Kossler</a>; <a href=3D"m=
ailto:usrp-users@lists.ettus.com">
usrp-users@lists.ettus.com</a><br>
<b>Subject: </b>Re: [USRP-users] Re: Timeout while streaming IQ samples to =
host in RFNOC</p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Hi Snehasish,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Do you get a timeout when connecting the FIR filter =
via rfnoc_rx_to_file's &quot;--block-id&quot; option? What about the FIFO b=
lock? Also, I would highly suggest updating to the UHD 3.15 LTS branch.<o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&nbsp;Jonathon<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Wed, May 26, 2021 at 1:20 PM Snehasish Kar &lt;<a=
 href=3D"mailto:snehasish.cse@live.com">snehasish.cse@live.com</a>&gt; wrot=
e:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal">Hello Jonathan&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Tried with the example as you said, but if only try =
to stream from rfnoc radio I am able get IQ samples in the host . But as so=
on as I connect a fir filter with cutoff frequency 20MHz and transition 5MH=
z, it gives a timeout error.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">My current flowgraph looks something like this:<o:p>=
</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Radio=3D&gt;fifo=3D&gt;fir filter=3D&gt;fifo=3D&gt; =
host<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Regards&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Snehasish&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div id=3D"gmail-m_-1349171423098946823ms-outlook-mobile-signature">
<p class=3D"MsoNormal">Get <a href=3D"https://aka.ms/o0ukef" target=3D"_bla=
nk">Outlook for iOS</a><o:p></o:p></p>
</div>
</div>
</div>
<p class=3D"MsoNormal"><img border=3D"0" width=3D"549" height=3D"2" style=
=3D"width:5.7166in;height:.025in" id=3D"Horizontal_x0020_Line_x0020_1" src=
=3D"cid:image001.png@01D75289.481A7690"><o:p></o:p></p>
<div id=3D"gmail-m_-1349171423098946823divRplyFwdMsg">
<p class=3D"MsoNormal"><b><span style=3D"color:black">From:</span></b><span=
 style=3D"color:black"> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.pen=
dlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
<b>Sent:</b> Friday, May 21, 2021 12:13:48 AM<br>
<b>To:</b> Snehasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com" targ=
et=3D"_blank">snehasish.cse@live.com</a>&gt;<br>
<b>Cc:</b> Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_bl=
ank">rkossler@nd.edu</a>&gt;;
<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@=
lists.ettus.com</a> &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timeout while streaming IQ samples to =
host in RFNOC</span>
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">&nbsp;<o:p></o:p></p>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">Hello Snehasish, <o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I would suggest starting with a known working in-tre=
e example like rfnoc_rx_to_file.cpp. It has a section that&nbsp;connects a =
user defined RFNoC block, and you can easily modify that to instead connect=
 the FIFOs and FIR filter.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Jonathon<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, May 20, 2021 at 4:31 AM Snehasish Kar &lt;<a=
 href=3D"mailto:snehasish.cse@live.com" target=3D"_blank">snehasish.cse@liv=
e.com</a>&gt; wrote:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p><span lang=3D"EN-US">Hello Rob</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">Tried that but it didn=92t work. I am using the sta=
ndard RFNOC fir filter and radio.</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">Regards</span></p>
<p><span lang=3D"EN-US">Snehasish</span></p>
<p>&nbsp;</p>
<p>Sent from <a href=3D"https://go.microsoft.com/fwlink/?LinkId=3D550986" t=
arget=3D"_blank">
Mail</a> for Windows 10</p>
<p>&nbsp;</p>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p><b>From: </b><a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">Rob Ko=
ssler</a><br>
<b>Sent: </b>18 May 2021 21:39<br>
<b>To: </b><a href=3D"mailto:snehasish.cse@live.com" target=3D"_blank">Sneh=
asish Kar</a><br>
<b>Cc: </b><a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject: </b>Re: [USRP-users] Timeout while streaming IQ samples to host=
 in RFNOC</p>
</div>
<p>&nbsp;</p>
<div>
<p>Perhaps try issue_stream_cmd on the radio ctrl rather than the rx_stream=
er.</p>
<div>
<p>Rob</p>
</div>
</div>
<p>&nbsp;</p>
<div>
<div>
<p>On Mon, May 17, 2021 at 12:45 PM Snehasish Kar &lt;<a href=3D"mailto:sne=
hasish.cse@live.com" target=3D"_blank">snehasish.cse@live.com</a>&gt; wrote=
:</p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-=
bottom:5.0pt">
<div>
<div>
<p><span lang=3D"EN-US">Hello </span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">I am using the below code to stream IQ samples to h=
ost using RFNOC, but while streaming I am getting timeout. My rfnoc graph l=
ooks something like this:</span></p>
<p><span lang=3D"EN-US">Radio_0=3D&gt;fifo=3D&gt;fir_filter=3D&gt;fifo=3D&g=
t;host</span></p>
<p><span lang=3D"EN-US">Radio_1=3D&gt;fifo=3D&gt;fir_filter=3D&gt;fifo=3D&g=
t;host</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">With the above flowgraph we are able to stream samp=
les in gnuradio.</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">Sample rate used: 100msps</span></p>
<p><span lang=3D"EN-US">Host PC configuration: intel i7 processor 9<sup>th<=
/sup> gen</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; RAM: 8GB</span></p>
<p><span lang=3D"EN-US">Interface: PCIE express</span></p>
<p><span lang=3D"EN-US">UHD version: UHD_3.14.1.0-0-unknown</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">Below is the output of&nbsp; uhd_usrp_probe:</span>=
</p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">:~/Desktop/uhd_rfnoc_file_writter/Debug$ uhd_usrp_p=
robe </span>
</p>
<p><span lang=3D"EN-US">[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_10=
6501; UHD_3.14.1.0-0-unknown</span></p>
<p><span lang=3D"EN-US">[INFO] [X300] X300 initialization sequence...</span=
></p>
<p><span lang=3D"EN-US">[INFO] [X300] Connecting to niusrpriorpc at localho=
st:5444...</span></p>
<p><span lang=3D"EN-US">[INFO] [X300] Using LVBITX bitfile /usr/local/share=
/uhd/images/usrp_x310_fpga_XG.lvbitx...</span></p>
<p><span lang=3D"EN-US">[INFO] [X300] Radio 1x clock: 200 MHz</span></p>
<p><span lang=3D"EN-US">[INFO] [GPS] Found an internal GPSDO: LC_XO, Firmwa=
re Rev 0.929a</span></p>
<p><span lang=3D"EN-US">[WARNING] [GPS] update_cache: Malformed GPSDO strin=
g: LC_XO, Firmware Rev 0.929a</span></p>
<p><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] Initializing block control (NO=
C ID: 0xF1F0D00000000000)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1311 =
MB/s)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1315 =
MB/s)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/Radio_0] Initializing block control (NOC =
ID: 0x12AD100000000001)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/Radio_1] Initializing block control (NOC =
ID: 0x12AD100000000001)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/DDC_0] Initializing block control (NOC ID=
: 0xDDC0000000000000)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/DDC_1] Initializing block control (NOC ID=
: 0xDDC0000000000000)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/FIR_0] Initializing block control (NOC ID=
: 0xF112000000000000)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/FIR_1] Initializing block control (NOC ID=
: 0xF112000000000000)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/DUC_0] Initializing block control (NOC ID=
: 0xD0C0000000000000)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/DUC_1] Initializing block control (NOC ID=
: 0xD0C0000000000000)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/FIFO_0] Initializing block control (NOC I=
D: 0xF1F0000000000000)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/FIFO_1] Initializing block control (NOC I=
D: 0xF1F0000000000000)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/FIFO_2] Initializing block control (NOC I=
D: 0xF1F0000000000000)</span></p>
<p><span lang=3D"EN-US">[INFO] [0/FIFO_3] Initializing block control (NOC I=
D: 0xF1F0000000000000)</span></p>
<p><span lang=3D"EN-US">[WARNING] [X300] Cannot update master clock rate! X=
300 Series does not allow changing the clock rate during runtime.</span></p=
>
<p><span lang=3D"EN-US">&nbsp; ____________________________________________=
_________</span></p>
<p><span lang=3D"EN-US">/</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Device: X-Ser=
ies Device</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp;&nbsp; _________________________=
____________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp; /</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 Mboard: X310</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; revision: 11</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; revision_compat: 7</spa=
n></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; product: 30960</span></=
p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; mac-addr0: 00:80:2f:18:=
de:4d</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; mac-addr1: 00:80:2f:18:=
de:4e</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; gateway: 192.168.10.1</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr0: 192.168.10.2<=
/span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; subnet0: 255.255.255.0<=
/span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr1: 192.168.20.2<=
/span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; subnet1: 255.255.255.0<=
/span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr2: 192.168.30.2<=
/span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; subnet2: 255.255.255.0<=
/span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr3: 192.168.40.2<=
/span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; subnet3: 255.255.255.0<=
/span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; serial: 314B293</span><=
/p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; FW Version: 6.0</span><=
/p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA Version: 35.1</spa=
n></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA git hash: fffffff-=
dirty</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; RFNoC capable: Yes</spa=
n></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; </span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; Time sources:&nbsp; int=
ernal, external, gpsdo</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; Clock sources: internal=
, external, gpsdo</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: gps_gpgga, gps=
_gprmc, gps_time, gps_locked, gps_servo, ref_locked</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________=
__________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; RX Dboard: A</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: TwinR=
X Rev B (0x0093)</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3=
147FB8</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p; _____________________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 0</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Name: TwinRX RX0</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; | &nbsp;&nbsp;|&nbsp;&n=
bsp; Antennas: RX1, RX2</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Sensors: lo_locked</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Connection Type: II</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Uses LO offset: No</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p; _____________________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 1</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Name: TwinRX RX1</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Antennas: RX1, RX2</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Sensors: lo_locked</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Connection Type: QQ</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Uses LO offset: No</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p; _____________________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec: A</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Name: ads62p48</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Gain range digital: 0.0 to 6.0 step 0.5 dB</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________=
__________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; RX Dboard: B</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: TwinR=
X Rev B (0x0093)</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3=
147FC1</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p; _____________________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; &nbsp;RX Frontend: 0</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Name: TwinRX RX0</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Antennas: RX1, RX2</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Sensors: lo_locked</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Connection Type: II</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Uses LO offset: No</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p; _____________________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 1</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Name: TwinRX RX1</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Antennas: RX1, RX2</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Sensors: lo_locked</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Connection Type: QQ</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Uses LO offset: No</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p; _____________________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec: B</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Name: ads62p48</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Gain range digital: 0.0 to 6.0 step 0.5 dB</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________=
__________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; TX Dboard: A</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: Unkno=
wn (0x0092)</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3=
147FB8</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p; _____________________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Frontend: 0</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Name: Unknown (0x0092) - 0</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Antennas: </span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Sensors: </span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Freq range: 0.000 to 0.000 MHz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Gain Elements: None</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Bandwidth range: 0.0 to 0.0 step 0.0 Hz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Connection Type: IQ</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Uses LO offset: No</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p; _____________________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; | &nbsp;&nbsp;|&nbsp;&nbsp; |&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Codec: A</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Name: ad9146</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Gain Elements: None</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________=
__________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; TX Dboard: B</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID: Unkno=
wn (0x0092)</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Serial: 3=
147FC1</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p; _____________________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Frontend: 0</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Name: Unknown (0x0092) - 0</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Antennas: </span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp; &nbsp;|&nbsp;&nbsp; |&nbsp;&n=
bsp; Sensors: </span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Freq range: 0.000 to 0.000 MHz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Gain Elements: None</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Bandwidth range: 0.0 to 0.0 step 0.0 Hz</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Connection Type: IQ</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Uses LO offset: No</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p; _____________________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Codec: B</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Name: ad9146</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&n=
bsp; Gain Elements: None</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________=
__________________________________________</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; RFNoC blocks on this device:</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; </span></=
p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DmaFIFO=
_0</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * Radio_0=
</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * Radio_1=
</span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DDC_0</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DDC_1</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * FIR_0</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * FIR_1</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DUC_0</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * DUC_1</=
span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * FIFO_0<=
/span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * FIFO_1<=
/span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * FIFO_2<=
/span></p>
<p><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * FIFO_3<=
/span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">Source code:</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">void uhd_interface::start_streamming(int32_t num_sa=
mples_to_receive, int16_t max_channels, uint64_t samples_per_burst, int32_t=
 total_no_of_samps) {</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::rx_metadata_t md;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; bool overflow_message =3D true;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; try {</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::rfnoc::graph::sptr rx_graph =3D usrp_rf=
noc-&gt;create_graph(&quot;antidrone_rx_chain&quot;);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_rfnoc-&gt;clear();</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(radio_ctrl[0]-&gt;get=
_block_id(), fifo_ctrl[0]-&gt;get_block_id());</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(fifo_ctrl[0]-&gt;get_=
block_id(), fir_ctrl[0]-&gt;get_block_id());</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(fir_ctrl[0]-&gt;get_b=
lock_id(), fifo_ctrl[1]-&gt;get_block_id());</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(radio_ctrl[1]-&gt;get=
_block_id(), fifo_ctrl[2]-&gt;get_block_id());</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(fifo_ctrl[2]-&gt;get_=
block_id(), fir_ctrl[1]-&gt;get_block_id());</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(fir_ctrl[1]-&gt;get_b=
lock_id(), fifo_ctrl[3]-&gt;get_block_id());</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_graph-&gt;connect(radio_ctrl[0]-&gt;get_b=
lock_id(), 0, fifo_ctrl[1]-&gt;get_block_id(), 0);</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; } catch (const std::exception&amp; ex) {</span>=
</p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;error: unable to create/se=
t a radio/parameter %s&quot;, ex.what());</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, error_lvl, __FILE__, __LINE_=
_);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::device_addr_t stream_args_rfnoc;</span></p=
>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;std::string&gt; block_port{&quot=
;0&quot;, &quot;1&quot;};</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args_rfnoc[&quot;block_id&quot;] =3D&nbs=
p;&nbsp; fifo_ctrl[1]-&gt;get_block_id().to_string();</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args_rfnoc[&quot;block_port&quot;] =3D b=
lock_port[0];</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_args_rfnoc[&quot;block_id&quot;] =3D f=
ifo_ctrl[3]-&gt;get_block_id().to_string();</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_args_rfnoc[&quot;block_port&quot;] =3D=
 block_port[1];</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_args_t stream_args(&quot;sc16&quot;=
,&quot;sc16&quot;);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args.args =3D stream_args_rfnoc;</span><=
/p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; size_t spp =3D radio_ctrl[0]-&gt;get_args().cas=
t&lt;size_t&gt;(&quot;spp&quot;, spp);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args.args[&quot;spp&quot;] =3D boost::le=
xical_cast&lt;std::string&gt;(spp); //TODO: considering 1000 samples but ch=
eck</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream =3D uhd_src-&gt;get_rx_stream(stream_=
args);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; {</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg, &quot;info: Daemon launched wit=
h pid %d&quot;, getpid());</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, error_lvl, __FILE__, __LINE_=
_);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; //samples_per_burst =3D 1000;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_cmd_t stream_cmd(/*uhd::stream_cmd_=
t::STREAM_MODE_START_CONTINUOUS*/ uhd::stream_cmd_t::STREAM_MODE_NUM_SAMPS_=
AND_DONE);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; stream_cmd.num_samps&nbsp; =3D total_no_of_samp=
s;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; stream_cmd.stream_now =3D true;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_cmd.time_spec =3D&nbsp; uhd_src-&gt;ge=
t_time_now() + ::uhd::time_spec_t(0.1);//time_spec;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream-&gt;issue_stream_cmd(stream_cmd);</sp=
an></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; samples_per_burst =3D rx_stream-&gt;get_max_num=
_samps();</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;std::vector&lt;std::complex&lt;f=
loat&gt;&gt;&gt; buffer_data(max_channels, std::vector&lt;std::complex&lt;f=
loat&gt; &gt;(samples_per_burst));</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;void *&gt; buffs(max_channels);<=
/span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; for(int8_t i =3D 0;i&lt;max_channels;i++) {</sp=
an></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buffs[i] =3D &amp;buffer_data[i].front();</s=
pan></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; uint64_t total_samps_recvd =3D0x00;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; int32_t total_size_wrote_to_file =3D0x00;</span=
></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; int32_t counter =3D 0x00;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; //std::complex&lt;float&gt; array1[100000][1000=
]{{0x00}};</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; //std::complex&lt;float&gt; array2[100000][1000=
]{{0x00}};</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; //fprintf(stderr,&quot;total num of samps %d\n&=
quot;, total_no_of_samps);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; while(!stop_rx and ((total_samps_recvd!=3Dtotal=
_no_of_samps) or (total_no_of_samps=3D=3D0x00))) {</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buffs.clear();</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t num_rx_samps =3D 0x00;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num_rx_samps =3D rx_stream-&gt;recv=
(buffs, samples_per_burst, md, 1.0);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(error_lvl=3D=3D3) {</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[700]=3D{0x00};</s=
pan></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;\n=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D\n&nbsp; Number of samples received %u\n=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&quot;=
, num_rx_samps);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, error_lvl,=
 __FILE__, __LINE__);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std::cout &lt;&lt; &quot=
;total_samps_recvd : &quot; &lt;&lt; total_samps_recvd &lt;&lt; &quot;&nbsp=
; total_no_of_samps : &quot; &lt;&lt; total_no_of_samps &lt;&lt; &quot;\n&q=
uot;;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } catch (const std::exception&amp; ex){</spa=
n></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;error: error whil=
e streaming %s&quot;, ex.what());</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, error_lvl, __FILE__=
, __LINE__);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code =3D=3D uhd::rx_metadata_t:=
:ERROR_CODE_TIMEOUT) {</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; log_printf(&quot;error: timeout=
 while streaming&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; break;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code =3D=3D uhd::rx_metadata_t:=
:ERROR_CODE_OVERFLOW) {</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (overflow_message) {</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; overflow_message =3D false=
;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;error: ov=
erflow detected&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code !=3D uhd::rx_metadata_t::E=
RROR_CODE_NONE){</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;error: %s&quot;,m=
d.strerror());</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg , error_lvl, __FILE_=
_, __LINE__);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; total_samps_recvd+=3Dnum_rx_samps;</span></p=
>
<p><span lang=3D"EN-US">#if 1</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Read IQ samples from usrp and store the in=
 the FILE</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int32_t i=3D0;i&lt;max_channels;i++) {</=
span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FILE *fp =3D fopen(file_name[i],&qu=
ot;a+&quot;);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t len =3D fwrite(&amp;buffer_d=
ata[i].front(), sizeof(std::complex&lt;float&gt;), num_rx_samps, fp);</span=
></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fclose(fp);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">#endif</span></p>
<p><span lang=3D"EN-US">#if 0</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Read IQ samples from usrp and store the in=
 the FILE</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int32_t i=3D0;i&lt;max_channels;i++) {</=
span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; switch(i) {</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case 0: memcpy(array1[counter], &am=
p;buffer_data[i].front(), sizeof(std::complex&lt;float&gt;)*num_rx_samps); =
break;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case 1: memcpy(array2[counter], &am=
p;buffer_data[i].front(), sizeof(std::complex&lt;float&gt;)*num_rx_samps); =
break;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; counter++;</span></p>
<p><span lang=3D"EN-US">#endif</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; fprintf(stderr, &quot;total samples received fi=
le: %d\n&quot;, total_samps_recvd);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning: stopping streaming mo=
de&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning: buffer flush started!=
&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_cmd_t stream_cmd_stop(uhd::stream_c=
md_t::STREAM_MODE_STOP_CONTINUOUS);</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream-&gt;issue_stream_cmd(stream_cmd_stop)=
;</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; //std::cout &lt;&lt; &quot;total_samps_recvd : =
&quot; &lt;&lt; total_samps_recvd &lt;&lt; &quot;&nbsp; total_no_of_samps :=
 &quot; &lt;&lt; total_no_of_samps &lt;&lt; &quot;\n&quot;;</span></p>
<p><span lang=3D"EN-US">#if 0</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; constexpr double timeout { 0.010 }; //10ms</spa=
n></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; static std::complex&lt;short&gt; dummy_buffer[5=
0000000];</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; static uhd::rx_metadata_t dummy_meta { };</span=
></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; while (rx_stream-&gt;recv(dummy_buffer, 5000000=
0, dummy_meta, timeout)) {}</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; uhd_src-&gt;clear_command_time(); //Reset all t=
ime counters untill next tune!!</span></p>
<p><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning: buffer flush complete=
d!&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p><span lang=3D"EN-US">#endif</span></p>
<p><span lang=3D"EN-US">}</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">Hoping for an early reply.</span></p>
<p><span lang=3D"EN-US">&nbsp;</span></p>
<p><span lang=3D"EN-US">Regards</span></p>
<p><span lang=3D"EN-US">Snehasish</span></p>
<p>&nbsp;</p>
<p>Sent from <a href=3D"https://go.microsoft.com/fwlink/?LinkId=3D550986" t=
arget=3D"_blank">
Mail</a> for Windows 10</p>
<p>&nbsp;</p>
</div>
</div>
</blockquote>
</div>
<p style=3D"margin-left:4.8pt">____________________________________________=
___<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a></p>
<p>&nbsp;</p>
</div>
</div>
</blockquote>
</div>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:9.6pt">________________________=
_______________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_--

--_005_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_
Content-Type: image/png; name="9D0D0476D84B4974B26F7ABCB629E2D5.png"
Content-Description: 9D0D0476D84B4974B26F7ABCB629E2D5.png
Content-Disposition: inline; filename="9D0D0476D84B4974B26F7ABCB629E2D5.png";
	size=160; creation-date="Wed, 26 May 2021 18:16:04 GMT";
	modification-date="Wed, 26 May 2021 18:16:04 GMT"
Content-ID: <image001.png@01D75289.481A7690>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAq4AAAADCAYAAABS4o0fAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAA1SURBVGhD7dYxDQAwDASx8CdVBEUQMKnUMQh+
8EnmcHVuDwAApPvjWpIkSVJ6+2QBACBPzwMXHzsdNc3LqgAAAABJRU5ErkJggg==

--_005_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_--

--_006_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_
Content-Type: text/plain; name="uhd_file_writter.cpp"
Content-Description: uhd_file_writter.cpp
Content-Disposition: attachment; filename="uhd_file_writter.cpp"; size=11449;
	creation-date="Wed, 26 May 2021 18:15:44 GMT";
	modification-date="Wed, 26 May 2021 18:15:44 GMT"
Content-Transfer-Encoding: base64

LyoKICogdWhkX2ZpbGVfd3JpdHRlci5jcHAKICoKICogIENyZWF0ZWQgb246IE1heSAyMSwgMjAy
MQogKiAgQXV0aG9yOiBTbmVoYXNpc2gKICovCgojaW5jbHVkZSA8dWhkL2RldmljZTMuaHBwPgoj
aW5jbHVkZSA8dWhkL2V4Y2VwdGlvbi5ocHA+CiNpbmNsdWRlIDx1aGQvcmZub2MvcmFkaW9fY3Ry
bC5ocHA+CiNpbmNsdWRlIDx1aGQvcmZub2MvZGRjX2Jsb2NrX2N0cmwuaHBwPgojaW5jbHVkZSA8
dWhkL3Jmbm9jL3NvdXJjZV9ibG9ja19jdHJsX2Jhc2UuaHBwPgojaW5jbHVkZSA8dWhkL3Jmbm9j
L2RtYV9maWZvX2Jsb2NrX2N0cmwuaHBwPgojaW5jbHVkZSA8dWhkL3R5cGVzL3NlbnNvcnMuaHBw
PgojaW5jbHVkZSA8dWhkL3R5cGVzL3R1bmVfcmVxdWVzdC5ocHA+CiNpbmNsdWRlIDx1aGQvdXRp
bHMvc2FmZV9tYWluLmhwcD4KI2luY2x1ZGUgPHVoZC91dGlscy90aHJlYWQuaHBwPgojaW5jbHVk
ZSA8Ym9vc3QvZm9ybWF0LmhwcD4KI2luY2x1ZGUgPHVoZC9yZm5vYy9maXJfYmxvY2tfY3RybC5o
cHA+CiNpbmNsdWRlIDxjaHJvbm8+CiNpbmNsdWRlIDxjb21wbGV4PgojaW5jbHVkZSA8Y3NpZ25h
bD4KI2luY2x1ZGUgPGZzdHJlYW0+CiNpbmNsdWRlIDxpb3N0cmVhbT4KI2luY2x1ZGUgPHRocmVh
ZD4KI2luY2x1ZGUgPGludHR5cGVzLmg+CiNpbmNsdWRlIDxsaXF1aWQvbGlxdWlkLmg+CgoKY29u
c3QgaW50NjRfdCBVUERBVEVfSU5URVJWQUwgPSAxOyAvLyAxIHNlY29uZCB1cGRhdGUgaW50ZXJ2
YWwgZm9yIEJXIHN1bW1hcnkKCnN0YXRpYyBib29sIHN0b3Bfc2lnbmFsX2NhbGxlZCA9IGZhbHNl
Owp2b2lkIHNpZ19pbnRfaGFuZGxlcihpbnQpCnsKICAgIHN0b3Bfc2lnbmFsX2NhbGxlZCA9IHRy
dWU7Cn0KCnZvaWQgcmVjdl90b19maWxlKHVoZDo6cnhfc3RyZWFtZXI6OnNwdHIgcnhfc3RyZWFt
LCBjb25zdCBzdGQ6OnN0cmluZyYgZmlsZSwgY29uc3Qgc2l6ZV90IHNhbXBzX3Blcl9idWZmLCBj
b25zdCBkb3VibGUgcnhfcmF0ZSwgY29uc3QgdW5zaWduZWQgbG9uZyBsb25nIG51bV9yZXF1ZXN0
ZWRfc2FtcGxlcywgdW5zaWduZWQgbG9uZyBsb25nIG51bV90b3RhbF9zYW1wcyA9IDApIHsKCXVo
ZDo6cnhfbWV0YWRhdGFfdCBtZDsKICAgIHN0ZDo6dmVjdG9yPHN0ZDo6Y29tcGxleDxmbG9hdD4+
IGJ1ZmYoc2FtcHNfcGVyX2J1ZmYpOwogICAgc3RkOjpvZnN0cmVhbSBvdXRmaWxlOwogICAgaWYg
KG5vdCBmaWxlLmVtcHR5KCkpIHsKICAgICAgICBvdXRmaWxlLm9wZW4oZmlsZS5jX3N0cigpLCBz
dGQ6Om9mc3RyZWFtOjpiaW5hcnkpOwogICAgfQogICAgYm9vbCBvdmVyZmxvd19tZXNzYWdlID0g
dHJ1ZTsKICAgIC8vIHNldHVwIHN0cmVhbWluZwogICAgdWhkOjpzdHJlYW1fY21kX3Qgc3RyZWFt
X2NtZCgobnVtX3JlcXVlc3RlZF9zYW1wbGVzID09IDApID8gdWhkOjpzdHJlYW1fY21kX3Q6OlNU
UkVBTV9NT0RFX1NUQVJUX0NPTlRJTlVPVVMgOiB1aGQ6OnN0cmVhbV9jbWRfdDo6U1RSRUFNX01P
REVfTlVNX1NBTVBTX0FORF9ET05FKTsKICAgIHN0cmVhbV9jbWQubnVtX3NhbXBzICA9IHNpemVf
dChudW1fcmVxdWVzdGVkX3NhbXBsZXMpOwogICAgc3RyZWFtX2NtZC5zdHJlYW1fbm93ID0gdHJ1
ZTsKICAgIHN0cmVhbV9jbWQudGltZV9zcGVjICA9IHVoZDo6dGltZV9zcGVjX3QoKTsKICAgIHN0
ZDo6Y291dCA8PCAiSXNzdWluZyBzdHJlYW0gY21kIiA8PCBzdGQ6OmVuZGw7CiAgICByeF9zdHJl
YW0tPmlzc3VlX3N0cmVhbV9jbWQoc3RyZWFtX2NtZCk7CgogICAgLy8gUnVuIHRoaXMgbG9vcCB1
bnRpbCBlaXRoZXIgdGltZSBleHBpcmVkIChpZiBhIGR1cmF0aW9uIHdhcyBnaXZlbiksIHVudGls
CiAgICAvLyB0aGUgcmVxdWVzdGVkIG51bWJlciBvZiBzYW1wbGVzIHdlcmUgY29sbGVjdGVkIChp
ZiBzdWNoIGEgbnVtYmVyIHdhcwogICAgLy8gZ2l2ZW4pLCBvciB1bnRpbCBDdHJsLUMgd2FzIHBy
ZXNzZWQuCiAgICB3aGlsZSAobm90IHN0b3Bfc2lnbmFsX2NhbGxlZCBhbmQgKG51bV9yZXF1ZXN0
ZWRfc2FtcGxlcyAhPSBudW1fdG90YWxfc2FtcHMgb3IgbnVtX3JlcXVlc3RlZF9zYW1wbGVzID09
IDApKSB7CiAgICAgICAgY29uc3QgYXV0byBub3cgPSBzdGQ6OmNocm9ubzo6c3RlYWR5X2Nsb2Nr
Ojpub3coKTsKICAgICAgICBzaXplX3QgbnVtX3J4X3NhbXBzID0gcnhfc3RyZWFtLT5yZWN2KCZi
dWZmLmZyb250KCksIGJ1ZmYuc2l6ZSgpLCBtZCwgMy4wLCBmYWxzZSk7CiAgICAgICAgaWYgKG1k
LmVycm9yX2NvZGUgPT0gdWhkOjpyeF9tZXRhZGF0YV90OjpFUlJPUl9DT0RFX1RJTUVPVVQpIHsK
ICAgICAgICAgICAgc3RkOjpjb3V0IDw8ICJUaW1lb3V0IHdoaWxlIHN0cmVhbWluZyI8PCBzdGQ6
OmVuZGw7CiAgICAgICAgICAgIGJyZWFrOwogICAgICAgIH0KICAgICAgICBpZiAobWQuZXJyb3Jf
Y29kZSA9PSB1aGQ6OnJ4X21ldGFkYXRhX3Q6OkVSUk9SX0NPREVfT1ZFUkZMT1cpIHsKICAgICAg
ICAgICAgaWYgKG92ZXJmbG93X21lc3NhZ2UpIHsKICAgICAgICAgICAgICAgIG92ZXJmbG93X21l
c3NhZ2UgPSBmYWxzZTsKICAgICAgICAgICAgICAgIHN0ZDo6Y291dDw8ICJvdmVyZmxvdyIgPDxz
dGQ6OmVuZGw7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgY29udGludWU7CiAgICAgICAgfQog
ICAgICAgIGlmIChtZC5lcnJvcl9jb2RlICE9IHVoZDo6cnhfbWV0YWRhdGFfdDo6RVJST1JfQ09E
RV9OT05FKSB7CiAgICAgICAgCWNvbnRpbnVlOwogICAgICAgIH0KCiAgICAgICAgbnVtX3RvdGFs
X3NhbXBzICs9IG51bV9yeF9zYW1wczsKCiAgICAgICAgaWYgKG91dGZpbGUuaXNfb3BlbigpKSB7
CiAgICAgICAgICAgIG91dGZpbGUud3JpdGUoKGNvbnN0IGNoYXIqKSZidWZmLmZyb250KCksIG51
bV9yeF9zYW1wcypzaXplb2Yoc3RkOjpjb21wbGV4PGZsb2F0PikpOwogICAgICAgIH0KICAgIH0K
ICAgIGNvbnN0IGF1dG8gYWN0dWFsX3N0b3BfdGltZSA9IHN0ZDo6Y2hyb25vOjpzdGVhZHlfY2xv
Y2s6Om5vdygpOwoKICAgIHN0cmVhbV9jbWQuc3RyZWFtX21vZGUgPSB1aGQ6OnN0cmVhbV9jbWRf
dDo6U1RSRUFNX01PREVfU1RPUF9DT05USU5VT1VTOwogICAgc3RkOjpjb3V0IDw8ICJJc3N1aW5n
IHN0b3Agc3RyZWFtIGNtZCIgPDwgc3RkOjplbmRsOwogICAgcnhfc3RyZWFtLT5pc3N1ZV9zdHJl
YW1fY21kKHN0cmVhbV9jbWQpOwoKICAgIC8vIFJ1biByZWN2IHVudGlsIG5vdGhpbmcgaXMgbGVm
dAogICAgaW50IG51bV9wb3N0X3NhbXBzID0gMDsKICAgIGRvIHsKICAgICAgICBudW1fcG9zdF9z
YW1wcyA9IHJ4X3N0cmVhbS0+cmVjdigmYnVmZi5mcm9udCgpLCBidWZmLnNpemUoKSwgbWQsIDMu
MCk7CiAgICB9IHdoaWxlIChudW1fcG9zdF9zYW1wcyBhbmQgbWQuZXJyb3JfY29kZSA9PSB1aGQ6
OnJ4X21ldGFkYXRhX3Q6OkVSUk9SX0NPREVfTk9ORSk7CgogICAgaWYgKG91dGZpbGUuaXNfb3Bl
bigpKQogICAgICAgIG91dGZpbGUuY2xvc2UoKTsKfQoKdHlwZWRlZiBib29zdDo6ZnVuY3Rpb248
dWhkOjpzZW5zb3JfdmFsdWVfdChjb25zdCBzdGQ6OnN0cmluZyYpPiBnZXRfc2Vuc29yX2ZuX3Q7
Cgpib29sIGNoZWNrX2xvY2tlZF9zZW5zb3Ioc3RkOjp2ZWN0b3I8c3RkOjpzdHJpbmc+IHNlbnNv
cl9uYW1lcywKICAgIGNvbnN0IGNoYXIqIHNlbnNvcl9uYW1lLAogICAgZ2V0X3NlbnNvcl9mbl90
IGdldF9zZW5zb3JfZm4sCiAgICBkb3VibGUgc2V0dXBfdGltZSkKewogICAgaWYgKHN0ZDo6Zmlu
ZChzZW5zb3JfbmFtZXMuYmVnaW4oKSwgc2Vuc29yX25hbWVzLmVuZCgpLCBzZW5zb3JfbmFtZSkK
ICAgICAgICA9PSBzZW5zb3JfbmFtZXMuZW5kKCkpCiAgICAgICAgcmV0dXJuIGZhbHNlOwoKICAg
IGF1dG8gc2V0dXBfdGltZW91dCA9IHN0ZDo6Y2hyb25vOjpzdGVhZHlfY2xvY2s6Om5vdygpCiAg
ICAgICAgICAgICAgICAgICAgICAgICArIHN0ZDo6Y2hyb25vOjptaWxsaXNlY29uZHMoaW50NjRf
dChzZXR1cF90aW1lICogMTAwMCkpOwogICAgYm9vbCBsb2NrX2RldGVjdGVkID0gZmFsc2U7Cgog
ICAgc3RkOjpjb3V0IDw8IGJvb3N0Ojpmb3JtYXQoIldhaXRpbmcgZm9yIFwiJXNcIjogIikgJSBz
ZW5zb3JfbmFtZTsKICAgIHN0ZDo6Y291dC5mbHVzaCgpOwoKICAgIHdoaWxlICh0cnVlKSB7CiAg
ICAgICAgaWYgKGxvY2tfZGV0ZWN0ZWQgYW5kIChzdGQ6OmNocm9ubzo6c3RlYWR5X2Nsb2NrOjpu
b3coKSA+IHNldHVwX3RpbWVvdXQpKSB7CiAgICAgICAgICAgIHN0ZDo6Y291dCA8PCAiIGxvY2tl
ZC4iIDw8IHN0ZDo6ZW5kbDsKICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgfQogICAgICAgIGlm
IChnZXRfc2Vuc29yX2ZuKHNlbnNvcl9uYW1lKS50b19ib29sKCkpIHsKICAgICAgICAgICAgc3Rk
Ojpjb3V0IDw8ICIrIjsKICAgICAgICAgICAgc3RkOjpjb3V0LmZsdXNoKCk7CiAgICAgICAgICAg
IGxvY2tfZGV0ZWN0ZWQgPSB0cnVlOwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIGlmIChz
dGQ6OmNocm9ubzo6c3RlYWR5X2Nsb2NrOjpub3coKSA+IHNldHVwX3RpbWVvdXQpIHsKICAgICAg
ICAgICAgICAgIHN0ZDo6Y291dCA8PCBzdGQ6OmVuZGw7CiAgICAgICAgICAgICAgICB0aHJvdyBz
dGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAgICAgICAgICAgICAgc3RyKGJvb3N0Ojpmb3JtYXQo
CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAidGltZWQgb3V0IHdhaXRpbmcgZm9yIGNvbnNl
Y3V0aXZlIGxvY2tzIG9uIHNlbnNvciBcIiVzXCIiKQogICAgICAgICAgICAgICAgICAgICAgICAl
IHNlbnNvcl9uYW1lKSk7CiAgICAgICAgICAgIH0KICAgICAgICAgICAgc3RkOjpjb3V0IDw8ICJf
IjsKICAgICAgICAgICAgc3RkOjpjb3V0LmZsdXNoKCk7CiAgICAgICAgfQogICAgICAgIHN0ZDo6
dGhpc190aHJlYWQ6OnNsZWVwX2ZvcihzdGQ6OmNocm9ubzo6bWlsbGlzZWNvbmRzKDEwMCkpOwog
ICAgfQoKICAgIHN0ZDo6Y291dCA8PCBzdGQ6OmVuZGw7CiAgICByZXR1cm4gdHJ1ZTsKfQoKaW50
IFVIRF9TQUZFX01BSU4oaW50IGFyZ2MsIGNoYXIqIGFyZ3ZbXSkKewogICAgdWhkOjpzZXRfdGhy
ZWFkX3ByaW9yaXR5X3NhZmUoKTsKCiAgICBzdGQ6OnZlY3RvcjxpbnQzMl90PnRhcHMgeyAtMywg
MCwgMjYsIDY3LCA2NiwgLTUyLCAtMjgxLCAtNDM0LCAtMjIwLCA0NzYsIDEzMDAsIDE0NDEsIDE4
OSwJXAogICAgCQkJCQkgCSAJICAgLTIyNDEsIC00MjkzLCAtMzYyOCwgMTM4OCwgMTAyMTgsIDE5
ODQ2LCAyNjEzNCwgMjYxMzQsIDE5ODQ2LCAJXAogICAgCQkJCQkJCQkxMDIxOCwgMTM4OCwgLTM2
MjgsIC00MjkzLCAtMjI0MSwgMTg5LCAxNDQxLCAxMzAwLCA0NzYsIC0yMjAsCVwKICAgIAkJCQkJ
CQkJLTQzNCwgLTI4MSwgLTUyLCA2NiwgNjcsIDI2LCAwLCAtMwkJCQkJCQkJXAogICAgCQkJCQkJ
CSB9OwoKICAgIHVpbnQzMl90IGRfbnRhcHMgPSBlc3RpbWF0ZV9yZXFfZmlsdGVyX2xlbigoNWUz
LzFlNiksNjAuMCk7IC8vZmlsdGVyIHRhcHMgc2l6ZQogICAgc3RkOjp2ZWN0b3I8ZmxvYXQ+IGxv
d19wYXNzX2ZpbHRlcl90YXBzOwogICAgc3RkOjp2ZWN0b3I8aW50PiB0YXBzX2xwZihkX250YXBz
LCAweDAwKTsKICAgIGxvd19wYXNzX2ZpbHRlcl90YXBzLnJlc2l6ZShkX250YXBzLCAweDAwKTsK
ICAgIGxpcXVpZF9maXJkZXNfa2Fpc2VyKGRfbnRhcHMsIDEyNWUzLzFlNiwgNjAuMCwgMC4wZiwg
ICZsb3dfcGFzc19maWx0ZXJfdGFwcy5mcm9udCgpKTsKCiAgICBmb3IoaW50MzJfdCBpPTA7aTxk
X250YXBzO2krKyl7CiAgICAJdGFwc19scGZbaV0gPSBsb3dfcGFzc19maWx0ZXJfdGFwc1tpXSoz
Mjc2NzsKICAgIH0KCgogICAgLy8gdmFyaWFibGVzIHRvIGJlIHNldCBieSBwbwogICAgc3RkOjpz
dHJpbmcgYXJncywgZmlsZT0iL2hvbWUvdmVoZXJlL3Rlc3QuYmluIiwgZm9ybWF0LCBhbnQsIHN1
YmRldiwgcmVmLCB3aXJlZm10LCBzdHJlYW1hcmdzLCByYWRpb19hcmdzLAogICAgICAgIGJsb2Nr
X2lkLCBibG9ja19hcmdzOwogICAgc2l6ZV90IHRvdGFsX251bV9zYW1wcyA9IDEwMGU2LCBzcGIg
PSAxMDAwLCByYWRpb19pZCA9IDAsIHJhZGlvX2NoYW4gPSAwOwogICAgZG91YmxlIHJhdGUgPSAx
MDBlNiwgZnJlcT0yLjQ2MmU5LCBnYWluPTcwLCBidyA9IDEwMGU2OwoKICAgIC8qKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioKICAgICAqIENyZWF0ZSBkZXZpY2UgYW5kIGJsb2NrIGNvbnRyb2xzCiAgICAgKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKiovCiAgICBzdGQ6OmNvdXQgPDwgIkNyZWF0aW5nIHRoZSBVU1JQIGRldmljZSB3aXRo
OiAlcy4uLiIgPDwgYXJncyA8PHN0ZDo6ZW5kbDsKICAgIHVoZDo6ZGV2aWNlMzo6c3B0ciB1c3Jw
ID0gdWhkOjpkZXZpY2UzOjptYWtlKGFyZ3MpOwogICAgLy8gQ3JlYXRlIGhhbmRsZSBmb3IgcmFk
aW8gb2JqZWN0CiAgICB1aGQ6OnJmbm9jOjpibG9ja19pZF90IHJhZGlvX2N0cmxfaWQoMCwgIlJh
ZGlvIiwgcmFkaW9faWQpOwogICAgLy8gVGhpcyBuZXh0IGxpbmUgd2lsbCBmYWlsIGlmIHRoZSBy
YWRpbyBpcyBub3QgYWN0dWFsbHkgYXZhaWxhYmxlCiAgICB1aGQ6OnJmbm9jOjpyYWRpb19jdHJs
OjpzcHRyIHJhZGlvX2N0cmwgPSB1c3JwLT5nZXRfYmxvY2tfY3RybDx1aGQ6OnJmbm9jOjpyYWRp
b19jdHJsPihyYWRpb19jdHJsX2lkKTsKICAgIHN0ZDo6Y291dCA8PCAiVXNpbmcgcmFkaW8gIiA8
PCByYWRpb19pZCA8PCAiLCBjaGFubmVsICIgPDwgcmFkaW9fY2hhbiA8PCBzdGQ6OmVuZGw7Cgog
ICAgLy8gQ3JlYXRlIGJsb2NrIGNvbnRyb2xzIGZvciBERENzCiAgICB1aGQ6OnJmbm9jOjpibG9j
a19pZF90IGRkY19jdHJsX2lkMCgwLCAiRERDIiwgMCk7CiAgICB1aGQ6OnJmbm9jOjpkZGNfYmxv
Y2tfY3RybDo6c3B0ciBkZGNfY3RybDAgPSB1c3JwLT5nZXRfYmxvY2tfY3RybDx1aGQ6OnJmbm9j
OjpkZGNfYmxvY2tfY3RybD4oZGRjX2N0cmxfaWQwKTsKICAgIGRkY19jdHJsMC0+c2V0X2FyZzxk
b3VibGU+ICgiZnJlcSIsIDFlNiwgMCk7CgogICAgLy8gQ3JlYXRlIGJsb2NrIGNvbnRyb2xzIGZv
ciBETUEtRklGTwogICAgdWhkOjpyZm5vYzo6YmxvY2tfaWRfdCBkbWFmaWZvX2N0cmxfaWQoMCwg
IkRtYUZJRk8iLCAwKTsKICAgIHVoZDo6cmZub2M6OmRtYV9maWZvX2Jsb2NrX2N0cmw6OnNwdHIg
ZG1hZmlmb19jdHJsID0gdXNycC0+Z2V0X2Jsb2NrX2N0cmw8dWhkOjpyZm5vYzo6ZG1hX2ZpZm9f
YmxvY2tfY3RybD4oZG1hZmlmb19jdHJsX2lkKTsKICAgIGRtYWZpZm9fY3RybC0+cmVzaXplKDAs
IDMzNTU0NDMyLCAwKTsKICAgIGRtYWZpZm9fY3RybC0+cmVzaXplKDMzNTU0NDMyLCAzMzU1NDQz
MiwgMSk7CiAgICB1aGQ6OnJmbm9jOjpibG9ja19pZF90IGZpcl9jdHJsX2lkKDAsICJGSVIiLCBy
YWRpb19pZCk7CiAgICB1aGQ6OnJmbm9jOjpmaXJfYmxvY2tfY3RybDo6c3B0ciBmaXJfY3RybCA9
IHVzcnAtPmdldF9ibG9ja19jdHJsPHVoZDo6cmZub2M6OmZpcl9ibG9ja19jdHJsPihmaXJfY3Ry
bF9pZCk7CiAgICBmaXJfY3RybC0+c2V0X3RhcHModGFwc19scGYpOwoKICAgIHVoZDo6cmZub2M6
OmJsb2NrX2lkX3QgZmlmb19jdHJsX2lkKDAsICJGSUZPIiwgcmFkaW9faWQpOwogICAgdWhkOjpy
Zm5vYzo6YmxvY2tfY3RybF9iYXNlOjpzcHRyIGZpZm9fY3RybCA9IHVzcnAtPmdldF9ibG9ja19j
dHJsKGZpZm9fY3RybF9pZCk7CiAgICB1aGQ6OnJmbm9jOjpibG9ja19pZF90IGZpZm9fY3RybF9p
ZDEoMCwgIkZJRk8iLCByYWRpb19pZCsxKTsKICAgIHVoZDo6cmZub2M6OmJsb2NrX2N0cmxfYmFz
ZTo6c3B0ciBmaWZvX2N0cmwxID0gdXNycC0+Z2V0X2Jsb2NrX2N0cmwoZmlmb19jdHJsX2lkMSk7
CgoKICAgIC8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioKICAgICAqIFNldCB1cCByYWRpbwogICAgICoqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqLwogICAgcmFkaW9fY3RybC0+c2V0X2FyZ3MocmFkaW9fYXJncyk7CiAgICAvLyBzZXQg
dGhlIHNhbXBsZSByYXRlCiAgICBzdGQ6OmNvdXQgPDwgIlNldHRpbmcgUlggUmF0ZTogJWYgTXNw
cy4uLiI8PCAocmF0ZS8xZTYpPDxzdGQ6OmVuZGw7CiAgICByYWRpb19jdHJsLT5zZXRfcmF0ZShy
YXRlKTsKICAgIHN0ZDo6Y291dCA8PCAiQWN0dWFsIFJYIFJhdGU6ICVmIE1zcHMuLi4iIDw8IChy
YWRpb19jdHJsLT5nZXRfcmF0ZSgpIC8gMWU2KSA8PCBzdGQ6OmVuZGw7CgogICAgLy8gc2V0IHRo
ZSBjZW50ZXIgZnJlcXVlbmN5CiAgICBzdGQ6OmNvdXQgPDwgYm9vc3Q6OmZvcm1hdCgiU2V0dGlu
ZyBSWCBGcmVxOiAlZiBNSHouLi4iKSAlIChmcmVxIC8gMWU2KSA8PCBzdGQ6OmVuZGw7CiAgICB1
aGQ6OnR1bmVfcmVxdWVzdF90IHR1bmVfcmVxdWVzdChmcmVxKTsKICAgIHJhZGlvX2N0cmwtPnNl
dF9yeF9mcmVxdWVuY3koZnJlcSwgMCk7CiAgICBzdGQ6OmNvdXQgPDwgIkFjdHVhbCBSWCBGcmVx
OiAlZiBNSHouLi4iIDw8IHJhZGlvX2N0cmwtPmdldF9yeF9mcmVxdWVuY3koMCkgLyAxZTYgPDwg
c3RkOjplbmRsOwoKICAgIC8vIHNldCB0aGUgcmYgZ2FpbgogICAgcmFkaW9fY3RybC0+c2V0X3J4
X2dhaW4oZ2FpbiwgMCk7CiAgICBzdGQ6OmNvdXQgPDwgIkFjdHVhbCBSWCBHYWluOiAlZiBkQi4u
LiIgPDwgcmFkaW9fY3RybC0+Z2V0X3J4X2dhaW4ocmFkaW9fY2hhbikgPDwgc3RkOjplbmRsOwoK
ICAgIC8vIHNldCB0aGUgYW50ZW5uYQogICAgcmFkaW9fY3RybC0+c2V0X3J4X2FudGVubmEoIlJY
MSIsIDApOwogICAgc2l6ZV90IHNwcCA9IHJhZGlvX2N0cmwtPmdldF9hcmc8aW50Pigic3BwIik7
CgogICAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKgogICAgICogU2V0IHVwIHN0cmVhbWluZwogICAgICoqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqLwogICAgdWhkOjpkZXZpY2VfYWRkcl90IHN0cmVhbWVyX2FyZ3Moc3RyZWFtYXJn
cyk7CgogICAgdWhkOjpyZm5vYzo6Z3JhcGg6OnNwdHIgcnhfZ3JhcGggPSB1c3JwLT5jcmVhdGVf
Z3JhcGgoInJmbm9jX3J4X3RvX2ZpbGUiKTsKICAgIHVzcnAtPmNsZWFyKCk7CiAgICByeF9ncmFw
aC0+Y29ubmVjdChyYWRpb19jdHJsLT5nZXRfYmxvY2tfaWQoKSwgMCwgZG1hZmlmb19jdHJsLT5n
ZXRfYmxvY2tfaWQoKSwgMCk7CglyeF9ncmFwaC0+Y29ubmVjdChkbWFmaWZvX2N0cmwtPmdldF9i
bG9ja19pZCgpLCAwLCBmaXJfY3RybC0+Z2V0X2Jsb2NrX2lkKCksIDApOwoJcnhfZ3JhcGgtPmNv
bm5lY3QoZmlyX2N0cmwtPmdldF9ibG9ja19pZCgpLCAwLCBmaWZvX2N0cmwxLT5nZXRfYmxvY2tf
aWQoKSwgMCk7CiAgICAvLyBTZXQgdGhlIHN0cmVhbSBhcmdzIG9uIHRoZSByYWRpbzoKICAgIHN0
cmVhbWVyX2FyZ3NbImJsb2NrX2lkIl0gICA9IGZpZm9fY3RybF9pZDEudG9fc3RyaW5nKCk7CiAg
ICBzdHJlYW1lcl9hcmdzWyJibG9ja19wb3J0Il0gPSBzdHIoYm9vc3Q6OmZvcm1hdCgiJWQiKSAl
IHJhZGlvX2NoYW4pOwoKI2lmIDAKICAgIGVsc2UgewogICAgICAgIC8vIE90aGVyd2lzZSwgc2Vl
IGlmIHRoZSByZXF1ZXN0ZWQgYmxvY2sgZXhpc3RzIGFuZCBjb25uZWN0IGl0IHRvIHRoZSByYWRp
bzoKICAgICAgICBpZiAobm90IHVzcnAtPmhhc19ibG9jayhibG9ja19pZCkpIHsKICAgICAgICAg
ICAgc3RkOjpjb3V0IDw8ICJCbG9jayBkb2VzIG5vdCBleGlzdCBvbiBjdXJyZW50IGRldmljZTog
IiA8PCBibG9ja19pZAogICAgICAgICAgICAgICAgICAgICAgPDwgc3RkOjplbmRsOwogICAgICAg
ICAgICByZXR1cm4gRVhJVF9GQUlMVVJFOwogICAgICAgIH0KCiAgICAgICAgdWhkOjpyZm5vYzo6
c291cmNlX2Jsb2NrX2N0cmxfYmFzZTo6c3B0ciBibGtfY3RybCA9CiAgICAgICAgICAgIHVzcnAt
PmdldF9ibG9ja19jdHJsPHVoZDo6cmZub2M6OnNvdXJjZV9ibG9ja19jdHJsX2Jhc2U+KGJsb2Nr
X2lkKTsKCiAgICAgICAgaWYgKG5vdCBibG9ja19hcmdzLmVtcHR5KCkpIHsKICAgICAgICAgICAg
Ly8gU2V0IHRoZSBibG9jayBhcmdzIG9uIHRoZSBvdGhlciBibG9jazoKICAgICAgICAgICAgYmxr
X2N0cmwtPnNldF9hcmdzKHVoZDo6ZGV2aWNlX2FkZHJfdChibG9ja19hcmdzKSk7CiAgICAgICAg
fQogICAgICAgIC8vIENvbm5lY3Q6CiAgICAgICAgc3RkOjpjb3V0IDw8ICJDb25uZWN0aW5nICIg
PDwgcmFkaW9fY3RybF9pZCA8PCAiID09PiAiIDw8IGJsa19jdHJsLT5nZXRfYmxvY2tfaWQoKQog
ICAgICAgICAgICAgICAgICA8PCBzdGQ6OmVuZGw7CiAgICAgICAgcnhfZ3JhcGgtPmNvbm5lY3Qo
CiAgICAgICAgICAgIHJhZGlvX2N0cmxfaWQsIHJhZGlvX2NoYW4sIGJsa19jdHJsLT5nZXRfYmxv
Y2tfaWQoKSwgdWhkOjpyZm5vYzo6QU5ZX1BPUlQpOwogICAgICAgIHN0cmVhbWVyX2FyZ3NbImJs
b2NrX2lkIl0gPSBibGtfY3RybC0+Z2V0X2Jsb2NrX2lkKCkudG9fc3RyaW5nKCk7CgogICAgICAg
IHNwcCA9IGJsa19jdHJsLT5nZXRfYXJncygpLmNhc3Q8c2l6ZV90Pigic3BwIiwgc3BwKTsKICAg
IH0KI2VuZGlmCiAgICAvLyBjcmVhdGUgYSByZWNlaXZlIHN0cmVhbWVyCiAgICBzdGQ6OmNvdXQg
PDwgIlNhbXBsZXMgcGVyIHBhY2tldDogIiA8PCBzcHAgPDwgc3RkOjplbmRsOwogICAgdWhkOjpz
dHJlYW1fYXJnc190IHN0cmVhbV9hcmdzKCJmYzMyIiwgInNjMTYiKTsgLy8gV2Ugc2hvdWxkIHJl
YWQgdGhlIHdpcmUgZm9ybWF0IGZyb20gdGhlIGJsb2NrcwogICAgc3RyZWFtX2FyZ3MuYXJncyA9
IHN0cmVhbWVyX2FyZ3M7CiAgICBzdHJlYW1fYXJncy5hcmdzWyJzcHAiXSA9IGJvb3N0OjpsZXhp
Y2FsX2Nhc3Q8c3RkOjpzdHJpbmc+KHNwcCk7CiAgICBzdGQ6OmNvdXQgPDwgIlVzaW5nIHN0cmVh
bWVyIGFyZ3M6ICIgPDwgc3RyZWFtX2FyZ3MuYXJncy50b19zdHJpbmcoKSA8PCBzdGQ6OmVuZGw7
CiAgICB1aGQ6OnJ4X3N0cmVhbWVyOjpzcHRyIHJ4X3N0cmVhbSA9IHVzcnAtPmdldF9yeF9zdHJl
YW0oc3RyZWFtX2FyZ3MpOwoKICAgIGlmICh0b3RhbF9udW1fc2FtcHMgPT0gMCkgewogICAgICAg
IHN0ZDo6c2lnbmFsKFNJR0lOVCwgJnNpZ19pbnRfaGFuZGxlcik7CiAgICAgICAgc3RkOjpjb3V0
IDw8ICJQcmVzcyBDdHJsICsgQyB0byBzdG9wIHN0cmVhbWluZy4uLiIgPDwgc3RkOjplbmRsOwog
ICAgfQoKICAgIHJlY3ZfdG9fZmlsZShyeF9zdHJlYW0sIGZpbGUsIHNwYiwgcmF0ZSwgdG90YWxf
bnVtX3NhbXBzKTsKICAgIHN0ZDo6Y291dCA8PCBzdGQ6OmVuZGwgPDwgIkRvbmUhIiA8PCBzdGQ6
OmVuZGwgPDwgc3RkOjplbmRsOwogICAgcmV0dXJuIEVYSVRfU1VDQ0VTUzsKfQoKCg==

--_006_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--_006_BMXPR01MB246969508CD28B3B28AF7A7D88249BMXPR01MB2469INDP_--

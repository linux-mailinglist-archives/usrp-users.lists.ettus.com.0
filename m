Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA4F389FD9
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 10:31:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 57C06385419
	for <lists+usrp-users@lfdr.de>; Thu, 20 May 2021 04:31:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=live.com header.i=@live.com header.b="l3a3JX+7";
	dkim-atps=neutral
Received: from APC01-PU1-obe.outbound.protection.outlook.com (mail-oln040092254011.outbound.protection.outlook.com [40.92.254.11])
	by mm2.emwd.com (Postfix) with ESMTPS id B81D238569B
	for <usrp-users@lists.ettus.com>; Thu, 20 May 2021 04:30:52 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SP54uwvLurWzut80yVItzTMrRYhQvMhfph71NXcwzG9TaMVMLieMSrL2hByzD3q/P87TM9XU7y6v9IwGigvjDnAInSAtm2oPbGf7vEVwRIvCBafcJxK1f0gVL416AY/Gxq64B2AeZGCNMPEz1eKOIIaUMUbYYqPOF1BoudA7KftDIuMnpos+FTlyb3bVDiO4ZMqFrm7jsY3KNU03xaG2q2+4ydEYWOmPMiTJQKpL4hXfEhR1A4UWvSEtQYdTonpVRZ1qzh24KdhEPFLVyCCP1jPpJN5wqdm11CeXAP3I5FRpBh4fqEk52vnUpa2lfi1YyfoJyge4u/wfdL/ehS/vBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kXVpAlAbv+m4uk69zS3iWpJGWSHTv1CPG2U0KI2v8tU=;
 b=cDiYo0aKl8+mo1MB/KtTdpypFEYXhef9vgIC2tljbHQH6fmSWzyn/V4/4rQV/Gs29Tl8PkFIUR2yyR82o0bGwlAPqc6UxkllS8eHAyR2rvFQNl7xC8Boj4jnWrfW9lS/ZZV1eJrS5SFOVr9Fvba9AXPBCsRfNbMLmTEeSNbP4bVEwr/uVu+Br9HZ37v2DUcmQOnxedCVqqSHbQioywJf18DIw2u+jgveUOAeAUDAkSxeA6GXk77cFPrYycHAvKDECuGhou308o9bJRLdEL/g6sx62B5Xsk5Csce6Ccja2+iud8LNVO1swzSJWAXWiLNg2WlC6xYOOL5k31w8ZoDr8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kXVpAlAbv+m4uk69zS3iWpJGWSHTv1CPG2U0KI2v8tU=;
 b=l3a3JX+7FyRhdvElpXKGCJ1g0adV8Y3s4Xv66DDfsycAgwDhyY/5NT0fgtwRohGCKeViTq59/GL+z8hGsgPyCMDkHir35WrnE2zpAUCt7qW8CeeEA9D9z3ZipbGTRSbyPddlluHIk37Yay0Nj9Zo/EX+rUrJE1hmH0ueXJHlpg8z/LX4c590kAUfNGKPHp6mZEfJG7fgIfAZOKJnlFR62l+rBMfldCkU9LR5QZ74NGQcp7qJhW9yw61YE1deqfkR5bqRSS/5B2JnWt03mWXTtDV3gUCjZ1CkKP5Mn+bf0OMl64ocTKwaYSDNRCSTAJgxgqdKpAizwD8UFApPHvQsdw==
Received: from PSAPR03CA0009.apcprd03.prod.outlook.com (2603:1096:301:19::14)
 by HK0PR01MB3011.apcprd01.prod.exchangelabs.com (2603:1096:203:8a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.26; Thu, 20 May
 2021 08:30:48 +0000
Received: from PU1APC01FT033.eop-APC01.prod.protection.outlook.com
 (2603:1096:301:19:cafe::2f) by PSAPR03CA0009.outlook.office365.com
 (2603:1096:301:19::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.12 via Frontend
 Transport; Thu, 20 May 2021 08:30:48 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM (10.152.252.59) by
 PU1APC01FT033.mail.protection.outlook.com (10.152.252.223) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4129.25 via Frontend Transport; Thu, 20 May 2021 08:30:48 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::9c13:cf2d:150c:d9f6]) by BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::9c13:cf2d:150c:d9f6%7]) with mapi id 15.20.4129.033; Thu, 20 May 2021
 08:30:46 +0000
From: Snehasish Kar <snehasish.cse@live.com>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Timeout while streaming IQ samples to host in RFNOC
Thread-Index: AQHXSzp6QhVokXZk/0mh1CholCzPtarpadmAgAKkM6o=
Date: Thu, 20 May 2021 08:30:46 +0000
Message-ID: 
 <BMXPR01MB246971902703CD9126282B6A882A9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <BMXPR01MB24699C6422B8AF56601B87FA882D9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>,<CAB__hTQ1DFQ7vzMwe+9kAtzG1G8bOoVo5BRx2xLJXmPeX3CWwA@mail.gmail.com>
In-Reply-To: 
 <CAB__hTQ1DFQ7vzMwe+9kAtzG1G8bOoVo5BRx2xLJXmPeX3CWwA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:8B245A4D82667168C8BC5F294BA93D28AFAB1074AD6687C500B7AFD50C6F9028;UpperCasedChecksum:3FDD7A69EBC581AB7538AA9BCAA7538CCAF8DF354B07DEEA22302CFFC6C1E133;SizeAsReceived:7029;Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [A+GGknfqKVxD8F3NsrYWNMNsGk4hcMw2]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: c6916945-02fa-442b-d680-08d91b6990c4
x-ms-traffictypediagnostic: HK0PR01MB3011:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 llyr+om4Wg7D1f2lCvqa4NdESGCLuMzIOw3HoVrmGmsKfjZGWmcmyxhEGdYBpehiaScos22bAWVNR5yJESjBaG/ZcIe8zzwvhirYqHoITO8ofwzkF0Hxk3C9wZCE0Rq5ZTcVw1X1jUnUHOkD+y1tMXZajHsndiOGpd/I+k4hoDbrz3RwWQXpMUkAxrYxUaB109LAS+VPYzH9XXeyhvrAb+Nryv5uulseYMY7G+P6E9BK7Q6PRZyV6b0AZpDKHszxfGSqMV2E7AdmJS5X8/07NE80rnFgdJSaJYIa2zDNa3U4kbANiF9HsaluqUDQ2Z2ZuKfEbcB9kc5ku3HSWxp21SSlv8/JIftBawzzL7pqL5PQYaU6aId36w62Ms1ZUMvityjkxgHW8p+7ifsHERx/OjpXceyr0AvFrNX2hoZtjbL4cIUKY7TbZlbYTh8M1pF12xL/qw7dG9Q5E4B54q26ENyQkccXdJ0agzFaP+Y2C/Y=
x-ms-exchange-antispam-messagedata: 
 eQlK289L00eSZ/5uVTQ+AeMSxpeLTppAUYdrcr2xsCuEUwHMDVvaBdFd+VOU3tNmxefU7XFQ1fEcOY3zfnDBXavz2ml3ChSvOzCZg5aJmIK3EaYEuM/w6NRKusxb5mETyfnFvJsw2LFn9oP+CLhu8w==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-5c337.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: PU1APC01FT033.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: c6916945-02fa-442b-d680-08d91b6990c4
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2021 08:30:46.3551
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR01MB3011
Message-ID-Hash: W5TJ5RXXABDXD4EJSHWSTO6ZBHBZJTCL
X-Message-ID-Hash: W5TJ5RXXABDXD4EJSHWSTO6ZBHBZJTCL
X-MailFrom: snehasish.cse@live.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timeout while streaming IQ samples to host in RFNOC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6RVUE5WCYJ6DCEB23JC6QVNECZDQOMZ3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4754483216406537383=="

--===============4754483216406537383==
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB246971902703CD9126282B6A882A9BMXPR01MB2469INDP_"

--_000_BMXPR01MB246971902703CD9126282B6A882A9BMXPR01MB2469INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

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


--_000_BMXPR01MB246971902703CD9126282B6A882A9BMXPR01MB2469INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello Rob<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Tried that but it didn=92t work=
. I am using the standard RFNOC fir filter and radio.<o:p></o:p></span></p>
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
ef=3D"mailto:rkossler@nd.edu">Rob Kossler</a><br>
<b>Sent: </b>18 May 2021 21:39<br>
<b>To: </b><a href=3D"mailto:snehasish.cse@live.com">Snehasish Kar</a><br>
<b>Cc: </b><a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.e=
ttus.com</a><br>
<b>Subject: </b>Re: [USRP-users] Timeout while streaming IQ samples to host=
 in RFNOC</p>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">Perhaps try issue_stream_cmd on the radio ctrl rathe=
r than the rx_streamer.<o:p></o:p></p>
<div>
<p class=3D"MsoNormal">Rob<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div>
<p class=3D"MsoNormal">On Mon, May 17, 2021 at 12:45 PM Snehasish Kar &lt;<=
a href=3D"mailto:snehasish.cse@live.com">snehasish.cse@live.com</a>&gt; wro=
te:<o:p></o:p></p>
</div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Hello
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">I am using the below code to stream IQ sample=
s to host using RFNOC, but while streaming I am getting timeout. My rfnoc g=
raph looks something like this:</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Radio_0=3D&gt;fifo=3D&gt;fir_filter=3D&gt;fif=
o=3D&gt;host</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Radio_1=3D&gt;fifo=3D&gt;fir_filter=3D&gt;fif=
o=3D&gt;host</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">With the above flowgraph we are able to strea=
m samples in gnuradio.</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Sample rate used: 100msps</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Host PC configuration: intel i7 processor 9<s=
up>th</sup> gen</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; RAM: 8GB</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Interface: PCIE express</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">UHD version: UHD_3.14.1.0-0-unknown</span></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Below is the output of&nbsp; uhd_usrp_probe:<=
/span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">:~/Desktop/uhd_rfnoc_file_writter/Debug$ uhd_=
usrp_probe
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [UHD] linux; GNU C++ version 7.5.0; Bo=
ost_106501; UHD_3.14.1.0-0-unknown</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [X300] X300 initialization sequence...=
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [X300] Connecting to niusrpriorpc at l=
ocalhost:5444...</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [X300] Using LVBITX bitfile /usr/local=
/share/uhd/images/usrp_x310_fpga_XG.lvbitx...</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [X300] Radio 1x clock: 200 MHz</span><=
/p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [GPS] Found an internal GPSDO: LC_XO, =
Firmware Rev 0.929a</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[WARNING] [GPS] update_cache: Malformed GPSDO=
 string: LC_XO, Firmware Rev 0.929a</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] Initializing block contr=
ol (NOC ID: 0xF1F0D00000000000)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] BIST passed (Throughput:=
 1311 MB/s)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/DmaFIFO_0] BIST passed (Throughput:=
 1315 MB/s)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/Radio_0] Initializing block control=
 (NOC ID: 0x12AD100000000001)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/Radio_1] Initializing block control=
 (NOC ID: 0x12AD100000000001)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/DDC_0] Initializing block control (=
NOC ID: 0xDDC0000000000000)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/DDC_1] Initializing block control (=
NOC ID: 0xDDC0000000000000)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/FIR_0] Initializing block control (=
NOC ID: 0xF112000000000000)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/FIR_1] Initializing block control (=
NOC ID: 0xF112000000000000)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/DUC_0] Initializing block control (=
NOC ID: 0xD0C0000000000000)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/DUC_1] Initializing block control (=
NOC ID: 0xD0C0000000000000)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/FIFO_0] Initializing block control =
(NOC ID: 0xF1F0000000000000)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/FIFO_1] Initializing block control =
(NOC ID: 0xF1F0000000000000)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/FIFO_2] Initializing block control =
(NOC ID: 0xF1F0000000000000)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[INFO] [0/FIFO_3] Initializing block control =
(NOC ID: 0xF1F0000000000000)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">[WARNING] [X300] Cannot update master clock r=
ate! X300 Series does not allow changing the clock rate during runtime.</sp=
an></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp; ______________________________________=
_______________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">/</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Device:=
 X-Series Device</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp;&nbsp; ___________________=
__________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp;&nbsp; /</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; Mboard: X310</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; revision: 11</spa=
n></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; revision_compat: =
7</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; product: 30960</s=
pan></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; mac-addr0: 00:80:=
2f:18:de:4d</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; mac-addr1: 00:80:=
2f:18:de:4e</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; gateway: 192.168.=
10.1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr0: 192.168=
.10.2</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; subnet0: 255.255.=
255.0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr1: 192.168=
.20.2</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; subnet1: 255.255.=
255.0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr2: 192.168=
.30.2</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; subnet2: 255.255.=
255.0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; ip-addr3: 192.168=
.40.2</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; subnet3: 255.255.=
255.0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; serial: 314B293</=
span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; FW Version: 6.0</=
span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA Version: 35.=
1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA git hash: ff=
fffff-dirty</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; RFNoC capable: Ye=
s</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; Time sources:&nbs=
p; internal, external, gpsdo</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; Clock sources: in=
ternal, external, gpsdo</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: gps_gpgg=
a, gps_gprmc, gps_time, gps_locked, gps_servo, ref_locked</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____=
________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; RX Dboard: A</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID:=
 TwinRX Rev B (0x0093)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Ser=
ial: 3147FB8</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Name: TwinRX RX0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; | &nbsp;&nbsp;|&n=
bsp;&nbsp; Antennas: RX1, RX2</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Sensors: lo_locked</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Connection Type: II</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Name: TwinRX RX1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Antennas: RX1, RX2</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Sensors: lo_locked</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Connection Type: QQ</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec: A</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Name: ads62p48</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Gain range digital: 0.0 to 6.0 step 0.5 dB</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____=
________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; RX Dboard: B</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID:=
 TwinRX Rev B (0x0093)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Ser=
ial: 3147FC1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;RX Frontend: 0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Name: TwinRX RX0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Antennas: RX1, RX2</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Sensors: lo_locked</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Connection Type: II</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Frontend: 1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Name: TwinRX RX1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Antennas: RX1, RX2</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Sensors: lo_locked</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Freq range: 10.000 to 6000.000 MHz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Gain range all: 0.0 to 93.0 step 1.0 dB</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Bandwidth range: 80000000.0 to 80000000.0 step 0.0 Hz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Connection Type: QQ</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Codec: B</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Name: ads62p48</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Gain range digital: 0.0 to 6.0 step 0.5 dB</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____=
________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; TX Dboard: A</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID:=
 Unknown (0x0092)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Ser=
ial: 3147FB8</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Frontend: 0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Name: Unknown (0x0092) - 0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Antennas:
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Sensors:
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Freq range: 0.000 to 0.000 MHz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Gain Elements: None</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Bandwidth range: 0.0 to 0.0 step 0.0 Hz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Connection Type: IQ</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; | &nbsp;&nbsp;|&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Codec: A</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Name: ad9146</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Gain Elements: None</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____=
________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; TX Dboard: B</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; ID:=
 Unknown (0x0092)</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Ser=
ial: 3147FC1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Frontend: 0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Name: Unknown (0x0092) - 0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Antennas:
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp; &nbsp;|&nbsp;&nbsp; |&n=
bsp;&nbsp; Sensors:
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Freq range: 0.000 to 0.000 MHz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Gain Elements: None</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Bandwidth range: 0.0 to 0.0 step 0.0 Hz</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Connection Type: IQ</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Uses LO offset: No</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp; _____________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p; /</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Codec: B</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Name: ad9146</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; |&n=
bsp;&nbsp; Gain Elements: None</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; _____=
________________________________________________</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /</span></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; RFNoC blocks on this device:</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * D=
maFIFO_0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * R=
adio_0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * R=
adio_1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * D=
DC_0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * D=
DC_1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * F=
IR_0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * F=
IR_1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * D=
UC_0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * D=
UC_1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * F=
IFO_0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * F=
IFO_1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * F=
IFO_2</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; * F=
IFO_3</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Source code:</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">void uhd_interface::start_streamming(int32_t =
num_samples_to_receive, int16_t max_channels, uint64_t samples_per_burst, i=
nt32_t total_no_of_samps) {</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::rx_metadata_t md;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bool overflow_message =3D true;</span></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::rfnoc::graph::sptr rx_graph =3D u=
srp_rfnoc-&gt;create_graph(&quot;antidrone_rx_chain&quot;);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; usrp_rfnoc-&gt;clear();</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(radio_ctrl[0]-&=
gt;get_block_id(), fifo_ctrl[0]-&gt;get_block_id());</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(fifo_ctrl[0]-&g=
t;get_block_id(), fir_ctrl[0]-&gt;get_block_id());</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(fir_ctrl[0]-&gt=
;get_block_id(), fifo_ctrl[1]-&gt;get_block_id());</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(radio_ctrl[1]-&=
gt;get_block_id(), fifo_ctrl[2]-&gt;get_block_id());</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(fifo_ctrl[2]-&g=
t;get_block_id(), fir_ctrl[1]-&gt;get_block_id());</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //rx_graph-&gt;connect(fir_ctrl[1]-&gt=
;get_block_id(), fifo_ctrl[3]-&gt;get_block_id());</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_graph-&gt;connect(radio_ctrl[0]-&gt=
;get_block_id(), 0, fifo_ctrl[1]-&gt;get_block_id(), 0);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } catch (const std::exception&amp; ex) {<=
/span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;error: unable to cre=
ate/set a radio/parameter %s&quot;, ex.what());</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, error_lvl, __FILE__, _=
_LINE__);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::device_addr_t stream_args_rfnoc;</sp=
an></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;std::string&gt; block_port=
{&quot;0&quot;, &quot;1&quot;};</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args_rfnoc[&quot;block_id&quot;] =
=3D&nbsp;&nbsp; fifo_ctrl[1]-&gt;get_block_id().to_string();</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args_rfnoc[&quot;block_port&quot;]=
 =3D block_port[0];</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_args_rfnoc[&quot;block_id&quot;]=
 =3D fifo_ctrl[3]-&gt;get_block_id().to_string();</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_args_rfnoc[&quot;block_port&quot=
;] =3D block_port[1];</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_args_t stream_args(&quot;sc16=
&quot;,&quot;sc16&quot;);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args.args =3D stream_args_rfnoc;</=
span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t spp =3D radio_ctrl[0]-&gt;get_args=
().cast&lt;size_t&gt;(&quot;spp&quot;, spp);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_args.args[&quot;spp&quot;] =3D boo=
st::lexical_cast&lt;std::string&gt;(spp); //TODO: considering 1000 samples =
but check</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream =3D uhd_src-&gt;get_rx_stream(s=
tream_args);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg, &quot;info: Daemon launch=
ed with pid %d&quot;, getpid());</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, error_lvl, __FILE__, _=
_LINE__);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //samples_per_burst =3D 1000;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_cmd_t stream_cmd(/*uhd::strea=
m_cmd_t::STREAM_MODE_START_CONTINUOUS*/ uhd::stream_cmd_t::STREAM_MODE_NUM_=
SAMPS_AND_DONE);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_cmd.num_samps&nbsp; =3D total_no_o=
f_samps;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; stream_cmd.stream_now =3D true;</span></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //stream_cmd.time_spec =3D&nbsp; uhd_src-=
&gt;get_time_now() + ::uhd::time_spec_t(0.1);//time_spec;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream-&gt;issue_stream_cmd(stream_cmd=
);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; samples_per_burst =3D rx_stream-&gt;get_m=
ax_num_samps();</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;std::vector&lt;std::comple=
x&lt;float&gt;&gt;&gt; buffer_data(max_channels, std::vector&lt;std::comple=
x&lt;float&gt; &gt;(samples_per_burst));</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; std::vector&lt;void *&gt; buffs(max_chann=
els);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int8_t i =3D 0;i&lt;max_channels;i++)=
 {</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buffs[i] =3D &amp;buffer_data[i].front=
();</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uint64_t total_samps_recvd =3D0x00;</span=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int32_t total_size_wrote_to_file =3D0x00;=
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; int32_t counter =3D 0x00;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std::complex&lt;float&gt; array1[100000=
][1000]{{0x00}};</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std::complex&lt;float&gt; array2[100000=
][1000]{{0x00}};</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //fprintf(stderr,&quot;total num of samps=
 %d\n&quot;, total_no_of_samps);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while(!stop_rx and ((total_samps_recvd!=
=3Dtotal_no_of_samps) or (total_no_of_samps=3D=3D0x00))) {</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; buffs.clear();</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t num_rx_samps =3D 0x00;</span></=
p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try {</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; num_rx_samps =3D rx_stream-&g=
t;recv(buffs, samples_per_burst, md, 1.0);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if(error_lvl=3D=3D3) {</span>=
</p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[700]=3D{0x0=
0};</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;\n=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D\n&nbsp; Number of samples received %u\n=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
&quot;,
 num_rx_samps);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, erro=
r_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std::cout &lt;&lt;=
 &quot;total_samps_recvd : &quot; &lt;&lt; total_samps_recvd &lt;&lt; &quot=
;&nbsp; total_no_of_samps : &quot; &lt;&lt; total_no_of_samps
 &lt;&lt; &quot;\n&quot;;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; } catch (const std::exception&amp; ex)=
{</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};</span=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;error: erro=
r while streaming %s&quot;, ex.what());</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg, error_lvl, __=
FILE__, __LINE__);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code =3D=3D uhd::rx_metad=
ata_t::ERROR_CODE_TIMEOUT) {</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; log_printf(&quot;error: t=
imeout while streaming&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; break;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code =3D=3D uhd::rx_metad=
ata_t::ERROR_CODE_OVERFLOW) {</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (overflow_message) {</span=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; overflow_message =3D=
 false;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;err=
or: overflow detected&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; continue;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (md.error_code !=3D uhd::rx_metadat=
a_t::ERROR_CODE_NONE){</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; char msg[100]=3D{0x00};</span=
></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; sprintf(msg,&quot;error: %s&q=
uot;,md.strerror());</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(msg , error_lvl, _=
_FILE__, __LINE__);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; total_samps_recvd+=3Dnum_rx_samps;</sp=
an></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">#if 1</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Read IQ samples from usrp and store =
the in the FILE</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int32_t i=3D0;i&lt;max_channels;i+=
+) {</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FILE *fp =3D fopen(file_name[=
i],&quot;a+&quot;);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; size_t len =3D fwrite(&amp;bu=
ffer_data[i].front(), sizeof(std::complex&lt;float&gt;), num_rx_samps, fp);=
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fclose(fp);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">#endif</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">#if 0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //Read IQ samples from usrp and store =
the in the FILE</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; for(int32_t i=3D0;i&lt;max_channels;i+=
+) {</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; switch(i) {</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case 0: memcpy(array1[counter=
], &amp;buffer_data[i].front(), sizeof(std::complex&lt;float&gt;)*num_rx_sa=
mps); break;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; case 1: memcpy(array2[counter=
], &amp;buffer_data[i].front(), sizeof(std::complex&lt;float&gt;)*num_rx_sa=
mps); break;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; counter++;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">#endif</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fprintf(stderr, &quot;total samples recei=
ved file: %d\n&quot;, total_samps_recvd);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning: stopping stream=
ing mode&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning: buffer flush st=
arted!&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd::stream_cmd_t stream_cmd_stop(uhd::st=
ream_cmd_t::STREAM_MODE_STOP_CONTINUOUS);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rx_stream-&gt;issue_stream_cmd(stream_cmd=
_stop);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; //std::cout &lt;&lt; &quot;total_samps_re=
cvd : &quot; &lt;&lt; total_samps_recvd &lt;&lt; &quot;&nbsp; total_no_of_s=
amps : &quot; &lt;&lt; total_no_of_samps &lt;&lt; &quot;\n&quot;;</span></p=
>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">#if 0</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; constexpr double timeout { 0.010 }; //10m=
s</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; static std::complex&lt;short&gt; dummy_bu=
ffer[50000000];</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; static uhd::rx_metadata_t dummy_meta { };=
</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; while (rx_stream-&gt;recv(dummy_buffer, 5=
0000000, dummy_meta, timeout)) {}</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd_src-&gt;clear_command_time(); //Reset=
 all time counters untill next tune!!</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; log_printf(&quot;warning: buffer flush co=
mpleted!&quot;, error_lvl, __FILE__, __LINE__);</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">#endif</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">}</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Hoping for an early reply.</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">&nbsp;</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Regards</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span lang=3D"EN-US">Snehasish</span></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;</p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Sent from
<a href=3D"https://go.microsoft.com/fwlink/?LinkId=3D550986" target=3D"_bla=
nk">Mail</a> for Windows 10</p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;</p>
</div>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal" style=3D"margin-left:4.8pt">________________________=
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

--_000_BMXPR01MB246971902703CD9126282B6A882A9BMXPR01MB2469INDP_--

--===============4754483216406537383==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4754483216406537383==--

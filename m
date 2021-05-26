Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 14729391F5F
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 20:43:52 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3FC64384A76
	for <lists+usrp-users@lfdr.de>; Wed, 26 May 2021 14:43:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=live.com header.i=@live.com header.b="iMbKGE9k";
	dkim-atps=neutral
Received: from APC01-HK2-obe.outbound.protection.outlook.com (mail-oln040092255021.outbound.protection.outlook.com [40.92.255.21])
	by mm2.emwd.com (Postfix) with ESMTPS id 7A644384A46
	for <usrp-users@lists.ettus.com>; Wed, 26 May 2021 14:42:57 -0400 (EDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R118GWUArBi8BnWVlmh9tyagll7i9gVuMV1fW4DXgX29ja0paQKmKuyST1GhSGj5nsMUksyKmrBZC61975t9kbJ2wRvmX1n70nrIc+5q1VFAWAD6nNrk/613YRYkxE0f3PIs8bmgAV9+YlzqWmKYN3OfygngmnopS9dZFkKyXm+j0tZd+HE2ePuh0zQ1x9N5u74A5XHEZ2EGm7ASlfX8TQo7jWYeyrp3nBY7CPwWxvDcqoYH6WmAIpsSJmL/PyFuTvxpx5w6fp+kaLW/hNlYWUGue2OaSpaqDrhhrmVDdWz71nTjoMDmz/rOhpow2+G6HeFAwXCfVp4yfOhm7E69Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Akw04U1Mkrxv4uB8Z/GaJsFbjc7DrUY0x9ZmQmMCOZg=;
 b=GlB2dhezEJavsrPebeTwgiiBD5Vba+iL4kaSfLhKI3OwalGz/IzSo4KRbdkQAvNFzQ9oHL5KH8pfnCxlqhPARrJNIh53t2X0rXbVbSoOWzs02wjPkpzd6HuXMuTDTatmd4hRi3tJPZ3/zGDJ1vwKivfrUWO9zR4JGmCvHe5jDIG9R5TmD9uVtSH0di94w+NVQ4XYPbepDBtg/TqRvRgPzhg6ADJNrROcWZzKX0B5OdOC0wnz567VYc8t21EO9/pdxq6YDcy/LyJq6VPjOo3BI2ibeHcDl9EixhwWEFmO9rWkhQ/JOZ8zPbCUejq2IjtIf1Vre0dEuEuz9AUtr17M6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Akw04U1Mkrxv4uB8Z/GaJsFbjc7DrUY0x9ZmQmMCOZg=;
 b=iMbKGE9kw8EiLVG1iuJYs4M1hGhLe5UPnJA2UedvOJLEClYNKlpq4/hedm38d2nwQ2634sXpd2PeJ6QC7HAobw8IR3NXMFSGtUsdQERC1J5M7mB2XreaHHZgRQJ5HCugrVAHAj9rbUJhxQIaQ9ZvRSlx4qMQtjlbXDc9JU/sMxPBNsCh4FJfyn0zxyk5Pr5635AbXJS+OggdKPfvFsfKGe+LkThB2pZXqDjqeZc/8UKTjLNVNKqTXXCgujsr3EtrZfIcqvgON1g/iRWec+SSJ39ISM8mwwjbWUgsjEbHJnQH7I/XpRRYEWjfKn+eftPHc6l98JOP0LvBREs25oORBA==
Received: from SG2PR02CA0063.apcprd02.prod.outlook.com (2603:1096:4:54::27) by
 TY2PR0101MB2943.apcprd01.prod.exchangelabs.com (2603:1096:404:ab::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4150.27; Wed, 26 May
 2021 18:42:53 +0000
Received: from SG2APC01FT112.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:54:cafe::60) by SG2PR02CA0063.outlook.office365.com
 (2603:1096:4:54::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20 via Frontend
 Transport; Wed, 26 May 2021 18:42:53 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 (2a01:111:e400:7ebd::41) by SG2APC01FT112.mail.protection.outlook.com
 (2a01:111:e400:7ebd::201) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25 via Frontend
 Transport; Wed, 26 May 2021 18:42:53 +0000
Received: from BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::9c13:cf2d:150c:d9f6]) by BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::9c13:cf2d:150c:d9f6%7]) with mapi id 15.20.4150.027; Wed, 26 May 2021
 18:42:52 +0000
From: Snehasish Kar <snehasish.cse@live.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Thread-Topic: [USRP-users] Re: Timeout while streaming IQ samples to host in
 RFNOC
Thread-Index: AQHXTagoFtFNP6piD0SrwwnIBikjTar2Ckn+gAAN3QCAAAKUjIAABM8AgAAC+ao=
Date: Wed, 26 May 2021 18:42:52 +0000
Message-ID: 
 <BMXPR01MB24694961142E5E24F87FFEBC88249@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
References: 
 <BMXPR01MB24699C6422B8AF56601B87FA882D9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAB__hTQ1DFQ7vzMwe+9kAtzG1G8bOoVo5BRx2xLJXmPeX3CWwA@mail.gmail.com>
 <BMXPR01MB246971902703CD9126282B6A882A9@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81soMsO+gDqRs-DY9CGQ42gOgM5MsZxb28MhD448nh=QBQ@mail.gmail.com>
 <BMXPR01MB2469551EFD528CAB1E3A042288249@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>
 <CAL7q81sDJz9TxtE1jmoKd_58wJxi3QYONJcopH+hhwLS4cgN0A@mail.gmail.com>
 <BMXPR01MB246969508CD28B3B28AF7A7D88249@BMXPR01MB2469.INDPRD01.PROD.OUTLOOK.COM>,<CAL7q81tA8_FV-zithJUNUxeMppgBgtKB4smMjLSQR=WOpFHcUg@mail.gmail.com>
In-Reply-To: 
 <CAL7q81tA8_FV-zithJUNUxeMppgBgtKB4smMjLSQR=WOpFHcUg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:08B81F4FCCB062E2B60459BF0CBC39A12901FE24E53A4D20807C5E7C8C91D639;UpperCasedChecksum:0698097138E22EDB78A0767C8686E8A0529F3FD31F19F413A268BB4DE5F0B33E;SizeAsReceived:7594;Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [gJw/2D9zMXKDEoMjPh3T8RSSsTwg8/ut1dFLow/NFUk=]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: fda5b761-bde0-4752-ead2-08d9207611b3
x-ms-traffictypediagnostic: TY2PR0101MB2943:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 O/lzGyssfc1APiNI5jeNgpPLSeayr6r+5C92MuUs6jhhAG/CYDqJImY7nRZ+sK1SQ4803BI2/oQ61Ky+4JMF/xblveYPWDsCUBZ66bCWcj74rqBNJLY49RLevx8zSYR+L65919As+XCe5Ul8Gle14gTbxEo7ON9h2Wa5p2S5GzQR67uAJObWRcKgurGPFbbXUU5HVRJ9K1iE5fIW5aF+NSj2/vgEcj9J1GkKXgsJlQSaLqlssdDodv+9c5/zNsv461PFgc0g52ccRNdxqlxOuCH1LOyUgtCSl8QGcszTafJPP4wIk+ijGnXcgFOpfKNBHNSqI63+lzznf4WbWcJaA4uBdSsE0RTqQUUex1UsE4pB53t1N6exbdbPLF/WWHtzFTzkLIe8nXUGYaYwFVtxk1sS0MWbKr0mUrVdJQcBr/sgXlBcCINaVVkt0QU3VnQc9hO+ep/c9w6ukeaK3kPteA==
x-ms-exchange-antispam-messagedata: 
 cWQS6ZF5ss111Uh2tC4xRqxEKTe+Gl4vIj2AG2xBg6q/NSEjyfY4Yb7FUBgSZonRmll2w2JndsXLx3Lg1VoPZDkInRUmfxyPNWNBVBVpFSvt3AxILEQIJg00qWXFxqqPYmIbUi9/4Wfny7er5ZtCoA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-5c337.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT112.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: fda5b761-bde0-4752-ead2-08d9207611b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2021 18:42:52.3949
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR0101MB2943
Message-ID-Hash: RWYYQMCSUHHQ36D7ET6S7TQPHYAO6PAA
X-Message-ID-Hash: RWYYQMCSUHHQ36D7ET6S7TQPHYAO6PAA
X-MailFrom: snehasish.cse@live.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timeout while streaming IQ samples to host in RFNOC
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/D4UB2JVLSVW6PJ73MUNJPBPPOL75UT53/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3202365778613170377=="

--===============3202365778613170377==
Content-Language: en-US
Content-Type: multipart/related;
	boundary="_004_BMXPR01MB24694961142E5E24F87FFEBC88249BMXPR01MB2469INDP_";
	type="multipart/alternative"

--_004_BMXPR01MB24694961142E5E24F87FFEBC88249BMXPR01MB2469INDP_
Content-Type: multipart/alternative;
	boundary="_000_BMXPR01MB24694961142E5E24F87FFEBC88249BMXPR01MB2469INDP_"

--_000_BMXPR01MB24694961142E5E24F87FFEBC88249BMXPR01MB2469INDP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thanks for the solution let me try it. I will give a response to you, tomor=
row.

Regards
Snehasish

Get Outlook for iOS<https://aka.ms/o0ukef>
________________________________
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Sent: Thursday, May 27, 2021 12:02:04 AM
To: Snehasish Kar <snehasish.cse@live.com>
Cc: Rob Kossler <rkossler@nd.edu>; usrp-users@lists.ettus.com <usrp-users@l=
ists.ettus.com>
Subject: Re: [USRP-users] Re: Timeout while streaming IQ samples to host in=
 RFNOC

Hi Snehasish,

With a X310, calling set_rate() on the radio block controller doesn't set t=
he sample rate. You need a DDC block instead, and you'll want to call set_o=
utput_rate() to set the desired sample rate. Try the flowgraph Radio RX->DD=
C->FIR filter->Host and see if that works. I would avoid the DMA FIFO unles=
s you absolutely need it, as the block is somewhat finicky.

Jonathon

On Wed, May 26, 2021 at 2:16 PM Snehasish Kar <snehasish.cse@live.com<mailt=
o:snehasish.cse@live.com>> wrote:

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



--_000_BMXPR01MB24694961142E5E24F87FFEBC88249BMXPR01MB2469INDP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div>
<div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue; background-color: rgb(255, 255, 255)">
Thanks for the solution let me try it. I will give a response to you, tomor=
row.</div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue; background-color: rgb(255, 255, 255)">
<br>
</div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue; background-color: rgb(255, 255, 255)">
Regards</div>
<div dir=3D"ltr" style=3D"caret-color: rgb(0, 0, 0); font-family: -apple-sy=
stem, HelveticaNeue; background-color: rgb(255, 255, 255)">
Snehasish</div>
</div>
<div><br>
</div>
<div class=3D"ms-outlook-ios-signature">Get <a href=3D"https://aka.ms/o0uke=
f">Outlook for iOS</a></div>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Jonathon Pendlum &lt;=
jonathon.pendlum@ettus.com&gt;<br>
<b>Sent:</b> Thursday, May 27, 2021 12:02:04 AM<br>
<b>To:</b> Snehasish Kar &lt;snehasish.cse@live.com&gt;<br>
<b>Cc:</b> Rob Kossler &lt;rkossler@nd.edu&gt;; usrp-users@lists.ettus.com =
&lt;usrp-users@lists.ettus.com&gt;<br>
<b>Subject:</b> Re: [USRP-users] Re: Timeout while streaming IQ samples to =
host in RFNOC</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Snehasish,
<div><br>
</div>
<div>With a X310, calling set_rate() on the radio block controller doesn't =
set the sample rate. You need a DDC block instead, and you'll want to call&=
nbsp;set_output_rate() to set the desired sample rate. Try the flowgraph Ra=
dio RX-&gt;DDC-&gt;FIR filter-&gt;Host&nbsp;and see
 if that works. I would avoid the DMA FIFO unless you absolutely&nbsp;need =
it, as the block is somewhat finicky.</div>
<div><br>
</div>
<div>Jonathon</div>
</div>
<br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, May 26, 2021 at 2:16 PM Sne=
hasish Kar &lt;<a href=3D"mailto:snehasish.cse@live.com">snehasish.cse@live=
.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div lang=3D"EN-IN" style=3D"">
<div class=3D"x_gmail-m_5144618523184693678WordSection1">
<p class=3D"x_MsoNormal"><span lang=3D"EN-US">No, I tried modifying it. I h=
ave attached the same for your reference.<u></u><u></u></span></p>
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
 href=3D"mailto:jonathon.pendlum@ettus.com" target=3D"_blank">Jonathon Pend=
lum</a><br>
<b>Sent: </b>26 May 2021 23:36<br>
<b>To: </b><a href=3D"mailto:snehasish.cse@live.com" target=3D"_blank">Sneh=
asish Kar</a><br>
<b>Cc: </b><a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">Rob Kossler=
</a>; <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">
usrp-users@lists.ettus.com</a><br>
<b>Subject: </b>Re: [USRP-users] Re: Timeout while streaming IQ samples to =
host in RFNOC</p>
</div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<p class=3D"x_MsoNormal">Hi Snehasish,<u></u><u></u></p>
<div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal">Do you get a timeout when connecting the FIR filte=
r via rfnoc_rx_to_file's &quot;--block-id&quot; option? What about the FIFO=
 block? Also, I would highly suggest updating to the UHD 3.15 LTS branch.<u=
></u><u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal">&nbsp;Jonathon<u></u><u></u></p>
</div>
</div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<div>
<p class=3D"x_MsoNormal">On Wed, May 26, 2021 at 1:20 PM Snehasish Kar &lt;=
<a href=3D"mailto:snehasish.cse@live.com" target=3D"_blank">snehasish.cse@l=
ive.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none; border-right:none; border-bottom:none=
; border-left:1pt solid rgb(204,204,204); padding:0cm 0cm 0cm 6pt; margin-l=
eft:4.8pt; margin-right:0cm">
<div>
<div>
<div>
<div>
<p class=3D"x_MsoNormal">Hello Jonathan&nbsp;<u></u><u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal">Tried with the example as you said, but if only tr=
y to stream from rfnoc radio I am able get IQ samples in the host . But as =
soon as I connect a fir filter with cutoff frequency 20MHz and transition 5=
MHz, it gives a timeout error.<u></u><u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal">My current flowgraph looks something like this:<u>=
</u><u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal">Radio=3D&gt;fifo=3D&gt;fir filter=3D&gt;fifo=3D&gt=
; host<u></u><u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal">Regards&nbsp;<u></u><u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal">Snehasish&nbsp;<u></u><u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div id=3D"x_gmail-m_5144618523184693678gmail-m_-1349171423098946823ms-outl=
ook-mobile-signature">
<p class=3D"x_MsoNormal">Get <a href=3D"https://aka.ms/o0ukef" target=3D"_b=
lank">Outlook for iOS</a><u></u><u></u></p>
</div>
</div>
</div>
<p class=3D"x_MsoNormal"><img border=3D"0" width=3D"549" height=3D"2" id=3D=
"x_gmail-m_5144618523184693678Horizontal_x0020_Line_x0020_1" src=3D"cid:179=
a9e6e7cb1c454ea51" style=3D"width:5.7166in; height:0.025in"><u></u><u></u><=
/p>
<div id=3D"x_gmail-m_5144618523184693678gmail-m_-1349171423098946823divRply=
FwdMsg">
<p class=3D"x_MsoNormal"><b><span style=3D"color:black">From:</span></b><sp=
an style=3D"color:black"> Jonathon Pendlum &lt;<a href=3D"mailto:jonathon.p=
endlum@ettus.com" target=3D"_blank">jonathon.pendlum@ettus.com</a>&gt;<br>
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
<u></u><u></u></p>
<div>
<p class=3D"x_MsoNormal">&nbsp;<u></u><u></u></p>
</div>
</div>
<div>
<div>
<p class=3D"x_MsoNormal">Hello Snehasish, <u></u><u></u></p>
<div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal">I would suggest starting with a known working in-t=
ree example like rfnoc_rx_to_file.cpp. It has a section that&nbsp;connects =
a user defined RFNoC block, and you can easily modify that to instead conne=
ct the FIFOs and FIR filter.<u></u><u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
</div>
<div>
<p class=3D"x_MsoNormal">Jonathon<u></u><u></u></p>
</div>
</div>
<p class=3D"x_MsoNormal"><u></u>&nbsp;<u></u></p>
<div>
<div>
<p class=3D"x_MsoNormal">On Thu, May 20, 2021 at 4:31 AM Snehasish Kar &lt;=
<a href=3D"mailto:snehasish.cse@live.com" target=3D"_blank">snehasish.cse@l=
ive.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none; border-right:none; border-bottom:none=
; border-left:1pt solid rgb(204,204,204); padding:0cm 0cm 0cm 6pt; margin-l=
eft:4.8pt; margin-right:0cm">
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
<div style=3D"border-right:none; border-bottom:none; border-left:none; bord=
er-top:1pt solid rgb(225,225,225); padding:3pt 0cm 0cm">
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
<blockquote style=3D"border-top:none; border-right:none; border-bottom:none=
; border-left:1pt solid rgb(204,204,204); padding:0cm 0cm 0cm 6pt; margin:5=
pt 0cm 5pt 4.8pt">
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
<p class=3D"x_MsoNormal" style=3D"margin-left:9.6pt">______________________=
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
</blockquote>
</div>
</div>
</body>
</html>

--_000_BMXPR01MB24694961142E5E24F87FFEBC88249BMXPR01MB2469INDP_--

--_004_BMXPR01MB24694961142E5E24F87FFEBC88249BMXPR01MB2469INDP_
Content-Type: image/png; name="9D0D0476D84B4974B26F7ABCB629E2D5.png"
Content-Description: 9D0D0476D84B4974B26F7ABCB629E2D5.png
Content-Disposition: inline; filename="9D0D0476D84B4974B26F7ABCB629E2D5.png";
	size=160; creation-date="Wed, 26 May 2021 18:32:42 GMT";
	modification-date="Wed, 26 May 2021 18:32:42 GMT"
Content-ID: <179a9e6e7cb1c454ea51>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAq4AAAADCAYAAABS4o0fAAAAAXNSR0IArs4c6QAAAARnQU1BAACx
jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAA1SURBVGhD7dYxDQAwDASx8CdVBEUQMKnUMQh+
8EnmcHVuDwAApPvjWpIkSVJ6+2QBACBPzwMXHzsdNc3LqgAAAABJRU5ErkJggg==

--_004_BMXPR01MB24694961142E5E24F87FFEBC88249BMXPR01MB2469INDP_--

--===============3202365778613170377==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3202365778613170377==--

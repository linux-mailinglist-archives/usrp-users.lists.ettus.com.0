Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2465E33DDAB
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 20:38:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 428A2383CF1
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 15:38:38 -0400 (EDT)
Received: from a48-90.smtp-out.amazonses.com (a48-90.smtp-out.amazonses.com [54.240.48.90])
	by mm2.emwd.com (Postfix) with ESMTPS id C27C538375E
	for <usrp-users@lists.ettus.com>; Tue, 16 Mar 2021 15:37:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=leirvt27dq24qdtfhpelrkwnirsvxls5; d=ltsnet.net; t=1615923460;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:Content-Type:MIME-Version;
	bh=VfpA94iiPY+bsVLTDINo6zgeD0DkZ+9ZyYYL696am9w=;
	b=RpLW6qBlQLan4gEmi1Dvxg3QAn8YW5IbuT5hVHHbUWO4Dg9q5U+DlByejEiPUlcI
	3+i6XZ+5UgBtOi9SscjaGt7w5d+zECZw3yT1ah5yhidSPiAoxknXJv0itvlMLJrdTsT
	Y3S9rDT3/WZ5rAp5YNdg+HldxTeTOV6lgDh4VBtk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ug7nbtf4gccmlpwj322ax3p6ow6yfsug; d=amazonses.com; t=1615923460;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:Content-Type:MIME-Version:Feedback-ID;
	bh=VfpA94iiPY+bsVLTDINo6zgeD0DkZ+9ZyYYL696am9w=;
	b=CpVieJOpFa8ADyxVLzTr4MuONLINZf/OIK01R2mNzH4rlCOvkZ4OKeQPjjpAJq4U
	xTez1wun9KXtqWoL3U6pHw9PfDC3dNez5tS5bgNFLw+0IvyZeSx28lWxXRYOy+pLhQU
	7ZQHQ9B2qj+vJzSIOU/526Y6E1q2ChxEJ4eLXySg=
X-ASG-Debug-ID: 1615923458-13da5871eb84fa0001-5wTQH4
X-Barracuda-Envelope-From: rclancy@ltsnet.net
X-Barracuda-Effective-Source-IP: UNKNOWN[65.127.220.140]
X-Barracuda-Apparent-Source-IP: 65.127.220.140
From: Robert Clancy <rclancy@ltsnet.net>
To: Rob Kossler <rkossler@nd.edu>
Thread-Topic: [USRP-users] Re: WhiteRabbit switch with an N321
X-ASG-Orig-Subj: Re: [USRP-users] Re: WhiteRabbit switch with an N321
Thread-Index: AQHXGpJOeCL9GPSxuUCG3Nd+EthlJ6qHAWdQ
Date: Tue, 16 Mar 2021 19:37:40 +0000
Message-ID: <010001783c8b37f9-2cca2dd2-0040-46d6-94ab-ff0168208195-000000@email.amazonses.com>
References: <01000178373f94cd-879cf46a-f300-4488-ae11-b774a80328f2-000000@email.amazonses.com>
 <CAKJyDkKOMW+2+85Joby0U1W9c-qXHdcK52xmDg7f2bLXaJ-tuA@mail.gmail.com>
 <010001783a7bec48-40481c5c-2522-4e68-bb71-ce4366302424-000000@email.amazonses.com>,<CAB__hTRjETCBN79-6HnEsZh+bTim9cXVv7OOJPgstm5wjRniLw@mail.gmail.com>
In-Reply-To: <CAB__hTRjETCBN79-6HnEsZh+bTim9cXVv7OOJPgstm5wjRniLw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.40.195.107]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[65.127.220.140]
X-Barracuda-Start-Time: 1615923458
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://mx0.ltsnet.net:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at ltsnet.net
X-Barracuda-Scan-Msg-Size: 40811
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=FUZZY_CPILL, HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.88578
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 FUZZY_CPILL            BODY: Attempt to obfuscate words in spam
	0.00 HTML_MESSAGE           BODY: HTML included in message
X-SES-Outgoing: 2021.03.16-54.240.48.90
Feedback-ID: 1.us-east-1.V/CRDAuSMjsGd/XgcRknIHwtEgjJofZ/T2DY67iFlVQ=:AmazonSES
Message-ID-Hash: 5FNHWJLAUZNI67QDNWYBYQJPQTAQXOJS
X-Message-ID-Hash: 5FNHWJLAUZNI67QDNWYBYQJPQTAQXOJS
X-MailFrom: 010001783c8b37f9-2cca2dd2-0040-46d6-94ab-ff0168208195-000000@amazonses.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: WhiteRabbit switch with an N321
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5FNHWJLAUZNI67QDNWYBYQJPQTAQXOJS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3295050295126359215=="

--===============3295050295126359215==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_e8ba473cd53e4a019f8f1498bb743135ltsnetnet_"

--_000_e8ba473cd53e4a019f8f1498bb743135ltsnetnet_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Rob,


Voila. I know I tried this a while back but ... 2020.


Yes, setting the time_source=3Dsfp0 in the call:


self.uhd_usrp_source_0 =3D uhd.usrp_source(  ",".join(("", "")),    uhd.str=
eam_args(   cpu_format=3D"fc32",  args=3D'addr=3D192.168.10.2,time_source=
=3Dsfp0', channels=3Dlist(range(0,1)),

got this working.



________________________________
From: Rob Kossler <rkossler@nd.edu>
Sent: Tuesday, March 16, 2021 2:28:48 PM
To: Robert Clancy
Cc: Robin Coxe; usrp-users@lists.ettus.com
Subject: Re: [USRP-users] Re: WhiteRabbit switch with an N321

Robert,
Perhaps try with the device args set to "time_source=3Dsfp0" rather than ju=
st using the function call that you are using.

BTW, I am also struggling a bit trying to get my WR Switch to work with my =
N310, but for different reasons.  Mine is starting OK, but then I get a war=
ning "Board 0 may not be getting a PPS signal" and then later my program cr=
ashes.  Still debugging though, so problem might just be on my end.
Rob

On Tue, Mar 16, 2021 at 6:02 AM Robert Clancy <rclancy@ltsnet.net<mailto:rc=
lancy@ltsnet.net>> wrote:

Hi Robin,


Thanks for thinking about this. I do set the time source- in the python scr=
ipt there is a line:


 self.uhd_usrp_source_0.set_time_source("sfp0")


Robert



________________________________
From: Robin Coxe <coxe@quanttux.com<mailto:coxe@quanttux.com>>
Sent: Monday, March 15, 2021 7:12:35 PM
To: Robert Clancy
Cc: usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] WhiteRabbit switch with an N321

Hi Robert.  I think your issue may be that you need to set the time source =
in UHD to sfp0:

https://kb.ettus.com/Using_Ethernet-Based_Synchronization_on_the_USRP%E2%84=
%A2_N3xx_Devices
(Scroll down to the "System Configuration" section).

-Robin


On Mon, Mar 15, 2021 at 11:57 AM Robert Clancy <rclancy@ltsnet.net<mailto:r=
clancy@ltsnet.net>> wrote:

I am trying to test a White Rabbit switch with an N321 radio but am failing=
 to be able to make a capture.


I have Gnuradio 3.8.0 installed and the UHD version is reported as UHD_4.0.=
0.0-18-g83e878cf


This is the response from a probe:


[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-18-g83=
e878cf
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,add=
r=3D192.168.10.2
[INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062
[INFO] [MPM.main] Spawning RPC process...
[INFO] [MPM.PeriphManager] Device serial number: 31B36CF
[INFO] [MPM.Rhodium-0] Enabling LO distribution board
[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!
[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled =
in the device tree overlay (e.g., HG, XG images).
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,time_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.RPCServer] RPC server ready!
[INFO] [MPM.RPCServer] Spawning watchdog task...
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.10.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
  _____________________________________________________
 /
|       Device: N300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-n3xx-31B36CF
|   |   dboard_0_pid: 338
|   |   dboard_0_serial: 3192EC4
|   |   dboard_1_pid: 338
|   |   dboard_1_serial: 3192EB9
|   |   eeprom_version: 3
|   |   fs_version: 20200914000806
|   |   mender_artifact: v4.0.0.0_n3xx
|   |   mpm_sw_version: 4.0.0.0-g90ce6062
|   |   pid: 16962
|   |   product: n320
|   |   rev: 7
|   |   rpc_connection: remote
|   |   serial: 31B36CF
|   |   type: n3xx
|   |   MPM Version: 3.0
|   |   FPGA Version: 8.0
|   |   FPGA git hash: be53058.clean
|   |
|   |   Time sources:  internal, external, gpsdo, sfp0
|   |   Clock sources: external, internal, gpsdo
|   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky, gps=
_time, gps_tpv
|     _____________________________________________________
|    /
|   |       RFNoC blocks on this device:
|   |
|   |   * 0/DDC#0
|   |   * 0/DDC#1
|   |   * 0/DUC#0
|   |   * 0/DUC#1
|   |   * 0/Radio#0
|   |   * 0/Radio#1
|   |   * 0/Replay#0
|     _____________________________________________________
|    /
|   |       Static connections on this device:
|   |
|   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
|   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
|   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
|   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
|   |   * 0/SEP#1:0=3D=3D>0/DUC#1:0
|   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
|   |   * 0/Radio#1:0=3D=3D>0/DDC#1:0
|   |   * 0/DDC#1:0=3D=3D>0/SEP#1:0
|   |   * 0/SEP#2:0=3D=3D>0/Replay#0:0
|   |   * 0/Replay#0:0=3D=3D>0/SEP#2:0
|   |   * 0/SEP#3:0=3D=3D>0/Replay#0:1
|   |   * 0/Replay#0:1=3D=3D>0/SEP#3:0
|     _____________________________________________________
|    /
|   |       TX Dboard: dboard
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: Rhodium
|   |   |   Antennas: TX/RX, RX2, CAL, TERM
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
|   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   Connection Type:
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: dboard
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: Rhodium
|   |   |   Antennas: TX/RX, CAL, TERM
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
|   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   Connection Type:
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: dboard
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: Rhodium
|   |   |   Antennas: TX/RX, RX2, CAL, TERM
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
|   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   Connection Type:
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: dboard
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: Rhodium
|   |   |   Antennas: TX/RX, CAL, TERM
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
|   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   Connection Type:
|   |   |   Uses LO offset: No




I am using this firmware:

uhd_image_loader --args type=3Dn3xx,addr=3D192.168.10.2 --fpga-path=3D"/opt=
/gnuradio/v3.8.0.0/share/uhd/images/usrp_n320_fpga_WX.bit"


[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-18-g83=
e878cf
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,ski=
p_init=3D1
[INFO] [MPMD] Claimed device without full initialization.
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.
[INFO] [MPM.PeriphManager] Updating component `fpga'
[INFO] [MPM.PeriphManager] Updating component `dts'
[INFO] [MPM.RPCServer] Resetting peripheral manager.
[INFO] [MPM.PeriphManager] Device serial number: 31B36CF
[INFO] [MPM.Rhodium-0] Enabling LO distribution board
[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!
[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).
[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled =
in the device tree overlay (e.g., HG, XG images).
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,time_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization & Training Complet=
e
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization & Training Complet=
e




What I think are the relevant parts from a simple script to make a capture:
        ##################################################
        # Variables
        ##################################################
        self.samp_rate =3D samp_rate =3D 12288000

        ##################################################
        # Blocks
        ##################################################
        self.uhd_usrp_source_0 =3D uhd.usrp_source(
            ",".join(("", "")),
            uhd.stream_args(
                cpu_format=3D"fc32",
                args=3D'addr=3D192.168.10.2',
                channels=3Dlist(range(0,1)),
            ),
        )
        ## WhiteRabbit addition
        #self.uhd_usrp_source_0.set_clock_rate(200000000)
        self.uhd_usrp_source_0.set_antenna("TX/RX")
        print("Master clock rate set to: ",self.uhd_usrp_source_0.get_clock=
_rate())
        print("Times sources are ",self.uhd_usrp_source_0.get_time_sources(=
0))
        print("Sample rates is ",self.uhd_usrp_source_0.get_samp_rates().st=
op())
        print("Antenna is ",self.uhd_usrp_source_0.get_antenna())
        self.uhd_usrp_source_0.set_clock_source("internal")
        self.uhd_usrp_source_0.set_time_source("sfp0")
        print("Time source is ",self.uhd_usrp_source_0.get_time_source(0))
        ###

        self.uhd_usrp_source_0.set_center_freq(75000100, 0)
        print("Tuned to  ",self.uhd_usrp_source_0.get_center_freq(0))
        self.uhd_usrp_source_0.set_gain(0, 0)
        self.uhd_usrp_source_0.set_antenna('TX/RX', 0)
        self.uhd_usrp_source_0.set_samp_rate(samp_rate)

And then the error:

[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.0.0.0-18-g83=
e878cf
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,add=
r=3D192.168.10.2
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.10.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'.
[INFO] [MPM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
[INFO] [MPM.Rhodium-1] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'
Master clock rate set to:  245760000.0
Times sources are  ('internal', 'external', 'gpsdo', 'sfp0')
Sample rates is  245760000.0
Antenna is  TX/RX
[INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take some t=
ime.
[INFO] [MPM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dsfp0,skip_rfic=3DNone,ma=
ster_clock_rate=3D245760000.0,ref_clk_freq=3D25000000.0'
[ERROR] [RPC] TDC Failed to reset.
Traceback (most recent call last):
  File "./TimeDomainDisplay.py", line 212, in <module>
    main()
  File "./TimeDomainDisplay.py", line 188, in main
    tb =3D top_block_cls()
  File "./TimeDomainDisplay.py", line 95, in __init__
    self.uhd_usrp_source_0.set_time_source("sfp0")
  File "/opt/gnuradio/v3.8.0.0/lib/python3/dist-packages/gnuradio/uhd/uhd_s=
wig.py", line 4577, in set_time_source
    return _uhd_swig.usrp_source_sptr_set_time_source(self, source, mboard)
RuntimeError: RuntimeError: Error during RPC call to `set_time_source'. Err=
or message: TDC Failed to reset.
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
[ERROR] [MPM.Sync-0] TDC Failed to Reset! Check your clocks! Status: 0x0
[ERROR] [MPM.RPCServer] Uncaught exception in method set_time_source :TDC F=
ailed to reset.
 Traceback (most recent call last):
  File "/usr/lib/python3.7/site-packages/usrp_mpm/rpc_server.py", line 186,=
 in new_claimed_function
    return function(*args)
  File "/usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/n3xx.py", =
line 596, in set_time_source
    self.set_sync_source(source)
  File "/usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/n3xx.py", =
line 696, in set_sync_source
    skip_rfic=3Dargs.get('skip_rfic', None)
  File "/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/rhodium.py=
", line 478, in update_ref_clock_freq
    self._reinit(self.master_clock_rate)
  File "/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/rhodium.py=
", line 438, in _reinit
    self.init(args)
  File "/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/rhodium.py=
", line 341, in init
    init_result =3D RhodiumInitManager(self, self._spi_ifaces).init(args)
  File "/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/rh_init.py=
", line 344, in init
    args)
  File "/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/rh_init.py=
", line 100, in _sync_db_clock
    target_offset=3Dtrace_delay_offset))
  File "/usr/lib/python3.7/site-packages/usrp_mpm/cores/tdc_sync.py", line =
201, in run
    self.configure(force=3DTrue)
  File "/usr/lib/python3.7/site-packages/usrp_mpm/cores/tdc_sync.py", line =
254, in configure
    raise RuntimeError("TDC Failed to reset.")
RuntimeError: TDC Failed to reset.


Can anyone shed any light on what is going on?

Has anyone actually got an Ettus radio working with the WX firmware and a W=
hite Rabbit switch?

FWIW, the WR switch appears happy. I've walked its SNMP tree and all seems =
well. It is operating in Grandmaster mode with the one N321 hanging off its=
 first port.

Robert

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

--_000_e8ba473cd53e4a019f8f1498bb743135ltsnetnet_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>Rob,</p>
<p><br>
</p>
<p>Voila. I know I tried this a while back but ... 2020. <br>
</p>
<p><br>
</p>
<p>Yes, setting the time_source=3Dsfp0 in the call: <br>
</p>
<p></p>
<div><br>
</div>
<div><br>
</div>
<div>self.uhd_usrp_source_0 =3D uhd.usrp_source(&nbsp; &quot;,&quot;.join((=
&quot;&quot;, &quot;&quot;)),&nbsp;&nbsp;&nbsp; uhd.stream_args(&nbsp;&nbsp=
; cpu_format=3D&quot;fc32&quot;,&nbsp;
<span style=3D"color: rgb(189, 19, 152);">args=3D'addr=3D192.168.10.2,time_=
source=3Dsfp0'</span>, channels=3Dlist(range(0,1)),<br>
<br>
</div>
got this working.
<p></p>
<p><br>
</p>
<p><br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Rob Kossler &lt;rkoss=
ler@nd.edu&gt;<br>
<b>Sent:</b> Tuesday, March 16, 2021 2:28:48 PM<br>
<b>To:</b> Robert Clancy<br>
<b>Cc:</b> Robin Coxe; usrp-users@lists.ettus.com<br>
<b>Subject:</b> Re: [USRP-users] Re: WhiteRabbit switch with an N321</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Robert,
<div>Perhaps try with the device args set to &quot;time_source=3Dsfp0&quot;=
 rather than just using the function call that you are using.&nbsp;</div>
<div><br>
</div>
<div>BTW, I am also struggling a bit trying to get my WR Switch to work wit=
h my N310, but for different reasons.&nbsp; Mine is starting OK, but then I=
 get a warning &quot;Board 0 may not be getting a PPS signal&quot; and then=
 later my program crashes.&nbsp; Still debugging though,
 so problem might just be on my end.</div>
<div>Rob</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 16, 2021 at 6:02 AM Rober=
t Clancy &lt;<a href=3D"mailto:rclancy@ltsnet.net">rclancy@ltsnet.net</a>&g=
t; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div>
<div id=3D"gmail-m_-2701009752514349730divtagdefaultwrapper" style=3D"font-=
size:12pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D=
"ltr">
<p>Hi Robin,</p>
<p><br>
</p>
<p>Thanks for thinking about this. I do set the time source- in the python =
script there is a line:</p>
<p><br>
</p>
<p><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;=
font-size:16px">&nbsp;self.uhd_usrp_source_0.set_time_source(&quot;sfp0&quo=
t;)</span><br>
</p>
<p><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;=
font-size:16px"><br>
</span></p>
<p><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;=
font-size:16px">Robert</span></p>
<p><span style=3D"font-family:Calibri,Helvetica,sans-serif,serif,EmojiFont;=
font-size:16px"><br>
</span></p>
<p><br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"gmail-m_-2701009752514349730divRplyFwdMsg" dir=3D"ltr"><font fac=
e=3D"Calibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>Fro=
m:</b> Robin Coxe &lt;<a href=3D"mailto:coxe@quanttux.com" target=3D"_blank=
">coxe@quanttux.com</a>&gt;<br>
<b>Sent:</b> Monday, March 15, 2021 7:12:35 PM<br>
<b>To:</b> Robert Clancy<br>
<b>Cc:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">=
usrp-users@lists.ettus.com</a><br>
<b>Subject:</b> Re: [USRP-users] WhiteRabbit switch with an N321</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">Hi Robert.&nbsp; I think your issue may be that you need t=
o set the time source in UHD to sfp0:
<div><br>
</div>
<div><a href=3D"https://kb.ettus.com/Using_Ethernet-Based_Synchronization_o=
n_the_USRP%E2%84%A2_N3xx_Devices" target=3D"_blank">https://kb.ettus.com/Us=
ing_Ethernet-Based_Synchronization_on_the_USRP%E2%84%A2_N3xx_Devices</a><br=
>
</div>
<div>(Scroll down to the &quot;System Configuration&quot; section).</div>
<div><br>
</div>
<div>-Robin</div>
<div><br>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 15, 2021 at 11:57 AM Robe=
rt Clancy &lt;<a href=3D"mailto:rclancy@ltsnet.net" target=3D"_blank">rclan=
cy@ltsnet.net</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"gmail-m_-2701009752514349730gmail-m_-3345210666378511327divtagde=
faultwrapper" style=3D"font-size:12pt;color:rgb(0,0,0);font-family:Calibri,=
Helvetica,sans-serif" dir=3D"ltr">
<p>I am trying to test a White Rabbit switch with an N321 radio but am fail=
ing to be able to make a capture.</p>
<p><br>
</p>
<p>I have Gnuradio 3.8.0 installed and the UHD version is reported as <span=
>UHD_4.0.0.0-18-g83e878cf</span></p>
<p><span><br>
</span></p>
<p><span>This is the response from a probe:</span></p>
<p><span><br>
</span></p>
<p><span></span></p>
<div><i>[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; Boost_106501; UH=
D_4.0.0.0-18-g83e878cf<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,add=
r=3D192.168.10.2<br>
[INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g90ce6062<br>
[INFO] [MPM.main] Spawning RPC process...<br>
[INFO] [MPM.PeriphManager] Device serial number: 31B36CF<br>
[INFO] [MPM.Rhodium-0] Enabling LO distribution board<br>
[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!<br>
[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!<br>
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br>
[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled =
in the device tree overlay (e.g., HG, XG images).<br>
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,time_source=3Dinternal'.<br>
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'<br>
[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'<br>
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!<br>
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!<br>
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!<br>
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!<br>
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Training Com=
plete<br>
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!<br>
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!<br>
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Training Com=
plete<br>
[INFO] [MPM.RPCServer] RPC server ready!<br>
[INFO] [MPM.RPCServer] Spawning watchdog task...<br>
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.10.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'.<br=
>
[INFO] [MPM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'<br>
[INFO] [MPM.Rhodium-1] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'<br>
&nbsp; _____________________________________________________<br>
&nbsp;/<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Device: N300-Series Device<br>
|&nbsp;&nbsp;&nbsp;&nbsp; _________________________________________________=
____<br>
|&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mboard: ni-n3xx-31B36CF=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; dboard_0_pid: 338<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; dboard_0_serial: 3192EC4<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; dboard_1_pid: 338<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; dboard_1_serial: 3192EB9<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; eeprom_version: 3<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; fs_version: 20200914000806<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; mender_artifact: v4.0.0.0_n3xx<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; mpm_sw_version: 4.0.0.0-g90ce6062<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; pid: 16962<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; product: n320<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; rev: 7<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; rpc_connection: remote<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; serial: 31B36CF<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; type: n3xx<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; MPM Version: 3.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA Version: 8.0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; FPGA git hash: be53058.clean<br>
|&nbsp;&nbsp; |&nbsp; &nbsp;<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; Time sources:&nbsp; internal, external, gpsdo, =
sfp0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; Clock sources: external, internal, gpsdo<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; Sensors: ref_locked, gps_locked, temp, fan, gps=
_gpgga, gps_sky, gps_time, gps_tpv<br>
|&nbsp;&nbsp;&nbsp;&nbsp; _________________________________________________=
____<br>
|&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RFNoC blocks on this de=
vice:<br>
|&nbsp;&nbsp; |&nbsp; &nbsp;<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DDC#0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DDC#1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DUC#0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DUC#1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#0<br>
|&nbsp;&nbsp;&nbsp;&nbsp; _________________________________________________=
____<br>
|&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Static connections on t=
his device:<br>
|&nbsp;&nbsp; |&nbsp; &nbsp;<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DDC#0:0=3D=3D&gt;0/SEP#0:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#1:0=3D=3D&gt;0/DUC#1:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DUC#1:0=3D=3D&gt;0/Radio#1:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Radio#1:0=3D=3D&gt;0/DDC#1:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/DDC#1:0=3D=3D&gt;0/SEP#1:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#2:0=3D=3D&gt;0/Replay#0:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#0:0=3D=3D&gt;0/SEP#2:0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/SEP#3:0=3D=3D&gt;0/Replay#0:1<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; * 0/Replay#0:1=3D=3D&gt;0/SEP#3:0<br>
|&nbsp;&nbsp;&nbsp;&nbsp; _________________________________________________=
____<br>
|&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard: dboard<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________________________________=
__________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Fronte=
nd: 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: Rhodium<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, RX2, CAL, TERM<b=
r>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 6000.000 MHz=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 60.0 step =
1.0 dB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 250000000.0 to 2=
50000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<br>
|&nbsp;&nbsp;&nbsp;&nbsp; _________________________________________________=
____<br>
|&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard: dboard<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________________________________=
__________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Fronte=
nd: 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: Rhodium<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, CAL, TERM<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 6000.000 MHz=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 60.0 step =
1.0 dB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 250000000.0 to 2=
50000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<br>
|&nbsp;&nbsp;&nbsp;&nbsp; _________________________________________________=
____<br>
|&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Dboard: dboard<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________________________________=
__________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TX Fronte=
nd: 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: Rhodium<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, RX2, CAL, TERM<b=
r>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 6000.000 MHz=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 60.0 step =
1.0 dB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 250000000.0 to 2=
50000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<br>
|&nbsp;&nbsp;&nbsp;&nbsp; _________________________________________________=
____<br>
|&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Dboard: dboard<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; ___________________________________=
__________________<br>
|&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; /<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RX Fronte=
nd: 0<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Name: Rhodium<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Antennas: TX/RX, CAL, TERM<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Freq range: 1.000 to 6000.000 MHz=
<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Gain range all: 0.0 to 60.0 step =
1.0 dB<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Bandwidth range: 250000000.0 to 2=
50000000.0 step 0.0 Hz<br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Connection Type: <br>
|&nbsp;&nbsp; |&nbsp;&nbsp; |&nbsp;&nbsp; Uses LO offset: No<br>
<br>
</i></div>
<br>
<p></p>
<p><br>
</p>
<p>I am using this firmware: <br>
</p>
<p><i><span>uhd_image_loader --args type=3Dn3xx,addr=3D192.168.10.2 --fpga-=
path=3D&quot;/opt/gnuradio/v3.8.0.0/share/uhd/images/usrp_n320_fpga_WX.bit&=
quot;</span></i></p>
<p><i><span><br>
</span></i></p>
<p><i><span></span></i></p>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; Boost_106501; UHD_4=
.0.0.0-18-g83e878cf<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,ski=
p_init=3D1<br>
[INFO] [MPMD] Claimed device without full initialization.<br>
[INFO] [MPMD IMAGE LOADER] Starting update. This may take a while.<br>
[INFO] [MPM.PeriphManager] Updating component `fpga'<br>
[INFO] [MPM.PeriphManager] Updating component `dts'<br>
[INFO] [MPM.RPCServer] Resetting peripheral manager.<br>
[INFO] [MPM.PeriphManager] Device serial number: 31B36CF<br>
[INFO] [MPM.Rhodium-0] Enabling LO distribution board<br>
[INFO] [MPM.Rhodium-0] Successfully loaded all peripherals!<br>
[INFO] [MPM.Rhodium-1] Successfully loaded all peripherals!<br>
[INFO] [MPM.PeriphManager] Initialized 2 daughterboard(s).<br>
[INFO] [MPM.PeriphManager] No QSFP board detected: Assuming it is disabled =
in the device tree overlay (e.g., HG, XG images).<br>
[INFO] [MPM.PeriphManager] init() called with device args `clock_source=3Di=
nternal,time_source=3Dinternal'.<br>
[INFO] [MPM.Rhodium-0] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'<br>
[INFO] [MPM.Rhodium-1] init() called with args `clock_source=3Dinternal,tim=
e_source=3Dinternal'<br>
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!<br>
[INFO] [MPM.Rhodium-1.init.LMK04828] LMK initialized and locked!<br>
[INFO] [MPM.Rhodium-1.DAC37J82] DAC PLL Locked!<br>
[INFO] [MPM.Rhodium-1.AD9695] ADC PLL Locked!<br>
[INFO] [MPM.Rhodium-1.init] JESD204B Link Initialization &amp; Training Com=
plete<br>
[INFO] [MPM.Rhodium-0.DAC37J82] DAC PLL Locked!<br>
[INFO] [MPMD IMAGE LOADER] Update component function succeeded.<br>
[INFO] [MPM.Rhodium-0.AD9695] ADC PLL Locked!<br>
[INFO] [MPM.Rhodium-0.init] JESD204B Link Initialization &amp; Training Com=
plete</div>
<p></p>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>What I think are the relevant parts from a simple script to make a cap=
ture:</div>
<div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ###########################=
#######################<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Variables<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ################################=
##################<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.samp_rate =3D samp_rate =3D=
 12288000<br>
<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ################################=
##################<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; # Blocks<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ################################=
##################<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.uhd_usrp_source_0 =3D uhd.u=
srp_source(<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;,&=
quot;.join((&quot;&quot;, &quot;&quot;)),<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; uhd.stre=
am_args(<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; cpu_format=3D&quot;fc32&quot;,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; args=3D'addr=3D192.168.10.2',<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; channels=3Dlist(range(0,1)),<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ),<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; )<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ## WhiteRabbit addition<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; #self.uhd_usrp_source_0.set_cloc=
k_rate(200000000)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.uhd_usrp_source_0.set_anten=
na(&quot;TX/RX&quot;)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(&quot;Master clock rate se=
t to: &quot;,self.uhd_usrp_source_0.get_clock_rate())<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(&quot;Times sources are &q=
uot;,self.uhd_usrp_source_0.get_time_sources(0))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(&quot;Sample rates is &quo=
t;,self.uhd_usrp_source_0.get_samp_rates().stop())<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(&quot;Antenna is &quot;,se=
lf.uhd_usrp_source_0.get_antenna())&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nb=
sp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.uhd_usrp_source_0.set_clock=
_source(&quot;internal&quot;)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.uhd_usrp_source_0.set_time_=
source(&quot;sfp0&quot;)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(&quot;Time source is &quot=
;,self.uhd_usrp_source_0.get_time_source(0))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ###<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.uhd_usrp_source_0.set_cente=
r_freq(75000100, 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; print(&quot;Tuned to&nbsp; &quot=
;,self.uhd_usrp_source_0.get_center_freq(0))<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.uhd_usrp_source_0.set_gain(=
0, 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.uhd_usrp_source_0.set_anten=
na('TX/RX', 0)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; self.uhd_usrp_source_0.set_samp_=
rate(samp_rate)<br>
<br>
</div>
And then the error:</div>
<div><br>
</div>
<div>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; Boost_106501; UHD_4=
.0.0.0-18-g83e878cf<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.10.2,type=3Dn3xx,product=3Dn320,serial=3D31B36CF,claimed=3DFalse,add=
r=3D192.168.10.2<br>
[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.=
168.10.2,product=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'.<br=
>
[INFO] [MPM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'<br>
[INFO] [MPM.Rhodium-1] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dinternal'<br>
Master clock rate set to:&nbsp; 245760000.0<br>
Times sources are&nbsp; ('internal', 'external', 'gpsdo', 'sfp0')<br>
Sample rates is&nbsp; 245760000.0<br>
Antenna is&nbsp; TX/RX<br>
[INFO] [MPM.Rhodium-0] Re-initializing daughter board. This may take some t=
ime.<br>
[INFO] [MPM.Rhodium-0] init() called with args `mgmt_addr=3D192.168.10.2,pr=
oduct=3Dn320,clock_source=3Dinternal,time_source=3Dsfp0,skip_rfic=3DNone,ma=
ster_clock_rate=3D245760000.0,ref_clk_freq=3D25000000.0'<br>
[ERROR] [RPC] TDC Failed to reset.<br>
Traceback (most recent call last):<br>
&nbsp; File &quot;./TimeDomainDisplay.py&quot;, line 212, in &lt;module&gt;=
<br>
&nbsp;&nbsp;&nbsp; main()<br>
&nbsp; File &quot;./TimeDomainDisplay.py&quot;, line 188, in main<br>
&nbsp;&nbsp;&nbsp; tb =3D top_block_cls()<br>
&nbsp; File &quot;./TimeDomainDisplay.py&quot;, line 95, in __init__<br>
&nbsp;&nbsp;&nbsp; self.uhd_usrp_source_0.set_time_source(&quot;sfp0&quot;)=
<br>
&nbsp; File &quot;/opt/gnuradio/v3.8.0.0/lib/python3/dist-packages/gnuradio=
/uhd/uhd_swig.py&quot;, line 4577, in set_time_source<br>
&nbsp;&nbsp;&nbsp; return _uhd_swig.usrp_source_sptr_set_time_source(self, =
source, mboard)<br>
RuntimeError: RuntimeError: Error during RPC call to `set_time_source'. Err=
or message: TDC Failed to reset.<br>
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!<br>
[ERROR] [MPM.Sync-0] TDC Failed to Reset! Check your clocks! Status: 0x0<br=
>
[ERROR] [MPM.RPCServer] Uncaught exception in method set_time_source :TDC F=
ailed to reset.
<br>
&nbsp;Traceback (most recent call last):<br>
&nbsp; File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/rpc_server.py&q=
uot;, line 186, in new_claimed_function<br>
&nbsp;&nbsp;&nbsp; return function(*args)<br>
&nbsp; File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/=
n3xx.py&quot;, line 596, in set_time_source<br>
&nbsp;&nbsp;&nbsp; self.set_sync_source(source)<br>
&nbsp; File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/=
n3xx.py&quot;, line 696, in set_sync_source<br>
&nbsp;&nbsp;&nbsp; skip_rfic=3Dargs.get('skip_rfic', None)<br>
&nbsp; File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/=
rhodium.py&quot;, line 478, in update_ref_clock_freq<br>
&nbsp;&nbsp;&nbsp; self._reinit(self.master_clock_rate)<br>
&nbsp; File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/=
rhodium.py&quot;, line 438, in _reinit<br>
&nbsp;&nbsp;&nbsp; self.init(args)<br>
&nbsp; File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/=
rhodium.py&quot;, line 341, in init<br>
&nbsp;&nbsp;&nbsp; init_result =3D RhodiumInitManager(self, self._spi_iface=
s).init(args)<br>
&nbsp; File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/=
rh_init.py&quot;, line 344, in init<br>
&nbsp;&nbsp;&nbsp; args)<br>
&nbsp; File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/dboard_manager/=
rh_init.py&quot;, line 100, in _sync_db_clock<br>
&nbsp;&nbsp;&nbsp; target_offset=3Dtrace_delay_offset))<br>
&nbsp; File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/cores/tdc_sync.=
py&quot;, line 201, in run<br>
&nbsp;&nbsp;&nbsp; self.configure(force=3DTrue)<br>
&nbsp; File &quot;/usr/lib/python3.7/site-packages/usrp_mpm/cores/tdc_sync.=
py&quot;, line 254, in configure<br>
&nbsp;&nbsp;&nbsp; raise RuntimeError(&quot;TDC Failed to reset.&quot;)<br>
RuntimeError: TDC Failed to reset.<br>
<br>
</div>
</div>
<div><br>
</div>
<div>Can anyone shed any light on what is going on? <br>
</div>
<div><br>
</div>
<div>Has anyone actually got an Ettus radio working with the WX firmware an=
d a White Rabbit switch?</div>
<div><br>
</div>
<div>FWIW, the WR switch appears happy. I've walked its SNMP tree and all s=
eems well. It is operating in Grandmaster mode with the one N321 hanging of=
f its first port.</div>
<div><br>
</div>
<div>Robert<br>
</div>
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
</blockquote>
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
</blockquote>
</div>
</div>
</body>
</html>

--_000_e8ba473cd53e4a019f8f1498bb743135ltsnetnet_--

--===============3295050295126359215==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3295050295126359215==--

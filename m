Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 231C344C915
	for <lists+usrp-users@lfdr.de>; Wed, 10 Nov 2021 20:41:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC661380F26
	for <lists+usrp-users@lfdr.de>; Wed, 10 Nov 2021 14:41:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=ltsnet.net header.i=@ltsnet.net header.b="Uwn4mfdR";
	dkim=fail reason="signature verification failed" (1024-bit key; unprotected) header.d=amazonses.com header.i=@amazonses.com header.b="HF16Z3xo";
	dkim-atps=neutral
Received: from a48-94.smtp-out.amazonses.com (a48-94.smtp-out.amazonses.com [54.240.48.94])
	by mm2.emwd.com (Postfix) with ESMTPS id AFB92383C51
	for <usrp-users@lists.ettus.com>; Wed, 10 Nov 2021 14:40:32 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=5yiw3lu2bciat6xpj24ncpgudvrinkei; d=ltsnet.net; t=1636573232;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version;
	bh=ufzYRTK6OLFJUvMJTTSqV/Zr5luJt7R7jgehaZymoN0=;
	b=Uwn4mfdRmcAkXfKpqSQ+FHoayRV9CT7ZZhUsJq6C8mwfyNyy7Ddri6RoT0NMuRmJ
	mg6s7ZaHD8Q6tO7YeHfdz3zOTPmqIw3sjjHRVKyhYntE7otG7FKRbgBIef7BOnM7RGL
	yrN3ANL/wDaT7T59hG4L7tEsrbURN8QKM8tdgo/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ug7nbtf4gccmlpwj322ax3p6ow6yfsug; d=amazonses.com; t=1636573232;
	h=From:To:CC:Subject:Date:Message-ID:Content-Type:MIME-Version:Feedback-ID;
	bh=ufzYRTK6OLFJUvMJTTSqV/Zr5luJt7R7jgehaZymoN0=;
	b=HF16Z3xozW+1XBYjU8mhDlfeOi7gPwUVet4Dz0upZBfwEYYiZryABHIxNrdRunO8
	JvjNxudeuVN1ThJcR7lRL+ds6NOR4j7VA6J9kRGIdA0Xe64rf6TyLM+QWJei1v8K6K7
	PdwaWYUyI2NGj8UUiIW7h78HVrI27+zYSQm7cfAQ=
X-ASG-Debug-ID: 1636573230-13da5816dd11340001-5wTQH4
X-Barracuda-Envelope-From: rclancy@ltsnet.net
X-Barracuda-Effective-Source-IP: UNKNOWN[65.127.220.140]
X-Barracuda-Apparent-Source-IP: 65.127.220.140
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Thread-Topic: Timing discrepencies with X310 vs N320
X-ASG-Orig-Subj: Timing discrepencies with X310 vs N320
Thread-Index: AQHX1moIBLmtdSyoUke7WQAQSP/GlQ==
Date: Wed, 10 Nov 2021 19:40:32 +0000
Message-ID: <0100017d0b5dbaba-a700b238-8ccb-480e-9586-9edf72ec2f6f-000000@email.amazonses.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.70.7.133]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[65.127.220.140]
X-Barracuda-Start-Time: 1636573230
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://mx0.ltsnet.net:443/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at ltsnet.net
X-Barracuda-Scan-Msg-Size: 44330
X-Barracuda-Spam-Score: 0.50
X-Barracuda-Spam-Status: No, SCORE=0.50 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=BSF_RULE_7582B, HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.93871
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
	0.50 BSF_RULE_7582B         Custom Rule 7582B
Feedback-ID: 1.us-east-1.V/CRDAuSMjsGd/XgcRknIHwtEgjJofZ/T2DY67iFlVQ=:AmazonSES
X-SES-Outgoing: 2021.11.10-54.240.48.94
Message-ID-Hash: SECDUPAC4QIRUW52URYEOYL73HI7AP2V
X-Message-ID-Hash: SECDUPAC4QIRUW52URYEOYL73HI7AP2V
X-MailFrom: 0100017d0b5dbaba-a700b238-8ccb-480e-9586-9edf72ec2f6f-000000@mailfrom.ltsnet.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Jason Matusiak <jmatusiak@ltsnet.net>, James Palladino <jpalladino@ltsnet.net>, Michael Gross <mgross@ltsnet.net>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Timing discrepencies with X310 vs N320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SECDUPAC4QIRUW52URYEOYL73HI7AP2V/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Robert Clancy via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robert Clancy <rclancy@ltsnet.net>
Content-Type: multipart/mixed; boundary="===============4211614447185453909=="

--===============4211614447185453909==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_97a9936b96b1482684e919417e52151altsnetnet_"

--_000_97a9936b96b1482684e919417e52151altsnetnet_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

TLDR- Setting the time ( set_time_next_pps() ) on (multiple) X310 doesn't r=
esult in USRP time being aligned with PPS edge. Works on N320.


I have two X310's and an N320 as well as an Octoclock. The Octoclock does h=
ave GPS lock. All four devices are on different computers, each of which ha=
s its system time set via NTP. We are using UHD version UHD_4.1.0.4-0-g25d6=
17ca. I'll include the find_devices and probe output at the end for referen=
ce. We're running Ubuntu Bionic 18.04.6 LTS on all machines.


The Octoclock is accessed via a custom network shim that runs on the machin=
e to which the Octoclock is attached. Machines with radios ( X's or N's ) c=
an make a request of the custom Octoclock network service to get Octoclock =
time. Octoclock time agrees very well with the NTP top of the second ( typi=
cally withing 25ms ) given the inherent uncertainty running python code on =
different machines. By "agrees very well" I mean the delta between Octocloc=
k time and NTP time has a low variance. All that to say, I do not suspect t=
he Octoclock or software used to access the Octoclock.


The crux of the issue is that when using external clock (10MHz) and timing =
reference (1PPS) ( provided by Octoclock ) and setting an X310 time ( set_t=
ime_next_pps ), I am seeing about a 200ms (or 800ms depending on how you ar=
e measuring ) difference in when the X310 reports it is at the top of a sec=
ond versus either time.time() or the octoclock time. I do not see this disc=
repancy with the N320 radio.


The net effect of this is that if an X and N are set to transmit at the ver=
y same time, we can see that the X transmits 800ish ms early relative to th=
e N using a spectrum analyzer ( real hardware ). The N transmits at the cor=
rect time eyeballing wall clock/computer time.


Here is some of our test code that we've been using to investigate this:

    usrp =3D uhd.usrp_sink( ",".join((options.address, "")), uhd.stream_arg=
s( cpu_format=3D"fc32", args=3D'', channels=3Dlist(range(0,1)), ),'', )
    usrp.set_time_source('external', 0)
    usrp.set_clock_source('external', 0)
    usrp.set_time_unknown_pps(uhd.time_spec())

    reflock =3D str(usrp.get_mboard_sensor("ref_locked", 0)).split(": ")[1]
    if  reflock !=3D 'locked':
        print('reference not locked')
        print('exiting')
        exit()
    else:
        print('referenced locked')

     # the get_octo_time () call is a call to our networked octoclock. Just=
 imagine this line as querying the octoclock for time
    next_pps =3D get_octo_time() + 1

     usrp.set_time_next_pps(uhd.time_spec_t(next_pps))

    # sleep for a few seconds
    time.sleep(2.0)

    oc_time=3Dget_octo_time()
    usrp_time =3D usrp.get_time_now()
    usrp_time_last_pps =3D usrp.get_time_last_pps()
    system_time =3D time.time()

    usrp_time_source =3D usrp.get_time_source(0)
    usrp_time_sources =3D usrp.get_time_sources(0)
    print(f"TRANSMIT:: OC time is {oc_time} \n" \
          f"TRANSMIT:: usrp_time_last_pps is {usrp_time_last_pps.get_full_s=
ecs()} \n" \
          f"TRANSMIT:: usrp_time_last_pps_frac is {usrp_time_last_pps.get_f=
rac_secs()} \n" \
          f"TRANSMIT:: usrp_time is {usrp_time.get_full_secs()} \n" \
          f"TRANSMIT:: usrp_time_frac is {usrp_time.get_frac_secs()} \n" \
          f"TRANSMIT:: system time is {system_time} \n" \
          f"TRANSMIT:: usrp_time_source is {usrp_time_source} \n" \
          f"TRANSMIT:: usrp_time_sources are {usrp_time_sources}")

And here is some output from an X310:

TRANSMIT:: OC time is 1636568870
TRANSMIT:: usrp_time_last_pps is 1636568869
TRANSMIT:: usrp_time_last_pps_frac is 0.0
TRANSMIT:: usrp_time is 1636568869
TRANSMIT:: usrp_time_frac is 0.82498684
TRANSMIT:: system time is 1636568870.0275745
TRANSMIT:: usrp_time_source is external
TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo')

So the problem here is that the fractional time (usrp_time_frac) is 800ish =
ms when it should be more like 25ish ms (  like time.time() i.e. system tim=
e ).

Here is the result of running the same code on a host with an N320:

TRANSMIT:: OC time is 1636570841
TRANSMIT:: usrp_time_last_pps is 1636570841
TRANSMIT:: usrp_time_last_pps_frac is 0.0
TRANSMIT:: usrp_time is 1636570841
TRANSMIT:: usrp_time_frac is 0.025938016764322915
TRANSMIT:: system time is 1636570841.0290515
TRANSMIT:: usrp_time_source is external
TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo', 'sfp0')



As I mentioned, the octoclock time comes back right at the top of the secon=
d reletive to NTP time ( as I would expect )- this can be seen by the green=
 hightlighted fraction. However on the X310, some 800ms have already passed=
. Not so on the N320 (as expected) . Why?


Below is the output of uhd_find_devices and uhd_usrp_probe for the two radi=
os:

[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-0-g25d=
617ca
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 31EDED4
    addr: 192.168.40.2
    claimed: False
    fpga: XG
    mgmt_addr: 192.168.30.2
    mgmt_addr: 192.168.40.2
    product: n320
    type: n3xx




[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-0-g25d=
617ca
[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_addr=3D1=
92.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,claimed=
=3DFalse,addr=3D192.168.40.2
[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,mgmt_a=
ddr=3D192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dext=
ernal'.
[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'
[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D192.1=
68.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'
  _____________________________________________________
 /
|       Device: N300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-n3xx-31EDED4
|   |   dboard_0_pid: 338
|   |   dboard_0_serial: 31EBB6F
|   |   dboard_1_pid: 338
|   |   dboard_1_serial: 31EBB94
|   |   eeprom_version: 3
|   |   fs_version: 20210910210929
|   |   mender_artifact: v4.1.0.2_n3xx
|   |   mpm_sw_version: 4.1.0.2-g8ce6e64f
|   |   pid: 16962
|   |   product: n320
|   |   rev: 10
|   |   rpc_connection: remote
|   |   serial: 31EDED4
|   |   type: n3xx
|   |   MPM Version: 4.0
|   |   FPGA Version: 8.0
|   |   FPGA git hash: d5c2750.clean
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
|   |       TX Dboard: 0/Radio#0
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: Rhodium
|   |   |   Antennas: TX/RX, CAL, TERM
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
|   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   Connection Type:
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#0
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: Rhodium
|   |   |   Antennas: TX/RX, RX2, CAL, TERM
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
|   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   Connection Type:
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#1
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: Rhodium
|   |   |   Antennas: TX/RX, CAL, TERM
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
|   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   Connection Type:
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#1
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: Rhodium
|   |   |   Antennas: TX/RX, RX2, CAL, TERM
|   |   |   Freq range: 1.000 to 6000.000 MHz
|   |   |   Gain range all: 0.0 to 60.0 step 1.0 dB
|   |   |   Bandwidth range: 250000000.0 to 250000000.0 step 0.0 Hz
|   |   |   Connection Type:
|   |   |   Uses LO offset: No



And then for the X310:

[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-0-g25d=
617ca
--------------------------------------------------
-- UHD Device 0
--------------------------------------------------
Device Address:
    serial: 30E153C
    addr: 192.168.30.2
    addr: 192.168.40.2
    fpga: XG
    name:
    product: X310
    type: x300




[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; UHD_4.1.0.4-0-g25d=
617ca
[INFO] [X300] X300 initialization sequence...
[INFO] [X300] Maximum frame size: 8000 bytes.
[INFO] [X300] Radio 1x clock: 200 MHz
  _____________________________________________________
 /
|       Device: X-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: X310
|   |   revision: 8
|   |   revision_compat: 7
|   |   product: 30818
|   |   mac-addr0: 00:80:2f:25:90:e6
|   |   mac-addr1: 00:80:2f:25:90:e7
|   |   gateway: 192.168.10.1
|   |   ip-addr0: 192.168.10.2
|   |   subnet0: 255.255.255.0
|   |   ip-addr1: 192.168.20.2
|   |   subnet1: 255.255.255.0
|   |   ip-addr2: 192.168.30.2
|   |   subnet2: 255.255.255.0
|   |   ip-addr3: 192.168.40.2
|   |   subnet3: 255.255.255.0
|   |   serial: 30E153C
|   |   FW Version: 6.0
|   |   FPGA Version: 38.0
|   |   FPGA git hash: b1ca7f3
|   |
|   |   Time sources:  internal, external, gpsdo
|   |   Clock sources: internal, external, gpsdo
|   |   Sensors: ref_locked
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
|   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
|   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
|   |   * 0/SEP#2:0=3D=3D>0/DUC#1:0
|   |   * 0/DUC#1:0=3D=3D>0/Radio#1:0
|   |   * 0/Radio#1:0=3D=3D>0/DDC#1:0
|   |   * 0/DDC#1:0=3D=3D>0/SEP#2:0
|   |   * 0/Radio#1:1=3D=3D>0/DDC#1:1
|   |   * 0/DDC#1:1=3D=3D>0/SEP#3:0
|   |   * 0/SEP#4:0=3D=3D>0/Replay#0:0
|   |   * 0/Replay#0:0=3D=3D>0/SEP#4:0
|   |   * 0/SEP#5:0=3D=3D>0/Replay#0:1
|   |   * 0/Replay#0:1=3D=3D>0/SEP#5:0
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#0
|   |   ID: UBX-160 v1 (0x0079)
|   |   Serial: 30DC6D8
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#0
|   |   ID: UBX-160 v1 (0x007a)
|   |   Serial: 30DC6D8
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       TX Dboard: 0/Radio#1
|   |   ID: UBX-160 v1 (0x0079)
|   |   Serial: 30DCD7E
|   |     _____________________________________________________
|   |    /
|   |   |       TX Frontend: 0
|   |   |   Name: UBX TX
|   |   |   Antennas: TX/RX, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: QI
|   |   |   Uses LO offset: No
|     _____________________________________________________
|    /
|   |       RX Dboard: 0/Radio#1
|   |   ID: UBX-160 v1 (0x007a)
|   |   Serial: 30DCD7E
|   |     _____________________________________________________
|   |    /
|   |   |       RX Frontend: 0
|   |   |   Name: UBX RX
|   |   |   Antennas: TX/RX, RX2, CAL
|   |   |   Sensors: lo_locked
|   |   |   Freq range: 10.000 to 6000.000 MHz
|   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
|   |   |   Bandwidth range: 160000000.0 to 160000000.0 step 0.0 Hz
|   |   |   Connection Type: IQ
|   |   |   Uses LO offset: No


Robert










--_000_97a9936b96b1482684e919417e52151altsnetnet_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p>TLDR- Setting the time ( set_time_next_pps() ) on (multiple) X310 doesn'=
t result in USRP time being aligned with PPS edge. Works on N320.</p>
<p><br>
</p>
<p>I have two X310's and an N320 as well as an Octoclock. The Octoclock doe=
s have GPS lock. All four devices are on different computers, each of which=
 has its system time set via NTP. We are using UHD version&nbsp;<span>UHD_4=
.1.0.4-0-g25d617ca. I'll include the
 find_devices and probe output at the end for reference. We're running Ubun=
tu Bionic&nbsp;18.04.6 LTS on all machines.</span></p>
<p><span><br>
</span></p>
<p>The Octoclock is accessed via a custom network shim that runs on the mac=
hine to which the Octoclock is attached. Machines with radios ( X's or N's =
) can make a request of the custom Octoclock network service to get Octoclo=
ck time. Octoclock time agrees very
 well with the NTP top of the second ( typically withing 25ms ) given the i=
nherent uncertainty running python code on different machines. By &quot;agr=
ees very well&quot; I mean the delta between Octoclock time and NTP time ha=
s a low variance. All that to say, I do not
 suspect the Octoclock or software used to access the Octoclock.</p>
<p><br>
</p>
<p>The crux of the issue is that when using external clock (10MHz)&nbsp;and=
 timing reference (1PPS) ( provided by Octoclock ) and setting an X310 time=
 ( set_time_next_pps ), I am seeing about a 200ms (or 800ms depending on ho=
w you are measuring ) difference in when
 the X310 reports it is at the top of a second versus either time.time() or=
 the octoclock time. I do not see this discrepancy with the N320 radio.</p>
<p><br>
</p>
<p>The net effect of this is that if an X and N are set to transmit at the =
very same time, we can see that the X transmits 800ish ms early relative to=
 the N using a spectrum analyzer ( real hardware ). The N transmits at the =
correct time eyeballing wall clock/computer
 time.</p>
<p><br>
</p>
<p>Here is some of our test code that we've been using to investigate this:=
</p>
<p></p>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp =3D uhd.usrp_s=
ink( &quot;,&quot;.join((options.address, &quot;&quot;)), uhd.stream_args( =
cpu_format=3D&quot;fc32&quot;, args=3D'', channels=3Dlist(range(0,1)), ),''=
, )</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp.set_time_sourc=
e('external', 0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp.set_clock_sour=
ce('external', 0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp.set_time_unkno=
wn_pps(uhd.time_spec())</span></div>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; reflock =3D str(usr=
p.get_mboard_sensor(&quot;ref_locked&quot;, 0)).split(&quot;: &quot;)[1]</s=
pan></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; if&nbsp; reflock !=
=3D 'locked':</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; print=
('reference not locked')</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; print=
('exiting')</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; exit(=
)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; else:</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; print=
('referenced locked')</span></div>
<div><span style=3D"color:rgb(0,111,201)"><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span style=3D"color: rgb(0, 111,=
 201); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot;Apple =
Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe =
UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;"=
>&nbsp;
 &nbsp; &nbsp;# the get_octo_time () call is a call to our networked octocl=
ock. Just imagine this line as querying the octoclock for time</span><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span><span style=3D"font-family:=
Calibri,Helvetica,sans-serif">&nbsp; &nbsp;&nbsp;</span>next_pps =3D get_oc=
to_time() &#43; 1&nbsp; &nbsp; &nbsp;</span><br>
</span></div>
<div><span style=3D"color:rgb(0,111,201)"><span><br>
</span></span></div>
<div><span style=3D"color:rgb(0,111,201)"><span>&nbsp; &nbsp; &nbsp;usrp.se=
t_time_next_pps(uhd.time_spec_t(next_pps))</span><br>
</span></div>
<div><br>
</div>
<div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; # sleep for a few s=
econds</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; time.sleep(2.0)</sp=
an></div>
<div><span style=3D"color:rgb(0,111,201); font-size:12pt">&nbsp; &nbsp;&nbs=
p;</span><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; oc_time=3Dget_octo_=
time()</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time =3D usrp.=
get_time_now()</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time_last_pps =
=3D usrp.get_time_last_pps()</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; system_time =3D tim=
e.time()</span></div>
<div><br>
</div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time_source =
=3D usrp.get_time_source(0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; usrp_time_sources =
=3D usrp.get_time_sources(0)</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; print(f&quot;TRANSM=
IT:: OC time is {oc_time} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_last_pps is {usrp_time_last_pps.get_full_secs=
()} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_last_pps_frac is {usrp_time_last_pps.get_frac=
_secs()} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time is {usrp_time.get_full_secs()} \n&quot; \</sp=
an></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_frac is {usrp_time.get_frac_secs()} \n&quot; =
\</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: system time is {system_time} \n&quot; \</span></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_source is {usrp_time_source} \n&quot; \</span=
></div>
<div><span style=3D"color:rgb(0,111,201)">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; f&quot;TRANSMIT:: usrp_time_sources are {usrp_time_sources}&quot;)</span>=
</div>
<div><br>
</div>
And here is some output from an X310:</div>
<div><br>
</div>
<div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: OC t=
ime is 1636568870&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_last_pps is 1636568869&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_last_pps_frac is 0.0&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time is 1636568869&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_frac is<span style=3D"background-color:rgb(255,0,0)"> 0.82498684&nbsp=
;</span></span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: syst=
em time is 1636568870.<span style=3D"background-color: rgb(0, 255, 0);">027=
5745&nbsp;</span></span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_source is external&nbsp;</span></div>
<div><span style=3D"font-family:Consolas,Courier,monospace">TRANSMIT:: usrp=
_time_sources are ('internal', 'external', 'gpsdo')</span></div>
<div><br>
</div>
<span style=3D"font-family:Arial,Helvetica,sans-serif">So the problem here =
is that the fractional time (usrp_time_frac) is 800ish ms when it should be=
 more like 25ish ms (&nbsp; like&nbsp;time.time() i.e. system time ).</span=
></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif">Here is the res=
ult of running the same code on a host with an N320:</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif">
<div>TRANSMIT:: OC time is 1636570841&nbsp;</div>
<div>TRANSMIT:: usrp_time_last_pps is 1636570841&nbsp;</div>
<div>TRANSMIT:: usrp_time_last_pps_frac is 0.0&nbsp;</div>
<div>TRANSMIT:: usrp_time is 1636570841&nbsp;</div>
<div>TRANSMIT:: usrp_time_frac is <span style=3D"background-color:rgb(0,255=
,255)">0.025938016764322915</span><span style=3D"background-color:rgb(0,255=
,255)">&nbsp;</span></div>
<div>TRANSMIT:: system time is 1636570841.<span style=3D"background-color: =
rgb(0, 255, 0);">0290515&nbsp;</span></div>
<div>TRANSMIT:: usrp_time_source is external&nbsp;</div>
<div>TRANSMIT:: usrp_time_sources are ('internal', 'external', 'gpsdo', 'sf=
p0')</div>
<div><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>As I mentioned, the octoclock time comes back right at the top of the =
second reletive to NTP time ( as I would expect )- this can be seen by the =
green hightlighted fraction. However on the X310, some 800ms have already p=
assed. Not so on the N320 (as expected)&nbsp;.
 Why?&nbsp;</div>
<div><br>
</div>
<div><br>
</div>
<div>Below is the output of uhd_find_devices and uhd_usrp_probe for the two=
 radios:</div>
<div><i></i>
<div><i><br>
</i></div>
<div><i>[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; Boost_106501; UH=
D_4.1.0.4-0-g25d617ca</i></div>
<div><i>--------------------------------------------------</i></div>
<div><i>-- UHD Device 0</i></div>
<div><i>--------------------------------------------------</i></div>
<div><i>Device Address:</i></div>
<div><i>&nbsp; &nbsp; serial: 31EDED4</i></div>
<div><i>&nbsp; &nbsp; addr: 192.168.40.2</i></div>
<div><i>&nbsp; &nbsp; claimed: False</i></div>
<div><i>&nbsp; &nbsp; fpga: XG</i></div>
<div><i>&nbsp; &nbsp; mgmt_addr: 192.168.30.2</i></div>
<div><i>&nbsp; &nbsp; mgmt_addr: 192.168.40.2</i></div>
<div><i>&nbsp; &nbsp; product: n320</i></div>
<div><i>&nbsp; &nbsp; type: n3xx</i></div>
<div><i><br>
</i></div>
<div><i><br>
</i></div>
<div><i><br>
</i></div>
<div><i><br>
</i></div>
<div><i>
<div>[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; Boost_106501; UHD_4=
.1.0.4-0-g25d617ca</div>
<div>[INFO] [MPMD] Initializing 1 device(s) in parallel with args: mgmt_add=
r=3D192.168.40.2,type=3Dn3xx,product=3Dn320,serial=3D31EDED4,fpga=3DXG,clai=
med=3DFalse,addr=3D192.168.40.2</div>
<div>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DXG,m=
gmt_addr=3D192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=
=3Dexternal'.</div>
<div>[INFO] [MPM.Rhodium-0] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'=
</div>
<div>[INFO] [MPM.Rhodium-1] init() called with args `fpga=3DXG,mgmt_addr=3D=
192.168.40.2,product=3Dn320,clock_source=3Dexternal,time_source=3Dexternal'=
</div>
<div>&nbsp; _____________________________________________________</div>
<div>&nbsp;/</div>
<div>|&nbsp; &nbsp; &nbsp; &nbsp;Device: N300-Series Device</div>
<div>|&nbsp; &nbsp; &nbsp;_________________________________________________=
____</div>
<div>|&nbsp; &nbsp; /</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;Mboard: ni-n3xx-31EDED4</div=
>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;dboard_0_pid: 338</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;dboard_0_serial: 31EBB6F</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;dboard_1_pid: 338</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;dboard_1_serial: 31EBB94</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;eeprom_version: 3</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;fs_version: 20210910210929</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;mender_artifact: v4.1.0.2_n3xx</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;mpm_sw_version: 4.1.0.2-g8ce6e64f</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;pid: 16962</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;product: n320</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;rev: 10</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;rpc_connection: remote</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;serial: 31EDED4</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;type: n3xx</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;MPM Version: 4.0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;FPGA Version: 8.0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;FPGA git hash: d5c2750.clean</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;Time sources:&nbsp; internal, external, gp=
sdo, sfp0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;Clock sources: external, internal, gpsdo</=
div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;Sensors: ref_locked, gps_locked, temp, fan=
, gps_gpgga, gps_sky, gps_time, gps_tpv</div>
<div>|&nbsp; &nbsp; &nbsp;_________________________________________________=
____</div>
<div>|&nbsp; &nbsp; /</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;RFNoC blocks on this device:=
</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DDC#0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DDC#1</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DUC#0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DUC#1</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Radio#0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Radio#1</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Replay#0</div>
<div>|&nbsp; &nbsp; &nbsp;_________________________________________________=
____</div>
<div>|&nbsp; &nbsp; /</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;Static connections on this d=
evice:</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/SEP#0:0=3D=3D&gt;0/DUC#0:0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DUC#0:0=3D=3D&gt;0/Radio#0:0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Radio#0:0=3D=3D&gt;0/DDC#0:0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DDC#0:0=3D=3D&gt;0/SEP#0:0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/SEP#1:0=3D=3D&gt;0/DUC#1:0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DUC#1:0=3D=3D&gt;0/Radio#1:0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Radio#1:0=3D=3D&gt;0/DDC#1:0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DDC#1:0=3D=3D&gt;0/SEP#1:0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/SEP#2:0=3D=3D&gt;0/Replay#0:0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Replay#0:0=3D=3D&gt;0/SEP#2:0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/SEP#3:0=3D=3D&gt;0/Replay#0:1</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Replay#0:1=3D=3D&gt;0/SEP#3:0</div>
<div>|&nbsp; &nbsp; &nbsp;_________________________________________________=
____</div>
<div>|&nbsp; &nbsp; /</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;TX Dboard: 0/Radio#0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp;___________________________________=
__________________</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; /</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;TX Frontend: 0=
</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Name: Rhodium</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Antennas: TX/RX, CAL, TERM</=
div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Freq range: 1.000 to 6000.00=
0 MHz</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Gain range all: 0.0 to 60.0 =
step 1.0 dB</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Bandwidth range: 250000000.0=
 to 250000000.0 step 0.0 Hz</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Connection Type:&nbsp;</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Uses LO offset: No</div>
<div>|&nbsp; &nbsp; &nbsp;_________________________________________________=
____</div>
<div>|&nbsp; &nbsp; /</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;RX Dboard: 0/Radio#0</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp;___________________________________=
__________________</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; /</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;RX Frontend: 0=
</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Name: Rhodium</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Antennas: TX/RX, RX2, CAL, T=
ERM</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Freq range: 1.000 to 6000.00=
0 MHz</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Gain range all: 0.0 to 60.0 =
step 1.0 dB</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Bandwidth range: 250000000.0=
 to 250000000.0 step 0.0 Hz</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Connection Type:&nbsp;</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Uses LO offset: No</div>
<div>|&nbsp; &nbsp; &nbsp;_________________________________________________=
____</div>
<div>|&nbsp; &nbsp; /</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;TX Dboard: 0/Radio#1</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp;___________________________________=
__________________</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; /</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;TX Frontend: 0=
</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Name: Rhodium</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Antennas: TX/RX, CAL, TERM</=
div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Freq range: 1.000 to 6000.00=
0 MHz</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Gain range all: 0.0 to 60.0 =
step 1.0 dB</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Bandwidth range: 250000000.0=
 to 250000000.0 step 0.0 Hz</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Connection Type:&nbsp;</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Uses LO offset: No</div>
<div>|&nbsp; &nbsp; &nbsp;_________________________________________________=
____</div>
<div>|&nbsp; &nbsp; /</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;RX Dboard: 0/Radio#1</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp;___________________________________=
__________________</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp; /</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;RX Frontend: 0=
</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Name: Rhodium</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Antennas: TX/RX, RX2, CAL, T=
ERM</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Freq range: 1.000 to 6000.00=
0 MHz</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Gain range all: 0.0 to 60.0 =
step 1.0 dB</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Bandwidth range: 250000000.0=
 to 250000000.0 step 0.0 Hz</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Connection Type:&nbsp;</div>
<div>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Uses LO offset: No</div>
<div><br>
</div>
<br>
</i></div>
<div><i><br>
</i></div>
<div>And then for the X310:</div>
<div><br>
</div>
<div><i></i>
<div><i>[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; Boost_106501; UH=
D_4.1.0.4-0-g25d617ca</i></div>
<div><i>--------------------------------------------------</i></div>
<div><i>-- UHD Device 0</i></div>
<div><i>--------------------------------------------------</i></div>
<div><i>Device Address:</i></div>
<div><i>&nbsp; &nbsp; serial: 30E153C</i></div>
<div><i>&nbsp; &nbsp; addr: 192.168.30.2</i></div>
<div><i>&nbsp; &nbsp; addr: 192.168.40.2</i></div>
<div><i>&nbsp; &nbsp; fpga: XG</i></div>
<div><i>&nbsp; &nbsp; name:&nbsp;</i></div>
<div><i>&nbsp; &nbsp; product: X310</i></div>
<div><i>&nbsp; &nbsp; type: x300</i></div>
<div><i><br>
</i></div>
<div><i><br>
</i></div>
<div><i><br>
</i></div>
<div><i><br>
</i></div>
<i></i>
<div><i>[INFO] [UHD] linux; GNU C&#43;&#43; version 7.5.0; Boost_106501; UH=
D_4.1.0.4-0-g25d617ca</i></div>
<div><i>[INFO] [X300] X300 initialization sequence...</i></div>
<div><i>[INFO] [X300] Maximum frame size: 8000 bytes.</i></div>
<div><i>[INFO] [X300] Radio 1x clock: 200 MHz</i></div>
<div><i>&nbsp; _____________________________________________________</i></d=
iv>
<div><i>&nbsp;/</i></div>
<div><i>|&nbsp; &nbsp; &nbsp; &nbsp;Device: X-Series Device</i></div>
<div><i>|&nbsp; &nbsp; &nbsp;______________________________________________=
_______</i></div>
<div><i>|&nbsp; &nbsp; /</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;Mboard: X310</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;revision: 8</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;revision_compat: 7</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;product: 30818</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;mac-addr0: 00:80:2f:25:90:e6</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;mac-addr1: 00:80:2f:25:90:e7</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;gateway: 192.168.10.1</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;ip-addr0: 192.168.10.2</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;subnet0: 255.255.255.0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;ip-addr1: 192.168.20.2</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;subnet1: 255.255.255.0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;ip-addr2: 192.168.30.2</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;subnet2: 255.255.255.0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;ip-addr3: 192.168.40.2</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;subnet3: 255.255.255.0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;serial: 30E153C</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;FW Version: 6.0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;FPGA Version: 38.0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;FPGA git hash: b1ca7f3</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;Time sources:&nbsp; internal, external,=
 gpsdo</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;Clock sources: internal, external, gpsd=
o</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;Sensors: ref_locked</i></div>
<div><i>|&nbsp; &nbsp; &nbsp;______________________________________________=
_______</i></div>
<div><i>|&nbsp; &nbsp; /</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;RFNoC blocks on this devi=
ce:</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DDC#0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DDC#1</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DUC#0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DUC#1</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Radio#0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Radio#1</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Replay#0</i></div>
<div><i>|&nbsp; &nbsp; &nbsp;______________________________________________=
_______</i></div>
<div><i>|&nbsp; &nbsp; /</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;Static connections on thi=
s device:</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/SEP#0:0=3D=3D&gt;0/DUC#0:0</i></div=
>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DUC#0:0=3D=3D&gt;0/Radio#0:0</i></d=
iv>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Radio#0:0=3D=3D&gt;0/DDC#0:0</i></d=
iv>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DDC#0:0=3D=3D&gt;0/SEP#0:0</i></div=
>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Radio#0:1=3D=3D&gt;0/DDC#0:1</i></d=
iv>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DDC#0:1=3D=3D&gt;0/SEP#1:0</i></div=
>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/SEP#2:0=3D=3D&gt;0/DUC#1:0</i></div=
>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DUC#1:0=3D=3D&gt;0/Radio#1:0</i></d=
iv>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Radio#1:0=3D=3D&gt;0/DDC#1:0</i></d=
iv>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DDC#1:0=3D=3D&gt;0/SEP#2:0</i></div=
>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Radio#1:1=3D=3D&gt;0/DDC#1:1</i></d=
iv>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/DDC#1:1=3D=3D&gt;0/SEP#3:0</i></div=
>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/SEP#4:0=3D=3D&gt;0/Replay#0:0</i></=
div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Replay#0:0=3D=3D&gt;0/SEP#4:0</i></=
div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/SEP#5:0=3D=3D&gt;0/Replay#0:1</i></=
div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;* 0/Replay#0:1=3D=3D&gt;0/SEP#5:0</i></=
div>
<div><i>|&nbsp; &nbsp; &nbsp;______________________________________________=
_______</i></div>
<div><i>|&nbsp; &nbsp; /</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;TX Dboard: 0/Radio#0</i><=
/div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;ID: UBX-160 v1 (0x0079)</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;Serial: 30DC6D8</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp;________________________________=
_____________________</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; /</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;TX Frontend=
: 0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Name: UBX TX</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Antennas: TX/RX, CAL</i><=
/div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Sensors: lo_locked</i></d=
iv>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Freq range: 10.000 to 600=
0.000 MHz</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Gain range PGA0: 0.0 to 3=
1.5 step 0.5 dB</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Bandwidth range: 16000000=
0.0 to 160000000.0 step 0.0 Hz</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Connection Type: QI</i></=
div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Uses LO offset: No</i></d=
iv>
<div><i>|&nbsp; &nbsp; &nbsp;______________________________________________=
_______</i></div>
<div><i>|&nbsp; &nbsp; /</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;RX Dboard: 0/Radio#0</i><=
/div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;ID: UBX-160 v1 (0x007a)</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;Serial: 30DC6D8</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp;________________________________=
_____________________</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; /</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;RX Frontend=
: 0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Name: UBX RX</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Antennas: TX/RX, RX2, CAL=
</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Sensors: lo_locked</i></d=
iv>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Freq range: 10.000 to 600=
0.000 MHz</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Gain range PGA0: 0.0 to 3=
1.5 step 0.5 dB</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Bandwidth range: 16000000=
0.0 to 160000000.0 step 0.0 Hz</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Connection Type: IQ</i></=
div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Uses LO offset: No</i></d=
iv>
<div><i>|&nbsp; &nbsp; &nbsp;______________________________________________=
_______</i></div>
<div><i>|&nbsp; &nbsp; /</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;TX Dboard: 0/Radio#1</i><=
/div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;ID: UBX-160 v1 (0x0079)</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;Serial: 30DCD7E</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp;________________________________=
_____________________</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; /</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;TX Frontend=
: 0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Name: UBX TX</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Antennas: TX/RX, CAL</i><=
/div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Sensors: lo_locked</i></d=
iv>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Freq range: 10.000 to 600=
0.000 MHz</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Gain range PGA0: 0.0 to 3=
1.5 step 0.5 dB</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Bandwidth range: 16000000=
0.0 to 160000000.0 step 0.0 Hz</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Connection Type: QI</i></=
div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Uses LO offset: No</i></d=
iv>
<div><i>|&nbsp; &nbsp; &nbsp;______________________________________________=
_______</i></div>
<div><i>|&nbsp; &nbsp; /</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;RX Dboard: 0/Radio#1</i><=
/div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;ID: UBX-160 v1 (0x007a)</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;Serial: 30DCD7E</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp;________________________________=
_____________________</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp; /</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp; &nbsp; &nbsp;RX Frontend=
: 0</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Name: UBX RX</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Antennas: TX/RX, RX2, CAL=
</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Sensors: lo_locked</i></d=
iv>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Freq range: 10.000 to 600=
0.000 MHz</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Gain range PGA0: 0.0 to 3=
1.5 step 0.5 dB</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Bandwidth range: 16000000=
0.0 to 160000000.0 step 0.0 Hz</i></div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Connection Type: IQ</i></=
div>
<div><i>|&nbsp; &nbsp;|&nbsp; &nbsp;|&nbsp; &nbsp;Uses LO offset: No</i></d=
iv>
<div><i><br>
</i></div>
<i></i><br>
</div>
<div>Robert</div>
<div><br>
</div>
<div><i><br>
</i></div>
<div><i><br>
</i></div>
<i></i><br>
</div>
<div><br>
</div>
<br>
</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
</span></div>
<div><span style=3D"font-family:Arial,Helvetica,sans-serif"><br>
</span></div>
<br>
<p></p>
</div>
</body>
</html>

--_000_97a9936b96b1482684e919417e52151altsnetnet_--

--===============4211614447185453909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4211614447185453909==--

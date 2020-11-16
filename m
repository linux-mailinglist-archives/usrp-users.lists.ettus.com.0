Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF492B493A
	for <lists+usrp-users@lfdr.de>; Mon, 16 Nov 2020 16:27:48 +0100 (CET)
Received: from [::1] (port=34042 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kegPw-00085q-E1; Mon, 16 Nov 2020 10:27:44 -0500
Received: from scalix.pari.edu ([68.235.248.163]:37184)
 by mm2.emwd.com with esmtp (Exim 4.93)
 (envelope-from <lowen@pari.edu>) id 1kegPr-000819-Ul
 for usrp-users@lists.ettus.com; Mon, 16 Nov 2020 10:27:40 -0500
Received: from scalix.pari.edu (localhost [127.0.0.1])
 by scalix.pari.edu (Postfix) with ESMTP id 7F428640104
 for <usrp-users@lists.ettus.com>; Mon, 16 Nov 2020 10:26:59 -0500 (EST)
Received: from localhost.localdomain (localhost [127.0.0.1])
 by scalix.pari.edu (Scalix SMTP Relay 12.6.0.14933)
 via ESMTP; Mon, 16 Nov 2020 10:26:59 -0500 (EST)
Date: Mon, 16 Nov 2020 10:26:55 -0500
To: usrp-users@lists.ettus.com
Message-ID: <5aef8e21-77a8-e3a0-1542-8f9075039eb9@pari.edu>
x-scalix-Hops: 1
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] UHD version that supports older DBSRX on a USRP1.
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lamar Owen via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lamar Owen <lowen@pari.edu>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

System: CentOS 8 using Anaconda3 with the conda-forge GNURadio 3.8.2 and =

UHD 3.15.0 loaded.
USRP: USRP1 with a DBSRX.=A0 Behavior is replicated with the EPEL8 UHD =

3.15 packages, run as root.

Question: what version of UHD do I need to downgrade to in order for 'ye =

olde DBSRX' daughterboard to be recognized and used?=A0 I am not =

interested in upgrading the USRP at this time (unless someone knows of a =

newer unit that can be donated to our 501(c)(3) nonprofit; we'll take a =

donation of equipment, for sure!) since we have three USRP1's loaded =

with DBSRX daughterboards already that have worked in the past and are =

already characterized for our application.=A0 Yes, I know the USRP1 is =

old, and the DBSRX is old, but they still work, they cost quite a bit of =

money under a federal grant (NSF), and they're characterized for our =

application here.=A0 Plus, in this application I actually need the extra =

100MHz from 2.3GHz to 2.4GHz that the original DBSRX can tune.=A0 The =

USRPs have been stored for a few years; they were used for a couple of =

years about ten years ago and then shelved, but we want to start using =

them again (long story).=A0 (It should go without saying that I'm not =

interested in running a ten year old OS or really old GNUradio; there =

are newer modules that I need to be able to use; just looking for last =

version of UHD that actually supported DBSRX).=A0 Or if there is a =

workaround for UHD 3.15 to get a DBSRX to work.

Here's the output of uhd_usrp_probe:
(base) [pari-sdr@dhcp-pool167 ~]$ uhd_usrp_probe --args=3D"type=3Dusrp1"
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_107400; =

UHD_3.15.0.HEAD-release
[INFO] [FX2] Loading firmware image: =

/home/pari-sdr/anaconda3/share/uhd/images/usrp1_fw.ihx...
[INFO] [FX2] Firmware loaded
[INFO] [USRP1] Opening a USRP1 device...
[INFO] [FX2] Loading FPGA image: =

/home/pari-sdr/anaconda3/share/uhd/images/usrp1_fpga.rbf...
[INFO] [FX2] FPGA image loaded
[INFO] [USRP1] Using FPGA clock rate of 64.000000MHz...
[ERROR] [DBMGR] The daughterboard manager encountered a recoverable =

error in init.
Loading the "unknown" daughterboard implementations to continue.
The daughterboard cannot operate until this error is resolved.
AssertionError: m and ref_clock/m >=3D 1e6 and ref_clock/m <=3D 2.5e6
 =A0 in double dbsrx::set_lo_freq(double)
 =A0 at =

/home/conda/feedstock_root/build_artifacts/uhd_1602712704625/work/host/lib/=
usrp/dboard/db_dbsrx.cpp:306

 =A0 _____________________________________________________
 =A0/
|=A0=A0=A0=A0=A0=A0 Device: USRP1 Device
|=A0=A0=A0=A0 _____________________________________________________
|=A0=A0=A0 /
|=A0=A0 |=A0=A0=A0=A0=A0=A0 Mboard: USRP1
|=A0=A0 |=A0=A0 serial: 4460cd30
|=A0=A0 |
|=A0=A0 |=A0=A0 Time sources:=A0 none
|=A0=A0 |=A0=A0 Clock sources: internal
|=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX DSP: 0
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -32.000 to 32.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX DSP: 1
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -32.000 to 32.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Dboard: A
|=A0=A0 |=A0=A0 |=A0=A0 ID: DBSRX (0x0002)
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Codec: A
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: 0.0 to 20.0 step 1.0 dB
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Dboard: B
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 RX Codec: B
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: 0.0 to 20.0 step 1.0 dB
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX DSP: 0
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -44.000 to 44.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX DSP: 1
|=A0=A0 |=A0=A0 |
|=A0=A0 |=A0=A0 |=A0=A0 Freq range: -44.000 to 44.000 MHz
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Dboard: A
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Codec: A
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: -20.0 to 0.0 step 0.1 dB
|=A0=A0 |=A0=A0=A0=A0 _____________________________________________________
|=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Dboard: B
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Frontend: 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: Unknown (0xffff) - 0
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Antennas:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Sensors:
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Freq range: 0.000 to 0.000 MHz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain Elements: None
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Bandwidth range: 0.0 to 0.0 step 0.0 Hz
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Connection Type: IQ
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Uses LO offset: No
|=A0=A0 |=A0=A0 |=A0=A0=A0=A0 _____________________________________________=
________
|=A0=A0 |=A0=A0 |=A0=A0=A0 /
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0=A0=A0=A0=A0 TX Codec: B
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Name: ad9522
|=A0=A0 |=A0=A0 |=A0=A0 |=A0=A0 Gain range pga: -20.0 to 0.0 step 0.1 dB

(base) [pari-sdr@dhcp-pool167 ~]$

Thanks in advance!


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A006732082
	for <lists+usrp-users@lfdr.de>; Sat,  1 Jun 2019 20:38:07 +0200 (CEST)
Received: from [::1] (port=39624 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hX8so-0005pi-Qq; Sat, 01 Jun 2019 14:37:34 -0400
Received: from qproxy6-pub.mail.unifiedlayer.com ([69.89.23.12]:60046)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <nalin@ieee.org>) id 1hX8sl-0005ca-2x
 for usrp-users@lists.ettus.com; Sat, 01 Jun 2019 14:37:31 -0400
Received: from cmgw15.unifiedlayer.com (unknown [10.9.0.15])
 by qproxy6.mail.unifiedlayer.com (Postfix) with ESMTP id C7DDE140470
 for <usrp-users@lists.ettus.com>; Sat,  1 Jun 2019 12:36:48 -0600 (MDT)
Received: from box688.bluehost.com ([66.147.244.188]) by cmsmtp with ESMTP
 id X8s4h13MdszDUX8s4h5efn; Sat, 01 Jun 2019 12:36:48 -0600
X-Authority-Reason: nr=8
X-Authority-Reason: s=1
Received: from [124.43.39.12] (port=7362 helo=[192.168.1.7])
 by box688.bluehost.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <nalin@ieee.org>)
 id 1hX8s3-000H4o-JM; Sat, 01 Jun 2019 12:36:48 -0600
To: usrp-users@lists.ettus.com, usrp-users-request@lists.ettus.com
References: <mailman.39.1559404802.6548.usrp-users_lists.ettus.com@lists.ettus.com>
Message-ID: <770ca33b-2040-418f-77f6-f7c527dbeb04@ieee.org>
Date: Sun, 2 Jun 2019 00:06:41 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <mailman.39.1559404802.6548.usrp-users_lists.ettus.com@lists.ettus.com>
Content-Language: en-US
X-Antivirus: AVG (VPS 190601-4, 06/01/2019), Outbound message
X-Antivirus-Status: Clean
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - box688.bluehost.com
X-AntiAbuse: Original Domain - lists.ettus.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - ieee.org
X-BWhitelist: no
X-Source-IP: 124.43.39.12
X-Source-L: No
X-Exim-ID: 1hX8s3-000H4o-JM
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.7]) [124.43.39.12]:7362
X-Source-Auth: nalin@enetlk.com
X-Email-Count: 1
X-Source-Cap: ZW5ldGxrY287ZW5ldGxrY287Ym94Njg4LmJsdWVob3N0LmNvbQ==
X-Local-Domain: no
Subject: Re: [USRP-users] Regarding detection of USRP devices (Marcus D.
 Leech)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Nalin Karunasinghe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nalin Karunasinghe <nalin@ieee.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

Dear All,

I have solved this problem by directly connecting USRP to a separate 
Ethernet port (not the one using to access Internet)

and manually assigning an ip address for that network

sudo ifconfig (eth1) (192.168.10.x)

if your USRP device is on 192.168.10.y

Nalin D. Karunasinghe

www.enetlk.com



On 6/1/2019 9:30 PM, usrp-users-request@lists.ettus.com wrote:
> Send USRP-users mailing list submissions to
> 	usrp-users@lists.ettus.com
>
> To subscribe or unsubscribe via the World Wide Web, visit
> 	http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> or, via email, send a message with subject or body 'help' to
> 	usrp-users-request@lists.ettus.com
>
> You can reach the person managing the list at
> 	usrp-users-owner@lists.ettus.com
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of USRP-users digest..."
>
>
> Today's Topics:
>
>     1. Re: Regarding detection of USRP devices (Marcus D. Leech)
>     2. GNU Radio & RFNoC Workshops in Boston on June 11 & 13
>        (Neel Pandeya)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Fri, 31 May 2019 12:20:47 -0400
> From: "Marcus D. Leech" <patchvonbraun@gmail.com>
> To: Saimanoj Katta <saimanoj.katta@cumucore.com>,
> 	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> Subject: Re: [USRP-users] Regarding detection of USRP devices
> Message-ID: <5CF1545F.3060907@gmail.com>
> Content-Type: text/plain; charset="utf-8"; Format="flowed"
>
> On 05/31/2019 12:16 PM, Saimanoj Katta wrote:
>> Hi,
>>
>> Thanks for your reply. I did try as root user using sudo commands,
>> still not working.
>>
>> Any other inputs would be appreciated.
>>
>> Regards,
>> Manu
> How are you connected to the USRP?  Is it on a dedicated port on your
> computer?  Is it behind a router/switch?
>
> Also, try restricting your subnet to 255.255.255.0 -- the code in UHD
> that forms subnet-broadcast messages might not deal with
>     a larger subnet.
>
>
>> On Fri, 31 May 2019, 19:12 Marcus D Leech, <patchvonbraun@gmail.com
>> <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>      Your system may be configured to block the broadcast messages as a
>>      security feature. Try it as root.
>>
>>
>>      Sent from my iPhone
>>
>>      > On May 31, 2019, at 9:02 AM, Saimanoj Katta via USRP-users
>>      <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>>      wrote:
>>      >
>>      > Hi,
>>      >
>>      > I am using USRP X310 and when I run these commands:
>>      uhd_find_devices, uhd_usrp_probe, I don't get any results on my
>>      terminal. When I run the above commands with --args
>>      addr=192.168.50.2, I get the output. IP address(static) at the
>>      host is 192.168.10.3 with subnet of 255.255.0.0. I have given the
>>      subnet to detect more ip addresses.
>>      >
>>      > As far as I know, the uhd_images_downloader has images correctly
>>      installed in the local library and all the Firmware drivers
>>      installed. Can you help me what is wrong? I have the same issue
>>      running GNU radio( the fm receiver example is not detecting the
>>      device/ip address).
>>      >
>>      > Any suggestions would be appreciated! Many thanks in advance.
>>      >
>>      > Here are the outputs, I got:
>>      >
>>      > uhd_find_devices
>>      > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>>      UHD_3.14.0.HEAD-0-g6875d061
>>      > No UHD Devices Found
>>      >
>>      > uhd_usrp_probe
>>      > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>>      UHD_3.14.0.HEAD-0-g6875d061
>>      > Error: LookupError: KeyError: No devices found for ----->
>>      > Empty Device Address
>>      >
>>      > uhd_images_downloader [INFO] Images destination:
>>      /usr/local/share/uhd/images
>>      > [INFO] Target usrp1_b100_fw_default is up to date.
>>      > [INFO] Target x3xx_x310_fpga_default is up to date.
>>      > [INFO] Target usrp2_n210_fpga_default is up to date.
>>      > [INFO] Target n230_n230_fpga_default is up to date.
>>      > [INFO] Target usrp1_b100_fpga_default is up to date.
>>      > [INFO] Target b2xx_b200_fpga_default is up to date.
>>      > [INFO] Target usrp2_n200_fpga_default is up to date.
>>      > [INFO] Target e3xx_e320_fpga_default is up to date.
>>      > [INFO] Target n3xx_n310_fpga_default is up to date.
>>      > [INFO] Target b2xx_b205mini_fpga_default is up to date.
>>      > [INFO] Target x3xx_x300_fpga_default is up to date.
>>      > [INFO] Target octoclock_octoclock_fw_default is up to date.
>>      > [INFO] Target usrp2_usrp2_fw_default is up to date.
>>      > [INFO] Target usrp2_n200_fw_default is up to date.
>>      > [INFO] Target usrp2_usrp2_fpga_default is up to date.
>>      > [INFO] Target b2xx_common_fw_default is up to date.
>>      > [INFO] Target n3xx_n320_fpga_default is up to date.
>>      > [INFO] Target b2xx_b200mini_fpga_default is up to date.
>>      > [INFO] Target usrp1_usrp1_fpga_default is up to date.
>>      > [INFO] Target usb_common_windrv_default is up to date.
>>      > [INFO] Target usrp2_n210_fw_default is up to date.
>>      > [INFO] Target n3xx_n300_fpga_default is up to date.
>>      > [INFO] Target e3xx_e310_fpga_default is up to date.
>>      > [INFO] Target b2xx_b210_fpga_default is up to date.
>>      >
>>      > uhd_find_devices --args addr=192.168.50.2
>>      > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>>      UHD_3.14.0.HEAD-0-g6875d061
>>      > --------------------------------------------------
>>      > -- UHD Device 0
>>      > --------------------------------------------------
>>      > Device Address:
>>      >     serial: 30CBE93
>>      >     addr: 192.168.50.2
>>      >     fpga: HG
>>      >     name:
>>      >     product: X310
>>      >     type: x300
>>      >
>>      > uhd_usrp_probe --args addr=192.168.50.2
>>      > [INFO] [UHD] linux; GNU C++ version 7.4.0; Boost_106501;
>>      UHD_3.14.0.HEAD-0-g6875d061
>>      > [INFO] [X300] X300 initialization sequence...
>>      > [INFO] [X300] Maximum frame size: 1472 bytes.
>>      > [INFO] [X300] Radio 1x clock: 200 MHz
>>      > [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929a
>>      > [INFO] [0/DmaFIFO_0] Initializing block control (NOC ID:
>>      0xF1F0D00000000000)
>>      > [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1293 MB/s)
>>      > [INFO] [0/DmaFIFO_0] BIST passed (Throughput: 1318 MB/s)
>>      > [INFO] [0/Radio_0] Initializing block control (NOC ID:
>>      0x12AD100000000001)
>>      > [INFO] [0/Radio_1] Initializing block control (NOC ID:
>>      0x12AD100000000001)
>>      > [INFO] [0/DDC_0] Initializing block control (NOC ID:
>>      0xDDC0000000000000)
>>      > [INFO] [0/DDC_1] Initializing block control (NOC ID:
>>      0xDDC0000000000000)
>>      > [INFO] [0/DUC_0] Initializing block control (NOC ID:
>>      0xD0C0000000000000)
>>      > [INFO] [0/DUC_1] Initializing block control (NOC ID:
>>      0xD0C0000000000000)
>>      >   _____________________________________________________
>>      >  /
>>      > |       Device: X-Series Device
>>      > |  _____________________________________________________
>>      > |    /
>>      > |   |       Mboard: X310
>>      > |   |   revision: 8
>>      > |   |   revision_compat: 7
>>      > |   |   product: 30818
>>      > |   |   mac-addr0: 00:80:2f:23:d2:4d
>>      > |   |   mac-addr1: 00:80:2f:23:d2:4e
>>      > |   |   gateway: 192.168.10.1
>>      > |   |   ip-addr0: 192.168.50.2
>>      > |   |   subnet0: 255.255.255.0
>>      > |   |   ip-addr1: 192.168.60.2
>>      > |   |   subnet1: 255.255.255.0
>>      > |   |   ip-addr2: 192.168.70.2
>>      > |   |   subnet2: 255.255.255.0
>>      > |   |   ip-addr3: 192.168.80.2
>>      > |   |   subnet3: 255.255.255.0
>>      > |   |   serial: 30CBE93
>>      > |   |   FW Version: 6.0
>>      > |   |   FPGA Version: 35.1
>>      > |   |   FPGA git hash: 4c165a5
>>      > |   |   RFNoC capable: Yes
>>      > |   |
>>      > |   |   Time sources:  internal, external, gpsdo
>>      > |   |   Clock sources: internal, external, gpsdo
>>      > |   |   Sensors: gps_gpgga, gps_gprmc, gps_time, gps_locked,
>>      gps_servo, ref_locked
>>      > |   |  _____________________________________________________
>>      > |   |    /
>>      > |   |   |       RX Dboard: A
>>      > |   |   |   ID: UBX-160 v1 (0x007a)
>>      > |   |   |   Serial: 30CF8F2
>>      > |   |   |  _____________________________________________________
>>      > |   |   |    /
>>      > |   |   |   |       RX Frontend: 0
>>      > |   |   |   |   Name: UBX RX
>>      > |   |   |   |   Antennas: TX/RX, RX2, CAL
>>      > |   |   |   |   Sensors: lo_locked
>>      > |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>>      > |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>>      > |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>>      0.0 Hz
>>      > |   |   |   |   Connection Type: IQ
>>      > |   |   |   |   Uses LO offset: No
>>      > |   |   |  _____________________________________________________
>>      > |   |   |    /
>>      > |   |   |   |       RX Codec: A
>>      > |   |   |   |   Name: ads62p48
>>      > |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
>>      > |   |  _____________________________________________________
>>      > |   |    /
>>      > |   |   |       RX Dboard: B
>>      > |   |   |   ID: UBX-160 v1 (0x007a)
>>      > |   |   |   Serial: 30BA660
>>      > |   |   |  _____________________________________________________
>>      > |   |   |    /
>>      > |   |   |   |       RX Frontend: 0
>>      > |   |   |   |   Name: UBX RX
>>      > |   |   |   |   Antennas: TX/RX, RX2, CAL
>>      > |   |   |   |   Sensors: lo_locked
>>      > |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>>      > |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>>      > |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>>      0.0 Hz
>>      > |   |   |   |   Connection Type: IQ
>>      > |   |   |   |   Uses LO offset: No
>>      > |   |   |  _____________________________________________________
>>      > |   |   |    /
>>      > |   |   |   |       RX Codec: B
>>      > |   |   |   |   Name: ads62p48
>>      > |   |   |   |   Gain range digital: 0.0 to 6.0 step 0.5 dB
>>      > |   |  _____________________________________________________
>>      > |   |    /
>>      > |   |   |       TX Dboard: A
>>      > |   |   |   ID: UBX-160 v1 (0x0079)
>>      > |   |   |   Serial: 30CF8F2
>>      > |   |   |  _____________________________________________________
>>      > |   |   |    /
>>      > |   |   |   |       TX Frontend: 0
>>      > |   |   |   |   Name: UBX TX
>>      > |   |   |   |   Antennas: TX/RX, CAL
>>      > |   |   |   |   Sensors: lo_locked
>>      > |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>>      > |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>>      > |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>>      0.0 Hz
>>      > |   |   |   |   Connection Type: QI
>>      > |   |   |   |   Uses LO offset: No
>>      > |   |   |  _____________________________________________________
>>      > |   |   |    /
>>      > |   |   |   |       TX Codec: A
>>      > |   |   |   |   Name: ad9146
>>      > |   |   |   |   Gain Elements: None
>>      > |   |  _____________________________________________________
>>      > |   |    /
>>      > |   |   |       TX Dboard: B
>>      > |   |   |   ID: UBX-160 v1 (0x0079)
>>      > |   |   |   Serial: 30BA660
>>      > |   |   |  _____________________________________________________
>>      > |   |   |    /
>>      > |   |   |   |       TX Frontend: 0
>>      > |   |   |   |   Name: UBX TX
>>      > |   |   |   |   Antennas: TX/RX, CAL
>>      > |   |   |   |   Sensors: lo_locked
>>      > |   |   |   |   Freq range: 10.000 to 6000.000 MHz
>>      > |   |   |   |   Gain range PGA0: 0.0 to 31.5 step 0.5 dB
>>      > |   |   |   |   Bandwidth range: 160000000.0 to 160000000.0 step
>>      0.0 Hz
>>      > |   |   |   |   Connection Type: QI
>>      > |   |   |   |   Uses LO offset: No
>>      > |   |   |  _____________________________________________________
>>      > |   |   |    /
>>      > |   |   |   |       TX Codec: B
>>      > |   |   |   |   Name: ad9146
>>      > |   |   |   |   Gain Elements: None
>>      > |   |  _____________________________________________________
>>      > |   |    /
>>      > |   |   |       RFNoC blocks on this device:
>>      > |   |   |
>>      > |   |   |   * DmaFIFO_0
>>      > |   |   |   * Radio_0
>>      > |   |   |   * Radio_1
>>      > |   |   |   * DDC_0
>>      > |   |   |   * DDC_1
>>      > |   |   |   * DUC_0
>>      > |   |   |   * DUC_1
>>      > Thanks and Regards,
>>      > Manu
>>      > _______________________________________________
>>      > USRP-users mailing list
>>      > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>>      > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190531/1b0ad0e2/attachment-0001.html>
>
> ------------------------------
>
> Message: 2
> Date: Fri, 31 May 2019 19:50:34 -0500
> From: Neel Pandeya <neel.pandeya@ettus.com>
> To: usrp-users <usrp-users@lists.ettus.com>
> Subject: [USRP-users] GNU Radio & RFNoC Workshops in Boston on June 11
> 	& 13
> Message-ID:
> 	<CACaXmv8uojZ+=xF499myvz3Y4LDoMOdGKMLwNv52153hJEHBnw@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> ======================================================================
>              *** Announcing Workshops in the Boston Area ***
>
>       Ettus Research will be running two free, hands-on, technical
>       workshops in the Boston area, and you are welcome to attend!
>
>                            GNU Radio Workshop
>                              Tuesday June 11
>                           Woburn, Massachusetts
>
>                              RFNoC Workshop
>                             Thursday June 13
>                          NEWSDR at UMass-Boston
>                          Boston, Massachusetts
>
> ======================================================================
>                       *** GNU Radio Workshop ***
>
>                             Tuesday June 11
>                             09:00 to 17:00
>
>                          National Instruments
>                        800 Cummings Park Drive
>                            Woburn, MA 01801
>                   (I-93, Exit 36, Washington Street)
>
>                  Breakfast and Set-up start at 08:30
>                   Workshop runs from 09:00 to 17:00
>
>                   To register, please send email to:
>                         "haydn.nelson@ni.com"
>
> Full Title:
> Introduction to the USRP, UHD, and GNU Radio (Open-Source Toolchain)
>
> Abstract:
> This workshop will provide a thorough and practical introduction to
> the USRP hardware and the open-source software toolchain (UHD and
> GNU Radio). We will examine the hardware and architecture of the
> entire USRP family of software-defined radios. We will discuss topics
> such as how to get started using a new USRP device, how to install and
> configure the open-source software toolchain, programming the USRP
> using the UHD API from C++, using GNU Radio with the USRP and creating
> and running flowgraphs, using GNU Radio from both GRC and Python, and
> various debugging techniques. Several exercises will be performed,
> such as implementing an FM transmitter and receiver. Various
> demonstrations of wireless systems will be shown. A discussion of the
> embedded E310 radio and using embedded SDR will be included. Several
> other open-source tools will be discussed, such as GQRX, Fosphor,
> Inspectrum, and several Out-of-Tree (OOT) modules. A discussion of
> cellular applications, including OpenBTS and LTE stacks, as well as
> GPS/GNSS applications will be presented. Several other miscellaneous
> topics such as 10 Gigabit Ethernet networking, host system performance
> tuning, X300/X310 device recovery, and some best practices will be
> discussed. Attendees should come away with a solid foundation and
> practical understanding of how to configure, program, and use the USRP
> to implement a wide range range of wireless systems.
>
> Prerequisites:
> Attendees do not need to bring any USRP radios or laptop computers.
> All necessary hardware and software will be provided in the workshop.
>
> Attendees should have some previous experience with Linux and using
> the Linux command line, and basic familiarity with a programming
> language such as C, C++, or Python, and have basic understanding of
> fundamental concepts in DSP and RF. Extensive or deep experience with
> these topics is not necessary.
>
> Attendees may bring their own equipment.
> Please contact "support@ettus.com" for specific setup requirements.
>
>
> ======================================================================
>                         *** RFNoC Workshop ***
>
>                           Thursday June 13
>                            16:00 to 21:00
>
>                          Run as part of NEWSDR
>                        http://www.sdr-boston.org/
>    http://ecewp.ece.wpi.edu/wordpress/sdr-boston/workshops/newsdr-19/
>
>                      University of Massachusetts Boston
>                        100 William T Morrissey Blvd
>                            Boston, MA 02125
>
>                  Pizza/Soda and Set-up start at 16:00
>                    Workshop runs from 17:00 to 21:00
>
>            To register, please register with the NEWSDR event.
>
> Full Title:
> FPGA Programming on the USRP with the RFNoC Framework
>
> Abstract:
> Ettus Research's RFNoC (RF Network-on-Chip) software framework is
> designed to decrease the development time for experienced FPGA
> engineers seeking to integrate IP into the USRP FPGA signal
> processing chain. RFNoC is the framework for USRP devices that use
> Xilinx 7-series FPGAs (E310, E312, X300, X310). RFNoC is built around
> a packetized network infrastructure in the FPGA that handles the
> transport of control and sample data between the host CPU and the
> radio. Users target their custom algorithms to the FPGA in the form
> of Computation Engines (CE), which are processing blocks that attach
> to this network. CEs act as independent nodes on the network that can
> receive and transmit data to any other node (e.g., another CE, the
> radio block, or the host CPU).  Users can create modular,
> FPGA-accelerated SDR applications by chaining CEs into a flow graph.
> RFNoC is supported in UHD and GNU Radio. In this workshop, we will
> present an interactive hands-on tutorial on RFNoC, including a
> discussion on its design and capabilities, demonstrations of several
> existing examples, and a walk-through on implementing a user-defined
> CE and integrating the CE into GNU Radio.
>
> Prerequisites:
> Attendees do not need to bring any USRP radios or laptop computers.
> All necessary hardware and software will be provided in the workshop.
>
> Attendees should have some previous experience with Linux and using
> the Linux command line, and basic familiarity with a programming
> language such as C, C++, or Python, and have basic understanding of
> fundamental concepts in DSP and RF. Attendees should also have some
> basic familiarity with Verilog. Extensive or deep experience with
> these topics is not necessary.
>
> Attendees may bring their own equipment.
> Please contact "support@ettus.com" for specific setup requirements.
>
> ======================================================================
> Details and Logistics:
>
> * The workshops are free, technical, and hands-on.
>
> * Registration is required in advance, but is completely free.
>
> * Space is limited and will be allocated on a first-come,
>    first-serve basis.
>
> * Your registration information will be kept private,
>    and will not be shared with any third-party whatsoever.
>
> * Registration for the GNU Radio Workshop and the RFNoC Workshop
>    is done separately, as the RFNoC Workshop is part of the NEWSDR
>    event, but the GNU Radio Workshop is not.
>
> * For questions, please email "support@ettus.com".
>
> * We look forward to seeing you!!
>
> ======================================================================
>                                  EOF
> ======================================================================
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/attachments/20190531/3be682cf/attachment-0001.html>
>
> ------------------------------
>
> Subject: Digest Footer
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
> ------------------------------
>
> End of USRP-users Digest, Vol 106, Issue 1
> ******************************************

---
This email has been checked for viruses by AVG.
https://www.avg.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

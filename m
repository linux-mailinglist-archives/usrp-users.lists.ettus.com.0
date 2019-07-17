Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4D16BF38
	for <lists+usrp-users@lfdr.de>; Wed, 17 Jul 2019 17:38:31 +0200 (CEST)
Received: from [::1] (port=55462 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hnm0k-00015j-50; Wed, 17 Jul 2019 11:38:30 -0400
Received: from mail-qk1-f177.google.com ([209.85.222.177]:41265)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hnm0f-0000xJ-Vj
 for usrp-users@lists.ettus.com; Wed, 17 Jul 2019 11:38:26 -0400
Received: by mail-qk1-f177.google.com with SMTP id v22so17843355qkj.8
 for <usrp-users@lists.ettus.com>; Wed, 17 Jul 2019 08:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=xvkf7hYV2kc4NgURKNWTxOSY71+rBDoP0p+7XqJZfew=;
 b=YB4xbn5I8NJICFRjznAdmbDHCNW82lILBKfTo2EDbr1yF7Ifn4X+WWAO8/PET4AHVn
 52dhWrzhSY6Te+/rxNcnX3ISNjwZ7BE2zWXeKXUY9nzoVdgHWW1KD3TUMgMirFh2zvHz
 Hro8QpYEWfdYzFFAP48EWm27xQmys5sJtlaSupNl6TBIMaWJgcaJCn7wDwxyk1l0B+bw
 bKfRA3PxZiBoga6jeaRD5pW32fX+5GdCZpAAV+sRof+ZXux8WYQ3zAJNxP6hO9ICO/nz
 LuV6VjJZ8AmG0uHTezZTbPpz1VQE5yPT47I1SgQIsdQJtOya//pvQ8au2nxqlGLa6DGf
 FhbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=xvkf7hYV2kc4NgURKNWTxOSY71+rBDoP0p+7XqJZfew=;
 b=GTxxZS/jRmi0a2/RklVObXGOsURFkzRXmHe7b4aFmGgk9991gOI1GIdK8KB2p1ucz7
 RpzT2RIMJ08ACxwU6/bJYFu5UqkWsf1gce13kei7KE10jI5z6ihw1vJMZmyh3XrnnstX
 b8UEaSn1qGPvQAsv2KHaFKCuEBvEgvvvGnhsE/Bln1OMyte8BdG5JAno0Pu671j5nLDY
 i90fSPm1bf1XSY6j+x8SSViEjm565Tp3S1n87q/tO+l8O79yoe0pN0uy/KKTZcBa04vV
 ChJswL7mSN+SzEtF5KwLZofJydZeagrzsGZ75Qbr5PGSTOpxBorkcwA9YezXKuAwW6r+
 cFJA==
X-Gm-Message-State: APjAAAVoflFj7U8RUHcDsNLzFKhSy1hhJxoCFa0rfJeF8o30jccOjK1L
 3Ti78ueImV+qZgqHHe7WYUBFwbQO
X-Google-Smtp-Source: APXvYqy133GiBjC/lsp4VzejM8Ss6OtoXCMaj2KlkXIVyYySCP0w+7Pya/g6M5eOISxz+v6WtPlX4w==
X-Received: by 2002:a37:4e4b:: with SMTP id c72mr26351304qkb.91.1563377864699; 
 Wed, 17 Jul 2019 08:37:44 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id u11sm10560326qkk.76.2019.07.17.08.37.43
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 08:37:43 -0700 (PDT)
Message-ID: <5D2F40C6.1090204@gmail.com>
Date: Wed, 17 Jul 2019 11:37:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAOExtcQtL_gri3uWw9_NyXPEOwS6Gpc+NqSs07Vwmdc4gbHQTg@mail.gmail.com>
 <BL0PR12MB2340682EFC45C0AA255B6AA2AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcSLfxOUFfqoH0EVfJCWxRsrayZV9WnDLSk=Rf-7=pnCYA@mail.gmail.com>
 <BL0PR12MB234037B01F84C36682568490AFC90@BL0PR12MB2340.namprd12.prod.outlook.com>
 <CAOExtcTPgp-yE_DBzDY--wZWdTEw_=NtoGQtVdGbYDoiAmxTtg@mail.gmail.com>
 <CAL263iy2k8oXv_LSU6xm4apAg33-nOMxsTLukt0zadjxTxuZTA@mail.gmail.com>
 <CAOExtcQGYB8J1w3-65wNGeUDh0baFwsiir95OM8QNLeF99YA=g@mail.gmail.com>
 <CAL263ix6PEgcE2nyzwnKqSGBTMUvcn5itV0PXNw=erWrO4FYvA@mail.gmail.com>
 <CAOExtcRqLs6MecJmVt0JtV_uL=iEOWV0hLm-t772PEQfcdqUGw@mail.gmail.com>
 <CAL263iy1G64N6FaTBJ-Nat--s68dQegbHtrW5bON22LCRf9zgw@mail.gmail.com>
 <CAOExtcRF130Gs=4kvZp-c2t5enpHBLW5g758PHv2j46JAR46Og@mail.gmail.com>
 <CAL263iwxwhM8PicewVr=MKCxMSVbcM-961cf-GxVqH16ktcc6w@mail.gmail.com>
 <CAOExtcQFMQ6S8AVR_8dX9oPmwNS+-sZeTohWG79N_7eJS0PKtQ@mail.gmail.com>
In-Reply-To: <CAOExtcQFMQ6S8AVR_8dX9oPmwNS+-sZeTohWG79N_7eJS0PKtQ@mail.gmail.com>
Subject: Re: [USRP-users] Sequence Errors N200
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============0803730962415257532=="
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

This is a multi-part message in MIME format.
--===============0803730962415257532==
Content-Type: multipart/alternative;
 boundary="------------090408000908070200030805"

This is a multi-part message in MIME format.
--------------090408000908070200030805
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/17/2019 11:27 AM, Sumit Kumar via USRP-users wrote:
> Ok I will do this.. but why the transmission with other USRP is 
> working fine ?
My guess is that you have different FPGA versions in the two devices.

Make sure that you're running a consistent version of UHD (both in your 
Gnu Radio world, and your "raw UHD" world).

Make sure that the FPGA/firmware images are appropriate/consistent for 
the version of UHD that you're running on the host.

Now, normally UHD will alert you if there's an FPGA version mis-match, 
but I think that there are cases where this isn't true.


>
> On Wed, Jul 17, 2019 at 5:22 PM Nate Temple <nate.temple@ettus.com 
> <mailto:nate.temple@ettus.com>> wrote:
>
>     Hi Sumit,
>
>     So it looks like you have multiple version of UHD installed:
>
>     john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/narrowband$
>     sudo ./benchmark_tx.py -f 2.45G -S 10
>     linux; GNU C++ version 5.3.1 20151219; Boost_105800;
>     UHD_003.009.002-0-unknown
>
>
>     john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$
>     sudo ./benchmark_rate --rx_rate 10e6 --duration 600
>     [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609; Boost_105800;
>     UHD_3.15.0.git-1-gf83faf28
>
>
>     I would recommend to stick to a single UHD version and use the
>     latest stable tagged released (currently 3.14.1.0) you will need
>     to modify the pybombs recipe to use the correct git tag
>     (v3.14.1.0). The 'master' branch can be unstable at times.
>
>     Also, if you have a FPGA image of say 3.15.x.x flashed on the N210
>     and then revert back to using 3.9.2, and UHD does not catch the
>     mismatch, it will likely cause flow control errors and unstable
>     performance.
>
>     The gr-digital/examples/narrowband/benchmark_tx.py example is also
>     buggy, and is being removed from GR 3.8. Using the UHD
>     benchmark_rate utility will test the hardware with a limited scope.
>
>     Regards,
>     Nate Temple
>
>
>     On Wed, Jul 17, 2019 at 8:10 AM Sumit Kumar <cogwsn@gmail.com
>     <mailto:cogwsn@gmail.com>> wrote:
>
>         Sorry, here it is.
>
>         Benchmark rate summary:
>           Num received samples:     5999986436
>           Num dropped samples:      0
>           Num overruns detected:    0
>           Num transmitted samples:  0
>           Num sequence errors (Tx): 0
>           Num sequence errors (Rx): 0
>           Num underruns detected:   0
>           Num late commands:        0
>           Num timeouts (Tx):        0
>           Num timeouts (Rx):        0
>
>
>         On Wed, Jul 17, 2019 at 5:08 PM Nate Temple
>         <nate.temple@ettus.com <mailto:nate.temple@ettus.com>> wrote:
>
>             Hi Sumit,
>
>             It will take 10 minutes for that run to complete. Does it
>             produce a report at the end of the run?
>
>             Regards,
>             Nate Temple
>
>             On Wed, Jul 17, 2019 at 8:06 AM Sumit Kumar
>             <cogwsn@gmail.com <mailto:cogwsn@gmail.com>> wrote:
>
>                 Hi Nate,
>                 No there are not. At the end of the last line, cursor
>                 keeps blinking, no sequence errors.
>
>                 john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$
>                 sudo ./benchmark_rate --rx_rate 10e6 --duration 600
>
>                 [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
>                 Boost_105800; UHD_3.15.0.git-1-gf83faf28
>                 [00:00:00.000024] Creating the usrp device with: ...
>                 [INFO] [USRP2] Opening a USRP2/N-Series device...
>                 [INFO] [USRP2] Current recv frame size: 1472 bytes
>                 [INFO] [USRP2] Current send frame size: 1472 bytes
>                 Using Device: Single USRP:
>                   Device: USRP2 / N-Series Device
>                   Mboard 0: N200r4
>                   RX Channel: 0
>                     RX DSP: 0
>                     RX Dboard: A
>                     RX Subdev: SBXv3 RX
>                   TX Channel: 0
>                     TX DSP: 0
>                     TX Dboard: A
>                     TX Subdev: SBXv3 TX
>
>                 [00:00:01.796895] Setting device timestamp to 0...
>                 [00:00:01.797430] Testing receive rate 10.000000 Msps
>                 on 1 channels
>
>                 On Wed, Jul 17, 2019 at 4:39 PM Nate Temple
>                 <nate.temple@ettus.com <mailto:nate.temple@ettus.com>>
>                 wrote:
>
>                     Hi Sumit,
>
>                     If you run benchmark_rate for an extend period of
>                     time, do you see any sequence errors?
>
>                     /usr/local/lib/uhd/examples/benchmark_rate
>                     --rx_rate 10e6 --duration 600
>
>
>                     Regards,
>                     Nate Temple
>
>                     On Wed, Jul 17, 2019 at 7:34 AM Sumit Kumar
>                     <cogwsn@gmail.com <mailto:cogwsn@gmail.com>> wrote:
>
>                         Hi Nate,
>                         Yes I addressed the first 2 points you mentioned.
>
>                         john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/narrowband$
>                         sudo ./benchmark_tx.py -f 2.45G -S 10
>                         linux; GNU C++ version 5.3.1 20151219;
>                         Boost_105800; UHD_003.009.002-0-unknown
>
>                         Using Volk machine: avx_64_mmx_orc
>                         -- Opening a USRP2/N-Series device...
>                         -- Current recv frame size: 1472 bytes
>                         -- Current send frame size: 1472 bytes
>
>                         No gain specified.
>                         Setting gain to 15.750000 (from [0.000000,
>                         31.500000])
>                         ..............................................................................................SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S......SS.S......SS.....S....S...S.S.......S....S........^C
>
>                         I am using ./benchmark_tx.py located
>                         in gnuradio/gr-digital/examples/narrowband
>
>
>
>                         On Wed, Jul 17, 2019 at 4:25 PM Nate Temple
>                         <nate.temple@ettus.com
>                         <mailto:nate.temple@ettus.com>> wrote:
>
>                             Hi Sumit,
>
>                             A couple things to address:
>
>                             1) Enable Thread priority scheduling on
>                             your host
>
>                             Note it is throwing a warning in the
>                             output: "[WARNING] [UHD] Unable to set the
>                             thread priority. Performance may be
>                             negatively affected."
>
>                             https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling
>                             <https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_%28UHD_and_GNU_Radio%29_on_Linux#Thread_priority_scheduling>
>
>
>                             2) Adjust your network buffers
>
>                             "
>                             [WARNING] [UDP] The send buffer could not
>                             be resized sufficiently.
>                             Target sock buff size: 2500000 bytes.
>                             Actual sock buff size: 1048576 bytes.
>                             See the transport application notes on
>                             buffer resizing.
>                             Please run: sudo sysctl -w
>                             net.core.wmem_max=2500000
>                             [WARNING] [UDP] The send buffer could not
>                             be resized sufficiently.
>                             Target sock buff size: 2500000 bytes.
>                             Actual sock buff size: 1048576 bytes.
>                             See the transport application notes on
>                             buffer resizing.
>                             Please run: sudo sysctl -w
>                             net.core.wmem_max=2500000
>                             "
>
>                             https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx
>
>
>                             What is the command you're using to
>                             transmit(which utility and args?)
>
>
>                             Regards,
>                             Nate Temple
>
>                             On Wed, Jul 17, 2019 at 7:06 AM Sumit
>                             Kumar via USRP-users
>                             <usrp-users@lists.ettus.com
>                             <mailto:usrp-users@lists.ettus.com>> wrote:
>
>                                 Following is what I am getting after
>                                 the command you asked to run. The
>                                 192.168.10.5 gives SSSSSSS.
>
>                                 john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>                                 ./usrp_burn_mb_eeprom --read-all
>                                 --args "addr=192.168.10.5"
>                                 Creating USRP device from address:
>                                 addr=192.168.10.5
>                                 [INFO] [UHD] linux; GNU C++ version
>                                 5.4.0 20160609; Boost_105800;
>                                 UHD_3.15.0.git-1-gf83faf28
>                                 [INFO] [USRP2] Opening a
>                                 USRP2/N-Series device...
>                                 [INFO] [USRP2] Current recv frame
>                                 size: 1472 bytes
>                                 [INFO] [USRP2] Current send frame
>                                 size: 1472 bytes
>                                 [WARNING] [UDP] The send buffer could
>                                 not be resized sufficiently.
>                                 Target sock buff size: 2500000 bytes.
>                                 Actual sock buff size: 1048576 bytes.
>                                 See the transport application notes on
>                                 buffer resizing.
>                                 Please run: sudo sysctl -w
>                                 net.core.wmem_max=2500000
>                                 [WARNING] [UDP] The send buffer could
>                                 not be resized sufficiently.
>                                 Target sock buff size: 2500000 bytes.
>                                 Actual sock buff size: 1048576 bytes.
>                                 See the transport application notes on
>                                 buffer resizing.
>                                 Please run: sudo sysctl -w
>                                 net.core.wmem_max=2500000
>                                 [WARNING] [UDP] The send buffer could
>                                 not be resized sufficiently.
>                                 Target sock buff size: 2500000 bytes.
>                                 Actual sock buff size: 1048576 bytes.
>                                 See the transport application notes on
>                                 buffer resizing.
>                                 Please run: sudo sysctl -w
>                                 net.core.wmem_max=2500000
>                                 [WARNING] [UHD] Unable to set the
>                                 thread priority. Performance may be
>                                 negatively affected.
>                                 Please see the general application
>                                 notes in the manual for instructions.
>                                 EnvironmentError: OSError: error in
>                                 pthread_setschedparam
>
>                                 Fetching current settings from EEPROM...
>                                     EEPROM ["hardware"] is "2576"
>                                     EEPROM ["revision"] is ""
>                                     EEPROM ["product"] is ""
>                                     EEPROM ["mac-addr"] is
>                                 "a0:36:fa:26:34:44"
>                                     EEPROM ["ip-addr"] is "192.168.10.5"
>                                     EEPROM ["subnet"] is "255.255.255.255"
>                                     EEPROM ["gateway"] is
>                                 "255.255.255.255"
>                                     EEPROM ["gpsdo"] is "none"
>                                     EEPROM ["serial"] is "E4R14V4UN"
>                                     EEPROM ["name"] is ""
>
>                                 Power-cycle the USRP device for the
>                                 changes to take effect.
>
>                                 Done
>
>
>                                 john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
>                                 ./usrp_burn_mb_eeprom --read-all
>                                 --args "addr=192.168.10.3"
>                                 Creating USRP device from address:
>                                 addr=192.168.10.3
>                                 [INFO] [UHD] linux; GNU C++ version
>                                 5.4.0 20160609; Boost_105800;
>                                 UHD_3.15.0.git-1-gf83faf28
>                                 [INFO] [USRP2] Opening a
>                                 USRP2/N-Series device...
>                                 [INFO] [USRP2] Current recv frame
>                                 size: 1472 bytes
>                                 [INFO] [USRP2] Current send frame
>                                 size: 1472 bytes
>                                 [WARNING] [UDP] The send buffer could
>                                 not be resized sufficiently.
>                                 Target sock buff size: 2500000 bytes.
>                                 Actual sock buff size: 1048576 bytes.
>                                 See the transport application notes on
>                                 buffer resizing.
>                                 Please run: sudo sysctl -w
>                                 net.core.wmem_max=2500000
>                                 [WARNING] [UDP] The send buffer could
>                                 not be resized sufficiently.
>                                 Target sock buff size: 2500000 bytes.
>                                 Actual sock buff size: 1048576 bytes.
>                                 See the transport application notes on
>                                 buffer resizing.
>                                 Please run: sudo sysctl -w
>                                 net.core.wmem_max=2500000
>                                 [WARNING] [UDP] The send buffer could
>                                 not be resized sufficiently.
>                                 Target sock buff size: 2500000 bytes.
>                                 Actual sock buff size: 1048576 bytes.
>                                 See the transport application notes on
>                                 buffer resizing.
>                                 Please run: sudo sysctl -w
>                                 net.core.wmem_max=2500000
>                                 [WARNING] [UHD] Unable to set the
>                                 thread priority. Performance may be
>                                 negatively affected.
>                                 Please see the general application
>                                 notes in the manual for instructions.
>                                 EnvironmentError: OSError: error in
>                                 pthread_setschedparam
>
>                                 Fetching current settings from EEPROM...
>                                     EEPROM ["hardware"] is "2576"
>                                     EEPROM ["revision"] is ""
>                                     EEPROM ["product"] is ""
>                                     EEPROM ["mac-addr"] is
>                                 "a0:36:fa:26:34:42"
>                                     EEPROM ["ip-addr"] is "192.168.10.3"
>                                     EEPROM ["subnet"] is "255.255.255.255"
>                                     EEPROM ["gateway"] is
>                                 "255.255.255.255"
>                                     EEPROM ["gpsdo"] is "none"
>                                     EEPROM ["serial"] is "E4R14V2UN"
>                                     EEPROM ["name"] is ""
>
>                                 Power-cycle the USRP device for the
>                                 changes to take effect.
>
>                                 Done
>
>
>                                 On Wed, Jul 17, 2019 at 3:19 PM Jason
>                                 Matusiak
>                                 <jason@gardettoengineering.com
>                                 <mailto:jason@gardettoengineering.com>> wrote:
>
>                                     You are right, the table of
>                                     revisions was for the X-series
>
>                                     try running the command from your
>                                     prefix:
>                                     src/uhd/host/build/utils/usrp_burn_mb_eeprom --args="type=n200"
>                                     --read-all
>
>                                     don't quote me on the type
>                                     portion, I don't have a board in
>                                     front of me to see if it is n200
>                                     or something else.  I //think//
>                                     that will report the major and
>                                     minor revision values (I am
>                                     grasping at straws here, just
>                                     trying to figure out what the
>                                     differences might be).
>
>                                     You are connecting the ethernet
>                                     connections to the two devices
>                                     through the exact same port on
>                                     your PC?
>
>                                     ------------------------------------------------------------------------
>                                     *From:* Sumit Kumar
>                                     <cogwsn@gmail.com
>                                     <mailto:cogwsn@gmail.com>>
>                                     *Sent:* Wednesday, July 17, 2019
>                                     8:24 AM
>                                     *To:* Jason Matusiak
>                                     <jason@gardettoengineering.com
>                                     <mailto:jason@gardettoengineering.com>>
>                                     *Cc:* usrp-users@lists.ettus.com
>                                     <mailto:usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com
>                                     <mailto:usrp-users@lists.ettus.com>>
>                                     *Subject:* Re: [USRP-users]
>                                     Sequence Errors N200
>                                     The sticker  for sbx shows F33612
>                                     and F33814.
>                                     How will this help ?
>
>
>                                     On Wed, Jul 17, 2019 at 1:50 PM
>                                     Jason Matusiak
>                                     <jason@gardettoengineering.com
>                                     <mailto:jason@gardettoengineering.com>>
>                                     wrote:
>
>                                         Sumit,
>
>                                         OK, the last idea I have:
>
>                                         There is a sticker on the back
>                                         of the N-series devices it
>                                         /usually/ says the version
>                                         there, but not always.  This
>                                         has a little info:
>                                         https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM
>
>                                         Do they match?
>
>                                         ------------------------------------------------------------------------
>                                         *From:* Sumit Kumar
>                                         <cogwsn@gmail.com
>                                         <mailto:cogwsn@gmail.com>>
>                                         *Sent:* Wednesday, July 17,
>                                         2019 7:45 AM
>                                         *To:* Jason Matusiak
>                                         <jason@gardettoengineering.com
>                                         <mailto:jason@gardettoengineering.com>>
>                                         *Cc:*
>                                         usrp-users@lists.ettus.com
>                                         <mailto:usrp-users@lists.ettus.com>
>                                         <usrp-users@lists.ettus.com
>                                         <mailto:usrp-users@lists.ettus.com>>
>                                         *Subject:* Re: [USRP-users]
>                                         Sequence Errors N200
>                                         Hi Jason,
>
>                                         Yes they are consistent, I
>                                         mean the output of
>                                         uhd_usrp_probe for both N200
>                                         is exactly the same (except
>                                         the ip, serial and mac addr).
>                                         I do not know where the
>                                         problem is! Hardware or software
>
>                                         Regards
>                                         Sumit
>
>                                         On Wed, Jul 17, 2019 at 1:19
>                                         PM Jason Matusiak
>                                         <jason@gardettoengineering.com
>                                         <mailto:jason@gardettoengineering.com>>
>                                         wrote:
>
>                                             I am not really an
>                                             N-series guy, so this
>                                             probably won't be helpful.
>                                             Have you tried doing a
>                                             uhd_usrp_probe on both
>                                             devices and seen that the
>                                             responses are consistent?
>
>                                             ------------------------------------------------------------------------
>                                             *From:* USRP-users
>                                             <usrp-users-bounces@lists.ettus.com
>                                             <mailto:usrp-users-bounces@lists.ettus.com>>
>                                             on behalf of Sumit Kumar
>                                             via USRP-users
>                                             <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>                                             *Sent:* Wednesday, July
>                                             17, 2019 7:15 AM
>                                             *To:*
>                                             usrp-users@lists.ettus.com
>                                             <mailto:usrp-users@lists.ettus.com>
>                                             <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>                                             *Subject:* [USRP-users]
>                                             Sequence Errors N200
>                                             Hi,
>                                             I am trying transmit using
>                                             Ettus N200 (call it A) but
>                                             getting this error message
>                                             on the console
>
>                                             SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS....................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................
>
>                                             I looked for it on google
>                                             and found these links
>                                             http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.html
>                                             http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/032838.html
>
>                                             Both the links suggested
>                                             problem related to the
>                                             gigabit port. Then I
>                                             connected another USRP
>                                             N200 (call it B) to the
>                                             same laptop and tried
>                                             transmitting using that as
>                                             there were no such
>                                             sequence error messages.
>
>                                             This makes me believe
>                                             there is some problem with
>                                             the first USRP, i.e., A.
>
>                                             Further I tried with
>                                             different versions of UHD
>                                             3.11, UHD 3.15.. but its
>                                             the same.
>
>                                             Receive is good only
>                                             transmit is throwing error.
>
>                                             Not only with UHD, even in
>                                             labview, when I transmit,
>                                             I see nothing coming out
>                                             from the N200 (A).
>
>                                             I am using SBXv2 daughter
>                                             board.
>
>                                             Any clue!
>
>                                             Regards
>                                             -- 
>                                             -- 
>                                             Sumit kumar
>                                             Postdoc
>                                             SnT, Luxembourg
>
>
>
>
>                                         -- 
>                                         -- 
>                                         Sumit kumar
>                                         Postdoc
>                                         SnT, Luxembourg
>
>
>
>
>                                     -- 
>                                     -- 
>                                     Sumit kumar
>                                     Postdoc
>                                     SnT, Luxembourg
>
>
>
>
>                                 -- 
>                                 -- 
>                                 Sumit kumar
>                                 Postdoc
>                                 SnT, Luxembourg
>
>
>                                 _______________________________________________
>                                 USRP-users mailing list
>                                 USRP-users@lists.ettus.com
>                                 <mailto:USRP-users@lists.ettus.com>
>                                 http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>
>
>                         -- 
>                         -- 
>                         Sumit kumar
>                         Postdoc
>                         SnT, Luxembourg
>
>
>
>
>                 -- 
>                 -- 
>                 Sumit kumar
>                 Postdoc
>                 SnT, Luxembourg
>
>
>
>
>         -- 
>         -- 
>         Sumit kumar
>         Postdoc
>         SnT, Luxembourg
>
>
>
>
> -- 
> -- 
> Sumit kumar
> Postdoc
> SnT, Luxembourg
>
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------090408000908070200030805
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/17/2019 11:27 AM, Sumit Kumar via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAOExtcQFMQ6S8AVR_8dX9oPmwNS+-sZeTohWG79N_7eJS0PKtQ@mail.gmail.com"
      type="cite">
      <div dir="ltr">Ok I will do this.. but why the transmission with
        other USRP is working fine ? <br>
      </div>
    </blockquote>
    My guess is that you have different FPGA versions in the two
    devices.<br>
    <br>
    Make sure that you're running a consistent version of UHD (both in
    your Gnu Radio world, and your "raw UHD" world). <br>
    <br>
    Make sure that the FPGA/firmware images are appropriate/consistent
    for the version of UHD that you're running on the host.<br>
    <br>
    Now, normally UHD will alert you if there's an FPGA version
    mis-match, but I think that there are cases where this isn't true.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAOExtcQFMQ6S8AVR_8dX9oPmwNS+-sZeTohWG79N_7eJS0PKtQ@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Wed, Jul 17, 2019 at 5:22
          PM Nate Temple &lt;<a moz-do-not-send="true"
            href="mailto:nate.temple@ettus.com">nate.temple@ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="ltr">
            <div class="gmail_default"
              style="font-family:arial,helvetica,sans-serif">Hi Sumit,<br>
              <br>
              So it looks like you have multiple version of UHD
              installed:<br>
              <br>
              john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/narrowband$
              sudo ./benchmark_tx.py -f 2.45G -S 10<br>
              linux; GNU C++ version 5.3.1 20151219; Boost_105800;
              UHD_003.009.002-0-unknown<br>
              <br>
              <br>
              john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$
              sudo ./benchmark_rate --rx_rate 10e6 --duration 600<br>
              [INFO] [UHD] linux; GNU C++ version 5.4.0 20160609;
              Boost_105800; UHD_3.15.0.git-1-gf83faf28<br>
              <br>
              <br>
              I would recommend to stick to a single UHD version and use
              the latest stable tagged released (currently 3.14.1.0) you
              will need to modify the pybombs recipe to use the correct
              git tag (v3.14.1.0). The 'master' branch can be unstable
              at times.<br>
              <br>
              Also, if you have a FPGA image of say 3.15.x.x flashed on
              the N210 and then revert back to using 3.9.2, and UHD does
              not catch the mismatch, it will likely cause flow control
              errors and unstable performance.<br>
              <br>
              The gr-digital/examples/narrowband/benchmark_tx.py example
              is also buggy, and is being removed from GR 3.8. Using the
              UHD benchmark_rate utility will test the hardware with a
              limited scope.<br>
              <br>
              Regards,<br>
              Nate Temple<br>
              <br>
            </div>
          </div>
          <br>
          <div class="gmail_quote">
            <div dir="ltr" class="gmail_attr">On Wed, Jul 17, 2019 at
              8:10 AM Sumit Kumar &lt;<a moz-do-not-send="true"
                href="mailto:cogwsn@gmail.com" target="_blank">cogwsn@gmail.com</a>&gt;
              wrote:<br>
            </div>
            <blockquote class="gmail_quote" style="margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir="ltr">Sorry, here it is.
                <div><br>
                </div>
                <div>Benchmark rate summary:<br>
                    Num received samples:     5999986436<br>
                    Num dropped samples:      0<br>
                    Num overruns detected:    0<br>
                    Num transmitted samples:  0<br>
                    Num sequence errors (Tx): 0<br>
                    Num sequence errors (Rx): 0<br>
                    Num underruns detected:   0<br>
                    Num late commands:        0<br>
                    Num timeouts (Tx):        0<br>
                    Num timeouts (Rx):        0<br>
                </div>
                <div><br>
                </div>
              </div>
              <br>
              <div class="gmail_quote">
                <div dir="ltr" class="gmail_attr">On Wed, Jul 17, 2019
                  at 5:08 PM Nate Temple &lt;<a moz-do-not-send="true"
                    href="mailto:nate.temple@ettus.com" target="_blank">nate.temple@ettus.com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class="gmail_quote" style="margin:0px 0px
                  0px 0.8ex;border-left:1px solid
                  rgb(204,204,204);padding-left:1ex">
                  <div dir="ltr">
                    <div class="gmail_default"
                      style="font-family:arial,helvetica,sans-serif">Hi
                      Sumit,<br>
                      <br>
                      It will take 10 minutes for that run to complete.
                      Does it produce a report at the end of the run?<br>
                      <br>
                      Regards,<br>
                      Nate Temple<br>
                    </div>
                  </div>
                  <br>
                  <div class="gmail_quote">
                    <div dir="ltr" class="gmail_attr">On Wed, Jul 17,
                      2019 at 8:06 AM Sumit Kumar &lt;<a
                        moz-do-not-send="true"
                        href="mailto:cogwsn@gmail.com" target="_blank">cogwsn@gmail.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class="gmail_quote" style="margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div dir="ltr">Hi Nate,
                        <div>No there are not. At the end of the last
                          line, cursor keeps blinking, no sequence
                          errors. <br>
                          <div><br>
                          </div>
                          <div>john@john-Precision-M4600:~/pybombs/src/uhd/host/build/examples$
                            sudo ./benchmark_rate --rx_rate 10e6
                            --duration 600<span
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-im"
                              style="color:rgb(80,0,80)"><br>
                              <br>
                              [INFO] [UHD] linux; GNU C++ version 5.4.0
                              20160609; Boost_105800;
                              UHD_3.15.0.git-1-gf83faf28<br>
                            </span>[00:00:00.000024] Creating the usrp
                            device with: ...<span
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-im"
                              style="color:rgb(80,0,80)"><br>
                              [INFO] [USRP2] Opening a USRP2/N-Series
                              device...<br>
                              [INFO] [USRP2] Current recv frame size:
                              1472 bytes<br>
                              [INFO] [USRP2] Current send frame size:
                              1472 bytes<br>
                            </span>Using Device: Single USRP:<br>
                              Device: USRP2 / N-Series Device<br>
                              Mboard 0: N200r4<br>
                              RX Channel: 0<br>
                                RX DSP: 0<br>
                                RX Dboard: A<br>
                                RX Subdev: SBXv3 RX<br>
                              TX Channel: 0<br>
                                TX DSP: 0<br>
                                TX Dboard: A<br>
                                TX Subdev: SBXv3 TX<br>
                            <br>
                            [00:00:01.796895] Setting device timestamp
                            to 0...<br>
                            [00:00:01.797430] Testing receive rate
                            10.000000 Msps on 1 channels<br>
                          </div>
                        </div>
                      </div>
                      <br>
                      <div class="gmail_quote">
                        <div dir="ltr" class="gmail_attr">On Wed, Jul
                          17, 2019 at 4:39 PM Nate Temple &lt;<a
                            moz-do-not-send="true"
                            href="mailto:nate.temple@ettus.com"
                            target="_blank">nate.temple@ettus.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class="gmail_quote"
                          style="margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div dir="ltr">
                            <div class="gmail_default"
                              style="font-family:arial,helvetica,sans-serif">Hi
                              Sumit,<br>
                              <br>
                              If you run benchmark_rate for an extend
                              period of time, do you see any sequence
                              errors?<br>
                              <br>
                              /usr/local/lib/uhd/examples/benchmark_rate
                              --rx_rate 10e6 --duration 600<br>
                              <br>
                              <br>
                              Regards,<br>
                              Nate Temple</div>
                          </div>
                          <br>
                          <div class="gmail_quote">
                            <div dir="ltr" class="gmail_attr">On Wed,
                              Jul 17, 2019 at 7:34 AM Sumit Kumar &lt;<a
                                moz-do-not-send="true"
                                href="mailto:cogwsn@gmail.com"
                                target="_blank">cogwsn@gmail.com</a>&gt;
                              wrote:<br>
                            </div>
                            <blockquote class="gmail_quote"
                              style="margin:0px 0px 0px
                              0.8ex;border-left:1px solid
                              rgb(204,204,204);padding-left:1ex">
                              <div dir="ltr">Hi Nate, 
                                <div>Yes I addressed the first 2 points
                                  you mentioned. </div>
                                <div><br>
                                </div>
                                <div>john@john-Precision-M4600:~/pybombs/src/gnuradio/gr-digital/examples/narrowband$
                                  sudo ./benchmark_tx.py -f 2.45G -S 10<br>
                                  linux; GNU C++ version 5.3.1 20151219;
                                  Boost_105800;
                                  UHD_003.009.002-0-unknown<br>
                                  <br>
                                  Using Volk machine: avx_64_mmx_orc<br>
                                  -- Opening a USRP2/N-Series device...<br>
                                  -- Current recv frame size: 1472 bytes<br>
                                  -- Current send frame size: 1472 bytes<br>
                                  <br>
                                  No gain specified.<br>
                                  Setting gain to 15.750000 (from
                                  [0.000000, 31.500000])<br>
..............................................................................................SS.SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS.SSSS..S......SS.S......SS.....S....S...S.S.......S....S........^C<br>
                                </div>
                                <div><br>
                                </div>
                                <div>I am using ./benchmark_tx.py
                                  located
                                  in gnuradio/gr-digital/examples/narrowband</div>
                                <div><br>
                                </div>
                                <div><br>
                                </div>
                              </div>
                              <br>
                              <div class="gmail_quote">
                                <div dir="ltr" class="gmail_attr">On
                                  Wed, Jul 17, 2019 at 4:25 PM Nate
                                  Temple &lt;<a moz-do-not-send="true"
                                    href="mailto:nate.temple@ettus.com"
                                    target="_blank">nate.temple@ettus.com</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote class="gmail_quote"
                                  style="margin:0px 0px 0px
                                  0.8ex;border-left:1px solid
                                  rgb(204,204,204);padding-left:1ex">
                                  <div dir="ltr">
                                    <div class="gmail_default"
                                      style="font-family:arial,helvetica,sans-serif">Hi
                                      Sumit,<br>
                                      <br>
                                      A couple things to address:<br>
                                      <br>
                                      1) Enable Thread priority
                                      scheduling on your host<br>
                                      <br>
                                      Note it is throwing a warning in
                                      the output: "[WARNING] [UHD]
                                      Unable to set the thread priority.
                                      Performance may be negatively
                                      affected."<br>
                                      <br>
                                      <a moz-do-not-send="true"
href="https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_%28UHD_and_GNU_Radio%29_on_Linux#Thread_priority_scheduling"
                                        target="_blank">https://kb.ettus.com/Building_and_Installing_the_USRP_Open-Source_Toolchain_(UHD_and_GNU_Radio)_on_Linux#Thread_priority_scheduling</a><br>
                                      <br>
                                      <br>
                                      2) Adjust your network buffers<br>
                                      <br>
                                      "<br>
                                      [WARNING] [UDP] The send buffer
                                      could not be resized sufficiently.<br>
                                      Target sock buff size: 2500000
                                      bytes.<br>
                                      Actual sock buff size: 1048576
                                      bytes.<br>
                                      See the transport application
                                      notes on buffer resizing.<br>
                                      Please run: sudo sysctl -w
                                      net.core.wmem_max=2500000<br>
                                      [WARNING] [UDP] The send buffer
                                      could not be resized sufficiently.<br>
                                      Target sock buff size: 2500000
                                      bytes.<br>
                                      Actual sock buff size: 1048576
                                      bytes.<br>
                                      See the transport application
                                      notes on buffer resizing.<br>
                                      Please run: sudo sysctl -w
                                      net.core.wmem_max=2500000<br>
                                      "<br>
                                      <br>
                                      <a moz-do-not-send="true"
href="https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx"
                                        target="_blank">https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#N2xx</a><br>
                                      <br>
                                      <br>
                                      What is the command you're using
                                      to transmit(which utility and
                                      args?)<br>
                                      <br>
                                      <br>
                                      Regards,<br>
                                      Nate Temple<br>
                                    </div>
                                  </div>
                                  <br>
                                  <div class="gmail_quote">
                                    <div dir="ltr" class="gmail_attr">On
                                      Wed, Jul 17, 2019 at 7:06 AM Sumit
                                      Kumar via USRP-users &lt;<a
                                        moz-do-not-send="true"
                                        href="mailto:usrp-users@lists.ettus.com"
                                        target="_blank">usrp-users@lists.ettus.com</a>&gt;
                                      wrote:<br>
                                    </div>
                                    <blockquote class="gmail_quote"
                                      style="margin:0px 0px 0px
                                      0.8ex;border-left:1px solid
                                      rgb(204,204,204);padding-left:1ex">
                                      <div dir="ltr">Following is what I
                                        am getting after the command you
                                        asked to run. The 192.168.10.5
                                        gives SSSSSSS. 
                                        <div><br>
                                        </div>
                                        <div>john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
                                          ./usrp_burn_mb_eeprom
                                          --read-all --args
                                          "addr=192.168.10.5"<br>
                                          Creating USRP device from
                                          address: addr=192.168.10.5<br>
                                          [INFO] [UHD] linux; GNU C++
                                          version 5.4.0 20160609;
                                          Boost_105800;
                                          UHD_3.15.0.git-1-gf83faf28<br>
                                          [INFO] [USRP2] Opening a
                                          USRP2/N-Series device...<br>
                                          [INFO] [USRP2] Current recv
                                          frame size: 1472 bytes<br>
                                          [INFO] [USRP2] Current send
                                          frame size: 1472 bytes<br>
                                          [WARNING] [UDP] The send
                                          buffer could not be resized
                                          sufficiently.<br>
                                          Target sock buff size: 2500000
                                          bytes.<br>
                                          Actual sock buff size: 1048576
                                          bytes.<br>
                                          See the transport application
                                          notes on buffer resizing.<br>
                                          Please run: sudo sysctl -w
                                          net.core.wmem_max=2500000<br>
                                          [WARNING] [UDP] The send
                                          buffer could not be resized
                                          sufficiently.<br>
                                          Target sock buff size: 2500000
                                          bytes.<br>
                                          Actual sock buff size: 1048576
                                          bytes.<br>
                                          See the transport application
                                          notes on buffer resizing.<br>
                                          Please run: sudo sysctl -w
                                          net.core.wmem_max=2500000<br>
                                          [WARNING] [UDP] The send
                                          buffer could not be resized
                                          sufficiently.<br>
                                          Target sock buff size: 2500000
                                          bytes.<br>
                                          Actual sock buff size: 1048576
                                          bytes.<br>
                                          See the transport application
                                          notes on buffer resizing.<br>
                                          Please run: sudo sysctl -w
                                          net.core.wmem_max=2500000<br>
                                          [WARNING] [UHD] Unable to set
                                          the thread priority.
                                          Performance may be negatively
                                          affected.<br>
                                          Please see the general
                                          application notes in the
                                          manual for instructions.<br>
                                          EnvironmentError: OSError:
                                          error in pthread_setschedparam<br>
                                          <br>
                                          Fetching current settings from
                                          EEPROM...<br>
                                              EEPROM ["hardware"] is
                                          "2576"<br>
                                              EEPROM ["revision"] is ""<br>
                                              EEPROM ["product"] is ""<br>
                                              EEPROM ["mac-addr"] is
                                          "a0:36:fa:26:34:44"<br>
                                              EEPROM ["ip-addr"] is
                                          "192.168.10.5"<br>
                                              EEPROM ["subnet"] is
                                          "255.255.255.255"<br>
                                              EEPROM ["gateway"] is
                                          "255.255.255.255"<br>
                                              EEPROM ["gpsdo"] is "none"<br>
                                              EEPROM ["serial"] is
                                          "E4R14V4UN"<br>
                                              EEPROM ["name"] is ""<br>
                                          <br>
                                          Power-cycle the USRP device
                                          for the changes to take
                                          effect.<br>
                                          <br>
                                          <div>Done</div>
                                          <div><br>
                                          </div>
                                          <div><br>
                                          </div>
                                          <div>john@john-Precision-M4600:~/pybombs/src/uhd/host/build/utils$
                                            ./usrp_burn_mb_eeprom
                                            --read-all --args
                                            "addr=192.168.10.3"<br>
                                            Creating USRP device from
                                            address: addr=192.168.10.3<br>
                                            [INFO] [UHD] linux; GNU C++
                                            version 5.4.0 20160609;
                                            Boost_105800;
                                            UHD_3.15.0.git-1-gf83faf28<br>
                                            [INFO] [USRP2] Opening a
                                            USRP2/N-Series device...<br>
                                            [INFO] [USRP2] Current recv
                                            frame size: 1472 bytes<br>
                                            [INFO] [USRP2] Current send
                                            frame size: 1472 bytes<br>
                                            [WARNING] [UDP] The send
                                            buffer could not be resized
                                            sufficiently.<br>
                                            Target sock buff size:
                                            2500000 bytes.<br>
                                            Actual sock buff size:
                                            1048576 bytes.<br>
                                            See the transport
                                            application notes on buffer
                                            resizing.<br>
                                            Please run: sudo sysctl -w
                                            net.core.wmem_max=2500000<br>
                                            [WARNING] [UDP] The send
                                            buffer could not be resized
                                            sufficiently.<br>
                                            Target sock buff size:
                                            2500000 bytes.<br>
                                            Actual sock buff size:
                                            1048576 bytes.<br>
                                            See the transport
                                            application notes on buffer
                                            resizing.<br>
                                            Please run: sudo sysctl -w
                                            net.core.wmem_max=2500000<br>
                                            [WARNING] [UDP] The send
                                            buffer could not be resized
                                            sufficiently.<br>
                                            Target sock buff size:
                                            2500000 bytes.<br>
                                            Actual sock buff size:
                                            1048576 bytes.<br>
                                            See the transport
                                            application notes on buffer
                                            resizing.<br>
                                            Please run: sudo sysctl -w
                                            net.core.wmem_max=2500000<br>
                                            [WARNING] [UHD] Unable to
                                            set the thread priority.
                                            Performance may be
                                            negatively affected.<br>
                                            Please see the general
                                            application notes in the
                                            manual for instructions.<br>
                                            EnvironmentError: OSError:
                                            error in
                                            pthread_setschedparam<br>
                                            <br>
                                            Fetching current settings
                                            from EEPROM...<br>
                                                EEPROM ["hardware"] is
                                            "2576"<br>
                                                EEPROM ["revision"] is
                                            ""<br>
                                                EEPROM ["product"] is ""<br>
                                                EEPROM ["mac-addr"] is
                                            "a0:36:fa:26:34:42"<br>
                                                EEPROM ["ip-addr"] is
                                            "192.168.10.3"<br>
                                                EEPROM ["subnet"] is
                                            "255.255.255.255"<br>
                                                EEPROM ["gateway"] is
                                            "255.255.255.255"<br>
                                                EEPROM ["gpsdo"] is
                                            "none"<br>
                                                EEPROM ["serial"] is
                                            "E4R14V2UN"<br>
                                                EEPROM ["name"] is ""<br>
                                            <br>
                                            Power-cycle the USRP device
                                            for the changes to take
                                            effect.<br>
                                            <br>
                                            Done
                                            <div
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-adL"><br>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                      <br>
                                      <div class="gmail_quote">
                                        <div dir="ltr"
                                          class="gmail_attr">On Wed, Jul
                                          17, 2019 at 3:19 PM Jason
                                          Matusiak &lt;<a
                                            moz-do-not-send="true"
                                            href="mailto:jason@gardettoengineering.com"
                                            target="_blank">jason@gardettoengineering.com</a>&gt;
                                          wrote:<br>
                                        </div>
                                        <blockquote class="gmail_quote"
                                          style="margin:0px 0px 0px
                                          0.8ex;border-left:1px solid
                                          rgb(204,204,204);padding-left:1ex">
                                          <div dir="ltr">
                                            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">You
                                              are right, the table of
                                              revisions was for the
                                              X-series</div>
                                            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                            </div>
                                            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">try
                                              running the command from
                                              your prefix:
                                              src/uhd/host/build/utils/usrp_burn_mb_eeprom --args="type=n200"
                                              --read-all</div>
                                            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                            </div>
                                            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">don't
                                              quote me on the type
                                              portion, I don't have a
                                              board in front of me to
                                              see if it is n200 or
                                              something else.  I
                                              //think// that will report
                                              the major and minor
                                              revision values (I am
                                              grasping at straws here,
                                              just trying to figure out
                                              what the differences might
                                              be).</div>
                                            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                            </div>
                                            <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">You
                                              are connecting the
                                              ethernet connections to
                                              the two devices through
                                              the exact same port on
                                              your PC?</div>
                                            <div
id="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478Signature">
                                              <div>
                                                <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                                </div>
                                                <hr
                                                  style="display:inline-block;width:98%">
                                                <div
id="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478divRplyFwdMsg"
                                                  dir="ltr"><font
                                                    style="font-size:11pt"
                                                    color="#000000"
                                                    face="Calibri,
                                                    sans-serif"><b>From:</b>
                                                    Sumit Kumar &lt;<a
                                                      moz-do-not-send="true"
href="mailto:cogwsn@gmail.com" target="_blank">cogwsn@gmail.com</a>&gt;<br>
                                                    <b>Sent:</b>
                                                    Wednesday, July 17,
                                                    2019 8:24 AM<br>
                                                    <b>To:</b> Jason
                                                    Matusiak &lt;<a
                                                      moz-do-not-send="true"
href="mailto:jason@gardettoengineering.com" target="_blank">jason@gardettoengineering.com</a>&gt;<br>
                                                    <b>Cc:</b> <a
                                                      moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>
                                                    &lt;<a
                                                      moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                                                    <b>Subject:</b> Re:
                                                    [USRP-users]
                                                    Sequence Errors N200</font>
                                                  <div> </div>
                                                </div>
                                                <div>
                                                  <div dir="ltr">The
                                                    sticker  for sbx
                                                    shows F33612 and
                                                    F33814. 
                                                    <div>How will this
                                                      help ? </div>
                                                    <div><br>
                                                    </div>
                                                  </div>
                                                  <br>
                                                  <div
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail_quote">
                                                    <div dir="ltr"
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail_attr">On
                                                      Wed, Jul 17, 2019
                                                      at 1:50 PM Jason
                                                      Matusiak &lt;<a
                                                        moz-do-not-send="true"
href="mailto:jason@gardettoengineering.com" target="_blank">jason@gardettoengineering.com</a>&gt;
                                                      wrote:<br>
                                                    </div>
                                                    <blockquote
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail_quote"
                                                      style="margin:0px
                                                      0px 0px
                                                      0.8ex;border-left:1px
                                                      solid
                                                      rgb(204,204,204);padding-left:1ex">
                                                      <div dir="ltr">
                                                        <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Sumit,</div>
                                                        <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                                        </div>
                                                        <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">OK,
                                                          the last idea
                                                          I have:</div>
                                                        <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                                        </div>
                                                        <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">There
                                                          is a sticker
                                                          on the back of
                                                          the N-series
                                                          devices it <em>usually</em> says
                                                          the version
                                                          there, but not
                                                          always.  This
                                                          has a little
                                                          info: <a
                                                          moz-do-not-send="true"
href="https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM"
                                                          rel="nofollow"
style="color:rgb(59,115,175)" target="_blank">https://kb.ettus.com/About_the_Motherboard_and_Daughtercard_EEPROM_on_USRP_Devices#N200.2F210_EEPROM</a><br>
                                                        </div>
                                                        <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                                        </div>
                                                        <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Do
                                                          they match?</div>
                                                        <div
id="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092Signature">
                                                          <div>
                                                          <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                                          </div>
                                                          <hr
                                                          style="display:inline-block;width:98%">
                                                          <div
id="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092divRplyFwdMsg"
                                                          dir="ltr"><font
style="font-size:11pt" color="#000000" face="Calibri, sans-serif"><b>From:</b>
                                                          Sumit Kumar
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:cogwsn@gmail.com" target="_blank">cogwsn@gmail.com</a>&gt;<br>
                                                          <b>Sent:</b>
                                                          Wednesday,
                                                          July 17, 2019
                                                          7:45 AM<br>
                                                          <b>To:</b>
                                                          Jason Matusiak
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:jason@gardettoengineering.com" target="_blank">jason@gardettoengineering.com</a>&gt;<br>
                                                          <b>Cc:</b> <a
moz-do-not-send="true" href="mailto:usrp-users@lists.ettus.com"
                                                          target="_blank">usrp-users@lists.ettus.com</a>
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                                                          <b>Subject:</b>
                                                          Re:
                                                          [USRP-users]
                                                          Sequence
                                                          Errors N200</font>
                                                          <div> </div>
                                                          </div>
                                                          <div>
                                                          <div dir="ltr">Hi
                                                          Jason,
                                                          <div><br>
                                                          <div>Yes they
                                                          are
                                                          consistent, I
                                                          mean the
                                                          output of
                                                          uhd_usrp_probe
                                                          for both N200
                                                          is exactly the
                                                          same (except
                                                          the ip, serial
                                                          and mac addr).</div>
                                                          <div>I do not
                                                          know where the
                                                          problem is!
                                                          Hardware or
                                                          software </div>
                                                          <div><br>
                                                          </div>
                                                          <div>Regards</div>
                                                          <div>Sumit  </div>
                                                          </div>
                                                          </div>
                                                          <br>
                                                          <div
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_quote">
                                                          <div dir="ltr"
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_attr">On
                                                          Wed, Jul 17,
                                                          2019 at 1:19
                                                          PM Jason
                                                          Matusiak &lt;<a
moz-do-not-send="true" href="mailto:jason@gardettoengineering.com"
                                                          target="_blank">jason@gardettoengineering.com</a>&gt;
                                                          wrote:<br>
                                                          </div>
                                                          <blockquote
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_quote"
                                                          style="margin:0px
                                                          0px 0px
                                                          0.8ex;border-left:1px
                                                          solid
                                                          rgb(204,204,204);padding-left:1ex">
                                                          <div dir="ltr">
                                                          <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">I
                                                          am not really
                                                          an N-series
                                                          guy, so this
                                                          probably won't
                                                          be helpful. 
                                                          Have you tried
                                                          doing a
                                                          uhd_usrp_probe
                                                          on both
                                                          devices and
                                                          seen that the
                                                          responses are
                                                          consistent?</div>
                                                          <div
id="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461Signature">
                                                          <div>
                                                          <div
id="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461appendonsend"></div>
                                                          <div
style="font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
                                                          </div>
                                                          <hr
                                                          style="display:inline-block;width:98%">
                                                          <div
id="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461divRplyFwdMsg"
                                                          dir="ltr">
                                                          <font
                                                          style="font-size:11pt"
color="#000000" face="Calibri, sans-serif"><b>From:</b> USRP-users &lt;<a
moz-do-not-send="true" href="mailto:usrp-users-bounces@lists.ettus.com"
target="_blank">usrp-users-bounces@lists.ettus.com</a>&gt; on behalf of
                                                          Sumit Kumar
                                                          via USRP-users
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                                                          <b>Sent:</b>
                                                          Wednesday,
                                                          July 17, 2019
                                                          7:15 AM<br>
                                                          <b>To:</b> <a
moz-do-not-send="true" href="mailto:usrp-users@lists.ettus.com"
                                                          target="_blank">usrp-users@lists.ettus.com</a>
                                                          &lt;<a
                                                          moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;<br>
                                                          <b>Subject:</b>
                                                          [USRP-users]
                                                          Sequence
                                                          Errors N200</font>
                                                          <div> </div>
                                                          </div>
                                                          <div>
                                                          <div dir="ltr">Hi, 
                                                          <div>I am
                                                          trying
                                                          transmit using
                                                          Ettus N200
                                                          (call it A)
                                                          but getting
                                                          this error
                                                          message on the
                                                          console </div>
                                                          <div><br>
                                                          </div>
                                                          <div>SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSUSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS....................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................................<br>
                                                          </div>
                                                          <div><br>
                                                          </div>
                                                          <div>I looked
                                                          for it on
                                                          google and
                                                          found these
                                                          links </div>
                                                          <div><a
                                                          moz-do-not-send="true"
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.html"
target="_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2014-May/037495.html</a><br>
                                                          </div>
                                                          <div><a
                                                          moz-do-not-send="true"
href="http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/032838.html"
target="_blank">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2012-July/032838.html</a><br>
                                                          </div>
                                                          <div><br>
                                                          </div>
                                                          <div>Both the
                                                          links 
                                                          suggested
                                                          problem
                                                          related to the
                                                          gigabit port.
                                                          Then I
                                                          connected
                                                          another USRP
                                                          N200 (call it
                                                          B) to the same
                                                          laptop and
                                                          tried
                                                          transmitting
                                                          using that as
                                                          there were no
                                                          such sequence
                                                          error
                                                          messages.</div>
                                                          <div><br>
                                                          </div>
                                                          <div>This
                                                          makes me
                                                          believe there
                                                          is some
                                                          problem with
                                                          the first
                                                          USRP, i.e.,
                                                          A. <br>
                                                          </div>
                                                          <div><br>
                                                          </div>
                                                          <div>Further I
                                                          tried with
                                                          different
                                                          versions of
                                                          UHD 3.11, UHD
                                                          3.15.. but its
                                                          the same. </div>
                                                          <div><br>
                                                          </div>
                                                          <div>Receive
                                                          is good only
                                                          transmit is
                                                          throwing
                                                          error. </div>
                                                          <div><br>
                                                          </div>
                                                          <div>Not only
                                                          with UHD, even
                                                          in labview,
                                                          when I
                                                          transmit, I
                                                          see nothing
                                                          coming out
                                                          from the N200
                                                          (A). </div>
                                                          <div><br>
                                                          </div>
                                                          <div>I am
                                                          using SBXv2
                                                          daughter
                                                          board. </div>
                                                          <div><br>
                                                          </div>
                                                          <div>Any clue!</div>
                                                          <div><br>
                                                          </div>
                                                          <div>Regards</div>
                                                          <div>-- <br>
                                                          <div dir="ltr"
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail-m_9014729813065413461x_gmail_signature">
                                                          <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr"><span
style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
                                                          style="color:rgb(136,136,136);font-size:12.8px">
                                                          <div
                                                          style="color:rgb(136,136,136);font-size:12.8px">Sumit
                                                          kumar<br>
                                                          Postdoc</div>
                                                          <div
                                                          style="color:rgb(136,136,136);font-size:12.8px">SnT,
                                                          Luxembourg</div>
                                                          <div
                                                          style="color:rgb(136,136,136);font-size:12.8px"><br>
                                                          </div>
                                                          <br>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </blockquote>
                                                          </div>
                                                          <br
                                                          clear="all">
                                                          <div><br>
                                                          </div>
                                                          -- <br>
                                                          <div dir="ltr"
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail-m_6506407344245079092x_gmail_signature">
                                                          <div dir="ltr">
                                                          <div>
                                                          <div dir="ltr"><span
style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
                                                          style="color:rgb(136,136,136);font-size:12.8px">
                                                          <div
                                                          style="color:rgb(136,136,136);font-size:12.8px">Sumit
                                                          kumar<br>
                                                          Postdoc</div>
                                                          <div
                                                          style="color:rgb(136,136,136);font-size:12.8px">SnT,
                                                          Luxembourg</div>
                                                          <div
                                                          style="color:rgb(136,136,136);font-size:12.8px"><br>
                                                          </div>
                                                          <br>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </blockquote>
                                                  </div>
                                                  <br clear="all">
                                                  <div><br>
                                                  </div>
                                                  -- <br>
                                                  <div dir="ltr"
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail-m_3403553355508831478x_gmail_signature">
                                                    <div dir="ltr">
                                                      <div>
                                                        <div dir="ltr"><span
style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
                                                          style="color:rgb(136,136,136);font-size:12.8px">
                                                          <div
                                                          style="color:rgb(136,136,136);font-size:12.8px">Sumit
                                                          kumar<br>
                                                          Postdoc</div>
                                                          <div
                                                          style="color:rgb(136,136,136);font-size:12.8px">SnT,
                                                          Luxembourg</div>
                                                          <div
                                                          style="color:rgb(136,136,136);font-size:12.8px"><br>
                                                          </div>
                                                          <br>
                                                        </div>
                                                      </div>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                            </div>
                                          </div>
                                        </blockquote>
                                      </div>
                                      <br clear="all">
                                      <div><br>
                                      </div>
                                      -- <br>
                                      <div dir="ltr"
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail-m_-8630331225465229725gmail-m_-5090455826936873702gmail_signature">
                                        <div dir="ltr">
                                          <div>
                                            <div dir="ltr"><span
                                                style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
style="color:rgb(136,136,136);font-size:12.8px">
                                              <div
                                                style="color:rgb(136,136,136);font-size:12.8px">Sumit
                                                kumar<br>
                                                Postdoc</div>
                                              <div
                                                style="color:rgb(136,136,136);font-size:12.8px">SnT,
                                                Luxembourg</div>
                                              <div
                                                style="color:rgb(136,136,136);font-size:12.8px"><br>
                                              </div>
                                              <br>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
_______________________________________________<br>
                                      USRP-users mailing list<br>
                                      <a moz-do-not-send="true"
                                        href="mailto:USRP-users@lists.ettus.com"
                                        target="_blank">USRP-users@lists.ettus.com</a><br>
                                      <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                        rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                                    </blockquote>
                                  </div>
                                </blockquote>
                              </div>
                              <br clear="all">
                              <div><br>
                              </div>
                              -- <br>
                              <div dir="ltr"
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail-m_-2723275523225085977gmail-m_-6449813456354474750gmail-m_-5406334666104058457gmail_signature">
                                <div dir="ltr">
                                  <div>
                                    <div dir="ltr"><span
                                        style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
style="color:rgb(136,136,136);font-size:12.8px">
                                      <div
                                        style="color:rgb(136,136,136);font-size:12.8px">Sumit
                                        kumar<br>
                                        Postdoc</div>
                                      <div
                                        style="color:rgb(136,136,136);font-size:12.8px">SnT,
                                        Luxembourg</div>
                                      <div
                                        style="color:rgb(136,136,136);font-size:12.8px"><br>
                                      </div>
                                      <br>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </blockquote>
                          </div>
                        </blockquote>
                      </div>
                      <br clear="all">
                      <div><br>
                      </div>
                      -- <br>
                      <div dir="ltr"
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail-m_-7763822819519994741gmail-m_8077291001688814057gmail_signature">
                        <div dir="ltr">
                          <div>
                            <div dir="ltr"><span
                                style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
style="color:rgb(136,136,136);font-size:12.8px">
                              <div
                                style="color:rgb(136,136,136);font-size:12.8px">Sumit
                                kumar<br>
                                Postdoc</div>
                              <div
                                style="color:rgb(136,136,136);font-size:12.8px">SnT,
                                Luxembourg</div>
                              <div
                                style="color:rgb(136,136,136);font-size:12.8px"><br>
                              </div>
                              <br>
                            </div>
                          </div>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                </blockquote>
              </div>
              <br clear="all">
              <div><br>
              </div>
              -- <br>
              <div dir="ltr"
class="gmail-m_1833416351567459632gmail-m_8429522937710005813gmail_signature">
                <div dir="ltr">
                  <div>
                    <div dir="ltr"><span
                        style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
                        style="color:rgb(136,136,136);font-size:12.8px">
                      <div
                        style="color:rgb(136,136,136);font-size:12.8px">Sumit
                        kumar<br>
                        Postdoc</div>
                      <div
                        style="color:rgb(136,136,136);font-size:12.8px">SnT,
                        Luxembourg</div>
                      <div
                        style="color:rgb(136,136,136);font-size:12.8px"><br>
                      </div>
                      <br>
                    </div>
                  </div>
                </div>
              </div>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br clear="all">
      <div><br>
      </div>
      -- <br>
      <div dir="ltr" class="gmail_signature">
        <div dir="ltr">
          <div>
            <div dir="ltr"><span
                style="color:rgb(136,136,136);font-size:12.8px">-- </span><br
                style="color:rgb(136,136,136);font-size:12.8px">
              <div style="color:rgb(136,136,136);font-size:12.8px">Sumit
                kumar<br>
                Postdoc</div>
              <div style="color:rgb(136,136,136);font-size:12.8px">SnT,
                Luxembourg</div>
              <div style="color:rgb(136,136,136);font-size:12.8px"><br>
              </div>
              <br>
            </div>
          </div>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------090408000908070200030805--


--===============0803730962415257532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0803730962415257532==--


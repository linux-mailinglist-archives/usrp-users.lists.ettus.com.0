Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D0B5FCE3
	for <lists+usrp-users@lfdr.de>; Thu,  4 Jul 2019 20:28:24 +0200 (CEST)
Received: from [::1] (port=38322 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hj6Sw-0002e5-PJ; Thu, 04 Jul 2019 14:28:18 -0400
Received: from sonic309-19.consmr.mail.bf2.yahoo.com ([74.6.129.193]:40450)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hj6St-0002Xl-90
 for usrp-users@lists.ettus.com; Thu, 04 Jul 2019 14:28:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1562264854; bh=zrO7aw8Wn/bh/hwYNQ+47mgCD1qWeLwMjo3t7MbjQ/E=;
 h=Subject:From:To:Date:From:Subject;
 b=uWMOOGq9q3ZRrcqZg2y4efb69KHprgKYM6AT5xSMX/TzWYj7zJP5gEcleO4vkF2hKR0QNC2fIKJF+L/p41ts3xoF1y8qPtXOE/b10i1pTDlkvOTL3Uz27JxJUD4V08y0GyB4tvTdOSid3meFvDH8lDMaOKziWc6g4a1+8JiuHsXTx//k/HaMCiwk/H5cQn6cLND4boCnebdzpkP0n4DDJALaIkKr53Q6yHu+Xku3XRWiCBZzEcL/+FrUFFyKKCFnL5qeCtWnpfLHppyQQoP6tEBxMy4cuR/4ISh53ZN8eZowzGio4PlA4DUPlvZBOF6+izC9ioo4ePuqa1cErWg36w==
X-YMail-OSG: RpYvEW0VM1kBUCO6unLDIObAoREGEAK3qx3jZ2toS7Mkq.rprsc.D0RNOWA.Odo
 FCo526H8OhO8PsshlVLYbYTmCIO6efc1trVrKp8eCPIAko3eEG.TSB8JSQImIyDOLW4or2GLfLqD
 HPIgF8cr7RX6EgeQwefs3z3pB0fGcB12wkk8drKUn7rFR.M3BTfO2Pmncev3.EUzq2tpXl75GsrK
 LIuyAPtmG0e4rRCLNmiE8G1fINgDPecvJ51G723DCsVIh_.JcDQ25FlX6qQfGSm1wEO1k8_9bFHa
 DJ7GWNjCMu6RJ0eieiPnzPtcbE0AiE5bC8uEunBe22PEdd2_JDpHsNbWQPS0juHRCKZ7hsGr8n2N
 Np7aIKs1YC7qDJgf9LtnwUjKSAatnt30m.vngS4E_MyCKKO7uATQIOwa0aGfhXp6u0F2pPl6uXjA
 HCp9thOSsLjZr1lVw0Ik.I7IQtl2LbAsxfcwR0PazXS081bw.bRnOOw_d5EYksQtAmJS6LHiLIud
 WzmuO2ICh9CXrAeVyUXzolvQTMSzQs5ILjnMXHTMLvwV4_pnW5pWnFuKVQuaegsJsyQDDWjRDOU0
 .cxUMrxw.xGG4qHT2c4lYYHhjAS0q1JH75UfWGbwnsg_0P6sJ1877Z8rTpjL5bv1ClJrndYI6cWh
 2pe8foJgiGMqJCFgi6P0pO5n1Z2wA7e4mRy4pccWNQrpWwRdbY7DoBT7txjg.Vrx1aWB5htehRlX
 VfKsDqRWBf9.AjQtzOsQ_On8N5d2tUrwwXME5HODP4jkp7voodRjiVj83tJ1.sitGrxjtVNhKHXw
 G.BkiFFjXutVPb0OUirK9jaeExlqllBli_15Nrf8fbufhPqmWEzZ0q9ot78lY.8fAraFS7AgsE0o
 3W8RAjpnvy2DtFlSOCStr.gmb1h8deyXsQH4LIOxk5uJbyfRbbc0.6.MgCJbJ9TfN3fLe6HBsB5G
 j.tDRTRddG.HlaMT7XAsCMtd5rF9FNJLReazYfxGKi1BCnIm8sSRcq2exCTmoAhy15IxYiiIgQuN
 ADpWjZoVN3lae1boyEq.I3f9E1Mfaoenh2kaiQnUZBaysY8vV9llqXfmdEl.D64UIVaphKvYMYMz
 .FxZkgFkhgUeg3wceV7yX5ZrIeul_MsQgeV36P5FA9D3N7NvTQQIVy3fPlEMYjcNwYw72FC_Ja2_
 ybhqj9EhikxznWYBsNps0E5GsKdhk8GaOoymEA_7NyWPYP2SzWTL3fW7ayJDxvg--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic309.consmr.mail.bf2.yahoo.com with HTTP; Thu, 4 Jul 2019 18:27:34 +0000
Received: by smtp419.mail.bf1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 3ceb6b357ef3587af2b3a1a138abe708; 
 Thu, 04 Jul 2019 18:27:30 +0000 (UTC)
Message-ID: <9386c5638ac8cad2e327dcf47ea7dfbb6af57f7c.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Thu, 04 Jul 2019 18:27:29 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: [USRP-users] E310 v3.15.0.0 pre-release rfnoc fpga images build but
 modules not recognized
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

I'm using the new sdk and sd image from 
http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-e310_prerelease/
and have build and run the base and rfnoc images from .../src/uhd/fpga-
src/usrp3/top/e31x by following the old tutorial on kb.ettus with just
a little updating. 

it mostly seems to work for the images made with the
...top/e31x/makefile. I built the base regular image with a DDC and DCU
and the base rfnoc image with win, fft, fosfor, and fir blocks using
the make command in the .../top/e31x directory
I then copy the .../src/uhd/fpga-src/usrp3/top/e31x/build directory to
the sshfs folder visible to the e310 and load the new image the new MPM
way using

uhd_image_loader --args=type=e3xx --fpga-
path=./usrp_e310_sg1_rfnoc_fpga.bit 

It mostly works, except I have to rename or link the .dts file to make
its base name match that of the .bit file. I can alternate between the
two fpga images and they seem to behave as expected. For example, with
the rfnoc image that has no DDC an attempt to set a rate is ignored
whereas with the base image that has a DDC it is accepted.

The problem is when I try to build a custom image using
../src/uhd/fpga-src/usrp3/tools/scripts/uhd_image_builder.py 

I had to make a minor change in the file to get it to run:

    build_dir = {
        'x300':'x300',
        'x310':'x300',
        'e300':'e300',

#        'e310':'e300',
        'e310':'e31x',

        'e320':'e320',
        'n300':'n3xx',
        'n310':'n3xx'

The issue is that these images seem to build and install but
uhd_usrp_probe always reports the last block configuration that I've
loaded from on of the two base images. I checked and it really does
seem to be loading the images into /lib/firmware it's just that the
blocks in the new image aren't reported correctly. The real clue that
something is wrong comes by running 

...host/build/examples/rfnoc_rx_to_file --rate=5e6

Creating the USRP device with: ...
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
UHD_3.15.0.git-0-g6563c537
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
alse
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
[INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=127.0.0.1,product=e310_sg1'.
[ERROR] [UHD] Exception caught in safe-call.
  in ctrl_iface_impl<_endianness>::~ctrl_iface_impl() [with
uhd::endianness_t _endianness = (uhd::endianness_t)1]
  at /usr/src/debug/uhd/3.15.0.0-
e310_prerelease/git/host/lib/rfnoc/ctrl_iface.cpp:52
this->send_cmd_pkt(0, 0, true); -> EnvironmentError: IOError: Block
ctrl (CE_00_Port_10) no response packet - AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness = (uhd::endianness_t)1; uint64_t =
long long unsigned int]
  at /usr/src/debug/uhd/3.15.0.0-
e310_prerelease/git/host/lib/rfnoc/ctrl_iface.cpp:142

[ERROR] [MPMD] Failure during block enumeration: EnvironmentError:
IOError: Block ctrl (CE_00_Port_10) no response packet -
AssertionError: bool(buff)
  in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double)
[with uhd::endianness_t _endianness = (uhd::endianness_t)1; uint64_t =
long long unsigned int]
  at /usr/src/debug/uhd/3.15.0.0-
e310_prerelease/git/host/lib/rfnoc/ctrl_iface.cpp:142

Error: RuntimeError: Failed to run enumerate_rfnoc_blocks()


I've tried to learn enough about docker to build the latest e310 sd
card file system but it's a bit of a learning curve and my brain is
full at the moment. There seem to have been some architecture changes
since the README at 
https://github.com/EttusResearch/ettus-docker/blob/master/oe-build/README.md
was written and an attempt to point to 
https://github.com/EttusResearch/meta-ettus/tree/master/meta-mender-e31x
didn't get very far.

I'd really like to get gnuradio working on the e310 and got as far as
cross-compiling cppunit but then it started asking for numpy, which
started asking for cython... 

Anyway, any pointers to getting the fpga images properly registered
would be appreciated!


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

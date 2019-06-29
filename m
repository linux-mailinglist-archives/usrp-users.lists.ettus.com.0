Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 698095A7FF
	for <lists+usrp-users@lfdr.de>; Sat, 29 Jun 2019 03:20:36 +0200 (CEST)
Received: from [::1] (port=46910 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hh22a-0001KL-8V; Fri, 28 Jun 2019 21:20:32 -0400
Received: from mail-ua1-f44.google.com ([209.85.222.44]:34058)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <ejkreinar@gmail.com>) id 1hh22V-0001Bw-Lx
 for usrp-users@lists.ettus.com; Fri, 28 Jun 2019 21:20:27 -0400
Received: by mail-ua1-f44.google.com with SMTP id c4so2895584uad.1
 for <usrp-users@lists.ettus.com>; Fri, 28 Jun 2019 18:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UpwKYE/ge26xOlyVmu74VpHjUQk2yYVdzMI5KEgJAJU=;
 b=OKrr0y2PHHML9Iy+WEli7zjrK7NRXyDDLwpa0Yxw5zdYqS7myCsMeZEYKuoRyxMerH
 9mIdXqpcgZbjlcoO1oryl2v2U+P5B+LFHhPFwVtY7ruvNFykJc/cviLTmI54iPZHBDeH
 Rm1a8i/176h8PJvMCK9O/EN2mJ2cleZp6r65Z0uBXUjhMCklkxHpwk/QXsGa30jy9Bum
 4fAJg04bmxaLeZY/AJaD9RiGfXSSLqoIj3bT6PCgh8Ckmji2jaKo8pR16Qm6h2hat9Ui
 IURVtZtxPy8IemZPjsEeVGOx6gv19cKkNvQB0SnQ+0IvNZc7racccwduP6/mOvVwW6zd
 D3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UpwKYE/ge26xOlyVmu74VpHjUQk2yYVdzMI5KEgJAJU=;
 b=unCa8f50vvtG6GNIr/7RhKfQthdpyF/mTZ5xq/4z4ISA/Mtx0NNMS7+UUgcgGQOpaB
 i7yzhhBqj1iRVRCX7xyQg9Dz2F2BYw2lsq4JNPr4TJo1qrQJfJwpvFnXc37NhgdMKK3D
 4vW2ydklEsJpooLmHO8r0KxCc5yJEj13YFDtN7xk65QbKBkrlb+NPbpaXc9Sp9WxHWML
 frSL7tzHzmMYqWHzwyoryl72f9HARwWNxNO/bDSMnWX3WIRcFMSA1BRBsZsWS8vVHuRT
 M+kfGaaO5z6wv0Rwn5cC6Tyy0VNBOkv0/htoGtA8HXFSCNivZ3htkmuMTBNSGLA0Vzis
 eAIA==
X-Gm-Message-State: APjAAAWGtA72jK82X4JVqsOynznEaToLeKLtstDViNrk6ApI6p0AA3W/
 g/0FBwlHl5F5f+wB/DxTgjovOHwOmx89oyTFlp3sWw==
X-Google-Smtp-Source: APXvYqyOH1LhpGWPd1XEnMda53vnK/71vtxO/aMnc2zEykiQCQlmJI4Y4DMXDQpxkV0MoCOReXvs900zmKJiJ71eFjk=
X-Received: by 2002:ab0:7457:: with SMTP id p23mr7575253uaq.138.1561771186906; 
 Fri, 28 Jun 2019 18:19:46 -0700 (PDT)
MIME-Version: 1.0
References: <1bb09baf0472e7f3f2dcf70dc366ed5be2e91429.camel@sbcglobal.net>
 <CAN1jYK1QWrtZdp+A0iabx-7UZ7biAvW4=x=aKhV-e5d2Dw4A4A@mail.gmail.com>
In-Reply-To: <CAN1jYK1QWrtZdp+A0iabx-7UZ7biAvW4=x=aKhV-e5d2Dw4A4A@mail.gmail.com>
Date: Fri, 28 Jun 2019 21:19:35 -0400
Message-ID: <CADRnH21miGPQHqo+as3bBXY_EAg9vXs8pKO3hMfbzt68exbv0w@mail.gmail.com>
To: Brent Stapleton <brent.stapleton@ettus.com>
Subject: Re: [USRP-users] E310 v3.15.0.0 pre-release
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
From: EJ Kreinar via USRP-users <usrp-users@lists.ettus.com>
Reply-To: EJ Kreinar <ejkreinar@gmail.com>
Cc: "d.des" <d.des@sbcglobal.net>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2287594000204487023=="
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

--===============2287594000204487023==
Content-Type: multipart/alternative; boundary="000000000000d0ec2a058c6c30a9"

--000000000000d0ec2a058c6c30a9
Content-Type: text/plain; charset="UTF-8"

Hi Brent,

What's the ballpark programming time using uhd_image_loader on the e310?

I currently swap in/out fpga images using the args parameter on the e310
since the fpga size is pretty small. In some cases the application
introspects the required fpga resources, and dynamically chooses the
correct bitstream at runtime... Just wondering if there's a way I can use a
similar workflow with uhd_image_loader on the MPM architecture...

EJ

On Fri, Jun 28, 2019, 9:07 PM Brent Stapleton via USRP-users <
usrp-users@lists.ettus.com> wrote:

> The 3.15 pre-release updates the E310 to use MPM (as you know), and brings
> it more in line with other MPM devices. You'll have to use the
> `uhd_image_loader` to update the FPGA image; device args are not used by
> the UHD session to load the FPGA image. The E310 will still load the FPGA
> image at the beginning of the session (and load an idle image when there is
> no active UHD session), but that image is not determined by the session.
> You shouldn't need to touch it manually (we recommend using
> uhd_image_loader), but the image is stored on the filesystem at
> /lib/firmware/e310_sg1.bin.
>
> Brent
>
> On Fri, Jun 28, 2019 at 5:27 PM d.des via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Marcus Leach wrote:
>> >What happens if you specify an fpga image that doesn't actually
>> >exist?
>> >Does it error out?
>>
>>
>> It ignores the bad file, even though the args seem to be making it
>> pretty far into the process. I still can't find where uhd loads the
>> .bit file.
>>
>> I'm using the version on the referenced SD image from Ettus's site, not
>> bit-baking the latest from meta-ettus.
>>
>> Here's the result for the pre-compiled uhd that was on the SD image at
>> debug log level 0: The results are similar on
>>
>> root@ni-e31x-309C7C2F:~# uhd_usrp_probe --
>> args="fpga=filethatdoesntexist"
>> [INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;
>> UHD_3.15.0.git-0-g6563c537
>> [DEBUG] [MPMD] Discovering MPM devices on port 49600
>> [DEBUG] [MPMD] Discovering MPM devices on port 49600
>> [TRACE] [UDP] Creating udp transport for 10.1.1.255 49600
>> [TRACE] [UDP] Creating udp transport for 127.255.255.255 49600
>> [TRACE] [UDP] Creating udp transport for 10.1.1.255 50000
>> [TRACE] [UHD] Device hash: 2130689100
>> [DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
>> [DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
>> [DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
>> [DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
>> [DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
>> [DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
>> alse,fpga=filethatdoesntexist
>> [DEBUG] [MPMD] Claiming mboard 0
>> [DEBUG] [MPMD] Device args:
>> `mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=
>> False,fpga=filethatdoesntexist'. RPC address: 127.0.0.1
>> [TRACE] [MPMD] Initializing mboard, connecting to RPC server address:
>> 127.0.0.1 mboard args:
>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
>> alse,fpga=filethatdoesntexist number of crossbars: 1
>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>> [TRACE] [MPMD] MPM reports device info:
>> claimed=True,connection=local,description=E300-Series
>> Device,eeprom_version=,fpga=,fpga_version=1.0,fpga_version_hash=f52a643
>> .clean,mpm_version=1.2,name=ni-e31x-
>> 309C7C2F,pid=30674,product=e310_sg1,rev=4,rpc_connection=local,serial=3
>> 09C7C2,type=e3xx
>> [TRACE] [MPMD] MPM reports dboard info for slot 0:
>> eeprom_version=n/a,pid=272,rev=3,serial=309991A
>> [TRACE] [MPMD] Checking MPM compat number. Expected: 1.2 Actual: 1.2
>> [DEBUG] [MPMD] Initializing mboard 0
>> [DEBUG] [MPMD] Found 3 motherboard sensors.
>> [DEBUG] [MPMD] Found 2 updateable motherboard components.
>> [TRACE] [MPMD] Enumerating RFNoC blocks for xbar 0. Total blocks: 3
>> Base port: 1 Local address: 2
>> [TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:10
>> User-defined xport args:
>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
>> alse,fpga=filethatdoesntexist
>> [TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
>> [TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
>> [TRACE] [MPMD] Making (muxed) stream with num 0
>> [TRACE] [MPMD] xport info: send_sid==00:00>02:10 recv_sid==02:10>00:00
>> endianness==LE recv_buff_size==10880 send_buff_size==10880
>> [DEBUG] [DEVICE3] Port 0x10: Found NoC-Block with ID 12AD100000003310.
>> [DEBUG] [RFNOC] Reading XML file
>> /usr/share/uhd/rfnoc/blocks/radio_e31x.xml for NOC ID
>> 0x12AD100000003310
>> [TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:11
>> User-defined xport args:
>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
>> alse,fpga=filethatdoesntexist
>> [TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
>> [TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
>> [TRACE] [MPMD] Making (muxed) stream with num 1
>> [TRACE] [MPMD] xport info: send_sid==00:01>02:11 recv_sid==02:11>00:01
>> endianness==LE recv_buff_size==10880 send_buff_size==10880
>> [TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
>> [DEBUG] [RFNOC] Reading XML file
>> /usr/share/uhd/rfnoc/blocks/radio_e31x.xml for NOC ID
>> 0x12AD100000003310
>> [TRACE] [RFNOC] [RFNoC Factory] Using controller key 'E31XRadio' and
>> block name 'Radio'
>> [DEBUG] [RFNOC] Reading XML file
>> /usr/share/uhd/rfnoc/blocks/radio_e31x.xml for NOC ID
>> 0x12AD100000003310
>> [INFO] [0/Radio_0] Initializing block control (NOC ID:
>> 0x12AD100000003310)
>> [DEBUG] [0/Radio_0] Checking compat number for FPGA component
>> `noc_shell': Expecting 5.1, actual: 5.1.
>> [TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/0:
>> type = 'sc16' pkt_size = '0' vlen = '0'
>> [TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/1:
>> type = 'sc16' pkt_size = '0' vlen = '0'
>> [TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/0:
>> type = 'sc16' pkt_size = '0' vlen = '0'
>> [TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/1:
>> type = 'sc16' pkt_size = '0' vlen = '0'
>> [DEBUG] [0/Radio_0] Register loopback test passed
>> [DEBUG] [0/Radio_0] Register loopback test passed
>> [TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Requested spp: 508
>> [TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Setting spp to: 508
>> [DEBUG] [0/Radio_0] Setting default spp to 2044
>> [TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Requested spp: 2044
>> [TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Setting spp to: 2044
>> [TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:20
>> User-defined xport args:
>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
>> alse,fpga=filethatdoesntexist
>> [TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
>> [TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
>> [TRACE] [MPMD] Making (muxed) stream with num 2
>> [TRACE] [MPMD] xport info: send_sid==00:02>02:20 recv_sid==02:20>00:02
>> endianness==LE recv_buff_size==10880 send_buff_size==10880
>> [DEBUG] [DEVICE3] Port 0x20: Found NoC-Block with ID DDC0000000000000.
>> [DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/ddc.xml
>> for NOC ID 0xDDC0000000000000
>> [TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:21
>> User-defined xport args:
>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
>> alse,fpga=filethatdoesntexist
>> [TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
>> [TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
>> [TRACE] [MPMD] Making (muxed) stream with num 3
>> [TRACE] [MPMD] xport info: send_sid==00:03>02:21 recv_sid==02:21>00:03
>> endianness==LE recv_buff_size==10880 send_buff_size==10880
>> [TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
>> [DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/ddc.xml
>> for NOC ID 0xDDC0000000000000
>> [TRACE] [RFNOC] [RFNoC Factory] Using controller key 'DDC' and block
>> name 'DDC'
>> [DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/ddc.xml
>> for NOC ID 0xDDC0000000000000
>> [INFO] [0/DDC_0] Initializing block control (NOC ID:
>> 0xDDC0000000000000)
>> [DEBUG] [0/DDC_0] Checking compat number for FPGA component
>> `noc_shell': Expecting 5.1, actual: 5.1.
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `fpga=filethatdoesntexist,mgmt_addr=127.0.0.1,product=e310_sg1'.
>> [TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/0: type
>> = 'sc16' pkt_size = '0' vlen = '0'
>> [TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/1: type
>> = 'sc16' pkt_size = '0' vlen = '0'
>> [TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/0:
>> type = 'sc16' pkt_size = '0' vlen = '0'
>> [TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/1:
>> type = 'sc16' pkt_size = '0' vlen = '0'
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($input_rate, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($output_rate, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($fullscale, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($input_rate, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($output_rate, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($fullscale, 0.0)
>> [DEBUG] [0/DDC_0] Loading DDC with 1 halfbands and max CIC decimation
>> 16
>> [DEBUG] [DDC] Checking compat number for FPGA component `DDC':
>> Expecting 2.0, actual: 2.0.
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($output_rate, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($output_rate, 0.0)
>> [TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:30
>> User-defined xport args:
>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
>> alse,fpga=filethatdoesntexist
>>
>> ---note: args=fpga= points to non-existant files, and there are no .bit
>> files anywhere on the sd card
>>
>> [TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
>> [TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
>> [TRACE] [MPMD] Making (muxed) stream with num 4
>> [TRACE] [MPMD] xport info: send_sid==00:04>02:30 recv_sid==02:30>00:04
>> endianness==LE recv_buff_size==10880 send_buff_size==10880
>> [DEBUG] [DEVICE3] Port 0x30: Found NoC-Block with ID D0C0000000000002.
>> [DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/duc.xml
>> for NOC ID 0xD0C0000000000002
>> [TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00>02:31
>> User-defined xport args:
>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
>> alse,fpga=filethatdoesntexist
>> [TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL
>> [TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).
>> [TRACE] [MPMD] Making (muxed) stream with num 5
>> [TRACE] [MPMD] xport info: send_sid==00:05>02:31 recv_sid==02:31>00:05
>> endianness==LE recv_buff_size==10880 send_buff_size==10880
>> [TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()
>> [DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/duc.xml
>> for NOC ID 0xD0C0000000000002
>> [TRACE] [RFNOC] [RFNoC Factory] Using controller key 'DUC' and block
>> name 'DUC'
>> [DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/duc.xml
>> for NOC ID 0xD0C0000000000002
>> [INFO] [0/DUC_0] Initializing block control (NOC ID:
>> 0xD0C0000000000002)
>> [DEBUG] [0/DUC_0] Checking compat number for FPGA component
>> `noc_shell': Expecting 5.1, actual: 5.1.
>> [TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/in/0: type
>> = 'sc16' pkt_size = '0' vlen = '0'
>> [TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/in/1: type
>> = 'sc16' pkt_size = '0' vlen = '0'
>> [TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/out/0:
>> type = 'sc16' pkt_size = '0' vlen = '0'
>> [TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/out/1:
>> type = 'sc16' pkt_size = '0' vlen = '0'
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($input_rate, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($output_rate, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($fullscale, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($input_rate, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($output_rate, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($fullscale, 0.0)
>> [DEBUG] [0/DUC_0] Loading DUC with 1 halfbands and max CIC
>> interpolation 8
>> [DEBUG] [DUC] Checking compat number for FPGA component `DUC':
>> Expecting 2.0, actual: 2.0.
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($input_rate, 0.0)
>> [TRACE] [RFNOC] [NocScript] Executing and asserting code:
>> GE($input_rate, 0.0)
>> [DEBUG] [MPMD] Adding RPC access to block: 0/Radio_0 Block args:
>> mgmt_addr=127.0.0.1,type=e3xx,product=e310_sg1,serial=309C7C2,claimed=F
>> alse,fpga=filethatdoesntexist
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [INFO] [0/Radio_0] RX freq = 2.4e+09
>> [INFO] [0/Radio_0] RX band = 6
>> [INFO] [0/Radio_0] RX SW1 = 5
>> [INFO] [0/Radio_0] RX SWC = 0
>> [INFO] [0/Radio_0] RX SWB = 1
>> [INFO] [0/Radio_0] RX VCRX_SW = 1
>> [INFO] [0/Radio_0] RX VCTXRX_SW = 0
>> [DEBUG] [0/Radio_0] Master Clock Rate is: 16 MHz.
>> [DEBUG] [0/Radio_0] Asking for clock rate 16 MHz
>>
>> [DEBUG] [0/Radio_0] Actual clock rate 16 MHz
>>
>> [DEBUG] [CORES] Performing timer loopback test...
>> [DEBUG] [CORES] Timer loopback test passed.
>> [DEBUG] [0/Radio_0] Asking for clock rate 30.72 MHz
>>
>> [DEBUG] [0/Radio_0] Actual clock rate 30.72 MHz
>>
>> [DEBUG] [CORES] Performing timer loopback test...
>> [DEBUG] [CORES] Timer loopback test passed.
>> [INFO] [0/Radio_0] Performing CODEC loopback test...
>> [INFO] [0/Radio_0] CODEC loopback test passed
>> [DEBUG] [0/Radio_0] Asking for clock rate 16 MHz
>>
>> [DEBUG] [0/Radio_0] Actual clock rate 16 MHz
>>
>> [DEBUG] [CORES] Performing timer loopback test...
>> [DEBUG] [CORES] Timer loopback test passed.
>> [DEBUG] [0/Radio_0] Asking for clock rate 30.72 MHz
>>
>> [DEBUG] [0/Radio_0] Actual clock rate 30.72 MHz
>>
>> [DEBUG] [CORES] Performing timer loopback test...
>> [DEBUG] [CORES] Timer loopback test passed.
>> [INFO] [0/Radio_0] Performing CODEC loopback test...
>> [INFO] [0/Radio_0] CODEC loopback test passed
>> [DEBUG] [0/Radio_0] Asking for clock rate 16 MHz
>>
>> [DEBUG] [0/Radio_0] Actual clock rate 16 MHz
>>
>> [DEBUG] [CORES] Performing timer loopback test...
>> [DEBUG] [CORES] Timer loopback test passed.
>>   _____________________________________________________
>>  /
>> |       Device: E300-Series Device
>> |     _____________________________________________________
>> |    /
>> |   |       Mboard: ni-e31x-309C7C2F
>> |   |   mpm_version: 3.15.0.git-g6563c537
>> |   |   pid: 30674
>> |   |   product: e310_sg1
>> |   |   rev: 4
>> |   |   rpc_connection: local
>> |   |   serial: 309C7C2
>> |   |   type: e3xx
>> |   |   MPM Version: 1.2
>> |   |   FPGA Version: 1.0
>> |   |   FPGA git hash: f52a643.clean
>> |   |   RFNoC capable: Yes
>> |   |
>> |   |   Time sources:  internal, external, gpsdo
>> |   |   Clock sources: internal
>> |   |   Sensors: ref_locked, temp_fpga, temp_mb
>> |   |     _____________________________________________________
>> |   |    /
>> |   |   |       RX Dboard: A
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       RX Frontend: 0
>> |   |   |   |   Name: E3xx
>> |   |   |   |   Antennas: RX2, TX/RX
>> |   |   |   |   Sensors: lo_locked, rssi, lo_lock, ad9361_temperature
>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>> |   |   |   |   Connection Type: IQ
>> |   |   |   |   Uses LO offset: No
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       RX Frontend: 1
>> |   |   |   |   Name: E3xx
>> |   |   |   |   Antennas: RX2, TX/RX
>> |   |   |   |   Sensors: lo_locked, rssi, lo_lock, ad9361_temperature
>> |   |   |   |   Freq range: 70.000 to 6000.000 MHz
>> |   |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>> |   |   |   |   Connection Type: IQ
>> |   |   |   |   Uses LO offset: No
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       RX Codec: A
>> |   |   |   |   Name: AD9361 Dual ADC
>> |   |   |   |   Gain Elements: None
>> |   |     _____________________________________________________
>> |   |    /
>> |   |   |       TX Dboard: A
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       TX Frontend: 0
>> |   |   |   |   Name: E3xx
>> |   |   |   |   Antennas: TX/RX
>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>> |   |   |   |   Connection Type: IQ
>> |   |   |   |   Uses LO offset: No
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       TX Frontend: 1
>> |   |   |   |   Name: E3xx
>> |   |   |   |   Antennas: TX/RX
>> |   |   |   |   Sensors: lo_locked, ad9361_temperature
>> |   |   |   |   Freq range: 47.000 to 6000.000 MHz
>> |   |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>> |   |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>> |   |   |   |   Connection Type: IQ
>> |   |   |   |   Uses LO offset: No
>> |   |   |     _____________________________________________________
>> |   |   |    /
>> |   |   |   |       TX Codec: A
>> |   |   |   |   Name: AD9361 Dual DAC
>> |   |   |   |   Gain Elements: None
>> |   |     _____________________________________________________
>> |   |    /
>> |   |   |       RFNoC blocks on this device:
>> |   |   |
>> |   |   |   * Radio_0
>> |   |   |   * DDC_0
>> |   |   |   * DUC_0
>>
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d0ec2a058c6c30a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Brent,<div dir=3D"auto"><br></div><div dir=3D"auto">Wh=
at&#39;s the ballpark programming time using uhd_image_loader on the e310?<=
/div><div dir=3D"auto"><br></div><div dir=3D"auto">I currently swap in/out =
fpga images using the args parameter on the e310 since the fpga size is pre=
tty small. In some cases the application introspects the required fpga reso=
urces, and dynamically chooses the correct bitstream at runtime... Just won=
dering if there&#39;s a way I can use a similar workflow with uhd_image_loa=
der on the MPM architecture...</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jun 28, 2019, 9:07 PM Brent Stapleton via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
>The 3.15 pre-release updates the E310 to use MPM (as you know), and brings=
 it more in line with other MPM devices. You&#39;ll have to use the `uhd_im=
age_loader` to update the FPGA image; device args are not used by the UHD s=
ession to load the FPGA image. The E310 will still load the FPGA image at t=
he beginning of the session (and load an idle image when there is no active=
 UHD session), but that image is not determined by the session. You shouldn=
&#39;t need to touch it manually (we recommend using uhd_image_loader), but=
 the image is stored on the filesystem at /lib/firmware/e310_sg1.bin.<div><=
br></div><div>Brent</div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Fri, Jun 28, 2019 at 5:27 PM d.des via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=
=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">Marcus Leach wrote:<br>
&gt;What happens if you specify an fpga image that doesn&#39;t actually<br>
&gt;exist?=C2=A0 <br>
&gt;Does it error out?<br>
<br>
<br>
It ignores the bad file, even though the args seem to be making it<br>
pretty far into the process. I still can&#39;t find where uhd loads the<br>
.bit file.<br>
<br>
I&#39;m using the version on the referenced SD image from Ettus&#39;s site,=
 not<br>
bit-baking the latest from meta-ettus.<br>
<br>
Here&#39;s the result for the pre-compiled uhd that was on the SD image at<=
br>
debug log level 0: The results are similar on <br>
<br>
root@ni-e31x-309C7C2F:~# uhd_usrp_probe --<br>
args=3D&quot;fpga=3Dfilethatdoesntexist&quot;<br>
[INFO] [UHD] linux; GNU C++ version 7.3.0; Boost_106600;<br>
UHD_3.15.0.git-0-g6563c537<br>
[DEBUG] [MPMD] Discovering MPM devices on port 49600<br>
[DEBUG] [MPMD] Discovering MPM devices on port 49600<br>
[TRACE] [UDP] Creating udp transport for 10.1.1.255 49600<br>
[TRACE] [UDP] Creating udp transport for 127.255.255.255 49600<br>
[TRACE] [UDP] Creating udp transport for 10.1.1.255 50000<br>
[TRACE] [UHD] Device hash: 2130689100<br>
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf<br>
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf<br>
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf<br>
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf<br>
[DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf<br>
[DEBUG] [PREFS] Loaded user config file /home/root/.uhd/uhd.conf<br>
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:<br>
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2,claim=
ed=3DF<br>
alse,fpga=3Dfilethatdoesntexist<br>
[DEBUG] [MPMD] Claiming mboard 0<br>
[DEBUG] [MPMD] Device args:<br>
`mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2,clai=
med=3D<br>
False,fpga=3Dfilethatdoesntexist&#39;. RPC address: 127.0.0.1<br>
[TRACE] [MPMD] Initializing mboard, connecting to RPC server address:<br>
127.0.0.1 mboard args:<br>
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2,claim=
ed=3DF<br>
alse,fpga=3Dfilethatdoesntexist number of crossbars: 1<br>
[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>
[TRACE] [MPMD] MPM reports device info:<br>
claimed=3DTrue,connection=3Dlocal,description=3DE300-Series<br>
Device,eeprom_version=3D,fpga=3D,fpga_version=3D1.0,fpga_version_hash=3Df52=
a643<br>
.clean,mpm_version=3D1.2,name=3Dni-e31x-<br>
309C7C2F,pid=3D30674,product=3De310_sg1,rev=3D4,rpc_connection=3Dlocal,seri=
al=3D3<br>
09C7C2,type=3De3xx<br>
[TRACE] [MPMD] MPM reports dboard info for slot 0:<br>
eeprom_version=3Dn/a,pid=3D272,rev=3D3,serial=3D309991A<br>
[TRACE] [MPMD] Checking MPM compat number. Expected: 1.2 Actual: 1.2<br>
[DEBUG] [MPMD] Initializing mboard 0<br>
[DEBUG] [MPMD] Found 3 motherboard sensors.<br>
[DEBUG] [MPMD] Found 2 updateable motherboard components.<br>
[TRACE] [MPMD] Enumerating RFNoC blocks for xbar 0. Total blocks: 3<br>
Base port: 1 Local address: 2<br>
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00&gt;02:10<br>
User-defined xport args:<br>
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2,claim=
ed=3DF<br>
alse,fpga=3Dfilethatdoesntexist<br>
[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL<br>
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).<br>
[TRACE] [MPMD] Making (muxed) stream with num 0<br>
[TRACE] [MPMD] xport info: send_sid=3D=3D00:00&gt;02:10 recv_sid=3D=3D02:10=
&gt;00:00<br>
endianness=3D=3DLE recv_buff_size=3D=3D10880 send_buff_size=3D=3D10880<br>
[DEBUG] [DEVICE3] Port 0x10: Found NoC-Block with ID 12AD100000003310.<br>
[DEBUG] [RFNOC] Reading XML file<br>
/usr/share/uhd/rfnoc/blocks/radio_e31x.xml for NOC ID<br>
0x12AD100000003310<br>
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00&gt;02:11<br>
User-defined xport args:<br>
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2,claim=
ed=3DF<br>
alse,fpga=3Dfilethatdoesntexist<br>
[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL<br>
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).<br>
[TRACE] [MPMD] Making (muxed) stream with num 1<br>
[TRACE] [MPMD] xport info: send_sid=3D=3D00:01&gt;02:11 recv_sid=3D=3D02:11=
&gt;00:01<br>
endianness=3D=3DLE recv_buff_size=3D=3D10880 send_buff_size=3D=3D10880<br>
[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()<br>
[DEBUG] [RFNOC] Reading XML file<br>
/usr/share/uhd/rfnoc/blocks/radio_e31x.xml for NOC ID<br>
0x12AD100000003310<br>
[TRACE] [RFNOC] [RFNoC Factory] Using controller key &#39;E31XRadio&#39; an=
d<br>
block name &#39;Radio&#39;<br>
[DEBUG] [RFNOC] Reading XML file<br>
/usr/share/uhd/rfnoc/blocks/radio_e31x.xml for NOC ID<br>
0x12AD100000003310<br>
[INFO] [0/Radio_0] Initializing block control (NOC ID:<br>
0x12AD100000003310)<br>
[DEBUG] [0/Radio_0] Checking compat number for FPGA component<br>
`noc_shell&#39;: Expecting 5.1, actual: 5.1.<br>
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/0:<br>
type =3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/in/1:<br>
type =3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/0:<br>
type =3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[TRACE] [0/Radio_0] Adding port definition at xbar/Radio_0/ports/out/1:<br>
type =3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[DEBUG] [0/Radio_0] Register loopback test passed<br>
[DEBUG] [0/Radio_0] Register loopback test passed<br>
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Requested spp: 508<br>
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Setting spp to: 508<br>
[DEBUG] [0/Radio_0] Setting default spp to 2044<br>
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Requested spp: 2044<br>
[TRACE] [RFNOC] radio_ctrl_impl::_update_spp(): Setting spp to: 2044<br>
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00&gt;02:20<br>
User-defined xport args:<br>
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2,claim=
ed=3DF<br>
alse,fpga=3Dfilethatdoesntexist<br>
[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL<br>
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).<br>
[TRACE] [MPMD] Making (muxed) stream with num 2<br>
[TRACE] [MPMD] xport info: send_sid=3D=3D00:02&gt;02:20 recv_sid=3D=3D02:20=
&gt;00:02<br>
endianness=3D=3DLE recv_buff_size=3D=3D10880 send_buff_size=3D=3D10880<br>
[DEBUG] [DEVICE3] Port 0x20: Found NoC-Block with ID DDC0000000000000.<br>
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/ddc.xml<br>
for NOC ID 0xDDC0000000000000<br>
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00&gt;02:21<br>
User-defined xport args:<br>
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2,claim=
ed=3DF<br>
alse,fpga=3Dfilethatdoesntexist<br>
[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL<br>
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).<br>
[TRACE] [MPMD] Making (muxed) stream with num 3<br>
[TRACE] [MPMD] xport info: send_sid=3D=3D00:03&gt;02:21 recv_sid=3D=3D02:21=
&gt;00:03<br>
endianness=3D=3DLE recv_buff_size=3D=3D10880 send_buff_size=3D=3D10880<br>
[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()<br>
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/ddc.xml<br>
for NOC ID 0xDDC0000000000000<br>
[TRACE] [RFNOC] [RFNoC Factory] Using controller key &#39;DDC&#39; and bloc=
k<br>
name &#39;DDC&#39;<br>
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/ddc.xml<br>
for NOC ID 0xDDC0000000000000<br>
[INFO] [0/DDC_0] Initializing block control (NOC ID:<br>
0xDDC0000000000000)<br>
[DEBUG] [0/DDC_0] Checking compat number for FPGA component<br>
`noc_shell&#39;: Expecting 5.1, actual: 5.1.<br>
[INFO] [MPM.PeriphManager] init() called with device args<br>
`fpga=3Dfilethatdoesntexist,mgmt_addr=3D127.0.0.1,product=3De310_sg1&#39;.<=
br>
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/0: type<br>
=3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/in/1: type<br>
=3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/0:<br>
type =3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[TRACE] [0/DDC_0] Adding port definition at xbar/DDC_0/ports/out/1:<br>
type =3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($input_rate, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($output_rate, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($fullscale, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($input_rate, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($output_rate, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($fullscale, 0.0)<br>
[DEBUG] [0/DDC_0] Loading DDC with 1 halfbands and max CIC decimation<br>
16<br>
[DEBUG] [DDC] Checking compat number for FPGA component `DDC&#39;:<br>
Expecting 2.0, actual: 2.0.<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($output_rate, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($output_rate, 0.0)<br>
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00&gt;02:30<br>
User-defined xport args:<br>
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2,claim=
ed=3DF<br>
alse,fpga=3Dfilethatdoesntexist<br>
<br>
---note: args=3Dfpga=3D points to non-existant files, and there are no .bit=
<br>
files anywhere on the sd card<br>
<br>
[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL<br>
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).<br>
[TRACE] [MPMD] Making (muxed) stream with num 4<br>
[TRACE] [MPMD] xport info: send_sid=3D=3D00:04&gt;02:30 recv_sid=3D=3D02:30=
&gt;00:04<br>
endianness=3D=3DLE recv_buff_size=3D=3D10880 send_buff_size=3D=3D10880<br>
[DEBUG] [DEVICE3] Port 0x30: Found NoC-Block with ID D0C0000000000002.<br>
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/duc.xml<br>
for NOC ID 0xD0C0000000000002<br>
[TRACE] [MPMD] Creating new transport to mboard: 0 SID: 00:00&gt;02:31<br>
User-defined xport args:<br>
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2,claim=
ed=3DF<br>
alse,fpga=3Dfilethatdoesntexist<br>
[TRACE] [MPMD] make_transport(): Creating new transport of type: CTRL<br>
[TRACE] [MPMD] make_transport(): request_xport() gave us 1 option(s).<br>
[TRACE] [MPMD] Making (muxed) stream with num 5<br>
[TRACE] [MPMD] xport info: send_sid=3D=3D00:05&gt;02:31 recv_sid=3D=3D02:31=
&gt;00:05<br>
endianness=3D=3DLE recv_buff_size=3D=3D10880 send_buff_size=3D=3D10880<br>
[TRACE] [RFNOC] [RFNoC Factory] block_ctrl_base::make()<br>
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/duc.xml<br>
for NOC ID 0xD0C0000000000002<br>
[TRACE] [RFNOC] [RFNoC Factory] Using controller key &#39;DUC&#39; and bloc=
k<br>
name &#39;DUC&#39;<br>
[DEBUG] [RFNOC] Reading XML file /usr/share/uhd/rfnoc/blocks/duc.xml<br>
for NOC ID 0xD0C0000000000002<br>
[INFO] [0/DUC_0] Initializing block control (NOC ID:<br>
0xD0C0000000000002)<br>
[DEBUG] [0/DUC_0] Checking compat number for FPGA component<br>
`noc_shell&#39;: Expecting 5.1, actual: 5.1.<br>
[TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/in/0: type<br>
=3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/in/1: type<br>
=3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/out/0:<br>
type =3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[TRACE] [0/DUC_0] Adding port definition at xbar/DUC_0/ports/out/1:<br>
type =3D &#39;sc16&#39; pkt_size =3D &#39;0&#39; vlen =3D &#39;0&#39;<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($input_rate, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($output_rate, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($fullscale, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($input_rate, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($output_rate, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($fullscale, 0.0)<br>
[DEBUG] [0/DUC_0] Loading DUC with 1 halfbands and max CIC<br>
interpolation 8<br>
[DEBUG] [DUC] Checking compat number for FPGA component `DUC&#39;:<br>
Expecting 2.0, actual: 2.0.<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($input_rate, 0.0)<br>
[TRACE] [RFNOC] [NocScript] Executing and asserting code:<br>
GE($input_rate, 0.0)<br>
[DEBUG] [MPMD] Adding RPC access to block: 0/Radio_0 Block args:<br>
mgmt_addr=3D127.0.0.1,type=3De3xx,product=3De310_sg1,serial=3D309C7C2,claim=
ed=3DF<br>
alse,fpga=3Dfilethatdoesntexist<br>
[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
[INFO] [0/Radio_0] RX band =3D 6<br>
[INFO] [0/Radio_0] RX SW1 =3D 5<br>
[INFO] [0/Radio_0] RX SWC =3D 0<br>
[INFO] [0/Radio_0] RX SWB =3D 1<br>
[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
[INFO] [0/Radio_0] RX band =3D 6<br>
[INFO] [0/Radio_0] RX SW1 =3D 5<br>
[INFO] [0/Radio_0] RX SWC =3D 0<br>
[INFO] [0/Radio_0] RX SWB =3D 1<br>
[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
[INFO] [0/Radio_0] RX band =3D 6<br>
[INFO] [0/Radio_0] RX SW1 =3D 5<br>
[INFO] [0/Radio_0] RX SWC =3D 0<br>
[INFO] [0/Radio_0] RX SWB =3D 1<br>
[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
[INFO] [0/Radio_0] RX band =3D 6<br>
[INFO] [0/Radio_0] RX SW1 =3D 5<br>
[INFO] [0/Radio_0] RX SWC =3D 0<br>
[INFO] [0/Radio_0] RX SWB =3D 1<br>
[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
[INFO] [0/Radio_0] RX band =3D 6<br>
[INFO] [0/Radio_0] RX SW1 =3D 5<br>
[INFO] [0/Radio_0] RX SWC =3D 0<br>
[INFO] [0/Radio_0] RX SWB =3D 1<br>
[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
[INFO] [0/Radio_0] RX freq =3D 2.4e+09<br>
[INFO] [0/Radio_0] RX band =3D 6<br>
[INFO] [0/Radio_0] RX SW1 =3D 5<br>
[INFO] [0/Radio_0] RX SWC =3D 0<br>
[INFO] [0/Radio_0] RX SWB =3D 1<br>
[INFO] [0/Radio_0] RX VCRX_SW =3D 1<br>
[INFO] [0/Radio_0] RX VCTXRX_SW =3D 0<br>
[DEBUG] [0/Radio_0] Master Clock Rate is: 16 MHz.<br>
[DEBUG] [0/Radio_0] Asking for clock rate 16 MHz<br>
<br>
[DEBUG] [0/Radio_0] Actual clock rate 16 MHz<br>
<br>
[DEBUG] [CORES] Performing timer loopback test... <br>
[DEBUG] [CORES] Timer loopback test passed.<br>
[DEBUG] [0/Radio_0] Asking for clock rate 30.72 MHz<br>
<br>
[DEBUG] [0/Radio_0] Actual clock rate 30.72 MHz<br>
<br>
[DEBUG] [CORES] Performing timer loopback test... <br>
[DEBUG] [CORES] Timer loopback test passed.<br>
[INFO] [0/Radio_0] Performing CODEC loopback test... <br>
[INFO] [0/Radio_0] CODEC loopback test passed<br>
[DEBUG] [0/Radio_0] Asking for clock rate 16 MHz<br>
<br>
[DEBUG] [0/Radio_0] Actual clock rate 16 MHz<br>
<br>
[DEBUG] [CORES] Performing timer loopback test... <br>
[DEBUG] [CORES] Timer loopback test passed.<br>
[DEBUG] [0/Radio_0] Asking for clock rate 30.72 MHz<br>
<br>
[DEBUG] [0/Radio_0] Actual clock rate 30.72 MHz<br>
<br>
[DEBUG] [CORES] Performing timer loopback test... <br>
[DEBUG] [CORES] Timer loopback test passed.<br>
[INFO] [0/Radio_0] Performing CODEC loopback test... <br>
[INFO] [0/Radio_0] CODEC loopback test passed<br>
[DEBUG] [0/Radio_0] Asking for clock rate 16 MHz<br>
<br>
[DEBUG] [0/Radio_0] Actual clock rate 16 MHz<br>
<br>
[DEBUG] [CORES] Performing timer loopback test... <br>
[DEBUG] [CORES] Timer loopback test passed.<br>
=C2=A0 _____________________________________________________<br>
=C2=A0/<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0Device: E300-Series Device<br>
|=C2=A0 =C2=A0 =C2=A0_____________________________________________________<=
br>
|=C2=A0 =C2=A0 /<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0Mboard: ni-e31x-309C7C2F<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0mpm_version: 3.15.0.git-g6563c537<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0pid: 30674<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0product: e310_sg1<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0rev: 4<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0rpc_connection: local<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0serial: 309C7C2<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0type: e3xx<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0MPM Version: 1.2<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA Version: 1.0<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0FPGA git hash: f52a643.clean<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0RFNoC capable: Yes<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0Time sources:=C2=A0 internal, external, gpsdo<b=
r>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0Clock sources: internal<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: ref_locked, temp_fpga, temp_mb<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0________________________________________=
_____________<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Dboard: A<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Fr=
ontend: 0<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX2, TX/R=
X<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked,=
 rssi, lo_lock, ad9361_temperature<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 70.000 =
to 6000.000 MHz<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0=
 to 76.0 step 1.0 dB<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 20=
000000.0 to 40000000.0 step 0.0 Hz<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: IQ=
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<=
br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Fr=
ontend: 1<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: RX2, TX/R=
X<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked,=
 rssi, lo_lock, ad9361_temperature<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 70.000 =
to 6000.000 MHz<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0=
 to 76.0 step 1.0 dB<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 20=
000000.0 to 40000000.0 step 0.0 Hz<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: IQ=
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<=
br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RX Co=
dec: A<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: AD9361 Dual A=
DC<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain Elements: None=
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0________________________________________=
_____________<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Dboard: A<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Fr=
ontend: 0<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX/RX<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked,=
 ad9361_temperature<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 47.000 =
to 6000.000 MHz<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0=
 to 89.8 step 0.2 dB<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 20=
000000.0 to 40000000.0 step 0.0 Hz<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: IQ=
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<=
br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Fr=
ontend: 1<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: E3xx<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Antennas: TX/RX<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Sensors: lo_locked,=
 ad9361_temperature<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Freq range: 47.000 =
to 6000.000 MHz<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain range PGA: 0.0=
 to 89.8 step 0.2 dB<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Bandwidth range: 20=
000000.0 to 40000000.0 step 0.0 Hz<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Connection Type: IQ=
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Uses LO offset: No<=
br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0__________________________=
___________________________<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0TX Co=
dec: A<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Name: AD9361 Dual D=
AC<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0Gain Elements: None=
<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0________________________________________=
_____________<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0 /<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0RFNoC blocks on thi=
s device:<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* Radio_0<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DDC_0<br>
|=C2=A0 =C2=A0|=C2=A0 =C2=A0|=C2=A0 =C2=A0* DUC_0<br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000d0ec2a058c6c30a9--


--===============2287594000204487023==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2287594000204487023==--


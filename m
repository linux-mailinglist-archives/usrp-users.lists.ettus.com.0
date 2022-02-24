Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1BF4C29A6
	for <lists+usrp-users@lfdr.de>; Thu, 24 Feb 2022 11:36:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4067A384756
	for <lists+usrp-users@lfdr.de>; Thu, 24 Feb 2022 05:36:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nBvmbWK7";
	dkim-atps=neutral
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 97E103846C6
	for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 05:35:36 -0500 (EST)
Received: by mail-ej1-f50.google.com with SMTP id a8so3310765ejc.8
        for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 02:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ksrOf+j0ZXWfcjKrxHZr5DjXZ1rYS2aCyx8MbC1jDRE=;
        b=nBvmbWK7mP/O11gz09K44ClenRwyay965Dx/j5IH22xLFevSwaV6OUqNEJiECC+LYl
         +tWDHikrR/wY7qg972qRkc3DLZd1notyelLWoHtvigBBDx7eiMFmj8WGwguSD5veH3uF
         4HxcpZlvYKp00d3LL/hrVNummcpr/g3OH41e5X+E/s9traz7Ywq/u+OQnzmOMefZyXdS
         8Ff/kGV5Htltd3jhne1DM3Q/eMZeWtnjpvb/PasXQIrqKzO08GGk2rLcsQY747W1Z0oe
         rA2d3wT68Tntxp86a1Gk9iH/zFkikXxjtGxVonawtg331mUvVChOyjl65X6r86h+vK3P
         7hhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ksrOf+j0ZXWfcjKrxHZr5DjXZ1rYS2aCyx8MbC1jDRE=;
        b=EifuAausnEZPwg8VDiN0YsxlER2d/g/nrFbjLBbZ/IzZlGJjC4oWOpeh0vYoxrhw1o
         JntYIpoLu+/Vsfml/WTgu71IFSy85sWF8xT//ARs+FzanUqwahZ5bn8WHuV7toshgqj4
         n95sADrtRkwmY4ELg9qqWwobngVoXrTxBgaAxh5JyBEQ4/LzjraIFTscOrMn5keh104a
         bkr8L46C19GDh7p6YTa2LCgqfoGrvxaJuPFZdP6v317yVOxEI1IuC0/lg7USmw5kdxHT
         MoIEYJZrkTdQNdVZWUsy/nbIwT1GXFyXvIDBjmIWtEEAvaVQ0/qpV0k9F19ZdrPkS21p
         gquw==
X-Gm-Message-State: AOAM530FFyO1dnVO6ObkBiXs1TUOlSlmK1H4fwZ1mWhWfWNBbPGs23Lr
	DlPHYIngWP7MHZRxAAGj/Gx0aejtMQo/mOtEYtu5zHjv
X-Google-Smtp-Source: ABdhPJyixLloDPIs8Ta5q4VqpXylwbuIezjUDWIUpU+o2+tyWGZwWafBJYlCukbbefi/4jTRgOlZoXO2kyxYTwdXu+8=
X-Received: by 2002:a17:906:5a94:b0:6c5:5aa4:da87 with SMTP id
 l20-20020a1709065a9400b006c55aa4da87mr1796820ejq.381.1645698935167; Thu, 24
 Feb 2022 02:35:35 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQVHXis5xAXDKZWo5WowfzM4zKfx5gVgTvjxZ=8WKaT7cg@mail.gmail.com>
 <CAB__hTSK9qoreSo_FBt1vja8aKnyns33R2eFjaqnz6gDa2qtRQ@mail.gmail.com>
 <CAB__hTQQQp0QJ5EyNg00jxo4LViQb1x1vaZQb4O9qCtgHop02g@mail.gmail.com>
 <CAG16vQVrRJxwaQXCovrMuwWs5FLOY1MkD8N2K7s=tZvTiUnuGQ@mail.gmail.com>
 <CAB__hTR7fi_jc2QDWxqCFbb+AU4xVKAK-6q3F-u9CwxH=ZdXpQ@mail.gmail.com>
 <CAG16vQWS1x7v1QE7QXgeiSbmxNU-pgtnb4jicXbP3XHh92GSeQ@mail.gmail.com>
 <CAB__hTQMghpEzTyUOhx6FAjWL0_fXNtk0pi47f-4y4YUMKhDzg@mail.gmail.com>
 <CAG16vQUXp8gCU4g4UgLTP9UEyHdANiz8z6M1OP8ruoFoNJE-4w@mail.gmail.com>
 <CAB__hTQhKHboXq_t1x+Dk889Ng6+UUEcw8O=JnDbx-3yeiP4xA@mail.gmail.com> <CAG16vQUZ4NbhdgwpimP244LY-V2Bd2gPb=va2ZRf_XkPi_yV9w@mail.gmail.com>
In-Reply-To: <CAG16vQUZ4NbhdgwpimP244LY-V2Bd2gPb=va2ZRf_XkPi_yV9w@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Thu, 24 Feb 2022 11:35:23 +0100
Message-ID: <CAG16vQVrMfgujXGnQSCCjSKxt-NAC+mcdf3+snUBKhYtYLYi_Q@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: MD6JEMZ2JPYPN7KWKLTRWYCWHM45PNCH
X-Message-ID-Hash: MD6JEMZ2JPYPN7KWKLTRWYCWHM45PNCH
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom block drop received packages
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MD6JEMZ2JPYPN7KWKLTRWYCWHM45PNCH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0650165033973912932=="

--===============0650165033973912932==
Content-Type: multipart/alternative; boundary="000000000000701f6805d8c124d8"

--000000000000701f6805d8c124d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Good news!
I managed to get my block receiving samples through the RX radio. It turned
out to be a problem with the Radio and Streamer SPP configuration. If I set
them with 256, it works. I can increase the number of SPP if I add a
fosphor block instead of the QT sink (test it up to 1024).
I still haven't found a solution for GNURadio complaining about the
"previously registered RFNoC block" but seems another issue not related to
this one.
Thanks again for your help.

Kind Regards,
Maria

El lun, 21 feb 2022 a las 18:44, Maria Mu=C3=B1oz (<mamuki92@gmail.com>)
escribi=C3=B3:

> Ok Rob, I will check everything you've said and give you an answer if I
> find the solution.
> Many thanks for the help!
>
> Maria
>
>
> El lun., 21 feb. 2022 18:25, Rob Kossler <rkossler@nd.edu> escribi=C3=B3:
>
>> I'm not sure. Yes, it seems the first line could be a problem. Maybe you=
r
>> OOT rfnoc_mod_tool is correctly registering your block AND the in-tree
>> block is being registered. I don't see why that would be a problem (give=
n
>> that they should both be the same anyway), but you should probably try t=
o
>> fix it.
>>
>> Another idea is to enable UHD "debug" logging by setting environment
>> variables as shown here
>> <https://files.ettus.com/manual/log_8hpp.html#loghpp_levels>. This may
>> show useful information.
>>
>> Another idea is to specifically set the policy to ONE_TO_ONE in your
>> custom block controller constructor as is done with several Ettus RFNoC
>> blocks like this
>> <https://github.com/EttusResearch/uhd/blob/master/host/lib/rfnoc/fft_blo=
ck_control.cpp>FFT
>> controller. But, really, this shouldn't be needed since it should be the
>> default.
>>
>> And, again, maybe see about calling issue_stream_cmd()  from the DDC
>> controller instead of the rx_streamer.
>>
>> Rob
>>
>>
>>
>> On Mon, Feb 21, 2022 at 11:52 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> w=
rote:
>>
>>> This is my output for gnuradio:
>>>
>>> *REGISTRY] WARNING: Attempting to overwrite previously registered RFNoC
>>> block with noc_id,device_id: 0x29106060, 0xffff*
>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>> UHD_4.0.0.HEAD-0-g90ce6062
>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>> mgmt_addr=3D192.168.1.23,type=3De3xx,product=3De320,serial=3D31DFBB7,cl=
aimed=3DFalse,addr=3D192.168.1.23
>>> [INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g57ca4235
>>> [INFO] [MPM.main] Spawning RPC process...
>>> [INFO] [MPM.PeriphManager] Device serial number: 31DFBB7
>>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>>> [INFO] [MPM.RPCServer] RPC server ready!
>>> [INFO] [MPM.RPCServer] Spawning watchdog task...
>>> [INFO] [MPM.PeriphManager] iniciando mpm
>>> [INFO] [MPM.PeriphManager] init() called with device args
>>> `mgmt_addr=3D192.168.1.23,product=3De320'.
>>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
>>> MB/s)
>>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
>>> MB/s)
>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>>> [INFO] [0/Radio#0] CODEC loopback test passed
>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>>> [INFO] [0/Radio#0] CODEC loopback test passed
>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
>>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...
>>> Ogr::log :DEBUG: rfnoc_rx_streamer0 - UHD recv() call timed out.
>>>
>>> Seems that the first line is the problem. The 0x29106060 is my rfnoc
>>> block. Should I recompile also gnuradio to catch the controller I insta=
ll
>>> in UHD?
>>>
>>> El lun, 21 feb 2022 a las 17:38, Rob Kossler (<rkossler@nd.edu>)
>>> escribi=C3=B3:
>>>
>>>> This looks all correct when using uhd_usrp_probe.  How about when you
>>>> run from gnuradio - does the UHD console log show "anc2#0" or "Block#0=
" (or
>>>> neither)?
>>>>
>>>> Regarding your question about issue_stream_cmd() from the DDC
>>>> controller in gnuradio, I've forgotten how things are done in gnuradio=
 -
>>>> could you send your python file and maybe I can suggest a modification=
?
>>>>
>>>> By the way, each FPGA block (such as DDC) has a corresponding UHD bloc=
k
>>>> controller (running on the host side). So, it is possible to run
>>>> issue_stream_cmd from the DDC controller rather than the rx_streamer. =
 I
>>>> just don't remember how exactly to do that from gnuradio.
>>>> Rob
>>>>
>>>> On Mon, Feb 21, 2022 at 11:27 AM Maria Mu=C3=B1oz <mamuki92@gmail.com>
>>>> wrote:
>>>>
>>>>> Hi Rob,
>>>>>
>>>>> I have compiled the default cpp and hpp files in-tree, as I read that
>>>>> this could be the issue. And uhd_usrp_probe identifies my block contr=
oller
>>>>> name (anc2):
>>>>>
>>>>> uhd_usrp_probe
>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>>> UHD_4.0.0.HEAD-0-g90ce6062
>>>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>>>> mgmt_addr=3D,type=3De3xx,product=3De320,serial=3D31DFBB7,claimed=3DFa=
lse,addr=3D
>>>>> [INFO] [MPM.PeriphManager] iniciando mpm
>>>>> [INFO] [MPM.PeriphManager] init() called with device args
>>>>> `mgmt_addr=3D,product=3De320'.
>>>>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
>>>>> MB/s)
>>>>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
>>>>> MB/s)
>>>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>>>>> [INFO] [0/Radio#0] CODEC loopback test passed
>>>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>>>>> [INFO] [0/Radio#0] CODEC loopback test passed
>>>>>   _____________________________________________________
>>>>>  /
>>>>> |       Device: E300-Series Device
>>>>> |     _____________________________________________________
>>>>> |    /
>>>>> |   |       Mboard: ni-e320-31DFBB7
>>>>> |   |   eeprom_version: 3
>>>>> |   |   fs_version: 20200914014807
>>>>> |   |   mender_artifact: v4.0.0.0_e320
>>>>> |   |   mpm_sw_version: 4.0.0.0-g57ca4235
>>>>> |   |   pid: 58144
>>>>> |   |   product: e320
>>>>> |   |   rev: 5
>>>>> |   |   rpc_connection: remote
>>>>> |   |   serial: 31DFBB7
>>>>> |   |   type: e3xx
>>>>> |   |   MPM Version: 3.0
>>>>> |   |   FPGA Version: 6.0
>>>>> |   |   FPGA git hash: 90ce606.dirty
>>>>> |   |
>>>>> |   |   Time sources:  internal, external, gpsdo
>>>>> |   |   Clock sources: external, internal, gpsdo
>>>>> |   |   Sensors: ref_locked, gps_locked, fan, temp_fpga,
>>>>> temp_internal, temp_rf_channelA, temp_rf_channelB, temp_main_power,
>>>>> gps_gpgga, gps_sky, gps_time, gps_tpv
>>>>> |     _____________________________________________________
>>>>> |    /
>>>>> |   |       RFNoC blocks on this device:
>>>>> |   |
>>>>> |   |   * 0/DDC#0
>>>>> |   |   * 0/DUC#0
>>>>> |   |   * 0/DmaFIFO#0
>>>>> |   |   * 0/Radio#0
>>>>> |   |   ** 0/anc2#0*
>>>>> |     _____________________________________________________
>>>>> |    /
>>>>> |   |       Static connections on this device:
>>>>> |   |
>>>>> |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
>>>>> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
>>>>> |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
>>>>> |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
>>>>> |   |   * 0/SEP#1:0=3D=3D>0/DUC#0:1
>>>>> |   |   * 0/DUC#0:1=3D=3D>0/Radio#0:1
>>>>> |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
>>>>> |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
>>>>> |   |   * 0/SEP#2:0=3D=3D>0/DmaFIFO#0:0
>>>>> |   |   * 0/DmaFIFO#0:0=3D=3D>0/SEP#2:0
>>>>> |   |   * 0/SEP#3:0=3D=3D>0/DmaFIFO#0:1
>>>>> |   |   * 0/DmaFIFO#0:1=3D=3D>0/SEP#3:0
>>>>> |   |   * 0/SEP#4:0=3D=3D>0/anc2#0:0
>>>>> |   |   * 0/anc2#0:0=3D=3D>0/SEP#4:0
>>>>> |     _____________________________________________________
>>>>> |    /
>>>>> |   |       TX Dboard: dboard
>>>>> |   |     _____________________________________________________
>>>>> |   |    /
>>>>> |   |   |       TX Frontend: 0
>>>>> |   |   |   Name: E3xx
>>>>> |   |   |   Antennas: TX/RX
>>>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
>>>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>>> |   |   |   Connection Type: IQ
>>>>> |   |   |   Uses LO offset: No
>>>>> |   |     _____________________________________________________
>>>>> |   |    /
>>>>> |   |   |       TX Frontend: 1
>>>>> |   |   |   Name: E3xx
>>>>> |   |   |   Antennas: TX/RX
>>>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
>>>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>>> |   |   |   Connection Type: IQ
>>>>> |   |   |   Uses LO offset: No
>>>>> |     _____________________________________________________
>>>>> |    /
>>>>> |   |       RX Dboard: dboard
>>>>> |   |     _____________________________________________________
>>>>> |   |    /
>>>>> |   |   |       RX Frontend: 0
>>>>> |   |   |   Name: E3xx
>>>>> |   |   |   Antennas: RX2, TX/RX
>>>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
>>>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>>> |   |   |   Connection Type: IQ
>>>>> |   |   |   Uses LO offset: No
>>>>> |   |     _____________________________________________________
>>>>> |   |    /
>>>>> |   |   |       RX Frontend: 1
>>>>> |   |   |   Name: E3xx
>>>>> |   |   |   Antennas: RX2, TX/RX
>>>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
>>>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>>> |   |   |   Connection Type: IQ
>>>>> |   |   |   Uses LO offset: No
>>>>>
>>>>>
>>>>>
>>>>> But besides that, Radio does not stream anything. I attach my block
>>>>> controller (which I haven't modified and has been generated with
>>>>> rfnocmodtool).
>>>>> I guess the problem could be what you said about the forwarding polic=
y
>>>>> set as drop by default, but I do not see any parameter like "one-to-o=
ne" or
>>>>> "drop" anywhere. I use UHD 4.0 but not sure if this issue was fixed w=
hen I
>>>>> installed it.
>>>>> Do you see any problem with the controller I am using?
>>>>>
>>>>> Thanks again for the help,
>>>>>
>>>>> Maria.
>>>>>
>>>>> El lun, 21 feb 2022 a las 16:49, Rob Kossler (<rkossler@nd.edu>)
>>>>> escribi=C3=B3:
>>>>>
>>>>>> Hi Maria,
>>>>>> A few remarks:
>>>>>>
>>>>>>    - If you wrote a custom block controller for your custom block,
>>>>>>    then the forwarding policy should already be correct (one-to-one)=
 by
>>>>>>    default (unless your custom block controller specifically set the=
 policy to
>>>>>>    DROP). On the other hand, if you did not write a custom block con=
troller
>>>>>>    (thus relying on the UHD default block controller), then this exp=
lains the
>>>>>>    issue because in that case the default policy is "drop" (which wi=
ll cause
>>>>>>    the issue you are seeing). Note that the default behavior of DROP=
 for the
>>>>>>    default block controller has been changed to ONE_TO_ONE on the 'm=
aster'
>>>>>>    branch of UHD but has not yet been changed on branch UHD-4.1.
>>>>>>    - So, you don't need to implement "issue_stream_cmd". You just
>>>>>>    need to verify that your block's action & properties forwarding p=
olicies
>>>>>>    are ONE_TO_ONE (which as I mentioned should be automatic if you c=
reate your
>>>>>>    own custom controller).
>>>>>>    - You mentioned that you used rfnocmodtool to create your block
>>>>>>    controller. But, my concern is that this block controller is not =
really
>>>>>>    being used.  If you run uhd_usrp_probe, does your block show up w=
ith a
>>>>>>    custom name (that you specified) or does it show up as "Block#0".=
 If it
>>>>>>    shows with the generic name "Block#0" it means that UHD is not us=
ing your
>>>>>>    block controller and instead using the default block controller (=
which
>>>>>>    DROPs forwarding on UHD 4.1).  So, if this is the case for you, t=
hat is the
>>>>>>    issue that needs to be solved.  Unfortunately, I don't know the b=
est way to
>>>>>>    solve this because I don't use rfnoc_mod_tool.  Take a look at th=
e gain
>>>>>>    block controller
>>>>>>    <https://github.com/EttusResearch/uhd/blob/UHD-4.1/host/examples/=
rfnoc-example/lib/gain_block_control.cpp>
>>>>>>    in the uhd/host/examples/rfnoc-example/ folder.  Note that this e=
xample
>>>>>>    does very little (empty constructor).  At the bottom is a string
>>>>>>    identifying the block which is the string that will be shown with
>>>>>>    uhd_usrp_probe if UHD is using your block controller.
>>>>>>
>>>>>> Let me know if this is the issue. Once you get uhd_usrp_probe to
>>>>>> "see" your block controller, your problem should be solved. If you c=
an't
>>>>>> get this to work, let me know.
>>>>>> Rob
>>>>>>
>>>>>> On Mon, Feb 21, 2022 at 4:41 AM Maria Mu=C3=B1oz <mamuki92@gmail.com=
>
>>>>>> wrote:
>>>>>>
>>>>>>> Hi Rob,
>>>>>>>
>>>>>>> Thanks for the answer.
>>>>>>>
>>>>>>> I have checked rfnoc_rx_streamer.cpp, ddc_block_control.cpp and my
>>>>>>> custom block controller in uhd/host/lib folder, and I search for
>>>>>>> "issue_stream_cmd" in them.
>>>>>>>
>>>>>>> In the rx_streamer one I see this function:
>>>>>>>
>>>>>>> void rfnoc_rx_streamer::issue_stream_cmd(const stream_cmd_t&
>>>>>>>> stream_cmd)
>>>>>>>> {
>>>>>>>>     if (get_num_channels() > 1 and stream_cmd.stream_now
>>>>>>>>         and stream_cmd.stream_mode !=3D
>>>>>>>> stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS) {
>>>>>>>>         throw uhd::runtime_error(
>>>>>>>>             "Invalid recv stream command - stream now on multiple
>>>>>>>> channels in a "
>>>>>>>>             "single streamer will fail to time align.");
>>>>>>>>     }
>>>>>>>
>>>>>>>
>>>>>>>     auto cmd        =3D
>>>>>>>> stream_cmd_action_info::make(stream_cmd.stream_mode);
>>>>>>>>     cmd->stream_cmd =3D stream_cmd;
>>>>>>>
>>>>>>>
>>>>>>>     for (size_t i =3D 0; i < get_num_channels(); i++) {
>>>>>>>>         const res_source_info info(res_source_info::INPUT_EDGE, i)=
;
>>>>>>>>         post_action(info, cmd);
>>>>>>>>     }
>>>>>>>> }
>>>>>>>
>>>>>>>
>>>>>>> While in the ddc I see this:
>>>>>>>
>>>>>>>      void issue_stream_cmd(const uhd::stream_cmd_t& stream_cmd,
>>>>>>>> const size_t port)
>>>>>>>>     {
>>>>>>>>         RFNOC_LOG_TRACE("issue_stream_cmd(stream_mode=3D" <<
>>>>>>>> char(stream_cmd.stream_mode)
>>>>>>>>                                                         << ",
>>>>>>>> port=3D" << port);
>>>>>>>>         res_source_info dst_edge{res_source_info::OUTPUT_EDGE,
>>>>>>>> port};
>>>>>>>>         auto new_action        =3D
>>>>>>>> stream_cmd_action_info::make(stream_cmd.stream_mode);
>>>>>>>>         new_action->stream_cmd =3D stream_cmd;
>>>>>>>>         issue_stream_cmd_action_handler(dst_edge, new_action);
>>>>>>>>     }
>>>>>>>
>>>>>>>
>>>>>>> There's no "issue_stream_cmd" on my block controller, so maybe as
>>>>>>> you said the block is not forwarding actions. I'm not very familiar=
 with
>>>>>>> controller files, so could you please tell me which changes I must =
do to
>>>>>>> have my block forwarding actions or point me out to any example to =
take as
>>>>>>> a reference? I created my block using rfnocmodtool and follow the g=
ain
>>>>>>> example, so I guess this example is not forwarding actions either.
>>>>>>>
>>>>>>> By the way, how can I stream from DDC in a GNURadiograph? If DDC is
>>>>>>> on the FPGA side, I have to cross to the host domain through a stre=
amer,
>>>>>>> don't I?
>>>>>>>
>>>>>>> Kind Regards,
>>>>>>>
>>>>>>> Maria
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> El vie, 18 feb 2022 a las 15:14, Rob Kossler (<rkossler@nd.edu>)
>>>>>>> escribi=C3=B3:
>>>>>>>
>>>>>>>> By the way, if your custom FPGA block was truly the problem
>>>>>>>> (blocking streaming), the Rx LED should be on and you should be ge=
tting
>>>>>>>> lots of Overflow. Since this is not happening, it is a good indica=
tion that
>>>>>>>> the Rx Radio is never starting.
>>>>>>>>
>>>>>>>> On Fri, Feb 18, 2022 at 9:10 AM Rob Kossler <rkossler@nd.edu>
>>>>>>>> wrote:
>>>>>>>>
>>>>>>>>> Hi Maria,
>>>>>>>>> The issue is likely related to "action forwarding" of the
>>>>>>>>> streaming command. When your application asks to start streaming,=
 it
>>>>>>>>> typically does so by calling rx_streamer->issue_stream_cmd().  Th=
is
>>>>>>>>> "action" will then be forwarded to the next upstream block contro=
ller
>>>>>>>>> (typically DDC block controller) which will see the command and f=
orward it
>>>>>>>>> to the next upstream block controller (typically the Rx radio con=
troller).
>>>>>>>>> The Rx radio block controller will then start the streaming.  As =
an
>>>>>>>>> example, let's say your rx_streamer requested a fixed number of s=
amples
>>>>>>>>> (say 1000) and assume that your DDC decimation is 4.  With this
>>>>>>>>> architecture, the DDC block controller can intercept the action a=
nd change
>>>>>>>>> the requested number of samples from 1000 to 4000 so that when th=
e radio
>>>>>>>>> block controller receives the command, it will stream for exactly=
 4000
>>>>>>>>> samples (which will provide 1000 samples out of the DDC). Note th=
at all of
>>>>>>>>> this "action" propagation occurs in UHD land (not on the FPGA).  =
So, if
>>>>>>>>> your custom block controller is not forwarding actions, the Radio
>>>>>>>>> controller never gets the action and thus never starts the stream=
ing.  One
>>>>>>>>> way you can verify this is if you are able to call issue_stream_c=
md() from
>>>>>>>>> the DDC controller rather than the rx_streamer.  This should caus=
e your
>>>>>>>>> streaming to start.
>>>>>>>>> Rob
>>>>>>>>>
>>>>>>>>> On Fri, Feb 18, 2022 at 8:13 AM Maria Mu=C3=B1oz <mamuki92@gmail.=
com>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> Hi all,
>>>>>>>>>>
>>>>>>>>>> I'm using a USRP E320 with UHD 4.0 and GNURadio 3.8 for receivin=
g
>>>>>>>>>> samples through an RX RFNoC Radio block and performing some proc=
essing in a
>>>>>>>>>> custom RFNoC block.
>>>>>>>>>> I have created my block using rfnocmodtool, modifying the Verilo=
g
>>>>>>>>>> and yml files for my custom block. I left the cpp and hpp files =
as default,
>>>>>>>>>> but I copied them to the UHD install path to see the name of my =
block with
>>>>>>>>>> uhd_usrp_probe.
>>>>>>>>>> I have tested satisfactorily my custom block with a gnuradio
>>>>>>>>>> graph like this:
>>>>>>>>>>
>>>>>>>>>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> r=
fnoc rx
>>>>>>>>>> streamer =3D> Host block
>>>>>>>>>>
>>>>>>>>>> I have also tested it for transmission through the rfnoc tx
>>>>>>>>>> radio, and works fine:
>>>>>>>>>>
>>>>>>>>>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> R=
FNoC
>>>>>>>>>> DUC=3D> RFNoC TX Radio
>>>>>>>>>>
>>>>>>>>>> But when I try to receive from the radio with the following
>>>>>>>>>> graph, rx led does not light up and gnuradio give time out:
>>>>>>>>>> RFNoC RX Radio =3D>  RFNoC DDC   =3D> custom RFNoC block =3D>  r=
fnoc rx
>>>>>>>>>> streamer =3D>Host block
>>>>>>>>>>
>>>>>>>>>> If I remove my custom block from the last graph, I can receive
>>>>>>>>>> samples and the led is on.
>>>>>>>>>>
>>>>>>>>>> It seems like the custom block is blocking somehow the samples. =
I
>>>>>>>>>> tried with different sampling rates and spp values for the radio=
 but
>>>>>>>>>> nothing works.
>>>>>>>>>>
>>>>>>>>>> Any help on this will be appreciated.
>>>>>>>>>>
>>>>>>>>>> Kind Regards,
>>>>>>>>>>
>>>>>>>>>> Maria
>>>>>>>>>> _______________________________________________
>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>>>>>
>>>>>>>>>

--000000000000701f6805d8c124d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob,<div><br></div><div>Good news!=C2=A0</div><div>I ma=
naged to get my block receiving samples through the RX radio. It turned out=
 to be a problem with the Radio and Streamer SPP configuration. If I set th=
em with 256, it works. I can increase the number of SPP if I add a fosphor =
block instead of the QT sink (test it up to 1024).</div><div>I still haven&=
#39;t found a solution for GNURadio complaining about the &quot;previously =
registered RFNoC block&quot; but seems another issue=C2=A0not related to th=
is one.</div><div>Thanks again for your help.</div><div><br></div><div>Kind=
 Regards,</div><div>Maria</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">El lun, 21 feb 2022 a las 18:44, Maria Mu=C3=
=B1oz (&lt;<a href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt;=
) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"auto"><div>Ok Rob, I will check everything you&#39;ve said and=
 give you an answer if I find the solution.<div dir=3D"auto">Many thanks fo=
r the help!</div><div dir=3D"auto"><br></div><div dir=3D"auto">Maria</div><=
br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El =
lun., 21 feb. 2022 18:25, Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu=
" target=3D"_blank">rkossler@nd.edu</a>&gt; escribi=C3=B3:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I&#39;m not sur=
e. Yes, it seems the first line could be a problem. Maybe your OOT rfnoc_mo=
d_tool is correctly registering your block AND the in-tree block is being r=
egistered. I don&#39;t see why that would be a problem (given that they sho=
uld both be the same anyway), but you should probably try to fix it.=C2=A0=
=C2=A0<div><br></div><div>Another idea is to enable UHD &quot;debug&quot; l=
ogging by setting environment variables as shown <a href=3D"https://files.e=
ttus.com/manual/log_8hpp.html#loghpp_levels" rel=3D"noreferrer" target=3D"_=
blank">here</a>. This may show useful information.</div><div><br></div><div=
>Another idea is to specifically set the policy to ONE_TO_ONE in your custo=
m block controller constructor as is done with several Ettus RFNoC blocks l=
ike <a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/lib/rf=
noc/fft_block_control.cpp" rel=3D"noreferrer" target=3D"_blank">this </a>FF=
T controller. But, really, this shouldn&#39;t be needed since it should be =
the default.</div><div><br></div><div>And, again, maybe see about calling i=
ssue_stream_cmd()=C2=A0 from the DDC controller instead of the rx_streamer.=
</div><div><br></div><div>Rob</div><div><br></div><div><br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Fe=
b 21, 2022 at 11:52 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmai=
l.com" rel=3D"noreferrer" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"l=
tr">This is my output for gnuradio:<div><br><div><b>REGISTRY] WARNING: Atte=
mpting to overwrite previously registered RFNoC block with noc_id,device_id=
: 0x29106060, 0xffff</b><br>[INFO] [UHD] linux; GNU C++ version 9.3.0; Boos=
t_107100; UHD_4.0.0.HEAD-0-g90ce6062<br>[INFO] [MPMD] Initializing 1 device=
(s) in parallel with args: mgmt_addr=3D192.168.1.23,type=3De3xx,product=3De=
320,serial=3D31DFBB7,claimed=3DFalse,addr=3D192.168.1.23<br>[INFO] [MPM.mai=
n] Launching USRP/MPM, version: 4.0.0.0-g57ca4235<br>[INFO] [MPM.main] Spaw=
ning RPC process...<br>[INFO] [MPM.PeriphManager] Device serial number: 31D=
FBB7<br>[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>[INFO] [MPM=
.RPCServer] RPC server ready!<br>[INFO] [MPM.RPCServer] Spawning watchdog t=
ask...<br></div></div><div>[INFO] [MPM.PeriphManager] iniciando mpm<br>[INF=
O] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192.168.=
1.23,product=3De320&#39;.<br>[INFO] [0/DmaFIFO#0] BIST passed (Estimated Mi=
nimum Throughput: 1361 MB/s)<br>[INFO] [0/DmaFIFO#0] BIST passed (Estimated=
 Minimum Throughput: 1361 MB/s)<br>[INFO] [0/Radio#0] Performing CODEC loop=
back test on channel 0 ... <br>[INFO] [0/Radio#0] CODEC loopback test passe=
d<br>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ... <br=
>[INFO] [0/Radio#0] CODEC loopback test passed<br>gr::log :DEBUG: rfnoc_rx_=
streamer0 - Committing graph...<br>[WARNING] [0/Radio#0] Attempting to set =
tick rate to 0. Skipping.<br></div><div>gr::log :DEBUG: rfnoc_rx_streamer0 =
- Sending start stream command...<br>Ogr::log :DEBUG: rfnoc_rx_streamer0 - =
UHD recv() call timed out.<br><br>Seems that the first line is the problem.=
 The 0x29106060 is my rfnoc block. Should I recompile also gnuradio to catc=
h the controller I install in UHD?</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">El lun, 21 feb 2022 a las 17:38, Ro=
b Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" rel=3D"noreferrer" target=
=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">This =
looks all correct when using uhd_usrp_probe.=C2=A0 How about when you run f=
rom gnuradio - does the UHD console log show &quot;anc2#0&quot; or &quot;Bl=
ock#0&quot; (or neither)?<div><br></div><div>Regarding your question about =
issue_stream_cmd() from the DDC controller in gnuradio, I&#39;ve forgotten =
how things are done in gnuradio - could you send your python file and maybe=
 I can suggest a modification?</div><div><br></div><div>By the way, each FP=
GA block (such as DDC) has a corresponding UHD block controller (running on=
 the host side). So, it is possible to run issue_stream_cmd from the DDC co=
ntroller rather than the rx_streamer.=C2=A0 I just don&#39;t remember how e=
xactly to do that from gnuradio.</div><div>Rob</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 21, 2022 at=
 11:27 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" rel=3D=
"noreferrer" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<d=
iv><br>I have compiled the default cpp and hpp files in-tree, as I read tha=
t this could be the issue. And uhd_usrp_probe identifies=C2=A0my block cont=
roller name (anc2):<div><br>uhd_usrp_probe <br>[INFO] [UHD] linux; GNU C++ =
version 9.3.0; Boost_107100; UHD_4.0.0.HEAD-0-g90ce6062<br>[INFO] [MPMD] In=
itializing 1 device(s) in parallel with args: mgmt_addr=3D,type=3De3xx,prod=
uct=3De320,serial=3D31DFBB7,claimed=3DFalse,addr=3D<br>[INFO] [MPM.PeriphMa=
nager] iniciando mpm<br>[INFO] [MPM.PeriphManager] init() called with devic=
e args `mgmt_addr=3D,product=3De320&#39;.<br>[INFO] [0/DmaFIFO#0] BIST pass=
ed (Estimated Minimum Throughput: 1361 MB/s)<br>[INFO] [0/DmaFIFO#0] BIST p=
assed (Estimated Minimum Throughput: 1361 MB/s)<br>[INFO] [0/Radio#0] Perfo=
rming CODEC loopback test on channel 0 ... <br>[INFO] [0/Radio#0] CODEC loo=
pback test passed<br>[INFO] [0/Radio#0] Performing CODEC loopback test on c=
hannel 1 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>=C2=A0 __=
___________________________________________________<br>=C2=A0/<br>| =C2=A0 =
=C2=A0 =C2=A0 Device: E300-Series Device<br>| =C2=A0 =C2=A0 _______________=
______________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 Mboard: ni-e320-31DFBB7<br>| =C2=A0 | =C2=A0 eeprom_ve=
rsion: 3<br>| =C2=A0 | =C2=A0 fs_version: 20200914014807<br>| =C2=A0 | =C2=
=A0 mender_artifact: v4.0.0.0_e320<br>| =C2=A0 | =C2=A0 mpm_sw_version: 4.0=
.0.0-g57ca4235<br>| =C2=A0 | =C2=A0 pid: 58144<br>| =C2=A0 | =C2=A0 product=
: e320<br>| =C2=A0 | =C2=A0 rev: 5<br>| =C2=A0 | =C2=A0 rpc_connection: rem=
ote<br>| =C2=A0 | =C2=A0 serial: 31DFBB7<br>| =C2=A0 | =C2=A0 type: e3xx<br=
>| =C2=A0 | =C2=A0 MPM Version: 3.0<br>| =C2=A0 | =C2=A0 FPGA Version: 6.0<=
br>| =C2=A0 | =C2=A0 FPGA git hash: 90ce606.dirty<br>| =C2=A0 | =C2=A0 <br>=
| =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>| =C2=A0=
 | =C2=A0 Clock sources: external, internal, gpsdo<br>| =C2=A0 | =C2=A0 Sen=
sors: ref_locked, gps_locked, fan, temp_fpga, temp_internal, temp_rf_channe=
lA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, gps_time, gps_tp=
v<br>| =C2=A0 =C2=A0 _____________________________________________________<=
br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on this=
 device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/DDC#0<br>| =C2=A0 |=
 =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0/DmaFIFO#0<br>| =C2=A0 | =C2=A0 *=
 0/Radio#0<br>| =C2=A0 | =C2=A0 <b>* 0/anc2#0</b><br>| =C2=A0 =C2=A0 ______=
_______________________________________________<br>| =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device:<br>| =C2=
=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =C2=
=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>| =C2=A0 | =C2=A0 * 0/Radi=
o#0:0=3D=3D&gt;0/DDC#0:0<br>| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#0:=
0<br>| =C2=A0 | =C2=A0 * 0/SEP#1:0=3D=3D&gt;0/DUC#0:1<br>| =C2=A0 | =C2=A0 =
* 0/DUC#0:1=3D=3D&gt;0/Radio#0:1<br>| =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=3D&g=
t;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>| =C2=A0=
 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DmaFIFO#0:0<br>| =C2=A0 | =C2=A0 * 0/DmaFI=
FO#0:0=3D=3D&gt;0/SEP#2:0<br>| =C2=A0 | =C2=A0 * 0/SEP#3:0=3D=3D&gt;0/DmaFI=
FO#0:1<br>| =C2=A0 | =C2=A0 * 0/DmaFIFO#0:1=3D=3D&gt;0/SEP#3:0<br>| =C2=A0 =
| =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/anc2#0:0<br>| =C2=A0 | =C2=A0 * 0/anc2#0:0=
=3D=3D&gt;0/SEP#4:0<br>| =C2=A0 =C2=A0 ____________________________________=
_________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX=
 Dboard: dboard<br>| =C2=A0 | =C2=A0 =C2=A0 _______________________________=
______________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =
=C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3x=
x<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Freq range: 47.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain r=
ange PGA: 0.0 to 89.8 step 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth r=
ange: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Co=
nnection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=
=A0 | =C2=A0 =C2=A0 _____________________________________________________<b=
r>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX =
Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 47.000 to=
 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 89.8 ste=
p 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000=
000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 =C2=A0 ____________=
_________________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 |=
 =C2=A0 =C2=A0 =C2=A0 RX Dboard: dboard<br>| =C2=A0 | =C2=A0 =C2=A0 _______=
______________________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/=
<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =C2=A0 | =
=C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/=
RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz=
<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =
=C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 =C2=A0 _____________________=
________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 |=
 =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0=
 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>| =C2=A0 =
| =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offs=
et: No</div><div><br></div><div><br><br>But besides that, Radio does not st=
ream anything. I attach my block controller (which I haven&#39;t modified a=
nd has been generated with rfnocmodtool).<br>I guess the problem could be w=
hat you said about the forwarding policy set as drop by default, but I do n=
ot see any parameter like &quot;one-to-one&quot; or &quot;drop&quot; anywhe=
re. I use UHD 4.0 but not sure if this issue was fixed when I installed it.=
<br>Do=C2=A0you see any problem with the controller I am using?<br><br>Than=
ks again for the help,</div></div><div><br></div><div>Maria.</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El lun, 2=
1 feb 2022 a las 16:49, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu"=
 rel=3D"noreferrer" target=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=
=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div>Hi Maria,</div><div>A few remarks:</div><div><ul><li>If you wrot=
e a custom block controller for your custom block, then the forwarding poli=
cy should already be correct (one-to-one) by default (unless your custom bl=
ock controller specifically set the policy to DROP). On the other hand, if =
you did not write a custom block controller (thus relying on the UHD defaul=
t block controller), then this explains the issue because in that case the =
default policy is &quot;drop&quot; (which will cause the issue you are seei=
ng). Note that the default behavior of DROP for the default block controlle=
r has been changed to ONE_TO_ONE on the &#39;master&#39; branch of UHD but =
has not yet been changed on branch UHD-4.1.<br></li><li>So, you don&#39;t n=
eed to implement &quot;issue_stream_cmd&quot;. You just need to verify that=
 your block&#39;s action &amp; properties forwarding policies are ONE_TO_ON=
E (which as I mentioned should be automatic if you create your own custom c=
ontroller).</li><li>You mentioned that you used rfnocmodtool to create your=
 block controller. But, my concern is that this block controller is not rea=
lly being used.=C2=A0 If you run uhd_usrp_probe, does your block show up wi=
th a custom name (that you specified) or does it show up as &quot;Block#0&q=
uot;. If it shows with the generic name &quot;Block#0&quot; it means that U=
HD is not using your block controller and instead using the default block c=
ontroller (which DROPs forwarding on UHD 4.1).=C2=A0 So, if this is the cas=
e for you, that is the issue that needs to be solved.=C2=A0 Unfortunately, =
I don&#39;t know the best way to solve this because I don&#39;t use rfnoc_m=
od_tool.=C2=A0 Take a look at the <a href=3D"https://github.com/EttusResear=
ch/uhd/blob/UHD-4.1/host/examples/rfnoc-example/lib/gain_block_control.cpp"=
 rel=3D"noreferrer" target=3D"_blank">gain block controller</a> in the uhd/=
host/examples/rfnoc-example/ folder.=C2=A0 Note that this example does very=
 little (empty constructor).=C2=A0 At the bottom is a string identifying th=
e block which is the string that will be shown with uhd_usrp_probe if UHD i=
s using your block controller.=C2=A0</li></ul><div>Let me know if this is t=
he issue. Once you get uhd_usrp_probe to &quot;see&quot; your block control=
ler, your problem should be solved. If you can&#39;t get this to work, let =
me know.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Feb 21, 2022 at 4:41 AM Maria Mu=C3=
=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" rel=3D"noreferrer" target=
=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<div><br></div><div>T=
hanks for the answer.</div><div><br></div><div>I have checked rfnoc_rx_stre=
amer.cpp, ddc_block_control.cpp and my custom=C2=A0block controller in uhd/=
host/lib folder, and I search for &quot;issue_stream_cmd&quot; in them.=C2=
=A0</div><div><br>In the rx_streamer one I see this function:</div><div><br=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">void rfnoc_rx_streamer::=
issue_stream_cmd(const stream_cmd_t&amp; stream_cmd)<br>{<br>=C2=A0 =C2=A0 =
if (get_num_channels() &gt; 1 and stream_cmd.stream_now<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 and stream_cmd.stream_mode !=3D stream_cmd_t::STREAM_MODE_STO=
P_CONTINUOUS) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 throw uhd::runtime_error(<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Invalid recv stream comman=
d - stream now on multiple channels in a &quot;<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 &quot;single streamer will fail to time align.&quot;);<br=
>=C2=A0 =C2=A0 }</blockquote><br><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">=C2=A0 =C2=A0 auto cmd =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D stream_cmd_ac=
tion_info::make(stream_cmd.stream_mode);<br>=C2=A0 =C2=A0 cmd-&gt;stream_cm=
d =3D stream_cmd;</blockquote><br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">=C2=A0 =C2=A0 for (size_t i =3D 0; i &lt; get_num_channels(); i+=
+) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 const res_source_info info(res_source_i=
nfo::INPUT_EDGE, i);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 post_action(info, cmd);=
<br>=C2=A0 =C2=A0 }<br>}</blockquote><div><br></div><div>While in the ddc I=
 see this:</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">=C2=A0 =C2=A0 =C2=A0void issue_stream_cmd(const uhd::stream_cmd_t&amp=
; stream_cmd, const size_t port)<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 RFNOC_LOG_TRACE(&quot;issue_stream_cmd(stream_mode=3D&quot; &lt;&lt=
; char(stream_cmd.stream_mode)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &lt;&lt; &quot;, port=3D&quot; &lt;&lt; port);<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 res_source_info dst_edge{res_source_info::OUTPUT_EDGE, port};<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 auto new_action =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D=
 stream_cmd_action_info::make(stream_cmd.stream_mode);<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 new_action-&gt;stream_cmd =3D stream_cmd;<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 issue_stream_cmd_action_handler(dst_edge, new_action);<br>=C2=A0=
 =C2=A0 }</blockquote><div><br></div><div>There&#39;s no &quot;issue_stream=
_cmd&quot; on my block controller, so maybe as you said the block is not fo=
rwarding actions. I&#39;m not very familiar with controller files, so could=
 you please tell me which changes I must do to have my block forwarding act=
ions or point me out to any example to take as a reference? I created my bl=
ock using rfnocmodtool and follow the gain example, so I guess this example=
 is not forwarding actions either.</div><div><br></div><div>By the way, how=
 can I stream from DDC in a GNURadiograph? If DDC is on the FPGA side, I ha=
ve to cross to the host domain through a streamer, don&#39;t I?</div><div><=
br></div><div>Kind Regards,</div><div><br></div><div>Maria</div><div><br></=
div><div>=C2=A0</div></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">El vie, 18 feb 2022 a las 15:14, Rob Kossler (&l=
t;<a href=3D"mailto:rkossler@nd.edu" rel=3D"noreferrer" target=3D"_blank">r=
kossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">By the way, if your custom FPGA blo=
ck was truly the problem (blocking streaming), the Rx LED should be on and =
you should be getting lots of Overflow. Since this is not happening, it is =
a good indication that the Rx Radio is never starting.</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18, 2022=
 at 9:10 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" rel=3D"noref=
errer" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</di=
v><div>The issue is likely related to &quot;action forwarding&quot; of the =
streaming command. When your application asks to start streaming, it typica=
lly does so by calling rx_streamer-&gt;issue_stream_cmd().=C2=A0 This &quot=
;action&quot; will then be forwarded to the next upstream block controller =
(typically DDC block controller) which will see the command and forward=C2=
=A0it to the next upstream block controller (typically the Rx radio control=
ler).=C2=A0 The Rx radio block controller will then start the streaming.=C2=
=A0 As an example, let&#39;s say your rx_streamer requested a fixed number =
of samples (say 1000) and assume that your DDC decimation is 4.=C2=A0 With =
this architecture, the DDC block controller can intercept the action and ch=
ange the requested number of samples from 1000 to 4000 so that when the rad=
io block controller receives the command, it will stream for exactly 4000 s=
amples (which will provide 1000 samples out of the DDC). Note that all of t=
his &quot;action&quot; propagation occurs in UHD land (not on the FPGA).=C2=
=A0 So, if your custom block controller is not forwarding actions, the Radi=
o controller never gets the action and thus never starts the streaming.=C2=
=A0 One way you can verify this is if you are able to call issue_stream_cmd=
() from the DDC controller rather than the rx_streamer.=C2=A0 This should c=
ause your streaming to start.=C2=A0</div><div>Rob</div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18, 2022 at 8:=
13 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" rel=3D"nor=
eferrer" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<div><=
br></div><div>I&#39;m using a USRP E320 with UHD 4.0 and GNURadio 3.8 for r=
eceiving samples=C2=A0through=C2=A0an RX RFNoC Radio block and performing s=
ome processing in a custom RFNoC block.</div><div>I have created my block u=
sing rfnocmodtool, modifying the Verilog and yml files for my custom block.=
 I left the cpp and hpp files as default, but I copied them to the UHD inst=
all path to see the name of my block with uhd_usrp_probe.</div><div>I have =
tested satisfactorily my custom block with a gnuradio graph like this:</div=
><div><br></div><div>Host block =3D&gt; rfnoc tx streamer =3D&gt; custom RF=
NoC block =3D&gt; rfnoc rx streamer =3D&gt; Host block</div><div><br></div>=
<div>I have also tested it for transmission=C2=A0through the rfnoc tx radio=
, and works fine:</div><div><br></div><div>Host block =3D&gt; rfnoc tx stre=
amer =3D&gt; custom RFNoC block =3D&gt; RFNoC DUC=3D&gt; RFNoC TX Radio<br>=
</div><div><br></div><div>But when I try to receive from the radio with the=
 following graph, rx led does not light up and gnuradio give time out:</div=
><div>RFNoC RX Radio =3D&gt;=C2=A0

RFNoC DDC=C2=A0=C2=A0=C2=A0=3D&gt; custom RFNoC block =3D&gt;=C2=A0=C2=A0rf=
noc rx streamer =3D&gt;Host block</div><div><br></div><div>If I remove my c=
ustom block from the last graph, I can receive samples and the led is on.</=
div><div><br></div><div>It seems like the custom block is blocking somehow =
the samples. I tried with different sampling rates and spp values for the r=
adio but nothing works.=C2=A0</div><div><br></div><div>Any help on this wil=
l be appreciated.</div><div><br></div><div>Kind Regards,</div><div><br></di=
v><div>Maria</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div></div>
</blockquote></div>

--000000000000701f6805d8c124d8--

--===============0650165033973912932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0650165033973912932==--

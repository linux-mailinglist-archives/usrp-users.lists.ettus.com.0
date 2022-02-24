Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EE24C398B
	for <lists+usrp-users@lfdr.de>; Fri, 25 Feb 2022 00:12:35 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6D2C738510F
	for <lists+usrp-users@lfdr.de>; Thu, 24 Feb 2022 18:12:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="T4W6RiCn";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id CB39C384691
	for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 18:11:37 -0500 (EST)
Received: by mail-yb1-f181.google.com with SMTP id bt13so2525411ybb.2
        for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 15:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jd4SuTh0BVaulkbd7WBolNjCopxTSUS8/sIymtt+dDg=;
        b=T4W6RiCnGb0XAyS3ICCVhz/9p9PyPQy7Mgt93UJLFJHjRF4CgEn2hKmEkjv8VPI85k
         8wOGE5LxlW/cTjIi+l9H+W7mrqu07UV3Kj2CPIlhqmiIL8QYLoikVi5MnJ1zlDEwyj5X
         HORfYdfSQ6E1A79L/lCGzqzBWYTgAQbbJ/E51ujpEtM+84/CGFT4ty8t6og22dGkI7NX
         aR5rtYwoI2vko6sWiifGC67N44dzNabFkPkS5DCaVRXV77MorERXad0aQMi47TICmlN7
         GYVX8dpcOktnwjc1nV9x1ZHvU8rCVfMlEJbUsLkwxblCSO4Z1GRIlpHx3sHNZCx7PnuA
         sRkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jd4SuTh0BVaulkbd7WBolNjCopxTSUS8/sIymtt+dDg=;
        b=ukD19CDtfHerlobDaCvHpdAibo9e40FH82Lp903+XlmDIqRkvW9L1VpdlEddtE+PS0
         auUMO1p1Ci20t0+5TPHhTX2Dd/Yt1CbPCoCB19wuNJiDhqYQSSj14QLWaW56BMRn2G3V
         Gpp/6tnHRO6/tqoUJm+WH1sSp07nNqO5C34U66HS7pQ4tA8hsID/BdancpZiVAYCHJJE
         b53dgMRunzR4Rds9+CPkeVPQuQkC3sCfsaEJaOfRmDY5nBfUFLelRgjTUEAYqzOu65Tb
         jJdM00suRwEzqJeS16ofKRvKTzmXU40dKsreTd1mN32TXwIZdG5O1Rs/uR26rEi84Pes
         aKpw==
X-Gm-Message-State: AOAM531xUIECzNTIiabExqiXJFPo92h2APzAvBc0p3mIrzFfIBnbCZUx
	w81q9HQ42ZGLnbp00fqOfUL79ESTdnD0wHceEtHVP+AGjvo5MQ==
X-Google-Smtp-Source: ABdhPJxa/ns9diFD59AYfmz+6qCTsoF4JsBpKkMRfP65oPPNlsbrUlVFCxb5somaT7lSbheABCCxyJYcs2tDF/NYtv4=
X-Received: by 2002:a25:90d:0:b0:619:52e6:9f9b with SMTP id
 13-20020a25090d000000b0061952e69f9bmr4802433ybj.447.1645744296732; Thu, 24
 Feb 2022 15:11:36 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQVHXis5xAXDKZWo5WowfzM4zKfx5gVgTvjxZ=8WKaT7cg@mail.gmail.com>
 <CAB__hTSK9qoreSo_FBt1vja8aKnyns33R2eFjaqnz6gDa2qtRQ@mail.gmail.com>
 <CAB__hTQQQp0QJ5EyNg00jxo4LViQb1x1vaZQb4O9qCtgHop02g@mail.gmail.com>
 <CAG16vQVrRJxwaQXCovrMuwWs5FLOY1MkD8N2K7s=tZvTiUnuGQ@mail.gmail.com>
 <CAB__hTR7fi_jc2QDWxqCFbb+AU4xVKAK-6q3F-u9CwxH=ZdXpQ@mail.gmail.com>
 <CAG16vQWS1x7v1QE7QXgeiSbmxNU-pgtnb4jicXbP3XHh92GSeQ@mail.gmail.com>
 <CAB__hTQMghpEzTyUOhx6FAjWL0_fXNtk0pi47f-4y4YUMKhDzg@mail.gmail.com>
 <CAG16vQUXp8gCU4g4UgLTP9UEyHdANiz8z6M1OP8ruoFoNJE-4w@mail.gmail.com>
 <CAB__hTQhKHboXq_t1x+Dk889Ng6+UUEcw8O=JnDbx-3yeiP4xA@mail.gmail.com>
 <CAG16vQUZ4NbhdgwpimP244LY-V2Bd2gPb=va2ZRf_XkPi_yV9w@mail.gmail.com> <CAG16vQVrMfgujXGnQSCCjSKxt-NAC+mcdf3+snUBKhYtYLYi_Q@mail.gmail.com>
In-Reply-To: <CAG16vQVrMfgujXGnQSCCjSKxt-NAC+mcdf3+snUBKhYtYLYi_Q@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 24 Feb 2022 18:11:25 -0500
Message-ID: <CAB__hTRwFX0=mCNoxZJ6XVs+OWcg_YCjzrn8OTTUM8Mz+XBCSA@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: LKKYDQU2LGUTLC45XZOC35H7BUQHEZ7T
X-Message-ID-Hash: LKKYDQU2LGUTLC45XZOC35H7BUQHEZ7T
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom block drop received packages
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LKKYDQU2LGUTLC45XZOC35H7BUQHEZ7T/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3129974702926496544=="

--===============3129974702926496544==
Content-Type: multipart/alternative; boundary="00000000000032ed3e05d8cbb4a7"

--00000000000032ed3e05d8cbb4a7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maria,
I'm glad that things are working well now.  I don't really understand what
the problem was (possibly related to MTU forwarding policy that defaults to
DROP in your UHD version and thus must be explicitly set to one-to-one in
your custom controller). Good luck.
Rob

On Thu, Feb 24, 2022 at 5:35 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote=
:

> Hi Rob,
>
> Good news!
> I managed to get my block receiving samples through the RX radio. It
> turned out to be a problem with the Radio and Streamer SPP configuration.
> If I set them with 256, it works. I can increase the number of SPP if I a=
dd
> a fosphor block instead of the QT sink (test it up to 1024).
> I still haven't found a solution for GNURadio complaining about the
> "previously registered RFNoC block" but seems another issue not related t=
o
> this one.
> Thanks again for your help.
>
> Kind Regards,
> Maria
>
> El lun, 21 feb 2022 a las 18:44, Maria Mu=C3=B1oz (<mamuki92@gmail.com>)
> escribi=C3=B3:
>
>> Ok Rob, I will check everything you've said and give you an answer if I
>> find the solution.
>> Many thanks for the help!
>>
>> Maria
>>
>>
>> El lun., 21 feb. 2022 18:25, Rob Kossler <rkossler@nd.edu> escribi=C3=B3=
:
>>
>>> I'm not sure. Yes, it seems the first line could be a problem. Maybe
>>> your OOT rfnoc_mod_tool is correctly registering your block AND the in-=
tree
>>> block is being registered. I don't see why that would be a problem (giv=
en
>>> that they should both be the same anyway), but you should probably try =
to
>>> fix it.
>>>
>>> Another idea is to enable UHD "debug" logging by setting environment
>>> variables as shown here
>>> <https://files.ettus.com/manual/log_8hpp.html#loghpp_levels>. This may
>>> show useful information.
>>>
>>> Another idea is to specifically set the policy to ONE_TO_ONE in your
>>> custom block controller constructor as is done with several Ettus RFNoC
>>> blocks like this
>>> <https://github.com/EttusResearch/uhd/blob/master/host/lib/rfnoc/fft_bl=
ock_control.cpp>FFT
>>> controller. But, really, this shouldn't be needed since it should be th=
e
>>> default.
>>>
>>> And, again, maybe see about calling issue_stream_cmd()  from the DDC
>>> controller instead of the rx_streamer.
>>>
>>> Rob
>>>
>>>
>>>
>>> On Mon, Feb 21, 2022 at 11:52 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> =
wrote:
>>>
>>>> This is my output for gnuradio:
>>>>
>>>> *REGISTRY] WARNING: Attempting to overwrite previously registered RFNo=
C
>>>> block with noc_id,device_id: 0x29106060, 0xffff*
>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>> UHD_4.0.0.HEAD-0-g90ce6062
>>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>>> mgmt_addr=3D192.168.1.23,type=3De3xx,product=3De320,serial=3D31DFBB7,c=
laimed=3DFalse,addr=3D192.168.1.23
>>>> [INFO] [MPM.main] Launching USRP/MPM, version: 4.0.0.0-g57ca4235
>>>> [INFO] [MPM.main] Spawning RPC process...
>>>> [INFO] [MPM.PeriphManager] Device serial number: 31DFBB7
>>>> [INFO] [MPM.PeriphManager] Found 1 daughterboard(s).
>>>> [INFO] [MPM.RPCServer] RPC server ready!
>>>> [INFO] [MPM.RPCServer] Spawning watchdog task...
>>>> [INFO] [MPM.PeriphManager] iniciando mpm
>>>> [INFO] [MPM.PeriphManager] init() called with device args
>>>> `mgmt_addr=3D192.168.1.23,product=3De320'.
>>>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
>>>> MB/s)
>>>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
>>>> MB/s)
>>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>>>> [INFO] [0/Radio#0] CODEC loopback test passed
>>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>>>> [INFO] [0/Radio#0] CODEC loopback test passed
>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Committing graph...
>>>> [WARNING] [0/Radio#0] Attempting to set tick rate to 0. Skipping.
>>>> gr::log :DEBUG: rfnoc_rx_streamer0 - Sending start stream command...
>>>> Ogr::log :DEBUG: rfnoc_rx_streamer0 - UHD recv() call timed out.
>>>>
>>>> Seems that the first line is the problem. The 0x29106060 is my rfnoc
>>>> block. Should I recompile also gnuradio to catch the controller I inst=
all
>>>> in UHD?
>>>>
>>>> El lun, 21 feb 2022 a las 17:38, Rob Kossler (<rkossler@nd.edu>)
>>>> escribi=C3=B3:
>>>>
>>>>> This looks all correct when using uhd_usrp_probe.  How about when you
>>>>> run from gnuradio - does the UHD console log show "anc2#0" or "Block#=
0" (or
>>>>> neither)?
>>>>>
>>>>> Regarding your question about issue_stream_cmd() from the DDC
>>>>> controller in gnuradio, I've forgotten how things are done in gnuradi=
o -
>>>>> could you send your python file and maybe I can suggest a modificatio=
n?
>>>>>
>>>>> By the way, each FPGA block (such as DDC) has a corresponding UHD
>>>>> block controller (running on the host side). So, it is possible to ru=
n
>>>>> issue_stream_cmd from the DDC controller rather than the rx_streamer.=
  I
>>>>> just don't remember how exactly to do that from gnuradio.
>>>>> Rob
>>>>>
>>>>> On Mon, Feb 21, 2022 at 11:27 AM Maria Mu=C3=B1oz <mamuki92@gmail.com=
>
>>>>> wrote:
>>>>>
>>>>>> Hi Rob,
>>>>>>
>>>>>> I have compiled the default cpp and hpp files in-tree, as I read tha=
t
>>>>>> this could be the issue. And uhd_usrp_probe identifies my block cont=
roller
>>>>>> name (anc2):
>>>>>>
>>>>>> uhd_usrp_probe
>>>>>> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
>>>>>> UHD_4.0.0.HEAD-0-g90ce6062
>>>>>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>>>>>> mgmt_addr=3D,type=3De3xx,product=3De320,serial=3D31DFBB7,claimed=3DF=
alse,addr=3D
>>>>>> [INFO] [MPM.PeriphManager] iniciando mpm
>>>>>> [INFO] [MPM.PeriphManager] init() called with device args
>>>>>> `mgmt_addr=3D,product=3De320'.
>>>>>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
>>>>>> MB/s)
>>>>>> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361
>>>>>> MB/s)
>>>>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
>>>>>> [INFO] [0/Radio#0] CODEC loopback test passed
>>>>>> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
>>>>>> [INFO] [0/Radio#0] CODEC loopback test passed
>>>>>>   _____________________________________________________
>>>>>>  /
>>>>>> |       Device: E300-Series Device
>>>>>> |     _____________________________________________________
>>>>>> |    /
>>>>>> |   |       Mboard: ni-e320-31DFBB7
>>>>>> |   |   eeprom_version: 3
>>>>>> |   |   fs_version: 20200914014807
>>>>>> |   |   mender_artifact: v4.0.0.0_e320
>>>>>> |   |   mpm_sw_version: 4.0.0.0-g57ca4235
>>>>>> |   |   pid: 58144
>>>>>> |   |   product: e320
>>>>>> |   |   rev: 5
>>>>>> |   |   rpc_connection: remote
>>>>>> |   |   serial: 31DFBB7
>>>>>> |   |   type: e3xx
>>>>>> |   |   MPM Version: 3.0
>>>>>> |   |   FPGA Version: 6.0
>>>>>> |   |   FPGA git hash: 90ce606.dirty
>>>>>> |   |
>>>>>> |   |   Time sources:  internal, external, gpsdo
>>>>>> |   |   Clock sources: external, internal, gpsdo
>>>>>> |   |   Sensors: ref_locked, gps_locked, fan, temp_fpga,
>>>>>> temp_internal, temp_rf_channelA, temp_rf_channelB, temp_main_power,
>>>>>> gps_gpgga, gps_sky, gps_time, gps_tpv
>>>>>> |     _____________________________________________________
>>>>>> |    /
>>>>>> |   |       RFNoC blocks on this device:
>>>>>> |   |
>>>>>> |   |   * 0/DDC#0
>>>>>> |   |   * 0/DUC#0
>>>>>> |   |   * 0/DmaFIFO#0
>>>>>> |   |   * 0/Radio#0
>>>>>> |   |   ** 0/anc2#0*
>>>>>> |     _____________________________________________________
>>>>>> |    /
>>>>>> |   |       Static connections on this device:
>>>>>> |   |
>>>>>> |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
>>>>>> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
>>>>>> |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
>>>>>> |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
>>>>>> |   |   * 0/SEP#1:0=3D=3D>0/DUC#0:1
>>>>>> |   |   * 0/DUC#0:1=3D=3D>0/Radio#0:1
>>>>>> |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
>>>>>> |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
>>>>>> |   |   * 0/SEP#2:0=3D=3D>0/DmaFIFO#0:0
>>>>>> |   |   * 0/DmaFIFO#0:0=3D=3D>0/SEP#2:0
>>>>>> |   |   * 0/SEP#3:0=3D=3D>0/DmaFIFO#0:1
>>>>>> |   |   * 0/DmaFIFO#0:1=3D=3D>0/SEP#3:0
>>>>>> |   |   * 0/SEP#4:0=3D=3D>0/anc2#0:0
>>>>>> |   |   * 0/anc2#0:0=3D=3D>0/SEP#4:0
>>>>>> |     _____________________________________________________
>>>>>> |    /
>>>>>> |   |       TX Dboard: dboard
>>>>>> |   |     _____________________________________________________
>>>>>> |   |    /
>>>>>> |   |   |       TX Frontend: 0
>>>>>> |   |   |   Name: E3xx
>>>>>> |   |   |   Antennas: TX/RX
>>>>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
>>>>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>>>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>>>> |   |   |   Connection Type: IQ
>>>>>> |   |   |   Uses LO offset: No
>>>>>> |   |     _____________________________________________________
>>>>>> |   |    /
>>>>>> |   |   |       TX Frontend: 1
>>>>>> |   |   |   Name: E3xx
>>>>>> |   |   |   Antennas: TX/RX
>>>>>> |   |   |   Freq range: 47.000 to 6000.000 MHz
>>>>>> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
>>>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>>>> |   |   |   Connection Type: IQ
>>>>>> |   |   |   Uses LO offset: No
>>>>>> |     _____________________________________________________
>>>>>> |    /
>>>>>> |   |       RX Dboard: dboard
>>>>>> |   |     _____________________________________________________
>>>>>> |   |    /
>>>>>> |   |   |       RX Frontend: 0
>>>>>> |   |   |   Name: E3xx
>>>>>> |   |   |   Antennas: RX2, TX/RX
>>>>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
>>>>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>>>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>>>> |   |   |   Connection Type: IQ
>>>>>> |   |   |   Uses LO offset: No
>>>>>> |   |     _____________________________________________________
>>>>>> |   |    /
>>>>>> |   |   |       RX Frontend: 1
>>>>>> |   |   |   Name: E3xx
>>>>>> |   |   |   Antennas: RX2, TX/RX
>>>>>> |   |   |   Freq range: 70.000 to 6000.000 MHz
>>>>>> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
>>>>>> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
>>>>>> |   |   |   Connection Type: IQ
>>>>>> |   |   |   Uses LO offset: No
>>>>>>
>>>>>>
>>>>>>
>>>>>> But besides that, Radio does not stream anything. I attach my block
>>>>>> controller (which I haven't modified and has been generated with
>>>>>> rfnocmodtool).
>>>>>> I guess the problem could be what you said about the forwarding
>>>>>> policy set as drop by default, but I do not see any parameter like
>>>>>> "one-to-one" or "drop" anywhere. I use UHD 4.0 but not sure if this =
issue
>>>>>> was fixed when I installed it.
>>>>>> Do you see any problem with the controller I am using?
>>>>>>
>>>>>> Thanks again for the help,
>>>>>>
>>>>>> Maria.
>>>>>>
>>>>>> El lun, 21 feb 2022 a las 16:49, Rob Kossler (<rkossler@nd.edu>)
>>>>>> escribi=C3=B3:
>>>>>>
>>>>>>> Hi Maria,
>>>>>>> A few remarks:
>>>>>>>
>>>>>>>    - If you wrote a custom block controller for your custom block,
>>>>>>>    then the forwarding policy should already be correct (one-to-one=
) by
>>>>>>>    default (unless your custom block controller specifically set th=
e policy to
>>>>>>>    DROP). On the other hand, if you did not write a custom block co=
ntroller
>>>>>>>    (thus relying on the UHD default block controller), then this ex=
plains the
>>>>>>>    issue because in that case the default policy is "drop" (which w=
ill cause
>>>>>>>    the issue you are seeing). Note that the default behavior of DRO=
P for the
>>>>>>>    default block controller has been changed to ONE_TO_ONE on the '=
master'
>>>>>>>    branch of UHD but has not yet been changed on branch UHD-4.1.
>>>>>>>    - So, you don't need to implement "issue_stream_cmd". You just
>>>>>>>    need to verify that your block's action & properties forwarding =
policies
>>>>>>>    are ONE_TO_ONE (which as I mentioned should be automatic if you =
create your
>>>>>>>    own custom controller).
>>>>>>>    - You mentioned that you used rfnocmodtool to create your block
>>>>>>>    controller. But, my concern is that this block controller is not=
 really
>>>>>>>    being used.  If you run uhd_usrp_probe, does your block show up =
with a
>>>>>>>    custom name (that you specified) or does it show up as "Block#0"=
. If it
>>>>>>>    shows with the generic name "Block#0" it means that UHD is not u=
sing your
>>>>>>>    block controller and instead using the default block controller =
(which
>>>>>>>    DROPs forwarding on UHD 4.1).  So, if this is the case for you, =
that is the
>>>>>>>    issue that needs to be solved.  Unfortunately, I don't know the =
best way to
>>>>>>>    solve this because I don't use rfnoc_mod_tool.  Take a look at t=
he gain
>>>>>>>    block controller
>>>>>>>    <https://github.com/EttusResearch/uhd/blob/UHD-4.1/host/examples=
/rfnoc-example/lib/gain_block_control.cpp>
>>>>>>>    in the uhd/host/examples/rfnoc-example/ folder.  Note that this =
example
>>>>>>>    does very little (empty constructor).  At the bottom is a string
>>>>>>>    identifying the block which is the string that will be shown wit=
h
>>>>>>>    uhd_usrp_probe if UHD is using your block controller.
>>>>>>>
>>>>>>> Let me know if this is the issue. Once you get uhd_usrp_probe to
>>>>>>> "see" your block controller, your problem should be solved. If you =
can't
>>>>>>> get this to work, let me know.
>>>>>>> Rob
>>>>>>>
>>>>>>> On Mon, Feb 21, 2022 at 4:41 AM Maria Mu=C3=B1oz <mamuki92@gmail.co=
m>
>>>>>>> wrote:
>>>>>>>
>>>>>>>> Hi Rob,
>>>>>>>>
>>>>>>>> Thanks for the answer.
>>>>>>>>
>>>>>>>> I have checked rfnoc_rx_streamer.cpp, ddc_block_control.cpp and my
>>>>>>>> custom block controller in uhd/host/lib folder, and I search for
>>>>>>>> "issue_stream_cmd" in them.
>>>>>>>>
>>>>>>>> In the rx_streamer one I see this function:
>>>>>>>>
>>>>>>>> void rfnoc_rx_streamer::issue_stream_cmd(const stream_cmd_t&
>>>>>>>>> stream_cmd)
>>>>>>>>> {
>>>>>>>>>     if (get_num_channels() > 1 and stream_cmd.stream_now
>>>>>>>>>         and stream_cmd.stream_mode !=3D
>>>>>>>>> stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS) {
>>>>>>>>>         throw uhd::runtime_error(
>>>>>>>>>             "Invalid recv stream command - stream now on multiple
>>>>>>>>> channels in a "
>>>>>>>>>             "single streamer will fail to time align.");
>>>>>>>>>     }
>>>>>>>>
>>>>>>>>
>>>>>>>>     auto cmd        =3D
>>>>>>>>> stream_cmd_action_info::make(stream_cmd.stream_mode);
>>>>>>>>>     cmd->stream_cmd =3D stream_cmd;
>>>>>>>>
>>>>>>>>
>>>>>>>>     for (size_t i =3D 0; i < get_num_channels(); i++) {
>>>>>>>>>         const res_source_info info(res_source_info::INPUT_EDGE, i=
);
>>>>>>>>>         post_action(info, cmd);
>>>>>>>>>     }
>>>>>>>>> }
>>>>>>>>
>>>>>>>>
>>>>>>>> While in the ddc I see this:
>>>>>>>>
>>>>>>>>      void issue_stream_cmd(const uhd::stream_cmd_t& stream_cmd,
>>>>>>>>> const size_t port)
>>>>>>>>>     {
>>>>>>>>>         RFNOC_LOG_TRACE("issue_stream_cmd(stream_mode=3D" <<
>>>>>>>>> char(stream_cmd.stream_mode)
>>>>>>>>>                                                         << ",
>>>>>>>>> port=3D" << port);
>>>>>>>>>         res_source_info dst_edge{res_source_info::OUTPUT_EDGE,
>>>>>>>>> port};
>>>>>>>>>         auto new_action        =3D
>>>>>>>>> stream_cmd_action_info::make(stream_cmd.stream_mode);
>>>>>>>>>         new_action->stream_cmd =3D stream_cmd;
>>>>>>>>>         issue_stream_cmd_action_handler(dst_edge, new_action);
>>>>>>>>>     }
>>>>>>>>
>>>>>>>>
>>>>>>>> There's no "issue_stream_cmd" on my block controller, so maybe as
>>>>>>>> you said the block is not forwarding actions. I'm not very familia=
r with
>>>>>>>> controller files, so could you please tell me which changes I must=
 do to
>>>>>>>> have my block forwarding actions or point me out to any example to=
 take as
>>>>>>>> a reference? I created my block using rfnocmodtool and follow the =
gain
>>>>>>>> example, so I guess this example is not forwarding actions either.
>>>>>>>>
>>>>>>>> By the way, how can I stream from DDC in a GNURadiograph? If DDC i=
s
>>>>>>>> on the FPGA side, I have to cross to the host domain through a str=
eamer,
>>>>>>>> don't I?
>>>>>>>>
>>>>>>>> Kind Regards,
>>>>>>>>
>>>>>>>> Maria
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> El vie, 18 feb 2022 a las 15:14, Rob Kossler (<rkossler@nd.edu>)
>>>>>>>> escribi=C3=B3:
>>>>>>>>
>>>>>>>>> By the way, if your custom FPGA block was truly the problem
>>>>>>>>> (blocking streaming), the Rx LED should be on and you should be g=
etting
>>>>>>>>> lots of Overflow. Since this is not happening, it is a good indic=
ation that
>>>>>>>>> the Rx Radio is never starting.
>>>>>>>>>
>>>>>>>>> On Fri, Feb 18, 2022 at 9:10 AM Rob Kossler <rkossler@nd.edu>
>>>>>>>>> wrote:
>>>>>>>>>
>>>>>>>>>> Hi Maria,
>>>>>>>>>> The issue is likely related to "action forwarding" of the
>>>>>>>>>> streaming command. When your application asks to start streaming=
, it
>>>>>>>>>> typically does so by calling rx_streamer->issue_stream_cmd().  T=
his
>>>>>>>>>> "action" will then be forwarded to the next upstream block contr=
oller
>>>>>>>>>> (typically DDC block controller) which will see the command and =
forward it
>>>>>>>>>> to the next upstream block controller (typically the Rx radio co=
ntroller).
>>>>>>>>>> The Rx radio block controller will then start the streaming.  As=
 an
>>>>>>>>>> example, let's say your rx_streamer requested a fixed number of =
samples
>>>>>>>>>> (say 1000) and assume that your DDC decimation is 4.  With this
>>>>>>>>>> architecture, the DDC block controller can intercept the action =
and change
>>>>>>>>>> the requested number of samples from 1000 to 4000 so that when t=
he radio
>>>>>>>>>> block controller receives the command, it will stream for exactl=
y 4000
>>>>>>>>>> samples (which will provide 1000 samples out of the DDC). Note t=
hat all of
>>>>>>>>>> this "action" propagation occurs in UHD land (not on the FPGA). =
 So, if
>>>>>>>>>> your custom block controller is not forwarding actions, the Radi=
o
>>>>>>>>>> controller never gets the action and thus never starts the strea=
ming.  One
>>>>>>>>>> way you can verify this is if you are able to call issue_stream_=
cmd() from
>>>>>>>>>> the DDC controller rather than the rx_streamer.  This should cau=
se your
>>>>>>>>>> streaming to start.
>>>>>>>>>> Rob
>>>>>>>>>>
>>>>>>>>>> On Fri, Feb 18, 2022 at 8:13 AM Maria Mu=C3=B1oz <mamuki92@gmail=
.com>
>>>>>>>>>> wrote:
>>>>>>>>>>
>>>>>>>>>>> Hi all,
>>>>>>>>>>>
>>>>>>>>>>> I'm using a USRP E320 with UHD 4.0 and GNURadio 3.8 for
>>>>>>>>>>> receiving samples through an RX RFNoC Radio block and performin=
g some
>>>>>>>>>>> processing in a custom RFNoC block.
>>>>>>>>>>> I have created my block using rfnocmodtool, modifying the
>>>>>>>>>>> Verilog and yml files for my custom block. I left the cpp and h=
pp files as
>>>>>>>>>>> default, but I copied them to the UHD install path to see the n=
ame of my
>>>>>>>>>>> block with uhd_usrp_probe.
>>>>>>>>>>> I have tested satisfactorily my custom block with a gnuradio
>>>>>>>>>>> graph like this:
>>>>>>>>>>>
>>>>>>>>>>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> =
rfnoc
>>>>>>>>>>> rx streamer =3D> Host block
>>>>>>>>>>>
>>>>>>>>>>> I have also tested it for transmission through the rfnoc tx
>>>>>>>>>>> radio, and works fine:
>>>>>>>>>>>
>>>>>>>>>>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> =
RFNoC
>>>>>>>>>>> DUC=3D> RFNoC TX Radio
>>>>>>>>>>>
>>>>>>>>>>> But when I try to receive from the radio with the following
>>>>>>>>>>> graph, rx led does not light up and gnuradio give time out:
>>>>>>>>>>> RFNoC RX Radio =3D>  RFNoC DDC   =3D> custom RFNoC block =3D>  =
rfnoc
>>>>>>>>>>> rx streamer =3D>Host block
>>>>>>>>>>>
>>>>>>>>>>> If I remove my custom block from the last graph, I can receive
>>>>>>>>>>> samples and the led is on.
>>>>>>>>>>>
>>>>>>>>>>> It seems like the custom block is blocking somehow the samples.
>>>>>>>>>>> I tried with different sampling rates and spp values for the ra=
dio but
>>>>>>>>>>> nothing works.
>>>>>>>>>>>
>>>>>>>>>>> Any help on this will be appreciated.
>>>>>>>>>>>
>>>>>>>>>>> Kind Regards,
>>>>>>>>>>>
>>>>>>>>>>> Maria
>>>>>>>>>>> _______________________________________________
>>>>>>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>>>>>>>>>>>
>>>>>>>>>>

--00000000000032ed3e05d8cbb4a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Maria,<div>I&#39;m glad that things are working well no=
w.=C2=A0 I don&#39;t really understand what the problem was (possibly relat=
ed to MTU forwarding policy that defaults to DROP in your UHD version and t=
hus must be explicitly set to one-to-one in your custom controller). Good l=
uck.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Feb 24, 2022 at 5:35 AM Maria Mu=C3=B1oz &l=
t;<a href=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi Rob,<div><br></div><div>Good news!=C2=A0</div><div>I managed to get my b=
lock receiving samples through the RX radio. It turned out to be a problem =
with the Radio and Streamer SPP configuration. If I set them with 256, it w=
orks. I can increase the number of SPP if I add a fosphor block instead of =
the QT sink (test it up to 1024).</div><div>I still haven&#39;t found a sol=
ution for GNURadio complaining about the &quot;previously registered RFNoC =
block&quot; but seems another issue=C2=A0not related to this one.</div><div=
>Thanks again for your help.</div><div><br></div><div>Kind Regards,</div><d=
iv>Maria</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">El lun, 21 feb 2022 a las 18:44, Maria Mu=C3=B1oz (&lt;<a h=
ref=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&=
gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"auto"><div>Ok Rob, I will check everything you&#39;ve said =
and give you an answer if I find the solution.<div dir=3D"auto">Many thanks=
 for the help!</div><div dir=3D"auto"><br></div><div dir=3D"auto">Maria</di=
v><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
El lun., 21 feb. 2022 18:25, Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.=
edu" target=3D"_blank">rkossler@nd.edu</a>&gt; escribi=C3=B3:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I&#39;m not =
sure. Yes, it seems the first line could be a problem. Maybe your OOT rfnoc=
_mod_tool is correctly registering your block AND the in-tree block is bein=
g registered. I don&#39;t see why that would be a problem (given that they =
should both be the same anyway), but you should probably try to fix it.=C2=
=A0=C2=A0<div><br></div><div>Another idea is to enable UHD &quot;debug&quot=
; logging by setting environment variables as shown <a href=3D"https://file=
s.ettus.com/manual/log_8hpp.html#loghpp_levels" rel=3D"noreferrer" target=
=3D"_blank">here</a>. This may show useful information.</div><div><br></div=
><div>Another idea is to specifically set the policy to ONE_TO_ONE in your =
custom block controller constructor as is done with several Ettus RFNoC blo=
cks like <a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/l=
ib/rfnoc/fft_block_control.cpp" rel=3D"noreferrer" target=3D"_blank">this <=
/a>FFT controller. But, really, this shouldn&#39;t be needed since it shoul=
d be the default.</div><div><br></div><div>And, again, maybe see about call=
ing issue_stream_cmd()=C2=A0 from the DDC controller instead of the rx_stre=
amer.</div><div><br></div><div>Rob</div><div><br></div><div><br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n, Feb 21, 2022 at 11:52 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92=
@gmail.com" rel=3D"noreferrer" target=3D"_blank">mamuki92@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">This is my output for gnuradio:<div><br><div><b>REGISTRY] WARNING:=
 Attempting to overwrite previously registered RFNoC block with noc_id,devi=
ce_id: 0x29106060, 0xffff</b><br>[INFO] [UHD] linux; GNU C++ version 9.3.0;=
 Boost_107100; UHD_4.0.0.HEAD-0-g90ce6062<br>[INFO] [MPMD] Initializing 1 d=
evice(s) in parallel with args: mgmt_addr=3D192.168.1.23,type=3De3xx,produc=
t=3De320,serial=3D31DFBB7,claimed=3DFalse,addr=3D192.168.1.23<br>[INFO] [MP=
M.main] Launching USRP/MPM, version: 4.0.0.0-g57ca4235<br>[INFO] [MPM.main]=
 Spawning RPC process...<br>[INFO] [MPM.PeriphManager] Device serial number=
: 31DFBB7<br>[INFO] [MPM.PeriphManager] Found 1 daughterboard(s).<br>[INFO]=
 [MPM.RPCServer] RPC server ready!<br>[INFO] [MPM.RPCServer] Spawning watch=
dog task...<br></div></div><div>[INFO] [MPM.PeriphManager] iniciando mpm<br=
>[INFO] [MPM.PeriphManager] init() called with device args `mgmt_addr=3D192=
.168.1.23,product=3De320&#39;.<br>[INFO] [0/DmaFIFO#0] BIST passed (Estimat=
ed Minimum Throughput: 1361 MB/s)<br>[INFO] [0/DmaFIFO#0] BIST passed (Esti=
mated Minimum Throughput: 1361 MB/s)<br>[INFO] [0/Radio#0] Performing CODEC=
 loopback test on channel 0 ... <br>[INFO] [0/Radio#0] CODEC loopback test =
passed<br>[INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ..=
. <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>gr::log :DEBUG: rfno=
c_rx_streamer0 - Committing graph...<br>[WARNING] [0/Radio#0] Attempting to=
 set tick rate to 0. Skipping.<br></div><div>gr::log :DEBUG: rfnoc_rx_strea=
mer0 - Sending start stream command...<br>Ogr::log :DEBUG: rfnoc_rx_streame=
r0 - UHD recv() call timed out.<br><br>Seems that the first line is the pro=
blem. The 0x29106060 is my rfnoc block. Should I recompile also gnuradio to=
 catch the controller I install in UHD?</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">El lun, 21 feb 2022 a las 17:3=
8, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" rel=3D"noreferrer" t=
arget=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">=
This looks all correct when using uhd_usrp_probe.=C2=A0 How about when you =
run from gnuradio - does the UHD console log show &quot;anc2#0&quot; or &qu=
ot;Block#0&quot; (or neither)?<div><br></div><div>Regarding your question a=
bout issue_stream_cmd() from the DDC controller in gnuradio, I&#39;ve forgo=
tten how things are done in gnuradio - could you send your python file and =
maybe I can suggest a modification?</div><div><br></div><div>By the way, ea=
ch FPGA block (such as DDC) has a corresponding UHD block controller (runni=
ng on the host side). So, it is possible to run issue_stream_cmd from the D=
DC controller rather than the rx_streamer.=C2=A0 I just don&#39;t remember =
how exactly to do that from gnuradio.</div><div>Rob</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 21, 20=
22 at 11:27 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" r=
el=3D"noreferrer" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi R=
ob,<div><br>I have compiled the default cpp and hpp files in-tree, as I rea=
d that this could be the issue. And uhd_usrp_probe identifies=C2=A0my block=
 controller name (anc2):<div><br>uhd_usrp_probe <br>[INFO] [UHD] linux; GNU=
 C++ version 9.3.0; Boost_107100; UHD_4.0.0.HEAD-0-g90ce6062<br>[INFO] [MPM=
D] Initializing 1 device(s) in parallel with args: mgmt_addr=3D,type=3De3xx=
,product=3De320,serial=3D31DFBB7,claimed=3DFalse,addr=3D<br>[INFO] [MPM.Per=
iphManager] iniciando mpm<br>[INFO] [MPM.PeriphManager] init() called with =
device args `mgmt_addr=3D,product=3De320&#39;.<br>[INFO] [0/DmaFIFO#0] BIST=
 passed (Estimated Minimum Throughput: 1361 MB/s)<br>[INFO] [0/DmaFIFO#0] B=
IST passed (Estimated Minimum Throughput: 1361 MB/s)<br>[INFO] [0/Radio#0] =
Performing CODEC loopback test on channel 0 ... <br>[INFO] [0/Radio#0] CODE=
C loopback test passed<br>[INFO] [0/Radio#0] Performing CODEC loopback test=
 on channel 1 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>=C2=
=A0 _____________________________________________________<br>=C2=A0/<br>| =
=C2=A0 =C2=A0 =C2=A0 Device: E300-Series Device<br>| =C2=A0 =C2=A0 ________=
_____________________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 Mboard: ni-e320-31DFBB7<br>| =C2=A0 | =C2=A0 eep=
rom_version: 3<br>| =C2=A0 | =C2=A0 fs_version: 20200914014807<br>| =C2=A0 =
| =C2=A0 mender_artifact: v4.0.0.0_e320<br>| =C2=A0 | =C2=A0 mpm_sw_version=
: 4.0.0.0-g57ca4235<br>| =C2=A0 | =C2=A0 pid: 58144<br>| =C2=A0 | =C2=A0 pr=
oduct: e320<br>| =C2=A0 | =C2=A0 rev: 5<br>| =C2=A0 | =C2=A0 rpc_connection=
: remote<br>| =C2=A0 | =C2=A0 serial: 31DFBB7<br>| =C2=A0 | =C2=A0 type: e3=
xx<br>| =C2=A0 | =C2=A0 MPM Version: 3.0<br>| =C2=A0 | =C2=A0 FPGA Version:=
 6.0<br>| =C2=A0 | =C2=A0 FPGA git hash: 90ce606.dirty<br>| =C2=A0 | =C2=A0=
 <br>| =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>| =
=C2=A0 | =C2=A0 Clock sources: external, internal, gpsdo<br>| =C2=A0 | =C2=
=A0 Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal, temp_rf=
_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, gps_time,=
 gps_tpv<br>| =C2=A0 =C2=A0 _______________________________________________=
______<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks =
on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/DDC#0<br>| =
=C2=A0 | =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0/DmaFIFO#0<br>| =C2=A0 | =
=C2=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 <b>* 0/anc2#0</b><br>| =C2=A0 =C2=
=A0 _____________________________________________________<br>| =C2=A0 =C2=
=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device:<=
br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<b=
r>| =C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>| =C2=A0 | =C2=A0 *=
 0/Radio#0:0=3D=3D&gt;0/DDC#0:0<br>| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0=
/SEP#0:0<br>| =C2=A0 | =C2=A0 * 0/SEP#1:0=3D=3D&gt;0/DUC#0:1<br>| =C2=A0 | =
=C2=A0 * 0/DUC#0:1=3D=3D&gt;0/Radio#0:1<br>| =C2=A0 | =C2=A0 * 0/Radio#0:1=
=3D=3D&gt;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>=
| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DmaFIFO#0:0<br>| =C2=A0 | =C2=A0 *=
 0/DmaFIFO#0:0=3D=3D&gt;0/SEP#2:0<br>| =C2=A0 | =C2=A0 * 0/SEP#3:0=3D=3D&gt=
;0/DmaFIFO#0:1<br>| =C2=A0 | =C2=A0 * 0/DmaFIFO#0:1=3D=3D&gt;0/SEP#3:0<br>|=
 =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/anc2#0:0<br>| =C2=A0 | =C2=A0 * 0/a=
nc2#0:0=3D=3D&gt;0/SEP#4:0<br>| =C2=A0 =C2=A0 _____________________________=
________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =
=C2=A0 TX Dboard: dboard<br>| =C2=A0 | =C2=A0 =C2=A0 ______________________=
_______________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 =
Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Freq range: 47.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Gain range PGA: 0.0 to 89.8 step 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 B=
andwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 |=
 =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: N=
o<br>| =C2=A0 | =C2=A0 =C2=A0 _____________________________________________=
________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =
=C2=A0 TX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 =
| =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range:=
 47.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 t=
o 89.8 step 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.=
0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: =
IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 =C2=A0 ____=
_________________________________________________<br>| =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Dboard: dboard<br>| =C2=A0 | =C2=A0 =C2=A0=
 _____________________________________________________<br>| =C2=A0 | =C2=A0=
 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 0<br>| =
=C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas:=
 RX2, TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MH=
z<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>=
| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0=
.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 | =C2=A0 =C2=A0 _______________=
______________________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =
=C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RX Frontend: 1<br>| =C2=A0 | =C2=A0 =
| =C2=A0 Name: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: RX2, TX/RX<br>|=
 =C2=A0 | =C2=A0 | =C2=A0 Freq range: 70.000 to 6000.000 MHz<br>| =C2=A0 | =
=C2=A0 | =C2=A0 Gain range PGA: 0.0 to 76.0 step 1.0 dB<br>| =C2=A0 | =C2=
=A0 | =C2=A0 Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=
=A0 | =C2=A0 | =C2=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Use=
s LO offset: No</div><div><br></div><div><br><br>But besides that, Radio do=
es not stream anything. I attach my block controller (which I haven&#39;t m=
odified and has been generated with rfnocmodtool).<br>I guess the problem c=
ould be what you said about the forwarding policy set as drop by default, b=
ut I do not see any parameter like &quot;one-to-one&quot; or &quot;drop&quo=
t; anywhere. I use UHD 4.0 but not sure if this issue was fixed when I inst=
alled it.<br>Do=C2=A0you see any problem with the controller I am using?<br=
><br>Thanks again for the help,</div></div><div><br></div><div>Maria.</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
El lun, 21 feb 2022 a las 16:49, Rob Kossler (&lt;<a href=3D"mailto:rkossle=
r@nd.edu" rel=3D"noreferrer" target=3D"_blank">rkossler@nd.edu</a>&gt;) esc=
ribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div>Hi Maria,</div><div>A few remarks:</div><div><ul><li>If y=
ou wrote a custom block controller for your custom block, then the forwardi=
ng policy should already be correct (one-to-one) by default (unless your cu=
stom block controller specifically set the policy to DROP). On the other ha=
nd, if you did not write a custom block controller (thus relying on the UHD=
 default block controller), then this explains the issue because in that ca=
se the default policy is &quot;drop&quot; (which will cause the issue you a=
re seeing). Note that the default behavior of DROP for the default block co=
ntroller has been changed to ONE_TO_ONE on the &#39;master&#39; branch of U=
HD but has not yet been changed on branch UHD-4.1.<br></li><li>So, you don&=
#39;t need to implement &quot;issue_stream_cmd&quot;. You just need to veri=
fy that your block&#39;s action &amp; properties forwarding policies are ON=
E_TO_ONE (which as I mentioned should be automatic if you create your own c=
ustom controller).</li><li>You mentioned that you used rfnocmodtool to crea=
te your block controller. But, my concern is that this block controller is =
not really being used.=C2=A0 If you run uhd_usrp_probe, does your block sho=
w up with a custom name (that you specified) or does it show up as &quot;Bl=
ock#0&quot;. If it shows with the generic name &quot;Block#0&quot; it means=
 that UHD is not using your block controller and instead using the default =
block controller (which DROPs forwarding on UHD 4.1).=C2=A0 So, if this is =
the case for you, that is the issue that needs to be solved.=C2=A0 Unfortun=
ately, I don&#39;t know the best way to solve this because I don&#39;t use =
rfnoc_mod_tool.=C2=A0 Take a look at the <a href=3D"https://github.com/Ettu=
sResearch/uhd/blob/UHD-4.1/host/examples/rfnoc-example/lib/gain_block_contr=
ol.cpp" rel=3D"noreferrer" target=3D"_blank">gain block controller</a> in t=
he uhd/host/examples/rfnoc-example/ folder.=C2=A0 Note that this example do=
es very little (empty constructor).=C2=A0 At the bottom is a string identif=
ying the block which is the string that will be shown with uhd_usrp_probe i=
f UHD is using your block controller.=C2=A0</li></ul><div>Let me know if th=
is is the issue. Once you get uhd_usrp_probe to &quot;see&quot; your block =
controller, your problem should be solved. If you can&#39;t get this to wor=
k, let me know.</div><div>Rob</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 21, 2022 at 4:41 AM Maria Mu=
=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" rel=3D"noreferrer" targe=
t=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,<div><br></div><di=
v>Thanks for the answer.</div><div><br></div><div>I have checked rfnoc_rx_s=
treamer.cpp, ddc_block_control.cpp and my custom=C2=A0block controller in u=
hd/host/lib folder, and I search for &quot;issue_stream_cmd&quot; in them.=
=C2=A0</div><div><br>In the rx_streamer one I see this function:</div><div>=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">void rfnoc_rx_streame=
r::issue_stream_cmd(const stream_cmd_t&amp; stream_cmd)<br>{<br>=C2=A0 =C2=
=A0 if (get_num_channels() &gt; 1 and stream_cmd.stream_now<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 and stream_cmd.stream_mode !=3D stream_cmd_t::STREAM_MODE=
_STOP_CONTINUOUS) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 throw uhd::runtime_error=
(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Invalid recv stream co=
mmand - stream now on multiple channels in a &quot;<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 &quot;single streamer will fail to time align.&quot;)=
;<br>=C2=A0 =C2=A0 }</blockquote><br><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">=C2=A0 =C2=A0 auto cmd =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D stream_cm=
d_action_info::make(stream_cmd.stream_mode);<br>=C2=A0 =C2=A0 cmd-&gt;strea=
m_cmd =3D stream_cmd;</blockquote><br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">=C2=A0 =C2=A0 for (size_t i =3D 0; i &lt; get_num_channels(); =
i++) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 const res_source_info info(res_source=
_info::INPUT_EDGE, i);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 post_action(info, cmd=
);<br>=C2=A0 =C2=A0 }<br>}</blockquote><div><br></div><div>While in the ddc=
 I see this:</div><div><br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">=C2=A0 =C2=A0 =C2=A0void issue_stream_cmd(const uhd::stream_cmd_t&a=
mp; stream_cmd, const size_t port)<br>=C2=A0 =C2=A0 {<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 RFNOC_LOG_TRACE(&quot;issue_stream_cmd(stream_mode=3D&quot; &lt;=
&lt; char(stream_cmd.stream_mode)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &lt;&lt; &quot;, port=3D&quot; &lt;&lt; port);<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 res_source_info dst_edge{res_source_info::OUTPUT_EDGE, port};=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 auto new_action =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=3D stream_cmd_action_info::make(stream_cmd.stream_mode);<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 new_action-&gt;stream_cmd =3D stream_cmd;<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 issue_stream_cmd_action_handler(dst_edge, new_action);<br>=C2=
=A0 =C2=A0 }</blockquote><div><br></div><div>There&#39;s no &quot;issue_str=
eam_cmd&quot; on my block controller, so maybe as you said the block is not=
 forwarding actions. I&#39;m not very familiar with controller files, so co=
uld you please tell me which changes I must do to have my block forwarding =
actions or point me out to any example to take as a reference? I created my=
 block using rfnocmodtool and follow the gain example, so I guess this exam=
ple is not forwarding actions either.</div><div><br></div><div>By the way, =
how can I stream from DDC in a GNURadiograph? If DDC is on the FPGA side, I=
 have to cross to the host domain through a streamer, don&#39;t I?</div><di=
v><br></div><div>Kind Regards,</div><div><br></div><div>Maria</div><div><br=
></div><div>=C2=A0</div></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">El vie, 18 feb 2022 a las 15:14, Rob Kossler =
(&lt;<a href=3D"mailto:rkossler@nd.edu" rel=3D"noreferrer" target=3D"_blank=
">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">By the way, if your custom FPGA =
block was truly the problem (blocking streaming), the Rx LED should be on a=
nd you should be getting lots of Overflow. Since this is not happening, it =
is a good indication that the Rx Radio is never starting.</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18, 20=
22 at 9:10 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" rel=3D"nor=
eferrer" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</=
div><div>The issue is likely related to &quot;action forwarding&quot; of th=
e streaming command. When your application asks to start streaming, it typi=
cally does so by calling rx_streamer-&gt;issue_stream_cmd().=C2=A0 This &qu=
ot;action&quot; will then be forwarded to the next upstream block controlle=
r (typically DDC block controller) which will see the command and forward=
=C2=A0it to the next upstream block controller (typically the Rx radio cont=
roller).=C2=A0 The Rx radio block controller will then start the streaming.=
=C2=A0 As an example, let&#39;s say your rx_streamer requested a fixed numb=
er of samples (say 1000) and assume that your DDC decimation is 4.=C2=A0 Wi=
th this architecture, the DDC block controller can intercept the action and=
 change the requested number of samples from 1000 to 4000 so that when the =
radio block controller receives the command, it will stream for exactly 400=
0 samples (which will provide 1000 samples out of the DDC). Note that all o=
f this &quot;action&quot; propagation occurs in UHD land (not on the FPGA).=
=C2=A0 So, if your custom block controller is not forwarding actions, the R=
adio controller never gets the action and thus never starts the streaming.=
=C2=A0 One way you can verify this is if you are able to call issue_stream_=
cmd() from the DDC controller rather than the rx_streamer.=C2=A0 This shoul=
d cause your streaming to start.=C2=A0</div><div>Rob</div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18, 2022 at=
 8:13 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" rel=3D"=
noreferrer" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<di=
v><br></div><div>I&#39;m using a USRP E320 with UHD 4.0 and GNURadio 3.8 fo=
r receiving samples=C2=A0through=C2=A0an RX RFNoC Radio block and performin=
g some processing in a custom RFNoC block.</div><div>I have created my bloc=
k using rfnocmodtool, modifying the Verilog and yml files for my custom blo=
ck. I left the cpp and hpp files as default, but I copied them to the UHD i=
nstall path to see the name of my block with uhd_usrp_probe.</div><div>I ha=
ve tested satisfactorily my custom block with a gnuradio graph like this:</=
div><div><br></div><div>Host block =3D&gt; rfnoc tx streamer =3D&gt; custom=
 RFNoC block =3D&gt; rfnoc rx streamer =3D&gt; Host block</div><div><br></d=
iv><div>I have also tested it for transmission=C2=A0through the rfnoc tx ra=
dio, and works fine:</div><div><br></div><div>Host block =3D&gt; rfnoc tx s=
treamer =3D&gt; custom RFNoC block =3D&gt; RFNoC DUC=3D&gt; RFNoC TX Radio<=
br></div><div><br></div><div>But when I try to receive from the radio with =
the following graph, rx led does not light up and gnuradio give time out:</=
div><div>RFNoC RX Radio =3D&gt;=C2=A0

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
</blockquote></div>

--00000000000032ed3e05d8cbb4a7--

--===============3129974702926496544==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3129974702926496544==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B114BDAE2
	for <lists+usrp-users@lfdr.de>; Mon, 21 Feb 2022 17:39:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48512384EB8
	for <lists+usrp-users@lfdr.de>; Mon, 21 Feb 2022 11:39:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="JUAPL8VA";
	dkim-atps=neutral
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 87E6C384837
	for <usrp-users@lists.ettus.com>; Mon, 21 Feb 2022 11:38:21 -0500 (EST)
Received: by mail-yb1-f175.google.com with SMTP id u12so21561779ybd.7
        for <usrp-users@lists.ettus.com>; Mon, 21 Feb 2022 08:38:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LP8lr7Xvi8CXxVJwz0lxAWDHvjBDJtbgdpiJTQjvx9I=;
        b=JUAPL8VAPRq2Po16lUMA2DLrjg9klw2Ss2vylxFZ5GevNFeaiGBYRU1Mk6DyiPsHqC
         tyZBW7xAVIU6qA583NVyFqm9K0PMTq8N1y2ssEJJ5KK0sbqARQ0IaKR+koz4Eu72vV2q
         RP/VqcCTFPh9nec9yzpEXCh9eYYpsWgDdPxer0b6vJNrChLzPV2ebSSn2VgSkXQVYAkB
         dRqSqgsfYqzjNI+2nDwQVV5sR6IfaRtMuB5SN3CH4pZtOgCON7ay9XUzQ6Z5E1cuDjdy
         WxryE/z1FHLYvcMROtVhZqhdRZX385Oo4Ho4GNw4BndKSE3j54Qz5e+98eTM/G5dEYZK
         s3Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LP8lr7Xvi8CXxVJwz0lxAWDHvjBDJtbgdpiJTQjvx9I=;
        b=sSSOGTV+O/JfJ+Q6skdMSVt9mojvF5gNKlITvRCYv1+VEo1mjvzfbe2n6FaB8AncGy
         ooIOx+V1WZJhd64RyY4oDKBS44An6tO8FTBInMPD8p2naj/zyKHZBH84DR59jyERTSg7
         PVLW/+6Ps4QiGbb/WWds3bSjWz9TVeGkk32ALd/Vwog5aoMSDsIeLnJ3+VK1oq3ND1KP
         I1rA9n5ajd7BaL9Ag0ApNgMZ2RcILQx1bQcv19D2X49MIbLllK8RHxgRCXzRli0aqb2t
         71N3KjCx6p6LgIaBvNqhmwi2NnKJfLMn+0D1Gl1A9vOmY3UoRmrDqgx2blDDSaPB+qII
         Uxjg==
X-Gm-Message-State: AOAM530EuCtUt5EuIrvnFYDwKTLON6UZBZrqMJ3aQsUy4tFEJlhYD2YX
	MbAaDQPbJbSVO9e9ePVMKF0kg+5zrnaPT0bSk/bSfji5Sf3s+w==
X-Google-Smtp-Source: ABdhPJxyV7vUCZTdOiZwjnKV5WBWq3U56IX+LQAH105+LcmX5ahDpnXYYrdQZ1GiFbXyin4bOH9VOFvovPj+7rnLKxs=
X-Received: by 2002:a25:df41:0:b0:615:7917:b4cc with SMTP id
 w62-20020a25df41000000b006157917b4ccmr20061430ybg.563.1645461500684; Mon, 21
 Feb 2022 08:38:20 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQVHXis5xAXDKZWo5WowfzM4zKfx5gVgTvjxZ=8WKaT7cg@mail.gmail.com>
 <CAB__hTSK9qoreSo_FBt1vja8aKnyns33R2eFjaqnz6gDa2qtRQ@mail.gmail.com>
 <CAB__hTQQQp0QJ5EyNg00jxo4LViQb1x1vaZQb4O9qCtgHop02g@mail.gmail.com>
 <CAG16vQVrRJxwaQXCovrMuwWs5FLOY1MkD8N2K7s=tZvTiUnuGQ@mail.gmail.com>
 <CAB__hTR7fi_jc2QDWxqCFbb+AU4xVKAK-6q3F-u9CwxH=ZdXpQ@mail.gmail.com> <CAG16vQWS1x7v1QE7QXgeiSbmxNU-pgtnb4jicXbP3XHh92GSeQ@mail.gmail.com>
In-Reply-To: <CAG16vQWS1x7v1QE7QXgeiSbmxNU-pgtnb4jicXbP3XHh92GSeQ@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Mon, 21 Feb 2022 11:38:08 -0500
Message-ID: <CAB__hTQMghpEzTyUOhx6FAjWL0_fXNtk0pi47f-4y4YUMKhDzg@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: GNUAO2IATYI7OXDRFOPOJ54GPYQXKUOQ
X-Message-ID-Hash: GNUAO2IATYI7OXDRFOPOJ54GPYQXKUOQ
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom block drop received packages
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GNUAO2IATYI7OXDRFOPOJ54GPYQXKUOQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7951398973126831932=="

--===============7951398973126831932==
Content-Type: multipart/alternative; boundary="0000000000003dca4a05d889dcad"

--0000000000003dca4a05d889dcad
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This looks all correct when using uhd_usrp_probe.  How about when you run
from gnuradio - does the UHD console log show "anc2#0" or "Block#0" (or
neither)?

Regarding your question about issue_stream_cmd() from the DDC controller in
gnuradio, I've forgotten how things are done in gnuradio - could you send
your python file and maybe I can suggest a modification?

By the way, each FPGA block (such as DDC) has a corresponding UHD block
controller (running on the host side). So, it is possible to run
issue_stream_cmd from the DDC controller rather than the rx_streamer.  I
just don't remember how exactly to do that from gnuradio.
Rob

On Mon, Feb 21, 2022 at 11:27 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrot=
e:

> Hi Rob,
>
> I have compiled the default cpp and hpp files in-tree, as I read that thi=
s
> could be the issue. And uhd_usrp_probe identifies my block controller nam=
e
> (anc2):
>
> uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100;
> UHD_4.0.0.HEAD-0-g90ce6062
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=3D,type=3De3xx,product=3De320,serial=3D31DFBB7,claimed=3DFalse,=
addr=3D
> [INFO] [MPM.PeriphManager] iniciando mpm
> [INFO] [MPM.PeriphManager] init() called with device args
> `mgmt_addr=3D,product=3De320'.
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s=
)
> [INFO] [0/DmaFIFO#0] BIST passed (Estimated Minimum Throughput: 1361 MB/s=
)
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 0 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
> [INFO] [0/Radio#0] Performing CODEC loopback test on channel 1 ...
> [INFO] [0/Radio#0] CODEC loopback test passed
>   _____________________________________________________
>  /
> |       Device: E300-Series Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: ni-e320-31DFBB7
> |   |   eeprom_version: 3
> |   |   fs_version: 20200914014807
> |   |   mender_artifact: v4.0.0.0_e320
> |   |   mpm_sw_version: 4.0.0.0-g57ca4235
> |   |   pid: 58144
> |   |   product: e320
> |   |   rev: 5
> |   |   rpc_connection: remote
> |   |   serial: 31DFBB7
> |   |   type: e3xx
> |   |   MPM Version: 3.0
> |   |   FPGA Version: 6.0
> |   |   FPGA git hash: 90ce606.dirty
> |   |
> |   |   Time sources:  internal, external, gpsdo
> |   |   Clock sources: external, internal, gpsdo
> |   |   Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal,
> temp_rf_channelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky,
> gps_time, gps_tpv
> |     _____________________________________________________
> |    /
> |   |       RFNoC blocks on this device:
> |   |
> |   |   * 0/DDC#0
> |   |   * 0/DUC#0
> |   |   * 0/DmaFIFO#0
> |   |   * 0/Radio#0
> |   |   ** 0/anc2#0*
> |     _____________________________________________________
> |    /
> |   |       Static connections on this device:
> |   |
> |   |   * 0/SEP#0:0=3D=3D>0/DUC#0:0
> |   |   * 0/DUC#0:0=3D=3D>0/Radio#0:0
> |   |   * 0/Radio#0:0=3D=3D>0/DDC#0:0
> |   |   * 0/DDC#0:0=3D=3D>0/SEP#0:0
> |   |   * 0/SEP#1:0=3D=3D>0/DUC#0:1
> |   |   * 0/DUC#0:1=3D=3D>0/Radio#0:1
> |   |   * 0/Radio#0:1=3D=3D>0/DDC#0:1
> |   |   * 0/DDC#0:1=3D=3D>0/SEP#1:0
> |   |   * 0/SEP#2:0=3D=3D>0/DmaFIFO#0:0
> |   |   * 0/DmaFIFO#0:0=3D=3D>0/SEP#2:0
> |   |   * 0/SEP#3:0=3D=3D>0/DmaFIFO#0:1
> |   |   * 0/DmaFIFO#0:1=3D=3D>0/SEP#3:0
> |   |   * 0/SEP#4:0=3D=3D>0/anc2#0:0
> |   |   * 0/anc2#0:0=3D=3D>0/SEP#4:0
> |     _____________________________________________________
> |    /
> |   |       TX Dboard: dboard
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Frontend: 0
> |   |   |   Name: E3xx
> |   |   |   Antennas: TX/RX
> |   |   |   Freq range: 47.000 to 6000.000 MHz
> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Frontend: 1
> |   |   |   Name: E3xx
> |   |   |   Antennas: TX/RX
> |   |   |   Freq range: 47.000 to 6000.000 MHz
> |   |   |   Gain range PGA: 0.0 to 89.8 step 0.2 dB
> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
> |     _____________________________________________________
> |    /
> |   |       RX Dboard: dboard
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Frontend: 0
> |   |   |   Name: E3xx
> |   |   |   Antennas: RX2, TX/RX
> |   |   |   Freq range: 70.000 to 6000.000 MHz
> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Frontend: 1
> |   |   |   Name: E3xx
> |   |   |   Antennas: RX2, TX/RX
> |   |   |   Freq range: 70.000 to 6000.000 MHz
> |   |   |   Gain range PGA: 0.0 to 76.0 step 1.0 dB
> |   |   |   Bandwidth range: 20000000.0 to 40000000.0 step 0.0 Hz
> |   |   |   Connection Type: IQ
> |   |   |   Uses LO offset: No
>
>
>
> But besides that, Radio does not stream anything. I attach my block
> controller (which I haven't modified and has been generated with
> rfnocmodtool).
> I guess the problem could be what you said about the forwarding policy se=
t
> as drop by default, but I do not see any parameter like "one-to-one" or
> "drop" anywhere. I use UHD 4.0 but not sure if this issue was fixed when =
I
> installed it.
> Do you see any problem with the controller I am using?
>
> Thanks again for the help,
>
> Maria.
>
> El lun, 21 feb 2022 a las 16:49, Rob Kossler (<rkossler@nd.edu>) escribi=
=C3=B3:
>
>> Hi Maria,
>> A few remarks:
>>
>>    - If you wrote a custom block controller for your custom block, then
>>    the forwarding policy should already be correct (one-to-one) by defau=
lt
>>    (unless your custom block controller specifically set the policy to D=
ROP).
>>    On the other hand, if you did not write a custom block controller (th=
us
>>    relying on the UHD default block controller), then this explains the =
issue
>>    because in that case the default policy is "drop" (which will cause t=
he
>>    issue you are seeing). Note that the default behavior of DROP for the
>>    default block controller has been changed to ONE_TO_ONE on the 'maste=
r'
>>    branch of UHD but has not yet been changed on branch UHD-4.1.
>>    - So, you don't need to implement "issue_stream_cmd". You just need
>>    to verify that your block's action & properties forwarding policies a=
re
>>    ONE_TO_ONE (which as I mentioned should be automatic if you create yo=
ur own
>>    custom controller).
>>    - You mentioned that you used rfnocmodtool to create your block
>>    controller. But, my concern is that this block controller is not real=
ly
>>    being used.  If you run uhd_usrp_probe, does your block show up with =
a
>>    custom name (that you specified) or does it show up as "Block#0". If =
it
>>    shows with the generic name "Block#0" it means that UHD is not using =
your
>>    block controller and instead using the default block controller (whic=
h
>>    DROPs forwarding on UHD 4.1).  So, if this is the case for you, that =
is the
>>    issue that needs to be solved.  Unfortunately, I don't know the best =
way to
>>    solve this because I don't use rfnoc_mod_tool.  Take a look at the ga=
in
>>    block controller
>>    <https://github.com/EttusResearch/uhd/blob/UHD-4.1/host/examples/rfno=
c-example/lib/gain_block_control.cpp>
>>    in the uhd/host/examples/rfnoc-example/ folder.  Note that this examp=
le
>>    does very little (empty constructor).  At the bottom is a string
>>    identifying the block which is the string that will be shown with
>>    uhd_usrp_probe if UHD is using your block controller.
>>
>> Let me know if this is the issue. Once you get uhd_usrp_probe to "see"
>> your block controller, your problem should be solved. If you can't get t=
his
>> to work, let me know.
>> Rob
>>
>> On Mon, Feb 21, 2022 at 4:41 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wr=
ote:
>>
>>> Hi Rob,
>>>
>>> Thanks for the answer.
>>>
>>> I have checked rfnoc_rx_streamer.cpp, ddc_block_control.cpp and my
>>> custom block controller in uhd/host/lib folder, and I search for
>>> "issue_stream_cmd" in them.
>>>
>>> In the rx_streamer one I see this function:
>>>
>>> void rfnoc_rx_streamer::issue_stream_cmd(const stream_cmd_t& stream_cmd=
)
>>>> {
>>>>     if (get_num_channels() > 1 and stream_cmd.stream_now
>>>>         and stream_cmd.stream_mode !=3D
>>>> stream_cmd_t::STREAM_MODE_STOP_CONTINUOUS) {
>>>>         throw uhd::runtime_error(
>>>>             "Invalid recv stream command - stream now on multiple
>>>> channels in a "
>>>>             "single streamer will fail to time align.");
>>>>     }
>>>
>>>
>>>     auto cmd        =3D
>>>> stream_cmd_action_info::make(stream_cmd.stream_mode);
>>>>     cmd->stream_cmd =3D stream_cmd;
>>>
>>>
>>>     for (size_t i =3D 0; i < get_num_channels(); i++) {
>>>>         const res_source_info info(res_source_info::INPUT_EDGE, i);
>>>>         post_action(info, cmd);
>>>>     }
>>>> }
>>>
>>>
>>> While in the ddc I see this:
>>>
>>>      void issue_stream_cmd(const uhd::stream_cmd_t& stream_cmd, const
>>>> size_t port)
>>>>     {
>>>>         RFNOC_LOG_TRACE("issue_stream_cmd(stream_mode=3D" <<
>>>> char(stream_cmd.stream_mode)
>>>>                                                         << ", port=3D"=
 <<
>>>> port);
>>>>         res_source_info dst_edge{res_source_info::OUTPUT_EDGE, port};
>>>>         auto new_action        =3D
>>>> stream_cmd_action_info::make(stream_cmd.stream_mode);
>>>>         new_action->stream_cmd =3D stream_cmd;
>>>>         issue_stream_cmd_action_handler(dst_edge, new_action);
>>>>     }
>>>
>>>
>>> There's no "issue_stream_cmd" on my block controller, so maybe as you
>>> said the block is not forwarding actions. I'm not very familiar with
>>> controller files, so could you please tell me which changes I must do t=
o
>>> have my block forwarding actions or point me out to any example to take=
 as
>>> a reference? I created my block using rfnocmodtool and follow the gain
>>> example, so I guess this example is not forwarding actions either.
>>>
>>> By the way, how can I stream from DDC in a GNURadiograph? If DDC is on
>>> the FPGA side, I have to cross to the host domain through a streamer, d=
on't
>>> I?
>>>
>>> Kind Regards,
>>>
>>> Maria
>>>
>>>
>>>
>>> El vie, 18 feb 2022 a las 15:14, Rob Kossler (<rkossler@nd.edu>)
>>> escribi=C3=B3:
>>>
>>>> By the way, if your custom FPGA block was truly the problem (blocking
>>>> streaming), the Rx LED should be on and you should be getting lots of
>>>> Overflow. Since this is not happening, it is a good indication that th=
e Rx
>>>> Radio is never starting.
>>>>
>>>> On Fri, Feb 18, 2022 at 9:10 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>>
>>>>> Hi Maria,
>>>>> The issue is likely related to "action forwarding" of the streaming
>>>>> command. When your application asks to start streaming, it typically =
does
>>>>> so by calling rx_streamer->issue_stream_cmd().  This "action" will th=
en be
>>>>> forwarded to the next upstream block controller (typically DDC block
>>>>> controller) which will see the command and forward it to the next ups=
tream
>>>>> block controller (typically the Rx radio controller).  The Rx radio b=
lock
>>>>> controller will then start the streaming.  As an example, let's say y=
our
>>>>> rx_streamer requested a fixed number of samples (say 1000) and assume=
 that
>>>>> your DDC decimation is 4.  With this architecture, the DDC block cont=
roller
>>>>> can intercept the action and change the requested number of samples f=
rom
>>>>> 1000 to 4000 so that when the radio block controller receives the com=
mand,
>>>>> it will stream for exactly 4000 samples (which will provide 1000 samp=
les
>>>>> out of the DDC). Note that all of this "action" propagation occurs in=
 UHD
>>>>> land (not on the FPGA).  So, if your custom block controller is not
>>>>> forwarding actions, the Radio controller never gets the action and th=
us
>>>>> never starts the streaming.  One way you can verify this is if you ar=
e able
>>>>> to call issue_stream_cmd() from the DDC controller rather than the
>>>>> rx_streamer.  This should cause your streaming to start.
>>>>> Rob
>>>>>
>>>>> On Fri, Feb 18, 2022 at 8:13 AM Maria Mu=C3=B1oz <mamuki92@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Hi all,
>>>>>>
>>>>>> I'm using a USRP E320 with UHD 4.0 and GNURadio 3.8 for receiving
>>>>>> samples through an RX RFNoC Radio block and performing some processi=
ng in a
>>>>>> custom RFNoC block.
>>>>>> I have created my block using rfnocmodtool, modifying the Verilog an=
d
>>>>>> yml files for my custom block. I left the cpp and hpp files as defau=
lt, but
>>>>>> I copied them to the UHD install path to see the name of my block wi=
th
>>>>>> uhd_usrp_probe.
>>>>>> I have tested satisfactorily my custom block with a gnuradio graph
>>>>>> like this:
>>>>>>
>>>>>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> rfnoc=
 rx
>>>>>> streamer =3D> Host block
>>>>>>
>>>>>> I have also tested it for transmission through the rfnoc tx radio,
>>>>>> and works fine:
>>>>>>
>>>>>> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> RFNoC=
 DUC=3D>
>>>>>> RFNoC TX Radio
>>>>>>
>>>>>> But when I try to receive from the radio with the following graph, r=
x
>>>>>> led does not light up and gnuradio give time out:
>>>>>> RFNoC RX Radio =3D>  RFNoC DDC   =3D> custom RFNoC block =3D>  rfnoc=
 rx
>>>>>> streamer =3D>Host block
>>>>>>
>>>>>> If I remove my custom block from the last graph, I can receive
>>>>>> samples and the led is on.
>>>>>>
>>>>>> It seems like the custom block is blocking somehow the samples. I
>>>>>> tried with different sampling rates and spp values for the radio but
>>>>>> nothing works.
>>>>>>
>>>>>> Any help on this will be appreciated.
>>>>>>
>>>>>> Kind Regards,
>>>>>>
>>>>>> Maria
>>>>>> _______________________________________________
>>>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>>>
>>>>>

--0000000000003dca4a05d889dcad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">This looks all correct when using uhd_usr=
p_probe.=C2=A0 How about when you run from gnuradio - does the UHD console =
log show &quot;anc2#0&quot; or &quot;Block#0&quot; (or neither)?<div><br></=
div><div>Regarding your question about issue_stream_cmd() from the DDC cont=
roller in gnuradio, I&#39;ve forgotten how things are done in gnuradio - co=
uld you send your python file and maybe I can suggest a modification?</div>=
<div><br></div><div>By the way, each FPGA block (such as DDC) has a corresp=
onding UHD block controller (running on the host side). So, it is possible =
to run issue_stream_cmd from the DDC controller rather than the rx_streamer=
.=C2=A0 I just don&#39;t remember how exactly to do that from gnuradio.</di=
v><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Feb 21, 2022 at 11:27 AM Maria Mu=C3=B1oz &lt;<a hr=
ef=3D"mailto:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob,=
<div><br>I have compiled the default cpp and hpp files in-tree, as I read t=
hat this could be the issue. And uhd_usrp_probe identifies=C2=A0my block co=
ntroller name (anc2):<div><br>uhd_usrp_probe <br>[INFO] [UHD] linux; GNU C+=
+ version 9.3.0; Boost_107100; UHD_4.0.0.HEAD-0-g90ce6062<br>[INFO] [MPMD] =
Initializing 1 device(s) in parallel with args: mgmt_addr=3D,type=3De3xx,pr=
oduct=3De320,serial=3D31DFBB7,claimed=3DFalse,addr=3D<br>[INFO] [MPM.Periph=
Manager] iniciando mpm<br>[INFO] [MPM.PeriphManager] init() called with dev=
ice args `mgmt_addr=3D,product=3De320&#39;.<br>[INFO] [0/DmaFIFO#0] BIST pa=
ssed (Estimated Minimum Throughput: 1361 MB/s)<br>[INFO] [0/DmaFIFO#0] BIST=
 passed (Estimated Minimum Throughput: 1361 MB/s)<br>[INFO] [0/Radio#0] Per=
forming CODEC loopback test on channel 0 ... <br>[INFO] [0/Radio#0] CODEC l=
oopback test passed<br>[INFO] [0/Radio#0] Performing CODEC loopback test on=
 channel 1 ... <br>[INFO] [0/Radio#0] CODEC loopback test passed<br>=C2=A0 =
_____________________________________________________<br>=C2=A0/<br>| =C2=
=A0 =C2=A0 =C2=A0 Device: E300-Series Device<br>| =C2=A0 =C2=A0 ___________=
__________________________________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 =
| =C2=A0 =C2=A0 =C2=A0 Mboard: ni-e320-31DFBB7<br>| =C2=A0 | =C2=A0 eeprom_=
version: 3<br>| =C2=A0 | =C2=A0 fs_version: 20200914014807<br>| =C2=A0 | =
=C2=A0 mender_artifact: v4.0.0.0_e320<br>| =C2=A0 | =C2=A0 mpm_sw_version: =
4.0.0.0-g57ca4235<br>| =C2=A0 | =C2=A0 pid: 58144<br>| =C2=A0 | =C2=A0 prod=
uct: e320<br>| =C2=A0 | =C2=A0 rev: 5<br>| =C2=A0 | =C2=A0 rpc_connection: =
remote<br>| =C2=A0 | =C2=A0 serial: 31DFBB7<br>| =C2=A0 | =C2=A0 type: e3xx=
<br>| =C2=A0 | =C2=A0 MPM Version: 3.0<br>| =C2=A0 | =C2=A0 FPGA Version: 6=
.0<br>| =C2=A0 | =C2=A0 FPGA git hash: 90ce606.dirty<br>| =C2=A0 | =C2=A0 <=
br>| =C2=A0 | =C2=A0 Time sources: =C2=A0internal, external, gpsdo<br>| =C2=
=A0 | =C2=A0 Clock sources: external, internal, gpsdo<br>| =C2=A0 | =C2=A0 =
Sensors: ref_locked, gps_locked, fan, temp_fpga, temp_internal, temp_rf_cha=
nnelA, temp_rf_channelB, temp_main_power, gps_gpgga, gps_sky, gps_time, gps=
_tpv<br>| =C2=A0 =C2=A0 ___________________________________________________=
__<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC blocks on t=
his device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/DDC#0<br>| =C2=
=A0 | =C2=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0/DmaFIFO#0<br>| =C2=A0 | =C2=
=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 <b>* 0/anc2#0</b><br>| =C2=A0 =C2=A0 _=
____________________________________________________<br>| =C2=A0 =C2=A0/<br=
>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on this device:<br>| =
=C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/DUC#0:0<br>| =
=C2=A0 | =C2=A0 * 0/DUC#0:0=3D=3D&gt;0/Radio#0:0<br>| =C2=A0 | =C2=A0 * 0/R=
adio#0:0=3D=3D&gt;0/DDC#0:0<br>| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP=
#0:0<br>| =C2=A0 | =C2=A0 * 0/SEP#1:0=3D=3D&gt;0/DUC#0:1<br>| =C2=A0 | =C2=
=A0 * 0/DUC#0:1=3D=3D&gt;0/Radio#0:1<br>| =C2=A0 | =C2=A0 * 0/Radio#0:1=3D=
=3D&gt;0/DDC#0:1<br>| =C2=A0 | =C2=A0 * 0/DDC#0:1=3D=3D&gt;0/SEP#1:0<br>| =
=C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DmaFIFO#0:0<br>| =C2=A0 | =C2=A0 * 0=
/DmaFIFO#0:0=3D=3D&gt;0/SEP#2:0<br>| =C2=A0 | =C2=A0 * 0/SEP#3:0=3D=3D&gt;0=
/DmaFIFO#0:1<br>| =C2=A0 | =C2=A0 * 0/DmaFIFO#0:1=3D=3D&gt;0/SEP#3:0<br>| =
=C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/anc2#0:0<br>| =C2=A0 | =C2=A0 * 0/an=
c2#0:0=3D=3D&gt;0/SEP#4:0<br>| =C2=A0 =C2=A0 ______________________________=
_______________________<br>| =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=
=A0 TX Dboard: dboard<br>| =C2=A0 | =C2=A0 =C2=A0 _________________________=
____________________________<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=
=A0 | =C2=A0 =C2=A0 =C2=A0 TX Frontend: 0<br>| =C2=A0 | =C2=A0 | =C2=A0 Nam=
e: E3xx<br>| =C2=A0 | =C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 =
| =C2=A0 Freq range: 47.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 G=
ain range PGA: 0.0 to 89.8 step 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwi=
dth range: 20000000.0 to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=
=A0 Connection Type: IQ<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br=
>| =C2=A0 | =C2=A0 =C2=A0 _________________________________________________=
____<br>| =C2=A0 | =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 | =C2=A0 =C2=A0 =C2=
=A0 TX Frontend: 1<br>| =C2=A0 | =C2=A0 | =C2=A0 Name: E3xx<br>| =C2=A0 | =
=C2=A0 | =C2=A0 Antennas: TX/RX<br>| =C2=A0 | =C2=A0 | =C2=A0 Freq range: 4=
7.000 to 6000.000 MHz<br>| =C2=A0 | =C2=A0 | =C2=A0 Gain range PGA: 0.0 to =
89.8 step 0.2 dB<br>| =C2=A0 | =C2=A0 | =C2=A0 Bandwidth range: 20000000.0 =
to 40000000.0 step 0.0 Hz<br>| =C2=A0 | =C2=A0 | =C2=A0 Connection Type: IQ=
<br>| =C2=A0 | =C2=A0 | =C2=A0 Uses LO offset: No<br>| =C2=A0 =C2=A0 ______=
_______________________________________________<br>| =C2=A0 =C2=A0/<br>| =
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
r@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>H=
i Maria,</div><div>A few remarks:</div><div><ul><li>If you wrote a custom b=
lock controller for your custom block, then the forwarding policy should al=
ready be correct (one-to-one) by default (unless your custom block controll=
er specifically set the policy to DROP). On the other hand, if you did not =
write a custom block controller (thus relying on the UHD default block cont=
roller), then this explains the issue because in that case the default poli=
cy is &quot;drop&quot; (which will cause the issue you are seeing). Note th=
at the default behavior of DROP for the default block controller has been c=
hanged to ONE_TO_ONE on the &#39;master&#39; branch of UHD but has not yet =
been changed on branch UHD-4.1.<br></li><li>So, you don&#39;t need to imple=
ment &quot;issue_stream_cmd&quot;. You just need to verify that your block&=
#39;s action &amp; properties forwarding policies are ONE_TO_ONE (which as =
I mentioned should be automatic if you create your own custom controller).<=
/li><li>You mentioned that you used rfnocmodtool to create your block contr=
oller. But, my concern is that this block controller is not really being us=
ed.=C2=A0 If you run uhd_usrp_probe, does your block show up with a custom =
name (that you specified) or does it show up as &quot;Block#0&quot;. If it =
shows with the generic name &quot;Block#0&quot; it means that UHD is not us=
ing your block controller and instead using the default block controller (w=
hich DROPs forwarding on UHD 4.1).=C2=A0 So, if this is the case for you, t=
hat is the issue that needs to be solved.=C2=A0 Unfortunately, I don&#39;t =
know the best way to solve this because I don&#39;t use rfnoc_mod_tool.=C2=
=A0 Take a look at the <a href=3D"https://github.com/EttusResearch/uhd/blob=
/UHD-4.1/host/examples/rfnoc-example/lib/gain_block_control.cpp" target=3D"=
_blank">gain block controller</a> in the uhd/host/examples/rfnoc-example/ f=
older.=C2=A0 Note that this example does very little (empty constructor).=
=C2=A0 At the bottom is a string identifying the block which is the string =
that will be shown with uhd_usrp_probe if UHD is using your block controlle=
r.=C2=A0</li></ul><div>Let me know if this is the issue. Once you get uhd_u=
srp_probe to &quot;see&quot; your block controller, your problem should be =
solved. If you can&#39;t get this to work, let me know.</div><div>Rob</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Feb 21, 2022 at 4:41 AM Maria Mu=C3=B1oz &lt;<a href=3D"mailto:mamu=
ki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Rob=
,<div><br></div><div>Thanks for the answer.</div><div><br></div><div>I have=
 checked rfnoc_rx_streamer.cpp, ddc_block_control.cpp and my custom=C2=A0bl=
ock controller in uhd/host/lib folder, and I search for &quot;issue_stream_=
cmd&quot; in them.=C2=A0</div><div><br>In the rx_streamer one I see this fu=
nction:</div><div><br><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">voi=
d rfnoc_rx_streamer::issue_stream_cmd(const stream_cmd_t&amp; stream_cmd)<b=
r>{<br>=C2=A0 =C2=A0 if (get_num_channels() &gt; 1 and stream_cmd.stream_no=
w<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 and stream_cmd.stream_mode !=3D stream_cmd=
_t::STREAM_MODE_STOP_CONTINUOUS) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 throw uhd=
::runtime_error(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;Invalid=
 recv stream command - stream now on multiple channels in a &quot;<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;single streamer will fail to t=
ime align.&quot;);<br>=C2=A0 =C2=A0 }</blockquote><br><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">=C2=A0 =C2=A0 auto cmd =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=3D stream_cmd_action_info::make(stream_cmd.stream_mode);<br>=C2=A0 =
=C2=A0 cmd-&gt;stream_cmd =3D stream_cmd;</blockquote><br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">=C2=A0 =C2=A0 for (size_t i =3D 0; i &lt; =
get_num_channels(); i++) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 const res_source_=
info info(res_source_info::INPUT_EDGE, i);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 p=
ost_action(info, cmd);<br>=C2=A0 =C2=A0 }<br>}</blockquote><div><br></div><=
div>While in the ddc I see this:</div><div><br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">=C2=A0 =C2=A0 =C2=A0void issue_stream_cmd(const=
 uhd::stream_cmd_t&amp; stream_cmd, const size_t port)<br>=C2=A0 =C2=A0 {<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 RFNOC_LOG_TRACE(&quot;issue_stream_cmd(stream=
_mode=3D&quot; &lt;&lt; char(stream_cmd.stream_mode)<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;&lt; &quot;, port=3D&quot; &lt;&lt; por=
t);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 res_source_info dst_edge{res_source_info=
::OUTPUT_EDGE, port};<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 auto new_action =C2=A0=
 =C2=A0 =C2=A0 =C2=A0=3D stream_cmd_action_info::make(stream_cmd.stream_mod=
e);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 new_action-&gt;stream_cmd =3D stream_cmd=
;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 issue_stream_cmd_action_handler(dst_edge, =
new_action);<br>=C2=A0 =C2=A0 }</blockquote><div><br></div><div>There&#39;s=
 no &quot;issue_stream_cmd&quot; on my block controller, so maybe as you sa=
id the block is not forwarding actions. I&#39;m not very familiar with cont=
roller files, so could you please tell me which changes I must do to have m=
y block forwarding actions or point me out to any example to take as a refe=
rence? I created my block using rfnocmodtool and follow the gain example, s=
o I guess this example is not forwarding actions either.</div><div><br></di=
v><div>By the way, how can I stream from DDC in a GNURadiograph? If DDC is =
on the FPGA side, I have to cross to the host domain through a streamer, do=
n&#39;t I?</div><div><br></div><div>Kind Regards,</div><div><br></div><div>=
Maria</div><div><br></div><div>=C2=A0</div></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El vie, 18 feb 2022 a las =
15:14, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank=
">rkossler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div dir=3D"ltr">By the way, if your custom FPGA =
block was truly the problem (blocking streaming), the Rx LED should be on a=
nd you should be getting lots of Overflow. Since this is not happening, it =
is a good indication that the Rx Radio is never starting.</div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18, 20=
22 at 9:10 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"=
_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Maria,</div><div>The issue =
is likely related to &quot;action forwarding&quot; of the streaming command=
. When your application asks to start streaming, it typically does so by ca=
lling rx_streamer-&gt;issue_stream_cmd().=C2=A0 This &quot;action&quot; wil=
l then be forwarded to the next upstream block controller (typically DDC bl=
ock controller) which will see the command and forward=C2=A0it to the next =
upstream block controller (typically the Rx radio controller).=C2=A0 The Rx=
 radio block controller will then start the streaming.=C2=A0 As an example,=
 let&#39;s say your rx_streamer requested a fixed number of samples (say 10=
00) and assume that your DDC decimation is 4.=C2=A0 With this architecture,=
 the DDC block controller can intercept the action and change the requested=
 number of samples from 1000 to 4000 so that when the radio block controlle=
r receives the command, it will stream for exactly 4000 samples (which will=
 provide 1000 samples out of the DDC). Note that all of this &quot;action&q=
uot; propagation occurs in UHD land (not on the FPGA).=C2=A0 So, if your cu=
stom block controller is not forwarding actions, the Radio controller never=
 gets the action and thus never starts the streaming.=C2=A0 One way you can=
 verify this is if you are able to call issue_stream_cmd() from the DDC con=
troller rather than the rx_streamer.=C2=A0 This should cause your streaming=
 to start.=C2=A0</div><div>Rob</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Feb 18, 2022 at 8:13 AM Maria Mu=C3=
=B1oz &lt;<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m using a USRP=
 E320 with UHD 4.0 and GNURadio 3.8 for receiving samples=C2=A0through=C2=
=A0an RX RFNoC Radio block and performing some processing in a custom RFNoC=
 block.</div><div>I have created my block using rfnocmodtool, modifying the=
 Verilog and yml files for my custom block. I left the cpp and hpp files as=
 default, but I copied them to the UHD install path to see the name of my b=
lock with uhd_usrp_probe.</div><div>I have tested satisfactorily my custom =
block with a gnuradio graph like this:</div><div><br></div><div>Host block =
=3D&gt; rfnoc tx streamer =3D&gt; custom RFNoC block =3D&gt; rfnoc rx strea=
mer =3D&gt; Host block</div><div><br></div><div>I have also tested it for t=
ransmission=C2=A0through the rfnoc tx radio, and works fine:</div><div><br>=
</div><div>Host block =3D&gt; rfnoc tx streamer =3D&gt; custom RFNoC block =
=3D&gt; RFNoC DUC=3D&gt; RFNoC TX Radio<br></div><div><br></div><div>But wh=
en I try to receive from the radio with the following graph, rx led does no=
t light up and gnuradio give time out:</div><div>RFNoC RX Radio =3D&gt;=C2=
=A0

RFNoC DDC=C2=A0=C2=A0=C2=A0=3D&gt; custom RFNoC block =3D&gt;=C2=A0=C2=A0rf=
noc rx streamer =3D&gt;Host block</div><div><br></div><div>If I remove my c=
ustom block from the last graph, I can receive samples and the led is on.</=
div><div><br></div><div>It seems like the custom block is blocking somehow =
the samples. I tried with different sampling rates and spp values for the r=
adio but nothing works.=C2=A0</div><div><br></div><div>Any help on this wil=
l be appreciated.</div><div><br></div><div>Kind Regards,</div><div><br></di=
v><div>Maria</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>

--0000000000003dca4a05d889dcad--

--===============7951398973126831932==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7951398973126831932==--

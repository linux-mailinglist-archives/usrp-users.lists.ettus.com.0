Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F1172EBCC
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 21:18:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6E6F0384B5D
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 15:18:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686683909; bh=i00nYwKc5as/ovNebi90NQ67WnUueges0Fh0I4sujOA=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=nQGU+xJZt8vdlo0O7XnwL4jSH27sqRmItcq7utZyPpspOvEz0PpUIm3gKTpfZQWTT
	 59/mHtwDhRoPZ7IwhLPGmbzlLHxmIidgLu5K0eFbCWsf2k39dtAJWWTLt+1Ji35hlw
	 Omn6R3jotQqzxYh2aGrW56or476ghFqX3ynRvDGkDC08KtY6ZdyzaeMsecoH3WTw8y
	 T1hY7mbSbdSRYDb2BBJl0CGkLlVg95CmxUCQ1Nibqz+DwCvRRcTMIAGQzWF4tjH6Yl
	 smclJZeFZcyqI64KnG/lxqxfSkf+D2TxK/SQMEB/rqomd5Ns+yYeAUZPRWveBk2RPU
	 Ypkjg/MWGu9jQ==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 5D271384AFA
	for <usrp-users@lists.ettus.com>; Tue, 13 Jun 2023 15:17:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="dp0GejZX";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5187aea68d6so821358a12.1
        for <usrp-users@lists.ettus.com>; Tue, 13 Jun 2023 12:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1686683840; x=1689275840;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=22dpXuflUyysaLfkgSFhfTXMz0wo7OeEBeAJU7bB9SY=;
        b=dp0GejZXGbrlW3aARIPj/eL6RVWgd9MTzd7YsxXukQbwUXI/gi7+4rwnDiRJbXOCkS
         BzO8VYwxGcJ63VVBJQ6dBufLsb06exgTfx9WbvV52gFzuEZNmGxjX3A10NqHpYNLMCHp
         KL5CmCFV0nDQLlFtnfHggx1+JU5FiTbr6oKFedoF5i+9pCzSbY1rlYtA469FyLRNmoFI
         42eBAssD6uOb7L1hekmaSZYC+8G7nenXgAE5omV3r5GGktW9rfB+wjaKmUJdqvoIPP2s
         kbcWi9dAxBPRGn6vbVgpOUjbUm1YHlNRnHYxgL9Oms3nBA4GHqC4d4MjfEmVvvLYaByb
         PwdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683840; x=1689275840;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=22dpXuflUyysaLfkgSFhfTXMz0wo7OeEBeAJU7bB9SY=;
        b=JVHM15oXJTMswbOTO99OMmOdMF1NPXefHLOxsv3FuzR7WFiNyz0BVYCs87EbLBAEIy
         QxLT8IFuY8yoVUEQc9PBAoeII8lc/IDNrxOQPhzH3zz6tr/I2TbuJ0lmv4jAlm5224/d
         H0KxX5Tbc8GDM8EkJ8VcDVnAt6rsVWXDK6i/UV0TNuoffed5wXNAclemXcsyNXmaGqD/
         lCOMO1Jsi25SlREYZ/UQmqvRVci/KKBdc0HQSFqQ/B7ljESxMrFs/whiirpjybi0atsJ
         AkZEK3Prl3cM5QQS3VCdUezJe+RRjuqrQRpbtYEdBOVSmDzJQtZPjAaAtcEYoNuF5ygR
         U7iA==
X-Gm-Message-State: AC+VfDwRSvDmIQe6OhWYwJRU3ZWsvM9Tb7VOnZgXFqxquRoyldHm3/yn
	Qq8D138+5XP3hY0kmAn4w+Z9u8of6rmo3tucCL5BKQ==
X-Google-Smtp-Source: ACHHUZ7cgfnTQ7Q2UWIPmAFwY5/EsBz1fmLZbVVXNtUIV+gWLJdm2SnlSY8ifgXirr/W9+HeKFmz5I3AMxOvsxqUb7Y=
X-Received: by 2002:a05:6402:1819:b0:514:9d3f:7a60 with SMTP id
 g25-20020a056402181900b005149d3f7a60mr7836739edy.14.1686683839868; Tue, 13
 Jun 2023 12:17:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
 <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com> <CAB__hTQgDtPFOMXqK7-gyAhnc_1Q7=Or9rw2bgBaqwe+_xTSbw@mail.gmail.com>
 <CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmail.com>
 <CAB__hTSa6Gx54yshpFFGEdzmLoO48YTsAR8M0fTdkjqRkM2D3Q@mail.gmail.com>
 <CAMhTvwvk-15EvqX3T8ze-+FuLOU4jYxNtkK_K7AYa7OJkAwOAg@mail.gmail.com>
 <CAB__hTRW5aPaRYhuC6sZm3G1hJkpip-qPghwKc02XKwghxzb9g@mail.gmail.com>
 <CAMhTvwv0n=cYmx=CaW4qyVsnSkpaVmF39Ee2E4rL8Ay0Yb-h8g@mail.gmail.com>
 <CAB__hTRC45inNTcHWFo6dvqOTDersMMyi1z=yz-zSY_=s-iCUg@mail.gmail.com>
 <CAMhTvwtOr4=S68thYh_z9knGtRu1yn0gQdMkzfPs8XBCA03s+w@mail.gmail.com>
 <6149614c-e040-74d7-c794-d718094de6bc@gmail.com> <CAMhTvwu6hYdwEtsW3+z4zJgrDe2mex6YFZHBBjJFRUWOnJ8LZg@mail.gmail.com>
In-Reply-To: <CAMhTvwu6hYdwEtsW3+z4zJgrDe2mex6YFZHBBjJFRUWOnJ8LZg@mail.gmail.com>
Date: Tue, 13 Jun 2023 15:17:08 -0400
Message-ID: <CAB__hTRJfxrj_SpN4Hn66Q=tE+-cpmfRxCSrxEiO+zD=g3C76A@mail.gmail.com>
To: Michael Toussaint <mtoussaint@chaosinc.com>
Message-ID-Hash: EKG6O4UZDHOCECRXMF3GKSNEIZKKSSRL
X-Message-ID-Hash: EKG6O4UZDHOCECRXMF3GKSNEIZKKSSRL
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EKG6O4UZDHOCECRXMF3GKSNEIZKKSSRL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7618449951373287350=="

--===============7618449951373287350==
Content-Type: multipart/alternative; boundary="000000000000203b2205fe07afff"

--000000000000203b2205fe07afff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael,
One calibration procedure could be that you simply add a digital phase
offset to your 2nd Tx channel until your oscilloscope traces line up to
your satisfaction.  It would be nice if the default FPGA image included a
simple Rx & Tx complex scalar for this exact purpose (inside the DDC &
DUC), but that does not exist (yet).  If you are using gnuradio, it should
be easy to insert a complex scalar multiplication that would allow you to
adjust the samples streaming to just one channel.  In any case, if the
signal on the oscilloscope lines up well over your desired bandwidth, then
you can declare "mission accomplished".  On the other hand, if your signal
lines up at one end of your frequency bandwidth but then diverges at the
other end, it likely means a delay mismatch that you could potentially
"calibrate" by adding an appropriate length of cable to one path (in cable,
1 ns delay is about 8 inches).
Rob

On Tue, Jun 13, 2023 at 1:51=E2=80=AFPM Michael Toussaint <mtoussaint@chaos=
inc.com>
wrote:

> Hi Marcus,
>
> Yes, the cables are identical, we also experimented with Phase stable tes=
t
> cables but did not see any improvement. We understand there will be some
> residual phase errors, but the RF coming out with a 2.64ns delta or ~135
> degree phase shift @ 144MHz seems like more than that. Is that level of
> offset to be expected, if so is there a procedure to calibrate that out t=
o
> align the RF?
>
> Understand that the phase drift measurements are the change over time. Do
> you know if Measured Performance results, from
> https://kb.ettus.com/USRP_N320/N321_LO_Distribution, where generated on
> Rx channels (e.g. by injecting a tone to a N321 and a N320 and measuring
> the phase difference of the IQ over time) or on Tx channels (e.g. N321 an=
d
> N320 transmitting a tone and using some type of test equipment to
> measure the phase offset of the RF over time) or is there some other way?
> I'd just like to repeat the process to see if I can repeat the results or
> see if there is something I am doing wrong.
>
> Thanks,
>
> Michael Toussaint
>
>
> On Thu, Jun 8, 2023 at 6:53=E2=80=AFPM Marcus D. Leech <patchvonbraun@gma=
il.com>
> wrote:
>
>> On 08/06/2023 21:41, Michael Toussaint wrote:
>>
>> Hi Rob,
>>
>> Yes, 0.57 degrees is definitely within my measurement error. But,
>> shouldn't the N321 synchronize the phase of the LO's too?
>>
>> If you're sharing LOs, there's no "synchronizing the LOs".  A single LO
>> is shared through a switching matrix to each of the
>>   relevant mixers.  There'll be some residual phase-error, since
>> effective path-length will never be precisely matched--even
>>   with careful board layout, internal temperature differentials and batc=
h
>> differences in electronic components in the switching
>>   matrix, and even the mixers involved, will yield (usually small) mutua=
l
>> phase errors.
>>
>> Presumably the length of your LO-sharing cables are all the same, of the
>> same type, and from the same manufacturer
>>   (and, preferrably, from the same cable batch).
>>
>>
>>
>>
>> Is there documentation available of how to repeat the results in the
>> "Measured Performance" section of
>> https://kb.ettus.com/USRP_N320/N321_LO_Distribution (e.g. code examples
>> and or test setup to measure the phase drift)? It shows less than 0.1
>> degree of phase error, I'd like to just repeat that test to confirm
>> everything is working correctly, and see what might be causing the delta=
s.
>>
>> Note that phase-drift measurements measure the *change* in relative phas=
e
>> between channels over time.  Not, I think, the
>>   absolute phase-offset between channels.  In a shared-LO setup (ignorin=
g
>> any bugs or mis-configurations of the DUCs, etc), the
>>   absolute phase-offset between channels is repeatable and (largely)
>> static.  Dominated by physical processes like temperature
>>   drift and (worse) differential temperature drift in analog components
>> like cables, circuit-board traces, component temperatures,
>>   etc.
>>
>>
>>
>> Thanks,
>>
>> Michael
>>
>>
>> On Wed, Jun 7, 2023 at 12:22=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wr=
ote:
>>
>>> Hi Michael,
>>> I don't have any ideas for reducing a time delay offset. But, I still
>>> wonder if the problem could actually be just a phase offset.
>>>
>>> With a relative delay of 2.5ns and a bandwidth of 4 MHz, the amount of
>>> phase variation you would see is 0.57 degrees.  That is not easy to see=
.
>>> On the other hand, if your bandwidth increased to 200 MHz, you would se=
e
>>> phase variation of 28.6 degrees (if the delay offset is 2.5 ns).
>>> Rob
>>>
>>>
>>> On Tue, Jun 6, 2023 at 9:38=E2=80=AFPM Michael Toussaint <
>>> mtoussaint@chaosinc.com> wrote:
>>>
>>>> Hi Rob,
>>>>
>>>> The signal is actually sweeping over 4MHz, but is just super zoomed
>>>> into a small piece to show the time delta so it looks CW. The time
>>>> difference appears to be the same (within my ability to measure) acros=
s the
>>>> band so I am assuming it is a time delay offset.
>>>>
>>>> Any suggestions on how to reduce this time delay offset?
>>>>
>>>> Thanks,
>>>>
>>>> Michael Toussaint
>>>>
>>>>
>>>> On Mon, Jun 5, 2023 at 8:51=E2=80=AFPM Rob Kossler <rkossler@nd.edu> w=
rote:
>>>>
>>>>> Hi Michael,
>>>>> Either a delay offset OR a phase offset will show itself as a relativ=
e
>>>>> phase.  In order to distinguish between a delay offset and a phase of=
fset,
>>>>> your signal must have appreciable bandwidth.  It appears that your si=
gnal
>>>>> is CW.  It is entirely possible that your delay offset is zero.  Does=
 this
>>>>> make sense?
>>>>> Rob
>>>>>
>>>>> On Mon, Jun 5, 2023 at 5:32=E2=80=AFPM Michael Toussaint <
>>>>> mtoussaint@chaosinc.com> wrote:
>>>>>
>>>>>> Could you share how you're setting up LO sharing in your code, as
>>>>>> well as how you're setting the system clock on the N321?
>>>>>>
>>>>>> The functions "configure_channels" and "set_lo_hw_exports" are used
>>>>>> to set up the LO sharing.
>>>>>>
>>>>>> The functions "sync_sources" and "sync_all_devices" are used to set
>>>>>> up the system clock on the N321.
>>>>>>
>>>>>> How do you measure the relative delay?
>>>>>>
>>>>>> We are measuring the offset of the LO's by just measuring the phase
>>>>>> difference of ithe RF coming out of the Ettus with an Oscilloscope
>>>>>> (picture attached as
>>>>>> Scope_Trace_SingleStream_LO.png
>>>>>>
>>>>>> <https://mail.google.com/mail/u/0?ui=3D2&ik=3D34abf4583b&attid=3D0.1=
&permmsgid=3Dmsg-a:r-1207093291428225864&view=3Datt&disp=3Dsafe&realattid=
=3Df_lijcykt50>).
>>>>>> Yellow is Channel 1, Green is Channel 2; using a single streamer we =
still
>>>>>> appear to have a 2.64ns delta or ~135 degree phase shift.
>>>>>>
>>>>>> Thanks Marcus and Rob for your assistance.
>>>>>>
>>>>>> Michael Toussaint
>>>>>>
>>>>>> def sync_sources(usrp):
>>>>>>     logging.info('Setting Sync Sources')
>>>>>>
>>>>>>     usrp.set_sync_source(clock_source =3D 'gpsdo',
>>>>>>                          time_source =3D 'gpsdo')
>>>>>>
>>>>>> def sync_all_devices(hw_info):
>>>>>>     logging.info('Syncing All Devices')
>>>>>>
>>>>>>     mb_with_gps_locked =3D -1
>>>>>>
>>>>>>     while 1:
>>>>>>         time.sleep(1.0)
>>>>>>
>>>>>>         all_ref_locked =3D True
>>>>>>
>>>>>>         for board in range(hw_info.usrp.get_num_mboards()):
>>>>>>             all_ref_locked =3D all_ref_locked and \
>>>>>>                 hw_info.usrp.get_mboard_sensor('ref_locked',
>>>>>>                                                board).to_bool()
>>>>>>
>>>>>>             if (mb_with_gps_locked =3D=3D -1) and \
>>>>>>                 hw_info.usrp.get_mboard_sensor('gps_locked',
>>>>>>                                                board).to_bool():
>>>>>>                 mb_with_gps_locked =3D board
>>>>>>
>>>>>>         if all_ref_locked:
>>>>>>             logging.info('All Devices are REF locked')
>>>>>>             break
>>>>>>
>>>>>>     logging.info('GPS Locked on MB #%d', mb_with_gps_locked)
>>>>>>
>>>>>>     time.sleep(1.0)
>>>>>>     hw_info.usrp.set_time_next_pps(
>>>>>>         uhd.types.TimeSpec(
>>>>>>         hw_info.usrp.get_mboard_sensor('gps_time',
>>>>>>                                        mb_with_gps_locked).to_int() =
+
>>>>>>                                        1.0)
>>>>>>     )
>>>>>>     time.sleep(1.0)
>>>>>>
>>>>>>
>>>>>> def configure_channels(usrp, rf_type, hw_info):
>>>>>>     rf_channel_index =3D None
>>>>>>     set_rf_rate =3D None
>>>>>>     set_rf_freq =3D None
>>>>>>     set_rf_gain =3D None
>>>>>>     set_rf_lo_source =3D None
>>>>>>     get_rf_lo_source =3D None
>>>>>>     get_rf_lo_freq =3D None
>>>>>>     get_rf_lo_freq_range =3D None
>>>>>>
>>>>>>     if (rf_type =3D=3D 'rx'):
>>>>>>         if (len(hw_info.rx_channel_index) > 0):
>>>>>>             rf_channel_index =3D hw_info.rx_channel_index
>>>>>>             set_rf_rate =3D usrp.set_rx_rate
>>>>>>             set_rf_freq =3D usrp.set_rx_freq
>>>>>>             set_rf_gain =3D usrp.set_rx_gain
>>>>>>             set_rf_lo_source =3D usrp.set_rx_lo_source
>>>>>>             get_rf_lo_source =3D usrp.get_rx_lo_source
>>>>>>             get_rf_lo_freq =3D usrp.get_rx_lo_freq
>>>>>>             get_rf_lo_freq_range =3D usrp.get_rx_lo_freq_range
>>>>>>         else:
>>>>>>             return
>>>>>>     elif (rf_type =3D=3D 'tx'):
>>>>>> i        if (len(hw_info.tx_channel_index) > 0):
>>>>>>             rf_channel_index =3D hw_info.tx_channel_index
>>>>>>             set_rf_rate =3D usrp.set_tx_rate
>>>>>>             set_rf_freq =3D usrp.set_tx_freq
>>>>>>             set_rf_gain =3D usrp.set_tx_gain
>>>>>>             set_rf_lo_source =3D usrp.set_tx_lo_source
>>>>>>             get_rf_lo_source =3D usrp.get_tx_lo_source
>>>>>>             get_rf_lo_freq =3D usrp.get_tx_lo_freq
>>>>>>             get_rf_lo_freq_range =3D usrp.get_tx_lo_freq_range
>>>>>> i        else:
>>>>>>             return
>>>>>>
>>>>>>     logging.info('Configuring %s Channels', rf_type.upper())
>>>>>>
>>>>>>     for rf_ch_name, rf_ch_index in rf_channel_index.items():
>>>>>>         logging.info('Configuring %s channel %s (channel #%d)',
>>>>>>                      rf_type.upper(), rf_ch_name, rf_ch_index)
>>>>>>
>>>>>>         ch_def =3D hw_info.channel_def[rf_ch_name]
>>>>>>
>>>>>>         # LO Channel Setup
>>>>>>         current_lo_name =3D 'unknown'
>>>>>>         current_lo_src =3D 'unknown'
>>>>>>
>>>>>>         if ch_def.lo_inputs is not None:
>>>>>>             logging.info('  Setting %s LO for Channel %s (#%d)',
>>>>>>                          rf_type.upper(), rf_ch_name, rf_ch_index)
>>>>>>
>>>>>>             set_rf_lo_source(ch_def.lo_inputs.source,
>>>>>>                              ch_def.lo_inputs.name,
>>>>>>                              rf_ch_index)
>>>>>>             current_lo_name =3D ch_def.lo_inputs.name
>>>>>>
>>>>>>             logging.info('    (#%d) Requested %s LO name %s, src %s'=
,
>>>>>>                          rf_ch_index,
>>>>>>                          rf_type.upper(),
>>>>>>                          ch_def.lo_inputs.name,
>>>>>>                          ch_def.lo_inputs.source)
>>>>>>         else:
>>>>>>             logging.info('  No %s LO inputs for Channel %s (#%d)',
>>>>>>                          rf_type.upper(), rf_ch_name, rf_ch_index)
>>>>>>
>>>>>>             current_lo_name =3D 'lo1'
>>>>>>
>>>>>>         current_lo_src =3D get_rf_lo_source(current_lo_name,
>>>>>>                                           rf_ch_index)
>>>>>>
>>>>>>         logging.info('    (#%d) Current %s LO name %s, src %s',
>>>>>>                      rf_ch_index,
>>>>>>                      rf_type.upper(),
>>>>>>                      current_lo_name,
>>>>>>                      current_lo_src)
>>>>>>
>>>>>>         rf_lo_freq =3D get_rf_lo_freq(current_lo_name,
>>>>>>                                     rf_ch_index)
>>>>>>
>>>>>>         logging.info('    (#%d) [%s] Current %s LO freq %d',
>>>>>>                          rf_ch_index,
>>>>>>                          current_lo_name,
>>>>>>                          rf_type.upper(),
>>>>>>                          rf_lo_freq)
>>>>>>
>>>>>>         rf_lo_freq_range =3D get_rf_lo_freq_range(
>>>>>>             current_lo_name, rf_ch_index)
>>>>>>
>>>>>>         temp =3D '    (#%d) [%s] Current %s LO freq range' + \
>>>>>>             ' [%d, %d] step %d'
>>>>>>
>>>>>>         logging.info(temp,
>>>>>>                      rf_ch_index,
>>>>>>                      current_lo_name,
>>>>>>                      rf_type.upper(),
>>>>>>                      rf_lo_freq_range.start(),
>>>>>>                      rf_lo_freq_range.stop(),
>>>>>>                      rf_lo_freq_range.step())
>>>>>>
>>>>>>         logging.info('  Setting Sampling Rate %s', hw_info.fs)
>>>>>>         set_rf_rate(hw_info.fs, rf_ch_index)
>>>>>>
>>>>>>         logging.info('  Setting Center Freq %s', hw_info.fc)
>>>>>>         tr =3D set_rf_freq(uhd.libpyuhd.types.tune_request(hw_info.f=
c),
>>>>>>                          rf_ch_index)
>>>>>>
>>>>>>         logging.info('    (#%d) %s Tune Result:',
>>>>>>                      rf_ch_index, rf_type.upper())
>>>>>>         log_tune_result(tr)
>>>>>>
>>>>>>         logging.info('  Setting %s Gain: %2.3f db',
>>>>>>                      rf_type.upper(),
>>>>>>                      ch_def.gain)
>>>>>>         set_rf_gain(ch_def.gain, rf_ch_index)
>>>>>>
>>>>>> def set_lo_hw_exports(usrp, node_name, dirx, lo_enabled,
>>>>>> output_array):
>>>>>>     """Set LO HW Exports"""
>>>>>>     if (lo_enabled is None) or (output_array is None):
>>>>>>         return
>>>>>>
>>>>>>     logging.info('Setting %s LO Export Enabled for %s',
>>>>>>                  dirx.upper(), node_name)
>>>>>>
>>>>>>     if dirx.lower() =3D=3D 'rx':
>>>>>>         usrp.set_rx_lo_export_enabled(lo_enabled, 'lo1', 0)
>>>>>>         enable_val =3D usrp.get_rx_lo_export_enabled('lo1')
>>>>>>     elif dirx.lower() =3D=3D 'tx':
>>>>>>         usrp.set_tx_lo_export_enabled(lo_enabled, 'lo1', 0)
>>>>>>         enable_val =3D usrp.get_tx_lo_export_enabled('lo1')
>>>>>>     else:
>>>>>>         logging.warning('Invalid direction %s', dirx)
>>>>>>         return
>>>>>>
>>>>>>     logging.info('  %s LO Export Enabled =3D %s, requested %s',
>>>>>>                  dirx.upper(), enable_val, lo_enabled)
>>>>>>
>>>>>>     temp_path =3D 'blocks/0/Radio#0/dboard/' + \
>>>>>>         f'{dirx.lower()}_frontends/' + \
>>>>>>         '0/los/lo1/lo_distribution/LO_OUT_{}/export'
>>>>>>
>>>>>>     logging.info('Setting %s LO HW Outputs for %s',
>>>>>>                  dirx.upper(), node_name)
>>>>>>
>>>>>>     for out_num in range(len(output_array)):
>>>>>>         hw_lo_export_path =3D temp_path.format(out_num)
>>>>>>
>>>>>>         if usrp.get_tree().exists(hw_lo_export_path):
>>>>>>             usrp.get_tree().access_bool(hw_lo_export_path).set(
>>>>>>                 output_array[out_num])
>>>>>>
>>>>>>             logging.info('  %s LO HW Export Out[%d] =3D %s, %s %s',
>>>>>>                          dirx.upper(), out_num,
>>>>>>                          usrp.get_tree().access_bool(
>>>>>>                             hw_lo_export_path).get(),
>>>>>>                         'requested',
>>>>>>                         output_array[out_num])
>>>>>>         else:
>>>>>>             logging.warning('  %s LO HW Export Out[%d] does not
>>>>>> exist',
>>>>>>                             dirx.upper(), out_num)
>>>>>>
>>>>>>
>>>>>> On Thu, May 25, 2023 at 6:45=E2=80=AFAM Rob Kossler <rkossler@nd.edu=
> wrote:
>>>>>>
>>>>>>> On Thu, May 25, 2023 at 3:54=E2=80=AFAM Michael Toussaint
>>>>>>> <mtoussaint@chaosinc.com> wrote:
>>>>>>> >
>>>>>>> > Used a single streamer and saw the delay slightly improve to
>>>>>>> between 2.5 - 3 ns.
>>>>>>> >
>>>>>>> > Any other suggestions to improve the delay to match the results
>>>>>>> from the knowledge base,
>>>>>>> https://kb.ettus.com/USRP_N320/N321_LO_Distribution?
>>>>>>>
>>>>>>> How do you measure the relative delay?
>>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>
>>
>>
>>
>
>
>

--000000000000203b2205fe07afff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Michael,<div>One calibration procedure could be that yo=
u simply add a digital phase offset to your 2nd Tx channel until your oscil=
loscope traces line up to your satisfaction.=C2=A0 It would be nice if the =
default FPGA image included a simple Rx &amp; Tx complex scalar for this ex=
act purpose (inside the DDC &amp; DUC), but that does not exist (yet).=C2=
=A0 If you are using gnuradio, it should be easy to insert a complex scalar=
 multiplication that would allow you to adjust the samples streaming to jus=
t one channel.=C2=A0 In any case, if the signal on the oscilloscope lines u=
p well over your desired bandwidth, then you can declare &quot;mission acco=
mplished&quot;.=C2=A0 On the other hand, if your signal lines up at one end=
 of your frequency bandwidth but then diverges at the other end, it likely =
means a delay mismatch that you could potentially &quot;calibrate&quot; by =
adding an appropriate length of cable to one path (in cable, 1 ns delay is =
about 8 inches).</div><div>Rob</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 13, 2023 at 1:51=E2=80=AFPM=
 Michael Toussaint &lt;<a href=3D"mailto:mtoussaint@chaosinc.com">mtoussain=
t@chaosinc.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Marcus,=
</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Yes, the cables are ident=
ical, we also experimented with Phase stable test cables but did not see an=
y improvement. We understand there will be some residual phase errors, but =
the RF coming out with a 2.64ns delta or ~135 degree phase shift=C2=A0@ 144=
MHz seems like more than that. Is that level of offset to be expected, if s=
o is there a procedure=C2=A0to calibrate that out to align the RF?=C2=A0</d=
iv><div dir=3D"ltr"><br></div><div>Understand that the phase drift measurem=
ents=C2=A0are the change over time. Do you know if Measured Performance res=
ults, from=C2=A0<a href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Distribut=
ion" target=3D"_blank">https://kb.ettus.com/USRP_N320/N321_LO_Distribution<=
/a>, where generated on Rx channels (e.g. by injecting a tone to a N321 and=
 a N320 and measuring the phase difference of the IQ over time) or on Tx ch=
annels (e.g. N321 and N320 transmitting a tone and using some type of test =
equipment to measure=C2=A0the phase offset of the RF over time) or is there=
 some other way? I&#39;d just like to repeat the process to see if I can re=
peat=C2=A0the results or see if there is something I am doing wrong.</div><=
div><br></div><div>Thanks,</div><div><br></div><div>Michael Toussaint</div>=
<div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Jun 8, 2023 at 6:53=E2=80=AFPM Marcus D. Leech &lt;=
<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 08/06/2023 21:41, Michael Toussaint
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">Hi Rob,</div>
          <div dir=3D"ltr"><br>
          </div>
          <div dir=3D"ltr">Yes, 0.57 degrees is definitely within my
            measurement=C2=A0error. But, shouldn&#39;t the N321 synchronize=
 the
            phase of the LO&#39;s too?</div>
        </div>
      </div>
    </blockquote>
    If you&#39;re sharing LOs, there&#39;s no &quot;synchronizing the LOs&q=
uot;.=C2=A0 A single
    LO is shared through a switching matrix to each of the<br>
    =C2=A0 relevant mixers.=C2=A0 There&#39;ll be some residual phase-error=
, since
    effective path-length will never be precisely matched--even<br>
    =C2=A0 with careful board layout, internal temperature differentials an=
d
    batch differences in electronic components in the switching<br>
    =C2=A0 matrix, and even the mixers involved, will yield (usually small)
    mutual phase errors.<br>
    <br>
    Presumably the length of your LO-sharing cables are all the same, of
    the same type, and from the same manufacturer<br>
    =C2=A0 (and, preferrably, from the same cable batch).<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr"><br>
          </div>
          <div>Is there documentation available of how to repeat the
            results in the &quot;Measured Performance&quot; section of=C2=
=A0<a href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Distribution" target=
=3D"_blank">https://kb.ettus.com/USRP_N320/N321_LO_Distribution</a>=C2=A0(e=
.g.
            code examples and or test setup to measure the phase drift)?
            It shows less than 0.1 degree of phase error, I&#39;d like to
            just repeat that test to confirm everything is working
            correctly, and see what might be causing the deltas.</div>
        </div>
      </div>
    </blockquote>
    Note that phase-drift measurements measure the *change* in relative
    phase between channels over time.=C2=A0 Not, I think, the<br>
    =C2=A0 absolute phase-offset between channels.=C2=A0 In a shared-LO set=
up
    (ignoring any bugs or mis-configurations of the DUCs, etc), the<br>
    =C2=A0 absolute phase-offset between channels is repeatable and (largel=
y)
    static.=C2=A0 Dominated by physical processes like temperature<br>
    =C2=A0 drift and (worse) differential temperature drift in analog
    components like cables, circuit-board traces, component
    temperatures,<br>
    =C2=A0 etc.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr"><span style=3D"color:rgb(80,0,80)">
            <div><br>
            </div>
            <div>Thanks,</div>
            <div><br>
            </div>
            <div>Michael</div>
            <div><br>
            </div>
          </span></div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 7, 2023 at
            12:22=E2=80=AFPM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.=
edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">Hi Michael,
              <div>I don&#39;t have any ideas for reducing a time delay
                offset. But, I still wonder if the problem could
                actually be just a phase offset.</div>
              <div><br>
                <div>With a relative delay of 2.5ns and a bandwidth of 4
                  MHz, the amount of phase variation you would see is
                  0.57 degrees.=C2=A0 That is not easy to see.=C2=A0 On the=
 other
                  hand, if your bandwidth=C2=A0increased to 200 MHz, you
                  would see phase variation of 28.6 degrees (if the
                  delay offset is 2.5 ns).</div>
                <div>Rob<br>
                  <div><br>
                  </div>
                </div>
              </div>
            </div>
            <br>
            <div class=3D"gmail_quote">
              <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 6, 2023 at
                9:38=E2=80=AFPM Michael Toussaint &lt;<a href=3D"mailto:mto=
ussaint@chaosinc.com" target=3D"_blank">mtoussaint@chaosinc.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">Hi Rob,=C2=A0
                    <div><br>
                    </div>
                    <div>The signal is actually sweeping over 4MHz, but
                      is just super zoomed into a small piece to show
                      the time delta so it looks CW. The time difference
                      appears to be the same (within my ability to
                      measure) across the band so I am assuming it is a
                      time delay offset.</div>
                    <div><br>
                    </div>
                    <div>Any suggestions on how to reduce this time
                      delay offset?</div>
                    <div><br>
                    </div>
                    <div>Thanks,</div>
                    <div><br>
                    </div>
                    <div>Michael Toussaint</div>
                    <div><br>
                    </div>
                  </div>
                  <br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 5,
                      2023 at 8:51=E2=80=AFPM Rob Kossler &lt;<a href=3D"ma=
ilto:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                      <div dir=3D"ltr">
                        <div dir=3D"ltr">Hi Michael,
                          <div>Either a delay offset OR a phase offset
                            will show itself as a relative phase.=C2=A0 In
                            order to distinguish between a delay offset
                            and a phase offset, your signal must have
                            appreciable bandwidth.=C2=A0 It appears that yo=
ur
                            signal is CW.=C2=A0 It is entirely possible tha=
t
                            your delay offset is zero.=C2=A0 Does this make
                            sense?</div>
                          <div>Rob</div>
                        </div>
                        <br>
                        <div class=3D"gmail_quote">
                          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun
                            5, 2023 at 5:32=E2=80=AFPM Michael Toussaint &l=
t;<a href=3D"mailto:mtoussaint@chaosinc.com" target=3D"_blank">mtoussaint@c=
haosinc.com</a>&gt;
                            wrote:<br>
                          </div>
                          <blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>
                            <div dir=3D"ltr">
                              <div dir=3D"ltr"><font color=3D"#9900ff">Coul=
d
                                  you share how you&#39;re setting up LO
                                  sharing in your code, as well as how
                                  you&#39;re setting the system clock on th=
e
                                  N321?</font>
                                <div><font color=3D"#9900ff"><br>
                                  </font></div>
                                <div>The functions &quot;<span style=3D"bac=
kground-color:rgb(255,255,255)"><font color=3D"#ff9900">configure_channels<=
/font></span>&quot;
                                  and &quot;<font color=3D"#ff9900">set_lo_=
hw_exports</font>&quot;
                                  are used to set up the LO sharing.<br>
                                  <br>
                                  The functions &quot;<font color=3D"#ff990=
0">sync_sources</font>&quot;
                                  and &quot;<font color=3D"#ff9900">sync_al=
l_devices</font>&quot;
                                  are used to set up the system clock on
                                  the N321.<font color=3D"#9900ff"><br>
                                  </font></div>
                                <div><br>
                                </div>
                                <div>
                                  <div><font color=3D"#9900ff">How do you
                                      measure the relative delay?</font></d=
iv>
                                  <div><br>
                                  </div>
                                  <div>We are measuring the offset of
                                    the LO&#39;s by just measuring the phas=
e
                                    difference of <span>i</span>the
                                    RF coming out of the Ettus with an
                                    Oscilloscope (picture attached as=C2=A0=
=C2=A0<a id=3D"m_-8709694284090744430m_-7352161079718530126m_-7617529863513=
143383m_1811052512462931056m_-3658695941951127572m_8850574248469324996gmail=
-:tl" href=3D"https://mail.google.com/mail/u/0?ui=3D2&amp;ik=3D34abf4583b&a=
mp;attid=3D0.1&amp;permmsgid=3Dmsg-a:r-1207093291428225864&amp;view=3Datt&a=
mp;disp=3Dsafe&amp;realattid=3Df_lijcykt50" target=3D"_blank">
                                      <div style=3D"display:inline-block;ov=
erflow:hidden;padding:3px 0px;text-overflow:ellipsis;vertical-align:bottom;=
max-width:315px">Scope_Trace_SingleStream_LO.png</div>
                                    </a>). Yellow is Channel 1, Green is
                                    Channel 2; using a single streamer
                                    we still appear to have a 2.64ns
                                    delta or ~135 degree phase shift.</div>
                                  <div><br>
                                  </div>
                                  <div>Thanks Marcus and Rob for your
                                    assistance.</div>
                                  <div><br>
                                  </div>
                                  <div>Michael Toussaint</div>
                                  <div><br>
                                    <font color=3D"#ff9900">def
                                      sync_sources(usrp):<br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http://=
logging.info/" target=3D"_blank">logging.info</a>(&#39;Setting
                                      Sync Sources&#39;)<br>
                                      <br>
                                      =C2=A0 =C2=A0
                                      usrp.set_sync_source(clock_source
                                      =3D &#39;gpsdo&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0time_source =3D &#39;gpsdo&#39;=
)<br>
                                      <br>
                                      def sync_all_devices(hw_info):<br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http://=
logging.info/" target=3D"_blank">logging.info</a>(&#39;Syncing
                                      All Devices&#39;)<br>
                                      <br>
                                      =C2=A0 =C2=A0 mb_with_gps_locked =3D =
-1<br>
                                      <br>
                                      =C2=A0 =C2=A0 while 1:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 time.slee=
p(1.0)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 all_ref_l=
ocked =3D True<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 for board=
 in
                                      range(hw_info.usrp.get_num_mboards())=
:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 all_ref_locked =3D
                                      all_ref_locked and \<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0
                                      hw_info.usrp.get_mboard_sensor(&#39;r=
ef_locked&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0board).to_bool()<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 if (mb_with_gps_locked
                                      =3D=3D -1) and \<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0
                                      hw_info.usrp.get_mboard_sensor(&#39;g=
ps_locked&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0board).to_bool():<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 mb_with_gps_locked
                                      =3D board<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 if all_re=
f_locked:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.info=
</a>(&#39;All
                                      Devices are REF locked&#39;)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 break<br>
                                      <br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http://=
logging.info/" target=3D"_blank">logging.info</a>(&#39;GPS
                                      Locked on MB #%d&#39;,
                                      mb_with_gps_locked)<br>
                                      <br>
                                      =C2=A0 =C2=A0 time.sleep(1.0)<br>
                                      =C2=A0 =C2=A0
                                      hw_info.usrp.set_time_next_pps(<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.types=
.TimeSpec(<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      hw_info.usrp.get_mboard_sensor(&#39;g=
ps_time&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                      =C2=A0 =C2=A0 =C2=A0mb_with_gps_locke=
d).to_int()
                                      +<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                      =C2=A0 =C2=A0 =C2=A01.0)<br>
                                      =C2=A0 =C2=A0 )<br>
                                      =C2=A0 =C2=A0 time.sleep(1.0)<br>
                                      <br>
                                      <br>
                                      def configure_channels(usrp,
                                      rf_type, hw_info):<br>
                                      =C2=A0 =C2=A0 rf_channel_index =3D No=
ne<br>
                                      =C2=A0 =C2=A0 set_rf_rate =3D None<br=
>
                                      =C2=A0 =C2=A0 set_rf_freq =3D None<br=
>
                                      =C2=A0 =C2=A0 set_rf_gain =3D None<br=
>
                                      =C2=A0 =C2=A0 set_rf_lo_source =3D No=
ne<br>
                                      =C2=A0 =C2=A0 get_rf_lo_source =3D No=
ne<br>
                                      =C2=A0 =C2=A0 get_rf_lo_freq =3D None=
<br>
                                      =C2=A0 =C2=A0 get_rf_lo_freq_range =
=3D None<br>
                                      <br>
                                      =C2=A0 =C2=A0 if (rf_type =3D=3D &#39=
;rx&#39;):<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 if
                                      (len(hw_info.rx_channel_index)
                                      &gt; 0):<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 rf_channel_index =3D
                                      hw_info.rx_channel_index<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set_rf_rate =3D
                                      usrp.set_rx_rate<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set_rf_freq =3D
                                      usrp.set_rx_freq<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set_rf_gain =3D
                                      usrp.set_rx_gain<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set_rf_lo_source =3D
                                      usrp.set_rx_lo_source<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 get_rf_lo_source =3D
                                      usrp.get_rx_lo_source<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 get_rf_lo_freq =3D
                                      usrp.get_rx_lo_freq<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 get_rf_lo_freq_range =3D
                                      usrp.get_rx_lo_freq_range<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 return<br>
                                      =C2=A0 =C2=A0 elif (rf_type =3D=3D &#=
39;tx&#39;):</font><br>
                                    <font color=3D"#ff9900"><span>i</span>=
=C2=A0
                                      =C2=A0 =C2=A0 =C2=A0 if
                                      (len(hw_info.tx_channel_index)
                                      &gt; 0):<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 rf_channel_index =3D
                                      hw_info.tx_channel_index<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set_rf_rate =3D
                                      usrp.set_tx_rate<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set_rf_freq =3D
                                      usrp.set_tx_freq<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set_rf_gain =3D
                                      usrp.set_tx_gain<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set_rf_lo_source =3D
                                      usrp.set_tx_lo_source<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 get_rf_lo_source =3D
                                      usrp.get_tx_lo_source<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 get_rf_lo_freq =3D
                                      usrp.get_tx_lo_freq<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 get_rf_lo_freq_range =3D
                                      usrp.get_tx_lo_freq_range</font><br>
                                    <font color=3D"#ff9900"><span>i</span>=
=C2=A0
                                      =C2=A0 =C2=A0 =C2=A0 else:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 return<br>
                                      <br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http://=
logging.info/" target=3D"_blank">logging.info</a>(&#39;Configuring
                                      %s Channels&#39;, rf_type.upper())<br=
>
                                      <br>
                                      =C2=A0 =C2=A0 for rf_ch_name, rf_ch_i=
ndex in
                                      rf_channel_index.items():<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a h=
ref=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;Config=
uring
                                      %s channel %s (channel #%d)&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(), rf_ch_name,
                                      rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 ch_def =
=3D
                                      hw_info.channel_def[rf_ch_name]<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 # LO Chan=
nel Setup<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_l=
o_name =3D
                                      &#39;unknown&#39;<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_l=
o_src =3D &#39;unknown&#39;<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ch_def=
.lo_inputs is not
                                      None:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.info=
</a>(&#39;
                                      =C2=A0Setting %s LO for Channel %s
                                      (#%d)&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(), rf_ch_name,
                                      rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
                                      set_rf_lo_source(ch_def.lo_inputs.sou=
rce,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a hre=
f=3D"http://ch_def.lo_inputs.name/" target=3D"_blank">ch_def.lo_inputs.name=
</a>,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_ch_index)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 current_lo_name =3D=C2=A0<a href=3D"http://ch_def.lo_inputs.name/" t=
arget=3D"_blank">ch_def.lo_inputs.name</a><br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.info=
</a>(&#39;
                                      =C2=A0 =C2=A0(#%d) Requested %s LO na=
me %s,
                                      src %s&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_ch_index,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ch=
_def.lo_inputs.name/" target=3D"_blank">ch_def.lo_inputs.name</a>,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0ch_def.lo_inputs.source)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.info=
</a>(&#39;
                                      =C2=A0No %s LO inputs for Channel %s
                                      (#%d)&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(), rf_ch_name,
                                      rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 current_lo_name =3D
                                      &#39;lo1&#39;<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_l=
o_src =3D
                                      get_rf_lo_source(current_lo_name,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_ch_ind=
ex)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a h=
ref=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;
                                      =C2=A0 =C2=A0(#%d) Current %s LO name=
 %s,
                                      src %s&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0current_lo_name,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0current_lo_src)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_lo_fre=
q =3D
                                      get_rf_lo_freq(current_lo_name,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                      =C2=A0 rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a h=
ref=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;
                                      =C2=A0 =C2=A0(#%d) [%s] Current %s LO=
 freq
                                      %d&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_ch_index,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0current_lo_name,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_lo_freq)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_lo_fre=
q_range =3D
                                      get_rf_lo_freq_range(<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 current_lo_name,
                                      rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 temp =3D =
&#39; =C2=A0 =C2=A0(#%d) [%s]
                                      Current %s LO freq range&#39; + \<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 &#39; [%d, %d] step %d&#39;<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a h=
ref=3D"http://logging.info/" target=3D"_blank">logging.info</a>(temp,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0current_lo_name,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_lo_freq_range.start(),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_lo_freq_range.stop(),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_lo_freq_range.step())<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a h=
ref=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;
                                      =C2=A0Setting Sampling Rate %s&#39;,
                                      hw_info.fs)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_ra=
te(hw_info.fs,
                                      rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a h=
ref=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;
                                      =C2=A0Setting Center Freq %s&#39;,
                                      hw_info.fc)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 tr =3D
                                      set_rf_freq(uhd.libpyuhd.types.tune_r=
equest(hw_info.fc),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a h=
ref=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;
                                      =C2=A0 =C2=A0(#%d) %s Tune Result:&#3=
9;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,
                                      rf_type.upper())<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 log_tune_=
result(tr)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a h=
ref=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;
                                      =C2=A0Setting %s Gain: %2.3f db&#39;,=
<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ch_def.gain)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_ga=
in(ch_def.gain,
                                      rf_ch_index)<br>
                                      <br>
                                      def set_lo_hw_exports(usrp,
                                      node_name, dirx, lo_enabled,
                                      output_array):<br>
                                      =C2=A0 =C2=A0 &quot;&quot;&quot;Set L=
O HW Exports&quot;&quot;&quot;<br>
                                      =C2=A0 =C2=A0 if (lo_enabled is None)=
 or
                                      (output_array is None):<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br=
>
                                      <br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http://=
logging.info/" target=3D"_blank">logging.info</a>(&#39;Setting
                                      %s LO Export Enabled for %s&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(),
                                      node_name)<br>
                                      <br>
                                      =C2=A0 =C2=A0 if dirx.lower() =3D=3D =
&#39;rx&#39;:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      usrp.set_rx_lo_export_enabled(lo_enab=
led,
                                      &#39;lo1&#39;, 0)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_va=
l =3D
                                      usrp.get_rx_lo_export_enabled(&#39;lo=
1&#39;)<br>
                                      =C2=A0 =C2=A0 elif dirx.lower() =3D=
=3D &#39;tx&#39;:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      usrp.set_tx_lo_export_enabled(lo_enab=
led,
                                      &#39;lo1&#39;, 0)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_va=
l =3D
                                      usrp.get_tx_lo_export_enabled(&#39;lo=
1&#39;)<br>
                                      =C2=A0 =C2=A0 else:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 logging.w=
arning(&#39;Invalid
                                      direction %s&#39;, dirx)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br=
>
                                      <br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http://=
logging.info/" target=3D"_blank">logging.info</a>(&#39;
                                      =C2=A0%s LO Export Enabled =3D %s,
                                      requested %s&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(),
                                      enable_val, lo_enabled)<br>
                                      <br>
                                      =C2=A0 =C2=A0 temp_path =3D
                                      &#39;blocks/0/Radio#0/dboard/&#39; + =
\<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      f&#39;{dirx.lower()}_frontends/&#39; =
+ \<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      &#39;0/los/lo1/lo_distribution/LO_OUT=
_{}/export&#39;<br>
                                      <br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http://=
logging.info/" target=3D"_blank">logging.info</a>(&#39;Setting
                                      %s LO HW Outputs for %s&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(),
                                      node_name)<br>
                                      <br>
                                      =C2=A0 =C2=A0 for out_num in
                                      range(len(output_array)):<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_lo_exp=
ort_path =3D
                                      temp_path.format(out_num)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 if
                                      usrp.get_tree().exists(hw_lo_export_p=
ath):<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
                                      usrp.get_tree().access_bool(hw_lo_exp=
ort_path).set(<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0
                                      output_array[out_num])<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.info=
</a>(&#39;
                                      =C2=A0%s LO HW Export Out[%d] =3D %s,=
 %s
                                      %s&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0dirx.upper(), out_num,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0usrp.get_tree().access_bool(<br=
>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      hw_lo_export_path).get(),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      &#39;requested&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      output_array[out_num])<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 logging.warning(&#39; =C2=A0%s
                                      LO HW Export Out[%d] does not
                                      exist&#39;,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      dirx.upper(), out_num)</font></div>
                                </div>
                                <div><br>
                                </div>
                              </div>
                              <br>
                              <div class=3D"gmail_quote">
                                <div dir=3D"ltr" class=3D"gmail_attr">On
                                  Thu, May 25, 2023 at 6:45=E2=80=AFAM Rob
                                  Kossler &lt;<a href=3D"mailto:rkossler@nd=
.edu" target=3D"_blank">rkossler@nd.edu</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">On
                                  Thu, May 25, 2023 at 3:54=E2=80=AFAM Mich=
ael
                                  Toussaint<br>
                                  &lt;<a href=3D"mailto:mtoussaint@chaosinc=
.com" target=3D"_blank">mtoussaint@chaosinc.com</a>&gt;
                                  wrote:<br>
                                  &gt;<br>
                                  &gt; Used a single streamer and saw
                                  the delay slightly improve to between
                                  2.5 - 3 ns.<br>
                                  &gt;<br>
                                  &gt; Any other suggestions to improve
                                  the delay to match the results from
                                  the knowledge base, <a href=3D"https://kb=
.ettus.com/USRP_N320/N321_LO_Distribution" rel=3D"noreferrer" target=3D"_bl=
ank">https://kb.ettus.com/USRP_N320/N321_LO_Distribution</a>?<br>
                                  <br>
                                  How do you measure the relative delay?<br=
>
                                </blockquote>
                              </div>
                              <br clear=3D"all">
                              <div><br>
                              </div>
                            </div>
                          </blockquote>
                        </div>
                      </div>
                    </blockquote>
                  </div>
                  <div><br>
                  </div>
                </div>
              </blockquote>
            </div>
          </blockquote>
        </div>
        <div><br>
        </div>
        <div dir=3D"ltr" class=3D"gmail_signature">
          <div dir=3D"ltr">
            <div>
              <table style=3D"border-collapse:collapse;font-family:Helvetic=
a,Arial,sans-serif;line-height:1.15;color:rgb(0,0,0)" cellspacing=3D"0" cel=
lpadding=3D"0">
                <tbody>
                  <tr>
                    <td><br>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <table style=3D"border-collapse:collapse" cellspacing=
=3D"0" cellpadding=3D"0">
                        <tbody>
                        </tbody>
                      </table>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div><div><br></div><div dir=3D"ltr" class=3D"gmail_signature=
"><div dir=3D"ltr"><div><table cellpadding=3D"0" cellspacing=3D"0" style=3D=
"border-collapse:collapse;font-family:Helvetica,Arial,sans-serif;line-heigh=
t:1.15;color:rgb(0,0,0)"><tbody><tr><td><br></td></tr><tr><td nowrap style=
=3D"line-height:1.2;white-space:nowrap"><br></td></tr><tr><td><table cellpa=
dding=3D"0" cellspacing=3D"0" style=3D"border-collapse:collapse"><tbody></t=
body></table></td></tr></tbody></table></div></div></div></div>
</blockquote></div>

--000000000000203b2205fe07afff--

--===============7618449951373287350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7618449951373287350==--

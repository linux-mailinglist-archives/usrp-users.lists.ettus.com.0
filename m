Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1B5728D39
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jun 2023 03:43:04 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E99E038490F
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 21:43:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686274982; bh=w8nVIn1S/MlW2z4lwVaMm3PbIaoK9rlPrrwQInoqtgI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=XZMPCG2Lb3HOe8xynmIw+rQs2h81HfuA7IFCMwBKkpRxnYGufQN5AKPqYoq4zLAjK
	 G8XCG74+VTAs9TlQsppAeADIsrZ4Q8lrvsUUmQQ9bLMUd3vpjwIq0yBJADlNNt+SlX
	 EPE3mNUNTPiqhBVygrRw1K+le3vQAD/p1f8l/PdlALrgXVy5lJrH3Zixgwre/PxTvw
	 A4Uy1b+b16oIEGMz56uh26alShQmUI/OZ2ExBXfsfrmKqS2LL2Vz112R7cXQ/L/W10
	 dtRKC7Qd3o+eLy/Dw8j3LYWlHIk+wc0FZEiMZUbe8w1ddrsHl1ek+ZPIWTCFPssAV8
	 CdN6vGCm/HEBw==
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 5E40538484F
	for <usrp-users@lists.ettus.com>; Thu,  8 Jun 2023 21:42:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=chaosinc.com header.i=@chaosinc.com header.b="WLhTp92v";
	dkim-atps=neutral
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-75d3f2c9d13so120111585a.1
        for <usrp-users@lists.ettus.com>; Thu, 08 Jun 2023 18:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chaosinc.com; s=google; t=1686274926; x=1688866926;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vhtbEHBPsegbPOSFjNwcWwdZoGWgfLcgYnIoM199BQc=;
        b=WLhTp92vmOyRh5FydTfbdx8o80YG6yiZ4vEri6vEog/EUnC8Vr+Fc7cHttJfwGvJfR
         s80LkgMGnroAS9R2jZfKUW2VS+BIADlXRmmVxVKz4n+uObseTy9OVleomCdiK97DXH4j
         AwEKXGCZP4l2RZL59XonRLSspZoCKteDkm/GI4AODQUX+/wbmNPPdchy8h81BCVch+Vh
         CyYBRB6jsKY/oCHkrHm1hMX5QI3wMeMTHIFMyucUNWJfJtSS5ObhdOrjNpaQV4wSnCP7
         TFVWQTWmHnAfs5X4IwWvXlk/15gx8p5PEoo5HPhV/mf2tHTw4awjdSRxjYkeZZR8ziyX
         XGLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686274926; x=1688866926;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vhtbEHBPsegbPOSFjNwcWwdZoGWgfLcgYnIoM199BQc=;
        b=bN6YIgS11Li2x9FdzkDM0tdEXeeL9zh4sVcbRvQusBjZRDqqwPEUGhoBw2X5/pC+c4
         pYjHkxb9VoS9HxHo2VdmTxQiRAFF+JuNXFQ+BwTU45bPA4iWfguq4eEEFgB8sQc/HIZb
         9AuGMUZ1wyHy6EqWAfZr1EWJFlQ1MWGcmqN8judzwDF72tI15rM/og4M3tpaADPkErgu
         LUf01kDssEBed5aF9+LaUQosFTAaXquwUOtNiERXT9hC1Yw2UDlCKvYjsjjobGlmsYr7
         AhSbaW9eLyPFnvvDipAtSzn7koH55AfGAwNoSifsjLQy+XvdtpyuAQ8qQaOE+w8zKxDa
         rDTw==
X-Gm-Message-State: AC+VfDwY1sfLM8S0E3F4GrGfigimhZDdsSam9raRctxDfsaKocJRDl6u
	/kCb05JIFnmB7LyAifxV2dNvroSVt5IOgT/3VtrPAA==
X-Google-Smtp-Source: ACHHUZ4kkwvA4IWzVmLqmbF4Xyx5fMJk1uygW3J7uP4Bz/nXrPCUOeWx3CvnSKeJ2t34zJSbxhr++JGDOdAmtUux34g=
X-Received: by 2002:a05:620a:910:b0:75b:23a1:3620 with SMTP id
 v16-20020a05620a091000b0075b23a13620mr7021811qkv.49.1686274925697; Thu, 08
 Jun 2023 18:42:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
 <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com> <CAB__hTQgDtPFOMXqK7-gyAhnc_1Q7=Or9rw2bgBaqwe+_xTSbw@mail.gmail.com>
 <CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmail.com>
 <CAB__hTSa6Gx54yshpFFGEdzmLoO48YTsAR8M0fTdkjqRkM2D3Q@mail.gmail.com>
 <CAMhTvwvk-15EvqX3T8ze-+FuLOU4jYxNtkK_K7AYa7OJkAwOAg@mail.gmail.com>
 <CAB__hTRW5aPaRYhuC6sZm3G1hJkpip-qPghwKc02XKwghxzb9g@mail.gmail.com>
 <CAMhTvwv0n=cYmx=CaW4qyVsnSkpaVmF39Ee2E4rL8Ay0Yb-h8g@mail.gmail.com> <CAB__hTRC45inNTcHWFo6dvqOTDersMMyi1z=yz-zSY_=s-iCUg@mail.gmail.com>
In-Reply-To: <CAB__hTRC45inNTcHWFo6dvqOTDersMMyi1z=yz-zSY_=s-iCUg@mail.gmail.com>
From: Michael Toussaint <mtoussaint@chaosinc.com>
Date: Thu, 8 Jun 2023 18:41:55 -0700
Message-ID: <CAMhTvwtOr4=S68thYh_z9knGtRu1yn0gQdMkzfPs8XBCA03s+w@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: U3A6LXL4G27NMEOJDLIFWHV54UYOEXTO
X-Message-ID-Hash: U3A6LXL4G27NMEOJDLIFWHV54UYOEXTO
X-MailFrom: mtoussaint@chaosinc.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U3A6LXL4G27NMEOJDLIFWHV54UYOEXTO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2594712323990903883=="

--===============2594712323990903883==
Content-Type: multipart/alternative; boundary="000000000000f0ad5805fda87995"

--000000000000f0ad5805fda87995
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

Yes, 0.57 degrees is definitely within my measurement error. But, shouldn't
the N321 synchronize the phase of the LO's too?

Is there documentation available of how to repeat the results in the
"Measured Performance" section of
https://kb.ettus.com/USRP_N320/N321_LO_Distribution (e.g. code examples and
or test setup to measure the phase drift)? It shows less than 0.1 degree of
phase error, I'd like to just repeat that test to confirm everything is
working correctly, and see what might be causing the deltas.

Thanks,

Michael


On Wed, Jun 7, 2023 at 12:22=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrote=
:

> Hi Michael,
> I don't have any ideas for reducing a time delay offset. But, I still
> wonder if the problem could actually be just a phase offset.
>
> With a relative delay of 2.5ns and a bandwidth of 4 MHz, the amount of
> phase variation you would see is 0.57 degrees.  That is not easy to see.
> On the other hand, if your bandwidth increased to 200 MHz, you would see
> phase variation of 28.6 degrees (if the delay offset is 2.5 ns).
> Rob
>
>
> On Tue, Jun 6, 2023 at 9:38=E2=80=AFPM Michael Toussaint <mtoussaint@chao=
sinc.com>
> wrote:
>
>> Hi Rob,
>>
>> The signal is actually sweeping over 4MHz, but is just super zoomed into
>> a small piece to show the time delta so it looks CW. The time difference
>> appears to be the same (within my ability to measure) across the band so=
 I
>> am assuming it is a time delay offset.
>>
>> Any suggestions on how to reduce this time delay offset?
>>
>> Thanks,
>>
>> Michael Toussaint
>>
>>
>> On Mon, Jun 5, 2023 at 8:51=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wro=
te:
>>
>>> Hi Michael,
>>> Either a delay offset OR a phase offset will show itself as a relative
>>> phase.  In order to distinguish between a delay offset and a phase offs=
et,
>>> your signal must have appreciable bandwidth.  It appears that your sign=
al
>>> is CW.  It is entirely possible that your delay offset is zero.  Does t=
his
>>> make sense?
>>> Rob
>>>
>>> On Mon, Jun 5, 2023 at 5:32=E2=80=AFPM Michael Toussaint <
>>> mtoussaint@chaosinc.com> wrote:
>>>
>>>> Could you share how you're setting up LO sharing in your code, as well
>>>> as how you're setting the system clock on the N321?
>>>>
>>>> The functions "configure_channels" and "set_lo_hw_exports" are used to
>>>> set up the LO sharing.
>>>>
>>>> The functions "sync_sources" and "sync_all_devices" are used to set up
>>>> the system clock on the N321.
>>>>
>>>> How do you measure the relative delay?
>>>>
>>>> We are measuring the offset of the LO's by just measuring the phase
>>>> difference of the RF coming out of the Ettus with an Oscilloscope (pic=
ture
>>>> attached as
>>>> Scope_Trace_SingleStream_LO.png
>>>>
>>>> <https://mail.google.com/mail/u/0?ui=3D2&ik=3D34abf4583b&attid=3D0.1&p=
ermmsgid=3Dmsg-a:r-1207093291428225864&view=3Datt&disp=3Dsafe&realattid=3Df=
_lijcykt50>).
>>>> Yellow is Channel 1, Green is Channel 2; using a single streamer we st=
ill
>>>> appear to have a 2.64ns delta or ~135 degree phase shift.
>>>>
>>>> Thanks Marcus and Rob for your assistance.
>>>>
>>>> Michael Toussaint
>>>>
>>>> def sync_sources(usrp):
>>>>     logging.info('Setting Sync Sources')
>>>>
>>>>     usrp.set_sync_source(clock_source =3D 'gpsdo',
>>>>                          time_source =3D 'gpsdo')
>>>>
>>>> def sync_all_devices(hw_info):
>>>>     logging.info('Syncing All Devices')
>>>>
>>>>     mb_with_gps_locked =3D -1
>>>>
>>>>     while 1:
>>>>         time.sleep(1.0)
>>>>
>>>>         all_ref_locked =3D True
>>>>
>>>>         for board in range(hw_info.usrp.get_num_mboards()):
>>>>             all_ref_locked =3D all_ref_locked and \
>>>>                 hw_info.usrp.get_mboard_sensor('ref_locked',
>>>>                                                board).to_bool()
>>>>
>>>>             if (mb_with_gps_locked =3D=3D -1) and \
>>>>                 hw_info.usrp.get_mboard_sensor('gps_locked',
>>>>                                                board).to_bool():
>>>>                 mb_with_gps_locked =3D board
>>>>
>>>>         if all_ref_locked:
>>>>             logging.info('All Devices are REF locked')
>>>>             break
>>>>
>>>>     logging.info('GPS Locked on MB #%d', mb_with_gps_locked)
>>>>
>>>>     time.sleep(1.0)
>>>>     hw_info.usrp.set_time_next_pps(
>>>>         uhd.types.TimeSpec(
>>>>         hw_info.usrp.get_mboard_sensor('gps_time',
>>>>                                        mb_with_gps_locked).to_int() +
>>>>                                        1.0)
>>>>     )
>>>>     time.sleep(1.0)
>>>>
>>>>
>>>> def configure_channels(usrp, rf_type, hw_info):
>>>>     rf_channel_index =3D None
>>>>     set_rf_rate =3D None
>>>>     set_rf_freq =3D None
>>>>     set_rf_gain =3D None
>>>>     set_rf_lo_source =3D None
>>>>     get_rf_lo_source =3D None
>>>>     get_rf_lo_freq =3D None
>>>>     get_rf_lo_freq_range =3D None
>>>>
>>>>     if (rf_type =3D=3D 'rx'):
>>>>         if (len(hw_info.rx_channel_index) > 0):
>>>>             rf_channel_index =3D hw_info.rx_channel_index
>>>>             set_rf_rate =3D usrp.set_rx_rate
>>>>             set_rf_freq =3D usrp.set_rx_freq
>>>>             set_rf_gain =3D usrp.set_rx_gain
>>>>             set_rf_lo_source =3D usrp.set_rx_lo_source
>>>>             get_rf_lo_source =3D usrp.get_rx_lo_source
>>>>             get_rf_lo_freq =3D usrp.get_rx_lo_freq
>>>>             get_rf_lo_freq_range =3D usrp.get_rx_lo_freq_range
>>>>         else:
>>>>             return
>>>>     elif (rf_type =3D=3D 'tx'):
>>>>         if (len(hw_info.tx_channel_index) > 0):
>>>>             rf_channel_index =3D hw_info.tx_channel_index
>>>>             set_rf_rate =3D usrp.set_tx_rate
>>>>             set_rf_freq =3D usrp.set_tx_freq
>>>>             set_rf_gain =3D usrp.set_tx_gain
>>>>             set_rf_lo_source =3D usrp.set_tx_lo_source
>>>>             get_rf_lo_source =3D usrp.get_tx_lo_source
>>>>             get_rf_lo_freq =3D usrp.get_tx_lo_freq
>>>>             get_rf_lo_freq_range =3D usrp.get_tx_lo_freq_range
>>>>         else:
>>>>             return
>>>>
>>>>     logging.info('Configuring %s Channels', rf_type.upper())
>>>>
>>>>     for rf_ch_name, rf_ch_index in rf_channel_index.items():
>>>>         logging.info('Configuring %s channel %s (channel #%d)',
>>>>                      rf_type.upper(), rf_ch_name, rf_ch_index)
>>>>
>>>>         ch_def =3D hw_info.channel_def[rf_ch_name]
>>>>
>>>>         # LO Channel Setup
>>>>         current_lo_name =3D 'unknown'
>>>>         current_lo_src =3D 'unknown'
>>>>
>>>>         if ch_def.lo_inputs is not None:
>>>>             logging.info('  Setting %s LO for Channel %s (#%d)',
>>>>                          rf_type.upper(), rf_ch_name, rf_ch_index)
>>>>
>>>>             set_rf_lo_source(ch_def.lo_inputs.source,
>>>>                              ch_def.lo_inputs.name,
>>>>                              rf_ch_index)
>>>>             current_lo_name =3D ch_def.lo_inputs.name
>>>>
>>>>             logging.info('    (#%d) Requested %s LO name %s, src %s',
>>>>                          rf_ch_index,
>>>>                          rf_type.upper(),
>>>>                          ch_def.lo_inputs.name,
>>>>                          ch_def.lo_inputs.source)
>>>>         else:
>>>>             logging.info('  No %s LO inputs for Channel %s (#%d)',
>>>>                          rf_type.upper(), rf_ch_name, rf_ch_index)
>>>>
>>>>             current_lo_name =3D 'lo1'
>>>>
>>>>         current_lo_src =3D get_rf_lo_source(current_lo_name,
>>>>                                           rf_ch_index)
>>>>
>>>>         logging.info('    (#%d) Current %s LO name %s, src %s',
>>>>                      rf_ch_index,
>>>>                      rf_type.upper(),
>>>>                      current_lo_name,
>>>>                      current_lo_src)
>>>>
>>>>         rf_lo_freq =3D get_rf_lo_freq(current_lo_name,
>>>>                                     rf_ch_index)
>>>>
>>>>         logging.info('    (#%d) [%s] Current %s LO freq %d',
>>>>                          rf_ch_index,
>>>>                          current_lo_name,
>>>>                          rf_type.upper(),
>>>>                          rf_lo_freq)
>>>>
>>>>         rf_lo_freq_range =3D get_rf_lo_freq_range(
>>>>             current_lo_name, rf_ch_index)
>>>>
>>>>         temp =3D '    (#%d) [%s] Current %s LO freq range' + \
>>>>             ' [%d, %d] step %d'
>>>>
>>>>         logging.info(temp,
>>>>                      rf_ch_index,
>>>>                      current_lo_name,
>>>>                      rf_type.upper(),
>>>>                      rf_lo_freq_range.start(),
>>>>                      rf_lo_freq_range.stop(),
>>>>                      rf_lo_freq_range.step())
>>>>
>>>>         logging.info('  Setting Sampling Rate %s', hw_info.fs)
>>>>         set_rf_rate(hw_info.fs, rf_ch_index)
>>>>
>>>>         logging.info('  Setting Center Freq %s', hw_info.fc)
>>>>         tr =3D set_rf_freq(uhd.libpyuhd.types.tune_request(hw_info.fc)=
,
>>>>                          rf_ch_index)
>>>>
>>>>         logging.info('    (#%d) %s Tune Result:',
>>>>                      rf_ch_index, rf_type.upper())
>>>>         log_tune_result(tr)
>>>>
>>>>         logging.info('  Setting %s Gain: %2.3f db',
>>>>                      rf_type.upper(),
>>>>                      ch_def.gain)
>>>>         set_rf_gain(ch_def.gain, rf_ch_index)
>>>>
>>>> def set_lo_hw_exports(usrp, node_name, dirx, lo_enabled, output_array)=
:
>>>>     """Set LO HW Exports"""
>>>>     if (lo_enabled is None) or (output_array is None):
>>>>         return
>>>>
>>>>     logging.info('Setting %s LO Export Enabled for %s',
>>>>                  dirx.upper(), node_name)
>>>>
>>>>     if dirx.lower() =3D=3D 'rx':
>>>>         usrp.set_rx_lo_export_enabled(lo_enabled, 'lo1', 0)
>>>>         enable_val =3D usrp.get_rx_lo_export_enabled('lo1')
>>>>     elif dirx.lower() =3D=3D 'tx':
>>>>         usrp.set_tx_lo_export_enabled(lo_enabled, 'lo1', 0)
>>>>         enable_val =3D usrp.get_tx_lo_export_enabled('lo1')
>>>>     else:
>>>>         logging.warning('Invalid direction %s', dirx)
>>>>         return
>>>>
>>>>     logging.info('  %s LO Export Enabled =3D %s, requested %s',
>>>>                  dirx.upper(), enable_val, lo_enabled)
>>>>
>>>>     temp_path =3D 'blocks/0/Radio#0/dboard/' + \
>>>>         f'{dirx.lower()}_frontends/' + \
>>>>         '0/los/lo1/lo_distribution/LO_OUT_{}/export'
>>>>
>>>>     logging.info('Setting %s LO HW Outputs for %s',
>>>>                  dirx.upper(), node_name)
>>>>
>>>>     for out_num in range(len(output_array)):
>>>>         hw_lo_export_path =3D temp_path.format(out_num)
>>>>
>>>>         if usrp.get_tree().exists(hw_lo_export_path):
>>>>             usrp.get_tree().access_bool(hw_lo_export_path).set(
>>>>                 output_array[out_num])
>>>>
>>>>             logging.info('  %s LO HW Export Out[%d] =3D %s, %s %s',
>>>>                          dirx.upper(), out_num,
>>>>                          usrp.get_tree().access_bool(
>>>>                             hw_lo_export_path).get(),
>>>>                         'requested',
>>>>                         output_array[out_num])
>>>>         else:
>>>>             logging.warning('  %s LO HW Export Out[%d] does not exist'=
,
>>>>                             dirx.upper(), out_num)
>>>>
>>>>
>>>> On Thu, May 25, 2023 at 6:45=E2=80=AFAM Rob Kossler <rkossler@nd.edu> =
wrote:
>>>>
>>>>> On Thu, May 25, 2023 at 3:54=E2=80=AFAM Michael Toussaint
>>>>> <mtoussaint@chaosinc.com> wrote:
>>>>> >
>>>>> > Used a single streamer and saw the delay slightly improve to betwee=
n
>>>>> 2.5 - 3 ns.
>>>>> >
>>>>> > Any other suggestions to improve the delay to match the results fro=
m
>>>>> the knowledge base,
>>>>> https://kb.ettus.com/USRP_N320/N321_LO_Distribution?
>>>>>
>>>>> How do you measure the relative delay?
>>>>>
>>>>
>>>>
>>>>
>>

--000000000000f0ad5805fda87995
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi Rob,</div><div dir=3D=
"ltr"><br></div><div dir=3D"ltr">Yes, 0.57 degrees is definitely within my =
measurement=C2=A0error. But, shouldn&#39;t the N321 synchronize the phase o=
f the LO&#39;s too?</div><div dir=3D"ltr"><br></div><div>Is there documenta=
tion available of how to repeat the results in the &quot;Measured Performan=
ce&quot; section of=C2=A0<a href=3D"https://kb.ettus.com/USRP_N320/N321_LO_=
Distribution" target=3D"_blank">https://kb.ettus.com/USRP_N320/N321_LO_Dist=
ribution</a>=C2=A0(e.g. code examples and or test setup to measure the phas=
e drift)? It shows less than 0.1 degree of phase error, I&#39;d like to jus=
t repeat that test to confirm everything is working correctly, and see what=
 might be causing the deltas.</div><span class=3D"gmail-im" style=3D"color:=
rgb(80,0,80)"><div><br></div><div>Thanks,</div><div><br></div><div>Michael<=
/div><div><br></div></span></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Jun 7, 2023 at 12:22=E2=80=AFPM Rob Koss=
ler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
Hi Michael,<div>I don&#39;t have any ideas for reducing a time delay offset=
. But, I still wonder if the problem could actually be just a phase offset.=
</div><div><br><div>With a relative delay of 2.5ns and a bandwidth of 4 MHz=
, the amount of phase variation you would see is 0.57 degrees.=C2=A0 That i=
s not easy to see.=C2=A0 On the other hand, if your bandwidth=C2=A0increase=
d to 200 MHz, you would see phase variation of 28.6 degrees (if the delay o=
ffset is 2.5 ns).</div><div>Rob<br><div><br></div></div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 6=
, 2023 at 9:38=E2=80=AFPM Michael Toussaint &lt;<a href=3D"mailto:mtoussain=
t@chaosinc.com" target=3D"_blank">mtoussaint@chaosinc.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div dir=3D"ltr">Hi Rob,=C2=A0<div><br></div><div>The signal is actually swe=
eping over 4MHz, but is just super zoomed into a small piece to show the ti=
me delta so it looks CW. The time difference appears to be the same (within=
 my ability to measure) across the band so I am assuming it is a time delay=
 offset.</div><div><br></div><div>Any suggestions on how to reduce this tim=
e delay offset?</div><div><br></div><div>Thanks,</div><div><br></div><div>M=
ichael Toussaint</div><div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 5, 2023 at 8:51=E2=80=AFPM=
 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkoss=
ler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Michael,<div>Either a delay=
 offset OR a phase offset will show itself as a relative phase.=C2=A0 In or=
der to distinguish between a delay offset and a phase offset, your signal m=
ust have appreciable bandwidth.=C2=A0 It appears that your signal is CW.=C2=
=A0 It is entirely possible that your delay offset is zero.=C2=A0 Does this=
 make sense?</div><div>Rob</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 5, 2023 at 5:32=E2=80=AFPM Mich=
ael Toussaint &lt;<a href=3D"mailto:mtoussaint@chaosinc.com" target=3D"_bla=
nk">mtoussaint@chaosinc.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><font color=3D=
"#9900ff">Could you share how you&#39;re setting up LO sharing in your code=
, as well as how you&#39;re setting the system clock on the N321?</font><di=
v><font color=3D"#9900ff"><br></font></div><div>The functions &quot;<span s=
tyle=3D"background-color:rgb(255,255,255)"><font color=3D"#ff9900">configur=
e_channels</font></span>&quot; and &quot;<font color=3D"#ff9900">set_lo_hw_=
exports</font>&quot; are used to set up the LO sharing.<br><br>The function=
s &quot;<font color=3D"#ff9900">sync_sources</font>&quot; and &quot;<font c=
olor=3D"#ff9900">sync_all_devices</font>&quot; are used to set up the syste=
m clock on the N321.<font color=3D"#9900ff"><br></font></div><div><br></div=
><div><div><font color=3D"#9900ff">How do you measure the relative delay?</=
font></div><div><br></div><div>We are measuring the offset of the LO&#39;s =
by just measuring the phase difference of the RF coming out of the Ettus wi=
th an Oscilloscope (picture attached as=C2=A0=C2=A0<a id=3D"m_-761752986351=
3143383m_1811052512462931056m_-3658695941951127572m_8850574248469324996gmai=
l-:tl" href=3D"https://mail.google.com/mail/u/0?ui=3D2&amp;ik=3D34abf4583b&=
amp;attid=3D0.1&amp;permmsgid=3Dmsg-a:r-1207093291428225864&amp;view=3Datt&=
amp;disp=3Dsafe&amp;realattid=3Df_lijcykt50" style=3D"padding:0px 8px 0px 0=
px;text-decoration-line:none;font-family:&quot;Google Sans&quot;,Roboto,Rob=
otoDraft,Helvetica,Arial,sans-serif;font-size:14px;font-weight:700" target=
=3D"_blank"><div style=3D"display:inline-block;overflow:hidden;padding:3px =
0px;text-overflow:ellipsis;vertical-align:bottom;max-width:315px">Scope_Tra=
ce_SingleStream_LO.png</div></a>). Yellow is Channel 1, Green is Channel 2;=
 using a single streamer we still appear to have a 2.64ns delta or ~135 deg=
ree phase shift.</div><div><br></div><div>Thanks Marcus and Rob for your as=
sistance.</div><div><br></div><div>Michael Toussaint</div><div><br><font co=
lor=3D"#ff9900">def sync_sources(usrp):<br>=C2=A0 =C2=A0=C2=A0<a href=3D"ht=
tp://logging.info/" target=3D"_blank">logging.info</a>(&#39;Setting Sync So=
urces&#39;)<br><br>=C2=A0 =C2=A0 usrp.set_sync_source(clock_source =3D &#39=
;gpsdo&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0time_source =3D &#39;gpsdo&#39;)<br><br>def =
sync_all_devices(hw_info):<br>=C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.=
info/" target=3D"_blank">logging.info</a>(&#39;Syncing All Devices&#39;)<br=
><br>=C2=A0 =C2=A0 mb_with_gps_locked =3D -1<br><br>=C2=A0 =C2=A0 while 1:<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 time.sleep(1.0)<br><br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 all_ref_locked =3D True<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for board=
 in range(hw_info.usrp.get_num_mboards()):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 all_ref_locked =3D all_ref_locked and \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_info.usrp.get_mboard_sensor(&#39;=
ref_locked&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0board).to_bool()<br><br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (mb_with_gps_locked =3D=3D -1) and \<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_info.usrp.get_mboar=
d_sensor(&#39;gps_locked&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0board).to_bool():<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mb_with_gps_locked =
=3D board<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if all_ref_locked:<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" ta=
rget=3D"_blank">logging.info</a>(&#39;All Devices are REF locked&#39;)<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break<br><br>=C2=A0 =C2=A0=C2=A0<=
a href=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;GPS=
 Locked on MB #%d&#39;, mb_with_gps_locked)<br><br>=C2=A0 =C2=A0 time.sleep=
(1.0)<br>=C2=A0 =C2=A0 hw_info.usrp.set_time_next_pps(<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 uhd.types.TimeSpec(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_info.usrp.=
get_mboard_sensor(&#39;gps_time&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mb_with_gps_locked).to_int() +<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01.0)<br>=C2=A0 =C2=
=A0 )<br>=C2=A0 =C2=A0 time.sleep(1.0)<br><br><br>def configure_channels(us=
rp, rf_type, hw_info):<br>=C2=A0 =C2=A0 rf_channel_index =3D None<br>=C2=A0=
 =C2=A0 set_rf_rate =3D None<br>=C2=A0 =C2=A0 set_rf_freq =3D None<br>=C2=
=A0 =C2=A0 set_rf_gain =3D None<br>=C2=A0 =C2=A0 set_rf_lo_source =3D None<=
br>=C2=A0 =C2=A0 get_rf_lo_source =3D None<br>=C2=A0 =C2=A0 get_rf_lo_freq =
=3D None<br>=C2=A0 =C2=A0 get_rf_lo_freq_range =3D None<br><br>=C2=A0 =C2=
=A0 if (rf_type =3D=3D &#39;rx&#39;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (le=
n(hw_info.rx_channel_index) &gt; 0):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 rf_channel_index =3D hw_info.rx_channel_index<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_rate =3D usrp.set_rx_rate<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_freq =3D usrp.set_rx_freq<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_gain =3D usrp.set_rx_gain<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_lo_source =3D usrp.set_rx_lo_sour=
ce<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_source =3D usrp.g=
et_rx_lo_source<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_freq=
 =3D usrp.get_rx_lo_freq<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_r=
f_lo_freq_range =3D usrp.get_rx_lo_freq_range<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 else:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>=C2=A0 =C2=
=A0 elif (rf_type =3D=3D &#39;tx&#39;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (=
len(hw_info.tx_channel_index) &gt; 0):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rf_channel_index =3D hw_info.tx_channel_index<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_rate =3D usrp.set_tx_rate<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_freq =3D usrp.set_tx_freq<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_gain =3D usrp.set_tx_gain<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_lo_source =3D usrp.set_tx_lo_=
source<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_source =3D us=
rp.get_tx_lo_source<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_=
freq =3D usrp.get_tx_lo_freq<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 g=
et_rf_lo_freq_range =3D usrp.get_tx_lo_freq_range<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 else:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br><br>=C2=
=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.=
info</a>(&#39;Configuring %s Channels&#39;, rf_type.upper())<br><br>=C2=A0 =
=C2=A0 for rf_ch_name, rf_ch_index in rf_channel_index.items():<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank=
">logging.info</a>(&#39;Configuring %s channel %s (channel #%d)&#39;,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0rf_type.upper(), rf_ch_name, rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ch_def =3D hw_info.channel_def[rf_ch_name]<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 # LO Channel Setup<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_nam=
e =3D &#39;unknown&#39;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_src =3D &=
#39;unknown&#39;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if ch_def.lo_inputs is =
not None:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http=
://logging.info/" target=3D"_blank">logging.info</a>(&#39; =C2=A0Setting %s=
 LO for Channel %s (#%d)&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.upper(), rf_ch_nam=
e, rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_lo_=
source(ch_def.lo_inputs.source,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=
=3D"http://ch_def.lo_inputs.name/" target=3D"_blank">ch_def.lo_inputs.name<=
/a>,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index)<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 current_lo_name =3D=C2=A0<a href=3D"http://ch_def.lo_i=
nputs.name/" target=3D"_blank">ch_def.lo_inputs.name</a><br><br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" targe=
t=3D"_blank">logging.info</a>(&#39; =C2=A0 =C2=A0(#%d) Requested %s LO name=
 %s, src %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_typ=
e.upper(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ch_def.lo_inputs.name/" ta=
rget=3D"_blank">ch_def.lo_inputs.name</a>,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ch_def.lo_inp=
uts.source)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank=
">logging.info</a>(&#39; =C2=A0No %s LO inputs for Channel %s (#%d)&#39;,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rf_type.upper(), rf_ch_name, rf_ch_index)<br><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_name =3D &#39;lo1&#39;<br><br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_src =3D get_rf_lo_source(current_lo=
_name,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"=
http://logging.info/" target=3D"_blank">logging.info</a>(&#39; =C2=A0 =C2=
=A0(#%d) Current %s LO name %s, src %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.u=
pper(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0current_lo_name,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0current_lo_src)<br><br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 rf_lo_freq =3D get_rf_lo_freq(current_lo_name,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_ch_index)<br><br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">loggi=
ng.info</a>(&#39; =C2=A0 =C2=A0(#%d) [%s] Current %s LO freq %d&#39;,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rf_ch_index,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0current_lo_name,<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0rf_type.upper(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_lo_freq)<br><br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 rf_lo_freq_range =3D get_rf_lo_freq_range(<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_name, rf_ch_index)<br><br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 temp =3D &#39; =C2=A0 =C2=A0(#%d) [%s] Current %s LO =
freq range&#39; + \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39; [%d,=
 %d] step %d&#39;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http:/=
/logging.info/" target=3D"_blank">logging.info</a>(temp,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0current_lo_name,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.upper(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_lo_freq_range.start(),<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0rf_lo_freq_range.stop(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_lo_freq_range.step())<br><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank=
">logging.info</a>(&#39; =C2=A0Setting Sampling Rate %s&#39;, hw_info.fs)<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_rate(hw_info.fs, rf_ch_index)<br><br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D=
"_blank">logging.info</a>(&#39; =C2=A0Setting Center Freq %s&#39;, hw_info.=
fc)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tr =3D set_rf_freq(uhd.libpyuhd.types.tu=
ne_request(hw_info.fc),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index)<br><br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logg=
ing.info</a>(&#39; =C2=A0 =C2=A0(#%d) %s Tune Result:&#39;,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_ind=
ex, rf_type.upper())<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 log_tune_result(tr)<br>=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" targe=
t=3D"_blank">logging.info</a>(&#39; =C2=A0Setting %s Gain: %2.3f db&#39;,<b=
r>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0rf_type.upper(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0ch_def.gain)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_=
gain(ch_def.gain, rf_ch_index)<br><br>def set_lo_hw_exports(usrp, node_name=
, dirx, lo_enabled, output_array):<br>=C2=A0 =C2=A0 &quot;&quot;&quot;Set L=
O HW Exports&quot;&quot;&quot;<br>=C2=A0 =C2=A0 if (lo_enabled is None) or =
(output_array is None):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br><br>=C2=A0=
 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.inf=
o</a>(&#39;Setting %s LO Export Enabled for %s&#39;,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(), node_name)<br><b=
r>=C2=A0 =C2=A0 if dirx.lower() =3D=3D &#39;rx&#39;:<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 usrp.set_rx_lo_export_enabled(lo_enabled, &#39;lo1&#39;, 0)<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_val =3D usrp.get_rx_lo_export_enabled(&#=
39;lo1&#39;)<br>=C2=A0 =C2=A0 elif dirx.lower() =3D=3D &#39;tx&#39;:<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 usrp.set_tx_lo_export_enabled(lo_enabled, &#39;lo1=
&#39;, 0)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_val =3D usrp.get_tx_lo_expo=
rt_enabled(&#39;lo1&#39;)<br>=C2=A0 =C2=A0 else:<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 logging.warning(&#39;Invalid direction %s&#39;, dirx)<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 return<br><br>=C2=A0 =C2=A0=C2=A0<a href=3D"http://loggin=
g.info/" target=3D"_blank">logging.info</a>(&#39; =C2=A0%s LO Export Enable=
d =3D %s, requested %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0dirx.upper(), enable_val, lo_enabled)<br><br>=C2=A0 =C2=
=A0 temp_path =3D &#39;blocks/0/Radio#0/dboard/&#39; + \<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 f&#39;{dirx.lower()}_frontends/&#39; + \<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 &#39;0/los/lo1/lo_distribution/LO_OUT_{}/export&#39;<br><br>=C2=
=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.=
info</a>(&#39;Setting %s LO HW Outputs for %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(), node_name)<br><br>=
=C2=A0 =C2=A0 for out_num in range(len(output_array)):<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 hw_lo_export_path =3D temp_path.format(out_num)<br><br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 if usrp.get_tree().exists(hw_lo_export_path):<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp.get_tree().access_bool(hw_lo_ex=
port_path).set(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
output_array[out_num])<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39=
; =C2=A0%s LO HW Export Out[%d] =3D %s, %s %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.=
upper(), out_num,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0usrp.get_tree().access_bool(<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 hw_lo_export_path).get(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;requested&=
#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 output_array[out_num])<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 els=
e:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 logging.warning(&#39; =C2=
=A0%s LO HW Export Out[%d] does not exist&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 d=
irx.upper(), out_num)</font></div></div><div><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 25, 2023=
 at 6:45=E2=80=AFAM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" targ=
et=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On Thu, May 25, 2023 at 3:54=E2=80=AFAM Michae=
l Toussaint<br>
&lt;<a href=3D"mailto:mtoussaint@chaosinc.com" target=3D"_blank">mtoussaint=
@chaosinc.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Used a single streamer and saw the delay slightly improve to between 2=
.5 - 3 ns.<br>
&gt;<br>
&gt; Any other suggestions to improve the delay to match the results from t=
he knowledge base, <a href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Distri=
bution" rel=3D"noreferrer" target=3D"_blank">https://kb.ettus.com/USRP_N320=
/N321_LO_Distribution</a>?<br>
<br>
How do you measure the relative delay?<br>
</blockquote></div><br clear=3D"all"><div><br></div>
</div>
</blockquote></div></div>
</blockquote></div><div><br></div><div dir=3D"ltr" class=3D"gmail_signature=
"><div dir=3D"ltr"><div></div></div></div></div>
</blockquote></div>
</blockquote></div><div><br></div><div dir=3D"ltr" class=3D"gmail_signature=
"><div dir=3D"ltr"><div><table cellpadding=3D"0" cellspacing=3D"0" style=3D=
"border-collapse:collapse;font-family:Helvetica,Arial,sans-serif;line-heigh=
t:1.15;color:rgb(0,0,0)"><tbody><tr><td><br></td></tr><tr><td><table cellpa=
dding=3D"0" cellspacing=3D"0" style=3D"border-collapse:collapse"><tbody></t=
body></table></td></tr></tbody></table></div></div></div></div>

--000000000000f0ad5805fda87995--

--===============2594712323990903883==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2594712323990903883==--

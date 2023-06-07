Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2AA87269A1
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 21:23:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D93C6384A7F
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 15:23:01 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686165781; bh=YQWmYkuKg0iOJ34DtVH73MnnCTsOU50V9hnAnW2b480=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=WufTp2RsZJHbOCzc5Unu8Z5UDHL3vkmDHA6rlkp80zpHw81GWehkGUM1R4hGIFWn3
	 1tt4e2eTwxO7BzUbgyX8Wg0ec8KenUMxkQY874WYveqIQU0+nbVO1Nqzf/HukCX+MF
	 hdv2/1X24l8O2d+sGEf0ZnhbeIAkJyw7e09SpoPcKG5hgB9Y6vs5DJ5U/VNh2JUbXO
	 imS3FD/mY7d22hMw6gB+glOK1Se6l/1otlQ/YCiQU5M9l28NUW5GTSX9+v7JocR2co
	 7lAfd/orVT9OhzQ4G9Y63ak2Mh6PkFL7TAAq9LPMiAQVMBmaVr4jDfywxB6E9NMaAL
	 5qWlyUU3Npzbg==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 1B6EC38093F
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 15:22:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="RAWz9E2C";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5148e4a2f17so2237258a12.1
        for <usrp-users@lists.ettus.com>; Wed, 07 Jun 2023 12:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1686165720; x=1688757720;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VEYrJK5++THSM5xFFTk3Yinn7Dhhx6MDlGNhBMMLsDM=;
        b=RAWz9E2CeGS2bMTDUAfhFGBWKZ5Bl1mbHpW13bUlnz4JjTl4QJDQAzd1Xg3xurt/ve
         btGfi8GtNYmt2l+BSd9f2nbORoUFB1aPlQqj2OwJ5IAhga1XeOOYGuVAM0Z4tAcasu4d
         ie1zrg356JqSMBGjvt3YIUJ+Bv50xZegZBx3jHOhkuN5Cs2Q1iLeTve8oJUZmuEzNZEL
         D2j6LLdWI7fDhj81m8YuNnkuzqmWBcDSh7z/r3JVbEj79My/dvKR3amXtcVFeZJ2VtKR
         fsXjF7vhTzz9WVEeq+pU+Hs0I6GEKGD3KDmKUMGxX/1RYk4x7+xl6fzyJ4AXvmTUCqw6
         FOrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686165720; x=1688757720;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VEYrJK5++THSM5xFFTk3Yinn7Dhhx6MDlGNhBMMLsDM=;
        b=hPSlSUAMRbrpHqWAOg9aEliYVpK4NqFZR+uGtRQJA11iXeklCbpDGxGbjsth6XqaYp
         r8Obk9j7VnjzL2fKQyKpPx3yJXFdsRjiTJkGxchZnv22IGRnf/sQxSyhQvF5vxyWyoMN
         EqEB/V39cu3lQPSeC5RfYBIftvnYs9mD+iIoRlRNxxAG4+pBjyklCAokQyiBW9i5FK3r
         uSOew5IJ/nc53PGGIq/h5C5zEkz2Ki25RM5xN7nJp0n5ufu/gYcxsQelwNEMnVDTfKbi
         f9TdpWQLt9ZXYhkb5YtibJetc2aqR1XbxOzw723zOI6OKAErADa+Y3Pdq4xiC9J4dvAh
         sdxQ==
X-Gm-Message-State: AC+VfDx1pb9BEnxUvBwkPLyJwb4Mo6X648V59SBwGqyc1C/vi5q6iBNv
	ByO1oc7rbWTIE286q2WbA/jhx1WYz6e8MjAuuwK5Bg==
X-Google-Smtp-Source: ACHHUZ554SBUx5ECjl+5hMdAM6Th6krDoG+UHXEIGIWfCx0FB00Gs/FoUvDsFplkhKLc/MqFhE6EsSccu74hjdofVco=
X-Received: by 2002:a05:6402:104e:b0:514:960e:6 with SMTP id
 e14-20020a056402104e00b00514960e0006mr5563988edu.10.1686165719677; Wed, 07
 Jun 2023 12:21:59 -0700 (PDT)
MIME-Version: 1.0
References: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
 <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com> <CAB__hTQgDtPFOMXqK7-gyAhnc_1Q7=Or9rw2bgBaqwe+_xTSbw@mail.gmail.com>
 <CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmail.com>
 <CAB__hTSa6Gx54yshpFFGEdzmLoO48YTsAR8M0fTdkjqRkM2D3Q@mail.gmail.com>
 <CAMhTvwvk-15EvqX3T8ze-+FuLOU4jYxNtkK_K7AYa7OJkAwOAg@mail.gmail.com>
 <CAB__hTRW5aPaRYhuC6sZm3G1hJkpip-qPghwKc02XKwghxzb9g@mail.gmail.com> <CAMhTvwv0n=cYmx=CaW4qyVsnSkpaVmF39Ee2E4rL8Ay0Yb-h8g@mail.gmail.com>
In-Reply-To: <CAMhTvwv0n=cYmx=CaW4qyVsnSkpaVmF39Ee2E4rL8Ay0Yb-h8g@mail.gmail.com>
Date: Wed, 7 Jun 2023 15:21:48 -0400
Message-ID: <CAB__hTRC45inNTcHWFo6dvqOTDersMMyi1z=yz-zSY_=s-iCUg@mail.gmail.com>
To: Michael Toussaint <mtoussaint@chaosinc.com>
Message-ID-Hash: JGWRJQ5OTFU2J5ZZEPFTYVAQTS6SGA7I
X-Message-ID-Hash: JGWRJQ5OTFU2J5ZZEPFTYVAQTS6SGA7I
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JGWRJQ5OTFU2J5ZZEPFTYVAQTS6SGA7I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3439147910594219869=="

--===============3439147910594219869==
Content-Type: multipart/alternative; boundary="000000000000c18dcc05fd8f0cac"

--000000000000c18dcc05fd8f0cac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Michael,
I don't have any ideas for reducing a time delay offset. But, I still
wonder if the problem could actually be just a phase offset.

With a relative delay of 2.5ns and a bandwidth of 4 MHz, the amount of
phase variation you would see is 0.57 degrees.  That is not easy to see.
On the other hand, if your bandwidth increased to 200 MHz, you would see
phase variation of 28.6 degrees (if the delay offset is 2.5 ns).
Rob


On Tue, Jun 6, 2023 at 9:38=E2=80=AFPM Michael Toussaint <mtoussaint@chaosi=
nc.com>
wrote:

> Hi Rob,
>
> The signal is actually sweeping over 4MHz, but is just super zoomed into =
a
> small piece to show the time delta so it looks CW. The time difference
> appears to be the same (within my ability to measure) across the band so =
I
> am assuming it is a time delay offset.
>
> Any suggestions on how to reduce this time delay offset?
>
> Thanks,
>
> Michael Toussaint
>
>
> On Mon, Jun 5, 2023 at 8:51=E2=80=AFPM Rob Kossler <rkossler@nd.edu> wrot=
e:
>
>> Hi Michael,
>> Either a delay offset OR a phase offset will show itself as a relative
>> phase.  In order to distinguish between a delay offset and a phase offse=
t,
>> your signal must have appreciable bandwidth.  It appears that your signa=
l
>> is CW.  It is entirely possible that your delay offset is zero.  Does th=
is
>> make sense?
>> Rob
>>
>> On Mon, Jun 5, 2023 at 5:32=E2=80=AFPM Michael Toussaint <mtoussaint@cha=
osinc.com>
>> wrote:
>>
>>> Could you share how you're setting up LO sharing in your code, as well
>>> as how you're setting the system clock on the N321?
>>>
>>> The functions "configure_channels" and "set_lo_hw_exports" are used to
>>> set up the LO sharing.
>>>
>>> The functions "sync_sources" and "sync_all_devices" are used to set up
>>> the system clock on the N321.
>>>
>>> How do you measure the relative delay?
>>>
>>> We are measuring the offset of the LO's by just measuring the phase
>>> difference of the RF coming out of the Ettus with an Oscilloscope (pict=
ure
>>> attached as
>>> Scope_Trace_SingleStream_LO.png
>>>
>>> <https://mail.google.com/mail/u/0?ui=3D2&ik=3D34abf4583b&attid=3D0.1&pe=
rmmsgid=3Dmsg-a:r-1207093291428225864&view=3Datt&disp=3Dsafe&realattid=3Df_=
lijcykt50>).
>>> Yellow is Channel 1, Green is Channel 2; using a single streamer we sti=
ll
>>> appear to have a 2.64ns delta or ~135 degree phase shift.
>>>
>>> Thanks Marcus and Rob for your assistance.
>>>
>>> Michael Toussaint
>>>
>>> def sync_sources(usrp):
>>>     logging.info('Setting Sync Sources')
>>>
>>>     usrp.set_sync_source(clock_source =3D 'gpsdo',
>>>                          time_source =3D 'gpsdo')
>>>
>>> def sync_all_devices(hw_info):
>>>     logging.info('Syncing All Devices')
>>>
>>>     mb_with_gps_locked =3D -1
>>>
>>>     while 1:
>>>         time.sleep(1.0)
>>>
>>>         all_ref_locked =3D True
>>>
>>>         for board in range(hw_info.usrp.get_num_mboards()):
>>>             all_ref_locked =3D all_ref_locked and \
>>>                 hw_info.usrp.get_mboard_sensor('ref_locked',
>>>                                                board).to_bool()
>>>
>>>             if (mb_with_gps_locked =3D=3D -1) and \
>>>                 hw_info.usrp.get_mboard_sensor('gps_locked',
>>>                                                board).to_bool():
>>>                 mb_with_gps_locked =3D board
>>>
>>>         if all_ref_locked:
>>>             logging.info('All Devices are REF locked')
>>>             break
>>>
>>>     logging.info('GPS Locked on MB #%d', mb_with_gps_locked)
>>>
>>>     time.sleep(1.0)
>>>     hw_info.usrp.set_time_next_pps(
>>>         uhd.types.TimeSpec(
>>>         hw_info.usrp.get_mboard_sensor('gps_time',
>>>                                        mb_with_gps_locked).to_int() +
>>>                                        1.0)
>>>     )
>>>     time.sleep(1.0)
>>>
>>>
>>> def configure_channels(usrp, rf_type, hw_info):
>>>     rf_channel_index =3D None
>>>     set_rf_rate =3D None
>>>     set_rf_freq =3D None
>>>     set_rf_gain =3D None
>>>     set_rf_lo_source =3D None
>>>     get_rf_lo_source =3D None
>>>     get_rf_lo_freq =3D None
>>>     get_rf_lo_freq_range =3D None
>>>
>>>     if (rf_type =3D=3D 'rx'):
>>>         if (len(hw_info.rx_channel_index) > 0):
>>>             rf_channel_index =3D hw_info.rx_channel_index
>>>             set_rf_rate =3D usrp.set_rx_rate
>>>             set_rf_freq =3D usrp.set_rx_freq
>>>             set_rf_gain =3D usrp.set_rx_gain
>>>             set_rf_lo_source =3D usrp.set_rx_lo_source
>>>             get_rf_lo_source =3D usrp.get_rx_lo_source
>>>             get_rf_lo_freq =3D usrp.get_rx_lo_freq
>>>             get_rf_lo_freq_range =3D usrp.get_rx_lo_freq_range
>>>         else:
>>>             return
>>>     elif (rf_type =3D=3D 'tx'):
>>>         if (len(hw_info.tx_channel_index) > 0):
>>>             rf_channel_index =3D hw_info.tx_channel_index
>>>             set_rf_rate =3D usrp.set_tx_rate
>>>             set_rf_freq =3D usrp.set_tx_freq
>>>             set_rf_gain =3D usrp.set_tx_gain
>>>             set_rf_lo_source =3D usrp.set_tx_lo_source
>>>             get_rf_lo_source =3D usrp.get_tx_lo_source
>>>             get_rf_lo_freq =3D usrp.get_tx_lo_freq
>>>             get_rf_lo_freq_range =3D usrp.get_tx_lo_freq_range
>>>         else:
>>>             return
>>>
>>>     logging.info('Configuring %s Channels', rf_type.upper())
>>>
>>>     for rf_ch_name, rf_ch_index in rf_channel_index.items():
>>>         logging.info('Configuring %s channel %s (channel #%d)',
>>>                      rf_type.upper(), rf_ch_name, rf_ch_index)
>>>
>>>         ch_def =3D hw_info.channel_def[rf_ch_name]
>>>
>>>         # LO Channel Setup
>>>         current_lo_name =3D 'unknown'
>>>         current_lo_src =3D 'unknown'
>>>
>>>         if ch_def.lo_inputs is not None:
>>>             logging.info('  Setting %s LO for Channel %s (#%d)',
>>>                          rf_type.upper(), rf_ch_name, rf_ch_index)
>>>
>>>             set_rf_lo_source(ch_def.lo_inputs.source,
>>>                              ch_def.lo_inputs.name,
>>>                              rf_ch_index)
>>>             current_lo_name =3D ch_def.lo_inputs.name
>>>
>>>             logging.info('    (#%d) Requested %s LO name %s, src %s',
>>>                          rf_ch_index,
>>>                          rf_type.upper(),
>>>                          ch_def.lo_inputs.name,
>>>                          ch_def.lo_inputs.source)
>>>         else:
>>>             logging.info('  No %s LO inputs for Channel %s (#%d)',
>>>                          rf_type.upper(), rf_ch_name, rf_ch_index)
>>>
>>>             current_lo_name =3D 'lo1'
>>>
>>>         current_lo_src =3D get_rf_lo_source(current_lo_name,
>>>                                           rf_ch_index)
>>>
>>>         logging.info('    (#%d) Current %s LO name %s, src %s',
>>>                      rf_ch_index,
>>>                      rf_type.upper(),
>>>                      current_lo_name,
>>>                      current_lo_src)
>>>
>>>         rf_lo_freq =3D get_rf_lo_freq(current_lo_name,
>>>                                     rf_ch_index)
>>>
>>>         logging.info('    (#%d) [%s] Current %s LO freq %d',
>>>                          rf_ch_index,
>>>                          current_lo_name,
>>>                          rf_type.upper(),
>>>                          rf_lo_freq)
>>>
>>>         rf_lo_freq_range =3D get_rf_lo_freq_range(
>>>             current_lo_name, rf_ch_index)
>>>
>>>         temp =3D '    (#%d) [%s] Current %s LO freq range' + \
>>>             ' [%d, %d] step %d'
>>>
>>>         logging.info(temp,
>>>                      rf_ch_index,
>>>                      current_lo_name,
>>>                      rf_type.upper(),
>>>                      rf_lo_freq_range.start(),
>>>                      rf_lo_freq_range.stop(),
>>>                      rf_lo_freq_range.step())
>>>
>>>         logging.info('  Setting Sampling Rate %s', hw_info.fs)
>>>         set_rf_rate(hw_info.fs, rf_ch_index)
>>>
>>>         logging.info('  Setting Center Freq %s', hw_info.fc)
>>>         tr =3D set_rf_freq(uhd.libpyuhd.types.tune_request(hw_info.fc),
>>>                          rf_ch_index)
>>>
>>>         logging.info('    (#%d) %s Tune Result:',
>>>                      rf_ch_index, rf_type.upper())
>>>         log_tune_result(tr)
>>>
>>>         logging.info('  Setting %s Gain: %2.3f db',
>>>                      rf_type.upper(),
>>>                      ch_def.gain)
>>>         set_rf_gain(ch_def.gain, rf_ch_index)
>>>
>>> def set_lo_hw_exports(usrp, node_name, dirx, lo_enabled, output_array):
>>>     """Set LO HW Exports"""
>>>     if (lo_enabled is None) or (output_array is None):
>>>         return
>>>
>>>     logging.info('Setting %s LO Export Enabled for %s',
>>>                  dirx.upper(), node_name)
>>>
>>>     if dirx.lower() =3D=3D 'rx':
>>>         usrp.set_rx_lo_export_enabled(lo_enabled, 'lo1', 0)
>>>         enable_val =3D usrp.get_rx_lo_export_enabled('lo1')
>>>     elif dirx.lower() =3D=3D 'tx':
>>>         usrp.set_tx_lo_export_enabled(lo_enabled, 'lo1', 0)
>>>         enable_val =3D usrp.get_tx_lo_export_enabled('lo1')
>>>     else:
>>>         logging.warning('Invalid direction %s', dirx)
>>>         return
>>>
>>>     logging.info('  %s LO Export Enabled =3D %s, requested %s',
>>>                  dirx.upper(), enable_val, lo_enabled)
>>>
>>>     temp_path =3D 'blocks/0/Radio#0/dboard/' + \
>>>         f'{dirx.lower()}_frontends/' + \
>>>         '0/los/lo1/lo_distribution/LO_OUT_{}/export'
>>>
>>>     logging.info('Setting %s LO HW Outputs for %s',
>>>                  dirx.upper(), node_name)
>>>
>>>     for out_num in range(len(output_array)):
>>>         hw_lo_export_path =3D temp_path.format(out_num)
>>>
>>>         if usrp.get_tree().exists(hw_lo_export_path):
>>>             usrp.get_tree().access_bool(hw_lo_export_path).set(
>>>                 output_array[out_num])
>>>
>>>             logging.info('  %s LO HW Export Out[%d] =3D %s, %s %s',
>>>                          dirx.upper(), out_num,
>>>                          usrp.get_tree().access_bool(
>>>                             hw_lo_export_path).get(),
>>>                         'requested',
>>>                         output_array[out_num])
>>>         else:
>>>             logging.warning('  %s LO HW Export Out[%d] does not exist',
>>>                             dirx.upper(), out_num)
>>>
>>>
>>> On Thu, May 25, 2023 at 6:45=E2=80=AFAM Rob Kossler <rkossler@nd.edu> w=
rote:
>>>
>>>> On Thu, May 25, 2023 at 3:54=E2=80=AFAM Michael Toussaint
>>>> <mtoussaint@chaosinc.com> wrote:
>>>> >
>>>> > Used a single streamer and saw the delay slightly improve to between
>>>> 2.5 - 3 ns.
>>>> >
>>>> > Any other suggestions to improve the delay to match the results from
>>>> the knowledge base, https://kb.ettus.com/USRP_N320/N321_LO_Distributio=
n
>>>> ?
>>>>
>>>> How do you measure the relative delay?
>>>>
>>>
>>>
>>>
>

--000000000000c18dcc05fd8f0cac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Michael,<div>I don&#39;t have any ideas for reducing a =
time delay offset. But, I still wonder if the problem could actually be jus=
t a phase offset.</div><div><br><div>With a relative delay of 2.5ns and a b=
andwidth of 4 MHz, the amount of phase variation you would see is 0.57 degr=
ees.=C2=A0 That is not easy to see.=C2=A0 On the other hand, if your bandwi=
dth=C2=A0increased to 200 MHz, you would see phase variation of 28.6 degree=
s (if the delay offset is 2.5 ns).</div><div>Rob<br><div><br></div></div></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, Jun 6, 2023 at 9:38=E2=80=AFPM Michael Toussaint &lt;<a href=3D=
"mailto:mtoussaint@chaosinc.com">mtoussaint@chaosinc.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv dir=3D"ltr">Hi Rob,=C2=A0<div><br></div><div>The signal is actually swee=
ping over 4MHz, but is just super zoomed into a small piece to show the tim=
e delta so it looks CW. The time difference appears to be the same (within =
my ability to measure) across the band so I am assuming it is a time delay =
offset.</div><div><br></div><div>Any suggestions on how to reduce this time=
 delay offset?</div><div><br></div><div>Thanks,</div><div><br></div><div>Mi=
chael Toussaint</div><div><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 5, 2023 at 8:51=E2=80=AFPM =
Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossl=
er@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
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
th an Oscilloscope (picture attached as=C2=A0=C2=A0<a id=3D"m_1811052512462=
931056m_-3658695941951127572m_8850574248469324996gmail-:tl" href=3D"https:/=
/mail.google.com/mail/u/0?ui=3D2&amp;ik=3D34abf4583b&amp;attid=3D0.1&amp;pe=
rmmsgid=3Dmsg-a:r-1207093291428225864&amp;view=3Datt&amp;disp=3Dsafe&amp;re=
alattid=3Df_lijcykt50" style=3D"padding:0px 8px 0px 0px;text-decoration-lin=
e:none;font-family:&quot;Google Sans&quot;,Roboto,RobotoDraft,Helvetica,Ari=
al,sans-serif;font-size:14px;font-weight:700" target=3D"_blank"><div style=
=3D"display:inline-block;overflow:hidden;padding:3px 0px;text-overflow:elli=
psis;vertical-align:bottom;max-width:315px">Scope_Trace_SingleStream_LO.png=
</div></a>). Yellow is Channel 1, Green is Channel 2; using a single stream=
er we still appear to have a 2.64ns delta or ~135 degree phase shift.</div>=
<div><br></div><div>Thanks Marcus and Rob for your assistance.</div><div><b=
r></div><div>Michael Toussaint</div><div><br><font color=3D"#ff9900">def sy=
nc_sources(usrp):<br>=C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" ta=
rget=3D"_blank">logging.info</a>(&#39;Setting Sync Sources&#39;)<br><br>=C2=
=A0 =C2=A0 usrp.set_sync_source(clock_source =3D &#39;gpsdo&#39;,<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0time_source =3D &#39;gpsdo&#39;)<br><br>def sync_all_devices(hw_i=
nfo):<br>=C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_bla=
nk">logging.info</a>(&#39;Syncing All Devices&#39;)<br><br>=C2=A0 =C2=A0 mb=
_with_gps_locked =3D -1<br><br>=C2=A0 =C2=A0 while 1:<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 time.sleep(1.0)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 all_ref_locke=
d =3D True<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 for board in range(hw_info.us=
rp.get_num_mboards()):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 all_ref=
_locked =3D all_ref_locked and \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 hw_info.usrp.get_mboard_sensor(&#39;ref_locked&#39;,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0board).to_bool()<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (mb_with_gps_locked =3D=3D -1) and \<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_info.usrp.get_mboard_sensor(&#39;gps_=
locked&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0board).to_bool():<br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mb_with_gps_locked =3D board<br><br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 if all_ref_locked:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">loggi=
ng.info</a>(&#39;All Devices are REF locked&#39;)<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 break<br><br>=C2=A0 =C2=A0=C2=A0<a href=3D"http://logg=
ing.info/" target=3D"_blank">logging.info</a>(&#39;GPS Locked on MB #%d&#39=
;, mb_with_gps_locked)<br><br>=C2=A0 =C2=A0 time.sleep(1.0)<br>=C2=A0 =C2=
=A0 hw_info.usrp.set_time_next_pps(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.type=
s.TimeSpec(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_info.usrp.get_mboard_sensor(&=
#39;gps_time&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0mb_with_gps_locked).to_int() +<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A01.0)<br>=C2=A0 =C2=A0 )<br>=C2=A0 =C2=
=A0 time.sleep(1.0)<br><br><br>def configure_channels(usrp, rf_type, hw_inf=
o):<br>=C2=A0 =C2=A0 rf_channel_index =3D None<br>=C2=A0 =C2=A0 set_rf_rate=
 =3D None<br>=C2=A0 =C2=A0 set_rf_freq =3D None<br>=C2=A0 =C2=A0 set_rf_gai=
n =3D None<br>=C2=A0 =C2=A0 set_rf_lo_source =3D None<br>=C2=A0 =C2=A0 get_=
rf_lo_source =3D None<br>=C2=A0 =C2=A0 get_rf_lo_freq =3D None<br>=C2=A0 =
=C2=A0 get_rf_lo_freq_range =3D None<br><br>=C2=A0 =C2=A0 if (rf_type =3D=
=3D &#39;rx&#39;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (len(hw_info.rx_channe=
l_index) &gt; 0):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_channel_i=
ndex =3D hw_info.rx_channel_index<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 set_rf_rate =3D usrp.set_rx_rate<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set_rf_freq =3D usrp.set_rx_freq<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 set_rf_gain =3D usrp.set_rx_gain<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 set_rf_lo_source =3D usrp.set_rx_lo_source<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_source =3D usrp.get_rx_lo_source<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_freq =3D usrp.get_rx_lo=
_freq<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_freq_range =3D=
 usrp.get_rx_lo_freq_range<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br>=C2=A0 =C2=A0 elif (rf_type =
=3D=3D &#39;tx&#39;):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (len(hw_info.tx_cha=
nnel_index) &gt; 0):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_channe=
l_index =3D hw_info.tx_channel_index<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set_rf_rate =3D usrp.set_tx_rate<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 set_rf_freq =3D usrp.set_tx_freq<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 set_rf_gain =3D usrp.set_tx_gain<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 set_rf_lo_source =3D usrp.set_tx_lo_source<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_source =3D usrp.get_tx_lo_source<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_freq =3D usrp.get_tx=
_lo_freq<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_freq_range =
=3D usrp.get_tx_lo_freq_range<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br><br>=C2=A0 =C2=A0=C2=A0<a =
href=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;Confi=
guring %s Channels&#39;, rf_type.upper())<br><br>=C2=A0 =C2=A0 for rf_ch_na=
me, rf_ch_index in rf_channel_index.items():<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&=
#39;Configuring %s channel %s (channel #%d)&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.upper(), rf_=
ch_name, rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ch_def =3D hw_info=
.channel_def[rf_ch_name]<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 # LO Channel Se=
tup<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_name =3D &#39;unknown&#39;<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_src =3D &#39;unknown&#39;<br><br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if ch_def.lo_inputs is not None:<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" targe=
t=3D"_blank">logging.info</a>(&#39; =C2=A0Setting %s LO for Channel %s (#%d=
)&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.upper(), rf_ch_name, rf_ch_index)<br><br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_lo_source(ch_def.lo_input=
s.source,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ch_def.lo_input=
s.name/" target=3D"_blank">ch_def.lo_inputs.name</a>,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0rf_ch_index)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 curr=
ent_lo_name =3D=C2=A0<a href=3D"http://ch_def.lo_inputs.name/" target=3D"_b=
lank">ch_def.lo_inputs.name</a><br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.info=
</a>(&#39; =C2=A0 =C2=A0(#%d) Requested %s LO name %s, src %s&#39;,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0rf_ch_index,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.upper(),<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0<a href=3D"http://ch_def.lo_inputs.name/" target=3D"_blank">ch_def.lo=
_inputs.name</a>,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ch_def.lo_inputs.source)<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 else:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=
=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39=
; =C2=A0No %s LO inputs for Channel %s (#%d)&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_typ=
e.upper(), rf_ch_name, rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 current_lo_name =3D &#39;lo1&#39;<br><br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 current_lo_src =3D get_rf_lo_source(current_lo_name,<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_ch_index)=
<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" t=
arget=3D"_blank">logging.info</a>(&#39; =C2=A0 =C2=A0(#%d) Current %s LO na=
me %s, src %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.upper(),<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0current_lo_na=
me,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0current_lo_src)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_lo_freq =3D=
 get_rf_lo_freq(current_lo_name,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=
=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39; =C2=A0 =
=C2=A0(#%d) [%s] Current %s LO freq %d&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0current_lo_name,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.upper(),<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0rf_lo_freq)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_lo_freq_=
range =3D get_rf_lo_freq_range(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 current_lo_name, rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 temp =
=3D &#39; =C2=A0 =C2=A0(#%d) [%s] Current %s LO freq range&#39; + \<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39; [%d, %d] step %d&#39;<br><br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D=
"_blank">logging.info</a>(temp,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0current_lo_name,<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0rf_type.upper(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0rf_lo_freq_range.start(),<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_lo_freq_range.sto=
p(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0rf_lo_freq_range.step())<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=
<a href=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39; =
=C2=A0Setting Sampling Rate %s&#39;, hw_info.fs)<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 set_rf_rate(hw_info.fs, rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.info</a=
>(&#39; =C2=A0Setting Center Freq %s&#39;, hw_info.fc)<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 tr =3D set_rf_freq(uhd.libpyuhd.types.tune_request(hw_info.fc),<=
br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0rf_ch_index)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a=
 href=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39; =C2=
=A0 =C2=A0(#%d) %s Tune Result:&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index, rf_type.upper())<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 log_tune_result(tr)<br><br>=C2=A0 =C2=A0 =C2=A0=
 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_blank">logging.inf=
o</a>(&#39; =C2=A0Setting %s Gain: %2.3f db&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_type.upper(),<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0ch_def.gain)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_gain(ch_def.gain, rf_=
ch_index)<br><br>def set_lo_hw_exports(usrp, node_name, dirx, lo_enabled, o=
utput_array):<br>=C2=A0 =C2=A0 &quot;&quot;&quot;Set LO HW Exports&quot;&qu=
ot;&quot;<br>=C2=A0 =C2=A0 if (lo_enabled is None) or (output_array is None=
):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 return<br><br>=C2=A0 =C2=A0=C2=A0<a href=
=3D"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;Setting %=
s LO Export Enabled for %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(), node_name)<br><br>=C2=A0 =C2=A0 if di=
rx.lower() =3D=3D &#39;rx&#39;:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 usrp.set_rx_=
lo_export_enabled(lo_enabled, &#39;lo1&#39;, 0)<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 enable_val =3D usrp.get_rx_lo_export_enabled(&#39;lo1&#39;)<br>=C2=A0 =
=C2=A0 elif dirx.lower() =3D=3D &#39;tx&#39;:<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 usrp.set_tx_lo_export_enabled(lo_enabled, &#39;lo1&#39;, 0)<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 enable_val =3D usrp.get_tx_lo_export_enabled(&#39;lo1&=
#39;)<br>=C2=A0 =C2=A0 else:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 logging.warning=
(&#39;Invalid direction %s&#39;, dirx)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 retur=
n<br><br>=C2=A0 =C2=A0=C2=A0<a href=3D"http://logging.info/" target=3D"_bla=
nk">logging.info</a>(&#39; =C2=A0%s LO Export Enabled =3D %s, requested %s&=
#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dirx=
.upper(), enable_val, lo_enabled)<br><br>=C2=A0 =C2=A0 temp_path =3D &#39;b=
locks/0/Radio#0/dboard/&#39; + \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 f&#39;{dirx=
.lower()}_frontends/&#39; + \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;0/los/lo1=
/lo_distribution/LO_OUT_{}/export&#39;<br><br>=C2=A0 =C2=A0=C2=A0<a href=3D=
"http://logging.info/" target=3D"_blank">logging.info</a>(&#39;Setting %s L=
O HW Outputs for %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0dirx.upper(), node_name)<br><br>=C2=A0 =C2=A0 for out_num =
in range(len(output_array)):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_lo_export_pa=
th =3D temp_path.format(out_num)<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if usrp=
.get_tree().exists(hw_lo_export_path):<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 usrp.get_tree().access_bool(hw_lo_export_path).set(<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 output_array[out_num])<br>=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a href=3D"http://loggin=
g.info/" target=3D"_blank">logging.info</a>(&#39; =C2=A0%s LO HW Export Out=
[%d] =3D %s, %s %s&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(), out_num,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0usrp.get_tree().access_bool(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_lo=
_export_path).get(),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &#39;requested&#39;,<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 outpu=
t_array[out_num])<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 logging.warning(&#39; =C2=A0%s LO HW Export Out[%d=
] does not exist&#39;,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dirx.upper(), out_num)</fo=
nt></div></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, May 25, 2023 at 6:45=E2=80=AFAM Rob K=
ossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkossler@nd=
.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">On Thu, May 25, 2023 at 3:54=E2=80=AFAM Michael Toussaint<br>
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

--000000000000c18dcc05fd8f0cac--

--===============3439147910594219869==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3439147910594219869==--

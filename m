Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28246728D54
	for <lists+usrp-users@lfdr.de>; Fri,  9 Jun 2023 03:54:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BAB638484F
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 21:54:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686275678; bh=SjVVMPqFHaZ5g3aRFdP9CsdlruusbXRwj1NifXKa9MM=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=GQoHnPitfU0dyVsEDix/AmCllETwHkD78rvrJzGAcvaK5mRVECQzHxeqD6i2hoeNP
	 3pAe7qb+Axm+hSLeWvvz5HBtsbYYgVH0UDciIwKkWjCjBrSca4GMuW9o4HNMQZ3h30
	 lh5uJoLl5OXwID6wPwukoHJIVRNFYd+xrhJ/to6408AoDCSEiMFq1+l4YpAN8do2a1
	 tccOchpQaHBtD6S4Gc6cLowArvONW9zUrcLHAwuZDOk/ZFc24kGs62X+KS4w+tpRC+
	 +aicsp0JFZ2URJPR0QauZebq6Nxki5p4zTZpJXSFb5nDwtAFhFbJeZDnKYPyR4tgI/
	 agQVb9KiksEPg==
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 45FF5384925
	for <usrp-users@lists.ettus.com>; Thu,  8 Jun 2023 21:53:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PefguaWX";
	dkim-atps=neutral
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-3f6c6020cfbso9930061cf.2
        for <usrp-users@lists.ettus.com>; Thu, 08 Jun 2023 18:53:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686275605; x=1688867605;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0EhryhLpoOvwPVx4M2ljHIWzt7WzmshYmhcsBPvx+lA=;
        b=PefguaWXk1UeJWaRClFtWOwCgmF+LqSV+m6fj6ux7mO5iVy/ozJhtOmPRHbzFUdpFn
         5D2utDDU5g5YZh6vyy1qEAxLCgtOqTO1umxrj/XiwsyNVMc0oEgscodCh09MhFosj/WX
         5pJbFFlCuL2p2QgY7NaJFfA5uJZKTQWohy8crk6QtkNI6cd6E12lZn8nsqVaqwqBrKQf
         b12nQs8Mklh32YSlniceXZMWLxPhQc0ZVCVT0jLOTh7zpGTpWCE+7B+6cfczVUtEgMyN
         Dz1M7pV45bPQSPgnmJuiKWbfbQQXQ20Jf+8NP2mz/g3eIqgPY0Qk3fhkJY+GNgxguAE3
         Kt9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686275605; x=1688867605;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0EhryhLpoOvwPVx4M2ljHIWzt7WzmshYmhcsBPvx+lA=;
        b=EmwU7m/qSFEr50NBpJ33Qyksy521HhxBx6Ajfa4GXGCvKg5LEJaEAokQ6iUe5nDefg
         laOQV09v790fs5uBRSL4B5dkN7K487AkOqxV1nbJH6uJTfiUJ2d/BODyybmMMsUgGcgX
         AVvryXytF8Guhvn2ehpioC/w+hZZIKlEIGS4DkNMx2HmX41ahDNEmSc2MNB1TCGcGhTe
         ScKx7ZDL/xw4YwOM9imHtKRWvQlFiPQj2VgmXiBYdfLDfYmrfgVybxW0j08IawPoci8E
         XekkCf3HCb6iVy/GyRwtaiSfNJrdnvZb5r4h5y6AJQ9WEFltqZ4UioytOOwrpQZ+TtV+
         9BXw==
X-Gm-Message-State: AC+VfDyHtX2oo2hEx1u4bw4nETV57cU8INN1SCGTJfx8oy7MgAS50YIM
	W3V24yv/LDBoi27dDk5REmk=
X-Google-Smtp-Source: ACHHUZ5SdFBewYf9KgJkVf7S3cYNAToXeKsF8ae8Uqdc4QcZE49jFavAQbk/4nupw/tgvO62i+irmg==
X-Received: by 2002:a05:622a:1446:b0:3f9:c057:59a8 with SMTP id v6-20020a05622a144600b003f9c05759a8mr236078qtx.7.1686275605456;
        Thu, 08 Jun 2023 18:53:25 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id 2-20020ac85642000000b003f9c2f51558sm801622qtt.24.2023.06.08.18.53.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jun 2023 18:53:24 -0700 (PDT)
Message-ID: <6149614c-e040-74d7-c794-d718094de6bc@gmail.com>
Date: Thu, 8 Jun 2023 21:53:24 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Michael Toussaint <mtoussaint@chaosinc.com>, Rob Kossler <rkossler@nd.edu>
References: <CAMhTvws54hP-vxo9FwLt9FncOgGsR-Ps+FAe4x9-mnJVy59C0Q@mail.gmail.com>
 <f51e48a3-9d30-2e07-e7e2-a30cc4bab1f9@gmail.com>
 <CAB__hTQgDtPFOMXqK7-gyAhnc_1Q7=Or9rw2bgBaqwe+_xTSbw@mail.gmail.com>
 <CAMhTvwvb+g+CP_yTedvAfObnjbmUUw+ZOC2J1m3xYbWh_HaC_g@mail.gmail.com>
 <CAB__hTSa6Gx54yshpFFGEdzmLoO48YTsAR8M0fTdkjqRkM2D3Q@mail.gmail.com>
 <CAMhTvwvk-15EvqX3T8ze-+FuLOU4jYxNtkK_K7AYa7OJkAwOAg@mail.gmail.com>
 <CAB__hTRW5aPaRYhuC6sZm3G1hJkpip-qPghwKc02XKwghxzb9g@mail.gmail.com>
 <CAMhTvwv0n=cYmx=CaW4qyVsnSkpaVmF39Ee2E4rL8Ay0Yb-h8g@mail.gmail.com>
 <CAB__hTRC45inNTcHWFo6dvqOTDersMMyi1z=yz-zSY_=s-iCUg@mail.gmail.com>
 <CAMhTvwtOr4=S68thYh_z9knGtRu1yn0gQdMkzfPs8XBCA03s+w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAMhTvwtOr4=S68thYh_z9knGtRu1yn0gQdMkzfPs8XBCA03s+w@mail.gmail.com>
Message-ID-Hash: VYYA3YN4B6SIYMLHMJF36Q65WPLDWF43
X-Message-ID-Hash: VYYA3YN4B6SIYMLHMJF36Q65WPLDWF43
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VYYA3YN4B6SIYMLHMJF36Q65WPLDWF43/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7872546276646273205=="

This is a multi-part message in MIME format.
--===============7872546276646273205==
Content-Type: multipart/alternative;
 boundary="------------kFJKkJjysQhQS03fLHrJQGgO"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------kFJKkJjysQhQS03fLHrJQGgO
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 08/06/2023 21:41, Michael Toussaint wrote:
> Hi Rob,
>
> Yes, 0.57 degrees is definitely within my measurement=C2=A0error. But,=20
> shouldn't the N321 synchronize the phase of the LO's too?
If you're sharing LOs, there's no "synchronizing the LOs".=C2=A0 A single=
 LO=20
is shared through a switching matrix to each of the
 =C2=A0 relevant mixers.=C2=A0 There'll be some residual phase-error, sin=
ce=20
effective path-length will never be precisely matched--even
 =C2=A0 with careful board layout, internal temperature differentials and=
=20
batch differences in electronic components in the switching
 =C2=A0 matrix, and even the mixers involved, will yield (usually small)=20
mutual phase errors.

Presumably the length of your LO-sharing cables are all the same, of the=20
same type, and from the same manufacturer
 =C2=A0 (and, preferrably, from the same cable batch).



>
> Is there documentation available of how to repeat the results in the=20
> "Measured Performance" section of=20
> https://kb.ettus.com/USRP_N320/N321_LO_Distribution=C2=A0(e.g. code=20
> examples and or test setup to measure the phase drift)? It shows less=20
> than 0.1 degree of phase error, I'd like to just repeat that test to=20
> confirm everything is working correctly, and see what might be causing=20
> the deltas.
Note that phase-drift measurements measure the *change* in relative=20
phase between channels over time.=C2=A0 Not, I think, the
 =C2=A0 absolute phase-offset between channels.=C2=A0 In a shared-LO setu=
p=20
(ignoring any bugs or mis-configurations of the DUCs, etc), the
 =C2=A0 absolute phase-offset between channels is repeatable and (largely=
)=20
static.=C2=A0 Dominated by physical processes like temperature
 =C2=A0 drift and (worse) differential temperature drift in analog compon=
ents=20
like cables, circuit-board traces, component temperatures,
 =C2=A0 etc.


>
> Thanks,
>
> Michael
>
>
> On Wed, Jun 7, 2023 at 12:22=E2=80=AFPM Rob Kossler <rkossler@nd.edu> w=
rote:
>
>     Hi Michael,
>     I don't have any ideas for reducing a time delay offset. But, I
>     still wonder if the problem could actually be just a phase offset.
>
>     With a relative delay of 2.5ns and a bandwidth of 4 MHz, the
>     amount of phase variation you would see is 0.57 degrees.=C2=A0 That=
 is
>     not easy to see.=C2=A0 On the other hand, if your bandwidth=C2=A0in=
creased
>     to 200 MHz, you would see phase variation of 28.6 degrees (if the
>     delay offset is 2.5 ns).
>     Rob
>
>
>     On Tue, Jun 6, 2023 at 9:38=E2=80=AFPM Michael Toussaint
>     <mtoussaint@chaosinc.com> wrote:
>
>         Hi Rob,
>
>         The signal is actually sweeping over 4MHz, but is just super
>         zoomed into a small piece to show the time delta so it looks
>         CW. The time difference appears to be the same (within my
>         ability to measure) across the band so I am assuming it is a
>         time delay offset.
>
>         Any suggestions on how to reduce this time delay offset?
>
>         Thanks,
>
>         Michael Toussaint
>
>
>         On Mon, Jun 5, 2023 at 8:51=E2=80=AFPM Rob Kossler <rkossler@nd=
.edu>
>         wrote:
>
>             Hi Michael,
>             Either a delay offset OR a phase offset will show itself
>             as a relative phase.=C2=A0 In order to distinguish between =
a
>             delay offset and a phase offset, your signal must have
>             appreciable bandwidth.=C2=A0 It appears that your signal is
>             CW.=C2=A0 It is entirely possible that your delay offset is
>             zero.=C2=A0 Does this make sense?
>             Rob
>
>             On Mon, Jun 5, 2023 at 5:32=E2=80=AFPM Michael Toussaint
>             <mtoussaint@chaosinc.com> wrote:
>
>                 Could you share how you're setting up LO sharing in
>                 your code, as well as how you're setting the system
>                 clock on the N321?
>
>                 The functions "configure_channels" and
>                 "set_lo_hw_exports" are used to set up the LO sharing.
>
>                 The functions "sync_sources" and "sync_all_devices"
>                 are used to set up the system clock on the N321.
>
>                 How do you measure the relative delay?
>
>                 We are measuring the offset of the LO's by just
>                 measuring the phase difference of ithe RF coming out
>                 of the Ettus with an Oscilloscope (picture attached as
>                 Scope_Trace_SingleStream_LO.png
>                 <https://mail.google.com/mail/u/0?ui=3D2&ik=3D34abf4583=
b&attid=3D0.1&permmsgid=3Dmsg-a:r-1207093291428225864&view=3Datt&disp=3Ds=
afe&realattid=3Df_lijcykt50>).
>                 Yellow is Channel 1, Green is Channel 2; using a
>                 single streamer we still appear to have a 2.64ns delta
>                 or ~135 degree phase shift.
>
>                 Thanks Marcus and Rob for your assistance.
>
>                 Michael Toussaint
>
>                 def sync_sources(usrp):
>                 logging.info <http://logging.info/>('Setting Sync
>                 Sources')
>
>                 usrp.set_sync_source(clock_source =3D 'gpsdo',
>                 =C2=A0time_source =3D 'gpsdo')
>
>                 def sync_all_devices(hw_info):
>                 logging.info <http://logging.info/>('Syncing All Device=
s')
>
>                 =C2=A0 =C2=A0 mb_with_gps_locked =3D -1
>
>                 =C2=A0 =C2=A0 while 1:
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 time.sleep(1.0)
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 all_ref_locked =3D True
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for board in
>                 range(hw_info.usrp.get_num_mboards()):
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 all_ref_locke=
d =3D all_ref_locked and \
>                 hw_info.usrp.get_mboard_sensor('ref_locked',
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0board).=
to_bool()
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (mb_with_g=
ps_locked =3D=3D -1) and \
>                 hw_info.usrp.get_mboard_sensor('gps_locked',
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0board).=
to_bool():
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 mb_with_gps_locked =3D board
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if all_ref_locked:
>                 logging.info <http://logging.info/>('All Devices are
>                 REF locked')
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break
>
>                 logging.info <http://logging.info/>('GPS Locked on MB
>                 #%d', mb_with_gps_locked)
>
>                 =C2=A0 =C2=A0 time.sleep(1.0)
>                 hw_info.usrp.set_time_next_pps(
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.types.TimeSpec(
>                 hw_info.usrp.get_mboard_sensor('gps_time',
>                 =C2=A0 =C2=A0 =C2=A0mb_with_gps_locked).to_int() +
>                 =C2=A0 =C2=A0 =C2=A01.0)
>                 =C2=A0 =C2=A0 )
>                 =C2=A0 =C2=A0 time.sleep(1.0)
>
>
>                 def configure_channels(usrp, rf_type, hw_info):
>                 =C2=A0 =C2=A0 rf_channel_index =3D None
>                 =C2=A0 =C2=A0 set_rf_rate =3D None
>                 =C2=A0 =C2=A0 set_rf_freq =3D None
>                 =C2=A0 =C2=A0 set_rf_gain =3D None
>                 =C2=A0 =C2=A0 set_rf_lo_source =3D None
>                 =C2=A0 =C2=A0 get_rf_lo_source =3D None
>                 =C2=A0 =C2=A0 get_rf_lo_freq =3D None
>                 =C2=A0 =C2=A0 get_rf_lo_freq_range =3D None
>
>                 =C2=A0 =C2=A0 if (rf_type =3D=3D 'rx'):
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (len(hw_info.rx_channel_=
index) > 0):
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_channel_in=
dex =3D hw_info.rx_channel_index
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_rate =3D=
 usrp.set_rx_rate
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_freq =3D=
 usrp.set_rx_freq
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_gain =3D=
 usrp.set_rx_gain
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_lo_sou=
rce =3D usrp.set_rx_lo_source
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_sou=
rce =3D usrp.get_rx_lo_source
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_fre=
q =3D usrp.get_rx_lo_freq
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_fre=
q_range =3D
>                 usrp.get_rx_lo_freq_range
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return
>                 =C2=A0 =C2=A0 elif (rf_type =3D=3D 'tx'):
>                 i =C2=A0 =C2=A0 =C2=A0 if (len(hw_info.tx_channel_index=
) > 0):
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_channel_in=
dex =3D hw_info.tx_channel_index
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_rate =3D=
 usrp.set_tx_rate
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_freq =3D=
 usrp.set_tx_freq
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_gain =3D=
 usrp.set_tx_gain
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_lo_sou=
rce =3D usrp.set_tx_lo_source
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_sou=
rce =3D usrp.get_tx_lo_source
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_fre=
q =3D usrp.get_tx_lo_freq
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 get_rf_lo_fre=
q_range =3D
>                 usrp.get_tx_lo_freq_range
>                 i =C2=A0 =C2=A0 =C2=A0 else:
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return
>
>                 logging.info <http://logging.info/>('Configuring %s
>                 Channels', rf_type.upper())
>
>                 =C2=A0 =C2=A0 for rf_ch_name, rf_ch_index in
>                 rf_channel_index.items():
>                 logging.info <http://logging.info/>('Configuring %s
>                 channel %s (channel #%d)',
>                 =C2=A0rf_type.upper(), rf_ch_name, rf_ch_index)
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ch_def =3D hw_info.channel_=
def[rf_ch_name]
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 # LO Channel Setup
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_name =3D 'unknow=
n'
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_src =3D 'unknown=
'
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ch_def.lo_inputs is not =
None:
>                 logging.info <http://logging.info/>(' =C2=A0Setting %s =
LO
>                 for Channel %s (#%d)',
>                 =C2=A0rf_type.upper(), rf_ch_name, rf_ch_index)
>
>                 set_rf_lo_source(ch_def.lo_inputs.source,
>                 ch_def.lo_inputs.name <http://ch_def.lo_inputs.name/>,
>                 =C2=A0rf_ch_index)
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_na=
me =3D ch_def.lo_inputs.name
>                 <http://ch_def.lo_inputs.name/>
>
>                 logging.info <http://logging.info/>(' =C2=A0 =C2=A0(#%d=
)
>                 Requested %s LO name %s, src %s',
>                 =C2=A0rf_ch_index,
>                 =C2=A0rf_type.upper(),
>                 ch_def.lo_inputs.name <http://ch_def.lo_inputs.name/>,
>                 =C2=A0ch_def.lo_inputs.source)
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:
>                 logging.info <http://logging.info/>(' =C2=A0No %s LO in=
puts
>                 for Channel %s (#%d)',
>                 =C2=A0rf_type.upper(), rf_ch_name, rf_ch_index)
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_na=
me =3D 'lo1'
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_src =3D get_rf_l=
o_source(current_lo_name,
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_ch_index)
>
>                 logging.info <http://logging.info/>(' =C2=A0 =C2=A0(#%d=
) Current
>                 %s LO name %s, src %s',
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0rf_ch_index,
>                 =C2=A0rf_type.upper(),
>                 =C2=A0current_lo_name,
>                 =C2=A0current_lo_src)
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_lo_freq =3D get_rf_lo_fr=
eq(current_lo_name,
>                 =C2=A0 rf_ch_index)
>
>                 logging.info <http://logging.info/>(' =C2=A0 =C2=A0(#%d=
) [%s]
>                 Current %s LO freq %d',
>                 =C2=A0rf_ch_index,
>                 =C2=A0current_lo_name,
>                 =C2=A0rf_type.upper(),
>                 =C2=A0rf_lo_freq)
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_lo_freq_range =3D get_rf=
_lo_freq_range(
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_na=
me, rf_ch_index)
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 temp =3D ' =C2=A0 =C2=A0(#%=
d) [%s] Current %s LO freq
>                 range' + \
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ' [%d, %d] st=
ep %d'
>
>                 logging.info <http://logging.info/>(temp,
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0rf_ch_index,
>                 =C2=A0current_lo_name,
>                 =C2=A0rf_type.upper(),
>                 =C2=A0rf_lo_freq_range.start(),
>                 =C2=A0rf_lo_freq_range.stop(),
>                 =C2=A0rf_lo_freq_range.step())
>
>                 logging.info <http://logging.info/>(' =C2=A0Setting
>                 Sampling Rate %s', hw_info.fs)
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_rate(hw_info.fs, rf_=
ch_index)
>
>                 logging.info <http://logging.info/>(' =C2=A0Setting Cen=
ter
>                 Freq %s', hw_info.fc)
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 tr =3D
>                 set_rf_freq(uhd.libpyuhd.types.tune_request(hw_info.fc)=
,
>                 =C2=A0rf_ch_index)
>
>                 logging.info <http://logging.info/>(' =C2=A0 =C2=A0(#%d=
) %s Tune
>                 Result:',
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0rf_ch_index, rf_type.upper())
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 log_tune_result(tr)
>
>                 logging.info <http://logging.info/>(' =C2=A0Setting %s
>                 Gain: %2.3f db',
>                 =C2=A0rf_type.upper(),
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0ch_def.gain)
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_gain(ch_def.gain, rf=
_ch_index)
>
>                 def set_lo_hw_exports(usrp, node_name, dirx,
>                 lo_enabled, output_array):
>                 =C2=A0 =C2=A0 """Set LO HW Exports"""
>                 =C2=A0 =C2=A0 if (lo_enabled is None) or (output_array =
is None):
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return
>
>                 logging.info <http://logging.info/>('Setting %s LO
>                 Export Enabled for %s',
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0dirx.upper(), node_name)
>
>                 =C2=A0 =C2=A0 if dirx.lower() =3D=3D 'rx':
>                 usrp.set_rx_lo_export_enabled(lo_enabled, 'lo1', 0)
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_val =3D usrp.get_rx_=
lo_export_enabled('lo1')
>                 =C2=A0 =C2=A0 elif dirx.lower() =3D=3D 'tx':
>                 usrp.set_tx_lo_export_enabled(lo_enabled, 'lo1', 0)
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_val =3D usrp.get_tx_=
lo_export_enabled('lo1')
>                 =C2=A0 =C2=A0 else:
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 logging.warning('Invalid di=
rection %s', dirx)
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return
>
>                 logging.info <http://logging.info/>(' =C2=A0%s LO Expor=
t
>                 Enabled =3D %s, requested %s',
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0dirx.upper(), enable_val, lo_enabled)
>
>                 =C2=A0 =C2=A0 temp_path =3D 'blocks/0/Radio#0/dboard/' =
+ \
>                 f'{dirx.lower()}_frontends/' + \
>                 '0/los/lo1/lo_distribution/LO_OUT_{}/export'
>
>                 logging.info <http://logging.info/>('Setting %s LO HW
>                 Outputs for %s',
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0dirx.upper(), node_name)
>
>                 =C2=A0 =C2=A0 for out_num in range(len(output_array)):
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_lo_export_path =3D temp_=
path.format(out_num)
>
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if usrp.get_tree().exists(h=
w_lo_export_path):
>                 usrp.get_tree().access_bool(hw_lo_export_path).set(
>                 output_array[out_num])
>
>                 logging.info <http://logging.info/>(' =C2=A0%s LO HW Ex=
port
>                 Out[%d] =3D %s, %s %s',
>                 =C2=A0dirx.upper(), out_num,
>                 =C2=A0usrp.get_tree().access_bool(
>                 hw_lo_export_path).get(),
>                 'requested',
>                 output_array[out_num])
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:
>                 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 logging.warni=
ng(' =C2=A0%s LO HW Export Out[%d]
>                 does not exist',
>                 dirx.upper(), out_num)
>
>
>                 On Thu, May 25, 2023 at 6:45=E2=80=AFAM Rob Kossler
>                 <rkossler@nd.edu> wrote:
>
>                     On Thu, May 25, 2023 at 3:54=E2=80=AFAM Michael Tou=
ssaint
>                     <mtoussaint@chaosinc.com> wrote:
>                     >
>                     > Used a single streamer and saw the delay
>                     slightly improve to between 2.5 - 3 ns.
>                     >
>                     > Any other suggestions to improve the delay to
>                     match the results from the knowledge base,
>                     https://kb.ettus.com/USRP_N320/N321_LO_Distribution=
?
>
>                     How do you measure the relative delay?
>
>
>
>
>
>

--------------kFJKkJjysQhQS03fLHrJQGgO
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 08/06/2023 21:41, Michael Toussaint
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAMhTvwtOr4=3DS68thYh_z9knGtRu1yn0gQdMkzfPs8XBCA03s+w@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">Hi Rob,</div>
          <div dir=3D"ltr"><br>
          </div>
          <div dir=3D"ltr">Yes, 0.57 degrees is definitely within my
            measurement=C2=A0error. But, shouldn't the N321 synchronize t=
he
            phase of the LO's too?</div>
        </div>
      </div>
    </blockquote>
    If you're sharing LOs, there's no "synchronizing the LOs".=C2=A0 A si=
ngle
    LO is shared through a switching matrix to each of the<br>
    =C2=A0 relevant mixers.=C2=A0 There'll be some residual phase-error, =
since
    effective path-length will never be precisely matched--even<br>
    =C2=A0 with careful board layout, internal temperature differentials =
and
    batch differences in electronic components in the switching<br>
    =C2=A0 matrix, and even the mixers involved, will yield (usually smal=
l)
    mutual phase errors.<br>
    <br>
    Presumably the length of your LO-sharing cables are all the same, of
    the same type, and from the same manufacturer<br>
    =C2=A0 (and, preferrably, from the same cable batch).<br>
    <br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAMhTvwtOr4=3DS68thYh_z9knGtRu1yn0gQdMkzfPs8XBCA03s+w@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr"><br>
          </div>
          <div>Is there documentation available of how to repeat the
            results in the "Measured Performance" section of=C2=A0<a
              href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Distribution=
"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">https://kb.ettus.com/USRP_N=
320/N321_LO_Distribution</a>=C2=A0(e.g.
            code examples and or test setup to measure the phase drift)?
            It shows less than 0.1 degree of phase error, I'd like to
            just repeat that test to confirm everything is working
            correctly, and see what might be causing the deltas.</div>
        </div>
      </div>
    </blockquote>
    Note that phase-drift measurements measure the *change* in relative
    phase between channels over time.=C2=A0 Not, I think, the<br>
    =C2=A0 absolute phase-offset between channels.=C2=A0 In a shared-LO s=
etup
    (ignoring any bugs or mis-configurations of the DUCs, etc), the<br>
    =C2=A0 absolute phase-offset between channels is repeatable and (larg=
ely)
    static.=C2=A0 Dominated by physical processes like temperature<br>
    =C2=A0 drift and (worse) differential temperature drift in analog
    components like cables, circuit-board traces, component
    temperatures,<br>
    =C2=A0 etc.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAMhTvwtOr4=3DS68thYh_z9knGtRu1yn0gQdMkzfPs8XBCA03s+w@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div dir=3D"ltr"><span class=3D"gmail-im" style=3D"color:rgb(80,0=
,80)">
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
            12:22=E2=80=AFPM Rob Kossler &lt;<a href=3D"mailto:rkossler@n=
d.edu"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">rk=
ossler@nd.edu</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">Hi Michael,
              <div>I don't have any ideas for reducing a time delay
                offset. But, I still wonder if the problem could
                actually be just a phase offset.</div>
              <div><br>
                <div>With a relative delay of 2.5ns and a bandwidth of 4
                  MHz, the amount of phase variation you would see is
                  0.57 degrees.=C2=A0 That is not easy to see.=C2=A0 On t=
he other
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
              <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 6, 2023 a=
t
                9:38=E2=80=AFPM Michael Toussaint &lt;<a
                  href=3D"mailto:mtoussaint@chaosinc.com" target=3D"_blan=
k"
                  moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext=
">mtoussaint@chaosinc.com</a>&gt;
                wrote:<br>
              </div>
              <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px
                0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
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
                      2023 at 8:51=E2=80=AFPM Rob Kossler &lt;<a
                        href=3D"mailto:rkossler@nd.edu" target=3D"_blank"
                        moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">rkossler@nd.edu</=
a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div dir=3D"ltr">
                        <div dir=3D"ltr">Hi Michael,
                          <div>Either a delay offset OR a phase offset
                            will show itself as a relative phase.=C2=A0 I=
n
                            order to distinguish between a delay offset
                            and a phase offset, your signal must have
                            appreciable bandwidth.=C2=A0 It appears that =
your
                            signal is CW.=C2=A0 It is entirely possible t=
hat
                            your delay offset is zero.=C2=A0 Does this ma=
ke
                            sense?</div>
                          <div>Rob</div>
                        </div>
                        <br>
                        <div class=3D"gmail_quote">
                          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, J=
un
                            5, 2023 at 5:32=E2=80=AFPM Michael Toussaint =
&lt;<a
                              href=3D"mailto:mtoussaint@chaosinc.com"
                              target=3D"_blank" moz-do-not-send=3D"true"
                              class=3D"moz-txt-link-freetext">mtoussaint@=
chaosinc.com</a>&gt;
                            wrote:<br>
                          </div>
                          <blockquote class=3D"gmail_quote"
                            style=3D"margin:0px 0px 0px
                            0.8ex;border-left:1px solid
                            rgb(204,204,204);padding-left:1ex">
                            <div dir=3D"ltr">
                              <div dir=3D"ltr"><font color=3D"#9900ff">Co=
uld
                                  you share how you're setting up LO
                                  sharing in your code, as well as how
                                  you're setting the system clock on the
                                  N321?</font>
                                <div><font color=3D"#9900ff"><br>
                                  </font></div>
                                <div>The functions "<span
                                    style=3D"background-color:rgb(255,255=
,255)"><font
                                      color=3D"#ff9900">configure_channel=
s</font></span>"
                                  and "<font color=3D"#ff9900">set_lo_hw_=
exports</font>"
                                  are used to set up the LO sharing.<br>
                                  <br>
                                  The functions "<font color=3D"#ff9900">=
sync_sources</font>"
                                  and "<font color=3D"#ff9900">sync_all_d=
evices</font>"
                                  are used to set up the system clock on
                                  the N321.<font color=3D"#9900ff"><br>
                                  </font></div>
                                <div><br>
                                </div>
                                <div>
                                  <div><font color=3D"#9900ff">How do you
                                      measure the relative delay?</font><=
/div>
                                  <div><br>
                                  </div>
                                  <div>We are measuring the offset of
                                    the LO's by just measuring the phase
                                    difference of <span
                                      data-lexical-text=3D"true">i</span>=
the
                                    RF coming out of the Ettus with an
                                    Oscilloscope (picture attached as=C2=A0=
=C2=A0<a
id=3D"m_-7617529863513143383m_1811052512462931056m_-3658695941951127572m_=
8850574248469324996gmail-:tl"
href=3D"https://mail.google.com/mail/u/0?ui=3D2&amp;ik=3D34abf4583b&amp;a=
ttid=3D0.1&amp;permmsgid=3Dmsg-a:r-1207093291428225864&amp;view=3Datt&amp=
;disp=3Dsafe&amp;realattid=3Df_lijcykt50"
                                      style=3D"padding:0px 8px 0px
                                      0px;text-decoration-line:none;font-=
family:&quot;Google
Sans&quot;,Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:14px;f=
ont-weight:700"
                                      target=3D"_blank"
                                      moz-do-not-send=3D"true">
                                      <div
                                        style=3D"display:inline-block;ove=
rflow:hidden;padding:3px
0px;text-overflow:ellipsis;vertical-align:bottom;max-width:315px">Scope_T=
race_SingleStream_LO.png</div>
                                    </a>). Yellow is Channel 1, Green is
                                    Channel 2; using a single streamer
                                    we still appear to have a 2.64ns
                                    delta or ~135 degree phase shift.</di=
v>
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
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http:=
//logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('Setting
                                      Sync Sources')<br>
                                      <br>
                                      =C2=A0 =C2=A0
                                      usrp.set_sync_source(clock_source
                                      =3D 'gpsdo',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0time_source =3D 'gpsdo')<br>
                                      <br>
                                      def sync_all_devices(hw_info):<br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http:=
//logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('Syncing
                                      All Devices')<br>
                                      <br>
                                      =C2=A0 =C2=A0 mb_with_gps_locked =3D=
 -1<br>
                                      <br>
                                      =C2=A0 =C2=A0 while 1:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 time.sl=
eep(1.0)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 all_ref=
_locked =3D True<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 for boa=
rd in
                                      range(hw_info.usrp.get_num_mboards(=
)):<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 all_ref_locked =3D
                                      all_ref_locked and \<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0
                                      hw_info.usrp.get_mboard_sensor('ref=
_locked',<br>
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
                                      hw_info.usrp.get_mboard_sensor('gps=
_locked',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0board).to_bool():<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 mb_with_gps_locked
                                      =3D board<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 if all_=
ref_locked:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('All
                                      Devices are REF locked')<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 break<br>
                                      <br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http:=
//logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('GPS
                                      Locked on MB #%d',
                                      mb_with_gps_locked)<br>
                                      <br>
                                      =C2=A0 =C2=A0 time.sleep(1.0)<br>
                                      =C2=A0 =C2=A0
                                      hw_info.usrp.set_time_next_pps(<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.typ=
es.TimeSpec(<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      hw_info.usrp.get_mboard_sensor('gps=
_time',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                      =C2=A0 =C2=A0 =C2=A0mb_with_gps_loc=
ked).to_int()
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
                                      =C2=A0 =C2=A0 rf_channel_index =3D =
None<br>
                                      =C2=A0 =C2=A0 set_rf_rate =3D None<=
br>
                                      =C2=A0 =C2=A0 set_rf_freq =3D None<=
br>
                                      =C2=A0 =C2=A0 set_rf_gain =3D None<=
br>
                                      =C2=A0 =C2=A0 set_rf_lo_source =3D =
None<br>
                                      =C2=A0 =C2=A0 get_rf_lo_source =3D =
None<br>
                                      =C2=A0 =C2=A0 get_rf_lo_freq =3D No=
ne<br>
                                      =C2=A0 =C2=A0 get_rf_lo_freq_range =
=3D None<br>
                                      <br>
                                      =C2=A0 =C2=A0 if (rf_type =3D=3D 'r=
x'):<br>
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
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<b=
r>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 return<br>
                                      =C2=A0 =C2=A0 elif (rf_type =3D=3D =
'tx'):</font><br>
                                    <font color=3D"#ff9900"><span
                                        data-lexical-text=3D"true">i</spa=
n>=C2=A0
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
                                      usrp.get_tx_lo_freq_range</font><br=
>
                                    <font color=3D"#ff9900"><span
                                        data-lexical-text=3D"true">i</spa=
n>=C2=A0
                                      =C2=A0 =C2=A0 =C2=A0 else:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 return<br>
                                      <br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http:=
//logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('Configuring
                                      %s Channels', rf_type.upper())<br>
                                      <br>
                                      =C2=A0 =C2=A0 for rf_ch_name, rf_ch=
_index in
                                      rf_channel_index.items():<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('Configuring
                                      %s channel %s (channel #%d)',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(), rf_ch_name,
                                      rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 ch_def =
=3D
                                      hw_info.channel_def[rf_ch_name]<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 # LO Ch=
annel Setup<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 current=
_lo_name =3D
                                      'unknown'<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 current=
_lo_src =3D 'unknown'<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ch_d=
ef.lo_inputs is not
                                      None:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('
                                      =C2=A0Setting %s LO for Channel %s
                                      (#%d)',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(), rf_ch_name,
                                      rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
                                      set_rf_lo_source(ch_def.lo_inputs.s=
ource,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a
                                        href=3D"http://ch_def.lo_inputs.n=
ame/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">ch_def.l=
o_inputs.name</a>,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_ch_index)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 current_lo_name =3D=C2=A0<a
                                        href=3D"http://ch_def.lo_inputs.n=
ame/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">ch_def.l=
o_inputs.name</a><br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('
                                      =C2=A0 =C2=A0(#%d) Requested %s LO =
name %s,
                                      src %s',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_ch_index,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a
                                        href=3D"http://ch_def.lo_inputs.n=
ame/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">ch_def.l=
o_inputs.name</a>,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0ch_def.lo_inputs.source)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<b=
r>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('
                                      =C2=A0No %s LO inputs for Channel %=
s
                                      (#%d)',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(), rf_ch_name,
                                      rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 current_lo_name =3D
                                      'lo1'<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 current=
_lo_src =3D
                                      get_rf_lo_source(current_lo_name,<b=
r>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_ch_i=
ndex)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('
                                      =C2=A0 =C2=A0(#%d) Current %s LO na=
me %s,
                                      src %s',<br>
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
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_lo_f=
req =3D
                                      get_rf_lo_freq(current_lo_name,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0
                                      =C2=A0 rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('
                                      =C2=A0 =C2=A0(#%d) [%s] Current %s =
LO freq
                                      %d',<br>
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
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_lo_f=
req_range =3D
                                      get_rf_lo_freq_range(<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 current_lo_name,
                                      rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 temp =3D=
 ' =C2=A0 =C2=A0(#%d) [%s]
                                      Current %s LO freq range' + \<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ' [%d, %d] step %d'<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>(temp,<br>
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
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('
                                      =C2=A0Setting Sampling Rate %s',
                                      hw_info.fs)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_=
rate(hw_info.fs,
                                      rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('
                                      =C2=A0Setting Center Freq %s',
                                      hw_info.fc)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 tr =3D
                                      set_rf_freq(uhd.libpyuhd.types.tune=
_request(hw_info.fc),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_ch_index)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('
                                      =C2=A0 =C2=A0(#%d) %s Tune Result:'=
,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rf_ch_index,
                                      rf_type.upper())<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 log_tun=
e_result(tr)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('
                                      =C2=A0Setting %s Gain: %2.3f db',<b=
r>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0rf_type.upper(),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ch_def.gain)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_=
gain(ch_def.gain,
                                      rf_ch_index)<br>
                                      <br>
                                      def set_lo_hw_exports(usrp,
                                      node_name, dirx, lo_enabled,
                                      output_array):<br>
                                      =C2=A0 =C2=A0 """Set LO HW Exports"=
""<br>
                                      =C2=A0 =C2=A0 if (lo_enabled is Non=
e) or
                                      (output_array is None):<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<=
br>
                                      <br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http:=
//logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('Setting
                                      %s LO Export Enabled for %s',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(),
                                      node_name)<br>
                                      <br>
                                      =C2=A0 =C2=A0 if dirx.lower() =3D=3D=
 'rx':<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      usrp.set_rx_lo_export_enabled(lo_en=
abled,
                                      'lo1', 0)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_=
val =3D
                                      usrp.get_rx_lo_export_enabled('lo1'=
)<br>
                                      =C2=A0 =C2=A0 elif dirx.lower() =3D=
=3D 'tx':<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      usrp.set_tx_lo_export_enabled(lo_en=
abled,
                                      'lo1', 0)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_=
val =3D
                                      usrp.get_tx_lo_export_enabled('lo1'=
)<br>
                                      =C2=A0 =C2=A0 else:<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 logging=
.warning('Invalid
                                      direction %s', dirx)<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 return<=
br>
                                      <br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http:=
//logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('
                                      =C2=A0%s LO Export Enabled =3D %s,
                                      requested %s',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(),
                                      enable_val, lo_enabled)<br>
                                      <br>
                                      =C2=A0 =C2=A0 temp_path =3D
                                      'blocks/0/Radio#0/dboard/' + \<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      f'{dirx.lower()}_frontends/' + \<br=
>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      '0/los/lo1/lo_distribution/LO_OUT_{=
}/export'<br>
                                      <br>
                                      =C2=A0 =C2=A0=C2=A0<a href=3D"http:=
//logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('Setting
                                      %s LO HW Outputs for %s',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0dirx.upper(),
                                      node_name)<br>
                                      <br>
                                      =C2=A0 =C2=A0 for out_num in
                                      range(len(output_array)):<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 hw_lo_e=
xport_path =3D
                                      temp_path.format(out_num)<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 if
                                      usrp.get_tree().exists(hw_lo_export=
_path):<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0
                                      usrp.get_tree().access_bool(hw_lo_e=
xport_path).set(<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0
                                      output_array[out_num])<br>
                                      <br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0=C2=A0<a
                                        href=3D"http://logging.info/"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true">logging.=
info</a>('
                                      =C2=A0%s LO HW Export Out[%d] =3D %=
s, %s
                                      %s',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0dirx.upper(), out_num,<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      =C2=A0usrp.get_tree().access_bool(<=
br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      hw_lo_export_path).get(),<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      'requested',<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                      output_array[out_num])<br>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:<b=
r>
                                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 logging.warning(' =C2=A0%s
                                      LO HW Export Out[%d] does not
                                      exist',<br>
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
                                  Thu, May 25, 2023 at 6:45=E2=80=AFAM Ro=
b
                                  Kossler &lt;<a
                                    href=3D"mailto:rkossler@nd.edu"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">rkoss=
ler@nd.edu</a>&gt;
                                  wrote:<br>
                                </div>
                                <blockquote class=3D"gmail_quote"
                                  style=3D"margin:0px 0px 0px
                                  0.8ex;border-left:1px solid
                                  rgb(204,204,204);padding-left:1ex">On
                                  Thu, May 25, 2023 at 3:54=E2=80=AFAM Mi=
chael
                                  Toussaint<br>
                                  &lt;<a
                                    href=3D"mailto:mtoussaint@chaosinc.co=
m"
                                    target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">mtous=
saint@chaosinc.com</a>&gt;
                                  wrote:<br>
                                  &gt;<br>
                                  &gt; Used a single streamer and saw
                                  the delay slightly improve to between
                                  2.5 - 3 ns.<br>
                                  &gt;<br>
                                  &gt; Any other suggestions to improve
                                  the delay to match the results from
                                  the knowledge base, <a
                                    href=3D"https://kb.ettus.com/USRP_N32=
0/N321_LO_Distribution"
                                    rel=3D"noreferrer" target=3D"_blank"
                                    moz-do-not-send=3D"true"
                                    class=3D"moz-txt-link-freetext">https=
://kb.ettus.com/USRP_N320/N321_LO_Distribution</a>?<br>
                                  <br>
                                  How do you measure the relative delay?<=
br>
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
              <table
style=3D"border-collapse:collapse;font-family:Helvetica,Arial,sans-serif;=
line-height:1.15;color:rgb(0,0,0)"
                cellspacing=3D"0" cellpadding=3D"0">
                <tbody>
                  <tr>
                    <td><br>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <table style=3D"border-collapse:collapse"
                        cellspacing=3D"0" cellpadding=3D"0">
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
  </body>
</html>

--------------kFJKkJjysQhQS03fLHrJQGgO--

--===============7872546276646273205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7872546276646273205==--

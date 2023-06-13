Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD73372EAFF
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 20:31:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C5BB33846B8
	for <lists+usrp-users@lfdr.de>; Tue, 13 Jun 2023 14:31:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686681080; bh=AHIUlJhreUzH9O9Fyp1b2CMJDptX2QZGWL09eiJRrLs=;
	h=Date:To:References:From:In-Reply-To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=FfWeknz2mpIrDXUfDM4MufESQMiwM56XytVcwDfetphdwg6iEpt818dZXCYDqa5Px
	 E9G39CVV50HNfI34EzF1WeUHn7twVV3LcB1qt4Os7wUVpVzB09xjEbcu5Ir3sYgIaA
	 uBDJkQC6kQ/IoNoSgMnY1wrkhTQFKz+tJdB3fSi6vHAhTkoFnQOwwaSByjEihBA9Wc
	 i+82AEqXDsuk15FmT/S/fczHkZvwDkg0G7Q1gKvNqPM2gSLu3wyYt547AOg6asJgXq
	 93QYP+gr8IBLwXE9kdymbXsR5EVBsJwprjuJtwFEHTCtVaSOS7OM8aSgpmQR9l1QS1
	 ijZSWJVqh55DA==
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D26A384B17
	for <usrp-users@lists.ettus.com>; Tue, 13 Jun 2023 14:30:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SU+SEVyA";
	dkim-atps=neutral
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-39a3f26688bso3306141b6e.2
        for <usrp-users@lists.ettus.com>; Tue, 13 Jun 2023 11:30:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686681018; x=1689273018;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SH39SdSp9NV7pINHESHi3SCmrXGbqmU5zuxdiRXI38U=;
        b=SU+SEVyAoySpuIgm7vocFg3q4UheJLZNNJGb+8l19goz9Q/HhozYHmJcH2TzfnEj8y
         ofsppwGQNEYuYkKV+B35VwetGHj7KxkBrTeTxyjsja4ELv59I+2Z4FTFoRgHNxdQszrZ
         xePq+iClv1m+WYi33WK+gbEfUpnRHyZiXTu1WSXz3IgAtlpCdE1OZYvTvosYLE5TCptl
         lzevLe9C8ZRmaBXuotSWsa8XFzHQx7xzMWD2GZBPFfREvijFae/aW1IAmhYh9F7T/Bli
         ZmU+QuvzdvSD+VkOr6YiBZ/iPcjq+xe35B1IQD3Toj/eIYb9/B50cZOniB8Q/Cf1r/FK
         Jh+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686681018; x=1689273018;
        h=in-reply-to:from:references:cc:to:content-language:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SH39SdSp9NV7pINHESHi3SCmrXGbqmU5zuxdiRXI38U=;
        b=GHPuIXVjjyOjUuAck5c/91EQRqGSbaWGBcn36vBb5PPaJ0DGJBkjfp+K86AsZiu7aR
         eK7NpQhLpEF8M6vxorLoER7bhp6eO9KHF9JXDbC2R8Rd8vhnFjE3SpoZG+cZXwkZ88C2
         npaJf1haYSc3loh6MMf6nOzN/KGhq6z9QrCFK9fK42bIr4aSul/x68TVazfyNRQc3X87
         LGDEsuiF0XQBh/SkALuUK6C7SFV6q9qBvkRETSc3aeapAYigZgXuvHBHJstQlBhrfEhT
         i4M2qaxdMfNq3WFxnC/YeQhgy9rtOqxhU+DEfnVhayw5JjQfLL//OwXvJgZdHztIwCqk
         UxLg==
X-Gm-Message-State: AC+VfDzn5XBVmOiSNIsGeQKY+PTDMFPK7+TIEG/I3Ov8oIaoGLXut6JV
	3EnyyE5ccm3pur3zvWNd7W/l6HaHOnu67Q==
X-Google-Smtp-Source: ACHHUZ5A0bB5frDtpkSYH0/wkJ6biLh82kp1mFaECV91qjMpIYi7c9lXeQyGFRyE0KMq9o1QnmAWOQ==
X-Received: by 2002:a05:6808:28d:b0:39b:6f01:babb with SMTP id z13-20020a056808028d00b0039b6f01babbmr7212282oic.58.1686681017640;
        Tue, 13 Jun 2023 11:30:17 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id g27-20020a0caadb000000b0061b7c0ff41dsm1013751qvb.34.2023.06.13.11.30.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 11:30:17 -0700 (PDT)
Message-ID: <325f0007-ac62-6fd9-829f-f270ed416c8f@gmail.com>
Date: Tue, 13 Jun 2023 14:30:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Michael Toussaint <mtoussaint@chaosinc.com>
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
 <6149614c-e040-74d7-c794-d718094de6bc@gmail.com>
 <CAMhTvwu6hYdwEtsW3+z4zJgrDe2mex6YFZHBBjJFRUWOnJ8LZg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAMhTvwu6hYdwEtsW3+z4zJgrDe2mex6YFZHBBjJFRUWOnJ8LZg@mail.gmail.com>
Message-ID-Hash: 2CIRJSJNT3WWGDQIVMZRM5LJ5ES4LLYL
X-Message-ID-Hash: 2CIRJSJNT3WWGDQIVMZRM5LJ5ES4LLYL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO Distribution
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2CIRJSJNT3WWGDQIVMZRM5LJ5ES4LLYL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4734188472587093717=="

This is a multi-part message in MIME format.
--===============4734188472587093717==
Content-Type: multipart/alternative;
 boundary="------------nDP5DhESRQkgbxVclEPiHcJU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------nDP5DhESRQkgbxVclEPiHcJU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 13/06/2023 13:50, Michael Toussaint wrote:
> Hi Marcus,
>
> Yes, the cables are identical, we also experimented with Phase stable=20
> test cables but did not see any improvement. We understand there will=20
> be some residual phase errors, but the RF coming out with a 2.64ns=20
> delta or ~135 degree phase shift=C2=A0@ 144MHz seems like more than tha=
t.=20
> Is that level of offset to be expected, if so is there a procedure=C2=A0=
to=20
> calibrate that out to align the RF?
For RX, you'd send a tone into all ports, and measure the phase offset=20
and insert appropriate phase-rotations to compensate.

But, from what I understand, that shouldn't be necessary with the N321.=C2=
=A0=20
The LO comes out and is then distributed to the
 =C2=A0 mixers via the LO distribution, which should be phase-matched.

Does the apparent phase offset change with different versions of UHD?=C2=A0=
=C2=A0=20
That is, if you step forward/backward a rev or two,
 =C2=A0 does that change things?=C2=A0=C2=A0=C2=A0 (I'm thinking here of =
timing differences=20
in the DUC setups that would be software/firmware-linked,
 =C2=A0 rather than hardware-linked).


>
> Understand that the phase drift measurements=C2=A0are the change over t=
ime.=20
> Do you know if Measured Performance results, from=20
> https://kb.ettus.com/USRP_N320/N321_LO_Distribution, where generated=20
> on Rx channels (e.g. by injecting a tone to a N321 and a N320 and=20
> measuring the phase difference of the IQ over time) or on Tx channels=20
> (e.g. N321 and N320 transmitting a tone and using some type of test=20
> equipment to measure=C2=A0the phase offset of the RF over time) or is t=
here=20
> some other way? I'd just like to repeat the process to see if I can=20
> repeat=C2=A0the results or see if there is something I am doing wrong.
I don't know how those tests were done, nor who did them within Ettus/NI=20
R&D.

>
> Thanks,
>
> Michael Toussaint
>
>
> On Thu, Jun 8, 2023 at 6:53=E2=80=AFPM Marcus D. Leech=20
> <patchvonbraun@gmail.com> wrote:
>
>     On 08/06/2023 21:41, Michael Toussaint wrote:
>>     Hi Rob,
>>
>>     Yes, 0.57 degrees is definitely within my measurement=C2=A0error. =
But,
>>     shouldn't the N321 synchronize the phase of the LO's too?
>     If you're sharing LOs, there's no "synchronizing the LOs".=C2=A0 A
>     single LO is shared through a switching matrix to each of the
>     =C2=A0 relevant mixers.=C2=A0 There'll be some residual phase-error=
, since
>     effective path-length will never be precisely matched--even
>     =C2=A0 with careful board layout, internal temperature differential=
s
>     and batch differences in electronic components in the switching
>     =C2=A0 matrix, and even the mixers involved, will yield (usually sm=
all)
>     mutual phase errors.
>
>     Presumably the length of your LO-sharing cables are all the same,
>     of the same type, and from the same manufacturer
>     =C2=A0 (and, preferrably, from the same cable batch).
>
>
>
>>
>>     Is there documentation available of how to repeat the results in
>>     the "Measured Performance" section of
>>     https://kb.ettus.com/USRP_N320/N321_LO_Distribution=C2=A0(e.g. cod=
e
>>     examples and or test setup to measure the phase drift)? It shows
>>     less than 0.1 degree of phase error, I'd like to just repeat that
>>     test to confirm everything is working correctly, and see what
>>     might be causing the deltas.
>     Note that phase-drift measurements measure the *change* in
>     relative phase between channels over time.=C2=A0 Not, I think, the
>     =C2=A0 absolute phase-offset between channels.=C2=A0 In a shared-LO=
 setup
>     (ignoring any bugs or mis-configurations of the DUCs, etc), the
>     =C2=A0 absolute phase-offset between channels is repeatable and
>     (largely) static.=C2=A0 Dominated by physical processes like temper=
ature
>     =C2=A0 drift and (worse) differential temperature drift in analog
>     components like cables, circuit-board traces, component temperature=
s,
>     =C2=A0 etc.
>
>
>>
>>     Thanks,
>>
>>     Michael
>>
>>
>>     On Wed, Jun 7, 2023 at 12:22=E2=80=AFPM Rob Kossler <rkossler@nd.e=
du> wrote:
>>
>>         Hi Michael,
>>         I don't have any ideas for reducing a time delay offset. But,
>>         I still wonder if the problem could actually be just a phase
>>         offset.
>>
>>         With a relative delay of 2.5ns and a bandwidth of 4 MHz, the
>>         amount of phase variation you would see is 0.57 degrees. That
>>         is not easy to see.=C2=A0 On the other hand, if your
>>         bandwidth=C2=A0increased to 200 MHz, you would see phase varia=
tion
>>         of 28.6 degrees (if the delay offset is 2.5 ns).
>>         Rob
>>
>>
>>         On Tue, Jun 6, 2023 at 9:38=E2=80=AFPM Michael Toussaint
>>         <mtoussaint@chaosinc.com> wrote:
>>
>>             Hi Rob,
>>
>>             The signal is actually sweeping over 4MHz, but is just
>>             super zoomed into a small piece to show the time delta so
>>             it looks CW. The time difference appears to be the same
>>             (within my ability to measure) across the band so I am
>>             assuming it is a time delay offset.
>>
>>             Any suggestions on how to reduce this time delay offset?
>>
>>             Thanks,
>>
>>             Michael Toussaint
>>
>>
>>             On Mon, Jun 5, 2023 at 8:51=E2=80=AFPM Rob Kossler
>>             <rkossler@nd.edu> wrote:
>>
>>                 Hi Michael,
>>                 Either a delay offset OR a phase offset will show
>>                 itself as a relative phase.=C2=A0 In order to distingu=
ish
>>                 between a delay offset and a phase offset, your
>>                 signal must have appreciable bandwidth. It appears
>>                 that your signal is CW.=C2=A0 It is entirely possible =
that
>>                 your delay offset is zero.=C2=A0 Does this make sense?
>>                 Rob
>>
>>                 On Mon, Jun 5, 2023 at 5:32=E2=80=AFPM Michael Toussai=
nt
>>                 <mtoussaint@chaosinc.com> wrote:
>>
>>                     Could you share how you're setting up LO sharing
>>                     in your code, as well as how you're setting the
>>                     system clock on the N321?
>>
>>                     The functions "configure_channels" and
>>                     "set_lo_hw_exports" are used to set up the LO
>>                     sharing.
>>
>>                     The functions "sync_sources" and
>>                     "sync_all_devices" are used to set up the system
>>                     clock on the N321.
>>
>>                     How do you measure the relative delay?
>>
>>                     We are measuring the offset of the LO's by just
>>                     measuring the phase difference of ithe RF coming
>>                     out of the Ettus with an Oscilloscope (picture
>>                     attached as
>>                     Scope_Trace_SingleStream_LO.png
>>                     <https://mail.google.com/mail/u/0?ui=3D2&ik=3D34ab=
f4583b&attid=3D0.1&permmsgid=3Dmsg-a:r-1207093291428225864&view=3Datt&dis=
p=3Dsafe&realattid=3Df_lijcykt50>).
>>                     Yellow is Channel 1, Green is Channel 2; using a
>>                     single streamer we still appear to have a 2.64ns
>>                     delta or ~135 degree phase shift.
>>
>>                     Thanks Marcus and Rob for your assistance.
>>
>>                     Michael Toussaint
>>
>>                     def sync_sources(usrp):
>>                     logging.info <http://logging.info/>('Setting Sync
>>                     Sources')
>>
>>                     usrp.set_sync_source(clock_source =3D 'gpsdo',
>>                     =C2=A0time_source =3D 'gpsdo')
>>
>>                     def sync_all_devices(hw_info):
>>                     logging.info <http://logging.info/>('Syncing All
>>                     Devices')
>>
>>                     =C2=A0 =C2=A0 mb_with_gps_locked =3D -1
>>
>>                     =C2=A0 =C2=A0 while 1:
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 time.sleep(1.0)
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 all_ref_locked =3D Tru=
eand they called it
>>                     puppy love
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 for board in
>>                     range(hw_info.usrp.get_num_mboards()):
>>                     all_ref_locked =3D all_ref_locked and \
>>                     hw_info.usrp.get_mboard_sensor('ref_locked',
>>                     =C2=A0board).to_bool()
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (mb_w=
ith_gps_locked =3D=3D -1) and \
>>                     hw_info.usrp.get_mboard_sensor('gps_locked',
>>                     =C2=A0board).to_bool():
>>                     mb_with_gps_locked =3D board
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 if all_ref_locked:
>>                     logging.info <http://logging.info/>('All Devices
>>                     are REF locked')
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 breakand=
 they called it puppy love
>>
>>                     logging.info <http://logging.info/>('GPS Locked
>>                     on MB #%d', mb_with_gps_locked)
>>
>>                     =C2=A0 =C2=A0 time.sleep(1.0)
>>                     hw_info.usrp.set_time_next_pps(
>>                     uhd.types.TimeSpec(
>>                     hw_info.usrp.get_mboard_sensor('gps_time',
>>                     =C2=A0mb_with_gps_locked).to_int() +
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A01.0)
>>                     =C2=A0 =C2=A0 )
>>                     =C2=A0 =C2=A0 time.sleep(1.0)
>>
>>
>>                     def configure_channels(usrp, rf_type, hw_info):
>>                     =C2=A0 =C2=A0 rf_channel_index =3D None
>>                     =C2=A0 =C2=A0 set_rf_rate =3D None
>>                     =C2=A0 =C2=A0 set_rf_freq =3D None
>>                     =C2=A0 =C2=A0 set_rf_gain =3D None
>>                     =C2=A0 =C2=A0 set_rf_lo_source =3D None
>>                     =C2=A0 =C2=A0 get_rf_lo_source =3D None
>>                     =C2=A0 =C2=A0 get_rf_lo_freq =3D None
>>                     =C2=A0 =C2=A0 get_rf_lo_freq_range =3D None
>>
>>                     =C2=A0 =C2=A0 if (rf_type =3D=3D 'rx'):
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (len(hw_info.rx_cha=
nnel_index) > 0):
>>                     rf_channel_index =3D hw_info.rx_channel_index
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_r=
ate =3D usrp.set_rx_rate
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_f=
req =3D usrp.set_rx_freq
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_g=
ain =3D usrp.set_rx_gain
>>                     set_rf_lo_source =3D usrp.set_rx_lo_source
>>                     get_rf_lo_source =3D usrp.get_rx_lo_source
>>                     get_rf_lo_freq =3D usrp.get_rx_lo_freq
>>                     get_rf_lo_freq_range =3D usrp.get_rx_lo_freq_range
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return
>>                     =C2=A0 =C2=A0 elif (rf_type =3D=3D 'tx'):
>>                     i =C2=A0 =C2=A0 =C2=A0 if (len(hw_info.tx_channel_=
index) > 0):
>>                     rf_channel_index =3D hw_info.tx_channel_index
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_r=
ate =3D usrp.set_tx_rate
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_f=
req =3D usrp.set_tx_freq
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_rf_g=
ain =3D usrp.set_tx_gain
>>                     set_rf_lo_source =3D usrp.set_tx_lo_source
>>                     get_rf_lo_source =3D usrp.get_tx_lo_source
>>                     get_rf_lo_freq =3D usrp.get_tx_lo_freq
>>                     get_rf_lo_freq_range =3D usrp.get_tx_lo_freq_range
>>                     i =C2=A0 =C2=A0 =C2=A0 else:
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return
>>
>>                     logging.info <http://logging.info/>('Configuring
>>                     %s Channels', rf_type.upper())
>>
>>                     =C2=A0 =C2=A0 for rf_ch_name, rf_ch_index in
>>                     rf_channel_index.items():
>>                     logging.info <http://logging.info/>('Configuring
>>                     %s channel %s (channel #%d)',
>>                     =C2=A0rf_type.upper(), rf_ch_name, rf_ch_index)
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 ch_def =3D hw_info.cha=
nnel_def[rf_ch_name]
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 # LO Channel Setup
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_name =3D 'u=
nknown'
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_src =3D 'un=
known'
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ch_def.lo_inputs is=
 not None:
>>                     logging.info <http://logging.info/>(' =C2=A0Settin=
g %s
>>                     LO for Channel %s (#%d)',
>>                     =C2=A0rf_type.upper(), rf_ch_name, rf_ch_index)
>>
>>                     set_rf_lo_source(ch_def.lo_inputs.source,
>>                     ch_def.lo_inputs.name
>>                     <http://ch_def.lo_inputs.name/>,
>>                     =C2=A0 =C2=A0 =C2=A0rf_ch_index)
>>                     current_lo_name =3D ch_def.lo_inputs.name
>>                     <http://ch_def.lo_inputs.name/>
>>
>>                     logging.info <http://logging.info/>(' =C2=A0 =C2=A0=
(#%d)
>>                     Requested %s LO name %s, src %s',
>>                     =C2=A0rf_ch_index,
>>                     =C2=A0rf_type.upper(),
>>                     ch_def.lo_inputs.name
>>                     <http://ch_def.lo_inputs.name/>,
>>                     =C2=A0ch_def.lo_inputs.source)
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:
>>                     logging.info <http://logging.info/>(' =C2=A0No %s =
LO
>>                     inputs for Channel %s (#%d)',
>>                     =C2=A0rf_type.upper(), rf_ch_name, rf_ch_index)
>>
>>                     current_lo_name =3D 'lo1'
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 current_lo_src =3D
>>                     get_rf_lo_source(current_lo_name,
>>                     rf_ch_index)
>>
>>                     logging.info <http://logging.info/>(' =C2=A0 =C2=A0=
(#%d)
>>                     Current %s LO name %s, src %s',
>>                     =C2=A0rf_ch_index,
>>                     =C2=A0rf_type.upper(),
>>                     =C2=A0current_lo_name,
>>                     =C2=A0current_lo_src)
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_lo_freq =3D get_rf_=
lo_freq(current_lo_name,
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_ch_in=
dex)
>>
>>                     logging.info <http://logging.info/>(' =C2=A0 =C2=A0=
(#%d)
>>                     [%s] Current %s LO freq %d',
>>                     =C2=A0rf_ch_index,
>>                     =C2=A0current_lo_name,
>>                     =C2=A0rf_type.upper(),
>>                     =C2=A0rf_lo_freq)
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 rf_lo_freq_range =3D g=
et_rf_lo_freq_range(
>>                     current_lo_name, rf_ch_index)
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 temp =3D ' =C2=A0(#%d)=
 [%s] Current %s LO freq
>>                     range' + \
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ' [%d, %=
d] step %d'
>>
>>                     logging.info <http://logging.info/>(temp,
>>                     =C2=A0rf_ch_index,
>>                     =C2=A0current_lo_name,
>>                     =C2=A0rf_type.upper(),
>>                     =C2=A0rf_lo_freq_range.start(),
>>                     =C2=A0rf_lo_freq_range.stop(),
>>                     =C2=A0rf_lo_freq_range.step())
>>
>>                     logging.info <http://logging.info/>(' =C2=A0Settin=
g
>>                     Sampling Rate %s', hw_info.fs)
>>                     set_rf_rate(hw_info.fs, rf_ch_index)
>>
>>                     logging.info <http://logging.info/>(' =C2=A0Settin=
g
>>                     Center Freq %s', hw_info.fc)
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 tr =3D
>>                     set_rf_freq(uhd.libpyuhd.types.tune_request(hw_inf=
o.fc),
>>                     =C2=A0rf_ch_index)
>>
>>                     logging.info <http://logging.info/>(' =C2=A0 =C2=A0=
(#%d) %s
>>                     Tune Result:',
>>                     =C2=A0rf_ch_index, rf_type.upper())
>>                     log_tune_result(tr)
>>
>>                     logging.info <http://logging.info/>(' =C2=A0Settin=
g %s
>>                     Gain: %2.3f db',
>>                     =C2=A0rf_type.upper(),
>>                     =C2=A0ch_def.gain)
>>                     set_rf_gain(ch_def.gain, rf_ch_index)
>>
>>                     def set_lo_hw_exports(usrp, node_name, dirx,
>>                     lo_enabled, output_array):
>>                     =C2=A0 =C2=A0 """Set LO HW Exports"""
>>                     =C2=A0 =C2=A0 if (lo_enabled is None) or (output_a=
rray is
>>                     None):
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 return
>>
>>                     logging.info <http://logging.info/>('Setting %s
>>                     LO Export Enabled for %s',
>>                     =C2=A0dirx.upper(), node_name)
>>
>>                     =C2=A0 =C2=A0 if dirx.lower() =3D=3D 'rx':
>>                     usrp.set_rx_lo_export_enabled(lo_enabled, 'lo1', 0=
)
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_val =3D
>>                     usrp.get_rx_lo_export_enabled('lo1')
>>                     =C2=A0 =C2=A0 elif dirx.lower() =3D=3D 'tx':
>>                     usrp.set_tx_lo_export_enabled(lo_enabled, 'lo1', 0=
)
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 enable_val =3D
>>                     usrp.get_tx_lo_export_enabled('lo1')
>>                     =C2=A0 =C2=A0 else:
>>                     logging.warning('Invalid direction %s', dirx)
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 return
>>
>>                     logging.info <http://logging.info/>(' =C2=A0%s LO
>>                     Export Enabled =3D %s, requested %s',
>>                     =C2=A0dirx.upper(), enable_val, lo_enabled)
>>
>>                     =C2=A0 =C2=A0 temp_path =3D 'blocks/0/Radio#0/dboa=
rd/' + \
>>                     f'{dirx.lower()}_frontends/' + \
>>                     '0/los/lo1/lo_distribution/LO_OUT_{}/export'
>>
>>                     logging.info <http://logging.info/>('Setting %s
>>                     LO HW Outputs for %s',
>>                     =C2=A0dirx.upper(), node_name)
>>
>>                     =C2=A0 =C2=A0 for out_num in range(len(output_arra=
y)):
>>                     hw_lo_export_path =3D temp_path.format(out_num)
>>
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 if usrp.get_tree().exi=
sts(hw_lo_export_path):
>>                     usrp.get_tree().access_bool(hw_lo_export_path).set=
(
>>                     output_array[out_num])
>>
>>                     logging.info <http://logging.info/>(' =C2=A0%s LO =
HW
>>                     Export Out[%d] =3D %s, %s %s',
>>                     =C2=A0dirx.upper(), out_num,
>>                     =C2=A0usrp.get_tree().access_bool(
>>                     hw_lo_export_path).get(),
>>                     'requested',
>>                     output_array[out_num])
>>                     =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:
>>                     logging.warning(' =C2=A0%s LO HW Export Out[%d] do=
es
>>                     not exist',
>>                     =C2=A0 =C2=A0 dirx.upper(), out_num)
>>
>>
>>                     On Thu, May 25, 2023 at 6:45=E2=80=AFAM Rob Kossle=
r
>>                     <rkossler@nd.edu> wrote:
>>
>>                         On Thu, May 25, 2023 at 3:54=E2=80=AFAM Michae=
l Toussaint
>>                         <mtoussaint@chaosinc.com> wrote:
>>                         >
>>                         > Used a single streamer and saw the delay
>>                         slightly improve to between 2.5 - 3 ns.
>>                         >
>>                         > Any other suggestions to improve the delay
>>                         to match the results from the knowledge base,
>>                         https://kb.ettus.com/USRP_N320/N321_LO_Distrib=
ution?
>>
>>                         How do you measure the relative delay?
>>
>>
>>
>>
>>
>>
>
>
>
>

--------------nDP5DhESRQkgbxVclEPiHcJU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 13/06/2023 13:50, Michael Toussaint
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAMhTvwu6hYdwEtsW3+z4zJgrDe2mex6YFZHBBjJFRUWOnJ8LZg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr">Hi Marcus,</div>
          <div dir=3D"ltr"><br>
          </div>
          <div dir=3D"ltr">Yes, the cables are identical, we also
            experimented with Phase stable test cables but did not see
            any improvement. We understand there will be some residual
            phase errors, but the RF coming out with a 2.64ns delta or
            ~135 degree phase shift=C2=A0@ 144MHz seems like more than th=
at.
            Is that level of offset to be expected, if so is there a
            procedure=C2=A0to calibrate that out to align the RF? <br>
          </div>
        </div>
      </div>
    </blockquote>
    For RX, you'd send a tone into all ports, and measure the phase
    offset and insert appropriate phase-rotations to compensate.<br>
    <br>
    But, from what I understand, that shouldn't be necessary with the
    N321.=C2=A0 The LO comes out and is then distributed to the<br>
    =C2=A0 mixers via the LO distribution, which should be phase-matched.=
<br>
    <br>
    Does the apparent phase offset change with different versions of
    UHD?=C2=A0=C2=A0 That is, if you step forward/backward a rev or two,<=
br>
    =C2=A0 does that change things?=C2=A0=C2=A0=C2=A0 (I'm thinking here =
of timing
    differences in the DUC setups that would be
    software/firmware-linked,<br>
    =C2=A0 rather than hardware-linked).<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAMhTvwu6hYdwEtsW3+z4zJgrDe2mex6YFZHBBjJFRUWOnJ8LZg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div dir=3D"ltr"><br>
          </div>
          <div>Understand that the phase drift measurements=C2=A0are the
            change over time. Do you know if Measured Performance
            results, from=C2=A0<a
              href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Distribution=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">ht=
tps://kb.ettus.com/USRP_N320/N321_LO_Distribution</a>,
            where generated on Rx channels (e.g. by injecting a tone to
            a N321 and a N320 and measuring the phase difference of the
            IQ over time) or on Tx channels (e.g. N321 and N320
            transmitting a tone and using some type of test equipment to
            measure=C2=A0the phase offset of the RF over time) or is ther=
e
            some other way? I'd just like to repeat the process to see
            if I can repeat=C2=A0the results or see if there is something=
 I
            am doing wrong.</div>
        </div>
      </div>
    </blockquote>
    I don't know how those tests were done, nor who did them within
    Ettus/NI R&amp;D.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAMhTvwu6hYdwEtsW3+z4zJgrDe2mex6YFZHBBjJFRUWOnJ8LZg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
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
          <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 8, 2023 at
            6:53=E2=80=AFPM Marcus D. Leech &lt;<a
              href=3D"mailto:patchvonbraun@gmail.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">pa=
tchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div>
              <div>On 08/06/2023 21:41, Michael Toussaint wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr">Hi Rob,</div>
                    <div dir=3D"ltr"><br>
                    </div>
                    <div dir=3D"ltr">Yes, 0.57 degrees is definitely
                      within my measurement=C2=A0error. But, shouldn't th=
e
                      N321 synchronize the phase of the LO's too?</div>
                  </div>
                </div>
              </blockquote>
              If you're sharing LOs, there's no "synchronizing the
              LOs".=C2=A0 A single LO is shared through a switching matri=
x to
              each of the<br>
              =C2=A0 relevant mixers.=C2=A0 There'll be some residual pha=
se-error,
              since effective path-length will never be precisely
              matched--even<br>
              =C2=A0 with careful board layout, internal temperature
              differentials and batch differences in electronic
              components in the switching<br>
              =C2=A0 matrix, and even the mixers involved, will yield
              (usually small) mutual phase errors.<br>
              <br>
              Presumably the length of your LO-sharing cables are all
              the same, of the same type, and from the same manufacturer<=
br>
              =C2=A0 (and, preferrably, from the same cable batch).<br>
              <br>
              <br>
              <br>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div dir=3D"ltr">
                    <div dir=3D"ltr"><br>
                    </div>
                    <div>Is there documentation available of how to
                      repeat the results in the "Measured Performance"
                      section of=C2=A0<a
                        href=3D"https://kb.ettus.com/USRP_N320/N321_LO_Di=
stribution"
                        target=3D"_blank" moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">https://kb.ettus.=
com/USRP_N320/N321_LO_Distribution</a>=C2=A0(e.g.
                      code examples and or test setup to measure the
                      phase drift)? It shows less than 0.1 degree of
                      phase error, I'd like to just repeat that test to
                      confirm everything is working correctly, and see
                      what might be causing the deltas.</div>
                  </div>
                </div>
              </blockquote>
              Note that phase-drift measurements measure the *change* in
              relative phase between channels over time.=C2=A0 Not, I thi=
nk,
              the<br>
              =C2=A0 absolute phase-offset between channels.=C2=A0 In a s=
hared-LO
              setup (ignoring any bugs or mis-configurations of the
              DUCs, etc), the<br>
              =C2=A0 absolute phase-offset between channels is repeatable=
 and
              (largely) static.=C2=A0 Dominated by physical processes lik=
e
              temperature<br>
              =C2=A0 drift and (worse) differential temperature drift in
              analog components like cables, circuit-board traces,
              component temperatures,<br>
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
                    <div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 7,
                      2023 at 12:22=E2=80=AFPM Rob Kossler &lt;<a
                        href=3D"mailto:rkossler@nd.edu" target=3D"_blank"
                        moz-do-not-send=3D"true"
                        class=3D"moz-txt-link-freetext">rkossler@nd.edu</=
a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px
                      0px 0px 0.8ex;border-left:1px solid
                      rgb(204,204,204);padding-left:1ex">
                      <div dir=3D"ltr">Hi Michael,
                        <div>I don't have any ideas for reducing a time
                          delay offset. But, I still wonder if the
                          problem could actually be just a phase offset.<=
/div>
                        <div><br>
                          <div>With a relative delay of 2.5ns and a
                            bandwidth of 4 MHz, the amount of phase
                            variation you would see is 0.57 degrees.=C2=A0
                            That is not easy to see.=C2=A0 On the other h=
and,
                            if your bandwidth=C2=A0increased to 200 MHz, =
you
                            would see phase variation of 28.6 degrees
                            (if the delay offset is 2.5 ns).</div>
                          <div>Rob<br>
                            <div><br>
                            </div>
                          </div>
                        </div>
                      </div>
                      <br>
                      <div class=3D"gmail_quote">
                        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun=
 6,
                          2023 at 9:38=E2=80=AFPM Michael Toussaint &lt;<=
a
                            href=3D"mailto:mtoussaint@chaosinc.com"
                            target=3D"_blank" moz-do-not-send=3D"true"
                            class=3D"moz-txt-link-freetext">mtoussaint@ch=
aosinc.com</a>&gt;
                          wrote:<br>
                        </div>
                        <blockquote class=3D"gmail_quote"
                          style=3D"margin:0px 0px 0px
                          0.8ex;border-left:1px solid
                          rgb(204,204,204);padding-left:1ex">
                          <div dir=3D"ltr">
                            <div dir=3D"ltr">Hi Rob,=C2=A0
                              <div><br>
                              </div>
                              <div>The signal is actually sweeping over
                                4MHz, but is just super zoomed into a
                                small piece to show the time delta so it
                                looks CW. The time difference appears to
                                be the same (within my ability to
                                measure) across the band so I am
                                assuming it is a time delay offset.</div>
                              <div><br>
                              </div>
                              <div>Any suggestions on how to reduce this
                                time delay offset?</div>
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
                              <div dir=3D"ltr" class=3D"gmail_attr">On Mo=
n,
                                Jun 5, 2023 at 8:51=E2=80=AFPM Rob Kossle=
r &lt;<a
                                  href=3D"mailto:rkossler@nd.edu"
                                  target=3D"_blank" moz-do-not-send=3D"tr=
ue"
                                  class=3D"moz-txt-link-freetext">rkossle=
r@nd.edu</a>&gt;
                                wrote:<br>
                              </div>
                              <blockquote class=3D"gmail_quote"
                                style=3D"margin:0px 0px 0px
                                0.8ex;border-left:1px solid
                                rgb(204,204,204);padding-left:1ex">
                                <div dir=3D"ltr">
                                  <div dir=3D"ltr">Hi Michael,
                                    <div>Either a delay offset OR a
                                      phase offset will show itself as a
                                      relative phase.=C2=A0 In order to
                                      distinguish between a delay offset
                                      and a phase offset, your signal
                                      must have appreciable bandwidth.=C2=
=A0
                                      It appears that your signal is
                                      CW.=C2=A0 It is entirely possible t=
hat
                                      your delay offset is zero.=C2=A0 Do=
es
                                      this make sense?</div>
                                    <div>Rob</div>
                                  </div>
                                  <br>
                                  <div class=3D"gmail_quote">
                                    <div dir=3D"ltr" class=3D"gmail_attr"=
>On
                                      Mon, Jun 5, 2023 at 5:32=E2=80=AFPM
                                      Michael Toussaint &lt;<a
                                        href=3D"mailto:mtoussaint@chaosin=
c.com"
                                        target=3D"_blank"
                                        moz-do-not-send=3D"true"
                                        class=3D"moz-txt-link-freetext">m=
toussaint@chaosinc.com</a>&gt;
                                      wrote:<br>
                                    </div>
                                    <blockquote class=3D"gmail_quote"
                                      style=3D"margin:0px 0px 0px
                                      0.8ex;border-left:1px solid
                                      rgb(204,204,204);padding-left:1ex">
                                      <div dir=3D"ltr">
                                        <div dir=3D"ltr"><font
                                            color=3D"#9900ff">Could you
                                            share how you're setting up
                                            LO sharing in your code, as
                                            well as how you're setting
                                            the system clock on the
                                            N321?</font>
                                          <div><font color=3D"#9900ff"><b=
r>
                                            </font></div>
                                          <div>The functions "<span
                                              style=3D"background-color:r=
gb(255,255,255)"><font
                                                color=3D"#ff9900">configu=
re_channels</font></span>"
                                            and "<font color=3D"#ff9900">=
set_lo_hw_exports</font>"
                                            are used to set up the LO
                                            sharing.<br>
                                            <br>
                                            The functions "<font
                                              color=3D"#ff9900">sync_sour=
ces</font>"
                                            and "<font color=3D"#ff9900">=
sync_all_devices</font>"
                                            are used to set up the
                                            system clock on the N321.<fon=
t
                                              color=3D"#9900ff"><br>
                                            </font></div>
                                          <div><br>
                                          </div>
                                          <div>
                                            <div><font color=3D"#9900ff">=
How
                                                do you measure the
                                                relative delay?</font></d=
iv>
                                            <div><br>
                                            </div>
                                            <div>We are measuring the
                                              offset of the LO's by just
                                              measuring the phase
                                              difference of <span>i</span=
>the
                                              RF coming out of the Ettus
                                              with an Oscilloscope
                                              (picture attached as=C2=A0=C2=
=A0<a
id=3D"m_-7352161079718530126m_-7617529863513143383m_1811052512462931056m_=
-3658695941951127572m_8850574248469324996gmail-:tl"
href=3D"https://mail.google.com/mail/u/0?ui=3D2&amp;ik=3D34abf4583b&amp;a=
ttid=3D0.1&amp;permmsgid=3Dmsg-a:r-1207093291428225864&amp;view=3Datt&amp=
;disp=3Dsafe&amp;realattid=3Df_lijcykt50"
                                                target=3D"_blank"
                                                moz-do-not-send=3D"true">
                                                <div
                                                  style=3D"display:inline=
-block;overflow:hidden;padding:3px
0px;text-overflow:ellipsis;vertical-align:bottom;max-width:315px">Scope_T=
race_SingleStream_LO.png</div>
                                              </a>). Yellow is Channel
                                              1, Green is Channel 2;
                                              using a single streamer we
                                              still appear to have a
                                              2.64ns delta or ~135
                                              degree phase shift.</div>
                                            <div><br>
                                            </div>
                                            <div>Thanks Marcus and Rob
                                              for your assistance.</div>
                                            <div><br>
                                            </div>
                                            <div>Michael Toussaint</div>
                                            <div><br>
                                              <font color=3D"#ff9900">def
                                                sync_sources(usrp):<br>
                                                =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('Setting
                                                Sync Sources')<br>
                                                <br>
                                                =C2=A0 =C2=A0
                                                usrp.set_sync_source(cloc=
k_source
                                                =3D 'gpsdo',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0time_source =3D 'gp=
sdo')<br>
                                                <br>
                                                def
                                                sync_all_devices(hw_info)=
:<br>
                                                =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('Syncing
                                                All Devices')<br>
                                                <br>
                                                =C2=A0 =C2=A0 mb_with_gps=
_locked =3D
                                                -1<br>
                                                <br>
                                                =C2=A0 =C2=A0 while 1:<br=
>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 time.sleep(1.0)<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 all_ref_locked =3D
                                                Trueand they called it
                                                puppy love<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 for board in
                                                range(hw_info.usrp.get_nu=
m_mboards()):<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                all_ref_locked =3D
                                                all_ref_locked and \<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                hw_info.usrp.get_mboard_s=
ensor('ref_locked',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0board).to_bool()<br=
>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 if
                                                (mb_with_gps_locked =3D=3D
                                                -1) and \<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                hw_info.usrp.get_mboard_s=
ensor('gps_locked',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0board).to_bool():<b=
r>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                mb_with_gps_locked =3D
                                                board<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 if
                                                all_ref_locked:<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('All
                                                Devices are REF locked')<=
br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 breakand
                                                they called it puppy
                                                love<br>
                                                <br>
                                                =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('GPS
                                                Locked on MB #%d',
                                                mb_with_gps_locked)<br>
                                                <br>
                                                =C2=A0 =C2=A0 time.sleep(=
1.0)<br>
                                                =C2=A0 =C2=A0
                                                hw_info.usrp.set_time_nex=
t_pps(<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                uhd.types.TimeSpec(<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                hw_info.usrp.get_mboard_s=
ensor('gps_time',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0mb_with_gps_locked)=
.to_int()
                                                +<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A01.0)<br>
                                                =C2=A0 =C2=A0 )<br>
                                                =C2=A0 =C2=A0 time.sleep(=
1.0)<br>
                                                <br>
                                                <br>
                                                def
                                                configure_channels(usrp,
                                                rf_type, hw_info):<br>
                                                =C2=A0 =C2=A0 rf_channel_=
index =3D
                                                None<br>
                                                =C2=A0 =C2=A0 set_rf_rate=
 =3D None<br>
                                                =C2=A0 =C2=A0 set_rf_freq=
 =3D None<br>
                                                =C2=A0 =C2=A0 set_rf_gain=
 =3D None<br>
                                                =C2=A0 =C2=A0 set_rf_lo_s=
ource =3D
                                                None<br>
                                                =C2=A0 =C2=A0 get_rf_lo_s=
ource =3D
                                                None<br>
                                                =C2=A0 =C2=A0 get_rf_lo_f=
req =3D
                                                None<br>
                                                =C2=A0 =C2=A0 get_rf_lo_f=
req_range
                                                =3D None<br>
                                                <br>
                                                =C2=A0 =C2=A0 if (rf_type=
 =3D=3D
                                                'rx'):<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 if
                                                (len(hw_info.rx_channel_i=
ndex)
                                                &gt; 0):<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                rf_channel_index =3D
                                                hw_info.rx_channel_index<=
br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 set_rf_rate
                                                =3D usrp.set_rx_rate<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 set_rf_freq
                                                =3D usrp.set_rx_freq<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 set_rf_gain
                                                =3D usrp.set_rx_gain<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                set_rf_lo_source =3D
                                                usrp.set_rx_lo_source<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                get_rf_lo_source =3D
                                                usrp.get_rx_lo_source<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                get_rf_lo_freq =3D
                                                usrp.get_rx_lo_freq<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                get_rf_lo_freq_range =3D
                                                usrp.get_rx_lo_freq_range=
<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 else:<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 return<br>
                                                =C2=A0 =C2=A0 elif (rf_ty=
pe =3D=3D
                                                'tx'):</font><br>
                                              <font color=3D"#ff9900"><sp=
an>i</span>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 if
                                                (len(hw_info.tx_channel_i=
ndex)
                                                &gt; 0):<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                rf_channel_index =3D
                                                hw_info.tx_channel_index<=
br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 set_rf_rate
                                                =3D usrp.set_tx_rate<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 set_rf_freq
                                                =3D usrp.set_tx_freq<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 set_rf_gain
                                                =3D usrp.set_tx_gain<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                set_rf_lo_source =3D
                                                usrp.set_tx_lo_source<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                get_rf_lo_source =3D
                                                usrp.get_tx_lo_source<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                get_rf_lo_freq =3D
                                                usrp.get_tx_lo_freq<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                get_rf_lo_freq_range =3D
                                                usrp.get_tx_lo_freq_range=
</font><br>
                                              <font color=3D"#ff9900"><sp=
an>i</span>=C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 else=
:<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 return<br>
                                                <br>
                                                =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('Configuring
                                                %s Channels',
                                                rf_type.upper())<br>
                                                <br>
                                                =C2=A0 =C2=A0 for rf_ch_n=
ame,
                                                rf_ch_index in
                                                rf_channel_index.items():=
<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('Configuring
                                                %s channel %s (channel
                                                #%d)',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_type.upper(),
                                                rf_ch_name, rf_ch_index)<=
br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 ch_def =3D
                                                hw_info.channel_def[rf_ch=
_name]<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 # LO Channel
                                                Setup<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 current_lo_name
                                                =3D 'unknown'<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 current_lo_src =3D
                                                'unknown'<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 if
                                                ch_def.lo_inputs is not
                                                None:<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('
                                                =C2=A0Setting %s LO for
                                                Channel %s (#%d)',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_type.upper(),
                                                rf_ch_name, rf_ch_index)<=
br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                set_rf_lo_source(ch_def.l=
o_inputs.source,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0<a
                                                  href=3D"http://ch_def.l=
o_inputs.name/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">ch_def.lo_inputs.name</a>,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0rf_ch=
_index)<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                current_lo_name =3D=C2=A0=
<a
                                                  href=3D"http://ch_def.l=
o_inputs.name/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">ch_def.lo_inputs.name</a><br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('
                                                =C2=A0 =C2=A0(#%d) Reques=
ted %s LO
                                                name %s, src %s',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_ch_index,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_type.upper(),<br=
>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0<a
                                                  href=3D"http://ch_def.l=
o_inputs.name/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">ch_def.lo_inputs.name</a>,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0ch_def.lo_inputs.source)<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 else:<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('
                                                =C2=A0No %s LO inputs for
                                                Channel %s (#%d)',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_type.upper(),
                                                rf_ch_name, rf_ch_index)<=
br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                current_lo_name =3D 'lo1'=
<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 current_lo_src =3D
get_rf_lo_source(current_lo_name,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                rf_ch_index)<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('
                                                =C2=A0 =C2=A0(#%d) Curren=
t %s LO
                                                name %s, src %s',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_ch_index,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_type.upper(),<br=
>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0current_lo_name,<br=
>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0current_lo_src)<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 rf_lo_freq =3D
                                                get_rf_lo_freq(current_lo=
_name,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 rf_ch_index)<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('
                                                =C2=A0 =C2=A0(#%d) [%s] C=
urrent %s
                                                LO freq %d',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_ch_index,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0current_lo_name,<br=
>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_type.upper(),<br=
>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_lo_freq)<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 rf_lo_freq_range
                                                =3D get_rf_lo_freq_range(=
<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                current_lo_name,
                                                rf_ch_index)<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 temp =3D ' =C2=A0
                                                =C2=A0(#%d) [%s] Current =
%s
                                                LO freq range' + \<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 ' [%d, %d]
                                                step %d'<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>(temp,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_ch_index,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0current_lo_name,<br=
>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_type.upper(),<br=
>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_lo_freq_range.st=
art(),<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_lo_freq_range.st=
op(),<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_lo_freq_range.st=
ep())<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('
                                                =C2=A0Setting Sampling Ra=
te
                                                %s', hw_info.fs)<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                set_rf_rate(hw_info.fs,
                                                rf_ch_index)<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('
                                                =C2=A0Setting Center Freq
                                                %s', hw_info.fc)<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 tr =3D
                                                set_rf_freq(uhd.libpyuhd.=
types.tune_request(hw_info.fc),<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_ch_index)<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('
                                                =C2=A0 =C2=A0(#%d) %s Tun=
e
                                                Result:',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_ch_index,
                                                rf_type.upper())<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                log_tune_result(tr)<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('
                                                =C2=A0Setting %s Gain: %2=
.3f
                                                db',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0rf_type.upper(),<br=
>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0ch_def.gain)<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                set_rf_gain(ch_def.gain,
                                                rf_ch_index)<br>
                                                <br>
                                                def
                                                set_lo_hw_exports(usrp,
                                                node_name, dirx,
                                                lo_enabled,
                                                output_array):<br>
                                                =C2=A0 =C2=A0 """Set LO H=
W
                                                Exports"""<br>
                                                =C2=A0 =C2=A0 if (lo_enab=
led is
                                                None) or (output_array
                                                is None):<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 return<br>
                                                <br>
                                                =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('Setting
                                                %s LO Export Enabled for
                                                %s',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0dirx.upper(),
                                                node_name)<br>
                                                <br>
                                                =C2=A0 =C2=A0 if dirx.low=
er() =3D=3D
                                                'rx':<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                usrp.set_rx_lo_export_ena=
bled(lo_enabled,
                                                'lo1', 0)<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 enable_val =3D
                                                usrp.get_rx_lo_export_ena=
bled('lo1')<br>
                                                =C2=A0 =C2=A0 elif dirx.l=
ower() =3D=3D
                                                'tx':<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                usrp.set_tx_lo_export_ena=
bled(lo_enabled,
                                                'lo1', 0)<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 enable_val =3D
                                                usrp.get_tx_lo_export_ena=
bled('lo1')<br>
                                                =C2=A0 =C2=A0 else:<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                logging.warning('Invalid
                                                direction %s', dirx)<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 return<br>
                                                <br>
                                                =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('
                                                =C2=A0%s LO Export Enable=
d =3D
                                                %s, requested %s',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0dirx.upper(),
                                                enable_val, lo_enabled)<b=
r>
                                                <br>
                                                =C2=A0 =C2=A0 temp_path =3D
                                                'blocks/0/Radio#0/dboard/=
'
                                                + \<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                f'{dirx.lower()}_frontend=
s/'
                                                + \<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                '0/los/lo1/lo_distributio=
n/LO_OUT_{}/export'<br>
                                                <br>
                                                =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('Setting
                                                %s LO HW Outputs for
                                                %s',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0dirx.upper(),
                                                node_name)<br>
                                                <br>
                                                =C2=A0 =C2=A0 for out_num=
 in
                                                range(len(output_array)):=
<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                hw_lo_export_path =3D
                                                temp_path.format(out_num)=
<br>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 if
                                                usrp.get_tree().exists(hw=
_lo_export_path):<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                usrp.get_tree().access_bo=
ol(hw_lo_export_path).set(<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                output_array[out_num])<br=
>
                                                <br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0=C2=A0<a
                                                  href=3D"http://logging.=
info/"
                                                  target=3D"_blank"
                                                  moz-do-not-send=3D"true=
">logging.info</a>('
                                                =C2=A0%s LO HW Export Out=
[%d]
                                                =3D %s, %s %s',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0dirx.upper(), out_n=
um,<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
=C2=A0usrp.get_tree().access_bool(<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0
                                                hw_lo_export_path).get(),=
<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                'requested',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                output_array[out_num])<br=
>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 else:<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0
                                                logging.warning(' =C2=A0%=
s LO
                                                HW Export Out[%d] does
                                                not exist',<br>
                                                =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0
                                                =C2=A0 =C2=A0 dirx.upper(=
),
                                                out_num)</font></div>
                                          </div>
                                          <div><br>
                                          </div>
                                        </div>
                                        <br>
                                        <div class=3D"gmail_quote">
                                          <div dir=3D"ltr"
                                            class=3D"gmail_attr">On Thu,
                                            May 25, 2023 at 6:45=E2=80=AF=
AM Rob
                                            Kossler &lt;<a
                                              href=3D"mailto:rkossler@nd.=
edu"
                                              target=3D"_blank"
                                              moz-do-not-send=3D"true"
                                              class=3D"moz-txt-link-freet=
ext">rkossler@nd.edu</a>&gt;
                                            wrote:<br>
                                          </div>
                                          <blockquote
                                            class=3D"gmail_quote"
                                            style=3D"margin:0px 0px 0px
                                            0.8ex;border-left:1px solid
rgb(204,204,204);padding-left:1ex">On Thu, May 25, 2023 at 3:54=E2=80=AFA=
M
                                            Michael Toussaint<br>
                                            &lt;<a
                                              href=3D"mailto:mtoussaint@c=
haosinc.com"
                                              target=3D"_blank"
                                              moz-do-not-send=3D"true"
                                              class=3D"moz-txt-link-freet=
ext">mtoussaint@chaosinc.com</a>&gt;
                                            wrote:<br>
                                            &gt;<br>
                                            &gt; Used a single streamer
                                            and saw the delay slightly
                                            improve to between 2.5 - 3
                                            ns.<br>
                                            &gt;<br>
                                            &gt; Any other suggestions
                                            to improve the delay to
                                            match the results from the
                                            knowledge base, <a
                                              href=3D"https://kb.ettus.co=
m/USRP_N320/N321_LO_Distribution"
                                              rel=3D"noreferrer"
                                              target=3D"_blank"
                                              moz-do-not-send=3D"true"
                                              class=3D"moz-txt-link-freet=
ext">https://kb.ettus.com/USRP_N320/N321_LO_Distribution</a>?<br>
                                            <br>
                                            How do you measure the
                                            relative delay?<br>
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
                    <td style=3D"line-height:1.2;white-space:nowrap"
                      nowrap=3D"nowrap"><br>
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

--------------nDP5DhESRQkgbxVclEPiHcJU--

--===============4734188472587093717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4734188472587093717==--

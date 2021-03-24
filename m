Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C3460347413
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 10:00:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C7D0B383A43
	for <lists+usrp-users@lfdr.de>; Wed, 24 Mar 2021 05:00:51 -0400 (EDT)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B4583839B5
	for <usrp-users@lists.ettus.com>; Wed, 24 Mar 2021 04:59:48 -0400 (EDT)
Received: by mail-ed1-f45.google.com with SMTP id w18so26760237edc.0
        for <usrp-users@lists.ettus.com>; Wed, 24 Mar 2021 01:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XceXoCc/4WoQMVl/3yRHVdRnbxtuTASBTADXehpS+zo=;
        b=JmwvMuDkXsi9cHfp4W89bbWj/FFMTa3CiOmMjKkqxwvudJ5mbKfRSuJH/aihtGtPzv
         Didj91xk7XwCB0szbrBn03omz5SrZsp4ZUbHMR4O8uES7VYt2r4oSLcHl3Mmb9ch8KTj
         5QI+xYxmZMSleguavu/1j0j88niJcO4Z9qLFKmfTPVN9+pfJ7bIK1L5pk1U/BbBQ4vgm
         omNuGsfbdYqcAaZLxdPIT3fK0D7EWdYFwVZPVITSz2Q4l9aMZihLXs0OKKHlITU0PwJM
         pCa+ePlFwXSyVrD6r/94Zgid8VkuboI+70PwtzFN4ZK6oepqtsUQIN2CajxzCQ/NwkWX
         n7jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XceXoCc/4WoQMVl/3yRHVdRnbxtuTASBTADXehpS+zo=;
        b=OooA6jD7Ap25FLXH3AIo42+azG+WCWETJIEiWW37XL59rd4p5azfrBSlbe/1YsF/1d
         TgQpiztiGyO+zHH5FezC50I1MhtwORxueGj14lbJ7zg1zeTo+y/DeH1g4lu3e7R+QVj1
         /HltZ8IAohW8Uefbvw/U97aq0fdyWBNvZHym81bJiGUpffOaQ1Yq3eTSzqYvICEnp/FZ
         W9tfW9KomUXBqgzIEqlUssOP6rB7qF0B47rt86isA+L4bYT71N8t2u2uvps79G2rVKgb
         X+i1ckyimbcDIZsT2/GxLLGSvmr0PZ1MrF6ElvCWJEQ43JqrcFHdUwD6kaJUeJQ1LMT/
         j56w==
X-Gm-Message-State: AOAM532pLT+abRFM4qb5MdEqVzn53CRaHCvUhN0POftKxTiIb9UOXKZR
	Oi3CHJ6L/xSa3VCeMFI/o5P+PD2rBa4Reh0QOvq8/kUxWD13jQ==
X-Google-Smtp-Source: ABdhPJxfI+VO/RpLN1RuXzntPsk3YRKUZ8rIcYR52ByLPBQypMViSfsdLT+VV0v3+4d3MDAh8ibP261CymUv7QcCtM0=
X-Received: by 2002:a05:6402:646:: with SMTP id u6mr2318621edx.250.1616576387967;
 Wed, 24 Mar 2021 01:59:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQXTUpAt93YdLhTvSpZ-4FLpOn09Seu=kQTP5OK8DyHoTQ@mail.gmail.com>
 <8CD94AFC-A834-4BB8-BA99-9A86BCED2A47@elitecoding.org> <CAG16vQWeLecqv-yho3SOM6bQw8PcOd6ORvLhBBnRquQcc9SiRA@mail.gmail.com>
 <3f0ebbf0-5a0e-f1c1-51b1-5ad7f9b84f84@elitecoding.org> <CAG16vQXp0y21WU58BLcFi=c1HdDrOKqoMT=qRHLcjkvsQsmo6w@mail.gmail.com>
In-Reply-To: <CAG16vQXp0y21WU58BLcFi=c1HdDrOKqoMT=qRHLcjkvsQsmo6w@mail.gmail.com>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Wed, 24 Mar 2021 09:59:34 +0100
Message-ID: <CAG16vQXaQfHBnZ0z3Sfrryc7V+6ejQXuWSsF51Y8Pn8U5pucAQ@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Message-ID-Hash: JCB2TKLGZ2STBOR5L7BARCMFRNAVOQW5
X-Message-ID-Hash: JCB2TKLGZ2STBOR5L7BARCMFRNAVOQW5
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Enable AGC in USRP E320 with RFNoC using GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JCB2TKLGZ2STBOR5L7BARCMFRNAVOQW5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5431353469052025927=="

--===============5431353469052025927==
Content-Type: multipart/alternative; boundary="0000000000005b6e1d05be448507"

--0000000000005b6e1d05be448507
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julian,

I have the chance to test the AGC with a B210 and perform the same graph as
you send me but I am unable to see what you saw so I think I'm missing
something.
I also have UHD 4.0 and GNURadio 3.8 (installed by source).

The steps I take are these:

   - First, I change the ad9361_device.cpp that is in uhd repository
in */uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp,
   registers 0x101, 0x120, 0x129, 0x123 and 0x12A.*
   - Then, I do "make" and "make install" to compile the changes in
   build-host folder.
   - After that, I generate the python script for the GRC flow graph and
   move the "set_agc" command after the "set_rate" one.
   - Finally, I run the python.

I can't see my waveform between the values I set. Is there something wrong
with those steps? Did you do anything else?

King Regards,

Maria



El mar, 23 mar 2021 a las 9:23, Maria Mu=C3=B1oz (<mamuki92@gmail.com>) esc=
ribi=C3=B3:

> Hi Julian,
>
> Thanks for the checking!
>
> I have also checked my graph and samp_rate is setting first, so I'll try
> to test it with a sine waveform as you suggested and see if that works. I=
f
> not, maybe is an RFNoC/gr-ettus problem. I'll put an issue in the gr-ettu=
s
> repository in that case.
>
> Thanks again for your help.
>
> Kind Regards,
>
> Maria.
>
> El mar, 23 mar 2021 a las 0:36, Julian Arnold (<julian@elitecoding.org>)
> escribi=C3=B3:
>
>> Maria,
>>
>> I couldn't resist trying this myself, as your modifications seemed
>> reasonable.
>>
>> So I did set up a simple test with a b210 connected to my siggen feeding
>> it with a tone of varying power at 2.4102GHz.
>>
>> For the default UHD AGC settings I could confirm that the signal was
>> kept between -10 dBFS and -12 dBFS (20 * log10(|x|) over a pretty wide
>> input power range.
>> This was using GR 3.8 and UHD 4.0.
>>
>> However, I had to modify the generate flow-graph slightly, as the AGC
>> was enables before the sample-rate was set (maybe double check that, too=
).
>>
>> Afterwards, I used your settings (I did change reg 0x129 to 0x11 (1dB
>> +-), though).
>> Also those settings worked as expected and the signal was nicely kept
>> between -2 dBFS and -4 dBFS.
>>
>> Attached is a picture of the flow-graph I used for testing. Maybe you
>> could also start by testing with a sine wave to verifying that your
>> values get applied properly.
>>
>> Cheers,
>> Julian
>>
>> On 3/22/21 6:21 PM, Maria Mu=C3=B1oz wrote:
>> > Hi Julian,
>> >
>> > Sure.
>> >
>> > I am receiving a QPSK through the radio and plotting it in a QT graph
>> > (see grc.png)
>> > If I have AGC disable, I get what is shown in "test_without_agc.png",
>> > then if I enable it, I see what is on "test_with_agc.png" where
>> > "Quadrature" is always center more or less in 0.25 which might fit wit=
h
>> > the values given by default (inner high threshold =3D -12dBFS, inner l=
ow
>> > threshold =3D -10 dBFS).
>> >
>> > If I change the ad9361_device.cpp (attached) from line 1085, by
>> changing
>> > registers 0x101, 0x120 and 0x129 with values 0x02, 0x04 and 0x16
>> > respectively to move between -2dbFS and -4 dBFS,  I see the same
>> > waveform that I have in "test_with_agc.png" (I expect it to be around
>> 0.7)
>> >
>> > Kind regards,
>> >
>> > Maria
>> >
>> > El lun, 22 mar 2021 a las 17:45, Julian Arnold (<julian@elitecoding.or=
g
>> > <mailto:julian@elitecoding.org>>) escribi=C3=B3:
>> >
>> >     Maria,
>> >
>> >     would you mind sharing your patch? Otherwise, it=E2=80=99s hard to=
 tell what
>> >     exactly is going on.
>> >
>> >     Cheers,
>> >     Julian
>> >
>> >>     Am 22.03.2021 um 16:24 schrieb Maria Mu=C3=B1oz <mamuki92@gmail.c=
om
>> >>     <mailto:mamuki92@gmail.com>>:
>> >>
>> >>     =EF=BB=BF
>> >>     Hi Julian,
>> >>
>> >>     I re-open this topic to ask a question about the configuration of
>> >>     the ad9361 registers in GNUradio/RFNoC
>> >>
>> >>     As I understand, when AGC is enabled in slow mode, there are 4
>> >>     configurable thresholds (inner low, inner high, outer low, and
>> >>     outer high) and also 4 configurable steps to reach the zone
>> >>     between the inner thresholds.
>> >>
>> >>     I have found the configuration of these registers
>> >>     in /uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
>> >>     and changed their values there. Then, I have recompiled uhd (make
>> >>     & make install) but, when I re-run my graph I see no change in my
>> >>     waveform (it seem to stay in the same limits as the default
>> >>     configuration).
>> >>
>> >>     Am I missing any other step that I have to done to configure thes=
e
>> >>     parameters?
>> >>
>> >>     Kind Regards,
>> >>
>> >>     Maria
>> >>
>> >>     El vie, 12 mar 2021 a las 10:04, Maria Mu=C3=B1oz (<mamuki92@gmai=
l.com
>> >>     <mailto:mamuki92@gmail.com>>) escribi=C3=B3:
>> >>
>> >>         Ok Julian, I will check the tree node and try to modify the
>> >>         properties. Thanks again for the help!
>> >>
>> >>         Kind Regards,
>> >>         Maria
>> >>
>> >>         El jue, 11 mar 2021 a las 18:26, Julian Arnold
>> >>         (<julian@elitecoding.org <mailto:julian@elitecoding.org>>)
>> >>         escribi=C3=B3:
>> >>
>> >>             Maria,
>> >>
>> >>             >> /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
>> >>             >>
>> >>             >> but I have received the following errorThat's why I
>> >>             gave the reference ([1]) showing the correct syntax ;)
>> >>             Anyways, glad it worked out for you!
>> >>             You might consider filing a bug issue against gr-ettus on
>> >>             github.
>> >>
>> >>             >> By the way, I have read that there are several modes
>> >>             for AGC
>> >>             >> (fast,slow,hybrid..) I was wondering which type is
>> >>             implemented by
>> >>             >> default and if it is possible to change AGC mode in th=
e
>> >>             flowgraph.
>> >>             Those modes were mainly dictated by the AD9361. Default
>> >>             should be
>> >>             "slow". The "hybrid" mode is not implemented as far as I
>> know.
>> >>             Which mode you want ("slow" / "fast") depends on the
>> >>             signal you want to
>> >>             receive. For burst-mode digital signals you might want to
>> >>             switch to the
>> >>             "fast" mode.
>> >>             However, I think this is only possible by directly writin=
g
>> >>             to the corresponding property-tree node. Again, I'm not
>> >>             sure about
>> >>             UHD-4.0/gr-ettus though.
>> >>
>> >>             Cheers,
>> >>             Julian
>> >>
>> >>
>> >>             On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wrote:
>> >>             > Hi Julian,
>> >>             >
>> >>             > I have initially changed the python generated for my
>> >>             flowgraph with this
>> >>             > line:
>> >>             >
>> >>             > /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
>> >>             >
>> >>             > but I have received the following error:
>> >>             >
>> >>             > T/raceback (most recent call last):
>> >>             >    File "constellation_soft_decoder.py", line 301, in
>> >>             <module>
>> >>             >      main()
>> >>             >    File "constellation_soft_decoder.py", line 277, in
>> main
>> >>             >      tb =3D top_block_cls()
>> >>             >    File "constellation_soft_decoder.py", line 166, in
>> >>             __init__
>> >>             >      self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, 0)
>> >>             > AttributeError: 'rfnoc_rx_radio_sptr' object has no
>> >>             attribute 'set_rx_agc'/
>> >>             >
>> >>             > But rfnoc_radio_impl.cc defines it:
>> >>             >
>> >>             > /void rfnoc_rx_radio_impl::set_agc(const bool enable,
>> >>             const size_t chan)
>> >>             > {
>> >>             >      return d_radio_ref->set_rx_agc(enable, chan);
>> >>             > }/
>> >>             >
>> >>             > Searching the rfnoc_rx_radio_sptr with grep takes me to
>> >>             "swig" files. I
>> >>             > have looked at ettus_swig.py and seen that the command
>> >>             name is set_agc
>> >>             > instead of set_rx_agc:
>> >>             >
>> >>             > /def set_agc(self, enable: "bool const", chan: "size_t
>> >>             const") -> "void":
>> >>             >          r"""
>> >>             >          set_agc(rfnoc_rx_radio self, bool const enable=
,
>> >>             size_t const chan)
>> >>             >          Enable/disable the AGC for this RX radio (if
>> >>             available)
>> >>             >          """
>> >>             >          return _ettus_swig.rfnoc_rx_radio_set_agc(self=
,
>> >>             enable, chan)/
>> >>             > /
>> >>             > /
>> >>             > Changing this in the flowgraph.py seems to work!! Thank=
s
>> >>             for the help on
>> >>             > this! I put this information here just in case someone
>> >>             is stuck in the
>> >>             > same point.
>> >>             >
>> >>             > By the way, I have read that there are several modes fo=
r
>> >>             AGC
>> >>             > (fast,slow,hybrid..) I was wondering which type is
>> >>             implemented by
>> >>             > default and if it is possible to change AGC mode in the
>> >>             flowgraph.
>> >>             >
>> >>             > Kind Regards,
>> >>             >
>> >>             > Maria
>> >>             >
>> >>             >
>> >>             > El mi=C3=A9, 10 mar 2021 a las 12:03, Maria Mu=C3=B1oz
>> >>             (<mamuki92@gmail.com <mailto:mamuki92@gmail.com>
>> >>             > <mailto:mamuki92@gmail.com
>> >>             <mailto:mamuki92@gmail.com>>>) escribi=C3=B3:
>> >>             >
>> >>             >     Hi Jules,
>> >>             >
>> >>             >     Thank you, I will try it and let you know as soon a=
s
>> >>             possible.
>> >>             >
>> >>             >     By the way, I have checked the python
>> >>             generated using the UHD USRP
>> >>             >     SOURCE block (instead of the RFNoC radio block) wit=
h
>> >>             AGC active and
>> >>             >     it generates the set of AGC fine. So, as you said,
>> >>             it is fixed in
>> >>             >     gr-uhd but it might still be a bug in gr-ettus.
>> >>             >
>> >>             >     Thanks again for the help!
>> >>             >
>> >>             >     Kind Regards,
>> >>             >
>> >>             >     Maria
>> >>             >
>> >>             >     El mi=C3=A9, 10 mar 2021 a las 11:25, Julian Arnold
>> >>             >     (<julian@elitecoding.org
>> >>             <mailto:julian@elitecoding.org>
>> >>             <mailto:julian@elitecoding.org
>> >>             <mailto:julian@elitecoding.org>>>) escribi=C3=B3:
>> >>             >
>> >>             >         Maria,
>> >>             >
>> >>             >          >> So, if I understand correctly, I have to pu=
t
>> >>             there also
>> >>             >         something like
>> >>             >          >>
>> >>             "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't
>> it?
>> >>             >
>> >>             >         Exactly! Take a look at [1] for the correct
>> syntax.
>> >>             >
>> >>             >         [1]
>> >>             >
>> >>
>> https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc=
4971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
>> >>             >
>> >>             >         Let me know if that worked out for you.
>> >>             >
>> >>             >         Cheers,
>> >>             >         Julian
>> >>             >
>> >>             >
>> >>             >         On 3/10/21 9:59 AM, Maria Mu=C3=B1oz wrote:
>> >>             >          > Hi Julian,
>> >>             >          >
>> >>             >          > Thanks for the quick answer.
>> >>             >          >
>> >>             >          > I think you might be right about the possibl=
e
>> >>             bug turning on
>> >>             >         the AGC
>> >>             >          > from GRC. I have checked the flow graph
>> >>             generated and there's no
>> >>             >          > set_rx_agc enable option (I checked the c++
>> >>             definition block
>> >>             >         where this
>> >>             >          > option did appear but I hadn't look at the
>> >>             python generated).
>> >>             >          >
>> >>             >          > The lines related to the radio in my
>> >>             flowgraph are these:
>> >>             >          >
>> >>             >          > /self.ettus_rfnoc_rx_radio_0 =3D
>> >>             ettus.rfnoc_rx_radio(
>> >>             >          >              self.rfnoc_graph,
>> >>             >          >              uhd.device_addr(''),
>> >>             >          >              -1,
>> >>             >          >              -1)
>> >>             >          >
>> >>             self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
>> >>             >          >
>> >>             self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
>> >>             >          >
>> >>             self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)
>> >>             >          >
>> >>             self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
>> >>             >          >
>> >>             self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)
>> >>             >          >
>> >>             self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)
>> >>             >          >
>> >>             self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)/
>> >>             >          >
>> >>             >          > So, if I understand correctly, I have to put
>> >>             there also
>> >>             >         something like
>> >>             >          >
>> >>             "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't
>> it?
>> >>             >          >
>> >>             >          > Kind Regards,
>> >>             >          >
>> >>             >          > Maria
>> >>             >          >
>> >>             >          > El mi=C3=A9, 10 mar 2021 a las 9:16, Julian =
Arnold
>> >>             >         (<julian@elitecoding.org
>> >>             <mailto:julian@elitecoding.org>
>> >>             <mailto:julian@elitecoding.org
>> >>             <mailto:julian@elitecoding.org>>
>> >>             >          > <mailto:julian@elitecoding.org
>> >>             <mailto:julian@elitecoding.org>
>> >>             >         <mailto:julian@elitecoding.org
>> >>             <mailto:julian@elitecoding.org>>>>) escribi=C3=B3:
>> >>             >          >
>> >>             >          >     Maria,
>> >>             >          >
>> >>             >          >     I might not be the right person to answe=
r
>> >>             this, as my
>> >>             >         experience with
>> >>             >          >     UHD 4.0 is relatively limited at the
>> moment.
>> >>             >          >
>> >>             >          >     However, I cant tell you that the AGC on
>> >>             B2x0 devices is
>> >>             >         controlled via
>> >>             >          >     software (using set_rx_agc()). There is
>> >>             no need to
>> >>             >         directly modify the
>> >>             >          >     state of any pins of the FPGA.
>> >>             >          >
>> >>             >          >     I vaguely remember that there was a bug
>> >>             in an earlier
>> >>             >         version of gr-uhd
>> >>             >          >     (somewhere in 3.7) that made it difficul=
t
>> >>             to turn on the
>> >>             >         AGC using GRC.
>> >>             >          >     That particular one is fixed in gr-uhd.
>> >>             Not sure about
>> >>             >         gr-ettus, though.
>> >>             >          >
>> >>             >          >     Maybe try using set_rx_agc() manually in
>> >>             you flow-graph
>> >>             >         (*.py) and see
>> >>             >          >     if that helps.
>> >>             >          >
>> >>             >          >     Cheers,
>> >>             >          >     Julian
>> >>             >          >
>> >>             >          >     On 3/9/21 5:11 PM, Maria Mu=C3=B1oz via
>> >>             USRP-users wrote:
>> >>             >          >      > Hi all,
>> >>             >          >      >
>> >>             >          >      > I was wondering if it is possible to
>> >>             enable AGC from
>> >>             >         the RFNoC radio
>> >>             >          >      > block in GNURadio. I use UHD 4.0
>> >>             version and GNURadio
>> >>             >         3.8 with
>> >>             >          >     gr-ettus.
>> >>             >          >      >
>> >>             >          >      > I see that the RFNoC Rx radio block
>> has an
>> >>             >         enable/disable/default
>> >>             >          >     AGC
>> >>             >          >      > option in the GNURadio block which I
>> >>             assume calls the
>> >>             >         UHD function
>> >>             >          >      > "set_rx_agc"
>> >>             >          >      >
>> >>             >          >
>> >>             >
>> >>              (
>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abda=
b1f6c3775a9071b15c9805f866486
>> )
>> >>             >          >      >
>> >>             >          >      > I have also checked on the FPGA side
>> >>             that there is a
>> >>             >         pin from
>> >>             >          >     FPGA to
>> >>             >          >      > AD9361 called XCVR_ENA_AGC which is
>> >>             set always to 1 on
>> >>             >         the top
>> >>             >          >     level of
>> >>             >          >      > the FPGA image (see attached file
>> >>             "e320.v", line 872).
>> >>             >         This pin,
>> >>             >          >      > according to
>> >>             >          >      >
>> >>             >          >
>> >>             >
>> >>
>> https://www.analog.com/media/en/technical-documentation/data-sheets/AD93=
61.pdf
>> >>             >          >
>> >>             >          >      > is the "Manual Control Input for
>> >>             Automatic Gain
>> >>             >         Control (AGC)".
>> >>             >          >      > Must be this pin set to 0 to have AGC
>> >>             working?
>> >>             >          >      > If not, how can I get AGC working?
>> >>             I've made some tests
>> >>             >          >      > enabling/disabling this option but I
>> >>             do not see any
>> >>             >         changes
>> >>             >          >     between the
>> >>             >          >      > waveforms received.
>> >>             >          >      >
>> >>             >          >      > Any help would be appreciated.
>> >>             >          >      >
>> >>             >          >      > Kind Regards,
>> >>             >          >      >
>> >>             >          >      > Maria
>> >>             >          >      >
>> >>             >          >      >
>> >>             _______________________________________________
>> >>             >          >      > USRP-users mailing list
>> >>             >          >      > USRP-users@lists.ettus.com
>> >>             <mailto:USRP-users@lists.ettus.com>
>> >>             >         <mailto:USRP-users@lists.ettus.com
>> >>             <mailto:USRP-users@lists.ettus.com>>
>> >>             >         <mailto:USRP-users@lists.ettus.com
>> >>             <mailto:USRP-users@lists.ettus.com>
>> >>             >         <mailto:USRP-users@lists.ettus.com
>> >>             <mailto:USRP-users@lists.ettus.com>>>
>> >>             >          >      >
>> >>             >
>> >>
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>> >>             >          >      >
>> >>             >          >
>> >>             >
>> >>
>>
>

--0000000000005b6e1d05be448507
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgSnVsaWFuLDxkaXY+PGJyPjwvZGl2PjxkaXY+SSBoYXZlIHRoZSBj
aGFuY2UgdG8gdGVzdCB0aGUgQUdDIHdpdGggYSBCMjEwIGFuZCBwZXJmb3JtIHRoZSBzYW1lIGdy
YXBoIGFzIHlvdSBzZW5kIG1lIGJ1dCBJIGFtIHVuYWJsZSB0byBzZWUgd2hhdCB5b3Ugc2F3IHNv
IEkgdGhpbmsgSSYjMzk7bSBtaXNzaW5nIHNvbWV0aGluZy48L2Rpdj48ZGl2PkkgYWxzbyBoYXZl
IFVIRCA0LjAgYW5kIEdOVVJhZGlvIDMuOCAoaW5zdGFsbGVkIGJ5IHNvdXJjZSkuwqA8L2Rpdj48
ZGl2Pjxicj48L2Rpdj48ZGl2PlRoZSBzdGVwcyBJIHRha2UgYXJlIHRoZXNlOjwvZGl2PjxkaXY+
PHVsPjxsaT5GaXJzdCwgSSBjaGFuZ2UgdGhlIGFkOTM2MV9kZXZpY2UuY3BwIHRoYXQgaXMgaW4g
dWhkIHJlcG9zaXRvcnkgaW7CoDxpPjxmb250IGNvbG9yPSIjMDAwMDAwIj4vdWhkL2hvc3QvbGli
L3VzcnAvY29tbW9uL2FkOTM2MV9kcml2ZXIvYWQ5MzYxX2RldmljZS5jcHAsIHJlZ2lzdGVycyAw
eDEwMSwgMHgxMjAsIDB4MTI5LCAweDEyMyBhbmQgMHgxMkEuPC9mb250PjwvaT48L2xpPjxsaT48
Zm9udCBjb2xvcj0iIzAwMDAwMCI+VGhlbiwgSSBkbyAmcXVvdDttYWtlJnF1b3Q7IGFuZCAmcXVv
dDttYWtlIGluc3RhbGwmcXVvdDsgdG8gY29tcGlsZSB0aGUgY2hhbmdlcyBpbiBidWlsZC1ob3N0
IGZvbGRlci7CoDwvZm9udD48L2xpPjxsaT48Zm9udCBjb2xvcj0iIzAwMDAwMCI+QWZ0ZXLCoHRo
YXQsIEkgZ2VuZXJhdGUgdGhlIHB5dGhvbiBzY3JpcHQgZm9yIHRoZSBHUkMgZmxvdyBncmFwaCBh
bmQgbW92ZSB0aGUgJnF1b3Q7c2V0X2FnYyZxdW90OyBjb21tYW5kIGFmdGVyIHRoZSAmcXVvdDtz
ZXRfcmF0ZSZxdW90OyBvbmUuwqA8L2ZvbnQ+PC9saT48bGk+PGZvbnQgY29sb3I9IiMwMDAwMDAi
PkZpbmFsbHksIEkgcnVuIHRoZSBweXRob24uPC9mb250PjwvbGk+PC91bD48ZGl2Pjxmb250IGNv
bG9yPSIjMDAwMDAwIj5JIGNhbiYjMzk7dCBzZWUgbXkgd2F2ZWZvcm0gYmV0d2VlbiB0aGUgdmFs
dWVzIEkgc2V0LiBJcyB0aGVyZSBzb21ldGhpbmcgd3Jvbmcgd2l0aCB0aG9zZSBzdGVwcz8gRGlk
IHlvdSBkbyBhbnl0aGluZyBlbHNlPzwvZm9udD48L2Rpdj48L2Rpdj48ZGl2Pjxmb250IGNvbG9y
PSIjMDAwMDAwIj48YnI+PC9mb250PjwvZGl2PjxkaXY+PGZvbnQgY29sb3I9IiMwMDAwMDAiPktp
bmfCoFJlZ2FyZHMsPC9mb250PjwvZGl2PjxkaXY+PGZvbnQgY29sb3I9IiMwMDAwMDAiPjxicj48
L2ZvbnQ+PC9kaXY+PGRpdj48Zm9udCBjb2xvcj0iIzAwMDAwMCI+TWFyaWE8L2ZvbnQ+PC9kaXY+
PGRpdj48Zm9udCBjb2xvcj0iIzAwMDAwMCI+PGJyPjwvZm9udD48L2Rpdj48ZGl2PjxpPjxmb250
IGNvbG9yPSIjMDAwMDAwIj48YnI+PC9mb250PjwvaT48L2Rpdj48L2Rpdj48YnI+PGRpdiBjbGFz
cz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5FbCBtYXIs
IDIzIG1hciAyMDIxIGEgbGFzIDk6MjMsIE1hcmlhIE11w7FveiAoJmx0OzxhIGhyZWY9Im1haWx0
bzptYW11a2k5MkBnbWFpbC5jb20iPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7KSBlc2NyaWJp
w7M6PGJyPjwvZGl2PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdp
bjowcHggMHB4IDBweCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0
KTtwYWRkaW5nLWxlZnQ6MWV4Ij48ZGl2IGRpcj0ibHRyIj5IaSBKdWxpYW4sPGRpdj48YnI+PC9k
aXY+PGRpdj5UaGFua3MgZm9yIHRoZSBjaGVja2luZyE8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2
PkkgaGF2ZSBhbHNvIGNoZWNrZWQgbXkgZ3JhcGggYW5kIHNhbXBfcmF0ZSBpcyBzZXR0aW5nIGZp
cnN0LCBzbyBJJiMzOTtsbCB0cnkgdG8gdGVzdCBpdCB3aXRoIGEgc2luZSB3YXZlZm9ybSBhcyB5
b3Ugc3VnZ2VzdGVkIGFuZCBzZWUgaWYgdGhhdCB3b3Jrcy4gSWYgbm90LCBtYXliZSBpcyBhbiBS
Rk5vQy9nci1ldHR1cyBwcm9ibGVtLiBJJiMzOTtsbCBwdXQgYW4gaXNzdWUgaW4gdGhlIGdyLWV0
dHVzIHJlcG9zaXRvcnkgaW4gdGhhdCBjYXNlLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+VGhh
bmtzIGFnYWluIGZvciB5b3VyIGhlbHAuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5LaW5kIFJl
Z2FyZHMsPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5NYXJpYS48L2Rpdj48L2Rpdj48YnI+PGRp
diBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5F
bCBtYXIsIDIzIG1hciAyMDIxIGEgbGFzIDA6MzYsIEp1bGlhbiBBcm5vbGQgKCZsdDs8YSBocmVm
PSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBl
bGl0ZWNvZGluZy5vcmc8L2E+Jmd0OykgZXNjcmliacOzOjxicj48L2Rpdj48YmxvY2txdW90ZSBj
bGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVy
LWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+TWFyaWEs
PGJyPg0KPGJyPg0KSSBjb3VsZG4mIzM5O3QgcmVzaXN0IHRyeWluZyB0aGlzIG15c2VsZiwgYXMg
eW91ciBtb2RpZmljYXRpb25zIHNlZW1lZCA8YnI+DQpyZWFzb25hYmxlLjxicj4NCjxicj4NClNv
IEkgZGlkIHNldCB1cCBhIHNpbXBsZSB0ZXN0IHdpdGggYSBiMjEwIGNvbm5lY3RlZCB0byBteSBz
aWdnZW4gZmVlZGluZyA8YnI+DQppdCB3aXRoIGEgdG9uZSBvZiB2YXJ5aW5nIHBvd2VyIGF0IDIu
NDEwMkdIei48YnI+DQo8YnI+DQpGb3IgdGhlIGRlZmF1bHQgVUhEIEFHQyBzZXR0aW5ncyBJIGNv
dWxkIGNvbmZpcm0gdGhhdCB0aGUgc2lnbmFsIHdhcyA8YnI+DQprZXB0IGJldHdlZW4gLTEwIGRC
RlMgYW5kIC0xMiBkQkZTICgyMCAqIGxvZzEwKHx4fCkgb3ZlciBhIHByZXR0eSB3aWRlIDxicj4N
CmlucHV0IHBvd2VyIHJhbmdlLjxicj4NClRoaXMgd2FzIHVzaW5nIEdSIDMuOCBhbmQgVUhEIDQu
MC48YnI+DQo8YnI+DQpIb3dldmVyLCBJIGhhZCB0byBtb2RpZnkgdGhlIGdlbmVyYXRlIGZsb3ct
Z3JhcGggc2xpZ2h0bHksIGFzIHRoZSBBR0MgPGJyPg0Kd2FzIGVuYWJsZXMgYmVmb3JlIHRoZSBz
YW1wbGUtcmF0ZSB3YXMgc2V0IChtYXliZSBkb3VibGUgY2hlY2sgdGhhdCwgdG9vKS48YnI+DQo8
YnI+DQpBZnRlcndhcmRzLCBJIHVzZWQgeW91ciBzZXR0aW5ncyAoSSBkaWQgY2hhbmdlIHJlZyAw
eDEyOSB0byAweDExICgxZEIgPGJyPg0KKy0pLCB0aG91Z2gpLjxicj4NCkFsc28gdGhvc2Ugc2V0
dGluZ3Mgd29ya2VkIGFzIGV4cGVjdGVkIGFuZCB0aGUgc2lnbmFsIHdhcyBuaWNlbHkga2VwdCA8
YnI+DQpiZXR3ZWVuIC0yIGRCRlMgYW5kIC00IGRCRlMuPGJyPg0KPGJyPg0KQXR0YWNoZWQgaXMg
YSBwaWN0dXJlIG9mIHRoZSBmbG93LWdyYXBoIEkgdXNlZCBmb3IgdGVzdGluZy4gTWF5YmUgeW91
IDxicj4NCmNvdWxkIGFsc28gc3RhcnQgYnkgdGVzdGluZyB3aXRoIGEgc2luZSB3YXZlIHRvIHZl
cmlmeWluZyB0aGF0IHlvdXIgPGJyPg0KdmFsdWVzIGdldCBhcHBsaWVkIHByb3Blcmx5Ljxicj4N
Cjxicj4NCkNoZWVycyw8YnI+DQpKdWxpYW48YnI+DQo8YnI+DQpPbiAzLzIyLzIxIDY6MjEgUE0s
IE1hcmlhIE11w7FveiB3cm90ZTo8YnI+DQomZ3Q7IEhpIEp1bGlhbiw8YnI+DQomZ3Q7IDxicj4N
CiZndDsgU3VyZS48YnI+DQomZ3Q7IDxicj4NCiZndDsgSSBhbSByZWNlaXZpbmcgYSBRUFNLIHRo
cm91Z2ggdGhlIHJhZGlvIGFuZCBwbG90dGluZ8KgaXQgaW4gYSBRVCBncmFwaCA8YnI+DQomZ3Q7
IChzZWUgZ3JjLnBuZyk8YnI+DQomZ3Q7IElmIEkgaGF2ZSBBR0MgZGlzYWJsZSwgSSBnZXQgd2hh
dCBpcyBzaG93biBpbiAmcXVvdDt0ZXN0X3dpdGhvdXRfYWdjLnBuZyZxdW90OywgPGJyPg0KJmd0
OyB0aGVuIGlmIEkgZW5hYmxlIGl0LCBJIHNlZSB3aGF0IGlzIG9uICZxdW90O3Rlc3Rfd2l0aF9h
Z2MucG5nJnF1b3Q7IHdoZXJlIDxicj4NCiZndDsgJnF1b3Q7UXVhZHJhdHVyZSZxdW90OyBpcyBh
bHdheXMgY2VudGVyIG1vcmUgb3IgbGVzcyBpbiAwLjI1IHdoaWNoIG1pZ2h0IGZpdCB3aXRoIDxi
cj4NCiZndDsgdGhlIHZhbHVlcyBnaXZlbiBieSBkZWZhdWx0IChpbm5lciBoaWdoIHRocmVzaG9s
ZCA9IC0xMmRCRlMsIGlubmVyIGxvdyA8YnI+DQomZ3Q7IHRocmVzaG9sZCA9IC0xMCBkQkZTKS48
YnI+DQomZ3Q7IDxicj4NCiZndDsgSWYgSSBjaGFuZ2UgdGhlIGFkOTM2MV9kZXZpY2UuY3BwIChh
dHRhY2hlZCkgZnJvbSBsaW5lIDEwODUsIGJ5IGNoYW5naW5nIDxicj4NCiZndDsgcmVnaXN0ZXJz
IDB4MTAxLCAweDEyMCBhbmQgMHgxMjkgd2l0aCB2YWx1ZXMgMHgwMiwgMHgwNCBhbmQgMHgxNiA8
YnI+DQomZ3Q7IHJlc3BlY3RpdmVseSB0byBtb3ZlIGJldHdlZW4gLTJkYkZTIGFuZCAtNCBkQkZT
LMKgIEkgc2VlIHRoZSBzYW1lIDxicj4NCiZndDsgd2F2ZWZvcm0gdGhhdCBJIGhhdmUgaW4gJnF1
b3Q7dGVzdF93aXRoX2FnYy5wbmcmcXVvdDsgKEkgZXhwZWN0IGl0IHRvIGJlIGFyb3VuZCAwLjcp
PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IEtpbmQgcmVnYXJkcyw8YnI+DQomZ3Q7IDxicj4NCiZndDsg
TWFyaWE8YnI+DQomZ3Q7IDxicj4NCiZndDsgRWwgbHVuLCAyMiBtYXIgMjAyMSBhIGxhcyAxNzo0
NSwgSnVsaWFuIEFybm9sZCAoJmx0OzxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4gPGJyPg0KJmd0
OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJn
ZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OykgZXNjcmliacOz
Ojxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgTWFyaWEsPGJyPg0KJmd0OyA8YnI+DQomZ3Q7
wqAgwqAgwqB3b3VsZCB5b3UgbWluZCBzaGFyaW5nIHlvdXIgcGF0Y2g/IE90aGVyd2lzZSwgaXTi
gJlzIGhhcmQgdG8gdGVsbCB3aGF0PGJyPg0KJmd0O8KgIMKgIMKgZXhhY3RseSBpcyBnb2luZyBv
bi48YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoENoZWVycyw8YnI+DQomZ3Q7wqAgwqAgwqBK
dWxpYW48YnI+DQomZ3Q7IDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBBbSAyMi4wMy4yMDIxIHVtIDE2
OjI0IHNjaHJpZWIgTWFyaWEgTXXDsW96ICZsdDs8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21h
aWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPjxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20i
IHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDs6PGJyPg0KJmd0
OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg77u/PGJyPg0KJmd0OyZndDvCoCDCoCDCoEhpIEp1
bGlhbiw8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqBJIHJlLW9wZW4gdGhpcyB0
b3BpYyB0byBhc2sgYSBxdWVzdGlvbiBhYm91dCB0aGUgY29uZmlndXJhdGlvbiBvZjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqB0aGUgYWQ5MzYxIHJlZ2lzdGVycyBpbiBHTlVyYWRpby9SRk5vQzxicj4N
CiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoEFzIEkgdW5kZXJzdGFuZCwgd2hlbiBBR0Mg
aXMgZW5hYmxlZMKgaW4gc2xvdyBtb2RlLCB0aGVyZSBhcmUgNDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqBjb25maWd1cmFibGUgdGhyZXNob2xkcyAoaW5uZXIgbG93LCBpbm5lciBoaWdoLCBvdXRlcsKg
bG93LCBhbmQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgb3V0ZXLCoGhpZ2gpIGFuZCBhbHNvIDQgY29u
ZmlndXJhYmxlIHN0ZXBzIHRvIHJlYWNoIHRoZSB6b25lPGJyPg0KJmd0OyZndDvCoCDCoCDCoGJl
dHdlZW7CoHRoZSBpbm5lciB0aHJlc2hvbGRzLjxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoEkgaGF2ZSBmb3VuZCB0aGUgY29uZmlndXJhdGlvbiBvZiB0aGVzZSByZWdpc3RlcnM8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgaW7CoC91aGQvaG9zdC9saWIvdXNycC9jb21tb24vYWQ5MzYx
X2RyaXZlci9hZDkzNjFfZGV2aWNlLmNwcDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBhbmTCoGNoYW5n
ZWQgdGhlaXIgdmFsdWVzIHRoZXJlLiBUaGVuLCBJIGhhdmUgcmVjb21waWxlZCB1aGQgKG1ha2U8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmFtcDsgbWFrZSBpbnN0YWxsKSBidXQsIHdoZW4gSSByZS1y
dW4gbXkgZ3JhcGggSSBzZWUgbm8gY2hhbmdlIGluIG15PGJyPg0KJmd0OyZndDvCoCDCoCDCoHdh
dmVmb3JtIChpdCBzZWVtIHRvIHN0YXkgaW4gdGhlIHNhbWUgbGltaXRzIGFzIHRoZSBkZWZhdWx0
PGJyPg0KJmd0OyZndDvCoCDCoCDCoGNvbmZpZ3VyYXRpb24pLjxicj4NCiZndDsmZ3Q7PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoEFtIEkgbWlzc2luZ8KgYW55wqBvdGhlcsKgc3RlcCB0aGF0IEkgaGF2
ZSB0byBkb25lwqB0byBjb25maWd1cmUgdGhlc2U8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgcGFyYW1l
dGVycz88YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqBLaW5kIFJlZ2FyZHMsPGJy
Pg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgTWFyaWE8YnI+DQomZ3Q7Jmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqBFbCB2aWUsIDEyIG1hciAyMDIxIGEgbGFzIDEwOjA0LCBNYXJpYSBN
dcOxb3ogKCZsdDs8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5t
YW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7Jmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBPayBKdWxpYW4sIEkgd2lsbCBjaGVjayB0aGUgdHJl
ZSBub2RlIGFuZCB0cnkgdG8gbW9kaWZ5IHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBw
cm9wZXJ0aWVzLiBUaGFua3MgYWdhaW4gZm9yIHRoZSBoZWxwITxicj4NCiZndDsmZ3Q7PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoEtpbmQgUmVnYXJkcyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgTWFyaWE8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBFbCBq
dWUsIDExIG1hciAyMDIxIGEgbGFzIDE4OjI2LCBKdWxpYW4gQXJub2xkPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmci
IHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Oyk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgZXNjcmliacOzOjxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoE1hcmlhLDxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDsmZ3Q7IC9zZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAuc2V0X3J4X2FnYyhGYWxzZSwg
MCkvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IGJ1dCBJIGhhdmUgcmVjZWl2ZWQgdGhlIGZv
bGxvd2luZyBlcnJvclRoYXQmIzM5O3Mgd2h5IEk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgZ2F2ZSB0aGUgcmVmZXJlbmNlIChbMV0pIHNob3dpbmcgdGhlIGNvcnJlY3Qgc3ludGF4
IDspPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEFueXdheXMsIGdsYWQgaXQgd29y
a2VkIG91dCBmb3IgeW91ITxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBZb3UgbWln
aHQgY29uc2lkZXIgZmlsaW5nIGEgYnVnIGlzc3VlIGFnYWluc3QgZ3ItZXR0dXMgb248YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZ2l0aHViLjxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IEJ5IHRoZSB3YXksIEkgaGF2ZSByZWFk
IHRoYXQgdGhlcmUgYXJlIHNldmVyYWwgbW9kZXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgZm9yIEFHQzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyAo
ZmFzdCxzbG93LGh5YnJpZC4uKSBJIHdhcyB3b25kZXJpbmcgd2hpY2ggdHlwZSBpczxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBpbXBsZW1lbnRlZCBieTxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyBkZWZhdWx0IGFuZCBpZiBpdCBpcyBwb3NzaWJsZSB0
byBjaGFuZ2UgQUdDIG1vZGUgaW4gdGhlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oGZsb3dncmFwaC48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgVGhvc2UgbW9kZXMg
d2VyZSBtYWlubHkgZGljdGF0ZWQgYnkgdGhlIEFEOTM2MS4gRGVmYXVsdDxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqBzaG91bGQgYmU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJnF1b3Q7c2xvdyZxdW90Oy4gVGhlICZxdW90O2h5YnJpZCZxdW90OyBtb2RlIGlzIG5v
dCBpbXBsZW1lbnRlZCBhcyBmYXIgYXMgSSBrbm93Ljxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBXaGljaCBtb2RlIHlvdSB3YW50ICgmcXVvdDtzbG93JnF1b3Q7IC8gJnF1b3Q7ZmFz
dCZxdW90OykgZGVwZW5kcyBvbiB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
c2lnbmFsIHlvdSB3YW50IHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHJlY2Vp
dmUuIEZvciBidXJzdC1tb2RlIGRpZ2l0YWwgc2lnbmFscyB5b3UgbWlnaHQgd2FudCB0bzxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzd2l0Y2ggdG8gdGhlPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZxdW90O2Zhc3QmcXVvdDsgbW9kZS48YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgSG93ZXZlciwgSSB0aGluayB0aGlzIGlzIG9ubHkgcG9zc2libGUg
YnkgZGlyZWN0bHkgd3JpdGluZzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0byB0
aGUgY29ycmVzcG9uZGluZyBwcm9wZXJ0eS10cmVlIG5vZGUuIEFnYWluLCBJJiMzOTttIG5vdDxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzdXJlIGFib3V0PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoFVIRC00LjAvZ3ItZXR0dXMgdGhvdWdoLjxicj4NCiZndDsmZ3Q7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoENoZWVycyw8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgSnVsaWFuPGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBPbiAzLzExLzIxIDU6MjYgUE0sIE1hcmlhIE11
w7FveiB3cm90ZTo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBIaSBKdWxp
YW4sPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBJIGhhdmUgaW5pdGlhbGx5IGNoYW5nZWQgdGhlIHB5dGhv
biBnZW5lcmF0ZWQgZm9yIG15PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZsb3dn
cmFwaCB3aXRoIHRoaXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBsaW5l
Ojxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDsgL3NlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfcnhf
YWdjKEZhbHNlLCAwKS88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IGJ1dCBJIGhhdmUgcmVjZWl2ZWQgdGhl
IGZvbGxvd2luZyBlcnJvcjo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IFQvcmFjZWJhY2sgKG1vc3QgcmVj
ZW50IGNhbGwgbGFzdCk6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCBGaWxlICZxdW90O2NvbnN0ZWxsYXRpb25fc29mdF9kZWNvZGVyLnB5JnF1b3Q7LCBsaW5lIDMw
MSwgaW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21vZHVsZSZndDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIG1haW4oKTxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgRmlsZSAmcXVvdDtjb25zdGVsbGF0
aW9uX3NvZnRfZGVjb2Rlci5weSZxdW90OywgbGluZSAyNzcsIGluIG1haW48YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIHRiID0gdG9wX2Jsb2NrX2NscygpPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCBGaWxlICZxdW90O2NvbnN0
ZWxsYXRpb25fc29mdF9kZWNvZGVyLnB5JnF1b3Q7LCBsaW5lIDE2NiwgaW48YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgX19pbml0X188YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfcnhfYWdj
KFRydWUsIDApPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgQXR0cmlidXRl
RXJyb3I6ICYjMzk7cmZub2NfcnhfcmFkaW9fc3B0ciYjMzk7IG9iamVjdCBoYXMgbm88YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgYXR0cmlidXRlICYjMzk7c2V0X3J4X2FnYyYjMzk7
Lzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDsgQnV0IHJmbm9jX3JhZGlvX2ltcGwuY2MgZGVmaW5lcyBpdDo8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7IC92b2lkIHJmbm9jX3J4X3JhZGlvX2ltcGw6OnNldF9hZ2MoY29u
c3QgYm9vbCBlbmFibGUsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGNvbnN0IHNp
emVfdCBjaGFuKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IHs8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIHJldHVybiBkX3JhZGlvX3Jl
Zi0mZ3Q7c2V0X3J4X2FnYyhlbmFibGUsIGNoYW4pOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7IH0vPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBTZWFyY2hpbmcgdGhlIHJmbm9jX3J4
X3JhZGlvX3NwdHIgd2l0aCBncmVwIHRha2VzIG1lIHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZxdW90O3N3aWcmcXVvdDsgZmlsZXMuIEk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0OyBoYXZlIGxvb2tlZCBhdCBldHR1c19zd2lnLnB5IGFuZCBzZWVuIHRo
YXQgdGhlIGNvbW1hbmQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgbmFtZSBpcyBz
ZXRfYWdjPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgaW5zdGVhZCBvZiBz
ZXRfcnhfYWdjOjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgL2RlZiBzZXRfYWdjKHNlbGYsIGVuYWJsZTog
JnF1b3Q7Ym9vbCBjb25zdCZxdW90OywgY2hhbjogJnF1b3Q7c2l6ZV90PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoGNvbnN0JnF1b3Q7KSAtJmd0OyAmcXVvdDt2b2lkJnF1b3Q7Ojxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgciZxdW90
OyZxdW90OyZxdW90Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgc2V0X2FnYyhyZm5vY19yeF9yYWRpbyBzZWxmLCBib29sIGNvbnN0IGVuYWJsZSw8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgc2l6ZV90IGNvbnN0IGNoYW4pPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCBFbmFibGUvZGlz
YWJsZSB0aGUgQUdDIGZvciB0aGlzIFJYIHJhZGlvIChpZjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqBhdmFpbGFibGUpPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmcXVvdDsmcXVvdDsmcXVvdDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIHJldHVybiBfZXR0dXNfc3dpZy5yZm5vY19y
eF9yYWRpb19zZXRfYWdjKHNlbGYsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGVu
YWJsZSwgY2hhbikvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgLzxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IC88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0OyBDaGFuZ2luZyB0aGlzIGluIHRoZSBmbG93Z3JhcGgucHkgc2VlbXMg
dG8gd29yayEhIFRoYW5rczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBmb3IgdGhl
IGhlbHAgb248YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyB0aGlzISBJIHB1
dCB0aGlzIGluZm9ybWF0aW9uIGhlcmUganVzdCBpbiBjYXNlIHNvbWVvbmU8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgaXMgc3R1Y2sgaW4gdGhlPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDsgc2FtZSBwb2ludC48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IEJ5IHRoZSB3
YXksIEkgaGF2ZSByZWFkIHRoYXQgdGhlcmUgYXJlIHNldmVyYWwgbW9kZXMgZm9yPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEFHQzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7IChmYXN0LHNsb3csaHlicmlkLi4pIEkgd2FzIHdvbmRlcmluZyB3aGljaCB0eXBl
IGlzPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGltcGxlbWVudGVkIGJ5PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgZGVmYXVsdCBhbmQgaWYgaXQgaXMgcG9z
c2libGUgdG8gY2hhbmdlIEFHQyBtb2RlIGluIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBmbG93Z3JhcGguPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBLaW5kIFJlZ2FyZHMsPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0OyBNYXJpYTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0OyBFbCBtacOpLCAxMCBtYXIgMjAyMSBhIGxhcyAxMjowMywgTWFy
aWEgTXXDsW96PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCgmbHQ7PGEgaHJlZj0i
bWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWls
LmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0
YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5
MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1h
bXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4m
Z3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBIaSBKdWxl
cyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBUaGFuayB5b3UsIEkgd2lsbCB0cnkgaXQgYW5k
wqBsZXQgeW91IGtub3cgYXMgc29vbiBhczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqBwb3NzaWJsZS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBCeSB0aGUgd2F5LCBJIGhhdmUg
Y2hlY2tlZCB0aGUgcHl0aG9uPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGdlbmVy
YXRlZMKgdXNpbmcgdGhlIFVIRCBVU1JQPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoFNPVVJDRSBibG9jayAoaW5zdGVhZCBvZiB0aGUgUkZOb0MgcmFkaW8gYmxv
Y2spIHdpdGg8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgQUdDIGFjdGl2ZSBhbmQ8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgaXQgZ2VuZXJhdGVz
IHRoZSBzZXQgb2YgQUdDIGZpbmUuIFNvLCBhcyB5b3Ugc2FpZCw8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgaXQgaXMgZml4ZWQgaW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgZ3ItdWhkIGJ1dCBpdCBtaWdodCBzdGlsbCBiZSBhIGJ1ZyBpbiBn
ci1ldHR1cy48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBUaGFua3MgYWdhaW4gZm9yIHRoZSBo
ZWxwITxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoEtpbmQgUmVnYXJkcyw8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqBNYXJpYTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoEVsIG1pw6ksIDEw
IG1hciAyMDIxIGEgbGFzIDExOjI1LCBKdWxpYW4gQXJub2xkPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5r
Ij5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0
YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDspIGVz
Y3JpYmnDszo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBNYXJpYSw8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDsgU28sIGlmIEkgdW5kZXJzdGFuZCBjb3Jy
ZWN0bHksIEkgaGF2ZSB0byBwdXQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdGhl
cmUgYWxzbzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqBzb21ldGhpbmcgbGlrZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJnF1
b3Q7c2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9yeF9hZ2MoZW5hYmxlLDApJnF1b3Q7
IGlzbiYjMzk7dCBpdD88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBFeGFjdGx5ISBU
YWtlIGEgbG9vayBhdCBbMV0gZm9yIHRoZSBjb3JyZWN0IHN5bnRheC48YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqBbMV08YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqA8YSBocmVmPSJodHRwczovL2dpdGh1
Yi5jb20vRXR0dXNSZXNlYXJjaC9nci1ldHR1cy9ibG9iLzEwMzhjNGNlNTEzNWEyODAzYjUzNTU0
ZmM0OTcxZmUzZGU3NDdkOWEvaW5jbHVkZS9ldHR1cy9yZm5vY19yeF9yYWRpby5oI0w5NyIgcmVs
PSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVz
ZWFyY2gvZ3ItZXR0dXMvYmxvYi8xMDM4YzRjZTUxMzVhMjgwM2I1MzU1NGZjNDk3MWZlM2RlNzQ3
ZDlhL2luY2x1ZGUvZXR0dXMvcmZub2NfcnhfcmFkaW8uaCNMOTc8L2E+PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgTGV0IG1lIGtub3cgaWYgdGhhdCB3b3JrZWQgb3V0IGZvciB5b3Uu
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgQ2hlZXJzLDxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBKdWxpYW48YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoE9u
IDMvMTAvMjEgOTo1OSBBTSwgTWFyaWEgTXXDsW96IHdyb3RlOjxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBIaSBKdWxpYW4sPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IFRoYW5rcyBm
b3IgdGhlIHF1aWNrIGFuc3dlci48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsgSSB0aGluayB5b3UgbWlnaHQgYmUgcmlnaHQgYWJvdXQgdGhl
IHBvc3NpYmxlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGJ1ZyB0dXJuaW5nIG9u
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRoZSBB
R0M8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsgZnJvbSBHUkMuIEkgaGF2ZSBjaGVja2VkIHRoZSBmbG93IGdyYXBoPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoGdlbmVyYXRlZCBhbmQgdGhlcmUmIzM5O3Mgbm88YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgc2V0X3J4X2Fn
YyBlbmFibGUgb3B0aW9uIChJIGNoZWNrZWQgdGhlIGMrKzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqBkZWZpbml0aW9uIGJsb2NrPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoHdoZXJlIHRoaXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgb3B0aW9uIGRpZCBhcHBlYXIgYnV0IEkg
aGFkbiYjMzk7dCBsb29rIGF0IHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBw
eXRob24gZ2VuZXJhdGVkKS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsgVGhlIGxpbmVzIHJlbGF0ZWQgdG8gdGhlIHJhZGlvIGluIG15PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZsb3dncmFwaCBhcmUgdGhlc2U6PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IC9zZWxm
LmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAgPTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqBldHR1cy5yZm5vY19yeF9yYWRpbyg8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCBzZWxmLnJmbm9jX2dy
YXBoLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIHVoZC5kZXZpY2VfYWRkcigmIzM5OyYjMzk7KSw8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCAtMSw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCAtMSk8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDC
oDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3Jh
ZGlvXzAuc2V0X3JhdGUoc2FtcF9yYXRlKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfYW50ZW5uYSgm
IzM5O1JYMiYjMzk7LCAwKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfZnJlcXVlbmN5KGNmLCAwKTxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8Kg
IMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNf
cmZub2NfcnhfcmFkaW9fMC5zZXRfZ2FpbihnYWluLCAwKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRf
YmFuZHdpZHRoKHNhbXBfcmF0ZSwgMCk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAuc2V0X2RjX29mZnNldChU
cnVlLCAwKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0O8KgIMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNl
bGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfaXFfYmFsYW5jZShUcnVlLCAwKS88YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgU28sIGlm
IEkgdW5kZXJzdGFuZCBjb3JyZWN0bHksIEkgaGF2ZSB0byBwdXQ8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgdGhlcmUgYWxzbzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqBzb21ldGhpbmcgbGlrZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmcXVvdDtzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAuc2V0X3J4X2FnYyhl
bmFibGUsMCkmcXVvdDsgaXNuJiMzOTt0IGl0Pzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IE1hcmlhPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEVsIG1pw6ks
IDEwIG1hciAyMDIxIGEgbGFzIDk6MTYsIEp1bGlhbiBBcm5vbGQ8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgKCZsdDs8YSBocmVmPSJtYWlsdG86anVs
aWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0
PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdl
dD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rp
bmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5r
Ij5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0
YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7
KSBlc2NyaWJpw7M6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7wqAgwqAgwqBNYXJpYSw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEkgbWlnaHQgbm90IGJlIHRoZSByaWdo
dCBwZXJzb24gdG8gYW5zd2VyPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRoaXMs
IGFzIG15PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oGV4cGVyaWVuY2Ugd2l0aDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgVUhEIDQuMCBpcyByZWxhdGl2ZWx5IGxpbWl0ZWQgYXQg
dGhlIG1vbWVudC48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDvCoCDCoCDCoEhvd2V2ZXIsIEkgY2FudCB0ZWxsIHlvdSB0aGF0IHRoZSBBR0Mg
b248YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgQjJ4MCBkZXZpY2VzIGlzPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNvbnRyb2xsZWQg
dmlhPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqBzb2Z0d2FyZSAodXNpbmcgc2V0X3J4X2FnYygpKS4gVGhlcmUgaXM8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgbm8gbmVlZCB0bzxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBkaXJlY3RseSBtb2RpZnkgdGhlPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAg
wqBzdGF0ZSBvZiBhbnkgcGlucyBvZiB0aGUgRlBHQS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEkgdmFndWVseSByZW1lbWJl
ciB0aGF0IHRoZXJlIHdhcyBhIGJ1Zzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBp
biBhbiBlYXJsaWVyPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoHZlcnNpb24gb2YgZ3ItdWhkPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAoc29tZXdoZXJlIGluIDMuNykgdGhhdCBt
YWRlIGl0IGRpZmZpY3VsdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0byB0dXJu
IG9uIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqBBR0MgdXNpbmcgR1JDLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgVGhhdCBwYXJ0aWN1bGFyIG9uZSBpcyBmaXhlZCBpbiBn
ci11aGQuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoE5vdCBzdXJlIGFib3V0PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGdyLWV0dHVz
LCB0aG91Z2guPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7wqAgwqAgwqBNYXliZSB0cnkgdXNpbmcgc2V0X3J4X2FnYygpIG1hbnVhbGx5IGlu
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHlvdSBmbG93LWdyYXBoPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCgqLnB5KSBhbmQgc2Vl
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
wqAgwqAgwqBpZiB0aGF0IGhlbHBzLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgQ2hlZXJzLDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgSnVsaWFuPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAg
wqBPbiAzLzkvMjEgNToxMSBQTSwgTWFyaWEgTXXDsW96IHZpYTxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqBVU1JQLXVzZXJzIHdyb3RlOjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgSGkgYWxsLDxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKg
IMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDvCoCDCoCDCoCAmZ3Q7IEkgd2FzIHdvbmRlcmluZyBpZiBpdCBpcyBwb3NzaWJsZSB0
bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBlbmFibGUgQUdDIGZyb208YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgdGhlIFJGTm9DIHJh
ZGlvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqAgJmd0OyBibG9jayBpbiBHTlVSYWRpby4gSSB1c2UgVUhEIDQuMDxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB2ZXJzaW9uIGFuZCBHTlVSYWRpbzxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAzLjggd2l0aDxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKg
Z3ItZXR0dXMuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgSSBzZWUgdGhhdCB0aGUgUkZOb0Mg
UnggcmFkaW8gYmxvY2sgaGFzIGFuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoGVuYWJsZS9kaXNhYmxlL2RlZmF1bHQ8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEFHQzxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKg
ICZndDsgb3B0aW9uIGluIHRoZSBHTlVSYWRpbyBibG9jayB3aGljaCBJPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoGFzc3VtZSBjYWxscyB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgVUhEIGZ1bmN0aW9uPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyAm
cXVvdDtzZXRfcnhfYWdjJnF1b3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgwqAoPGEgaHJlZj0iaHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL2NsYXNzdWhk
XzFfMXVzcnBfMV8xbXVsdGlfX3VzcnAuaHRtbCNhYmRhYjFmNmMzNzc1YTkwNzFiMTVjOTgwNWY4
NjY0ODYiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vZmlsZXMuZXR0
dXMuY29tL21hbnVhbC9jbGFzc3VoZF8xXzF1c3JwXzFfMW11bHRpX191c3JwLmh0bWwjYWJkYWIx
ZjZjMzc3NWE5MDcxYjE1Yzk4MDVmODY2NDg2PC9hPik8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0
OyBJIGhhdmUgYWxzbyBjaGVja2VkIG9uIHRoZSBGUEdBIHNpZGU8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgdGhhdCB0aGVyZSBpcyBhPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHBpbiBmcm9tPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBGUEdBIHRvPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAg
Jmd0OyBBRDkzNjEgY2FsbGVkwqBYQ1ZSX0VOQV9BR0Mgd2hpY2ggaXM8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgc2V0IGFsd2F5cyB0byAxIG9uPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRoZSB0b3A8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoGxldmVsIG9mPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAg
wqAgwqAgJmd0OyB0aGUgRlBHQSBpbWFnZSAoc2VlIGF0dGFjaGVkIGZpbGU8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJnF1b3Q7ZTMyMC52JnF1b3Q7LCBsaW5lIDg3MikuPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoFRoaXMgcGluLDxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8Kg
IMKgIMKgICZndDsgYWNjb3JkaW5nIHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoDxhIGhy
ZWY9Imh0dHBzOi8vd3d3LmFuYWxvZy5jb20vbWVkaWEvZW4vdGVjaG5pY2FsLWRvY3VtZW50YXRp
b24vZGF0YS1zaGVldHMvQUQ5MzYxLnBkZiIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFu
ayI+aHR0cHM6Ly93d3cuYW5hbG9nLmNvbS9tZWRpYS9lbi90ZWNobmljYWwtZG9jdW1lbnRhdGlv
bi9kYXRhLXNoZWV0cy9BRDkzNjEucGRmPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgaXMgdGhlICZxdW90O01h
bnVhbCBDb250cm9sIElucHV0IGZvcjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBB
dXRvbWF0aWMgR2Fpbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqBDb250cm9sIChBR0MpJnF1b3Q7Ljxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgTXVzdCBiZSB0aGlzIHBp
biBzZXQgdG8gMCB0byBoYXZlIEFHQzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB3
b3JraW5nPzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0O8KgIMKgIMKgICZndDsgSWbCoG5vdCwgaG93IGNhbiBJwqBnZXQgQUdDIHdvcmtpbmc/
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEkmIzM5O3ZlIG1hZGUgc29tZSB0ZXN0
czxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
O8KgIMKgIMKgICZndDsgZW5hYmxpbmcvZGlzYWJsaW5nIHRoaXMgb3B0aW9uIGJ1dCBJPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGRvIG5vdCBzZWUgYW55PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNoYW5nZXM8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoGJldHdl
ZW4gdGhlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7wqAgwqAgwqAgJmd0OyB3YXZlZm9ybXMgcmVjZWl2ZWQuPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKg
IMKgICZndDsgQW55IGhlbHAgd291bGQgYmUgYXBwcmVjaWF0ZWQuPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKg
IMKgICZndDsgS2luZCBSZWdhcmRzLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IE1hcmlhPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAg
wqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAm
Z3Q7IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyA8YSBocmVmPSJtYWlsdG86
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0i
X2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0
YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2Js
YW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4m
Z3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZs
dDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJn
ZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208L2E+Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoDxhIGhyZWY9Imh0
dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0
dHVzLmNvbSIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cDovL2xpc3RzLmV0
dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tPC9hPjxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8Kg
IMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZn
dDsmZ3Q7PGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0K
--0000000000005b6e1d05be448507--

--===============5431353469052025927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5431353469052025927==--

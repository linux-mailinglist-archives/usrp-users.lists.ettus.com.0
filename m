Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5636345995
	for <lists+usrp-users@lfdr.de>; Tue, 23 Mar 2021 09:24:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B6098383B2C
	for <lists+usrp-users@lfdr.de>; Tue, 23 Mar 2021 04:24:32 -0400 (EDT)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 8250A383B1E
	for <usrp-users@lists.ettus.com>; Tue, 23 Mar 2021 04:23:39 -0400 (EDT)
Received: by mail-ej1-f45.google.com with SMTP id r12so25630177ejr.5
        for <usrp-users@lists.ettus.com>; Tue, 23 Mar 2021 01:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vUYxXcooRaZYcbLdhGMVFJGJ6/YGk2E9XDbZ6yxoXNM=;
        b=I8Uy61DqqmQZjfKTvW94SlUXG5r0ORH87JVFkw3wkCVkstzrLR6eUPMV6fzrbYg/Kp
         ktxN+gEaguNa8UiRrAg6gmzy28/Okbs17zgmdd8gkF9JKEjkhhCCd9gy1tpzBmaJzVuD
         vao4YFH6aHiJ52deKiwZmORx5iztcmqvqj2S4IRUbfU9IE4o0c4ObQ5l56RwKELvonAY
         Qs7iAovQ1HxajK0AOufu+6od6yv7NzaPaDwzNdXHYxr/tQlba8qlQA9GPzSoMLQwMXPE
         1G/G+kV2wLIpUq44eA7oyId4UPSsGpJDXgnVE5Nbtckzj/SalETsQ9iAs5S4rImMvV+O
         X9lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vUYxXcooRaZYcbLdhGMVFJGJ6/YGk2E9XDbZ6yxoXNM=;
        b=WRwDE2cE7jAAWDZw+iky4CxOzgkYQuaDUzdQG+L95T2Q+V66oH9FGzY3E4vfoq+al4
         2eI6U11HSXlKp88Mj9fU6uTDcmX69558WFgcUUMUSy03oKDfNR34LnzA7+A7WWeftbwJ
         6Dzv6Mmq4CUxqDVZsJPmi5iDtIx+t8VsjonTyBEKlOCI1letyEK3WgAWs4HNJwCVzuBX
         19vJPutETUNBqwyy05mOXlDpUOTRb5upQVThbzbXOeoMnvZr0qkQuvIyHHKTmStv/k4m
         fhV46lMesF+ZSwVmF1ZV+q1Sha8z25V3s8bc0VtyDUiFiOfO4VNruhJdPmnCBWwjuDqj
         Bt2Q==
X-Gm-Message-State: AOAM533E3rQ2M/oOxbIOgIhGCX5HFnakLtK90Bn3/htTf75g1LuaAvVJ
	pKfGbPIJZp88nWUJlVqwanrUu90sXiqTzRI/3Z7vjE1rWNI=
X-Google-Smtp-Source: ABdhPJyQS/nAYuLSi6PxMcI48/HeEpLyxaDl/U7kZHZdgYgzK6bM5fke6dvGfssmjw80rNczhHQ0Z7N25rXiYUD8OwU=
X-Received: by 2002:a17:906:e16:: with SMTP id l22mr3725494eji.173.1616487818426;
 Tue, 23 Mar 2021 01:23:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQXTUpAt93YdLhTvSpZ-4FLpOn09Seu=kQTP5OK8DyHoTQ@mail.gmail.com>
 <8CD94AFC-A834-4BB8-BA99-9A86BCED2A47@elitecoding.org> <CAG16vQWeLecqv-yho3SOM6bQw8PcOd6ORvLhBBnRquQcc9SiRA@mail.gmail.com>
 <3f0ebbf0-5a0e-f1c1-51b1-5ad7f9b84f84@elitecoding.org>
In-Reply-To: <3f0ebbf0-5a0e-f1c1-51b1-5ad7f9b84f84@elitecoding.org>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Tue, 23 Mar 2021 09:23:26 +0100
Message-ID: <CAG16vQXp0y21WU58BLcFi=c1HdDrOKqoMT=qRHLcjkvsQsmo6w@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Message-ID-Hash: PMC6WQUELCT7OD6X5D6QXDXIXZPNAMLW
X-Message-ID-Hash: PMC6WQUELCT7OD6X5D6QXDXIXZPNAMLW
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Enable AGC in USRP E320 with RFNoC using GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/PMC6WQUELCT7OD6X5D6QXDXIXZPNAMLW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8507891307891663282=="

--===============8507891307891663282==
Content-Type: multipart/alternative; boundary="000000000000337aa205be2fe600"

--000000000000337aa205be2fe600
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julian,

Thanks for the checking!

I have also checked my graph and samp_rate is setting first, so I'll try to
test it with a sine waveform as you suggested and see if that works. If
not, maybe is an RFNoC/gr-ettus problem. I'll put an issue in the gr-ettus
repository in that case.

Thanks again for your help.

Kind Regards,

Maria.

El mar, 23 mar 2021 a las 0:36, Julian Arnold (<julian@elitecoding.org>)
escribi=C3=B3:

> Maria,
>
> I couldn't resist trying this myself, as your modifications seemed
> reasonable.
>
> So I did set up a simple test with a b210 connected to my siggen feeding
> it with a tone of varying power at 2.4102GHz.
>
> For the default UHD AGC settings I could confirm that the signal was
> kept between -10 dBFS and -12 dBFS (20 * log10(|x|) over a pretty wide
> input power range.
> This was using GR 3.8 and UHD 4.0.
>
> However, I had to modify the generate flow-graph slightly, as the AGC
> was enables before the sample-rate was set (maybe double check that, too)=
.
>
> Afterwards, I used your settings (I did change reg 0x129 to 0x11 (1dB
> +-), though).
> Also those settings worked as expected and the signal was nicely kept
> between -2 dBFS and -4 dBFS.
>
> Attached is a picture of the flow-graph I used for testing. Maybe you
> could also start by testing with a sine wave to verifying that your
> values get applied properly.
>
> Cheers,
> Julian
>
> On 3/22/21 6:21 PM, Maria Mu=C3=B1oz wrote:
> > Hi Julian,
> >
> > Sure.
> >
> > I am receiving a QPSK through the radio and plotting it in a QT graph
> > (see grc.png)
> > If I have AGC disable, I get what is shown in "test_without_agc.png",
> > then if I enable it, I see what is on "test_with_agc.png" where
> > "Quadrature" is always center more or less in 0.25 which might fit with
> > the values given by default (inner high threshold =3D -12dBFS, inner lo=
w
> > threshold =3D -10 dBFS).
> >
> > If I change the ad9361_device.cpp (attached) from line 1085, by changin=
g
> > registers 0x101, 0x120 and 0x129 with values 0x02, 0x04 and 0x16
> > respectively to move between -2dbFS and -4 dBFS,  I see the same
> > waveform that I have in "test_with_agc.png" (I expect it to be around
> 0.7)
> >
> > Kind regards,
> >
> > Maria
> >
> > El lun, 22 mar 2021 a las 17:45, Julian Arnold (<julian@elitecoding.org
> > <mailto:julian@elitecoding.org>>) escribi=C3=B3:
> >
> >     Maria,
> >
> >     would you mind sharing your patch? Otherwise, it=E2=80=99s hard to =
tell what
> >     exactly is going on.
> >
> >     Cheers,
> >     Julian
> >
> >>     Am 22.03.2021 um 16:24 schrieb Maria Mu=C3=B1oz <mamuki92@gmail.co=
m
> >>     <mailto:mamuki92@gmail.com>>:
> >>
> >>     =EF=BB=BF
> >>     Hi Julian,
> >>
> >>     I re-open this topic to ask a question about the configuration of
> >>     the ad9361 registers in GNUradio/RFNoC
> >>
> >>     As I understand, when AGC is enabled in slow mode, there are 4
> >>     configurable thresholds (inner low, inner high, outer low, and
> >>     outer high) and also 4 configurable steps to reach the zone
> >>     between the inner thresholds.
> >>
> >>     I have found the configuration of these registers
> >>     in /uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >>     and changed their values there. Then, I have recompiled uhd (make
> >>     & make install) but, when I re-run my graph I see no change in my
> >>     waveform (it seem to stay in the same limits as the default
> >>     configuration).
> >>
> >>     Am I missing any other step that I have to done to configure these
> >>     parameters?
> >>
> >>     Kind Regards,
> >>
> >>     Maria
> >>
> >>     El vie, 12 mar 2021 a las 10:04, Maria Mu=C3=B1oz (<mamuki92@gmail=
.com
> >>     <mailto:mamuki92@gmail.com>>) escribi=C3=B3:
> >>
> >>         Ok Julian, I will check the tree node and try to modify the
> >>         properties. Thanks again for the help!
> >>
> >>         Kind Regards,
> >>         Maria
> >>
> >>         El jue, 11 mar 2021 a las 18:26, Julian Arnold
> >>         (<julian@elitecoding.org <mailto:julian@elitecoding.org>>)
> >>         escribi=C3=B3:
> >>
> >>             Maria,
> >>
> >>             >> /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
> >>             >>
> >>             >> but I have received the following errorThat's why I
> >>             gave the reference ([1]) showing the correct syntax ;)
> >>             Anyways, glad it worked out for you!
> >>             You might consider filing a bug issue against gr-ettus on
> >>             github.
> >>
> >>             >> By the way, I have read that there are several modes
> >>             for AGC
> >>             >> (fast,slow,hybrid..) I was wondering which type is
> >>             implemented by
> >>             >> default and if it is possible to change AGC mode in the
> >>             flowgraph.
> >>             Those modes were mainly dictated by the AD9361. Default
> >>             should be
> >>             "slow". The "hybrid" mode is not implemented as far as I
> know.
> >>             Which mode you want ("slow" / "fast") depends on the
> >>             signal you want to
> >>             receive. For burst-mode digital signals you might want to
> >>             switch to the
> >>             "fast" mode.
> >>             However, I think this is only possible by directly writing
> >>             to the corresponding property-tree node. Again, I'm not
> >>             sure about
> >>             UHD-4.0/gr-ettus though.
> >>
> >>             Cheers,
> >>             Julian
> >>
> >>
> >>             On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wrote:
> >>             > Hi Julian,
> >>             >
> >>             > I have initially changed the python generated for my
> >>             flowgraph with this
> >>             > line:
> >>             >
> >>             > /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
> >>             >
> >>             > but I have received the following error:
> >>             >
> >>             > T/raceback (most recent call last):
> >>             >    File "constellation_soft_decoder.py", line 301, in
> >>             <module>
> >>             >      main()
> >>             >    File "constellation_soft_decoder.py", line 277, in ma=
in
> >>             >      tb =3D top_block_cls()
> >>             >    File "constellation_soft_decoder.py", line 166, in
> >>             __init__
> >>             >      self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, 0)
> >>             > AttributeError: 'rfnoc_rx_radio_sptr' object has no
> >>             attribute 'set_rx_agc'/
> >>             >
> >>             > But rfnoc_radio_impl.cc defines it:
> >>             >
> >>             > /void rfnoc_rx_radio_impl::set_agc(const bool enable,
> >>             const size_t chan)
> >>             > {
> >>             >      return d_radio_ref->set_rx_agc(enable, chan);
> >>             > }/
> >>             >
> >>             > Searching the rfnoc_rx_radio_sptr with grep takes me to
> >>             "swig" files. I
> >>             > have looked at ettus_swig.py and seen that the command
> >>             name is set_agc
> >>             > instead of set_rx_agc:
> >>             >
> >>             > /def set_agc(self, enable: "bool const", chan: "size_t
> >>             const") -> "void":
> >>             >          r"""
> >>             >          set_agc(rfnoc_rx_radio self, bool const enable,
> >>             size_t const chan)
> >>             >          Enable/disable the AGC for this RX radio (if
> >>             available)
> >>             >          """
> >>             >          return _ettus_swig.rfnoc_rx_radio_set_agc(self,
> >>             enable, chan)/
> >>             > /
> >>             > /
> >>             > Changing this in the flowgraph.py seems to work!! Thanks
> >>             for the help on
> >>             > this! I put this information here just in case someone
> >>             is stuck in the
> >>             > same point.
> >>             >
> >>             > By the way, I have read that there are several modes for
> >>             AGC
> >>             > (fast,slow,hybrid..) I was wondering which type is
> >>             implemented by
> >>             > default and if it is possible to change AGC mode in the
> >>             flowgraph.
> >>             >
> >>             > Kind Regards,
> >>             >
> >>             > Maria
> >>             >
> >>             >
> >>             > El mi=C3=A9, 10 mar 2021 a las 12:03, Maria Mu=C3=B1oz
> >>             (<mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >>             > <mailto:mamuki92@gmail.com
> >>             <mailto:mamuki92@gmail.com>>>) escribi=C3=B3:
> >>             >
> >>             >     Hi Jules,
> >>             >
> >>             >     Thank you, I will try it and let you know as soon as
> >>             possible.
> >>             >
> >>             >     By the way, I have checked the python
> >>             generated using the UHD USRP
> >>             >     SOURCE block (instead of the RFNoC radio block) with
> >>             AGC active and
> >>             >     it generates the set of AGC fine. So, as you said,
> >>             it is fixed in
> >>             >     gr-uhd but it might still be a bug in gr-ettus.
> >>             >
> >>             >     Thanks again for the help!
> >>             >
> >>             >     Kind Regards,
> >>             >
> >>             >     Maria
> >>             >
> >>             >     El mi=C3=A9, 10 mar 2021 a las 11:25, Julian Arnold
> >>             >     (<julian@elitecoding.org
> >>             <mailto:julian@elitecoding.org>
> >>             <mailto:julian@elitecoding.org
> >>             <mailto:julian@elitecoding.org>>>) escribi=C3=B3:
> >>             >
> >>             >         Maria,
> >>             >
> >>             >          >> So, if I understand correctly, I have to put
> >>             there also
> >>             >         something like
> >>             >          >>
> >>             "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't i=
t?
> >>             >
> >>             >         Exactly! Take a look at [1] for the correct
> syntax.
> >>             >
> >>             >         [1]
> >>             >
> >>
> https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc4=
971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
> >>             >
> >>             >         Let me know if that worked out for you.
> >>             >
> >>             >         Cheers,
> >>             >         Julian
> >>             >
> >>             >
> >>             >         On 3/10/21 9:59 AM, Maria Mu=C3=B1oz wrote:
> >>             >          > Hi Julian,
> >>             >          >
> >>             >          > Thanks for the quick answer.
> >>             >          >
> >>             >          > I think you might be right about the possible
> >>             bug turning on
> >>             >         the AGC
> >>             >          > from GRC. I have checked the flow graph
> >>             generated and there's no
> >>             >          > set_rx_agc enable option (I checked the c++
> >>             definition block
> >>             >         where this
> >>             >          > option did appear but I hadn't look at the
> >>             python generated).
> >>             >          >
> >>             >          > The lines related to the radio in my
> >>             flowgraph are these:
> >>             >          >
> >>             >          > /self.ettus_rfnoc_rx_radio_0 =3D
> >>             ettus.rfnoc_rx_radio(
> >>             >          >              self.rfnoc_graph,
> >>             >          >              uhd.device_addr(''),
> >>             >          >              -1,
> >>             >          >              -1)
> >>             >          >
> >>             self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
> >>             >          >
> >>             self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
> >>             >          >
> >>             self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)
> >>             >          >
> >>             self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
> >>             >          >
> >>             self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)
> >>             >          >
> >>             self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)
> >>             >          >
> >>             self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)/
> >>             >          >
> >>             >          > So, if I understand correctly, I have to put
> >>             there also
> >>             >         something like
> >>             >          >
> >>             "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't i=
t?
> >>             >          >
> >>             >          > Kind Regards,
> >>             >          >
> >>             >          > Maria
> >>             >          >
> >>             >          > El mi=C3=A9, 10 mar 2021 a las 9:16, Julian A=
rnold
> >>             >         (<julian@elitecoding.org
> >>             <mailto:julian@elitecoding.org>
> >>             <mailto:julian@elitecoding.org
> >>             <mailto:julian@elitecoding.org>>
> >>             >          > <mailto:julian@elitecoding.org
> >>             <mailto:julian@elitecoding.org>
> >>             >         <mailto:julian@elitecoding.org
> >>             <mailto:julian@elitecoding.org>>>>) escribi=C3=B3:
> >>             >          >
> >>             >          >     Maria,
> >>             >          >
> >>             >          >     I might not be the right person to answer
> >>             this, as my
> >>             >         experience with
> >>             >          >     UHD 4.0 is relatively limited at the
> moment.
> >>             >          >
> >>             >          >     However, I cant tell you that the AGC on
> >>             B2x0 devices is
> >>             >         controlled via
> >>             >          >     software (using set_rx_agc()). There is
> >>             no need to
> >>             >         directly modify the
> >>             >          >     state of any pins of the FPGA.
> >>             >          >
> >>             >          >     I vaguely remember that there was a bug
> >>             in an earlier
> >>             >         version of gr-uhd
> >>             >          >     (somewhere in 3.7) that made it difficult
> >>             to turn on the
> >>             >         AGC using GRC.
> >>             >          >     That particular one is fixed in gr-uhd.
> >>             Not sure about
> >>             >         gr-ettus, though.
> >>             >          >
> >>             >          >     Maybe try using set_rx_agc() manually in
> >>             you flow-graph
> >>             >         (*.py) and see
> >>             >          >     if that helps.
> >>             >          >
> >>             >          >     Cheers,
> >>             >          >     Julian
> >>             >          >
> >>             >          >     On 3/9/21 5:11 PM, Maria Mu=C3=B1oz via
> >>             USRP-users wrote:
> >>             >          >      > Hi all,
> >>             >          >      >
> >>             >          >      > I was wondering if it is possible to
> >>             enable AGC from
> >>             >         the RFNoC radio
> >>             >          >      > block in GNURadio. I use UHD 4.0
> >>             version and GNURadio
> >>             >         3.8 with
> >>             >          >     gr-ettus.
> >>             >          >      >
> >>             >          >      > I see that the RFNoC Rx radio block ha=
s
> an
> >>             >         enable/disable/default
> >>             >          >     AGC
> >>             >          >      > option in the GNURadio block which I
> >>             assume calls the
> >>             >         UHD function
> >>             >          >      > "set_rx_agc"
> >>             >          >      >
> >>             >          >
> >>             >
> >>              (
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abdab=
1f6c3775a9071b15c9805f866486
> )
> >>             >          >      >
> >>             >          >      > I have also checked on the FPGA side
> >>             that there is a
> >>             >         pin from
> >>             >          >     FPGA to
> >>             >          >      > AD9361 called XCVR_ENA_AGC which is
> >>             set always to 1 on
> >>             >         the top
> >>             >          >     level of
> >>             >          >      > the FPGA image (see attached file
> >>             "e320.v", line 872).
> >>             >         This pin,
> >>             >          >      > according to
> >>             >          >      >
> >>             >          >
> >>             >
> >>
> https://www.analog.com/media/en/technical-documentation/data-sheets/AD936=
1.pdf
> >>             >          >
> >>             >          >      > is the "Manual Control Input for
> >>             Automatic Gain
> >>             >         Control (AGC)".
> >>             >          >      > Must be this pin set to 0 to have AGC
> >>             working?
> >>             >          >      > If not, how can I get AGC working?
> >>             I've made some tests
> >>             >          >      > enabling/disabling this option but I
> >>             do not see any
> >>             >         changes
> >>             >          >     between the
> >>             >          >      > waveforms received.
> >>             >          >      >
> >>             >          >      > Any help would be appreciated.
> >>             >          >      >
> >>             >          >      > Kind Regards,
> >>             >          >      >
> >>             >          >      > Maria
> >>             >          >      >
> >>             >          >      >
> >>             _______________________________________________
> >>             >          >      > USRP-users mailing list
> >>             >          >      > USRP-users@lists.ettus.com
> >>             <mailto:USRP-users@lists.ettus.com>
> >>             >         <mailto:USRP-users@lists.ettus.com
> >>             <mailto:USRP-users@lists.ettus.com>>
> >>             >         <mailto:USRP-users@lists.ettus.com
> >>             <mailto:USRP-users@lists.ettus.com>
> >>             >         <mailto:USRP-users@lists.ettus.com
> >>             <mailto:USRP-users@lists.ettus.com>>>
> >>             >          >      >
> >>             >
> >>
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>             >          >      >
> >>             >          >
> >>             >
> >>
>

--000000000000337aa205be2fe600
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgSnVsaWFuLDxkaXY+PGJyPjwvZGl2PjxkaXY+VGhhbmtzIGZvciB0
aGUgY2hlY2tpbmchPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JIGhhdmUgYWxzbyBjaGVja2Vk
IG15IGdyYXBoIGFuZCBzYW1wX3JhdGUgaXMgc2V0dGluZyBmaXJzdCwgc28gSSYjMzk7bGwgdHJ5
IHRvIHRlc3QgaXQgd2l0aCBhIHNpbmUgd2F2ZWZvcm0gYXMgeW91IHN1Z2dlc3RlZCBhbmQgc2Vl
IGlmIHRoYXQgd29ya3MuIElmIG5vdCwgbWF5YmUgaXMgYW4gUkZOb0MvZ3ItZXR0dXMgcHJvYmxl
bS4gSSYjMzk7bGwgcHV0IGFuIGlzc3VlIGluIHRoZSBnci1ldHR1cyByZXBvc2l0b3J5IGluIHRo
YXQgY2FzZS48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PlRoYW5rcyBhZ2FpbiBmb3IgeW91ciBo
ZWxwLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+S2luZCBSZWdhcmRzLDwvZGl2PjxkaXY+PGJy
PjwvZGl2PjxkaXY+TWFyaWEuPC9kaXY+PC9kaXY+PGJyPjxkaXYgY2xhc3M9ImdtYWlsX3F1b3Rl
Ij48ZGl2IGRpcj0ibHRyIiBjbGFzcz0iZ21haWxfYXR0ciI+RWwgbWFyLCAyMyBtYXIgMjAyMSBh
IGxhcyAwOjM2LCBKdWxpYW4gQXJub2xkICgmbHQ7PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmciPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OykgZXNjcmliacOzOjxi
cj48L2Rpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MHB4
IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQsMjA0LDIwNCk7cGFk
ZGluZy1sZWZ0OjFleCI+TWFyaWEsPGJyPg0KPGJyPg0KSSBjb3VsZG4mIzM5O3QgcmVzaXN0IHRy
eWluZyB0aGlzIG15c2VsZiwgYXMgeW91ciBtb2RpZmljYXRpb25zIHNlZW1lZCA8YnI+DQpyZWFz
b25hYmxlLjxicj4NCjxicj4NClNvIEkgZGlkIHNldCB1cCBhIHNpbXBsZSB0ZXN0IHdpdGggYSBi
MjEwIGNvbm5lY3RlZCB0byBteSBzaWdnZW4gZmVlZGluZyA8YnI+DQppdCB3aXRoIGEgdG9uZSBv
ZiB2YXJ5aW5nIHBvd2VyIGF0IDIuNDEwMkdIei48YnI+DQo8YnI+DQpGb3IgdGhlIGRlZmF1bHQg
VUhEIEFHQyBzZXR0aW5ncyBJIGNvdWxkIGNvbmZpcm0gdGhhdCB0aGUgc2lnbmFsIHdhcyA8YnI+
DQprZXB0IGJldHdlZW4gLTEwIGRCRlMgYW5kIC0xMiBkQkZTICgyMCAqIGxvZzEwKHx4fCkgb3Zl
ciBhIHByZXR0eSB3aWRlIDxicj4NCmlucHV0IHBvd2VyIHJhbmdlLjxicj4NClRoaXMgd2FzIHVz
aW5nIEdSIDMuOCBhbmQgVUhEIDQuMC48YnI+DQo8YnI+DQpIb3dldmVyLCBJIGhhZCB0byBtb2Rp
ZnkgdGhlIGdlbmVyYXRlIGZsb3ctZ3JhcGggc2xpZ2h0bHksIGFzIHRoZSBBR0MgPGJyPg0Kd2Fz
IGVuYWJsZXMgYmVmb3JlIHRoZSBzYW1wbGUtcmF0ZSB3YXMgc2V0IChtYXliZSBkb3VibGUgY2hl
Y2sgdGhhdCwgdG9vKS48YnI+DQo8YnI+DQpBZnRlcndhcmRzLCBJIHVzZWQgeW91ciBzZXR0aW5n
cyAoSSBkaWQgY2hhbmdlIHJlZyAweDEyOSB0byAweDExICgxZEIgPGJyPg0KKy0pLCB0aG91Z2gp
Ljxicj4NCkFsc28gdGhvc2Ugc2V0dGluZ3Mgd29ya2VkIGFzIGV4cGVjdGVkIGFuZCB0aGUgc2ln
bmFsIHdhcyBuaWNlbHkga2VwdCA8YnI+DQpiZXR3ZWVuIC0yIGRCRlMgYW5kIC00IGRCRlMuPGJy
Pg0KPGJyPg0KQXR0YWNoZWQgaXMgYSBwaWN0dXJlIG9mIHRoZSBmbG93LWdyYXBoIEkgdXNlZCBm
b3IgdGVzdGluZy4gTWF5YmUgeW91IDxicj4NCmNvdWxkIGFsc28gc3RhcnQgYnkgdGVzdGluZyB3
aXRoIGEgc2luZSB3YXZlIHRvIHZlcmlmeWluZyB0aGF0IHlvdXIgPGJyPg0KdmFsdWVzIGdldCBh
cHBsaWVkIHByb3Blcmx5Ljxicj4NCjxicj4NCkNoZWVycyw8YnI+DQpKdWxpYW48YnI+DQo8YnI+
DQpPbiAzLzIyLzIxIDY6MjEgUE0sIE1hcmlhIE11w7FveiB3cm90ZTo8YnI+DQomZ3Q7IEhpIEp1
bGlhbiw8YnI+DQomZ3Q7IDxicj4NCiZndDsgU3VyZS48YnI+DQomZ3Q7IDxicj4NCiZndDsgSSBh
bSByZWNlaXZpbmcgYSBRUFNLIHRocm91Z2ggdGhlIHJhZGlvIGFuZCBwbG90dGluZ8KgaXQgaW4g
YSBRVCBncmFwaCA8YnI+DQomZ3Q7IChzZWUgZ3JjLnBuZyk8YnI+DQomZ3Q7IElmIEkgaGF2ZSBB
R0MgZGlzYWJsZSwgSSBnZXQgd2hhdCBpcyBzaG93biBpbiAmcXVvdDt0ZXN0X3dpdGhvdXRfYWdj
LnBuZyZxdW90OywgPGJyPg0KJmd0OyB0aGVuIGlmIEkgZW5hYmxlIGl0LCBJIHNlZSB3aGF0IGlz
IG9uICZxdW90O3Rlc3Rfd2l0aF9hZ2MucG5nJnF1b3Q7IHdoZXJlIDxicj4NCiZndDsgJnF1b3Q7
UXVhZHJhdHVyZSZxdW90OyBpcyBhbHdheXMgY2VudGVyIG1vcmUgb3IgbGVzcyBpbiAwLjI1IHdo
aWNoIG1pZ2h0IGZpdCB3aXRoIDxicj4NCiZndDsgdGhlIHZhbHVlcyBnaXZlbiBieSBkZWZhdWx0
IChpbm5lciBoaWdoIHRocmVzaG9sZCA9IC0xMmRCRlMsIGlubmVyIGxvdyA8YnI+DQomZ3Q7IHRo
cmVzaG9sZCA9IC0xMCBkQkZTKS48YnI+DQomZ3Q7IDxicj4NCiZndDsgSWYgSSBjaGFuZ2UgdGhl
IGFkOTM2MV9kZXZpY2UuY3BwIChhdHRhY2hlZCkgZnJvbSBsaW5lIDEwODUsIGJ5IGNoYW5naW5n
IDxicj4NCiZndDsgcmVnaXN0ZXJzIDB4MTAxLCAweDEyMCBhbmQgMHgxMjkgd2l0aCB2YWx1ZXMg
MHgwMiwgMHgwNCBhbmQgMHgxNiA8YnI+DQomZ3Q7IHJlc3BlY3RpdmVseSB0byBtb3ZlIGJldHdl
ZW4gLTJkYkZTIGFuZCAtNCBkQkZTLMKgIEkgc2VlIHRoZSBzYW1lIDxicj4NCiZndDsgd2F2ZWZv
cm0gdGhhdCBJIGhhdmUgaW4gJnF1b3Q7dGVzdF93aXRoX2FnYy5wbmcmcXVvdDsgKEkgZXhwZWN0
IGl0IHRvIGJlIGFyb3VuZCAwLjcpPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IEtpbmQgcmVnYXJkcyw8
YnI+DQomZ3Q7IDxicj4NCiZndDsgTWFyaWE8YnI+DQomZ3Q7IDxicj4NCiZndDsgRWwgbHVuLCAy
MiBtYXIgMjAyMSBhIGxhcyAxNzo0NSwgSnVsaWFuIEFybm9sZCAoJmx0OzxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT4gPGJyPg0KJmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwv
YT4mZ3Q7Jmd0OykgZXNjcmliacOzOjxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgTWFyaWEs
PGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAgwqB3b3VsZCB5b3UgbWluZCBzaGFyaW5nIHlvdXIg
cGF0Y2g/IE90aGVyd2lzZSwgaXTigJlzIGhhcmQgdG8gdGVsbCB3aGF0PGJyPg0KJmd0O8KgIMKg
IMKgZXhhY3RseSBpcyBnb2luZyBvbi48YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoENoZWVy
cyw8YnI+DQomZ3Q7wqAgwqAgwqBKdWxpYW48YnI+DQomZ3Q7IDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqBBbSAyMi4wMy4yMDIxIHVtIDE2OjI0IHNjaHJpZWIgTWFyaWEgTXXDsW96ICZsdDs8YSBocmVm
PSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21h
aWwuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208
L2E+Jmd0OyZndDs6PGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg77u/PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoEhpIEp1bGlhbiw8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqBJIHJlLW9wZW4gdGhpcyB0b3BpYyB0byBhc2sgYSBxdWVzdGlvbiBhYm91dCB0aGUgY29u
ZmlndXJhdGlvbiBvZjxicj4NCiZndDsmZ3Q7wqAgwqAgwqB0aGUgYWQ5MzYxIHJlZ2lzdGVycyBp
biBHTlVyYWRpby9SRk5vQzxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoEFzIEkg
dW5kZXJzdGFuZCwgd2hlbiBBR0MgaXMgZW5hYmxlZMKgaW4gc2xvdyBtb2RlLCB0aGVyZSBhcmUg
NDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBjb25maWd1cmFibGUgdGhyZXNob2xkcyAoaW5uZXIgbG93
LCBpbm5lciBoaWdoLCBvdXRlcsKgbG93LCBhbmQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgb3V0ZXLC
oGhpZ2gpIGFuZCBhbHNvIDQgY29uZmlndXJhYmxlIHN0ZXBzIHRvIHJlYWNoIHRoZSB6b25lPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoGJldHdlZW7CoHRoZSBpbm5lciB0aHJlc2hvbGRzLjxicj4NCiZn
dDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoEkgaGF2ZSBmb3VuZCB0aGUgY29uZmlndXJhdGlv
biBvZiB0aGVzZSByZWdpc3RlcnM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgaW7CoC91aGQvaG9zdC9s
aWIvdXNycC9jb21tb24vYWQ5MzYxX2RyaXZlci9hZDkzNjFfZGV2aWNlLmNwcDxicj4NCiZndDsm
Z3Q7wqAgwqAgwqBhbmTCoGNoYW5nZWQgdGhlaXIgdmFsdWVzIHRoZXJlLiBUaGVuLCBJIGhhdmUg
cmVjb21waWxlZCB1aGQgKG1ha2U8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmFtcDsgbWFrZSBpbnN0
YWxsKSBidXQsIHdoZW4gSSByZS1ydW4gbXkgZ3JhcGggSSBzZWUgbm8gY2hhbmdlIGluIG15PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoHdhdmVmb3JtIChpdCBzZWVtIHRvIHN0YXkgaW4gdGhlIHNhbWUg
bGltaXRzIGFzIHRoZSBkZWZhdWx0PGJyPg0KJmd0OyZndDvCoCDCoCDCoGNvbmZpZ3VyYXRpb24p
Ljxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoEFtIEkgbWlzc2luZ8KgYW55wqBv
dGhlcsKgc3RlcCB0aGF0IEkgaGF2ZSB0byBkb25lwqB0byBjb25maWd1cmUgdGhlc2U8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgcGFyYW1ldGVycz88YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgTWFy
aWE8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqBFbCB2aWUsIDEyIG1hciAyMDIx
IGEgbGFzIDEwOjA0LCBNYXJpYSBNdcOxb3ogKCZsdDs8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJA
Z21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5j
b20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDspIGVzY3Jp
YmnDszo8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBPayBKdWxpYW4s
IEkgd2lsbCBjaGVjayB0aGUgdHJlZSBub2RlIGFuZCB0cnkgdG8gbW9kaWZ5IHRoZTxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqBwcm9wZXJ0aWVzLiBUaGFua3MgYWdhaW4gZm9yIHRoZSBoZWxw
ITxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoEtpbmQgUmVnYXJkcyw8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgTWFyaWE8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqBFbCBqdWUsIDExIG1hciAyMDIxIGEgbGFzIDE4OjI2LCBKdWxpYW4g
QXJub2xkPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Oyk8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgZXNjcmliacOzOjxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoE1hcmlhLDxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IC9zZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlv
XzAuc2V0X3J4X2FnYyhGYWxzZSwgMCkvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IGJ1dCBJ
IGhhdmUgcmVjZWl2ZWQgdGhlIGZvbGxvd2luZyBlcnJvclRoYXQmIzM5O3Mgd2h5IEk8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZ2F2ZSB0aGUgcmVmZXJlbmNlIChbMV0pIHNob3dp
bmcgdGhlIGNvcnJlY3Qgc3ludGF4IDspPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oEFueXdheXMsIGdsYWQgaXQgd29ya2VkIG91dCBmb3IgeW91ITxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqBZb3UgbWlnaHQgY29uc2lkZXIgZmlsaW5nIGEgYnVnIGlzc3VlIGFnYWlu
c3QgZ3ItZXR0dXMgb248YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZ2l0aHViLjxi
cj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IEJ5
IHRoZSB3YXksIEkgaGF2ZSByZWFkIHRoYXQgdGhlcmUgYXJlIHNldmVyYWwgbW9kZXM8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZm9yIEFHQzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7Jmd0OyAoZmFzdCxzbG93LGh5YnJpZC4uKSBJIHdhcyB3b25kZXJpbmcg
d2hpY2ggdHlwZSBpczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBpbXBsZW1lbnRl
ZCBieTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyBkZWZhdWx0IGFu
ZCBpZiBpdCBpcyBwb3NzaWJsZSB0byBjaGFuZ2UgQUdDIG1vZGUgaW4gdGhlPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZsb3dncmFwaC48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgVGhvc2UgbW9kZXMgd2VyZSBtYWlubHkgZGljdGF0ZWQgYnkgdGhlIEFEOTM2MS4g
RGVmYXVsdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzaG91bGQgYmU8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJnF1b3Q7c2xvdyZxdW90Oy4gVGhlICZxdW90O2h5
YnJpZCZxdW90OyBtb2RlIGlzIG5vdCBpbXBsZW1lbnRlZCBhcyBmYXIgYXMgSSBrbm93Ljxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBXaGljaCBtb2RlIHlvdSB3YW50ICgmcXVvdDtz
bG93JnF1b3Q7IC8gJnF1b3Q7ZmFzdCZxdW90OykgZGVwZW5kcyBvbiB0aGU8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgc2lnbmFsIHlvdSB3YW50IHRvPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoHJlY2VpdmUuIEZvciBidXJzdC1tb2RlIGRpZ2l0YWwgc2lnbmFscyB5
b3UgbWlnaHQgd2FudCB0bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzd2l0Y2gg
dG8gdGhlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZxdW90O2Zhc3QmcXVvdDsg
bW9kZS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgSG93ZXZlciwgSSB0aGluayB0
aGlzIGlzIG9ubHkgcG9zc2libGUgYnkgZGlyZWN0bHkgd3JpdGluZzxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqB0byB0aGUgY29ycmVzcG9uZGluZyBwcm9wZXJ0eS10cmVlIG5vZGUu
IEFnYWluLCBJJiMzOTttIG5vdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzdXJl
IGFib3V0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoFVIRC00LjAvZ3ItZXR0dXMg
dGhvdWdoLjxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoENo
ZWVycyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgSnVsaWFuPGJyPg0KJmd0OyZn
dDs8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBPbiAzLzEx
LzIxIDU6MjYgUE0sIE1hcmlhIE11w7FveiB3cm90ZTo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0OyBIaSBKdWxpYW4sPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBJIGhhdmUgaW5pdGlh
bGx5IGNoYW5nZWQgdGhlIHB5dGhvbiBnZW5lcmF0ZWQgZm9yIG15PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoGZsb3dncmFwaCB3aXRoIHRoaXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0OyBsaW5lOjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgL3NlbGYuZXR0dXNfcmZu
b2NfcnhfcmFkaW9fMC5zZXRfcnhfYWdjKEZhbHNlLCAwKS88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IGJ1
dCBJIGhhdmUgcmVjZWl2ZWQgdGhlIGZvbGxvd2luZyBlcnJvcjo8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
IFQvcmFjZWJhY2sgKG1vc3QgcmVjZW50IGNhbGwgbGFzdCk6PGJyPg0KJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCBGaWxlICZxdW90O2NvbnN0ZWxsYXRpb25fc29mdF9kZWNv
ZGVyLnB5JnF1b3Q7LCBsaW5lIDMwMSwgaW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmx0O21vZHVsZSZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIG1haW4oKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
RmlsZSAmcXVvdDtjb25zdGVsbGF0aW9uX3NvZnRfZGVjb2Rlci5weSZxdW90OywgbGluZSAyNzcs
IGluIG1haW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIHRi
ID0gdG9wX2Jsb2NrX2NscygpPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCBGaWxlICZxdW90O2NvbnN0ZWxsYXRpb25fc29mdF9kZWNvZGVyLnB5JnF1b3Q7LCBsaW5l
IDE2NiwgaW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgX19pbml0X188YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIHNlbGYuZXR0dXNfcmZub2Nf
cnhfcmFkaW9fMC5zZXRfcnhfYWdjKFRydWUsIDApPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDsgQXR0cmlidXRlRXJyb3I6ICYjMzk7cmZub2NfcnhfcmFkaW9fc3B0ciYjMzk7
IG9iamVjdCBoYXMgbm88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgYXR0cmlidXRl
ICYjMzk7c2V0X3J4X2FnYyYjMzk7Lzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgQnV0IHJmbm9jX3JhZGlv
X2ltcGwuY2MgZGVmaW5lcyBpdDo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IC92b2lkIHJmbm9jX3J4X3Jh
ZGlvX2ltcGw6OnNldF9hZ2MoY29uc3QgYm9vbCBlbmFibGUsPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoGNvbnN0IHNpemVfdCBjaGFuKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7IHs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIHJldHVybiBkX3JhZGlvX3JlZi0mZ3Q7c2V0X3J4X2FnYyhlbmFibGUsIGNoYW4pOzxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IH0vPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBT
ZWFyY2hpbmcgdGhlIHJmbm9jX3J4X3JhZGlvX3NwdHIgd2l0aCBncmVwIHRha2VzIG1lIHRvPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZxdW90O3N3aWcmcXVvdDsgZmlsZXMuIEk8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBoYXZlIGxvb2tlZCBhdCBldHR1
c19zd2lnLnB5IGFuZCBzZWVuIHRoYXQgdGhlIGNvbW1hbmQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgbmFtZSBpcyBzZXRfYWdjPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDsgaW5zdGVhZCBvZiBzZXRfcnhfYWdjOjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgL2RlZiBz
ZXRfYWdjKHNlbGYsIGVuYWJsZTogJnF1b3Q7Ym9vbCBjb25zdCZxdW90OywgY2hhbjogJnF1b3Q7
c2l6ZV90PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGNvbnN0JnF1b3Q7KSAtJmd0
OyAmcXVvdDt2b2lkJnF1b3Q7Ojxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgciZxdW90OyZxdW90OyZxdW90Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgc2V0X2FnYyhyZm5vY19yeF9yYWRpbyBzZWxm
LCBib29sIGNvbnN0IGVuYWJsZSw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgc2l6
ZV90IGNvbnN0IGNoYW4pPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCBFbmFibGUvZGlzYWJsZSB0aGUgQUdDIGZvciB0aGlzIFJYIHJhZGlvIChpZjxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBhdmFpbGFibGUpPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmcXVvdDsmcXVvdDsmcXVvdDs8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIHJldHVy
biBfZXR0dXNfc3dpZy5yZm5vY19yeF9yYWRpb19zZXRfYWdjKHNlbGYsPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoGVuYWJsZSwgY2hhbikvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDsgLzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IC88
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBDaGFuZ2luZyB0aGlzIGluIHRo
ZSBmbG93Z3JhcGgucHkgc2VlbXMgdG8gd29yayEhIFRoYW5rczxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqBmb3IgdGhlIGhlbHAgb248YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0OyB0aGlzISBJIHB1dCB0aGlzIGluZm9ybWF0aW9uIGhlcmUganVzdCBpbiBjYXNl
IHNvbWVvbmU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgaXMgc3R1Y2sgaW4gdGhl
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgc2FtZSBwb2ludC48YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7IEJ5IHRoZSB3YXksIEkgaGF2ZSByZWFkIHRoYXQgdGhlcmUgYXJlIHNldmVy
YWwgbW9kZXMgZm9yPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEFHQzxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IChmYXN0LHNsb3csaHlicmlkLi4pIEkgd2Fz
IHdvbmRlcmluZyB3aGljaCB0eXBlIGlzPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oGltcGxlbWVudGVkIGJ5PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgZGVm
YXVsdCBhbmQgaWYgaXQgaXMgcG9zc2libGUgdG8gY2hhbmdlIEFHQyBtb2RlIGluIHRoZTxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBmbG93Z3JhcGguPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
OyBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBNYXJpYTxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBFbCBtacOpLCAxMCBtYXIg
MjAyMSBhIGxhcyAxMjowMywgTWFyaWEgTXXDsW96PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJf
YmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9h
PiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5
MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1h
bXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqBIaSBKdWxlcyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBUaGFuayB5
b3UsIEkgd2lsbCB0cnkgaXQgYW5kwqBsZXQgeW91IGtub3cgYXMgc29vbiBhczxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBwb3NzaWJsZS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqBCeSB0aGUgd2F5LCBJIGhhdmUgY2hlY2tlZCB0aGUgcHl0aG9uPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoGdlbmVyYXRlZMKgdXNpbmcgdGhlIFVIRCBVU1JQPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoFNPVVJDRSBibG9jayAoaW5zdGVhZCBv
ZiB0aGUgUkZOb0MgcmFkaW8gYmxvY2spIHdpdGg8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgQUdDIGFjdGl2ZSBhbmQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgaXQgZ2VuZXJhdGVzIHRoZSBzZXQgb2YgQUdDIGZpbmUuIFNvLCBhcyB5b3Ugc2Fp
ZCw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgaXQgaXMgZml4ZWQgaW48YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgZ3ItdWhkIGJ1dCBpdCBtaWdo
dCBzdGlsbCBiZSBhIGJ1ZyBpbiBnci1ldHR1cy48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBU
aGFua3MgYWdhaW4gZm9yIHRoZSBoZWxwITxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoEtpbmQg
UmVnYXJkcyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBNYXJpYTxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoEVsIG1pw6ksIDEwIG1hciAyMDIxIGEgbGFzIDExOjI1LCBKdWxpYW4gQXJub2xk
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCgmbHQ7PGEgaHJl
Zj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7
bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9i
bGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT4mZ3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqBNYXJpYSw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDsgU28s
IGlmIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHksIEkgaGF2ZSB0byBwdXQ8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgdGhlcmUgYWxzbzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBzb21ldGhpbmcgbGlrZTxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJnF1b3Q7c2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9y
eF9hZ2MoZW5hYmxlLDApJnF1b3Q7IGlzbiYjMzk7dCBpdD88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBFeGFjdGx5ISBUYWtlIGEgbG9vayBhdCBbMV0gZm9yIHRoZSBjb3JyZWN0IHN5
bnRheC48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBbMV08YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqA8
YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJjaC9nci1ldHR1cy9ibG9iLzEw
MzhjNGNlNTEzNWEyODAzYjUzNTU0ZmM0OTcxZmUzZGU3NDdkOWEvaW5jbHVkZS9ldHR1cy9yZm5v
Y19yeF9yYWRpby5oI0w5NyIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6
Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvZ3ItZXR0dXMvYmxvYi8xMDM4YzRjZTUxMzVhMjgw
M2I1MzU1NGZjNDk3MWZlM2RlNzQ3ZDlhL2luY2x1ZGUvZXR0dXMvcmZub2NfcnhfcmFkaW8uaCNM
OTc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgTGV0IG1lIGtub3cgaWYgdGhh
dCB3b3JrZWQgb3V0IGZvciB5b3UuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgQ2hl
ZXJzLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBK
dWxpYW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoE9uIDMvMTAvMjEgOTo1OSBBTSwgTWFyaWEgTXXDsW96IHdyb3Rl
Ojxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyBIaSBKdWxpYW4sPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7IFRoYW5rcyBmb3IgdGhlIHF1aWNrIGFuc3dlci48YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgSSB0aGluayB5b3UgbWln
aHQgYmUgcmlnaHQgYWJvdXQgdGhlIHBvc3NpYmxlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoGJ1ZyB0dXJuaW5nIG9uPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoHRoZSBBR0M8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsgZnJvbSBHUkMuIEkgaGF2ZSBjaGVja2VkIHRoZSBmbG93
IGdyYXBoPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGdlbmVyYXRlZCBhbmQgdGhl
cmUmIzM5O3Mgbm88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsgc2V0X3J4X2FnYyBlbmFibGUgb3B0aW9uIChJIGNoZWNrZWQgdGhlIGMrKzxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBkZWZpbml0aW9uIGJsb2NrPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHdoZXJlIHRoaXM8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgb3B0
aW9uIGRpZCBhcHBlYXIgYnV0IEkgaGFkbiYjMzk7dCBsb29rIGF0IHRoZTxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqBweXRob24gZ2VuZXJhdGVkKS48YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgVGhlIGxpbmVzIHJlbGF0ZWQg
dG8gdGhlIHJhZGlvIGluIG15PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZsb3dn
cmFwaCBhcmUgdGhlc2U6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7IC9zZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAgPTxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBldHR1cy5yZm5vY19yeF9yYWRpbyg8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCBzZWxmLnJmbm9jX2dyYXBoLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIHVoZC5kZXZpY2Vf
YWRkcigmIzM5OyYjMzk7KSw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCAtMSw8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCAtMSk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDvCoCDCoCDCoCDCoCDCoDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBz
ZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAuc2V0X3JhdGUoc2FtcF9yYXRlKTxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKg
IMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNfcmZub2Nfcnhf
cmFkaW9fMC5zZXRfYW50ZW5uYSgmIzM5O1JYMiYjMzk7LCAwKTxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5z
ZXRfZnJlcXVlbmN5KGNmLCAwKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfZ2FpbihnYWluLCAwKTxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8Kg
IMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNf
cmZub2NfcnhfcmFkaW9fMC5zZXRfYmFuZHdpZHRoKHNhbXBfcmF0ZSwgMCk8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDC
oDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3Jh
ZGlvXzAuc2V0X2RjX29mZnNldChUcnVlLCAwKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfaXFfYmFs
YW5jZShUcnVlLCAwKS88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsgU28sIGlmIEkgdW5kZXJzdGFuZCBjb3JyZWN0bHksIEkgaGF2ZSB0byBw
dXQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdGhlcmUgYWxzbzxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBzb21ldGhpbmcgbGlrZTxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmcXVvdDtzZWxmLmV0dHVzX3Jmbm9jX3J4
X3JhZGlvXzAuc2V0X3J4X2FnYyhlbmFibGUsMCkmcXVvdDsgaXNuJiMzOTt0IGl0Pzxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBLaW5kIFJl
Z2FyZHMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7IE1hcmlhPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7IEVsIG1pw6ksIDEwIG1hciAyMDIxIGEgbGFzIDk6MTYsIEp1bGlhbiBBcm5v
bGQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgKCZs
dDs8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsi
Pmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRh
cmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFp
bHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVj
b2Rpbmcub3JnPC9hPiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBl
bGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9h
Pjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRl
Y29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBNYXJpYSw8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEkg
bWlnaHQgbm90IGJlIHRoZSByaWdodCBwZXJzb24gdG8gYW5zd2VyPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoHRoaXMsIGFzIG15PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoGV4cGVyaWVuY2Ugd2l0aDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgVUhEIDQuMCBpcyBy
ZWxhdGl2ZWx5IGxpbWl0ZWQgYXQgdGhlIG1vbWVudC48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEhvd2V2ZXIsIEkgY2FudCB0
ZWxsIHlvdSB0aGF0IHRoZSBBR0Mgb248YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
QjJ4MCBkZXZpY2VzIGlzPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoGNvbnRyb2xsZWQgdmlhPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBzb2Z0d2FyZSAodXNpbmcgc2V0X3J4X2Fn
YygpKS4gVGhlcmUgaXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgbm8gbmVlZCB0
bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBkaXJl
Y3RseSBtb2RpZnkgdGhlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBzdGF0ZSBvZiBhbnkgcGlucyBvZiB0aGUgRlBHQS48YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoEkgdmFndWVseSByZW1lbWJlciB0aGF0IHRoZXJlIHdhcyBhIGJ1Zzxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqBpbiBhbiBlYXJsaWVyPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHZlcnNpb24gb2YgZ3ItdWhkPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAoc29t
ZXdoZXJlIGluIDMuNykgdGhhdCBtYWRlIGl0IGRpZmZpY3VsdDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqB0byB0dXJuIG9uIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBBR0MgdXNpbmcgR1JDLjxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgVGhhdCBwYXJ0aWN1
bGFyIG9uZSBpcyBmaXhlZCBpbiBnci11aGQuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoE5vdCBzdXJlIGFib3V0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoGdyLWV0dHVzLCB0aG91Z2guPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBNYXliZSB0cnkgdXNpbmcgc2V0
X3J4X2FnYygpIG1hbnVhbGx5IGluPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHlv
dSBmbG93LWdyYXBoPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCgqLnB5KSBhbmQgc2VlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBpZiB0aGF0IGhlbHBzLjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgQ2hlZXJz
LDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
O8KgIMKgIMKgSnVsaWFuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBPbiAzLzkvMjEgNToxMSBQTSwgTWFyaWEgTXXDsW96IHZp
YTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBVU1JQLXVzZXJzIHdyb3RlOjxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKg
IMKgICZndDsgSGkgYWxsLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IEkgd2FzIHdvbmRlcmlu
ZyBpZiBpdCBpcyBwb3NzaWJsZSB0bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBl
bmFibGUgQUdDIGZyb208YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgdGhlIFJGTm9DIHJhZGlvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBibG9jayBpbiBHTlVSYWRpby4g
SSB1c2UgVUhEIDQuMDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB2ZXJzaW9uIGFu
ZCBHTlVSYWRpbzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAzLjggd2l0aDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0O8KgIMKgIMKgZ3ItZXR0dXMuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsg
SSBzZWUgdGhhdCB0aGUgUkZOb0MgUnggcmFkaW8gYmxvY2sgaGFzIGFuPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGVuYWJsZS9kaXNhYmxlL2RlZmF1
bHQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDvCoCDCoCDCoEFHQzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgb3B0aW9uIGluIHRoZSBHTlVSYWRpbyBibG9jayB3
aGljaCBJPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGFzc3VtZSBjYWxscyB0aGU8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgVUhEIGZ1
bmN0aW9uPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7wqAgwqAgwqAgJmd0OyAmcXVvdDtzZXRfcnhfYWdjJnF1b3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqA8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgwqAoPGEgaHJlZj0iaHR0cHM6Ly9maWxlcy5ldHR1
cy5jb20vbWFudWFsL2NsYXNzdWhkXzFfMXVzcnBfMV8xbXVsdGlfX3VzcnAuaHRtbCNhYmRhYjFm
NmMzNzc1YTkwNzFiMTVjOTgwNWY4NjY0ODYiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxh
bmsiPmh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9jbGFzc3VoZF8xXzF1c3JwXzFfMW11
bHRpX191c3JwLmh0bWwjYWJkYWIxZjZjMzc3NWE5MDcxYjE1Yzk4MDVmODY2NDg2PC9hPik8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBJIGhhdmUgYWxzbyBjaGVja2VkIG9uIHRoZSBGUEdBIHNp
ZGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdGhhdCB0aGVyZSBpcyBhPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHBpbiBmcm9tPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAg
wqAgwqBGUEdBIHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBBRDkzNjEgY2FsbGVkwqBYQ1ZSX0VOQV9BR0Mgd2hp
Y2ggaXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgc2V0IGFsd2F5cyB0byAxIG9u
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRoZSB0
b3A8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDvCoCDCoCDCoGxldmVsIG9mPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyB0aGUgRlBHQSBpbWFnZSAoc2VlIGF0dGFj
aGVkIGZpbGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJnF1b3Q7ZTMyMC52JnF1
b3Q7LCBsaW5lIDg3MikuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoFRoaXMgcGluLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgYWNjb3JkaW5nIHRvPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoDxhIGhyZWY9Imh0dHBzOi8vd3d3LmFuYWxvZy5jb20vbWVkaWEvZW4v
dGVjaG5pY2FsLWRvY3VtZW50YXRpb24vZGF0YS1zaGVldHMvQUQ5MzYxLnBkZiIgcmVsPSJub3Jl
ZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly93d3cuYW5hbG9nLmNvbS9tZWRpYS9lbi90
ZWNobmljYWwtZG9jdW1lbnRhdGlvbi9kYXRhLXNoZWV0cy9BRDkzNjEucGRmPC9hPjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKg
ICZndDsgaXMgdGhlICZxdW90O01hbnVhbCBDb250cm9sIElucHV0IGZvcjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqBBdXRvbWF0aWMgR2Fpbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBDb250cm9sIChBR0MpJnF1b3Q7Ljxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKg
ICZndDsgTXVzdCBiZSB0aGlzIHBpbiBzZXQgdG8gMCB0byBoYXZlIEFHQzxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqB3b3JraW5nPzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgSWbCoG5vdCwgaG93IGNh
biBJwqBnZXQgQUdDIHdvcmtpbmc/PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEkm
IzM5O3ZlIG1hZGUgc29tZSB0ZXN0czxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgZW5hYmxpbmcvZGlzYWJsaW5nIHRo
aXMgb3B0aW9uIGJ1dCBJPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGRvIG5vdCBz
ZWUgYW55PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oGNoYW5nZXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDvCoCDCoCDCoGJldHdlZW4gdGhlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyB3YXZlZm9ybXMgcmVjZWl2
ZWQuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgQW55IGhlbHAgd291bGQgYmUgYXBwcmVjaWF0
ZWQuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgS2luZCBSZWdhcmRzLDxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvC
oCDCoCDCoCAmZ3Q7IE1hcmlhPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX188YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAg
Jmd0OyA8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0i
X2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0
cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwv
YT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0
YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb208L2E+Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoDxhIGhyZWY9Imh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5m
by91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbSIgcmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9i
bGFuayI+aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNf
bGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7PGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0K
--000000000000337aa205be2fe600--

--===============8507891307891663282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8507891307891663282==--

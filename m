Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C49EA35BB7F
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 09:56:42 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 13A2F3844DB
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 03:56:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Ni6UlBcv";
	dkim-atps=neutral
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by mm2.emwd.com (Postfix) with ESMTPS id A8B463843B5
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 03:55:49 -0400 (EDT)
Received: by mail-ed1-f46.google.com with SMTP id ba6so13903928edb.1
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 00:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JAt8IDNTcccAJhQ3B3RixOywFq8W5h5wlzoKYncJFDE=;
        b=Ni6UlBcvUmkBASO/DbmAMgtk7Sq3XUmPx33hDVL+6thtD5i7w2UzPqJaUGZJyzSN+z
         DTrdT8rNuMmrIkra7E52lk7Z8V0v5uO803/fqFjyQmHv1tj1RztTRKlQbivc0NXtWGiO
         kE9s9Vap0yw0voiKk0iXw6/XAuZgIU+Xc5fc6H15OO/WtpZUapdh/FTTbhA7PTEl0Aqo
         sWg9RBQyuaRV96Y80m0taRAoggcdZQXNjk7f3XnDPopJVaC2M5tEjw7XkLN921atz6jU
         VfoyTAqpH+ZRRhQO6rfV84A/9hpAtslWFDKydH6PVM0GUFeZdHa0vz4CIBxTIH05CHDU
         Uzxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JAt8IDNTcccAJhQ3B3RixOywFq8W5h5wlzoKYncJFDE=;
        b=PiuIt6pNsSm25C4NpHr0qXYbJNJW+SZOopRwMbn2j9LRnXOWZPcVu8Ce4NG+wdPogD
         s3k4fyF5Puz2LjJP9jKWNu6zuHSBKL53VDQHH64rG+k1SgM7x4v69q2fcl829qPqX80d
         RJFIwvmYnhQ7U0B5TMDdCuPUjKaq68d1qEDYYMFAAhWjLKJjV9A55ozJk3cBh9MMbH6V
         mC+Kks8/UY6SCNq0DEQ/JOB+2GvBSD/FhKU0acnu0vOhYKVgCvvZPUDS52hz5k7NvM5h
         LFJeobBpfhl//h4YiitJp3yorbxeZKat1zTB3hmmQbxIA7fkGrk1DOVkEGrwOM15WaI4
         tULA==
X-Gm-Message-State: AOAM531x1S3yBk9uACLsSy3vJI5bSO3PK+14fI2xeJOleMafeSUFXFmc
	wEGnilQhRrUqq6KKYXUPuW6/4+EGIB5VuclEG280+S4X2cg=
X-Google-Smtp-Source: ABdhPJwzHNfBXoFQXMLTb9T5JOQf0jzjohfRVIkrMpnXNtEiSdXA0z8U27EDzQdYpQg+yrYK+/OgjEBUGmG4YutqMeE=
X-Received: by 2002:aa7:d353:: with SMTP id m19mr24888522edr.172.1618214148596;
 Mon, 12 Apr 2021 00:55:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQV7J1dnf+-v5pzUf6eTxn7SJYgPtHh03=Pchd5v_Ui54w@mail.gmail.com>
 <29D4AD3E-11D9-42A0-A6C3-60D03ED19AE5@elitecoding.org> <7c1e57a9-6dbb-7473-479f-5fadadcd7d52@elitecoding.org>
In-Reply-To: <7c1e57a9-6dbb-7473-479f-5fadadcd7d52@elitecoding.org>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Mon, 12 Apr 2021 09:55:36 +0200
Message-ID: <CAG16vQVXNTpn5uzrD-73-BLNiDb11o1ErLpZL9807zvdf9THww@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Message-ID-Hash: L6J5JYXMGI7EQXBOBVYP33EDRF7UZET7
X-Message-ID-Hash: L6J5JYXMGI7EQXBOBVYP33EDRF7UZET7
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Enable AGC in USRP E320 with RFNoC using GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/L6J5JYXMGI7EQXBOBVYP33EDRF7UZET7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6749388233017797994=="

--===============6749388233017797994==
Content-Type: multipart/alternative; boundary="0000000000007f66a005bfc1d714"

--0000000000007f66a005bfc1d714
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julian,

Thanks for the answer.

Yes, I'm working with the E320. I'll try to force the "_setup_agc" code as
you said and debug again to see if hopefully, I get the AGC configured.
If someone has configured the E320 before I will also appreciate any help
on this.

Thanks again for the help

Kind Regards,

Maria

El lun, 12 abr 2021 a las 9:43, Julian Arnold (<julian@elitecoding.org>)
escribi=C3=B3:

> Maria,
>
> it just dawned on me, that you are working with an e320 not an e310.
>
> Although most of what I said should still apply (especially erverything
> related to the (AD936x)) things might be a little bit different. I'm
> epecially unsure about the RPC part, here.
>
> Maybe someone else can chime in regarding this aspect.
>
> However, I think that `_setup_gain_control(false)` should run regardless
> during device init. So you should see some logging output there.
>
> If _setup_agc() is not beeing called you could try to force the AGC on,
> just for verification purposes, by changing `_setup_gain_control(false)`
> to `_setup_gain_control(true)` in `initialize()` and `set_clock_rate()`.
>
> Cheers,
> Julian
>
> On 4/9/21 3:34 PM, Julian Arnold wrote:
> > Maria,
> >
> > the properties you want to change (min/max thresholds) are not exposed
> > via the property tree. Only the mode is (slow or fast).
> > However, the same code that configures the AGC that worked for me on th=
e
> > B210 should run on the E310. The RPC client should not be involved in
> > that case (although I=E2=80=99m not sure about that).
> >
> > Have you tried applying my patch directly (I had slightly modified
> > register values).
> >
> > Also, could you try running your code directly on the E310 (bypassing
> > networked-mode) to see if that makes a difference?
> >
> > Cheers,
> > Julian
> >
> >
> > Julian Arnold, M.Sc
> >
> >> Am 09.04.2021 um 09:48 schrieb Maria Mu=C3=B1oz <mamuki92@gmail.com>:
> >>
> >> =EF=BB=BF
> >> Hi Julian,
> >>
> >> Sorry for the late reply and thanks for the answer.
> >>
> >> I have been debugging the configuration printing the entries of
> >> "set_agc" that I have found on cpp/py files in the uhd driver and
> >> ettus repositories, and I can confirm that the code is not getting to
> >> the ad9361_device.cpp as I thought in the beginning.
> >>
> >> If I go through the code from my python script to the
> >> ad9361_device.cpp configuration file I see the following:
> >>
> >>   * The python scripts calls for ettus.rfnoc_rx_radio.set_agc method,
> >>     which is found in ettus repository (for usrp_source is on
> >>     gnuradio/uhd lib)
> >>
> >>   * The rfnoc_rx_radio class is defined in
> >>     gr-ettus/lib/rfnoc_rx_radio_impl.h, where there is also a pointer
> >>     to the radio_control class defined:
> >>
> >>         /class rfnoc_rx_radio_impl : public rfnoc_rx_radio
> >>         {
> >>         public:
> >>             rfnoc_rx_radio_impl(::uhd:://rfnoc::noc_block_base::sptr
> >>         block_ref);
> >>             ~rfnoc_rx_radio_impl();
> >>
> >>             /*** API
> >>
>  ******************************//******************************//*****/
> >>             double set_rate(const double rate);
> >>             void set_antenna(const std::string& antenna, const size_t
> >>         chan);
> >>             double set_frequency(const double frequency, const size_t
> >>         chan);
> >>             void set_tune_args(const ::uhd::device_addr_t& args, const
> >>         size_t chan);
> >>             double set_gain(const double gain, const size_t chan);
> >>             double set_gain(const double gain, const std::string&
> >>         name, const size_t chan);
> >>             void set_agc(const bool enable, const size_t chan);
> >>             void set_gain_profile(const std::string& profile, const
> >>         size_t chan);
> >>             double set_bandwidth(const double bandwidth, const size_t
> >>         chan);
> >>             void
> >>             set_lo_source(const std::string& source, const
> >>         std::string& name, const size_t chan);
> >>             void
> >>             set_lo_export_enabled(const bool enabled, const
> >>         std::string& name, const size_t chan);
> >>             double set_lo_freq(const double freq, const std::string&
> >>         name, const size_t chan);
> >>             void set_dc_offset(const bool enable, const size_t chan);
> >>             void set_dc_offset(const std::complex<double>& offset,
> >>         const size_t chan);
> >>             void set_iq_balance(const bool enable, const size_t chan);
> >>             void set_iq_balance(const std::complex<double>&
> >>         correction, const size_t chan);
> >>
> >>         private:
> >>             ::uhd::rfnoc::radio_control:://sptr d_radio_ref;
> >>         };/
> >>
> >>   * In gr-ettus/lib/rfnoc_rx_radio_impl.cpp when set_agc command is
> >>     received, it returns a call to the pointer I mention before, and
> >>     therefore, to the radio_control class:
> >>
> >>         /void rfnoc_rx_radio_impl::set_agc(//const bool enable, const
> >>         size_t chan)
> >>         {
> >>             return d_radio_ref->set_rx_agc(//enable, chan);
> >>         }/
> >>
> >>   * The radio_control class is found in the UHD driver repository in
> >>     uhd/host/include/uhd/rfnoc/radio_control.hpp which is virtually
> >>     implemented as radio_control_impl class in
> >>     e3xx_radio_control_impl.cpp (host/lib/usrp/board/e3xx)
> >>   * This file calls to the ad9361_ctrl class which is implemented in
> >>     e3xx_ad9361_iface.cpp (host/lib/usrp/board/e3xx)
> >>   * At this point, there is a call for the rpc_client where I get kind
> >>     of lost about how to change the registers this way:
> >>
> >>
> >>         /void set_agc(const std::string& which, bool enable)
> >>         {
> >>         _rpcc->request_with_token<void>(this->_rpc_prefix + "set_agc",
> >>         which, enable);
> >>         }/
> >>
> >>
> >>
> >> To be brief:
> >>
> >>   * When debugging I can't see that my code gets to the only
> >>     configuration file I found which is the ad9361_device.cpp
> >>   * The set_agc command seems to be manage through the rpc_client (I
> >>     think this is related to the module peripheral manager which is a
> >>     "layer of control that UHD uses to access, configure and control
> >>     the hardware", https://files.ettus.com/manual/page_mpm.html)
> >>   * Inside the code, in multi_usrp files there is a comment that the
> >>     specific configuration of the AGC is set in the property_tree but
> >>     I don't know how to write the configuration registers of the agc
> >>     through the property_tree.
> >>
> >>
> >> So my questions here are:
> >>
> >>  1. How can I set the configuration registers of the AGC, through the
> >>     MPM or the property tree?
> >>  2. Are there examples on how I can set these registers through the
> >>     MPM or the property_tree?
> >>
> >>
> >> Kind Regards,
> >>
> >> Maria
> >>
> >> El mi=C3=A9, 24 mar 2021 a las 11:20, Julian Arnold
> >> (<julian@elitecoding.org <mailto:julian@elitecoding.org>>) escribi=C3=
=B3:
> >>
> >>     Maria,
> >>
> >>     that sounds about right!
> >>     However, to make absolutely sure GNU Radio picks up the modified
> >>     libuhd
> >>     you could add a print statement somewhere in your UHD code.
> >>     You could also compare your UHD install prefix to the path gr-uhd
> >>     uses for linking libuhd.
> >>
> >>     Below is the patch I used for my tests:
> >>
> >>     diff --git a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >>     b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >>     index 9e088871d..0e5bc86c5 100644
> >>     --- a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >>     +++ b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >>     @@ -1089,7 +1089,7 @@ void
> >>     ad9361_device_t::_setup_gain_control(bool agc)
> >>               _io_iface->poke8(0x0FD, 0x4C); // Max Full/LMT Gain
> >>     Table Index
> >>               _io_iface->poke8(0x0FE, 0x44); // Decr Step Size, Peak
> >>     Overload Time
> >>               _io_iface->poke8(0x100, 0x6F); // Max Digital Gain
> >>     -        _io_iface->poke8(0x101, 0x0A); // Max Digital Gain
> >>     +        _io_iface->poke8(0x101, 0x02); // Max Digital Gain
> >>               _io_iface->poke8(0x103, 0x08); // Max Digital Gain
> >>               _io_iface->poke8(0x104, 0x2F); // ADC Small Overload
> >>     Threshold
> >>               _io_iface->poke8(0x105, 0x3A); // ADC Large Overload
> >>     Threshold
> >>     @@ -1098,14 +1098,14 @@ void
> >>     ad9361_device_t::_setup_gain_control(bool agc)
> >>               _io_iface->poke8(0x108, 0x31);
> >>               _io_iface->poke8(0x111, 0x0A);
> >>               _io_iface->poke8(0x11A, 0x1C);
> >>     -        _io_iface->poke8(0x120, 0x0C);
> >>     +        _io_iface->poke8(0x120, 0x04);
> >>               _io_iface->poke8(0x121, 0x44);
> >>               _io_iface->poke8(0x122, 0x44);
> >>               _io_iface->poke8(0x123, 0x11);
> >>               _io_iface->poke8(0x124, 0xF5);
> >>               _io_iface->poke8(0x125, 0x3B);
> >>               _io_iface->poke8(0x128, 0x03);
> >>     -        _io_iface->poke8(0x129, 0x56);
> >>     +        _io_iface->poke8(0x129, 0x11);
> >>               _io_iface->poke8(0x12A, 0x22);
> >>           } else {
> >>               _io_iface->poke8(0x0FA, 0xE0); // Gain Control Mode Sele=
ct
> >>
> >>
> >>     Cheers,
> >>     Julian
> >>
> >>     On 3/24/21 9:59 AM, Maria Mu=C3=B1oz wrote:
> >>     > Hi Julian,
> >>     >
> >>     > I have the chance to test the AGC with a B210 and perform the
> >>     same graph
> >>     > as you send me but I am unable to see what you saw so I think I'=
m
> >>     > missing something.
> >>     > I also have UHD 4.0 and GNURadio 3.8 (installed by source).
> >>     >
> >>     > The steps I take are these:
> >>     >
> >>     >   * First, I change the ad9361_device.cpp that is in uhd
> >>     repository in
> >>     >     //uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp,
> >>     >     registers 0x101, 0x120, 0x129, 0x123 and 0x12A./
> >>     >   * Then, I do "make" and "make install" to compile the changes =
in
> >>     >     build-host folder.
> >>     >   * After that, I generate the python script for the GRC flow
> >>     graph and
> >>     >     move the "set_agc" command after the "set_rate" one.
> >>     >   * Finally, I run the python.
> >>     >
> >>     > I can't see my waveform between the values I set. Is there
> >>     something
> >>     > wrong with those steps? Did you do anything else?
> >>     >
> >>     > King Regards,
> >>     >
> >>     > Maria
> >>     >
> >>     > /
> >>     > /
> >>     >
> >>     > El mar, 23 mar 2021 a las 9:23, Maria Mu=C3=B1oz (<mamuki92@gmai=
l.com
> >>     <mailto:mamuki92@gmail.com>
> >>     > <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>)
> escribi=C3=B3:
> >>     >
> >>     >     Hi Julian,
> >>     >
> >>     >     Thanks for the checking!
> >>     >
> >>     >     I have also checked my graph and samp_rate is setting first,
> >>     so I'll
> >>     >     try to test it with a sine waveform as you suggested and see
> >>     if that
> >>     >     works. If not, maybe is an RFNoC/gr-ettus problem. I'll put
> >>     an issue
> >>     >     in the gr-ettus repository in that case.
> >>     >
> >>     >     Thanks again for your help.
> >>     >
> >>     >     Kind Regards,
> >>     >
> >>     >     Maria.
> >>     >
> >>     >     El mar, 23 mar 2021 a las 0:36, Julian Arnold
> >>     >     (<julian@elitecoding.org <mailto:julian@elitecoding.org>
> >>     <mailto:julian@elitecoding.org <mailto:julian@elitecoding.org>>>)
> >>     escribi=C3=B3:
> >>     >
> >>     >         Maria,
> >>     >
> >>     >         I couldn't resist trying this myself, as your
> >>     modifications seemed
> >>     >         reasonable.
> >>     >
> >>     >         So I did set up a simple test with a b210 connected to
> >>     my siggen
> >>     >         feeding
> >>     >         it with a tone of varying power at 2.4102GHz.
> >>     >
> >>     >         For the default UHD AGC settings I could confirm that
> >>     the signal
> >>     >         was
> >>     >         kept between -10 dBFS and -12 dBFS (20 * log10(|x|) over=
 a
> >>     >         pretty wide
> >>     >         input power range.
> >>     >         This was using GR 3.8 and UHD 4.0.
> >>     >
> >>     >         However, I had to modify the generate flow-graph
> >>     slightly, as
> >>     >         the AGC
> >>     >         was enables before the sample-rate was set (maybe double
> >>     check
> >>     >         that, too).
> >>     >
> >>     >         Afterwards, I used your settings (I did change reg 0x129
> >>     to 0x11
> >>     >         (1dB
> >>     >         +-), though).
> >>     >         Also those settings worked as expected and the signal
> >>     was nicely
> >>     >         kept
> >>     >         between -2 dBFS and -4 dBFS.
> >>     >
> >>     >         Attached is a picture of the flow-graph I used for
> testing.
> >>     >         Maybe you
> >>     >         could also start by testing with a sine wave to
> >>     verifying that your
> >>     >         values get applied properly.
> >>     >
> >>     >         Cheers,
> >>     >         Julian
> >>     >
> >>     >         On 3/22/21 6:21 PM, Maria Mu=C3=B1oz wrote:
> >>     >          > Hi Julian,
> >>     >          >
> >>     >          > Sure.
> >>     >          >
> >>     >          > I am receiving a QPSK through the radio and
> >>     plotting it in a
> >>     >         QT graph
> >>     >          > (see grc.png)
> >>     >          > If I have AGC disable, I get what is shown in
> >>     >         "test_without_agc.png",
> >>     >          > then if I enable it, I see what is on
> >>     "test_with_agc.png" where
> >>     >          > "Quadrature" is always center more or less in 0.25
> which
> >>     >         might fit with
> >>     >          > the values given by default (inner high threshold =3D
> >>     -12dBFS,
> >>     >         inner low
> >>     >          > threshold =3D -10 dBFS).
> >>     >          >
> >>     >          > If I change the ad9361_device.cpp (attached) from
> >>     line 1085,
> >>     >         by changing
> >>     >          > registers 0x101, 0x120 and 0x129 with values 0x02,
> >>     0x04 and 0x16
> >>     >          > respectively to move between -2dbFS and -4 dBFS,  I
> >>     see the same
> >>     >          > waveform that I have in "test_with_agc.png" (I expect
> >>     it to
> >>     >         be around 0.7)
> >>     >          >
> >>     >          > Kind regards,
> >>     >          >
> >>     >          > Maria
> >>     >          >
> >>     >          > El lun, 22 mar 2021 a las 17:45, Julian Arnold
> >>     >         (<julian@elitecoding.org <mailto:julian@elitecoding.org>
> >>     <mailto:julian@elitecoding.org <mailto:julian@elitecoding.org>>
> >>     >          > <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>>>) escribi=C3=B3:
> >>     >          >
> >>     >          >     Maria,
> >>     >          >
> >>     >          >     would you mind sharing your patch? Otherwise,
> >>     it=E2=80=99s hard
> >>     >         to tell what
> >>     >          >     exactly is going on.
> >>     >          >
> >>     >          >     Cheers,
> >>     >          >     Julian
> >>     >          >
> >>     >          >>     Am 22.03.2021 um 16:24 schrieb Maria Mu=C3=B1oz
> >>     >         <mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
> >>     >          >>     <mailto:mamuki92@gmail.com
> >>     <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
> >>     <mailto:mamuki92@gmail.com>>>>:
> >>     >          >>
> >>     >          >>     =EF=BB=BF
> >>     >          >>     Hi Julian,
> >>     >          >>
> >>     >          >>     I re-open this topic to ask a question about the
> >>     >         configuration of
> >>     >          >>     the ad9361 registers in GNUradio/RFNoC
> >>     >          >>
> >>     >          >>     As I understand, when AGC is enabled in slow
> >>     mode, there
> >>     >         are 4
> >>     >          >>     configurable thresholds (inner low, inner high,
> >>     >         outer low, and
> >>     >          >>     outer high) and also 4 configurable steps to
> >>     reach the zone
> >>     >          >>     between the inner thresholds.
> >>     >          >>
> >>     >          >>     I have found the configuration of these register=
s
> >>     >          >>
> >>      in /uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >>     >          >>     and changed their values there. Then, I have
> >>     recompiled
> >>     >         uhd (make
> >>     >          >>     & make install) but, when I re-run my graph I se=
e
> no
> >>     >         change in my
> >>     >          >>     waveform (it seem to stay in the same limits as
> >>     the default
> >>     >          >>     configuration).
> >>     >          >>
> >>     >          >>     Am I missing any other step that I have to done =
to
> >>     >         configure these
> >>     >          >>     parameters?
> >>     >          >>
> >>     >          >>     Kind Regards,
> >>     >          >>
> >>     >          >>     Maria
> >>     >          >>
> >>     >          >>     El vie, 12 mar 2021 a las 10:04, Maria Mu=C3=B1o=
z
> >>     >         (<mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
> >>     >          >>     <mailto:mamuki92@gmail.com
> >>     <mailto:mamuki92@gmail.com>
> >>     >         <mailto:mamuki92@gmail.com
> >>     <mailto:mamuki92@gmail.com>>>>) escribi=C3=B3:
> >>     >          >>
> >>     >          >>         Ok Julian, I will check the tree node and tr=
y
> to
> >>     >         modify the
> >>     >          >>         properties. Thanks again for the help!
> >>     >          >>
> >>     >          >>         Kind Regards,
> >>     >          >>         Maria
> >>     >          >>
> >>     >          >>         El jue, 11 mar 2021 a las 18:26, Julian Arno=
ld
> >>     >          >>         (<julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>> <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>>>)
> >>     >          >>         escribi=C3=B3:
> >>     >          >>
> >>     >          >>             Maria,
> >>     >          >>
> >>     >          >>             >>
> >>     >         /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
> >>     >          >>             >>
> >>     >          >>             >> but I have received the following
> >>     errorThat's
> >>     >         why I
> >>     >          >>             gave the reference ([1]) showing the
> correct
> >>     >         syntax ;)
> >>     >          >>             Anyways, glad it worked out for you!
> >>     >          >>             You might consider filing a bug issue
> >>     against
> >>     >         gr-ettus on
> >>     >          >>             github.
> >>     >          >>
> >>     >          >>             >> By the way, I have read that there ar=
e
> >>     >         several modes
> >>     >          >>             for AGC
> >>     >          >>             >> (fast,slow,hybrid..) I was wondering
> >>     which
> >>     >         type is
> >>     >          >>             implemented by
> >>     >          >>             >> default and if it is possible to
> >>     change AGC
> >>     >         mode in the
> >>     >          >>             flowgraph.
> >>     >          >>             Those modes were mainly dictated by the
> >>     AD9361.
> >>     >         Default
> >>     >          >>             should be
> >>     >          >>             "slow". The "hybrid" mode is not
> >>     implemented as
> >>     >         far as I know.
> >>     >          >>             Which mode you want ("slow" / "fast")
> >>     depends on the
> >>     >          >>             signal you want to
> >>     >          >>             receive. For burst-mode digital signals
> you
> >>     >         might want to
> >>     >          >>             switch to the
> >>     >          >>             "fast" mode.
> >>     >          >>             However, I think this is only possible b=
y
> >>     >         directly writing
> >>     >          >>             to the corresponding property-tree node.
> >>     Again,
> >>     >         I'm not
> >>     >          >>             sure about
> >>     >          >>             UHD-4.0/gr-ettus though.
> >>     >          >>
> >>     >          >>             Cheers,
> >>     >          >>             Julian
> >>     >          >>
> >>     >          >>
> >>     >          >>             On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wro=
te:
> >>     >          >>             > Hi Julian,
> >>     >          >>             >
> >>     >          >>             > I have initially changed the python
> >>     generated
> >>     >         for my
> >>     >          >>             flowgraph with this
> >>     >          >>             > line:
> >>     >          >>             >
> >>     >          >>             >
> >>     /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
> >>     >          >>             >
> >>     >          >>             > but I have received the following erro=
r:
> >>     >          >>             >
> >>     >          >>             > T/raceback (most recent call last):
> >>     >          >>             >    File
> >>     "constellation_soft_decoder.py", line
> >>     >         301, in
> >>     >          >>             <module>
> >>     >          >>             >      main()
> >>     >          >>             >    File
> >>     "constellation_soft_decoder.py", line
> >>     >         277, in main
> >>     >          >>             >      tb =3D top_block_cls()
> >>     >          >>             >    File
> >>     "constellation_soft_decoder.py", line
> >>     >         166, in
> >>     >          >>             __init__
> >>     >          >>             >
> >>     >         self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, 0)
> >>     >          >>             > AttributeError: 'rfnoc_rx_radio_sptr'
> >>     object
> >>     >         has no
> >>     >          >>             attribute 'set_rx_agc'/
> >>     >          >>             >
> >>     >          >>             > But rfnoc_radio_impl.cc defines it:
> >>     >          >>             >
> >>     >          >>             > /void
> >>     rfnoc_rx_radio_impl::set_agc(const bool
> >>     >         enable,
> >>     >          >>             const size_t chan)
> >>     >          >>             > {
> >>     >          >>             >      return
> >>     d_radio_ref->set_rx_agc(enable, chan);
> >>     >          >>             > }/
> >>     >          >>             >
> >>     >          >>             > Searching the rfnoc_rx_radio_sptr with
> >>     grep
> >>     >         takes me to
> >>     >          >>             "swig" files. I
> >>     >          >>             > have looked at ettus_swig.py and seen
> >>     that the
> >>     >         command
> >>     >          >>             name is set_agc
> >>     >          >>             > instead of set_rx_agc:
> >>     >          >>             >
> >>     >          >>             > /def set_agc(self, enable: "bool
> >>     const", chan:
> >>     >         "size_t
> >>     >          >>             const") -> "void":
> >>     >          >>             >          r"""
> >>     >          >>             >          set_agc(rfnoc_rx_radio self,
> bool
> >>     >         const enable,
> >>     >          >>             size_t const chan)
> >>     >          >>             >          Enable/disable the AGC for
> >>     this RX
> >>     >         radio (if
> >>     >          >>             available)
> >>     >          >>             >          """
> >>     >          >>             >          return
> >>     >         _ettus_swig.rfnoc_rx_radio_set_agc(self,
> >>     >          >>             enable, chan)/
> >>     >          >>             > /
> >>     >          >>             > /
> >>     >          >>             > Changing this in the flowgraph.py seem=
s
> to
> >>     >         work!! Thanks
> >>     >          >>             for the help on
> >>     >          >>             > this! I put this information here just
> >>     in case
> >>     >         someone
> >>     >          >>             is stuck in the
> >>     >          >>             > same point.
> >>     >          >>             >
> >>     >          >>             > By the way, I have read that there are
> >>     several
> >>     >         modes for
> >>     >          >>             AGC
> >>     >          >>             > (fast,slow,hybrid..) I was wondering
> >>     which type is
> >>     >          >>             implemented by
> >>     >          >>             > default and if it is possible to
> >>     change AGC
> >>     >         mode in the
> >>     >          >>             flowgraph.
> >>     >          >>             >
> >>     >          >>             > Kind Regards,
> >>     >          >>             >
> >>     >          >>             > Maria
> >>     >          >>             >
> >>     >          >>             >
> >>     >          >>             > El mi=C3=A9, 10 mar 2021 a las 12:03, =
Maria
> >>     Mu=C3=B1oz
> >>     >          >>             (<mamuki92@gmail.com
> >>     <mailto:mamuki92@gmail.com> <mailto:mamuki92@gmail.com
> >>     <mailto:mamuki92@gmail.com>>
> >>     >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>>
> >>     >          >>             > <mailto:mamuki92@gmail.com
> >>     <mailto:mamuki92@gmail.com>
> >>     >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
> >>     >          >>             <mailto:mamuki92@gmail.com
> >>     <mailto:mamuki92@gmail.com>
> >>     >         <mailto:mamuki92@gmail.com
> >>     <mailto:mamuki92@gmail.com>>>>>) escribi=C3=B3:
> >>     >          >>             >
> >>     >          >>             >     Hi Jules,
> >>     >          >>             >
> >>     >          >>             >     Thank you, I will try it and let
> >>     you know
> >>     >         as soon as
> >>     >          >>             possible.
> >>     >          >>             >
> >>     >          >>             >     By the way, I have checked the
> python
> >>     >          >>             generated using the UHD USRP
> >>     >          >>             >     SOURCE block (instead of the RFNoC
> >>     radio
> >>     >         block) with
> >>     >          >>             AGC active and
> >>     >          >>             >     it generates the set of AGC fine.
> >>     So, as
> >>     >         you said,
> >>     >          >>             it is fixed in
> >>     >          >>             >     gr-uhd but it might still be a bug
> in
> >>     >         gr-ettus.
> >>     >          >>             >
> >>     >          >>             >     Thanks again for the help!
> >>     >          >>             >
> >>     >          >>             >     Kind Regards,
> >>     >          >>             >
> >>     >          >>             >     Maria
> >>     >          >>             >
> >>     >          >>             >     El mi=C3=A9, 10 mar 2021 a las 11:=
25,
> >>     Julian Arnold
> >>     >          >>             >     (<julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>
> >>     >          >>             <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>>
> >>     >          >>             <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>
> >>     >          >>             <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>>>>) escribi=C3=B3:
> >>     >          >>             >
> >>     >          >>             >         Maria,
> >>     >          >>             >
> >>     >          >>             >          >> So, if I understand
> >>     correctly, I
> >>     >         have to put
> >>     >          >>             there also
> >>     >          >>             >         something like
> >>     >          >>             >          >>
> >>     >          >>
> >>     >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)"
> >>     isn't it?
> >>     >          >>             >
> >>     >          >>             >         Exactly! Take a look at [1]
> >>     for the
> >>     >         correct syntax.
> >>     >          >>             >
> >>     >          >>             >         [1]
> >>     >          >>             >
> >>     >          >>
> >>     >
> >>
> https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc4=
971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
> >>     >          >>             >
> >>     >          >>             >         Let me know if that worked out
> >>     for you.
> >>     >          >>             >
> >>     >          >>             >         Cheers,
> >>     >          >>             >         Julian
> >>     >          >>             >
> >>     >          >>             >
> >>     >          >>             >         On 3/10/21 9:59 AM, Maria
> >>     Mu=C3=B1oz wrote:
> >>     >          >>             >          > Hi Julian,
> >>     >          >>             >          >
> >>     >          >>             >          > Thanks for the quick answer=
.
> >>     >          >>             >          >
> >>     >          >>             >          > I think you might be right
> >>     about
> >>     >         the possible
> >>     >          >>             bug turning on
> >>     >          >>             >         the AGC
> >>     >          >>             >          > from GRC. I have checked
> >>     the flow graph
> >>     >          >>             generated and there's no
> >>     >          >>             >          > set_rx_agc enable option (I
> >>     checked
> >>     >         the c++
> >>     >          >>             definition block
> >>     >          >>             >         where this
> >>     >          >>             >          > option did appear but I
> >>     hadn't look
> >>     >         at the
> >>     >          >>             python generated).
> >>     >          >>             >          >
> >>     >          >>             >          > The lines related to the
> >>     radio in my
> >>     >          >>             flowgraph are these:
> >>     >          >>             >          >
> >>     >          >>             >          > /self.ettus_rfnoc_rx_radio_=
0
> =3D
> >>     >          >>             ettus.rfnoc_rx_radio(
> >>     >          >>             >          >
> self.rfnoc_graph,
> >>     >          >>             >          >
> >>     uhd.device_addr(''),
> >>     >          >>             >          >              -1,
> >>     >          >>             >          >              -1)
> >>     >          >>             >          >
> >>     >          >>
> >>      self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
> >>     >          >>             >          >
> >>     >          >>
> >>      self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
> >>     >          >>             >          >
> >>     >          >>
> >>      self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)
> >>     >          >>             >          >
> >>     >          >>
> >>      self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
> >>     >          >>             >          >
> >>     >          >>
> >>     >           self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0=
)
> >>     >          >>             >          >
> >>     >          >>
> >>      self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)
> >>     >          >>             >          >
> >>     >          >>
> >>      self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)/
> >>     >          >>             >          >
> >>     >          >>             >          > So, if I understand
> >>     correctly, I
> >>     >         have to put
> >>     >          >>             there also
> >>     >          >>             >         something like
> >>     >          >>             >          >
> >>     >          >>
> >>     >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)"
> >>     isn't it?
> >>     >          >>             >          >
> >>     >          >>             >          > Kind Regards,
> >>     >          >>             >          >
> >>     >          >>             >          > Maria
> >>     >          >>             >          >
> >>     >          >>             >          > El mi=C3=A9, 10 mar 2021 a =
las
> 9:16,
> >>     >         Julian Arnold
> >>     >          >>             >         (<julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>
> >>     >          >>             <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>>
> >>     >          >>             <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>
> >>     >          >>             <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>>>
> >>     >          >>             >          >
> >>     <mailto:julian@elitecoding.org <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>
> >>     >          >>             <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>>
> >>     >          >>             >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>
> >>     >          >>             <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>
> >>     >         <mailto:julian@elitecoding.org
> >>     <mailto:julian@elitecoding.org>>>>>>) escribi=C3=B3:
> >>     >          >>             >          >
> >>     >          >>             >          >     Maria,
> >>     >          >>             >          >
> >>     >          >>             >          >     I might not be the
> >>     right person
> >>     >         to answer
> >>     >          >>             this, as my
> >>     >          >>             >         experience with
> >>     >          >>             >          >     UHD 4.0 is relatively
> >>     limited
> >>     >         at the moment.
> >>     >          >>             >          >
> >>     >          >>             >          >     However, I cant tell
> >>     you that
> >>     >         the AGC on
> >>     >          >>             B2x0 devices is
> >>     >          >>             >         controlled via
> >>     >          >>             >          >     software (using
> >>     set_rx_agc()).
> >>     >         There is
> >>     >          >>             no need to
> >>     >          >>             >         directly modify the
> >>     >          >>             >          >     state of any pins of
> >>     the FPGA.
> >>     >          >>             >          >
> >>     >          >>             >          >     I vaguely remember that
> >>     there
> >>     >         was a bug
> >>     >          >>             in an earlier
> >>     >          >>             >         version of gr-uhd
> >>     >          >>             >          >     (somewhere in 3.7) that
> >>     made it
> >>     >         difficult
> >>     >          >>             to turn on the
> >>     >          >>             >         AGC using GRC.
> >>     >          >>             >          >     That particular one is
> >>     fixed in
> >>     >         gr-uhd.
> >>     >          >>             Not sure about
> >>     >          >>             >         gr-ettus, though.
> >>     >          >>             >          >
> >>     >          >>             >          >     Maybe try using
> >>     set_rx_agc()
> >>     >         manually in
> >>     >          >>             you flow-graph
> >>     >          >>             >         (*.py) and see
> >>     >          >>             >          >     if that helps.
> >>     >          >>             >          >
> >>     >          >>             >          >     Cheers,
> >>     >          >>             >          >     Julian
> >>     >          >>             >          >
> >>     >          >>             >          >     On 3/9/21 5:11 PM,
> >>     Maria Mu=C3=B1oz via
> >>     >          >>             USRP-users wrote:
> >>     >          >>             >          >      > Hi all,
> >>     >          >>             >          >      >
> >>     >          >>             >          >      > I was wondering if i=
t
> is
> >>     >         possible to
> >>     >          >>             enable AGC from
> >>     >          >>             >         the RFNoC radio
> >>     >          >>             >          >      > block in GNURadio. I
> >>     use UHD 4.0
> >>     >          >>             version and GNURadio
> >>     >          >>             >         3.8 with
> >>     >          >>             >          >     gr-ettus.
> >>     >          >>             >          >      >
> >>     >          >>             >          >      > I see that the RFNoC
> Rx
> >>     >         radio block has an
> >>     >          >>             >         enable/disable/default
> >>     >          >>             >          >     AGC
> >>     >          >>             >          >      > option in the
> >>     GNURadio block
> >>     >         which I
> >>     >          >>             assume calls the
> >>     >          >>             >         UHD function
> >>     >          >>             >          >      > "set_rx_agc"
> >>     >          >>             >          >      >
> >>     >          >>             >          >
> >>     >          >>             >
> >>     >          >>
> >>     >
> >>       (
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abdab=
1f6c3775a9071b15c9805f866486
> )
> >>     >          >>             >          >      >
> >>     >          >>             >          >      > I have also checked
> >>     on the
> >>     >         FPGA side
> >>     >          >>             that there is a
> >>     >          >>             >         pin from
> >>     >          >>             >          >     FPGA to
> >>     >          >>             >          >      > AD9361
> >>     called XCVR_ENA_AGC
> >>     >         which is
> >>     >          >>             set always to 1 on
> >>     >          >>             >         the top
> >>     >          >>             >          >     level of
> >>     >          >>             >          >      > the FPGA image (see
> >>     attached
> >>     >         file
> >>     >          >>             "e320.v", line 872).
> >>     >          >>             >         This pin,
> >>     >          >>             >          >      > according to
> >>     >          >>             >          >      >
> >>     >          >>             >          >
> >>     >          >>             >
> >>     >          >>
> >>     >
> >>
> https://www.analog.com/media/en/technical-documentation/data-sheets/AD936=
1.pdf
> >>     >          >>             >          >
> >>     >          >>             >          >      > is the "Manual
> >>     Control Input for
> >>     >          >>             Automatic Gain
> >>     >          >>             >         Control (AGC)".
> >>     >          >>             >          >      > Must be this pin set
> >>     to 0 to
> >>     >         have AGC
> >>     >          >>             working?
> >>     >          >>             >          >      > If not, how can
> >>     I get AGC
> >>     >         working?
> >>     >          >>             I've made some tests
> >>     >          >>             >          >      > enabling/disabling
> this
> >>     >         option but I
> >>     >          >>             do not see any
> >>     >          >>             >         changes
> >>     >          >>             >          >     between the
> >>     >          >>             >          >      > waveforms received.
> >>     >          >>             >          >      >
> >>     >          >>             >          >      > Any help would be
> >>     appreciated.
> >>     >          >>             >          >      >
> >>     >          >>             >          >      > Kind Regards,
> >>     >          >>             >          >      >
> >>     >          >>             >          >      > Maria
> >>     >          >>             >          >      >
> >>     >          >>             >          >      >
> >>     >          >>
> >>      _______________________________________________
> >>     >          >>             >          >      > USRP-users mailing
> list
> >>     >          >>             >          >      >
> >>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> >>     >         <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>>
> >>     >          >>             <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>
> >>     >         <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>>>
> >>     >          >>             >
> >>      <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>
> >>     >         <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>>
> >>     >          >>             <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>
> >>     >         <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>>>>
> >>     >          >>             >
> >>      <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>
> >>     >         <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>>
> >>     >          >>             <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>
> >>     >         <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>>>
> >>     >          >>             >
> >>      <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>
> >>     >         <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>>
> >>     >          >>             <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>
> >>     >         <mailto:USRP-users@lists.ettus.com
> >>     <mailto:USRP-users@lists.ettus.com>>>>>
> >>     >          >>             >          >      >
> >>     >          >>             >
> >>     >          >>
> >>     >
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>     >          >>             >          >      >
> >>     >          >>             >          >
> >>     >          >>             >
> >>     >          >>
> >>     >
> >>
> >
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> >
>

--0000000000007f66a005bfc1d714
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgSnVsaWFuLDxkaXY+PGJyPjwvZGl2PjxkaXY+VGhhbmtzIGZvciB0
aGUgYW5zd2VyLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+WWVzLCBJJiMzOTttIHdvcmtpbmcg
d2l0aCB0aGUgRTMyMC4gSSYjMzk7bGwgdHJ5IHRvIGZvcmNlIHRoZSAmcXVvdDtfc2V0dXBfYWdj
JnF1b3Q7IGNvZGUgYXMgeW91IHNhaWQgYW5kIGRlYnVnIGFnYWluIHRvIHNlZSBpZiBob3BlZnVs
bHksIEkgZ2V0IHRoZSBBR0MgY29uZmlndXJlZC7CoDwvZGl2PjxkaXY+SWYgc29tZW9uZSBoYXMg
Y29uZmlndXJlZCB0aGUgRTMyMCBiZWZvcmUgSSB3aWxsIGFsc28gYXBwcmVjaWF0ZSBhbnkgaGVs
cCBvbiB0aGlzLjwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+VGhhbmtzIGFnYWluIGZvciB0aGUg
aGVscDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+S2luZCBSZWdhcmRzLDwvZGl2PjxkaXY+PGJy
PjwvZGl2PjxkaXY+TWFyaWE8L2Rpdj48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUi
PjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5FbCBsdW4sIDEyIGFiciAyMDIxIGEg
bGFzIDk6NDMsIEp1bGlhbiBBcm5vbGQgKCZsdDs8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRl
Y29kaW5nLm9yZyI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7KSBlc2NyaWJpw7M6PGJy
PjwvZGl2PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHgg
MHB4IDBweCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRk
aW5nLWxlZnQ6MWV4Ij5NYXJpYSw8YnI+DQo8YnI+DQppdCBqdXN0IGRhd25lZCBvbiBtZSwgdGhh
dCB5b3UgYXJlIHdvcmtpbmcgd2l0aCBhbiBlMzIwIG5vdCBhbiBlMzEwLjxicj4NCjxicj4NCkFs
dGhvdWdoIG1vc3Qgb2Ygd2hhdCBJIHNhaWQgc2hvdWxkIHN0aWxsIGFwcGx5IChlc3BlY2lhbGx5
IGVydmVyeXRoaW5nIDxicj4NCnJlbGF0ZWQgdG8gdGhlIChBRDkzNngpKSB0aGluZ3MgbWlnaHQg
YmUgYSBsaXR0bGUgYml0IGRpZmZlcmVudC4gSSYjMzk7bSA8YnI+DQplcGVjaWFsbHkgdW5zdXJl
IGFib3V0IHRoZSBSUEMgcGFydCwgaGVyZS48YnI+DQo8YnI+DQpNYXliZSBzb21lb25lIGVsc2Ug
Y2FuIGNoaW1lIGluIHJlZ2FyZGluZyB0aGlzIGFzcGVjdC48YnI+DQo8YnI+DQpIb3dldmVyLCBJ
IHRoaW5rIHRoYXQgYF9zZXR1cF9nYWluX2NvbnRyb2woZmFsc2UpYCBzaG91bGQgcnVuIHJlZ2Fy
ZGxlc3MgPGJyPg0KZHVyaW5nIGRldmljZSBpbml0LiBTbyB5b3Ugc2hvdWxkIHNlZSBzb21lIGxv
Z2dpbmcgb3V0cHV0IHRoZXJlLjxicj4NCjxicj4NCklmIF9zZXR1cF9hZ2MoKSBpcyBub3QgYmVl
aW5nIGNhbGxlZCB5b3UgY291bGQgdHJ5IHRvIGZvcmNlIHRoZSBBR0Mgb24sIDxicj4NCmp1c3Qg
Zm9yIHZlcmlmaWNhdGlvbiBwdXJwb3NlcywgYnkgY2hhbmdpbmcgYF9zZXR1cF9nYWluX2NvbnRy
b2woZmFsc2UpYCA8YnI+DQp0byBgX3NldHVwX2dhaW5fY29udHJvbCh0cnVlKWAgaW4gYGluaXRp
YWxpemUoKWAgYW5kIGBzZXRfY2xvY2tfcmF0ZSgpYC48YnI+DQo8YnI+DQpDaGVlcnMsPGJyPg0K
SnVsaWFuPGJyPg0KPGJyPg0KT24gNC85LzIxIDM6MzQgUE0sIEp1bGlhbiBBcm5vbGQgd3JvdGU6
PGJyPg0KJmd0OyBNYXJpYSw8YnI+DQomZ3Q7IDxicj4NCiZndDsgdGhlIHByb3BlcnRpZXMgeW91
IHdhbnQgdG8gY2hhbmdlIChtaW4vbWF4IHRocmVzaG9sZHMpIGFyZSBub3QgZXhwb3NlZCA8YnI+
DQomZ3Q7IHZpYSB0aGUgcHJvcGVydHkgdHJlZS4gT25seSB0aGUgbW9kZSBpcyAoc2xvdyBvciBm
YXN0KS48YnI+DQomZ3Q7IEhvd2V2ZXIsIHRoZSBzYW1lIGNvZGUgdGhhdCBjb25maWd1cmVzIHRo
ZSBBR0MgdGhhdCB3b3JrZWQgZm9yIG1lIG9uIHRoZSA8YnI+DQomZ3Q7IEIyMTAgc2hvdWxkIHJ1
biBvbiB0aGUgRTMxMC4gVGhlIFJQQyBjbGllbnQgc2hvdWxkIG5vdCBiZSBpbnZvbHZlZCBpbiA8
YnI+DQomZ3Q7IHRoYXQgY2FzZSAoYWx0aG91Z2ggSeKAmW0gbm90IHN1cmUgYWJvdXQgdGhhdCku
PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IEhhdmUgeW91IHRyaWVkIGFwcGx5aW5nIG15IHBhdGNoIGRp
cmVjdGx5IChJIGhhZCBzbGlnaHRseSBtb2RpZmllZCA8YnI+DQomZ3Q7IHJlZ2lzdGVyIHZhbHVl
cykuPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IEFsc28sIGNvdWxkIHlvdSB0cnkgcnVubmluZyB5b3Vy
IGNvZGUgZGlyZWN0bHkgb24gdGhlIEUzMTAgKGJ5cGFzc2luZyA8YnI+DQomZ3Q7IG5ldHdvcmtl
ZC1tb2RlKSB0byBzZWUgaWYgdGhhdCBtYWtlcyBhIGRpZmZlcmVuY2U/PGJyPg0KJmd0OyA8YnI+
DQomZ3Q7IENoZWVycyw8YnI+DQomZ3Q7IEp1bGlhbjxicj4NCiZndDsgPGJyPg0KJmd0OyA8YnI+
DQomZ3Q7IEp1bGlhbiBBcm5vbGQsIE0uU2M8YnI+DQomZ3Q7IDxicj4NCiZndDsmZ3Q7IEFtIDA5
LjA0LjIwMjEgdW0gMDk6NDggc2NocmllYiBNYXJpYSBNdcOxb3ogJmx0OzxhIGhyZWY9Im1haWx0
bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208
L2E+Jmd0Ozo8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7IO+7vzxicj4NCiZndDsmZ3Q7IEhp
IEp1bGlhbiw8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7IFNvcnJ5IGZvciB0aGUgbGF0ZSBy
ZXBseSBhbmQgdGhhbmtzIGZvciB0aGUgYW5zd2VyLjxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZn
dDsgSSBoYXZlIGJlZW4gZGVidWdnaW5nIHRoZSBjb25maWd1cmF0aW9uIHByaW50aW5nIHRoZSBl
bnRyaWVzIG9mIDxicj4NCiZndDsmZ3Q7ICZxdW90O3NldF9hZ2MmcXVvdDsgdGhhdCBJIGhhdmUg
Zm91bmQgb24gY3BwL3B5IGZpbGVzIGluIHRoZSB1aGQgZHJpdmVyIGFuZCA8YnI+DQomZ3Q7Jmd0
OyBldHR1cyByZXBvc2l0b3JpZXMsIGFuZCBJIGNhbiBjb25maXJtIHRoYXQgdGhlIGNvZGUgaXMg
bm90IGdldHRpbmcgdG8gPGJyPg0KJmd0OyZndDsgdGhlIGFkOTM2MV9kZXZpY2UuY3BwIGFzIEkg
dGhvdWdodCBpbiB0aGUgYmVnaW5uaW5nLjxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDsgSWYg
SSBnbyB0aHJvdWdoIHRoZSBjb2RlIGZyb20gbXkgcHl0aG9uIHNjcmlwdCB0byB0aGUgPGJyPg0K
Jmd0OyZndDsgYWQ5MzYxX2RldmljZS5jcHAgY29uZmlndXJhdGlvbiBmaWxlIEkgc2VlIHRoZSBm
b2xsb3dpbmc6PGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgKiBUaGUgcHl0aG9uIHNj
cmlwdHMgY2FsbHMgZm9yIGV0dHVzLnJmbm9jX3J4X3JhZGlvLnNldF9hZ2MgbWV0aG9kLDxicj4N
CiZndDsmZ3Q7wqAgwqAgwqB3aGljaCBpcyBmb3VuZCBpbiBldHR1cyByZXBvc2l0b3J5IChmb3Ig
dXNycF9zb3VyY2UgaXMgb248YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgZ251cmFkaW8vdWhkIGxpYik8
YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAqIFRoZSByZm5vY19yeF9yYWRpbyBjbGFz
cyBpcyBkZWZpbmVkIGluPGJyPg0KJmd0OyZndDvCoCDCoCDCoGdyLWV0dHVzL2xpYi9yZm5vY19y
eF9yYWRpb19pbXBsLmgsIHdoZXJlIHRoZXJlIGlzIGFsc28gYSBwb2ludGVyPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoHRvIHRoZSByYWRpb19jb250cm9sIGNsYXNzIGRlZmluZWQ6PGJyPg0KJmd0OyZn
dDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgL2NsYXNzIHJmbm9jX3J4X3JhZGlvX2ltcGwg
OiBwdWJsaWMgcmZub2NfcnhfcmFkaW88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgezxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBwdWJsaWM6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDC
oMKgIMKgIHJmbm9jX3J4X3JhZGlvX2ltcGwoOjp1aGQ6Oi8vcmZub2M6Om5vY19ibG9ja19iYXNl
OjpzcHRyPGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoGJsb2NrX3JlZik7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoMKgIMKgIH5yZm5vY19yeF9yYWRpb19pbXBsKCk7PGJyPg0KJmd0OyZn
dDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgLyoqKiBBUEk8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLy8qKioqKioqKioq
KioqKioqKioqKioqKioqKioqKiovLyoqKioqLzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDC
oCDCoCBkb3VibGUgc2V0X3JhdGUoY29uc3QgZG91YmxlIHJhdGUpOzxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqDCoCDCoCB2b2lkIHNldF9hbnRlbm5hKGNvbnN0IHN0ZDo6c3RyaW5nJmFtcDsg
YW50ZW5uYSwgY29uc3Qgc2l6ZV90PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoGNoYW4pOzxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCBkb3VibGUgc2V0X2ZyZXF1ZW5jeShjb25z
dCBkb3VibGUgZnJlcXVlbmN5LCBjb25zdCBzaXplX3Q8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgY2hhbik7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIHZvaWQgc2V0X3R1bmVf
YXJncyhjb25zdCA6OnVoZDo6ZGV2aWNlX2FkZHJfdCZhbXA7IGFyZ3MsIGNvbnN0PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCDCoCDCoHNpemVfdCBjaGFuKTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgwqAgwqAgZG91YmxlIHNldF9nYWluKGNvbnN0IGRvdWJsZSBnYWluLCBjb25zdCBzaXplX3Qg
Y2hhbik7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKgIMKgIGRvdWJsZSBzZXRfZ2Fpbihj
b25zdCBkb3VibGUgZ2FpbiwgY29uc3Qgc3RkOjpzdHJpbmcmYW1wOzxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqBuYW1lLCBjb25zdCBzaXplX3QgY2hhbik7PGJyPg0KJmd0OyZndDvCoCDCoCDC
oCDCoCDCoMKgIMKgIHZvaWQgc2V0X2FnYyhjb25zdCBib29sIGVuYWJsZSwgY29uc3Qgc2l6ZV90
IGNoYW4pOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB2b2lkIHNldF9nYWluX3By
b2ZpbGUoY29uc3Qgc3RkOjpzdHJpbmcmYW1wOyBwcm9maWxlLCBjb25zdDxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqBzaXplX3QgY2hhbik7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKg
IMKgIGRvdWJsZSBzZXRfYmFuZHdpZHRoKGNvbnN0IGRvdWJsZSBiYW5kd2lkdGgsIGNvbnN0IHNp
emVfdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBjaGFuKTs8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgwqAgwqAgdm9pZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCBzZXRf
bG9fc291cmNlKGNvbnN0IHN0ZDo6c3RyaW5nJmFtcDsgc291cmNlLCBjb25zdDxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqBzdGQ6OnN0cmluZyZhbXA7IG5hbWUsIGNvbnN0IHNpemVfdCBjaGFu
KTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgdm9pZDxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqDCoCDCoCBzZXRfbG9fZXhwb3J0X2VuYWJsZWQoY29uc3QgYm9vbCBlbmFibGVk
LCBjb25zdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBzdGQ6OnN0cmluZyZhbXA7IG5hbWUs
IGNvbnN0IHNpemVfdCBjaGFuKTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgZG91
YmxlIHNldF9sb19mcmVxKGNvbnN0IGRvdWJsZSBmcmVxLCBjb25zdCBzdGQ6OnN0cmluZyZhbXA7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoG5hbWUsIGNvbnN0IHNpemVfdCBjaGFuKTs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgdm9pZCBzZXRfZGNfb2Zmc2V0KGNvbnN0IGJv
b2wgZW5hYmxlLCBjb25zdCBzaXplX3QgY2hhbik7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDC
oMKgIMKgIHZvaWQgc2V0X2RjX29mZnNldChjb25zdCBzdGQ6OmNvbXBsZXgmbHQ7ZG91YmxlJmd0
OyZhbXA7IG9mZnNldCw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgY29uc3Qgc2l6ZV90IGNo
YW4pOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqDCoCDCoCB2b2lkIHNldF9pcV9iYWxhbmNl
KGNvbnN0IGJvb2wgZW5hYmxlLCBjb25zdCBzaXplX3QgY2hhbik7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCDCoCDCoMKgIMKgIHZvaWQgc2V0X2lxX2JhbGFuY2UoY29uc3Qgc3RkOjpjb21wbGV4Jmx0
O2RvdWJsZSZndDsmYW1wOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBjb3JyZWN0aW9uLCBj
b25zdCBzaXplX3QgY2hhbik7PGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgcHJpdmF0ZTo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgwqAgwqAgOjp1aGQ6OnJmbm9j
OjpyYWRpb19jb250cm9sOjovL3NwdHIgZF9yYWRpb19yZWY7PGJyPg0KJmd0OyZndDvCoCDCoCDC
oCDCoCDCoH07Lzxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCogSW4gZ3ItZXR0dXMv
bGliL3Jmbm9jX3J4X3JhZGlvX2ltcGwuY3BwIHdoZW4gc2V0X2FnYyBjb21tYW5kIGlzPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoHJlY2VpdmVkLCBpdCByZXR1cm5zIGEgY2FsbCB0byB0aGUgcG9pbnRl
ciBJIG1lbnRpb24gYmVmb3JlLCBhbmQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgdGhlcmVmb3JlLCB0
byB0aGUgcmFkaW9fY29udHJvbCBjbGFzczo8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAvdm9pZCByZm5vY19yeF9yYWRpb19pbXBsOjpzZXRfYWdjKC8vY29uc3QgYm9v
bCBlbmFibGUsIGNvbnN0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoHNpemVfdCBjaGFuKTxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqB7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoMKg
IMKgIHJldHVybiBkX3JhZGlvX3JlZi0mZ3Q7c2V0X3J4X2FnYygvL2VuYWJsZSwgY2hhbik7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoH0vPGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8Kg
IMKgKiBUaGUgcmFkaW9fY29udHJvbCBjbGFzcyBpcyBmb3VuZCBpbiB0aGUgVUhEIGRyaXZlciBy
ZXBvc2l0b3J5IGluPGJyPg0KJmd0OyZndDvCoCDCoCDCoHVoZC9ob3N0L2luY2x1ZGUvdWhkL3Jm
bm9jL3JhZGlvX2NvbnRyb2wuaHBwIHdoaWNoIGlzIHZpcnR1YWxseTxicj4NCiZndDsmZ3Q7wqAg
wqAgwqBpbXBsZW1lbnRlZCBhcyByYWRpb19jb250cm9sX2ltcGwgY2xhc3MgaW48YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgZTN4eF9yYWRpb19jb250cm9sX2ltcGwuY3BwIChob3N0L2xpYi91c3JwL2Jv
YXJkL2UzeHgpPGJyPg0KJmd0OyZndDvCoCDCoCogVGhpcyBmaWxlIGNhbGxzIHRvIHRoZSBhZDkz
NjFfY3RybCBjbGFzcyB3aGljaCBpcyBpbXBsZW1lbnRlZCBpbjxicj4NCiZndDsmZ3Q7wqAgwqAg
wqBlM3h4X2FkOTM2MV9pZmFjZS5jcHAgKGhvc3QvbGliL3VzcnAvYm9hcmQvZTN4eCk8YnI+DQom
Z3Q7Jmd0O8KgIMKgKiBBdCB0aGlzIHBvaW50LCB0aGVyZSBpcyBhIGNhbGwgZm9yIHRoZSBycGNf
Y2xpZW50IHdoZXJlIEkgZ2V0IGtpbmQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgb2YgbG9zdCBhYm91
dCBob3cgdG8gY2hhbmdlIHRoZSByZWdpc3RlcnMgdGhpcyB3YXk6PGJyPg0KJmd0OyZndDs8YnI+
DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAvdm9pZCBzZXRfYWdjKGNvbnN0
IHN0ZDo6c3RyaW5nJmFtcDsgd2hpY2gsIGJvb2wgZW5hYmxlKTxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqB7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCDCoCDCoF9ycGNjLSZndDtyZXF1ZXN0X3dp
dGhfdG9rZW4mbHQ7dm9pZCZndDsodGhpcy0mZ3Q7X3JwY19wcmVmaXggKyAmcXVvdDtzZXRfYWdj
JnF1b3Q7LDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAgwqAgwqB3aGljaCwgZW5hYmxlKTs8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgfS88YnI+DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7PGJyPg0K
Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0OyBUbyBiZSBicmllZjo8YnI+DQomZ3Q7Jmd0Ozxicj4NCiZn
dDsmZ3Q7wqAgwqAqIFdoZW4gZGVidWdnaW5nIEkgY2FuJiMzOTt0IHNlZSB0aGF0IG15IGNvZGUg
Z2V0cyB0byB0aGUgb25seTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBjb25maWd1cmF0aW9uIGZpbGUg
SSBmb3VuZCB3aGljaCBpcyB0aGUgYWQ5MzYxX2RldmljZS5jcHA8YnI+DQomZ3Q7Jmd0O8KgIMKg
KiBUaGUgc2V0X2FnYyBjb21tYW5kIHNlZW1zIHRvIGJlIG1hbmFnZSB0aHJvdWdoIHRoZSBycGNf
Y2xpZW50IChJPGJyPg0KJmd0OyZndDvCoCDCoCDCoHRoaW5rIHRoaXMgaXMgcmVsYXRlZCB0byB0
aGUgbW9kdWxlIHBlcmlwaGVyYWwgbWFuYWdlciB3aGljaCBpcyBhPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZxdW90O2xheWVyIG9mIGNvbnRyb2wgdGhhdCBVSEQgdXNlcyB0byBhY2Nlc3MsIGNvbmZp
Z3VyZSBhbmQgY29udHJvbDxicj4NCiZndDsmZ3Q7wqAgwqAgwqB0aGUgaGFyZHdhcmUmcXVvdDss
IDxhIGhyZWY9Imh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX21wbS5odG1sIiBy
ZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2ZpbGVzLmV0dHVzLmNvbS9t
YW51YWwvcGFnZV9tcG0uaHRtbDwvYT4pPGJyPg0KJmd0OyZndDvCoCDCoCogSW5zaWRlIHRoZSBj
b2RlLCBpbiBtdWx0aV91c3JwIGZpbGVzIHRoZXJlIGlzIGEgY29tbWVudCB0aGF0IHRoZTxicj4N
CiZndDsmZ3Q7wqAgwqAgwqBzcGVjaWZpYyBjb25maWd1cmF0aW9uIG9mIHRoZSBBR0MgaXMgc2V0
IGluIHRoZSBwcm9wZXJ0eV90cmVlIGJ1dDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBJIGRvbiYjMzk7
dCBrbm93IGhvdyB0byB3cml0ZSB0aGUgY29uZmlndXJhdGlvbiByZWdpc3RlcnMgb2YgdGhlIGFn
Yzxicj4NCiZndDsmZ3Q7wqAgwqAgwqB0aHJvdWdoIHRoZSBwcm9wZXJ0eV90cmVlLjxicj4NCiZn
dDsmZ3Q7PGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0OyBTbyBteSBxdWVzdGlvbnMgaGVyZSBh
cmU6PGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIDEuIEhvdyBjYW4gSSBzZXQgdGhlIGNv
bmZpZ3VyYXRpb24gcmVnaXN0ZXJzIG9mIHRoZSBBR0MsIHRocm91Z2ggdGhlPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoE1QTSBvciB0aGUgcHJvcGVydHkgdHJlZT88YnI+DQomZ3Q7Jmd0O8KgIDIuIEFy
ZSB0aGVyZSBleGFtcGxlcyBvbiBob3cgSSBjYW4gc2V0IHRoZXNlIHJlZ2lzdGVycyB0aHJvdWdo
IHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBNUE0gb3IgdGhlIHByb3BlcnR5X3RyZWU/IDxicj4N
CiZndDsmZ3Q7PGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0OyBLaW5kIFJlZ2FyZHMsPGJyPg0K
Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0OyBNYXJpYTxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDsg
RWwgbWnDqSwgMjQgbWFyIDIwMjEgYSBsYXMgMTE6MjAsIEp1bGlhbiBBcm5vbGQgPGJyPg0KJmd0
OyZndDsgKCZsdDs8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0
PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+ICZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxp
dGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7KSBlc2NyaWJpw7M6PGJyPg0KJmd0OyZndDs8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgTWFyaWEsPGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
dGhhdCBzb3VuZHMgYWJvdXQgcmlnaHQhPGJyPg0KJmd0OyZndDvCoCDCoCDCoEhvd2V2ZXIsIHRv
IG1ha2UgYWJzb2x1dGVseSBzdXJlIEdOVSBSYWRpbyBwaWNrcyB1cCB0aGUgbW9kaWZpZWQ8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgbGlidWhkPGJyPg0KJmd0OyZndDvCoCDCoCDCoHlvdSBjb3VsZCBh
ZGQgYSBwcmludCBzdGF0ZW1lbnQgc29tZXdoZXJlIGluIHlvdXIgVUhEIGNvZGUuPGJyPg0KJmd0
OyZndDvCoCDCoCDCoFlvdSBjb3VsZCBhbHNvIGNvbXBhcmUgeW91ciBVSEQgaW5zdGFsbCBwcmVm
aXggdG8gdGhlIHBhdGggZ3ItdWhkPGJyPg0KJmd0OyZndDvCoCDCoCDCoHVzZXMgZm9yIGxpbmtp
bmcgbGlidWhkLjxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoEJlbG93IGlzIHRo
ZSBwYXRjaCBJIHVzZWQgZm9yIG15IHRlc3RzOjxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoGRpZmYgLS1naXQgYS9ob3N0L2xpYi91c3JwL2NvbW1vbi9hZDkzNjFfZHJpdmVyL2Fk
OTM2MV9kZXZpY2UuY3BwPGJyPg0KJmd0OyZndDvCoCDCoCDCoGIvaG9zdC9saWIvdXNycC9jb21t
b24vYWQ5MzYxX2RyaXZlci9hZDkzNjFfZGV2aWNlLmNwcDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBp
bmRleCA5ZTA4ODg3MWQuLjBlNWJjODZjNSAxMDA2NDQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgLS0t
IGEvaG9zdC9saWIvdXNycC9jb21tb24vYWQ5MzYxX2RyaXZlci9hZDkzNjFfZGV2aWNlLmNwcDxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqArKysgYi9ob3N0L2xpYi91c3JwL2NvbW1vbi9hZDkzNjFfZHJp
dmVyL2FkOTM2MV9kZXZpY2UuY3BwPGJyPg0KJmd0OyZndDvCoCDCoCDCoEBAIC0xMDg5LDcgKzEw
ODksNyBAQCB2b2lkPGJyPg0KJmd0OyZndDvCoCDCoCDCoGFkOTM2MV9kZXZpY2VfdDo6X3NldHVw
X2dhaW5fY29udHJvbChib29sIGFnYyk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAg
wqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDBGRCwgMHg0Qyk7IC8vIE1heCBGdWxsL0xNVCBHYWlu
PGJyPg0KJmd0OyZndDvCoCDCoCDCoFRhYmxlIEluZGV4PGJyPg0KJmd0OyZndDvCoCDCoCDCoMKg
IMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgwRkUsIDB4NDQpOyAvLyBEZWNyIFN0
ZXAgU2l6ZSwgUGVhazxicj4NCiZndDsmZ3Q7wqAgwqAgwqBPdmVybG9hZCBUaW1lPGJyPg0KJmd0
OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMDAsIDB4
NkYpOyAvLyBNYXggRGlnaXRhbCBHYWluPGJyPg0KJmd0OyZndDvCoCDCoCDCoC3CoCDCoCDCoCDC
oCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTAxLCAweDBBKTsgLy8gTWF4IERpZ2l0YWwgR2Fpbjxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqArwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEw
MSwgMHgwMik7IC8vIE1heCBEaWdpdGFsIEdhaW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAg
wqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEwMywgMHgwOCk7IC8vIE1heCBEaWdpdGFs
IEdhaW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtw
b2tlOCgweDEwNCwgMHgyRik7IC8vIEFEQyBTbWFsbCBPdmVybG9hZDxicj4NCiZndDsmZ3Q7wqAg
wqAgwqBUaHJlc2hvbGQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lm
YWNlLSZndDtwb2tlOCgweDEwNSwgMHgzQSk7IC8vIEFEQyBMYXJnZSBPdmVybG9hZDxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqBUaHJlc2hvbGQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgQEAgLTEwOTgsMTQg
KzEwOTgsMTQgQEAgdm9pZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBhZDkzNjFfZGV2aWNlX3Q6Ol9z
ZXR1cF9nYWluX2NvbnRyb2woYm9vbCBhZ2MpPGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKg
IMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMDgsIDB4MzEpOzxicj4NCiZndDsmZ3Q7wqAg
wqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTExLCAweDBBKTs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEx
QSwgMHgxQyk7PGJyPg0KJmd0OyZndDvCoCDCoCDCoC3CoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0
O3Bva2U4KDB4MTIwLCAweDBDKTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgK8KgIMKgIMKgIMKgIF9p
b19pZmFjZS0mZ3Q7cG9rZTgoMHgxMjAsIDB4MDQpOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqDCoCDC
oCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTIxLCAweDQ0KTs8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEyMiwgMHg0NCk7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgo
MHgxMjMsIDB4MTEpOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqDCoCDCoCDCoCDCoCDCoCBfaW9faWZh
Y2UtJmd0O3Bva2U4KDB4MTI0LCAweEY1KTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAg
wqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEyNSwgMHgzQik7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMjgsIDB4MDMpOzxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAtwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEyOSwg
MHg1Nik7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCvCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bv
a2U4KDB4MTI5LCAweDExKTs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgwqAgwqAgwqAgwqAgwqAgX2lv
X2lmYWNlLSZndDtwb2tlOCgweDEyQSwgMHgyMik7PGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgIMKg
IMKgIH0gZWxzZSB7PGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgIMKgIMKgIMKgIMKgIF9pb19pZmFj
ZS0mZ3Q7cG9rZTgoMHgwRkEsIDB4RTApOyAvLyBHYWluIENvbnRyb2wgTW9kZSBTZWxlY3Q8YnI+
DQomZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoENoZWVycyw8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgSnVsaWFuPGJyPg0KJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgT24gMy8yNC8yMSA5OjU5IEFNLCBNYXJpYSBNdcOxb3ogd3JvdGU6PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDsgSGkgSnVsaWFuLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDsgSSBoYXZlIHRoZSBjaGFuY2UgdG8gdGVzdCB0aGUgQUdDIHdpdGgg
YSBCMjEwIGFuZCBwZXJmb3JtIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBzYW1lIGdyYXBoPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDsgYXMgeW91IHNlbmQgbWUgYnV0IEkgYW0gdW5hYmxlIHRv
IHNlZSB3aGF0IHlvdSBzYXcgc28gSSB0aGluayBJJiMzOTttPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDsgbWlzc2luZyBzb21ldGhpbmcuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDsgSSBhbHNv
IGhhdmUgVUhEIDQuMCBhbmQgR05VUmFkaW8gMy44IChpbnN0YWxsZWQgYnkgc291cmNlKS48YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IFRoZSBzdGVw
cyBJIHRha2UgYXJlIHRoZXNlOjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCogRmlyc3QsIEkgY2hhbmdlIHRoZSBhZDkzNjFfZGV2aWNlLmNw
cCB0aGF0IGlzIGluIHVoZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqByZXBvc2l0b3J5IGluPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoC8vdWhkL2hvc3QvbGliL3VzcnAvY29tbW9uL2Fk
OTM2MV9kcml2ZXIvYWQ5MzYxX2RldmljZS5jcHAsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoHJlZ2lzdGVycyAweDEwMSwgMHgxMjAsIDB4MTI5LCAweDEyMyBhbmQgMHgxMkEuLzxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAqIFRoZW4sIEkgZG8gJnF1b3Q7bWFrZSZxdW90
OyBhbmQgJnF1b3Q7bWFrZSBpbnN0YWxsJnF1b3Q7IHRvIGNvbXBpbGUgdGhlIGNoYW5nZXMgaW48
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgYnVpbGQtaG9zdCBmb2xkZXIuPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCogQWZ0ZXLCoHRoYXQsIEkgZ2VuZXJhdGUgdGhlIHB5
dGhvbiBzY3JpcHQgZm9yIHRoZSBHUkMgZmxvdzxicj4NCiZndDsmZ3Q7wqAgwqAgwqBncmFwaCBh
bmQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgbW92ZSB0aGUgJnF1b3Q7c2V0X2Fn
YyZxdW90OyBjb21tYW5kIGFmdGVyIHRoZSAmcXVvdDtzZXRfcmF0ZSZxdW90OyBvbmUuPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCogRmluYWxseSwgSSBydW4gdGhlIHB5dGhvbi48YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IEkgY2FuJiMz
OTt0IHNlZSBteSB3YXZlZm9ybSBiZXR3ZWVuIHRoZSB2YWx1ZXMgSSBzZXQuIElzIHRoZXJlPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoHNvbWV0aGluZzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IHdy
b25nIHdpdGggdGhvc2Ugc3RlcHM/IERpZCB5b3UgZG8gYW55dGhpbmcgZWxzZT88YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IEtpbmfCoFJlZ2FyZHMs
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0OyBNYXJp
YTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDsgLzxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IC88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7IEVsIG1hciwgMjMgbWFyIDIwMjEgYSBsYXMgOToyMywgTWFy
aWEgTXXDsW96ICgmbHQ7PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0
PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFu
ayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0OyAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2Js
YW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1h
bXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4m
Z3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqBIaSBKdWxpYW4sPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgVGhhbmtzIGZvciB0aGUgY2hl
Y2tpbmchPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgSSBoYXZlIGFsc28gY2hlY2tlZCBteSBncmFwaCBhbmQgc2FtcF9yYXRlIGlzIHNl
dHRpbmcgZmlyc3QsPGJyPg0KJmd0OyZndDvCoCDCoCDCoHNvIEkmIzM5O2xsPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoHRyeSB0byB0ZXN0IGl0IHdpdGggYSBzaW5lIHdhdmVmb3Jt
IGFzIHlvdSBzdWdnZXN0ZWQgYW5kIHNlZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBpZiB0aGF0PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoHdvcmtzLiBJZiBub3QsIG1heWJlIGlzIGFu
IFJGTm9DL2dyLWV0dHVzIHByb2JsZW0uIEkmIzM5O2xsIHB1dDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqBhbiBpc3N1ZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqBpbiB0aGUgZ3ItZXR0
dXMgcmVwb3NpdG9yeSBpbiB0aGF0IGNhc2UuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgVGhhbmtzIGFnYWluIGZvciB5b3VyIGhlbHAu
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgS2luZCBSZWdhcmRzLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoE1hcmlhLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoEVsIG1hciwgMjMgbWFyIDIwMjEgYSBsYXMgMDoz
NiwgSnVsaWFuIEFybm9sZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAoJmx0Ozxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFu
QGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8
L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpq
dWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5n
Lm9yZzwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9y
ZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7
KTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBlc2NyaWJpw7M6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgTWFyaWEsPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
SSBjb3VsZG4mIzM5O3QgcmVzaXN0IHRyeWluZyB0aGlzIG15c2VsZiwgYXMgeW91cjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqBtb2RpZmljYXRpb25zIHNlZW1lZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqByZWFzb25hYmxlLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoFNvIEkgZGlkIHNldCB1cCBhIHNp
bXBsZSB0ZXN0IHdpdGggYSBiMjEwIGNvbm5lY3RlZCB0bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqBt
eSBzaWdnZW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZmVlZGluZzxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBpdCB3aXRoIGEgdG9uZSBvZiB2
YXJ5aW5nIHBvd2VyIGF0IDIuNDEwMkdIei48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBGb3IgdGhlIGRlZmF1bHQgVUhEIEFH
QyBzZXR0aW5ncyBJIGNvdWxkIGNvbmZpcm0gdGhhdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqB0aGUg
c2lnbmFsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHdhczxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBrZXB0IGJldHdlZW4gLTEwIGRCRlMgYW5k
IC0xMiBkQkZTICgyMCAqIGxvZzEwKHx4fCkgb3ZlciBhPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoHByZXR0eSB3aWRlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoGlucHV0IHBvd2VyIHJhbmdlLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBUaGlzIHdhcyB1c2luZyBHUiAzLjggYW5kIFVIRCA0LjAuPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgSG93
ZXZlciwgSSBoYWQgdG8gbW9kaWZ5IHRoZSBnZW5lcmF0ZSBmbG93LWdyYXBoPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoHNsaWdodGx5LCBhczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqB0aGUgQUdDPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHdhcyBl
bmFibGVzIGJlZm9yZSB0aGUgc2FtcGxlLXJhdGUgd2FzIHNldCAobWF5YmUgZG91YmxlPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoGNoZWNrPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoHRoYXQsIHRvbykuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgQWZ0ZXJ3YXJkcywgSSB1c2VkIHlvdXIgc2V0dGluZ3Mg
KEkgZGlkIGNoYW5nZSByZWcgMHgxMjk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgdG8gMHgxMTxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAoMWRCPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCstKSwgdGhvdWdoKS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgQWxzbyB0aG9zZSBzZXR0aW5ncyB3b3JrZWQgYXMgZXhwZWN0ZWQg
YW5kIHRoZSBzaWduYWw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgd2FzIG5pY2VseTxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBrZXB0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoGJldHdlZW4gLTIgZEJGUyBhbmQgLTQgZEJGUy48YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBBdHRh
Y2hlZCBpcyBhIHBpY3R1cmUgb2YgdGhlIGZsb3ctZ3JhcGggSSB1c2VkIGZvciB0ZXN0aW5nLjxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBNYXliZSB5b3U8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgY291bGQgYWxzbyBzdGFydCBieSB0ZXN0aW5n
IHdpdGggYSBzaW5lIHdhdmUgdG88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgdmVyaWZ5aW5nIHRoYXQg
eW91cjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB2YWx1ZXMgZ2V0IGFw
cGxpZWQgcHJvcGVybHkuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgQ2hlZXJzLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqBKdWxpYW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBPbiAzLzIyLzIxIDY6MjEgUE0sIE1hcmlhIE11
w7FveiB3cm90ZTo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsg
SGkgSnVsaWFuLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBTdXJlLjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBJIGFtIHJlY2VpdmluZyBhIFFQU0sgdGhyb3VnaCB0
aGUgcmFkaW8gYW5kPGJyPg0KJmd0OyZndDvCoCDCoCDCoHBsb3R0aW5nwqBpdCBpbiBhPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoFFUIGdyYXBoPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IChzZWUgZ3JjLnBuZyk8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgSWYgSSBoYXZlIEFHQyBkaXNhYmxlLCBJ
IGdldCB3aGF0IGlzIHNob3duIGluPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCZxdW90O3Rlc3Rfd2l0aG91dF9hZ2MucG5nJnF1b3Q7LDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyB0aGVuIGlmIEkgZW5hYmxlIGl0LCBJIHNlZSB3aGF0
IGlzIG9uPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZxdW90O3Rlc3Rfd2l0aF9hZ2MucG5nJnF1b3Q7
IHdoZXJlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7ICZxdW90
O1F1YWRyYXR1cmUmcXVvdDsgaXMgYWx3YXlzIGNlbnRlciBtb3JlIG9yIGxlc3MgaW4gMC4yNSB3
aGljaDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBtaWdodCBmaXQgd2l0
aDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyB0aGUgdmFsdWVz
IGdpdmVuIGJ5IGRlZmF1bHQgKGlubmVyIGhpZ2ggdGhyZXNob2xkID08YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgLTEyZEJGUyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgaW5u
ZXIgbG93PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IHRocmVz
aG9sZCA9IC0xMCBkQkZTKS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgSWYgSSBj
aGFuZ2UgdGhlIGFkOTM2MV9kZXZpY2UuY3BwIChhdHRhY2hlZCkgZnJvbTxicj4NCiZndDsmZ3Q7
wqAgwqAgwqBsaW5lIDEwODUsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oGJ5IGNoYW5naW5nPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
IHJlZ2lzdGVycyAweDEwMSwgMHgxMjAgYW5kIDB4MTI5IHdpdGggdmFsdWVzIDB4MDIsPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoDB4MDQgYW5kIDB4MTY8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsgcmVzcGVjdGl2ZWx5IHRvIG1vdmUgYmV0d2VlbiAtMmRiRlMgYW5k
IC00IGRCRlMswqAgSTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBzZWUgdGhlIHNhbWU8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgd2F2ZWZvcm0gdGhhdCBJIGhhdmUg
aW4gJnF1b3Q7dGVzdF93aXRoX2FnYy5wbmcmcXVvdDsgKEkgZXhwZWN0PGJyPg0KJmd0OyZndDvC
oCDCoCDCoGl0IHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGJlIGFy
b3VuZCAwLjcpPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IEtpbmQgcmVnYXJkcyw8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgTWFyaWE8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsgRWwgbHVuLCAyMiBtYXIgMjAyMSBhIGxhcyAxNzo0NSwgSnVsaWFuIEFy
bm9sZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAoJmx0OzxhIGhyZWY9
Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVs
aXRlY29kaW5nLm9yZzwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRl
Y29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwv
YT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDs8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxp
dGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRh
cmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7Jmd0OyZndDsp
IGVzY3JpYmnDszo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoE1hcmlh
LDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgd291bGQgeW91IG1pbmQg
c2hhcmluZyB5b3VyIHBhdGNoPyBPdGhlcndpc2UsPGJyPg0KJmd0OyZndDvCoCDCoCDCoGl04oCZ
cyBoYXJkPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRvIHRlbGwgd2hh
dDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgZXhh
Y3RseSBpcyBnb2luZyBvbi48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDC
oENoZWVycyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoEp1bGlhbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEFt
IDIyLjAzLjIwMjEgdW0gMTY6MjQgc2NocmllYiBNYXJpYSBNdcOxb3o8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0OzxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFp
bC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVr
aTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTky
QGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwu
Y29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsmZ3Q7PGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+
bWFtdWtpOTJAZ21haWwuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5
MkBnbWFpbC5jb208L2E+Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBn
bWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNv
bSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7
Ojxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqDvu788YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBIaSBK
dWxpYW4sPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEkg
cmUtb3BlbiB0aGlzIHRvcGljIHRvIGFzayBhIHF1ZXN0aW9uIGFib3V0IHRoZTxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBjb25maWd1cmF0aW9uIG9mPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgdGhlIGFkOTM2MSBy
ZWdpc3RlcnMgaW4gR05VcmFkaW8vUkZOb0M8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgQXMgSSB1bmRlcnN0YW5kLCB3aGVuIEFHQyBpcyBlbmFibGVkwqBp
biBzbG93PGJyPg0KJmd0OyZndDvCoCDCoCDCoG1vZGUsIHRoZXJlPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoGFyZSA0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgY29uZmlndXJhYmxlIHRocmVzaG9sZHMgKGlubmVy
IGxvdywgaW5uZXIgaGlnaCw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
b3V0ZXLCoGxvdywgYW5kPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgb3V0ZXLCoGhpZ2gpIGFuZCBhbHNvIDQgY29uZmlndXJhYmxlIHN0ZXBz
IHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoHJlYWNoIHRoZSB6b25lPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgYmV0d2VlbsKgdGhlIGlubmVy
IHRocmVzaG9sZHMuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoEkgaGF2ZSBmb3VuZCB0aGUgY29uZmlndXJhdGlvbiBvZiB0aGVzZSByZWdpc3RlcnM8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqA8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgwqBpbsKgL3VoZC9ob3N0L2xpYi91c3JwL2NvbW1vbi9hZDkzNjFfZHJp
dmVyL2FkOTM2MV9kZXZpY2UuY3BwPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgYW5kwqBjaGFuZ2VkIHRoZWlyIHZhbHVlcyB0aGVyZS4gVGhl
biwgSSBoYXZlPGJyPg0KJmd0OyZndDvCoCDCoCDCoHJlY29tcGlsZWQ8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgdWhkIChtYWtlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmFtcDsgbWFrZSBpbnN0YWxsKSBidXQs
IHdoZW4gSSByZS1ydW4gbXkgZ3JhcGggSSBzZWUgbm88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgY2hhbmdlIGluIG15PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgd2F2ZWZvcm0gKGl0IHNlZW0gdG8gc3RheSBpbiB0
aGUgc2FtZSBsaW1pdHMgYXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgdGhlIGRlZmF1bHQ8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBjb25maWd1
cmF0aW9uKS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
QW0gSSBtaXNzaW5nwqBhbnnCoG90aGVywqBzdGVwIHRoYXQgSSBoYXZlIHRvIGRvbmXCoHRvPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNvbmZpZ3VyZSB0aGVzZTxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHBhcmFt
ZXRlcnM/PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEtp
bmQgUmVnYXJkcyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgTWFyaWE8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
RWwgdmllLCAxMiBtYXIgMjAyMSBhIGxhcyAxMDowNCwgTWFyaWEgTXXDsW96PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOm1hbXVraTky
QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+
bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFt
dWtpOTJAZ21haWwuY29tPC9hPiAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBn
bWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDs8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2Js
YW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1h
bXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFy
Z2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDsmZ3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgT2sg
SnVsaWFuLCBJIHdpbGwgY2hlY2sgdGhlIHRyZWUgbm9kZSBhbmQgdHJ5IHRvPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoG1vZGlmeSB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBwcm9wZXJ0aWVzLiBU
aGFua3MgYWdhaW4gZm9yIHRoZSBoZWxwITxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgTWFyaWE8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgRWwganVlLCAxMSBt
YXIgMjAyMSBhIGxhcyAxODoyNiwgSnVsaWFuIEFybm9sZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFp
bHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVj
b2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRl
Y29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdl
dD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJn
ZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+
anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsi
Pmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rp
bmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29k
aW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZn
dDsmZ3Q7Jmd0Oyk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqBlc2NyaWJpw7M6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoE1hcmlhLDxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0Ozxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAvc2VsZi5ldHR1c19yZm5vY19yeF9yYWRp
b18wLnNldF9yeF9hZ2MoRmFsc2UsIDApLzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0OyZndDsgYnV0IEkgaGF2ZSByZWNlaXZlZCB0aGUgZm9sbG93aW5nPGJyPg0KJmd0OyZndDvC
oCDCoCDCoGVycm9yVGhhdCYjMzk7czxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqB3aHkgSTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoGdhdmUgdGhlIHJlZmVyZW5jZSAoWzFdKSBzaG93aW5nIHRo
ZSBjb3JyZWN0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHN5bnRheCA7
KTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoEFueXdheXMsIGdsYWQgaXQgd29ya2VkIG91dCBmb3IgeW91ITxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoFlvdSBtaWdodCBjb25zaWRlciBmaWxpbmcgYSBidWcgaXNzdWU8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgYWdhaW5zdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBnci1l
dHR1cyBvbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoGdpdGh1Yi48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgQnkgdGhlIHdheSwgSSBoYXZl
IHJlYWQgdGhhdCB0aGVyZSBhcmU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgc2V2ZXJhbCBtb2Rlczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZvciBBR0M8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7Jmd0OyAo
ZmFzdCxzbG93LGh5YnJpZC4uKSBJIHdhcyB3b25kZXJpbmc8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
d2hpY2g8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgdHlwZSBpczxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoGltcGxlbWVudGVkIGJ5PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgZGVmYXVsdCBhbmQgaWYg
aXQgaXMgcG9zc2libGUgdG88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgY2hhbmdlIEFHQzxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBtb2RlIGluIHRoZTxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZs
b3dncmFwaC48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqBUaG9zZSBtb2RlcyB3ZXJlIG1haW5seSBkaWN0YXRlZCBieSB0
aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgQUQ5MzYxLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqBEZWZhdWx0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgc2hvdWxkIGJlPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJnF1
b3Q7c2xvdyZxdW90Oy4gVGhlICZxdW90O2h5YnJpZCZxdW90OyBtb2RlIGlzIG5vdDxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqBpbXBsZW1lbnRlZCBhczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBmYXIgYXMgSSBrbm93Ljxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoFdoaWNoIG1vZGUgeW91IHdhbnQg
KCZxdW90O3Nsb3cmcXVvdDsgLyAmcXVvdDtmYXN0JnF1b3Q7KTxicj4NCiZndDsmZ3Q7wqAgwqAg
wqBkZXBlbmRzIG9uIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNpZ25hbCB5b3Ugd2FudCB0bzxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oHJlY2VpdmUuIEZvciBidXJzdC1tb2RlIGRpZ2l0YWwgc2lnbmFscyB5b3U8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgbWlnaHQgd2FudCB0bzxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHN3aXRj
aCB0byB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmcXVvdDtmYXN0JnF1b3Q7IG1vZGUuPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgSG93
ZXZlciwgSSB0aGluayB0aGlzIGlzIG9ubHkgcG9zc2libGUgYnk8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgZGlyZWN0bHkgd3JpdGluZzxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRvIHRoZSBj
b3JyZXNwb25kaW5nIHByb3BlcnR5LXRyZWUgbm9kZS48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgQWdh
aW4sPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoEkmIzM5O20gbm90PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgc3VyZSBhYm91dDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoFVIRC00LjAvZ3ItZXR0dXMgdGhvdWdoLjxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqBDaGVlcnMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgSnVsaWFuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBPbiAzLzExLzIxIDU6MjYgUE0sIE1hcmlhIE11w7FveiB3
cm90ZTo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IEhpIEp1bGlhbiw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0OyBJIGhhdmUgaW5pdGlhbGx5IGNoYW5nZWQgdGhlIHB5dGhvbjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqBnZW5lcmF0ZWQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
Zm9yIG15PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgZmxvd2dyYXBoIHdpdGggdGhpczxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgbGlu
ZTo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAv
c2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9yeF9hZ2MoRmFsc2UsIDApLzxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IGJ1dCBJIGhhdmUgcmVjZWl2ZWQgdGhlIGZvbGxvd2lu
ZyBlcnJvcjo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBUL3JhY2ViYWNrIChtb3N0
IHJlY2VudCBjYWxsIGxhc3QpOjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCBGaWxlPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZxdW90O2NvbnN0ZWxsYXRpb25fc29mdF9kZWNvZGVyLnB5JnF1b3Q7LCBsaW5l
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoDMwMSwgaW48YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmbHQ7bW9kdWxlJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCBtYWluKCk8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgRmlsZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmcXVvdDtjb25zdGVsbGF0aW9u
X3NvZnRfZGVjb2Rlci5weSZxdW90OywgbGluZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAyNzcsIGluIG1haW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgdGIgPSB0b3Bf
YmxvY2tfY2xzKCk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgRmlsZTxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmcXVvdDtjb25zdGVsbGF0aW9uX3NvZnRfZGVjb2Rlci5weSZxdW90OywgbGluZTxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAxNjYsIGluPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgX19pbml0
X188YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfcnhfYWdjKFRydWUsIDApPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0OyBBdHRyaWJ1dGVFcnJvcjogJiMzOTtyZm5vY19yeF9yYWRpb19zcHRyJiMzOTs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgb2JqZWN0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoGhhcyBubzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGF0dHJpYnV0ZSAmIzM5O3NldF9yeF9hZ2MmIzM5Oy88
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBCdXQgcmZub2NfcmFkaW9faW1wbC5jYyBk
ZWZpbmVzIGl0Ojxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IC92b2lkPGJyPg0KJmd0
OyZndDvCoCDCoCDCoHJmbm9jX3J4X3JhZGlvX2ltcGw6OnNldF9hZ2MoY29uc3QgYm9vbDxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBlbmFibGUsPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgY29u
c3Qgc2l6ZV90IGNoYW4pPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyB7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IHJldHVybjxicj4NCiZndDsmZ3Q7wqAgwqAgwqBkX3JhZGlvX3JlZi0mZ3Q7c2V0X3J4X2FnYyhl
bmFibGUsIGNoYW4pOzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgfS88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0OyBTZWFyY2hpbmcgdGhlIHJmbm9jX3J4X3JhZGlvX3NwdHIgd2l0aDxicj4NCiZndDsm
Z3Q7wqAgwqAgwqBncmVwPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRh
a2VzIG1lIHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJnF1b3Q7c3dpZyZxdW90OyBmaWxlcy4gSTxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDsgaGF2ZSBsb29rZWQgYXQgZXR0dXNfc3dpZy5weSBhbmQgc2Vlbjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqB0aGF0IHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBj
b21tYW5kPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgbmFtZSBpcyBzZXRfYWdjPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBpbnN0ZWFk
IG9mIHNldF9yeF9hZ2M6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgL2RlZiBzZXRf
YWdjKHNlbGYsIGVuYWJsZTogJnF1b3Q7Ym9vbDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBjb25zdCZx
dW90OywgY2hhbjo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJnF1b3Q7
c2l6ZV90PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgY29uc3QmcXVvdDspIC0mZ3Q7ICZxdW90O3ZvaWQmcXVvdDs6PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIHImcXVvdDsmcXVvdDsmcXVvdDs8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgc2V0X2FnYyhyZm5vY19yeF9yYWRpbyBzZWxmLCBib29sPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNvbnN0IGVuYWJsZSw8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqBzaXplX3QgY29uc3QgY2hhbik8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgRW5h
YmxlL2Rpc2FibGUgdGhlIEFHQyBmb3I8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgdGhpcyBSWDxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqByYWRpbyAoaWY8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBh
dmFpbGFibGUpPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZxdW90OyZxdW90OyZxdW90
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCByZXR1cm48YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgX2V0dHVzX3N3aWcucmZub2NfcnhfcmFkaW9fc2V0X2FnYyhz
ZWxmLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoGVuYWJsZSwgY2hhbikvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyAvPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0OyAvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBDaGFuZ2luZyB0aGlzIGluIHRoZSBmbG93Z3JhcGgu
cHkgc2VlbXMgdG88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgd29yayEh
IFRoYW5rczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoGZvciB0aGUgaGVscCBvbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgdGhpcyEg
SSBwdXQgdGhpcyBpbmZvcm1hdGlvbiBoZXJlIGp1c3Q8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgaW4g
Y2FzZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBzb21lb25lPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgaXMgc3R1Y2sgaW4gdGhlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBzYW1lIHBvaW50Ljxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IEJ5IHRoZSB3YXksIEkgaGF2ZSByZWFkIHRoYXQgdGhl
cmUgYXJlPGJyPg0KJmd0OyZndDvCoCDCoCDCoHNldmVyYWw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgbW9kZXMgZm9yPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgQUdDPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
OyAoZmFzdCxzbG93LGh5YnJpZC4uKSBJIHdhcyB3b25kZXJpbmc8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgd2hpY2ggdHlwZSBpczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGltcGxlbWVudGVkIGJ5PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
OyBkZWZhdWx0IGFuZCBpZiBpdCBpcyBwb3NzaWJsZSB0bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqBj
aGFuZ2UgQUdDPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoG1vZGUgaW4g
dGhlPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgZmxvd2dyYXBoLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
IEtpbmQgUmVnYXJkcyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBNYXJpYTxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBFbCBtacOpLCAxMCBt
YXIgMjAyMSBhIGxhcyAxMjowMywgTWFyaWE8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgTXXDsW96PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgKCZsdDs8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9
Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7
bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5r
Ij5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpt
YW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTky
QGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBn
bWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNv
bSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIg
dGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4gJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21h
aWwuY29tPC9hPiZndDsmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21h
aWwuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208
L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11
a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdt
YWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIg
dGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9
Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21h
aWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPjxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20i
IHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0OyZndDsmZ3Q7Jmd0OyZn
dDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgSGkg
SnVsZXMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoFRoYW5rIHlvdSwg
SSB3aWxsIHRyeSBpdCBhbmTCoGxldDxicj4NCiZndDsmZ3Q7wqAgwqAgwqB5b3Uga25vdzxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBhcyBzb29uIGFzPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
cG9zc2libGUuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoEJ5IHRoZSB3
YXksIEkgaGF2ZSBjaGVja2VkIHRoZSBweXRob248YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBnZW5lcmF0ZWTCoHVzaW5n
IHRoZSBVSEQgVVNSUDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoFNPVVJDRSBibG9jayAoaW5zdGVh
ZCBvZiB0aGUgUkZOb0M8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgcmFkaW88YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgYmxvY2spIHdpdGg8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBBR0MgYWN0aXZl
IGFuZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoGl0IGdlbmVyYXRlcyB0aGUgc2V0IG9mIEFHQyBm
aW5lLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqBTbywgYXM8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgeW91IHNhaWQsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgaXQgaXMgZml4ZWQgaW48YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqBnci11aGQgYnV0IGl0IG1pZ2h0IHN0aWxsIGJlIGEgYnVnIGluPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGdyLWV0dHVzLjxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBUaGFua3MgYWdhaW4gZm9yIHRoZSBoZWxwITxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBLaW5kIFJlZ2FyZHMsPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoE1hcmlhPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoEVsIG1pw6ksIDEwIG1hciAyMDIxIGEgbGFzIDExOjI1LDxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqBKdWxpYW4gQXJub2xkPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
KCZsdDs8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxh
bmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDtt
YWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2Js
YW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRl
Y29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZn
dDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRl
Y29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZn
dDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBo
cmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxp
YW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5q
dWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+
anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rp
bmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rp
bmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxp
dGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9
Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVs
aXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7Jmd0OykgZXNjcmliacOzOjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBNYXJpYSw8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7IFNvLCBpZiBJIHVuZGVy
c3RhbmQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgY29ycmVjdGx5LCBJPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoGhhdmUgdG8gcHV0PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdGhlcmUgYWxzbzxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHNvbWV0aGluZyBsaWtlPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAmcXVvdDtzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAuc2V0X3J4X2FnYyhlbmFibGUsMCkm
cXVvdDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgaXNuJiMzOTt0IGl0Pzxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBFeGFjdGx5ISBUYWtlIGEgbG9vayBhdCBbMV08
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgZm9yIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBjb3JyZWN0IHN5bnRheC48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgWzFdPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqA8YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20vRXR0dXNSZXNlYXJj
aC9nci1ldHR1cy9ibG9iLzEwMzhjNGNlNTEzNWEyODAzYjUzNTU0ZmM0OTcxZmUzZGU3NDdkOWEv
aW5jbHVkZS9ldHR1cy9yZm5vY19yeF9yYWRpby5oI0w5NyIgcmVsPSJub3JlZmVycmVyIiB0YXJn
ZXQ9Il9ibGFuayI+aHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvZ3ItZXR0dXMvYmxv
Yi8xMDM4YzRjZTUxMzVhMjgwM2I1MzU1NGZjNDk3MWZlM2RlNzQ3ZDlhL2luY2x1ZGUvZXR0dXMv
cmZub2NfcnhfcmFkaW8uaCNMOTc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoExldCBtZSBrbm93IGlmIHRoYXQgd29ya2VkIG91dDxicj4NCiZndDsmZ3Q7
wqAgwqAgwqBmb3IgeW91Ljxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqBDaGVlcnMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgSnVsaWFuPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBPbiAz
LzEwLzIxIDk6NTkgQU0sIE1hcmlhPGJyPg0KJmd0OyZndDvCoCDCoCDCoE11w7FveiB3cm90ZTo8
YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBIaSBKdWxpYW4sPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyBUaGFua3MgZm9yIHRoZSBxdWljayBhbnN3ZXIuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBJIHRoaW5rIHlvdSBt
aWdodCBiZSByaWdodDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBhYm91dDxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB0aGUgcG9zc2libGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBidWcgdHVybmlu
ZyBvbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRoZSBBR0M8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyBmcm9tIEdSQy4gSSBoYXZlIGNoZWNrZWQ8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgdGhlIGZsb3cgZ3JhcGg8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBnZW5lcmF0ZWQgYW5kIHRoZXJlJiMz
OTtzIG5vPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgc2V0X3J4X2FnYyBlbmFi
bGUgb3B0aW9uIChJPGJyPg0KJmd0OyZndDvCoCDCoCDCoGNoZWNrZWQ8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgdGhlIGMrKzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGRlZmluaXRpb24gYmxv
Y2s8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB3aGVyZSB0aGlzPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsgb3B0aW9uIGRpZCBhcHBlYXIgYnV0IEk8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgaGFkbiYjMzk7dCBsb29rPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoGF0IHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHB5dGhvbiBnZW5lcmF0ZWQpLjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsg
VGhlIGxpbmVzIHJlbGF0ZWQgdG8gdGhlPGJyPg0KJmd0OyZndDvCoCDCoCDCoHJhZGlvIGluIG15
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgZmxvd2dyYXBoIGFyZSB0aGVzZTo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IC9zZWxmLmV0dHVz
X3Jmbm9jX3J4X3JhZGlvXzAgPTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGV0dHVzLnJmbm9jX3J4X3JhZGlvKDxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgc2VsZi5y
Zm5vY19ncmFwaCw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoHVoZC5kZXZpY2VfYWRkcigmIzM5OyYjMzk7
KSw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
IC0xLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAgLTEpPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqA8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAuc2V0X3JhdGUoc2Ft
cF9yYXRlKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoMKgc2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9hbnRlbm5h
KCYjMzk7UlgyJiMzOTssIDApPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqA8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAu
c2V0X2ZyZXF1ZW5jeShjZiwgMCk8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoDxicj4NCiZndDsmZ3Q7wqAgwqAgwqDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9f
MC5zZXRfZ2FpbihnYWluLCAwKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlv
XzAuc2V0X2JhbmR3aWR0aChzYW1wX3JhdGUsIDApPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgwqBzZWxmLmV0dHVzX3Jmbm9j
X3J4X3JhZGlvXzAuc2V0X2RjX29mZnNldChUcnVlLCAwKTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgc2VsZi5ldHR1c19y
Zm5vY19yeF9yYWRpb18wLnNldF9pcV9iYWxhbmNlKFRydWUsIDApLzxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgU28s
IGlmIEkgdW5kZXJzdGFuZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBjb3JyZWN0bHksIEk8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgaGF2ZSB0byBwdXQ8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0
aGVyZSBhbHNvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgc29tZXRoaW5nIGxpa2U8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgIMKgJnF1b3Q7c2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9yeF9hZ2MoZW5h
YmxlLDApJnF1b3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoGlzbiYjMzk7dCBpdD88YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7IEtpbmQgUmVnYXJkcyw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IE1hcmlhPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBFbCBtacOp
LCAxMCBtYXIgMjAyMSBhIGxhcyA5OjE2LDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqBKdWxpYW4gQXJub2xkPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgKCZsdDs8
YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5q
dWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5n
Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5n
Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxp
dGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJl
Zj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFu
QGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmci
IHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmci
IHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Omp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rp
bmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29k
aW5nLm9yZzwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVs
aWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmc8L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmci
IHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7
Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Omp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rp
bmcub3JnPC9hPiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Omp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rp
bmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJf
YmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZs
dDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0i
X2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7Jmd0Ozxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0
ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxp
dGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4m
Z3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxp
YW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxp
YW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0OyZn
dDsmZ3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBNYXJpYSw8YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7wqAgwqAgwqBJIG1pZ2h0IG5vdCBiZSB0aGU8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
cmlnaHQgcGVyc29uPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRvIGFu
c3dlcjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoHRoaXMsIGFzIG15PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ZXhwZXJpZW5jZSB3aXRoPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDC
oFVIRCA0LjAgaXMgcmVsYXRpdmVseTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBsaW1pdGVkPGJyPg0K
Jmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGF0IHRoZSBtb21lbnQuPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0O8KgIMKgIMKgSG93ZXZlciwgSSBjYW50IHRlbGw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgeW91
IHRoYXQ8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgdGhlIEFHQyBvbjxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoEIyeDAgZGV2aWNlcyBpczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNv
bnRyb2xsZWQgdmlhPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoHNv
ZnR3YXJlICh1c2luZzxicj4NCiZndDsmZ3Q7wqAgwqAgwqBzZXRfcnhfYWdjKCkpLjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBUaGVyZSBpczxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoG5vIG5l
ZWQgdG88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBkaXJlY3RseSBtb2RpZnkgdGhlPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoHN0YXRlIG9mIGFueSBwaW5z
IG9mPGJyPg0KJmd0OyZndDvCoCDCoCDCoHRoZSBGUEdBLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEkg
dmFndWVseSByZW1lbWJlciB0aGF0PGJyPg0KJmd0OyZndDvCoCDCoCDCoHRoZXJlPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHdhcyBhIGJ1Zzxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGluIGFu
IGVhcmxpZXI8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB2ZXJzaW9uIG9mIGdyLXVoZDxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAoc29tZXdoZXJlIGluIDMu
NykgdGhhdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqBtYWRlIGl0PGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoGRpZmZpY3VsdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRvIHR1cm4gb24gdGhlPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgQUdDIHVzaW5nIEdSQy48YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgVGhhdCBwYXJ0aWN1bGFyIG9uZSBpczxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqBmaXhlZCBpbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqBnci11aGQuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgTm90IHN1cmUgYWJvdXQ8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBnci1ldHR1cywgdGhvdWdoLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoE1heWJlIHRy
eSB1c2luZzxicj4NCiZndDsmZ3Q7wqAgwqAgwqBzZXRfcnhfYWdjKCk8YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgbWFudWFsbHkgaW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB5b3UgZmxvdy1n
cmFwaDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCgqLnB5KSBhbmQgc2VlPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoGlmIHRoYXQgaGVscHMuPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0O8KgIMKgIMKgQ2hlZXJzLDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAg
wqAgwqBKdWxpYW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBPbiAzLzkvMjEgNToxMSBQTSw8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgTWFyaWEgTXXDsW96IHZpYTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoFVTUlAtdXNlcnMgd3Jv
dGU6PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IEhpIGFs
bCw8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgSSB3YXMgd29uZGVyaW5n
IGlmIGl0IGlzPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHBvc3NpYmxl
IHRvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgZW5hYmxlIEFHQyBmcm9tPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgdGhlIFJGTm9DIHJhZGlvPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoCAmZ3Q7IGJsb2NrIGluIEdOVVJhZGlvLiBJPGJyPg0KJmd0OyZndDvCoCDCoCDCoHVzZSBV
SEQgNC4wPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgdmVyc2lvbiBhbmQgR05VUmFkaW88YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAzLjggd2l0aDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAg
wqAgwqBnci1ldHR1cy48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKg
ICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgSSBz
ZWUgdGhhdCB0aGUgUkZOb0MgUng8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgcmFkaW8gYmxvY2sgaGFzIGFuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZW5hYmxl
L2Rpc2FibGUvZGVmYXVsdDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAg
wqBBR0M8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgb3B0
aW9uIGluIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBHTlVSYWRpbyBibG9jazxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqB3aGljaCBJPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgYXNzdW1lIGNh
bGxzIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoFVIRCBmdW5jdGlvbjxicj4NCiZn
dDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyAmcXVvdDtzZXRfcnhfYWdj
JnF1b3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsmZ3Q7wqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqA8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgwqDCoCg8YSBocmVm
PSJodHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvY2xhc3N1aGRfMV8xdXNycF8xXzFtdWx0
aV9fdXNycC5odG1sI2FiZGFiMWY2YzM3NzVhOTA3MWIxNWM5ODA1Zjg2NjQ4NiIgcmVsPSJub3Jl
ZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9maWxlcy5ldHR1cy5jb20vbWFudWFsL2Ns
YXNzdWhkXzFfMXVzcnBfMV8xbXVsdGlfX3VzcnAuaHRtbCNhYmRhYjFmNmMzNzc1YTkwNzFiMTVj
OTgwNWY4NjY0ODY8L2E+KTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAg
wqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBJ
IGhhdmUgYWxzbyBjaGVja2VkPGJyPg0KJmd0OyZndDvCoCDCoCDCoG9uIHRoZTxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBGUEdBIHNpZGU8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB0aGF0IHRo
ZXJlIGlzIGE8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBwaW4gZnJvbTxicj4NCiZndDsm
Z3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBGUEdBIHRvPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IEFEOTM2MTxicj4NCiZndDsmZ3Q7wqAgwqAg
wqBjYWxsZWTCoFhDVlJfRU5BX0FHQzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqB3aGljaCBpczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNldCBhbHdheXMgdG8gMSBvbjxicj4NCiZndDsmZ3Q7
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoHRoZSB0b3A8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
O8KgIMKgIMKgbGV2ZWwgb2Y8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKg
IMKgICZndDsgdGhlIEZQR0EgaW1hZ2UgKHNlZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqBhdHRhY2hl
ZDxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBmaWxlPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
JnF1b3Q7ZTMyMC52JnF1b3Q7LCBsaW5lIDg3MikuPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgVGhpcyBwaW4sPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAm
Z3Q7IGFjY29yZGluZyB0bzxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAg
wqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQom
Z3Q7Jmd0O8KgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqA8YSBocmVmPSJodHRwczov
L3d3dy5hbmFsb2cuY29tL21lZGlhL2VuL3RlY2huaWNhbC1kb2N1bWVudGF0aW9uL2RhdGEtc2hl
ZXRzL0FEOTM2MS5wZGYiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8v
d3d3LmFuYWxvZy5jb20vbWVkaWEvZW4vdGVjaG5pY2FsLWRvY3VtZW50YXRpb24vZGF0YS1zaGVl
dHMvQUQ5MzYxLnBkZjwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4N
CiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBpcyB0aGUgJnF1b3Q7
TWFudWFsPGJyPg0KJmd0OyZndDvCoCDCoCDCoENvbnRyb2wgSW5wdXQgZm9yPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
QXV0b21hdGljIEdhaW48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBDb250cm9sIChBR0Mp
JnF1b3Q7Ljxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBN
dXN0IGJlIHRoaXMgcGluIHNldDxicj4NCiZndDsmZ3Q7wqAgwqAgwqB0byAwIHRvPGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGhhdmUgQUdDPGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgd29ya2lu
Zz88YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgSWbCoG5v
dCwgaG93IGNhbjxicj4NCiZndDsmZ3Q7wqAgwqAgwqBJwqBnZXQgQUdDPGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHdvcmtpbmc/PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgSSYjMzk7dmUgbWFk
ZSBzb21lIHRlc3RzPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAm
Z3Q7IGVuYWJsaW5nL2Rpc2FibGluZyB0aGlzPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoG9wdGlvbiBidXQgSTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGRvIG5vdCBzZWUgYW55PGJyPg0KJmd0
OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgY2hhbmdlczxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7wqAgwqAgwqBiZXR3ZWVuIHRoZTxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqAgJmd0OyB3YXZlZm9ybXMgcmVjZWl2ZWQuPGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDvCoCDCoCDCoCAmZ3Q7IEFueSBoZWxwIHdvdWxkIGJlPGJyPg0KJmd0OyZndDvCoCDCoCDC
oGFwcHJlY2lhdGVkLjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAg
Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBLaW5k
IFJlZ2FyZHMsPGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IE1hcmlhPGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgPGJyPg0KJmd0OyZn
dDvCoCDCoCDCoMKgX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X188YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgVVNSUC11
c2VycyBtYWlsaW5nIGxpc3Q8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKg
IMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgPGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9
Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxh
bmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsmZ3Q7PGJyPg0KJmd0OyZndDvC
oCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0
O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdl
dD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8Kg
IMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0i
bWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11
c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFu
ayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0OyZn
dDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2Js
YW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb208L2E+PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
OlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9
Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAt
dXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxh
bmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbTwvYT4mZ3Q7Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgPGJyPg0KJmd0OyZndDvCoCDCoCDCoMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNS
UC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVz
ZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208L2E+Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQ
LXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1h
aWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNl
cnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1
cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+
DQomZ3Q7Jmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0Bs
aXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNv
bTwvYT4mZ3Q7Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqA8YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0
dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJz
QGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tPC9hPiZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0i
X2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0O8KgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20i
IHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7Jmd0Ozxi
cj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJy
Pg0KJmd0OyZndDvCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208L2E+Jmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJf
YmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDsmZ3Q7wqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIg
dGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsmZ3Q7Jmd0
OyZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7
PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0OyA8YSBocmVmPSJodHRwOi8vbGlzdHMu
ZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20iIHJl
bD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFp
bG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7Jmd0
O8KgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0Ozxicj4NCiZndDsmZ3Q7wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7Jmd0O8KgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0OyZndDvCoCDCoCDCoCZndDs8YnI+DQomZ3Q7
Jmd0Ozxicj4NCiZndDsgPGJyPg0KJmd0OyBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXzxicj4NCiZndDsgVVNSUC11c2VycyBtYWlsaW5nIGxpc3QgLS0gPGEg
aHJlZj0ibWFpbHRvOnVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+
dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0OyBUbyB1bnN1YnNjcmliZSBz
ZW5kIGFuIGVtYWlsIHRvIDxhIGhyZWY9Im1haWx0bzp1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0
dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29t
PC9hPjxicj4NCiZndDsgPGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0K
--0000000000007f66a005bfc1d714--

--===============6749388233017797994==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6749388233017797994==--

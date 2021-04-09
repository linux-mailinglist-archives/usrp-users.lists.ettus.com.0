Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9714D3596B6
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 09:49:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD759383DFC
	for <lists+usrp-users@lfdr.de>; Fri,  9 Apr 2021 03:49:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="R+6UwiCH";
	dkim-atps=neutral
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id B7A5B3840F1
	for <usrp-users@lists.ettus.com>; Fri,  9 Apr 2021 03:48:32 -0400 (EDT)
Received: by mail-ej1-f46.google.com with SMTP id u21so7130804ejo.13
        for <usrp-users@lists.ettus.com>; Fri, 09 Apr 2021 00:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gqu2ATB5VgB8PiuFALwrQ9PV1MLm08RZRymEvbevSh8=;
        b=R+6UwiCHUT0Q1xxHt5jO3DnSMPfbMQy366zxAKyXVVSf8MUfpGfH7xzh+dxTP2TqDO
         Mg3Osr7p5+H/kZAiIOw2eECc194XPpx/6Eh67xGyiFxEaE6uOoPuutwUtJKj9R1guHv3
         oI90BocdO43fHnKQl2v8AE32R7z/0pwcosDz4X/w8A5HMj2IUPskbemQK1L/fsrZ3kE4
         Md/MYbZQsPwglBMc2Tbl38Fwk9ymXgdgaG2ITYZRp3wUbI68tTnkA9jlTcpfgieJ14+C
         71uLpxghr7wN7ILhXKPsh+NLl0ch9YQFSSabOFmsUTj10+8xjz7c7Cox+eVNvcgnGTda
         msWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gqu2ATB5VgB8PiuFALwrQ9PV1MLm08RZRymEvbevSh8=;
        b=TApfDRE5k5yvhWFG8aUQ4kPwm6TNVqQkX9sefE97r/A3MwZ408Z3wcQZ79aat6eKA3
         x5tySCDSlP5Fvm+jjGYUncrgs76xTSorjyJCo9uN3OP/rVZEyCQYrJuyqZaTC1+MkLjp
         aNL2N0qw23+dIQSztQPQcfeUeB5yh1t8SPNHVl0CjMmwnJzIcHvLXHf1UJ7MumlydAdi
         0c6tI6Y9SD967gfCTz357v1kt6UaKp8fqRWMKFdMscOlLwugpl7TpVNMDOSP+OMWgNQH
         DA5JekLO0+8tGe8bCf7GWLGW0pNk/kTGjvU6Xm9Q/J3JEQIGfrznv0NgF1K5VMPVDClN
         t/bQ==
X-Gm-Message-State: AOAM532q+p67iNv+o1c0zyiUQojg+FFVo4IPAXk6Br++XQdgT+ij1ujA
	zI+0ddyR+37XqZz+IAtR8ffS9mt+coZUTXwnF0fm4xomWUFIJA==
X-Google-Smtp-Source: ABdhPJxF5CtfIqA+BnVB7mZLZzx1JEA5exAdtq/gBd4OnzDK+2G4Y7BeJJ5tNl+2polPKSHBrfDgLBUL3obwHmSQXIA=
X-Received: by 2002:a17:907:3d8a:: with SMTP id he10mr15092834ejc.184.1617954511598;
 Fri, 09 Apr 2021 00:48:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQXTUpAt93YdLhTvSpZ-4FLpOn09Seu=kQTP5OK8DyHoTQ@mail.gmail.com>
 <8CD94AFC-A834-4BB8-BA99-9A86BCED2A47@elitecoding.org> <CAG16vQWeLecqv-yho3SOM6bQw8PcOd6ORvLhBBnRquQcc9SiRA@mail.gmail.com>
 <3f0ebbf0-5a0e-f1c1-51b1-5ad7f9b84f84@elitecoding.org> <CAG16vQXp0y21WU58BLcFi=c1HdDrOKqoMT=qRHLcjkvsQsmo6w@mail.gmail.com>
 <CAG16vQXaQfHBnZ0z3Sfrryc7V+6ejQXuWSsF51Y8Pn8U5pucAQ@mail.gmail.com> <6ec75272-65c9-1dce-ae88-39cd47affd49@elitecoding.org>
In-Reply-To: <6ec75272-65c9-1dce-ae88-39cd47affd49@elitecoding.org>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Fri, 9 Apr 2021 09:48:18 +0200
Message-ID: <CAG16vQV7J1dnf+-v5pzUf6eTxn7SJYgPtHh03=Pchd5v_Ui54w@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Message-ID-Hash: Q2AYNUTPSP7NPZ4NYH4CUA7KL5CZLHYC
X-Message-ID-Hash: Q2AYNUTPSP7NPZ4NYH4CUA7KL5CZLHYC
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Enable AGC in USRP E320 with RFNoC using GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Q2AYNUTPSP7NPZ4NYH4CUA7KL5CZLHYC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4873136984636696689=="

--===============4873136984636696689==
Content-Type: multipart/alternative; boundary="000000000000ed364705bf85630a"

--000000000000ed364705bf85630a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julian,

Sorry for the late reply and thanks for the answer.

I have been debugging the configuration printing the entries of "set_agc"
that I have found on cpp/py files in the uhd driver and ettus repositories,
and I can confirm that the code is not getting to the ad9361_device.cpp as
I thought in the beginning.

If I go through the code from my python script to the ad9361_device.cpp
configuration file I see the following:

   - The python scripts calls for ettus.rfnoc_rx_radio.set_agc method,
   which is found in ettus repository (for usrp_source is on gnuradio/uhd l=
ib)


   - The rfnoc_rx_radio class is defined in
   gr-ettus/lib/rfnoc_rx_radio_impl.h, where there is also a pointer to the
   radio_control class defined:


>>
>>
>> *class rfnoc_rx_radio_impl : public rfnoc_rx_radio{public:
>> rfnoc_rx_radio_impl(::uhd::*
>>
>>
>> *rfnoc::noc_block_base::sptr block_ref);    ~rfnoc_rx_radio_impl();
>> /*** API ***************************************************************
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>>
>> ******/    double set_rate(const double rate);    void set_antenna(const
>> std::string& antenna, const size_t chan);    double set_frequency(const
>> double frequency, const size_t chan);    void set_tune_args(const
>> ::uhd::device_addr_t& args, const size_t chan);    double set_gain(const
>> double gain, const size_t chan);    double set_gain(const double gain,
>> const std::string& name, const size_t chan);    void set_agc(const bool
>> enable, const size_t chan);    void set_gain_profile(const std::string&
>> profile, const size_t chan);    double set_bandwidth(const double
>> bandwidth, const size_t chan);    void    set_lo_source(const std::strin=
g&
>> source, const std::string& name, const size_t chan);    void
>> set_lo_export_enabled(const bool enabled, const std::string& name, const
>> size_t chan);    double set_lo_freq(const double freq, const std::string=
&
>> name, const size_t chan);    void set_dc_offset(const bool enable, const
>> size_t chan);    void set_dc_offset(const std::complex<double>& offset,
>> const size_t chan);    void set_iq_balance(const bool enable, const size=
_t
>> chan);    void set_iq_balance(const std::complex<double>& correction, co=
nst
>> size_t chan);private:    ::uhd::rfnoc::radio_control::*
>> *sptr d_radio_ref;};*
>>
>
   - In gr-ettus/lib/rfnoc_rx_radio_impl.cpp when set_agc command is
   received, it returns a call to the pointer I mention before, and therefo=
re,
   to the radio_control class:

*void rfnoc_rx_radio_impl::set_agc(*
>>
>> *const bool enable, const size_t chan){    return
>> d_radio_ref->set_rx_agc(*
>> *enable, chan);}*
>>
>
   - The radio_control class is found in the UHD driver repository in
   uhd/host/include/uhd/rfnoc/radio_control.hpp which is virtually implemen=
ted
   as radio_control_impl class in e3xx_radio_control_impl.cpp
   (host/lib/usrp/board/e3xx)
   - This file calls to the ad9361_ctrl class which is implemented in
   e3xx_ad9361_iface.cpp (host/lib/usrp/board/e3xx)
   - At this point, there is a call for the rpc_client where I get kind of
   lost about how to change the registers this way:



>>
>>
>> *void set_agc(const std::string& which, bool
>> enable){_rpcc->request_with_token<void>(this->_rpc_prefix + "set_agc",
>> which, enable);}*
>>
>


To be brief:

   - When debugging I can't see that my code gets to the only configuration
   file I found which is the ad9361_device.cpp
   - The set_agc command seems to be manage through the rpc_client (I think
   this is related to the module peripheral manager which is a "layer of
   control that UHD uses to access, configure and control the hardware",
   https://files.ettus.com/manual/page_mpm.html)
   - Inside the code, in multi_usrp files there is a comment that the
   specific configuration of the AGC is set in the property_tree but I don'=
t
   know how to write the configuration registers of the agc through the
   property_tree.


So my questions here are:

   1. How can I set the configuration registers of the AGC, through the MPM
   or the property tree?
   2. Are there examples on how I can set these registers through the MPM
   or the property_tree?


Kind Regards,

Maria

El mi=C3=A9, 24 mar 2021 a las 11:20, Julian Arnold (<julian@elitecoding.or=
g>)
escribi=C3=B3:

> Maria,
>
> that sounds about right!
> However, to make absolutely sure GNU Radio picks up the modified libuhd
> you could add a print statement somewhere in your UHD code.
> You could also compare your UHD install prefix to the path gr-uhd
> uses for linking libuhd.
>
> Below is the patch I used for my tests:
>
> diff --git a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> index 9e088871d..0e5bc86c5 100644
> --- a/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> +++ b/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> @@ -1089,7 +1089,7 @@ void ad9361_device_t::_setup_gain_control(bool agc)
>           _io_iface->poke8(0x0FD, 0x4C); // Max Full/LMT Gain Table Index
>           _io_iface->poke8(0x0FE, 0x44); // Decr Step Size, Peak
> Overload Time
>           _io_iface->poke8(0x100, 0x6F); // Max Digital Gain
> -        _io_iface->poke8(0x101, 0x0A); // Max Digital Gain
> +        _io_iface->poke8(0x101, 0x02); // Max Digital Gain
>           _io_iface->poke8(0x103, 0x08); // Max Digital Gain
>           _io_iface->poke8(0x104, 0x2F); // ADC Small Overload Threshold
>           _io_iface->poke8(0x105, 0x3A); // ADC Large Overload Threshold
> @@ -1098,14 +1098,14 @@ void ad9361_device_t::_setup_gain_control(bool ag=
c)
>           _io_iface->poke8(0x108, 0x31);
>           _io_iface->poke8(0x111, 0x0A);
>           _io_iface->poke8(0x11A, 0x1C);
> -        _io_iface->poke8(0x120, 0x0C);
> +        _io_iface->poke8(0x120, 0x04);
>           _io_iface->poke8(0x121, 0x44);
>           _io_iface->poke8(0x122, 0x44);
>           _io_iface->poke8(0x123, 0x11);
>           _io_iface->poke8(0x124, 0xF5);
>           _io_iface->poke8(0x125, 0x3B);
>           _io_iface->poke8(0x128, 0x03);
> -        _io_iface->poke8(0x129, 0x56);
> +        _io_iface->poke8(0x129, 0x11);
>           _io_iface->poke8(0x12A, 0x22);
>       } else {
>           _io_iface->poke8(0x0FA, 0xE0); // Gain Control Mode Select
>
>
> Cheers,
> Julian
>
> On 3/24/21 9:59 AM, Maria Mu=C3=B1oz wrote:
> > Hi Julian,
> >
> > I have the chance to test the AGC with a B210 and perform the same grap=
h
> > as you send me but I am unable to see what you saw so I think I'm
> > missing something.
> > I also have UHD 4.0 and GNURadio 3.8 (installed by source).
> >
> > The steps I take are these:
> >
> >   * First, I change the ad9361_device.cpp that is in uhd repository in
> >     //uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp,
> >     registers 0x101, 0x120, 0x129, 0x123 and 0x12A./
> >   * Then, I do "make" and "make install" to compile the changes in
> >     build-host folder.
> >   * After that, I generate the python script for the GRC flow graph and
> >     move the "set_agc" command after the "set_rate" one.
> >   * Finally, I run the python.
> >
> > I can't see my waveform between the values I set. Is there something
> > wrong with those steps? Did you do anything else?
> >
> > King Regards,
> >
> > Maria
> >
> > /
> > /
> >
> > El mar, 23 mar 2021 a las 9:23, Maria Mu=C3=B1oz (<mamuki92@gmail.com
> > <mailto:mamuki92@gmail.com>>) escribi=C3=B3:
> >
> >     Hi Julian,
> >
> >     Thanks for the checking!
> >
> >     I have also checked my graph and samp_rate is setting first, so I'l=
l
> >     try to test it with a sine waveform as you suggested and see if tha=
t
> >     works. If not, maybe is an RFNoC/gr-ettus problem. I'll put an issu=
e
> >     in the gr-ettus repository in that case.
> >
> >     Thanks again for your help.
> >
> >     Kind Regards,
> >
> >     Maria.
> >
> >     El mar, 23 mar 2021 a las 0:36, Julian Arnold
> >     (<julian@elitecoding.org <mailto:julian@elitecoding.org>>) escribi=
=C3=B3:
> >
> >         Maria,
> >
> >         I couldn't resist trying this myself, as your modifications
> seemed
> >         reasonable.
> >
> >         So I did set up a simple test with a b210 connected to my sigge=
n
> >         feeding
> >         it with a tone of varying power at 2.4102GHz.
> >
> >         For the default UHD AGC settings I could confirm that the signa=
l
> >         was
> >         kept between -10 dBFS and -12 dBFS (20 * log10(|x|) over a
> >         pretty wide
> >         input power range.
> >         This was using GR 3.8 and UHD 4.0.
> >
> >         However, I had to modify the generate flow-graph slightly, as
> >         the AGC
> >         was enables before the sample-rate was set (maybe double check
> >         that, too).
> >
> >         Afterwards, I used your settings (I did change reg 0x129 to 0x1=
1
> >         (1dB
> >         +-), though).
> >         Also those settings worked as expected and the signal was nicel=
y
> >         kept
> >         between -2 dBFS and -4 dBFS.
> >
> >         Attached is a picture of the flow-graph I used for testing.
> >         Maybe you
> >         could also start by testing with a sine wave to verifying that
> your
> >         values get applied properly.
> >
> >         Cheers,
> >         Julian
> >
> >         On 3/22/21 6:21 PM, Maria Mu=C3=B1oz wrote:
> >          > Hi Julian,
> >          >
> >          > Sure.
> >          >
> >          > I am receiving a QPSK through the radio and plotting it in a
> >         QT graph
> >          > (see grc.png)
> >          > If I have AGC disable, I get what is shown in
> >         "test_without_agc.png",
> >          > then if I enable it, I see what is on "test_with_agc.png"
> where
> >          > "Quadrature" is always center more or less in 0.25 which
> >         might fit with
> >          > the values given by default (inner high threshold =3D -12dBF=
S,
> >         inner low
> >          > threshold =3D -10 dBFS).
> >          >
> >          > If I change the ad9361_device.cpp (attached) from line 1085,
> >         by changing
> >          > registers 0x101, 0x120 and 0x129 with values 0x02, 0x04 and
> 0x16
> >          > respectively to move between -2dbFS and -4 dBFS,  I see the
> same
> >          > waveform that I have in "test_with_agc.png" (I expect it to
> >         be around 0.7)
> >          >
> >          > Kind regards,
> >          >
> >          > Maria
> >          >
> >          > El lun, 22 mar 2021 a las 17:45, Julian Arnold
> >         (<julian@elitecoding.org <mailto:julian@elitecoding.org>
> >          > <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>) escribi=C3=B3:
> >          >
> >          >     Maria,
> >          >
> >          >     would you mind sharing your patch? Otherwise, it=E2=80=
=99s hard
> >         to tell what
> >          >     exactly is going on.
> >          >
> >          >     Cheers,
> >          >     Julian
> >          >
> >          >>     Am 22.03.2021 um 16:24 schrieb Maria Mu=C3=B1oz
> >         <mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com
> >>>:
> >          >>
> >          >>     =EF=BB=BF
> >          >>     Hi Julian,
> >          >>
> >          >>     I re-open this topic to ask a question about the
> >         configuration of
> >          >>     the ad9361 registers in GNUradio/RFNoC
> >          >>
> >          >>     As I understand, when AGC is enabled in slow mode, ther=
e
> >         are 4
> >          >>     configurable thresholds (inner low, inner high,
> >         outer low, and
> >          >>     outer high) and also 4 configurable steps to reach the
> zone
> >          >>     between the inner thresholds.
> >          >>
> >          >>     I have found the configuration of these registers
> >          >>
>  in /uhd/host/lib/usrp/common/ad9361_driver/ad9361_device.cpp
> >          >>     and changed their values there. Then, I have recompiled
> >         uhd (make
> >          >>     & make install) but, when I re-run my graph I see no
> >         change in my
> >          >>     waveform (it seem to stay in the same limits as the
> default
> >          >>     configuration).
> >          >>
> >          >>     Am I missing any other step that I have to done to
> >         configure these
> >          >>     parameters?
> >          >>
> >          >>     Kind Regards,
> >          >>
> >          >>     Maria
> >          >>
> >          >>     El vie, 12 mar 2021 a las 10:04, Maria Mu=C3=B1oz
> >         (<mamuki92@gmail.com <mailto:mamuki92@gmail.com>
> >          >>     <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>>>) escribi=C3=B3:
> >          >>
> >          >>         Ok Julian, I will check the tree node and try to
> >         modify the
> >          >>         properties. Thanks again for the help!
> >          >>
> >          >>         Kind Regards,
> >          >>         Maria
> >          >>
> >          >>         El jue, 11 mar 2021 a las 18:26, Julian Arnold
> >          >>         (<julian@elitecoding.org
> >         <mailto:julian@elitecoding.org> <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>)
> >          >>         escribi=C3=B3:
> >          >>
> >          >>             Maria,
> >          >>
> >          >>             >>
> >         /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
> >          >>             >>
> >          >>             >> but I have received the following errorThat'=
s
> >         why I
> >          >>             gave the reference ([1]) showing the correct
> >         syntax ;)
> >          >>             Anyways, glad it worked out for you!
> >          >>             You might consider filing a bug issue against
> >         gr-ettus on
> >          >>             github.
> >          >>
> >          >>             >> By the way, I have read that there are
> >         several modes
> >          >>             for AGC
> >          >>             >> (fast,slow,hybrid..) I was wondering which
> >         type is
> >          >>             implemented by
> >          >>             >> default and if it is possible to change AGC
> >         mode in the
> >          >>             flowgraph.
> >          >>             Those modes were mainly dictated by the AD9361.
> >         Default
> >          >>             should be
> >          >>             "slow". The "hybrid" mode is not implemented as
> >         far as I know.
> >          >>             Which mode you want ("slow" / "fast") depends o=
n
> the
> >          >>             signal you want to
> >          >>             receive. For burst-mode digital signals you
> >         might want to
> >          >>             switch to the
> >          >>             "fast" mode.
> >          >>             However, I think this is only possible by
> >         directly writing
> >          >>             to the corresponding property-tree node. Again,
> >         I'm not
> >          >>             sure about
> >          >>             UHD-4.0/gr-ettus though.
> >          >>
> >          >>             Cheers,
> >          >>             Julian
> >          >>
> >          >>
> >          >>             On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wrote:
> >          >>             > Hi Julian,
> >          >>             >
> >          >>             > I have initially changed the python generated
> >         for my
> >          >>             flowgraph with this
> >          >>             > line:
> >          >>             >
> >          >>             > /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False=
,
> 0)/
> >          >>             >
> >          >>             > but I have received the following error:
> >          >>             >
> >          >>             > T/raceback (most recent call last):
> >          >>             >    File "constellation_soft_decoder.py", line
> >         301, in
> >          >>             <module>
> >          >>             >      main()
> >          >>             >    File "constellation_soft_decoder.py", line
> >         277, in main
> >          >>             >      tb =3D top_block_cls()
> >          >>             >    File "constellation_soft_decoder.py", line
> >         166, in
> >          >>             __init__
> >          >>             >
> >         self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, 0)
> >          >>             > AttributeError: 'rfnoc_rx_radio_sptr' object
> >         has no
> >          >>             attribute 'set_rx_agc'/
> >          >>             >
> >          >>             > But rfnoc_radio_impl.cc defines it:
> >          >>             >
> >          >>             > /void rfnoc_rx_radio_impl::set_agc(const bool
> >         enable,
> >          >>             const size_t chan)
> >          >>             > {
> >          >>             >      return d_radio_ref->set_rx_agc(enable,
> chan);
> >          >>             > }/
> >          >>             >
> >          >>             > Searching the rfnoc_rx_radio_sptr with grep
> >         takes me to
> >          >>             "swig" files. I
> >          >>             > have looked at ettus_swig.py and seen that th=
e
> >         command
> >          >>             name is set_agc
> >          >>             > instead of set_rx_agc:
> >          >>             >
> >          >>             > /def set_agc(self, enable: "bool const", chan=
:
> >         "size_t
> >          >>             const") -> "void":
> >          >>             >          r"""
> >          >>             >          set_agc(rfnoc_rx_radio self, bool
> >         const enable,
> >          >>             size_t const chan)
> >          >>             >          Enable/disable the AGC for this RX
> >         radio (if
> >          >>             available)
> >          >>             >          """
> >          >>             >          return
> >         _ettus_swig.rfnoc_rx_radio_set_agc(self,
> >          >>             enable, chan)/
> >          >>             > /
> >          >>             > /
> >          >>             > Changing this in the flowgraph.py seems to
> >         work!! Thanks
> >          >>             for the help on
> >          >>             > this! I put this information here just in cas=
e
> >         someone
> >          >>             is stuck in the
> >          >>             > same point.
> >          >>             >
> >          >>             > By the way, I have read that there are severa=
l
> >         modes for
> >          >>             AGC
> >          >>             > (fast,slow,hybrid..) I was wondering which
> type is
> >          >>             implemented by
> >          >>             > default and if it is possible to change AGC
> >         mode in the
> >          >>             flowgraph.
> >          >>             >
> >          >>             > Kind Regards,
> >          >>             >
> >          >>             > Maria
> >          >>             >
> >          >>             >
> >          >>             > El mi=C3=A9, 10 mar 2021 a las 12:03, Maria M=
u=C3=B1oz
> >          >>             (<mamuki92@gmail.com <mailto:mamuki92@gmail.com=
>
> >         <mailto:mamuki92@gmail.com <mailto:mamuki92@gmail.com>>
> >          >>             > <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>
> >          >>             <mailto:mamuki92@gmail.com
> >         <mailto:mamuki92@gmail.com>>>>) escribi=C3=B3:
> >          >>             >
> >          >>             >     Hi Jules,
> >          >>             >
> >          >>             >     Thank you, I will try it and let you know
> >         as soon as
> >          >>             possible.
> >          >>             >
> >          >>             >     By the way, I have checked the python
> >          >>             generated using the UHD USRP
> >          >>             >     SOURCE block (instead of the RFNoC radio
> >         block) with
> >          >>             AGC active and
> >          >>             >     it generates the set of AGC fine. So, as
> >         you said,
> >          >>             it is fixed in
> >          >>             >     gr-uhd but it might still be a bug in
> >         gr-ettus.
> >          >>             >
> >          >>             >     Thanks again for the help!
> >          >>             >
> >          >>             >     Kind Regards,
> >          >>             >
> >          >>             >     Maria
> >          >>             >
> >          >>             >     El mi=C3=A9, 10 mar 2021 a las 11:25, Jul=
ian
> Arnold
> >          >>             >     (<julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>             <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>             <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>             <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>>) escribi=C3=B3:
> >          >>             >
> >          >>             >         Maria,
> >          >>             >
> >          >>             >          >> So, if I understand correctly, I
> >         have to put
> >          >>             there also
> >          >>             >         something like
> >          >>             >          >>
> >          >>
> >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't it?
> >          >>             >
> >          >>             >         Exactly! Take a look at [1] for the
> >         correct syntax.
> >          >>             >
> >          >>             >         [1]
> >          >>             >
> >          >>
> >
> https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc4=
971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
> >          >>             >
> >          >>             >         Let me know if that worked out for yo=
u.
> >          >>             >
> >          >>             >         Cheers,
> >          >>             >         Julian
> >          >>             >
> >          >>             >
> >          >>             >         On 3/10/21 9:59 AM, Maria Mu=C3=B1oz =
wrote:
> >          >>             >          > Hi Julian,
> >          >>             >          >
> >          >>             >          > Thanks for the quick answer.
> >          >>             >          >
> >          >>             >          > I think you might be right about
> >         the possible
> >          >>             bug turning on
> >          >>             >         the AGC
> >          >>             >          > from GRC. I have checked the flow
> graph
> >          >>             generated and there's no
> >          >>             >          > set_rx_agc enable option (I checke=
d
> >         the c++
> >          >>             definition block
> >          >>             >         where this
> >          >>             >          > option did appear but I hadn't loo=
k
> >         at the
> >          >>             python generated).
> >          >>             >          >
> >          >>             >          > The lines related to the radio in =
my
> >          >>             flowgraph are these:
> >          >>             >          >
> >          >>             >          > /self.ettus_rfnoc_rx_radio_0 =3D
> >          >>             ettus.rfnoc_rx_radio(
> >          >>             >          >              self.rfnoc_graph,
> >          >>             >          >              uhd.device_addr(''),
> >          >>             >          >              -1,
> >          >>             >          >              -1)
> >          >>             >          >
> >          >>             self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
> >          >>             >          >
> >          >>             self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', =
0)
> >          >>             >          >
> >          >>             self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0=
)
> >          >>             >          >
> >          >>             self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
> >          >>             >          >
> >          >>
> >           self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)
> >          >>             >          >
> >          >>             self.ettus_rfnoc_rx_radio_0.set_dc_offset(True,
> 0)
> >          >>             >          >
> >          >>             self.ettus_rfnoc_rx_radio_0.set_iq_balance(True=
,
> 0)/
> >          >>             >          >
> >          >>             >          > So, if I understand correctly, I
> >         have to put
> >          >>             there also
> >          >>             >         something like
> >          >>             >          >
> >          >>
> >           "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't it?
> >          >>             >          >
> >          >>             >          > Kind Regards,
> >          >>             >          >
> >          >>             >          > Maria
> >          >>             >          >
> >          >>             >          > El mi=C3=A9, 10 mar 2021 a las 9:1=
6,
> >         Julian Arnold
> >          >>             >         (<julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>             <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>             <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>             <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>
> >          >>             >          > <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>             <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>
> >          >>             >         <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>
> >          >>             <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>>>) escribi=C3=B3:
> >          >>             >          >
> >          >>             >          >     Maria,
> >          >>             >          >
> >          >>             >          >     I might not be the right perso=
n
> >         to answer
> >          >>             this, as my
> >          >>             >         experience with
> >          >>             >          >     UHD 4.0 is relatively limited
> >         at the moment.
> >          >>             >          >
> >          >>             >          >     However, I cant tell you that
> >         the AGC on
> >          >>             B2x0 devices is
> >          >>             >         controlled via
> >          >>             >          >     software (using set_rx_agc()).
> >         There is
> >          >>             no need to
> >          >>             >         directly modify the
> >          >>             >          >     state of any pins of the FPGA.
> >          >>             >          >
> >          >>             >          >     I vaguely remember that there
> >         was a bug
> >          >>             in an earlier
> >          >>             >         version of gr-uhd
> >          >>             >          >     (somewhere in 3.7) that made i=
t
> >         difficult
> >          >>             to turn on the
> >          >>             >         AGC using GRC.
> >          >>             >          >     That particular one is fixed i=
n
> >         gr-uhd.
> >          >>             Not sure about
> >          >>             >         gr-ettus, though.
> >          >>             >          >
> >          >>             >          >     Maybe try using set_rx_agc()
> >         manually in
> >          >>             you flow-graph
> >          >>             >         (*.py) and see
> >          >>             >          >     if that helps.
> >          >>             >          >
> >          >>             >          >     Cheers,
> >          >>             >          >     Julian
> >          >>             >          >
> >          >>             >          >     On 3/9/21 5:11 PM, Maria Mu=C3=
=B1oz
> via
> >          >>             USRP-users wrote:
> >          >>             >          >      > Hi all,
> >          >>             >          >      >
> >          >>             >          >      > I was wondering if it is
> >         possible to
> >          >>             enable AGC from
> >          >>             >         the RFNoC radio
> >          >>             >          >      > block in GNURadio. I use UH=
D
> 4.0
> >          >>             version and GNURadio
> >          >>             >         3.8 with
> >          >>             >          >     gr-ettus.
> >          >>             >          >      >
> >          >>             >          >      > I see that the RFNoC Rx
> >         radio block has an
> >          >>             >         enable/disable/default
> >          >>             >          >     AGC
> >          >>             >          >      > option in the GNURadio bloc=
k
> >         which I
> >          >>             assume calls the
> >          >>             >         UHD function
> >          >>             >          >      > "set_rx_agc"
> >          >>             >          >      >
> >          >>             >          >
> >          >>             >
> >          >>
> >            (
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abdab=
1f6c3775a9071b15c9805f866486
> )
> >          >>             >          >      >
> >          >>             >          >      > I have also checked on the
> >         FPGA side
> >          >>             that there is a
> >          >>             >         pin from
> >          >>             >          >     FPGA to
> >          >>             >          >      > AD9361 called XCVR_ENA_AGC
> >         which is
> >          >>             set always to 1 on
> >          >>             >         the top
> >          >>             >          >     level of
> >          >>             >          >      > the FPGA image (see attache=
d
> >         file
> >          >>             "e320.v", line 872).
> >          >>             >         This pin,
> >          >>             >          >      > according to
> >          >>             >          >      >
> >          >>             >          >
> >          >>             >
> >          >>
> >
> https://www.analog.com/media/en/technical-documentation/data-sheets/AD936=
1.pdf
> >          >>             >          >
> >          >>             >          >      > is the "Manual Control Inpu=
t
> for
> >          >>             Automatic Gain
> >          >>             >         Control (AGC)".
> >          >>             >          >      > Must be this pin set to 0 t=
o
> >         have AGC
> >          >>             working?
> >          >>             >          >      > If not, how can I get AGC
> >         working?
> >          >>             I've made some tests
> >          >>             >          >      > enabling/disabling this
> >         option but I
> >          >>             do not see any
> >          >>             >         changes
> >          >>             >          >     between the
> >          >>             >          >      > waveforms received.
> >          >>             >          >      >
> >          >>             >          >      > Any help would be
> appreciated.
> >          >>             >          >      >
> >          >>             >          >      > Kind Regards,
> >          >>             >          >      >
> >          >>             >          >      > Maria
> >          >>             >          >      >
> >          >>             >          >      >
> >          >>             _______________________________________________
> >          >>             >          >      > USRP-users mailing list
> >          >>             >          >      > USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>             <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>
> >          >>             >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>             <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>>
> >          >>             >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>             <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>
> >          >>             >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >          >>             <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>>>
> >          >>             >          >      >
> >          >>             >
> >          >>
> >
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >          >>             >          >      >
> >          >>             >          >
> >          >>             >
> >          >>
> >
>

--000000000000ed364705bf85630a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGkgSnVsaWFuLDxkaXY+PGJyPjwvZGl2PjxkaXY+U29ycnkgZm9yIHRo
ZSBsYXRlIHJlcGx5IGFuZCB0aGFua3MgZm9yIHRoZSBhbnN3ZXIuPC9kaXY+PGRpdj48YnI+PC9k
aXY+PGRpdj5JIGhhdmUgYmVlbiBkZWJ1Z2dpbmcgdGhlIGNvbmZpZ3VyYXRpb24gcHJpbnRpbmcg
dGhlIGVudHJpZXMgb2YgJnF1b3Q7c2V0X2FnYyZxdW90OyB0aGF0IEkgaGF2ZSBmb3VuZCBvbiBj
cHAvcHkgZmlsZXMgaW4gdGhlIHVoZCBkcml2ZXIgYW5kIGV0dHVzIHJlcG9zaXRvcmllcywgYW5k
IEkgY2FuIGNvbmZpcm0gdGhhdCB0aGUgY29kZSBpcyBub3QgZ2V0dGluZyB0byB0aGUgYWQ5MzYx
X2RldmljZS5jcHAgYXMgSSB0aG91Z2h0IGluIHRoZSBiZWdpbm5pbmcuPC9kaXY+PGRpdj48YnI+
PC9kaXY+PGRpdj5JZiBJIGdvIHRocm91Z2ggdGhlIGNvZGUgZnJvbSBteSBweXRob24gc2NyaXB0
IHRvIHRoZSBhZDkzNjFfZGV2aWNlLmNwcCBjb25maWd1cmF0aW9uIGZpbGUgSSBzZWUgdGhlIGZv
bGxvd2luZzo8L2Rpdj48ZGl2Pjx1bD48bGk+VGhlIHB5dGhvbiBzY3JpcHRzIGNhbGxzIGZvciBl
dHR1cy5yZm5vY19yeF9yYWRpby5zZXRfYWdjIG1ldGhvZCwgd2hpY2ggaXMgZm91bmQgaW4gZXR0
dXMgcmVwb3NpdG9yeSAoZm9yIHVzcnBfc291cmNlIGlzIG9uIGdudXJhZGlvL3VoZCBsaWIpPC9s
aT48L3VsPjx1bD48bGk+VGhlIHJmbm9jX3J4X3JhZGlvIGNsYXNzIGlzIGRlZmluZWQgaW4gZ3It
ZXR0dXMvbGliL3Jmbm9jX3J4X3JhZGlvX2ltcGwuaCwgd2hlcmUgdGhlcmUgaXMgYWxzbyBhIHBv
aW50ZXIgdG8gdGhlIHJhZGlvX2NvbnRyb2wgY2xhc3MgZGVmaW5lZDo8L2xpPjwvdWw+PGJsb2Nr
cXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4
O2JvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgi
PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBw
eCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxl
ZnQ6MWV4Ij48ZGl2IHN0eWxlPSJtYXJnaW4tbGVmdDo4MHB4Ij48aT5jbGFzcyByZm5vY19yeF9y
YWRpb19pbXBsIDogcHVibGljIHJmbm9jX3J4X3JhZGlvPGJyPns8YnI+cHVibGljOjxicj7CoCDC
oCByZm5vY19yeF9yYWRpb19pbXBsKDo6dWhkOjo8L2k+PGk+cmZub2M6Om5vY19ibG9ja19iYXNl
OjpzcHRyIGJsb2NrX3JlZik7PGJyPsKgIMKgIH5yZm5vY19yeF9yYWRpb19pbXBsKCk7PGJyPjxi
cj7CoCDCoCAvKioqIEFQSSAqKioqKioqKioqKioqKioqKioqKioqKioqKioqKio8L2k+PGk+Kioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqPC9pPjxpPioqKioqLzxicj7CoCDCoCBkb3VibGUg
c2V0X3JhdGUoY29uc3QgZG91YmxlIHJhdGUpOzxicj7CoCDCoCB2b2lkIHNldF9hbnRlbm5hKGNv
bnN0IHN0ZDo6c3RyaW5nJmFtcDsgYW50ZW5uYSwgY29uc3Qgc2l6ZV90IGNoYW4pOzxicj7CoCDC
oCBkb3VibGUgc2V0X2ZyZXF1ZW5jeShjb25zdCBkb3VibGUgZnJlcXVlbmN5LCBjb25zdCBzaXpl
X3QgY2hhbik7PGJyPsKgIMKgIHZvaWQgc2V0X3R1bmVfYXJncyhjb25zdCA6OnVoZDo6ZGV2aWNl
X2FkZHJfdCZhbXA7IGFyZ3MsIGNvbnN0IHNpemVfdCBjaGFuKTs8YnI+wqAgwqAgZG91YmxlIHNl
dF9nYWluKGNvbnN0IGRvdWJsZSBnYWluLCBjb25zdCBzaXplX3QgY2hhbik7PGJyPsKgIMKgIGRv
dWJsZSBzZXRfZ2Fpbihjb25zdCBkb3VibGUgZ2FpbiwgY29uc3Qgc3RkOjpzdHJpbmcmYW1wOyBu
YW1lLCBjb25zdCBzaXplX3QgY2hhbik7PGJyPsKgIMKgIHZvaWQgc2V0X2FnYyhjb25zdCBib29s
IGVuYWJsZSwgY29uc3Qgc2l6ZV90IGNoYW4pOzxicj7CoCDCoCB2b2lkIHNldF9nYWluX3Byb2Zp
bGUoY29uc3Qgc3RkOjpzdHJpbmcmYW1wOyBwcm9maWxlLCBjb25zdCBzaXplX3QgY2hhbik7PGJy
PsKgIMKgIGRvdWJsZSBzZXRfYmFuZHdpZHRoKGNvbnN0IGRvdWJsZSBiYW5kd2lkdGgsIGNvbnN0
IHNpemVfdCBjaGFuKTs8YnI+wqAgwqAgdm9pZDxicj7CoCDCoCBzZXRfbG9fc291cmNlKGNvbnN0
IHN0ZDo6c3RyaW5nJmFtcDsgc291cmNlLCBjb25zdCBzdGQ6OnN0cmluZyZhbXA7IG5hbWUsIGNv
bnN0IHNpemVfdCBjaGFuKTs8YnI+wqAgwqAgdm9pZDxicj7CoCDCoCBzZXRfbG9fZXhwb3J0X2Vu
YWJsZWQoY29uc3QgYm9vbCBlbmFibGVkLCBjb25zdCBzdGQ6OnN0cmluZyZhbXA7IG5hbWUsIGNv
bnN0IHNpemVfdCBjaGFuKTs8YnI+wqAgwqAgZG91YmxlIHNldF9sb19mcmVxKGNvbnN0IGRvdWJs
ZSBmcmVxLCBjb25zdCBzdGQ6OnN0cmluZyZhbXA7IG5hbWUsIGNvbnN0IHNpemVfdCBjaGFuKTs8
YnI+wqAgwqAgdm9pZCBzZXRfZGNfb2Zmc2V0KGNvbnN0IGJvb2wgZW5hYmxlLCBjb25zdCBzaXpl
X3QgY2hhbik7PGJyPsKgIMKgIHZvaWQgc2V0X2RjX29mZnNldChjb25zdCBzdGQ6OmNvbXBsZXgm
bHQ7ZG91YmxlJmd0OyZhbXA7IG9mZnNldCwgY29uc3Qgc2l6ZV90IGNoYW4pOzxicj7CoCDCoCB2
b2lkIHNldF9pcV9iYWxhbmNlKGNvbnN0IGJvb2wgZW5hYmxlLCBjb25zdCBzaXplX3QgY2hhbik7
PGJyPsKgIMKgIHZvaWQgc2V0X2lxX2JhbGFuY2UoY29uc3Qgc3RkOjpjb21wbGV4Jmx0O2RvdWJs
ZSZndDsmYW1wOyBjb3JyZWN0aW9uLCBjb25zdCBzaXplX3QgY2hhbik7PGJyPjxicj5wcml2YXRl
Ojxicj7CoCDCoCA6OnVoZDo6cmZub2M6OnJhZGlvX2NvbnRyb2w6OjwvaT48aT5zcHRyIGRfcmFk
aW9fcmVmOzxicj59OzwvaT48YnI+PC9kaXY+PC9ibG9ja3F1b3RlPjwvYmxvY2txdW90ZT48ZGl2
Pjx1bD48bGk+SW4gZ3ItZXR0dXMvbGliL3Jmbm9jX3J4X3JhZGlvX2ltcGwuY3BwIHdoZW4gc2V0
X2FnYyBjb21tYW5kIGlzIHJlY2VpdmVkLCBpdCByZXR1cm5zIGEgY2FsbCB0byB0aGUgcG9pbnRl
ciBJIG1lbnRpb24gYmVmb3JlLCBhbmQgdGhlcmVmb3JlLCB0byB0aGUgcmFkaW9fY29udHJvbCBj
bGFzczo8L2xpPjwvdWw+PGRpdj48YmxvY2txdW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxl
PSJtYXJnaW46MHB4IDBweCAwcHggMC44ZXg7Ym9yZGVyLWxlZnQ6MXB4IHNvbGlkIHJnYigyMDQs
MjA0LDIwNCk7cGFkZGluZy1sZWZ0OjFleCI+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3Rl
IiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xpZCBy
Z2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPjxkaXYgc3R5bGU9Im1hcmdpbi1sZWZ0
OjgwcHgiPjxpPnZvaWQgcmZub2NfcnhfcmFkaW9faW1wbDo6c2V0X2FnYyg8L2k+PGk+Y29uc3Qg
Ym9vbCBlbmFibGUsIGNvbnN0IHNpemVfdCBjaGFuKTxicj57PGJyPsKgIMKgIHJldHVybiBkX3Jh
ZGlvX3JlZi0mZ3Q7c2V0X3J4X2FnYyg8L2k+PGk+ZW5hYmxlLCBjaGFuKTs8YnI+fTwvaT48YnI+
PC9kaXY+PC9ibG9ja3F1b3RlPjwvYmxvY2txdW90ZT48L2Rpdj48dWw+PGxpPlRoZSByYWRpb19j
b250cm9sIGNsYXNzIGlzIGZvdW5kIGluIHRoZSBVSEQgZHJpdmVyIHJlcG9zaXRvcnkgaW4gdWhk
L2hvc3QvaW5jbHVkZS91aGQvcmZub2MvcmFkaW9fY29udHJvbC5ocHAgd2hpY2ggaXMgdmlydHVh
bGx5IGltcGxlbWVudGVkIGFzIHJhZGlvX2NvbnRyb2xfaW1wbCBjbGFzcyBpbiBlM3h4X3JhZGlv
X2NvbnRyb2xfaW1wbC5jcHAgKGhvc3QvbGliL3VzcnAvYm9hcmQvZTN4eCk8L2xpPjxsaT5UaGlz
IGZpbGUgY2FsbHMgdG8gdGhlIGFkOTM2MV9jdHJsIGNsYXNzIHdoaWNoIGlzIGltcGxlbWVudGVk
IGluIGUzeHhfYWQ5MzYxX2lmYWNlLmNwcCAoaG9zdC9saWIvdXNycC9ib2FyZC9lM3h4KTwvbGk+
PGxpPkF0IHRoaXMgcG9pbnQsIHRoZXJlIGlzIGEgY2FsbCBmb3IgdGhlIHJwY19jbGllbnQgd2hl
cmUgSSBnZXQga2luZCBvZiBsb3N0IGFib3V0IGhvdyB0byBjaGFuZ2UgdGhlIHJlZ2lzdGVycyB0
aGlzIHdheTo8L2xpPjwvdWw+PC9kaXY+PGRpdj48YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9
ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0
OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPjxibG9ja3F1b3Rl
IGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDtib3Jk
ZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwyMDQsMjA0KTtwYWRkaW5nLWxlZnQ6MWV4Ij48ZGl2
IHN0eWxlPSJtYXJnaW4tbGVmdDo0MHB4Ij48aT52b2lkIHNldF9hZ2MoY29uc3Qgc3RkOjpzdHJp
bmcmYW1wOyB3aGljaCwgYm9vbCBlbmFibGUpPGJyPns8YnI+X3JwY2MtJmd0O3JlcXVlc3Rfd2l0
aF90b2tlbiZsdDt2b2lkJmd0Oyh0aGlzLSZndDtfcnBjX3ByZWZpeCArICZxdW90O3NldF9hZ2Mm
cXVvdDssIHdoaWNoLCBlbmFibGUpOzxicj59PC9pPjwvZGl2PjwvYmxvY2txdW90ZT48L2Jsb2Nr
cXVvdGU+PGRpdj48YnI+PC9kaXY+PGRpdj7CoDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+VG8g
YmUgYnJpZWY6IDxicj48L2Rpdj48ZGl2Pjx1bD48bGk+V2hlbiBkZWJ1Z2dpbmcgSSBjYW4mIzM5
O3Qgc2VlIHRoYXQgbXkgY29kZSBnZXRzIHRvIHRoZSBvbmx5IGNvbmZpZ3VyYXRpb24gZmlsZSBJ
IGZvdW5kIHdoaWNoIGlzIHRoZSBhZDkzNjFfZGV2aWNlLmNwcCA8L2xpPjxsaT5UaGUgc2V0X2Fn
YyBjb21tYW5kIHNlZW1zIHRvIGJlIG1hbmFnZSB0aHJvdWdoIHRoZSBycGNfY2xpZW50IChJIHRo
aW5rIHRoaXMgaXMgcmVsYXRlZCB0byB0aGUgbW9kdWxlIHBlcmlwaGVyYWwgbWFuYWdlciB3aGlj
aCBpcyBhICZxdW90O2xheWVyIG9mIGNvbnRyb2wgdGhhdCBVSEQgdXNlcyB0byBhY2Nlc3MsIGNv
bmZpZ3VyZSBhbmQgY29udHJvbCB0aGUgaGFyZHdhcmUmcXVvdDssIDxhIGhyZWY9Imh0dHBzOi8v
ZmlsZXMuZXR0dXMuY29tL21hbnVhbC9wYWdlX21wbS5odG1sIj5odHRwczovL2ZpbGVzLmV0dHVz
LmNvbS9tYW51YWwvcGFnZV9tcG0uaHRtbDwvYT4pwqA8L2xpPjxsaT5JbnNpZGUgdGhlIGNvZGUs
IGluIG11bHRpX3VzcnAgZmlsZXMgdGhlcmUgaXMgYSBjb21tZW50IHRoYXQgdGhlIHNwZWNpZmlj
IGNvbmZpZ3VyYXRpb24gb2YgdGhlIEFHQyBpcyBzZXQgaW4gdGhlIHByb3BlcnR5X3RyZWUgYnV0
IEkgZG9uJiMzOTt0IGtub3cgaG93IHRvIHdyaXRlIHRoZSBjb25maWd1cmF0aW9uIHJlZ2lzdGVy
cyBvZiB0aGUgYWdjIHRocm91Z2ggdGhlIHByb3BlcnR5X3RyZWUuPC9saT48L3VsPjxkaXY+PGJy
PjwvZGl2PjxkaXY+U28gbXkgcXVlc3Rpb25zIGhlcmUgYXJlOjwvZGl2PjxkaXY+PG9sPjxsaT5I
b3cgY2FuIEkgc2V0IHRoZSBjb25maWd1cmF0aW9uIHJlZ2lzdGVycyBvZiB0aGUgQUdDLCB0aHJv
dWdoIHRoZSBNUE0gb3IgdGhlIHByb3BlcnR5IHRyZWU/PC9saT48bGk+QXJlIHRoZXJlIGV4YW1w
bGVzIG9uIGhvdyBJIGNhbiBzZXQgdGhlc2UgcmVnaXN0ZXJzIHRocm91Z2ggdGhlIE1QTSBvciB0
aGUgcHJvcGVydHlfdHJlZT/CoDwvbGk+PC9vbD48ZGl2Pjxicj48L2Rpdj48ZGl2PktpbmQgUmVn
YXJkcyw8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2Pk1hcmlhPGJyPjwvZGl2PjwvZGl2PjwvZGl2
PjwvZGl2PjwvZGl2Pjxicj48ZGl2IGNsYXNzPSJnbWFpbF9xdW90ZSI+PGRpdiBkaXI9Imx0ciIg
Y2xhc3M9ImdtYWlsX2F0dHIiPkVsIG1pw6ksIDI0IG1hciAyMDIxIGEgbGFzIDExOjIwLCBKdWxp
YW4gQXJub2xkICgmbHQ7PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRh
cmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDspIGVzY3JpYmnDszo8
YnI+PC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBw
eCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0LDIwNCwyMDQpO3Bh
ZGRpbmctbGVmdDoxZXgiPk1hcmlhLDxicj4NCjxicj4NCnRoYXQgc291bmRzIGFib3V0IHJpZ2h0
ITxicj4NCkhvd2V2ZXIsIHRvIG1ha2UgYWJzb2x1dGVseSBzdXJlIEdOVSBSYWRpbyBwaWNrcyB1
cCB0aGUgbW9kaWZpZWQgbGlidWhkIDxicj4NCnlvdSBjb3VsZCBhZGQgYSBwcmludCBzdGF0ZW1l
bnQgc29tZXdoZXJlIGluIHlvdXIgVUhEIGNvZGUuPGJyPg0KWW91IGNvdWxkIGFsc28gY29tcGFy
ZSB5b3VyIFVIRCBpbnN0YWxsIHByZWZpeCB0byB0aGUgcGF0aCBnci11aGQ8YnI+DQp1c2VzIGZv
ciBsaW5raW5nIGxpYnVoZC48YnI+DQo8YnI+DQpCZWxvdyBpcyB0aGUgcGF0Y2ggSSB1c2VkIGZv
ciBteSB0ZXN0czo8YnI+DQo8YnI+DQpkaWZmIC0tZ2l0IGEvaG9zdC9saWIvdXNycC9jb21tb24v
YWQ5MzYxX2RyaXZlci9hZDkzNjFfZGV2aWNlLmNwcCA8YnI+DQpiL2hvc3QvbGliL3VzcnAvY29t
bW9uL2FkOTM2MV9kcml2ZXIvYWQ5MzYxX2RldmljZS5jcHA8YnI+DQppbmRleCA5ZTA4ODg3MWQu
LjBlNWJjODZjNSAxMDA2NDQ8YnI+DQotLS0gYS9ob3N0L2xpYi91c3JwL2NvbW1vbi9hZDkzNjFf
ZHJpdmVyL2FkOTM2MV9kZXZpY2UuY3BwPGJyPg0KKysrIGIvaG9zdC9saWIvdXNycC9jb21tb24v
YWQ5MzYxX2RyaXZlci9hZDkzNjFfZGV2aWNlLmNwcDxicj4NCkBAIC0xMDg5LDcgKzEwODksNyBA
QCB2b2lkIGFkOTM2MV9kZXZpY2VfdDo6X3NldHVwX2dhaW5fY29udHJvbChib29sIGFnYyk8YnI+
DQrCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MEZELCAweDRDKTsgLy8gTWF4
IEZ1bGwvTE1UIEdhaW4gVGFibGUgSW5kZXg8YnI+DQrCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2Ut
Jmd0O3Bva2U4KDB4MEZFLCAweDQ0KTsgLy8gRGVjciBTdGVwIFNpemUsIFBlYWsgPGJyPg0KT3Zl
cmxvYWQgVGltZTxicj4NCsKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMDAs
IDB4NkYpOyAvLyBNYXggRGlnaXRhbCBHYWluPGJyPg0KLcKgIMKgIMKgIMKgIF9pb19pZmFjZS0m
Z3Q7cG9rZTgoMHgxMDEsIDB4MEEpOyAvLyBNYXggRGlnaXRhbCBHYWluPGJyPg0KK8KgIMKgIMKg
IMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMDEsIDB4MDIpOyAvLyBNYXggRGlnaXRhbCBHYWlu
PGJyPg0KwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEwMywgMHgwOCk7IC8v
IE1heCBEaWdpdGFsIEdhaW48YnI+DQrCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4
KDB4MTA0LCAweDJGKTsgLy8gQURDIFNtYWxsIE92ZXJsb2FkIFRocmVzaG9sZDxicj4NCsKgIMKg
IMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMDUsIDB4M0EpOyAvLyBBREMgTGFyZ2Ug
T3ZlcmxvYWQgVGhyZXNob2xkPGJyPg0KQEAgLTEwOTgsMTQgKzEwOTgsMTQgQEAgdm9pZCBhZDkz
NjFfZGV2aWNlX3Q6Ol9zZXR1cF9nYWluX2NvbnRyb2woYm9vbCBhZ2MpPGJyPg0KwqAgwqAgwqAg
wqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEwOCwgMHgzMSk7PGJyPg0KwqAgwqAgwqAgwqAg
wqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDExMSwgMHgwQSk7PGJyPg0KwqAgwqAgwqAgwqAgwqAg
X2lvX2lmYWNlLSZndDtwb2tlOCgweDExQSwgMHgxQyk7PGJyPg0KLcKgIMKgIMKgIMKgIF9pb19p
ZmFjZS0mZ3Q7cG9rZTgoMHgxMjAsIDB4MEMpOzxicj4NCivCoCDCoCDCoCDCoCBfaW9faWZhY2Ut
Jmd0O3Bva2U4KDB4MTIwLCAweDA0KTs8YnI+DQrCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0
O3Bva2U4KDB4MTIxLCAweDQ0KTs8YnI+DQrCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bv
a2U4KDB4MTIyLCAweDQ0KTs8YnI+DQrCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4
KDB4MTIzLCAweDExKTs8YnI+DQrCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4
MTI0LCAweEY1KTs8YnI+DQrCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTI1
LCAweDNCKTs8YnI+DQrCoCDCoCDCoCDCoCDCoCBfaW9faWZhY2UtJmd0O3Bva2U4KDB4MTI4LCAw
eDAzKTs8YnI+DQotwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgweDEyOSwgMHg1Nik7
PGJyPg0KK8KgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMjksIDB4MTEpOzxicj4N
CsKgIMKgIMKgIMKgIMKgIF9pb19pZmFjZS0mZ3Q7cG9rZTgoMHgxMkEsIDB4MjIpOzxicj4NCsKg
IMKgIMKgIH0gZWxzZSB7PGJyPg0KwqAgwqAgwqAgwqAgwqAgX2lvX2lmYWNlLSZndDtwb2tlOCgw
eDBGQSwgMHhFMCk7IC8vIEdhaW4gQ29udHJvbCBNb2RlIFNlbGVjdDxicj4NCjxicj4NCjxicj4N
CkNoZWVycyw8YnI+DQpKdWxpYW48YnI+DQo8YnI+DQpPbiAzLzI0LzIxIDk6NTkgQU0sIE1hcmlh
IE11w7FveiB3cm90ZTo8YnI+DQomZ3Q7IEhpIEp1bGlhbiw8YnI+DQomZ3Q7IDxicj4NCiZndDsg
SSBoYXZlIHRoZSBjaGFuY2UgdG8gdGVzdCB0aGUgQUdDIHdpdGggYSBCMjEwIGFuZCBwZXJmb3Jt
IHRoZSBzYW1lIGdyYXBoIDxicj4NCiZndDsgYXMgeW91IHNlbmQgbWUgYnV0IEkgYW0gdW5hYmxl
IHRvIHNlZSB3aGF0IHlvdSBzYXcgc28gSSB0aGluayBJJiMzOTttIDxicj4NCiZndDsgbWlzc2lu
ZyBzb21ldGhpbmcuPGJyPg0KJmd0OyBJIGFsc28gaGF2ZSBVSEQgNC4wIGFuZCBHTlVSYWRpbyAz
LjggKGluc3RhbGxlZCBieSBzb3VyY2UpLjxicj4NCiZndDsgPGJyPg0KJmd0OyBUaGUgc3RlcHMg
SSB0YWtlIGFyZSB0aGVzZTo8YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCogRmlyc3QsIEkgY2hh
bmdlIHRoZSBhZDkzNjFfZGV2aWNlLmNwcCB0aGF0IGlzIGluIHVoZCByZXBvc2l0b3J5IGluPGJy
Pg0KJmd0O8KgIMKgIMKgLy91aGQvaG9zdC9saWIvdXNycC9jb21tb24vYWQ5MzYxX2RyaXZlci9h
ZDkzNjFfZGV2aWNlLmNwcCw8YnI+DQomZ3Q7wqAgwqAgwqByZWdpc3RlcnMgMHgxMDEsIDB4MTIw
LCAweDEyOSwgMHgxMjMgYW5kIDB4MTJBLi88YnI+DQomZ3Q7wqAgwqAqIFRoZW4sIEkgZG8gJnF1
b3Q7bWFrZSZxdW90OyBhbmQgJnF1b3Q7bWFrZSBpbnN0YWxsJnF1b3Q7IHRvIGNvbXBpbGUgdGhl
IGNoYW5nZXMgaW48YnI+DQomZ3Q7wqAgwqAgwqBidWlsZC1ob3N0IGZvbGRlci48YnI+DQomZ3Q7
wqAgwqAqIEFmdGVywqB0aGF0LCBJIGdlbmVyYXRlIHRoZSBweXRob24gc2NyaXB0IGZvciB0aGUg
R1JDIGZsb3cgZ3JhcGggYW5kPGJyPg0KJmd0O8KgIMKgIMKgbW92ZSB0aGUgJnF1b3Q7c2V0X2Fn
YyZxdW90OyBjb21tYW5kIGFmdGVyIHRoZSAmcXVvdDtzZXRfcmF0ZSZxdW90OyBvbmUuPGJyPg0K
Jmd0O8KgIMKgKiBGaW5hbGx5LCBJIHJ1biB0aGUgcHl0aG9uLjxicj4NCiZndDsgPGJyPg0KJmd0
OyBJIGNhbiYjMzk7dCBzZWUgbXkgd2F2ZWZvcm0gYmV0d2VlbiB0aGUgdmFsdWVzIEkgc2V0LiBJ
cyB0aGVyZSBzb21ldGhpbmcgPGJyPg0KJmd0OyB3cm9uZyB3aXRoIHRob3NlIHN0ZXBzPyBEaWQg
eW91IGRvIGFueXRoaW5nIGVsc2U/PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IEtpbmfCoFJlZ2FyZHMs
PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IE1hcmlhPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IC88YnI+DQom
Z3Q7IC88YnI+DQomZ3Q7IDxicj4NCiZndDsgRWwgbWFyLCAyMyBtYXIgMjAyMSBhIGxhcyA5OjIz
LCBNYXJpYSBNdcOxb3ogKCZsdDs8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0
YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiA8YnI+DQomZ3Q7ICZsdDttYWls
dG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1h
bXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0OykgZXNjcmliacOzOjxicj4NCiZndDsgPGJyPg0K
Jmd0O8KgIMKgIMKgSGkgSnVsaWFuLDxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgVGhhbmtz
IGZvciB0aGUgY2hlY2tpbmchPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAgwqBJIGhhdmUgYWxz
byBjaGVja2VkIG15IGdyYXBoIGFuZCBzYW1wX3JhdGUgaXMgc2V0dGluZyBmaXJzdCwgc28gSSYj
Mzk7bGw8YnI+DQomZ3Q7wqAgwqAgwqB0cnkgdG8gdGVzdCBpdCB3aXRoIGEgc2luZSB3YXZlZm9y
bSBhcyB5b3Ugc3VnZ2VzdGVkIGFuZCBzZWUgaWYgdGhhdDxicj4NCiZndDvCoCDCoCDCoHdvcmtz
LiBJZiBub3QsIG1heWJlIGlzIGFuIFJGTm9DL2dyLWV0dHVzIHByb2JsZW0uIEkmIzM5O2xsIHB1
dCBhbiBpc3N1ZTxicj4NCiZndDvCoCDCoCDCoGluIHRoZSBnci1ldHR1cyByZXBvc2l0b3J5IGlu
IHRoYXQgY2FzZS48YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoFRoYW5rcyBhZ2FpbiBmb3Ig
eW91ciBoZWxwLjxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgS2luZCBSZWdhcmRzLDxicj4N
CiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgTWFyaWEuPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAg
wqBFbCBtYXIsIDIzIG1hciAyMDIxIGEgbGFzIDA6MzYsIEp1bGlhbiBBcm5vbGQ8YnI+DQomZ3Q7
wqAgwqAgwqAoJmx0OzxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJn
ZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4gJmx0O21haWx0bzo8YSBocmVm
PSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBl
bGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7IDxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoE1hcmlhLDxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
SSBjb3VsZG4mIzM5O3QgcmVzaXN0IHRyeWluZyB0aGlzIG15c2VsZiwgYXMgeW91ciBtb2RpZmlj
YXRpb25zIHNlZW1lZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHJlYXNvbmFibGUuPGJyPg0KJmd0
OyA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBTbyBJIGRpZCBzZXQgdXAgYSBzaW1wbGUgdGVzdCB3
aXRoIGEgYjIxMCBjb25uZWN0ZWQgdG8gbXkgc2lnZ2VuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ZmVlZGluZzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGl0IHdpdGggYSB0b25lIG9mIHZhcnlpbmcg
cG93ZXIgYXQgMi40MTAyR0h6Ljxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgRm9y
IHRoZSBkZWZhdWx0IFVIRCBBR0Mgc2V0dGluZ3MgSSBjb3VsZCBjb25maXJtIHRoYXQgdGhlIHNp
Z25hbDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHdhczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGtl
cHQgYmV0d2VlbiAtMTAgZEJGUyBhbmQgLTEyIGRCRlMgKDIwICogbG9nMTAofHh8KSBvdmVyIGE8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBwcmV0dHkgd2lkZTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oGlucHV0IHBvd2VyIHJhbmdlLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoFRoaXMgd2FzIHVzaW5n
IEdSIDMuOCBhbmQgVUhEIDQuMC48YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoEhv
d2V2ZXIsIEkgaGFkIHRvIG1vZGlmeSB0aGUgZ2VuZXJhdGUgZmxvdy1ncmFwaCBzbGlnaHRseSwg
YXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB0aGUgQUdDPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
d2FzIGVuYWJsZXMgYmVmb3JlIHRoZSBzYW1wbGUtcmF0ZSB3YXMgc2V0IChtYXliZSBkb3VibGUg
Y2hlY2s8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB0aGF0LCB0b28pLjxicj4NCiZndDsgPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgQWZ0ZXJ3YXJkcywgSSB1c2VkIHlvdXIgc2V0dGluZ3MgKEkgZGlk
IGNoYW5nZSByZWcgMHgxMjkgdG8gMHgxMTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCgxZEI8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqArLSksIHRob3VnaCkuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
QWxzbyB0aG9zZSBzZXR0aW5ncyB3b3JrZWQgYXMgZXhwZWN0ZWQgYW5kIHRoZSBzaWduYWwgd2Fz
IG5pY2VseTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGtlcHQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBiZXR3ZWVuIC0yIGRCRlMgYW5kIC00IGRCRlMuPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqBBdHRhY2hlZCBpcyBhIHBpY3R1cmUgb2YgdGhlIGZsb3ctZ3JhcGggSSB1c2VkIGZv
ciB0ZXN0aW5nLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoE1heWJlIHlvdTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoGNvdWxkIGFsc28gc3RhcnQgYnkgdGVzdGluZyB3aXRoIGEgc2luZSB3YXZlIHRv
IHZlcmlmeWluZyB0aGF0IHlvdXI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB2YWx1ZXMgZ2V0IGFw
cGxpZWQgcHJvcGVybHkuPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBDaGVlcnMs
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgSnVsaWFuPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqBPbiAzLzIyLzIxIDY6MjEgUE0sIE1hcmlhIE11w7FveiB3cm90ZTo8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyBIaSBKdWxpYW4sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBTdXJlLjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgSSBhbSByZWNlaXZpbmcgYSBR
UFNLIHRocm91Z2ggdGhlIHJhZGlvIGFuZCBwbG90dGluZ8KgaXQgaW4gYTxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoFFUIGdyYXBoPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgKHNlZSBncmMu
cG5nKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IElmIEkgaGF2ZSBBR0MgZGlzYWJsZSwg
SSBnZXQgd2hhdCBpcyBzaG93biBpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZxdW90O3Rlc3Rf
d2l0aG91dF9hZ2MucG5nJnF1b3Q7LDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IHRoZW4g
aWYgSSBlbmFibGUgaXQsIEkgc2VlIHdoYXQgaXMgb24gJnF1b3Q7dGVzdF93aXRoX2FnYy5wbmcm
cXVvdDsgd2hlcmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyAmcXVvdDtRdWFkcmF0dXJl
JnF1b3Q7IGlzIGFsd2F5cyBjZW50ZXIgbW9yZSBvciBsZXNzIGluIDAuMjUgd2hpY2g8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqBtaWdodCBmaXQgd2l0aDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7IHRoZSB2YWx1ZXMgZ2l2ZW4gYnkgZGVmYXVsdCAoaW5uZXIgaGlnaCB0aHJlc2hvbGQgPSAt
MTJkQkZTLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGlubmVyIGxvdzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7IHRocmVzaG9sZCA9IC0xMCBkQkZTKS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IElmIEkgY2hhbmdlIHRoZSBhZDkz
NjFfZGV2aWNlLmNwcCAoYXR0YWNoZWQpIGZyb20gbGluZSAxMDg1LDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoGJ5IGNoYW5naW5nPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgcmVnaXN0ZXJz
IDB4MTAxLCAweDEyMCBhbmQgMHgxMjkgd2l0aCB2YWx1ZXMgMHgwMiwgMHgwNCBhbmQgMHgxNjxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IHJlc3BlY3RpdmVseSB0byBtb3ZlIGJldHdlZW4g
LTJkYkZTIGFuZCAtNCBkQkZTLMKgIEkgc2VlIHRoZSBzYW1lPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsgd2F2ZWZvcm0gdGhhdCBJIGhhdmUgaW4gJnF1b3Q7dGVzdF93aXRoX2FnYy5wbmcm
cXVvdDsgKEkgZXhwZWN0IGl0IHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgYmUgYXJvdW5kIDAu
Nyk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7IEtpbmQgcmVnYXJkcyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7IE1hcmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBFbCBsdW4sIDIyIG1hciAyMDIxIGEgbGFzIDE3OjQ1
LCBKdWxpYW4gQXJub2xkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgKCZsdDs8YSBocmVmPSJtYWls
dG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmc8L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpq
dWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5n
Lm9yZzwvYT4mZ3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBNYXJpYSw8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqB3
b3VsZCB5b3UgbWluZCBzaGFyaW5nIHlvdXIgcGF0Y2g/IE90aGVyd2lzZSwgaXTigJlzIGhhcmQ8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB0byB0ZWxsIHdoYXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0O8KgIMKgIMKgZXhhY3RseSBpcyBnb2luZyBvbi48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBDaGVlcnMsPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEp1bGlhbjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBBbSAyMi4w
My4yMDIxIHVtIDE2OjI0IHNjaHJpZWIgTWFyaWEgTXXDsW96PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgJmx0OzxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5r
Ij5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVr
aTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBn
bWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVraTkyQGdtYWlsLmNv
bSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7Jmd0OyZndDs6PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqDvu788YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oEhpIEp1bGlhbiw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEkgcmUtb3BlbiB0aGlzIHRvcGljIHRvIGFzayBh
IHF1ZXN0aW9uIGFib3V0IHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGNvbmZpZ3VyYXRpb24g
b2Y8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHRoZSBhZDkzNjEgcmVn
aXN0ZXJzIGluIEdOVXJhZGlvL1JGTm9DPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBBcyBJIHVuZGVyc3RhbmQs
IHdoZW4gQUdDIGlzIGVuYWJsZWTCoGluIHNsb3cgbW9kZSwgdGhlcmU8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqBhcmUgNDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgY29u
ZmlndXJhYmxlIHRocmVzaG9sZHMgKGlubmVyIGxvdywgaW5uZXIgaGlnaCw8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqBvdXRlcsKgbG93LCBhbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoG91dGVywqBoaWdoKSBhbmQgYWxzbyA0IGNvbmZpZ3VyYWJsZSBzdGVwcyB0byBy
ZWFjaCB0aGUgem9uZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgYmV0
d2VlbsKgdGhlIGlubmVyIHRocmVzaG9sZHMuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBJIGhhdmUgZm91bmQg
dGhlIGNvbmZpZ3VyYXRpb24gb2YgdGhlc2UgcmVnaXN0ZXJzPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqBpbsKgL3VoZC9ob3N0L2xpYi91c3JwL2NvbW1vbi9hZDkzNjFf
ZHJpdmVyL2FkOTM2MV9kZXZpY2UuY3BwPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqBhbmTCoGNoYW5nZWQgdGhlaXIgdmFsdWVzIHRoZXJlLiBUaGVuLCBJIGhhdmUgcmVj
b21waWxlZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHVoZCAobWFrZTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgJmFtcDsgbWFrZSBpbnN0YWxsKSBidXQsIHdoZW4gSSBy
ZS1ydW4gbXkgZ3JhcGggSSBzZWUgbm88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBjaGFuZ2UgaW4g
bXk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoHdhdmVmb3JtIChpdCBz
ZWVtIHRvIHN0YXkgaW4gdGhlIHNhbWUgbGltaXRzIGFzIHRoZSBkZWZhdWx0PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBjb25maWd1cmF0aW9uKS48YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoEFtIEkgbWlzc2luZ8KgYW55wqBvdGhlcsKgc3RlcCB0aGF0IEkgaGF2ZSB0byBkb25lwqB0
bzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGNvbmZpZ3VyZSB0aGVzZTxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgcGFyYW1ldGVycz88YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoEtpbmQg
UmVnYXJkcyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoE1hcmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqBFbCB2aWUsIDEy
IG1hciAyMDIxIGEgbGFzIDEwOjA0LCBNYXJpYSBNdcOxb3o8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAoJmx0OzxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5r
Ij5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1hbXVr
aTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4mZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBn
bWFpbC5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJt
YWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9ibGFuayI+bWFtdWtpOTJAZ21haWwu
Y29tPC9hPiZndDsmZ3Q7Jmd0OykgZXNjcmliacOzOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgT2sg
SnVsaWFuLCBJIHdpbGwgY2hlY2sgdGhlIHRyZWUgbm9kZSBhbmQgdHJ5IHRvPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgbW9kaWZ5IHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgcHJvcGVydGllcy4gVGhhbmtzIGFnYWluIGZvciB0aGUgaGVscCE8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoEtpbmQgUmVnYXJkcyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoE1hcmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqBFbCBqdWUsIDEx
IG1hciAyMDIxIGEgbGFzIDE4OjI2LCBKdWxpYW4gQXJub2xkPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAoJmx0OzxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxp
dGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwv
YT4mZ3Q7ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmci
IHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5v
cmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDsmZ3Q7Jmd0
Oyk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoGVzY3JpYmnD
szo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoE1hcmlhLDxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAvc2VsZi5ldHR1c19yZm5v
Y19yeF9yYWRpb18wLnNldF9yeF9hZ2MoRmFsc2UsIDApLzxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7IGJ1dCBJIGhhdmUgcmVj
ZWl2ZWQgdGhlIGZvbGxvd2luZyBlcnJvclRoYXQmIzM5O3M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqB3aHkgSTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgZ2F2ZSB0aGUgcmVmZXJlbmNlIChbMV0pIHNob3dpbmcgdGhlIGNvcnJlY3Q8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqBzeW50YXggOyk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoEFueXdheXMsIGdsYWQgaXQgd29ya2VkIG91dCBmb3IgeW91ITxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgWW91IG1p
Z2h0IGNvbnNpZGVyIGZpbGluZyBhIGJ1ZyBpc3N1ZSBhZ2FpbnN0PGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgZ3ItZXR0dXMgb248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoGdpdGh1Yi48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7
IEJ5IHRoZSB3YXksIEkgaGF2ZSByZWFkIHRoYXQgdGhlcmUgYXJlPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgc2V2ZXJhbCBtb2Rlczxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgZm9yIEFHQzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0OyZndDsgKGZhc3Qsc2xvdyxoeWJyaWQuLikgSSB3YXMgd29u
ZGVyaW5nIHdoaWNoPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgdHlwZSBpczxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgaW1wbGVtZW50ZWQgYnk8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsmZ3Q7
IGRlZmF1bHQgYW5kIGlmIGl0IGlzIHBvc3NpYmxlIHRvIGNoYW5nZSBBR0M8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqBtb2RlIGluIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgZmxvd2dyYXBoLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgVGhvc2UgbW9kZXMgd2VyZSBtYWlubHkgZGljdGF0ZWQg
YnkgdGhlIEFEOTM2MS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBEZWZhdWx0PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzaG91bGQgYmU8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZxdW90O3Nsb3cm
cXVvdDsuIFRoZSAmcXVvdDtoeWJyaWQmcXVvdDsgbW9kZSBpcyBub3QgaW1wbGVtZW50ZWQgYXM8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBmYXIgYXMgSSBrbm93Ljxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgV2hpY2ggbW9kZSB5b3Ugd2FudCAoJnF1
b3Q7c2xvdyZxdW90OyAvICZxdW90O2Zhc3QmcXVvdDspIGRlcGVuZHMgb24gdGhlPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzaWduYWwgeW91IHdh
bnQgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oHJlY2VpdmUuIEZvciBidXJzdC1tb2RlIGRpZ2l0YWwgc2lnbmFscyB5b3U8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqBtaWdodCB3YW50IHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqBzd2l0Y2ggdG8gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmcXVvdDtmYXN0JnF1b3Q7IG1vZGUuPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBIb3dldmVyLCBJ
IHRoaW5rIHRoaXMgaXMgb25seSBwb3NzaWJsZSBieTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGRp
cmVjdGx5IHdyaXRpbmc8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoHRvIHRoZSBjb3JyZXNwb25kaW5nIHByb3BlcnR5LXRyZWUgbm9kZS4gQWdhaW4s
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgSSYjMzk7bSBub3Q8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHN1cmUgYWJvdXQ8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoFVIRC00LjAvZ3ItZXR0dXMgdGhv
dWdoLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgQ2hlZXJzLDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgSnVsaWFuPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBPbiAzLzExLzIx
IDU6MjYgUE0sIE1hcmlhIE11w7FveiB3cm90ZTo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgSGkgSnVsaWFuLDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBJIGhhdmUgaW5pdGlhbGx5
IGNoYW5nZWQgdGhlIHB5dGhvbiBnZW5lcmF0ZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBmb3Ig
bXk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGZs
b3dncmFwaCB3aXRoIHRoaXM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDsgbGluZTo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgL3NlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRf
cnhfYWdjKEZhbHNlLCAwKS88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDsgYnV0IEkgaGF2ZSByZWNlaXZlZCB0aGUgZm9sbG93aW5nIGVycm9y
Ojxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
OyBUL3JhY2ViYWNrIChtb3N0IHJlY2VudCBjYWxsIGxhc3QpOjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIEZpbGUgJnF1b3Q7Y29u
c3RlbGxhdGlvbl9zb2Z0X2RlY29kZXIucHkmcXVvdDssIGxpbmU8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAzMDEsIGluPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmbHQ7bW9kdWxlJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIG1haW4oKTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIEZpbGUgJnF1b3Q7Y29u
c3RlbGxhdGlvbl9zb2Z0X2RlY29kZXIucHkmcXVvdDssIGxpbmU8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAyNzcsIGluIG1haW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCB0YiA9IHRvcF9ibG9ja19jbHMoKTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIEZpbGUg
JnF1b3Q7Y29uc3RlbGxhdGlvbl9zb2Z0X2RlY29kZXIucHkmcXVvdDssIGxpbmU8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAxNjYsIGluPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqBfX2luaXRfXzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
c2VsZi5ldHR1c19yZm5vY19yeF9yYWRpb18wLnNldF9yeF9hZ2MoVHJ1ZSwgMCk8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgQXR0cmlidXRl
RXJyb3I6ICYjMzk7cmZub2NfcnhfcmFkaW9fc3B0ciYjMzk7IG9iamVjdDxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoGhhcyBubzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgYXR0cmlidXRlICYjMzk7c2V0X3J4X2FnYyYjMzk7Lzxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBCdXQgcmZub2NfcmFk
aW9faW1wbC5jYyBkZWZpbmVzIGl0Ojxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0OyAvdm9pZCByZm5vY19yeF9yYWRpb19pbXBsOjpzZXRfYWdj
KGNvbnN0IGJvb2w8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBlbmFibGUsPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBjb25zdCBzaXplX3QgY2hhbik8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsg
ezxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIHJldHVybiBkX3JhZGlvX3JlZi0mZ3Q7c2V0X3J4X2FnYyhlbmFibGUsIGNoYW4p
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
OyB9Lzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0OyBTZWFyY2hpbmcgdGhlIHJmbm9jX3J4X3JhZGlvX3NwdHIgd2l0aCBncmVwPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgdGFrZXMgbWUgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZxdW90O3N3aWcmcXVvdDsgZmlsZXMuIEk8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgaGF2ZSBsb29r
ZWQgYXQgZXR0dXNfc3dpZy5weSBhbmQgc2VlbiB0aGF0IHRoZTxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoGNvbW1hbmQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoG5hbWUgaXMgc2V0X2FnYzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBpbnN0ZWFkIG9mIHNldF9yeF9hZ2M6PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IC9kZWYgc2V0X2Fn
YyhzZWxmLCBlbmFibGU6ICZxdW90O2Jvb2wgY29uc3QmcXVvdDssIGNoYW46PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgJnF1b3Q7c2l6ZV90PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqBjb25zdCZxdW90OykgLSZndDsgJnF1b3Q7dm9pZCZxdW90Ozo8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvC
oCDCoCDCoCDCoCDCoCByJnF1b3Q7JnF1b3Q7JnF1b3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgc2V0X2FnYyhy
Zm5vY19yeF9yYWRpbyBzZWxmLCBib29sPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgY29uc3QgZW5h
YmxlLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
c2l6ZV90IGNvbnN0IGNoYW4pPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgRW5hYmxlL2Rpc2FibGUgdGhlIEFHQyBm
b3IgdGhpcyBSWDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoHJhZGlvIChpZjxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgYXZhaWxhYmxlKTxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKg
IMKgIMKgICZxdW90OyZxdW90OyZxdW90Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgIHJldHVybjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoF9ldHR1c19zd2lnLnJmbm9jX3J4X3JhZGlvX3NldF9hZ2Moc2VsZiw8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGVuYWJsZSwg
Y2hhbikvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7IC88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDsgLzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0OyBDaGFuZ2luZyB0aGlzIGluIHRoZSBmbG93Z3JhcGgucHkgc2VlbXMgdG88YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqB3b3JrISEgVGhhbmtzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBmb3IgdGhlIGhlbHAgb248YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgdGhpcyEgSSBwdXQg
dGhpcyBpbmZvcm1hdGlvbiBoZXJlIGp1c3QgaW4gY2FzZTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oHNvbWVvbmU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoGlzIHN0dWNrIGluIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0OyBzYW1lIHBvaW50Ljxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBCeSB0aGUgd2F5LCBJIGhhdmUgcmVhZCB0
aGF0IHRoZXJlIGFyZSBzZXZlcmFsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgbW9kZXMgZm9yPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBBR0M8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDsgKGZh
c3Qsc2xvdyxoeWJyaWQuLikgSSB3YXMgd29uZGVyaW5nIHdoaWNoIHR5cGUgaXM8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoGltcGxlbWVudGVkIGJ5
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
IGRlZmF1bHQgYW5kIGlmIGl0IGlzIHBvc3NpYmxlIHRvIGNoYW5nZSBBR0M8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqBtb2RlIGluIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgZmxvd2dyYXBoLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0OyBLaW5kIFJlZ2FyZHMsPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IE1hcmlhPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7IEVsIG1pw6ks
IDEwIG1hciAyMDIxIGEgbGFzIDEyOjAzLCBNYXJpYSBNdcOxb3o8YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCgmbHQ7PGEgaHJlZj0ibWFpbHRvOm1h
bXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4g
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9Il9i
bGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAm
bHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2Js
YW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOm1h
bXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwvYT4m
Z3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11a2k5MkBnbWFpbC5jb20iIHRh
cmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86bWFtdWtpOTJAZ21haWwuY29tIiB0YXJnZXQ9
Il9ibGFuayI+bWFtdWtpOTJAZ21haWwuY29tPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRv
Om1hbXVraTkyQGdtYWlsLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPm1hbXVraTkyQGdtYWlsLmNvbTwv
YT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzptYW11
a2k5MkBnbWFpbC5jb20iIHRhcmdldD0iX2JsYW5rIj5tYW11a2k5MkBnbWFpbC5jb208L2E+Jmd0
OyZndDsmZ3Q7Jmd0OykgZXNjcmliacOzOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgSGkgSnVsZXMsPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBUaGFuayB5
b3UsIEkgd2lsbCB0cnkgaXQgYW5kwqBsZXQgeW91IGtub3c8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBhcyBzb29uIGFzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBwb3NzaWJsZS48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoEJ5IHRoZSB3YXksIEkgaGF2ZSBjaGVja2VkIHRoZSBw
eXRob248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oGdlbmVyYXRlZMKgdXNpbmcgdGhlIFVIRCBVU1JQPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBTT1VSQ0UgYmxvY2sgKGluc3Rl
YWQgb2YgdGhlIFJGTm9DIHJhZGlvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgYmxvY2spIHdpdGg8
YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoEFHQyBh
Y3RpdmUgYW5kPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqBpdCBnZW5lcmF0ZXMgdGhlIHNldCBvZiBBR0MgZmluZS4gU28sIGFz
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgeW91IHNhaWQsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBpdCBpcyBmaXhlZCBpbjxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgZ3ItdWhk
IGJ1dCBpdCBtaWdodCBzdGlsbCBiZSBhIGJ1ZyBpbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGdy
LWV0dHVzLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKg
IMKgJmd0O8KgIMKgIMKgVGhhbmtzIGFnYWluIGZvciB0aGUgaGVscCE8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoEtpbmQgUmVn
YXJkcyw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoE1hcmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqBFbCBtacOpLCAxMCBtYXIgMjAyMSBhIGxhcyAxMToy
NSwgSnVsaWFuIEFybm9sZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgKCZsdDs8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRl
Y29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVs
aXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0
PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFy
Z2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxp
YW5AZWxpdGVjb2Rpbmcub3JnPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86
PGEgaHJlZj0ibWFpbHRvOmp1bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5q
dWxpYW5AZWxpdGVjb2Rpbmcub3JnPC9hPiZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1bGlh
bkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
PC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOmp1
bGlhbkBlbGl0ZWNvZGluZy5vcmciIHRhcmdldD0iX2JsYW5rIj5qdWxpYW5AZWxpdGVjb2Rpbmcu
b3JnPC9hPiZndDsmZ3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoE1hcmlhLDxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7IFNvLCBpZiBJIHVuZGVyc3RhbmQgY29ycmVjdGx5LCBJPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgaGF2ZSB0byBwdXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRoZXJlIGFsc288YnI+DQomZ3Q7wqAgwqAgwqAg
wqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHNvbWV0
aGluZyBsaWtlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCZxdW90
O3NlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfcnhfYWdjKGVuYWJsZSwwKSZxdW90OyBp
c24mIzM5O3QgaXQ/PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBFeGFjdGx5ISBUYWtlIGEgbG9vayBhdCBbMV0gZm9y
IHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGNvcnJlY3Qgc3ludGF4Ljxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
WzFdPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgPGEgaHJlZj0iaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvZ3ItZXR0dXMvYmxv
Yi8xMDM4YzRjZTUxMzVhMjgwM2I1MzU1NGZjNDk3MWZlM2RlNzQ3ZDlhL2luY2x1ZGUvZXR0dXMv
cmZub2NfcnhfcmFkaW8uaCNMOTciIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0
dHBzOi8vZ2l0aHViLmNvbS9FdHR1c1Jlc2VhcmNoL2dyLWV0dHVzL2Jsb2IvMTAzOGM0Y2U1MTM1
YTI4MDNiNTM1NTRmYzQ5NzFmZTNkZTc0N2Q5YS9pbmNsdWRlL2V0dHVzL3Jmbm9jX3J4X3JhZGlv
LmgjTDk3PC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgTGV0IG1lIGtub3cgaWYgdGhhdCB3b3JrZWQgb3V0IGZv
ciB5b3UuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqBDaGVlcnMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBKdWxpYW48YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDC
oCDCoE9uIDMvMTAvMjEgOTo1OSBBTSwgTWFyaWEgTXXDsW96IHdyb3RlOjxicj4NCiZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsgSGkgSnVsaWFuLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IFRo
YW5rcyBmb3IgdGhlIHF1aWNrIGFuc3dlci48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyBJIHRoaW5rIHlvdSBtaWdodCBiZSByaWdodCBhYm91dDxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoHRoZSBwb3NzaWJsZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgYnVnIHR1cm5pbmcgb248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRoZSBBR0M8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7IGZyb20gR1JDLiBJIGhhdmUgY2hlY2tlZCB0aGUgZmxvdyBncmFwaDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZ2VuZXJhdGVk
IGFuZCB0aGVyZSYjMzk7cyBubzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgc2V0X3J4X2FnYyBlbmFibGUg
b3B0aW9uIChJIGNoZWNrZWQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB0aGUgYysrPGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBkZWZpbml0aW9uIGJs
b2NrPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAm
Z3Q7wqAgwqAgwqAgwqAgwqB3aGVyZSB0aGlzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyBvcHRpb24gZGlk
IGFwcGVhciBidXQgSSBoYWRuJiMzOTt0IGxvb2s8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBhdCB0
aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHB5
dGhvbiBnZW5lcmF0ZWQpLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IFRo
ZSBsaW5lcyByZWxhdGVkIHRvIHRoZSByYWRpbyBpbiBteTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgZmxvd2dyYXBoIGFyZSB0aGVzZTo8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyAvc2VsZi5ldHR1c19yZm5vY19yeF9yYWRp
b18wID08YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oGV0dHVzLnJmbm9jX3J4X3JhZGlvKDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCBzZWxmLnJmbm9jX2dyYXBoLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCB1aGQuZGV2aWNlX2FkZHIoJiMzOTsmIzM5OyksPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgIC0xLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCAtMSk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAuc2V0X3JhdGUo
c2FtcF9yYXRlKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRf
YW50ZW5uYSgmIzM5O1JYMiYjMzk7LCAwKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNfcmZub2Nf
cnhfcmFkaW9fMC5zZXRfZnJlcXVlbmN5KGNmLCAwKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNf
cmZub2NfcnhfcmFkaW9fMC5zZXRfZ2FpbihnYWluLCAwKTxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNfcmZub2NfcnhfcmFkaW9fMC5zZXRfYmFuZHdpZHRo
KHNhbXBfcmF0ZSwgMCk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBzZWxmLmV0dHVzX3Jmbm9jX3J4X3JhZGlvXzAu
c2V0X2RjX29mZnNldChUcnVlLCAwKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHNlbGYuZXR0dXNfcmZub2Nfcnhf
cmFkaW9fMC5zZXRfaXFfYmFsYW5jZShUcnVlLCAwKS88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyBTbywgaWYgSSB1bmRlcnN0YW5kIGNvcnJlY3RseSwgSTxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoGhhdmUgdG8gcHV0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqB0aGVyZSBhbHNvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBzb21ldGhpbmcgbGlr
ZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCDCoCZxdW90O3NlbGYuZXR0dXNf
cmZub2NfcnhfcmFkaW9fMC5zZXRfcnhfYWdjKGVuYWJsZSwwKSZxdW90OyBpc24mIzM5O3QgaXQ/
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDsgS2luZCBSZWdhcmRzLDxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7IE1hcmlhPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsgRWwgbWnDqSwgMTAgbWFyIDIwMjEgYSBsYXMgOToxNiw8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqBKdWxpYW4gQXJub2xkPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAoJmx0OzxhIGhy
ZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFu
QGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5A
ZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwv
YT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxp
YW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9y
ZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9y
ZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5n
Lm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsi
Pmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxh
bmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0OyAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0
YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3Jn
IiB0YXJnZXQ9Il9ibGFuayI+anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxh
IGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+anVs
aWFuQGVsaXRlY29kaW5nLm9yZzwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpqdWxpYW5AZWxpdGVjb2Rpbmcub3JnIiB0YXJnZXQ9Il9ibGFuayI+
anVsaWFuQGVsaXRlY29kaW5nLm9yZzwvYT4mZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsi
Pmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21h
aWx0bzo8YSBocmVmPSJtYWlsdG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxh
bmsiPmp1bGlhbkBlbGl0ZWNvZGluZy5vcmc8L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNvZGlu
Zy5vcmc8L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWls
dG86anVsaWFuQGVsaXRlY29kaW5nLm9yZyIgdGFyZ2V0PSJfYmxhbmsiPmp1bGlhbkBlbGl0ZWNv
ZGluZy5vcmc8L2E+Jmd0OyZndDsmZ3Q7Jmd0OyZndDspIGVzY3JpYmnDszo8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgTWFyaWEsPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEkgbWlnaHQgbm90IGJlIHRoZSByaWdodCBwZXJz
b248YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB0byBhbnN3ZXI8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRoaXMsIGFzIG15PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBl
eHBlcmllbmNlIHdpdGg8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBVSEQgNC4wIGlzIHJlbGF0
aXZlbHkgbGltaXRlZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGF0IHRoZSBtb21lbnQuPGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEhvd2V2ZXIsIEkgY2FudCB0
ZWxsIHlvdSB0aGF0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgdGhlIEFHQyBvbjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgQjJ4MCBkZXZpY2VzIGlz
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7
wqAgwqAgwqAgwqAgwqBjb250cm9sbGVkIHZpYTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoHNv
ZnR3YXJlICh1c2luZyBzZXRfcnhfYWdjKCkpLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoFRoZXJl
IGlzPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBu
byBuZWVkIHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBkaXJlY3RseSBtb2RpZnkgdGhlPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0O8KgIMKgIMKgc3RhdGUgb2YgYW55IHBpbnMgb2YgdGhlIEZQR0EuPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEkgdmFndWVseSByZW1lbWJlciB0aGF0IHRo
ZXJlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgd2FzIGEgYnVnPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBpbiBhbiBlYXJsaWVyPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqB2ZXJzaW9uIG9mIGdyLXVoZDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoChzb21ld2hlcmUg
aW4gMy43KSB0aGF0IG1hZGUgaXQ8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqBkaWZmaWN1bHQ8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoHRvIHR1cm4g
b24gdGhlPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqBBR0MgdXNpbmcgR1JDLjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoFRoYXQgcGFydGljdWxhciBvbmUgaXMgZml4ZWQgaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqBnci11aGQuPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAg
wqAgwqBOb3Qgc3VyZSBhYm91dDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgZ3ItZXR0dXMsIHRob3VnaC48YnI+DQom
Z3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgTWF5YmUgdHJ5IHVzaW5nIHNl
dF9yeF9hZ2MoKTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoG1hbnVhbGx5IGluPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB5b3UgZmxvdy1ncmFwaDxi
cj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8Kg
IMKgIMKgIMKgIMKgKCoucHkpIGFuZCBzZWU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZn
dDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBpZiB0
aGF0IGhlbHBzLjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqBD
aGVlcnMsPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgSnVsaWFuPGJyPg0KJmd0O8KgIMKgIMKg
IMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoE9uIDMvOS8yMSA1OjExIFBNLCBNYXJpYSBNdcOx
b3ogdmlhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqBVU1JQLXVzZXJzIHdyb3RlOjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IEhpIGFs
bCw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDC
oCDCoCAmZ3Q7IEkgd2FzIHdvbmRlcmluZyBpZiBpdCBpczxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oHBvc3NpYmxlIHRvPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqBlbmFibGUgQUdDIGZyb208YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoHRoZSBSRk5vQyByYWRpbzxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IGJsb2NrIGluIEdOVVJhZGlvLiBJIHVzZSBVSEQg
NC4wPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB2
ZXJzaW9uIGFuZCBHTlVSYWRpbzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKg
IMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgMy44IHdpdGg8YnI+DQomZ3Q7wqAgwqAg
wqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqBnci1ldHR1cy48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IEkgc2VlIHRoYXQgdGhlIFJGTm9DIFJ4PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgcmFkaW8gYmxvY2sgaGFzIGFuPGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqBlbmFibGUv
ZGlzYWJsZS9kZWZhdWx0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgQUdDPGJyPg0KJmd0O8Kg
IMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0O8KgIMKgIMKgICZndDsgb3B0aW9uIGluIHRoZSBHTlVSYWRpbyBibG9jazxicj4NCiZn
dDvCoCDCoCDCoCDCoCDCoHdoaWNoIEk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoGFzc3VtZSBjYWxscyB0aGU8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoFVIRCBmdW5j
dGlvbjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKg
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7ICZxdW90O3NldF9yeF9hZ2MmcXVv
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoDxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCDCoMKgKDxhIGhyZWY9Imh0dHBzOi8vZmlsZXMuZXR0dXMuY29tL21hbnVh
bC9jbGFzc3VoZF8xXzF1c3JwXzFfMW11bHRpX191c3JwLmh0bWwjYWJkYWIxZjZjMzc3NWE5MDcx
YjE1Yzk4MDVmODY2NDg2IiByZWw9Im5vcmVmZXJyZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczov
L2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvY2xhc3N1aGRfMV8xdXNycF8xXzFtdWx0aV9fdXNycC5o
dG1sI2FiZGFiMWY2YzM3NzVhOTA3MWIxNWM5ODA1Zjg2NjQ4NjwvYT4pPGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAg
Jmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDC
oCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBJIGhhdmUg
YWxzbyBjaGVja2VkIG9uIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoEZQR0Egc2lkZTxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgdGhhdCB0aGVy
ZSBpcyBhPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAg
wqAmZ3Q7wqAgwqAgwqAgwqAgwqBwaW4gZnJvbTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoEZQ
R0EgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBBRDkzNjEgY2FsbGVkwqBYQ1ZS
X0VOQV9BR0M8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqB3aGljaCBpczxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgc2V0IGFsd2F5cyB0byAxIG9uPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqB0aGUgdG9wPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgbGV2ZWwgb2Y8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyB0aGUgRlBHQSBpbWFnZSAoc2VlIGF0dGFjaGVk
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgZmlsZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJnF1b3Q7ZTMyMC52JnF1b3Q7LCBsaW5lIDg3MikuPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqBUaGlzIHBpbiw8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0OyBhY2Nv
cmRpbmcgdG88YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDC
oCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZn
dDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqA8YSBocmVmPSJodHRwczovL3d3dy5hbmFsb2cuY29tL21lZGlhL2VuL3RlY2huaWNhbC1kb2N1
bWVudGF0aW9uL2RhdGEtc2hlZXRzL0FEOTM2MS5wZGYiIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0
PSJfYmxhbmsiPmh0dHBzOi8vd3d3LmFuYWxvZy5jb20vbWVkaWEvZW4vdGVjaG5pY2FsLWRvY3Vt
ZW50YXRpb24vZGF0YS1zaGVldHMvQUQ5MzYxLnBkZjwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgaXMgdGhlICZxdW90O01hbnVhbCBDb250cm9s
IElucHV0IGZvcjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgQXV0b21hdGljIEdhaW48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoENvbnRyb2wgKEFHQykmcXVvdDsuPGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgTXVzdCBiZSB0aGlzIHBpbiBzZXQgdG8gMCB0
bzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoGhhdmUgQUdDPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqB3b3JraW5nPzxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvC
oCDCoCDCoCAmZ3Q7IElmwqBub3QsIGhvdyBjYW4gScKgZ2V0IEFHQzxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoHdvcmtpbmc/PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAg
wqAgwqAgwqAgwqBJJiMzOTt2ZSBtYWRlIHNvbWUgdGVzdHM8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAg
wqAgwqAgJmd0OyBlbmFibGluZy9kaXNhYmxpbmcgdGhpczxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oG9wdGlvbiBidXQgSTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgZG8gbm90IHNlZSBhbnk8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvC
oCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoGNoYW5nZXM8YnI+DQomZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7wqAgwqAgwqBiZXR3ZWVuIHRoZTxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7
IHdhdmVmb3JtcyByZWNlaXZlZC48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDC
oCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKg
IMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7IEFueSBoZWxwIHdvdWxkIGJlIGFwcHJlY2lhdGVk
Ljxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0
O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
ICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKg
IMKgICZndDsgS2luZCBSZWdhcmRzLDxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8Kg
IMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAg
wqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZndDsgTWFyaWE8YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAg
wqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKg
IMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKg
IMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7
Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKgIMKgICZndDvCoCDCoCDCoCAm
Z3Q7IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0O8KgIMKgIMKgICZn
dDsgPGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9i
bGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20i
IHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT4mZ3Q7PGJyPg0K
Jmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRv
OjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxh
bmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0
YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0OyZndDs8YnI+
DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCZndDvCoCDC
oCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+PGJy
Pg0KJmd0O8KgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vy
c0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbTwvYT4mZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAg
wqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5j
b208L2E+Jmd0OyZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0
bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNA
bGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDCoCDCoCZsdDttYWlsdG86PGEg
aHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tIiB0YXJnZXQ9Il9ibGFuayI+
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDC
oCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86
VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2JsYW5rIj5VU1JQLXVzZXJzQGxp
c3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFpbHRvOjxhIGhy
ZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPlVT
UlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKg
IMKgICZndDsmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAmbHQ7bWFp
bHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIgdGFyZ2V0PSJf
YmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29t
IiB0YXJnZXQ9Il9ibGFuayI+VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb208L2E+Jmd0Ozxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmx0O21haWx0
bzo8YSBocmVmPSJtYWlsdG86VVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20iIHRhcmdldD0iX2Js
YW5rIj5VU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbTwvYT48YnI+DQomZ3Q7wqAgwqAgwqAgwqAg
wqAmbHQ7bWFpbHRvOjxhIGhyZWY9Im1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbSIg
dGFyZ2V0PSJfYmxhbmsiPlVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tPC9hPiZndDsmZ3Q7Jmd0
OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0OyZndDvCoCDCoCDCoCDCoCDCoCDCoCDC
oCZndDvCoCDCoCDCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCDC
oCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDvCoCDCoCDCoCDCoCDCoDxhIGhyZWY9Imh0dHA6Ly9saXN0
cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbSIg
cmVsPSJub3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tPC9hPjxicj4NCiZndDvC
oCDCoCDCoCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0O8KgIMKgIMKgIMKg
IMKgICZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgICZndDsmZ3Q7wqAg
wqAgwqAgwqAgwqAgwqAgwqAmZ3Q7wqAgwqAgwqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgJmd0Ozxicj4NCiZndDvCoCDCoCDC
oCDCoCDCoCAmZ3Q7Jmd0Ozxicj4NCiZndDsgPGJyPg0KPC9ibG9ja3F1b3RlPjwvZGl2Pg0K
--000000000000ed364705bf85630a--

--===============4873136984636696689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4873136984636696689==--

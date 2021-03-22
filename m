Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAA9344D2D
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 18:23:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1FE08383784
	for <lists+usrp-users@lfdr.de>; Mon, 22 Mar 2021 13:23:23 -0400 (EDT)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id D39EE383DF2
	for <usrp-users@lists.ettus.com>; Mon, 22 Mar 2021 13:22:03 -0400 (EDT)
Received: by mail-ed1-f51.google.com with SMTP id b16so20337655eds.7
        for <usrp-users@lists.ettus.com>; Mon, 22 Mar 2021 10:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JtrrbZqrsfd058spsRwjRnC2rZM3xwxPsQMOT5iQMbY=;
        b=LX50gpJstn/+6gKiDrZJglGb7UXtN5TlP7wqm87yMSJm81LGkf8hASlA71BVKVjJ/p
         UUbgWHnI6J0xzsbXdF/2zKfitPfXmMuEGQ5ivjpmGQwEQbTK9nZ6otTGg6VNRo2rKthj
         sI9S9Fe3qqOkMkyZSW/oyzKojerJMOg8TQvfcr+wkrrnZ9XXw9H6j4R/L+2MBmyBd+zu
         AulaZratWbSGL4LUUQTrk3vW9aHEBoglTevfy0y/bNvV5R7b2KWBVrVIN2b1MzeHLiM5
         VZoKkxb8gi1DEFBVt5jKz+I4KHChFz2ml5Dx1LXBMtV/McCglCILNlas+MHhx+TS7Z/U
         oDvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JtrrbZqrsfd058spsRwjRnC2rZM3xwxPsQMOT5iQMbY=;
        b=Wp1t86cAyCoktreOej4PHsNGsYzmJRDUxv9eIk6gpq5onTdDZUVIMQSh5tcO4tVVmM
         hJnsbk3DfA5wZ2EgOAIFmJ0EQyJMFayLOUk47U+qLzBhJcCIsrmIiDhSm5TD6iU4YAmu
         ROmq8taAqZ4xPbhQAlMFOCVSuTPknpADbT9yaNdSOLgUHHfDQf4QX6pWbrbc7v/vJ3Kx
         Jin5tivqmBsC7ljJXlleli1+ZFV4QfLQ96W5UFjVlR15/w/fdchGcGK/2pynAudkgcx7
         n1dvQvfJ6K6wUxZXkavCWqxoOAlP8nL9KrUz/k6oXw3FuYDWMIQixMcsEGt1hqLGvG3V
         Dsfw==
X-Gm-Message-State: AOAM531utcFfasqKNc7gsxp7gX1x88dNv5a5lIkP1umREsMSGvvMYDNZ
	F151BfZelvyDBTwXojAejG4z46SE86YSHyggpkI=
X-Google-Smtp-Source: ABdhPJyW7sS5LitPCqeTgXl41TxxxVTFLYJ3SJ09rAoUKfsW6imGMtzGfWYE/f6SkDdOKdHkp6RTddYS9kN3RvZem0s=
X-Received: by 2002:a05:6402:4244:: with SMTP id g4mr702728edb.204.1616433722135;
 Mon, 22 Mar 2021 10:22:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAG16vQXTUpAt93YdLhTvSpZ-4FLpOn09Seu=kQTP5OK8DyHoTQ@mail.gmail.com>
 <8CD94AFC-A834-4BB8-BA99-9A86BCED2A47@elitecoding.org>
In-Reply-To: <8CD94AFC-A834-4BB8-BA99-9A86BCED2A47@elitecoding.org>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Mon, 22 Mar 2021 18:21:49 +0100
Message-ID: <CAG16vQWeLecqv-yho3SOM6bQw8PcOd6ORvLhBBnRquQcc9SiRA@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Content-Type: multipart/mixed; boundary="000000000000d002c705be234d91"
Message-ID-Hash: YBQKXW2OEPORDTKZU2SKJRQUYGY4CYEE
X-Message-ID-Hash: YBQKXW2OEPORDTKZU2SKJRQUYGY4CYEE
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Enable AGC in USRP E320 with RFNoC using GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YBQKXW2OEPORDTKZU2SKJRQUYGY4CYEE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000d002c705be234d91
Content-Type: multipart/alternative; boundary="000000000000d002c405be234d8f"

--000000000000d002c405be234d8f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julian,

Sure.

I am receiving a QPSK through the radio and plotting it in a QT graph (see
grc.png)
If I have AGC disable, I get what is shown in "test_without_agc.png", then
if I enable it, I see what is on "test_with_agc.png" where "Quadrature" is
always center more or less in 0.25 which might fit with the values given by
default (inner high threshold =3D -12dBFS, inner low threshold =3D -10 dBFS=
).

If I change the ad9361_device.cpp (attached) from line 1085, by changing
registers 0x101, 0x120 and 0x129 with values 0x02, 0x04 and 0x16
respectively to move between -2dbFS and -4 dBFS,  I see the same waveform
that I have in "test_with_agc.png" (I expect it to be around 0.7)

Kind regards,

Maria

El lun, 22 mar 2021 a las 17:45, Julian Arnold (<julian@elitecoding.org>)
escribi=C3=B3:

> Maria,
>
> would you mind sharing your patch? Otherwise, it=E2=80=99s hard to tell w=
hat
> exactly is going on.
>
> Cheers,
> Julian
>
> Am 22.03.2021 um 16:24 schrieb Maria Mu=C3=B1oz <mamuki92@gmail.com>:
>
> =EF=BB=BF
> Hi Julian,
>
> I re-open this topic to ask a question about the configuration of the
> ad9361 registers in GNUradio/RFNoC
>
> As I understand, when AGC is enabled in slow mode, there are 4
> configurable thresholds (inner low, inner high, outer low, and outer high=
)
> and also 4 configurable steps to reach the zone between the inner
> thresholds.
>
> I have found the configuration of these registers in /uhd/host/lib/usrp/c=
ommon/ad9361_driver/ad9361_device.cpp
> and changed their values there. Then, I have recompiled uhd (make & make
> install) but, when I re-run my graph I see no change in my waveform (it
> seem to stay in the same limits as the default configuration).
>
> Am I missing any other step that I have to done to configure these
> parameters?
>
> Kind Regards,
>
> Maria
>
> El vie, 12 mar 2021 a las 10:04, Maria Mu=C3=B1oz (<mamuki92@gmail.com>)
> escribi=C3=B3:
>
>> Ok Julian, I will check the tree node and try to modify the properties.
>> Thanks again for the help!
>>
>> Kind Regards,
>> Maria
>>
>> El jue, 11 mar 2021 a las 18:26, Julian Arnold (<julian@elitecoding.org>=
)
>> escribi=C3=B3:
>>
>>> Maria,
>>>
>>> >> /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
>>> >>
>>> >> but I have received the following errorThat's why I gave the
>>> reference ([1]) showing the correct syntax ;)
>>> Anyways, glad it worked out for you!
>>> You might consider filing a bug issue against gr-ettus on github.
>>>
>>> >> By the way, I have read that there are several modes for AGC
>>> >> (fast,slow,hybrid..) I was wondering which type is implemented by
>>> >> default and if it is possible to change AGC mode in the flowgraph.
>>> Those modes were mainly dictated by the AD9361. Default should be
>>> "slow". The "hybrid" mode is not implemented as far as I know.
>>> Which mode you want ("slow" / "fast") depends on the signal you want to
>>> receive. For burst-mode digital signals you might want to switch to the
>>> "fast" mode.
>>> However, I think this is only possible by directly writing
>>> to the corresponding property-tree node. Again, I'm not sure about
>>> UHD-4.0/gr-ettus though.
>>>
>>> Cheers,
>>> Julian
>>>
>>>
>>> On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wrote:
>>> > Hi Julian,
>>> >
>>> > I have initially changed the python generated for my flowgraph with
>>> this
>>> > line:
>>> >
>>> > /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
>>> >
>>> > but I have received the following error:
>>> >
>>> > T/raceback (most recent call last):
>>> >    File "constellation_soft_decoder.py", line 301, in <module>
>>> >      main()
>>> >    File "constellation_soft_decoder.py", line 277, in main
>>> >      tb =3D top_block_cls()
>>> >    File "constellation_soft_decoder.py", line 166, in __init__
>>> >      self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, 0)
>>> > AttributeError: 'rfnoc_rx_radio_sptr' object has no attribute
>>> 'set_rx_agc'/
>>> >
>>> > But rfnoc_radio_impl.cc defines it:
>>> >
>>> > /void rfnoc_rx_radio_impl::set_agc(const bool enable, const size_t
>>> chan)
>>> > {
>>> >      return d_radio_ref->set_rx_agc(enable, chan);
>>> > }/
>>> >
>>> > Searching the rfnoc_rx_radio_sptr with grep takes me to "swig" files.
>>> I
>>> > have looked at ettus_swig.py and seen that the command name is set_ag=
c
>>> > instead of set_rx_agc:
>>> >
>>> > /def set_agc(self, enable: "bool const", chan: "size_t const") ->
>>> "void":
>>> >          r"""
>>> >          set_agc(rfnoc_rx_radio self, bool const enable, size_t const
>>> chan)
>>> >          Enable/disable the AGC for this RX radio (if available)
>>> >          """
>>> >          return _ettus_swig.rfnoc_rx_radio_set_agc(self, enable, chan=
)/
>>> > /
>>> > /
>>> > Changing this in the flowgraph.py seems to work!! Thanks for the help
>>> on
>>> > this! I put this information here just in case someone is stuck in th=
e
>>> > same point.
>>> >
>>> > By the way, I have read that there are several modes for AGC
>>> > (fast,slow,hybrid..) I was wondering which type is implemented by
>>> > default and if it is possible to change AGC mode in the flowgraph.
>>> >
>>> > Kind Regards,
>>> >
>>> > Maria
>>> >
>>> >
>>> > El mi=C3=A9, 10 mar 2021 a las 12:03, Maria Mu=C3=B1oz (<mamuki92@gma=
il.com
>>> > <mailto:mamuki92@gmail.com>>) escribi=C3=B3:
>>> >
>>> >     Hi Jules,
>>> >
>>> >     Thank you, I will try it and let you know as soon as possible.
>>> >
>>> >     By the way, I have checked the python generated using the UHD USR=
P
>>> >     SOURCE block (instead of the RFNoC radio block) with AGC active a=
nd
>>> >     it generates the set of AGC fine. So, as you said, it is fixed in
>>> >     gr-uhd but it might still be a bug in gr-ettus.
>>> >
>>> >     Thanks again for the help!
>>> >
>>> >     Kind Regards,
>>> >
>>> >     Maria
>>> >
>>> >     El mi=C3=A9, 10 mar 2021 a las 11:25, Julian Arnold
>>> >     (<julian@elitecoding.org <mailto:julian@elitecoding.org>>)
>>> escribi=C3=B3:
>>> >
>>> >         Maria,
>>> >
>>> >          >> So, if I understand correctly, I have to put there also
>>> >         something like
>>> >          >> "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't
>>> it?
>>> >
>>> >         Exactly! Take a look at [1] for the correct syntax.
>>> >
>>> >         [1]
>>> >
>>> https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554f=
c4971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
>>> >
>>> >         Let me know if that worked out for you.
>>> >
>>> >         Cheers,
>>> >         Julian
>>> >
>>> >
>>> >         On 3/10/21 9:59 AM, Maria Mu=C3=B1oz wrote:
>>> >          > Hi Julian,
>>> >          >
>>> >          > Thanks for the quick answer.
>>> >          >
>>> >          > I think you might be right about the possible bug turning =
on
>>> >         the AGC
>>> >          > from GRC. I have checked the flow graph generated and
>>> there's no
>>> >          > set_rx_agc enable option (I checked the c++ definition blo=
ck
>>> >         where this
>>> >          > option did appear but I hadn't look at the python
>>> generated).
>>> >          >
>>> >          > The lines related to the radio in my flowgraph are these:
>>> >          >
>>> >          > /self.ettus_rfnoc_rx_radio_0 =3D ettus.rfnoc_rx_radio(
>>> >          >              self.rfnoc_graph,
>>> >          >              uhd.device_addr(''),
>>> >          >              -1,
>>> >          >              -1)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
>>> >          >
>>> self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0=
)
>>> >          >          self.ettus_rfnoc_rx_radio_0.set_iq_balance(True,
>>> 0)/
>>> >          >
>>> >          > So, if I understand correctly, I have to put there also
>>> >         something like
>>> >          > "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't i=
t?
>>> >          >
>>> >          > Kind Regards,
>>> >          >
>>> >          > Maria
>>> >          >
>>> >          > El mi=C3=A9, 10 mar 2021 a las 9:16, Julian Arnold
>>> >         (<julian@elitecoding.org <mailto:julian@elitecoding.org>
>>> >          > <mailto:julian@elitecoding.org
>>> >         <mailto:julian@elitecoding.org>>>) escribi=C3=B3:
>>> >          >
>>> >          >     Maria,
>>> >          >
>>> >          >     I might not be the right person to answer this, as my
>>> >         experience with
>>> >          >     UHD 4.0 is relatively limited at the moment.
>>> >          >
>>> >          >     However, I cant tell you that the AGC on B2x0 devices =
is
>>> >         controlled via
>>> >          >     software (using set_rx_agc()). There is no need to
>>> >         directly modify the
>>> >          >     state of any pins of the FPGA.
>>> >          >
>>> >          >     I vaguely remember that there was a bug in an earlier
>>> >         version of gr-uhd
>>> >          >     (somewhere in 3.7) that made it difficult to turn on t=
he
>>> >         AGC using GRC.
>>> >          >     That particular one is fixed in gr-uhd. Not sure about
>>> >         gr-ettus, though.
>>> >          >
>>> >          >     Maybe try using set_rx_agc() manually in you flow-grap=
h
>>> >         (*.py) and see
>>> >          >     if that helps.
>>> >          >
>>> >          >     Cheers,
>>> >          >     Julian
>>> >          >
>>> >          >     On 3/9/21 5:11 PM, Maria Mu=C3=B1oz via USRP-users wro=
te:
>>> >          >      > Hi all,
>>> >          >      >
>>> >          >      > I was wondering if it is possible to enable AGC fro=
m
>>> >         the RFNoC radio
>>> >          >      > block in GNURadio. I use UHD 4.0 version and GNURad=
io
>>> >         3.8 with
>>> >          >     gr-ettus.
>>> >          >      >
>>> >          >      > I see that the RFNoC Rx radio block has an
>>> >         enable/disable/default
>>> >          >     AGC
>>> >          >      > option in the GNURadio block which I assume calls t=
he
>>> >         UHD function
>>> >          >      > "set_rx_agc"
>>> >          >      >
>>> >          >
>>> >           (
>>> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abd=
ab1f6c3775a9071b15c9805f866486
>>> )
>>> >          >      >
>>> >          >      > I have also checked on the FPGA side that there is =
a
>>> >         pin from
>>> >          >     FPGA to
>>> >          >      > AD9361 called XCVR_ENA_AGC which is set always to 1
>>> on
>>> >         the top
>>> >          >     level of
>>> >          >      > the FPGA image (see attached file "e320.v", line
>>> 872).
>>> >         This pin,
>>> >          >      > according to
>>> >          >      >
>>> >          >
>>> >
>>> https://www.analog.com/media/en/technical-documentation/data-sheets/AD9=
361.pdf
>>> >          >
>>> >          >      > is the "Manual Control Input for Automatic Gain
>>> >         Control (AGC)".
>>> >          >      > Must be this pin set to 0 to have AGC working?
>>> >          >      > If not, how can I get AGC working? I've made some
>>> tests
>>> >          >      > enabling/disabling this option but I do not see any
>>> >         changes
>>> >          >     between the
>>> >          >      > waveforms received.
>>> >          >      >
>>> >          >      > Any help would be appreciated.
>>> >          >      >
>>> >          >      > Kind Regards,
>>> >          >      >
>>> >          >      > Maria
>>> >          >      >
>>> >          >      > _______________________________________________
>>> >          >      > USRP-users mailing list
>>> >          >      > USRP-users@lists.ettus.com
>>> >         <mailto:USRP-users@lists.ettus.com>
>>> >         <mailto:USRP-users@lists.ettus.com
>>> >         <mailto:USRP-users@lists.ettus.com>>
>>> >          >      >
>>> >
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> >          >      >
>>> >          >
>>> >
>>>
>>

--000000000000d002c405be234d8f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julian,<div><br></div><div>Sure.=C2=A0</div><div><br></=
div><div>I am receiving a QPSK through the radio and plotting=C2=A0it in a =
QT graph (see grc.png)</div><div>If I have AGC disable, I get what is shown=
 in &quot;test_without_agc.png&quot;, then if I enable it, I see what is on=
 &quot;test_with_agc.png&quot; where &quot;Quadrature&quot; is always cente=
r more or less in 0.25 which might fit with the values given by default (in=
ner high threshold =3D -12dBFS, inner low threshold =3D -10 dBFS).</div><di=
v><br></div><div>If I change the ad9361_device.cpp (attached) from line 108=
5, by changing registers 0x101, 0x120 and 0x129 with values 0x02, 0x04 and =
0x16 respectively to move between -2dbFS and -4 dBFS,=C2=A0 I see the same =
waveform that I have in &quot;test_with_agc.png&quot; (I expect it to be ar=
ound 0.7)</div><div><br></div><div>Kind regards,</div><div><br></div><div>M=
aria</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">El lun, 22 mar 2021 a las 17:45, Julian Arnold (&lt;<a href=3D"ma=
ilto:julian@elitecoding.org" target=3D"_blank">julian@elitecoding.org</a>&g=
t;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"auto">Maria,<div><br></div><div>would you mind sharing your =
patch? Otherwise, it=E2=80=99s hard to tell what exactly is going on.</div>=
<div><br></div><div>Cheers,<br>Julian<br><div dir=3D"ltr"><br><blockquote t=
ype=3D"cite">Am 22.03.2021 um 16:24 schrieb Maria Mu=C3=B1oz &lt;<a href=3D=
"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt;:<b=
r><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"ltr">Hi Julian,<div><br></div><div>I re-open this topic to a=
sk a question about the configuration of the ad9361 registers in GNUradio/R=
FNoC</div><div><br></div><div>As I understand, when AGC is enabled=C2=A0in =
slow mode, there are 4 configurable thresholds (inner low, inner high, oute=
r=C2=A0low, and outer=C2=A0high) and also 4 configurable steps to reach the=
 zone between=C2=A0the inner thresholds.</div><div><br></div><div>I have fo=
und the configuration of these registers in<font face=3D"arial, sans-serif"=
 color=3D"#000000">=C2=A0/uhd/host/lib/usrp/common/ad9361_driver/ad9361_dev=
ice.cpp and</font><span style=3D"color:rgb(0,0,0);font-family:arial,sans-se=
rif">=C2=A0changed their values there. Then, I have recompiled uhd (make &a=
mp; make install) but, when I re-run my graph I see no change in my wavefor=
m (it seem to stay in the same limits as the default configuration).</span>=
</div><div><font face=3D"arial, sans-serif" color=3D"#000000"><br></font></=
div><div><font face=3D"arial, sans-serif"><font color=3D"#000000">Am I miss=
ing=C2=A0any=C2=A0other=C2=A0step that I have to done=C2=A0to configure the=
se parameters?</font><font color=3D"#172b4d">=C2=A0</font></font></div><div=
><font face=3D"arial, sans-serif"><font color=3D"#172b4d"><br></font></font=
></div><div><font face=3D"arial, sans-serif" color=3D"#000000">Kind Regards=
,</font></div><div><font face=3D"arial, sans-serif" color=3D"#000000"><br><=
/font></div><div><font face=3D"arial, sans-serif" color=3D"#000000">Maria</=
font></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">El vie, 12 mar 2021 a las 10:04, Maria Mu=C3=B1oz (&lt;<a href=
=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a>&gt;=
) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Ok Julian, I will check the tree node and try to modify t=
he properties. Thanks again for the help!<div><br></div><div>Kind Regards,<=
/div><div>Maria</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">El jue, 11 mar 2021 a las 18:26, Julian Arnold (&lt;<a=
 href=3D"mailto:julian@elitecoding.org" target=3D"_blank">julian@elitecodin=
g.org</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">Maria,<br>
<br>
&gt;&gt; /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/<br>
&gt;&gt; <br>
&gt;&gt; but I have received the following errorThat&#39;s why I gave the r=
eference ([1]) showing the correct syntax ;)<br>
Anyways, glad it worked out for you!<br>
You might consider filing a bug issue against gr-ettus on github.<br>
<br>
&gt;&gt; By the way, I have read that there are several modes for AGC <br>
&gt;&gt; (fast,slow,hybrid..) I was wondering which type is implemented by =
<br>
&gt;&gt; default and if it is possible to change AGC mode in the flowgraph.=
<br>
Those modes were mainly dictated by the AD9361. Default should be <br>
&quot;slow&quot;. The &quot;hybrid&quot; mode is not implemented as far as =
I know.<br>
Which mode you want (&quot;slow&quot; / &quot;fast&quot;) depends on the si=
gnal you want to<br>
receive. For burst-mode digital signals you might want to switch to the <br=
>
&quot;fast&quot; mode.<br>
However, I think this is only possible by directly writing<br>
to the corresponding property-tree node. Again, I&#39;m not sure about <br>
UHD-4.0/gr-ettus though.<br>
<br>
Cheers,<br>
Julian<br>
<br>
<br>
On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wrote:<br>
&gt; Hi Julian,<br>
&gt; <br>
&gt; I have initially changed the python generated for my flowgraph with th=
is <br>
&gt; line:<br>
&gt; <br>
&gt; /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/<br>
&gt; <br>
&gt; but I have received the following error:<br>
&gt; <br>
&gt; T/raceback (most recent call last):<br>
&gt;=C2=A0 =C2=A0 File &quot;constellation_soft_decoder.py&quot;, line 301,=
 in &lt;module&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 main()<br>
&gt;=C2=A0 =C2=A0 File &quot;constellation_soft_decoder.py&quot;, line 277,=
 in main<br>
&gt;=C2=A0 =C2=A0 =C2=A0 tb =3D top_block_cls()<br>
&gt;=C2=A0 =C2=A0 File &quot;constellation_soft_decoder.py&quot;, line 166,=
 in __init__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, 0)<br=
>
&gt; AttributeError: &#39;rfnoc_rx_radio_sptr&#39; object has no attribute =
&#39;set_rx_agc&#39;/<br>
&gt; <br>
&gt; But rfnoc_radio_impl.cc defines it:<br>
&gt; <br>
&gt; /void rfnoc_rx_radio_impl::set_agc(const bool enable, const size_t cha=
n)<br>
&gt; {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 return d_radio_ref-&gt;set_rx_agc(enable, chan);<b=
r>
&gt; }/<br>
&gt; <br>
&gt; Searching the rfnoc_rx_radio_sptr with grep takes me to &quot;swig&quo=
t; files. I <br>
&gt; have looked at ettus_swig.py and seen that the command name is set_agc=
 <br>
&gt; instead of set_rx_agc:<br>
&gt; <br>
&gt; /def set_agc(self, enable: &quot;bool const&quot;, chan: &quot;size_t =
const&quot;) -&gt; &quot;void&quot;:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 r&quot;&quot;&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 set_agc(rfnoc_rx_radio self, bool co=
nst enable, size_t const chan)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Enable/disable the AGC for this RX r=
adio (if available)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;&quot;&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return _ettus_swig.rfnoc_rx_radio_se=
t_agc(self, enable, chan)/<br>
&gt; /<br>
&gt; /<br>
&gt; Changing this in the flowgraph.py seems to work!! Thanks for the help =
on <br>
&gt; this! I put this information here just in case someone is stuck in the=
 <br>
&gt; same point.<br>
&gt; <br>
&gt; By the way, I have read that there are several modes for AGC <br>
&gt; (fast,slow,hybrid..) I was wondering which type is implemented by <br>
&gt; default and if it is possible to change AGC mode in the flowgraph.<br>
&gt; <br>
&gt; Kind Regards,<br>
&gt; <br>
&gt; Maria<br>
&gt; <br>
&gt; <br>
&gt; El mi=C3=A9, 10 mar 2021 a las 12:03, Maria Mu=C3=B1oz (&lt;<a href=3D=
"mailto:mamuki92@gmail.com" target=3D"_blank">mamuki92@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:mamuki92@gmail.com" target=3D"_blank">mam=
uki92@gmail.com</a>&gt;&gt;) escribi=C3=B3:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi Jules,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thank you, I will try it and=C2=A0let you know as s=
oon as possible.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0By the way, I have checked the python generated=C2=
=A0using the UHD USRP<br>
&gt;=C2=A0 =C2=A0 =C2=A0SOURCE block (instead of the RFNoC radio block) wit=
h AGC active and<br>
&gt;=C2=A0 =C2=A0 =C2=A0it generates the set of AGC fine. So, as you said, =
it is fixed in<br>
&gt;=C2=A0 =C2=A0 =C2=A0gr-uhd but it might still be a bug in gr-ettus.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks again for the help!<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Kind Regards,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Maria<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0El mi=C3=A9, 10 mar 2021 a las 11:25, Julian Arnold=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0(&lt;<a href=3D"mailto:julian@elitecoding.org" targ=
et=3D"_blank">julian@elitecoding.org</a> &lt;mailto:<a href=3D"mailto:julia=
n@elitecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;) es=
cribi=C3=B3:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Maria,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt; So, if I understand correct=
ly, I have to put there also<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0something like<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;&gt; &quot;self.ettus_rfnoc_rx_r=
adio_0.set_rx_agc(enable,0)&quot; isn&#39;t it?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Exactly! Take a look at [1] for the c=
orrect syntax.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0[1]<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://github.com/EttusRe=
search/gr-ettus/blob/1038c4ce5135a2803b53554fc4971fe3de747d9a/include/ettus=
/rfnoc_rx_radio.h#L97" rel=3D"noreferrer" target=3D"_blank">https://github.=
com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc4971fe3de747d9a/in=
clude/ettus/rfnoc_rx_radio.h#L97</a><br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Let me know if that worked out for yo=
u.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Cheers,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Julian<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0On 3/10/21 9:59 AM, Maria Mu=C3=B1oz =
wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Hi Julian,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Thanks for the quick answer.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; I think you might be right abou=
t the possible bug turning on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the AGC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; from GRC. I have checked the fl=
ow graph generated and there&#39;s no<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; set_rx_agc enable option (I che=
cked the c++ definition block<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0where this<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; option did appear but I hadn&#3=
9;t look at the python generated).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; The lines related to the radio =
in my flowgraph are these:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; /self.ettus_rfnoc_rx_radio_0 =
=3D ettus.rfnoc_rx_radio(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 self.rfnoc_graph,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 uhd.device_addr(&#39;&#39;),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 -1,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 -1)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.ettus_rfnoc_rx_radio_0.set_antenna(&#39;RX2&#39;, 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)/<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; So, if I understand correctly, =
I have to put there also<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0something like<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; &quot;self.ettus_rfnoc_rx_radio=
_0.set_rx_agc(enable,0)&quot; isn&#39;t it?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Kind Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; Maria<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; El mi=C3=A9, 10 mar 2021 a las =
9:16, Julian Arnold<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(&lt;<a href=3D"mailto:julian@eliteco=
ding.org" target=3D"_blank">julian@elitecoding.org</a> &lt;mailto:<a href=
=3D"mailto:julian@elitecoding.org" target=3D"_blank">julian@elitecoding.org=
</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; &lt;mailto:<a href=3D"mailto:ju=
lian@elitecoding.org" target=3D"_blank">julian@elitecoding.org</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:julian@e=
litecoding.org" target=3D"_blank">julian@elitecoding.org</a>&gt;&gt;&gt;) e=
scribi=C3=B3:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Maria,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0I might not =
be the right person to answer this, as my<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0experience with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0UHD 4.0 is r=
elatively limited at the moment.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0However, I c=
ant tell you that the AGC on B2x0 devices is<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0controlled via<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0software (us=
ing set_rx_agc()). There is no need to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0directly modify the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0state of any=
 pins of the FPGA.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0I vaguely re=
member that there was a bug in an earlier<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0version of gr-uhd<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0(somewhere i=
n 3.7) that made it difficult to turn on the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0AGC using GRC.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0That particu=
lar one is fixed in gr-uhd. Not sure about<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gr-ettus, though.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Maybe try us=
ing set_rx_agc() manually in you flow-graph<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(*.py) and see<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0if that help=
s.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Cheers,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0Julian<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0On 3/9/21 5:=
11 PM, Maria Mu=C3=B1oz via USRP-users wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi all=
,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I was =
wondering if it is possible to enable AGC from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the RFNoC radio<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; block =
in GNURadio. I use UHD 4.0 version and GNURadio<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A03.8 with<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0gr-ettus.<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I see =
that the RFNoC Rx radio block has an<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0enable/disable/default<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0AGC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; option=
 in the GNURadio block which I assume calls the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0UHD function<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; &quot;=
set_rx_agc&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(<a href=3D"https://files.ettu=
s.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abdab1f6c3775a9071b15c980=
5f866486" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manu=
al/classuhd_1_1usrp_1_1multi__usrp.html#abdab1f6c3775a9071b15c9805f866486</=
a>)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; I have=
 also checked on the FPGA side that there is a<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pin from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0FPGA to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; AD9361=
 called=C2=A0XCVR_ENA_AGC which is set always to 1 on<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0the top<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0level of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; the FP=
GA image (see attached file &quot;e320.v&quot;, line 872).<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0This pin,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; accord=
ing to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"https://www.analog.com/med=
ia/en/technical-documentation/data-sheets/AD9361.pdf" rel=3D"noreferrer" ta=
rget=3D"_blank">https://www.analog.com/media/en/technical-documentation/dat=
a-sheets/AD9361.pdf</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; is the=
 &quot;Manual Control Input for Automatic Gain<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Control (AGC)&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Must b=
e this pin set to 0 to have AGC working?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; If=C2=
=A0not, how can I=C2=A0get AGC working? I&#39;ve made some tests<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; enabli=
ng/disabling this option but I do not see any<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0changes<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0between the<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; wavefo=
rms received.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Any he=
lp would be appreciated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Kind R=
egards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; Maria<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; ______=
_________________________________________<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; USRP-u=
sers mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a hre=
f=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.=
ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP-use=
rs@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;<br=
>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP-use=
rs@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:USRP-use=
rs@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.com</a>&gt;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://lists.ettus.com/mai=
lman/listinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_bla=
nk">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
</blockquote></div>
</blockquote></div>
</div></blockquote></div></div></blockquote></div>

--000000000000d002c405be234d8f--

--000000000000d002c705be234d91
Content-Type: image/png; name="test_without_agc.png"
Content-Disposition: attachment; filename="test_without_agc.png"
Content-Transfer-Encoding: base64
Content-ID: <f_kmktz9230>
X-Attachment-Id: f_kmktz9230

iVBORw0KGgoAAAANSUhEUgAAAusAAAJwCAYAAAAwWC+9AAAABHNCSVQICAgIfAhkiAAAAAFzUkdC
AK7OHOkAAAAEZ0FNQQAAsY8L/GEFAAAACXBIWXMAAA7DAAAOwwHHb6hkAAAAGXRFWHRTb2Z0d2Fy
ZQBnbm9tZS1zY3JlZW5zaG907wO/PgAAACF0RVh0Q3JlYXRpb24gVGltZQAyMDIxOjAzOjEyIDA4
OjQzOjE0eWpqNgAAWVJJREFUeF7t3Qd8FGXixvFnk0DokIAkoFSpUkSQIipFLGDDishZYtfTU/EU
/SvnnWIBbHh2RUXsBY2Cp6AgTVAEBaQKUhQJLWzohJT972wmEkLyvgnsxkny+97NZyfvzu7Kk2V5
dnbeWV/jRo0CAgAAAOA5Pr/fT1kHAAAAPCjKvQQAAADgMZR1AAAAwKMo6wAAAIBHUdYBAAAAj6Ks
AwAAAB5FWQcAAAA8irIOAAAAeBRlHQAAAPAoyjoAAADgUZR1AAAAwKMo6wAAAIBHUdYBAAAAj6Ks
AwAAAB5FWQcAAAA8irIOAAAAeBRlHQAAAPAoyjoAAADgUZR1AAAAwKMo6wAAAIBHUdYBAAAAj6Ks
AwAAAB5FWQcAAAA8irIOAAAAeBRlHQAAAPAoyjoAAADgUZR1AAAAwKMo6wAAAIBHUdYBAAAAj6Ks
AwAAAB5FWQcAAAA8irIOAAAAeBRlHQAAAPAoyjoAAADgUZR1AAAAwKMo6wAAAIBHUdYBAAAAj6Ks
AwAAAB5FWQcAAAA8yuf3+wPuOgAAAMqZlStXaseOHUpNTXVHEAm1a9dWzZo11bRpU3ekaCjrAAAA
5ZRT1KOiotS4cWN3BEU1ZcoUXXjhhe5PRTNv3rxQ3sUp7JR1AIBV7j/oHTt2dEcK5/xj5Dj66KND
lwC866efflLv3r3dn1AcH330kS644AL3p6KbPn26OnTo4P5kxzHrAACjPXv2KC0tTccdd5wCgYB1
cQq93+8P3Q6At3HoS8nbsmWLu1Y0lHUAgNHu3btDZb2gYl7Y4mzv3A4AyrKCXv9sS3GVu8NgPp+7
XM9MXKDNaTvdEQCASdbeXXq8f+tifdz77rvvat++fapevbo7AqCkVatWTS1atFB8fLw7crCvv/5a
F110kfsTisM5DOa8885zf9ovd895nTp1Qpf5JScn69RTT3V/sit3Zf30hz5UxTa9FV85Kvh2yB0E
ABRq3w6/ro1frfPPP98dsXvvvffUsGFDxcXFuSMA/gp//PGHunbt6v50MMr6oXPKev/+/d2fcjhF
feTIkaH1IUOGHFTYfT5faSvruzXt/3rpqm/66q2pD6p7JXc4gjrd9Zo69Buk9Tsz3REAgEnmjq26
O+GXAvcgFeb9999X8+bNKevAX2zBggXGYkhZP3T5y3puUc+dB+CcqjF/YS+FZT1d859N0t3f9dQT
r9+othXc4QjqN/xjVe7YP7Rn/RAOGwKAcmff9lRdWWl+qKwX5XhL5x8jp6y3adPG+PE7gMhbunTp
YexZD2jbkmS98N/XlDxlrpZvO0Nv/DZG58Y612Vq3ZfDdMuQl/X1ih2q3uJ03fjYsxp6en1Fh257
sL2/vK97b/m33vx2rdJrt1f/wU9p1O3dVdvnbhDYom+fvE2Dnx6vn1MrqfHJV2jYsw/romahBwyx
3Udgx3yN/uetGv7RXKWovjoPuFfPPH612lfLuT6cnLJ+7rnnhtZzi/rWrVtDP+dyXgPzFnbn9fHT
Tz/lMBiTSfNX6akv52tTapo7AgAwyT1m3dmDVNSy/sEHH3DMOvAXq1GjhvUTrsLLerqWvZ6k/kN+
VLNB12ngacerxVGN1bJ9Y9WKCr6Jn/+QTjppuPZc9KgeurSB1rx9n+79pKbunzVNd7crYO/rzqm6
vVNfjY2/XiPvO0s1Fj6vux/4Vm2en6fPrmmkKGVr9UtnqtNtK9TrP8N1Q9s0jR82RK/uuEaTfnhc
J1ctwn0ENmncZcfp0inHaMjjd+jEwHQ9ducTWtH3Q81/vf/+NwVh4pT1c845J7Q+a9asQs/y4hT1
7t27h9ad18fPPvushMt6IE0/vTFMD74wXt+vTlN2bC3VP7qdzrzrOT14VqKiMuZoZP+bNHrhOvkz
YlW39Sm6+oGRGtyzbvAXk6kfH+iuM/93tr749n4dF5OtNR/dqdv+O1XL1qyXf49UKaG1TrnqPxo5
uKfqcu4aAChxzke6zrmYc/9RKgrnY97jjz8+9DEwAO8qrKzvnTNU3c79VoO+nKAhHZymnNcufX71
0Tp/1hWavmCkujk7vvfO0p3H9tK7PcdrxctnqErOhq6ANr1xro6+YYvuXzhTd7Vw9r1v02dXttLF
P1ytWQsfVqfA97q77cl688SPtey1s1UjuEXWshHq3uERHfnqKo37W7w2W+6jw5pgqW87TLVfXK7P
khLlCz5uyqtnq+UtO/TgkmDRbxLeIumU9bPPPtv9qWicsj5+/PhilfXD/K/ep6XPXqr+d09SzDkP
aMy4T/Tei9eqye8zNXPZtpz5m9EN1eumB/XSR5/ri3H/VdIRczT8+n9r4o7QHeSTra2LZ+q7zW30
j1fe17iP3tDwi2tq9vAkDf5gI/NBAeAvUKVKldBXZBdVRkZGaI+eczsApVAgTROefEFLK6Qp+bLW
qlOrthoe11/3fLxS6c71mUv17eytiu95mjrmHqFSqZNOPbmWtsz+Vr8cNC0wQz/NnKP0o/uoT9Pc
g2RqqsdpXRT96yzNTslW9rpZmrWmgrqd1iNU1B3RzU7RKU326LuZPwXvwX4fO76fqQWBY3Vq77rB
ou7wKaH3qWqf/aNmztkVGimNDq+s756qZ5+ZpzpJL+iNoZfq9JNPVK/TT1SzKnk+Z4hKVJdzzlLv
bsfr+JPO0+B//U3Nt83TnIN/k3/y1WiuE/v01Mk9z9CgoU/o5g67NW3ibHHGXgAoeZUrVw4dd+lM
VDOdJ9gZdw59cbarW7du6HYASqGMeZoyY4cSjj1ftz79kSZP/VQj+mzRy5eeqXumB9tY1kalbJIS
6jlHSeSKVt3EIxTYlKKN2e5QrsAubdiwTb6E+krI0zyrJCSqRmCj1gdvkLUxeLtAnOol5DnbSFRd
1avrkz9lo9Kt95GhLcHtMqMTVD/PoRhRdRNVNypDG1NSlf8/KxxyXxOLsxTXYZX1zFXzNH9bDXU/
rXO+jzv2C2xfoDfvHqBTOrVW00ZN1PZvb2ht1l7tSS/if2z0UWrWJFaZqVu0LRIpAwCsjj76aEVF
Rembb77RuHHjQh//5l+c8dmzZ6tSpUqh7QGUUntT9MdWnxqfdqUG9OmiYzucpEsffUrXN1mj997+
VvuCm+R0zvwHgRsOCne2L+Bqwy0OZrmPAv+bivUAxVdQGbctxXVYZV2ZmcoKvpOqEF1YEjs1eeil
+udn2Tp96Gglf/k/vfPAWTqymI8aUyEm+C4uKyLviAAARdOsWTOdcMIJOuusswpdunTpQlEHSruY
iqoYFdA2/7b93Sv6SDU80qe0zVuUEV1X9RKkTSkb83SzLG3asFm+uvUOnmPoq6qExBoKbFx/wF73
PRs3apvPua8oRScEb+fzK2XjXvfaoOzN2rApoLjEBMVa76OCjqhXV9Ghvf77N8jetEGbsysEb1v7
cI/9LlBBZdy2FNdh/XdHN26l5hX9+mH2MmW4YwfIWqcFC1NV6/SbdMf5J6p969bBd2dNVTPC73IA
AABwiGJbq10L6dfv52hzbrdMX6bFK6UGzZqoYswxOrFbnFKnT9ZPoYPYnet/1OSZftXu2l0tY9yx
P1VQx5O6KHblFE1ZneWObdeMyXOU1bS7TqgXpaijTtAJjTL0/dczlDutMWuVs31ldTmpQ/Ae7PdR
vctJaq/5+nrqZneeY0Cbpk7WQl8Hndgl/yTZ8Mgt4M6k0RtuuKHAxbnuLyvrvlr9dN2lDfTLs9fq
pmcmaOb30/Xpy29o+hb3HU3wXVirljXk/+plPTN+tub//LN+Xvy7+KJ/AAAAj4puo8tv7K2KX/9H
142YoB/mz9TYO+7UWH9nXX/V8cHaXFWn/eNmtf/tOV3/9xf0+ZQJev7G6/XCuuN08z9OCR0aHdj8
qvpVilWPp9coWz7VvXCwkhrM06NJd+mNiVP0yWNX6bZ303XK4OvU0Sn3FTrrxtt7avfbt+nqx5M1
ZeLruuPK4Zrf+GoNPq9O8B7s9xHd/ArdcUFVfXnvlXrg/a/19Xv/1uX3TlL1i+/QZWE+E0x+zllh
CjozTGHjxXGY/+XV1OPB9/XSNU20YvSturh/MJzP1kkVfaFjG6Xq6jfsVf1ft80ac8t5OrV3H535
j0+1p1k7Nanlrd3rzjeb5ipo3Xa941C2dZTk7YqzreNQblecbR2HcrvibOsoydsVZ1vHodyuONs6
DuV2xdnWUZK3K862jkO5XXG2dZTk7YqzreNQblecbR2HcrvibOsoydsVZ1vHodyuONs6DuV2xdnW
UZK3K862jkO5XXG2dZTk7YqzraM4tzt8UWpy3dv6bOQp2vrS5Tq5a1/d810z3fPJR7qjdc5u89iO
9+rjD25Tozn/0YB+l+jBeUfrnx+N0z3HVgxdH9i7R3uDtf6IhPicslm9jx6bMEaXV56gO847U1f8
9zd1ffhTvXldE7eMRuvoG9/Rpw921upRl+vM8+7Sl9WTNHb8cPXM/UIj2334EnTxSxP0TL+deuOG
YEm+8S3tPec5TXj+fB0RodqZd4957uGAhf3sLIfiMMt6UKVmOn/Y+5q2YJVSNqzWjx/doGN8UapT
Ny5051F1e+iO16bo57UbtWXLJq1fs1zzZ76tG45xftkx6vjvOdrwvXOOdefO8v/siNXpz63Shs9v
0FGH/18LAAAAm6g6OmnwWM1a7dfe9J1a/9OHuq9PYp7iGKOGZz2kz37eqF3pu7RhYbIe6HvUn99e
mvnrcv0a1Uk9uu7/6tBKLS/VqK9/Ueqevdrx+w96558nqU7eEh11hHoMeVdz1+3Q3j1btHzSkxrQ
fP+3lzps9+Gr0VE3jJ6p1Wl7tTdtlWa8fJ06VI/cDuK8RdxZcgt6QUU9dymuw6y/WVr5xWiN/XSy
Zs39SXNnJGvUrQ/pf1E91b93fKQn4AIAAMBzsrRizjxln3aVBjQu23taCyrjpqLuLMV1mN9gukvT
Hxmke95drN82b1NmxTpq0qmvrr73X7q2c+kq687HR/Meu9r9CQAAoOwr7BtMD19AWVkBRUeX3bLu
nLL2tNNOc38qGucw8YkTJxbrG0wPs6wDAACgtPrpp5/Uu3dv9ycUh1PWi1O6naLu7FmfN2+eOnbs
6I7acRQ4AABAOVWzZs1QecSh8fl8RV6ys7O1aNEi1apVy7110bBnHQAAoBz79ddftX37dqWmproj
iIT4+PjQm6PifnEcZR0AAADwKA6DAQAAADyKsg4AAAB4FGUdAAAA8CjKOgAAAOBRlHUAAADAoyjr
AAAAgEdR1gEAAACPoqwDAAAAHkVZBwAAADyKsg4AAAB4FGUdAAAA8CjKOgAAAOBRlHUAAADAoyjr
AAAAgEdR1gEAAACPoqwDAAAAHkVZBwAAADyKsg4AAAB4FGUdAAAA8CjKOgAAAOBRlHUAAADAoyjr
AAAAgEdR1gEAAACPoqwDAAAAHkVZBwAAADyKsg4AAAB4FGUdAAAA8CjKOgAAAOBRlHUAAADAoyjr
AAAAgEdR1gEAAACPoqwDAAAAHkVZBwAAADzK5/f7A+46iik5OdldAwAAgE1SUpLS0tLcn1AU7FkH
AABAxDlFHcVX5ves71z8vh594L/6aNav2lHpKB1/wT16YthFah7rbnAYcves53/ybdiwUYmJCe5P
yI987MjIjHzsyMiMfMzIx46MzEz5sGe9eMr8nvU/Zk2Xv/u9emfqbE3671na895tuuvtdcp2rwcA
AAC8qsyX9ZbXPafnbz9LnZo1Udt+N+uyztlateJ3ZbnXAwAAAF5Vro5ZD2yerimLaqtn7zaKcccA
AAAAryo3Z4MJbJujxwZero+PeU4THj9VdXzuFfnExcW5a4ULZha6zD1mvW/ffqHLXLnHaDnHa+XF
eA7GczCeg/EcjOdgPAfjORjPUVbGc3HMevGUi7IeSJutRy+5Uh83flTjnr1QjSq4VxwCp8znL+vM
bgYAACia0lXWA9q+6jvN+r22Tu7ZQlXd0ZJU9g+DyVylsTdcpfePelgfP3d4Rb2o8r+jxIHIx46M
zMjHjozMyMeMfOzIyOyvz2ePJt7eTkfVra34+HgdkdhAzY/rpQtuekhv/7BJme5Wdvv03RN/U9LI
b+Q/zLOT7F35se67oIua1U9Ug7an6obn52hrEXaZl/mynva/R/TIstM14tFzVDdzr/bu3av0fZnB
90kAAADwsri4WsalcNnasWWz9rW8Tq9//j999uEYPXnX+Wq++RMNOfNE9R/5nbaVZBncNVMPXPp3
vbOjt+5//W399+q6+u6BS3XTW79bz1BY5sv6kllzlPrbm7q0ZT3Vq5ezHNnl35qT4W4AAACAMslX
o4k6de2mE07uo3MG3aYRH36j5Nsaav5jN+iBqTtD22QtfVmDurZSw8QjVPfIluo+4D/6/LcDi+K+
WfeoXe244BuEOCVe/JZSg0W/KLfLEdDmz57Vm7+30+AXHtEVZ/TR+Xe8qOEXxGjqs2O00LKbv8yX
9e7DF2qL3x86zjx32TL/YXUtgcNhAAAA4CG+Guo8+G6dH/+HPnn7Gzl1PSqxq6647zm9N+ELfTr6
drVe9aJu/Od72pBnl3eF4wbr429nadasWZr25Dmq5Sva7XJkaOF3P2pf457q2TjaHauh7r07KWrN
HP2w0bxvvVydurGk5J/1jAORjx0ZmZGPHRmZkY8Z+diRkZmn86lyrDq1jtGuX1dofVawv8cdq77n
9lH344/XCf1u0APXH6+Mn+ZoUZ493r7KCWreqrVat26tlg1qyqncRbldSGC3Nm3cLl/deqqbp3lX
PiJBNQKblLKJsg4AAAAUaO+KT/TAFaepS5tmatS4tc58cqEy9u7RXssx7cW6nTNWyGnDbSjrEcAM
cTPysSMjM/KxIyMz8jEjHzsyMvN0Prvna+7STFU9urnqZ8/TiMtu1BubuuiO5z/Ul19+qKcubZHn
yzMLadgZttvl4auiugnVFdiUorw70fdu3qTtviOUmHd3ewEo6wAAACgfAtv0/RMj9MnWI3X+33qr
qv9nLVjr0wnX/J8G9jxOrVu1U6cWdQ6o6JUqV1Jg+zZtz7PHPFCE2+1XQe27dVTF1dM1fW2WO7ZD
s6fNU3ajLuqcQFkHAABAORTY9qvmfDtTM6Z+pU/fHKU7L+yl85/5TR3ufEn/7lVNvlqt1Lpetma/
/pg+mvGjFv68UAtWb81ziu8KanlsG1VY9rZGvPSFZkyfqPc/mq3NNWy3y8unI879uwYduUBP/f1+
vTt5uib892bdM26fTv77lTq2wN3x+1HWLZxT9ORdAAAAUDL8/jTjUrgoVa9TRxWWj9a1/c/V+QOv
0j+f+ESr6l6ox7+Ypc/u7qaazm7wil01ZPQj6hcYryEXn65T+vTV5WM2qEmH5joi1JJ9Srj4YT12
aYJ+HJ6kCwb8XY+9O1frY2y3y6daTz343vO6pPJE3fe3AbrxpXXqNPQdvXRlI2sZ9/n9/oLfBKBA
TmF3Tv/oSE5ODl0mJSWFLgEAAGCWlmYq2ciPPesAAACAR1HWI4AZ4mbkY0dGZuRjR0Zm5GNGPnZk
ZEY+4UNZBwAAADyKsg4AAAB4FGUdAAAA8CjKegQkJia4aygI+diRkRn52JGRGfmYkY8dGZmRT/hQ
1gEAAACPoqxHADOgzcjHjozMyMeOjMzIx4x87MjIjHzCh7IOAAAAeBRl3cL5xtK8CwAAAFBSKOsW
fr//gAUAAAAoKZT1CGAGtBn52JGRGfnYkZEZ+ZiRjx0ZmZFP+FDWAQAAAI+irEcAM6DNyMeOjMzI
x46MzMjHjHzsyMiMfMKHsg4AAAB4FGUdAAAA8CjKOgAAAOBRlPUIYAa0GfnYkZEZ+diRkRn5mJGP
HRmZkU/4UNYBAAAAj6KsRwAzoM3Ix46MzMjHjozMyMeMfOzIyIx8woeyDgAAAHgUZd0iLi7ugAUA
AAAoKZR1C7/ff8ACAAAAlBTKegQwA9qMfOzIyIx87MjIjHzMyMeOjMzIJ3wo6wAAAIBHUdYjgBnQ
ZuRjR0Zm5GNHRmbkY0Y+dmRkRj7hQ1kHAAAAPIqyDgAAAHgUZR0AAADwKMp6BDAD2ox87MjIjHzs
yMiMfMzIx46MzMgnfCjrAAAAgEdR1iOAGdBm5GNHRmbkY0dGZuRjRj52ZGRGPuFDWbeIi4s7YAEA
AABKCmXdwu/3H7AAAAAAJYWyDgAAAHgUZT0CmAFtRj52ZGRGPnZkZEY+ZuRjR0Zm5BM+lHUAAADA
oyjrEcAMaDPysSMjM/KxIyMz8jEjHzsyMiOf8KGsAwAAAB5Vust61iZ98+8+anrKk/olyx3LL3ut
nu+XkOf0i7XV6o6p2udeDQAAAHhVKS3rGVo/4wXd1q+Xrh+7QrsC7nBBAju1Y3cdXfnhb0pJSQku
67VgZA9VdK8GAAAAvKqUlnWftq3+Q7WvHKvx93dRBXe0QNnblbajluocUVmVKlUKLrGKjYnsH5sZ
0GbkY0dGZuRjR0Zm5GNGPnZkZEY+4VNKy3qMWl/xkO7/WyfViXGHCpOVqs2pW/XdmOEa9Wqyfli/
170CAAAA8Daf3+83HUTicQFtefNidXitu6Z8fYdaRLvDeaWv0rTkmVqxca1+nvapPplTSZe98Zke
PiVePneTvJzj2m1yv8k0OTk5dNm3b7/QZV7OO8r8M6Fz32WW93GHc11JP25pGs8/5iiJx3WUhvH8
Y46SeFxHaRlfsmSZ4uP3v56V1OOWlnHyMY+Tj31861b/nxmV5OPm5eXxgvLJlZaW5q6hKMp+WT/A
Dk27q6cGLrxGs764WU0O4XMFp8znL+tJSUmhy1zOkzT/ExP7kY8dGZmRjx0ZmZGPGfnYkZGZKR/K
evGU0sNgDlU1HdOuqXypm5Ra2NljAAAAAI8oe2U94Nc7A+qp7ZCZylBA/vmTNHHuCq1LWacVs9/S
gy/OVvxJPdTKOCsVAAAA+OuVwbK+Wzt3RymxfmLwD5etLQs/1MhrztDx7TuqV9LzWn/iCL077BRV
czePBD4WMyMfOzIyIx87MjIjHzPysSMjM/IJn1J+zHoB9kzSLR3/o8R3p2toB9upYoqvKMesAwAA
oGAcs148ZW7PeiC9rnoMGaar24e/qBeVM6kChSMfOzIyIx87MjIjHzPysSMjM/IJnzJX1n21OmjA
VX1Uv5xNnQUAAEDZQ6UFAAAAPIqyDgAAAHgUZT0CmAFtRj52ZGRGPnZkZEY+ZuRjR0Zm5BM+lHUL
5+wveRcAAACgpFDWLZzTNOZdioIZ0GbkY0dGZuRjR0Zm5GNGPnZkZEY+4UNZBwAAADyKsg4AAAB4
FGUdAAAA8CjKegQwA9qMfOzIyIx87MjIjHzMyMeOjMzIJ3wo6wAAAIBHUdYjgBnQZuRjR0Zm5GNH
RmbkY0Y+dmRkRj7hQ1kHAAAAPIqyDgAAAHgUZR0AAADwKJ/f7w+46yhAXFycu7Zf7jeZJicnhy6T
kpJClwAAADBLS0tz11AU7Fm3cIp53gUAAAAoKZT1CGAGtBn52JGRGfnYkZEZ+ZiRjx0ZmZFP+FDW
AQAAAI+irAMAAAAeRVkHAAAAPIqyHgGJiQnuGgpCPnZkZEY+dmRkRj5m5GNHRmbkEz6UdQAAAMCj
KOsRwAxoM/KxIyMz8rEjIzPyMSMfOzIyI5/woawDAAAAHkVZBwAAADyKsm4RFxd3wAIAAACUFJ/f
7w+46ygCp7AHMwutJycnhy6TkpJClwAAADBLS0tz11AU7FkHAAAAPIqyHgHMgDYjHzsyMiMfOzIy
Ix8z8rEjIzPyCR/KOgAAAOBRlHUAAADAoyjrAAAAgEdR1iMgMTHBXUNByMeOjMzIx46MzMjHjHzs
yMiMfMKHsg4AAAB4FGU9ApgBbUY+dmRkRj52ZGRGPmbkY0dGZuQTPpR1AAAAwKMo6wAAAIBHUdYt
4uLiDlgAAACAkuLz+/0Bdx1F4BT2YGah9eTk5NBlUlJS6BIAAABmaWlp7hqKgj3rAAAAgEdR1iOA
GdBm5GNHRmbkY0dGZuRjRj52ZGRGPuFDWQcAAAA8irIOAAAAeBRlHQAAAPCoclPWdy8boyvaNdF1
n6e7I5GTmJjgrqEg5GNHRmbkY0dGZuRjRj52ZGRGPuFT5st6YPsSjXtwkHqd+6Cmb8lyRwEAAADv
K/t71rNStGZ3Nw0b/4oGJZbMH5cZ0GbkY0dGZuRjR0Zm5GNGPnZkZEY+4VPmy7ovro/+OfxWndG0
mnzuGAAAAFAalJ9vMM34Xvd1uUSbHlquV86KdQcP5nxDqU3+bzDt27df6DIv51it/O8qc4/fKu/j
Due6kn7c0jSef8xREo/rKA3j+cccJfG4jtIyvmTJMsXH7389K6nHLS3j5GMeJx/7+Nat/j8zKsnH
zcvL4wXlk4tvMC0eynoxOWU+f1lPSkoKXeZynqT5n5jYj3zsyMiMfOzIyIx8zMjHjozMTPlQ1oun
3JwNpiTxl9eMfOzIyIx87MjIjHzMyMeOjMzIJ3wo6wAAAIBHUdYjwPnoB4UjHzsyMiMfOzIyIx8z
8rEjIzPyCZ/yU9YrdNXDP605rOPVAQAAgJLEnnUAAADAoyjrAAAAgEdR1iOAGdBm5GNHRmbkY0dG
ZuRjRj52ZGRGPuFDWQcAAAA8irIeAcyANiMfOzIyIx87MjIjHzPysSMjM/IJH8q6hfONpXkXAAAA
oKRQ1i38fv8BCwAAAFBSKOsAAACAR1HWI4AZ0GbkY0dGZuRjR0Zm5GNGPnZkZEY+4UNZBwAAADyK
sh4BzIA2Ix87MjIjHzsyMiMfM/KxIyMz8gkfyjoAAADgUZR1AAAAwKMo6wAAAIBHUdYjgBnQZuRj
R0Zm5GNHRmbkY0Y+dmRkRj7hQ1kHAAAAPIqybhEXF3fAUhTMgDYjHzsyMiMfOzIyIx8z8rEjIzPy
CR/KuoXf7z9gAQAAAEoKZR0AAADwKMo6AAAA4FGU9QhgBrQZ+diRkRn52JGRGfmYkY8dGZmRT/hQ
1gEAAACPoqxHADOgzcjHjozMyMeOjMzIx4x87MjIjHzCh7IOAAAAeBRlHQAAAPAoyjoAAADgUZT1
CGAGtBn52JGRGfnYkZEZ+ZiRjx0ZmZFP+FDWLeLi4g5YAAAAgJJCWbfw+/0HLEXBDGgz8rEjIzPy
sSMjM/IxIx87MjIjn/ChrAMAAAAeRVkHAAAAPIqyDgAAAHgUZT0CmAFtRj52ZGRGPnZkZEY+ZuRj
R0Zm5BM+lHUAAADAoyjrEcAMaDPysSMjM/KxIyMz8jEjHzsyMiOf8KGsAwAAAB5FWQcAAAA8irIO
AAAAeJTP7/cH3HUUIC4uzl3bL/ebTJOTk0OXSUlJoUsAAACYpaWluWsoCvasWzjFPO8CAAAAlBTK
egQwA9qMfOzIyIx87MjIjHzMyMeOjMzIJ3wo6wAAAIBHUdYBAAAAj6KsAwAAAB5FWY+AxMQEdw0F
IR87MjIjHzsyMiMfM/KxIyMz8gkfyjoAAADgUaW2rGdvmqYRl3ZVs3r11LTLxXpo8gZlu9cdIHut
nu+XEDpfes5SW63umKp97tWRwAxoM/KxIyMz8rEjIzPyMSMfOzIyI5/wKZ1lPXuDPhh8jV7LvExv
zpqt96+tqHevvUVjfy+grgd2asfuOrryw9+UkpISXNZrwcgequheDQAAAHhVqSzr2SkT9M7UI3T5
0Jt0QpPG6nzNUCU1nKW3k9coy93mT9nblbajluocUVmVKlUKLrGKjeHoHwAAAHhfqWytmb8s1nK1
VNsWMTkD0U3VrnWsVixersyckf2yUrU5dau+GzNco15N1g/r97pXAAAAAN7m8/v9AXe91EifcK2a
3VZJry19VqeFjmfZp+l3dtDADQ/ql7cuUrXQVq70VZqWPFMrNq7Vz9M+1SdzKumyNz7Tw6fEy+du
kpdzXLtNMLPQZXJycuiyb99+octcuTOg8x+vxXgOxnMwnoPxHIznYDwH4zkYz1FWxnOlpaW5ayiK
UlnW930zWO0uS9OIX1/XeZWckXR9eWMr3Rh4Xstf6qfY0FYF2aFpd/XUwIXXaNYXN6vJIXyu4JT5
/GU9KSkpdAkAAAAzynrxlMrDYGJatFFLLdPi5e5BL1mrtGhpupq3aSH3wJhCVNMx7ZrKl7pJqQcd
3B4++d9R4kDkY0dGZuRjR0Zm5GNGPnZkZEY+4VMqy3pUvbM1qNdmjX3kZX2/Zq3mvv6IXv+tuwad
30TRAb/eGVBPbYfMVIYC8s+fpIlzV2hdyjqtmP2WHnxxtuJP6qFWFdw7AwAAADyqdJ4WJSpRA54a
rat9YzSoW1dd/NIeDXzlGV3RIPjHCezWzt1RSqyfGPzDZWvLwg818pozdHz7juqV9LzWnzhC7w47
5cDj2gGUKz7fwQsAAF5UOst6UFTdXrr7vTn6dcMGrf7hI/3r1HqKdq5IX6yFvzZSr16Ngz9Hq/kV
r2jyglXasHmT/lg+W+Meu0ztqvMvM1BeFVbMKe+lQ/7fE78rAGVdqS3rhQmk11WPIcN0dXvz0euR
lH/WMw5EPnZkZFYS+ZT2ElhWnkNFKeaH8rvi75gZ+diRkRn5hE+ZK+u+Wh004Ko+ql/m/mQADoep
7MF7+H0BQA4qbQQwA9qMfOzIyKw4+ZTX0lean0OH8vsq7m34O2ZGPnZkZEY+4UNZB1BmsWe29Dmc
35lz29wFAMoKyjqAMikchY3SV3rxuwNQVlDWLZxvLM27APA+ihoAoKzw+f3+gLseVoHdazQjOVnf
LPhNWzPbKenRq3RcxeAV2Xu1Kz1GVSv/dWdrORxOYQ9mFlpPDv75HElJSaFLAN4QzrIeiMgrJArD
7w4o+9LS0tw1FEVE9qxnr/9Mt/bqrvNufkCjXn5dY9/+Rqszs7Tm1YvV4sij1PrGT5XGiygAIB8K
NgAcKAJlfbsmDrtL76zYq6haTdX0iNBXFQVF68g2zVUlI0u7f/pBSzLd4TKIGdBm5GNHRmYllU9p
Lo48h8zIx4x87MjIjHzCJ/xlPWOhvpmRquyYprrhnS/1f132H+4SVbuuagcfMXvLJm3OcgcBIMwO
t2Q7t2cP71+H7AFgv/CX9cAe7dodfKWNSlDDo2LdQUdAe35drt+dkl6hoioyAQxABFH4Sjd+fwCQ
I/xlPaaljj2mgnwZ8/Tao+/p59D81TQtn/isbr73Y23J9qli2+PUpkLO5gDgJZRE7zic3wW/RwBl
RQTOBhPQtm+G6NSBr2rlvoPv2hfTUJe/M02jTqul0rhznbPBAKVLcc8uQsnzHn6HQNnC2WCKJwIT
TH2q2fthffzGYPVpUkVRf77I+hRbt7OSnv1Aw0tpUQdQ+hSnuFHyvInfIYDyLALHrO/QnDef1Rfb
u+k/XyzXktlfacKnn+mLaT9q2aJJevKSlqrsblpWMQPajHzsyMisuPk4Ba4oS1lS1p5DRfn9FOd3
yN8xM/KxIyMz8gmf8Jf1zEX65PFHdPdNt2nM8opKaHm8Tuxxsrq1b6xaHKcOADhEed9YFbQAQFkU
/rKenaatadlSdB3VrZN7jvXSyzlGPe8CAAAAlJTwl/Wo6qpZPXi3Wb/pq+dHaPjw4Qcvj3+spRnu
9h7nTCbNuwAAAAAlJfxngwls0hsXH6vBk/eq0DuOPUevrhqrC6q4P5cinA0GAADg0HE2mOIJ/551
Xx31PvtUNWnYQA0aFLbUURVOBwMAAAAYReA862VbUfasOzOgExMT3J+QH/nYkZEZ+diRkRn5mJGP
HRmZmfJhz3rxhH/POgAAAICwiMDZYDZp4eRJmjhxYiHLJM1Ynlb48ewAAAAAQsJf1jPm6L9XDtTA
gYUvl/z7f9pKWwcAAACM/oLDYALa98tS/Zrp/lgGcQybGfnYkZEZ+diRkRn5mJGPHRmZkU/4hL+s
x56uUQtXauXKg5flE/+pdhWcI2VStCnb3R4AAABAgSKwZ72iqsXHq3bt2gct8VWileUc/pIdcP5f
ZjkzoFE48rEjIzPysSMjM/IxIx87MjIjn/AJf1nPWqMpY0brlVdeybO8rOceH6prb3xJyzKl6KMa
6qgYd3uPc07VmHcBAAAASkr4y3rmIr0zdIiGDMm73K2hDz+nTxdvU7avmo6/YqDal5Ky7pxTPe8C
AAAAlJQIHAYTo0pVq6hKlf1L1arVVKN2fTXvfJZuejJZb9/cMrgVAAAAABO+wbSYivINpgAAACgY
32BaPOHfs569WYunTtbkKT/pj3R3zJWV8r3ef+kxPfT2fOW7CgAAAEA+4S/rGd/rqcsu1kWDHtCk
fDvtA5u+1qihj2jUyPf1Y4Y7WAYxA9qMfOzIyIx87MjIjHzMyMeOjMzIJ3wicMx64XxVqqqqzznP
+gZtzHIHAQAAABQoTGU9oM0/fKhXndM0vvZVzreTZq3XzHf2n77x5edG6M7bXtT84HW+WvGKK9G3
CQAAAEDpE7bKnL3obd3nnKbx3rGanx6QMlfo42F3/3n6xruHDteY2RuVpRg1PPtcHV/RvSEAAACA
AoWprPsU37KNjqp24Ckb/1yqVlW1GvGq17yLzr3tZX3wYE9VdW9ZFiUmJrhrKAj52JGRGfnYkZEZ
+ZiRjx0ZmZFP+HDqxmLi1I0AAACHjlM3Fg9Hjls45TzvUhTMgDYjHzsyMiMfOzIyIx8z8rEjIzPy
CZ/IlPXANi18/yHdPPBsndqrh3qcfLJO/nPpob4PTNNed1Ovc/ai510AAACAkhKBsp6lla9crnP+
/oTemfit5i34WT8vWqRFfy4/68cpP2gNp24EAAAAjMJf1jOX6aOxs7U9O0rxHS/SRZ3jFBXTVGfe
fp/uu2egOlTxKeuPtVpHWQcAAACMwl/Ws/7Qb38Em3hMa1339NO68OhsBaJbqv8dd+rOwZfouOo+
BXbt1M5sd/syiBnQZuRjR0Zm5GNHRmbkY0Y+dmRkRj7hE/6y7otSVJQveM81VKtmlCrExMiXtVIL
Fu1Sxh9LtTwtIFWoqNjgJgAAAAAKF/6yHl1fDetHS9lbtHGzTy3bH6MKWSv0Qv/matRtqGanBxTT
8hg1j3G3L4OYAW1GPnZkZEY+dmRkRj5m5GNHRmbkEz4RKOtH69Srr9OtQ67VSfExOvLiwUpqUUnK
2KM9+7Kl2KYaOPhSHR3s8wAAAAAKF/6yHtinzJjaOrJREyVUlXy1euvRr79V8uin9MSo0fp45jd6
+sy6KrmjYPZq+bu364x2DZR41DE69eY3tGi3exUAAADgYeEv65mL9Mnjj+jum27TmKU5p3zxVWuq
Hhcm6eorL1SvZjVKsKgHq/rcEUoaMkdtH5qkHyY/rs6L/6WrHvpW9HUAAAB4XfjLenaatqZlS9F1
VLfOX3+sy5z3PlBK7zs09NzWatDyTN17x2lK/egdzYzgtzIxA9qMfOzIyIx87MjIjHzMyMeOjMzI
J3zCX9ajqqtm9eDdZv2mr54foeHDhx+8PP6xlma420fY0qV+HXVMK1V3d+dXad1OTXcu05LfOdE7
AAAAvM3n9/sD7np4BDbpjYuP1eDJe1XoHceeo1dXjdUFVdyfI+iJ3vU18cJv9eUtTULvTLJTXtV5
nV5W5/99q391OPiUNHFxce5a4YKZhS6Tk5NDl3379gtd5uW8o8w/Ezr3XWZ5H3c415X045am8fxj
jpJ4XEdpGM8/5iiJx3WUlvElS5YpPn7/61lJPW5pGScf8zj52Me3bvX/mVFJPm5eXh4vKJ9caWlp
7hqKIvxlXdn6bcyVOv+pBcoo7J5jT9XI6U+qb2X35wh66az6evPkrzT1njZyqnnWilE6o+d4nT1t
km5vXvzDdJwyn7+sJyUlhS5zOU/S/E9M7Ec+dmRkRj52ZGRGPmbkY0dGZqZ8KOvFE/7DYIJ32TDp
Tc1bsFALFxay/FAyRd3RunWc1i1Zpp3uG4fdS3/W6mqtdEwDzh0JAAAAb4tAWfeWLgMHKPGbJ/Xw
hGVa98uXGv7UV4q7cJBOquRuAAAAAHjU4R8Gk7VK4598Q3O2Z7sDNlGq0TVJd5zdRCWzb3uvlr09
RP945GP9nFZdbfrfracfT1LbQzxeviiHwQAAAKBgHAZTPGEp68/07ab75xb99C4VT3pMP316reqX
wv36lHUAAIBDR1kvnsOvy9FHqcNJ7dW8eXN3aab6NaLlC/6vct0mecaDS8N4xfqkzFXL9WsZPnOi
M6kChSMfOzIyIx87MjIjHzPysSMjM/IJnzDs266ok//9tebMmZOzzH5TVzWOUiC6kZLe+G7/eHCZ
Pe5WtYuRAv5U+TnNOQAAAGAU/gNRMtfo17WZkq+SqlY58O6zUjcp1Tm0vWJsaA87AAAAgMKFv6xH
19OR9aKDpf0Xjbn3Qb037SctXbZI3094VjffPkZrsnyq2PY4HVPB3R4AAABAgSLwpUhZWvFif/W5
91vtKOCefTENddlb3+jpM+JVGneuM8EUAADg0DHBtHjCv2dd0Wp+/Rh98MAFahtfIU8h9yk2oYuu
fu5DjShFRd0p53kXAAAAoKREoKwHRdVRt3+8qhlLl2vetC/1WfJn+nLGfP2yaKIeH9BCJfTlpWHh
7EXPuxQFM6DNyMeOjMzIx46MzMjHjHzsyMiMfMInMmU9V8U4NWnfVSf3PFld2zZUjRh3HAAAAIBV
ZMp6YJsWvv+Qbh54tk7t1UM9Tj5ZJ/+59FDfB6Zpr7spAAAAgIJFoKxnaeUrl+ucvz+hdyZ+q3kL
ftbPixZp0Z/Lz/pxyg9aw3nWAQAAAKPwl/XMZfpo7Gxtz45SfMeLdFHnOEXFNNWZt9+n++4ZqA5V
fMr6Y63WleGynpiY4K6hIORjR0Zm5GNHRmbkY0Y+dmRkRj7hE/6ynvWHfvsj2MRjWuu6p5/WhUdn
KxDdUv3vuFN3Dr5Ex1X3KbBrp3Y6X44EAAAAoFDhL+u+KEVF+YL3XEO1akapQkyMfFkrtWDRLmX8
sVTL0wJShYpl+htMmQFtRj52ZGRGPnZkZEY+ZuRjR0Zm5BM+4S/r0fXVsH60lL1FGzf71LL9MaqQ
tUIv9G+uRt2GanZ6QDEtj1FzzgwDAAAAGEWgrB+tU6++TrcOuVYnxcfoyIsHK6lFJSljj/bsy5Zi
m2rg4Et1dLDPAwAAAChc+Mu6YtXxqof1wF3Xq0/jaPlq9dajX3+r5NFP6YlRo/XxzG/09Jl1S803
mAIAAAB/FZ/f7w+46+GRvUkLv5mvlMzC7tanKo276KSWtUpFYY+Li3PX9sv9JtPk5OTQZVJSUugS
AAAAZmlpae4aiiL8ZT19gq49+gqN21V4Wa98xrP6+d1Bql0Kd6875Z2yDgAAcGgo68UTgcNgbALa
98tS/Zrp/lgGMQPajHzsyMiMfOzIyIx8zMjHjozMyCd8wl/WY0/XqIUrtXLlwcvyif9UuwrOkTIp
2sR51gEAAACjCOxZr6hq8fGqXbv2QUt8lWhlOUfHZAec/wMAAAAwCH9Zz1qjKWNG65VXXsmzvKzn
Hh+qa298ScsypeijGuoozrMOAAAAGJX8BFNfNXV78GuNv6WlSmNfZ4IpAADAoWOCafFE4DCYGFWq
WkVVquxfqlatphq166t557N005PJevvm0lnUAQAAgJIUgQmmffXs8nX6448//lzWrftda1cu1pxJ
b+mRpE6KL+PfiMQMaDPysSMjM/KxIyMz8jEjHzsyMiOf8InAnnUAAAAA4RD+sr57jaa+/pBuvexc
nXZyd3Xv0UdnXXKD7nsmWQs25z25eqb27eP8jQAAAEBhwljWA9o+7zkNOqGbLrjjCb35+QzNXbRU
S3/+UbMmfaDn779afbqeriETfleGs/m+6RrSsZW6XjBKc0MD3uRMKM27AAAAACUlbGU9e917+vug
+/XFb+nB2u5ThZoN1KZzd53YrYOa1YmVzxdQlv8njb7ubxoxd6+yU1dr9ebNWrlgpcJ8Ppqwcs78
kncpisTEBHcNBSEfOzIyIx87MjIjHzPysSMjM/IJnzCV9XR99+wIfbkpW76KjXXuo5/r5+ULNXPS
55rwxTf6YdlyzXz5GnWoHqXA3kV6aeS7mj3uk9Ae9egmzdQk2r0bAAAAAH8KT1nPXKyvpvyhLEWr
ydXP6sUbT1BCrHudI7qmjrlohF69p4tifQHtmnynzr1/lnarotr061vmyjozoM3Ix46MzA4nH5+v
4KWsKcvPoXD8/vg7ZkY+dmRkRj7hE56ynrVR6zdmBV8xY9XhhE6q7A4fKFoNu3ZTw2AxD2RnKzvg
U42Ot+nR61sGrwGAyChqqTuUwoeSY/sdmq4DgNIsPGXdV1XVqwZfJQOZ2rhhiwo7x0v6phRtda6M
aarzHx2n6RPuVbfqvLoCiAzKW9lQnN8jv3MAZU14ynqFturaqap8ytB3z/5bH61Od6/YLzt1ph4b
+VmorMc0PU+3XttLjSq5VwJAmB1KaXNuQ9nzFn6PAMo7n98fnnOx7Jpxt3pc8IpWZQbfAVRvql7n
9VfPYxspLnq3Niybrc8//kILN2co4Kuuk0dM1SfXNS2Vh784p2/MPStMcnJy6DIpKSl0CcAbwlHU
Ah4+S1V5we8RKJvS0tLcNRRF2Mq6tFPzRg3SwIdmaktWIXfpi1XjC57RJy9erMYx7lgpQ1kHvI+S
V/qFa884v0fAeyjrxROmUzc6qqnT7R9p6rhhuvzERqoWvf+V1hcs6bVbn66/P/0/TXm59Bb1omIG
tBn52JGRWUnkU9oPoyjNz6GSyJ6/Y2bkY0dGZuQTPmEs646KOrLnzfrvhPlavXqJ5s6arumz5mjB
yjVaMet9PXx5R8WF+REBAACAsipi1TmmeqKObt1O7Vo3V4P4SiqtO6mcw17yLgC8j0Mf4OB5AKAs
YD+3hXN8et4FAOB9FHUAZQVlPQISExPcNRSEfOzIyIx87MjIjHzMyMeOjMzIJ3wo6wBQAPbMAgC8
gLIeAcyANiMfOzIyK0o+5b1sl+fnUFF+9/wdMyMfOzIyI5/woawDKLOc0pa7FEd5L/p/tUPN/1B+
1wDgdZR1AOVCUUscZc8bcot37mLD7w1AWVVqy3r2pmkacWlXNatXT027XKyHJm9QtnvdAbLX6vl+
CXlOv1hbre6Yqn3u1QDKj8IKXXFKIf4aeX9HBS0AUFaVzrKevUEfDL5Gr2Vepjdnzdb711bUu9fe
orG/F1DXAzu1Y3cdXfnhb0pJSQku67VgZA9VdK+OBGZAm5GPHRmZHU4+5aXo8RwyIx8z8rEjIzPy
CZ9SWdazUybonalH6PKhN+mEJo3V+ZqhSmo4S28nr1GWu82fsrcrbUct1TmisipVqhRcYhUbw9E/
AAAA8L5S2Vozf1ms5Wqpti1icgaim6pd61itWLxcmTkj+2WlanPqVn03ZrhGvZqsH9bvda+IHGZA
m5GPHRmZkY8dGZmRjxn52JGRGfmEj8/v93v8Q+CAUt+6RO1unxI6zjymw1BNvnWR+g6upNeWPqvT
Qsez7NP0Ozto4IYH9ctbF6maM5QrfZWmJc/Uio1r9fO0T/XJnEq67I3P9PAp8fK5m+TlHNduk/tN
psnJyaHLvn37hS7zcj7+yf9Ezf1IqLyPO5zrSvpxS9N4/jFHSTyuozSM5x9zlMTjOkrL+JIlyxQf
v//1rKQet7SMk495nHzs41u3+v/MqCQfNy8vjxeUT660tDR3DUVRCsq6lLXtd61cvzM0gdRXqa6O
WvOQOl2WphG/vq7zKjlbpOvLG1vpxsDzWv5SP8U6QwXaoWl39dTAhddo1hc3q8khfK7glPn8ZT0p
KSl0mct5kuZ/YmI/8rEjIzPysSMjM/IxIx87MjIz5UNZL55ScRhMdM0Gatm6tVoHl1ZNaqtKizZq
qWVavNw96CVrlRYtTVfzNi3kHhhTiGo6pl1T+VI3KfWgg9sBAAAAbymVx6xH1Ttbg3pt1thHXtb3
a9Zq7uuP6PXfumvQ+U0UHfDrnQH11HbITGUoIP/8SZo4d4XWpazTitlv6cEXZyv+pB5qVcG9swjg
nbYZ+diRkRn52JGRGfmYkY8dGZmRT/iUztOiRCVqwFOjdbVvjAZ166qLX9qjga88oysaBP84gd3a
uTtKifUTg3+4bG1Z+KFGXnOGjm/fUb2Sntf6E0fo3WGnHHhcOwAAAOBBpbOsB0XV7aW735ujXzds
0OofPtK/Tq2naOeK9MVa+Gsj9erVOPhztJpf8YomL1ilDZs36Y/lszXuscvUrnpBU0vDxzlOC4Uj
HzsyMiMfOzIyIx8z8rEjIzPyCZ9SW9YLE0ivqx5Dhunq9uaj1wEAAACvK3Nl3VergwZc1Uf1y9yf
DAAAAOUNlRYAAADwKMp6BDAD2ox87MjIjHzsyMiMfMzIx46MzMgnfCjrAAAAgEdR1iOAGdBm5GNH
RmbkY0dGZuRjRj52ZGRGPuFDWbeIi4s7YAEAAABKCmXdwu/3H7AAAAAAJYWyDgAAAHgUZT0CmAFt
Rj52ZGRGPnZkZEY+ZuRjR0Zm5BM+lHUAAADAoyjrEcAMaDPysSMjM/KxIyMz8jEjHzsyMiOf8KGs
AwAAAB5FWQcAAAA8irIOAAAAeBRlPQKYAW1GPnZkZEY+dmRkRj5m5GNHRmbkEz6UdQAAAMCjKOsW
cXFxByxFwQxoM/KxIyMz8rEjIzPyMSMfOzIyI5/woaxb+P3+AxYAAACgpFDWAQAAAI+irAMAAAAe
RVmPAGZAm5GPHRmZkY8dGZmRjxn52JGRGfmED2UdAAAA8CjKegQwA9qMfOzIyIx87MjIjHzMyMeO
jMzIJ3wo6wAAAIBHUdYBAAAAj6KsAwAAAB5FWY8AZkCbkY8dGZmRjx0ZmZGPGfnYkZEZ+YQPZd0i
Li7ugAUAAAAoKZR1C7/ff8BSFMyANiMfOzIyIx87MjIjHzPysSMjM/IJH8o6AAAA4FGUdQAAAMCj
KOsAAACAR1HWI4AZ0GbkY0dGZuRjR0Zm5GNGPnZkZEY+4UNZBwAAADyKsh4BzIA2Ix87MjIjHzsy
MiMfM/KxIyMz8gkfyjoAAADgUZR1AAAAwKMo6wAAAIBH+fx+f8BdRwHi4uLctf1yv8k0OTk5dJmU
lBS6BAAAgFlaWpq7hqJgz7qFU8zzLgAAAEBJoaxHADOgzcjHjozMyMeOjMzIx4x87MjIjHzCh7IO
AAAAeBRlHQAAAPAoyjoAAADgUZT1CEhMTHDXUBDysSMjM/KxIyMz8jEjHzsyMiOf8Ck3ZX33sjG6
ol0TXfd5ujsCAAAAeFuZL+uB7Us07sFB6nXug5q+JcsdjSxmQJuRjx0ZmZGPHRmZkY8Z+diRkRn5
hE/Z37OelaI1u7tp2PhXNCiRo34AAABQepT59uqL66N/Dr9VZzStJp87BgAAAJQGPr/fH3DXy4R/
dUrQC2uzgn+yarpo7HK92C8254qM73Vfl0u06aHleuUsd6wAcXFx7lrhcr/JNDk5OXTZt2+/0GVe
zsSK/B8B5U62KO/jDue6kn7c0jSef8xREo/rKA3j+cccJfG4jtIyvmTJMsXH7389K6nHLS3j5GMe
Jx/7+Nat/j8zKsnHzcvL4wXlkystLc1dQ1GUubK+aeUypWYE/0i+aNU8qrnqV3P3pxexrNs4ZT5/
WU9KSgpdAgAAwIyyXjxl7jCYus1aqXXr1mrdqsX+og4AAACUQsy4jID8HwvhQORjR0Zm5GNHRmbk
Y0Y+dmRkRj7hQ1kHAAAAPKr8lPUKXfXwT2sO63h1AAAAoCSxZx0AAADwKMp6BOQ/RREORD52ZGRG
PnZkZEY+ZuRjR0Zm5BM+lHUAAADAoyjrEcAMaDPysSMjM/KxIyMz8jEjHzsyMiOf8KGsAwAAAB5F
WbdwvrE07wIAAACUFMq6hd/vP2ABAAAASgplPQKYAW1GPnZkZEY+dmRkRj5m5GNHRmbkEz6UdQAA
AMCjKOsRwAxoM/KxIyMz8rEjIzPyMSMfOzIyI5/woawDAAAAHkVZBwAAADyKsg4AAAB4FGU9ApgB
bUY+dmRkRj52ZGRGPmbkY0dGZuQTPpR1AAAAwKMo6xHADGgz8rEjIzPysSMjM/IxIx87MjIjn/Ch
rAMAAAAeRVm3iIuLO2ABAAAASgpl3cLv9x+wAAAAACWFsh4BzIA2Ix87MjIjHzsyMiMfM/KxIyMz
8gkfyjoAAADgUZT1CGAGtBn52JGRGfnYkZEZ+ZiRjx0ZmZFP+FDWAQAAAI+irAMAAAAeRVkHAAAA
PIqyHgHMgDYjHzsyMiMfOzIyIx8z8rEjIzPyCR/KOgAAAOBRlPUIYAa0GfnYkZEZ+diRkRn5mJGP
HRmZkU/4UNYt4uLiDlgAAACAkkJZt/D7/QcsAAAAQEmhrAMAAAAeRVmPAGZAm5GPHRmZkY8dGZmR
jxn52JGRGfmED2UdAAAA8CjKegQwA9qMfOzIyIx87MjIjHzMyMeOjMzIJ3wo6wAAAIBHUdYBAAAA
j6KsAwAAAB5FWY8AZkCbkY8dGZmRjx0ZmZGPGfnYkZEZ+YQPZR0AAADwKMq6RVxc3AFLUTAD2ox8
7MjIjHzsyMiMfMzIx46MzMgnfCjrFn6//4AFAAAAKCmUdQAAAMCjKOsAAACAR1HWI4AZ0GbkY0dG
ZuRjR0Zm5GNGPnZkZEY+4UNZBwAAADyKsh4BzIA2Ix87MjIjHzsyMiMfM/KxIyMz8gmf0l3Wszbp
m3/3UdNTntQvWe5Yftlr9Xy/hDynX6ytVndM1T73agAAAMCrSmlZz9D6GS/otn69dP3YFdoVcIcL
EtipHbvr6MoPf1NKSkpwWa8FI3uoons1AAAA4FWltKz7tG31H6p95ViNv7+LKrijBcrerrQdtVTn
iMqqVKlScIlVbAxH/wAAAMD7SmlrjVHrKx7S/X/rpDox7lBhslK1OXWrvhszXKNeTdYP6/e6V0QO
M6DNyMeOjMzIx46MzMjHjHzsyMiMfMLH5/f7TQeReEBAqW9dona3TwkdZx7TYahmTLxdzaNzrtvy
5sXq8Fp3Tfn6DrUIjeWTvkrTkmdqxca1+nnap/pkTiVd9sZneviUePncTfJyjmu3yf0m0+Tk5NBl
3779Qpe5cp+g+SdXMJ6D8RyM52A8B+M5GM/BeA7Gc5SV8VxpaWnuGoqiFJR1KWvb71q5fqeyg+u+
SnXVpEltxYauKUJZP8AOTburpwYuvEazvrhZTQ7hcwWnzOcv60lJSaHLXM6TNP8TE/uRjx0ZmZGP
HRmZkY8Z+diRkZkpH8p68ZSKw2CiazZQy9at1Tq4tPqzqB+KajqmXVP5UjcptbCzxwAAAAAeUfZm
Wgb8emdAPbUdMlMZCsg/f5Imzl2hdSnrtGL2W3rwxdmKP6mHWhlnpQIAAAB/vTJY1ndr5+4oJdZP
DP7hsrVl4Ycaec0ZOr59R/VKel7rTxyhd4edomru5gAAAIBXlYpj1otlzyTd0vE/Snx3uoZ2sJ0q
pviKcsw6AAAACsYx68VT5vasB9LrqseQYbq6ffiLOgAAAFCSylxZ99XqoAFX9VH9v/BP5syARuHI
x46MzMjHjozMyMeMfOzIyIx8wqfsHbMOAAAAlBGUdQAAAMCjKOsAAACAR5W9s8GEmXP2l/w4GwwA
AMCh4WwwxcOedQunmOddAAAAgJJCWY8AZkCbkY8dGZmRjx0ZmZGPGfnYkZEZ+YQPZR0AAADwKMo6
AAAA4FGUdQAAAMCjKOsRkJiY4K6hIORjR0Zm5GNHRmbkY0Y+dmRkRj7hQ1kHAAAAPIqyHgHMgDYj
HzsyMiMfOzIyIx8z8rEjIzPyCR/KOgAAAOBRlHUAAADAoyjrFnFxcQcsAAAAQEnx+f3+gLuOInAK
ezCz0HpycnLoMikpKXQJAAAAs7S0NHcNRcGedQAAAMCjKOsRwAxoM/KxIyMz8rEjIzPyMSMfOzIy
I5/woawDAAAAHkVZBwAAADyKsg4AAAB4FGU9AhITE9w1FIR87MjIjHzsyMiMfMzIx46MzMgnfCjr
AAAAgEdR1iOAGdBm5GNHRmbkY0dGZuRjRj52ZGRGPuFDWQcAAAA8irIOAAAAeBRl3SIuLu6ABQAA
ACgpPr/fH3DXUQROYQ9mFlpPTk4OXSYlJYUuAQAAYJaWluauoSjYsw4AAAB4FGU9ApgBbUY+dmRk
Rj52ZGRGPmbkY0dGZuQTPpR1AAAAwKMo6wAAAIBHUdYBAAAAj6KsR0BiYoK7hoKQjx0ZmZGPHRmZ
kY8Z+diRkRn5hA9lHQAAAPAoynoEMAPajHzsyMiMfOzIyIx8zMjHjozMyCd8KOsAAACAR1HWLZxv
LM27AAAAACWFsm7h9/sPWAAAAICSQlmPAGZAm5GPHRmZkY8dGZmRjxn52JGRGfmED2UdAAAA8CjK
egQwA9qMfOzIyIx87MjIjHzMyMeOjMzIJ3wo6wAAAIBHUdYBAAAAjyrjZT2gnYvf130DTlTLoxJV
v9nxOnfIR1qR7l4NAAAAeFgZL+uZ+mPWdPm736t3ps7WpP+epT3v3aa73l6nbHeLSGAGtBn52JGR
GfnYkZEZ+ZiRjx0ZmZFP+JTxsl5BLa97Ts/ffpY6NWuitv1u1mWds7Vqxe/KcrcAAAAAvKpcHbMe
2DxdUxbVVs/ebRTjjkUCM6DNyMeOjMzIx46MzMjHjHzsyMiMfMLH5/f7A+56mfCvTgl6YW1W8E9W
TReNXa4X+8WGxgPb5uixgZfr42Oe04THT1UdX2j4IHFxce5awfJ+i2lycnLosm/ffqHLvJyPf/I/
UXM/Eirv4w7nupJ+3NI0nn/MURKP6ygN4/nHHCXxuI7SMr5kyTLFx+9/PSupxy0t4+RjHicf+/jW
rf4/MyrJx83Ly+MF5ZMrLS3NXUNRlLmyvmnlMqVmBP9IvmjVPKq56lfzKZA2W49ecqU+bvyoxj17
oRpVcDc+TLllPSkpKXSZy3mS5n9iYj/ysSMjM/KxIyMz8jEjHzsyMjPlQ1kvnjJ3GEzdZq3UunVr
tW7VIlTUlblKY2+4Su8f9bA+fi58RR0AAACItDK3Z/1AAaV9dp26/quKnv5qpHrVyBn1RcWoYsUY
FXIkTJEVtmcdAAAABWPPevGU+VM3Lpk1R6m/valLW9ZTvXo5y5Fd/q05Ge4mAAAAgEeV8T3rkeXs
WWevOgAAQNGxZ714KOuHoVatWu4aAAAAioKyXjyUdQAAAMCjytWXIgEAAAClCXvWI8D2xUoAAABl
XbBjums4HJT1CHDK+qE8QQ/1dg4e04zHtOMxzXhMM/Kx4zHNeEy78vKYOBCHwQAAAAAeRVkHAAAA
PIrDYCKAj37MyMeOjMzIx46MzMjHjHzsyMiMfMKHPesAAACAR1HWAQAAAI+irAMAAAAexTHrAAAA
gEexZx0AAADwKMo6AAAA4FGUdQAAAMCjKOsAAACAR1HWAQAAAI+irIfVXq36/GFdeUpbNUxMVONj
T9ffX1ugneX6fDv7tDb5VnVtdJHGbi4siEz99GAXHREXF/rGM2c5ovsj+jnTvbo8ytqkb/7dR01P
eVK/ZLlj5VD2pmkacWlXNatXT027XKyHJm9QtnvdAbLX6vl+CX8+f+LiaqvVHVODz77yJKDt817U
tT1b6sjERupw9t36ZFX5SmC/YmSx80P9LXH/a09cXKKu/HiPe2X5tHvZGF3Rromu+zzdHSm/ipLF
vsm3qnntPM+hhHP0yh8FvlKVcXSgSKGsh1P2Fs2dslYtbh6tr2dP05ikGvr63lv03JLy2Tr3rPpS
T1x7qk6/Y7z+ML7mB7Rzx161GPyV1qWkKCW4rJs6RG1j3KvLlQytn/GCbuvXS9ePXaFd5flFLnuD
Phh8jV7LvExvzpqt96+tqHevvUVjfy/gH8HATu3YXUdXfvhb6PmTkrJeC0b2UEX36vIgsP1rDU0a
od9PfV5Tvx+v/2s4Wbde+4zK48tPcbII7NyhnbFn66VVOa89KSlrNfq8yu615Utg+xKNe3CQep37
oKZvKcd7CYKKk0X2zp3K6Paw5q13n0O/fayrjyyH9YoOFDGU9XCKOkoDnnhZ913YTS2atFSvm65S
z4prtHJN+XzR821Zrc0tBuvD929RS2PxztL2tJ2qVTdBlStVUqXgElsxRj732vLFp22r/1DtK8dq
/P1dVMEdLY+yUybonalH6PKhN+mEJo3V+ZqhSmo4S28nrwk+Y/LJ3q60HbVU54jKoedPpUqxio0p
Xy9vOya/o/FZ5+meu/qoeaP2GnD/zTp++bt6f375+4eyOFlkb0vTjqq1VadqzmuP89ypUF7/ZcxK
0Zrd3TRs/CsalFjO60GRswgE//3apkBcXdWt7D6HYiso2r22XKEDRQxlPWKCf4FnTda8iiepd6fy
WbkqdblJw4ecrza1LC9bge3anLpX6ye/oBH/fUNfLNysDPeq8idGra94SPf/rZPqlMtPFvbL/GWx
lqul2rZwg4huqnatY7Vi8XIdVLmyUoPPoa36bsxwjXo1WT+s3+teUX6sXrJM6c3aqpX7cYKvdhu1
SVivJcu25QyUG5nGLPJ/WJWdukmp6T/r/Ucf14sfztDqcvxxli+uj/45/Fad0bRaOd1Zsl/Rs8jW
1s2pyvp1vB4f+ZzembxcaXTTIDpQOFHWD0PqWwNUv04d1QkuiaeO0oo8f0H3LHlV1/3ja3UYPlKX
lIM9FFkrRum0xJws6tS/WG8Wenx6QSqr601PavBpR2jvkg80pG9XnfPEPO12ry3LvrypiY4IPYcS
1HHo9+X4TUrg4L9PO3Zod6Vqqvrnez2fqlSrrH07dx2ck+8YXT7y/3Rek4BW/+8hXdj1VN07ZetB
xaws2x3MRVWrqkruy42viqpVkXbtCI6XKwFjFvmfE9GNz9O/HrhM7WM3aMaoK3XiyTfpk3J5vDEO
TZTqnPpPjbz+BFVNm6dX/95LJwx6TSvK74t5SHnrQJFGgoeh1jlP6JsZMzQjuEx95XI1dEvFnkUv
6vKLRsl3x3t67qIG5eLjsOhGl+uVqTlZzPjmSZ0TX4z9Mr7qan3aQF1x/WA98OIEffNcb60e9YTG
by37Veukf03MyWzGNH1wa/tyfNiL76C/T42qV1eVvbu068/e5JSwPaoYLGEH5RTbVD0vuULX3vov
PT3uG705cLdeH/Gu1pSjzlWlWtVgY9+l3bl/5sBu7Qy+4w2NlyvOm7rCs8j/yhRVv5suuuwq3XzP
43p7yme6rUayHh09/+BPb4AC+VSnwzkadNWNuuuR1zTpq4fUatYI/Xda+ft0L1d57ECRRlk/DNE1
G6hl69ZqHVxaNamt2OBY9sbxGnzZKOm2DzXmmmNUbqYpVaytxq1ysmjdsoFsR74Uzqe4Nm1UP2uz
NvrLftOqVr+FWoWeQ63UrG75nNSWK//fpyot2qillmnxcrc2Za3SoqXpat6mhcxHCFXTMe2ayucc
3lCOPo5uckwrxa5YrGXuSU8CqYu1eGN9tWldI2eg3IgxZmHcjRDbTG2bV9KWjVsOnhcBFEF0vTZq
Hb9DmzbtKVef7OUqtx0owijrYbVXs5+8X1Pa3K8nr2wS/HFv8P/pSs8oR7v3iiRLK58+TfV6jNSS
4L+I2Slz9L8p87VqfYp+W/KNXnlkrJY1PEknNuD9eHkWVe9sDeq1WWMfeVnfr1mrua8/otd/665B
5zdRdMCvdwbUU9shM5UR/CfRP3+SJs5doXUp67Ri9lt68MXZij+ph1qVo48qqvcZpHOiP9GIJ6Zo
5e+LNO6h5zW35aUacGz5+7zGmMUBz529WjZlgmYv+00p63/V3I+HadTX0eres0O5OpMQiil9om5q
cqSu+Wxv8J+zNZo5foYWr0lRypqF+uKpxzQu9Vj16GJ5Y1gm0YEihbIeTllr9d33f2jz/27WsfXq
qZ67NL9lorsBcgS0e9cuRSceqbrBZ2Bmyvd64/5B6nVce3Xue4ve2XeeXnz7bnXiX8vyLSpRA54a
rat9YzSoW1dd/NIeDXzlGV3RIPikCR3WEKXE+onBF7FsbVn4oUZec4aOb99RvZKe1/oTR+jdYaeo
mntX5YGvxqka9voQHfnlTerR+UwNW91bT4/+h9qUw2OrjFnkfe5kb9Xy/z2rW87ppmM7nKSBj8xX
yyHv6OmL65bDooUiy9yl3ZkJqp8YrcDO1Zo6+k5dcNKxat+tv+75qqaufeNV3dCsHO5sogNFjM/v
95fHT2rwVwqk6t1BnfVWz280/sZGvGNE8e2ZpFs6/keJ707X0A7l/LQ5KB6eOzhMGXP/oxOv2qbh
c57SKRzngRIQfc899/zHXQdKhvMFNrsaqeeFJ6lhZfZfofgCu3ZoV+1u6n9GM1XnKYRi4LmDw7Vv
5w5VPK6f+repzc4mlAj2rAMAAAAexZtCAAAAwKMo6wAAAIBHUdYBoIzYO+9l3XhJP53Y+R8av8cd
BACUapR1AAi7bXrv0kTFxcWp7mlPa2UJfcNO5qppSp70nZb8vk0ZzEYCgDKBsg4AAAB4FGUdAAAA
8CjKOgCUhOwUTXzoavXvfbxaN6mvhDp1lNionXonDddXv2e4GxUskPatnr7hIp3WrZ2aNUhU3cSj
1KLzmbp+xAStLOjY9IxpurdzEyXWTVTT4/rpllfmav9JejO19PXrdEbXNmp6ZIKOqHukmnc+Wze/
MFtb/vxW8Ez9MflxXXNaBzVNrBv872ypDiedrwcmb1Xu3QR2LtGH/7pUJx/TQImJDdS6+0Ua8uYC
befwGwAIK8o6AJSE7A36fvx4TZ//qzak7dG+rCylb1+n+Z+O1OWDHtP8fe52BQhsW6gvkydr7vJ1
St2Zroz0Xdq8crY+HH6lzrj0JS3Pf9vs7dq4Pk3pGenyr/lOb99ziW55f4NyurhPMWm/6qdf1su/
e58yM3Zry8pv9c7QS3XTW+tC22SteF5XXf6IPp67Vv70jOB/5yatXbpEaVFVc76GP32pnr/0LN34
7JdalLJT6ek7tWHpZL1ye39d9vIKldAh+gBQLlDWAaBERatJ0hh9N2+2Pr77RNXwBYLd9wN98GOG
tG+DFs2aqZkzc5dvNXfV9j/3ZisqXv2fnqV533+l0Td2VHVftrbOGKmRn/v3b+Oo2E33/O87zZny
sgYdHRMs735N/uBLbQ5tFK3GA0Zpwrc/avEvK7X8x091T/fq8gUL/ozPpig1uM2uH2dr4Z6AfLEn
65F567V5wxr9PO1D3d41Nnj7gDZ9MkyPfZsm1TpZ945foF9XzNX7N7VTbGCbZj33qr43f1AAACgG
yjoAlCifYus01tFNW6nXtZeoc8XgUNYGrVq9S9lbv9DQC87ROefkLv11zeglysy5YVCM4hocraYt
jteFDzyiKxpHB4t4mmZO+0kH9GPfEWp+bEs1P+48XXHGUcF6HlDmb6v1u3tHMTUqyf/tu3rmkaG6
9+F3tTyjcvAfg4Cyt2xSarZUqVETJQbvOrDvB7145wMaM3OTahzTXo2qOLferVkTZ+Qc7hKzVbOf
uUs33XyvRv+4M/g4wT/KxsVavOnP42kAAIeJsg4AfxFf9TjVjA4dWKJ9ew3HwRSkQhM1bxITXMnW
tlT/gWX9T1GqGVcj54U+fa/SgxeBHTN1f99eunTIY3pxzHsaN+49ffLDppxDV7KzQ4fBVOx6h0bd
3l11Y9L12zcv6a6LT1CHUwZr3Krgf2P2dqWm7gvtyc/esljfTJqkScHlq+9Xa3doz3269joPBAAI
C8o6APyFfDldPVR+fYlXKXmDX35/7rJFCx7ppgo5mxwoO1WbQjNCo1SlRo2Ctwny5T6Aa+fXozVm
6R4ptqMGT1ii9ZtSNOP/jj3w9r466jV0gn764VM9ffuZal41IP+CN3Tb/32oTb7qiouLCR27XqHD
UH23Je9/b3DZOEn/aMo/LQAQLryiAkBpEdir1T/N0bLVKzT7tUc1dnFGsFjHqmOXdoWW9QMFlLF7
d84XJkVVVZ2EOFWuUEGxFZ099PtlrZ2mj778URsrH6sBdz+t//RPCB1Kk752tVKyqqhLzy6qHGzr
GQv/q5vuekNTFyzX8oVzNPnjVzTuR746FQDCibIOAKVFYLumDTtHJ3TsojOHjNe6LJ8qHn25/nF+
Qs5ZWqx8qtmttzpW8SmwZ4aGdm2o+g2bqvfwn/IcFx/Q5slP6ZZLT1XHlo1Ur15z/e3tFGUF/7mo
3el4NYmJ0lEDh+q2TjmTUn96/Xad36ubuvU8Qxddc5+e/no1Z4MBgDCirANAaeGrpIZt26p+9VjF
Vqundmf/U2M+GqaeNYpW1R3RR1+n0WPv1QXHN1ZcbEDpO3cps0K8GrQ5Qaf3aa945+w08a11UvsG
iqsUo6joWNU8sp1Ou36U3n/0DNVw7qRKJ9318Zd6+fZzdXzj2qpSMUYVqx6hxsf2UOfGzoxZAEC4
+Pz+/V+VAQDwnuy1L+isLvfqu8y6SvroZz3Vm0IMAOUFe9YBAAAAj6KsAwAAAB7FYTAAAACAR7Fn
HQAAAPAoyjoAAADgUZR1AAAAwKMo6wAAAIBHUdYBAAAAj6KsAwAAAB5FWQcAAAA8irIOAAAAeBRl
HQAAAPAoyjoAAADgUZR1AAAAwKMo6wAAAIBHUdYBAAAAj6KsAwAAAB5FWQcAAAA8irIOAAAAeBRl
HQAAAPAoyjoAAADgUZR1AAAAwJOk/wejvnaLSL+FowAAAABJRU5ErkJggg==
--000000000000d002c705be234d91
Content-Type: image/png; name="test_with_agc.png"
Content-Disposition: attachment; filename="test_with_agc.png"
Content-Transfer-Encoding: base64
Content-ID: <f_kmku0r561>
X-Attachment-Id: f_kmku0r561

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
AADA06T/B7yTAe4dNQUhAAAAAElFTkSuQmCC
--000000000000d002c705be234d91
Content-Type: image/png; name="grc.png"
Content-Disposition: attachment; filename="grc.png"
Content-Transfer-Encoding: base64
Content-ID: <f_kmkug8d22>
X-Attachment-Id: f_kmkug8d22

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
R9FqHI/m49B69WSr5k142cpUnLxOB3bt1YkGq6ptdmP7drUualHPAcOVn31Cq2c9qw8/WalvTtgV
nxCjeK9K2do+dqssbZNuPG+Yrn/mE6W3ReofBarIeE5arxCVsUa9/FQjj7bvWzU2NujkyQzZvPzV
97Qu8rYbz0lx60dqFWUe18mUfaosaNKSrccU09FPbmfrTw8iQoMUE2rcX22jYjp0VkRUZzmdoRrb
I1S5B35QXql0PKdSh7IrjWf9V5cu4/9IqKKGXanTu1Ur47tXjNfsDD349Ht6dN4edeo7UKP6tlNI
gJf8fWzKTl6jzYvX6qu1e4xXjdU4753y866VZ/1urdicqM1HqtX8+ZPupkYdWfulPv/Tp3pv5X5Z
QyIVHR2tSO9SWY98q9VLNuvj77a2bb/5CnrJoz5b2dvWaFtKjo4Zp97PfzzQ5PBWSL9J+sN90zWt
b4i++2aJEg9mKzc3X/kF5erUyXifMM6VksoSNdbZpFo/hXnVyl61Xd+s2aZtqY3qO2S0ymtrlGe8
t3i4XEo+mKrszDx5WKx/eRP38PeXh0ej0tOzW8J4s+YfeDU5fBQVE6uEhFhFBHgY52uDgoqS9fWn
8zVr1X5FxwTJt/Cgdh0rUWqDVFNapqpam+LiouXlLNfmha9pynlT9PaSJJX/4n8cGOe48Z7j01hn
7FO5Gm1eaoobpm5xvvLN26u6Cl+tOlguH0dTyw9M6iwOte87XGdcfZ+GjxioaM9K4530v79HAQAA
AACAf6+/VgV/l5o/3f7QoVQlJW3T4CEDdP1NF+qCW67SZVddLru7SStXr1dU7x4aPbyXli+ar717
kuUTENgyLYGvn6cunHKmDh9L1XN33a3kQ+k6/7KpGj9qgGb/1wfalJikO+9/WCNHj/67V4Ja5NaF
F5yvqNj2evmlF7R921YFGvffwttboyeMV3VJju665XqtXrtODW0BNTA8QtfceJX69uqgWW/9UW++
9Z7SMnJabmvmdHnozLMn6vnH7pDTWqc3/vSulq5YqQnjJ2vS+LG66orLZbV76I+vv6Kjh/fLx/uf
CZQ2JXSK17t/fF6DekZr7rw5mvXhRy1zow4cN0HPP/+ACnNO6sGH7pfLP0wPPPK4EuLb/Q9Rxziu
0dEaOniAViyerz+++rJOpGcYR+enYGyxWjR40gTddvOlWr18iebOX6DTz52qCy+6RH4+bcfM0FRf
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
AAAAAH4Tfn9BeO5CqcneNgL8DlgaNXbccIIwAAAAAAAA/uN+V0E4JzdHqWmpbd8Bvx8R4RGKbxff
9h0AAAAAAADwn/G7CsIAAAAAAAAAgH8eHyoHAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJ
EIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAM
AAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAA
AAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAA
AIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABM
giAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRh
AAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAA
AAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAA
AABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABg
EgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAI
AwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAA
AAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAA
AABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAA
kyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARB
GAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAA
AAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAA
AAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAA
mARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQI
wgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYA
AAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAA
AAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAA
wCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZB
EAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAA
AAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAA
AAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAA
ACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJ
gjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQB
AAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAA
AAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAA
ADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJ
EIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAM
AAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAA
AAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAA
AIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABM
giAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRh
AAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAAAABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAA
AAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABgEgRhAAAAAAAAADAJgjAAAAAAAAAAmARBGAAAAAAA
AABMgiAMAAAAAAAAACZBEAYAAAAAAAAAkyAIAwAAAAAAAIBJEIQBAAAAAAAAwCQIwgAAAAAAAABg
EgRhAAAAAAAAADAF6f8BcAGbOgoOIEUAAAAASUVORK5CYII=
--000000000000d002c705be234d91
Content-Type: application/octet-stream; name="ad9361_device.cpp"
Content-Disposition: attachment; filename="ad9361_device.cpp"
Content-Transfer-Encoding: base64
Content-ID: <f_kmkupirx3>
X-Attachment-Id: f_kmkupirx3

Ly8KLy8gQ29weXJpZ2h0IDIwMTQgRXR0dXMgUmVzZWFyY2gKLy8gQ29weXJpZ2h0IDIwMTggRXR0
dXMgUmVzZWFyY2gsIGEgTmF0aW9uYWwgSW5zdHJ1bWVudHMgQ29tcGFueQovLwovLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogR1BMLTMuMC1vci1sYXRlcgovLwoKI2luY2x1ZGUgImFkOTM2MV9k
ZXZpY2UuaCIKI2luY2x1ZGUgImFkOTM2MV9jbGllbnQuaCIKI2luY2x1ZGUgImFkOTM2MV9maWx0
ZXJfdGFwcy5oIgojaW5jbHVkZSAiYWQ5MzYxX2dhaW5fdGFibGVzLmgiCiNpbmNsdWRlICJhZDkz
NjFfc3ludGhfbHV0LmgiCiNkZWZpbmUgX1VTRV9NQVRIX0RFRklORVMKI2luY2x1ZGUgPHVoZC9l
eGNlcHRpb24uaHBwPgojaW5jbHVkZSA8dWhkL3V0aWxzL2xvZy5ocHA+CiNpbmNsdWRlIDxzdGRp
bnQuaD4KI2luY2x1ZGUgPGJvb3N0L2Zvcm1hdC5ocHA+CiNpbmNsdWRlIDxib29zdC9tYXRoL3Nw
ZWNpYWxfZnVuY3Rpb25zLmhwcD4KI2luY2x1ZGUgPGJvb3N0L3Njb3BlZF9hcnJheS5ocHA+CiNp
bmNsdWRlIDxjaHJvbm8+CiNpbmNsdWRlIDxjbWF0aD4KI2luY2x1ZGUgPHRocmVhZD4KCi8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLwov
LyB0aGUgZm9sbG93aW5nIG1hY3JvcyBldmFsdWF0ZSB0byBhIGNvbXBpbGUgdGltZSBjb25zdGFu
dAovLyBtYWNyb3MgQnkgVG9tIFRvcmZzIC0gZG9uYXRlZCB0byB0aGUgcHVibGljIGRvbWFpbgoK
LyogdHVybiBhIG51bWVyaWMgbGl0ZXJhbCBpbnRvIGEgaGV4IGNvbnN0YW50Cihhdm9pZHMgcHJv
YmxlbXMgd2l0aCBsZWFkaW5nIHplcm9lcykKOC1iaXQgY29uc3RhbnRzIG1heCB2YWx1ZSAweDEx
MTExMTExLCBhbHdheXMgZml0cyBpbiB1bnNpZ25lZCBsb25nCiovCiNkZWZpbmUgSEVYX18obikg
MHgjI24jI0xVCgovKiA4LWJpdCBjb252ZXJzaW9uIGZ1bmN0aW9uICovCiNkZWZpbmUgQjhfXyh4
KSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IFwKICAgICgoeCAmIDB4MDAwMDAwMEZMVSkgPyAxIDogMCkgKyAoKHggJiAweDAwMDAwMEYwTFUp
ID8gMiA6IDApICAgICAgICAgXAogICAgICAgICsgKCh4ICYgMHgwMDAwMEYwMExVKSA/IDQgOiAw
KSArICgoeCAmIDB4MDAwMEYwMDBMVSkgPyA4IDogMCkgICBcCiAgICAgICAgKyAoKHggJiAweDAw
MEYwMDAwTFUpID8gMTYgOiAwKSArICgoeCAmIDB4MDBGMDAwMDBMVSkgPyAzMiA6IDApIFwKICAg
ICAgICArICgoeCAmIDB4MEYwMDAwMDBMVSkgPyA2NCA6IDApICsgKCh4ICYgMHhGMDAwMDAwMExV
KSA/IDEyOCA6IDApCgovKiBmb3IgdXB0byA4LWJpdCBiaW5hcnkgY29uc3RhbnRzICovCiNkZWZp
bmUgQjgoZCkgKCh1bnNpZ25lZCBjaGFyKUI4X18oSEVYX18oZCkpKQovLy8vLy8vLy8vLy8vLy8v
Ly8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8vLy8KCgpuYW1lc3BhY2Ug
dWhkIHsgbmFtZXNwYWNlIHVzcnAgewoKLyogVGhpcyBpcyBhIHNpbXBsZSBjb21wYXJpc29uIGZv
ciB2ZXJ5IGxhcmdlIGRvdWJsZS1wcmVjaXNpb24gZmxvYXRpbmcKICogcG9pbnQgbnVtYmVycy4g
SXQgaXMgdXNlZCB0byBwcmV2ZW50IHJlLXR1bmVzIGZvciBmcmVxdWVuY2llcyB0aGF0IGFyZQog
KiB0aGUgc2FtZSBidXQgbm90ICdleGFjdGx5JyBiZWNhdXNlIG9mIGRhdGEgcHJlY2lzaW9uIGlz
c3Vlcy4gKi8KLy8gVE9ETzogc2VlIGlmIHdlIGNhbiBhdm9pZCB0aGUgbmVlZCBmb3IgdGhpcyBm
dW5jdGlvbgppbnQgZnJlcV9pc19uZWFybHlfZXF1YWwoZG91YmxlIGEsIGRvdWJsZSBiKQp7CiAg
ICByZXR1cm4gc3RkOjptYXgoYSwgYikgLSBzdGQ6Om1pbihhLCBiKSA8IDE7Cn0KCi8qKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKgogKiBGaWx0ZXIgZnVuY3Rpb25zCiAqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKLyogVGhpcyBmdW5j
dGlvbiB0YWtlcyBpbiB0aGUgY2FsY3VsYXRlZCBtYXhpbXVtIG51bWJlciBvZiBGSVIgdGFwcywg
YW5kCiAqIHJldHVybnMgYSBudW1iZXIgb2YgdGFwcyB0aGF0IG1ha2VzIEFEOTM2MSBoYXBweS4g
Ki8KaW50IGdldF9udW1fdGFwcyhpbnQgbWF4X251bV90YXBzKQp7CiAgICBpbnQgbnVtX3RhcHMg
ICAgICAgID0gMDsKICAgIGludCBudW1fdGFwc19saXN0W10gPSB7MTYsIDMyLCA0OCwgNjQsIDgw
LCA5NiwgMTEyLCAxMjh9OwogICAgaW50IGk7CiAgICBmb3IgKGkgPSAxOyBpIDwgODsgaSsrKSB7
CiAgICAgICAgaWYgKG1heF9udW1fdGFwcyA+PSBudW1fdGFwc19saXN0W2ldKSB7CiAgICAgICAg
ICAgIGNvbnRpbnVlOwogICAgICAgIH0gZWxzZSB7CiAgICAgICAgICAgIG51bV90YXBzID0gbnVt
X3RhcHNfbGlzdFtpIC0gMV07CiAgICAgICAgICAgIGJyZWFrOwogICAgICAgIH0KICAgIH0KICAg
IGlmIChudW1fdGFwcyA9PSAwKSB7CiAgICAgICAgbnVtX3RhcHMgPSAxMjg7CiAgICB9CgogICAg
cmV0dXJuIG51bV90YXBzOwp9Cgpjb25zdCBkb3VibGUgYWQ5MzYxX2RldmljZV90OjpBRDkzNjFf
TUFYX0dBSU4gICAgICAgICA9IDg5Ljc1Owpjb25zdCBkb3VibGUgYWQ5MzYxX2RldmljZV90OjpB
RDkzNjFfTUlOX0NMT0NLX1JBVEUgICA9IDIyMGUzOwpjb25zdCBkb3VibGUgYWQ5MzYxX2Rldmlj
ZV90OjpBRDkzNjFfTUFYX0NMT0NLX1JBVEUgICA9IDYxLjQ0ZTY7CmNvbnN0IGRvdWJsZSBhZDkz
NjFfZGV2aWNlX3Q6OkFEOTM2MV9DQUxfVkFMSURfV0lORE9XID0gMTAwZTY7Ci8vIE1heCBiYW5k
d2RpdGggaXMgZHVlIHRvIGZpbHRlciByb2xsb2ZmIGluIGFuYWxvZyBmaWx0ZXIgc3RhZ2UKY29u
c3QgZG91YmxlIGFkOTM2MV9kZXZpY2VfdDo6QUQ5MzYxX01JTl9CVyA9IDIwMGUzOwpjb25zdCBk
b3VibGUgYWQ5MzYxX2RldmljZV90OjpBRDkzNjFfTUFYX0JXID0gNTZlNjsKCi8qIFN0YXJ0dXAg
UkYgZnJlcXVlbmNpZXMgKi8KY29uc3QgZG91YmxlIGFkOTM2MV9kZXZpY2VfdDo6REVGQVVMVF9S
WF9GUkVRID0gODAwZTY7CmNvbnN0IGRvdWJsZSBhZDkzNjFfZGV2aWNlX3Q6OkRFRkFVTFRfVFhf
RlJFUSA9IDg1MGU2OwoKLyogUHJvZ3JhbSBlaXRoZXIgdGhlIFJYIG9yIFRYIEZJUiBmaWx0ZXIu
CiAqCiAqIFRoZSBwcm9jZXNzIGlzIHRoZSBzYW1lIGZvciBib3RoIGZpbHRlcnMsIGJ1dCB0aGUg
ZnVuY3Rpb24gbXVzdCBiZSB0b2xkCiAqIGhvdyBtYW55IHRhcHMgYXJlIGluIHRoZSBmaWx0ZXIs
IGFuZCBnaXZlbiBhIHZlY3RvciBvZiB0aGUgdGFwcwogKiB0aGVtc2VsdmVzLiAgKi8KCnZvaWQg
YWQ5MzYxX2RldmljZV90OjpfcHJvZ3JhbV9maXJfZmlsdGVyKAogICAgZGlyZWN0aW9uX3QgZGly
ZWN0aW9uLCBjaGFpbl90IGNoYWluLCBpbnQgbnVtX3RhcHMsIHVpbnQxNl90KiBjb2VmZnMpCnsK
ICAgIHVpbnQxNl90IGJhc2U7CgogICAgLyogUlggYW5kIFRYIGZpbHRlcnMgdXNlIGxhcmdlbHkg
aWRlbnRpY2FsIHNldHMgb2YgcHJvZ3JhbW1pbmcgcmVnaXN0ZXJzLgogICAgIFNlbGVjdCB0aGUg
YXBwcm9wcmlhdGUgYmFuayBvZiByZWdpc3RlcnMgaGVyZS4gKi8KICAgIGlmIChkaXJlY3Rpb24g
PT0gUlgpIHsKICAgICAgICBiYXNlID0gMHgwZjA7CiAgICB9IGVsc2UgewogICAgICAgIGJhc2Ug
PSAweDA2MDsKICAgIH0KCiAgICAvKiBFbmNvZGUgbnVtYmVyIG9mIGZpbHRlciB0YXBzIGZvciBw
cm9ncmFtbWluZyByZWdpc3RlciAqLwogICAgdWludDhfdCByZWdfbnVtdGFwcyA9ICgoKG51bV90
YXBzIC8gMTYpIC0gMSkgJiAweDA3KSA8PCA1OwoKICAgIHVpbnQ4X3QgcmVnX2NoYWluID0gMDsK
ICAgIHN3aXRjaCAoY2hhaW4pIHsKICAgICAgICBjYXNlIENIQUlOXzE6CiAgICAgICAgICAgIHJl
Z19jaGFpbiA9IDB4MDEgPDwgMzsKICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgY2FzZSBDSEFJ
Tl8yOgogICAgICAgICAgICByZWdfY2hhaW4gPSAweDAyIDw8IDM7CiAgICAgICAgICAgIGJyZWFr
OwogICAgICAgIGRlZmF1bHQ6CiAgICAgICAgICAgIHJlZ19jaGFpbiA9IDB4MDMgPDwgMzsKICAg
IH0KCiAgICAvKiBUdXJuIG9uIHRoZSBmaWx0ZXIgY2xvY2suICovCiAgICBfaW9faWZhY2UtPnBv
a2U4KGJhc2UgKyA1LCByZWdfbnVtdGFwcyB8IHJlZ19jaGFpbiB8IDB4MDIpOwogICAgc3RkOjp0
aGlzX3RocmVhZDo6c2xlZXBfZm9yKHN0ZDo6Y2hyb25vOjptaWxsaXNlY29uZHMoMSkpOwoKICAg
IC8qIFplcm8gdGhlIHVudXNlZCB0YXBzIGp1c3QgaW4gY2FzZSB0aGV5IGhhdmUgc3RhbGUgZGF0
YSAqLwogICAgaW50IGFkZHI7CiAgICBmb3IgKGFkZHIgPSBudW1fdGFwczsgYWRkciA8IDEyODsg
YWRkcisrKSB7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOChiYXNlICsgMCwgYWRkcik7CiAgICAg
ICAgX2lvX2lmYWNlLT5wb2tlOChiYXNlICsgMSwgMHgwKTsKICAgICAgICBfaW9faWZhY2UtPnBv
a2U4KGJhc2UgKyAyLCAweDApOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoYmFzZSArIDUsIHJl
Z19udW10YXBzIHwgcmVnX2NoYWluIHwgKDEgPDwgMSkgfCAoMSA8PCAyKSk7CiAgICAgICAgX2lv
X2lmYWNlLT5wb2tlOChiYXNlICsgNCwgMHgwMCk7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOChi
YXNlICsgNCwgMHgwMCk7CiAgICB9CgogICAgLyogSXRlcmF0ZSB0aHJvdWdoIGluZGlyZWN0IHBy
b2dyYW1taW5nIG9mIGZpbHRlciBjb2VmZnMgdXNpbmcgQURJIHJlY29tZW5kZWQKICAgICAqIHBy
b2NlZHVyZSAqLwogICAgZm9yIChhZGRyID0gMDsgYWRkciA8IG51bV90YXBzOyBhZGRyKyspIHsK
ICAgICAgICBfaW9faWZhY2UtPnBva2U4KGJhc2UgKyAwLCBhZGRyKTsKICAgICAgICBfaW9faWZh
Y2UtPnBva2U4KGJhc2UgKyAxLCAoY29lZmZzW2FkZHJdKSAmIDB4ZmYpOwogICAgICAgIF9pb19p
ZmFjZS0+cG9rZTgoYmFzZSArIDIsIChjb2VmZnNbYWRkcl0gPj4gOCkgJiAweGZmKTsKICAgICAg
ICBfaW9faWZhY2UtPnBva2U4KGJhc2UgKyA1LCByZWdfbnVtdGFwcyB8IHJlZ19jaGFpbiB8ICgx
IDw8IDEpIHwgKDEgPDwgMikpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoYmFzZSArIDQsIDB4
MDApOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoYmFzZSArIDQsIDB4MDApOwogICAgfQoKICAg
IC8qIFVHLTY3MSBzdGF0ZXMgKHBhZ2UgMjUpIChwYXJhcGhyYXNlZCBhbmQgY2xhcmlmaWVkKToK
ICAgICAiIEFmdGVyIHRoZSB0YWJsZSBoYXMgYmVlbiBwcm9ncmFtbWVkLCB3cml0ZSB0byByZWdp
c3RlciBCQVNFKzUgd2l0aCB0aGUgd3JpdGUgYml0IEQyCiAgICAgY2xlYXJlZCBhbmQgRDEgaGln
aC4gVGhlbiwgd3JpdGUgdG8gcmVnaXN0ZXIgQkFTRSs1IGFnYWluIHdpdGggRDEgY2xlYXIsIHRo
dXMKICAgICBlbnN1cmluZyB0aGF0IHRoZSB3cml0ZSBiaXQgcmVzZXRzIGludGVybmFsbHkgYmVm
b3JlIHRoZSBjbG9jayBzdG9wcy4gV2FpdCA0IHNhbXBsZQogICAgIGNsb2NrIHBlcmlvZHMgYWZ0
ZXIgc2V0dGluZyBEMiBoaWdoIHdoaWxlIHRoYXQgZGF0YSB3cml0ZXMgaW50byB0aGUgdGFibGUi
CiAgICAgKi8KCiAgICBfaW9faWZhY2UtPnBva2U4KGJhc2UgKyA1LCByZWdfbnVtdGFwcyB8IHJl
Z19jaGFpbiB8ICgxIDw8IDEpKTsKICAgIGlmIChkaXJlY3Rpb24gPT0gUlgpIHsKICAgICAgICBf
aW9faWZhY2UtPnBva2U4KGJhc2UgKyA1LCByZWdfbnVtdGFwcyB8IHJlZ19jaGFpbik7CiAgICAg
ICAgLyogUnggR2Fpbiwgc2V0IHRvIHByZXZlbnQgZGlnaXRhbCBvdmVyZmxvdy9zYXR1cmF0aW9u
IGluIGZpbHRlcnMKICAgICAgICAgICAwOis2ZEIsIDE6MGRCLCAyOi02ZEIsIDM6LTEyZEIKICAg
ICAgICAgICBwYWdlIDM1IG9mIFVHLTY3MSAqLwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoCiAg
ICAgICAgICAgIGJhc2UgKyA2LCAweDAyKTsgLyogQWxzbyB0dXJuIG9uIC02ZEIgUnggZ2FpbiBo
ZXJlLCB0byBzdG9wIGZpbHRlciBvdmVyZm93LiovCiAgICB9IGVsc2UgewogICAgICAgIC8qIFR4
IEdhaW4uIGJpdFswXS4gc2V0IHRvIHByZXZlbnQgZGlnaXRhbCBvdmVyZmxvdy9zYXR1cmF0aW9u
IGluIGZpbHRlcnMKICAgICAgICAgICAwOiAwZEIsIDE6LTZkQgogICAgICAgICAgIHBhZ2UgMjUg
b2YgVUctNjcxICovCiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOChiYXNlICsgNSwgcmVnX251bXRh
cHMgfCByZWdfY2hhaW4pOwogICAgfQp9CgoKLyogUHJvZ3JhbSB0aGUgUlggRklSIEZpbHRlci4g
Ki8Kdm9pZCBhZDkzNjFfZGV2aWNlX3Q6Ol9zZXR1cF9yeF9maXIoc2l6ZV90IG51bV90YXBzLCBp
bnQzMl90IGRlY2ltYXRpb24pCnsKICAgIGlmIChub3QoZGVjaW1hdGlvbiA9PSAxIG9yIGRlY2lt
YXRpb24gPT0gMiBvciBkZWNpbWF0aW9uID09IDQpKSB7CiAgICAgICAgdGhyb3cgdWhkOjpydW50
aW1lX2Vycm9yKCJbYWQ5MzYxX2RldmljZV90XSBJbnZhbGlkIFJ4IEZJUiBkZWNpbWF0aW9uLiIp
OwogICAgfQogICAgYm9vc3Q6OnNjb3BlZF9hcnJheTx1aW50MTZfdD4gY29lZmZzKG5ldyB1aW50
MTZfdFtudW1fdGFwc10pOwogICAgZm9yIChzaXplX3QgaSA9IDA7IGkgPCBudW1fdGFwczsgaSsr
KSB7CiAgICAgICAgc3dpdGNoIChudW1fdGFwcykgewogICAgICAgICAgICBjYXNlIDEyODoKICAg
ICAgICAgICAgICAgIGNvZWZmc1tpXSA9CiAgICAgICAgICAgICAgICAgICAgdWludDE2X3QoKGRl
Y2ltYXRpb24gPT0gNCkgPyBmaXJfMTI4X3g0X2NvZWZmc1tpXSA6IGhiMTI3X2NvZWZmc1tpXSk7
CiAgICAgICAgICAgICAgICBicmVhazsKICAgICAgICAgICAgY2FzZSA5NjoKICAgICAgICAgICAg
ICAgIGNvZWZmc1tpXSA9CiAgICAgICAgICAgICAgICAgICAgdWludDE2X3QoKGRlY2ltYXRpb24g
PT0gNCkgPyBmaXJfOTZfeDRfY29lZmZzW2ldIDogaGI5NV9jb2VmZnNbaV0pOwogICAgICAgICAg
ICAgICAgYnJlYWs7CiAgICAgICAgICAgIGNhc2UgNjQ6CiAgICAgICAgICAgICAgICBjb2VmZnNb
aV0gPQogICAgICAgICAgICAgICAgICAgIHVpbnQxNl90KChkZWNpbWF0aW9uID09IDQpID8gZmly
XzY0X3g0X2NvZWZmc1tpXSA6IGhiNjNfY29lZmZzW2ldKTsKICAgICAgICAgICAgICAgIGJyZWFr
OwogICAgICAgICAgICBjYXNlIDQ4OgogICAgICAgICAgICAgICAgY29lZmZzW2ldID0KICAgICAg
ICAgICAgICAgICAgICB1aW50MTZfdCgoZGVjaW1hdGlvbiA9PSA0KSA/IGZpcl80OF94NF9jb2Vm
ZnNbaV0gOiBoYjQ3X2NvZWZmc1tpXSk7CiAgICAgICAgICAgICAgICBicmVhazsKICAgICAgICAg
ICAgZGVmYXVsdDoKICAgICAgICAgICAgICAgIHRocm93IHVoZDo6cnVudGltZV9lcnJvcigKICAg
ICAgICAgICAgICAgICAgICAiW2FkOTM2MV9kZXZpY2VfdF0gVW5zdXBwb3J0ZWQgbnVtYmVyIG9m
IFJ4IEZJUiB0YXBzLiIpOwogICAgICAgIH0KICAgIH0KCiAgICBfcHJvZ3JhbV9maXJfZmlsdGVy
KFJYLCBDSEFJTl9CT1RILCBudW1fdGFwcywgY29lZmZzLmdldCgpKTsKfQoKLyogUHJvZ3JhbSB0
aGUgVFggRklSIEZpbHRlci4gKi8Kdm9pZCBhZDkzNjFfZGV2aWNlX3Q6Ol9zZXR1cF90eF9maXIo
c2l6ZV90IG51bV90YXBzLCBpbnQzMl90IGludGVycG9sYXRpb24pCnsKICAgIGlmIChub3QoaW50
ZXJwb2xhdGlvbiA9PSAxIG9yIGludGVycG9sYXRpb24gPT0gMiBvciBpbnRlcnBvbGF0aW9uID09
IDQpKSB7CiAgICAgICAgdGhyb3cgdWhkOjpydW50aW1lX2Vycm9yKCJbYWQ5MzYxX2RldmljZV90
XSBJbnZhbGlkIFR4IEZJUiBpbnRlcnBvbGF0aW9uLiIpOwogICAgfQogICAgaWYgKGludGVycG9s
YXRpb24gPT0gMSBhbmQgbnVtX3RhcHMgPiA2NCkgewogICAgICAgIHRocm93IHVoZDo6cnVudGlt
ZV9lcnJvcigKICAgICAgICAgICAgIlthZDkzNjFfZGV2aWNlX3RdIFRvbyBtYW55IFR4IEZJUiB0
YXBzIGZvciBpbnRlcnBvbGF0aW9uIHZhbHVlLiIpOwogICAgfQogICAgYm9vc3Q6OnNjb3BlZF9h
cnJheTx1aW50MTZfdD4gY29lZmZzKG5ldyB1aW50MTZfdFtudW1fdGFwc10pOwogICAgZm9yIChz
aXplX3QgaSA9IDA7IGkgPCBudW1fdGFwczsgaSsrKSB7CiAgICAgICAgc3dpdGNoIChudW1fdGFw
cykgewogICAgICAgICAgICBjYXNlIDEyODoKICAgICAgICAgICAgICAgIGNvZWZmc1tpXSA9IHVp
bnQxNl90KAogICAgICAgICAgICAgICAgICAgIChpbnRlcnBvbGF0aW9uID09IDQpID8gZmlyXzEy
OF94NF9jb2VmZnNbaV0gOiBoYjEyN19jb2VmZnNbaV0pOwogICAgICAgICAgICAgICAgYnJlYWs7
CiAgICAgICAgICAgIGNhc2UgOTY6CiAgICAgICAgICAgICAgICBjb2VmZnNbaV0gPQogICAgICAg
ICAgICAgICAgICAgIHVpbnQxNl90KChpbnRlcnBvbGF0aW9uID09IDQpID8gZmlyXzk2X3g0X2Nv
ZWZmc1tpXSA6IGhiOTVfY29lZmZzW2ldKTsKICAgICAgICAgICAgICAgIGJyZWFrOwogICAgICAg
ICAgICBjYXNlIDY0OgogICAgICAgICAgICAgICAgY29lZmZzW2ldID0KICAgICAgICAgICAgICAg
ICAgICB1aW50MTZfdCgoaW50ZXJwb2xhdGlvbiA9PSA0KSA/IGZpcl82NF94NF9jb2VmZnNbaV0g
OiBoYjYzX2NvZWZmc1tpXSk7CiAgICAgICAgICAgICAgICBicmVhazsKICAgICAgICAgICAgY2Fz
ZSA0ODoKICAgICAgICAgICAgICAgIGNvZWZmc1tpXSA9CiAgICAgICAgICAgICAgICAgICAgdWlu
dDE2X3QoKGludGVycG9sYXRpb24gPT0gNCkgPyBmaXJfNDhfeDRfY29lZmZzW2ldIDogaGI0N19j
b2VmZnNbaV0pOwogICAgICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgICAgIGRlZmF1bHQ6CiAg
ICAgICAgICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAgICAgICAgICAg
ICAgIlthZDkzNjFfZGV2aWNlX3RdIFVuc3VwcG9ydGVkIG51bWJlciBvZiBUeCBGSVIgdGFwcy4i
KTsKICAgICAgICB9CiAgICB9CgogICAgX3Byb2dyYW1fZmlyX2ZpbHRlcihUWCwgQ0hBSU5fQk9U
SCwgbnVtX3RhcHMsIGNvZWZmcy5nZXQoKSk7Cn0KCi8qKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogKiBDYWxpYnJh
dGlvbiBmdW5jdGlvbnMKICoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqLwoKLyogQ2FsaWJyYXRlIGFuZCBsb2NrIHRo
ZSBCQlBMTC4KICoKICogVGhpcyBmdW5jdGlvbiBzaG91bGQgYmUgY2FsbGVkIGFueXRpbWUgdGhl
IEJCUExMIGlzIHR1bmVkLiAqLwp2b2lkIGFkOTM2MV9kZXZpY2VfdDo6X2NhbGlicmF0ZV9sb2Nr
X2JicGxsKCkKewogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAzRiwgMHgwNSk7IC8vIFN0YXJ0IHRo
ZSBCQlBMTCBjYWxpYnJhdGlvbgogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAzRiwgMHgwMSk7IC8v
IENsZWFyIHRoZSAnc3RhcnQnIGJpdAoKICAgIC8qIEluY3JlYXNlIEJCUExMIEtWIGFuZCBwaGFz
ZSBtYXJnaW4uICovCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MDRjLCAweDg2KTsKICAgIF9pb19p
ZmFjZS0+cG9rZTgoMHgwNGQsIDB4MDEpOwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDA0ZCwgMHgw
NSk7CgogICAgLyogV2FpdCBmb3IgQkJQTEwgbG9jay4gKi8KICAgIHNpemVfdCBjb3VudCA9IDA7
CiAgICB3aGlsZSAoIShfaW9faWZhY2UtPnBlZWs4KDB4MDVlKSAmIDB4ODApKSB7CiAgICAgICAg
aWYgKGNvdW50ID4gMTAwMCkgewogICAgICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3Io
IlthZDkzNjFfZGV2aWNlX3RdIEJCUExMIG5vdCBsb2NrZWQiKTsKICAgICAgICAgICAgYnJlYWs7
CiAgICAgICAgfQogICAgICAgIGNvdW50Kys7CiAgICAgICAgc3RkOjp0aGlzX3RocmVhZDo6c2xl
ZXBfZm9yKHN0ZDo6Y2hyb25vOjptaWxsaXNlY29uZHMoMikpOwogICAgfQp9CgovKiBDYWxpYnJh
dGUgdGhlIHN5bnRoZXNpemVyIGNoYXJnZSBwdW1wcy4KICoKICogVGVjaG5pY2FsbHksIHRoaXMg
Y2FsaWJyYXRpb24gb25seSBuZWVkcyB0byBiZSBkb25lIG9uY2UsIGF0IGRldmljZQogKiBpbml0
aWFsaXphdGlvbi4gKi8Kdm9pZCBhZDkzNjFfZGV2aWNlX3Q6Ol9jYWxpYnJhdGVfc3ludGhfY2hh
cmdlX3B1bXBzKCkKewogICAgLyogSWYgdGhpcyBmdW5jdGlvbiBldmVyIGdldHMgY2FsbGVkLCBh
bmQgdGhlIEVOU00gaXNuJ3QgYWxyZWFkeSBpbiB0aGUKICAgICAqIEFMRVJUIHN0YXRlLCB0aGVu
IHNvbWV0aGluZyBoYXMgZ29uZSBob3JyaWJseSB3cm9uZy4gKi8KICAgIGlmICgoX2lvX2lmYWNl
LT5wZWVrOCgweDAxNykgJiAweDBGKSAhPSA1KSB7CiAgICAgICAgdGhyb3cgdWhkOjpydW50aW1l
X2Vycm9yKCJbYWQ5MzYxX2RldmljZV90XSBBRDkzNjEgbm90IGluIEFMRVJUIGR1cmluZyBjYWwi
KTsKICAgIH0KCiAgICAvKiBDYWxpYnJhdGUgdGhlIFJYIHN5bnRoZXNpemVyIGNoYXJnZSBwdW1w
LiAqLwogICAgc2l6ZV90IGNvdW50ID0gMDsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyM2QsIDB4
MDQpOwogICAgd2hpbGUgKCEoX2lvX2lmYWNlLT5wZWVrOCgweDI0NCkgJiAweDgwKSkgewogICAg
ICAgIGlmIChjb3VudCA+IDUpIHsKICAgICAgICAgICAgdGhyb3cgdWhkOjpydW50aW1lX2Vycm9y
KCJbYWQ5MzYxX2RldmljZV90XSBSWCBjaGFyZ2UgcHVtcCBjYWwgZmFpbHVyZSIpOwogICAgICAg
ICAgICBicmVhazsKICAgICAgICB9CiAgICAgICAgY291bnQrKzsKICAgICAgICBzdGQ6OnRoaXNf
dGhyZWFkOjpzbGVlcF9mb3Ioc3RkOjpjaHJvbm86Om1pbGxpc2Vjb25kcygxKSk7CiAgICB9CiAg
ICBfaW9faWZhY2UtPnBva2U4KDB4MjNkLCAweDAwKTsKCiAgICAvKiBDYWxpYnJhdGUgdGhlIFRY
IHN5bnRoZXNpemVyIGNoYXJnZSBwdW1wLiAqLwogICAgY291bnQgPSAwOwogICAgX2lvX2lmYWNl
LT5wb2tlOCgweDI3ZCwgMHgwNCk7CiAgICB3aGlsZSAoIShfaW9faWZhY2UtPnBlZWs4KDB4Mjg0
KSAmIDB4ODApKSB7CiAgICAgICAgaWYgKGNvdW50ID4gNSkgewogICAgICAgICAgICB0aHJvdyB1
aGQ6OnJ1bnRpbWVfZXJyb3IoIlthZDkzNjFfZGV2aWNlX3RdIFRYIGNoYXJnZSBwdW1wIGNhbCBm
YWlsdXJlIik7CiAgICAgICAgICAgIGJyZWFrOwogICAgICAgIH0KICAgICAgICBjb3VudCsrOwog
ICAgICAgIHN0ZDo6dGhpc190aHJlYWQ6OnNsZWVwX2ZvcihzdGQ6OmNocm9ubzo6bWlsbGlzZWNv
bmRzKDEpKTsKICAgIH0KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyN2QsIDB4MDApOwp9CgovKiBD
YWxpYnJhdGUgdGhlIGFuYWxvZyBCQiBSWCBmaWx0ZXIuCiAqCiAqIE5vdGUgdGhhdCB0aGUgZmls
dGVyIGNhbGlicmF0aW9uIGRlcGVuZHMgaGVhdmlseSBvbiB0aGUgYmFzZWJhbmQKICogYmFuZHdp
ZHRoLCBzbyB0aGlzIG11c3QgYmUgcmUtZG9uZSBhZnRlciBhbnkgY2hhbmdlIHRvIHRoZSBSWCBz
YW1wbGUKICogcmF0ZS4KICogVUc1NzAgUGFnZSAzMyBzdGF0ZXMgdGhhdCB0aGlzIGZpbHRlciBz
aG91bGQgYmUgY2FsaWJyYXRlZCB0byAxLjQgKiBiYmJ3Ki8KZG91YmxlIGFkOTM2MV9kZXZpY2Vf
dDo6X2NhbGlicmF0ZV9iYXNlYmFuZF9yeF9hbmFsb2dfZmlsdGVyKGRvdWJsZSByZXFfcmZidykK
ewogICAgZG91YmxlIGJiYncgPSByZXFfcmZidyAvIDIuMDsKICAgIGlmIChiYmJ3ID4gX2Jhc2Vi
YW5kX2J3IC8gMi4wKSB7CiAgICAgICAgVUhEX0xPR0dFUl9ERUJVRygiQUQ5MzZYIikgPDwgImJh
c2ViYW5kIGJhbmR3aWR0aCB0b28gbGFyZ2UgZm9yIGN1cnJlbnQgc2FtcGxlICIKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAicmF0ZS4gU2V0dGluZyBiYW5kd2lkdGggdG86
ICIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8PCBfYmFzZWJhbmRfYnc7CiAg
ICAgICAgYmJidyA9IF9iYXNlYmFuZF9idyAvIDIuMDsKICAgIH0KCiAgICAvKiBCYXNlYmFuZCBC
VyBtdXN0IGJlIGJldHdlZW4gMjhlNiBhbmQgMC4xNDNlNi4KICAgICAqIE1heCBmaWx0ZXIgQlcg
aXMgMzkuMiBNSHouIDM5LjIgLyAxLjQgPSAyOAogICAgICogTWluIGZpbHRlciBCVyBpcyAyMDBr
SHouIDIwMCAvIDEuNCA9IDE0MyAqLwogICAgaWYgKGJiYncgPiAyOGU2KSB7CiAgICAgICAgYmJi
dyA9IDI4ZTY7CiAgICB9IGVsc2UgaWYgKGJiYncgPCAwLjE0M2U2KSB7CiAgICAgICAgYmJidyA9
IDAuMTQzZTY7CiAgICB9CgogICAgZG91YmxlIHJ4dHVuZV9jbGsgPSAoKDEuNCAqIGJiYncgKiAy
ICogTV9QSSkgLyBNX0xOMik7CiAgICBfcnhfYmJmX3R1bmVkaXYgPQogICAgICAgIHN0ZDo6bWlu
PHVpbnQxNl90Pig1MTEsIHVpbnQxNl90KHN0ZDo6Y2VpbChfYmJwbGxfZnJlcSAvIHJ4dHVuZV9j
bGspKSk7CiAgICBfcmVncy5iYmZ0dW5lX2NvbmZpZyA9IChfcmVncy5iYmZ0dW5lX2NvbmZpZyAm
IDB4RkUpCiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgKChfcnhfYmJmX3R1bmVkaXYgPj4g
OCkgJiAweDAwMDEpOwoKICAgIGRvdWJsZSBiYmJ3X21oeiAgPSBiYmJ3IC8gMWU2OwogICAgZG91
YmxlIHRlbXAgICAgICA9ICgoYmJid19taHogLSBzdGQ6OmZsb29yKGJiYndfbWh6KSkgKiAxMDAw
KSAvIDcuODEyNTsKICAgIHVpbnQ4X3QgYmJid19raHogPSBzdGQ6Om1pbjx1aW50OF90PigxMjcs
IHVpbnQ4X3Qoc3RkOjpmbG9vcih0ZW1wICsgMC41KSkpOwoKICAgIC8qIFNldCBjb3JuZXIgZnJl
cXVlbmNpZXMgYW5kIGRpdmlkZXJzLiAqLwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDFmYiwgKHVp
bnQ4X3QpKGJiYndfbWh6KSk7CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MWZjLCBiYmJ3X2toeik7
CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MWY4LCAoX3J4X2JiZl90dW5lZGl2ICYgMHgwMEZGKSk7
CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MWY5LCBfcmVncy5iYmZ0dW5lX2NvbmZpZyk7CgogICAg
LyogUlggTWl4IFZvbHRhZ2Ugc2V0dGluZ3MgLSBvbmx5IGNoYW5nZSB3aXRoIGFwcHMgZW5naW5l
ZXIgaGVscC4gKi8KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxZDUsIDB4M2YpOwogICAgX2lvX2lm
YWNlLT5wb2tlOCgweDFjMCwgMHgwMyk7CgogICAgLyogRW5hYmxlIFJYMSAmIFJYMiBmaWx0ZXIg
dHVuZXJzLiAqLwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDFlMiwgMHgwMik7CiAgICBfaW9faWZh
Y2UtPnBva2U4KDB4MWUzLCAweDAyKTsKCiAgICAvKiBSdW4gdGhlIGNhbGlicmF0aW9uISAqLwog
ICAgc2l6ZV90IGNvdW50ID0gMDsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMTYsIDB4ODApOwog
ICAgd2hpbGUgKF9pb19pZmFjZS0+cGVlazgoMHgwMTYpICYgMHg4MCkgewogICAgICAgIGlmIChj
b3VudCA+IDEwMCkgewogICAgICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoIlthZDkz
NjFfZGV2aWNlX3RdIFJYIGJhc2ViYW5kIGZpbHRlciBjYWwgRkFJTFVSRSIpOwogICAgICAgICAg
ICBicmVhazsKICAgICAgICB9CiAgICAgICAgY291bnQrKzsKICAgICAgICBzdGQ6OnRoaXNfdGhy
ZWFkOjpzbGVlcF9mb3Ioc3RkOjpjaHJvbm86Om1pbGxpc2Vjb25kcygxKSk7CiAgICB9CgogICAg
LyogRGlzYWJsZSBSWDEgJiBSWDIgZmlsdGVyIHR1bmVycy4gKi8KICAgIF9pb19pZmFjZS0+cG9r
ZTgoMHgxZTIsIDB4MDMpOwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDFlMywgMHgwMyk7CgogICAg
cmV0dXJuIGJiYnc7Cn0KCi8qIENhbGlicmF0ZSB0aGUgYW5hbG9nIEJCIFRYIGZpbHRlci4KICoK
ICogTm90ZSB0aGF0IHRoZSBmaWx0ZXIgY2FsaWJyYXRpb24gZGVwZW5kcyBoZWF2aWx5IG9uIHRo
ZSBiYXNlYmFuZAogKiBiYW5kd2lkdGgsIHNvIHRoaXMgbXVzdCBiZSByZS1kb25lIGFmdGVyIGFu
eSBjaGFuZ2UgdG8gdGhlIFRYIHNhbXBsZQogKiByYXRlLgogKiBVRzU3MCBQYWdlIDMyIHN0YXRl
cyB0aGF0IHRoaXMgZmlsdGVyIHNob3VsZCBiZSBjYWxpYnJhdGVkIHRvIDEuNiAqIGJiYncqLwpk
b3VibGUgYWQ5MzYxX2RldmljZV90OjpfY2FsaWJyYXRlX2Jhc2ViYW5kX3R4X2FuYWxvZ19maWx0
ZXIoZG91YmxlIHJlcV9yZmJ3KQp7CiAgICBkb3VibGUgYmJidyA9IHJlcV9yZmJ3IC8gMi4wOwoK
ICAgIGlmIChiYmJ3ID4gX2Jhc2ViYW5kX2J3IC8gMi4wKSB7CiAgICAgICAgVUhEX0xPR0dFUl9E
RUJVRygiQUQ5MzZYIikgPDwgImJhc2ViYW5kIGJhbmR3aWR0aCB0b28gbGFyZ2UgZm9yIGN1cnJl
bnQgc2FtcGxlICIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAicmF0ZS4g
U2V0dGluZyBiYW5kd2lkdGggdG86ICIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICA8PCBfYmFzZWJhbmRfYnc7CiAgICAgICAgYmJidyA9IF9iYXNlYmFuZF9idyAvIDIuMDsKICAg
IH0KCiAgICAvKiBCYXNlYmFuZCBCVyBtdXN0IGJlIGJldHdlZW4gMjBlNiBhbmQgMC4zOTFlNi4K
ICAgICAqIE1heCBmaWx0ZXIgQlcgaXMgMzIgTUh6LiAzMiAvIDEuNiA9IDIwCiAgICAgKiBNaW4g
ZmlsdGVyIEJXIGlzIDYyNSBrSHouIDYyNSAvIDEuNiA9IDM5MSAqLwogICAgaWYgKGJiYncgPiAy
MGU2KSB7CiAgICAgICAgYmJidyA9IDIwZTY7CiAgICB9IGVsc2UgaWYgKGJiYncgPCAwLjM5MWU2
KSB7CiAgICAgICAgYmJidyA9IDAuMzkxZTY7CiAgICB9CgogICAgZG91YmxlIHR4dHVuZV9jbGsg
PSAoKDEuNiAqIGJiYncgKiAyICogTV9QSSkgLyBNX0xOMik7CiAgICB1aW50MTZfdCB0eGJiZmRp
diA9CiAgICAgICAgc3RkOjptaW48dWludDE2X3Q+KDUxMSwgdWludDE2X3Qoc3RkOjpjZWlsKF9i
YnBsbF9mcmVxIC8gdHh0dW5lX2NsaykpKTsKICAgIF9yZWdzLmJiZnR1bmVfbW9kZSA9IChfcmVn
cy5iYmZ0dW5lX21vZGUgJiAweEZFKSB8ICgodHhiYmZkaXYgPj4gOCkgJiAweDAwMDEpOwoKICAg
IC8qIFByb2dyYW0gdGhlIGRpdmlkZXIgdmFsdWVzLiAqLwogICAgX2lvX2lmYWNlLT5wb2tlOCgw
eDBkNiwgKHR4YmJmZGl2ICYgMHgwMEZGKSk7CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MGQ3LCBf
cmVncy5iYmZ0dW5lX21vZGUpOwoKICAgIC8qIEVuYWJsZSB0aGUgZmlsdGVyIHR1bmVyLiAqLwog
ICAgX2lvX2lmYWNlLT5wb2tlOCgweDBjYSwgMHgyMik7CgogICAgLyogQ2FsaWJyYXRlISAqLwog
ICAgc2l6ZV90IGNvdW50ID0gMDsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMTYsIDB4NDApOwog
ICAgd2hpbGUgKF9pb19pZmFjZS0+cGVlazgoMHgwMTYpICYgMHg0MCkgewogICAgICAgIGlmIChj
b3VudCA+IDEwMCkgewogICAgICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoIlthZDkz
NjFfZGV2aWNlX3RdIFRYIGJhc2ViYW5kIGZpbHRlciBjYWwgRkFJTFVSRSIpOwogICAgICAgICAg
ICBicmVhazsKICAgICAgICB9CgogICAgICAgIGNvdW50Kys7CiAgICAgICAgc3RkOjp0aGlzX3Ro
cmVhZDo6c2xlZXBfZm9yKHN0ZDo6Y2hyb25vOjptaWxsaXNlY29uZHMoMSkpOwogICAgfQoKICAg
IC8qIERpc2FibGUgdGhlIGZpbHRlciB0dW5lci4gKi8KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgw
Y2EsIDB4MjYpOwoKICAgIHJldHVybiBiYmJ3Owp9CgovKiBDYWxpYnJhdGUgdGhlIHNlY29uZGFy
eSBUWCBmaWx0ZXIuCiAqCiAqIFRoaXMgZmlsdGVyIGFsc28gZGVwZW5kcyBvbiB0aGUgVFggc2Ft
cGxlIHJhdGUsIHNvIGlmIGEgcmF0ZSBjaGFuZ2UgaXMKICogbWFkZSwgdGhlIHByZXZpb3VzIGNh
bGlicmF0aW9uIHdpbGwgbm8gbG9uZ2VyIGJlIHZhbGlkLgogKiBVRzU3MCBQYWdlIDMyIHN0YXRl
cyB0aGF0IHRoaXMgZmlsdGVyIHNob3VsZCBiZSBjYWxpYnJhdGVkIHRvIDUgKiBiYmJ3Ki8KZG91
YmxlIGFkOTM2MV9kZXZpY2VfdDo6X2NhbGlicmF0ZV9zZWNvbmRhcnlfdHhfZmlsdGVyKGRvdWJs
ZSByZXFfcmZidykKewogICAgZG91YmxlIGJiYncgPSByZXFfcmZidyAvIDIuMDsKCiAgICBpZiAo
YmJidyA+IF9iYXNlYmFuZF9idyAvIDIuMCkgewogICAgICAgIFVIRF9MT0dHRVJfREVCVUcoIkFE
OTM2WCIpIDw8ICJiYXNlYmFuZCBiYW5kd2lkdGggdG9vIGxhcmdlIGZvciBjdXJyZW50IHNhbXBs
ZSAiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInJhdGUuIFNldHRpbmcg
YmFuZHdpZHRoIHRvOiAiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDwgX2Jh
c2ViYW5kX2J3OwogICAgICAgIGJiYncgPSBfYmFzZWJhbmRfYncgLyAyLjA7CiAgICB9CgogICAg
LyogQmFzZWJhbmQgQlcgbXVzdCBiZSBiZXR3ZWVuIDIwZTYgYW5kIDAuNTRlNi4KICAgICAqIE1h
eCBmaWx0ZXIgQlcgaXMgMTAwIE1Iei4gMTAwIC8gNSA9IDIwCiAgICAgKiBNaW4gZmlsdGVyIEJX
IGlzIDIuNyBNSHouIDIuNyAvIDUgPSAwLjU0ICovCiAgICBpZiAoYmJidyA+IDIwZTYpIHsKICAg
ICAgICBiYmJ3ID0gMjBlNjsKICAgIH0gZWxzZSBpZiAoYmJidyA8IDAuNTRlNikgewogICAgICAg
IGJiYncgPSAwLjU0ZTY7CiAgICB9CgogICAgZG91YmxlIGJiYndfbWh6ID0gYmJidyAvIDFlNjsK
CiAgICAvKiBTdGFydCB3aXRoIGEgcmVzaXN0b3IgdmFsdWUgb2YgMTAwIE9obXMuICovCiAgICBp
bnQgcmVzID0gMTAwOwoKICAgIC8qIENhbGN1bGF0ZSB0YXJnZXQgY29ybmVyIGZyZXF1ZW5jeS4g
Ki8KICAgIGRvdWJsZSBjb3JuZXJfZnJlcSA9IDUgKiBiYmJ3X21oeiAqIDIgKiBNX1BJOwoKICAg
IC8qIEl0ZXJhdGUgdGhyb3VnaCBSQyB2YWx1ZXMgdG8gZGV0ZXJtaW5lIGNvcnJlY3QgY29tYmlu
YXRpb24uICovCiAgICBpbnQgY2FwID0gMDsKICAgIGludCBpOwogICAgZm9yIChpID0gMDsgaSA8
PSAzOyBpKyspIHsKICAgICAgICBjYXAgPQogICAgICAgICAgICBzdGF0aWNfY2FzdDxpbnQ+KHN0
ZDo6Zmxvb3IoMC41ICsgKCgxIC8gKChjb3JuZXJfZnJlcSAqIHJlcykgKiAxZTYpKSAqIDFlMTIp
KSkKICAgICAgICAgICAgLSAxMjsKCiAgICAgICAgaWYgKGNhcCA8PSA2MykgewogICAgICAgICAg
ICBicmVhazsKICAgICAgICB9CgogICAgICAgIHJlcyA9IHJlcyAqIDI7CiAgICB9CiAgICBpZiAo
Y2FwID4gNjMpIHsKICAgICAgICBjYXAgPSA2MzsKICAgIH0KCiAgICB1aW50OF90IHJlZzBkMCwg
cmVnMGQxLCByZWcwZDI7CgogICAgLyogVHJhbnNsYXRlIGJhc2ViYW5kIGJhbmR3aWR0aHMgdG8g
cmVnaXN0ZXIgc2V0dGluZ3MuICovCiAgICBpZiAoKGJiYndfbWh6ICogMikgPD0gOSkgewogICAg
ICAgIHJlZzBkMCA9IDB4NTk7CiAgICB9IGVsc2UgaWYgKCgoYmJid19taHogKiAyKSA+IDkpICYm
ICgoYmJid19taHogKiAyKSA8PSAyNCkpIHsKICAgICAgICByZWcwZDAgPSAweDU2OwogICAgfSBl
bHNlIGlmICgoYmJid19taHogKiAyKSA+IDI0KSB7CiAgICAgICAgcmVnMGQwID0gMHg1NzsKICAg
IH0gZWxzZSB7CiAgICAgICAgcmVnMGQwID0gMHgwMDsKICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRp
bWVfZXJyb3IoCiAgICAgICAgICAgICJbYWQ5MzYxX2RldmljZV90XSBDYWwybmRUeEZpbDogSU5W
QUxJRF9DT0RFX1BBVEggYmFkIGJiYndfbWh6Iik7CiAgICB9CgogICAgLyogVHJhbnNsYXRlIHJl
c2lzdG9yIHZhbHVlcyB0byByZWdpc3RlciBzZXR0aW5ncy4gKi8KICAgIGlmIChyZXMgPT0gMTAw
KSB7CiAgICAgICAgcmVnMGQxID0gMHgwYzsKICAgIH0gZWxzZSBpZiAocmVzID09IDIwMCkgewog
ICAgICAgIHJlZzBkMSA9IDB4MDQ7CiAgICB9IGVsc2UgaWYgKHJlcyA9PSA0MDApIHsKICAgICAg
ICByZWcwZDEgPSAweDAzOwogICAgfSBlbHNlIGlmIChyZXMgPT0gODAwKSB7CiAgICAgICAgcmVn
MGQxID0gMHgwMTsKICAgIH0gZWxzZSB7CiAgICAgICAgcmVnMGQxID0gMHgwYzsKICAgIH0KCiAg
ICByZWcwZDIgPSBjYXA7CgogICAgLyogUHJvZ3JhbSB0aGUgYWJvdmUtY2FsY3VsYXRlZCB2YWx1
ZXMuIFN3ZWV0LiAqLwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDBkMiwgcmVnMGQyKTsKICAgIF9p
b19pZmFjZS0+cG9rZTgoMHgwZDEsIHJlZzBkMSk7CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MGQw
LCByZWcwZDApOwoKICAgIHJldHVybiBiYmJ3Owp9CgovKiBDYWxpYnJhdGUgdGhlIFJYIFRJQXMu
CiAqCiAqIE5vdGUgdGhhdCB0aGUgdmFsdWVzIGluIHRoZSBUSUEgcmVnaXN0ZXIsIGFmdGVyIGNh
bGlicmF0aW9uLCB2YXJ5IHdpdGgKICogdGhlIFJYIGdhaW4gc2V0dGluZ3MuCiAqIFdlIGRvIG5v
dCByZWFsbHkgcHJvZ3JhbSB0aGUgQlcgaGVyZS4gTW9zdCBzZXR0aW5ncyBhcmUgdGFrZW4gZm9y
bSB0aGUgQkIgTFBGIHJlZ2lzdGVycwogKiBVRzU3MCBwYWdlIDMzIHN0YXRlcyB0aGF0IHRoaXMg
ZmlsdGVyIHNob3VsZCBiZSBjYWxpYnJhdGVkIHRvIDIuNSAqIGJiYncgKi8KZG91YmxlIGFkOTM2
MV9kZXZpY2VfdDo6X2NhbGlicmF0ZV9yeF9USUFzKGRvdWJsZSByZXFfcmZidykKewogICAgdWlu
dDhfdCByZWcxZWIgPSBfaW9faWZhY2UtPnBlZWs4KDB4MWViKSAmIDB4M0Y7CiAgICB1aW50OF90
IHJlZzFlYyA9IF9pb19pZmFjZS0+cGVlazgoMHgxZWMpICYgMHg3RjsKICAgIHVpbnQ4X3QgcmVn
MWU2ID0gX2lvX2lmYWNlLT5wZWVrOCgweDFlNikgJiAweDA3OwogICAgdWludDhfdCByZWcxZGIg
PSAweDAwOwogICAgdWludDhfdCByZWcxZGMgPSAweDAwOwogICAgdWludDhfdCByZWcxZGQgPSAw
eDAwOwogICAgdWludDhfdCByZWcxZGUgPSAweDAwOwogICAgdWludDhfdCByZWcxZGYgPSAweDAw
OwoKICAgIGRvdWJsZSBiYmJ3ID0gcmVxX3JmYncgLyAyLjA7CgogICAgaWYgKGJiYncgPiBfYmFz
ZWJhbmRfYncgLyAyLjApIHsKICAgICAgICBVSERfTE9HR0VSX0RFQlVHKCJBRDkzNlgiKSA8PCAi
YmFzZWJhbmQgYmFuZHdpZHRoIHRvbyBsYXJnZSBmb3IgY3VycmVudCBzYW1wbGUgIgogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJyYXRlLiBTZXR0aW5nIGJhbmR3aWR0aCB0
bzogIgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDw8IF9iYXNlYmFuZF9idzsK
ICAgICAgICBiYmJ3ID0gX2Jhc2ViYW5kX2J3IC8gMi4wOwogICAgfQoKICAgIC8qIEJhc2ViYW5k
IEJXIG11c3QgYmUgYmV0d2VlbiAyOGU2IGFuZCAwLjRlNi4KICAgICAqIE1heCBmaWx0ZXIgQlcg
aXMgNzAgTUh6LiA3MCAvIDIuNSA9IDI4CiAgICAgKiBNaW4gZmlsdGVyIEJXIGlzIDEgTUh6LiAx
IC8gMi41ID0gIDAuNCovCiAgICBpZiAoYmJidyA+IDI4ZTYpIHsKICAgICAgICBiYmJ3ID0gMjhl
NjsKICAgIH0gZWxzZSBpZiAoYmJidyA8IDAuNDBlNikgewogICAgICAgIGJiYncgPSAwLjQwZTY7
CiAgICB9CiAgICBkb3VibGUgY2VpbF9iYmJ3X21oeiA9IHN0ZDo6Y2VpbChiYmJ3IC8gMWU2KTsK
CiAgICAvKiBEbyBzb21lIGNyYXp5IHJlc2lzdG9yIGFuZCBjYXBhY2l0b3IgbWF0aC4gKi8KICAg
IGludCBDYmJmICAgICAgID0gKHJlZzFlYiAqIDE2MCkgKyAocmVnMWVjICogMTApICsgMTQwOwog
ICAgaW50IFIyMzQ2ICAgICAgPSAxODMwMCAqIChyZWcxZTYgJiAweDA3KTsKICAgIGRvdWJsZSBD
VElBX2ZGID0gKENiYmYgKiBSMjM0NiAqIDAuNTYpIC8gMzUwMDsKCiAgICAvKiBUcmFuc2xhdGUg
YmFzZWJhbmQgQlcgdG8gcmVnaXN0ZXIgc2V0dGluZ3MuICovCiAgICBpZiAoY2VpbF9iYmJ3X21o
eiA8PSAzKSB7CiAgICAgICAgcmVnMWRiID0gMHhlMDsKICAgIH0gZWxzZSBpZiAoKGNlaWxfYmJi
d19taHogPiAzKSAmJiAoY2VpbF9iYmJ3X21oeiA8PSAxMCkpIHsKICAgICAgICByZWcxZGIgPSAw
eDYwOwogICAgfSBlbHNlIGlmIChjZWlsX2JiYndfbWh6ID4gMTApIHsKICAgICAgICByZWcxZGIg
PSAweDIwOwogICAgfSBlbHNlIHsKICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAg
ICAgICAgICAgICJbYWQ5MzYxX2RldmljZV90XSBDYWxSeFRpYXM6IElOVkFMSURfQ09ERV9QQVRI
IGJhZCBiYmJ3X21oeiIpOwogICAgfQoKICAgIGlmIChDVElBX2ZGID4gMjkyMCkgewogICAgICAg
IHJlZzFkYyAgICAgICA9IDB4NDA7CiAgICAgICAgcmVnMWRlICAgICAgID0gMHg0MDsKICAgICAg
ICB1aW50OF90IHRlbXAgPSAodWludDhfdClzdGQ6Om1pbjx1aW50OF90PigKICAgICAgICAgICAg
MTI3LCB1aW50OF90KHN0ZDo6Zmxvb3IoMC41ICsgKChDVElBX2ZGIC0gNDAwLjApIC8gMzIwLjAp
KSkpOwogICAgICAgIHJlZzFkZCA9IHRlbXA7CiAgICAgICAgcmVnMWRmID0gdGVtcDsKICAgIH0g
ZWxzZSB7CiAgICAgICAgdWludDhfdCB0ZW1wID0gdWludDhfdChzdGQ6OmZsb29yKDAuNSArICgo
Q1RJQV9mRiAtIDQwMC4wKSAvIDQwLjApKSArIDB4NDApOwogICAgICAgIHJlZzFkYyAgICAgICA9
IHRlbXA7CiAgICAgICAgcmVnMWRlICAgICAgID0gdGVtcDsKICAgICAgICByZWcxZGQgICAgICAg
PSAwOwogICAgICAgIHJlZzFkZiAgICAgICA9IDA7CiAgICB9CgogICAgLyogdzAwdC4gU2V0dGlu
Z3MgY2FsY3VsYXRlZC4gUHJvZ3JhbSB0aGVtIGFuZCByb2xsIG91dC4gKi8KICAgIF9pb19pZmFj
ZS0+cG9rZTgoMHgxZGIsIHJlZzFkYik7CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MWRkLCByZWcx
ZGQpOwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDFkZiwgcmVnMWRmKTsKICAgIF9pb19pZmFjZS0+
cG9rZTgoMHgxZGMsIHJlZzFkYyk7CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MWRlLCByZWcxZGUp
OwoKICAgIHJldHVybiBiYmJ3Owp9CgovKiBTZXR1cCB0aGUgQUQ5MzYxIEFEQy4KICoKICogVGhl
cmUgYXJlIDQwIHJlZ2lzdGVycyB0aGF0IGNvbnRyb2wgdGhlIEFEQydzIG9wZXJhdGlvbiwgbW9z
dCBvZiB0aGUKICogdmFsdWVzIG9mIHdoaWNoIG11c3QgYmUgZGVyaXZlZCBtYXRoZW1hdGljYWxs
eSwgZGVwZW5kZW50IG9uIHRoZSBjdXJyZW50CiAqIHNldHRpbmcgb2YgdGhlIEJCUExMLiBOb3Rl
IHRoYXQgdGhlIG9yZGVyIG9mIGNhbGN1bGF0aW9uIGlzIGNyaXRpY2FsLCBhcwogKiBzb21lIG9m
IHRoZSA0MCByZWdpc3RlcnMgZGVwZW5kIG9uIHRoZSB2YWx1ZXMgaW4gb3RoZXJzLiAqLwp2b2lk
IGFkOTM2MV9kZXZpY2VfdDo6X3NldHVwX2FkYygpCnsKICAgIGRvdWJsZSBiYmJ3X21oeiA9CiAg
ICAgICAgKCgoX2JicGxsX2ZyZXEgLyAxZTYpIC8gX3J4X2JiZl90dW5lZGl2KSAqIE1fTE4yKSAv
ICgxLjQgKiAyICogTV9QSSk7CgogICAgLyogRm9yIGNhbGlicmF0aW9uLCBiYXNlYmFuZCBCVyBp
cyBoYWxmIHRoZSBjb21wbGV4IEJXLCBhbmQgbXVzdCBiZQogICAgICogYmV0d2VlbiAyOGU2IGFu
ZCAwLjJlNi4gKi8KICAgIGlmIChiYmJ3X21oeiA+IDI4KSB7CiAgICAgICAgYmJid19taHogPSAy
ODsKICAgIH0gZWxzZSBpZiAoYmJid19taHogPCAwLjIwKSB7CiAgICAgICAgYmJid19taHogPSAw
LjIwOwogICAgfQoKICAgIHVpbnQ4X3QgcnhiYmZfYzNfbXNiID0gX2lvX2lmYWNlLT5wZWVrOCgw
eDFlYikgJiAweDNGOwogICAgdWludDhfdCByeGJiZl9jM19sc2IgPSBfaW9faWZhY2UtPnBlZWs4
KDB4MWVjKSAmIDB4N0Y7CiAgICB1aW50OF90IHJ4YmJmX3IyMzQ2ICA9IF9pb19pZmFjZS0+cGVl
azgoMHgxZTYpICYgMHgwNzsKCiAgICBkb3VibGUgZnNhZGMgPSBfYWRjY2xvY2tfZnJlcSAvIDFl
NjsKCiAgICAvKiBTb3J0IG91dCB0aGUgUkMgdGltZSBjb25zdGFudCBmb3Igb3VyIGJhc2ViYW5k
IGJhbmR3aWR0aC4uLiAqLwogICAgZG91YmxlIHJjX3RpbWVjb25zdCA9IDAuMDsKICAgIGlmIChi
YmJ3X21oeiA8IDE4KSB7CiAgICAgICAgcmNfdGltZWNvbnN0ID0KICAgICAgICAgICAgKDEKICAg
ICAgICAgICAgICAgIC8gKCgxLjQgKiAyICogTV9QSSkgKiAoMTgzMDAgKiByeGJiZl9yMjM0NikK
ICAgICAgICAgICAgICAgICAgICAgICogKCgxNjBlLTE1ICogcnhiYmZfYzNfbXNiKSArICgxMGUt
MTUgKiByeGJiZl9jM19sc2IpICsgMTQwZS0xNSkKICAgICAgICAgICAgICAgICAgICAgICogKGJi
YndfbWh6ICogMWU2KSkpOwogICAgfSBlbHNlIHsKICAgICAgICByY190aW1lY29uc3QgPQogICAg
ICAgICAgICAoMQogICAgICAgICAgICAgICAgLyAoKDEuNCAqIDIgKiBNX1BJKSAqICgxODMwMCAq
IHJ4YmJmX3IyMzQ2KQogICAgICAgICAgICAgICAgICAgICAgKiAoKDE2MGUtMTUgKiByeGJiZl9j
M19tc2IpICsgKDEwZS0xNSAqIHJ4YmJmX2MzX2xzYikgKyAxNDBlLTE1KQogICAgICAgICAgICAg
ICAgICAgICAgKiAoYmJid19taHogKiAxZTYpICogKDEgKyAoMC4wMSAqIChiYmJ3X21oeiAtIDE4
KSkpKSk7CiAgICB9CgogICAgZG91YmxlIHNjYWxlX3JlcyA9IHNxcnQoMSAvIHJjX3RpbWVjb25z
dCk7CiAgICBkb3VibGUgc2NhbGVfY2FwID0gc3FydCgxIC8gcmNfdGltZWNvbnN0KTsKCiAgICBk
b3VibGUgc2NhbGVfc25yID0gKF9hZGNjbG9ja19mcmVxIDwgODBlNikgPyAxLjAgOiAxLjU4NDg5
MzE5MjsKICAgIGRvdWJsZSBtYXhzbnIgICAgPSA2NDAgLyAxNjA7CgogICAgLyogQ2FsY3VsYXRl
IHRoZSB2YWx1ZXMgZm9yIGFsbCA0MCBzZXR0aW5ncyByZWdpc3RlcnMuCiAgICAgKgogICAgICog
RE8gTk9UIFRPVUNIIFRISVMgVU5MRVNTIFlPVSBLTk9XIEVYQUNUTFkgV0hBVCBZT1UgQVJFIERP
SU5HLiBrdGh4LiovCiAgICB1aW50OF90IGRhdGFbNDBdOwogICAgZGF0YVswXSAgICAgICAgPSAw
OwogICAgZGF0YVsxXSAgICAgICAgPSAwOwogICAgZGF0YVsyXSAgICAgICAgPSAwOwogICAgZGF0
YVszXSAgICAgICAgPSAweDI0OwogICAgZGF0YVs0XSAgICAgICAgPSAweDI0OwogICAgZGF0YVs1
XSAgICAgICAgPSAwOwogICAgZGF0YVs2XSAgICAgICAgPSAwOwogICAgZGF0YVs3XSAgICAgICAg
PSBzdGQ6Om1pbjx1aW50OF90PigxMjQsCiAgICAgICAgdWludDhfdCgKICAgICAgICAgICAgc3Rk
OjpmbG9vcigtMC41CiAgICAgICAgICAgICAgICAgICAgICAgKyAoODAuMCAqIHNjYWxlX3NuciAq
IHNjYWxlX3JlcwogICAgICAgICAgICAgICAgICAgICAgICAgICAgICogc3RkOjptaW48ZG91Ymxl
PigxLjAsIHNxcnQobWF4c25yICogZnNhZGMgLyA2NDAuMCkpKSkpKTsKICAgIGRvdWJsZSBkYXRh
MDA3ID0gZGF0YVs3XTsKICAgIGRhdGFbOF0gICAgICAgID0gc3RkOjptaW48dWludDhfdD4oMjU1
LAogICAgICAgIHVpbnQ4X3Qoc3RkOjpmbG9vcigwLjUKICAgICAgICAgICAgICAgICAgICAgICAg
ICAgKyAoKDIwLjAgKiAoNjQwLjAgLyBmc2FkYykgKiAoKGRhdGEwMDcgLyA4MC4wKSkKICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgLyAoc2NhbGVfcmVzICogc2NhbGVfY2FwKSkpKSkp
OwogICAgZGF0YVsxMF0gICAgICAgPSBzdGQ6Om1pbjx1aW50OF90PigxMjcsCiAgICAgICAgdWlu
dDhfdChzdGQ6OmZsb29yKAogICAgICAgICAgICAtMC41CiAgICAgICAgICAgICsgKDc3LjAgKiBz
Y2FsZV9yZXMgKiBzdGQ6Om1pbjxkb3VibGU+KDEuMCwgc3FydChtYXhzbnIgKiBmc2FkYyAvIDY0
MC4wKSkpKSkpOwogICAgZG91YmxlIGRhdGEwMTAgPSBkYXRhWzEwXTsKICAgIGRhdGFbOV0gICAg
ICAgID0gc3RkOjptaW48dWludDhfdD4oMTI3LCB1aW50OF90KHN0ZDo6Zmxvb3IoMC44ICogZGF0
YTAxMCkpKTsKICAgIGRhdGFbMTFdICAgICAgID0gc3RkOjptaW48dWludDhfdD4oMjU1LAogICAg
ICAgIHVpbnQ4X3Qoc3RkOjpmbG9vcigKICAgICAgICAgICAgMC41CiAgICAgICAgICAgICsgKDIw
LjAgKiAoNjQwLjAgLyBmc2FkYykgKiAoKGRhdGEwMTAgLyA3Ny4wKSAvIChzY2FsZV9yZXMgKiBz
Y2FsZV9jYXApKSkpKSk7CiAgICBkYXRhWzEyXSAgICAgICA9IHN0ZDo6bWluPHVpbnQ4X3Q+KDEy
NywKICAgICAgICB1aW50OF90KHN0ZDo6Zmxvb3IoCiAgICAgICAgICAgIC0wLjUKICAgICAgICAg
ICAgKyAoODAuMCAqIHNjYWxlX3JlcyAqIHN0ZDo6bWluPGRvdWJsZT4oMS4wLCBzcXJ0KG1heHNu
ciAqIGZzYWRjIC8gNjQwLjApKSkpKSk7CiAgICBkb3VibGUgZGF0YTAxMiA9IGRhdGFbMTJdOwog
ICAgZGF0YVsxM10gICAgICAgPSBzdGQ6Om1pbjx1aW50OF90PigyNTUsCiAgICAgICAgdWludDhf
dChzdGQ6OmZsb29yKAogICAgICAgICAgICAtMS41CiAgICAgICAgICAgICsgKDIwLjAgKiAoNjQw
LjAgLyBmc2FkYykgKiAoKGRhdGEwMTIgLyA4MC4wKSAvIChzY2FsZV9yZXMgKiBzY2FsZV9jYXAp
KSkpKSk7CiAgICBkYXRhWzE0XSAgICAgICA9IDIxICogdWludDhfdChzdGQ6OmZsb29yKDAuMSAq
IDY0MC4wIC8gZnNhZGMpKTsKICAgIGRhdGFbMTVdICAgICAgID0gc3RkOjptaW48dWludDhfdD4o
MTI3LCB1aW50OF90KDEuMDI1ICogZGF0YTAwNykpOwogICAgZG91YmxlIGRhdGEwMTUgPSBkYXRh
WzE1XTsKICAgIGRhdGFbMTZdICAgICAgID0gc3RkOjptaW48dWludDhfdD4oMTI3LAogICAgICAg
IHVpbnQ4X3Qoc3RkOjpmbG9vcigKICAgICAgICAgICAgKGRhdGEwMTUKICAgICAgICAgICAgICAg
ICogKDAuOTggKyAoMC4wMiAqIHN0ZDo6bWF4PGRvdWJsZT4oMS4wLCAoNjQwLjAgLyBmc2FkYykg
LyBtYXhzbnIpKSkpKSkpOwogICAgZGF0YVsxN10gICAgICAgPSBkYXRhWzE1XTsKICAgIGRhdGFb
MThdICAgICAgID0gc3RkOjptaW48dWludDhfdD4oMTI3LCB1aW50OF90KDAuOTc1ICogKGRhdGEw
MTApKSk7CiAgICBkb3VibGUgZGF0YTAxOCA9IGRhdGFbMThdOwogICAgZGF0YVsxOV0gICAgICAg
PSBzdGQ6Om1pbjx1aW50OF90PigxMjcsCiAgICAgICAgdWludDhfdChzdGQ6OmZsb29yKAogICAg
ICAgICAgICAoZGF0YTAxOAogICAgICAgICAgICAgICAgKiAoMC45OCArICgwLjAyICogc3RkOjpt
YXg8ZG91YmxlPigxLjAsICg2NDAuMCAvIGZzYWRjKSAvIG1heHNucikpKSkpKSk7CiAgICBkYXRh
WzIwXSAgICAgICA9IGRhdGFbMThdOwogICAgZGF0YVsyMV0gICAgICAgPSBzdGQ6Om1pbjx1aW50
OF90PigxMjcsIHVpbnQ4X3QoMC45NzUgKiBkYXRhMDEyKSk7CiAgICBkb3VibGUgZGF0YTAyMSA9
IGRhdGFbMjFdOwogICAgZGF0YVsyMl0gICAgICAgPSBzdGQ6Om1pbjx1aW50OF90PigxMjcsCiAg
ICAgICAgdWludDhfdChzdGQ6OmZsb29yKAogICAgICAgICAgICAoZGF0YTAyMQogICAgICAgICAg
ICAgICAgKiAoMC45OCArICgwLjAyICogc3RkOjptYXg8ZG91YmxlPigxLjAsICg2NDAuMCAvIGZz
YWRjKSAvIG1heHNucikpKSkpKSk7CiAgICBkYXRhWzIzXSAgICAgICA9IGRhdGFbMjFdOwogICAg
ZGF0YVsyNF0gICAgICAgPSAweDJlOwogICAgZGF0YVsyNV0gPQogICAgICAgIHVpbnQ4X3Qoc3Rk
OjpmbG9vcigxMjguMCArIHN0ZDo6bWluPGRvdWJsZT4oNjMuMCwgNjMuMCAqIChmc2FkYyAvIDY0
MC4wKSkpKTsKICAgIGRhdGFbMjZdID0gdWludDhfdChzdGQ6OmZsb29yKHN0ZDo6bWluPGRvdWJs
ZT4oCiAgICAgICAgNjMuMCwgNjMuMCAqIChmc2FkYyAvIDY0MC4wKSAqICgwLjkyICsgKDAuMDgg
KiAoNjQwLjAgLyBmc2FkYykpKSkpKTsKICAgIGRhdGFbMjddID0gdWludDhfdChzdGQ6OmZsb29y
KHN0ZDo6bWluPGRvdWJsZT4oNjMuMCwgMzIuMCAqIHNxcnQoZnNhZGMgLyA2NDAuMCkpKSk7CiAg
ICBkYXRhWzI4XSA9CiAgICAgICAgdWludDhfdChzdGQ6OmZsb29yKDEyOC4wICsgc3RkOjptaW48
ZG91YmxlPig2My4wLCA2My4wICogKGZzYWRjIC8gNjQwLjApKSkpOwogICAgZGF0YVsyOV0gPSB1
aW50OF90KHN0ZDo6Zmxvb3Ioc3RkOjptaW48ZG91YmxlPigKICAgICAgICA2My4wLCA2My4wICog
KGZzYWRjIC8gNjQwLjApICogKDAuOTIgKyAoMC4wOCAqICg2NDAuMCAvIGZzYWRjKSkpKSkpOwog
ICAgZGF0YVszMF0gPSB1aW50OF90KHN0ZDo6Zmxvb3Ioc3RkOjptaW48ZG91YmxlPig2My4wLCAz
Mi4wICogc3FydChmc2FkYyAvIDY0MC4wKSkpKTsKICAgIGRhdGFbMzFdID0KICAgICAgICB1aW50
OF90KHN0ZDo6Zmxvb3IoMTI4LjAgKyBzdGQ6Om1pbjxkb3VibGU+KDYzLjAsIDYzLjAgKiAoZnNh
ZGMgLyA2NDAuMCkpKSk7CiAgICBkYXRhWzMyXSA9IHVpbnQ4X3Qoc3RkOjpmbG9vcihzdGQ6Om1p
bjxkb3VibGU+KAogICAgICAgIDYzLjAsIDYzLjAgKiAoZnNhZGMgLyA2NDAuMCkgKiAoMC45MiAr
ICgwLjA4ICogKDY0MC4wIC8gZnNhZGMpKSkpKSk7CiAgICBkYXRhWzMzXSA9IHVpbnQ4X3Qoc3Rk
OjpmbG9vcihzdGQ6Om1pbjxkb3VibGU+KDYzLjAsIDYzLjAgKiBzcXJ0KGZzYWRjIC8gNjQwLjAp
KSkpOwogICAgZGF0YVszNF0gPSBzdGQ6Om1pbjx1aW50OF90PigxMjcsIHVpbnQ4X3Qoc3RkOjpm
bG9vcig2NC4wICogc3FydChmc2FkYyAvIDY0MC4wKSkpKTsKICAgIGRhdGFbMzVdID0gMHg0MDsK
ICAgIGRhdGFbMzZdID0gMHg0MDsKICAgIGRhdGFbMzddID0gMHgyYzsKICAgIGRhdGFbMzhdID0g
MHgwMDsKICAgIGRhdGFbMzldID0gMHgwMDsKCiAgICAvKiBQcm9ncmFtIHRoZSByZWdpc3RlcnMh
ICovCiAgICBmb3IgKHNpemVfdCBpID0gMDsgaSA8IDQwOyBpKyspIHsKICAgICAgICBfaW9faWZh
Y2UtPnBva2U4KDB4MjAwICsgaSwgZGF0YVtpXSk7CiAgICB9Cn0KCi8qIENhbGlicmF0ZSB0aGUg
YmFzZWJhbmQgREMgb2Zmc2V0LgogKiBEaXNhYmxlcyB0cmFja2luZwogKi8Kdm9pZCBhZDkzNjFf
ZGV2aWNlX3Q6Ol9jYWxpYnJhdGVfYmFzZWJhbmRfZGNfb2Zmc2V0KCkKewogICAgX2lvX2lmYWNl
LT5wb2tlOCgweDE4YiwgMHg4Myk7IC8vIFJlc2V0IFJGIERDIHRyYWNraW5nIGZsYWcKCiAgICBf
aW9faWZhY2UtPnBva2U4KDB4MTkzLCAweDNmKTsgLy8gQ2FsaWJyYXRpb24gc2V0dGluZ3MKICAg
IF9pb19pZmFjZS0+cG9rZTgoMHgxOTAsIDB4MGYpOyAvLyBTZXQgdHJhY2tpbmcgY29lZmZpY2ll
bnQKICAgIC8vIHdyaXRlX2FkOTM2MV9yZWcoZGV2aWNlLCAweDE5MCwgLyoweDBmKi8vKjB4REYq
LzB4ODAqMSB8IDB4NDAqMSB8ICgxNis4LyorNCovKSk7IC8vCiAgICAvLyBTZXQgdHJhY2tpbmcg
Y29lZmZpY2llbnQ6IGRvbid0ICo0IGNvdW50ZXIsIGRvIGRlY2ltIC80LCBpbmNyZWFzZWQgZ2Fp
biBzaGlmdAogICAgX2lvX2lmYWNlLT5wb2tlOCgweDE5NCwgMHgwMSk7IC8vIE1vcmUgY2FsaWJy
YXRpb24gc2V0dGluZ3MKCiAgICAvKiBTdGFydCB0aGF0IGNhbGlicmF0aW9uLCBiYWJ5LiAqLwog
ICAgc2l6ZV90IGNvdW50ID0gMDsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMTYsIDB4MDEpOwog
ICAgd2hpbGUgKF9pb19pZmFjZS0+cGVlazgoMHgwMTYpICYgMHgwMSkgewogICAgICAgIGlmIChj
b3VudCA+IDEwMCkgewogICAgICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAg
ICAgICAgICAgICAiW2FkOTM2MV9kZXZpY2VfdF0gQmFzZWJhbmQgREMgT2Zmc2V0IENhbGlicmF0
aW9uIEZhaWx1cmUiKTsKICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgfQogICAgICAgIGNvdW50
Kys7CiAgICAgICAgc3RkOjp0aGlzX3RocmVhZDo6c2xlZXBfZm9yKHN0ZDo6Y2hyb25vOjptaWxs
aXNlY29uZHMoNSkpOwogICAgfQp9CgovKiBDYWxpYnJhdGUgdGhlIFJGIERDIG9mZnNldC4KICog
RGlzYWJsZXMgdHJhY2tpbmcKICovCnZvaWQgYWQ5MzYxX2RldmljZV90OjpfY2FsaWJyYXRlX3Jm
X2RjX29mZnNldCgpCnsKICAgIC8qIFNvbWUgc2V0dGluZ3MgYXJlIGZyZXF1ZW5jeS1kZXBlbmRl
bnQuICovCiAgICBpZiAoX3J4X2ZyZXEgPCA0ZTkpIHsKICAgICAgICBfaW9faWZhY2UtPnBva2U4
KDB4MTg2LCAweDMyKTsgLy8gUkYgREMgT2Zmc2V0IGNvdW50CiAgICAgICAgX2lvX2lmYWNlLT5w
b2tlOCgweDE4NywgMHgyNCk7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDE4OCwgMHgwNSk7
CiAgICB9IGVsc2UgewogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxODYsIDB4MjgpOyAvLyBS
RiBEQyBPZmZzZXQgY291bnQKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTg3LCAweDM0KTsK
ICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTg4LCAweDA2KTsKICAgIH0KCiAgICBfaW9faWZh
Y2UtPnBva2U4KDB4MTg1LCAweDIwKTsgLy8gUkYgREMgT2Zmc2V0IHdhaXQgY291bnQKICAgIF9p
b19pZmFjZS0+cG9rZTgoMHgxOGIsIDB4ODMpOyAvLyBEaXNhYmxlIHRyYWNraW5nCiAgICBfaW9f
aWZhY2UtPnBva2U4KDB4MTg5LCAweDMwKTsKCiAgICAvKiBSdW4gdGhlIGNhbGlicmF0aW9uISAq
LwogICAgc2l6ZV90IGNvdW50ID0gMDsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMTYsIDB4MDIp
OwogICAgd2hpbGUgKF9pb19pZmFjZS0+cGVlazgoMHgwMTYpICYgMHgwMikgewogICAgICAgIGlm
IChjb3VudCA+IDIwMCkgewogICAgICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAg
ICAgICAgICAgICAgICAiW2FkOTM2MV9kZXZpY2VfdF0gUkYgREMgT2Zmc2V0IENhbGlicmF0aW9u
IEZhaWx1cmUiKTsKICAgICAgICAgICAgYnJlYWs7CiAgICAgICAgfQogICAgICAgIGNvdW50Kys7
CiAgICAgICAgc3RkOjp0aGlzX3RocmVhZDo6c2xlZXBfZm9yKHN0ZDo6Y2hyb25vOjptaWxsaXNl
Y29uZHMoNTApKTsKICAgIH0KCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MThiLCAweDhkKTsgLy8g
RW5hYmxlIFJGIERDIHRyYWNraW5nCn0KCnZvaWQgYWQ5MzYxX2RldmljZV90OjpfY29uZmlndXJl
X2JiX2RjX3RyYWNraW5nKCkKewogICAgaWYgKF91c2VfZGNfb2Zmc2V0X3RyYWNraW5nKQogICAg
ICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxOGIsIDB4YWQpOyAvLyBFbmFibGUgQkIgdHJhY2tpbmcK
ICAgIGVsc2UKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MThiLCAweDhkKTsgLy8gRGlzYWJs
ZSBCQiB0cmFja2luZwp9Cgp2b2lkIGFkOTM2MV9kZXZpY2VfdDo6X2NvbmZpZ3VyZV9yeF9pcV90
cmFja2luZygpCnsKICAgIGlmIChfdXNlX2lxX2JhbGFuY2VfdHJhY2tpbmcpCiAgICAgICAgX2lv
X2lmYWNlLT5wb2tlOCgweDE2OSwgMHhjZik7IC8vIEVuYWJsZSBSeCBJUSB0cmFja2luZwogICAg
ZWxzZQogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxNjksIDB4YzApOyAvLyBEaXNhYmxlIFJ4
IElRIHRyYWNraW5nCn0KCi8qIFNpbmdsZSBzaG90IFJ4IHF1YWRyYXR1cmUgY2FsaWJyYXRpb24K
ICoKICogUHJvY2VkdXJlIGRvY3VtZW50ZWQgaW4gIkFEOTM2MSBDYWxpYnJhdGlvbiBHdWlkZSIu
IFByaW9yIHRvIGNhbGlicmF0aW9uLAogKiBzdGF0ZSBzaG91bGQgYmUgc2V0IHRvIEFMRVJULCBG
REQsIGFuZCBEdWFsIFN5bnRoIE1vZGUuIFJ4IHF1YWRyYXR1cmUKICogdHJhY2tpbmcgd2lsbCBi
ZSBkaXNhYmxlZCwgc28gcnVuIGJlZm9yZSBvciBpbnN0ZWFkIG9mIGVuYWJsaW5nIFJ4CiAqIHF1
YWRyYXR1cmUgdHJhY2tpbmcuCiAqLwp2b2lkIGFkOTM2MV9kZXZpY2VfdDo6X2NhbGlicmF0ZV9y
eF9xdWFkcmF0dXJlKCkKewogICAgLyogQ29uZmlndXJlIFJYIFF1YWRyYXR1cmUgY2FsaWJyYXRp
b24gc2V0dGluZ3MuICovCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MTY4LCAweDAzKTsgLy8gU2V0
IHRvbmUgbGV2ZWwgZm9yIGNhbAogICAgX2lvX2lmYWNlLT5wb2tlOCgweDE2ZSwgMHgyNSk7IC8v
IFJYIEdhaW4gaW5kZXggdG8gdXNlIGZvciBjYWwKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxNmEs
IDB4NzUpOyAvLyBTZXQgS2V4cCBwaGFzZQogICAgX2lvX2lmYWNlLT5wb2tlOCgweDE2YiwgMHg5
NSk7IC8vIFNldCBLZXhwIGFtcGxpdHVkZQogICAgX2lvX2lmYWNlLT5wb2tlOCgweDA1NywgMHgz
Myk7IC8vIFBvd2VyIGRvd24gVHggbWl4ZXIKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxNjksIDB4
YzApOyAvLyBEaXNhYmxlIHRyYWNraW5nIGFuZCBmcmVlIHJ1biBtb2RlCgogICAgLyogUGxhY2Ug
VHggTE8gd2l0aGluIHBhc3NiYW5kIG9mIFJ4IHNwZWN0cnVtICovCiAgICBkb3VibGUgY3VycmVu
dF90eF9mcmVxID0gX3R4X2ZyZXE7CiAgICBfdHVuZV9oZWxwZXIoVFgsIF9yeF9mcmVxICsgX3J4
X2JiX2xwX2J3IC8gMi4wKTsKCiAgICBzaXplX3QgY291bnQgPSAwOwogICAgX2lvX2lmYWNlLT5w
b2tlOCgweDAxNiwgMHgyMCk7CiAgICB3aGlsZSAoX2lvX2lmYWNlLT5wZWVrOCgweDAxNikgJiAw
eDIwKSB7CiAgICAgICAgaWYgKGNvdW50ID4gMTAwMCkgewogICAgICAgICAgICB0aHJvdyB1aGQ6
OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAgICAgICAgICAiW2FkOTM2MV9kZXZpY2VfdF0gUnggUXVh
ZHJhdHVyZSBDYWxpYnJhdGlvbiBGYWlsdXJlIik7CiAgICAgICAgICAgIGJyZWFrOwogICAgICAg
IH0KICAgICAgICBjb3VudCsrOwogICAgICAgIHN0ZDo6dGhpc190aHJlYWQ6OnNsZWVwX2Zvcihz
dGQ6OmNocm9ubzo6bWlsbGlzZWNvbmRzKDUpKTsKICAgIH0KCiAgICBfaW9faWZhY2UtPnBva2U4
KDB4MDU3LCAweDMwKTsgLy8gUmUtZW5hYmxlIFR4IG1peGVycwoKICAgIF90dW5lX2hlbHBlcihU
WCwgY3VycmVudF90eF9mcmVxKTsKfQoKLyogVFggcXVhZHJhdHVyZSBjYWxpYnJhdGlvbiByb3V0
aW5lLgogKgogKiBUaGUgVFggcXVhZHJhdHVyZSBuZWVkcyB0byBiZSBkb25lIHR3aWNlLCBvbmNl
IGZvciBlYWNoIFRYIGNoYWluLCB3aXRoCiAqIG9ubHkgb25lIHJlZ2lzdGVyIGNoYW5nZSBpbiBi
ZXR3ZWVuLiBUaHVzLCB0aGlzIGZ1bmN0aW9uIGVuYWN0cyB0aGUKICogY2FsaWJyYXRpb25zLCBh
bmQgaXQgaXMgY2FsbGVkIGZyb20gY2FsaWJyYXRlX3R4X3F1YWRyYXR1cmUuICovCnZvaWQgYWQ5
MzYxX2RldmljZV90OjpfdHhfcXVhZHJhdHVyZV9jYWxfcm91dGluZSgpCnsKICAgIC8qIFRoaXMg
aXMgYSB3ZWlyZCBwcm9jZXNzLCBidXQgaGVyZSBpcyBob3cgaXQgd29ya3M6CiAgICAgKiAxKSBS
ZWFkIHRoZSBjYWxpYnJhdGVkIE5DTyBmcmVxdWVuY3kgYml0cyBvdXQgb2YgMEEzLgogICAgICog
MikgV3JpdGUgdGhlIHR3byBiaXRzIHRvIHRoZSBSWCBOQ08gZnJlcSBwYXJ0IG9mIDBBMC4KICAg
ICAqIDMpIFJlLXJlYWQgMEEzIHRvIGdldCBiaXRzIFs1OjBdIGJlY2F1c2UgbWF5YmUgdGhleSBj
aGFuZ2VkPwogICAgICogNCkgVXBkYXRlIG9ubHkgdGhlIFRYIE5DTyBmcmVxIGJpdHMgaW4gMEEz
LgogICAgICogNSkgUHJvZml0IChJIGhvcGUpLiAqLwogICAgdWludDhfdCByZWcwYTMgICA9IF9p
b19pZmFjZS0+cGVlazgoMHgwYTMpOwogICAgdWludDhfdCBuY29fZnJlcSA9IChyZWcwYTMgJiAw
eEMwKTsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwYTAsIDB4MTUgfCAobmNvX2ZyZXEgPj4gMSkp
OwogICAgcmVnMGEzID0gX2lvX2lmYWNlLT5wZWVrOCgweDBhMyk7CiAgICBfaW9faWZhY2UtPnBv
a2U4KDB4MGEzLCAocmVnMGEzICYgMHgzRikgfCBuY29fZnJlcSk7CgogICAgLyogSXQgaXMgcG9z
c2libGUgdG8gcmVhY2ggYSBjb25maWd1cmF0aW9uIHRoYXQgd29uJ3Qgb3BlcmF0ZSBjb3JyZWN0
bHksCiAgICAgKiB3aGVyZSB0aGUgdHdvIHRlc3QgdG9uZXMgdXNlZCBmb3IgcXVhZHJhdHVyZSBj
YWxpYnJhdGlvbiBhcmUgb3V0c2lkZQogICAgICogb2YgdGhlIFJYIEJCRiwgYW5kIHRoZXJlZm9y
ZSBkb24ndCBtYWtlIGl0IHRvIHRoZSBBREMuIFdlIHdpbGwgY2hlY2sKICAgICAqIGZvciB0aGF0
IHNjZW5hcmlvIGhlcmUuICovCiAgICBkb3VibGUgbWF4X2NhbF9mcmVxID0KICAgICAgICAoKChf
YmFzZWJhbmRfYncgKiBfdGZpcl9mYWN0b3IpICogKChuY29fZnJlcSA+PiA2KSArIDEpKSAvIDMy
KSAqIDI7CiAgICBkb3VibGUgYmJidyA9IF9iYXNlYmFuZF9idyAvIDIuMDsgLy8gYmJidyByZXBy
ZXNlbnRzIHRoZSBvbmUtc2lkZWQgQlcKICAgIGlmIChiYmJ3ID4gMjhlNikgewogICAgICAgIGJi
YncgPSAyOGU2OwogICAgfSBlbHNlIGlmIChiYmJ3IDwgMC4yMGU2KSB7CiAgICAgICAgYmJidyA9
IDAuMjBlNjsKICAgIH0KICAgIGlmIChtYXhfY2FsX2ZyZXEgPiBiYmJ3KQogICAgICAgIHRocm93
IHVoZDo6cnVudGltZV9lcnJvcigiW2FkOTM2MV9kZXZpY2VfdF0gbWF4X2NhbF9mcmVxID4gYmJi
dyIpOwoKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwYTEsIDB4N0IpOyAvLyBTZXQgdHJhY2tpbmcg
Y29lZmZpY2llbnQKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwYTksIDB4ZmYpOyAvLyBDYWwgY291
bnQKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwYTIsIDB4N2YpOyAvLyBDYWwgS2V4cAogICAgX2lv
X2lmYWNlLT5wb2tlOCgweDBhNSwgMHgwMSk7IC8vIENhbCBtYWduaXR1ZGUgdGhyZXNob2xkIFZW
VlYKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwYTYsIDB4MDEpOwoKICAgIC8qIFRoZSBnYWluIHRh
YmxlIGluZGV4IHVzZWQgZm9yIGNhbGlicmF0aW9uIG11c3QgYmUgYWRqdXN0ZWQgZm9yIHRoZQog
ICAgICogbWlkLXRhYmxlIHRvIGdldCBhIFRJQSBpbmRleCA9IDEgYW5kIExQRiBpbmRleCA9IDAu
ICovCiAgICBpZiAoX3J4X2ZyZXEgPCAxMzAwZTYpIHsKICAgICAgICBfaW9faWZhY2UtPnBva2U4
KDB4MGFhLCAweDIyKTsgLy8gQ2FsIGdhaW4gdGFibGUgaW5kZXgKICAgIH0gZWxzZSB7CiAgICAg
ICAgX2lvX2lmYWNlLT5wb2tlOCgweDBhYSwgMHgyNSk7IC8vIENhbCBnYWluIHRhYmxlIGluZGV4
CiAgICB9CgogICAgX2lvX2lmYWNlLT5wb2tlOCgweDBhNCwgMHhmMCk7IC8vIENhbCBzZXR0aW5n
IGNvbnV0CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MGFlLCAweDAwKTsgLy8gQ2FsIExQRiBnYWlu
IGluZGV4IChzcGxpdCBtb2RlKQoKICAgIC8qIE5vdywgY2FsaWJyYXRlIHRoZSBUWCBxdWFkcmF0
dXJlISAqLwogICAgc2l6ZV90IGNvdW50ID0gMDsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMTYs
IDB4MTApOwogICAgd2hpbGUgKF9pb19pZmFjZS0+cGVlazgoMHgwMTYpICYgMHgxMCkgewogICAg
ICAgIGlmIChjb3VudCA+IDEwMCkgewogICAgICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJy
b3IoCiAgICAgICAgICAgICAgICAiW2FkOTM2MV9kZXZpY2VfdF0gVFggUXVhZHJhdHVyZSBDYWxp
YnJhdGlvbiBGYWlsdXJlIik7CiAgICAgICAgICAgIGJyZWFrOwogICAgICAgIH0KICAgICAgICBj
b3VudCsrOwogICAgICAgIHN0ZDo6dGhpc190aHJlYWQ6OnNsZWVwX2ZvcihzdGQ6OmNocm9ubzo6
bWlsbGlzZWNvbmRzKDEwKSk7CiAgICB9Cn0KCi8qIFJ1biB0aGUgVFggcXVhZHJhdHVyZSBjYWxp
YnJhdGlvbi4KICovCnZvaWQgYWQ5MzYxX2RldmljZV90OjpfY2FsaWJyYXRlX3R4X3F1YWRyYXR1
cmUoKQp7CiAgICAvKiBNYWtlIHN1cmUgd2UgYXJlLCBpbiBmYWN0LCBpbiB0aGUgQUxFUlQgc3Rh
dGUuIElmIG5vdCwgc29tZXRoaW5nIGlzCiAgICAgKiB0ZXJyaWJseSB3cm9uZyBpbiB0aGUgZHJp
dmVyIGV4ZWN1dGlvbiBmbG93LiAqLwogICAgaWYgKChfaW9faWZhY2UtPnBlZWs4KDB4MDE3KSAm
IDB4MEYpICE9IDUpIHsKICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAg
ICAgICJbYWQ5MzYxX2RldmljZV90XSBUWCBRdWFkIENhbCBzdGFydGVkLCBidXQgbm90IGluIEFM
RVJUIik7CiAgICB9CgogICAgLyogVHVybiBvZmYgZnJlZS1ydW5uaW5nIGFuZCBjb250aW51b3Vz
IGNhbGlicmF0aW9ucy4gTm90ZSB0aGF0IHRoaXMKICAgICAqIHdpbGwgZ2V0IHR1cm5lZCBiYWNr
IG9uIGF0IHRoZSBlbmQgb2YgdGhlIFJYIGNhbGlicmF0aW9uIHJvdXRpbmUuICovCiAgICBfaW9f
aWZhY2UtPnBva2U4KDB4MTY5LCAweGMwKTsKCiAgICAvKiBUaGlzIGNhbGlicmF0aW9uIG11c3Qg
YmUgZG9uZSBpbiBhIGNlcnRhaW4gb3JkZXIsIGFuZCBmb3IgYm90aCBUWF9BCiAgICAgKiBhbmQg
VFhfQiwgc2VwYXJhdGVseS4gU3RvcmUgdGhlIG9yaWdpbmFsIHNldHRpbmcgc28gdGhhdCB3ZSBj
YW4KICAgICAqIHJlc3RvcmUgaXQgbGF0ZXIuICovCiAgICB1aW50OF90IG9yaWdfcmVnX2lucHV0
c2VsID0gX3JlZ3MuaW5wdXRzZWw7CgogICAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgICAgKiBUWDEvMi1B
IENhbGlicmF0aW9uCiAgICAgKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8KICAgIF9yZWdzLmlucHV0c2VsID0gX3Jl
Z3MuaW5wdXRzZWwgJiAweEJGOwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAwNCwgX3JlZ3MuaW5w
dXRzZWwpOwoKICAgIF90eF9xdWFkcmF0dXJlX2NhbF9yb3V0aW5lKCk7CgogICAgLyoqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqCiAgICAgKiBUWDEvMi1CIENhbGlicmF0aW9uCiAgICAgKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKi8KICAg
IF9yZWdzLmlucHV0c2VsID0gX3JlZ3MuaW5wdXRzZWwgfCAweDQwOwogICAgX2lvX2lmYWNlLT5w
b2tlOCgweDAwNCwgX3JlZ3MuaW5wdXRzZWwpOwoKICAgIF90eF9xdWFkcmF0dXJlX2NhbF9yb3V0
aW5lKCk7CgogICAgLyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqCiAgICAgKiBmaW4KICAgICAqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
LwogICAgX3JlZ3MuaW5wdXRzZWwgPSBvcmlnX3JlZ19pbnB1dHNlbDsKICAgIF9pb19pZmFjZS0+
cG9rZTgoMHgwMDQsIG9yaWdfcmVnX2lucHV0c2VsKTsKfQoKCi8qKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKgogKiBP
dGhlciBNaXNjIFNldHVwIEZ1bmN0aW9ucwogKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKiovCgovKiBQcm9ncmFtIHRo
ZSBtaXhlciBnYWluIHRhYmxlLgogKgogKiBOb3RlIHRoYXQgdGhpcyB0YWJsZSBpcyBmaXhlZCBm
b3IgYWxsIGZyZXF1ZW5jeSBzZXR0aW5ncy4gKi8Kdm9pZCBhZDkzNjFfZGV2aWNlX3Q6Ol9wcm9n
cmFtX21peGVyX2dtX3N1YnRhYmxlKCkKewogICAgLy8gY2xhbmctZm9ybWF0IG9mZgogICAgdWlu
dDhfdCBnYWluW10gPSB7IDB4NzgsIDB4NzQsIDB4NzAsIDB4NkMsIDB4NjgsIDB4NjQsIDB4NjAs
IDB4NUMsIDB4NTgsCiAgICAgICAgICAgIDB4NTQsIDB4NTAsIDB4NEMsIDB4NDgsIDB4MzAsIDB4
MTgsIDB4MDAgfTsKICAgIHVpbnQ4X3QgZ21bXSA9IHsgMHgwMCwgMHgwRCwgMHgxNSwgMHgxQiwg
MHgyMSwgMHgyNSwgMHgyOSwgMHgyQywgMHgyRiwgMHgzMSwKICAgICAgICAgICAgMHgzMywgMHgz
NCwgMHgzNSwgMHgzQSwgMHgzRCwgMHgzRSB9OwogICAgLy8gY2xhbmctZm9ybWF0IG9uCgogICAg
LyogU3RhcnQgdGhlIGNsb2NrLiAqLwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDEzZiwgMHgwMik7
CgogICAgLyogUHJvZ3JhbSB0aGUgR00gU3ViLXRhYmxlLiAqLwogICAgaW50IGk7CiAgICBmb3Ig
KGkgPSAxNTsgaSA+PSAwOyBpLS0pIHsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTM4LCBp
KTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTM5LCBnYWluWygxNSAtIGkpXSk7CiAgICAg
ICAgX2lvX2lmYWNlLT5wb2tlOCgweDEzQSwgMHgwMCk7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tl
OCgweDEzQiwgZ21bKDE1IC0gaSldKTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTNGLCAw
eDA2KTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTNDLCAweDAwKTsKICAgICAgICBfaW9f
aWZhY2UtPnBva2U4KDB4MTNDLCAweDAwKTsKICAgIH0KCiAgICAvKiBDbGVhciB3cml0ZSBiaXQg
YW5kIHN0b3AgY2xvY2suICovCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MTNmLCAweDAyKTsKICAg
IF9pb19pZmFjZS0+cG9rZTgoMHgxM0MsIDB4MDApOwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDEz
QywgMHgwMCk7CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MTNmLCAweDAwKTsKfQoKLyogUHJvZ3Jh
bSB0aGUgZ2FpbiB0YWJsZS4KICoKICogVGhlcmUgYXJlIHRocmVlIGRpZmZlcmVudCBnYWluIHRh
YmxlcyBmb3IgZGlmZmVyZW50IGZyZXF1ZW5jeSByYW5nZXMhICovCnZvaWQgYWQ5MzYxX2Rldmlj
ZV90OjpfcHJvZ3JhbV9nYWluX3RhYmxlKCkKewogICAgLyogRmlndXJlIG91dCB3aGljaCBnYWlu
IHRhYmxlIHdlIHNob3VsZCBiZSB1c2luZyBmb3Igb3VyIGN1cnJlbnQKICAgICAqIGZyZXF1ZW5j
eSBiYW5kLiAqLwogICAgdWludDhfdCgqZ2Fpbl90YWJsZSlbM10gPSBOVUxMOwogICAgdWludDhf
dCBuZXdfZ2Fpbl90YWJsZTsKICAgIGlmIChfcnhfZnJlcSA8IDEzMDBlNikgewogICAgICAgIGdh
aW5fdGFibGUgICAgID0gZ2Fpbl90YWJsZV9zdWJfMTMwMG1oejsKICAgICAgICBuZXdfZ2Fpbl90
YWJsZSA9IDE7CiAgICB9IGVsc2UgaWYgKF9yeF9mcmVxIDwgNGU5KSB7CiAgICAgICAgZ2Fpbl90
YWJsZSAgICAgPSBnYWluX3RhYmxlXzEzMDBtaHpfdG9fNDAwMG1oejsKICAgICAgICBuZXdfZ2Fp
bl90YWJsZSA9IDI7CiAgICB9IGVsc2UgaWYgKF9yeF9mcmVxIDw9IDZlOSkgewogICAgICAgIGdh
aW5fdGFibGUgICAgID0gZ2Fpbl90YWJsZV80MDAwbWh6X3RvXzYwMDBtaHo7CiAgICAgICAgbmV3
X2dhaW5fdGFibGUgPSAzOwogICAgfSBlbHNlIHsKICAgICAgICBuZXdfZ2Fpbl90YWJsZSA9IDE7
CiAgICAgICAgdGhyb3cgdWhkOjpydW50aW1lX2Vycm9yKCJbYWQ5MzYxX2RldmljZV90XSBXcm9u
ZyBfcnhfZnJlcSB2YWx1ZSIpOwogICAgfQoKICAgIC8qIE9ubHkgcmUtcHJvZ3JhbSB0aGUgZ2Fp
biB0YWJsZSBpZiB0aGVyZSBoYXMgYmVlbiBhIGJhbmQgY2hhbmdlLiAqLwogICAgaWYgKF9jdXJy
X2dhaW5fdGFibGUgPT0gbmV3X2dhaW5fdGFibGUpIHsKICAgICAgICByZXR1cm47CiAgICB9IGVs
c2UgewogICAgICAgIF9jdXJyX2dhaW5fdGFibGUgPSBuZXdfZ2Fpbl90YWJsZTsKICAgIH0KCiAg
ICAvKiBPa2F5LCB3ZSBoYXZlIHRvIHByb2dyYW0gYSBuZXcgZ2FpbiB0YWJsZS4gU3Vja3MsIGJy
YWguIFN0YXJ0IHRoZQogICAgICogZ2FpbiB0YWJsZSBjbG9jay4gKi8KICAgIF9pb19pZmFjZS0+
cG9rZTgoMHgxMzcsIDB4MUEpOwoKICAgIC8qIElUJ1MgUFJPR1JBTU1JTkcgVElNRS4gKi8KICAg
IHVpbnQ4X3QgaW5kZXggPSAwOwogICAgZm9yICg7IGluZGV4IDwgNzc7IGluZGV4KyspIHsKICAg
ICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTMwLCBpbmRleCk7CiAgICAgICAgX2lvX2lmYWNlLT5w
b2tlOCgweDEzMSwgZ2Fpbl90YWJsZVtpbmRleF1bMF0pOwogICAgICAgIF9pb19pZmFjZS0+cG9r
ZTgoMHgxMzIsIGdhaW5fdGFibGVbaW5kZXhdWzFdKTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4
KDB4MTMzLCBnYWluX3RhYmxlW2luZGV4XVsyXSk7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgw
eDEzNywgMHgxRSk7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDEzNCwgMHgwMCk7CiAgICAg
ICAgX2lvX2lmYWNlLT5wb2tlOCgweDEzNCwgMHgwMCk7CiAgICB9CgogICAgLyogRXZlcnl0aGlu
ZyBhYm92ZSB0aGUgNzd0aCBpbmRleCBpcyB6ZXJvLiAqLwogICAgZm9yICg7IGluZGV4IDwgOTE7
IGluZGV4KyspIHsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTMwLCBpbmRleCk7CiAgICAg
ICAgX2lvX2lmYWNlLT5wb2tlOCgweDEzMSwgMHgwMCk7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tl
OCgweDEzMiwgMHgwMCk7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDEzMywgMHgwMCk7CiAg
ICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDEzNywgMHgxRSk7CiAgICAgICAgX2lvX2lmYWNlLT5w
b2tlOCgweDEzNCwgMHgwMCk7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDEzNCwgMHgwMCk7
CiAgICB9CgogICAgLyogQ2xlYXIgdGhlIHdyaXRlIGJpdCBhbmQgc3RvcCB0aGUgZ2FpbiBjbG9j
ay4gKi8KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMzcsIDB4MUEpOwogICAgX2lvX2lmYWNlLT5w
b2tlOCgweDEzNCwgMHgwMCk7CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MTM0LCAweDAwKTsKICAg
IF9pb19pZmFjZS0+cG9rZTgoMHgxMzcsIDB4MDApOwp9CgovKiBTZXR1cCBnYWluIGNvbnRyb2wg
cmVnaXN0ZXJzLgogKgogKiBUaGlzIHJlYWxseSBvbmx5IG5lZWRzIHRvIGJlIGRvbmUgb25jZSwg
YXQgaW5pdGlhbGl6YXRpb24uCiAqIElmIEFHQyBpcyB1c2VkIHRoZSBtb2RlIHNlbGVjdCBiaXRz
IChSZWcgMHgwRkEpIG11c3QgYmUgd3JpdHRlbiBtYW51YWxseSAqLwp2b2lkIGFkOTM2MV9kZXZp
Y2VfdDo6X3NldHVwX2dhaW5fY29udHJvbChib29sIGFnYykKewogICAgLyogVGhlIEFHQyBtb2Rl
IGNvbmZpZ3VyYXRpb24gc2hvdWxkIGJlIGdvb2QgZm9yIGFsbCBjYXNlcy4KICAgICAqIEhvd2V2
ZXIsIG5vbiBBR0MgY29uZmlndXJhdGlvbiBzdGlsbCB1c2VkIGZvciBiYWNrd2FyZCBjb21wYXRp
YmlsaXR5LiAqLwogICAgaWYgKGFnYykgewogICAgICAgIC8qbW9kZSBzZWxlY3QgYml0cyBtdXN0
IGJlIHdyaXR0ZW4gYmVmb3JlIGhhbmQhKi8KICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MEZC
LCAweDA4KTsgLy8gVGFibGUsIERpZ2l0YWwgR2FpbiwgTWFuIEdhaW4gQ3RybAogICAgICAgIF9p
b19pZmFjZS0+cG9rZTgoMHgwRkMsIDB4MjMpOyAvLyBJbmNyIFN0ZXAgU2l6ZSwgQURDIE92ZXJy
YW5nZSBTaXplCiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDBGRCwgMHg0Qyk7IC8vIE1heCBG
dWxsL0xNVCBHYWluIFRhYmxlIEluZGV4CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDBGRSwg
MHg0NCk7IC8vIERlY3IgU3RlcCBTaXplLCBQZWFrIE92ZXJsb2FkIFRpbWUKICAgICAgICBfaW9f
aWZhY2UtPnBva2U4KDB4MTAwLCAweDZGKTsgLy8gTWF4IERpZ2l0YWwgR2FpbgogICAgICAgIF9p
b19pZmFjZS0+cG9rZTgoMHgxMDEsIDB4MDIpOyAvLyBNYXggRGlnaXRhbCBHYWluCiAgICAgICAg
X2lvX2lmYWNlLT5wb2tlOCgweDEwMywgMHgwOCk7IC8vIE1heCBEaWdpdGFsIEdhaW4KICAgICAg
ICBfaW9faWZhY2UtPnBva2U4KDB4MTA0LCAweDJGKTsgLy8gQURDIFNtYWxsIE92ZXJsb2FkIFRo
cmVzaG9sZAogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMDUsIDB4M0EpOyAvLyBBREMgTGFy
Z2UgT3ZlcmxvYWQgVGhyZXNob2xkCiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDEwNiwgMHgy
Mik7IC8vIE1heCBEaWdpdGFsIEdhaW4KICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTA3LCAw
eDJCKTsgLy8gTGFyZ2UgTE1UIE92ZXJsb2FkIFRocmVzaG9sZAogICAgICAgIF9pb19pZmFjZS0+
cG9rZTgoMHgxMDgsIDB4MzEpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMTEsIDB4MEEp
OwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMUEsIDB4MUMpOwogICAgICAgIF9pb19pZmFj
ZS0+cG9rZTgoMHgxMjAsIDB4MDQpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMjEsIDB4
NDQpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMjIsIDB4NDQpOwogICAgICAgIF9pb19p
ZmFjZS0+cG9rZTgoMHgxMjMsIDB4MTEpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMjQs
IDB4RjUpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMjUsIDB4M0IpOwogICAgICAgIF9p
b19pZmFjZS0+cG9rZTgoMHgxMjgsIDB4MDMpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgx
MjksIDB4MTYpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMkEsIDB4MjIpOwogICAgfSBl
bHNlIHsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MEZBLCAweEUwKTsgLy8gR2FpbiBDb250
cm9sIE1vZGUgU2VsZWN0CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDBGQiwgMHgwOCk7IC8v
IFRhYmxlLCBEaWdpdGFsIEdhaW4sIE1hbiBHYWluIEN0cmwKICAgICAgICBfaW9faWZhY2UtPnBv
a2U4KDB4MEZDLCAweDIzKTsgLy8gSW5jciBTdGVwIFNpemUsIEFEQyBPdmVycmFuZ2UgU2l6ZQog
ICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwRkQsIDB4NEMpOyAvLyBNYXggRnVsbC9MTVQgR2Fp
biBUYWJsZSBJbmRleAogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwRkUsIDB4NDQpOyAvLyBE
ZWNyIFN0ZXAgU2l6ZSwgUGVhayBPdmVybG9hZCBUaW1lCiAgICAgICAgX2lvX2lmYWNlLT5wb2tl
OCgweDEwMCwgMHg2Rik7IC8vIE1heCBEaWdpdGFsIEdhaW4KICAgICAgICBfaW9faWZhY2UtPnBv
a2U4KDB4MTA0LCAweDJGKTsgLy8gQURDIFNtYWxsIE92ZXJsb2FkIFRocmVzaG9sZAogICAgICAg
IF9pb19pZmFjZS0+cG9rZTgoMHgxMDUsIDB4M0EpOyAvLyBBREMgTGFyZ2UgT3ZlcmxvYWQgVGhy
ZXNob2xkCiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDEwNywgMHgzMSk7IC8vIExhcmdlIExN
VCBPdmVybG9hZCBUaHJlc2hvbGQKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTA4LCAweDM5
KTsgLy8gU21hbGwgTE1UIE92ZXJsb2FkIFRocmVzaG9sZAogICAgICAgIF9pb19pZmFjZS0+cG9r
ZTgoMHgxMDksIDB4MjMpOyAvLyBSeDEgRnVsbC9MTVQgR2FpbiBJbmRleAogICAgICAgIF9pb19p
ZmFjZS0+cG9rZTgoMHgxMEEsIDB4NTgpOyAvLyBSeDEgTFBGIEdhaW4gSW5kZXgKICAgICAgICBf
aW9faWZhY2UtPnBva2U4KDB4MTBCLCAweDAwKTsgLy8gUngxIERpZ2l0YWwgR2FpbiBJbmRleAog
ICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMEMsIDB4MjMpOyAvLyBSeDIgRnVsbC9MTVQgR2Fp
biBJbmRleAogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMEQsIDB4MTgpOyAvLyBSeDIgTFBG
IEdhaW4gSW5kZXgKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTBFLCAweDAwKTsgLy8gUngy
IERpZ2l0YWwgR2FpbiBJbmRleAogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxMTQsIDB4MzAp
OyAvLyBMb3cgUG93ZXIgVGhyZXNob2xkCiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDExQSwg
MHgyNyk7IC8vIEluaXRpYWwgTE1UIEdhaW4gTGltaXQKICAgICAgICBfaW9faWZhY2UtPnBva2U4
KDB4MDgxLCAweDAwKTsgLy8gVHggU3ltYm9sIEdhaW4gQ29udHJvbAogICAgfQp9CgovKiBTZXR1
cCB0aGUgUlggb3IgVFggc3ludGhlc2l6ZXJzLgogKgogKiBUaGlzIHNldHVwIGRlcGVuZHMgb24g
YSBmaXhlZCBsb29rLXVwIHRhYmxlLCB3aGljaCBpcyBzdG9yZWQgaW4gYW4KICogaW5jbHVkZWQg
aGVhZGVyIGZpbGUuIFRoZSB0YWJsZSBpcyBpbmRleGVkIGJhc2VkIG9uIHRoZSBwYXNzZWQgVkNP
IHJhdGUuCiAqLwp2b2lkIGFkOTM2MV9kZXZpY2VfdDo6X3NldHVwX3N5bnRoKGRpcmVjdGlvbl90
IGRpcmVjdGlvbiwgZG91YmxlIHZjb3JhdGUpCnsKICAgIC8qIFRoZSB2Y29yYXRlcyBpbiB0aGUg
dmNvX2luZGV4IGFycmF5IHJlcHJlc2VudCBsb3dlciBib3VuZGFyaWVzIGZvcgogICAgICogcmF0
ZXMuIE9uY2Ugd2UgZmluZCBhIG1hdGNoLCB3ZSB1c2UgdGhhdCBpbmRleCB0byBsb29rLXVwIHRo
ZSByZXN0IG9mCiAgICAgKiB0aGUgcmVnaXN0ZXIgdmFsdWVzIGluIHRoZSBMVVQuICovCiAgICBp
bnQgdmNvaW5kZXggPSAwOwogICAgZm9yIChzaXplX3QgaSA9IDA7IGkgPCA1MzsgaSsrKSB7CiAg
ICAgICAgdmNvaW5kZXggPSBpOwogICAgICAgIGlmICh2Y29yYXRlID4gdmNvX2luZGV4W2ldKSB7
CiAgICAgICAgICAgIGJyZWFrOwogICAgICAgIH0KICAgIH0KICAgIGlmICh2Y29pbmRleCA+IDUz
KQogICAgICAgIHRocm93IHVoZDo6cnVudGltZV9lcnJvcigiW2FkOTM2MV9kZXZpY2VfdF0gdmNv
aW5kZXggPiA1MyIpOwoKICAgIC8qIFBhcnNlIHRoZSB2YWx1ZXMgb3V0IG9mIHRoZSBMVVQgYmFz
ZWQgb24gb3VyIGNhbGN1bGF0ZWQgaW5kZXguLi4gKi8KICAgIHVpbnQ4X3QgdmNvX291dHB1dF9s
ZXZlbCA9IHN5bnRoX2NhbF9sdXRbdmNvaW5kZXhdWzBdOwogICAgdWludDhfdCB2Y29fdmFyYWN0
b3IgICAgID0gc3ludGhfY2FsX2x1dFt2Y29pbmRleF1bMV07CiAgICB1aW50OF90IHZjb19iaWFz
X3JlZiAgICAgPSBzeW50aF9jYWxfbHV0W3Zjb2luZGV4XVsyXTsKICAgIHVpbnQ4X3QgdmNvX2Jp
YXNfdGNmICAgICA9IHN5bnRoX2NhbF9sdXRbdmNvaW5kZXhdWzNdOwogICAgdWludDhfdCB2Y29f
Y2FsX29mZnNldCAgID0gc3ludGhfY2FsX2x1dFt2Y29pbmRleF1bNF07CiAgICB1aW50OF90IHZj
b192YXJhY3Rvcl9yZWYgPSBzeW50aF9jYWxfbHV0W3Zjb2luZGV4XVs1XTsKICAgIHVpbnQ4X3Qg
Y2hhcmdlX3B1bXBfY3VyciA9IHN5bnRoX2NhbF9sdXRbdmNvaW5kZXhdWzZdOwogICAgdWludDhf
dCBsb29wX2ZpbHRlcl9jMiAgID0gc3ludGhfY2FsX2x1dFt2Y29pbmRleF1bN107CiAgICB1aW50
OF90IGxvb3BfZmlsdGVyX2MxICAgPSBzeW50aF9jYWxfbHV0W3Zjb2luZGV4XVs4XTsKICAgIHVp
bnQ4X3QgbG9vcF9maWx0ZXJfcjEgICA9IHN5bnRoX2NhbF9sdXRbdmNvaW5kZXhdWzldOwogICAg
dWludDhfdCBsb29wX2ZpbHRlcl9jMyAgID0gc3ludGhfY2FsX2x1dFt2Y29pbmRleF1bMTBdOwog
ICAgdWludDhfdCBsb29wX2ZpbHRlcl9yMyAgID0gc3ludGhfY2FsX2x1dFt2Y29pbmRleF1bMTFd
OwoKICAgIC8qIC4uLiBhbm5uZCBwcm9ncmFtISAqLwogICAgaWYgKGRpcmVjdGlvbiA9PSBSWCkg
ewogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyM2EsIDB4NDAgfCB2Y29fb3V0cHV0X2xldmVs
KTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MjM5LCAweEMwIHwgdmNvX3ZhcmFjdG9yKTsK
ICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MjQyLCB2Y29fYmlhc19yZWYgfCAodmNvX2JpYXNf
dGNmIDw8IDMpKTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MjM4LCAodmNvX2NhbF9vZmZz
ZXQgPDwgMykpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyNDUsIDB4MDApOwogICAgICAg
IF9pb19pZmFjZS0+cG9rZTgoMHgyNTEsIHZjb192YXJhY3Rvcl9yZWYpOwogICAgICAgIF9pb19p
ZmFjZS0+cG9rZTgoMHgyNTAsIDB4NzApOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyM2Is
IDB4ODAgfCBjaGFyZ2VfcHVtcF9jdXJyKTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MjNl
LCBsb29wX2ZpbHRlcl9jMSB8IChsb29wX2ZpbHRlcl9jMiA8PCA0KSk7CiAgICAgICAgX2lvX2lm
YWNlLT5wb2tlOCgweDIzZiwgbG9vcF9maWx0ZXJfYzMgfCAobG9vcF9maWx0ZXJfcjEgPDwgNCkp
OwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyNDAsIGxvb3BfZmlsdGVyX3IzKTsKICAgIH0g
ZWxzZSBpZiAoZGlyZWN0aW9uID09IFRYKSB7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDI3
YSwgMHg0MCB8IHZjb19vdXRwdXRfbGV2ZWwpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgy
NzksIDB4QzAgfCB2Y29fdmFyYWN0b3IpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyODIs
IHZjb19iaWFzX3JlZiB8ICh2Y29fYmlhc190Y2YgPDwgMykpOwogICAgICAgIF9pb19pZmFjZS0+
cG9rZTgoMHgyNzgsICh2Y29fY2FsX29mZnNldCA8PCAzKSk7CiAgICAgICAgX2lvX2lmYWNlLT5w
b2tlOCgweDI4NSwgMHgwMCk7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDI5MSwgdmNvX3Zh
cmFjdG9yX3JlZik7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDI5MCwgMHg3MCk7CiAgICAg
ICAgX2lvX2lmYWNlLT5wb2tlOCgweDI3YiwgMHg4MCB8IGNoYXJnZV9wdW1wX2N1cnIpOwogICAg
ICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyN2UsIGxvb3BfZmlsdGVyX2MxIHwgKGxvb3BfZmlsdGVy
X2MyIDw8IDQpKTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MjdmLCBsb29wX2ZpbHRlcl9j
MyB8IChsb29wX2ZpbHRlcl9yMSA8PCA0KSk7CiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDI4
MCwgbG9vcF9maWx0ZXJfcjMpOwogICAgfSBlbHNlIHsKICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRp
bWVfZXJyb3IoIlthZDkzNjFfZGV2aWNlX3RdIFtfc2V0dXBfc3ludGhdIElOVkFMSURfQ09ERV9Q
QVRIIik7CiAgICB9Cn0KCgovKiBUdW5lIHRoZSBiYXNlYmFuZCBWQ08uCiAqCiAqIFRoaXMgY2xv
Y2sgc2lnbmFsIGlzIHdoYXQgZ2V0cyBmZWQgdG8gdGhlIEFEQ3MgYW5kIERBQ3MuIFRoaXMgZnVu
Y3Rpb24gaXMKICogbm90IGV4cG9ydGVkIG91dHNpZGUgb2YgdGhpcyBmaWxlLCBhbmQgaXMgaW52
b2tlZCBiYXNlZCBvbiB0aGUgcmF0ZQogKiBmZWQgdG8gdGhlIHB1YmxpYyBzZXRfY2xvY2tfcmF0
ZSBmdW5jdGlvbi4gKi8KZG91YmxlIGFkOTM2MV9kZXZpY2VfdDo6X3R1bmVfYmJ2Y28oY29uc3Qg
ZG91YmxlIHJhdGUpCnsKICAgIFVIRF9MT0dfVFJBQ0UoIkFEOTM2WCIsICJbYWQ5MzYxX2Rldmlj
ZV90OjpfdHVuZV9iYnZjb10gcmF0ZT0iIDw8IHJhdGUpOwoKICAgIC8qIExldCdzIG5vdCByZS10
dW5lIHRvIHRoZSBzYW1lIGZyZXF1ZW5jeSBvdmVyIGFuZCBvdmVyLi4uICovCiAgICBpZiAoZnJl
cV9pc19uZWFybHlfZXF1YWwocmF0ZSwgX3JlcV9jb3JlY2xrKSkgewogICAgICAgIHJldHVybiBf
YWRjY2xvY2tfZnJlcTsKICAgIH0KCiAgICBfcmVxX2NvcmVjbGsgPSByYXRlOwoKICAgIGNvbnN0
IGRvdWJsZSBmcmVmICAgPSA0MGU2OwogICAgY29uc3QgaW50IG1vZHVsdXMgICA9IDIwODg5NjA7
CiAgICBjb25zdCBkb3VibGUgdmNvbWF4ID0gMTQzMGU2OwogICAgY29uc3QgZG91YmxlIHZjb21p
biA9IDY3MmU2OwogICAgZG91YmxlIHZjb3JhdGU7CiAgICBpbnQgdmNvZGl2OwoKICAgIC8qIEl0
ZXJhdGUgb3ZlciBWQ08gZGl2aWRlcnMgdW50aWwgYXBwcm9wcmlhdGUgZGl2aWRlciBpcyBmb3Vu
ZC4gKi8KICAgIGludCBpID0gMTsKICAgIGZvciAoOyBpIDw9IDY7IGkrKykgewogICAgICAgIHZj
b2RpdiAgPSAxIDw8IGk7CiAgICAgICAgdmNvcmF0ZSA9IHJhdGUgKiB2Y29kaXY7CgogICAgICAg
IGlmICh2Y29yYXRlID49IHZjb21pbiAmJiB2Y29yYXRlIDw9IHZjb21heCkKICAgICAgICAgICAg
YnJlYWs7CiAgICB9CiAgICBpZiAoaSA9PSA3KQogICAgICAgIHRocm93IHVoZDo6cnVudGltZV9l
cnJvcigiW2FkOTM2MV9kZXZpY2VfdF0gX3R1bmVfYmJ2Y286IHdyb25nIHZjb3JhdGUiKTsKCiAg
ICBVSERfTE9HX1RSQUNFKCJBRDkzNlgiLAogICAgICAgIGJvb3N0Ojpmb3JtYXQoIlthZDkzNjFf
ZGV2aWNlX3Q6Ol90dW5lX2JidmNvXSB2Y29kaXY9JWQgdmNvcmF0ZT0lLjEwZiIpICUgdmNvZGl2
CiAgICAgICAgICAgICUgdmNvcmF0ZSk7CiAgICAvKiBGbyA9IEZyZWYgKiAoTmludCArIE5mcmFj
IC8gbW9kKSAqLwogICAgaW50IG5pbnQgPSBzdGF0aWNfY2FzdDxpbnQ+KHZjb3JhdGUgLyBmcmVm
KTsKICAgIFVIRF9MT0dfVFJBQ0UoIkFEOTM2WCIsICJbYWQ5MzYxX2RldmljZV90OjpfdHVuZV9i
YnZjb10gKG5pbnQpPSIgPDwgKHZjb3JhdGUgLyBmcmVmKSk7CiAgICBpbnQgbmZyYWMgPSBzdGF0
aWNfY2FzdDxpbnQ+KAogICAgICAgIGJvb3N0OjptYXRoOjpyb3VuZCgoKHZjb3JhdGUgLyBmcmVm
KSAtIChkb3VibGUpbmludCkgKiAoZG91YmxlKW1vZHVsdXMpKTsKICAgIFVIRF9MT0dfVFJBQ0Uo
IkFEOTM2WCIsCiAgICAgICAgIlthZDkzNjFfZGV2aWNlX3Q6Ol90dW5lX2JidmNvXSAobmZyYWMp
PSIgPDwgKCh2Y29yYXRlIC8gZnJlZikgLSAoZG91YmxlKW5pbnQpCiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICogKGRvdWJsZSltb2R1bHVz
KTsKICAgIFVIRF9MT0dfVFJBQ0UoIkFEOTM2WCIsCiAgICAgICAgYm9vc3Q6OmZvcm1hdCgiW2Fk
OTM2MV9kZXZpY2VfdDo6X3R1bmVfYmJ2Y29dIG5pbnQ9JWQgbmZyYWM9JWQiKSAlIG5pbnQgJSBu
ZnJhYyk7CiAgICBkb3VibGUgYWN0dWFsX3Zjb3JhdGUgPSBmcmVmICogKChkb3VibGUpbmludCAr
ICgoZG91YmxlKW5mcmFjIC8gKGRvdWJsZSltb2R1bHVzKSk7CgogICAgLyogU2NhbGUgQ1AgY3Vy
cmVudCBhY2NvcmRpbmcgdG8gVkNPIHJhdGUgKi8KICAgIGNvbnN0IGRvdWJsZSBpY3BfYmFzZWxp
bmUgID0gMTUwZS02OwogICAgY29uc3QgZG91YmxlIGZyZXFfYmFzZWxpbmUgPSAxMjgwZTY7CiAg
ICBkb3VibGUgaWNwICAgICAgICAgICAgICAgICA9IGljcF9iYXNlbGluZSAqIChhY3R1YWxfdmNv
cmF0ZSAvIGZyZXFfYmFzZWxpbmUpOwogICAgaW50IGljcF9yZWcgICAgICAgICAgICAgICAgPSBz
dGF0aWNfY2FzdDxpbnQ+KGljcCAvIDI1ZS02KSAtIDE7CgogICAgX2lvX2lmYWNlLT5wb2tlOCgw
eDA0NSwgMHgwMCk7IC8vIFJFRkNMSyAvIDEgdG8gQkJQTEwKICAgIF9pb19pZmFjZS0+cG9rZTgo
MHgwNDYsIGljcF9yZWcgJiAweDNGKTsgLy8gQ1AgY3VycmVudAogICAgX2lvX2lmYWNlLT5wb2tl
OCgweDA0OCwgMHhlOCk7IC8vIEJCUExMIGxvb3AgZmlsdGVycwogICAgX2lvX2lmYWNlLT5wb2tl
OCgweDA0OSwgMHg1Yik7IC8vIEJCUExMIGxvb3AgZmlsdGVycwogICAgX2lvX2lmYWNlLT5wb2tl
OCgweDA0YSwgMHgzNSk7IC8vIEJCUExMIGxvb3AgZmlsdGVycwoKICAgIF9pb19pZmFjZS0+cG9r
ZTgoMHgwNGIsIDB4ZTApOwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDA0ZSwgMHgxMCk7IC8vIE1h
eCBhY2N1cmFjeQoKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwNDMsIG5mcmFjICYgMHhGRik7IC8v
IE5mcmFjWzc6MF0KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwNDIsIChuZnJhYyA+PiA4KSAmIDB4
RkYpOyAvLyBOZnJhY1sxNTo4XQogICAgX2lvX2lmYWNlLT5wb2tlOCgweDA0MSwgKG5mcmFjID4+
IDE2KSAmIDB4RkYpOyAvLyBOZnJhY1syMzoxNl0KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwNDQs
IG5pbnQpOyAvLyBOaW50CgogICAgX2NhbGlicmF0ZV9sb2NrX2JicGxsKCk7CgogICAgX3JlZ3Mu
YmJwbGwgPSAoX3JlZ3MuYmJwbGwgJiAweEY4KSB8IGk7CgogICAgX2JicGxsX2ZyZXEgICAgPSBh
Y3R1YWxfdmNvcmF0ZTsKICAgIF9hZGNjbG9ja19mcmVxID0gKGFjdHVhbF92Y29yYXRlIC8gdmNv
ZGl2KTsKCiAgICByZXR1cm4gX2FkY2Nsb2NrX2ZyZXE7Cn0KCi8qIFRoaXMgZnVuY3Rpb24gcmUt
cHJvZ3JhbXMgYWxsIG9mIHRoZSBnYWlucyBpbiB0aGUgc3lzdGVtLgogKgogKiBCZWNhdXNlIHRo
ZSBnYWluIHZhbHVlcyBtYXRjaCB0byBkaWZmZXJlbnQgZ2FpbiBpbmRpY2VzIGJhc2VkIG9uIHRo
ZQogKiBjdXJyZW50IG9wZXJhdGluZyBiYW5kLCB0aGlzIGZ1bmN0aW9uIGNhbiBiZSBjYWxsZWQg
dG8gdXBkYXRlIGFsbCBnYWluCiAqIHNldHRpbmdzIHRvIHRoZSBhcHByb3ByaWF0ZSBpbmRleCBh
ZnRlciBhIHJlLXR1bmUuICovCnZvaWQgYWQ5MzYxX2RldmljZV90OjpfcmVwcm9ncmFtX2dhaW5z
KCkKewogICAgc2V0X2dhaW4oUlgsIENIQUlOXzEsIF9yeDFfZ2Fpbik7CiAgICBzZXRfZ2FpbihS
WCwgQ0hBSU5fMiwgX3J4Ml9nYWluKTsKICAgIHNldF9nYWluKFRYLCBDSEFJTl8xLCBfdHgxX2dh
aW4pOwogICAgc2V0X2dhaW4oVFgsIENIQUlOXzIsIF90eDJfZ2Fpbik7Cn0KCi8qIFRoaXMgaXMg
dGhlIGludGVybmFsIHR1bmUgZnVuY3Rpb24sIG5vdCBhdmFpbGFibGUgZm9yIGEgaG9zdCBjYWxs
LgogKgogKiBDYWxjdWxhdGUgdGhlIFZDTyBzZXR0aW5ncyBmb3IgdGhlIHJlcXVlc3RlZCBmcnF1
ZW5jeSwgYW5kIHRoZW4gZWl0aGVyCiAqIHR1bmUgdGhlIFJYIG9yIFRYIFZDTy4gKi8KZG91Ymxl
IGFkOTM2MV9kZXZpY2VfdDo6X3R1bmVfaGVscGVyKGRpcmVjdGlvbl90IGRpcmVjdGlvbiwgY29u
c3QgZG91YmxlIHZhbHVlKQp7CiAgICAvKiBUaGUgUkZQTEwgcnVucyBmcm9tIDYgR0h6IC0gMTIg
R0h6ICovCiAgICBjb25zdCBkb3VibGUgZnJlZiAgID0gODBlNjsKICAgIGNvbnN0IGludCBtb2R1
bHVzICAgPSA4Mzg4NTkzOwogICAgY29uc3QgZG91YmxlIHZjb21heCA9IDEyZTk7CiAgICBjb25z
dCBkb3VibGUgdmNvbWluID0gNmU5OwogICAgZG91YmxlIHZjb3JhdGU7CiAgICBpbnQgdmNvZGl2
OwoKICAgIC8qIEl0ZXJhdGUgb3ZlciBWQ08gZGl2aWRlcnMgdW50aWwgYXBwcm9wcmlhdGUgZGl2
aWRlciBpcyBmb3VuZC4gKi8KICAgIGludCBpOwogICAgZm9yIChpID0gMDsgaSA8PSA2OyBpKysp
IHsKICAgICAgICB2Y29kaXYgID0gMiA8PCBpOwogICAgICAgIHZjb3JhdGUgPSB2YWx1ZSAqIHZj
b2RpdjsKICAgICAgICBpZiAodmNvcmF0ZSA+PSB2Y29taW4gJiYgdmNvcmF0ZSA8PSB2Y29tYXgp
CiAgICAgICAgICAgIGJyZWFrOwogICAgfQogICAgaWYgKGkgPT0gNykKICAgICAgICB0aHJvdyB1
aGQ6OnJ1bnRpbWVfZXJyb3IoIlthZDkzNjFfZGV2aWNlX3RdIFJGVkNPIGNhbid0IGZpbmQgdmFs
aWQgVkNPIHJhdGUhIik7CgogICAgaW50IG5pbnQgID0gc3RhdGljX2Nhc3Q8aW50Pih2Y29yYXRl
IC8gZnJlZik7CiAgICBpbnQgbmZyYWMgPSBzdGF0aWNfY2FzdDxpbnQ+KCgodmNvcmF0ZSAvIGZy
ZWYpIC0gbmludCkgKiBtb2R1bHVzKTsKCiAgICBkb3VibGUgYWN0dWFsX3Zjb3JhdGUgPSBmcmVm
ICogKG5pbnQgKyAoZG91YmxlKShuZnJhYykgLyBtb2R1bHVzKTsKICAgIGRvdWJsZSBhY3R1YWxf
bG8gICAgICA9IGFjdHVhbF92Y29yYXRlIC8gdmNvZGl2OwoKICAgIGlmIChkaXJlY3Rpb24gPT0g
UlgpIHsKICAgICAgICBfcmVxX3J4X2ZyZXEgPSB2YWx1ZTsKCiAgICAgICAgLyogU2V0IGJhbmQt
c3BlY2lmaWMgc2V0dGluZ3MuICovCiAgICAgICAgaWYgKHZhbHVlIDwgX2NsaWVudF9wYXJhbXMt
PmdldF9iYW5kX2VkZ2UoQUQ5MzYxX1JYX0JBTkQwKSkgewogICAgICAgICAgICBfcmVncy5pbnB1
dHNlbCA9IChfcmVncy5pbnB1dHNlbCAmIDB4QzApIHwgMHgzMDsgLy8gUG9ydCBDLCBiYWxhbmNl
ZAogICAgICAgIH0gZWxzZSBpZiAoKHZhbHVlID49IF9jbGllbnRfcGFyYW1zLT5nZXRfYmFuZF9l
ZGdlKEFEOTM2MV9SWF9CQU5EMCkpCiAgICAgICAgICAgICAgICAgICAmJiAodmFsdWUgPCBfY2xp
ZW50X3BhcmFtcy0+Z2V0X2JhbmRfZWRnZShBRDkzNjFfUlhfQkFORDEpKSkgewogICAgICAgICAg
ICBfcmVncy5pbnB1dHNlbCA9IChfcmVncy5pbnB1dHNlbCAmIDB4QzApIHwgMHgwQzsgLy8gUG9y
dCBCLCBiYWxhbmNlZAogICAgICAgIH0gZWxzZSBpZiAoKHZhbHVlID49IF9jbGllbnRfcGFyYW1z
LT5nZXRfYmFuZF9lZGdlKEFEOTM2MV9SWF9CQU5EMSkpCiAgICAgICAgICAgICAgICAgICAmJiAo
dmFsdWUgPD0gNmU5KSkgewogICAgICAgICAgICBfcmVncy5pbnB1dHNlbCA9IChfcmVncy5pbnB1
dHNlbCAmIDB4QzApIHwgMHgwMzsgLy8gUG9ydCBBLCBiYWxhbmNlZAogICAgICAgIH0gZWxzZSB7
CiAgICAgICAgICAgIHRocm93IHVoZDo6cnVudGltZV9lcnJvcigKICAgICAgICAgICAgICAgICJb
YWQ5MzYxX2RldmljZV90XSBbX3R1bmVfaGVscGVyXSBJTlZBTElEX0NPREVfUEFUSCIpOwogICAg
ICAgIH0KCiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDAwNCwgX3JlZ3MuaW5wdXRzZWwpOwoK
ICAgICAgICAvKiBTdG9yZSB2Y29kaXYgc2V0dGluZy4gKi8KICAgICAgICBfcmVncy52Y29kaXZz
ID0gKF9yZWdzLnZjb2RpdnMgJiAweEYwKSB8IChpICYgMHgwRik7CgogICAgICAgIC8qIFNldHVw
IHRoZSBzeW50aGVzaXplci4gKi8KICAgICAgICBfc2V0dXBfc3ludGgoUlgsIGFjdHVhbF92Y29y
YXRlKTsKCiAgICAgICAgLyogVHVuZSEhISEgKi8KICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4
MjMzLCBuZnJhYyAmIDB4RkYpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyMzQsIChuZnJh
YyA+PiA4KSAmIDB4RkYpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyMzUsIChuZnJhYyA+
PiAxNikgJiAweEZGKTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MjMyLCAobmludCA+PiA4
KSAmIDB4RkYpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyMzEsIG5pbnQgJiAweEZGKTsK
ICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDA1LCBfcmVncy52Y29kaXZzKTsKCiAgICAgICAg
LyogTG9jayB0aGUgUExMISAqLwogICAgICAgIHN0ZDo6dGhpc190aHJlYWQ6OnNsZWVwX2Zvcihz
dGQ6OmNocm9ubzo6bWlsbGlzZWNvbmRzKDIpKTsKICAgICAgICBpZiAoKF9pb19pZmFjZS0+cGVl
azgoMHgyNDcpICYgMHgwMikgPT0gMCkgewogICAgICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVf
ZXJyb3IoIlthZDkzNjFfZGV2aWNlX3RdIFJYIFBMTCBOT1QgTE9DS0VEIik7CiAgICAgICAgfQoK
ICAgICAgICBfcnhfZnJlcSA9IGFjdHVhbF9sbzsKCiAgICAgICAgcmV0dXJuIGFjdHVhbF9sbzsK
CiAgICB9IGVsc2UgewogICAgICAgIF9yZXFfdHhfZnJlcSA9IHZhbHVlOwoKICAgICAgICAvKiBT
ZXQgYmFuZC1zcGVjaWZpYyBzZXR0aW5ncy4gKi8KICAgICAgICBpZiAodmFsdWUgPCBfY2xpZW50
X3BhcmFtcy0+Z2V0X2JhbmRfZWRnZShBRDkzNjFfVFhfQkFORDApKSB7CiAgICAgICAgICAgIF9y
ZWdzLmlucHV0c2VsID0gX3JlZ3MuaW5wdXRzZWwgfCAweDQwOwogICAgICAgIH0gZWxzZSBpZiAo
KHZhbHVlID49IF9jbGllbnRfcGFyYW1zLT5nZXRfYmFuZF9lZGdlKEFEOTM2MV9UWF9CQU5EMCkp
CiAgICAgICAgICAgICAgICAgICAmJiAodmFsdWUgPD0gNmU5KSkgewogICAgICAgICAgICBfcmVn
cy5pbnB1dHNlbCA9IF9yZWdzLmlucHV0c2VsICYgMHhCRjsKICAgICAgICB9IGVsc2UgewogICAg
ICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAgICAgICAgICAiW2FkOTM2
MV9kZXZpY2VfdF0gW190dW5lX2hlbHBlcl0gSU5WQUxJRF9DT0RFX1BBVEgiKTsKICAgICAgICB9
CgogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMDQsIF9yZWdzLmlucHV0c2VsKTsKCiAgICAg
ICAgLyogU3RvcmUgdmNvZGl2IHNldHRpbmcuICovCiAgICAgICAgX3JlZ3MudmNvZGl2cyA9IChf
cmVncy52Y29kaXZzICYgMHgwRikgfCAoKGkgJiAweDBGKSA8PCA0KTsKCiAgICAgICAgLyogU2V0
dXAgdGhlIHN5bnRoZXNpemVyLiAqLwogICAgICAgIF9zZXR1cF9zeW50aChUWCwgYWN0dWFsX3Zj
b3JhdGUpOwoKICAgICAgICAvKiBUdW5lIGl0LCBob21leS4gKi8KICAgICAgICBfaW9faWZhY2Ut
PnBva2U4KDB4MjczLCBuZnJhYyAmIDB4RkYpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgy
NzQsIChuZnJhYyA+PiA4KSAmIDB4RkYpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyNzUs
IChuZnJhYyA+PiAxNikgJiAweEZGKTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MjcyLCAo
bmludCA+PiA4KSAmIDB4RkYpOwogICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyNzEsIG5pbnQg
JiAweEZGKTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDA1LCBfcmVncy52Y29kaXZzKTsK
CiAgICAgICAgLyogTG9jayB0aGUgUExMISAqLwogICAgICAgIHN0ZDo6dGhpc190aHJlYWQ6OnNs
ZWVwX2ZvcihzdGQ6OmNocm9ubzo6bWlsbGlzZWNvbmRzKDIpKTsKICAgICAgICBpZiAoKF9pb19p
ZmFjZS0+cGVlazgoMHgyODcpICYgMHgwMikgPT0gMCkgewogICAgICAgICAgICB0aHJvdyB1aGQ6
OnJ1bnRpbWVfZXJyb3IoIlthZDkzNjFfZGV2aWNlX3RdIFRYIFBMTCBOT1QgTE9DS0VEIik7CiAg
ICAgICAgfQoKICAgICAgICBfdHhfZnJlcSA9IGFjdHVhbF9sbzsKCiAgICAgICAgcmV0dXJuIGFj
dHVhbF9sbzsKICAgIH0KfQoKLyogQ29uZmlndXJlIHRoZSB2YXJpb3VzIGNsb2NrIC8gc2FtcGxl
IHJhdGVzIGluIHRoZSBSWCBhbmQgVFggY2hhaW5zLgogKgogKiBGdW5jdGlvbmFsbHksIHRoaXMg
ZnVuY3Rpb24gY29uZmlndXJlcyBBRDkzNjEncyBSWCBhbmQgVFggcmF0ZXMuIEZvcgogKiBhIHJl
cXVlc3RlZCBUWCAmIFJYIHJhdGUsIGl0IHNldHMgdGhlIGludGVycG9sYXRpb24gJiBkZWNpbWF0
aW9uIGZpbHRlcnMsCiAqIGFuZCB0dW5lcyB0aGUgVkNPIHRoYXQgZmVlZHMgdGhlIEFEQ3MgYW5k
IERBQ3MuCiAqLwpkb3VibGUgYWQ5MzYxX2RldmljZV90Ojpfc2V0dXBfcmF0ZXMoY29uc3QgZG91
YmxlIHJhdGUpCnsKICAgIC8qIElmIHdlIG1ha2UgaXQgaW50byB0aGlzIGZ1bmN0aW9uLCB0aGVu
IHdlIGFyZSB0dW5pbmcgdG8gYSBuZXcgcmF0ZS4KICAgICAqIFN0b3JlIHRoZSBuZXcgcmF0ZS4g
Ki8KICAgIF9yZXFfY2xvY2tfcmF0ZSA9IHJhdGU7CiAgICBVSERfTE9HX1RSQUNFKCJBRDkzNlgi
LCAiW2FkOTM2MV9kZXZpY2VfdDo6X3NldHVwX3JhdGVzXSByYXRlPSIgPDwgcmF0ZSk7CgogICAg
LyogU2V0IHRoZSBkZWNpbWF0aW9uIGFuZCBpbnRlcnBvbGF0aW9uIHZhbHVlcyBpbiB0aGUgUlgg
YW5kIFRYIGNoYWlucy4KICAgICAqIFRoaXMgYWxzbyBzd2l0Y2hlcyBmaWx0ZXJzIGluIC8gb3V0
LiBOb3RlIHRoYXQgYWxsIHRyYW5zbWl0dGVycyBhbmQKICAgICAqIHJlY2VpdmVycyBoYXZlIHRv
IGJlIHR1cm5lZCBvbiBmb3IgdGhlIGNhbGlicmF0aW9uIHBvcnRpb24gb2YKICAgICAqIGJyaW5n
LXVwLCBhbmQgdGhlbiB0aGV5IHdpbGwgYmUgc3dpdGNoZWQgb3V0IHRvIHJlZmxlY3QgdGhlIGFj
dHVhbAogICAgICogdXNlci1yZXF1ZXN0ZWQgYW50ZW5uYSBzZWxlY3Rpb25zLiAqLwogICAgaW50
IGRpdmZhY3RvciA9IDA7CiAgICBfdGZpcl9mYWN0b3IgID0gMDsKICAgIF9yZmlyX2ZhY3RvciAg
PSAwOwoKICAgIGlmIChyYXRlIDwgMC4zM2U2KSB7CiAgICAgICAgLy8gUlgxICsgUlgyIGVuYWJs
ZWQsIDMsIDIsIDIsIDQKICAgICAgICBfcmVncy5yeGZpbHQgPSBCOCgxMTEwMTExMSk7CgogICAg
ICAgIC8vIFRYMSArIFRYMiBlbmFibGVkLCAzLCAyLCAyLCA0CiAgICAgICAgX3JlZ3MudHhmaWx0
ID0gQjgoMTExMDExMTEpOwoKICAgICAgICBkaXZmYWN0b3IgICAgPSA0ODsKICAgICAgICBfdGZp
cl9mYWN0b3IgPSA0OwogICAgICAgIF9yZmlyX2ZhY3RvciA9IDQ7CiAgICB9IGVsc2UgaWYgKHJh
dGUgPCAwLjY2ZTYpIHsKICAgICAgICAvLyBSWDEgKyBSWDIgZW5hYmxlZCwgMiwgMiwgMiwgNAog
ICAgICAgIF9yZWdzLnJ4ZmlsdCA9IEI4KDExMDExMTExKTsKCiAgICAgICAgLy8gVFgxICsgVFgy
IGVuYWJsZWQsIDIsIDIsIDIsIDQKICAgICAgICBfcmVncy50eGZpbHQgPSBCOCgxMTAxMTExMSk7
CgogICAgICAgIGRpdmZhY3RvciAgICA9IDMyOwogICAgICAgIF90ZmlyX2ZhY3RvciA9IDQ7CiAg
ICAgICAgX3JmaXJfZmFjdG9yID0gNDsKICAgIH0gZWxzZSBpZiAocmF0ZSA8PSAyMGU2KSB7CiAg
ICAgICAgLy8gUlgxICsgUlgyIGVuYWJsZWQsIDIsIDIsIDIsIDIKICAgICAgICBfcmVncy5yeGZp
bHQgPSBCOCgxMTAxMTExMCk7CgogICAgICAgIC8vIFRYMSArIFRYMiBlbmFibGVkLCAyLCAyLCAy
LCAyCiAgICAgICAgX3JlZ3MudHhmaWx0ID0gQjgoMTEwMTExMTApOwoKICAgICAgICBkaXZmYWN0
b3IgICAgPSAxNjsKICAgICAgICBfdGZpcl9mYWN0b3IgPSAyOwogICAgICAgIF9yZmlyX2ZhY3Rv
ciA9IDI7CiAgICB9IGVsc2UgaWYgKChyYXRlID4gMjBlNikgJiYgKHJhdGUgPCAyM2U2KSkgewog
ICAgICAgIC8vIFJYMSArIFJYMiBlbmFibGVkLCAzLCAyLCAyLCAyCiAgICAgICAgX3JlZ3Mucnhm
aWx0ID0gQjgoMTExMDExMTApOwoKICAgICAgICAvLyBUWDEgKyBUWDIgZW5hYmxlZCwgMywgMSwg
MiwgMgogICAgICAgIF9yZWdzLnR4ZmlsdCA9IEI4KDExMTAwMTEwKTsKCiAgICAgICAgZGl2ZmFj
dG9yICAgID0gMjQ7CiAgICAgICAgX3RmaXJfZmFjdG9yID0gMjsKICAgICAgICBfcmZpcl9mYWN0
b3IgPSAyOwogICAgfSBlbHNlIGlmICgocmF0ZSA+PSAyM2U2KSAmJiAocmF0ZSA8IDQxZTYpKSB7
CiAgICAgICAgLy8gUlgxICsgUlgyIGVuYWJsZWQsIDIsIDIsIDIsIDIKICAgICAgICBfcmVncy5y
eGZpbHQgPSBCOCgxMTAxMTExMCk7CgogICAgICAgIC8vIFRYMSArIFRYMiBlbmFibGVkLCAxLCAy
LCAyLCAyCiAgICAgICAgX3JlZ3MudHhmaWx0ID0gQjgoMTEwMDExMTApOwoKICAgICAgICBkaXZm
YWN0b3IgICAgPSAxNjsKICAgICAgICBfdGZpcl9mYWN0b3IgPSAyOwogICAgICAgIF9yZmlyX2Zh
Y3RvciA9IDI7CiAgICB9IGVsc2UgaWYgKChyYXRlID49IDQxZTYpICYmIChyYXRlIDw9IDU4ZTYp
KSB7CiAgICAgICAgLy8gUlgxICsgUlgyIGVuYWJsZWQsIDMsIDEsIDIsIDIKICAgICAgICBfcmVn
cy5yeGZpbHQgPSBCOCgxMTEwMDExMCk7CgogICAgICAgIC8vIFRYMSArIFRYMiBlbmFibGVkLCAz
LCAxLCAxLCAyCiAgICAgICAgX3JlZ3MudHhmaWx0ID0gQjgoMTExMDAwMTApOwoKICAgICAgICBk
aXZmYWN0b3IgICAgPSAxMjsKICAgICAgICBfdGZpcl9mYWN0b3IgPSAyOwogICAgICAgIF9yZmly
X2ZhY3RvciA9IDI7CiAgICB9IGVsc2UgaWYgKChyYXRlID4gNThlNikgJiYgKHJhdGUgPD0gNjEu
NDRlNikpIHsKICAgICAgICAvLyBSWDEgKyBSWDIgZW5hYmxlZCwgMiwgMSwgMiwgMgogICAgICAg
IF9yZWdzLnJ4ZmlsdCA9IEI4KDExMDAxMTEwKTsKCgogICAgICAgIC8vIFRYMSArIFRYMiBlbmFi
bGVkLCAyLCAxLCAxLCAyCiAgICAgICAgX3JlZ3MudHhmaWx0ID0gQjgoMTEwMTAwMTApOwoKICAg
ICAgICBkaXZmYWN0b3IgICAgPSA4OwogICAgICAgIF90ZmlyX2ZhY3RvciA9IDI7CiAgICAgICAg
X3JmaXJfZmFjdG9yID0gMjsKICAgIH0gZWxzZSB7CiAgICAgICAgLy8gc2hvdWxkIG5ldmVyIGdl
dCBpbiBoZXJlCiAgICAgICAgdGhyb3cgdWhkOjpydW50aW1lX2Vycm9yKCJbYWQ5MzYxX2Rldmlj
ZV90XSBbX3NldHVwX3JhdGVzXSBJTlZBTElEX0NPREVfUEFUSCIpOwogICAgfQoKICAgIFVIRF9M
T0dfVFJBQ0UoIkFEOTM2WCIsICJbYWQ5MzYxX2RldmljZV90Ojpfc2V0dXBfcmF0ZXNdIGRpdmZh
Y3Rvcj0iIDw8IGRpdmZhY3Rvcik7CgogICAgLyogVHVuZSB0aGUgQkJQTEwgdG8gZ2V0IHRoZSBB
REMgYW5kIERBQyBjbG9ja3MuICovCiAgICBjb25zdCBkb3VibGUgYWRjY2xrID0gX3R1bmVfYmJ2
Y28ocmF0ZSAqIGRpdmZhY3Rvcik7CiAgICBkb3VibGUgZGFjY2xrICAgICAgID0gYWRjY2xrOwoK
ICAgIC8qIFRoZSBEQUMgY2xvY2sgbXVzdCBiZSA8PSAzMzZlNiwgYW5kIGlzIGVpdGhlciB0aGUg
QURDIGNsb2NrIG9yIDEvMiB0aGUKICAgICAqIEFEQyBjbG9jay4qLwogICAgaWYgKGFkY2NsayA+
IDMzNmU2KSB7CiAgICAgICAgLyogTWFrZSB0aGUgREFDIGNsb2NrID0gQURDLzIgKi8KICAgICAg
ICBfcmVncy5iYnBsbCA9IF9yZWdzLmJicGxsIHwgMHgwODsKICAgICAgICBkYWNjbGsgICAgICA9
IGFkY2NsayAvIDIuMDsKICAgIH0gZWxzZSB7CiAgICAgICAgX3JlZ3MuYmJwbGwgPSBfcmVncy5i
YnBsbCAmIDB4Rjc7CiAgICB9CgogICAgLyogU2V0IHRoZSBkaXZpZGVycyAvIGludGVycG9sYXRv
cnMgaW4gQUQ5MzYxLiAqLwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAwMiwgX3JlZ3MudHhmaWx0
KTsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMDMsIF9yZWdzLnJ4ZmlsdCk7CiAgICBfaW9faWZh
Y2UtPnBva2U4KDB4MDA0LCBfcmVncy5pbnB1dHNlbCk7CiAgICBfaW9faWZhY2UtPnBva2U4KDB4
MDBBLCBfcmVncy5iYnBsbCk7CgogICAgVUhEX0xPR19UUkFDRSgiQUQ5MzZYIiwgIlthZDkzNjFf
ZGV2aWNlX3Q6Ol9zZXR1cF9yYXRlc10gYWRjY2xrPSIgPDwgYWRjY2xrKTsKICAgIF9iYXNlYmFu
ZF9idyA9IChhZGNjbGsgLyBkaXZmYWN0b3IpOwoKICAgIC8qCiAgICAgVGhlIFR4ICYgUnggRklS
IGNhbGN1bGF0ZSAxNiB0YXBzIHBlciBjbG9jayBjeWNsZS4gVGhpcyBsaW1pdHMgdGhlIG51bWJl
ciBvZgogICAgIGF2YWlsYWJsZSB0YXBzIHRvIHRoZSByYXRpbyBvZiBEQUNfQ0xLL0FEQ19DTEsg
dG8gdGhlIGlucHV0IGRhdGEgcmF0ZSBtdWx0aXBsaWVkCiAgICAgYnkgMTYuIEZvciBleGFtcGxl
LCBpZiB0aGUgaW5wdXQgZGF0YSByYXRlIGlzIDI1IE1IeiBhbmQgREFDX0NMSyBpcyAxMDAgTUh6
LCB0aGVuIHRoZQogICAgIHJhdGlvIG9mIERBQ19DTEsgdG8gdGhlIGlucHV0IGRhdGEgcmF0ZSBp
cyAxMDAvMjUgb3IgNC4gSW4gdGhpcyBzY2VuYXJpbywgdGhlIHRvdGFsCiAgICAgbnVtYmVyIG9m
IHRhcHMgYXZhaWxhYmxlIGlzIDY0LgoKICAgICBBbHNvLCB3aGlsc3QgdGhlIFJ4IEZJUiBmaWx0
ZXIgYWx3YXlzIGhhcyBtZW1vcnkgYXZhaWxhYmxlIGZvciAxMjggdGFwcywgdGhlIFR4IEZJUgog
ICAgIEZpbHRlciBjYW4gb25seSBzdXBwb3J0IGEgbWF4aW11bSBsZW5ndGggb2YgNjQgdGFwcyBp
biAxeCBpbnRlcnBvbGF0aW9uIG1vZGUsIGFuZCAxMjgKICAgICB0YXBzIGluIDJ4ICYgNHggbW9k
ZXMuCiAgICAgKi8KICAgIGNvbnN0IHNpemVfdCBtYXhfdHhfdGFwcyA9CiAgICAgICAgc3RkOjpt
aW48c2l6ZV90PihzdGQ6Om1pbjxzaXplX3Q+KCgxNiAqIChpbnQpKChkYWNjbGsgLyByYXRlKSAr
IDAuNSkpLCAxMjgpLAogICAgICAgICAgICAoX3RmaXJfZmFjdG9yID09IDEpID8gNjQgOiAxMjgp
OwogICAgY29uc3Qgc2l6ZV90IG1heF9yeF90YXBzID0KICAgICAgICBzdGQ6Om1pbjxzaXplX3Q+
KCgxNiAqIChzaXplX3QpKChhZGNjbGsgLyByYXRlKSArIDAuNSkpLCAxMjgpOwoKICAgIGNvbnN0
IHNpemVfdCBudW1fdHhfdGFwcyA9IGdldF9udW1fdGFwcyhtYXhfdHhfdGFwcyk7CiAgICBjb25z
dCBzaXplX3QgbnVtX3J4X3RhcHMgPSBnZXRfbnVtX3RhcHMobWF4X3J4X3RhcHMpOwoKICAgIF9z
ZXR1cF90eF9maXIobnVtX3R4X3RhcHMsIF90ZmlyX2ZhY3Rvcik7CiAgICBfc2V0dXBfcnhfZmly
KG51bV9yeF90YXBzLCBfcmZpcl9mYWN0b3IpOwoKICAgIHJldHVybiBfYmFzZWJhbmRfYnc7Cn0K
Ci8qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKgogKiBQdWJsaWNseSBleHBvcnRlZCBmdW5jdGlvbnMgdG8gaG9zdCBj
YWxscwogKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKi8Kdm9pZCBhZDkzNjFfZGV2aWNlX3Q6OmluaXRpYWxpemUoKQp7
CiAgICBzdGQ6OmxvY2tfZ3VhcmQ8c3RkOjpyZWN1cnNpdmVfbXV0ZXg+IGxvY2soX211dGV4KTsK
CiAgICAvKiBJbml0aWFsaXplIHNoYWRvdyByZWdpc3RlcnMuICovCiAgICBfcmVncy52Y29kaXZz
ICAgICAgICA9IDB4MDA7CiAgICBfcmVncy5pbnB1dHNlbCAgICAgICA9IDB4MzA7CiAgICBfcmVn
cy5yeGZpbHQgICAgICAgICA9IDB4MDA7CiAgICBfcmVncy50eGZpbHQgICAgICAgICA9IDB4MDA7
CiAgICBfcmVncy5iYnBsbCAgICAgICAgICA9IDB4MDI7CiAgICBfcmVncy5iYmZ0dW5lX2NvbmZp
ZyA9IDB4MWU7CiAgICBfcmVncy5iYmZ0dW5lX21vZGUgICA9IDB4MWU7CgogICAgLyogSW5pdGlh
bGl6ZSBwcml2YXRlIFZSUSBmaWVsZHMuICovCiAgICBfcnhfZnJlcSAgICAgICAgICAgICAgICAg
PSBERUZBVUxUX1JYX0ZSRVE7CiAgICBfdHhfZnJlcSAgICAgICAgICAgICAgICAgPSBERUZBVUxU
X1RYX0ZSRVE7CiAgICBfcmVxX3J4X2ZyZXEgICAgICAgICAgICAgPSAwLjA7CiAgICBfcmVxX3R4
X2ZyZXEgICAgICAgICAgICAgPSAwLjA7CiAgICBfYmFzZWJhbmRfYncgICAgICAgICAgICAgPSAw
LjA7CiAgICBfcmVxX2Nsb2NrX3JhdGUgICAgICAgICAgPSAwLjA7CiAgICBfcmVxX2NvcmVjbGsg
ICAgICAgICAgICAgPSAwLjA7CiAgICBfYmJwbGxfZnJlcSAgICAgICAgICAgICAgPSAwLjA7CiAg
ICBfYWRjY2xvY2tfZnJlcSAgICAgICAgICAgPSAwLjA7CiAgICBfcnhfYmJmX3R1bmVkaXYgICAg
ICAgICAgPSAwOwogICAgX2N1cnJfZ2Fpbl90YWJsZSAgICAgICAgID0gMDsKICAgIF9yeDFfZ2Fp
biAgICAgICAgICAgICAgICA9IDA7CiAgICBfcngyX2dhaW4gICAgICAgICAgICAgICAgPSAwOwog
ICAgX3R4MV9nYWluICAgICAgICAgICAgICAgID0gMDsKICAgIF90eDJfZ2FpbiAgICAgICAgICAg
ICAgICA9IDA7CiAgICBfdXNlX2RjX29mZnNldF90cmFja2luZyAgPSB0cnVlOwogICAgX3VzZV9p
cV9iYWxhbmNlX3RyYWNraW5nID0gdHJ1ZTsKICAgIF9yeDFfYWdjX21vZGUgICAgICAgICAgICA9
IEdBSU5fTU9ERV9TTE9XX0FHQzsKICAgIF9yeDJfYWdjX21vZGUgICAgICAgICAgICA9IEdBSU5f
TU9ERV9TTE9XX0FHQzsKICAgIF9yeDFfYWdjX2VuYWJsZSAgICAgICAgICA9IGZhbHNlOwogICAg
X3J4Ml9hZ2NfZW5hYmxlICAgICAgICAgID0gZmFsc2U7CiAgICBfcnhfYW5hbG9nX2J3ICAgICAg
ICAgICAgPSAwOwogICAgX3R4X2FuYWxvZ19idyAgICAgICAgICAgID0gMDsKICAgIF9yeF90aWFf
bHBfYncgICAgICAgICAgICA9IDA7CiAgICBfdHhfc2VjX2xwX2J3ICAgICAgICAgICAgPSAwOwog
ICAgX3J4X2JiX2xwX2J3ICAgICAgICAgICAgID0gMDsKICAgIF90eF9iYl9scF9idyAgICAgICAg
ICAgICA9IDA7CgogICAgLyogUmVzZXQgdGhlIGRldmljZS4gKi8KICAgIF9pb19pZmFjZS0+cG9r
ZTgoMHgwMDAsIDB4MDEpOwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAwMCwgMHgwMCk7CiAgICBz
dGQ6OnRoaXNfdGhyZWFkOjpzbGVlcF9mb3Ioc3RkOjpjaHJvbm86Om1pbGxpc2Vjb25kcygyMCkp
OwoKICAgIC8qIENoZWNrIGRldmljZSBJRCB0byBtYWtlIHN1cmUgaWZhY2Ugd29ya3MgKi8KICAg
IHVpbnQzMl90IGRldmljZV9pZCA9IChfaW9faWZhY2UtPnBlZWs4KDB4MDM3KSAmIDB4ZjgpOwog
ICAgaWYgKGRldmljZV9pZCAhPSAweDgpIHsKICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJy
b3IoCiAgICAgICAgICAgIHN0cihib29zdDo6Zm9ybWF0KCJbYWQ5MzYxX2RldmljZV90Ojppbml0
aWFsaXplXSBEZXZpY2UgSUQgcmVhZGJhY2sgZmFpbHVyZS4gIgogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiRXhwZWN0ZWQ6IDB4OCwgUmVjZWl2ZWQ6IDB4JXgiKQogICAgICAgICAgICAg
ICAgJSBkZXZpY2VfaWQpKTsKICAgIH0KCiAgICAvKiBUaGVyZSBpcyBub3QgYSBXQVQgYmlnIGVu
b3VnaCBmb3IgdGhpcy4gKi8KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgzZGYsIDB4MDEpOwoKICAg
IF9pb19pZmFjZS0+cG9rZTgoMHgyYTYsIDB4MGUpOyAvLyBFbmFibGUgbWFzdGVyIGJpYXMKICAg
IF9pb19pZmFjZS0+cG9rZTgoMHgyYTgsIDB4MGUpOyAvLyBTZXQgYmFuZGdhcCB0cmltCgogICAg
LyogU2V0IFJGUExMIHJlZiBjbG9jayBzY2FsZSB0byBSRUZDTEsgKiAyICovCiAgICBfaW9faWZh
Y2UtPnBva2U4KDB4MmFiLCAweDA3KTsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyYWMsIDB4ZmYp
OwoKICAgIC8qIEVuYWJsZSBjbG9ja3MuICovCiAgICBzd2l0Y2ggKF9jbGllbnRfcGFyYW1zLT5n
ZXRfY2xvY2tpbmdfbW9kZSgpKSB7CiAgICAgICAgY2FzZSBjbG9ja2luZ19tb2RlX3Q6OkFEOTM2
MV9YVEFMX05fQ0xLX1BBVEg6IHsKICAgICAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDAwOSwg
MHgxNyk7CiAgICAgICAgfSBicmVhazsKCiAgICAgICAgY2FzZSBjbG9ja2luZ19tb2RlX3Q6OkFE
OTM2MV9YVEFMX1BfQ0xLX1BBVEg6IHsKICAgICAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDAw
OSwgMHgwNyk7CiAgICAgICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyOTIsIDB4MDgpOwogICAg
ICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MjkzLCAweDgwKTsKICAgICAgICAgICAgX2lvX2lm
YWNlLT5wb2tlOCgweDI5NCwgMHgwMCk7CiAgICAgICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgy
OTUsIDB4MTQpOwogICAgICAgIH0gYnJlYWs7CgogICAgICAgIGRlZmF1bHQ6CiAgICAgICAgICAg
IHRocm93IHVoZDo6cnVudGltZV9lcnJvcigiW2FkOTM2MV9kZXZpY2VfdF0gTk9UIElNUExFTUVO
VEVEIik7CiAgICB9CiAgICBzdGQ6OnRoaXNfdGhyZWFkOjpzbGVlcF9mb3Ioc3RkOjpjaHJvbm86
Om1pbGxpc2Vjb25kcygyMCkpOwoKICAgIC8qIFR1bmUgdGhlIEJCUExMLCB3cml0ZSBUWCBhbmQg
UlggRklSUy4gKi8KICAgIF9zZXR1cF9yYXRlcyg1MGU2KTsKCiAgICAvKiBTZXR1cCBkYXRhIHBv
cnRzIChGREQgZHVhbCBwb3J0IEREUik6CiAgICAgKiAgICAgIEZERCBkdWFsIHBvcnQgRERSIENN
T1Mgbm8gc3dhcC4KICAgICAqICAgICAgRm9yY2UgVFggb24gb25lIHBvcnQsIFJYIG9uIHRoZSBv
dGhlci4gKi8KICAgIHN3aXRjaCAoX2NsaWVudF9wYXJhbXMtPmdldF9kaWdpdGFsX2ludGVyZmFj
ZV9tb2RlKCkpIHsKICAgICAgICBjYXNlIEFEOTM2MV9ERFJfRkREX0xWQ01PUzogewogICAgICAg
ICAgICBfaW9faWZhY2UtPnBva2U4KAogICAgICAgICAgICAgICAgMHgwMTAsIDB4YzgpOyAvLyBT
d2FwIEkmUSBvbiBUeCwgU3dhcCBJJlEgb24gUngsIFRvZ2dsZSBmcmFtZSBzeW5jIG1vZGUKICAg
ICAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDAxMSwgMHgwMCk7CiAgICAgICAgICAgIF9pb19p
ZmFjZS0+cG9rZTgoMHgwMTIsIDB4MDIpOwogICAgICAgIH0gYnJlYWs7CgogICAgICAgIGNhc2Ug
QUQ5MzYxX0REUl9GRERfTFZEUzogewogICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDEw
LCAweGNjKTsgLy8gU3dhcCBJJlEgb24gVHgsIFN3YXAgSSZRIG9uIFJ4LCBUb2dnbGUgZnJhbWUK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIHN5bmMgbW9kZSwg
MlIyVCB0aW1pbmcuCiAgICAgICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMTEsIDB4MDApOwog
ICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDEyLCAweDEwKTsKCiAgICAgICAgICAgIC8v
IExWRFMgU3BlY2lmaWMKICAgICAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDAzQywgMHgyMyk7
CiAgICAgICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwM0QsIDB4RkYpOwogICAgICAgICAgICBf
aW9faWZhY2UtPnBva2U4KDB4MDNFLCAweDBGKTsKICAgICAgICB9IGJyZWFrOwoKICAgICAgICBk
ZWZhdWx0OgogICAgICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoIlthZDkzNjFfZGV2
aWNlX3RdIE5PVCBJTVBMRU1FTlRFRCIpOwogICAgfQoKICAgIC8qIERhdGEgZGVsYXkgZm9yIFRY
IGFuZCBSWCBkYXRhIGNsb2NrcyAqLwogICAgZGlnaXRhbF9pbnRlcmZhY2VfZGVsYXlzX3QgdGlt
aW5nID0gX2NsaWVudF9wYXJhbXMtPmdldF9kaWdpdGFsX2ludGVyZmFjZV90aW1pbmcoKTsKICAg
IHVpbnQ4X3QgcnhfZGVsYXlzID0gKCh0aW1pbmcucnhfY2xrX2RlbGF5ICYgMHhGKSA8PCA0KSB8
ICh0aW1pbmcucnhfZGF0YV9kZWxheSAmIDB4Rik7CiAgICB1aW50OF90IHR4X2RlbGF5cyA9ICgo
dGltaW5nLnR4X2Nsa19kZWxheSAmIDB4RikgPDwgNCkgfCAodGltaW5nLnR4X2RhdGFfZGVsYXkg
JiAweEYpOwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAwNiwgcnhfZGVsYXlzKTsKICAgIF9pb19p
ZmFjZS0+cG9rZTgoMHgwMDcsIHR4X2RlbGF5cyk7CgogICAgLyogU2V0dXAgQXV4REFDICovCiAg
ICBfaW9faWZhY2UtPnBva2U4KDB4MDE4LCAweDAwKTsgLy8gQXV4REFDMSBXb3JkWzk6Ml0KICAg
IF9pb19pZmFjZS0+cG9rZTgoMHgwMTksIDB4MDApOyAvLyBBdXhEQUMyIFdvcmRbOToyXQogICAg
X2lvX2lmYWNlLT5wb2tlOCgweDAxQSwgMHgwMCk7IC8vIEF1eERBQzEgQ29uZmlnIGFuZCBXb3Jk
WzE6MF0KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMUIsIDB4MDApOyAvLyBBdXhEQUMyIENvbmZp
ZyBhbmQgV29yZFsxOjBdCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MDIzLCAweEZGKTsgLy8gQXV4
REFDIE1hbmF1bC9BdXRvIENvbnRyb2wKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMjYsIDB4MDAp
OyAvLyBBdXhEQUMgTWFudWFsIFNlbGVjdCBCaXQvR1BPIE1hbnVhbCBTZWxlY3QKICAgIF9pb19p
ZmFjZS0+cG9rZTgoMHgwMzAsIDB4MDApOyAvLyBBdXhEQUMxIFJ4IERlbGF5CiAgICBfaW9faWZh
Y2UtPnBva2U4KDB4MDMxLCAweDAwKTsgLy8gQXV4REFDMSBUeCBEZWxheQogICAgX2lvX2lmYWNl
LT5wb2tlOCgweDAzMiwgMHgwMCk7IC8vIEF1eERBQzIgUnggRGVsYXkKICAgIF9pb19pZmFjZS0+
cG9rZTgoMHgwMzMsIDB4MDApOyAvLyBBdXhEQUMyIFR4IERlbGF5CgogICAgLyogTE5BIGJ5cGFz
cyBwb2xhcml0eSBpbnZlcnNpb24KICAgICAqICAgICBBY2NvcmRpbmcgdG8gdGhlIHJlZ2lzdGVy
IG1hcCwgd2Ugc2hvdWxkIGludmVydCB0aGUgYnlwYXNzIHBhdGggdG8KICAgICAqICAgICBtYXRj
aCBMTkEgcGhhc2UuIEV4dGVuc2l2ZSB0ZXN0aW5nLCBob3dldmVyLCBzaG93cyBvdGhlcndpc2Ug
YW5kIHRoYXQKICAgICAqICAgICB0byBhbGlnbiBieXBhc3MgYW5kIExOQSBwaGFzZXMsIHRoZSBi
eXBhc3MgaW52ZXJzaW9uIHN3aXRjaCBzaG91bGQgYmUKICAgICAqICAgICB0dXJuZWQgb2ZmLgog
ICAgICovCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MDIyLCAweDBBKTsKCiAgICAvKiBTZXR1cCBB
dXhBREMgKi8KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMEIsIDB4MDApOyAvLyBUZW1wIFNlbnNv
ciBTZXR1cCAoT2Zmc2V0KQogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAwQywgMHgwMCk7IC8vIFRl
bXAgU2Vuc29yIFNldHVwIChUZW1wIFdpbmRvdykKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMEQs
IDB4MDApOyAvLyBUZW1wIFNlbnNvciBTZXR1cCAoTWFudWFsICBNZWFzdXJlKQogICAgX2lvX2lm
YWNlLT5wb2tlOCgweDAwRiwgMHgwNCk7IC8vIFRlbXAgU2Vuc29yIFNldHVwIChEZWNpbWF0aW9u
KQogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAxQywgMHgxMCk7IC8vIEF1eEFEQyBTZXR1cCAoQ2xv
Y2sgRGl2KQogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAxRCwgMHgwMSk7IC8vIEF1eEFEQyBTZXR1
cCAoRGVjaW1hdGlvbi9FbmFibGUpCgogICAgLyogU2V0dXAgY29udHJvbCBvdXRwdXRzLiAqLwog
ICAgX2lvX2lmYWNlLT5wb2tlOCgweDAzNSwgMHgwMSk7CiAgICBfaW9faWZhY2UtPnBva2U4KDB4
MDM2LCAweEZGKTsKCiAgICAvKiBTZXR1cCBHUE8gKi8KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgw
M2EsIDB4MjcpOyAvLyBzZXQgZGVsYXkgcmVnaXN0ZXIKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgw
MjAsIDB4MDApOyAvLyBHUE8gQXV0byBFbmFibGUgU2V0dXAgaW4gUlggYW5kIFRYCiAgICBfaW9f
aWZhY2UtPnBva2U4KDB4MDI3LCAweDAzKTsgLy8gR1BPIE1hbnVhbCBhbmQgR1BPIGF1dG8gdmFs
dWUgaW4gQUxFUlQKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMjgsIDB4MDApOyAvLyBHUE9fMCBS
WCBEZWxheQogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAyOSwgMHgwMCk7IC8vIEdQT18xIFJYIERl
bGF5CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MDJBLCAweDAwKTsgLy8gR1BPXzIgUlggRGVsYXkK
ICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMkIsIDB4MDApOyAvLyBHUE9fMyBSWCBEZWxheQogICAg
X2lvX2lmYWNlLT5wb2tlOCgweDAyQywgMHgwMCk7IC8vIEdQT18wIFRYIERlbGF5CiAgICBfaW9f
aWZhY2UtPnBva2U4KDB4MDJELCAweDAwKTsgLy8gR1BPXzEgVFggRGVsYXkKICAgIF9pb19pZmFj
ZS0+cG9rZTgoMHgwMkUsIDB4MDApOyAvLyBHUE9fMiBUWCBEZWxheQogICAgX2lvX2lmYWNlLT5w
b2tlOCgweDAyRiwgMHgwMCk7IC8vIEdQT18zIFRYIERlbGF5CgogICAgX2lvX2lmYWNlLT5wb2tl
OCgweDI2MSwgMHgwMCk7IC8vIFJYIExPIHBvd2VyCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MmEx
LCAweDAwKTsgLy8gVFggTE8gcG93ZXIKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyNDgsIDB4MGIp
OyAvLyBlbiBSWCBWQ08gTERPCiAgICBfaW9faWZhY2UtPnBva2U4KDB4Mjg4LCAweDBiKTsgLy8g
ZW4gVFggVkNPIExETwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDI0NiwgMHgwMik7IC8vIHBkIFJY
IGNhbCBUY2YKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyODYsIDB4MDIpOyAvLyBwZCBUWCBjYWwg
VGNmCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MjQ5LCAweDhlKTsgLy8gcnggdmNvIGNhbCBsZW5n
dGgKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgyODksIDB4OGUpOyAvLyByeCB2Y28gY2FsIGxlbmd0
aAogICAgX2lvX2lmYWNlLT5wb2tlOCgweDIzYiwgMHg4MCk7IC8vIHNldCBSWCBNU0I/LCBGSVhN
RSAweDg5IG1hZ2ljIGNwCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MjdiLCAweDgwKTsgLy8gIiIg
VFggLy9GSVhNRSAweDg4IHNlZSBhYm92ZQogICAgX2lvX2lmYWNlLT5wb2tlOCgweDI0MywgMHgw
ZCk7IC8vIHNldCByeCBwcmVzY2FsZXIgYmlhcwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDI4Mywg
MHgwZCk7IC8vICIiIFRYCgogICAgX2lvX2lmYWNlLT5wb2tlOCgweDIzZCwgMHgwMCk7IC8vIENs
ZWFyIGhhbGYgVkNPIGNhbCBjbG9jayBzZXR0aW5nCiAgICBfaW9faWZhY2UtPnBva2U4KDB4Mjdk
LCAweDAwKTsgLy8gQ2xlYXIgaGFsZiBWQ08gY2FsIGNsb2NrIHNldHRpbmcKCiAgICAvKiBUaGUg
b3JkZXIgb2YgdGhlIGZvbGxvd2luZyBwcm9jZXNzIGlzIEVYVFJFTUVMWSBpbXBvcnRhbnQuIElm
IHRoZQogICAgICogYmVsb3cgZnVuY3Rpb25zIGFyZSBtb2RpZmllZCBhdCBhbGwsIGRldmljZSBp
bml0aWFsaXphdGlvbiBhbmQKICAgICAqIGNhbGlicmF0aW9uIG1pZ2h0IGJlIGJyb2tlbiBpbiB0
aGUgcHJvY2VzcyEgKi8KCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MDE1LCAweDA0KTsgLy8gZHVh
bCBzeW50aCBtb2RlLCBzeW50aCBlbiBjdHJsIGVuCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MDE0
LCAweDA1KTsgLy8gdXNlIFNQSSBmb3IgVFhOUlggY3RybCwgdG8gQUxFUlQsIFRYIG9uCiAgICBf
aW9faWZhY2UtPnBva2U4KDB4MDEzLCAweDAxKTsgLy8gZW5hYmxlIEVOU00KICAgIHN0ZDo6dGhp
c190aHJlYWQ6OnNsZWVwX2ZvcihzdGQ6OmNocm9ubzo6bWlsbGlzZWNvbmRzKDEpKTsKCiAgICBf
Y2FsaWJyYXRlX3N5bnRoX2NoYXJnZV9wdW1wcygpOwoKICAgIF90dW5lX2hlbHBlcihSWCwgX3J4
X2ZyZXEpOwogICAgX3R1bmVfaGVscGVyKFRYLCBfdHhfZnJlcSk7CgogICAgX3Byb2dyYW1fbWl4
ZXJfZ21fc3VidGFibGUoKTsKICAgIF9wcm9ncmFtX2dhaW5fdGFibGUoKTsKICAgIF9zZXR1cF9n
YWluX2NvbnRyb2woZmFsc2UpOwoKICAgIHNldF9id19maWx0ZXIoUlgsIF9iYXNlYmFuZF9idyk7
CiAgICBzZXRfYndfZmlsdGVyKFRYLCBfYmFzZWJhbmRfYncpOwoKICAgIF9zZXR1cF9hZGMoKTsK
CiAgICBfY2FsaWJyYXRlX2Jhc2ViYW5kX2RjX29mZnNldCgpOwogICAgX2NhbGlicmF0ZV9yZl9k
Y19vZmZzZXQoKTsKICAgIF9jYWxpYnJhdGVfcnhfcXVhZHJhdHVyZSgpOwoKICAgIC8qCiAgICAg
KiBSeCBCQiBEQyBhbmQgSVEgdHJhY2tpbmcgYXJlIGJvdGggZGlzYWJsZWQgYnkgY2FsaWJyYXRp
b24gYXQgdGhpcwogICAgICogcG9pbnQuIE9ubHkgaXNzdWUgY29tbWFuZHMgaWYgdHJhY2tpbmcg
bmVlZHMgdG8gYmUgdHVybmVkIG9uLgogICAgICovCiAgICBpZiAoX3VzZV9kY19vZmZzZXRfdHJh
Y2tpbmcpCiAgICAgICAgX2NvbmZpZ3VyZV9iYl9kY190cmFja2luZygpOwogICAgaWYgKF91c2Vf
aXFfYmFsYW5jZV90cmFja2luZykKICAgICAgICBfY29uZmlndXJlX3J4X2lxX3RyYWNraW5nKCk7
CgogICAgX2xhc3RfcnhfY2FsX2ZyZXEgPSBfcnhfZnJlcTsKICAgIF9sYXN0X3R4X2NhbF9mcmVx
ID0gX3R4X2ZyZXE7CgogICAgLy8gY2FscyBkb25lLCBzZXQgUFBPUlQgY29uZmlnCiAgICBzd2l0
Y2ggKF9jbGllbnRfcGFyYW1zLT5nZXRfZGlnaXRhbF9pbnRlcmZhY2VfbW9kZSgpKSB7CiAgICAg
ICAgY2FzZSBBRDkzNjFfRERSX0ZERF9MVkNNT1M6IHsKICAgICAgICAgICAgX2lvX2lmYWNlLT5w
b2tlOCgweDAxMiwgMHgwMik7CiAgICAgICAgfSBicmVhazsKCiAgICAgICAgY2FzZSBBRDkzNjFf
RERSX0ZERF9MVkRTOiB7CiAgICAgICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMTIsIDB4MTAp
OwogICAgICAgIH0gYnJlYWs7CgogICAgICAgIGRlZmF1bHQ6CiAgICAgICAgICAgIHRocm93IHVo
ZDo6cnVudGltZV9lcnJvcigiW2FkOTM2MV9kZXZpY2VfdF0gTk9UIElNUExFTUVOVEVEIik7CiAg
ICB9CgogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAxMywgMHgwMSk7IC8vIFNldCBFTlNNIEZERCBi
aXQKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMTUsIDB4MDQpOyAvLyBkdWFsIHN5bnRoIG1vZGUs
IHN5bnRoIGVuIGN0cmwgZW4KCiAgICAvKiBEZWZhdWx0IFRYIGF0dGVudHVhdGlvbiB0byAxMGRC
IG9uIGJvdGggVFgxIGFuZCBUWDIgKi8KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwNzMsIDB4MDAp
OwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDA3NCwgMHgwMCk7CiAgICBfaW9faWZhY2UtPnBva2U4
KDB4MDc1LCAweDAwKTsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwNzYsIDB4MDApOwoKICAgIC8q
IFNldHVwIFJTU0kgTWVhc3VyZW1lbnRzICovCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MTUwLCAw
eDBFKTsgLy8gUlNTSSBNZWFzdXJlbWVudCBEdXJhdGlvbiAwLCAxCiAgICBfaW9faWZhY2UtPnBv
a2U4KDB4MTUxLCAweDAwKTsgLy8gUlNTSSBNZWFzdXJlbWVudCBEdXJhdGlvbiAyLCAzCiAgICBf
aW9faWZhY2UtPnBva2U4KDB4MTUyLCAweEZGKTsgLy8gUlNTSSBXZWlnaHRlZCBNdWx0aXBsaWVy
IDAKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxNTMsIDB4MDApOyAvLyBSU1NJIFdlaWdodGVkIE11
bHRpcGxpZXIgMQogICAgX2lvX2lmYWNlLT5wb2tlOCgweDE1NCwgMHgwMCk7IC8vIFJTU0kgV2Vp
Z2h0ZWQgTXVsdGlwbGllciAyCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MTU1LCAweDAwKTsgLy8g
UlNTSSBXZWlnaHRlZCBNdWx0aXBsaWVyIDMKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgxNTYsIDB4
MDApOyAvLyBSU1NJIERlbGF5CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MTU3LCAweDAwKTsgLy8g
UlNTSSBXYWl0CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MTU4LCAweDBEKTsgLy8gUlNTSSBNb2Rl
IFNlbGVjdAogICAgX2lvX2lmYWNlLT5wb2tlOCgweDE1QywgMHg2Nyk7IC8vIFBvd2VyIE1lYXN1
cmVtZW50IER1cmF0aW9uCgogICAgLyogVHVybiBvbiB0aGUgZGVmYXVsdCBSWCAmIFRYIGNoYWlu
cy4gKi8KICAgIHNldF9hY3RpdmVfY2hhaW5zKHRydWUsIGZhbHNlLCBmYWxzZSwgZmFsc2UpOwoK
ICAgIC8qIFNldCBUWGVycyAmIFJYZXJzIG9uIChvbmx5IHdvcmtzIGluIEZERCBtb2RlKSAqLwog
ICAgX2lvX2lmYWNlLT5wb2tlOCgweDAxNCwgMHgyMSk7Cn0KCnZvaWQgYWQ5MzYxX2RldmljZV90
OjpzZXRfaW9faWZhY2UoYWQ5MzYxX2lvOjpzcHRyIGlvX2lmYWNlKQp7CiAgICBfaW9faWZhY2Ug
PSBpb19pZmFjZTsKfQoKLyogVGhpcyBmdW5jdGlvbiBzZXRzIHRoZSBSWCAvIFRYIHJhdGUgYmV0
d2VlbiBBRDkzNjEgYW5kIHRoZSBGUEdBLCBhbmQKICogdGh1cyBkZXRlcm1pbmVzIHRoZSBpbnRl
cnBvbGF0aW9uIC8gZGVjaW1hdGlvbiByZXF1aXJlZCBpbiB0aGUgRlBHQSB0bwogKiBhY2hpZXZl
IHRoZSB1c2VyJ3MgcmVxdWVzdGVkIHJhdGUuCiAqCiAqIFRoaXMgaXMgdGhlIG9ubHkgY2xvY2sg
c2V0dGluZyBmdW5jdGlvbiB0aGF0IGlzIGV4cG9zZWQgdG8gdGhlIG91dHNpZGUuICovCmRvdWJs
ZSBhZDkzNjFfZGV2aWNlX3Q6OnNldF9jbG9ja19yYXRlKGNvbnN0IGRvdWJsZSByZXFfcmF0ZSkK
ewogICAgc3RkOjpsb2NrX2d1YXJkPHN0ZDo6cmVjdXJzaXZlX211dGV4PiBsb2NrKF9tdXRleCk7
CgogICAgaWYgKHJlcV9yYXRlID4gNjEuNDRlNikgewogICAgICAgIHRocm93IHVoZDo6cnVudGlt
ZV9lcnJvcigKICAgICAgICAgICAgIlthZDkzNjFfZGV2aWNlX3RdIFJlcXVlc3RlZCBtYXN0ZXIg
Y2xvY2sgcmF0ZSBvdXRzaWRlIHJhbmdlIik7CiAgICB9CgogICAgVUhEX0xPR19UUkFDRSgiQUQ5
MzZYIiwgIlthZDkzNjFfZGV2aWNlX3Q6OnNldF9jbG9ja19yYXRlXSByZXFfcmF0ZT0iIDw8IHJl
cV9yYXRlKTsKCiAgICAvKiBVSEQgaGFzIGEgaGFiaXQgb2YgcmVxdWVzdGluZyB0aGUgc2FtZSBy
YXRlIGxpa2UgZm91ciB0aW1lcyB3aGVuIGl0CiAgICAgKiBzdGFydHMgdXAuIFRoaXMgcHJldmVu
dHMgdGhhdCwgYW5kIGFueSBidWdzIGluIHVzZXIgY29kZSB0aGF0IHJlcXVlc3QKICAgICAqIHRo
ZSBzYW1lIHJhdGUgb3ZlciBhbmQgb3Zlci4gKi8KICAgIGlmIChmcmVxX2lzX25lYXJseV9lcXVh
bChyZXFfcmF0ZSwgX3JlcV9jbG9ja19yYXRlKSkgewogICAgICAgIC8vIFdlIHJldHVybiBfYmFz
ZWJhbmRfYncsIGJlY2F1c2UgdGhhdCdzIGNsb3Nlc3QgdG8gdGhlCiAgICAgICAgLy8gYWN0dWFs
IHZhbHVlIHdlJ3JlIGN1cnJlbnRseSBydW5uaW5nLgogICAgICAgIHJldHVybiBfYmFzZWJhbmRf
Ync7CiAgICB9CgogICAgLyogV2UgbXVzdCBiZSBpbiB0aGUgU0xFRVAgLyBXQUlUIHN0YXRlIHRv
IGRvIHRoaXMuIElmIHdlIGFyZW4ndCBhbHJlYWR5CiAgICAgKiB0aGVyZSwgdHJhbnNpdGlvbiB0
aGUgRU5TTSB0byBTdGF0ZSAwLiAqLwogICAgdWludDhfdCBjdXJyZW50X3N0YXRlID0gX2lvX2lm
YWNlLT5wZWVrOCgweDAxNykgJiAweDBGOwogICAgc3dpdGNoIChjdXJyZW50X3N0YXRlKSB7CiAg
ICAgICAgY2FzZSAweDA1OgogICAgICAgICAgICAvKiBXZSBhcmUgaW4gdGhlIEFMRVJUIHN0YXRl
LiAqLwogICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDE0LCAweDIxKTsKICAgICAgICAg
ICAgc3RkOjp0aGlzX3RocmVhZDo6c2xlZXBfZm9yKHN0ZDo6Y2hyb25vOjptaWxsaXNlY29uZHMo
NSkpOwogICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDE0LCAweDAwKTsKICAgICAgICAg
ICAgYnJlYWs7CgogICAgICAgIGNhc2UgMHgwQToKICAgICAgICAgICAgLyogV2UgYXJlIGluIHRo
ZSBGREQgc3RhdGUuICovCiAgICAgICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMTQsIDB4MDAp
OwogICAgICAgICAgICBicmVhazsKCiAgICAgICAgZGVmYXVsdDoKICAgICAgICAgICAgdGhyb3cg
dWhkOjpydW50aW1lX2Vycm9yKAogICAgICAgICAgICAgICAgIlthZDkzNjFfZGV2aWNlX3RdIFtz
ZXRfY2xvY2tfcmF0ZToxXSBBRDkzNjEgaW4gdW5rbm93biBzdGF0ZSIpOwogICAgICAgICAgICBi
cmVhazsKICAgIH07CgogICAgLyogU3RvcmUgdGhlIGN1cnJlbnQgY2hhaW4gLyBhbnRlbm5hIHNl
bGVjdGlvbnMgc28gdGhhdCB3ZSBjYW4gcmVzdG9yZQogICAgICogdGhlbSBhdCB0aGUgZW5kIG9m
IHRoaXMgcm91dGluZTsgYWxsIGNoYWlucyB3aWxsIGJlIGVuYWJsZWQgZnJvbQogICAgICogd2l0
aGluIHNldHVwX3JhdGVzIGZvciBjYWxpYnJhdGlvbiBwdXJwb3Nlcy4gKi8KICAgIHVpbnQ4X3Qg
b3JpZ190eF9jaGFpbnMgPSBfcmVncy50eGZpbHQgJiAweEMwOwogICAgdWludDhfdCBvcmlnX3J4
X2NoYWlucyA9IF9yZWdzLnJ4ZmlsdCAmIDB4QzA7CgogICAgLyogQ2FsbCBpbnRvIHRoZSBjbG9j
ayBjb25maWd1cmF0aW9uIC8gc2V0dGluZ3MgZnVuY3Rpb24uIFRoaXMgaXMgd2hlcmUKICAgICAq
IGFsbCB0aGUgaGFyZCB3b3JrIGdldHMgZG9uZS4gKi8KICAgIGRvdWJsZSBVSERfVU5VU0VEKHJh
dGUpID0gX3NldHVwX3JhdGVzKHJlcV9yYXRlKTsKCiAgICBVSERfTE9HX1RSQUNFKCJBRDkzNlgi
LCAiW2FkOTM2MV9kZXZpY2VfdDo6c2V0X2Nsb2NrX3JhdGVdIHJhdGU9IiA8PCByYXRlKTsKCiAg
ICAvKiBUcmFuc2l0aW9uIHRvIHRoZSBBTEVSVCBzdGF0ZSBhbmQgY2FsaWJyYXRlIGV2ZXJ5dGhp
bmcuICovCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MDE1LCAweDA0KTsgLy8gZHVhbCBzeW50aCBt
b2RlLCBzeW50aCBlbiBjdHJsIGVuCiAgICBfaW9faWZhY2UtPnBva2U4KDB4MDE0LCAweDA1KTsg
Ly8gdXNlIFNQSSBmb3IgVFhOUlggY3RybCwgdG8gQUxFUlQsIFRYIG9uCiAgICBfaW9faWZhY2Ut
PnBva2U4KDB4MDEzLCAweDAxKTsgLy8gZW5hYmxlIEVOU00KICAgIHN0ZDo6dGhpc190aHJlYWQ6
OnNsZWVwX2ZvcihzdGQ6OmNocm9ubzo6bWlsbGlzZWNvbmRzKDEpKTsKCiAgICBfY2FsaWJyYXRl
X3N5bnRoX2NoYXJnZV9wdW1wcygpOwoKICAgIF90dW5lX2hlbHBlcihSWCwgX3J4X2ZyZXEpOwog
ICAgX3R1bmVfaGVscGVyKFRYLCBfdHhfZnJlcSk7CgogICAgX3Byb2dyYW1fbWl4ZXJfZ21fc3Vi
dGFibGUoKTsKICAgIF9wcm9ncmFtX2dhaW5fdGFibGUoKTsKICAgIF9zZXR1cF9nYWluX2NvbnRy
b2woZmFsc2UpOwogICAgX3JlcHJvZ3JhbV9nYWlucygpOwoKICAgIHNldF9id19maWx0ZXIoUlgs
IF9iYXNlYmFuZF9idyk7CiAgICBzZXRfYndfZmlsdGVyKFRYLCBfYmFzZWJhbmRfYncpOwoKICAg
IF9zZXR1cF9hZGMoKTsKCiAgICBfY2FsaWJyYXRlX2Jhc2ViYW5kX2RjX29mZnNldCgpOwogICAg
X2NhbGlicmF0ZV9yZl9kY19vZmZzZXQoKTsKICAgIF9jYWxpYnJhdGVfcnhfcXVhZHJhdHVyZSgp
OwoKICAgIC8qCiAgICAgKiBSeCBCQiBEQyBhbmQgSVEgdHJhY2tpbmcgYXJlIGJvdGggZGlzYWJs
ZWQgYnkgY2FsaWJyYXRpb24gYXQgdGhpcwogICAgICogcG9pbnQuIE9ubHkgaXNzdWUgY29tbWFu
ZHMgaWYgdHJhY2tpbmcgbmVlZHMgdG8gYmUgdHVybmVkIG9uLgogICAgICovCiAgICBpZiAoX3Vz
ZV9kY19vZmZzZXRfdHJhY2tpbmcpCiAgICAgICAgX2NvbmZpZ3VyZV9iYl9kY190cmFja2luZygp
OwogICAgaWYgKF91c2VfaXFfYmFsYW5jZV90cmFja2luZykKICAgICAgICBfY29uZmlndXJlX3J4
X2lxX3RyYWNraW5nKCk7CgogICAgX2xhc3RfcnhfY2FsX2ZyZXEgPSBfcnhfZnJlcTsKICAgIF9s
YXN0X3R4X2NhbF9mcmVxID0gX3R4X2ZyZXE7CgogICAgLy8gY2FscyBkb25lLCBzZXQgUFBPUlQg
Y29uZmlnCiAgICBzd2l0Y2ggKF9jbGllbnRfcGFyYW1zLT5nZXRfZGlnaXRhbF9pbnRlcmZhY2Vf
bW9kZSgpKSB7CiAgICAgICAgY2FzZSBBRDkzNjFfRERSX0ZERF9MVkNNT1M6IHsKICAgICAgICAg
ICAgX2lvX2lmYWNlLT5wb2tlOCgweDAxMiwgMHgwMik7CiAgICAgICAgfSBicmVhazsKCiAgICAg
ICAgY2FzZSBBRDkzNjFfRERSX0ZERF9MVkRTOiB7CiAgICAgICAgICAgIF9pb19pZmFjZS0+cG9r
ZTgoMHgwMTIsIDB4MTApOwogICAgICAgIH0gYnJlYWs7CgogICAgICAgIGRlZmF1bHQ6CiAgICAg
ICAgICAgIHRocm93IHVoZDo6cnVudGltZV9lcnJvcigiW2FkOTM2MV9kZXZpY2VfdF0gTk9UIElN
UExFTUVOVEVEIik7CiAgICB9CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MDEzLCAweDAxKTsgLy8g
U2V0IEVOU00gRkREIGJpdAogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAxNSwgMHgwNCk7IC8vIGR1
YWwgc3ludGggbW9kZSwgc3ludGggZW4gY3RybCBlbgoKICAgIC8qIEVuZCB0aGUgZnVuY3Rpb24g
aW4gdGhlIHNhbWUgc3RhdGUgYXMgdGhlIGVudHJ5IHN0YXRlLiAqLwogICAgc3dpdGNoIChjdXJy
ZW50X3N0YXRlKSB7CiAgICAgICAgY2FzZSAweDA1OgogICAgICAgICAgICAvKiBXZSBhcmUgYWxy
ZWFkeSBpbiBBTEVSVC4gKi8KICAgICAgICAgICAgYnJlYWs7CgogICAgICAgIGNhc2UgMHgwQToK
ICAgICAgICAgICAgLyogVHJhbnNpdGlvbiBiYWNrIHRvIEZERCwgYW5kIHJlc3RvcmUgdGhlIG9y
aWdpbmFsIGFudGVubmEKICAgICAgICAgICAgICogLyBjaGFpbiBzZWxlY3Rpb25zLiAqLwogICAg
ICAgICAgICBfcmVncy50eGZpbHQgPSAoX3JlZ3MudHhmaWx0ICYgMHgzRikgfCBvcmlnX3R4X2No
YWluczsKICAgICAgICAgICAgX3JlZ3MucnhmaWx0ID0gKF9yZWdzLnJ4ZmlsdCAmIDB4M0YpIHwg
b3JpZ19yeF9jaGFpbnM7CgogICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDAyLCBfcmVn
cy50eGZpbHQpOwogICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDAzLCBfcmVncy5yeGZp
bHQpOwogICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDE0LCAweDIxKTsKICAgICAgICAg
ICAgYnJlYWs7CgogICAgICAgIGRlZmF1bHQ6CiAgICAgICAgICAgIHRocm93IHVoZDo6cnVudGlt
ZV9lcnJvcigKICAgICAgICAgICAgICAgICJbYWQ5MzYxX2RldmljZV90XSBbc2V0X2Nsb2NrX3Jh
dGU6Ml0gQUQ5MzYxIGluIHVua25vd24gc3RhdGUiKTsKICAgICAgICAgICAgYnJlYWs7CiAgICB9
OwoKICAgIHJldHVybiBnZXRfY2xvY2tfcmF0ZSgpOwp9CgovKiBUaGlzIGZ1bmN0aW9uIHJldHVy
bnMgdGhlIFJYIC8gVFggcmF0ZSBiZXR3ZWVuIEFEOTM2MSBhbmQgdGhlIEZQR0EuCiAqLwpkb3Vi
bGUgYWQ5MzYxX2RldmljZV90OjpnZXRfY2xvY2tfcmF0ZSgpIGNvbnN0CnsKICAgIHJldHVybiBf
YmFzZWJhbmRfYnc7Cn0KLyogU2V0IHdoaWNoIG9mIHRoZSBmb3VyIFRYIC8gUlggY2hhaW5zIHBy
b3ZpZGVkIGJ5IEFEOTM2MSBhcmUgYWN0aXZlLgogKgogKiBBRDkzNjEgcHJvdmlkZXMgdHdvIHNl
dHMgb2YgY2hhaW5zLCBTaWRlIEEgYW5kIFNpZGUgQi4gRWFjaCBzaWRlCiAqIHByb3ZpZGVzIG9u
ZSBUWCBhbnRlbm5hLCBhbmQgb25lIFJYIGFudGVubmEuIFRoZSBCMjAwIG1haW50YWlucyB0aGUg
VVNSUAogKiBzdGFuZGFyZCBvZiBwcm92aWRpbmcgb25lIGFudGVubmEgY29ubmVjdGlvbiB0aGF0
IGlzIGJvdGggVFggJiBSWCwgYW5kCiAqIG9uZSB0aGF0IGlzIFJYLW9ubHkgLSBmb3IgZWFjaCBj
aGFpbi4gVGh1cywgdGhlIHBvc3NpYmxlIGFudGVubmEgYW5kCiAqIGNoYWluIHNlbGVjdGlvbnMg
YXJlOgogKgogKiAgQjIwMCBBbnRlbm5hICAgIEFEOTM2MSBTaWRlICAgICAgIEFEOTM2MSBDaGFp
bgogKiAgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQogKiAgVFggLyBSWDEgICAgICAgIFNpZGUgQSAgICAgICAgICAgICAg
VFgxICh3aGVuIHN3aXRjaGVkIHRvIFRYKQogKiAgVFggLyBSWDEgICAgICAgIFNpZGUgQSAgICAg
ICAgICAgICAgUlgxICh3aGVuIHN3aXRjaGVkIHRvIFJYKQogKiAgUlgxICAgICAgICAgICAgIFNp
ZGUgQSAgICAgICAgICAgICAgUlgxCiAqCiAqICBUWCAvIFJYMiAgICAgICAgU2lkZSBCICAgICAg
ICAgICAgICBUWDIgKHdoZW4gc3dpdGNoZWQgdG8gVFgpCiAqICBUWCAvIFJYMiAgICAgICAgU2lk
ZSBCICAgICAgICAgICAgICBSWDIgKHdoZW4gc3dpdGNoZWQgdG8gUlgpCiAqICBSWDIgICAgICAg
ICAgICAgU2lkZSBCICAgICAgICAgICAgICBSWDIKICovCnZvaWQgYWQ5MzYxX2RldmljZV90Ojpz
ZXRfYWN0aXZlX2NoYWlucyhib29sIHR4MSwgYm9vbCB0eDIsIGJvb2wgcngxLCBib29sIHJ4MikK
ewogICAgc3RkOjpsb2NrX2d1YXJkPHN0ZDo6cmVjdXJzaXZlX211dGV4PiBsb2NrKF9tdXRleCk7
CgogICAgLyogQ2xlYXIgb3V0IHRoZSBjdXJyZW50IGFjdGl2ZSBjaGFpbiBzZXR0aW5ncy4gKi8K
ICAgIF9yZWdzLnR4ZmlsdCA9IF9yZWdzLnR4ZmlsdCAmIDB4M0Y7CiAgICBfcmVncy5yeGZpbHQg
PSBfcmVncy5yeGZpbHQgJiAweDNGOwoKICAgIC8qIFR1cm4gb24gdGhlIGRpZmZlcmVudCBjaGFp
bnMgYmFzZWQgb24gdGhlIHBhc3NlZCBwYXJhbWV0ZXJzLiAqLwogICAgaWYgKHR4MSkgewogICAg
ICAgIF9yZWdzLnR4ZmlsdCA9IF9yZWdzLnR4ZmlsdCB8IDB4NDA7CiAgICB9CiAgICBpZiAodHgy
KSB7CiAgICAgICAgX3JlZ3MudHhmaWx0ID0gX3JlZ3MudHhmaWx0IHwgMHg4MDsKICAgIH0KICAg
IGlmIChyeDEpIHsKICAgICAgICBfcmVncy5yeGZpbHQgPSBfcmVncy5yeGZpbHQgfCAweDQwOwog
ICAgfQogICAgaWYgKHJ4MikgewogICAgICAgIF9yZWdzLnJ4ZmlsdCA9IF9yZWdzLnJ4ZmlsdCB8
IDB4ODA7CiAgICB9CgogICAgLyogQ2hlY2sgZm9yIEZERCBzdGF0ZSAqLwogICAgdWludDhfdCBz
ZXRfYmFja190b19mZGQgPSAwOwogICAgdWludDhfdCBlbnNtX3N0YXRlICAgICAgPSBfaW9faWZh
Y2UtPnBlZWs4KDB4MDE3KSAmIDB4MEY7CiAgICBpZiAoZW5zbV9zdGF0ZSA9PSAweEEpIC8vIEZE
RAogICAgewogICAgICAgIC8qIFB1dCBpbnRvIEFMRVJUIHN0YXRlICh2aWEgdGhlIEZERCBmbHVz
aCBzdGF0ZSkuICovCiAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDAxNCwgMHgwMSk7CiAgICAg
ICAgc2V0X2JhY2tfdG9fZmRkID0gMTsKICAgIH0KCiAgICAvKiBXYWl0IGZvciBGREQgZmx1c2gg
c3RhdGUgdG8gY29tcGxldGUgKGlmIG5lY2Vzc2FyeSkgKi8KICAgIHdoaWxlIChlbnNtX3N0YXRl
ID09IDB4QSB8fCBlbnNtX3N0YXRlID09IDB4QikKICAgICAgICBlbnNtX3N0YXRlID0gX2lvX2lm
YWNlLT5wZWVrOCgweDAxNykgJiAweDBGOwoKICAgIC8qIFR1cm4gb24gLyBvZmYgdGhlIGNoYWlu
cy4gKi8KICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMDIsIF9yZWdzLnR4ZmlsdCk7CiAgICBfaW9f
aWZhY2UtPnBva2U4KDB4MDAzLCBfcmVncy5yeGZpbHQpOwoKICAgIC8qCiAgICAgKiBMYXN0IHVu
Y29uZGl0aW9uYWwgVHggY2FsaWJyYXRpb24gcG9pbnQuIEFueSBsYXRlciBUeCBjYWxpYnJhdGlv
biB3aWxsCiAgICAgKiByZXF1aXJlIHVzZXIgaW50ZXJ2ZW50aW9uIChjdXJyZW50bHkgdHJpZ2dl
cmVkIGJ5IHR1bmluZyBkaWZmZXJlbmNlIHRoYXQKICAgICAqIGlzID4gMTAwIE1IeikuIExhdGUg
Y2FsaWJyYXRpb24gcHJvdmlkZXMgYmV0dGVyIHBlcmZvcm1hbmNlLgogICAgICovCiAgICBpZiAo
dHgxIHwgdHgyKQogICAgICAgIF9jYWxpYnJhdGVfdHhfcXVhZHJhdHVyZSgpOwoKICAgIC8qIFB1
dCBiYWNrIGludG8gRkREIHN0YXRlIGlmIG5lY2Vzc2FyeSAqLwogICAgaWYgKHNldF9iYWNrX3Rv
X2ZkZCkKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDE0LCAweDIxKTsKfQoKLyogU2V0dXAg
VGltaW5nIG1vZGUgZGVwZW5kaW5nIG9uIGFjdGl2ZSBjaGFubmVscy4KICoKICogTFZEUyBpbnRl
cmZhY2UgY2FuIGhhdmUgdHdvIHRpbWluZyBtb2RlcyAtIDFSMVQgYW5kIDJSMlQKICovCnZvaWQg
YWQ5MzYxX2RldmljZV90OjpzZXRfdGltaW5nX21vZGUoY29uc3QgYWQ5MzYxX2RldmljZV90Ojp0
aW1pbmdfbW9kZV90IHRpbWluZ19tb2RlKQp7CiAgICBzd2l0Y2ggKF9jbGllbnRfcGFyYW1zLT5n
ZXRfZGlnaXRhbF9pbnRlcmZhY2VfbW9kZSgpKSB7CiAgICAgICAgY2FzZSBBRDkzNjFfRERSX0ZE
RF9MVkNNT1M6IHsKICAgICAgICAgICAgc3dpdGNoICh0aW1pbmdfbW9kZSkgewogICAgICAgICAg
ICAgICAgY2FzZSBUSU1JTkdfTU9ERV8xUjFUOiB7CiAgICAgICAgICAgICAgICAgICAgX2lvX2lm
YWNlLT5wb2tlOCgweDAxMCwKICAgICAgICAgICAgICAgICAgICAgICAgMHhjOCk7IC8vIFN3YXAg
SSZRIG9uIFR4LCBTd2FwIEkmUSBvbiBSeCwgVG9nZ2xlIGZyYW1lIHN5bmMgbW9kZQogICAgICAg
ICAgICAgICAgICAgIGJyZWFrOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAgICAgY2Fz
ZSBUSU1JTkdfTU9ERV8yUjJUOiB7CiAgICAgICAgICAgICAgICAgICAgdGhyb3cgdWhkOjpydW50
aW1lX2Vycm9yKCJbYWQ5MzYxX2RldmljZV90XSBbc2V0X3RpbWluZ19tb2RlXSAyUjJUICIKICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInRpbWluZyBtb2RlIG5v
dCBzdXBwb3J0ZWQgZm9yIENNT1MiKTsKICAgICAgICAgICAgICAgICAgICBicmVhazsKICAgICAg
ICAgICAgICAgIH0KICAgICAgICAgICAgICAgIGRlZmF1bHQ6CiAgICAgICAgICAgICAgICAgICAg
VUhEX1RIUk9XX0lOVkFMSURfQ09ERV9QQVRIKCk7CiAgICAgICAgICAgIH0KICAgICAgICAgICAg
YnJlYWs7CiAgICAgICAgfQogICAgICAgIGNhc2UgQUQ5MzYxX0REUl9GRERfTFZEUzogewogICAg
ICAgICAgICBzd2l0Y2ggKHRpbWluZ19tb2RlKSB7CiAgICAgICAgICAgICAgICBjYXNlIFRJTUlO
R19NT0RFXzFSMVQ6IHsKICAgICAgICAgICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDEw
LCAweGM4KTsgLy8gU3dhcCBJJlEgb24gVHgsIFN3YXAgSSZRIG9uIFJ4LAogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyBUb2dnbGUgZnJhbWUgc3lu
YyBtb2RlLCAxUjFUIHRpbWluZy4KICAgICAgICAgICAgICAgICAgICBicmVhazsKICAgICAgICAg
ICAgICAgIH0KICAgICAgICAgICAgICAgIGNhc2UgVElNSU5HX01PREVfMlIyVDogewogICAgICAg
ICAgICAgICAgICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMTAsIDB4Y2MpOyAvLyBTd2FwIEkmUSBv
biBUeCwgU3dhcCBJJlEgb24gUngsCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIC8vIFRvZ2dsZSBmcmFtZSBzeW5jIG1vZGUsIDJSMlQgdGltaW5nLgog
ICAgICAgICAgICAgICAgICAgIGJyZWFrOwogICAgICAgICAgICAgICAgfQogICAgICAgICAgICAg
ICAgZGVmYXVsdDoKICAgICAgICAgICAgICAgICAgICBVSERfVEhST1dfSU5WQUxJRF9DT0RFX1BB
VEgoKTsKICAgICAgICAgICAgfQogICAgICAgICAgICBicmVhazsKICAgICAgICB9CiAgICAgICAg
ZGVmYXVsdDoKICAgICAgICAgICAgdGhyb3cgdWhkOjpydW50aW1lX2Vycm9yKCJbYWQ5MzYxX2Rl
dmljZV90XSBOT1QgSU1QTEVNRU5URUQiKTsKICAgIH0KfQoKLyogVHVuZSB0aGUgUlggb3IgVFgg
ZnJlcXVlbmN5LgogKgogKiBUaGlzIGlzIHRoZSBwdWJsaWNseS1hY2Nlc3NpYmxlIHR1bmUgZnVu
Y3Rpb24uIEl0IG1ha2VzIHN1cmUgdGhlIHR1bmUKICogaXNuJ3QgYSByZWR1bmRhbnQgcmVxdWVz
dCwgYW5kIGlmIG5vdCwgcGFzc2VzIGl0IG9uIHRvIHRoZSBjbGFzcydzCiAqIGludGVybmFsIHR1
bmUgZnVuY3Rpb24uCiAqCiAqIEFmdGVyIHR1bmluZywgaXQgcnVucyBhbnkgYXBwcm9wcmlhdGUg
Y2FsaWJyYXRpb25zLiAqLwpkb3VibGUgYWQ5MzYxX2RldmljZV90Ojp0dW5lKGRpcmVjdGlvbl90
IGRpcmVjdGlvbiwgY29uc3QgZG91YmxlIHZhbHVlKQp7CiAgICBzdGQ6OmxvY2tfZ3VhcmQ8c3Rk
OjpyZWN1cnNpdmVfbXV0ZXg+IGxvY2soX211dGV4KTsKICAgIGRvdWJsZSBsYXN0X2NhbF9mcmVx
OwoKICAgIGlmIChkaXJlY3Rpb24gPT0gUlgpIHsKICAgICAgICBpZiAoZnJlcV9pc19uZWFybHlf
ZXF1YWwodmFsdWUsIF9yZXFfcnhfZnJlcSkpIHsKICAgICAgICAgICAgcmV0dXJuIF9yeF9mcmVx
OwogICAgICAgIH0KICAgICAgICBsYXN0X2NhbF9mcmVxID0gX2xhc3RfcnhfY2FsX2ZyZXE7CiAg
ICB9IGVsc2UgaWYgKGRpcmVjdGlvbiA9PSBUWCkgewogICAgICAgIGlmIChmcmVxX2lzX25lYXJs
eV9lcXVhbCh2YWx1ZSwgX3JlcV90eF9mcmVxKSkgewogICAgICAgICAgICByZXR1cm4gX3R4X2Zy
ZXE7CiAgICAgICAgfQogICAgICAgIGxhc3RfY2FsX2ZyZXEgPSBfbGFzdF90eF9jYWxfZnJlcTsK
ICAgIH0gZWxzZSB7CiAgICAgICAgdGhyb3cgdWhkOjpydW50aW1lX2Vycm9yKCJbYWQ5MzYxX2Rl
dmljZV90XSBbdHVuZV0gSU5WQUxJRF9DT0RFX1BBVEgiKTsKICAgIH0KCiAgICAvKiBJZiB3ZSBh
cmVuJ3QgYWxyZWFkeSBpbiB0aGUgQUxFUlQgc3RhdGUsIHdlIHdpbGwgbmVlZCB0byByZXR1cm4g
dG8KICAgICAqIHRoZSBGREQgc3RhdGUgYWZ0ZXIgdHVuaW5nLiAqLwogICAgaW50IG5vdF9pbl9h
bGVydCA9IDA7CiAgICBpZiAoKF9pb19pZmFjZS0+cGVlazgoMHgwMTcpICYgMHgwRikgIT0gNSkg
ewogICAgICAgIC8qIEZvcmNlIHRoZSBkZXZpY2UgaW50byB0aGUgQUxFUlQgc3RhdGUuICovCiAg
ICAgICAgbm90X2luX2FsZXJ0ID0gMTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDE0LCAw
eDAxKTsKICAgIH0KCiAgICAvKiBUdW5lIHRoZSBSRiBWQ08hICovCiAgICBkb3VibGUgdHVuZV9m
cmVxID0gX3R1bmVfaGVscGVyKGRpcmVjdGlvbiwgdmFsdWUpOwoKICAgIC8qIFJ1biBhbnkgbmVj
ZXNzYXJ5IGNhbGlicmF0aW9ucyAvIHNldHVwcyAqLwogICAgaWYgKGRpcmVjdGlvbiA9PSBSWCkg
ewogICAgICAgIF9wcm9ncmFtX2dhaW5fdGFibGUoKTsKICAgIH0KCiAgICAvKiBVcGRhdGUgdGhl
IGdhaW4gc2V0dGluZ3MuICovCiAgICBfcmVwcm9ncmFtX2dhaW5zKCk7CgogICAgLyoKICAgICAq
IE9ubHkgcnVuIHRoZSBmb2xsb3dpbmcgY2FsaWJyYXRpb25zIGlmIHdlIGFyZSBtb3JlIHRoYW4g
MTAwTUh6IGF3YXkKICAgICAqIGZyb20gdGhlIHByZXZpb3VzIFR4IG9yIFJ4IGNhbGlicmF0aW9u
IHBvaW50LiBMZWF2ZSBvdXQgc2luZ2xlIHNob3QKICAgICAqIFJ4IHF1YWRyYXR1cmUgdW5sZXNz
IFJ4IHF1YWQtY2FsIGlzIGRpc2FibGVkLgogICAgICovCiAgICBpZiAoc3RkOjphYnMobGFzdF9j
YWxfZnJlcSAtIHR1bmVfZnJlcSkgPiBBRDkzNjFfQ0FMX1ZBTElEX1dJTkRPVykgewogICAgICAg
IC8qIFJ1biB0aGUgY2FsaWJyYXRpb24gYWxnb3JpdGhtcy4gKi8KICAgICAgICBpZiAoZGlyZWN0
aW9uID09IFJYKSB7CiAgICAgICAgICAgIF9jYWxpYnJhdGVfcmZfZGNfb2Zmc2V0KCk7CiAgICAg
ICAgICAgIGlmICghX3VzZV9pcV9iYWxhbmNlX3RyYWNraW5nKQogICAgICAgICAgICAgICAgX2Nh
bGlicmF0ZV9yeF9xdWFkcmF0dXJlKCk7CiAgICAgICAgICAgIGlmIChfdXNlX2RjX29mZnNldF90
cmFja2luZykKICAgICAgICAgICAgICAgIF9jb25maWd1cmVfYmJfZGNfdHJhY2tpbmcoKTsKCiAg
ICAgICAgICAgIF9sYXN0X3J4X2NhbF9mcmVxID0gdHVuZV9mcmVxOwogICAgICAgIH0gZWxzZSB7
CiAgICAgICAgICAgIF9jYWxpYnJhdGVfdHhfcXVhZHJhdHVyZSgpOwogICAgICAgICAgICBfbGFz
dF90eF9jYWxfZnJlcSA9IHR1bmVfZnJlcTsKICAgICAgICB9CgogICAgICAgIC8qIFJ4IElRIHRy
YWNraW5nIGNhbiBiZSBkaXNhYmxlZCBvbiBSeCBvciBUeCByZS1jYWxpYnJhdGlvbiAqLwogICAg
ICAgIGlmIChfdXNlX2lxX2JhbGFuY2VfdHJhY2tpbmcpCiAgICAgICAgICAgIF9jb25maWd1cmVf
cnhfaXFfdHJhY2tpbmcoKTsKICAgIH0KCiAgICAvKiBJZiB3ZSB3ZXJlIGluIHRoZSBGREQgc3Rh
dGUsIHJldHVybiBpdCBub3cuICovCiAgICBpZiAobm90X2luX2FsZXJ0KSB7CiAgICAgICAgX2lv
X2lmYWNlLT5wb2tlOCgweDAxNCwgMHgyMSk7CiAgICB9CgogICAgcmV0dXJuIGdldF9mcmVxKGRp
cmVjdGlvbik7Cn0KCi8qIEdldCB0aGUgY3VycmVudCBSWCBvciBUWCBmcmVxdWVuY3kuICovCmRv
dWJsZSBhZDkzNjFfZGV2aWNlX3Q6OmdldF9mcmVxKGRpcmVjdGlvbl90IGRpcmVjdGlvbikKewog
ICAgc3RkOjpsb2NrX2d1YXJkPHN0ZDo6cmVjdXJzaXZlX211dGV4PiBsb2NrKF9tdXRleCk7Cgog
ICAgaWYgKGRpcmVjdGlvbiA9PSBSWCkKICAgICAgICByZXR1cm4gX3J4X2ZyZXE7CiAgICBlbHNl
CiAgICAgICAgcmV0dXJuIF90eF9mcmVxOwp9CgovKiBTZXQgdGhlIGdhaW4gb2YgUlgxLCBSWDIs
IFRYMSwgb3IgVFgyLgogKgogKiBOb3RlIHRoYXQgdGhlICd2YWx1ZScgcGFzc2VkIHRvIHRoaXMg
ZnVuY3Rpb24gaXMgdGhlIGdhaW4gaW5kZXgKICogZm9yIFJYLiBBbHNvIG5vdGUgdGhhdCB0aGUg
UlggY2hhaW5zIGFyZSBkb25lIGluIHRlcm1zIG9mIGdhaW4sIGFuZAogKiB0aGUgVFggY2hhaW5z
ICBhcmUgZG9uZSBpbiB0ZXJtcyBvZiBhdHRlbnVhdGlvbi4gKi8KZG91YmxlIGFkOTM2MV9kZXZp
Y2VfdDo6c2V0X2dhaW4oZGlyZWN0aW9uX3QgZGlyZWN0aW9uLCBjaGFpbl90IGNoYWluLCBjb25z
dCBkb3VibGUgdmFsdWUpCnsKICAgIHN0ZDo6bG9ja19ndWFyZDxzdGQ6OnJlY3Vyc2l2ZV9tdXRl
eD4gbG9jayhfbXV0ZXgpOwoKICAgIGlmIChkaXJlY3Rpb24gPT0gUlgpIHsKICAgICAgICBpbnQg
Z2Fpbl9pbmRleCA9IHN0YXRpY19jYXN0PGludD4odmFsdWUpOwoKICAgICAgICAvKiBDbGlwIHRo
ZSBnYWluIHZhbHVlcyB0byB0aGUgcHJvcGVyIG1pbi9tYXggZ2FpbiB2YWx1ZXMuICovCiAgICAg
ICAgaWYgKGdhaW5faW5kZXggPiA3NikKICAgICAgICAgICAgZ2Fpbl9pbmRleCA9IDc2OwogICAg
ICAgIGlmIChnYWluX2luZGV4IDwgMCkKICAgICAgICAgICAgZ2Fpbl9pbmRleCA9IDA7CgogICAg
ICAgIGlmIChjaGFpbiA9PSBDSEFJTl8xKSB7CiAgICAgICAgICAgIF9yeDFfZ2FpbiA9IHZhbHVl
OwogICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MTA5LCBnYWluX2luZGV4KTsKICAgICAg
ICB9IGVsc2UgewogICAgICAgICAgICBfcngyX2dhaW4gPSB2YWx1ZTsKICAgICAgICAgICAgX2lv
X2lmYWNlLT5wb2tlOCgweDEwYywgZ2Fpbl9pbmRleCk7CiAgICAgICAgfQoKICAgICAgICByZXR1
cm4gZ2Fpbl9pbmRleDsKICAgIH0gZWxzZSB7CiAgICAgICAgLyogU2V0dGluZyB0aGUgYmVsb3cg
Yml0cyBjYXVzZXMgYSBjaGFuZ2UgaW4gdGhlIFRYIGF0dGVudWF0aW9uIHdvcmQKICAgICAgICAg
KiB0byBpbW1lZGlhdGVseSB0YWtlIGVmZmVjdC4gKi8KICAgICAgICBfaW9faWZhY2UtPnBva2U4
KDB4MDc3LCAweDQwKTsKICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDdjLCAweDQwKTsKCiAg
ICAgICAgLyogRWFjaCBnYWluIHN0ZXAgaXMgLTAuMjVkQi4gQ2FsY3VsYXRlIHRoZSBhdHRlbnVh
dGlvbiBuZWNlc3NhcnkKICAgICAgICAgKiBmb3IgdGhlIHJlcXVlc3RlZCBnYWluLCBjb252ZXJ0
IGl0IGludG8gZ2FpbiBzdGVwcywgdGhlbiB3cml0ZQogICAgICAgICAqIHRoZSBhdHRlbnVhdGlv
biB3b3JkLiBNYXggZ2FpbiAoc28gemVybyBhdHRlbnVhdGlvbikgaXMgODkuNzUuCiAgICAgICAg
ICogVWdseSB2YWx1ZXMgd2lsbCBiZSB3cml0dGVuIHRvIHRoZSBhdHRlbnVhdGlvbiByZWdpc3Rl
cnMgaWYKICAgICAgICAgKiAidmFsdWUiIGlzIG91dCBvZiBib3VuZHMsIHNvIHJhbmdlIGNoZWNr
aW5nIG11c3QgYmUgcGVyZm9ybWVkCiAgICAgICAgICogb3V0c2lkZSB0aGlzIGZ1bmN0aW9uLgog
ICAgICAgICAqLwogICAgICAgIGRvdWJsZSBhdHRlbiAgICAgID0gQUQ5MzYxX01BWF9HQUlOIC0g
dmFsdWU7CiAgICAgICAgdWludDMyX3QgYXR0ZW5yZWcgPSB1aW50MzJfdChhdHRlbiAqIDQpOwog
ICAgICAgIGlmIChjaGFpbiA9PSBDSEFJTl8xKSB7CiAgICAgICAgICAgIF90eDFfZ2FpbiA9IHZh
bHVlOwogICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDczLCBhdHRlbnJlZyAmIDB4RkYp
OwogICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDc0LCAoYXR0ZW5yZWcgPj4gOCkgJiAw
eDAxKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICBfdHgyX2dhaW4gPSB2YWx1ZTsKICAg
ICAgICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDA3NSwgYXR0ZW5yZWcgJiAweEZGKTsKICAgICAg
ICAgICAgX2lvX2lmYWNlLT5wb2tlOCgweDA3NiwgKGF0dGVucmVnID4+IDgpICYgMHgwMSk7CiAg
ICAgICAgfQogICAgICAgIHJldHVybiBBRDkzNjFfTUFYX0dBSU4gLSAoKGRvdWJsZSkoYXR0ZW5y
ZWcpIC8gNCk7CiAgICB9Cn0KCnZvaWQgYWQ5MzYxX2RldmljZV90OjpvdXRwdXRfdGVzdF90b25l
KCkgLy8gT24gUkYgc2lkZSEKewogICAgc3RkOjpsb2NrX2d1YXJkPHN0ZDo6cmVjdXJzaXZlX211
dGV4PiBsb2NrKF9tdXRleCk7CiAgICAvKiBPdXRwdXQgYSA0ODAga0h6IHRvbmUgYXQgODAwIE1I
eiAqLwogICAgX2lvX2lmYWNlLT5wb2tlOCgweDNGNCwgMHgwQik7CiAgICBfaW9faWZhY2UtPnBv
a2U4KDB4M0ZDLCAweEZGKTsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgzRkQsIDB4RkYpOwogICAg
X2lvX2lmYWNlLT5wb2tlOCgweDNGRSwgMHgzRik7Cn0KCnZvaWQgYWQ5MzYxX2RldmljZV90Ojpk
aWdpdGFsX3Rlc3RfdG9uZShib29sIGVuYikgLy8gRGlnaXRhbCBvdXRwdXQKewogICAgc3RkOjps
b2NrX2d1YXJkPHN0ZDo6cmVjdXJzaXZlX211dGV4PiBsb2NrKF9tdXRleCk7CiAgICBfaW9faWZh
Y2UtPnBva2U4KDB4M0Y0LCAweDAyIHwgKGVuYiA/IDB4MDEgOiAweDAwKSk7Cn0KCnZvaWQgYWQ5
MzYxX2RldmljZV90OjpkYXRhX3BvcnRfbG9vcGJhY2soY29uc3QgYm9vbCBsb29wYmFja19lbmFi
bGVkKQp7CiAgICBzdGQ6OmxvY2tfZ3VhcmQ8c3RkOjpyZWN1cnNpdmVfbXV0ZXg+IGxvY2soX211
dGV4KTsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgzRjUsIChsb29wYmFja19lbmFibGVkID8gMHgw
MSA6IDB4MDApKTsKfQoKLyogUmVhZCBiYWNrIHRoZSBpbnRlcm5hbCBSU1NJIG1lYXN1cmVtZW50
IGRhdGEuIFRoZSByZXN1bHQgaXMgaW4gZEIKICogYnV0IG5vdCBpbiBhYnNvbHV0ZSB1bml0cy4g
SWYgYWJzb2x1dGUgdW5pdHMgYXJlIHJlcXVpcmVkCiAqIGEgYmVuY2ggY2FsaWJyYXRpb24gc2hv
dWxkIGJlIGRvbmUuCiAqIC0wLjI1ZEIgLyBiaXQgOWJpdCByZXNvbHV0aW9uLiovCmRvdWJsZSBh
ZDkzNjFfZGV2aWNlX3Q6OmdldF9yc3NpKGNoYWluX3QgY2hhaW4pCnsKICAgIHVpbnQzMl90IHJl
Z19yc3NpICAgPSAwOwogICAgdWludDhfdCBsc2JfYml0X3BvcyA9IDA7CiAgICBpZiAoY2hhaW4g
PT0gQ0hBSU5fMSkgewogICAgICAgIHJlZ19yc3NpICAgID0gMHgxQTc7CiAgICAgICAgbHNiX2Jp
dF9wb3MgPSAwOwogICAgfSBlbHNlIHsKICAgICAgICByZWdfcnNzaSAgICA9IDB4MUE5OwogICAg
ICAgIGxzYl9iaXRfcG9zID0gMTsKICAgIH0KICAgIHVpbnQ4X3QgbXNicyA9IF9pb19pZmFjZS0+
cGVlazgocmVnX3Jzc2kpOwogICAgdWludDhfdCBsc2IgID0gKChfaW9faWZhY2UtPnBlZWs4KDB4
MUFCKSkgPj4gbHNiX2JpdF9wb3MpICYgMHgwMTsKICAgIHVpbnQxNl90IHZhbCA9ICgobXNicyA8
PCAxKSB8IGxzYik7CiAgICBkb3VibGUgcnNzaSA9CiAgICAgICAgKC0wLjI1ZiAqICgoZG91Ymxl
KXZhbCkpOyAvLy0wLjI1ZEIvbHNiIChTZWUgR2FpbiBDb250cm9sIFVzZXJzIEd1aWRlIHAuIDI1
KQogICAgcmV0dXJuIHJzc2k7Cn0KCi8qCiAqIFJldHVybnMgdGhlIHJlYWRpbmcgb2YgdGhlIGlu
dGVybmFsIHRlbXBlcmF0dXJlIHNlbnNvci4KICogT25lIHBvaW50IGNhbGlicmF0aW9uIG9mIHRo
ZSBzZW5zb3Igd2FzIGRvbmUgYWNjb3JkaW5nIHRvIGRhdGFzaGVldAogKiBsZWFkaW5nIHRvIHRo
ZSBnaXZlbiBkZWZhdWx0IGNvbnN0YW50IGNvcnJlY3Rpb24gZmFjdG9yLgogKi8KZG91YmxlIGFk
OTM2MV9kZXZpY2VfdDo6X2dldF90ZW1wZXJhdHVyZShjb25zdCBkb3VibGUgY2FsX29mZnNldCwg
Y29uc3QgZG91YmxlIHRpbWVvdXQpCnsKICAgIC8vIHNldCAweDAxRFswXSB0byAxIHRvIGRpc2Fi
bGUgQXV4QURDIEdQSU8gcmVhZGluZwogICAgdWludDhfdCB0bXAgPSAwOwogICAgdG1wICAgICAg
ICAgPSBfaW9faWZhY2UtPnBlZWs4KDB4MDFEKTsKICAgIF9pb19pZmFjZS0+cG9rZTgoMHgwMUQs
ICh0bXAgfCAweDAxKSk7CiAgICBfaW9faWZhY2UtPnBva2U4KDB4MDBCLCAwKTsgLy8gc2V0IG9m
ZnNldCB0byAwCgogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAwQywgMHgwMSk7IC8vIHN0YXJ0IHJl
YWRpbmcsIGNsZWFycyBiaXQgMHgwMENbMV0KICAgIGF1dG8gZW5kX3RpbWUgPSBzdGQ6OmNocm9u
bzo6c3RlYWR5X2Nsb2NrOjpub3coKQogICAgICAgICAgICAgICAgICAgICsgc3RkOjpjaHJvbm86
Om1pbGxpc2Vjb25kcyhpbnQ2NF90KHRpbWVvdXQgKiAxMDAwKSk7CiAgICAvLyB3YWl0IGZvciB2
YWxpZCBkYXRhICh0b2dnbGUgb2YgYml0IDEgaW4gMHgwMEMpCiAgICB3aGlsZSAoKChfaW9faWZh
Y2UtPnBlZWs4KDB4MDBDKSA+PiAxKSAmIDB4MDEpID09IDApIHsKICAgICAgICBzdGQ6OnRoaXNf
dGhyZWFkOjpzbGVlcF9mb3Ioc3RkOjpjaHJvbm86Om1pY3Jvc2Vjb25kcygxMDApKTsKICAgICAg
ICBpZiAoc3RkOjpjaHJvbm86OnN0ZWFkeV9jbG9jazo6bm93KCkgPiBlbmRfdGltZSkgewogICAg
ICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAgICAgICAgICAiW2FkOTM2
MV9kZXZpY2VfdF0gdGltZW91dCB3aGlsZSByZWFkaW5nIHRlbXBlcmF0dXJlIik7CiAgICAgICAg
fQogICAgfQogICAgX2lvX2lmYWNlLT5wb2tlOCgweDAwQywgMHgwMCk7IC8vIGNsZWFyIHJlYWQg
ZmxhZwoKICAgIHVpbnQ4X3QgdGVtcCAgICA9IF9pb19pZmFjZS0+cGVlazgoMHgwMEUpOyAvLyBy
ZWFkIHRlbXBlcmF0dXJlLgogICAgZG91YmxlIHRtcF90ZW1wID0gdGVtcCAvIDEuMTQwZjsgLy8g
YWNjb3JkaW5nIHRvIEFESSBkcml2ZXIKICAgIHRtcF90ZW1wICAgICAgICA9IHRtcF90ZW1wICsg
Y2FsX29mZnNldDsgLy8gQ29uc3RhbnQgb2Zmc2V0IGFjcXVpcmVkIGJ5IG9uZSBwb2ludAogICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIGNhbGlicmF0aW9uLgoKICAgIHJl
dHVybiB0bXBfdGVtcDsKfQoKZG91YmxlIGFkOTM2MV9kZXZpY2VfdDo6Z2V0X2F2ZXJhZ2VfdGVt
cGVyYXR1cmUoCiAgICBjb25zdCBkb3VibGUgY2FsX29mZnNldCwgY29uc3Qgc2l6ZV90IG51bV9z
YW1wbGVzKQp7CiAgICBkb3VibGUgZF90ZW1wID0gMDsKICAgIGZvciAoc2l6ZV90IGkgPSAwOyBp
IDwgbnVtX3NhbXBsZXM7IGkrKykgewogICAgICAgIGRvdWJsZSB0bXBfdGVtcCA9IF9nZXRfdGVt
cGVyYXR1cmUoY2FsX29mZnNldCk7CiAgICAgICAgZF90ZW1wICs9ICh0bXBfdGVtcCAvIG51bV9z
YW1wbGVzKTsKICAgIH0KICAgIHJldHVybiBkX3RlbXA7Cn0KCi8qCiAqIEVuYWJsZS9EaXNhYmxl
IERDIG9mZnNldCB0cmFja2luZwogKgogKiBPbmx5IGRpc2FibGUgQkIgdHJhY2tpbmcgd2hpbGUg
bGVhdmluZyBzdGF0aWMgUkYgYW5kIEJCIERDIGNhbGlicmF0aW9ucyBlbmFibGVkLgogKiBBY2Nv
cmRpbmcgdG8gY29ycmVzcG9uZGFuY2UgZnJvbSBBREksIHR1cm5pbmcgb2ZmIFJ4IEJCIERDIHRy
YWNraW5nIGNsZWFycyB0aGUKICogY29ycmVjdGlvbiB3b3JkcyBzbyB3ZSBkb24ndCBuZWVkIHRv
IGJlIGNvbmNlcm5lZCB3aXRoIGxlYXZpbmcgdGhlIGNhbGlicmF0aW9uCiAqIGluIGEgYmFkIHN0
YXRlIHVwb24gZGlzYWJsaW5nLiBUZXN0aW5nIGFsc28gY29uZmlybXMgdGhpcyBiZWhhdmlvci4K
ICoKICogTm90ZSB0aGF0IFJ4IElRIHRyYWNraW5nIGRvZXMgbm90IHNob3cgc2ltaWxhciBzdGF0
ZSBjbGVhcmluZyBiZWhhdmlvciB3aGVuCiAqIGRpc2FibGVkLgogKi8Kdm9pZCBhZDkzNjFfZGV2
aWNlX3Q6OnNldF9kY19vZmZzZXRfYXV0byhkaXJlY3Rpb25fdCBkaXJlY3Rpb24sIGNvbnN0IGJv
b2wgb24pCnsKICAgIGlmIChkaXJlY3Rpb24gPT0gUlgpIHsKICAgICAgICBfdXNlX2RjX29mZnNl
dF90cmFja2luZyA9IG9uOwogICAgICAgIF9jb25maWd1cmVfYmJfZGNfdHJhY2tpbmcoKTsKICAg
IH0gZWxzZSB7CiAgICAgICAgdGhyb3cgdWhkOjpydW50aW1lX2Vycm9yKAogICAgICAgICAgICAi
W2FkOTM2MV9kZXZpY2VfdF0gW3NldF9kY19vZmZzZXRfYXV0b10gVHggREMgdHJhY2tpbmcgbm90
IHN1cHBvcnRlZCIpOwogICAgfQp9CgovKgogKiBFbmFibGUvRGlzYWJsZSBJUSBiYWxhbmNlIHRy
YWNraW5nCiAqCiAqIFJ1biBzdGF0aWMgUnggcXVhZHJhdHVyZSBjYWxpYnJhdGlvbiBhZnRlciBk
aXNhYmxpbmcgcXVhZHJhdHVyZSB0cmFja2luZy4KICogVGhpcyBhdm9pZHMgdGhlIHNpdHVhdGlv
biB3aGVyZSBhIHVzZXIgbWlnaHQgZGlzYWJsZSB0cmFja2luZyB3aGVuIHRoZSBsb29wCiAqIGlz
IGluIGEgY29uZnVzZWQgc3RhdGUgKGUuZy4gYXQgb3IgbmVhciBzYXR1cmF0aW9uKS4gT3RoZXJ3
aXNlLCB0aGUKICogY2FsaWJyYXRpb24gc2V0dGluZyBjb3VsZCBiZSBmb3JjZWQgdG8gYW5kIGxl
ZnQgaW4gYSBiYWQgc3RhdGUuCiAqLwp2b2lkIGFkOTM2MV9kZXZpY2VfdDo6c2V0X2lxX2JhbGFu
Y2VfYXV0byhkaXJlY3Rpb25fdCBkaXJlY3Rpb24sIGNvbnN0IGJvb2wgb24pCnsKICAgIGlmIChk
aXJlY3Rpb24gPT0gUlgpIHsKICAgICAgICBfdXNlX2lxX2JhbGFuY2VfdHJhY2tpbmcgPSBvbjsK
ICAgICAgICBfY29uZmlndXJlX3J4X2lxX3RyYWNraW5nKCk7CiAgICAgICAgaWYgKCFvbikgewog
ICAgICAgICAgICBfaW9faWZhY2UtPnBva2U4KDB4MDE0LCAweDA1KTsgLy8gQUxFUlQgbW9kZQog
ICAgICAgICAgICBfY2FsaWJyYXRlX3J4X3F1YWRyYXR1cmUoKTsKICAgICAgICAgICAgX2lvX2lm
YWNlLT5wb2tlOCgweDAxNCwgMHgyMSk7IC8vIEZERCBtb2RlCiAgICAgICAgfQogICAgfSBlbHNl
IHsKICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAgICAgICJbYWQ5MzYx
X2RldmljZV90XSBbc2V0X2lxX2JhbGFuY2VfYXV0b10gVHggSVEgdHJhY2tpbmcgbm90IHN1cHBv
cnRlZCIpOwogICAgfQp9CgovKiBTZXRzIHRoZSBSWCBnYWluIG1vZGUgdG8gYmUgdXNlZC4KICog
SWYgYSB0cmFuc2l0aW9uIGZyb20gYW4gQUdDIHRvIGFuIG5vbiBBR0MgbW9kZSBvY2N1cnMgKG9y
IHZpY2UgdmVyc2EpCiAqIHRoZSBnYWluIGNvbmZpZ3VyYXRpb24gd2lsbCBiZSByZWxvYWRlZC4g
Ki8Kdm9pZCBhZDkzNjFfZGV2aWNlX3Q6Ol9zZXR1cF9hZ2MoY2hhaW5fdCBjaGFpbiwgZ2Fpbl9t
b2RlX3QgZ2Fpbl9tb2RlKQp7CiAgICB1aW50OF90IGdhaW5fbW9kZV9yZWcgICAgICA9IDA7CiAg
ICB1aW50OF90IGdhaW5fbW9kZV9wcmV2ICAgICA9IDA7CiAgICB1aW50OF90IGdhaW5fbW9kZV9i
aXRzX3BvcyA9IDA7CgogICAgZ2Fpbl9tb2RlX3JlZyAgPSBfaW9faWZhY2UtPnBlZWs4KDB4MEZB
KTsKICAgIGdhaW5fbW9kZV9wcmV2ID0gKGdhaW5fbW9kZV9yZWcgJiAweDBGKTsKCiAgICBpZiAo
Y2hhaW4gPT0gQ0hBSU5fMSkgewogICAgICAgIGdhaW5fbW9kZV9iaXRzX3BvcyA9IDA7CiAgICB9
IGVsc2UgaWYgKGNoYWluID09IENIQUlOXzIpIHsKICAgICAgICBnYWluX21vZGVfYml0c19wb3Mg
PSAyOwogICAgfSBlbHNlIHsKICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoIlthZDkz
NjFfZGV2aWNlX3RdIFdyb25nIHZhbHVlIGZvciBjaGFpbiIpOwogICAgfQoKICAgIGdhaW5fbW9k
ZV9yZWcgPSAoZ2Fpbl9tb2RlX3JlZyAmICh+KDB4MDMgPDwgZ2Fpbl9tb2RlX2JpdHNfcG9zKSkp
OyAvLyBjbGVhciBtb2RlIGJpdHMKICAgIHN3aXRjaCAoZ2Fpbl9tb2RlKSB7CiAgICAgICAgY2Fz
ZSBHQUlOX01PREVfTUFOVUFMOgogICAgICAgICAgICAvLyBsZWF2ZSBiaXRzIGNsZWFyZWQKICAg
ICAgICAgICAgYnJlYWs7CiAgICAgICAgY2FzZSBHQUlOX01PREVfU0xPV19BR0M6CiAgICAgICAg
ICAgIGdhaW5fbW9kZV9yZWcgPSAoZ2Fpbl9tb2RlX3JlZyB8ICgweDAyIDw8IGdhaW5fbW9kZV9i
aXRzX3BvcykpOwogICAgICAgICAgICBicmVhazsKICAgICAgICBjYXNlIEdBSU5fTU9ERV9GQVNU
X0FHQzoKICAgICAgICAgICAgZ2Fpbl9tb2RlX3JlZyA9IChnYWluX21vZGVfcmVnIHwgKDB4MDEg
PDwgZ2Fpbl9tb2RlX2JpdHNfcG9zKSk7CiAgICAgICAgICAgIGJyZWFrOwogICAgICAgIGRlZmF1
bHQ6CiAgICAgICAgICAgIHRocm93IHVoZDo6cnVudGltZV9lcnJvcigiW2FkOTM2MV9kZXZpY2Vf
dF0gR2FpbiBtb2RlIGRvZXMgbm90IGV4aXN0Iik7CiAgICB9CiAgICBfaW9faWZhY2UtPnBva2U4
KDB4MEZBLCBnYWluX21vZGVfcmVnKTsKICAgIHVpbnQ4X3QgZ2Fpbl9tb2RlX3N0YXR1cyA9IF9p
b19pZmFjZS0+cGVlazgoMHgwRkEpOwogICAgZ2Fpbl9tb2RlX3N0YXR1cyAgICAgICAgID0gKGdh
aW5fbW9kZV9zdGF0dXMgJiAweDBGKTsKICAgIC8qQ2hlY2sgaWYgZ2FpbiBtb2RlIGNvbmZpZ3Vy
YXRpb24gbmVlZHMgdG8gYmUgcmVwcm9ncmFtbWVkKi8KICAgIGlmICgoKGdhaW5fbW9kZV9wcmV2
ID09IDApICYmIChnYWluX21vZGVfc3RhdHVzICE9IDApKQogICAgICAgIHx8ICgoZ2Fpbl9tb2Rl
X3ByZXYgIT0gMCkgJiYgKGdhaW5fbW9kZV9zdGF0dXMgPT0gMCkpKSB7CiAgICAgICAgaWYgKGdh
aW5fbW9kZV9zdGF0dXMgPT0gMCkgewogICAgICAgICAgICAvKmxvYWQgbWFudWFsIG1vZGUgY29u
ZmlnKi8KICAgICAgICAgICAgX3NldHVwX2dhaW5fY29udHJvbChmYWxzZSk7CiAgICAgICAgfSBl
bHNlIHsKICAgICAgICAgICAgLypsb2FkIGFnYyBtb2RlIGNvbmZpZyovCiAgICAgICAgICAgIF9z
ZXR1cF9nYWluX2NvbnRyb2wodHJ1ZSk7CiAgICAgICAgfQogICAgfQp9Cgp2b2lkIGFkOTM2MV9k
ZXZpY2VfdDo6c2V0X2FnYyhjaGFpbl90IGNoYWluLCBib29sIGVuYWJsZSkKewogICAgaWYgKGNo
YWluID09IENIQUlOXzEpIHsKICAgICAgICBfcngxX2FnY19lbmFibGUgPSBlbmFibGU7CiAgICAg
ICAgaWYgKGVuYWJsZSkgewogICAgICAgICAgICBfc2V0dXBfYWdjKGNoYWluLCBfcngxX2FnY19t
b2RlKTsKICAgICAgICB9IGVsc2UgewogICAgICAgICAgICBfc2V0dXBfYWdjKGNoYWluLCBHQUlO
X01PREVfTUFOVUFMKTsKICAgICAgICB9CiAgICB9IGVsc2UgaWYgKGNoYWluID09IENIQUlOXzIp
IHsKICAgICAgICBfcngyX2FnY19lbmFibGUgPSBlbmFibGU7CiAgICAgICAgaWYgKGVuYWJsZSkg
ewogICAgICAgICAgICBfc2V0dXBfYWdjKGNoYWluLCBfcngyX2FnY19tb2RlKTsKICAgICAgICB9
IGVsc2UgewogICAgICAgICAgICBfc2V0dXBfYWdjKGNoYWluLCBHQUlOX01PREVfTUFOVUFMKTsK
ICAgICAgICB9CiAgICB9IGVsc2UgewogICAgICAgIHRocm93IHVoZDo6cnVudGltZV9lcnJvcigi
W2FkOTM2MV9kZXZpY2VfdF0gV3JvbmcgdmFsdWUgZm9yIGNoYWluIik7CiAgICB9Cn0KCnZvaWQg
YWQ5MzYxX2RldmljZV90OjpzZXRfYWdjX21vZGUoY2hhaW5fdCBjaGFpbiwgZ2Fpbl9tb2RlX3Qg
Z2Fpbl9tb2RlKQp7CiAgICBpZiAoY2hhaW4gPT0gQ0hBSU5fMSkgewogICAgICAgIF9yeDFfYWdj
X21vZGUgPSBnYWluX21vZGU7CiAgICAgICAgaWYgKF9yeDFfYWdjX2VuYWJsZSkgewogICAgICAg
ICAgICBfc2V0dXBfYWdjKGNoYWluLCBfcngxX2FnY19tb2RlKTsKICAgICAgICB9CiAgICB9IGVs
c2UgaWYgKGNoYWluID09IENIQUlOXzIpIHsKICAgICAgICBfcngyX2FnY19tb2RlID0gZ2Fpbl9t
b2RlOwogICAgICAgIGlmIChfcngyX2FnY19lbmFibGUpIHsKICAgICAgICAgICAgX3NldHVwX2Fn
YyhjaGFpbiwgX3J4Ml9hZ2NfbW9kZSk7CiAgICAgICAgfQogICAgfSBlbHNlIHsKICAgICAgICB0
aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoIlthZDkzNjFfZGV2aWNlX3RdIFdyb25nIHZhbHVlIGZv
ciBjaGFpbiIpOwogICAgfQp9CgpzdGQ6OnZlY3RvcjxzdGQ6OnN0cmluZz4gYWQ5MzYxX2Rldmlj
ZV90OjpnZXRfZmlsdGVyX25hbWVzKGRpcmVjdGlvbl90IGRpcmVjdGlvbikKewogICAgYXV0byYg
ZmlsdGVycyA9IChkaXJlY3Rpb24gPT0gUlgpID8gX3J4X2ZpbHRlcnMgOiBfdHhfZmlsdGVyczsK
CiAgICBzdGQ6OnZlY3RvcjxzdGQ6OnN0cmluZz4gcmV0OwogICAgcmV0LnJlc2VydmUoZmlsdGVy
cy5zaXplKCkpOwogICAgZm9yIChhdXRvJiBmaWx0ZXIgOiBmaWx0ZXJzKSB7CiAgICAgICAgcmV0
LnB1c2hfYmFjayhmaWx0ZXIuZmlyc3QpOwogICAgfQoKICAgIHJldHVybiByZXQ7Cn0KCmZpbHRl
cl9pbmZvX2Jhc2U6OnNwdHIgYWQ5MzYxX2RldmljZV90OjpnZXRfZmlsdGVyKAogICAgZGlyZWN0
aW9uX3QgZGlyZWN0aW9uLCBjaGFpbl90IGNoYWluLCBjb25zdCBzdGQ6OnN0cmluZyYgbmFtZSkK
ewogICAgYXV0byYgZmlsdGVycyA9IChkaXJlY3Rpb24gPT0gUlgpID8gX3J4X2ZpbHRlcnMgOiBf
dHhfZmlsdGVyczsKCiAgICBpZiAoIWZpbHRlcnMuY291bnQobmFtZSkpIHsKICAgICAgICB0aHJv
dyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAgICAgICJhZDkzNjFfZGV2aWNlX3Q6OmdldF9m
aWx0ZXIgdGhpcyBmaWx0ZXIgZG9lcyBub3QgZXhpc3Q6ICIgKyBuYW1lKTsKICAgIH0KICAgIC8v
IENoZWNrIGVudHJ5IDAgaW4gdGhlIHR1cGxlICh0aGUgZ2V0dGVyKSBleGlzdHMgYmVmb3JlIGNh
bGxpbmcgaXQKICAgIGlmICghc3RkOjpnZXQ8MD4oZmlsdGVyc1tuYW1lXSkpIHsKICAgICAgICB0
aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAgICAgICJhZDkzNjFfZGV2aWNlX3Q6Omdl
dF9maWx0ZXIgdGhpcyBmaWx0ZXIgY2FuIG5vdCBiZSByZWFkOiAiICsgbmFtZSk7CiAgICB9CiAg
ICByZXR1cm4gc3RkOjpnZXQ8MD4oZmlsdGVyc1tuYW1lXSkoY2hhaW4pOwp9Cgp2b2lkIGFkOTM2
MV9kZXZpY2VfdDo6c2V0X2ZpbHRlcihkaXJlY3Rpb25fdCBkaXJlY3Rpb24sCiAgICBjaGFpbl90
IGNoYWluLAogICAgY29uc3Qgc3RkOjpzdHJpbmcmIG5hbWUsCiAgICBmaWx0ZXJfaW5mb19iYXNl
OjpzcHRyIGZpbHRlcikKewogICAgYXV0byYgZmlsdGVycyA9IChkaXJlY3Rpb24gPT0gUlgpID8g
X3J4X2ZpbHRlcnMgOiBfdHhfZmlsdGVyczsKCiAgICBpZiAoIWZpbHRlcnMuY291bnQobmFtZSkp
IHsKICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAgICAgICJhZDkzNjFf
ZGV2aWNlX3Q6OnNldF9maWx0ZXIgdGhpcyBmaWx0ZXIgZG9lcyBub3QgZXhpc3Q6ICIgKyBuYW1l
KTsKICAgIH0KICAgIC8vIENoZWNrIGVudHJ5IDEgaW4gdGhlIHR1cGxlICh0aGUgc2V0dGVyKSBl
eGlzdHMgYmVmb3JlIGNhbGxpbmcgaXQKICAgIGlmICghc3RkOjpnZXQ8MT4oZmlsdGVyc1tuYW1l
XSkpIHsKICAgICAgICB0aHJvdyB1aGQ6OnJ1bnRpbWVfZXJyb3IoCiAgICAgICAgICAgICJhZDkz
NjFfZGV2aWNlX3Q6OnNldF9maWx0ZXIgdGhpcyBmaWx0ZXIgY2FuIG5vdCBiZSB3cml0dGVuOiAi
ICsgbmFtZSk7CiAgICB9CiAgICBzdGQ6OmdldDwxPihmaWx0ZXJzW25hbWVdKShjaGFpbiwgZmls
dGVyKTsKfQoKZG91YmxlIGFkOTM2MV9kZXZpY2VfdDo6c2V0X2J3X2ZpbHRlcihkaXJlY3Rpb25f
dCBkaXJlY3Rpb24sIGNvbnN0IGRvdWJsZSByZl9idykKewogICAgLy8gYm90aCBsb3cgcGFzcyBm
aWx0ZXJzIGFyZSBwcm9ncmFtbWVkIHRvIHRoZSBzYW1lIGJ3LiBIb3dldmVyLCB0aGVpciBjdXRv
ZmZzIHdpbGwKICAgIC8vIGRpZmZlci4gVG9nZXRoZXIgdGhleSBzaG91bGQgY3JlYXRlIHRoZSBy
ZXF1ZXN0ZWQgYmIgYncuIFNlbGVjdCByZl9idyBpZiBpdCBpcwogICAgLy8gYmV0d2VlbiBBRDkz
NjFfTUlOX0JXICYgQUQ5MzYxX01BWF9CVy4KICAgIGNvbnN0IGRvdWJsZSBjbGlwcGVkX2J3ID0g
c3RkOjptaW4oc3RkOjptYXgocmZfYncsIEFEOTM2MV9NSU5fQlcpLCBBRDkzNjFfTUFYX0JXKTsK
ICAgIGlmIChkaXJlY3Rpb24gPT0gUlgpIHsKICAgICAgICBfcnhfYmJfbHBfYncgID0gX2NhbGli
cmF0ZV9iYXNlYmFuZF9yeF9hbmFsb2dfZmlsdGVyKGNsaXBwZWRfYncpOyAvLyByZXR1cm5zIGJi
IGJ3CiAgICAgICAgX3J4X3RpYV9scF9idyA9IF9jYWxpYnJhdGVfcnhfVElBcyhjbGlwcGVkX2J3
KTsKICAgICAgICBfcnhfYW5hbG9nX2J3ID0gY2xpcHBlZF9idzsKICAgIH0gZWxzZSB7CiAgICAg
ICAgX3R4X2JiX2xwX2J3ICA9IF9jYWxpYnJhdGVfYmFzZWJhbmRfdHhfYW5hbG9nX2ZpbHRlcihj
bGlwcGVkX2J3KTsgLy8gcmV0dXJucyBiYiBidwogICAgICAgIF90eF9zZWNfbHBfYncgPSBfY2Fs
aWJyYXRlX3NlY29uZGFyeV90eF9maWx0ZXIoY2xpcHBlZF9idyk7CiAgICAgICAgX3R4X2FuYWxv
Z19idyA9IGNsaXBwZWRfYnc7CiAgICB9CgogICAgcmV0dXJuIChjbGlwcGVkX2J3KTsKfQoKdm9p
ZCBhZDkzNjFfZGV2aWNlX3Q6Ol9zZXRfZmlyX3RhcHMoCiAgICBkaXJlY3Rpb25fdCBkaXJlY3Rp
b24sIGNoYWluX3QgY2hhaW4sIGNvbnN0IHN0ZDo6dmVjdG9yPGludDE2X3Q+JiB0YXBzKQp7CiAg
ICBzaXplX3QgbnVtX3RhcHMgICAgICAgPSB0YXBzLnNpemUoKTsKICAgIHNpemVfdCBudW1fdGFw
c19hdmFpbCA9IF9nZXRfbnVtX2Zpcl90YXBzKGRpcmVjdGlvbik7CiAgICBpZiAobnVtX3RhcHMg
PT0gbnVtX3RhcHNfYXZhaWwpIHsKICAgICAgICBib29zdDo6c2NvcGVkX2FycmF5PHVpbnQxNl90
PiBjb2VmZnMobmV3IHVpbnQxNl90W251bV90YXBzX2F2YWlsXSk7CiAgICAgICAgZm9yIChzaXpl
X3QgaSA9IDA7IGkgPCBudW1fdGFwc19hdmFpbDsgaSsrKSB7CiAgICAgICAgICAgIGNvZWZmc1tp
XSA9IHVpbnQxNl90KHRhcHNbaV0pOwogICAgICAgIH0KICAgICAgICBfcHJvZ3JhbV9maXJfZmls
dGVyKGRpcmVjdGlvbiwgY2hhaW4sIG51bV90YXBzX2F2YWlsLCBjb2VmZnMuZ2V0KCkpOwogICAg
fSBlbHNlIGlmIChudW1fdGFwcyA8IG51bV90YXBzX2F2YWlsKSB7CiAgICAgICAgdGhyb3cgdWhk
OjpydW50aW1lX2Vycm9yKAogICAgICAgICAgICAiYWQ5MzYxX2RldmljZV90Ojpfc2V0X2Zpcl90
YXBzIG5vdCBlbm91Z2ggY29lZmZpY2llbnRzLiIpOwogICAgfSBlbHNlIHsKICAgICAgICB0aHJv
dyB1aGQ6OnJ1bnRpbWVfZXJyb3IoImFkOTM2MV9kZXZpY2VfdDo6X3NldF9maXJfdGFwcyB0b28g
bWFueSBjb2VmZmljaWVudHMuIik7CiAgICB9Cn0KCnNpemVfdCBhZDkzNjFfZGV2aWNlX3Q6Ol9n
ZXRfbnVtX2Zpcl90YXBzKGRpcmVjdGlvbl90IGRpcmVjdGlvbikKewogICAgdWludDhfdCBudW0g
PSAwOwogICAgaWYgKGRpcmVjdGlvbiA9PSBSWCkKICAgICAgICBudW0gPSBfaW9faWZhY2UtPnBl
ZWs4KDB4MEY1KTsKICAgIGVsc2UKICAgICAgICBudW0gPSBfaW9faWZhY2UtPnBlZWs4KDB4MDY1
KTsKICAgIG51bSA9ICgobnVtID4+IDUpICYgMHgwNyk7CiAgICByZXR1cm4gKChudW0gKyAxKSAq
IDE2KTsKfQoKc2l6ZV90IGFkOTM2MV9kZXZpY2VfdDo6X2dldF9maXJfZGVjX2ludChkaXJlY3Rp
b25fdCBkaXJlY3Rpb24pCnsKICAgIHVpbnQ4X3QgZGVjX2ludCA9IDA7CiAgICBpZiAoZGlyZWN0
aW9uID09IFJYKQogICAgICAgIGRlY19pbnQgPSBfaW9faWZhY2UtPnBlZWs4KDB4MDAzKTsKICAg
IGVsc2UKICAgICAgICBkZWNfaW50ID0gX2lvX2lmYWNlLT5wZWVrOCgweDAwMik7CiAgICAvKgog
ICAgICogMCA9IGRlYy9pbnQgYnkgMSBhbmQgYnlwYXNzIGZpbHRlcgogICAgICogMSA9IGRlYy9p
bnQgYnkgMQogICAgICogMiA9IGRlYy9pbnQgYnkgMgogICAgICogMyA9IGRlYy9pbnQgYnkgNCAq
LwogICAgZGVjX2ludCA9IChkZWNfaW50ICYgMHgwMyk7CiAgICBpZiAoZGVjX2ludCA9PSAzKSB7
CiAgICAgICAgcmV0dXJuIDQ7CiAgICB9CiAgICByZXR1cm4gZGVjX2ludDsKfQoKc3RkOjp2ZWN0
b3I8aW50MTZfdD4gYWQ5MzYxX2RldmljZV90OjpfZ2V0X2Zpcl90YXBzKGRpcmVjdGlvbl90IGRp
cmVjdGlvbiwgY2hhaW5fdCBjaGFpbikKewogICAgaW50IGJhc2U7CiAgICBzaXplX3QgbnVtX3Rh
cHMgPSBfZ2V0X251bV9maXJfdGFwcyhkaXJlY3Rpb24pOwogICAgdWludDhfdCBjb25maWc7CiAg
ICB1aW50OF90IHJlZ19udW10YXBzID0gKCgobnVtX3RhcHMgLyAxNikgLSAxKSAmIDB4MDcpIDw8
IDU7CiAgICBjb25maWcgICAgICAgICAgICAgID0gcmVnX251bXRhcHMgfCAweDAyOyAvLyBzdGFy
dCB0aGUgcHJvZ3JhbW1pbmcgY2xvY2sKCiAgICBpZiAoY2hhaW4gPT0gQ0hBSU5fMSkgewogICAg
ICAgIGNvbmZpZyA9IGNvbmZpZyB8ICgxIDw8IDMpOwogICAgfSBlbHNlIGlmIChjaGFpbiA9PSBD
SEFJTl8yKSB7CiAgICAgICAgY29uZmlnID0gY29uZmlnIHwgKDEgPDwgNCk7CiAgICB9IGVsc2Ug
ewogICAgICAgIHRocm93IHVoZDo6cnVudGltZV9lcnJvcigKICAgICAgICAgICAgIlthZDkzNjFf
ZGV2aWNlX3RdIENhbiBub3QgcmVhZCBib3RoIGNoYWlucyBzeW5jaHJvbm91c2x5Iik7CiAgICB9
CgogICAgaWYgKGRpcmVjdGlvbiA9PSBSWCkgewogICAgICAgIGJhc2UgPSAweEYwOwogICAgfSBl
bHNlIHsKICAgICAgICBiYXNlID0gMHg2MDsKICAgIH0KCiAgICBfaW9faWZhY2UtPnBva2U4KGJh
c2UgKyA1LCBjb25maWcpOwoKICAgIHN0ZDo6dmVjdG9yPGludDE2X3Q+IHRhcHM7CiAgICB1aW50
OF90IGxvd2VyX3ZhbDsKICAgIHVpbnQ4X3QgaGlnaGVyX3ZhbDsKICAgIHVpbnQxNl90IGNvZWZm
OwogICAgZm9yIChzaXplX3QgaSA9IDA7IGkgPCBudW1fdGFwczsgaSsrKSB7CiAgICAgICAgX2lv
X2lmYWNlLT5wb2tlOChiYXNlLCAweDAwICsgaSk7CiAgICAgICAgbG93ZXJfdmFsICA9IF9pb19p
ZmFjZS0+cGVlazgoYmFzZSArIDMpOwogICAgICAgIGhpZ2hlcl92YWwgPSBfaW9faWZhY2UtPnBl
ZWs4KGJhc2UgKyA0KTsKICAgICAgICBjb2VmZiAgICAgID0gKChoaWdoZXJfdmFsIDw8IDgpIHwg
bG93ZXJfdmFsKTsKICAgICAgICB0YXBzLnB1c2hfYmFjayhpbnQxNl90KGNvZWZmKSk7CiAgICB9
CgogICAgY29uZmlnID0gKGNvbmZpZyAmICh+KDEgPDwgMSkpKTsgLy8gZGlzYWJsZSBmaWx0ZXIg
Y2xvY2sKICAgIF9pb19pZmFjZS0+cG9rZTgoYmFzZSArIDUsIGNvbmZpZyk7CiAgICByZXR1cm4g
dGFwczsKfQoKLyoKICogUmV0dXJucyBlaXRoZXIgUlggVElBIExQRiBvciBUWCBTZWNvbmRhcnkg
TFBGCiAqIGRlcGVuZGluZyBvbiB0aGUgZGlyZWN0aW9uLgogKiBTZWUgVUc1NzAgZm9yIGRldGFp
bHMgb24gdXNlZCBzY2FsaW5nIGZhY3RvcnMuICovCmZpbHRlcl9pbmZvX2Jhc2U6OnNwdHIgYWQ5
MzYxX2RldmljZV90OjpfZ2V0X2ZpbHRlcl9scF90aWFfc2VjKGRpcmVjdGlvbl90IGRpcmVjdGlv
bikKewogICAgZG91YmxlIGN1dG9mZiA9IDA7CgogICAgaWYgKGRpcmVjdGlvbiA9PSBSWCkgewog
ICAgICAgIGN1dG9mZiA9IDIuNSAqIF9yeF90aWFfbHBfYnc7CiAgICB9IGVsc2UgewogICAgICAg
IGN1dG9mZiA9IDUgKiBfdHhfc2VjX2xwX2J3OwogICAgfQoKICAgIGZpbHRlcl9pbmZvX2Jhc2U6
OnNwdHIgbHAobmV3IGFuYWxvZ19maWx0ZXJfbHAoCiAgICAgICAgZmlsdGVyX2luZm9fYmFzZTo6
QU5BTE9HX0xPV19QQVNTLCBmYWxzZSwgMCwgInNpbmdsZS1wb2xlIiwgY3V0b2ZmLCAyMCkpOwog
ICAgcmV0dXJuIGxwOwp9CgovKgogKiBSZXR1cm5zIFJYL1RYIEJCIExQRi4KICogU2VlIFVHNTcw
IGZvciBkZXRhaWxzIG9uIHVzZWQgc2NhbGluZyBmYWN0b3JzLiAqLwpmaWx0ZXJfaW5mb19iYXNl
OjpzcHRyIGFkOTM2MV9kZXZpY2VfdDo6X2dldF9maWx0ZXJfbHBfYmIoZGlyZWN0aW9uX3QgZGly
ZWN0aW9uKQp7CiAgICBkb3VibGUgY3V0b2ZmID0gMDsKICAgIGlmIChkaXJlY3Rpb24gPT0gUlgp
IHsKICAgICAgICBjdXRvZmYgPSAxLjQgKiBfcnhfYmJfbHBfYnc7CiAgICB9IGVsc2UgewogICAg
ICAgIGN1dG9mZiA9IDEuNiAqIF90eF9iYl9scF9idzsKICAgIH0KCiAgICBmaWx0ZXJfaW5mb19i
YXNlOjpzcHRyIGJiX2xwKG5ldyBhbmFsb2dfZmlsdGVyX2xwKGZpbHRlcl9pbmZvX2Jhc2U6OkFO
QUxPR19MT1dfUEFTUywKICAgICAgICBmYWxzZSwKICAgICAgICAxLAogICAgICAgICJ0aGlyZC1v
cmRlciBCdXR0ZXJ3b3J0aCIsCiAgICAgICAgY3V0b2ZmLAogICAgICAgIDYwKSk7CiAgICByZXR1
cm4gYmJfbHA7Cn0KCi8qCiAqIEZvciBSWCBkaXJlY3Rpb24gdGhlIERFQzMgaXMgcmV0dXJuZWQu
CiAqIEZvciBUWCBkaXJlY3Rpb24gdGhlIElOVDMgaXMgcmV0dXJuZWQuICovCmZpbHRlcl9pbmZv
X2Jhc2U6OnNwdHIgYWQ5MzYxX2RldmljZV90OjpfZ2V0X2ZpbHRlcl9kZWNfaW50XzMoZGlyZWN0
aW9uX3QgZGlyZWN0aW9uKQp7CiAgICAvLyBjbGFuZy1mb3JtYXQgb2ZmCiAgICB1aW50OF90IGVu
YWJsZSA9IDA7CiAgICBkb3VibGUgcmF0ZSA9IF9hZGNjbG9ja19mcmVxOwogICAgZG91YmxlIGZ1
bGxfc2NhbGU7CiAgICBzaXplX3QgZGVjID0gMDsKICAgIHNpemVfdCBpbnRlcnBvbCA9IDA7CiAg
ICBmaWx0ZXJfaW5mb19iYXNlOjpmaWx0ZXJfdHlwZSB0eXBlID0gZmlsdGVyX2luZm9fYmFzZTo6
RElHSVRBTF9JMTY7CiAgICBzdGQ6OnN0cmluZyBuYW1lOwogICAgaW50MTZfdCB0YXBzX2FycmF5
X3J4W10gPSB7NTUsIDgzLCAwLCAtMzkzLCAtNTgwLCAwLCAxOTE0LCA0MDQxLCA1MTIwLCA0MDQx
LCAxOTE0LCAwLCAtNTgwLCAtMzkzLCAwLCA4MywgNTV9OwogICAgaW50MTZfdCB0YXBzX2FycmF5
X3R4W10gPSB7MzYsIC0xOSwgMCwgLTE1NiwgLTEyLCAwLCA0NzksIDIzMywgMCwgLTEyMTUsIC05
OTMsIDAsIDM1NjksIDYyNzcsIDgxOTIsIDYyNzcsIDM1NjksIDAsIC05OTMsIC0xMjE1LCAwLCAy
MjMsIDQ3OSwgMCwgLTEyLCAtMTU2LCAwLCAtMTksIDM2fTsKICAgIHN0ZDo6dmVjdG9yPGludDE2
X3Q+IHRhcHM7CiAgICAvLyBjbGFuZy1mb3JtYXQgb24KCiAgICBmaWx0ZXJfaW5mb19iYXNlOjpz
cHRyIHJldDsKCiAgICBpZiAoZGlyZWN0aW9uID09IFJYKSB7CiAgICAgICAgZnVsbF9zY2FsZSA9
IDE2Mzg0OwogICAgICAgIGRlYyAgICAgICAgPSAzOwogICAgICAgIGludGVycG9sICAgPSAxOwoK
ICAgICAgICBlbmFibGUgPSBfaW9faWZhY2UtPnBlZWs4KDB4MDAzKTsKICAgICAgICBlbmFibGUg
PSAoKGVuYWJsZSA+PiA0KSAmIDB4MDMpOwogICAgICAgIHRhcHMuYXNzaWduKAogICAgICAgICAg
ICB0YXBzX2FycmF5X3J4LCB0YXBzX2FycmF5X3J4ICsgc2l6ZW9mKHRhcHNfYXJyYXlfcngpIC8g
c2l6ZW9mKGludDE2X3QpKTsKCiAgICB9IGVsc2UgewogICAgICAgIGZ1bGxfc2NhbGUgPSA4MTky
OwogICAgICAgIGRlYyAgICAgICAgPSAxOwogICAgICAgIGludGVycG9sICAgPSAzOwoKICAgICAg
ICB1aW50OF90IHVzZV9kYWNfY2xrX2RpdiA9IF9pb19pZmFjZS0+cGVlazgoMHgwMEEpOwogICAg
ICAgIHVzZV9kYWNfY2xrX2RpdiAgICAgICAgID0gKCh1c2VfZGFjX2Nsa19kaXYgPj4gMykgJiAw
eDAxKTsKICAgICAgICBpZiAodXNlX2RhY19jbGtfZGl2ID09IDEpIHsKICAgICAgICAgICAgcmF0
ZSA9IHJhdGUgLyAyOwogICAgICAgIH0KCiAgICAgICAgZW5hYmxlID0gX2lvX2lmYWNlLT5wZWVr
OCgweDAwMik7CiAgICAgICAgZW5hYmxlID0gKChlbmFibGUgPj4gNCkgJiAweDAzKTsKICAgICAg
ICBpZiAoZW5hYmxlID09IDIpIC8vIDAgPT4gaW50LiBieSAxLCAxID0+IGludC4gYnkgMiAoSEIz
KSwgMiA9PiBpbnQuIGJ5IDMKICAgICAgICB7CiAgICAgICAgICAgIHJhdGUgLz0gMzsKICAgICAg
ICB9CgogICAgICAgIHRhcHMuYXNzaWduKAogICAgICAgICAgICB0YXBzX2FycmF5X3R4LCB0YXBz
X2FycmF5X3R4ICsgc2l6ZW9mKHRhcHNfYXJyYXlfdHgpIC8gc2l6ZW9mKGludDE2X3QpKTsKICAg
IH0KCiAgICByZXQgPSBmaWx0ZXJfaW5mb19iYXNlOjpzcHRyKG5ldyBkaWdpdGFsX2ZpbHRlcl9i
YXNlPGludDE2X3Q+KHR5cGUsCiAgICAgICAgKGVuYWJsZSAhPSAyKSA/IHRydWUgOiBmYWxzZSwK
ICAgICAgICAyLAogICAgICAgIHJhdGUsCiAgICAgICAgaW50ZXJwb2wsCiAgICAgICAgZGVjLAog
ICAgICAgIGZ1bGxfc2NhbGUsCiAgICAgICAgdGFwcy5zaXplKCksCiAgICAgICAgdGFwcykpOwog
ICAgcmV0dXJuIHJldDsKfQoKZmlsdGVyX2luZm9fYmFzZTo6c3B0ciBhZDkzNjFfZGV2aWNlX3Q6
Ol9nZXRfZmlsdGVyX2hiXzMoZGlyZWN0aW9uX3QgZGlyZWN0aW9uKQp7CiAgICB1aW50OF90IGVu
YWJsZSAgICAgICAgICAgICAgICAgICAgID0gMDsKICAgIGRvdWJsZSByYXRlICAgICAgICAgICAg
ICAgICAgICAgICAgPSBfYWRjY2xvY2tfZnJlcTsKICAgIGRvdWJsZSBmdWxsX3NjYWxlICAgICAg
ICAgICAgICAgICAgPSAwOwogICAgc2l6ZV90IGRlYyAgICAgICAgICAgICAgICAgICAgICAgICA9
IDE7CiAgICBzaXplX3QgaW50ZXJwb2wgICAgICAgICAgICAgICAgICAgID0gMTsKICAgIGZpbHRl
cl9pbmZvX2Jhc2U6OmZpbHRlcl90eXBlIHR5cGUgPSBmaWx0ZXJfaW5mb19iYXNlOjpESUdJVEFM
X0kxNjsKICAgIGludDE2X3QgdGFwc19hcnJheV9yeFtdICAgICAgICAgICAgPSB7MSwgNCwgNiwg
NCwgMX07CiAgICBpbnQxNl90IHRhcHNfYXJyYXlfdHhbXSAgICAgICAgICAgID0gezEsIDIsIDF9
OwogICAgc3RkOjp2ZWN0b3I8aW50MTZfdD4gdGFwczsKCiAgICBpZiAoZGlyZWN0aW9uID09IFJY
KSB7CiAgICAgICAgZnVsbF9zY2FsZSA9IDE2OwogICAgICAgIGRlYyAgICAgICAgPSAyOwoKICAg
ICAgICBlbmFibGUgPSBfaW9faWZhY2UtPnBlZWs4KDB4MDAzKTsKICAgICAgICBlbmFibGUgPSAo
KGVuYWJsZSA+PiA0KSAmIDB4MDMpOwogICAgICAgIHRhcHMuYXNzaWduKAogICAgICAgICAgICB0
YXBzX2FycmF5X3J4LCB0YXBzX2FycmF5X3J4ICsgc2l6ZW9mKHRhcHNfYXJyYXlfcngpIC8gc2l6
ZW9mKGludDE2X3QpKTsKICAgIH0gZWxzZSB7CiAgICAgICAgZnVsbF9zY2FsZSA9IDI7CiAgICAg
ICAgaW50ZXJwb2wgICA9IDI7CgogICAgICAgIHVpbnQ4X3QgdXNlX2RhY19jbGtfZGl2ID0gX2lv
X2lmYWNlLT5wZWVrOCgweDAwQSk7CiAgICAgICAgdXNlX2RhY19jbGtfZGl2ICAgICAgICAgPSAo
KHVzZV9kYWNfY2xrX2RpdiA+PiAzKSAmIDB4MDEpOwogICAgICAgIGlmICh1c2VfZGFjX2Nsa19k
aXYgPT0gMSkgewogICAgICAgICAgICByYXRlID0gcmF0ZSAvIDI7CiAgICAgICAgfQoKICAgICAg
ICBlbmFibGUgPSBfaW9faWZhY2UtPnBlZWs4KDB4MDAyKTsKICAgICAgICBlbmFibGUgPSAoKGVu
YWJsZSA+PiA0KSAmIDB4MDMpOwogICAgICAgIGlmIChlbmFibGUgPT0gMSkgewogICAgICAgICAg
ICByYXRlIC89IDI7CiAgICAgICAgfQogICAgICAgIHRhcHMuYXNzaWduKAogICAgICAgICAgICB0
YXBzX2FycmF5X3R4LCB0YXBzX2FycmF5X3R4ICsgc2l6ZW9mKHRhcHNfYXJyYXlfdHgpIC8gc2l6
ZW9mKGludDE2X3QpKTsKICAgIH0KCiAgICBmaWx0ZXJfaW5mb19iYXNlOjpzcHRyIGhiID0KICAg
ICAgICBmaWx0ZXJfaW5mb19iYXNlOjpzcHRyKG5ldyBkaWdpdGFsX2ZpbHRlcl9iYXNlPGludDE2
X3Q+KHR5cGUsCiAgICAgICAgICAgIChlbmFibGUgIT0gMSkgPyB0cnVlIDogZmFsc2UsCiAgICAg
ICAgICAgIDIsCiAgICAgICAgICAgIHJhdGUsCiAgICAgICAgICAgIGludGVycG9sLAogICAgICAg
ICAgICBkZWMsCiAgICAgICAgICAgIGZ1bGxfc2NhbGUsCiAgICAgICAgICAgIHRhcHMuc2l6ZSgp
LAogICAgICAgICAgICB0YXBzKSk7CiAgICByZXR1cm4gaGI7Cn0KCmZpbHRlcl9pbmZvX2Jhc2U6
OnNwdHIgYWQ5MzYxX2RldmljZV90OjpfZ2V0X2ZpbHRlcl9oYl8yKGRpcmVjdGlvbl90IGRpcmVj
dGlvbikKewogICAgdWludDhfdCBlbmFibGUgICAgICAgICAgICAgICAgICAgICA9IDA7CiAgICBk
b3VibGUgcmF0ZSAgICAgICAgICAgICAgICAgICAgICAgID0gX2FkY2Nsb2NrX2ZyZXE7CiAgICBk
b3VibGUgZnVsbF9zY2FsZSAgICAgICAgICAgICAgICAgID0gMDsKICAgIHNpemVfdCBkZWMgICAg
ICAgICAgICAgICAgICAgICAgICAgPSAxOwogICAgc2l6ZV90IGludGVycG9sICAgICAgICAgICAg
ICAgICAgICA9IDE7CiAgICBmaWx0ZXJfaW5mb19iYXNlOjpmaWx0ZXJfdHlwZSB0eXBlID0gZmls
dGVyX2luZm9fYmFzZTo6RElHSVRBTF9JMTY7CiAgICBpbnQxNl90IHRhcHNfYXJyYXlbXSAgICAg
ICAgICAgICAgID0gey05LCAwLCA3MywgMTI4LCA3MywgMCwgLTl9OwogICAgc3RkOjp2ZWN0b3I8
aW50MTZfdD4gdGFwcygKICAgICAgICB0YXBzX2FycmF5LCB0YXBzX2FycmF5ICsgc2l6ZW9mKHRh
cHNfYXJyYXkpIC8gc2l6ZW9mKGludDE2X3QpKTsKCiAgICBkaWdpdGFsX2ZpbHRlcl9iYXNlPGlu
dDE2X3Q+OjpzcHRyIGhiXzMgPQogICAgICAgIHN0ZDo6ZHluYW1pY19wb2ludGVyX2Nhc3Q8ZGln
aXRhbF9maWx0ZXJfYmFzZTxpbnQxNl90Pj4oCiAgICAgICAgICAgIF9nZXRfZmlsdGVyX2hiXzMo
ZGlyZWN0aW9uKSk7CiAgICBkaWdpdGFsX2ZpbHRlcl9iYXNlPGludDE2X3Q+OjpzcHRyIGRlY19p
bnRfMyA9CiAgICAgICAgc3RkOjpkeW5hbWljX3BvaW50ZXJfY2FzdDxkaWdpdGFsX2ZpbHRlcl9i
YXNlPGludDE2X3Q+PigKICAgICAgICAgICAgX2dldF9maWx0ZXJfZGVjX2ludF8zKGRpcmVjdGlv
bikpOwoKICAgIGlmIChkaXJlY3Rpb24gPT0gUlgpIHsKICAgICAgICBmdWxsX3NjYWxlID0gMjU2
OwogICAgICAgIGRlYyAgICAgICAgPSAyOwogICAgICAgIGVuYWJsZSAgICAgPSBfaW9faWZhY2Ut
PnBlZWs4KDB4MDAzKTsKICAgIH0gZWxzZSB7CiAgICAgICAgZnVsbF9zY2FsZSA9IDEyODsKICAg
ICAgICBpbnRlcnBvbCAgID0gMjsKICAgICAgICBlbmFibGUgICAgID0gX2lvX2lmYWNlLT5wZWVr
OCgweDAwMik7CiAgICB9CgogICAgZW5hYmxlID0gKChlbmFibGUgPj4gMykgJiAweDAxKTsKCiAg
ICBpZiAoIShoYl8zLT5pc19ieXBhc3NlZCgpKSkgewogICAgICAgIGlmIChkaXJlY3Rpb24gPT0g
UlgpIHsKICAgICAgICAgICAgcmF0ZSA9IGhiXzMtPmdldF9vdXRwdXRfcmF0ZSgpOwogICAgICAg
IH0gZWxzZSBpZiAoZGlyZWN0aW9uID09IFRYKSB7CiAgICAgICAgICAgIHJhdGUgPSBoYl8zLT5n
ZXRfaW5wdXRfcmF0ZSgpOwogICAgICAgICAgICBpZiAoZW5hYmxlKSB7CiAgICAgICAgICAgICAg
ICByYXRlIC89IDI7CiAgICAgICAgICAgIH0KICAgICAgICB9CiAgICB9IGVsc2UgeyAvLyBlbHNl
IGRlYzMvaW50MyBvciBub25lIG9mIHRoZW0gaXMgdXNlZC4KICAgICAgICBpZiAoZGlyZWN0aW9u
ID09IFJYKSB7CiAgICAgICAgICAgIHJhdGUgPSBkZWNfaW50XzMtPmdldF9vdXRwdXRfcmF0ZSgp
OwogICAgICAgIH0gZWxzZSBpZiAoZGlyZWN0aW9uID09IFRYKSB7CiAgICAgICAgICAgIHJhdGUg
PSBkZWNfaW50XzMtPmdldF9pbnB1dF9yYXRlKCk7CiAgICAgICAgICAgIGlmIChlbmFibGUpIHsK
ICAgICAgICAgICAgICAgIHJhdGUgLz0gMjsKICAgICAgICAgICAgfQogICAgICAgIH0KICAgIH0K
CiAgICBmaWx0ZXJfaW5mb19iYXNlOjpzcHRyIGhiKG5ldyBkaWdpdGFsX2ZpbHRlcl9iYXNlPGlu
dDE2X3Q+KHR5cGUsCiAgICAgICAgKGVuYWJsZSA9PSAwKSA/IHRydWUgOiBmYWxzZSwKICAgICAg
ICAzLAogICAgICAgIHJhdGUsCiAgICAgICAgaW50ZXJwb2wsCiAgICAgICAgZGVjLAogICAgICAg
IGZ1bGxfc2NhbGUsCiAgICAgICAgdGFwcy5zaXplKCksCiAgICAgICAgdGFwcykpOwogICAgcmV0
dXJuIGhiOwp9CgpmaWx0ZXJfaW5mb19iYXNlOjpzcHRyIGFkOTM2MV9kZXZpY2VfdDo6X2dldF9m
aWx0ZXJfaGJfMShkaXJlY3Rpb25fdCBkaXJlY3Rpb24pCnsKICAgIHVpbnQ4X3QgZW5hYmxlICAg
ICAgICAgICAgICAgICAgICAgPSAwOwogICAgZG91YmxlIHJhdGUgICAgICAgICAgICAgICAgICAg
ICAgICA9IDA7CiAgICBkb3VibGUgZnVsbF9zY2FsZSAgICAgICAgICAgICAgICAgID0gMDsKICAg
IHNpemVfdCBkZWMgICAgICAgICAgICAgICAgICAgICAgICAgPSAxOwogICAgc2l6ZV90IGludGVy
cG9sICAgICAgICAgICAgICAgICAgICA9IDE7CiAgICBmaWx0ZXJfaW5mb19iYXNlOjpmaWx0ZXJf
dHlwZSB0eXBlID0gZmlsdGVyX2luZm9fYmFzZTo6RElHSVRBTF9JMTY7CgogICAgc3RkOjp2ZWN0
b3I8aW50MTZfdD4gdGFwczsKICAgIGludDE2X3QgdGFwc19yeF9hcnJheVtdID0gewogICAgICAg
IC04LCAwLCA0MiwgMCwgLTE0NywgMCwgNjE5LCAxMDEzLCA2MTksIDAsIC0xNDcsIDAsIDQyLCAw
LCAtOH07CiAgICBpbnQxNl90IHRhcHNfdHhfYXJyYXlbXSA9IHsKICAgICAgICAtNTMsIDAsIDMx
MywgMCwgLTExNTUsIDAsIDQ5ODksIDgxOTIsIDQ5ODksIDAsIC0xMTU1LCAwLCAzMTMsIDAsIC01
M307CgogICAgZGlnaXRhbF9maWx0ZXJfYmFzZTxpbnQxNl90Pjo6c3B0ciBoYl8yID0KICAgICAg
ICBzdGQ6OmR5bmFtaWNfcG9pbnRlcl9jYXN0PGRpZ2l0YWxfZmlsdGVyX2Jhc2U8aW50MTZfdD4+
KAogICAgICAgICAgICBfZ2V0X2ZpbHRlcl9oYl8yKGRpcmVjdGlvbikpOwoKICAgIGlmIChkaXJl
Y3Rpb24gPT0gUlgpIHsKICAgICAgICBmdWxsX3NjYWxlID0gMjA0ODsKICAgICAgICBkZWMgICAg
ICAgID0gMjsKICAgICAgICBlbmFibGUgICAgID0gX2lvX2lmYWNlLT5wZWVrOCgweDAwMyk7CiAg
ICAgICAgZW5hYmxlICAgICA9ICgoZW5hYmxlID4+IDIpICYgMHgwMSk7CiAgICAgICAgcmF0ZSAg
ICAgICA9IGhiXzItPmdldF9vdXRwdXRfcmF0ZSgpOwogICAgICAgIHRhcHMuYXNzaWduKAogICAg
ICAgICAgICB0YXBzX3J4X2FycmF5LCB0YXBzX3J4X2FycmF5ICsgc2l6ZW9mKHRhcHNfcnhfYXJy
YXkpIC8gc2l6ZW9mKGludDE2X3QpKTsKICAgIH0gZWxzZSBpZiAoZGlyZWN0aW9uID09IFRYKSB7
CiAgICAgICAgZnVsbF9zY2FsZSA9IDgxOTI7CiAgICAgICAgaW50ZXJwb2wgICA9IDI7CiAgICAg
ICAgZW5hYmxlICAgICA9IF9pb19pZmFjZS0+cGVlazgoMHgwMDIpOwogICAgICAgIGVuYWJsZSAg
ICAgPSAoKGVuYWJsZSA+PiAyKSAmIDB4MDEpOwogICAgICAgIHJhdGUgICAgICAgPSBoYl8yLT5n
ZXRfaW5wdXRfcmF0ZSgpOwogICAgICAgIGlmIChlbmFibGUpIHsKICAgICAgICAgICAgcmF0ZSAv
PSAyOwogICAgICAgIH0KICAgICAgICB0YXBzLmFzc2lnbigKICAgICAgICAgICAgdGFwc190eF9h
cnJheSwgdGFwc190eF9hcnJheSArIHNpemVvZih0YXBzX3R4X2FycmF5KSAvIHNpemVvZihpbnQx
Nl90KSk7CiAgICB9CgogICAgZmlsdGVyX2luZm9fYmFzZTo6c3B0ciBoYihuZXcgZGlnaXRhbF9m
aWx0ZXJfYmFzZTxpbnQxNl90Pih0eXBlLAogICAgICAgIChlbmFibGUgPT0gMCkgPyB0cnVlIDog
ZmFsc2UsCiAgICAgICAgNCwKICAgICAgICByYXRlLAogICAgICAgIGludGVycG9sLAogICAgICAg
IGRlYywKICAgICAgICBmdWxsX3NjYWxlLAogICAgICAgIHRhcHMuc2l6ZSgpLAogICAgICAgIHRh
cHMpKTsKICAgIHJldHVybiBoYjsKfQoKZmlsdGVyX2luZm9fYmFzZTo6c3B0ciBhZDkzNjFfZGV2
aWNlX3Q6Ol9nZXRfZmlsdGVyX2ZpcigKICAgIGRpcmVjdGlvbl90IGRpcmVjdGlvbiwgY2hhaW5f
dCBjaGFpbikKewogICAgZG91YmxlIHJhdGUgICAgICAgICA9IDA7CiAgICBzaXplX3QgZGVjICAg
ICAgICAgID0gMTsKICAgIHNpemVfdCBpbnRlcnBvbCAgICAgPSAxOwogICAgc2l6ZV90IG1heF9u
dW1fdGFwcyA9IDEyODsKICAgIHVpbnQ4X3QgZW5hYmxlICAgICAgPSAxOwoKICAgIGRpZ2l0YWxf
ZmlsdGVyX2Jhc2U8aW50MTZfdD46OnNwdHIgaGJfMSA9CiAgICAgICAgc3RkOjpkeW5hbWljX3Bv
aW50ZXJfY2FzdDxkaWdpdGFsX2ZpbHRlcl9iYXNlPGludDE2X3Q+PigKICAgICAgICAgICAgX2dl
dF9maWx0ZXJfaGJfMShkaXJlY3Rpb24pKTsKCiAgICBpZiAoZGlyZWN0aW9uID09IFJYKSB7CiAg
ICAgICAgZGVjID0gX2dldF9maXJfZGVjX2ludChkaXJlY3Rpb24pOwogICAgICAgIGlmIChkZWMg
PT0gMCkgewogICAgICAgICAgICBlbmFibGUgPSAwOwogICAgICAgICAgICBkZWMgICAgPSAxOwog
ICAgICAgIH0KICAgICAgICBpbnRlcnBvbCA9IDE7CiAgICAgICAgcmF0ZSAgICAgPSBoYl8xLT5n
ZXRfb3V0cHV0X3JhdGUoKTsKICAgIH0gZWxzZSBpZiAoZGlyZWN0aW9uID09IFRYKSB7CiAgICAg
ICAgaW50ZXJwb2wgPSBfZ2V0X2Zpcl9kZWNfaW50KGRpcmVjdGlvbik7CiAgICAgICAgaWYgKGlu
dGVycG9sID09IDApIHsKICAgICAgICAgICAgZW5hYmxlICAgPSAwOwogICAgICAgICAgICBpbnRl
cnBvbCA9IDE7CiAgICAgICAgfQogICAgICAgIGRlYyAgPSAxOwogICAgICAgIHJhdGUgPSBoYl8x
LT5nZXRfaW5wdXRfcmF0ZSgpOwogICAgICAgIGlmIChlbmFibGUpIHsKICAgICAgICAgICAgcmF0
ZSAvPSBpbnRlcnBvbDsKICAgICAgICB9CiAgICB9CiAgICBtYXhfbnVtX3RhcHMgPSBfZ2V0X251
bV9maXJfdGFwcyhkaXJlY3Rpb24pOwoKICAgIGZpbHRlcl9pbmZvX2Jhc2U6OnNwdHIgZmlyKAog
ICAgICAgIG5ldyBkaWdpdGFsX2ZpbHRlcl9maXI8aW50MTZfdD4oZmlsdGVyX2luZm9fYmFzZTo6
RElHSVRBTF9GSVJfSTE2LAogICAgICAgICAgICAoZW5hYmxlID09IDApID8gdHJ1ZSA6IGZhbHNl
LAogICAgICAgICAgICA1LAogICAgICAgICAgICByYXRlLAogICAgICAgICAgICBpbnRlcnBvbCwK
ICAgICAgICAgICAgZGVjLAogICAgICAgICAgICAzMjc2NywKICAgICAgICAgICAgbWF4X251bV90
YXBzLAogICAgICAgICAgICBfZ2V0X2Zpcl90YXBzKGRpcmVjdGlvbiwgY2hhaW4pKSk7CgogICAg
cmV0dXJuIGZpcjsKfQoKdm9pZCBhZDkzNjFfZGV2aWNlX3Q6Ol9zZXRfZmlsdGVyX2ZpcigKICAg
IGRpcmVjdGlvbl90IGRpcmVjdGlvbiwgY2hhaW5fdCBjaGFubmVsLCBmaWx0ZXJfaW5mb19iYXNl
OjpzcHRyIGZpbHRlcikKewogICAgZGlnaXRhbF9maWx0ZXJfZmlyPGludDE2X3Q+OjpzcHRyIGZp
ciA9CiAgICAgICAgc3RkOjpkeW5hbWljX3BvaW50ZXJfY2FzdDxkaWdpdGFsX2ZpbHRlcl9maXI8
aW50MTZfdD4+KGZpbHRlcik7CiAgICAvLyBvbmx5IHdyaXRlIHRhcHMuIElnbm9yZSBldmVyeXRo
aW5nIGVsc2UgZm9yIG5vdwogICAgX3NldF9maXJfdGFwcyhkaXJlY3Rpb24sIGNoYW5uZWwsIGZp
ci0+Z2V0X3RhcHMoKSk7Cn0KCi8qCiAqIElmIEJXIG9mIG9uZSBvZiB0aGUgYW5hbG9nIGZpbHRl
cnMgZ2V0cyBvdmVyd3JpdHRlbiBtYW51YWxseSwKICogX3R4X2FuYWxvZ19idyBhbmQgX3J4X2Fu
YWxvZ19idyBhcmUgbm90IHZhbGlkIGFueSBtb3JlIQogKiBGb3IgdXNlZnVsIGRhdGEgaW4gdGhv
c2UgdmFyaWFibGVzIHNldF9id19maWx0ZXIgbWV0aG9kIHNob3VsZCBiZSB1c2VkCiAqLwp2b2lk
IGFkOTM2MV9kZXZpY2VfdDo6X3NldF9maWx0ZXJfbHBfYmIoCiAgICBkaXJlY3Rpb25fdCBkaXJl
Y3Rpb24sIGZpbHRlcl9pbmZvX2Jhc2U6OnNwdHIgZmlsdGVyKQp7CiAgICBhbmFsb2dfZmlsdGVy
X2xwOjpzcHRyIGxwZiA9IHN0ZDo6ZHluYW1pY19wb2ludGVyX2Nhc3Q8YW5hbG9nX2ZpbHRlcl9s
cD4oZmlsdGVyKTsKICAgIGRvdWJsZSBidyAgICAgICAgICAgICAgICAgID0gbHBmLT5nZXRfY3V0
b2ZmKCk7CiAgICBpZiAoZGlyZWN0aW9uID09IFJYKSB7CiAgICAgICAgLy8gcmVtZW1iZXI6IHRo
aXMgZnVuY3Rpb24gdGFrZXMgcmYgYncgYXMgaXRzIGlucHV0IGFuZCBjYWxpYnJhdGVkIHRvIDEu
NCB4IHRoZQogICAgICAgIC8vIGdpdmVuIHZhbHVlCiAgICAgICAgX3J4X2JiX2xwX2J3ID0gX2Nh
bGlicmF0ZV9iYXNlYmFuZF9yeF9hbmFsb2dfZmlsdGVyKDIgKiBidyAvIDEuNCk7IC8vIHJldHVy
bnMgYmIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgLy8gYncKCiAgICB9IGVsc2UgewogICAgICAgIC8vIHJl
bWVtYmVyOiB0aGlzIGZ1bmN0aW9uIHRha2VzIHJmIGJ3IGFzIGl0cyBpbnB1dCBhbmQgY2FsaWJy
YXRlcyB0byAxLjYgeCB0aGUKICAgICAgICAvLyBnaXZlbiB2YWx1ZQogICAgICAgIF90eF9iYl9s
cF9idyA9IF9jYWxpYnJhdGVfYmFzZWJhbmRfdHhfYW5hbG9nX2ZpbHRlcigyICogYncgLyAxLjYp
OwogICAgfQp9Cgp2b2lkIGFkOTM2MV9kZXZpY2VfdDo6X3NldF9maWx0ZXJfbHBfdGlhX3NlYygK
ICAgIGRpcmVjdGlvbl90IGRpcmVjdGlvbiwgZmlsdGVyX2luZm9fYmFzZTo6c3B0ciBmaWx0ZXIp
CnsKICAgIGFuYWxvZ19maWx0ZXJfbHA6OnNwdHIgbHBmID0gc3RkOjpkeW5hbWljX3BvaW50ZXJf
Y2FzdDxhbmFsb2dfZmlsdGVyX2xwPihmaWx0ZXIpOwogICAgZG91YmxlIGJ3ICAgICAgICAgICAg
ICAgICAgPSBscGYtPmdldF9jdXRvZmYoKTsKICAgIGlmIChkaXJlY3Rpb24gPT0gUlgpIHsKICAg
ICAgICAvLyByZW1lbWJlcjogdGhpcyBmdW5jdGlvbiB0YWtlcyByZiBidyBhcyBpdHMgaW5wdXQg
YW5kIGNhbGlicmF0ZWQgdG8gMi41IHggdGhlCiAgICAgICAgLy8gZ2l2ZW4gdmFsdWUKICAgICAg
ICBfcnhfdGlhX2xwX2J3ID0gX2NhbGlicmF0ZV9yeF9USUFzKDIgKiBidyAvIDIuNSk7IC8vIHJl
dHVybnMgYmIgYncKCiAgICB9IGVsc2UgewogICAgICAgIC8vIHJlbWVtYmVyOiB0aGlzIGZ1bmN0
aW9uIHRha2VzIHJmIGJ3IGFzIGl0cyBpbnB1dCBhbmQgY2FsaWJyYXRlcyB0byA1IHggdGhlCiAg
ICAgICAgLy8gZ2l2ZW4gdmFsdWUKICAgICAgICBfdHhfc2VjX2xwX2J3ID0gX2NhbGlicmF0ZV9z
ZWNvbmRhcnlfdHhfZmlsdGVyKDIgKiBidyAvIDUpOwogICAgfQp9Cgp9fSAvLyBuYW1lc3BhY2Ug
dWhkOjp1c3JwCg==
--000000000000d002c705be234d91
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000d002c705be234d91--

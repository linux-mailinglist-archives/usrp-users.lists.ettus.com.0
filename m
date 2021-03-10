Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D27333AF7
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 12:04:07 +0100 (CET)
Received: from [::1] (port=40532 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJwdB-00038e-Pd; Wed, 10 Mar 2021 06:03:57 -0500
Received: from mail-ej1-f44.google.com ([209.85.218.44]:41246)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mamuki92@gmail.com>) id 1lJwd8-00034j-ED
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 06:03:54 -0500
Received: by mail-ej1-f44.google.com with SMTP id lr13so37854449ejb.8
 for <usrp-users@lists.ettus.com>; Wed, 10 Mar 2021 03:03:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mpmU8McWSvdiK0pstMAC8lKZZzfE0NkPDysAJF6ETCo=;
 b=R16arjECODVsX6YhU1wUxXZADMzL4o40jjITOproW614ZFRmB1nQIgz4dVOgkDTOyr
 RUEUjQIbHGKogVbPbjqfG/uqrdBl+2C5xZyL5GBsHEgjEsaBGsfcEBPUEEJ29/vDuHme
 7r0638m/hJFwhvS3inj2XYprngV9wKfnPNZc2JCdz/issSddD/faUpX6wbfwpzAjyPNn
 7rc1w/Zk/jCDn3Fpmu1BbeGjM/u5UIEfVrovlUR0V1qfPDPiRmGftZaaB2H9qqJU/dnk
 w9NkxM5a6dFRUFdDhwmp+k7W1NI+jGdDSDDBXPgVWJV7tIzsVfcnlQYvZE8x6pJ/5I3x
 lTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mpmU8McWSvdiK0pstMAC8lKZZzfE0NkPDysAJF6ETCo=;
 b=frrmG1pqghk+8mhEWEGuxno8rHiWegHO5DCKQGPnKM8V82Sux/iPS1KBEPConeMrSi
 MefY2GqeafWy8ieMmQWgn226Gd0H2lCwQtRKgpdtbRLik9fGkyyqUiSHyxVsqSPGct0l
 hq+IBRpLLKNER8goyGdVf6NotYlRL4pKv8eyDfWaauw+O1kciJk5RnvSt40+/XeKiVQ5
 V3RRIweiTCCP5J9MPHevSs8AnwrtyXoOHlOfubmJKR5uktOhggVun2JTF1thIP60itSh
 S4xh2Vnu4/ZvQpDF09bx+KiM3V37gWcKQsCrIawyy5tLi2bpptNb1xrF+DfifCNicXe1
 UWwg==
X-Gm-Message-State: AOAM532ehQXP4OVqjK9639PAvGE9VMnLoh7AgfsnMDOBWehHJ0ZYX5a0
 FLyC1bAsCh4LbC4ShfatWOnih/KFXRuPmmulTuA=
X-Google-Smtp-Source: ABdhPJx0f2U2XwDd60qO4AuHJiNIkfE5hqM4EkVYYmXx/f2PhbzajYBjcXICg7no5XAux1FXaN+jSwWCEVSd+6LCLBQ=
X-Received: by 2002:a17:906:e16:: with SMTP id
 l22mr2962936eji.173.1615374193299; 
 Wed, 10 Mar 2021 03:03:13 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQX3ubfTZ1sP6VU0-USdwt=H6g7OAH0x9aFBb9wwXWayOw@mail.gmail.com>
 <5e562eab-1997-b9be-0229-633c783c9e8a@elitecoding.org>
 <CAG16vQWRK7DRCT3_4s8V+1NyzTE2+hkdnLyKEEF9WwChvP0B4g@mail.gmail.com>
 <0d3c522a-e05d-7c3a-b0f5-8875b568a338@elitecoding.org>
In-Reply-To: <0d3c522a-e05d-7c3a-b0f5-8875b568a338@elitecoding.org>
Date: Wed, 10 Mar 2021 12:03:00 +0100
Message-ID: <CAG16vQXYHtY3md71AxQVXYP+h-MyyY3ShbUV78JMmvnpAFQ0kQ@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Enable AGC in USRP E320 with RFNoC using GNURadio
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: =?utf-8?q?Maria_Mu=C3=B1oz_via_USRP-users?= <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Content-Type: multipart/mixed; boundary="===============4396053191786795658=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============4396053191786795658==
Content-Type: multipart/alternative; boundary="000000000000f8932605bd2c9ced"

--000000000000f8932605bd2c9ced
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jules,

Thank you, I will try it and let you know as soon as possible.

By the way, I have checked the python generated using the UHD USRP SOURCE
block (instead of the RFNoC radio block) with AGC active and it generates
the set of AGC fine. So, as you said, it is fixed in gr-uhd but it might
still be a bug in gr-ettus.

Thanks again for the help!

Kind Regards,

Maria

El mi=C3=A9, 10 mar 2021 a las 11:25, Julian Arnold (<julian@elitecoding.or=
g>)
escribi=C3=B3:

> Maria,
>
> >> So, if I understand correctly, I have to put there also something like
> >> "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't it?
>
> Exactly! Take a look at [1] for the correct syntax.
>
> [1]
>
> https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc4=
971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
>
> Let me know if that worked out for you.
>
> Cheers,
> Julian
>
>
> On 3/10/21 9:59 AM, Maria Mu=C3=B1oz wrote:
> > Hi Julian,
> >
> > Thanks for the quick answer.
> >
> > I think you might be right about the possible bug turning on the AGC
> > from GRC. I have checked the flow graph generated and there's no
> > set_rx_agc enable option (I checked the c++ definition block where this
> > option did appear but I hadn't look at the python generated).
> >
> > The lines related to the radio in my flowgraph are these:
> >
> > /self.ettus_rfnoc_rx_radio_0 =3D ettus.rfnoc_rx_radio(
> >              self.rfnoc_graph,
> >              uhd.device_addr(''),
> >              -1,
> >              -1)
> >          self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
> >          self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
> >          self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)
> >          self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
> >          self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)
> >          self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)
> >          self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)/
> >
> > So, if I understand correctly, I have to put there also something like
> > "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't it?
> >
> > Kind Regards,
> >
> > Maria
> >
> > El mi=C3=A9, 10 mar 2021 a las 9:16, Julian Arnold (<julian@elitecoding=
.org
> > <mailto:julian@elitecoding.org>>) escribi=C3=B3:
> >
> >     Maria,
> >
> >     I might not be the right person to answer this, as my experience wi=
th
> >     UHD 4.0 is relatively limited at the moment.
> >
> >     However, I cant tell you that the AGC on B2x0 devices is controlled
> via
> >     software (using set_rx_agc()). There is no need to directly modify
> the
> >     state of any pins of the FPGA.
> >
> >     I vaguely remember that there was a bug in an earlier version of
> gr-uhd
> >     (somewhere in 3.7) that made it difficult to turn on the AGC using
> GRC.
> >     That particular one is fixed in gr-uhd. Not sure about gr-ettus,
> though.
> >
> >     Maybe try using set_rx_agc() manually in you flow-graph (*.py) and
> see
> >     if that helps.
> >
> >     Cheers,
> >     Julian
> >
> >     On 3/9/21 5:11 PM, Maria Mu=C3=B1oz via USRP-users wrote:
> >      > Hi all,
> >      >
> >      > I was wondering if it is possible to enable AGC from the RFNoC
> radio
> >      > block in GNURadio. I use UHD 4.0 version and GNURadio 3.8 with
> >     gr-ettus.
> >      >
> >      > I see that the RFNoC Rx radio block has an enable/disable/defaul=
t
> >     AGC
> >      > option in the GNURadio block which I assume calls the UHD functi=
on
> >      > "set_rx_agc"
> >      >
> >     (
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abdab=
1f6c3775a9071b15c9805f866486
> )
> >      >
> >      > I have also checked on the FPGA side that there is a pin from
> >     FPGA to
> >      > AD9361 called XCVR_ENA_AGC which is set always to 1 on the top
> >     level of
> >      > the FPGA image (see attached file "e320.v", line 872). This pin,
> >      > according to
> >      >
> >
> https://www.analog.com/media/en/technical-documentation/data-sheets/AD936=
1.pdf
> >
> >      > is the "Manual Control Input for Automatic Gain Control (AGC)".
> >      > Must be this pin set to 0 to have AGC working?
> >      > If not, how can I get AGC working? I've made some tests
> >      > enabling/disabling this option but I do not see any changes
> >     between the
> >      > waveforms received.
> >      >
> >      > Any help would be appreciated.
> >      >
> >      > Kind Regards,
> >      >
> >      > Maria
> >      >
> >      > _______________________________________________
> >      > USRP-users mailing list
> >      > USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
> >      >
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >      >
> >
>

--000000000000f8932605bd2c9ced
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jules,<div><br><div>Thank you, I will try it and=C2=A0l=
et you know as soon as possible.</div><div><br></div><div>By the way, I hav=
e checked the python generated=C2=A0using the UHD USRP SOURCE block (instea=
d of the RFNoC radio block) with AGC active and it generates the set of AGC=
 fine. So, as you said, it is fixed in gr-uhd but it might still be a bug i=
n gr-ettus.</div><div><br></div><div>Thanks again for the help!</div><div><=
br></div><div>Kind Regards,</div><div><br></div><div>Maria</div></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El mi=
=C3=A9, 10 mar 2021 a las 11:25, Julian Arnold (&lt;<a href=3D"mailto:julia=
n@elitecoding.org">julian@elitecoding.org</a>&gt;) escribi=C3=B3:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Maria,<br>
<br>
&gt;&gt; So, if I understand correctly, I have to put there also something =
like <br>
&gt;&gt; &quot;self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)&quot; isn&#=
39;t it?<br>
<br>
Exactly! Take a look at [1] for the correct syntax.<br>
<br>
[1] <br>
<a href=3D"https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803=
b53554fc4971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/EttusResearch/gr-ettus/blob/1038c4=
ce5135a2803b53554fc4971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97</a><b=
r>
<br>
Let me know if that worked out for you.<br>
<br>
Cheers,<br>
Julian<br>
<br>
<br>
On 3/10/21 9:59 AM, Maria Mu=C3=B1oz wrote:<br>
&gt; Hi Julian,<br>
&gt; <br>
&gt; Thanks for the quick answer.<br>
&gt; <br>
&gt; I think you might be right about the possible bug turning on the AGC <=
br>
&gt; from GRC. I have checked the flow graph generated and there&#39;s no <=
br>
&gt; set_rx_agc enable option (I checked the c++ definition block where thi=
s <br>
&gt; option did appear but I hadn&#39;t look at the python generated).<br>
&gt; <br>
&gt; The lines related to the radio in my flowgraph are these:<br>
&gt; <br>
&gt; /self.ettus_rfnoc_rx_radio_0 =3D ettus.rfnoc_rx_radio(<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rfnoc_graph,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.device_addr(&#39;&=
#39;),<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -1,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -1)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_rate=
(samp_rate)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_ante=
nna(&#39;RX2&#39;, 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_freq=
uency(cf, 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_gain=
(gain, 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_band=
width(samp_rate, 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_dc_o=
ffset(True, 0)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_iq_b=
alance(True, 0)/<br>
&gt; <br>
&gt; So, if I understand correctly, I have to put there also something like=
 <br>
&gt; &quot;self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)&quot; isn&#39;t=
 it?<br>
&gt; <br>
&gt; Kind Regards,<br>
&gt; <br>
&gt; Maria<br>
&gt; <br>
&gt; El mi=C3=A9, 10 mar 2021 a las 9:16, Julian Arnold (&lt;<a href=3D"mai=
lto:julian@elitecoding.org" target=3D"_blank">julian@elitecoding.org</a> <b=
r>
&gt; &lt;mailto:<a href=3D"mailto:julian@elitecoding.org" target=3D"_blank"=
>julian@elitecoding.org</a>&gt;&gt;) escribi=C3=B3:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Maria,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I might not be the right person to answer this, as =
my experience with<br>
&gt;=C2=A0 =C2=A0 =C2=A0UHD 4.0 is relatively limited at the moment.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0However, I cant tell you that the AGC on B2x0 devic=
es is controlled via<br>
&gt;=C2=A0 =C2=A0 =C2=A0software (using set_rx_agc()). There is no need to =
directly modify the<br>
&gt;=C2=A0 =C2=A0 =C2=A0state of any pins of the FPGA.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I vaguely remember that there was a bug in an earli=
er version of gr-uhd<br>
&gt;=C2=A0 =C2=A0 =C2=A0(somewhere in 3.7) that made it difficult to turn o=
n the AGC using GRC.<br>
&gt;=C2=A0 =C2=A0 =C2=A0That particular one is fixed in gr-uhd. Not sure ab=
out gr-ettus, though.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Maybe try using set_rx_agc() manually in you flow-g=
raph (*.py) and see<br>
&gt;=C2=A0 =C2=A0 =C2=A0if that helps.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Cheers,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Julian<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 3/9/21 5:11 PM, Maria Mu=C3=B1oz via USRP-users =
wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi all,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I was wondering if it is possible to enable A=
GC from the RFNoC radio<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; block in GNURadio. I use UHD 4.0 version and =
GNURadio 3.8 with<br>
&gt;=C2=A0 =C2=A0 =C2=A0gr-ettus.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I see that the RFNoC Rx radio block has an en=
able/disable/default<br>
&gt;=C2=A0 =C2=A0 =C2=A0AGC<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; option in the GNURadio block which I assume c=
alls the UHD function<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; &quot;set_rx_agc&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0(<a href=3D"https://files.ettus.com/manual/classuhd=
_1_1usrp_1_1multi__usrp.html#abdab1f6c3775a9071b15c9805f866486" rel=3D"nore=
ferrer" target=3D"_blank">https://files.ettus.com/manual/classuhd_1_1usrp_1=
_1multi__usrp.html#abdab1f6c3775a9071b15c9805f866486</a>)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; I have also checked on the FPGA side that the=
re is a pin from<br>
&gt;=C2=A0 =C2=A0 =C2=A0FPGA to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; AD9361 called=C2=A0XCVR_ENA_AGC which is set =
always to 1 on the top<br>
&gt;=C2=A0 =C2=A0 =C2=A0level of<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; the FPGA image (see attached file &quot;e320.=
v&quot;, line 872). This pin,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; according to<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0<a href=3D"https://www.analog.com/media/en/technica=
l-documentation/data-sheets/AD9361.pdf" rel=3D"noreferrer" target=3D"_blank=
">https://www.analog.com/media/en/technical-documentation/data-sheets/AD936=
1.pdf</a><br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; is the &quot;Manual Control Input for Automat=
ic Gain Control (AGC)&quot;.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Must be this pin set to 0 to have AGC working=
?<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; If=C2=A0not, how can I=C2=A0get AGC working? =
I&#39;ve made some tests<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; enabling/disabling this option but I do not s=
ee any changes<br>
&gt;=C2=A0 =C2=A0 =C2=A0between the<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; waveforms received.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Any help would be appreciated.<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Kind Regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Maria<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; _____________________________________________=
__<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; USRP-users mailing list<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"mailto:USRP-users@lists.ettus.com"=
 target=3D"_blank">USRP-users@lists.ettus.com</a> &lt;mailto:<a href=3D"mai=
lto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.co=
m</a>&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <a href=3D"http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
</blockquote></div>

--000000000000f8932605bd2c9ced--


--===============4396053191786795658==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4396053191786795658==--


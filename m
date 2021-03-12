Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTP id 22DCD338839
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 10:06:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 21DB6383D97
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 04:06:05 -0500 (EST)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 6872A383B7C
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 04:04:49 -0500 (EST)
Received: by mail-ej1-f54.google.com with SMTP id mj10so51895148ejb.5
        for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 01:04:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Dq/hT0LNIG5MJNI3SxQUIbSk3cPlOTVbRZpibILU7Ag=;
        b=PLEGhSRkj6mNb2eLCUwJ1puBmTIEIBnQnXXJfF8r1NhTeK8+QfTuny1PuxOCl1zNCk
         Ha/waqAYJ4+YYbmHlQFpMCwwMQbVW5Rz8DubxFLGH4oNrZs3eBpTlq68GyHlUhoTRAI1
         ZjKh/J6aLEaSKj0SdnCgUbr+kUi4NL9ynowSPYBx4ojcZvK/drE94YXRwaaN/t7yrlJq
         w3AO/8qHUxaXDeZCphZ1caMccXlTf7a7R1q2dy7NVJVS56AXNk9kRQVB1hqXWqznGyh0
         W8IvW4zmi/neWxtqmAdbMokcFeyzQiHb2AT5ybZP4DLY1bhN1fmeA7EBH2CzfzTCYKxk
         cWNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Dq/hT0LNIG5MJNI3SxQUIbSk3cPlOTVbRZpibILU7Ag=;
        b=K/gEf71B/uUytyw/6BsmSPuAlGZuZzQBTIUR7m4O7hDgQkeMWiaAcNX3Wsp133fVbM
         UmQjgzdiqeGuNU0JppErIvB5Qeg+oq1x8sJaXwh8484J8Cz6Q92mN1NRAYs+DQVer78G
         ASqQEPxV4rQTXqNQcr07eSHSAyZzqf5L99mgv+iW5FFSzr34l0BxoleHoNq9ENoKmWcf
         8GPl57hhOQ2VOfROg0KtAv89uTi5/tMOHLReklSaWYs3UE9ZID53stg2jNsUAfW+x67i
         y+6kaVli3LmZLnvL0XpbWnOkFS+ZCn6wQgz+YzUcWb/ZrRHIBtU7fm1CuLT8821Q6kkU
         MxBA==
X-Gm-Message-State: AOAM530Vfo6U9Ia21S+lEIGbQYFHedPyBb/12+I5zF00v5m3UCRyWoFx
	tM5tjbmCvJu4Q5qZqqB+JuXp4I4potthyM/vnoJh4HhmRDc=
X-Google-Smtp-Source: ABdhPJzz3FM2+ypzXNoKgrHF7eNSUPHHDBHlayPTUHMYkDNzjFcQRYP7/guyTMAK4BrJ3L7w7JS3EM8Gu7+awnM+LHk=
X-Received: by 2002:a17:906:5607:: with SMTP id f7mr7275019ejq.262.1615539888501;
 Fri, 12 Mar 2021 01:04:48 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQX3ubfTZ1sP6VU0-USdwt=H6g7OAH0x9aFBb9wwXWayOw@mail.gmail.com>
 <5e562eab-1997-b9be-0229-633c783c9e8a@elitecoding.org> <CAG16vQWRK7DRCT3_4s8V+1NyzTE2+hkdnLyKEEF9WwChvP0B4g@mail.gmail.com>
 <0d3c522a-e05d-7c3a-b0f5-8875b568a338@elitecoding.org> <CAG16vQXYHtY3md71AxQVXYP+h-MyyY3ShbUV78JMmvnpAFQ0kQ@mail.gmail.com>
 <CAG16vQXT1Cqi_s_ZJtFwD6x8SCDVtfX6-6RqrQwUocMcwUcX6A@mail.gmail.com> <a37d166e-39cb-f742-14bc-5cb8dfbd1aeb@elitecoding.org>
In-Reply-To: <a37d166e-39cb-f742-14bc-5cb8dfbd1aeb@elitecoding.org>
From: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Date: Fri, 12 Mar 2021 10:04:37 +0100
Message-ID: <CAG16vQV3g+2u_zsF_bhBFdcHGmMBrHh-iKjepummdLWTbmm_+A@mail.gmail.com>
To: Julian Arnold <julian@elitecoding.org>
Message-ID-Hash: JX5RISGZ54CRPOYTPBVUPZD257XA35TE
X-Message-ID-Hash: JX5RISGZ54CRPOYTPBVUPZD257XA35TE
X-MailFrom: mamuki92@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Enable AGC in USRP E320 with RFNoC using GNURadio
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JX5RISGZ54CRPOYTPBVUPZD257XA35TE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9063109924283190093=="

--===============9063109924283190093==
Content-Type: multipart/alternative; boundary="0000000000002cb68705bd533112"

--0000000000002cb68705bd533112
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok Julian, I will check the tree node and try to modify the properties.
Thanks again for the help!

Kind Regards,
Maria

El jue, 11 mar 2021 a las 18:26, Julian Arnold (<julian@elitecoding.org>)
escribi=C3=B3:

> Maria,
>
> >> /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
> >>
> >> but I have received the following errorThat's why I gave the reference
> ([1]) showing the correct syntax ;)
> Anyways, glad it worked out for you!
> You might consider filing a bug issue against gr-ettus on github.
>
> >> By the way, I have read that there are several modes for AGC
> >> (fast,slow,hybrid..) I was wondering which type is implemented by
> >> default and if it is possible to change AGC mode in the flowgraph.
> Those modes were mainly dictated by the AD9361. Default should be
> "slow". The "hybrid" mode is not implemented as far as I know.
> Which mode you want ("slow" / "fast") depends on the signal you want to
> receive. For burst-mode digital signals you might want to switch to the
> "fast" mode.
> However, I think this is only possible by directly writing
> to the corresponding property-tree node. Again, I'm not sure about
> UHD-4.0/gr-ettus though.
>
> Cheers,
> Julian
>
>
> On 3/11/21 5:26 PM, Maria Mu=C3=B1oz wrote:
> > Hi Julian,
> >
> > I have initially changed the python generated for my flowgraph with thi=
s
> > line:
> >
> > /self.ettus_rfnoc_rx_radio_0.set_rx_agc(False, 0)/
> >
> > but I have received the following error:
> >
> > T/raceback (most recent call last):
> >    File "constellation_soft_decoder.py", line 301, in <module>
> >      main()
> >    File "constellation_soft_decoder.py", line 277, in main
> >      tb =3D top_block_cls()
> >    File "constellation_soft_decoder.py", line 166, in __init__
> >      self.ettus_rfnoc_rx_radio_0.set_rx_agc(True, 0)
> > AttributeError: 'rfnoc_rx_radio_sptr' object has no attribute
> 'set_rx_agc'/
> >
> > But rfnoc_radio_impl.cc defines it:
> >
> > /void rfnoc_rx_radio_impl::set_agc(const bool enable, const size_t chan=
)
> > {
> >      return d_radio_ref->set_rx_agc(enable, chan);
> > }/
> >
> > Searching the rfnoc_rx_radio_sptr with grep takes me to "swig" files. I
> > have looked at ettus_swig.py and seen that the command name is set_agc
> > instead of set_rx_agc:
> >
> > /def set_agc(self, enable: "bool const", chan: "size_t const") -> "void=
":
> >          r"""
> >          set_agc(rfnoc_rx_radio self, bool const enable, size_t const
> chan)
> >          Enable/disable the AGC for this RX radio (if available)
> >          """
> >          return _ettus_swig.rfnoc_rx_radio_set_agc(self, enable, chan)/
> > /
> > /
> > Changing this in the flowgraph.py seems to work!! Thanks for the help o=
n
> > this! I put this information here just in case someone is stuck in the
> > same point.
> >
> > By the way, I have read that there are several modes for AGC
> > (fast,slow,hybrid..) I was wondering which type is implemented by
> > default and if it is possible to change AGC mode in the flowgraph.
> >
> > Kind Regards,
> >
> > Maria
> >
> >
> > El mi=C3=A9, 10 mar 2021 a las 12:03, Maria Mu=C3=B1oz (<mamuki92@gmail=
.com
> > <mailto:mamuki92@gmail.com>>) escribi=C3=B3:
> >
> >     Hi Jules,
> >
> >     Thank you, I will try it and let you know as soon as possible.
> >
> >     By the way, I have checked the python generated using the UHD USRP
> >     SOURCE block (instead of the RFNoC radio block) with AGC active and
> >     it generates the set of AGC fine. So, as you said, it is fixed in
> >     gr-uhd but it might still be a bug in gr-ettus.
> >
> >     Thanks again for the help!
> >
> >     Kind Regards,
> >
> >     Maria
> >
> >     El mi=C3=A9, 10 mar 2021 a las 11:25, Julian Arnold
> >     (<julian@elitecoding.org <mailto:julian@elitecoding.org>>) escribi=
=C3=B3:
> >
> >         Maria,
> >
> >          >> So, if I understand correctly, I have to put there also
> >         something like
> >          >> "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't it=
?
> >
> >         Exactly! Take a look at [1] for the correct syntax.
> >
> >         [1]
> >
> https://github.com/EttusResearch/gr-ettus/blob/1038c4ce5135a2803b53554fc4=
971fe3de747d9a/include/ettus/rfnoc_rx_radio.h#L97
> >
> >         Let me know if that worked out for you.
> >
> >         Cheers,
> >         Julian
> >
> >
> >         On 3/10/21 9:59 AM, Maria Mu=C3=B1oz wrote:
> >          > Hi Julian,
> >          >
> >          > Thanks for the quick answer.
> >          >
> >          > I think you might be right about the possible bug turning on
> >         the AGC
> >          > from GRC. I have checked the flow graph generated and there'=
s
> no
> >          > set_rx_agc enable option (I checked the c++ definition block
> >         where this
> >          > option did appear but I hadn't look at the python generated)=
.
> >          >
> >          > The lines related to the radio in my flowgraph are these:
> >          >
> >          > /self.ettus_rfnoc_rx_radio_0 =3D ettus.rfnoc_rx_radio(
> >          >              self.rfnoc_graph,
> >          >              uhd.device_addr(''),
> >          >              -1,
> >          >              -1)
> >          >          self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
> >          >          self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
> >          >          self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)
> >          >          self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
> >          >          self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate=
,
> 0)
> >          >          self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)
> >          >          self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)=
/
> >          >
> >          > So, if I understand correctly, I have to put there also
> >         something like
> >          > "self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't it?
> >          >
> >          > Kind Regards,
> >          >
> >          > Maria
> >          >
> >          > El mi=C3=A9, 10 mar 2021 a las 9:16, Julian Arnold
> >         (<julian@elitecoding.org <mailto:julian@elitecoding.org>
> >          > <mailto:julian@elitecoding.org
> >         <mailto:julian@elitecoding.org>>>) escribi=C3=B3:
> >          >
> >          >     Maria,
> >          >
> >          >     I might not be the right person to answer this, as my
> >         experience with
> >          >     UHD 4.0 is relatively limited at the moment.
> >          >
> >          >     However, I cant tell you that the AGC on B2x0 devices is
> >         controlled via
> >          >     software (using set_rx_agc()). There is no need to
> >         directly modify the
> >          >     state of any pins of the FPGA.
> >          >
> >          >     I vaguely remember that there was a bug in an earlier
> >         version of gr-uhd
> >          >     (somewhere in 3.7) that made it difficult to turn on the
> >         AGC using GRC.
> >          >     That particular one is fixed in gr-uhd. Not sure about
> >         gr-ettus, though.
> >          >
> >          >     Maybe try using set_rx_agc() manually in you flow-graph
> >         (*.py) and see
> >          >     if that helps.
> >          >
> >          >     Cheers,
> >          >     Julian
> >          >
> >          >     On 3/9/21 5:11 PM, Maria Mu=C3=B1oz via USRP-users wrote=
:
> >          >      > Hi all,
> >          >      >
> >          >      > I was wondering if it is possible to enable AGC from
> >         the RFNoC radio
> >          >      > block in GNURadio. I use UHD 4.0 version and GNURadio
> >         3.8 with
> >          >     gr-ettus.
> >          >      >
> >          >      > I see that the RFNoC Rx radio block has an
> >         enable/disable/default
> >          >     AGC
> >          >      > option in the GNURadio block which I assume calls the
> >         UHD function
> >          >      > "set_rx_agc"
> >          >      >
> >          >
> >           (
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abdab=
1f6c3775a9071b15c9805f866486
> )
> >          >      >
> >          >      > I have also checked on the FPGA side that there is a
> >         pin from
> >          >     FPGA to
> >          >      > AD9361 called XCVR_ENA_AGC which is set always to 1 o=
n
> >         the top
> >          >     level of
> >          >      > the FPGA image (see attached file "e320.v", line 872)=
.
> >         This pin,
> >          >      > according to
> >          >      >
> >          >
> >
> https://www.analog.com/media/en/technical-documentation/data-sheets/AD936=
1.pdf
> >          >
> >          >      > is the "Manual Control Input for Automatic Gain
> >         Control (AGC)".
> >          >      > Must be this pin set to 0 to have AGC working?
> >          >      > If not, how can I get AGC working? I've made some tes=
ts
> >          >      > enabling/disabling this option but I do not see any
> >         changes
> >          >     between the
> >          >      > waveforms received.
> >          >      >
> >          >      > Any help would be appreciated.
> >          >      >
> >          >      > Kind Regards,
> >          >      >
> >          >      > Maria
> >          >      >
> >          >      > _______________________________________________
> >          >      > USRP-users mailing list
> >          >      > USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>
> >         <mailto:USRP-users@lists.ettus.com
> >         <mailto:USRP-users@lists.ettus.com>>
> >          >      >
> >
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >          >      >
> >          >
> >
>

--0000000000002cb68705bd533112
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Ok Julian, I will check the tree node and try to modify th=
e properties. Thanks again for the help!<div><br></div><div>Kind Regards,</=
div><div>Maria</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">El jue, 11 mar 2021 a las 18:26, Julian Arnold (&lt;<a =
href=3D"mailto:julian@elitecoding.org">julian@elitecoding.org</a>&gt;) escr=
ibi=C3=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Maria=
,<br>
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

--0000000000002cb68705bd533112--

--===============9063109924283190093==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9063109924283190093==--

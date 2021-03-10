Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D5497333809
	for <lists+usrp-users@lfdr.de>; Wed, 10 Mar 2021 10:00:29 +0100 (CET)
Received: from [::1] (port=39694 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lJuhe-0008TL-NW; Wed, 10 Mar 2021 04:00:26 -0500
Received: from mail-ed1-f52.google.com ([209.85.208.52]:44917)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mamuki92@gmail.com>) id 1lJuha-0008M5-CX
 for usrp-users@lists.ettus.com; Wed, 10 Mar 2021 04:00:22 -0500
Received: by mail-ed1-f52.google.com with SMTP id w9so26819245edc.11
 for <usrp-users@lists.ettus.com>; Wed, 10 Mar 2021 01:00:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Cq2f5CDKn/Jw65XUDeODUBTVpA5H+reRgypgZlaveYY=;
 b=HRuGi2j3gfNQPHKXDQeTtl9Ih9x/Y4kpcesYftTv/CB7Hq9nGodPkD+KYOzDwPk9A7
 aZPeHUpKU8pPfs4vrd82/7xGvqyDRpme2Xrea3dWQBXgvNy0GTqw2gxnkwCWHGIqmI5a
 soltl9Zk49FDJ7sECGs6d1lSAqD6wxolZk02YYlB2oT0HG7IhZAHR1l/cc+hOzkquxIA
 9egtf8+sWJtKG5XLOujFCPTIZDO6DYW2Y+PC+neC+SISQaGYTlMlHCfDRmp6ByAc6YtT
 yDh2sRjPS3o0O33w22VZBqsTSFLNJrrSIpBPyZYGGJ8JQpzUjc2nENh4fBG+50N3H9ro
 xQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Cq2f5CDKn/Jw65XUDeODUBTVpA5H+reRgypgZlaveYY=;
 b=lS5yA5ghTLKUVHybEySX5G+djAZGMwyN/7gkgW2+ln1K5lBZ57w+DImZJNcUBSURqj
 LCM8FkwT6ermiOFk94RbQBP17/xu7vMojfOqPx4CzMmS7jJmHtiLP2gUF4nz0A3nUOje
 NNCl4oDJhy/yMIxXzAKzPu6ZOw75eSplrbJsICfGEoZugKuVSJcMRRdbL6YHLb+gEy+r
 lo3GiRtOcJ5OstrUJhIwo7jIYMCya9O9hY+pL6wO9orjPjmSCe5fiqtQX3hnC5yBJFSy
 vcxTrQ+pqkkBzOJhsuBMfP+BOUekB6c1uAduACa9sZgebeZrfvk1cb+Et0f736MyGve9
 vOGQ==
X-Gm-Message-State: AOAM532vGLo/75tbHGUf91i3KbYALlchku/0ujlE9tU3+FXYqtOEQUgn
 JhLfA0CcWYIgZAO+9+WnSNNUqSAtUJ/WLIFCLiWdyJ9WTLY2/A==
X-Google-Smtp-Source: ABdhPJzYimbwO8s7qTpZVnV8Toc5XIsWMpU0vcrUvnQwUjQl27u9upWzCPSHxmFYwGc7v7GNYIiDwPdooqktOf+jsqc=
X-Received: by 2002:a50:d307:: with SMTP id g7mr2089232edh.204.1615366781241; 
 Wed, 10 Mar 2021 00:59:41 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQX3ubfTZ1sP6VU0-USdwt=H6g7OAH0x9aFBb9wwXWayOw@mail.gmail.com>
 <5e562eab-1997-b9be-0229-633c783c9e8a@elitecoding.org>
In-Reply-To: <5e562eab-1997-b9be-0229-633c783c9e8a@elitecoding.org>
Date: Wed, 10 Mar 2021 09:59:29 +0100
Message-ID: <CAG16vQWRK7DRCT3_4s8V+1NyzTE2+hkdnLyKEEF9WwChvP0B4g@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============0942914263642891749=="
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

--===============0942914263642891749==
Content-Type: multipart/alternative; boundary="0000000000002d8a5505bd2ae35e"

--0000000000002d8a5505bd2ae35e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Julian,

Thanks for the quick answer.

I think you might be right about the possible bug turning on the AGC from
GRC. I have checked the flow graph generated and there's no set_rx_agc
enable option (I checked the c++ definition block where this option did
appear but I hadn't look at the python generated).

The lines related to the radio in my flowgraph are these:












*self.ettus_rfnoc_rx_radio_0 =3D ettus.rfnoc_rx_radio(
self.rfnoc_graph,            uhd.device_addr(''),            -1,
-1)        self.ettus_rfnoc_rx_radio_0.set_rate(samp_rate)
self.ettus_rfnoc_rx_radio_0.set_antenna('RX2', 0)
self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)
self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)
self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)
self.ettus_rfnoc_rx_radio_0.set_dc_offset(True, 0)
self.ettus_rfnoc_rx_radio_0.set_iq_balance(True, 0)*

So, if I understand correctly, I have to put there also something like
"self.ettus_rfnoc_rx_radio_0.set_rx_agc(enable,0)" isn't it?

Kind Regards,

Maria

El mi=C3=A9, 10 mar 2021 a las 9:16, Julian Arnold (<julian@elitecoding.org=
>)
escribi=C3=B3:

> Maria,
>
> I might not be the right person to answer this, as my experience with
> UHD 4.0 is relatively limited at the moment.
>
> However, I cant tell you that the AGC on B2x0 devices is controlled via
> software (using set_rx_agc()). There is no need to directly modify the
> state of any pins of the FPGA.
>
> I vaguely remember that there was a bug in an earlier version of gr-uhd
> (somewhere in 3.7) that made it difficult to turn on the AGC using GRC.
> That particular one is fixed in gr-uhd. Not sure about gr-ettus, though.
>
> Maybe try using set_rx_agc() manually in you flow-graph (*.py) and see
> if that helps.
>
> Cheers,
> Julian
>
> On 3/9/21 5:11 PM, Maria Mu=C3=B1oz via USRP-users wrote:
> > Hi all,
> >
> > I was wondering if it is possible to enable AGC from the RFNoC radio
> > block in GNURadio. I use UHD 4.0 version and GNURadio 3.8 with gr-ettus=
.
> >
> > I see that the RFNoC Rx radio block has an enable/disable/default AGC
> > option in the GNURadio block which I assume calls the UHD function
> > "set_rx_agc"
> > (
> https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#abdab=
1f6c3775a9071b15c9805f866486
> )
> >
> > I have also checked on the FPGA side that there is a pin from FPGA to
> > AD9361 called XCVR_ENA_AGC which is set always to 1 on the top level of
> > the FPGA image (see attached file "e320.v", line 872). This pin,
> > according to
> >
> https://www.analog.com/media/en/technical-documentation/data-sheets/AD936=
1.pdf
> > is the "Manual Control Input for Automatic Gain Control (AGC)".
> > Must be this pin set to 0 to have AGC working?
> > If not, how can I get AGC working? I've made some tests
> > enabling/disabling this option but I do not see any changes between the
> > waveforms received.
> >
> > Any help would be appreciated.
> >
> > Kind Regards,
> >
> > Maria
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>

--0000000000002d8a5505bd2ae35e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Julian,<div><br></div><div>Thanks for the quick answer.=
</div><div><br></div><div>I think you might be right about the possible bug=
 turning on the AGC from GRC. I have checked the flow graph generated and t=
here&#39;s no set_rx_agc enable option (I checked the c++ definition block =
where this option did appear but I hadn&#39;t look at the python generated)=
.</div><div><br></div><div>The lines related to the radio in my flowgraph a=
re these:</div><div><br></div><div><i>self.ettus_rfnoc_rx_radio_0 =3D ettus=
.rfnoc_rx_radio(<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.rfnoc_gr=
aph,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 uhd.device_addr(&#39;&#39=
;),<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -1,<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 -1)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ettus_rfno=
c_rx_radio_0.set_rate(samp_rate)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ettus_=
rfnoc_rx_radio_0.set_antenna(&#39;RX2&#39;, 0)<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 self.ettus_rfnoc_rx_radio_0.set_frequency(cf, 0)<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_gain(gain, 0)<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_bandwidth(samp_rate, 0)<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_dc_offset(True,=
 0)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ettus_rfnoc_rx_radio_0.set_iq_balan=
ce(True, 0)</i><br></div><div><br></div><div>So, if I understand correctly,=
 I have to put there also something like &quot;self.ettus_rfnoc_rx_radio_0.=
set_rx_agc(enable,0)&quot; isn&#39;t it?</div><div><br></div><div>Kind Rega=
rds,</div><div><br></div><div>Maria</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">El mi=C3=A9, 10 mar 2021 a las 9:1=
6, Julian Arnold (&lt;<a href=3D"mailto:julian@elitecoding.org">julian@elit=
ecoding.org</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Maria,<br>
<br>
I might not be the right person to answer this, as my experience with <br>
UHD 4.0 is relatively limited at the moment.<br>
<br>
However, I cant tell you that the AGC on B2x0 devices is controlled via <br=
>
software (using set_rx_agc()). There is no need to directly modify the <br>
state of any pins of the FPGA.<br>
<br>
I vaguely remember that there was a bug in an earlier version of gr-uhd <br=
>
(somewhere in 3.7) that made it difficult to turn on the AGC using GRC.<br>
That particular one is fixed in gr-uhd. Not sure about gr-ettus, though.<br=
>
<br>
Maybe try using set_rx_agc() manually in you flow-graph (*.py) and see <br>
if that helps.<br>
<br>
Cheers,<br>
Julian<br>
<br>
On 3/9/21 5:11 PM, Maria Mu=C3=B1oz via USRP-users wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; I was wondering if it is possible to enable AGC from the RFNoC radio <=
br>
&gt; block in GNURadio. I use UHD 4.0 version and GNURadio 3.8 with gr-ettu=
s.<br>
&gt; <br>
&gt; I see that the RFNoC Rx radio block has an enable/disable/default AGC =
<br>
&gt; option in the GNURadio block which I assume calls the UHD function <br=
>
&gt; &quot;set_rx_agc&quot; <br>
&gt; (<a href=3D"https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__=
usrp.html#abdab1f6c3775a9071b15c9805f866486" rel=3D"noreferrer" target=3D"_=
blank">https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#=
abdab1f6c3775a9071b15c9805f866486</a>)<br>
&gt; <br>
&gt; I have also checked on the FPGA side that there is a pin from FPGA to =
<br>
&gt; AD9361 called=C2=A0XCVR_ENA_AGC which is set always to 1 on the top le=
vel of <br>
&gt; the FPGA image (see attached file &quot;e320.v&quot;, line 872). This =
pin, <br>
&gt; according to <br>
&gt; <a href=3D"https://www.analog.com/media/en/technical-documentation/dat=
a-sheets/AD9361.pdf" rel=3D"noreferrer" target=3D"_blank">https://www.analo=
g.com/media/en/technical-documentation/data-sheets/AD9361.pdf</a> <br>
&gt; is the &quot;Manual Control Input for Automatic Gain Control (AGC)&quo=
t;.<br>
&gt; Must be this pin set to 0 to have AGC working?<br>
&gt; If=C2=A0not, how can I=C2=A0get AGC working? I&#39;ve made some tests =
<br>
&gt; enabling/disabling this option but I do not see any changes between th=
e <br>
&gt; waveforms received.<br>
&gt; <br>
&gt; Any help would be appreciated.<br>
&gt; <br>
&gt; Kind Regards,<br>
&gt; <br>
&gt; Maria<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
</blockquote></div>

--0000000000002d8a5505bd2ae35e--


--===============0942914263642891749==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0942914263642891749==--


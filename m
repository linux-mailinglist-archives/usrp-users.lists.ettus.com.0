Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B54F93E3369
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 06:44:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7DD37384797
	for <lists+usrp-users@lfdr.de>; Sat,  7 Aug 2021 00:44:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="kLdZqOm3";
	dkim-atps=neutral
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 7FCFC3844B7
	for <usrp-users@lists.ettus.com>; Sat,  7 Aug 2021 00:43:39 -0400 (EDT)
Received: by mail-vs1-f47.google.com with SMTP id v16so6559450vss.7
        for <usrp-users@lists.ettus.com>; Fri, 06 Aug 2021 21:43:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6tW0ZDrpWQvH3kDawjptZ5MgEVH4jK7+gHR+O91Io/Y=;
        b=kLdZqOm3HBInp9c7zitZeUY82IkStYKtWnq11pCvp3w9lcJb1encTn9f73qSiaCr6J
         Kw0/Y9tiJkUDs2mGW6rQNIJTyUkaaHXXbiRgJTu1yU02468d3TpAIsuzT/HVLU5vl34T
         d8I9ru11XfcU3tfYcFT0LwwMBA1Z/QIkY5XpTcCkOjIyFhsyK8T70YTdLIuvt4wbFDWs
         Z+FXVLMkw0FilCe3VWN9bFMKRE9PMkMmbH9KoHZYF4XPgMf9VopnoB+J0g9/BjNSkG/s
         ErzjOgJ8dFY2K6Bf/HnHreXkj4AxZ5W3RvgcVDONFFGFyyckvl7AruSAydu5sMvuuXEJ
         rwPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6tW0ZDrpWQvH3kDawjptZ5MgEVH4jK7+gHR+O91Io/Y=;
        b=qR4Xoc0V20q3N8IAuZJtjPjw6qDA/VW6v/UKnP9iH0eB629OvK9b868+j7GglOGcSq
         0GvpH6zCRsJkjtfPFS0iQ9ergz86qwR6U8nxEbB/qESI5vGaHyylqi3/qZTv5/Mwgsgc
         o2epufrDkLZ8B6AJ0oBwNqQzGw3tEEWJIg0j3f4nCn9EJOpqO1rf0kcwpKyxv9V8Yk6e
         mJ3lobLKTSRFJhWwrdhZVevdU/umlpHXHDUcoMaCoWZyaaSbh++6eYwtZ/iB3TlfIakq
         VupnKLr1jK2kdH63dhYoLxOoZEAVnhHviov15nFT8FYDidyZxmUhXcUHuJ2K/7psAkcW
         RmHg==
X-Gm-Message-State: AOAM533gjJVoSCdCcYttLjsQehO1OJxASTYuO4FUzkIBAEbpgb95A1FM
	HEnNsFn1FvlUyKNGwhKJW+QI4NOrwVhn8MPrBoK5qnE+
X-Google-Smtp-Source: ABdhPJztEVkME1P0U3d8eeOe7Q22nNLUxpjuHkV4EoT3mt97XQMfv8mULnZBqda4VGjB5kiowYAp2Gmj3694utF+acY=
X-Received: by 2002:a67:7c14:: with SMTP id x20mr11913031vsc.42.1628311410873;
 Fri, 06 Aug 2021 21:43:30 -0700 (PDT)
MIME-Version: 1.0
References: <CACwKM9J-rELH0kCA7yt6DzbvZ-PtBKwD12yyJwTAnWJqvXi7YQ@mail.gmail.com>
In-Reply-To: <CACwKM9J-rELH0kCA7yt6DzbvZ-PtBKwD12yyJwTAnWJqvXi7YQ@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Sat, 7 Aug 2021 00:42:55 -0400
Message-ID: <CAL7q81vq8d4E74DHZpLfrGcCM0BVWfH6rqv1WYxMLjh_nq03bQ@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: TYLVBDSN5RJZC3DVT6T5ZO5TRO7SZDQN
X-Message-ID-Hash: TYLVBDSN5RJZC3DVT6T5ZO5TRO7SZDQN
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD4.0/GR-Ettus/Custom SigGen block
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TYLVBDSN5RJZC3DVT6T5ZO5TRO7SZDQN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4410858236302018727=="

--===============4410858236302018727==
Content-Type: multipart/alternative; boundary="0000000000003aaa2205c8f0cbca"

--0000000000003aaa2205c8f0cbca
Content-Type: text/plain; charset="UTF-8"

Hi Paul,

Have you tried running the flowgraph without the loopback patch? I don't
think it would affect your flowgraph, but it is worth a shot.

Do you get the same error if you remove the DDC block?

Do you set enable before or after you start streaming?

Jonathon

On Tue, Aug 3, 2021 at 11:22 AM Paul Atreides <maud.dib1984@gmail.com>
wrote:

> I could really use some help guys.
>
> i'm using an X310
> i've added the siggen block to my HA FPGA image.
> I've added the 'Loopback Patch' to gr-ettus which exposes skip property
> propagation (but it's currently set to False as is default)
> I made a custom gnuradio block using rfnocmodtool  that accesses the UHD
> siggen control API and controls the following properties:
> enable
> waveform type
> amplitude
> constant I
> constant Q
> sine phase increment
>
> uhd_usrp_probe shows the siggen block
> |   |       RFNoC blocks on this device:
> |   |
> |   |   * 0/DDC#0
> |   |   * 0/DDC#1
> |   |   * 0/DDC#2
> |   |   * 0/DUC#0
> |   |   * 0/DUC#1
> |   |   * 0/NullSrcSink#0
> |   |   * 0/Radio#0
> |   |   * 0/Radio#1
> |   |   * 0/SigGen#0
> |   |   * 0/SplitStream#0
> |     _____________________________________________________
> |    /
> |   |       Static connections on this device:
> |   |
> |   |   * 0/Radio#0:0==>0/SEP#0:0
> |   |   * 0/SEP#0:0==>0/Radio#0:0
> |   |   * 0/Radio#1:0==>0/SEP#1:0
> |   |   * 0/SEP#1:0==>0/Radio#1:0
> |   |   * 0/SEP#2:0==>0/DDC#0:0
> |   |   * 0/DDC#0:0==>0/SEP#2:0
> |   |   * 0/SEP#3:0==>0/DDC#1:0
> |   |   * 0/DDC#1:0==>0/SEP#3:0
> |   |   * 0/SEP#4:0==>0/DDC#2:0
> |   |   * 0/DDC#2:0==>0/SEP#4:0
> |   |   * 0/SEP#5:0==>0/SplitStream#0:0
> |   |   * 0/SplitStream#0:0==>0/SEP#6:0
> |   |   * 0/SplitStream#0:1==>0/SEP#7:0
> |   |   * 0/SEP#8:0==>0/DUC#0:0
> |   |   * 0/DUC#0:0==>0/SEP#8:0
> |   |   * 0/SEP#9:0==>0/DUC#1:0
> |   |   * 0/DUC#1:0==>0/SEP#9:0
> |   |   * 0/SEP#10:0==>0/NullSrcSink#0:0
> |   |   * 0/NullSrcSink#0:0==>0/SEP#10:0
> |   |   * 0/SEP#11:0==>0/NullSrcSink#0:1
> |   |   * 0/NullSrcSink#0:1==>0/SEP#11:0
> |   |   * 0/SEP#12:0==>0/SigGen#0:0
> |   |   * 0/SigGen#0:0==>0/SEP#12:0
> |
>
>
> I've followed Aaron Rosetto's RFNoC Python API guide from GRCON last year
> and confirmed that siggen can be accessed via UHD and can stream samples to
> the host.
>
> the gnuradio part is where it's getting messy
>
> when i connect:
> RX RADIO -> DDC -> RX STREAMER -> QT GUI TIME SINK
> everything works as expected in GNURadio
>
> when i replace the radio with the siggen and connect
> SIGGEN -> DDC -> RX STREAMER -> QT GUI TIME SINK
> i get the following error
>   File "/home/user/flowgraphs/siggen_stream_to_host.py", line 258, in
> <module>
>     main()
>   File "/home/user/flowgraphs/siggen_stream_to_host.py", line 234, in main
>     tb = top_block_cls()
>   File "/home/user/flowgraphs/siggen_stream_to_host.py", line 184, in
> __init__
>     self.rfnoc_graph.connect(self.nocextend_siggen_0.get_unique_id(), 0,
> self.ettus_rfnoc_ddc_0.get_unique_id(), 0,
> self.rfnoc_graph.skip_propagation)
>   File "/usr/local/lib/python3/dist-packages/ettus/ettus_swig.py", line
> 2384, in connect
>     return _ettus_swig.rfnoc_graph_sptr_connect(self, *args)
> RuntimeError: EnvironmentError: IOError: Timed out getting recv buff for
> management transaction
> Exception ignored in: <built-in function delete_time_sink_c_sptr>
> SystemError: <built-in function delete_time_sink_c_sptr> returned a result
> with an error set
>
>
> Again, i could really use some help
> thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000003aaa2205c8f0cbca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div><br></div><div>Have you tried running the flo=
wgraph without the loopback patch? I don&#39;t think it would affect your f=
lowgraph, but it is worth a shot.</div><div><br></div><div>Do you get the s=
ame error if you remove the DDC block?</div><div><br></div><div>Do you set =
enable before or after you start streaming?</div><div><br></div><div>Jonath=
on</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Tue, Aug 3, 2021 at 11:22 AM Paul Atreides &lt;<a href=3D"mailto=
:maud.dib1984@gmail.com">maud.dib1984@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>I coul=
d really use some help guys.<br><br></div><div>i&#39;m using an X310<br>i&#=
39;ve added the siggen block to my HA FPGA image.<br>I&#39;ve added the &#3=
9;Loopback Patch&#39; to gr-ettus which exposes skip property propagation (=
but it&#39;s currently set to False as is default)<br>I made a custom gnura=
dio block using rfnocmodtool=C2=A0 that accesses the UHD siggen control API=
 and controls the following properties:<br></div><div>enable<br></div><div>=
waveform type<br></div><div>amplitude<br></div><div>constant I<br></div><di=
v>constant Q<br></div><div>sine phase increment<br><br></div><div>uhd_usrp_=
probe shows the siggen block<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 RFNoC block=
s on this device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/DDC#0<br>|=
 =C2=A0 | =C2=A0 * 0/DDC#1<br>| =C2=A0 | =C2=A0 * 0/DDC#2<br>| =C2=A0 | =C2=
=A0 * 0/DUC#0<br>| =C2=A0 | =C2=A0 * 0/DUC#1<br>| =C2=A0 | =C2=A0 * 0/NullS=
rcSink#0<br>| =C2=A0 | =C2=A0 * 0/Radio#0<br>| =C2=A0 | =C2=A0 * 0/Radio#1<=
br>| =C2=A0 | =C2=A0 * 0/SigGen#0<br>| =C2=A0 | =C2=A0 * 0/SplitStream#0<br=
>| =C2=A0 =C2=A0 _____________________________________________________<br>|=
 =C2=A0 =C2=A0/<br>| =C2=A0 | =C2=A0 =C2=A0 =C2=A0 Static connections on th=
is device:<br>| =C2=A0 | =C2=A0 <br>| =C2=A0 | =C2=A0 * 0/Radio#0:0=3D=3D&g=
t;0/SEP#0:0<br>| =C2=A0 | =C2=A0 * 0/SEP#0:0=3D=3D&gt;0/Radio#0:0<br>| =C2=
=A0 | =C2=A0 * 0/Radio#1:0=3D=3D&gt;0/SEP#1:0<br>| =C2=A0 | =C2=A0 * 0/SEP#=
1:0=3D=3D&gt;0/Radio#1:0<br>| =C2=A0 | =C2=A0 * 0/SEP#2:0=3D=3D&gt;0/DDC#0:=
0<br>| =C2=A0 | =C2=A0 * 0/DDC#0:0=3D=3D&gt;0/SEP#2:0<br>| =C2=A0 | =C2=A0 =
* 0/SEP#3:0=3D=3D&gt;0/DDC#1:0<br>| =C2=A0 | =C2=A0 * 0/DDC#1:0=3D=3D&gt;0/=
SEP#3:0<br>| =C2=A0 | =C2=A0 * 0/SEP#4:0=3D=3D&gt;0/DDC#2:0<br>| =C2=A0 | =
=C2=A0 * 0/DDC#2:0=3D=3D&gt;0/SEP#4:0<br>| =C2=A0 | =C2=A0 * 0/SEP#5:0=3D=
=3D&gt;0/SplitStream#0:0<br>| =C2=A0 | =C2=A0 * 0/SplitStream#0:0=3D=3D&gt;=
0/SEP#6:0<br>| =C2=A0 | =C2=A0 * 0/SplitStream#0:1=3D=3D&gt;0/SEP#7:0<br>| =
=C2=A0 | =C2=A0 * 0/SEP#8:0=3D=3D&gt;0/DUC#0:0<br>| =C2=A0 | =C2=A0 * 0/DUC=
#0:0=3D=3D&gt;0/SEP#8:0<br>| =C2=A0 | =C2=A0 * 0/SEP#9:0=3D=3D&gt;0/DUC#1:0=
<br>| =C2=A0 | =C2=A0 * 0/DUC#1:0=3D=3D&gt;0/SEP#9:0<br>| =C2=A0 | =C2=A0 *=
 0/SEP#10:0=3D=3D&gt;0/NullSrcSink#0:0<br>| =C2=A0 | =C2=A0 * 0/NullSrcSink=
#0:0=3D=3D&gt;0/SEP#10:0<br>| =C2=A0 | =C2=A0 * 0/SEP#11:0=3D=3D&gt;0/NullS=
rcSink#0:1<br>| =C2=A0 | =C2=A0 * 0/NullSrcSink#0:1=3D=3D&gt;0/SEP#11:0<br>=
| =C2=A0 | =C2=A0 * 0/SEP#12:0=3D=3D&gt;0/SigGen#0:0<br>| =C2=A0 | =C2=A0 *=
 0/SigGen#0:0=3D=3D&gt;0/SEP#12:0<br>|<br><br><br>I&#39;ve followed Aaron R=
osetto&#39;s RFNoC Python API guide from GRCON last year and confirmed that=
 siggen can be accessed via UHD and can stream samples to the host. <br></d=
iv><div><br></div><div>the gnuradio part is where it&#39;s getting messy<br=
></div><div><br>when i connect:<br>RX RADIO -&gt; DDC -&gt; RX STREAMER -&g=
t; QT GUI TIME SINK<br>everything works as expected in GNURadio<br><br></di=
v>when i replace the radio with the siggen and connect<br><div>SIGGEN -&gt;=
 DDC -&gt; RX STREAMER -&gt; QT GUI TIME SINK<br></div><div>i get the follo=
wing error<br>=C2=A0 File &quot;/home/user/flowgraphs/siggen_stream_to_host=
.py&quot;, line 258, in &lt;module&gt;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 Fi=
le &quot;/home/user/flowgraphs/siggen_stream_to_host.py&quot;, line 234, in=
 main<br>=C2=A0 =C2=A0 tb =3D top_block_cls()<br>=C2=A0 File &quot;/home/us=
er/flowgraphs/siggen_stream_to_host.py&quot;, line 184, in __init__<br>=C2=
=A0 =C2=A0 self.rfnoc_graph.connect(self.nocextend_siggen_0.get_unique_id()=
, 0, self.ettus_rfnoc_ddc_0.get_unique_id(), 0, self.rfnoc_graph.skip_propa=
gation)<br>=C2=A0 File &quot;/usr/local/lib/python3/dist-packages/ettus/ett=
us_swig.py&quot;, line 2384, in connect<br>=C2=A0 =C2=A0 return _ettus_swig=
.rfnoc_graph_sptr_connect(self, *args)<br>RuntimeError: EnvironmentError: I=
OError: Timed out getting recv buff for management transaction<br>Exception=
 ignored in: &lt;built-in function delete_time_sink_c_sptr&gt;<br>SystemErr=
or: &lt;built-in function delete_time_sink_c_sptr&gt; returned a result wit=
h an error set</div><div><br><br></div><div>Again, i could really use some =
help</div><div>thanks<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000003aaa2205c8f0cbca--

--===============4410858236302018727==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4410858236302018727==--

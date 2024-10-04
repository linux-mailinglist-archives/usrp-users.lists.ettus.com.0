Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D32B29907C2
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 17:42:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 81BAB385572
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 11:42:18 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728056538; bh=d0ZKmMf6qxCLT/ajVa5S37jY0o6zmTVsvYLmfjBDEpM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=IjEucbc0lyGO1OtGTgI3dTEQNsXmlPzaHVLDDni47Lqfdu+JrGvG/gN7OZuR7Hs+W
	 1lx2Yw0jAv24InYwa2E6pvTJITKaKoSTnjZvENHFhwWT1DKaY3XixhXVje1JtGo9ja
	 7scmWEhmD2ktK1qvsnKNX7eRSn8YML86rBQjipHTzNNjGQiFKj95FmwiLXSAzPtXnJ
	 +s8G42SBH+k/aLlBKGq4lbbe3asR/uvkwZ92Lrti7EwkJLas2extSadsV+RNZYICMf
	 QWkk4IGjfUPJWbBh5bS781/w5TCdYonsmkxuK8yy4AKUwSTsHufUQgnaxA4c3HWUsT
	 BR5dU3PNyC0eQ==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 2AC4A3854EE
	for <usrp-users@lists.ettus.com>; Fri,  4 Oct 2024 11:41:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="rykOm5vk";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5c896b9b4e0so3111099a12.3
        for <usrp-users@lists.ettus.com>; Fri, 04 Oct 2024 08:41:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728056483; x=1728661283; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xZrU1c79Tsc2y7SYVQF6DHYyHnsdUrFLRvxulc3AMd8=;
        b=rykOm5vkS+6OWgMMci4uEdYCDuMyQgk+QjiOXgtCDz3iycYxv8+1CPIv849S/q/JNr
         6jGgwVPIYZBiyljSxt0xP6JePib8rk8H/TTWbGkE1bFzSWB330v0+BljsEfRAgmcgwAL
         dA4Gc8oBQB7QHmYRl19OxlYomgdHBcek4taRFDktoZ+5TCM48O1vY5wkYmBHvkAWbN0D
         bam3p9QKR4tRRfw6wDKtLPkx+D7gQNwNInewFZSQmQI7o2LHseShICo33JX9I1rryU30
         oRsvi0fWJw9CEQ27WabTucJnIrV87M1bJZkLOrTWHJfsWwtD8csp2x6nORyShdzXVtSU
         yewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728056483; x=1728661283;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xZrU1c79Tsc2y7SYVQF6DHYyHnsdUrFLRvxulc3AMd8=;
        b=PElleiyGcJZReVpFiaROXyFi8eL1MchCtJCqVJGqMXKTiriLDCKXBy3uC73C3CizUq
         peEnbpKOZ95qTcu+WCABCeP0g8ZdF7f+PiefsHTqk1z+Dib1V7bh6Sg/8I3/uo+DK2I+
         qWQLnGIhssMLyXmtD03aaTL+v23UKk48g2NL577TsqETHL6hUtyzUrMqUY/c8Z5M4p76
         GkjoIx2Kuq9zJalD4NOeYs7jNvejKLeBEkYMkAbXJcHTQKJhXeraf7bc96OTPZDRP7Hs
         SGWtZlbwJxoif+vAEr6FbbHmJBrvlcpaedKoGWoKuEv3Y5ILdBHs+UGIQdCg+AU5CEEf
         2PIw==
X-Gm-Message-State: AOJu0YxZnpt28estsq4DiJ9RfembBfKlrjxJAJppW7xKnpuNcusj0pL8
	cBD161+RDmdbjR5t7UyHLr3S6Ii2S+ZofE3ZXdAC1dY4BLRb4VgG1gKklNAzdsx2YYAWp9RiByn
	LeY5FAyWbpnMPfacwfcllXWVNpCXGF4iwGDEwHdzbBY8MEt2FMgdF7g==
X-Google-Smtp-Source: AGHT+IEmTswrwnO5oc93KoUpnZHggP6EDUFreftwQ2RW1yUZ52aF3fppl7pLHwOPSDRXWsk+T+pW+7yylfaNJKnJ4xg=
X-Received: by 2002:a05:6402:13d2:b0:5c4:2bd6:68df with SMTP id
 4fb4d7f45d1cf-5c8d2cff8d3mr2382397a12.2.1728056482873; Fri, 04 Oct 2024
 08:41:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAEL-RA3vkebzVmq8+d6YuQa4z4u1eGo-osZ9gYeby8vq3Q0+hw@mail.gmail.com>
 <CAEL-RA1gaOMUOY9dv-rMz3XSAqZ=52zhb5JJcpN53EXdOHvoxQ@mail.gmail.com>
In-Reply-To: <CAEL-RA1gaOMUOY9dv-rMz3XSAqZ=52zhb5JJcpN53EXdOHvoxQ@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 4 Oct 2024 17:41:10 +0200
Message-ID: <CAFOi1A7L18TyLPnEFOva+jq8bKb2PjvDcoB_2v0oHWinnayb9g@mail.gmail.com>
To: hui cj <cjh416593819@gmail.com>
Message-ID-Hash: Z5VY7TS2TVPYDHXGKNGEAIDHXZAY2BOO
X-Message-ID-Hash: Z5VY7TS2TVPYDHXGKNGEAIDHXZAY2BOO
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Replay module (DRAM to PC)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Z5VY7TS2TVPYDHXGKNGEAIDHXZAY2BOO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2448495740318028778=="

--===============2448495740318028778==
Content-Type: multipart/alternative; boundary="000000000000d061f90623a880dc"

--000000000000d061f90623a880dc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Mark the last connection as a back-edge (
https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1rfnoc__graph.html=
#ab4cca8d99af451a9b9c5757af2b66ffa,
see also
https://uhd.readthedocs.io/en/latest/page_properties.html#props_graph_resol=
ution_back_edges
).

--M

On Fri, Oct 4, 2024 at 4:39=E2=80=AFPM hui cj <cjh416593819@gmail.com> wrot=
e:

> Sorry to bother everyone again,
>
>    - 0/Replay#0:0 --> 0/DUC#0:0
>    - 0/DUC#0:0 =3D=3D> 0/Radio#0:0
>    - 0/Radio#0:0 =3D=3D> 0/DDC#0:0
>    - 0/DDC#0:0 --> 0/Replay#0:0
>
> I wonder to realize the graph that work for playing from DRAM and
> recording to DRAM simultaneously,
>
>     graph->connect(tx_replay_ctrl->get_block_id(), tx_replay_chan, duc_ct=
rl->get_block_id(), duc_chan);
>
>     graph->connect(duc_ctrl->get_block_id(), duc_chan, tx_radio_ctrl->get=
_block_id(), tx_chan);
>
>
>     graph->connect(rx_radio_ctrl->get_block_id(), rx_chan, ddc_ctrl->get_=
block_id(), ddc_chan);
>
>     graph->connect(ddc_ctrl->get_block_id(), ddc_chan, rx_replay_ctrl->ge=
t_block_id(), rx_replay_chan);
>
>
> Then the following error ran out.
>
> [ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -> 0/Replay#0:0 with=
out disabling is_forward_edge will lead to unresolvable graph!
>
> Can someone help me? Thanks!
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d061f90623a880dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Mark the last connection as a back-edge (<a href=3D"h=
ttps://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1rfnoc__graph.html#=
ab4cca8d99af451a9b9c5757af2b66ffa">https://uhd.readthedocs.io/en/latest/cla=
ssuhd_1_1rfnoc_1_1rfnoc__graph.html#ab4cca8d99af451a9b9c5757af2b66ffa</a>, =
see also <a href=3D"https://uhd.readthedocs.io/en/latest/page_properties.ht=
ml#props_graph_resolution_back_edges">https://uhd.readthedocs.io/en/latest/=
page_properties.html#props_graph_resolution_back_edges</a>).</div><div><br>=
</div><div>--M<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Oct 4, 2024 at 4:39=E2=80=AFPM hui cj &lt;<=
a href=3D"mailto:cjh416593819@gmail.com">cjh416593819@gmail.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr">Sorry to bother everyone again,<div>=
<ul><li style=3D"margin-left:15px">0/Replay#0:0 --&gt; 0/DUC#0:0</li><li st=
yle=3D"margin-left:15px">0/DUC#0:0 =3D=3D&gt; 0/Radio#0:0</li><li style=3D"=
margin-left:15px">0/Radio#0:0 =3D=3D&gt; 0/DDC#0:0</li><li style=3D"margin-=
left:15px">0/DDC#0:0 --&gt; 0/Replay#0:0</li></ul>I wonder to realize the g=
raph that work for playing from DRAM and recording to DRAM simultaneously,=
=C2=A0</div><div><pre style=3D"margin-top:0px;margin-bottom:0px"><span styl=
e=3D"color:rgb(192,192,192)">    </span><span style=3D"color:rgb(128,0,0)">=
graph</span>-&gt;<span style=3D"font-style:italic;color:rgb(0,103,124)">con=
nect</span>(<span style=3D"color:rgb(128,0,0)">tx_replay_ctrl</span>-&gt;<s=
pan style=3D"color:rgb(0,103,124)">get_block_id</span>(),<span style=3D"col=
or:rgb(192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">tx_replay_c=
han</span>,<span style=3D"color:rgb(192,192,192)"> </span><span style=3D"co=
lor:rgb(128,0,0)">duc_ctrl</span>-&gt;<span style=3D"color:rgb(0,103,124)">=
get_block_id</span>(),<span style=3D"color:rgb(192,192,192)"> </span><span =
style=3D"color:rgb(128,0,0)">duc_chan</span>);</pre><pre style=3D"margin-to=
p:0px;margin-bottom:0px"><span style=3D"color:rgb(192,192,192)">    </span>=
<span style=3D"color:rgb(128,0,0)">graph</span>-&gt;<span style=3D"font-sty=
le:italic;color:rgb(0,103,124)">connect</span>(<span style=3D"color:rgb(128=
,0,0)">duc_ctrl</span>-&gt;<span style=3D"color:rgb(0,103,124)">get_block_i=
d</span>(),<span style=3D"color:rgb(192,192,192)"> </span><span style=3D"co=
lor:rgb(128,0,0)">duc_chan</span>,<span style=3D"color:rgb(192,192,192)"> <=
/span><span style=3D"color:rgb(128,0,0)">tx_radio_ctrl</span>-&gt;<span sty=
le=3D"color:rgb(0,103,124)">get_block_id</span>(),<span style=3D"color:rgb(=
192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">tx_chan</span>);</=
pre><pre style=3D"margin-top:0px;margin-bottom:0px"><br></pre><pre style=3D=
"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(192,192,192)"> =
   </span><span style=3D"color:rgb(128,0,0)">graph</span>-&gt;<span style=
=3D"font-style:italic;color:rgb(0,103,124)">connect</span>(<span style=3D"c=
olor:rgb(128,0,0)">rx_radio_ctrl</span>-&gt;<span style=3D"color:rgb(0,103,=
124)">get_block_id</span>(),<span style=3D"color:rgb(192,192,192)"> </span>=
<span style=3D"color:rgb(128,0,0)">rx_chan</span>,<span style=3D"color:rgb(=
192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">ddc_ctrl</span>-&g=
t;<span style=3D"color:rgb(0,103,124)">get_block_id</span>(),<span style=3D=
"color:rgb(192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">ddc_cha=
n</span>);</pre><pre style=3D"margin-top:0px;margin-bottom:0px"><span style=
=3D"color:rgb(192,192,192)">    </span><span style=3D"color:rgb(128,0,0)">g=
raph</span>-&gt;<span style=3D"font-style:italic;color:rgb(0,103,124)">conn=
ect</span>(<span style=3D"color:rgb(128,0,0)">ddc_ctrl</span>-&gt;<span sty=
le=3D"color:rgb(0,103,124)">get_block_id</span>(),<span style=3D"color:rgb(=
192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">ddc_chan</span>,<s=
pan style=3D"color:rgb(192,192,192)"> </span><span style=3D"color:rgb(128,0=
,0)">rx_replay_ctrl</span>-&gt;<span style=3D"color:rgb(0,103,124)">get_blo=
ck_id</span>(),<span style=3D"color:rgb(192,192,192)"> </span><span style=
=3D"color:rgb(128,0,0)">rx_replay_chan</span>);</pre><pre style=3D"margin-t=
op:0px;margin-bottom:0px"><br></pre><pre style=3D"margin-top:0px;margin-bot=
tom:0px"><font face=3D"arial, sans-serif">Then the following error ran out.=
</font></pre><pre style=3D"margin-top:0px;margin-bottom:0px"><font face=3D"=
arial, sans-serif">[ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -&g=
t; 0/Replay#0:0 without disabling is_forward_edge will lead to unresolvable=
 graph!</font></pre><pre style=3D"margin-top:0px;margin-bottom:0px"><font f=
ace=3D"arial, sans-serif">Can someone help me? Thanks!</font></pre></div></=
div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d061f90623a880dc--

--===============2448495740318028778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2448495740318028778==--

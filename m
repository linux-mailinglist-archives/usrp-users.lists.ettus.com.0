Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A25990641
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 16:39:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E896385810
	for <lists+usrp-users@lfdr.de>; Fri,  4 Oct 2024 10:39:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728052742; bh=bowOIz0+rzIx9quqp/QsP9nN5QdIBVT0vZb/2Vqw0hs=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Ui0ursFiwDIf3+dJZkCQ/Xlk5DM2qFWQuHc+O+8+JpDiepxfH8xX9Dt7hETe9Hv0o
	 XwaRJwzhv6faBAQcWYtpRcOEhsCc4MJ9DGqLB3UQJloAehZJpLkDW1LRV8h92Vt5eG
	 POipkPzEKCpR47cMVReJFXLz/bX+9P/iXCd0se2tt5bpv3aq3dU0RXpBFaFtkPZtS4
	 78UncgiWH5UQwFEz97CYOORkx+3gGx+AT7Igl4goW+kHaDdnKALtB/0NZcy2FR1ZCq
	 vT2ZjUMPF/cziEiHpzVefJU2JoGEvRakKmuOdTM9zoq2WgNg5V3DFFiOYTIV1HS/LI
	 8uTQklXBcrAEw==
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 624983857ED
	for <usrp-users@lists.ettus.com>; Fri,  4 Oct 2024 10:38:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="L4SxUQes";
	dkim-atps=neutral
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a8d6ac24a3bso427840666b.1
        for <usrp-users@lists.ettus.com>; Fri, 04 Oct 2024 07:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728052737; x=1728657537; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EuNirHqtp9yi8CHTcbPY5JTHOkxNYcXYAYa9nbkEEss=;
        b=L4SxUQes8n+9Vf+8q+Bi0U4UAnKZt5WXIuDl9mq02x4mLQy8Q47hV4BZkC8h3g2sDZ
         F1DqRewJ5mUuBiaodPWu5HqF8oARgONVsGrSoCQ5jBpGRRFIow8P4p5bbXWvZu9HlVRV
         DF/1kflsn6/GmKwk3E5nBjcA2merfDlyXG0kCJCdbJmX1gLMceiBZ/v7VT1+mrRsgPC5
         c/DBRKnk43Uf6Z8wr4gPQBvHqblPx+uRG9ze85MUmNGI6+/QKy5Gel0xsWbI7FFXEj9o
         jW2UYmk7muMw/I3CTqZNMfwBwdveK/Y9DMh3ENL2pSHZAPaESPz4P95JBR6rjTEv6+u/
         l8rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728052737; x=1728657537;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EuNirHqtp9yi8CHTcbPY5JTHOkxNYcXYAYa9nbkEEss=;
        b=QBNGlQFjWHH0rCujKkqnYfBRscl1PgaTbh0Q+jTng81zpm0GNe6sj9vr94shYVL7xX
         SRChz7/ffSNWpG/6duukqZMrq8kMm8TiPofJEHtPNAXjghZ5cEZXCU4qZ9FYetg1SEtg
         PUM+nH6wjqF7uHynTnIeCGPvtK639KKYZL3wUJ6VPH4Eqn3FWZb6A5ZHK6RpJhmwU4ni
         SKvjsovFEAUHxB10Er3gsHWnJdGHnsOr61d3VDFu2fBPDZ0kAwqKSZTV0O7famI+WjMO
         rwqVPBlkrZbzbkoYJ5AkCbgMeo0LfgxwErFXwKphcxmYpN4NsosIt8u8uzX/3+2d6nQH
         iARQ==
X-Gm-Message-State: AOJu0YzmyP61+GqNuj5D/Se7/8zrhPM2zgrV3/iyVy42bb0GPqOORxtc
	oaiIDJb1IjWWP5NqNaX24iY6Mh3KtREqhjVneEfxXsGBaV5yT6Riv4ChcL/9o77/dprpSISZvFy
	vSbKEuq0xypUxzanRjh6E/U9YuzD6zI9FyrHDQQ==
X-Google-Smtp-Source: AGHT+IF5/Gsa6khLXbXOyxMnMuPqgnZ9KXepM4Hyjgxb6nRIENa3+f5UqK93nUWMvrmCUYDEnf7BHAhi3KlxJnfmIl4=
X-Received: by 2002:a17:907:368b:b0:a8d:6372:2d38 with SMTP id
 a640c23a62f3a-a990a05eeb9mr600154366b.18.1728052736737; Fri, 04 Oct 2024
 07:38:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAEL-RA3vkebzVmq8+d6YuQa4z4u1eGo-osZ9gYeby8vq3Q0+hw@mail.gmail.com>
In-Reply-To: <CAEL-RA3vkebzVmq8+d6YuQa4z4u1eGo-osZ9gYeby8vq3Q0+hw@mail.gmail.com>
From: hui cj <cjh416593819@gmail.com>
Date: Fri, 4 Oct 2024 22:38:44 +0800
Message-ID: <CAEL-RA1gaOMUOY9dv-rMz3XSAqZ=52zhb5JJcpN53EXdOHvoxQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: TTIL4YZD3SY73UXSWMTCMRKLGOG4SFPQ
X-Message-ID-Hash: TTIL4YZD3SY73UXSWMTCMRKLGOG4SFPQ
X-MailFrom: cjh416593819@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC Replay module (DRAM to PC)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TTIL4YZD3SY73UXSWMTCMRKLGOG4SFPQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2997373263936656479=="

--===============2997373263936656479==
Content-Type: multipart/alternative; boundary="00000000000086ccb90623a7a13f"

--00000000000086ccb90623a7a13f
Content-Type: text/plain; charset="UTF-8"

Sorry to bother everyone again,

   - 0/Replay#0:0 --> 0/DUC#0:0
   - 0/DUC#0:0 ==> 0/Radio#0:0
   - 0/Radio#0:0 ==> 0/DDC#0:0
   - 0/DDC#0:0 --> 0/Replay#0:0

I wonder to realize the graph that work for playing from DRAM and recording
to DRAM simultaneously,

    graph->connect(tx_replay_ctrl->get_block_id(), tx_replay_chan,
duc_ctrl->get_block_id(), duc_chan);

    graph->connect(duc_ctrl->get_block_id(), duc_chan,
tx_radio_ctrl->get_block_id(), tx_chan);


    graph->connect(rx_radio_ctrl->get_block_id(), rx_chan,
ddc_ctrl->get_block_id(), ddc_chan);

    graph->connect(ddc_ctrl->get_block_id(), ddc_chan,
rx_replay_ctrl->get_block_id(), rx_replay_chan);


Then the following error ran out.

[ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0/DDC#0:0 -> 0/Replay#0:0
without disabling is_forward_edge will lead to unresolvable graph!

Can someone help me? Thanks!

--00000000000086ccb90623a7a13f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Sorry to bother everyone=
 again,<div><ul><li style=3D"margin-left:15px">0/Replay#0:0 --&gt; 0/DUC#0:=
0</li><li style=3D"margin-left:15px">0/DUC#0:0 =3D=3D&gt; 0/Radio#0:0</li><=
li style=3D"margin-left:15px">0/Radio#0:0 =3D=3D&gt; 0/DDC#0:0</li><li styl=
e=3D"margin-left:15px">0/DDC#0:0 --&gt; 0/Replay#0:0</li></ul>I wonder to r=
ealize the graph that work for playing from DRAM and recording to DRAM simu=
ltaneously,=C2=A0</div><div><pre style=3D"margin-top:0px;margin-bottom:0px"=
><span style=3D"color:rgb(192,192,192)">    </span><span style=3D"color:rgb=
(128,0,0)">graph</span>-&gt;<span style=3D"font-style:italic;color:rgb(0,10=
3,124)">connect</span>(<span style=3D"color:rgb(128,0,0)">tx_replay_ctrl</s=
pan>-&gt;<span style=3D"color:rgb(0,103,124)">get_block_id</span>(),<span s=
tyle=3D"color:rgb(192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">=
tx_replay_chan</span>,<span style=3D"color:rgb(192,192,192)"> </span><span =
style=3D"color:rgb(128,0,0)">duc_ctrl</span>-&gt;<span style=3D"color:rgb(0=
,103,124)">get_block_id</span>(),<span style=3D"color:rgb(192,192,192)"> </=
span><span style=3D"color:rgb(128,0,0)">duc_chan</span>);</pre><pre style=
=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(192,192,192)=
">    </span><span style=3D"color:rgb(128,0,0)">graph</span>-&gt;<span styl=
e=3D"font-style:italic;color:rgb(0,103,124)">connect</span>(<span style=3D"=
color:rgb(128,0,0)">duc_ctrl</span>-&gt;<span style=3D"color:rgb(0,103,124)=
">get_block_id</span>(),<span style=3D"color:rgb(192,192,192)"> </span><spa=
n style=3D"color:rgb(128,0,0)">duc_chan</span>,<span style=3D"color:rgb(192=
,192,192)"> </span><span style=3D"color:rgb(128,0,0)">tx_radio_ctrl</span>-=
&gt;<span style=3D"color:rgb(0,103,124)">get_block_id</span>(),<span style=
=3D"color:rgb(192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">tx_c=
han</span>);</pre><pre style=3D"margin-top:0px;margin-bottom:0px"><br></pre=
><pre style=3D"margin-top:0px;margin-bottom:0px"><span style=3D"color:rgb(1=
92,192,192)">    </span><span style=3D"color:rgb(128,0,0)">graph</span>-&gt=
;<span style=3D"font-style:italic;color:rgb(0,103,124)">connect</span>(<spa=
n style=3D"color:rgb(128,0,0)">rx_radio_ctrl</span>-&gt;<span style=3D"colo=
r:rgb(0,103,124)">get_block_id</span>(),<span style=3D"color:rgb(192,192,19=
2)"> </span><span style=3D"color:rgb(128,0,0)">rx_chan</span>,<span style=
=3D"color:rgb(192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">ddc_=
ctrl</span>-&gt;<span style=3D"color:rgb(0,103,124)">get_block_id</span>(),=
<span style=3D"color:rgb(192,192,192)"> </span><span style=3D"color:rgb(128=
,0,0)">ddc_chan</span>);</pre><pre style=3D"margin-top:0px;margin-bottom:0p=
x"><span style=3D"color:rgb(192,192,192)">    </span><span style=3D"color:r=
gb(128,0,0)">graph</span>-&gt;<span style=3D"font-style:italic;color:rgb(0,=
103,124)">connect</span>(<span style=3D"color:rgb(128,0,0)">ddc_ctrl</span>=
-&gt;<span style=3D"color:rgb(0,103,124)">get_block_id</span>(),<span style=
=3D"color:rgb(192,192,192)"> </span><span style=3D"color:rgb(128,0,0)">ddc_=
chan</span>,<span style=3D"color:rgb(192,192,192)"> </span><span style=3D"c=
olor:rgb(128,0,0)">rx_replay_ctrl</span>-&gt;<span style=3D"color:rgb(0,103=
,124)">get_block_id</span>(),<span style=3D"color:rgb(192,192,192)"> </span=
><span style=3D"color:rgb(128,0,0)">rx_replay_chan</span>);</pre><pre style=
=3D"margin-top:0px;margin-bottom:0px"><br></pre><pre style=3D"margin-top:0p=
x;margin-bottom:0px"><font face=3D"arial, sans-serif">Then the following er=
ror ran out.</font></pre><pre style=3D"margin-top:0px;margin-bottom:0px"><f=
ont face=3D"arial, sans-serif">[ERROR] [RFNOC::GRAPH::DETAIL] Adding edge 0=
/DDC#0:0 -&gt; 0/Replay#0:0 without disabling is_forward_edge will lead to =
unresolvable graph!</font></pre><pre style=3D"margin-top:0px;margin-bottom:=
0px"><font face=3D"arial, sans-serif">Can someone help me? Thanks!</font></=
pre></div></div></div></div>

--00000000000086ccb90623a7a13f--

--===============2997373263936656479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2997373263936656479==--

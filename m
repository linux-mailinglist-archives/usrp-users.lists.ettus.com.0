Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDFE4BBA72
	for <lists+usrp-users@lfdr.de>; Fri, 18 Feb 2022 15:11:21 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 48EDC384A90
	for <lists+usrp-users@lfdr.de>; Fri, 18 Feb 2022 09:11:21 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Uy97G6MI";
	dkim-atps=neutral
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 61ACA384492
	for <usrp-users@lists.ettus.com>; Fri, 18 Feb 2022 09:10:24 -0500 (EST)
Received: by mail-yb1-f182.google.com with SMTP id v63so19738261ybv.10
        for <usrp-users@lists.ettus.com>; Fri, 18 Feb 2022 06:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zGX0jpTMkbeaSaEVb1Peu0kCjD9gvdFd+uTRw5Hu7U4=;
        b=Uy97G6MInyg+A01LQUUaotF061Jz6NtGs3wONuE95Twtw/klGlqkY85HKhpakfsXlp
         gMYL7S2ZTvaMKU7mBRWnVLQQ7y20nDrD08rpXcgHiyGkIOQleUmL+jrYNTcQWegMCEEH
         FKCUawGyxRZcJRbTvXuexjbSu/S0IJQhZhk8LZUAEd9uGbRn2UW9508iMqCWVRKdXgSh
         UYlO5lJZ55HPDZUD4L5ZpKiq8MOcD3MKw9q9HyyaHt7lUPf+82u88TptCikbW6g01oqZ
         Nk03DCWt/MCA+v9OCuBddkly+nNVyTQscX04YvxH1Ram/WJxCFIshBNqKvA9jAUAeEft
         2pxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zGX0jpTMkbeaSaEVb1Peu0kCjD9gvdFd+uTRw5Hu7U4=;
        b=TWlkd5JVzBSn07dwjxJjumQ+fy3HzXDBKr0z66U2+CrngQVg08/9H7pL1x77nC4RDD
         EALzvQ/CPtN9G1fhsFjTKEQam9z7kqGwfrMcmbfXHH5QTME1SkzHW33MgovBg8/kgB6d
         HJQRNf9h/BrorDzuXZb8iQ1JBBrvIHy0GVCTDfnwY1nNLdY7r6phuZsEj6HKLhHk3Jm4
         yIYsKZBY5zHFu1KheSrBhV8nLnMVG2LDl61bPyBf1jLm/EVT0tu4nDoQmvh54wYNLaid
         O3srWkJChP191KS+10q9une0sB4t3u8fAfDWZfRLT9gtIwaEo6qdFIvhHigAWE+Rq4kf
         jS2g==
X-Gm-Message-State: AOAM531LOhmICC0J+vFycGOZs+EEGEY65eXj2EHet4nmsuIEMLoBclUn
	SeaSjtNSPYYU9jgY0hU0EWolptRKUFJ6dqo2C58le4P2p8bm9w==
X-Google-Smtp-Source: ABdhPJwpCyWN3S+doftFrk0AaEDzxbooI8RqzfVIalittYPpsdCfQ2a3PMFa9mM00JrbNFnoTnn9ucs3HsA5+Nnjbw0=
X-Received: by 2002:a25:6a43:0:b0:624:45c7:f629 with SMTP id
 f64-20020a256a43000000b0062445c7f629mr2115114ybc.218.1645193423420; Fri, 18
 Feb 2022 06:10:23 -0800 (PST)
MIME-Version: 1.0
References: <CAG16vQVHXis5xAXDKZWo5WowfzM4zKfx5gVgTvjxZ=8WKaT7cg@mail.gmail.com>
In-Reply-To: <CAG16vQVHXis5xAXDKZWo5WowfzM4zKfx5gVgTvjxZ=8WKaT7cg@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 18 Feb 2022 09:10:10 -0500
Message-ID: <CAB__hTSK9qoreSo_FBt1vja8aKnyns33R2eFjaqnz6gDa2qtRQ@mail.gmail.com>
To: =?UTF-8?B?TWFyaWEgTXXDsW96?= <mamuki92@gmail.com>
Message-ID-Hash: WMZYCVC7H2BWX5QDOXELI7UDVV2DZHHH
X-Message-ID-Hash: WMZYCVC7H2BWX5QDOXELI7UDVV2DZHHH
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC custom block drop received packages
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WMZYCVC7H2BWX5QDOXELI7UDVV2DZHHH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4891349156933262581=="

--===============4891349156933262581==
Content-Type: multipart/alternative; boundary="0000000000009752e605d84b71f3"

--0000000000009752e605d84b71f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maria,
The issue is likely related to "action forwarding" of the streaming
command. When your application asks to start streaming, it typically does
so by calling rx_streamer->issue_stream_cmd().  This "action" will then be
forwarded to the next upstream block controller (typically DDC block
controller) which will see the command and forward it to the next upstream
block controller (typically the Rx radio controller).  The Rx radio block
controller will then start the streaming.  As an example, let's say your
rx_streamer requested a fixed number of samples (say 1000) and assume that
your DDC decimation is 4.  With this architecture, the DDC block controller
can intercept the action and change the requested number of samples from
1000 to 4000 so that when the radio block controller receives the command,
it will stream for exactly 4000 samples (which will provide 1000 samples
out of the DDC). Note that all of this "action" propagation occurs in UHD
land (not on the FPGA).  So, if your custom block controller is not
forwarding actions, the Radio controller never gets the action and thus
never starts the streaming.  One way you can verify this is if you are able
to call issue_stream_cmd() from the DDC controller rather than the
rx_streamer.  This should cause your streaming to start.
Rob

On Fri, Feb 18, 2022 at 8:13 AM Maria Mu=C3=B1oz <mamuki92@gmail.com> wrote=
:

> Hi all,
>
> I'm using a USRP E320 with UHD 4.0 and GNURadio 3.8 for receiving
> samples through an RX RFNoC Radio block and performing some processing in=
 a
> custom RFNoC block.
> I have created my block using rfnocmodtool, modifying the Verilog and yml
> files for my custom block. I left the cpp and hpp files as default, but I
> copied them to the UHD install path to see the name of my block with
> uhd_usrp_probe.
> I have tested satisfactorily my custom block with a gnuradio graph like
> this:
>
> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> rfnoc rx s=
treamer
> =3D> Host block
>
> I have also tested it for transmission through the rfnoc tx radio, and
> works fine:
>
> Host block =3D> rfnoc tx streamer =3D> custom RFNoC block =3D> RFNoC DUC=
=3D> RFNoC
> TX Radio
>
> But when I try to receive from the radio with the following graph, rx led
> does not light up and gnuradio give time out:
> RFNoC RX Radio =3D>  RFNoC DDC   =3D> custom RFNoC block =3D>  rfnoc rx s=
treamer
> =3D>Host block
>
> If I remove my custom block from the last graph, I can receive samples an=
d
> the led is on.
>
> It seems like the custom block is blocking somehow the samples. I tried
> with different sampling rates and spp values for the radio but nothing
> works.
>
> Any help on this will be appreciated.
>
> Kind Regards,
>
> Maria
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009752e605d84b71f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Maria,</div><div>The issue is likely related to &q=
uot;action forwarding&quot; of the streaming command. When your application=
 asks to start streaming, it typically does so by calling rx_streamer-&gt;i=
ssue_stream_cmd().=C2=A0 This &quot;action&quot; will then be forwarded to =
the next upstream block controller (typically DDC block controller) which w=
ill see the command and forward=C2=A0it to the next upstream block controll=
er (typically the Rx radio controller).=C2=A0 The Rx radio block controller=
 will then start the streaming.=C2=A0 As an example, let&#39;s say your rx_=
streamer requested a fixed number of samples (say 1000) and assume that you=
r DDC decimation is 4.=C2=A0 With this architecture, the DDC block controll=
er can intercept the action and change the requested number of samples from=
 1000 to 4000 so that when the radio block controller receives the command,=
 it will stream for exactly 4000 samples (which will provide 1000 samples o=
ut of the DDC). Note that all of this &quot;action&quot; propagation occurs=
 in UHD land (not on the FPGA).=C2=A0 So, if your custom block controller i=
s not forwarding actions, the Radio controller never gets the action and th=
us never starts the streaming.=C2=A0 One way you can verify this is if you =
are able to call issue_stream_cmd() from the DDC controller rather than the=
 rx_streamer.=C2=A0 This should cause your streaming to start.=C2=A0</div><=
div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Feb 18, 2022 at 8:13 AM Maria Mu=C3=B1oz &lt;<a href=3D"mail=
to:mamuki92@gmail.com">mamuki92@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi all,<div><br><=
/div><div>I&#39;m using a USRP E320 with UHD 4.0 and GNURadio 3.8 for recei=
ving samples=C2=A0through=C2=A0an RX RFNoC Radio block and performing some =
processing in a custom RFNoC block.</div><div>I have created my block using=
 rfnocmodtool, modifying the Verilog and yml files for my custom block. I l=
eft the cpp and hpp files as default, but I copied them to the UHD install =
path to see the name of my block with uhd_usrp_probe.</div><div>I have test=
ed satisfactorily my custom block with a gnuradio graph like this:</div><di=
v><br></div><div>Host block =3D&gt; rfnoc tx streamer =3D&gt; custom RFNoC =
block =3D&gt; rfnoc rx streamer =3D&gt; Host block</div><div><br></div><div=
>I have also tested it for transmission=C2=A0through the rfnoc tx radio, an=
d works fine:</div><div><br></div><div>Host block =3D&gt; rfnoc tx streamer=
 =3D&gt; custom RFNoC block =3D&gt; RFNoC DUC=3D&gt; RFNoC TX Radio<br></di=
v><div><br></div><div>But when I try to receive from the radio with the fol=
lowing graph, rx led does not light up and gnuradio give time out:</div><di=
v>RFNoC RX Radio =3D&gt;=C2=A0

RFNoC DDC=C2=A0=C2=A0=C2=A0=3D&gt; custom RFNoC block =3D&gt;=C2=A0=C2=A0rf=
noc rx streamer =3D&gt;Host block</div><div><br></div><div>If I remove my c=
ustom block from the last graph, I can receive samples and the led is on.</=
div><div><br></div><div>It seems like the custom block is blocking somehow =
the samples. I tried with different sampling rates and spp values for the r=
adio but nothing works.=C2=A0</div><div><br></div><div>Any help on this wil=
l be appreciated.</div><div><br></div><div>Kind Regards,</div><div><br></di=
v><div>Maria</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000009752e605d84b71f3--

--===============4891349156933262581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4891349156933262581==--

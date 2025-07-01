Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D1BAEF8B3
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 14:35:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 25E7438632E
	for <lists+usrp-users@lfdr.de>; Tue,  1 Jul 2025 08:35:49 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751373349; bh=7RYLWExMdEFSe9PDqVnociwXlvM2aLDY1BYaE3H0LSg=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kJjKKuM2ALs27dtqq5yulsFyyGsXgXJpEHIDi7RkGVIEAjVqze41MCY2PPOFyUnRi
	 7i6hM/lw8HebhvKhU1EveE0SOKtpofLpZUN9bJW43SFvRnLrevKi8m0+qZkXm/XSAD
	 zj/aZ5KDbUNdWfU18xHrrF1uVK6A8PbzzfupcCG9oFZ4T3GKFltVu/hXruJvXzFgi0
	 EsUWKHoxA76QtFDBgyOcFVxON6FgeUUg/SXh9frJN4rshzyBVojAbZPIWAVWM5Ythz
	 oxV/EqngvjB36LiFu2YYmfymRz9Pv5r+5vNKk7ruVnARXkTNwh7K53XKWXoDlfYHr5
	 8G5El/ZoxoJuA==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 52583385B65
	for <usrp-users@lists.ettus.com>; Tue,  1 Jul 2025 08:35:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="mfaC0gEc";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-60c79bedc19so5266896a12.3
        for <usrp-users@lists.ettus.com>; Tue, 01 Jul 2025 05:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1751373332; x=1751978132; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M8WfoOPBtT0PLUdiC+m3GqAayMXs+cXRq1O+GGeA22s=;
        b=mfaC0gEch7OstRqNrC/go6GyW6g8ey8JfeU4OldGSXtUM4TPARhxJg3bD2qfIobzsk
         11zakxDG6Zaq4S/gxrjftPGVGnezKdlq8qiiNoQmQcamqGCDvNv6sNn6txTPrCQmCEQE
         Y7+3ShV2NJPF6m1wLOQ6QuAf0JtjHZhRLNzvhjGvM+OU5lTOv34ge4Atp8cMeURbEev2
         vuNhVcjh2eVzrhcPgOSe9d3BWuwHQoPrJjL/MJxMcosjtoe4nEO/tPg1lYwsNtbrX+sD
         7flC42Z+X1m3+TmvCbMR2p0BPMCFgYSx1ywQLTmsPpmmo3S4Zof5rEumNf/LbG4HG3qm
         /9cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751373332; x=1751978132;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M8WfoOPBtT0PLUdiC+m3GqAayMXs+cXRq1O+GGeA22s=;
        b=ZGMQbWb1/r3TkCURFHqpAt+rWf7VOBL3w3fdtJ9KbZKTtNjePNyTmEDRCHXyICQtxy
         R8Wrz7H0fY0e+cS2lKQichsg8RqTw8Mafyh9hQs2i/ccu+mk5qvtWvlTLSG0viZUuSSw
         j/tJ1BTNvC/zin8YHVQnwaerSj+C+LRrPj2luXw2q9IvgzrjhQCufgiUFG7l1Fjyf6or
         sN0AEPF+L9bgZJsCcB1Gz9nbz+I/dY0ZmBPohTRmf9srQm3D8rzJZL6coHp7SyDFNcVF
         Du/d1LEkrIJCQ0pn+M4MdYdz48rlV4SbAItabWhPNrfC2SwJo4dErDI98rDknHCEd48k
         0zzw==
X-Gm-Message-State: AOJu0YxOz1IgXGwVIDlVKhpqEQPMFyh8B+SggaruxEZ9SMHFQN+wJ2gT
	dsMpEppN/FCH+DAWy5QJXkbdO7b451o4Ib0+rxv70tblzpGPG10prCNBPO10Ettck59KDRG7oEY
	HS/ShZI43VnRMxqmd3jLIYLMg2sDIE1aNEhGgHwRsNSdU7RVibA+eCT8=
X-Gm-Gg: ASbGncsOUvshhW/jXXubkOatCEcYoUgFWada2zKz+B0iy8rmxsQCaPLusog/JbtzJjk
	OrF+52I2d7/QcCsq8beCUNIu0U/01X5SsJmSYREsPHxkOmAWpF8C5epx+hFt4xteIOIm1eMKX/5
	xbgISGmXuCeDeUSZzbvDK2Jl6SfNEQscoCcFL1VRDmDWbL/iY6xw5wPFCDCK1jmXbqoJQejxWHG
	eE=
X-Google-Smtp-Source: AGHT+IGQzdV2hKVD9Qe794InKMSbAh87MI/JzHMF2wkOotao0GM67JY5Rpxs/anYGlE1Okck2fZPaxPAxhPWElbEvrs=
X-Received: by 2002:a17:907:986:b0:ae0:ae4c:6e90 with SMTP id
 a640c23a62f3a-ae3500b8d95mr2058186866b.29.1751373331894; Tue, 01 Jul 2025
 05:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <4c77f119f052486cbb4baace4acb7e92@vastech.co.za>
In-Reply-To: <4c77f119f052486cbb4baace4acb7e92@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 1 Jul 2025 14:35:20 +0200
X-Gm-Features: Ac12FXx3XEHduou_-QbrBbczlRC44naNdbrlKkTOWS_0YVE3ELJ_nFd1ZKFrJLg
Message-ID: <CAFOi1A68zNcD8W6f5mMRbjGycK0js_cXMN1YZuT=hsGQY5aEwA@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: 5IIGWBBNTZRJQRC37TSH2FUKDQNF7TZS
X-Message-ID-Hash: 5IIGWBBNTZRJQRC37TSH2FUKDQNF7TZS
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: graph warnings again
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5IIGWBBNTZRJQRC37TSH2FUKDQNF7TZS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3508194222360382856=="

--===============3508194222360382856==
Content-Type: multipart/alternative; boundary="0000000000005128780638dd61cc"

--0000000000005128780638dd61cc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Kevin,

I'm assuming your flow graph is a variation of Radio -> [Your Block] -> Rx
Streamer.

When the radio suffers an overrun (as it does here), it will send a message
downstream. If the last block downstream is an Rx Streamer, and you are in
continuous streaming mode, it will try to restart the stream; the streamer
and the radio have a handshake protocol for this.

Now my guess is that your block is doing something with the action
handling. Maybe you set your action forwarding policy to ONE_TO_ALL, or the
topology is a bit more complex than I thought. But most likely, the
streamer and radio are able to do their action handshake thing, but your
block is forwarding messages to unconnected ports or something like that.

--M

On Sat, Jun 28, 2025 at 1:38=E2=80=AFAM Kevin Williams <kevin.williams@vast=
ech.co.za>
wrote:

> Hi Everyone,
>
>
>
> What is the reason for these warnings?
>
>
>
> Somehow my rfnoc block and/or image/software/compile has resulted in thes=
e
> again, and I can=E2=80=99t nail it down to something.
>
>
>
> Some symptoms are an rx_streamer that receives a few 100 Mb of data, but
> then stalls.
>
>
>
> I can see in wireshark that data packets of the correct size flow from
> both 10 gbe ports =E2=80=93 but stop quite soon after starting, and after=
 that just
> a stream of some sort of control and ack packets.
>
>
>
> Regards, Kevin
>
>
>
> O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!
>
> O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!
>
> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:1, no neighbour found!
>
> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:1, no neighbour found!
>
> L[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!
>
> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!
>
> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action restart_request
> from RxStreamer#0:INPUT_EDGE:0, no neighbour found!
>
> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action restart_request
> from RxStreamer#0:INPUT_EDGE:0, no neighbour found!
>
> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action restart_request
> from RxStreamer#0:INPUT_EDGE:0, no neighbour found!
>
> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action restart_request
> from RxStreamer#0:INPUT_EDGE:0, no neighbour found!
>
> O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!
>
> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!
>
> O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:1, no neighbour found!
>
> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:1, no neighbour found!
>
> L[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!
>
> [WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from
> 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005128780638dd61cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Kevin,</div><div><br></div><div>I&#39;m assuming your=
 flow graph is a variation of Radio -&gt; [Your Block] -&gt; Rx Streamer.</=
div><div><br></div><div>When the radio suffers an overrun (as it does here)=
, it will send a message downstream. If the last block downstream is an Rx =
Streamer, and you are in continuous streaming mode, it will try to restart =
the stream; the streamer and the radio have a handshake protocol for this.<=
/div><div><br></div><div>Now my guess is that your block is doing something=
 with the action handling. Maybe you set your action forwarding policy to O=
NE_TO_ALL, or the topology is a bit more complex than I thought. But most l=
ikely, the streamer and radio are able to do their action handshake thing, =
but your block is forwarding messages to unconnected ports or something lik=
e that.</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quo=
te gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jun=
 28, 2025 at 1:38=E2=80=AFAM Kevin Williams &lt;<a href=3D"mailto:kevin.wil=
liams@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg266711714=
0758238404"><div lang=3D"EN-ZA"><div class=3D"m_2667117140758238404WordSect=
ion1"><p class=3D"MsoNormal"><span lang=3D"EN-US">Hi Everyone,<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">What is the reason =
for these warnings?<u></u><u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">Somehow my rfnoc block and/or image/software/compile has resul=
ted in these again, and I can=E2=80=99t nail it down to something.<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Some symptoms a=
re an rx_streamer that receives a few 100 Mb of data, but then stalls.<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I can see =
in wireshark that data packets of the correct size flow from both 10 gbe po=
rts =E2=80=93 but stop quite soon after starting, and after that just a str=
eam of some sort of control and ack packets.<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">Regards, Kevin<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">O[WARNING] [RFNOC::GRAPH::DET=
AIL] Cannot forward action rx_event from 0/Radio#0:OUTPUT_EDGE:0, no neighb=
our found!<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from 0=
/Radio#0:OUTPUT_EDGE:0, no neighbour found!<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">[WARNING] [RFNOC::GRAPH::DETAIL] Canno=
t forward action rx_event from 0/Radio#0:OUTPUT_EDGE:1, no neighbour found!=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[WARNI=
NG] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event from 0/Radio#0:OU=
TPUT_EDGE:1, no neighbour found!<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">L[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward =
action rx_event from 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[WARNING] [RFNOC=
::GRAPH::DETAIL] Cannot forward action rx_event from 0/Radio#0:OUTPUT_EDGE:=
0, no neighbour found!<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rest=
art_request from RxStreamer#0:INPUT_EDGE:0, no neighbour found!<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[WARNING] [RFNOC::=
GRAPH::DETAIL] Cannot forward action restart_request from RxStreamer#0:INPU=
T_EDGE:0, no neighbour found!<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward acti=
on restart_request from RxStreamer#0:INPUT_EDGE:0, no neighbour found!<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[WARNING] [=
RFNOC::GRAPH::DETAIL] Cannot forward action restart_request from RxStreamer=
#0:INPUT_EDGE:0, no neighbour found!<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forw=
ard action rx_event from 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[WARNING] [R=
FNOC::GRAPH::DETAIL] Cannot forward action rx_event from 0/Radio#0:OUTPUT_E=
DGE:0, no neighbour found!<u></u><u></u></span></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US">O[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action=
 rx_event from 0/Radio#0:OUTPUT_EDGE:1, no neighbour found!<u></u><u></u></=
span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[WARNING] [RFNOC::GRAP=
H::DETAIL] Cannot forward action rx_event from 0/Radio#0:OUTPUT_EDGE:1, no =
neighbour found!<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">L[WARNING] [RFNOC::GRAPH::DETAIL] Cannot forward action rx_event=
 from 0/Radio#0:OUTPUT_EDGE:0, no neighbour found!<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[WARNING] [RFNOC::GRAPH::DETAIL=
] Cannot forward action rx_event from 0/Radio#0:OUTPUT_EDGE:0, no neighbour=
 found!<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
><u></u>=C2=A0<u></u></span></p></div></div>_______________________________=
________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--0000000000005128780638dd61cc--

--===============3508194222360382856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3508194222360382856==--

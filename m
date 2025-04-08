Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4587CA7F74F
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 10:09:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 03248385D3E
	for <lists+usrp-users@lfdr.de>; Tue,  8 Apr 2025 04:09:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1744099783; bh=tE5UlKgjQs3sVvYQEFI9jk8/CTDT3+rc1MtKFbeQNZs=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TULwQFosB5S6j6tcswWGdMJ06l14IgbxLZuVz6U1lqqu47xP+3FT0jGTvnSYMoaGH
	 7RlBeK/TPUEVPIezJgcdWeGzxRV7kcyCNCb57/Z04K643MxGNdWFp+aA1A6Q9OMz8r
	 edeILdh+PAqrbneC5TcnQB1Wd9ttF6Urk8PNjHWMzCUnUTdDxTKJoVWimwZpP9Zeof
	 ilTwF8KqdHve7OlVpYQcNnsk43S8gM/w2pgC0yFcCtoy7bYliYdlm9qvHvcoigaXir
	 vCEwydIbvvma2bjwXqwtAhIWNUPzB9xCE0Qb5YNYf318i1unVX30ige9vwQ9iewDKr
	 Z1aziKI609OYA==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 30886385A73
	for <usrp-users@lists.ettus.com>; Tue,  8 Apr 2025 04:09:31 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="IuGDDIgm";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e5b6f3025dso7568179a12.1
        for <usrp-users@lists.ettus.com>; Tue, 08 Apr 2025 01:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1744099770; x=1744704570; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XUeyH1YFW0+d7ynq4lYvr3EgoAP8EpQ91cGHZxYsDmY=;
        b=IuGDDIgm+gpBg8Di8+ExVZsbjs/dniotuIqy8h3suGN2Fjx0H810kibw/jyrQKGJbr
         fZi+sqmq3JJie7hDT/7ORU3PALSAXfHpS0iOnES199f1baB3osJSi6wPxU7gOMAKQOST
         zAvK8xI127+Zd5bpXuMoJtd3L7sJIelUSS4wpZpp66qppHIfmAQEVYA/b7jvnL9LB6Ko
         K5q2+860YNFVExhbjimR4H7n22WGwgn33v8NO9bnfFxGp6q1AKfiEYiO01BebYvgH0Nv
         00bLhFUBfRVIbeE4SPAodkk6jvCoG+Kz0H5mQxWJ+yrEmrMyOl6asowNVtBhjPyVU6dO
         MO/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744099770; x=1744704570;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XUeyH1YFW0+d7ynq4lYvr3EgoAP8EpQ91cGHZxYsDmY=;
        b=qVbu3RnxVkB2/eWECfbJQTPNe8UVNsIA97YtzN3X6zy+XluxX7ggiT8oFeSORyDrFl
         OAgN1oSPYCXV0NIFLotajanzAdDxecVx6L6kTIn5yZdHNYa1l19bwExK2qDJ2eiWxHf1
         z0oM08FWYiujiPi++djLoBAAEm9OTx52t6GcN4W71c7l5BbYpJLtd4KfYXOGIqLVfH0B
         0UOhYqDGS7nYIigz2m3lOc/0cEP3caFe5oELWrjLWdWtV1w5NweE1d2iAGDgAQDEe2vJ
         9fik5xk/Kjwej/Su3KxYQlKUdwwnXIo4cfeEU60TSJBBfBAuTmsFbZ0m63h2QG4i/b+d
         yj5Q==
X-Gm-Message-State: AOJu0YwPjTV4wU1h7ziluqbNRQaYySpOL8lorJ7EkGq88IvjEc/cg2z5
	62wJTXQztb/Uogg+BFo0KIWg3g9Ej5RtRzckfIbdaQehk877yPH6fo+BiQv4Bqa55argrU36RZV
	oVU3aNs0GGNsUOkDVg2nPr0Ce57i0QeWParmb5J2dUR12+N9th73fHw==
X-Gm-Gg: ASbGnctNeR08HG4W6GY3bG7erm/oFYL8cPOrg/aXSPDPE47EC3/LpaMfttKGpfG4kpN
	1UkwHjmIMjFzSkghDT3lQS5im4QqWasHr6g0tWSmJ31uLpORmnT5GkKThVh4asLOhsfdaj7csK9
	g2I9ztjReiVTfLNJk/kcmpSWdRUtpMkQwRMNy/0KA/fdgv9fHuz9aUlW4AhQ==
X-Google-Smtp-Source: AGHT+IGWM5S4sEiRU+VgkLS0oCfUi1t7XCeOwjCJnJkdH/r8yZWyzHU6MIxYatwGBKLTX/cMwGg5Dh4/esxEtu+HlAM=
X-Received: by 2002:a05:6402:2549:b0:5e0:8c55:504 with SMTP id
 4fb4d7f45d1cf-5f0db7fe65bmr10151186a12.7.1744099769516; Tue, 08 Apr 2025
 01:09:29 -0700 (PDT)
MIME-Version: 1.0
References: <5d6dddb5735e4cd89d06e6e18c1854c3@vastech.co.za>
 <CAFOi1A7z6sUAxHJESKsaqznQmWjD=mDzY3q_qhWBiO_icMCRhw@mail.gmail.com> <288a9a05cff347a6a84c9cdcc1b6008e@vastech.co.za>
In-Reply-To: <288a9a05cff347a6a84c9cdcc1b6008e@vastech.co.za>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 8 Apr 2025 10:09:18 +0200
X-Gm-Features: ATxdqUEz6I03cFE0TgsJV8XihFETkDV7Cj48IQaC8WL42fk0xmKOfNMBq_io60Y
Message-ID: <CAFOi1A5i_vrQfs6qFzwVgnbj7MBhuEoAM+P3Nr34ahanguwdeg@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: TXOFPMFCSBQXN7CBZ55M2RDGJX7K7WFN
X-Message-ID-Hash: TXOFPMFCSBQXN7CBZ55M2RDGJX7K7WFN
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL]Re: rfnoc sample alignment from two radio channels
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TXOFPMFCSBQXN7CBZ55M2RDGJX7K7WFN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4600660947350089787=="

--===============4600660947350089787==
Content-Type: multipart/alternative; boundary="00000000000037402506323fdfb1"

--00000000000037402506323fdfb1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 8, 2025 at 9:45=E2=80=AFAM Kevin Williams <kevin.williams@vaste=
ch.co.za>
wrote:

> Hi Martin,
>
>
>
> This is interesting feedback.
>
>
>
> On the streaming, I am using a python create_rx_streamer() directly on th=
e
> graph to the connected to the 1 or 2 outputs of my new rfnoc block, like
> this:
>
>
>
> g_graph  =3D uhd.rfnoc.RfnocGraph("type=3Dn3xx,addr=3D10.20.101.1")
>
> stream_args   =3D uhd.usrp.StreamArgs("fc32", "sc16")
>
> g_rx_streamer =3D g_graph.create_rx_streamer(2, stream_args)
>

This is good practice!


> I was not aware of the need for forking streaming commands, and I am not
> sure how to do this. I will try and find info in the docs, but if there i=
s
> anything special to know it would be very valuable. (I can compile UHD by
> hand, and have been doing for certain debugging.)
>

My terminology was a bit weird, we usually don't call it forking. I was
doing something fork-related earlier. This is what the addsub block does:

https://github.com/EttusResearch/uhd/blob/master/host/lib/rfnoc/addsub_bloc=
k_control.cpp#L39

Docs:
https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1node__t.html#a251=
06f8698788e5882b8354ba8c0efc6

"one_to_fan" means that a stream command on one input will be forwarded to
all outputs (or vice versa). The default is "one_to_one", which will
forward the stream command only to one opposite port.


> On the =E2=80=9Cconsuming of samples=E2=80=9D I am under the impression t=
hat by me
> asserting TREADY an upstream block will consider that sample =E2=80=9Ccon=
sumed=E2=80=9D,
> and of course, I do this on both streams from the (single) radio on the
> N300?
>

That's correct!

--M

--00000000000037402506323fdfb1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 8, =
2025 at 9:45=E2=80=AFAM Kevin Williams &lt;<a href=3D"mailto:kevin.williams=
@vastech.co.za">kevin.williams@vastech.co.za</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-4459540762744=
101153"><div lang=3D"EN-ZA"><div class=3D"m_-4459540762744101153WordSection=
1"><p class=3D"MsoNormal"><span>Hi Martin,<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal">=
<span>This is interesting feedback.<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span>O=
n the streaming, I am using a python create_rx_streamer() directly on the g=
raph to the connected to the 1 or 2 outputs of my new rfnoc block, like thi=
s:<u></u><u></u></span></p><p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u=
></span></p><p class=3D"MsoNormal"><span>g_graph=C2=A0 =3D uhd.rfnoc.RfnocG=
raph(&quot;type=3Dn3xx,addr=3D10.20.101.1&quot;)<u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span>stream_args=C2=A0=C2=A0 =3D uhd.usrp.StreamArgs(=
&quot;fc32&quot;, &quot;sc16&quot;)<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span>g_rx_streamer =3D g_graph.create_rx_streamer(2, stream_args)<=
/span></p></div></div></div></blockquote><div><br></div><div>This is good p=
ractice!</div><div>=C2=A0<span> <br></span></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div class=3D"msg-4459540762744101153"><div lang=3D=
"EN-ZA"><div class=3D"m_-4459540762744101153WordSection1"><p class=3D"MsoNo=
rmal"><span>I was not aware of the need for forking streaming commands, and=
 I am not sure how to do this. I will try and find info in the docs, but if=
 there is anything special to know it would be very valuable. (I can compil=
e UHD by hand, and have been doing for certain debugging.)</span></p></div>=
</div></div></blockquote><div><br></div><div>My terminology was a bit weird=
, we usually don&#39;t call it forking. I was doing something fork-related =
earlier. This is what the addsub block does:</div><div><br></div><div><a hr=
ef=3D"https://github.com/EttusResearch/uhd/blob/master/host/lib/rfnoc/addsu=
b_block_control.cpp#L39">https://github.com/EttusResearch/uhd/blob/master/h=
ost/lib/rfnoc/addsub_block_control.cpp#L39</a></div><div><br></div><div>Doc=
s: <a href=3D"https://uhd.readthedocs.io/en/latest/classuhd_1_1rfnoc_1_1nod=
e__t.html#a25106f8698788e5882b8354ba8c0efc6">https://uhd.readthedocs.io/en/=
latest/classuhd_1_1rfnoc_1_1node__t.html#a25106f8698788e5882b8354ba8c0efc6<=
/a></div><div><span><br></span></div><div><span>&quot;one_to_fan&quot; mean=
s that a stream command on one input will be forwarded to all outputs (or v=
ice versa). The default is &quot;one_to_one&quot;, which will forward the s=
tream command only to one opposite port.</span></div><div><span>=C2=A0</spa=
n></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg=
-4459540762744101153"><div lang=3D"EN-ZA"><div class=3D"m_-4459540762744101=
153WordSection1"><p class=3D"MsoNormal"><span>On the =E2=80=9Cconsuming of =
samples=E2=80=9D I am under the impression that by me asserting TREADY an u=
pstream block will consider that sample =E2=80=9Cconsumed=E2=80=9D, and of =
course, I do this on both streams from the (single) radio on the N300?</spa=
n></p></div></div></div></blockquote><div><br></div><div>That&#39;s correct=
!</div><div><br></div><div>--M</div></div></div>

--00000000000037402506323fdfb1--

--===============4600660947350089787==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4600660947350089787==--

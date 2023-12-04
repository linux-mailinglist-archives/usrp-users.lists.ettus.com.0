Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FA0803A0E
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 17:21:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 83969384BF3
	for <lists+usrp-users@lfdr.de>; Mon,  4 Dec 2023 11:21:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701706896; bh=obvYz9eL5lnuNPUToto2z0ZfH8SBldg8Lr8YCPPue10=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=O0FdHAARdPxa89t3cNeqJsbKjQhSJoLuY8fgACp+baGLlxsNVerUuXwMatma+e3jR
	 JgB744yD95MxPA9HZX7jRRPEA361v3b+DTxdEHDKglRFehcxU7mU3FozyAsxPFzyr4
	 b4kmxGuOWWjka/g9P1McTbXTWdM7YxSb0BbB25vL+DHC72hr3xj50H9uAXu5hZruRU
	 rA4BY9SE4aTQjQowBFDRuhEnAQyefCcgXswNgSK/Oy7RgSz/mTBSpow5gqsbStZNtS
	 EYGlp/dbLOi7TyB9vIeJOnsJrx7gmFz/seaEjp6EPnLQILoIzY0PMTfXVpZq42aGG/
	 8YjrP6Pg3jjyA==
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 61C53383B8C
	for <usrp-users@lists.ettus.com>; Mon,  4 Dec 2023 11:20:42 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="gCBzLFmR";
	dkim-atps=neutral
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50bfd3a5b54so894711e87.3
        for <usrp-users@lists.ettus.com>; Mon, 04 Dec 2023 08:20:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1701706841; x=1702311641; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=76nswmZqCyB2yU6n2hD6SY+JEdRsrG8G4QEgyOrYCzw=;
        b=gCBzLFmRT+Q9JoskEQA6UGNELx9z5TK0qodpWiYqTra0QTvX/G/XoRYALZo95PaE3o
         S121Rs+/jEts/LkIBy7KhlkiTuBPuXDFUP/PkW9V02+jSiehEWuhIE2insRcajDKDtOZ
         rtaMG7il+tpyFQ/ekk/UU7UO9SMI7IXExLZkUu8kQmuCMatgfYiz5ZS+eWZ6ShTXd+xe
         gO0Y0iu8JwwibLr+8vy1Ifd+DFQdZOTaOriqF1F+lU13+SS9HIOQCPKz0Fu9xeACuFKB
         48UPxf3J5kv6h4aZ7TvR+a12Qb+vvVxj95nOJKtC9PdP+kuPq9C/odRdEslD7/IpVegQ
         xZmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701706841; x=1702311641;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=76nswmZqCyB2yU6n2hD6SY+JEdRsrG8G4QEgyOrYCzw=;
        b=wB+E9+ku9ZdcF06JQgShs3t5xuo8m56JtIXacZWNb0Zzb6ZnWDVtXppeQ6uo3Z0Cgh
         JvSRO/8D2yfgLb2gyEZ2aZ9eK2DxEKxag+/8mxiCViiTgN3nfQhrM+hQ5IwFVj/HGYjE
         wnZcb8MdkwuMUk6dyVJ49l/j43QLbeWeiB9U6xuozV78hiJ+/kJNZ3u5nTYi6OvQdS/K
         ZZa/2GnQqNZ4CG5RQckU3wnhxilooZWwo/5qjy0zbV3urJEqFOkGLY+Muj6yVaJ9tenU
         iPXQGbA8QjFUMbWWwTSIVognbRKgXl3PRD9cYXGvqvS9Q52K8JN+HbT4+myZQ5c4Xqh+
         9CuQ==
X-Gm-Message-State: AOJu0YzYSdg582hPstn3xQ1W2DpV6E5dlq8mAwR1fS+ctG3KVQtvBB30
	ooNm5wKVQI9oqLQ8Pi52uQJTaSQroUmgYyxWRCT8BfdpzukTygCb
X-Google-Smtp-Source: AGHT+IGC2mJpBUNELk/JL+CxdexyqqMM8rfsjRaa5zCYfifkAzPbg9AkedLwoLGMmn1ng8YMLZVftYur7rQMoCFiCQM=
X-Received: by 2002:ac2:5333:0:b0:50b:eef5:55fa with SMTP id
 f19-20020ac25333000000b0050beef555famr1176375lfh.30.1701706840659; Mon, 04
 Dec 2023 08:20:40 -0800 (PST)
MIME-Version: 1.0
References: <74F79145-1C6F-46A1-BD35-1B1C9E8AAD4A@mytum.de>
In-Reply-To: <74F79145-1C6F-46A1-BD35-1B1C9E8AAD4A@mytum.de>
Date: Mon, 4 Dec 2023 11:20:29 -0500
Message-ID: <CAB__hTQOucfe4Os6L+Wkc6gy7GvbzFrSjZP+QoV7vF2Q7asHaQ@mail.gmail.com>
To: Xianglong Wang <xianglong.wang@tum.de>
Message-ID-Hash: EMJBL7N656OIDQWW643BF7TUQEINK7A6
X-Message-ID-Hash: EMJBL7N656OIDQWW643BF7TUQEINK7A6
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC: RX & TX triggering for RFNoC block only flowgraph
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EMJBL7N656OIDQWW643BF7TUQEINK7A6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5785335632032206459=="

--===============5785335632032206459==
Content-Type: multipart/alternative; boundary="000000000000c046fd060bb17f52"

--000000000000c046fd060bb17f52
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Xianglong,
The thread you provided is pretty old.  On recent UHD versions (including
4.4), it is possible to work directly without the splitstream block (i.e.,
Radio-Rx =3D> custom block =3D> Radio-Tx).  You may need to handle time sta=
mps
- if your Radio-Rx is inserting time stamps, they will by definition arrive
"Late" to the Radio-Tx if your custom block does not adjust them.  You also
might need to define your RFNoC graph with one edge as a "back edge" or
something like that so that the RFNoC graph does not loop.

You may find it easier to get this working outside of gnuradio - perhaps
using the rfnoc_radio_loopback example
<https://github.com/EttusResearch/uhd/blob/master/host/examples/rfnoc_radio=
_loopback.cpp>
or a modification of this for your custom block.
Rob

On Sun, Dec 3, 2023 at 12:24=E2=80=AFPM Xianglong Wang <xianglong.wang@tum.=
de>
wrote:

> Dear All,
>
> I am using UHD 4.4 and GNURadio 3.10 and I am trying to set up an RX-TX
> passthrough flow graph as discussed in this thread (
> https://lists.ettus.com/empathy/thread/MJKCCJEVNJKJOIRORPWDI6Z5WZNHSR3B?h=
ash=3DMJKCCJEVNJKJOIRORPWDI6Z5WZNHSR3B#MJKCCJEVNJKJOIRORPWDI6Z5WZNHSR3B
> ).
>
>  However, my flow graph is not working either, and when I add the split
> streamer as said in the thread, only the RX works, but the TX does not. H=
ow
> can I get both RX and TX to work with such a flow graph? Thanks in advanc=
e.
>
> Kind regards,
> Xianglong
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c046fd060bb17f52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Xianglong,<div>The thread you provided is pretty old.=
=C2=A0 On recent UHD versions (including 4.4), it is possible to work direc=
tly without the splitstream block (i.e., Radio-Rx =3D&gt; custom block =3D&=
gt; Radio-Tx).=C2=A0 You may need to handle time stamps - if your Radio-Rx =
is inserting time stamps, they will by definition arrive &quot;Late&quot; t=
o the Radio-Tx if your custom block does not adjust them.=C2=A0 You also mi=
ght need to define your RFNoC graph with one edge as a &quot;back edge&quot=
; or something like that so that the RFNoC graph does not loop.</div><div><=
br></div><div>You may find it easier to get this working outside of gnuradi=
o - perhaps using the <a href=3D"https://github.com/EttusResearch/uhd/blob/=
master/host/examples/rfnoc_radio_loopback.cpp">rfnoc_radio_loopback example=
</a> or a modification of this for your custom block.</div><div>Rob</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Sun, Dec 3, 2023 at 12:24=E2=80=AFPM Xianglong Wang &lt;<a href=3D"mailto:=
xianglong.wang@tum.de" target=3D"_blank">xianglong.wang@tum.de</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear All,<br>
<br>
I am using UHD 4.4 and GNURadio 3.10 and I am trying to set up an RX-TX pas=
sthrough flow graph as discussed in this thread (<a href=3D"https://lists.e=
ttus.com/empathy/thread/MJKCCJEVNJKJOIRORPWDI6Z5WZNHSR3B?hash=3DMJKCCJEVNJK=
JOIRORPWDI6Z5WZNHSR3B#MJKCCJEVNJKJOIRORPWDI6Z5WZNHSR3B" rel=3D"noreferrer" =
target=3D"_blank">https://lists.ettus.com/empathy/thread/MJKCCJEVNJKJOIRORP=
WDI6Z5WZNHSR3B?hash=3DMJKCCJEVNJKJOIRORPWDI6Z5WZNHSR3B#MJKCCJEVNJKJOIRORPWD=
I6Z5WZNHSR3B</a>).<br>
<br>
=C2=A0However, my flow graph is not working either, and when I add the spli=
t streamer as said in the thread, only the RX works, but the TX does not. H=
ow can I get both RX and TX to work with such a flow graph? Thanks in advan=
ce.<br>
<br>
Kind regards,<br>
Xianglong<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c046fd060bb17f52--

--===============5785335632032206459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5785335632032206459==--

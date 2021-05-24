Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 613A938E21D
	for <lists+usrp-users@lfdr.de>; Mon, 24 May 2021 10:03:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7A07F383E9C
	for <lists+usrp-users@lfdr.de>; Mon, 24 May 2021 04:03:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=student-ltu-se.20150623.gappssmtp.com header.i=@student-ltu-se.20150623.gappssmtp.com header.b="rCkoQm/R";
	dkim-atps=neutral
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 2BE52383DEA
	for <usrp-users@lists.ettus.com>; Mon, 24 May 2021 04:02:22 -0400 (EDT)
Received: by mail-pj1-f46.google.com with SMTP id b15-20020a17090a550fb029015dad75163dso10700105pji.0
        for <usrp-users@lists.ettus.com>; Mon, 24 May 2021 01:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=student-ltu-se.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=s25XOjf/SStUfS2qtiRk0MLUC2S40HS1FpgbiSnJdP0=;
        b=rCkoQm/RcOKyWIC1MGe43WKJYi3Fwrd5vHUCFlZOKdJ85crRPqJihS5kypWov/zZUa
         Cuga++QWOA6oTA4nHJ1htmY1I4uO+V+dz/6y9/rT67fGO72iFSh7jxykFkOgGn7CyAYX
         GQN7upNXdH6E9MLL2d/tS+9DitFhQ3g+ptQwGLKTWtwENjufzLgjdwHzIDsq/mqDsSTE
         qUVhFKMDiutJkjwR75AZVjE0Je0nWZg7J41jKUjrj2ci7tqLTjJZ+PcNILLIyKK0owq/
         qb5Hu9M039pJXwj3l639riNEiFRjVJeMKen8gl4xjRXV9k0BUqQ9MxO358pxcl2MmBa1
         yVdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=s25XOjf/SStUfS2qtiRk0MLUC2S40HS1FpgbiSnJdP0=;
        b=Z7H8JfmUci56enqEfZeUWcqAI4VrxS/S/b8R0IxsZ3ZH8Fe3nXz4RlPtx6YbU4BK8J
         f1KsMqMA4dzn7sMus1kxI3bW/op+S/4X98qpT0rx9nslpLi/dDszkdj8H+XXA2tZDvSn
         gP3aadWX600QE08GOyYMrbsQVFrTgQT9d3SuJN6mZBUXn9nQJ/mKAA4lbai3B5/MDXC5
         UCAcUlrXZFQ5bpgqnUJMpYJrMrybtHJPGucVgCMwGGJYOoHiV01VM23cy77d5/oC1pGT
         E2H3WFPCZEc8yTV6e/rE1CO3BNJBpGdi/6rFWUHCkVcjkpAzfvw0+AfoBp2B6BDE49JV
         oD0w==
X-Gm-Message-State: AOAM531lCnynyaof7aSTvT2LL0l3fWmncdYxuUlehYvoauIszbwmvgAV
	F+3hJK9JWl10NJEzipnhjg5jSFwNcI5RG7CAj3gZCRFJ+1Jk+g==
X-Google-Smtp-Source: ABdhPJw8oKAZgnkojIpDRRkbA40lLu8SzKJseVnaVbEvaSEfHBAsVfMLDMC7mgHmh2HcI91gKCEpvSVvm34vrAvwlDQ=
X-Received: by 2002:a17:902:f24c:b029:f0:f29b:8cd4 with SMTP id
 j12-20020a170902f24cb02900f0f29b8cd4mr24252574plc.80.1621843341092; Mon, 24
 May 2021 01:02:21 -0700 (PDT)
MIME-Version: 1.0
References: <CADjF3Px5e2rjFJG+CtMwkWFSAPw4eVsvt7sPDcpoDphnmrdjdA@mail.gmail.com>
 <20d26f00-f3ec-7813-e448-51c455d857cd@ettus.com> <CADjF3PwZ8YtHiZfZzQapznKM=e-FNX49Qjp75bp0vDioKZoHsw@mail.gmail.com>
 <27db1799-7784-ea07-ee5f-2a960e2d4be9@ettus.com> <168d3d5e-7bca-a76f-7e22-17c98863b0e0@destevez.net>
In-Reply-To: <168d3d5e-7bca-a76f-7e22-17c98863b0e0@destevez.net>
Date: Mon, 24 May 2021 10:02:10 +0200
Message-ID: <CADjF3Pxy=Kw+mBYX_RBuxBHwv-32vc_uHj3jTcnqPUDhQfJM7A@mail.gmail.com>
To: =?UTF-8?Q?Daniel_Est=C3=A9vez?= <daniel@destevez.net>
Message-ID-Hash: ORFAKJ7HF2JB2INQGWLR5FTN6BJO57SH
X-Message-ID-Hash: ORFAKJ7HF2JB2INQGWLR5FTN6BJO57SH
X-MailFrom: marelf-5@student.ltu.se
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: GPP requirements for USRP B210 amsat
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ORFAKJ7HF2JB2INQGWLR5FTN6BJO57SH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Martin Elfvelin via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Elfvelin <marelf-5@student.ltu.se>
Content-Type: multipart/mixed; boundary="===============2246720511292107192=="

--===============2246720511292107192==
Content-Type: multipart/alternative; boundary="0000000000003a3de605c30ed449"

--0000000000003a3de605c30ed449
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Daniel, Marcus

My advice would also be to get some kind of x86 mini-PC. A RaspberryPi 4
> definitely has the power to handle the typical modems used by Amateur
> satellites, but I think it's quite limited and it's easy to get into
> performance problems if you try to do more.
>

A mini-PC with a fairly powerful processor (Ryzen 5/Intel i7) sounds like
the way to go here, I appreciate the feedback.

By ASM+Golay/Reed Solomon I think that Martin refers to the typical
> modes supported by the GOMspace AX100 radio. gr-satellites has decoders
> for these two modes, since they are used by many satellites.
>

Correct, our upcoming mission (1U CubeSat APTAS) uses an AX100 radio with
mode 5 (ASM synch word and Golay coded length field).

Besides what Marcus has said, and what I wrote in that link, my
> suggestion is that you check out gr-satellites to see what you can reuse
> already and what things that you would need for your mission are missing
> (uplink capability perhaps?).


We are fairly familiar with gr-satellites and should make an introduction
post on your github as soon as possible now that the design of the
satellite is finished. Indeed the uplink capability we've been developing
on our own and currently we are trying to send the first TCs to the AX100
but so far haven't had any success and we've been unable to verify that we
are sending correct data since the grc core GFSK mod and demod block don't
seem to work together. Maybe this is a discussion we could continue under a
different topic.

Best regards,
Martin Elfvelin

On Sun, May 23, 2021 at 10:30 AM Daniel Est=C3=A9vez <daniel@destevez.net> =
wrote:

> El 22/5/21 a las 17:05, Marcus M=C3=BCller escribi=C3=B3:
>
> >> Currently we are developing a 1U cubesat that will use a 9.6 kbps
> GFSK/ASM+Golay/Reed
> >> Solomon configuration.
> >
> > Well, if you're in the "business" of building your own satellites, then
> by all means, just
> > slap a PC of some kind (intel NUC? or any micro-ATX board, maybe with a
> Ryzen 5 even?) on
> > there =E2=80=93 really can't hurt if you've got a little headroom for d=
oing more
> advanced stuff
> > such as attitude tumble estimation, better doppler prediction /
> correction, or simply more
> > modes (and simultaneous modes).
>
> Hi Marcus,
>
> Thanks for putting me in copy. Since I'm not subscribed to the
> usrp-users list, I would totally have missed this thread.
>
> My advice would also be to get some kind of x86 mini-PC. A RaspberryPi 4
> definitely has the power to handle the typical modems used by Amateur
> satellites, but I think it's quite limited and it's easy to get into
> performance problems if you try to do more.
>
> By ASM+Golay/Reed Solomon I think that Martin refers to the typical
> modes supported by the GOMspace AX100 radio. gr-satellites has decoders
> for these two modes, since they are used by many satellites.
>
> > Regarding the Golay code: is that the classical perfect binary Golay
> (23,12)-code, for
> > hard decoding? If you pick a PC over a Pi, you get higher memory
> bandwidth, and can
> > implement Maximum-Likelihood decoding (it doesn't get any better ;) )
> simply by having a
> > precomputed table of 2=C2=B2=C2=B3 12-bit words; that's 16 MB of RAM wh=
en you put
> each 12 bit info
> > word into a 16 bit machine word (if you implement it in a packed manner=
,
> it's only 12 MB)
> > of a lookup table, and a single memory access would then give you the
> fully decoded 12
> > bits. Not that you're anywhere near computational trouble with the 9600
> bits a second
> > doing a traditional decoder. In fact, Daniel Est=C3=A9vez, himself of G=
NU
> Radio and satellite
> > observation/gr-satellites fame [10], has a nice article on algebraic
> decoding of the
> > (24,12) Golay [11] and the (23,12), too [12] (note that you can solve
> the 1-bit-reduced
> > error correction capability by actually trying to decode both parity
> hypotheses).
>
> That's an interesting idea to decode Golay (23,12). The results would be
> equivalent to algebraic decoding, I believe. This is because the balls
> of Hamming radius 3 centred on the codewords are a partition of the
> total code space. Algebraic decoding solves for the centre of the ball
> that the received word belongs to. Your lookup table would be a table of
> just that: each possible word, together with its corresponding centre.
>
> I wonder which algorithm is faster. The lookup table seems like instant
> decode, but since the table is large-ish, it wouldn't fit in cache and
> the entry would need to be fetched from RAM. In comparison, algebraic
> decoding takes a handful arithmetic operations and that's all. So
> algebraic decoding might be faster, after all.
>
> However, your idea about maximum-likelyhood decoding makes me think what
> would happen if we try to do decoding from soft symbols. That's a much
> more difficult problem. I haven't given to it any serious thought, but I
> think a na=C3=AFve approach is computationally intractable. A quick Googl=
e
> search shows some papers doing different tricks to speed this up.
>
> In any case, for the AX100 modem I think that this would be an overkill.
> The Golay code is used to protect the packet header, which basically
> contains the packet size. The payload itself is a Reed-Solomon codeword.
> So the Golay code is not the "weakest link in the chain". It is more
> likely that the Reed-Solomon codeword can't be decoded in the presence
> of errors.
>
> >> However it might be of interest in the future to add support for
> reception of higher
> >> frequencies and data rates (say amateur S-band for example) which woul=
d
> mean adding
> >> another SDR to the same PC and there I'm worried about creating a
> bottleneck in terms of
> >> computing power.
> >
> > Go do a bit of "receiver shopping" in gr-satellites. In fact, Daniel
> even has guidance for
> > teams developing ground stations for smallsat missions [13].
>
> Besides what Marcus has said, and what I wrote in that link, my
> suggestion is that you check out gr-satellites to see what you can reuse
> already and what things that you would need for your mission are missing
> (uplink capability perhaps?).
>
> PS: Please keep me in CC, since I'm not on the mailing list.
>
> Best,
>
> Daniel.
>
>

--0000000000003a3de605c30ed449
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Daniel, Marcus</div><div><br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div>My advice would also be to get some=
 kind of x86 mini-PC. A RaspberryPi 4 <br>
definitely has the power to handle the typical modems used by Amateur <br>
satellites, but I think it&#39;s quite limited and it&#39;s easy to get int=
o <br>
performance problems if you try to do more.</div></blockquote><div><br></di=
v><div>A mini-PC with a fairly powerful processor (Ryzen 5/Intel i7) sounds=
 like the way to go here, I appreciate the feedback.</div><div><br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div>By ASM+Golay/Reed Solo=
mon I think that Martin refers to the typical <br>
modes supported by the GOMspace AX100 radio. gr-satellites has decoders <br=
>
for these two modes, since they are used by many satellites.</div></blockqu=
ote><div><span class=3D"gmail-im"><br></span></div><div><span class=3D"gmai=
l-im">Correct, our upcoming mission (1U CubeSat APTAS) uses an AX100 radio =
with mode 5 (ASM synch word and Golay coded length field).<br><br></span><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><span class=3D"gmail-im">Be=
sides what Marcus has said, and what I wrote in that link, my </span><br><s=
pan class=3D"gmail-im">
suggestion is that you check out gr-satellites to see what you can reuse </=
span><br><span class=3D"gmail-im">
already and what things that you would need for your mission are missing </=
span><br><span class=3D"gmail-im">
(uplink capability perhaps?).</span></blockquote></div><div><span class=3D"=
gmail-im"><br></span></div><div><span class=3D"gmail-im">We are fairly fami=
liar with gr-satellites and should make an introduction post on your github=
 as soon as possible now that the design of the satellite is finished. Inde=
ed the uplink capability we&#39;ve been developing on our own and currently=
 we are trying to send the first TCs to the AX100 but so far haven&#39;t ha=
d any success and we&#39;ve been unable to verify that we are sending corre=
ct data since the grc core GFSK mod and demod block don&#39;t seem to work =
together. Maybe this is a discussion we could continue under a different to=
pic.<br></span></div><div><span class=3D"gmail-im"><br></span></div><div><s=
pan class=3D"gmail-im">Best regards,</span></div><div><span class=3D"gmail-=
im">Martin Elfvelin<br></span></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Sun, May 23, 2021 at 10:30 AM Daniel=
 Est=C3=A9vez &lt;<a href=3D"mailto:daniel@destevez.net">daniel@destevez.ne=
t</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>El 22/5/21 a las 17:05, Marcus M=C3=BCller escribi=C3=B3:<br>
<br>
&gt;&gt; Currently we are developing a 1U cubesat that will use a 9.6 kbps =
GFSK/ASM+Golay/Reed<br>
&gt;&gt; Solomon configuration.<br>
&gt; <br>
&gt; Well, if you&#39;re in the &quot;business&quot; of building your own s=
atellites, then by all means, just<br>
&gt; slap a PC of some kind (intel NUC? or any micro-ATX board, maybe with =
a Ryzen 5 even?) on<br>
&gt; there =E2=80=93 really can&#39;t hurt if you&#39;ve got a little headr=
oom for doing more advanced stuff<br>
&gt; such as attitude tumble estimation, better doppler prediction / correc=
tion, or simply more<br>
&gt; modes (and simultaneous modes).<br>
<br>
Hi Marcus,<br>
<br>
Thanks for putting me in copy. Since I&#39;m not subscribed to the <br>
usrp-users list, I would totally have missed this thread.<br>
<br>
My advice would also be to get some kind of x86 mini-PC. A RaspberryPi 4 <b=
r>
definitely has the power to handle the typical modems used by Amateur <br>
satellites, but I think it&#39;s quite limited and it&#39;s easy to get int=
o <br>
performance problems if you try to do more.<br>
<br>
By ASM+Golay/Reed Solomon I think that Martin refers to the typical <br>
modes supported by the GOMspace AX100 radio. gr-satellites has decoders <br=
>
for these two modes, since they are used by many satellites.<br>
<br>
&gt; Regarding the Golay code: is that the classical perfect binary Golay (=
23,12)-code, for<br>
&gt; hard decoding? If you pick a PC over a Pi, you get higher memory bandw=
idth, and can<br>
&gt; implement Maximum-Likelihood decoding (it doesn&#39;t get any better ;=
) ) simply by having a<br>
&gt; precomputed table of 2=C2=B2=C2=B3 12-bit words; that&#39;s 16 MB of R=
AM when you put each 12 bit info<br>
&gt; word into a 16 bit machine word (if you implement it in a packed manne=
r, it&#39;s only 12 MB)<br>
&gt; of a lookup table, and a single memory access would then give you the =
fully decoded 12<br>
&gt; bits. Not that you&#39;re anywhere near computational trouble with the=
 9600 bits a second<br>
&gt; doing a traditional decoder. In fact, Daniel Est=C3=A9vez, himself of =
GNU Radio and satellite<br>
&gt; observation/gr-satellites fame [10], has a nice article on algebraic d=
ecoding of the<br>
&gt; (24,12) Golay [11] and the (23,12), too [12] (note that you can solve =
the 1-bit-reduced<br>
&gt; error correction capability by actually trying to decode both parity h=
ypotheses).<br>
<br>
That&#39;s an interesting idea to decode Golay (23,12). The results would b=
e <br>
equivalent to algebraic decoding, I believe. This is because the balls <br>
of Hamming radius 3 centred on the codewords are a partition of the <br>
total code space. Algebraic decoding solves for the centre of the ball <br>
that the received word belongs to. Your lookup table would be a table of <b=
r>
just that: each possible word, together with its corresponding centre.<br>
<br>
I wonder which algorithm is faster. The lookup table seems like instant <br=
>
decode, but since the table is large-ish, it wouldn&#39;t fit in cache and =
<br>
the entry would need to be fetched from RAM. In comparison, algebraic <br>
decoding takes a handful arithmetic operations and that&#39;s all. So <br>
algebraic decoding might be faster, after all.<br>
<br>
However, your idea about maximum-likelyhood decoding makes me think what <b=
r>
would happen if we try to do decoding from soft symbols. That&#39;s a much =
<br>
more difficult problem. I haven&#39;t given to it any serious thought, but =
I <br>
think a na=C3=AFve approach is computationally intractable. A quick Google =
<br>
search shows some papers doing different tricks to speed this up.<br>
<br>
In any case, for the AX100 modem I think that this would be an overkill. <b=
r>
The Golay code is used to protect the packet header, which basically <br>
contains the packet size. The payload itself is a Reed-Solomon codeword. <b=
r>
So the Golay code is not the &quot;weakest link in the chain&quot;. It is m=
ore <br>
likely that the Reed-Solomon codeword can&#39;t be decoded in the presence =
<br>
of errors.<br>
<br>
&gt;&gt; However it might be of interest in the future to add support for r=
eception of higher<br>
&gt;&gt; frequencies and data rates (say amateur S-band for example) which =
would mean adding<br>
&gt;&gt; another SDR to the same PC and there I&#39;m worried about creatin=
g a bottleneck in terms of<br>
&gt;&gt; computing power.<br>
&gt; <br>
&gt; Go do a bit of &quot;receiver shopping&quot; in gr-satellites. In fact=
, Daniel even has guidance for<br>
&gt; teams developing ground stations for smallsat missions [13].<br>
<br>
Besides what Marcus has said, and what I wrote in that link, my <br>
suggestion is that you check out gr-satellites to see what you can reuse <b=
r>
already and what things that you would need for your mission are missing <b=
r>
(uplink capability perhaps?).<br>
<br>
PS: Please keep me in CC, since I&#39;m not on the mailing list.<br>
<br>
Best,<br>
<br>
Daniel.<br>
<br>
</blockquote></div>

--0000000000003a3de605c30ed449--

--===============2246720511292107192==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2246720511292107192==--

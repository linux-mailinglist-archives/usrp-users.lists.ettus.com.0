Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5527496788
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 22:47:24 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9DF68384B2C
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 16:47:23 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eUk/WXhy";
	dkim-atps=neutral
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 12C95384800
	for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 16:46:27 -0500 (EST)
Received: by mail-lf1-f46.google.com with SMTP id o12so36413973lfu.12
        for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 13:46:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HUEGqXG2sdmmImm0JLUMXf4n2FLGdTuW2uvkNaSQMuA=;
        b=eUk/WXhyBUqo6O6EeRgv2tbYt/nFucqJ2xl2/1Ofbo1Xl9e7W1f3t5XONyGF54NWgP
         Y8ynyHXurQjsqYLja1rrRXqwDoihHbXO6kwF7n7UpLScpkLS2h6kb0iQ7KfrIy1t4JEr
         xrR7MUSEs34eYqbdTaOVDJd9BxQT7FuqunCoPsYg0Z6xIn7oxvlH+Vp8HGfU6G48jZ9E
         9VJy4qr+EN5usIw6hRP4W4x5Ch+E6a2iWMSRVXeYTecyvSGYTdrIyhnp4sX5946f/evq
         ipHT8LR8d9O1KReQn27MZrwE48Bbmwx0AuARyktYoiN3FuzOsPqfcvXWH9ronSVa0BhO
         mYNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HUEGqXG2sdmmImm0JLUMXf4n2FLGdTuW2uvkNaSQMuA=;
        b=7SwxZLAwi2gXUzhiJOdRMkRlLuXr2T7RoOZy+0MeYPiIciC2xUof5WHTiQlK0c/ohv
         xQYE9Vo0k5YV5u2jGadkjx2kjY1JidwtqCCNfGzsVJkbKjoSOFdlNYRAHXpKA/PqaK5d
         bBM4W99mvNTmklBOBtJMwDHGDdGVLUPwDFofrZcZ/I/23ZtXfnkffmWY1nlbzsi3Txx7
         yvVN41Ypl8tHjvc4RoDAoDX9/zv0mYB1b9c/AUi5pzw4nX/C9w9yd7t3ON4L/v4yJIZj
         Cpomlp1ZWmh1Zb0dOgqQSHvafujPO8Nn3EfwFkA3Io1UW419L05wusVbEZY/cN1+4uOP
         FTYQ==
X-Gm-Message-State: AOAM532i12dTC1p/RDD0gJGGjuaX+/9QzM63GQI1O8MwPnbrYIJlFICY
	L/Lel30ncMlUKtWrHXQ1oKNhIDUi1+UvJbfe5xo=
X-Google-Smtp-Source: ABdhPJznKDM+jWhKwazTTsMmnDFb1IWbMAlsoOJExrvD8Njd0Fzv6UFLjQmsn6QjuUCsHtTxR5lxHrpFkMeMQv7CI4c=
X-Received: by 2002:ac2:568e:: with SMTP id 14mr5166334lfr.659.1642801586608;
 Fri, 21 Jan 2022 13:46:26 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTTS8mium09MKQL4ZGWOie5VBSOWYUHXA3Fbts308_ABrg@mail.gmail.com>
 <C5BFBDFE-99E4-4876-86F7-475DA7A390D2@gmail.com> <CAB__hTSH33FEcE5Ry_=pb7ZtEWp=Q9bGc6_43Bd_2MJOQKOz0w@mail.gmail.com>
In-Reply-To: <CAB__hTSH33FEcE5Ry_=pb7ZtEWp=Q9bGc6_43Bd_2MJOQKOz0w@mail.gmail.com>
From: Paul Atreides <maud.dib1984@gmail.com>
Date: Fri, 21 Jan 2022 16:46:15 -0500
Message-ID: <CACwKM9+5fFiF13kOaqaZu4b7o3eYYfQSwE0w0AuiKvLaLPxdEw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: IP3C35MWIUMAAGOIV2LMKMXFITXLN4LO
X-Message-ID-Hash: IP3C35MWIUMAAGOIV2LMKMXFITXLN4LO
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/IP3C35MWIUMAAGOIV2LMKMXFITXLN4LO/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8713093822313561895=="

--===============8713093822313561895==
Content-Type: multipart/alternative; boundary="000000000000019d3205d61e8d53"

--000000000000019d3205d61e8d53
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

is there a way to incur a phase shift on one of the streams from the
in-built UHD examples?
the python API allows has

usrp.send_waveform(samples, duration, center_freq, sample_rate, [0,1],gain)

but this sends the same samples to both outputs. I've used this icommand in
conjunction with the LO sharing options for the multi_usrp object to
confirm the phase between channels
i'd like to be able to apply some digital phase shift between the 2 to test
the level of control, hence all the gr-uhd questions.

any ideas or references?

On Wed, Jan 19, 2022 at 9:41 AM Rob Kossler <rkossler@nd.edu> wrote:

> On Wed, Jan 19, 2022 at 1:00 AM Paul Atreides <maud.dib1984@gmail.com>
> wrote:
> >
> > Ok, so just circling back on this. Ive got a decent handle on the Pytho=
n
> API. I=E2=80=99ve confirmed the LO signal comes out of the port once the =
splitter
> output is enabled.
> >
> > Rob you=E2=80=99re saying that for sure both channels need to be extern=
al AND
> exported? making the settings:
> > TX 0:
> > LO source     =3D external
> > LO Exported =3D true
> > TX 1:
> > LO source      =3D external
> > LO Exported =3D true
> Yes, except as you pointed out below, LO Exported for Tx1 is not
> needed and likely does nothing.
>
> >
> > Radio #0 TX LO OUT 0  =3D enabled
> > Radio #1 TX LO OUT  1 =3D enabled (for debug)
> > (When I set These they turn on the lights for the LO outs)
> >
> > The front panel cable should connect TX LO output 0 to TX LO Input 1
> Yes
>
> >
> > Like you said, According to the block diagram, the TX LO input 1 should
> connect both channels to the 1x2 splitter so I should only need 1 LO outp=
ut
> turned on.  Id like to point out that in the block diagram it also doesn=
=E2=80=99t
> look like it=E2=80=99s possible to export channel 1=E2=80=99s LO. The onl=
y connection in
> the diagram is internal.
>
> Yes, Somewhere in the Ettus documentation, it indicates that this is
> the case (I've forgotten where).
>
> >
> > Am I missing something? Have you gotten this to work?
> Yes, I have been using this in a 16x16 system with 8 N321 devices all
> connected by a single LO (arbitrarily chosen LO export channel
> distributed to both Tx and Rx LO inputs). I've also tested it on
> smaller systems as small as 4x4 (and possibly 2x2 like your case, but
> not positive on this).
>

--000000000000019d3205d61e8d53
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>is there a way to incur a phase shift on on=
e of the streams from the in-built UHD examples?<br></div>the python API al=
lows has <br><br>usrp.send_waveform(samples, duration, center_freq, sample_=
rate, [0,1],gain) <br><br>but this sends the same samples to both outputs. =
I&#39;ve used this icommand in conjunction with the LO sharing options for =
the multi_usrp object to confirm the phase between channels<br></div>i&#39;=
d like to be able to apply some digital phase shift between the 2 to test t=
he level of control, hence all the gr-uhd questions.<br><br></div><div>any =
ideas or references?<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Jan 19, 2022 at 9:41 AM Rob Kossler &=
lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">On Wed, Jan 19, 2022 a=
t 1:00 AM Paul Atreides &lt;<a href=3D"mailto:maud.dib1984@gmail.com" targe=
t=3D"_blank">maud.dib1984@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Ok, so just circling back on this. Ive got a decent handle on the Pyth=
on API. I=E2=80=99ve confirmed the LO signal comes out of the port once the=
 splitter output is enabled.<br>
&gt;<br>
&gt; Rob you=E2=80=99re saying that for sure both channels need to be exter=
nal AND exported? making the settings:<br>
&gt; TX 0:<br>
&gt; LO source=C2=A0 =C2=A0 =C2=A0=3D external<br>
&gt; LO Exported =3D true<br>
&gt; TX 1:<br>
&gt; LO source=C2=A0 =C2=A0 =C2=A0 =3D external<br>
&gt; LO Exported =3D true<br>
Yes, except as you pointed out below, LO Exported for Tx1 is not<br>
needed and likely does nothing.<br>
<br>
&gt;<br>
&gt; Radio #0 TX LO OUT 0=C2=A0 =3D enabled<br>
&gt; Radio #1 TX LO OUT=C2=A0 1 =3D enabled (for debug)<br>
&gt; (When I set These they turn on the lights for the LO outs)<br>
&gt;<br>
&gt; The front panel cable should connect TX LO output 0 to TX LO Input 1<b=
r>
Yes<br>
<br>
&gt;<br>
&gt; Like you said, According to the block diagram, the TX LO input 1 shoul=
d connect both channels to the 1x2 splitter so I should only need 1 LO outp=
ut turned on.=C2=A0 Id like to point out that in the block diagram it also =
doesn=E2=80=99t look like it=E2=80=99s possible to export channel 1=E2=80=
=99s LO. The only connection in the diagram is internal.<br>
<br>
Yes, Somewhere in the Ettus documentation, it indicates that this is<br>
the case (I&#39;ve forgotten where).<br>
<br>
&gt;<br>
&gt; Am I missing something? Have you gotten this to work?<br>
Yes, I have been using this in a 16x16 system with 8 N321 devices all<br>
connected by a single LO (arbitrarily chosen LO export channel<br>
distributed to both Tx and Rx LO inputs). I&#39;ve also tested it on<br>
smaller systems as small as 4x4 (and possibly 2x2 like your case, but<br>
not positive on this).<br>
</blockquote></div>

--000000000000019d3205d61e8d53--

--===============8713093822313561895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8713093822313561895==--

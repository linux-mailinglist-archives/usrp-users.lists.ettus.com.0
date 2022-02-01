Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BD94A6178
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 17:38:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 60138385252
	for <lists+usrp-users@lfdr.de>; Tue,  1 Feb 2022 11:38:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="FIlXhWyq";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 1BACC384FFD
	for <usrp-users@lists.ettus.com>; Tue,  1 Feb 2022 11:37:33 -0500 (EST)
Received: by mail-yb1-f174.google.com with SMTP id 23so52613106ybf.7
        for <usrp-users@lists.ettus.com>; Tue, 01 Feb 2022 08:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mJfLP8h1L2N6CQRaQtc4i2/InGt+4IC8nj61USTJNMk=;
        b=FIlXhWyq2m8N5cyHVInSZg88WuTYhdqcFQ2yvn6z6V0hFRUVDBI/5P7mmutSJ/9g1+
         TT6K3lU4nLDFCilPFmlq1wz5s/vs4bvKBBS0wPc9BK/B9ylQJwf76Wl3P8WDaepCiZ/U
         04M0AGdNNHMc8eG21mwbvCoqI0WA5gskhV6uBC6movdj7Zo1SKGvxZjYc9M9rnpNbKjB
         gA0QK38ilq7EdmKk1A6BBJ58tCxBFoNkzFImqqtJeV2xWHq+Aiowaab43AA/qO4vNI87
         DQcHX0QLzc2i1gkfeVoUL+So4OO9+1dqdHb8tgRZu4/iV4AaGjkpw3qD2q2IcONdpI8c
         5kAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mJfLP8h1L2N6CQRaQtc4i2/InGt+4IC8nj61USTJNMk=;
        b=AKxb8/oPgiZek5RTcp/Nhz8ZzGDYgB27qXCVfUiBia6SZtcz1sLdXEThS1d7LkrZZb
         0ont5BBoAIpMy1kRs+aogvANXn6B/7c3GHnzRXZghpLs0ZP9mR9AsVG+tXcDABP8uTa0
         FgAFg2jvyeVZ8pogIo872JkvRM16h4UrMcp3LkJ/xUt8ninI0EZ+Um4yV+EFzGAyrn3a
         uFHbIvfe2xJtQf57wU2qgjsipp9e+0F1TmafP9HMdpD0UlV+CGs2XVVhVhMOMcU35U45
         B+yp/XP2oPrGZvf4or9kgVtDfPZuXPH2vv6FiIHXnEfDK8j0DHMB1sYxQF69R9FZq4sr
         tHpw==
X-Gm-Message-State: AOAM5307iAAl13zK7CmKkzUwXvg177oBDTGq1fOXul0uQWSsor/AhSHo
	0wLiZLrIrJvXqmELmIyPSqn4pAgxq7ZwNOWTqnDfvYb3RYc=
X-Google-Smtp-Source: ABdhPJxHFeX2bGj0VaeWTFcdEKFAlKd5NVllNEkBQjiFKfjq6Ifw2cXX/5zmFsILM4gwsiPlcVwqrsm4s6BVRh1iQ5o=
X-Received: by 2002:a25:2155:: with SMTP id h82mr36727298ybh.606.1643733452281;
 Tue, 01 Feb 2022 08:37:32 -0800 (PST)
MIME-Version: 1.0
References: <vP0TKDmzz00Ey46ZVHwfMtZRfAMGYOLYhBV7uOH54@lists.ettus.com> <6629dee1-b941-2c38-30ef-5b128d6ecae1@gmail.com>
In-Reply-To: <6629dee1-b941-2c38-30ef-5b128d6ecae1@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 1 Feb 2022 11:37:20 -0500
Message-ID: <CAB__hTQGAgt1LaK-UG+oCJfwhisDXPCQZAg5nqaVdFriQzV28w@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: BV2RPL752S6BXGRZL2XSKB3ENIFAQCFN
X-Message-ID-Hash: BV2RPL752S6BXGRZL2XSKB3ENIFAQCFN
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 two channel transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BV2RPL752S6BXGRZL2XSKB3ENIFAQCFN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6034574058873584322=="

--===============6034574058873584322==
Content-Type: multipart/alternative; boundary="00000000000087a60f05d6f7845a"

--00000000000087a60f05d6f7845a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 1, 2022 at 10:59 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-02-01 03:33, seckinoncu8070@gmail.com wrote:
> >
> > Unfortunately, that doesn=E2=80=99t work neither. Same error is occured=
 again.
> > I can understand why it dropped packets (cecause of PC or NIC) but I
> > have no clue about why it stops transmitting.
> >
> >
> Could you check the error counters on your network card before and after
> you start a "run" where this happens?
>
> How sensitive is it to sample rate for two channels?  That is, if you
> have two channels at 5Msps does this happen at all?
>
> Are you running inside a VM, or on native hardware?   What OS?
>

While debugging this issue, my suggestion is to focus exclusively on the
UHD example "benchmark_rate" rather than operating from gnuradio. Once
things are working correctly in "benchmark_rate", then move to a different
UHD example "tx_samples_from_file" (perhaps initially with a null source
and then moving to a file source). Once that is working correctly, move
back into gnuradio world.  This approach just makes debugging a bit clearer=
.
Rob


>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000087a60f05d6f7845a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 1, 2022 at 10:59 AM Marcus D.=
 Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">On 2022-02-01 03:33, <a href=3D"mailto:seckinoncu8070@gmail.com" target=
=3D"_blank">seckinoncu8070@gmail.com</a> wrote:<br>
&gt;<br>
&gt; Unfortunately, that doesn=E2=80=99t work neither. Same error is occure=
d again. <br>
&gt; I can understand why it dropped packets (cecause of PC or NIC) but I <=
br>
&gt; have no clue about why it stops transmitting.<br>
&gt;<br>
&gt;<br>
Could you check the error counters on your network card before and after <b=
r>
you start a &quot;run&quot; where this happens?<br>
<br>
How sensitive is it to sample rate for two channels?=C2=A0 That is, if you =
<br>
have two channels at 5Msps does this happen at all?<br>
<br>
Are you running inside a VM, or on native hardware?=C2=A0=C2=A0 What OS?<br=
></blockquote><div><br></div><div>While debugging this issue, my suggestion=
 is to focus exclusively on the UHD example &quot;benchmark_rate&quot; rath=
er than operating from gnuradio. Once things are working correctly in &quot=
;benchmark_rate&quot;, then move to a different UHD example &quot;tx_sample=
s_from_file&quot; (perhaps initially with a null source and then moving to =
a file source). Once that is working correctly, move back into gnuradio wor=
ld.=C2=A0 This approach just makes debugging a bit clearer.</div><div>Rob</=
div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--00000000000087a60f05d6f7845a--

--===============6034574058873584322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6034574058873584322==--

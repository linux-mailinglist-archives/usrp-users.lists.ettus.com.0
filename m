Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1C3AE65B7
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 14:59:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C62C3385AF7
	for <lists+usrp-users@lfdr.de>; Tue, 24 Jun 2025 08:59:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1750769963; bh=8pTPLR0I8Zcgf7ow9NRM0AbGf3vKru/qfHfVYC4tW7U=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=PTJCsSu0PAKyqeXTePRm8zjNzuEwCJxDNIZwvJRTxjpJ8+mgvdJ+ryf74AhDM0SBF
	 iazc/9RWhds6KvnOqr9N7zh2W6cvYEuSlqM4HO6r6wu1gNN5C4vHU4wafox35jtHwK
	 w7nKlU7mvFt/HQTQi1LJVVsjTsn2PCikXRZcvxUhiVGH09cWWMShd/m+5cZv/jDmeL
	 SMxrCvCv6fhSicNn7ORH3ce0B1PJwPo2n2KHp0ocO4dWGGhzpx0u3pj3I+u2EEXa+G
	 0gxL4I8uDTlDpSuOA0FMmf+69C2qy+FMLHzkRfi1i7t0i07mapJ1Nrn81NDfPSOHnB
	 0dNiBkGwQlGew==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B1B83851BF
	for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 08:58:16 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="kcB8/Vc4";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6084dfb4cd5so12141976a12.0
        for <usrp-users@lists.ettus.com>; Tue, 24 Jun 2025 05:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1750769895; x=1751374695; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eNZwRPgxRlrFKXsmd7TVTHSqd37Ie9NJkhM9xkZjGsI=;
        b=kcB8/Vc4aRvXvOYo3ktZPSiOf/T1QX9oFr/1vspWozbvVpNV1qKKTYYn7jHXyvsbi2
         FH2YC5tbEcd1H5btRemlv3mlFHZHtcLTlF42eAcLyyhCk7NHSzx4/MSz5lq6frhQpjsN
         xZE8PaJtby5j4bEnSeM0S1otCJPkNfpKZi6r5Wm3ihYzT/is4NTzKQ9trPcbzNyAgCUS
         2BnqHESkI4w7jvZtw7CMNEwsGL4qtjAATJ/YXzcOqgsvvpRW9lC3dcDYUC9UvGsSl/Al
         eXaByQV1dKj+wetjhB+rJva/CsfmDTuS8dyx6AxbpU05E8fTHsCtV9cBQj9Uc/9znC4c
         v5Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750769895; x=1751374695;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eNZwRPgxRlrFKXsmd7TVTHSqd37Ie9NJkhM9xkZjGsI=;
        b=K9wy6cRK6GouLHBgSCPDKUrtSsV0/rCpL6M7Z7Gpb0OUOtDxsOn1wYMoKWc0oZ6jPZ
         xFqQkV/60RpM+plHM89f0j3xjqpT+/7B5mhR1zrKIvi4MaawwkAT3+vgpkDAUKi5plhY
         iLRcTxONikEeCqF79DYjPzgKbL6an3cHdPMtm0Wj6GrSLj/jsccgFtrkeLUpOJeShz1w
         YbPcePGPOdpNljVzb424ze5pOYLeFp1mDNxI/szaqTfSvFtrtfB7+GDvYom0Z8S4L42y
         F/gyqpleu0QnPjYrR9Bo8qrNaa5oi9KFiLJbsocDF2VEHcQ7gobOTTxN5NJMEHabT12P
         zFvg==
X-Gm-Message-State: AOJu0Yz6+SyJDKUP1FAiHqEN10qLbjrMs1DWdHn8Vf4yimonBJ4nlYIA
	QaxJapUPN9CvNmxpWTiRrSfkLuV3oo4x1i9j72eoq6fR9fMcskr+ddjuQPreLYuqT8l0/DM8fxP
	hjny2ia+JB/wv7Psq3qFtfAkfWuZfF5UsgzdRK1KQG5lZ7elrXpYlwck=
X-Gm-Gg: ASbGncsOwYd/N7e2dWG+FCzjA26LjBg7Ld12iDfjHRcgoAPibYBIPGllBlIrBE8L7Vr
	ElSqeqE7zpUC09ypg7nBWOM3Llc0ebqaL9A/PuGkPcFqLsLAlO36z5qG5N2C/yQNGaEQCAUezVA
	VaY2U3YHlewCvWCZlDz5hDO9a8nBzS11KgnzyyIhaTPzebrqrRFlRWAeZV8VDQ1xeHAisyG9/6X
	CQ=
X-Google-Smtp-Source: AGHT+IGWKEj1hjOtf8aq2OISTO/vC+ubaY66eCCY0ZvMKrbcu8KQMNQ83isdySZcfRBRHzU7gIef12BYmX3hp5xQ1j8=
X-Received: by 2002:a17:906:730c:b0:acb:37ae:619c with SMTP id
 a640c23a62f3a-ae0a73c3ea4mr351675466b.15.1750768105873; Tue, 24 Jun 2025
 05:28:25 -0700 (PDT)
MIME-Version: 1.0
References: <18f804c2-24b2-48bb-bc32-ffbf6d0127aa@obspm.fr>
In-Reply-To: <18f804c2-24b2-48bb-bc32-ffbf6d0127aa@obspm.fr>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 24 Jun 2025 14:28:13 +0200
X-Gm-Features: Ac12FXyWtvmAt8Jis4QHFlu5rnwt4_-fPWThVcBEU1RjPoi99vxFhPRM3o9wvNM
Message-ID: <CAFOi1A4UkhHsVrXN=n1btUWR4O6th1Z9sYNKjN3-Qr7pNS9c4Q@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: DGXYGBEDU37L3JBG35743644CMVASIYW
X-Message-ID-Hash: DGXYGBEDU37L3JBG35743644CMVASIYW
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: handling of absence of signal in UHD4.1
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DGXYGBEDU37L3JBG35743644CMVASIYW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1255953720537462863=="

--===============1255953720537462863==
Content-Type: multipart/alternative; boundary="00000000000008f8fd06385077d7"

--00000000000008f8fd06385077d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Bess,

sorry for the late reply. 3.9 is a very old UHD version, so no one could
answer this from the top of their heads. It's possible that we tweaked
things that affect the relative levels, because so many things changed in
the mean time.

Which sampling rate are you operating at? Maybe this is related to the
resampler.

--M

On Wed, May 28, 2025 at 4:23=E2=80=AFPM Bess FANG <bess.fang@obspm.fr> wrot=
e:

> Hello,
>
>
> I recently changed from UHD3.9 to UHD4.1 on an X310 + basic RX. I was
> surprised to find that without connecting a signal, a simple flowgraph
> of USRP source - complex to phase - buffer - file sink gives 0, without
> any noise. For comparison, the same flow graph on the same device in
> UHD3.9 records the phase noise from the unconnected RX channel.
>
> Anyone knows if any modifications in UHD could explain this behaviour ?
> Some kind of automatic resolution adjustment ? Or a change in default
> resolution ?
>
> Thanks a lot in advance.
>
>
> Cheers,
>
> Bess
>
> --
> --
> Bess FANG-SORTAIS (PhD)
> Astronome-Adjointe
> Laboratoire Temps Espace
> Observatoire de Paris
> 61 avenue de l'Observatoire
> 75014 Paris
>
> Tel: 01 40 51 22 91
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000008f8fd06385077d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Bess,</div><div><br></div><div>sorry for the late =
reply. 3.9 is a very old UHD version, so no one could answer this from the =
top of their heads. It&#39;s possible that we tweaked things that affect th=
e relative levels, because so many things changed in the mean time.</div><d=
iv><br></div><div>Which sampling rate are you operating at? Maybe this is r=
elated to the resampler.</div><div><br></div><div>--M</div></div><br><div c=
lass=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_=
attr">On Wed, May 28, 2025 at 4:23=E2=80=AFPM Bess FANG &lt;<a href=3D"mail=
to:bess.fang@obspm.fr">bess.fang@obspm.fr</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
<br>
I recently changed from UHD3.9 to UHD4.1 on an X310 + basic RX. I was <br>
surprised to find that without connecting a signal, a simple flowgraph <br>
of USRP source - complex to phase - buffer - file sink gives 0, without <br=
>
any noise. For comparison, the same flow graph on the same device in <br>
UHD3.9 records the phase noise from the unconnected RX channel.<br>
<br>
Anyone knows if any modifications in UHD could explain this behaviour ? <br=
>
Some kind of automatic resolution adjustment ? Or a change in default <br>
resolution ?<br>
<br>
Thanks a lot in advance.<br>
<br>
<br>
Cheers,<br>
<br>
Bess<br>
<br>
-- <br>
--<br>
Bess FANG-SORTAIS (PhD)<br>
Astronome-Adjointe<br>
Laboratoire Temps Espace<br>
Observatoire de Paris<br>
61 avenue de l&#39;Observatoire<br>
75014 Paris<br>
<br>
Tel: 01 40 51 22 91<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000008f8fd06385077d7--

--===============1255953720537462863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1255953720537462863==--

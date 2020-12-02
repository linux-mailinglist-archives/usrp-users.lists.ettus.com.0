Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 27BE62CC851
	for <lists+usrp-users@lfdr.de>; Wed,  2 Dec 2020 21:52:39 +0100 (CET)
Received: from [::1] (port=47346 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kkZ76-00042a-Oe; Wed, 02 Dec 2020 15:52:36 -0500
Received: from mail-oi1-f170.google.com ([209.85.167.170]:39679)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kkZ73-0003xN-8L
 for usrp-users@lists.ettus.com; Wed, 02 Dec 2020 15:52:33 -0500
Received: by mail-oi1-f170.google.com with SMTP id f11so3063586oij.6
 for <usrp-users@lists.ettus.com>; Wed, 02 Dec 2020 12:52:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EWDDcdSYSQutCG060bPRNhGlMl6JpHyqHL0GG/kpRsM=;
 b=ZfJEbPTTE4kVg0gMUiCoP8MNyWFLV8FZS1MfLvnxFTK8b1agsmPOTQEouw846zoJ2m
 JewFCLSD+6CVUs1XzRCDmEyacpm5d0rODSodgiqfVFS6pv59CRB9QXoq4d2jefcXG7Pz
 u+XYusZ267WRbvb+jKKXMXyVeNm4LlVB2EvUz2flVa/4qB+tpH4O9BHwpx127ep9guWR
 6YXmTNHvm116vGMvGvMOwimzSKwyy2ECE3E6nA5619k4KV4uf6kxkGzxdtff4EvCXR7d
 /ZcxzJ15kj5aWnhbhAW7uFICfJyDdroxoIdZ/MWGl9KXaPoQXMfSJhP94WIt4xpwXQNQ
 wDAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EWDDcdSYSQutCG060bPRNhGlMl6JpHyqHL0GG/kpRsM=;
 b=pPv6bRPTKaX3XkBUfnyXMz7m2BgxDy2GvnJuDXPLoODNTwRpSNxr1D9W3pjVRo3eAC
 ro+v9VjjS7g8sl/iED1IQWKTUQKNWjyyGdjx19iDF0NGoP+qKAjY+BhY2I7BCGhxRJZw
 krOCObJT6KtUppLbtmu4r1NXUsfPoj/bmIuJiPK5ttvgryJttshemgIgAPe3JzBjkE0h
 XSMFjoEzEfbmkABserANCgHjWPh93QuK2+Ba8o8xstxLzbYSYKs4Yudl+E+5Utf/4ICZ
 FreVoSecqLqr8YiqqpyiZ3Xhqa6omNVdNIs45DE8lyxq7qWjDweKHK7UtlQVtsx9ktnf
 9Ajw==
X-Gm-Message-State: AOAM530iE0zijt8ZVZBoBafRbQHFkVkvLFX7zLyHqV0c8+e4SpNuvs4u
 mFkk93PPNBUMq9F+gXkV7H0XT2ShBa1qnw+lt1cjQg==
X-Google-Smtp-Source: ABdhPJxu+t3H079TIMX9piM+UHXy7M7uao8nZjrKni1ijtxxsa3RcfqBgXfVBDAYTCETAiokFTM7AP33FdKZTfMSjOc=
X-Received: by 2002:a54:4d8f:: with SMTP id y15mr3028416oix.150.1606942312248; 
 Wed, 02 Dec 2020 12:51:52 -0800 (PST)
MIME-Version: 1.0
References: <CAHRiTbmiFK9H9vF98TRJDbwXtzyk4f-rdUP3K+zNinAcq0k4mw@mail.gmail.com>
In-Reply-To: <CAHRiTbmiFK9H9vF98TRJDbwXtzyk4f-rdUP3K+zNinAcq0k4mw@mail.gmail.com>
Date: Wed, 2 Dec 2020 15:51:41 -0500
Message-ID: <CAB__hTTNQOcx=RT3WFZ_Cr=LyqzNdaszKHdU_=Mr4P0Ogf9QFg@mail.gmail.com>
To: Carlo Venier <venier.carlo@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Questions regarding tx_waveforms
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7904209060226582008=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============7904209060226582008==
Content-Type: multipart/alternative; boundary="000000000000b29bfd05b5816915"

--000000000000b29bfd05b5816915
Content-Type: text/plain; charset="UTF-8"

Hi Carlo,
Your questions are about 2 calibrations: DC offset (affects DC component)
and I/Q gain/phase calibration (affects mirrored spectra).  My
understanding is that the B200 calibrations are handled automatically such
that there is nothing to do from "tx_waveforms" or even from direct UHD API
calls.  So, I can't think of anything you can do to reduce these
artifacts.  Can you provide a picture of the spectrum you are seeing or
perhaps comment on the dBc levels of the DC component and mirrored spectra?
Rob

On Wed, Dec 2, 2020 at 1:48 PM Carlo Venier via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I have a few questions regarding tx_waveforms script.
> I'm using an USRP B200mini.
>
> How can I delete (or reduce) the DC component when using tx_waveform?
>
> When I set --freq=f0, specifying --lo_offset=(df0), how do I remove (or
> reduce) the mirrored replica at (f0+2*f0) that is generated? Do you have
> any advice to suggest?
>
> Thank you in advance,
>
> Carlo
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000b29bfd05b5816915
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Carlo,<div>Your questions are about 2 =
calibrations: DC offset (affects DC component) and I/Q gain/phase calibrati=
on (affects mirrored spectra).=C2=A0 My understanding is that the B200 cali=
brations are handled automatically such that there is nothing to do from &q=
uot;tx_waveforms&quot; or even from direct UHD API calls.=C2=A0 So, I can&#=
39;t think of anything you can do to reduce these artifacts.=C2=A0 Can you =
provide a picture of the spectrum you are seeing or perhaps comment on the =
dBc levels of the DC component and mirrored spectra?</div><div>Rob</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Dec 2, 2020 at 1:48 PM Carlo Venier via USRP-users &lt;<a href=3D"mail=
to:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">=
Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I have a few questions reg=
arding tx_waveforms script.=C2=A0</div><div dir=3D"auto">I&#39;m using an U=
SRP B200mini.</div><div dir=3D"auto"><br></div><div dir=3D"auto">How can I =
delete (or reduce) the DC component when using tx_waveform?</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">When I set --freq=3Df0, specifying --=
lo_offset=3D(df0), how do I remove (or reduce) the mirrored replica at (f0+=
2*f0) that is generated? Do you have any advice to suggest?=C2=A0</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Thank you in advance,=C2=A0</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Carlo</div><div dir=3D"auto">=
<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000b29bfd05b5816915--


--===============7904209060226582008==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7904209060226582008==--


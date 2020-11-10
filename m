Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6482AE400
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 00:26:13 +0100 (CET)
Received: from [::1] (port=42792 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kcd1c-00047v-PU; Tue, 10 Nov 2020 18:26:08 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:45938)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1kcd1Y-00042a-30
 for USRP-users@lists.ettus.com; Tue, 10 Nov 2020 18:26:04 -0500
Received: by mail-oi1-f178.google.com with SMTP id j7so16469812oie.12
 for <USRP-users@lists.ettus.com>; Tue, 10 Nov 2020 15:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4XnnTOTSg16iyZ+P6XDDp+BV/PA+CjaP3dJd1QyCa0E=;
 b=U5vtV9fAG6xyMuZlaNM2WGfiXePaU+1ubeuKh/MxhwdFlcPPEwJnpjjzGCT/4B1p45
 66rKoFPHjeKkrPe3ZseBqRDI1azcI0LEsnYAYF2rAws+F4rEKH1LmXinV0RbZtWFLUj7
 Y+gv2zr4Xf60mag2wPdK0egHz8hJuE4OjSAWdgIBIIdkv5Yx4yhl/gNok3kaQyKR96JF
 iwTgwxTUCc9QB/F1gVa9ZnGpiQ10WXSnotvuE1b5o88n2lpp0mCcUa10fZ5hRtAwuG1D
 l6QQn2IMgg3S7Sp+Tb5WMKviMfe0H+WkQOecevHZyT/145qU87PINa8M5QNvMdUbqQZS
 ESTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4XnnTOTSg16iyZ+P6XDDp+BV/PA+CjaP3dJd1QyCa0E=;
 b=F575TxPiQbEPanAJoMeMi3U5XYIwrmcti/KY3eYgvgpc9RV6t1Z/umHUpvikjEI+FN
 wIBXkBAO4T4XMhsgo47+QywoEbARqdyKfW+WZqj2tLsHYkhdb4SX6aHWbWGChzv4si4y
 whqUqXiFsu0GmzSnXUSnqaqz/4RURexo/DjXulsnrQYwecOKgbAwLEg0/qxcyzIF7OqM
 uHQZKZc7ooBjT4RnyIPXg2+eNe30XiR2y96h9kSSZnKvc2FipMUzr12modnXfuWXPjlt
 H1NUTcTyDn/Djva/eRD3EYb5otsZxYhvF5Pne03Wn8mZtoU6bWCFhT7K+ny+WBf6dEh4
 dExQ==
X-Gm-Message-State: AOAM531h/6Ak5b02zfr8GJx6whAUK/Bolvh58rPeRaKKAmZHdcFhkRTh
 2BFiT+leKrqCQd3q3aesxei13TqiC55XO+myPSF98g==
X-Google-Smtp-Source: ABdhPJxcu9sg4U7mRpbMobyeW++q4zCcOe0pK0LcSalgd/SE93xwSXzlLioi/Mz59hMe1ofvjW6hmV+2ZdbWdnE78p0=
X-Received: by 2002:aca:4ccc:: with SMTP id z195mr339456oia.124.1605050723149; 
 Tue, 10 Nov 2020 15:25:23 -0800 (PST)
MIME-Version: 1.0
References: <trinity-04e63cb6-c192-4324-8b56-1f4eadb851e9-1604975998973@3c-app-gmx-bs24>
 <A6A872C2-AF3C-4B3C-A72C-AF31633C909B@gmail.com>
 <trinity-334b128b-0f5f-4f04-97f9-66d1620dd70e-1604985398046@3c-app-gmx-bs24>
In-Reply-To: <trinity-334b128b-0f5f-4f04-97f9-66d1620dd70e-1604985398046@3c-app-gmx-bs24>
Date: Tue, 10 Nov 2020 18:25:12 -0500
Message-ID: <CAB__hTRh_3ETe=6aDcs13ODja3zYTMq3iQc=oykHmVaQMw_cUw@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
Subject: Re: [USRP-users] Limiting output power,
 best approach to connect HPA?
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
Cc: usrp-users <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5959463688605512174=="
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

--===============5959463688605512174==
Content-Type: multipart/alternative; boundary="00000000000033772005b3c8feb1"

--00000000000033772005b3c8feb1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Lukas,
Why not put a 20 or 30 dB attenuator on your amplifier input?  If you
consider the attenuator & PA as a single "assembly" this will just reduce
the gain of your assembly.

Rob

On Tue, Nov 10, 2020 at 12:17 AM Lukas Haase via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Marcus,
>
> This is a great idea.
> Unfortunately PIN diodes rarely exist as "coax" modules (but rather MMICs
> to be integrated on a board).
>
> The few coax modules I found from Mini-Circuits and RF-Lambda are for hig=
h
> powers (>0dBm).
> For me, the max. output would need to be ~ -16dBm.
>
> Best regards,
> Lukas
>
> > Gesendet: Montag, 09. November 2020 um 22:53 Uhr
> > Von: "Marcus D Leech" <patchvonbraun@gmail.com>
> > An: "Lukas Haase" <lukashaase@gmx.at>
> > Cc: USRP-users@lists.ettus.com
> > Betreff: Re: [USRP-users] Limiting output power, best approach to
> connect HPA?
> >
> > A limiter diode is often used in situations like this.
> >
> > Sometimes a simple hardware solution is best=E2=80=94it relies only on
> semiconductor physics and not correct software.
> >
> > Sent from my iPhone
> >
> > > On Nov 9, 2020, at 9:40 PM, Lukas Haase via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> > >
> > > =EF=BB=BFI need an output signal of ~32dBm (at 900 MHz).
> > > I have a MiniCircuits ZHL-25W-272+ high power amplifier (25W).
> > > The gain at 900 MHz is ~49.2.
> > > Hi,
> > >
> > >
> > > I would also like to filter out harmonics (USRP as well as PA) with a
> VLF-1000+; the max input power is 10W (40dBm), so more than what I want t=
o
> obtain (32dBm).
> > >
> > > My approach would be to connect the USRP output to the ZHL-25W-272+
> and the VLF-1000+ filter afterwards.
> > >
> > > Hence, the USRP should output a maximum of 32dBm-49.2dB=3D-17.2dBm.
> > >
> > > I can achieve this by setting the TX Gain to 0dB and adding a digital
> backoff in my samples of ~5.9dB.
> > >
> > > I think this should work but I am little bit concerned about safety i=
f
> the software fails for some reason or the wrong program is started
> accidentially. The USRP can output up to 22dBm which would destroy the HP=
A
> and filter (and what follows).
> > >
> > > Is there a way to program a power limit in advance?
> > > What is the best/recommended way to handle this situation?
> > >
> > > Thanks,
> > > Luke
> > >
> > >
> > >
> > >
> > >
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000033772005b3c8feb1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Lukas,<div>Why not put a 20 or 30 dB attenuator on your=
 amplifier input?=C2=A0 If you consider the attenuator &amp; PA as a single=
 &quot;assembly&quot; this will just reduce the gain of your assembly.</div=
><div><br></div><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, Nov 10, 2020 at 12:17 AM Lukas Haase =
via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi Marcus,<br>
<br>
This is a great idea.<br>
Unfortunately PIN diodes rarely exist as &quot;coax&quot; modules (but rath=
er MMICs to be integrated on a board).<br>
<br>
The few coax modules I found from Mini-Circuits and RF-Lambda are for high =
powers (&gt;0dBm). <br>
For me, the max. output would need to be ~ -16dBm.<br>
<br>
Best regards,<br>
Lukas<br>
<br>
&gt; Gesendet: Montag, 09. November 2020 um 22:53 Uhr<br>
&gt; Von: &quot;Marcus D Leech&quot; &lt;<a href=3D"mailto:patchvonbraun@gm=
ail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;<br>
&gt; An: &quot;Lukas Haase&quot; &lt;<a href=3D"mailto:lukashaase@gmx.at" t=
arget=3D"_blank">lukashaase@gmx.at</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt; Betreff: Re: [USRP-users] Limiting output power, best approach to conn=
ect HPA?<br>
&gt;<br>
&gt; A limiter diode is often used in situations like this. <br>
&gt; <br>
&gt; Sometimes a simple hardware solution is best=E2=80=94it relies only on=
 semiconductor physics and not correct software. <br>
&gt; <br>
&gt; Sent from my iPhone<br>
&gt; <br>
&gt; &gt; On Nov 9, 2020, at 9:40 PM, Lukas Haase via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br>
&gt; &gt; <br>
&gt; &gt; =EF=BB=BFI need an output signal of ~32dBm (at 900 MHz).<br>
&gt; &gt; I have a MiniCircuits ZHL-25W-272+ high power amplifier (25W).<br=
>
&gt; &gt; The gain at 900 MHz is ~49.2.<br>
&gt; &gt; Hi,<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; I would also like to filter out harmonics (USRP as well as PA) wi=
th a VLF-1000+; the max input power is 10W (40dBm), so more than what I wan=
t to obtain (32dBm).<br>
&gt; &gt; <br>
&gt; &gt; My approach would be to connect the USRP output to the ZHL-25W-27=
2+ and the VLF-1000+ filter afterwards.<br>
&gt; &gt; <br>
&gt; &gt; Hence, the USRP should output a maximum of 32dBm-49.2dB=3D-17.2dB=
m.<br>
&gt; &gt; <br>
&gt; &gt; I can achieve this by setting the TX Gain to 0dB and adding a dig=
ital backoff in my samples of ~5.9dB.<br>
&gt; &gt; <br>
&gt; &gt; I think this should work but I am little bit concerned about safe=
ty if the software fails for some reason or the wrong program is started ac=
cidentially. The USRP can output up to 22dBm which would destroy the HPA an=
d filter (and what follows).<br>
&gt; &gt; <br>
&gt; &gt; Is there a way to program a power limit in advance?<br>
&gt; &gt; What is the best/recommended way to handle this situation?<br>
&gt; &gt; <br>
&gt; &gt; Thanks,<br>
&gt; &gt; Luke<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; <br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000033772005b3c8feb1--


--===============5959463688605512174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5959463688605512174==--


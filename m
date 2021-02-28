Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A16DF327236
	for <lists+usrp-users@lfdr.de>; Sun, 28 Feb 2021 13:29:29 +0100 (CET)
Received: from [::1] (port=35836 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lGLCQ-00018V-DH; Sun, 28 Feb 2021 07:29:26 -0500
Received: from mail-pj1-f44.google.com ([209.85.216.44]:38677)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ali69550@gmail.com>) id 1lGLCM-00012x-W0
 for USRP-users@lists.ettus.com; Sun, 28 Feb 2021 07:29:23 -0500
Received: by mail-pj1-f44.google.com with SMTP id l18so9143220pji.3
 for <USRP-users@lists.ettus.com>; Sun, 28 Feb 2021 04:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FSRv/cNtagkuF2U6QYmMq0fWy33VMjSbb3jqA+5Lk4g=;
 b=ix9ax8j2x0L0HLdZbpULAdot1HVtwn0Y/pr2vAsd0Wky3M2psq7LhYCGOVa2/gSr8t
 QzaY1LUSxL2PR8KxjnzBEUC7M1p+8W7lKxKtAV5Rhrrkp6u6aAZJjm2y1KN+/FOuok3M
 XNpjk8NPxnh8vQdU2/DmjrhTqF2Nawd5Dsi18l506oMipTrOmOvYmV2iPS27pJLj5tIz
 uN/0UUxBPaJb4WSRz5WAcDA4f/WOc/HFLrsaTJIZjdxsFP6QzCOt8t4cUknJjV9re7M9
 g4J4PMSnavEiIZxMujEyomCLspEfH09OIAAJZRI9hI4b3luE2p9+l+xyy0B35B52tjOB
 v9lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FSRv/cNtagkuF2U6QYmMq0fWy33VMjSbb3jqA+5Lk4g=;
 b=aqcCgmYfBjDdf7wjCedlhw8Y5/LPr9e6BD7liQVu05W5R5qcEzlEnA8zwoGbImAJM3
 bK1kDAjC6tF+odElZRAxz35gkNi2eA7b5jae6prMVpR1q8sDwsB0gQ//GhNVurQnIdED
 3LjMVBZbIhFNfAeQs+DRoGNk+VjJ0+avTH/CxYnxJAon7Jbmu0Xiy1WLT64/cHgZVada
 h5bymIHWWbm35XydB6b9VearofzQ/MSzZ9hLvaXpbAyxaZHZMGA5HeDltD6kpQAp0M/p
 p9rhmiYiDpENC/uNF2dwyYywNYzqjAViqhQeYWYuhRvVPJrvm/Ar8OtGmV7IcnHNSsb9
 2Gwg==
X-Gm-Message-State: AOAM531LOZyKOyBlxE8hp4QGHCVIdS4xgVcRnD67+EIjX0SdHuOkeOcZ
 wWQGZyMARwgID3MBwwsuK0LE0lbXMdP/tgNj6yg=
X-Google-Smtp-Source: ABdhPJxL0sTamd+bkFlTDHS0G+GNMubLKYPMOmhSO5mvTqLYdQdwbz/rhihEBzMpOcsLyt6dsIdPX7qD5AaSm8J7ADc=
X-Received: by 2002:a17:902:e812:b029:e3:9877:7c38 with SMTP id
 u18-20020a170902e812b02900e398777c38mr11164510plg.49.1614515321769; Sun, 28
 Feb 2021 04:28:41 -0800 (PST)
MIME-Version: 1.0
References: <b38c389e-72ec-b685-51f6-af12b76b9283@ettus.com>
 <7787F3C9-C297-44E3-A4AB-754671B10876@gmail.com>
In-Reply-To: <7787F3C9-C297-44E3-A4AB-754671B10876@gmail.com>
Date: Sun, 28 Feb 2021 15:58:30 +0330
Message-ID: <CADDf8dYRzkZ-Bhdp=M60A8HQ2K-O4tiLdmGsf6jdaAWWuyVQCA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] MIMO for X3x0 (AN-881 Table 4 may need some edit)
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
From: "Ali G. Dezfuli via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Ali G. Dezfuli" <ali69550@gmail.com>
Cc: USRP-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============2982575040258889313=="
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

--===============2982575040258889313==
Content-Type: multipart/alternative; boundary="0000000000003d11a605bc64a42a"

--0000000000003d11a605bc64a42a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thank you M&M !
(M&M =3D Marcus-and-Marcus; in my dictionary =F0=9F=98=89)

On Sun, Feb 28, 2021 at 12:57 AM Marcus D Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Two X310 plus 4 UBX delivers 4x4 MIMO with an external 1PPS and 10Mhz
> clock=E2=80=94octoclock or something else.
>
> The X310 does have a ref clock output, but I think it is not recommended
> for use in coherent applications just because of unknown clock skew.
>
>
>
> Sent from my iPhone
>
> > On Feb 27, 2021, at 2:50 PM, Marcus M=C3=BCller via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BFYou're right. The whole point of the TwinRX boards is to give =
you
> coherent channels, and
> > you can build a coherent 4-channel *receiver*.
> >
> > However, TwinRX can't transmit, so for 4=C3=974 MIMO, you'll need somet=
hing
> else. Since there's
> > no dual-transmit-channel daughterboards, you'll need to coordinate the
> phases of four
> > different TX-capable daughterboards. Therefore, you'll need a clock
> distributor like the
> > octoclock.
> >
> > Haven't tried it in a while, but the clk and pps out of the X3x0 series
> should solve that
> > issue, however: you could link two USRP X3x0 that are equipped with e.g=
.
> two UBX-160 each
> > through that to get 4 coherent TX channels, and use a single USRP X3x0
> with two TwinRX as
> > receiver with 4 coherent RX channels.
> >
> > Best regards,
> > Marcus
> >
> >
> >> On 27.02.21 15:50, Ali G. Dezfuli via USRP-users wrote:
> >> Hi all,
> >> When USRP X3x0 is used with TwinRX daughterboards, we can have up to 4
> rx channels.
> >> (ref:AN-244, Direction Finding with the USRP=E2=84=A2 X-Series and Twi=
nRX=E2=84=A2)
> >> But in AN-881 (Selecting a USRP Device) in Table 4, it says that USRP
> X3x0 needs
> >> OctoClock for 4x4 MIMO !!!
> >> I wonder when X3x0 can receive 4 channels with TwinRX, why it can NOT
> be used in 4x4
> >> MIMO w/o OctoClock.
> >>
> >> regards,
> >> AGD
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003d11a605bc64a42a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thank you M&amp;M ! <br></div><div>(M&amp;M =3D Marcu=
s-and-Marcus; in my dictionary =F0=9F=98=89)<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Feb 28, 2021=
 at 12:57 AM Marcus D Leech via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex">Two X310 plus 4 UBX delivers 4x=
4 MIMO with an external 1PPS and 10Mhz clock=E2=80=94octoclock or something=
 else.=C2=A0 <br>
<br>
The X310 does have a ref clock output, but I think it is not recommended fo=
r use in coherent applications just because of unknown clock skew. <br>
<br>
<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Feb 27, 2021, at 2:50 PM, Marcus M=C3=BCller via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BFYou&#39;re right. The whole point of the TwinRX boards is to =
give you coherent channels, and<br>
&gt; you can build a coherent 4-channel *receiver*.<br>
&gt; <br>
&gt; However, TwinRX can&#39;t transmit, so for 4=C3=974 MIMO, you&#39;ll n=
eed something else. Since there&#39;s<br>
&gt; no dual-transmit-channel daughterboards, you&#39;ll need to coordinate=
 the phases of four<br>
&gt; different TX-capable daughterboards. Therefore, you&#39;ll need a cloc=
k distributor like the<br>
&gt; octoclock.<br>
&gt; <br>
&gt; Haven&#39;t tried it in a while, but the clk and pps out of the X3x0 s=
eries should solve that<br>
&gt; issue, however: you could link two USRP X3x0 that are equipped with e.=
g. two UBX-160 each<br>
&gt; through that to get 4 coherent TX channels, and use a single USRP X3x0=
 with two TwinRX as<br>
&gt; receiver with 4 coherent RX channels.<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Marcus<br>
&gt; <br>
&gt; <br>
&gt;&gt; On 27.02.21 15:50, Ali G. Dezfuli via USRP-users wrote:<br>
&gt;&gt; Hi all,<br>
&gt;&gt; When USRP X3x0 is used with TwinRX daughterboards, we can have up =
to 4 rx channels.<br>
&gt;&gt; (ref:AN-244, Direction Finding with the USRP=E2=84=A2 X-Series and=
 TwinRX=E2=84=A2)<br>
&gt;&gt; But in AN-881 (Selecting a USRP Device) in Table 4, it says that U=
SRP X3x0 needs<br>
&gt;&gt; OctoClock for 4x4 MIMO !!!<br>
&gt;&gt; I wonder when X3x0 can receive 4 channels with TwinRX, why it can =
NOT be used in 4x4<br>
&gt;&gt; MIMO w/o OctoClock.<br>
&gt;&gt; <br>
&gt;&gt; regards,<br>
&gt;&gt; AGD<br>
&gt;&gt; <br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003d11a605bc64a42a--


--===============2982575040258889313==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2982575040258889313==--


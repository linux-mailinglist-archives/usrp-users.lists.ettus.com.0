Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3B2846E9
	for <lists+usrp-users@lfdr.de>; Wed,  7 Aug 2019 10:12:23 +0200 (CEST)
Received: from [::1] (port=58250 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvH3Q-0008Ap-Fc; Wed, 07 Aug 2019 04:12:16 -0400
Received: from mail-wm1-f44.google.com ([209.85.128.44]:39899)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <h.talaiee@gmail.com>) id 1hvH3L-00084Q-Ui
 for usrp-users@lists.ettus.com; Wed, 07 Aug 2019 04:12:12 -0400
Received: by mail-wm1-f44.google.com with SMTP id u25so68666190wmc.4
 for <usrp-users@lists.ettus.com>; Wed, 07 Aug 2019 01:11:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LcPNC2oPJ9NBdz9/AClMNg7Ng3CiOLb3OYpbFXmMRFU=;
 b=bIVuUcypz8Q42V1rJeQFWN4oB12EsfEX6GciyciflpysMPRAsu2xX7bVJ8bKGMRXyE
 jqPUOs5DGa8SDfm5ynl8mXc1jDXpF8nZTfYL9XHA50XO0SlvySaYjga7Ig9mZqpSgh9y
 CY+JeUlZ/U6tTfSDC42/m+M+fSwGTjhKB4ktb0DAF429fDiHCjqfzp2btX+Syef+Pn7O
 zVRsCrNgTi4VVkgN/Dc9/hpJ0Gpm2qHtssD4fUMUZXeRpRvGKFammKGeIf//Imhg/2Fd
 9Y3jKEZzq0MCymyoQKSwrzdEcBygbrB5kETN0VjQWV2i4UcLFK3NcY0jGVivbQhKgcPf
 RS8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LcPNC2oPJ9NBdz9/AClMNg7Ng3CiOLb3OYpbFXmMRFU=;
 b=G9zbmwBfGWZUHZypWXEgX0lTcpx51n1pSgGo/Ok45HXx12gL3kL9dAiGMw3D8L/Toc
 L6QEmq38NSG+6uiKcmvdLIJdTxrSasn9gwQO11LLZy+PF3NLHYlA64PCzlwJKD2xrcn9
 rp5W461k4AbgwvNQQ3t8gDL1qpdH4t59AHfqEwXh5yCzouboO3ayWflxfrYVaP2Zz9Z4
 xfwvJ7uCpIn1T6sQakJCCxGfKrXvkILkXhdAj8mFzeYPjgBBOa/T9QnFXnOXR4ZaA0zz
 P6onWEsU3icJXJ7VtsUZq5cE0qb1awgKeltk4Tm/5VCWBB3WTKtha2ETNLVEKIzM7+fE
 /5wg==
X-Gm-Message-State: APjAAAV9de9sIw+KL9E5PNwHpnUlsSr2dz88rls9ETDKAxzqX+I1pLWq
 6EjfwNazOR0f1EEIXn013Pm8NYlV7i4si/NA7GY=
X-Google-Smtp-Source: APXvYqxZ+H023YckfU/mY51RYk1S5pMTHlhanw3eT3684jI0vdB0qAB1e4KoF/HMhJd4AveMvo7siiIlpz9FPs/ymU8=
X-Received: by 2002:a05:600c:21d3:: with SMTP id
 x19mr2854972wmj.45.1565165489853; 
 Wed, 07 Aug 2019 01:11:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAAiBEBTT25JUU6Uybf6WLYakOLYGbKz4T_NUG5wTm_ydKpox-A@mail.gmail.com>
 <7c1e67d831b187fd3fb311b982cbbf91de26e6aa.camel@ettus.com>
In-Reply-To: <7c1e67d831b187fd3fb311b982cbbf91de26e6aa.camel@ettus.com>
Date: Wed, 7 Aug 2019 12:41:18 +0430
Message-ID: <CAAiBEBTGYFibhjqMf0VS0LnYBz1YSDi9i__PdnyX3LVSiH80zw@mail.gmail.com>
To: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
Subject: Re: [USRP-users] USRP B2xx Tx Peak power mode
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: hossein talaiee via USRP-users <usrp-users@lists.ettus.com>
Reply-To: hossein talaiee <h.talaiee@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2804039978602448928=="
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

--===============2804039978602448928==
Content-Type: multipart/alternative; boundary="00000000000009a117058f827d9f"

--00000000000009a117058f827d9f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Marcus,

I use the same signal for NI-5672 and signal changes as expected, I change
A from  2000 to 8 and it must drop 46 dB but does not!

On Tue, Aug 6, 2019 at 4:09 AM Marcus M=C3=BCller <marcus.mueller@ettus.com=
>
wrote:

> Dear Hossein,
>
> the B200 does NOT have a TX power control that would compensate that.
>
> Are you perhaps either not changing A very much, or are you perhaps
> clipping? Driving your B200's TX amplifier into saturation would of
> course mean that you'd not see much of signal power reduction when
> reducing signal amplitude, until you cross the threshold where things
> become linear again.
>
> Best regards,
> Marcus
>
> On Mon, 2019-08-05 at 17:00 +0430, hossein talaiee via USRP-users
> wrote:
> > Hi
> >
> > I want to manually control output power of my USRP with signal level
> > not usrp gain,for example I want to generate a sinusoidal signal with
> > equation:
> >
> >    s(t) =3D A * sin(w*t);
> >
> > and want to change A to control tx power, but when I change it,
> > somehow USRP compensate my change and tries to hold tx power! like it
> > is trying to hold average power.
> >
> > Using NI-5672 signal generator, I am able to control power with
> > setting the power mode to "Peak Power mode" instead of "Average Power
> > mode". I think USRP has something like this to control power. How can
> > I disable it?
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
>

--00000000000009a117058f827d9f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif">Dear Marcus,</div><div class=3D"gmail_default" style=3D"font-fam=
ily:tahoma,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font=
-family:tahoma,sans-serif">I use the same signal for NI-5672 and signal cha=
nges as expected, I change A from=C2=A0 2000 to 8 and it must drop 46 dB bu=
t does not!<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Aug 6, 2019 at 4:09 AM Marcus M=C3=BCller &lt;=
<a href=3D"mailto:marcus.mueller@ettus.com">marcus.mueller@ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear Ho=
ssein,<br>
<br>
the B200 does NOT have a TX power control that would compensate that.<br>
<br>
Are you perhaps either not changing A very much, or are you perhaps<br>
clipping? Driving your B200&#39;s TX amplifier into saturation would of<br>
course mean that you&#39;d not see much of signal power reduction when<br>
reducing signal amplitude, until you cross the threshold where things<br>
become linear again.<br>
<br>
Best regards,<br>
Marcus<br>
<br>
On Mon, 2019-08-05 at 17:00 +0430, hossein talaiee via USRP-users<br>
wrote:<br>
&gt; Hi<br>
&gt; <br>
&gt; I want to manually control output power of my USRP with signal level<b=
r>
&gt; not usrp gain,for example I want to generate a sinusoidal signal with<=
br>
&gt; equation:<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 s(t) =3D A * sin(w*t);<br>
&gt; <br>
&gt; and want to change A to control tx power, but when I change it,<br>
&gt; somehow USRP compensate my change and tries to hold tx power! like it<=
br>
&gt; is trying to hold average power.<br>
&gt; <br>
&gt; Using NI-5672 signal generator, I am able to control power with<br>
&gt; setting the power mode to &quot;Peak Power mode&quot; instead of &quot=
;Average Power<br>
&gt; mode&quot;. I think USRP has something like this to control power. How=
 can<br>
&gt; I disable it?<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
</blockquote></div>

--00000000000009a117058f827d9f--


--===============2804039978602448928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2804039978602448928==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA70214C6B
	for <lists+usrp-users@lfdr.de>; Sun,  5 Jul 2020 14:32:19 +0200 (CEST)
Received: from [::1] (port=36044 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1js3og-0007WG-8N; Sun, 05 Jul 2020 08:32:18 -0400
Received: from mail-ed1-f53.google.com ([209.85.208.53]:35951)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <alex.m.humberstone@gmail.com>)
 id 1js3ob-0007Ms-Lr
 for usrp-users@lists.ettus.com; Sun, 05 Jul 2020 08:32:13 -0400
Received: by mail-ed1-f53.google.com with SMTP id dg28so32162310edb.3
 for <usrp-users@lists.ettus.com>; Sun, 05 Jul 2020 05:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OsksFrWe9fQPq+fbWGdr+W73kUeS6u2Ed+3UeIIFK4I=;
 b=eItu2pvm1LjhBhvhgkNrtsswBFq6gqoSkPgLEsYRi0lbgNdnUll335E/B1hQ6X50gY
 UQjuAZQWiyRFKVp8YBoySsecZRzrpUvnmefJNimnMq+v83Rxyqo0WHiT/0VHfaqndMZD
 gC4nGZK2NhXU+sAnDUp4NGiKgx6NlMQ8I5WnHKNzt9XQxJLvB3rwyRiaEFKfRw0I4veK
 DPk5VQK8sUySMo8KhB/WhOLFPmHyM+J5QqQZJxjUOzLMRD28h1lWYE2Ufm6HF9fziUCP
 2uhgSQLp1aj3tlxaHqM2T6Kli472bfUi5V767m/iYU7/4FlpHxS4bVEWzCh0oVVEB9Bt
 j5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OsksFrWe9fQPq+fbWGdr+W73kUeS6u2Ed+3UeIIFK4I=;
 b=YqGRX5Ozf7DNj3eAvJJDb2Qe9E+IwTMQGZwD7liL/kT2CYF3Xe85rsXHug5PySAPms
 kdLlM0+6aXHbxRqI0/UxyTRmvG8A8aFKlwliZZFwfhURlT+JrWJep541RpM12kTaCiBh
 qJHPDhUXdN7V9f0qPfTU/gzN/lzumpcgF8tqUhlZjKu5x0uYKpTS47r7OS5JeACV1hhB
 wu14mkajJ17PqEizzd5RtwLsV7o5UX1HtQ0YNYIBR2xePC0arFLeH2e8KOLOYWY4Kr6w
 nEmIMv1vjYV83+InPPDJXWA5M/gqbofhc2PQOUa1aN8QsHBssisWGCV+e6wJ92b37Ywa
 TvAA==
X-Gm-Message-State: AOAM531s9MwI5JcQ/OJcQLZJUga0uyIHPl/QmMO3NtI6FO7/6H94Z+bm
 mHUoGoI9G9Nsj7qTLuQ8MSbdXvPE6l+004bMcEM=
X-Google-Smtp-Source: ABdhPJy2rVYSi3LeAByb8ets0ll+Nt/YFQldHb1ZVmw2JVe0e9gH1mtVJXQ7oYeIi8g6pe1Ei7VZLaQlNiY6WnMPUtE=
X-Received: by 2002:a05:6402:2065:: with SMTP id
 bd5mr45753565edb.67.1593952292791; 
 Sun, 05 Jul 2020 05:31:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAE0dfYYGNGZqh0YQPvmk1XfXY323Z93MmESUX9vJyTt79GrNYA@mail.gmail.com>
 <5EFF5A19.3090906@gmail.com>
In-Reply-To: <5EFF5A19.3090906@gmail.com>
Date: Sun, 5 Jul 2020 07:30:56 -0500
Message-ID: <CAE0dfYaZHrJhYHdjDPw_HOpunNNUkhZD9gkg3OmA_JNz1REifA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] How to use a Ham It Up with the USRP B210
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
From: Alex Humberstone via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alex Humberstone <alex.m.humberstone@gmail.com>
Content-Type: multipart/mixed; boundary="===============6104309046756624241=="
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

--===============6104309046756624241==
Content-Type: multipart/alternative; boundary="00000000000033672705a9b0f08c"

--00000000000033672705a9b0f08c
Content-Type: text/plain; charset="UTF-8"

Thank you very much Marcus!
Really appreciate the help!


On Fri, 3 Jul 2020 at 11:18, Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 07/03/2020 12:03 PM, Alex Humberstone via USRP-users wrote:
>
> Just a quick and basic question. I want to receive down at like between
> 1MHz and 10MHz. I have a USRP B210. I knwo that the USRP B210 only goes
> down to 70MHz. So I bought a Ham It Up (
> https://www.nooelec.com/store/ham-it-up.html) upconverter to get down to
> like 1MHz and 3 MHz. So how does this all work? Does the Ham It Up
> upconvert the frequency range from 100KHz to 65MHz up to a center frequency
> of 125MHz? So then isn't it true that if I tune the USRP B210 to 125MHz, I
> would see my two 1MHz and 3MHz input tones appearing up at 33.5MHz and
> 35.5MHz? Just want to clarify this in my mind. Thanks a LOT for your help
> everyone!
>
>
>
> --
> Sincerely,
> Alex-M-Humberstone
> PhD Student
> Klipsch School of Electrical Engineering
> New Mexico State University
> Las Cruces, New Mexico
>
>
> Not quite.
>
> An upconverter conceptually *ADDS* the incoming frequency to the LO
> frequency.  In the case of the HamItUp, the LO frequency is 125Mhz.
>   So, to "see" 1MHz signals, you'd tune the B210 to 125MHz + 1Mhz ==
> 126MHz.  For a 20Mhz input signal, 125MHz + 20MHz = 145MHz, etc.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


-- 
Sincerely,
Alex-M-Humberstone
PhD Student
Klipsch School of Electrical Engineering
New Mexico State University
Las Cruces, New Mexico

--00000000000033672705a9b0f08c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e;font-size:large">Thank you very much Marcus!</div><div class=3D"gmail_def=
ault" style=3D"font-family:monospace;font-size:large">Really appreciate the=
 help!</div><div class=3D"gmail_default" style=3D"font-family:monospace;fon=
t-size:large"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, 3 Jul 2020 at 11:18, Marcus D. Leech via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 07/03/2020 12:03 PM, Alex
      Humberstone via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-family:monospace;font-si=
ze:large">Just a quick and
          basic question. I want to receive down at like between 1MHz
          and 10MHz. I have a USRP B210. I knwo that the USRP B210 only
          goes down to 70MHz. So I bought a Ham It Up (<a href=3D"https://w=
ww.nooelec.com/store/ham-it-up.html" target=3D"_blank">https://www.nooelec.=
com/store/ham-it-up.html</a>)
          upconverter to get down to like 1MHz and 3 MHz. So how does
          this all work? Does the Ham It Up upconvert the frequency
          range from 100KHz to 65MHz up to a center frequency of 125MHz?
          So then isn&#39;t it true that if I tune the USRP B210 to 125MHz,
          I would see my two 1MHz and 3MHz input tones appearing up at
          33.5MHz and 35.5MHz? Just want to clarify this in my mind.
          Thanks a LOT for your help everyone!<br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:monospace;font-si=
ze:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-family:monospace;font-si=
ze:large"><br clear=3D"all">
        </div>
        <br>
        -- <br>
        <div dir=3D"ltr">
          <div dir=3D"ltr"><font size=3D"4"><span style=3D"font-family:mono=
space">Sincerely,<br>
              </span></font>
            <div><font size=3D"4"><span style=3D"font-family:monospace">Ale=
x-M-Humberstone</span></font></div>
            <div><font size=3D"4"><span style=3D"font-family:monospace">PhD
                  Student</span></font></div>
            <div><font size=3D"4"><span style=3D"font-family:monospace">Kli=
psch
                  School of Electrical Engineering<br>
                </span></font></div>
            <div><font size=3D"4"><span style=3D"font-family:monospace">New
                  Mexico State University<br>
                  <span><span>Las Cruces, </span></span>New Mexico</span></=
font></div>
            <div><font size=3D"4"><span style=3D"font-family:monospace"><br=
>
                </span></font></div>
            <div><font size=3D"4"><span style=3D"font-family:monospace"></s=
pan></font></div>
          </div>
        </div>
      </div>
      <br>
    </blockquote>
    Not quite.<br>
    <br>
    An upconverter conceptually *ADDS* the incoming frequency to the LO
    frequency.=C2=A0 In the case of the HamItUp, the LO frequency is 125Mhz=
.<br>
    =C2=A0 So, to &quot;see&quot; 1MHz signals, you&#39;d tune the B210 to =
125MHz + 1Mhz =3D=3D
    126MHz.=C2=A0 For a 20Mhz input signal, 125MHz + 20MHz =3D 145MHz, etc.=
<br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><font size=3D"4"><span style=3D"font-famil=
y:monospace">Sincerely,<br></span></font><div><font size=3D"4"><span style=
=3D"font-family:monospace">Alex-M-Humberstone</span></font></div><div><font=
 size=3D"4"><span style=3D"font-family:monospace">PhD Student</span></font>=
</div><div><font size=3D"4"><span style=3D"font-family:monospace">Klipsch S=
chool of Electrical Engineering<br></span></font></div><div><font size=3D"4=
"><span style=3D"font-family:monospace">New Mexico State University<br><spa=
n><span>Las Cruces, </span></span>New Mexico</span></font></div><div><font =
size=3D"4"><span style=3D"font-family:monospace"><br></span></font></div><d=
iv><font size=3D"4"><span style=3D"font-family:monospace"></span></font></d=
iv></div></div>

--00000000000033672705a9b0f08c--


--===============6104309046756624241==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6104309046756624241==--


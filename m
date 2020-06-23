Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A891205BAF
	for <lists+usrp-users@lfdr.de>; Tue, 23 Jun 2020 21:19:47 +0200 (CEST)
Received: from [::1] (port=53474 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnoSN-0006U1-Ny; Tue, 23 Jun 2020 15:19:43 -0400
Received: from mail-ej1-f50.google.com ([209.85.218.50]:42812)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aarsmith54@gmail.com>)
 id 1jnoSJ-0006PI-MR
 for usrp-users@lists.ettus.com; Tue, 23 Jun 2020 15:19:39 -0400
Received: by mail-ej1-f50.google.com with SMTP id i14so4349057ejr.9
 for <usrp-users@lists.ettus.com>; Tue, 23 Jun 2020 12:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/N+XAp2BXmXUDMp2O/xxSCXCvvFrptbi07ZviujYEtg=;
 b=rtwX4PhnX28E20PCG4MPJaCAf26aeHnYk6d8tgi2yS/4H6dYYVcp3ijTVTjulfoCEH
 34nb/Li05DcZDV+KuuRVkhJ6TB0xwOIeyv+7n78lEJlElHVvUcWLw4NR3f48yYm/qjg3
 z3JAmU2/08L/hy9vvZ86dpOSAogfleGppznep5jiNmH/S22VtDO+05NwvrYgTF2FyIsj
 9Q39HPSzNd3VanDI6wgycryvvWqNaOFutZsMIR/MrrD/4V4mVcftTaUpRozuTKXeO0IG
 XrFwLwuXUTIrCyQaJR73iPQJUjOQ2femjtE3CR7Cdjt5Wk2AJ1xtY+D+d3aIgNoRNpbJ
 BLBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/N+XAp2BXmXUDMp2O/xxSCXCvvFrptbi07ZviujYEtg=;
 b=qyUblFE3YN4WhA160TsPxbNII8bxvyAAZQJEsAAZeJEnWkAHQH7ycU8MnRu/F3yhAF
 IYe+aiP8jlzIn10V7bKAf6xqOCR98dGFSOtlCMyVxv3yj0LZrIUpcSdw/DlX44zW4Rui
 siLX3WOVtSd6IOaR25tvHXhIM2pJSGBcy3oTL0rZfm1u9TYfm/ryTU+qMwDb1vRb/Y7Z
 M1cnFo4DtQhw9vuT+J7JOE5FEkK9jHQZTge9RGU2IKWxV/CigQFiiiPXqrbN3oLGmFMz
 YqY715GIemDn1fWVpaVBIPDR724MGd0lcTM14YQCgpDf+5j3i2JYtSFhP4SnwadTrZV6
 5v1w==
X-Gm-Message-State: AOAM531AC6fhRfVtQFoyJnWzudcPp39SVoWT2a3DYZo/NvRBhOB+ikiG
 94/5M9TyPzpphaUYLt9ejWKGaN0GixCkJ3ZHf4TgBQ==
X-Google-Smtp-Source: ABdhPJyHw9HkOixcnjY5aa60xvKateF6rf8ffCdlxMT0xfVG7CxWtMQjcQKm7nFn40LgQesfy1EKzjDFJFBDh5v4+Qw=
X-Received: by 2002:a17:906:5006:: with SMTP id
 s6mr20974574ejj.294.1592939938604; 
 Tue, 23 Jun 2020 12:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2Hh738Yjx+iA=oHOP2tmq+TXoj8-k5ZLNUnXJsdjQ9D1q6cg@mail.gmail.com>
 <5EF2527F.7090600@gmail.com>
In-Reply-To: <5EF2527F.7090600@gmail.com>
Date: Tue, 23 Jun 2020 13:18:47 -0600
Message-ID: <CAH2Hh70UsmEuAYPU6H+biWQ-Fd29Rr13+0rX1718fYHnCwna=A@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: Ettus Mail List <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] 10 MHz Reference Initial Phase in the X310
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
From: Aaron Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Smith <aarsmith54@gmail.com>
Content-Type: multipart/mixed; boundary="===============2143012447246549060=="
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

--===============2143012447246549060==
Content-Type: multipart/alternative; boundary="000000000000306bb305a8c53b76"

--000000000000306bb305a8c53b76
Content-Type: text/plain; charset="UTF-8"

Marcus,

They are EndRun Meridian and Meridian II units.

I am very ignorant on this topic. Is it a standard that the 1 PPS should
coincide with the top of a 10 MHz cycle? I just wouldn't expect the front
end transmit delay, relative to the 1 PPS input, to depend on the 10 MHz
reference phase. I don't understand how the 10 MHz reference and 1 PPS
input are used to synthesize time. Is the 1 PPS detection done at the
master lock rate (200 MHz) or at 10 MHz?

On Tue, Jun 23, 2020 at 1:06 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 06/23/2020 02:45 PM, Aaron Smith via USRP-users wrote:
> > Hello,
> >
> > I am attempting to release a transmission from an X310 every second.
> > To accomplish this, I must measure, and calibrate the delay in the RF
> > front end of the radio for my chosen sample rate. I'd like the
> > transmission to be released within 1 clock cycle of the rising edge of
> > the PPS.
> >
> > I am feeding the X310 an external 10 MHz reference and 1 PPS, which
> > are produced by the same source, and are being supplied to the radio
> > with matched cable lengths. The source is a GPS receiver and in my lab
> > I have 2 different generations of the GPS receiver.
> >
> > While calibrating the front end transmit delay I noticed a discrepancy
> > in the radio timing between the separate GPS receiver generations. The
> > 1st generation of GPS receiver is 50 ns different than the calibration
> > for the 2nd generation. When I look at the 1 PPS and 10 MHz output on
> > a scope, I noticed that in the 1st generation the PPS occurs at the
> > top of a 10 MHz cycle, and in the 2nd generation it occurs at the
> > bottom of a 10 MHz cycle. Half a cycle at 10 MHz is 50 ns. I suspect
> > this is not coincidence because I have now tested 6 different GPS
> > receivers, 3 of gen 1 and 3 of gen 2, and all 3 gen 1 calibrations are
> > the same and they are 50 ns different from the gen 2 calibrations.
> >
> > Is this the expected behavior? Or is there a bug in the X310 code that
> > handles timing? I have never worked on hardware, but I would not
> > expect the initial phase of a 10 MHz reference to impact absolute time.
> >
> > Thanks for your help!
> >
> >
> These are external GPS receivers?  What kind?  Given your scope
> measurements, how would this be related to a bug in X310?  I'm confused
>    as to how you're linking the 10MHz/1PPS phasing on your external GPS
> receivers to the X310 having bugs.
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000306bb305a8c53b76
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Marcus,</div><div><br></div><div>They are EndRun Meri=
dian and Meridian II units.</div><div><br></div><div>I am very ignorant on =
this topic. Is it a standard that the 1 PPS should coincide with the top of=
 a 10 MHz cycle? I just wouldn&#39;t expect the front end transmit delay, r=
elative to the 1 PPS input, to depend on the 10 MHz reference phase. I don&=
#39;t understand how the 10 MHz reference and 1 PPS input are used to synth=
esize time. Is the 1 PPS detection done at the master lock rate (200 MHz) o=
r at 10 MHz?<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, Jun 23, 2020 at 1:06 PM Marcus D. Leech via U=
SRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@list=
s.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On 06/23/2020 02:45 PM, Aaron Smith via USRP-users wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I am attempting to release a transmission from an X310 every second. <=
br>
&gt; To accomplish this, I must measure, and calibrate the delay in the RF =
<br>
&gt; front end of the radio for my chosen sample rate. I&#39;d like the <br=
>
&gt; transmission to be released within 1 clock cycle of the rising edge of=
 <br>
&gt; the PPS.<br>
&gt;<br>
&gt; I am feeding the X310 an external 10 MHz reference and 1 PPS, which <b=
r>
&gt; are produced by the same source, and are being supplied to the radio <=
br>
&gt; with matched cable lengths. The source is a GPS receiver and in my lab=
 <br>
&gt; I have 2 different generations of the GPS receiver.<br>
&gt;<br>
&gt; While calibrating the front end transmit delay I noticed a discrepancy=
 <br>
&gt; in the radio timing between the separate GPS receiver generations. The=
 <br>
&gt; 1st generation of GPS receiver is 50 ns different than the calibration=
 <br>
&gt; for the 2nd generation. When I look at the 1 PPS and 10 MHz output on =
<br>
&gt; a scope, I noticed that in the 1st generation the PPS occurs at the <b=
r>
&gt; top of a 10 MHz cycle, and in the 2nd generation it occurs at the <br>
&gt; bottom of a 10 MHz cycle. Half a cycle at 10 MHz is 50 ns. I suspect <=
br>
&gt; this is not coincidence because I have now tested 6 different GPS <br>
&gt; receivers, 3 of gen 1 and 3 of gen 2, and all 3 gen 1 calibrations are=
 <br>
&gt; the same and they are 50 ns different from the gen 2 calibrations.<br>
&gt;<br>
&gt; Is this the expected behavior? Or is there a bug in the X310 code that=
 <br>
&gt; handles timing? I have never worked on hardware, but I would not <br>
&gt; expect the initial phase of a 10 MHz reference to impact absolute time=
.<br>
&gt;<br>
&gt; Thanks for your help!<br>
&gt;<br>
&gt;<br>
These are external GPS receivers?=C2=A0 What kind?=C2=A0 Given your scope <=
br>
measurements, how would this be related to a bug in X310?=C2=A0 I&#39;m con=
fused<br>
=C2=A0 =C2=A0as to how you&#39;re linking the 10MHz/1PPS phasing on your ex=
ternal GPS <br>
receivers to the X310 having bugs.<br>
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

--000000000000306bb305a8c53b76--


--===============2143012447246549060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2143012447246549060==--


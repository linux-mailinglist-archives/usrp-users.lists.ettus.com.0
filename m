Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA6F1E6927
	for <lists+usrp-users@lfdr.de>; Thu, 28 May 2020 20:15:25 +0200 (CEST)
Received: from [::1] (port=58084 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jeN3q-0005sd-U9; Thu, 28 May 2020 14:15:22 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:36688)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <qiu.guowang007@gmail.com>)
 id 1jeN3l-00052w-Ut
 for usrp-users@lists.ettus.com; Thu, 28 May 2020 14:15:17 -0400
Received: by mail-qk1-f173.google.com with SMTP id 205so4038855qkg.3
 for <usrp-users@lists.ettus.com>; Thu, 28 May 2020 11:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QN+rl+e8oIPifaE0Z07Sk+QAQYA1qtENII9lskVD88s=;
 b=hmwsHumKqXZ74yvMWUfztZQozSJDglZh7YGULPHp8ef3x4BJ9vAlHlF2y0UKEX26a+
 noHRsGEeqlIm9v09Y+IqpnivlfZ3T8TjISoKxAwQlUsC04WRnfuSkNxcjp17uuJFke/0
 7ZEDXL1TQ2lhALpQ9Dq9xLW/jbhGOdXIA8KCZTaj4H52pzg85vXODV+D1MyARh48ApOe
 p+HuC55s8k1d37/cU2Lp0RAdWFJRa9cetKz5NA2lJ5BNwgBDuUV6YEy5CKeDJINORnyH
 +fWEDZDA//E8KPy2kulyxeadFPKqTv88V456z7qidtxO69POT6f8TlG0uYWF8GLChSgC
 daYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QN+rl+e8oIPifaE0Z07Sk+QAQYA1qtENII9lskVD88s=;
 b=uoZihHiGR5xzKybutM8e6YKWPpkoeEZ563/OWUZ6T8aU9oCIR2tCLsdLyH1cEZyrsb
 YrJR3HGLSv6Y719DIVBToipwT6SIdxI4muJmYdzdLChjuae2nXYRmdfq2+uXE5y5ueRq
 yz4gP4gHcE8JRW8TBeUyRsCRWhIaInyhj0Ezb3CdbzTLqU0hQ8mV1glsFrZZ9PbNbajr
 dtbVQhABvPZKXB7R4b4hvEb3a2BJVsThfioI2oIpCEECuQG//fnF1li23axRSuFrNi9d
 KMJEpT+kHxRFWdKx8vPbBtqAS4Nmu4sfOjMSeqpAO62KfACFu3G8gIpSRwRg6p927O/O
 psrw==
X-Gm-Message-State: AOAM531wXs6JZAVf+Z2WkccyQbGQ1BVMJ/AtcghDyAsT717MJvklix3X
 mZqftiR/j39Sy35z3AGWStgQAoz/DCAaLEWITrc=
X-Google-Smtp-Source: ABdhPJzFUv+aD/7Nms35i0rtOn/IGbmHuJCBEDD9nqVDKELdB2znTJ0h4386irhyJ/8R2YN1354pxv+RDuEs+vvohZM=
X-Received: by 2002:ae9:c10d:: with SMTP id z13mr3773965qki.3.1590689677486;
 Thu, 28 May 2020 11:14:37 -0700 (PDT)
MIME-Version: 1.0
References: <CACjmV_n8FX-ktO2tzHObN9eaBq7pdQ67AW=46WWMgpHmwnkTvQ@mail.gmail.com>
 <A6D18848-7D69-461E-AB5A-02F5B5166ABE@gmail.com>
In-Reply-To: <A6D18848-7D69-461E-AB5A-02F5B5166ABE@gmail.com>
Date: Fri, 29 May 2020 02:14:26 +0800
Message-ID: <CACjmV_k9v7aBTR+8=e9qNJzh904hSWr061kF2r4YBQ2BNpxj4Q@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] B210 LO signal leakage above 5GHz
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: guowang qiu via USRP-users <usrp-users@lists.ettus.com>
Reply-To: guowang qiu <qiu.guowang007@gmail.com>
Cc: usrp-users@lists.ettus.com, Damon Qiu <qiu.guowang007@gmail.com>
Content-Type: multipart/mixed; boundary="===============9186413857602378343=="
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

--===============9186413857602378343==
Content-Type: multipart/alternative; boundary="0000000000002cadcc05a6b94d4a"

--0000000000002cadcc05a6b94d4a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thank you for your reply.
We have tried to set the magnitude of the modulating baseband signal from
0.1 to 0.6, it only affects the single tone signal strength and has no
effect on the LO leakage.

Best regards,
Damon

On Fri, 29 May 2020 at 02:03, Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Have you tried adjusting the magnitude of the modulating baseband signal?
> Does that make a difference.
>
> My guess is that the leakage path isn=E2=80=99t through the VGA but rathe=
r through
> something else in the package. In which case, no amount of software mods
> will reduce it.
>
> Sent from my iPhone
>
> > On May 28, 2020, at 1:50 PM, guowang qiu via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Hi all,
> >
> > We use USRP b210 as a signal generator, and adjust the tx gain to make
> the tx power from - 90dbm to 0dbm. USRP b210 works fine in 2.4GHz frequen=
cy
> band, but it has a very strong LO signal leakage at frequencies higher th=
an
> 5GHz.
> > In my test, the frequency of  baseband (cos signal source) is set to
> 1MHz, so LO signal leakage and single tone signal can be easily
> distinguished. When the tx gain is set from 0 to 30 db, the strength of t=
he
> LO signal hardly changes, and it is higher than the strength of the singl=
e
> tone signal. With the increase of tx gain, the strength of single tone
> signal will increase obviously. It seems that the local oscillator signal
> generated by the PLL in ad9361 bypasses the internal adjustable gain powe=
r
> amplifier and leaks directly to the antenna port.
> > Is it possible to reduce the local leakage by modifying the UHD source
> code?
> >
> > Best regards,
> > Damon
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000002cadcc05a6b94d4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Marcus,</div><div><br></div><div>=
Thank you for your reply.<br></div><div>We have tried to set the magnitude =
of the modulating baseband signal from 0.1 to 0.6, it only affects the sing=
le tone signal strength and has no effect on the LO leakage.</div><div><br>=
</div><div>Best regards,</div><div>Damon<br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 29 May 2020 at 02=
:03, Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvon=
braun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">Have you tried adjusting the magnitude of the modulating bas=
eband signal? Does that make a difference. <br>
<br>
My guess is that the leakage path isn=E2=80=99t through the VGA but rather =
through something else in the package. In which case, no amount of software=
 mods will reduce it. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On May 28, 2020, at 1:50 PM, guowang qiu via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettu=
s.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hi all,<br>
&gt; <br>
&gt; We use USRP b210 as a signal generator, and adjust the tx gain to make=
 the tx power from - 90dbm to 0dbm. USRP b210 works fine in 2.4GHz frequenc=
y band, but it has a very strong LO signal leakage at frequencies higher th=
an 5GHz. <br>
&gt; In my test, the frequency of=C2=A0 baseband (cos signal source) is set=
 to 1MHz, so LO signal leakage and single tone signal can be easily disting=
uished. When the tx gain is set from 0 to 30 db, the strength of the LO sig=
nal hardly changes, and it is higher than the strength of the single tone s=
ignal. With the increase of tx gain, the strength of single tone signal wil=
l increase obviously. It seems that the local oscillator signal generated b=
y the PLL in ad9361 bypasses the internal adjustable gain power amplifier a=
nd leaks directly to the antenna port.<br>
&gt; Is it possible to reduce the local leakage by modifying the UHD source=
 code?<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Damon<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000002cadcc05a6b94d4a--


--===============9186413857602378343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9186413857602378343==--


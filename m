Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E9E2BC1B3
	for <lists+usrp-users@lfdr.de>; Sat, 21 Nov 2020 20:19:09 +0100 (CET)
Received: from [::1] (port=59570 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kgYPV-00018e-Uo; Sat, 21 Nov 2020 14:19:01 -0500
Received: from mail-ua1-f50.google.com ([209.85.222.50]:42081)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kgYPR-000112-Fe
 for usrp-users@lists.ettus.com; Sat, 21 Nov 2020 14:18:57 -0500
Received: by mail-ua1-f50.google.com with SMTP id 103so999459uai.9
 for <usrp-users@lists.ettus.com>; Sat, 21 Nov 2020 11:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Otpnfpo5h1hjHeI/Z+jOHkW/bOooQZZy1tiaNtJxhyg=;
 b=H8Ic7sxxPD3eYp8zWfQNPpPcfZFnXVuFl3BitDoJWo86XhR5gCNAJP9dmTy5OY9SD8
 3CN4qZHhK3Qi1m/QZiZ0tdEdtogISbzr3GaDCz7ExFDnQB1c3NNy4lfinaXx8dQOpINS
 Xx4kfwFrS7AEsLFmcJmiSfz4GsnUNmPplNxRWHTVSrgU3Siw9cr09QDOnww1YQa7Abtc
 hRxZLPzpTYMdse3ZTkMlEKdtVTU3K+/Ux140GXTXdavQ9mPkN2JFbRWpmjXSBFOGtscv
 oUdJ7zdHhf2XFynz2KuLdaUyna4hj/FI37VLos7khQa5CDifZDpF0DkHjJzoTvBU+Gx5
 QSmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Otpnfpo5h1hjHeI/Z+jOHkW/bOooQZZy1tiaNtJxhyg=;
 b=E0lBdPdqtkrcgOTvBMV5j+UvsnnV9UPKc/m6CaehSdpfPdHjFzFNDwaY4qThc3CaXr
 fz1gqSYExFc3fOjGzPhN/NF2Vni04Cieqznuzft+yJ+7zNCeV7nHPvIdGPJPC+GYS756
 e5ZHCxcF/yfI8uuRchL7owBTJgRmcMS9+m2JpSgNn11pEwrh2VQsskkfmJIhV8MfkATp
 8QBIFVuZYhR15heBI7uvmQqun/TukWfnns9raax+DGqXGIyqP6YzagxQoVOcDE1sqG1p
 5Q25EP/LQ/e1HsV7qwKGh8E+3lkpbHsBRC9FcjgiEkme0EwvVBQRyosAciQVbEUAIR3E
 DCyQ==
X-Gm-Message-State: AOAM5318JmHO4GfZdnTqY5thxocsWgq/zANjUiebWXuea7MYEqJcm2Gs
 Rs4AtWcbdvA3dLxTkPZW4zoGEh4MMQjZyzH0jFnyMO1Z
X-Google-Smtp-Source: ABdhPJx6ScZeyBmMAfHmzuSO1wg7ojypEUKDGdIKksZKmww5h22WHEF7FKYKbCWpAkhrshVoxEXLfpOP5+dH6SDLlWE=
X-Received: by 2002:ab0:7103:: with SMTP id x3mr18679390uan.100.1605986296871; 
 Sat, 21 Nov 2020 11:18:16 -0800 (PST)
MIME-Version: 1.0
References: <CAPRRyxtbQ1UWrUd=hhJxmUMyMRt8rLtvpLMGPoqZXVpai=a9Aw@mail.gmail.com>
 <3A42F7CE-97CC-4D96-9534-583EBF92FFE0@gmail.com>
 <CAPRRyxsS0sB7sf4NjehnKj8gAF5qeKb2Z5GLKazPkaQY1BybYw@mail.gmail.com>
In-Reply-To: <CAPRRyxsS0sB7sf4NjehnKj8gAF5qeKb2Z5GLKazPkaQY1BybYw@mail.gmail.com>
Date: Sat, 21 Nov 2020 14:17:40 -0500
Message-ID: <CAL7q81s2mCZa118xoxjHT0n8wruRF3k3w4cUa86La-56rYcqDA@mail.gmail.com>
To: Ivan Zahartchuk <adray0001@gmail.com>
Subject: Re: [USRP-users] Overrun on chan error 0 USRP e310 RFNoC
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Content-Type: multipart/mixed; boundary="===============3578536296554418981=="
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

--===============3578536296554418981==
Content-Type: multipart/alternative; boundary="000000000000bd52e605b4a2d232"

--000000000000bd52e605b4a2d232
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ivan,

The Fosphor block averages and then significantly decimates the FFT output.
With the default settings, it has an output data rate comparable to a 500
kSPS stream. The Fosphor example is also only one channel.

I would suggest starting at a rate of 100 kSPS and increasing from there.
The E310's ARM processor has very low performance compared to a desktop
processor. It is mostly meant for overhead tasks and low rate DSP (100s
kSPS range). High rate DSP should be implemented in the FPGA fabric.

Jonathon

On Sat, Nov 21, 2020 at 6:54 AM Ivan Zahartchuk via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I was setting samp_rate to 1 msps and observed the same situation. In add=
ition, in the example fosphor samp_rate =3D 56 msps and no errors occur.
>
>
>
> =D1=81=D0=B1, 21 =D0=BD=D0=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 05:12, Mar=
cus D Leech <patchvonbraun@gmail.com>:
>
>> There=E2=80=99s no way the fpga to ARM channel can support those data ra=
tes.
>> Lower your sample rate to 5msps and try again.
>>
>> Sent from my iPhone
>>
>> > On Nov 20, 2020, at 10:02 PM, Ivan Zahartchuk via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>> >
>> > =EF=BB=BF
>> > Hello, I want to launch two channels for receiving in parallel with
>> usrp e310 rfnoc. But on startup, I get an overrun error. What I need is
>> uninterrupted data transmission for phase analysis on both channels. How
>> can I do this?
>> > <=D0=A1=D0=BD=D0=B8=D0=BC=D0=BE=D0=BA =D1=8D=D0=BA=D1=80=D0=B0=D0=BD=
=D0=B0 =D0=BE=D1=82 2020-11-21 04-50-17.png>
>> >
>> > <=D0=A1=D0=BD=D0=B8=D0=BC=D0=BE=D0=BA =D1=8D=D0=BA=D1=80=D0=B0=D0=BD=
=D0=B0 =D0=BE=D1=82 2020-11-21 04-52-21.png>
>> >
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bd52e605b4a2d232
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ivan,<div><br></div><div>The Fosphor block averages and=
 then significantly decimates the FFT output. With the default settings, it=
 has an output data rate comparable to a 500 kSPS stream. The Fosphor examp=
le is also only one channel.</div><div><br></div><div>I would suggest start=
ing at a rate of 100 kSPS and increasing from there. The E310&#39;s ARM pro=
cessor has very low performance compared to a desktop processor. It is most=
ly meant for overhead tasks and low rate DSP (100s kSPS range). High rate D=
SP should be implemented in the FPGA fabric.</div><div><br></div><div>Jonat=
hon</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Sat, Nov 21, 2020 at 6:54 AM Ivan Zahartchuk via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><div><div id=3D"gmail-m_-1800510325560536534gmail-tw-target"=
><div id=3D"gmail-m_-1800510325560536534gmail-kAz1tf"><div id=3D"gmail-m_-1=
800510325560536534gmail-tw-target-text-container"><pre id=3D"gmail-m_-18005=
10325560536534gmail-tw-target-text" style=3D"text-align:left" dir=3D"ltr"><=
span lang=3D"en">I was setting samp_rate to 1 msps and observed the same si=
tuation. In addition, in the example fosphor samp_rate =3D 56 msps and no e=
rrors occur.</span></pre></div></div></div></div><br><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">=D1=81=D0=B1, 21 =D0=BD=D0=
=BE=D1=8F=D0=B1. 2020 =D0=B3. =D0=B2 05:12, Marcus D Leech &lt;<a href=3D"m=
ailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a=
>&gt;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">There=E2=
=80=99s no way the fpga to ARM channel can support those data rates.=C2=A0 =
Lower your sample rate to 5msps and try again. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Nov 20, 2020, at 10:02 PM, Ivan Zahartchuk via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello, I want to launch two channels for receiving in parallel with us=
rp e310 rfnoc. But on startup, I get an overrun error. What I need is unint=
errupted data transmission for phase analysis on both channels. How can I d=
o this?<br>
&gt; &lt;=D0=A1=D0=BD=D0=B8=D0=BC=D0=BE=D0=BA =D1=8D=D0=BA=D1=80=D0=B0=D0=
=BD=D0=B0 =D0=BE=D1=82 2020-11-21 04-50-17.png&gt;<br>
&gt; <br>
&gt; &lt;=D0=A1=D0=BD=D0=B8=D0=BC=D0=BE=D0=BA =D1=8D=D0=BA=D1=80=D0=B0=D0=
=BD=D0=B0 =D0=BE=D1=82 2020-11-21 04-52-21.png&gt;<br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000bd52e605b4a2d232--


--===============3578536296554418981==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3578536296554418981==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4E416ED66
	for <lists+usrp-users@lfdr.de>; Tue, 25 Feb 2020 19:01:08 +0100 (CET)
Received: from [::1] (port=60050 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6eW0-0004em-As; Tue, 25 Feb 2020 13:01:04 -0500
Received: from mail-ot1-f44.google.com ([209.85.210.44]:33505)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1j6eVw-0004a1-NX
 for usrp-users@lists.ettus.com; Tue, 25 Feb 2020 13:01:00 -0500
Received: by mail-ot1-f44.google.com with SMTP id w6so401397otk.0
 for <usrp-users@lists.ettus.com>; Tue, 25 Feb 2020 10:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uUN2+dkHlHkrNnp9Qrs5YMputjygwrRikpkIKif8NWY=;
 b=X1mH8IuPGld/BFDqc2GmEXNldyHVjla8bka8fKfLM4EXNtFe0rsiXWtqmvgh4FnEoN
 Lv8WLJHcjWrKzYYRUSxclNRl0CO5Ysq1WFAiwCoz8djBovBdJIKrHWTjln8p7pOQ5g3I
 lgduxBKB7QaLlWJPIpDgtKlaTxCMcdT/yIXO4KX4xRmBj5+3Xnlorozr+WRO/2VzKMdH
 qV8DANSVtYs+jH9qT5A7naldhyytPuwWFMogp/WzwkknSRfH4GFDvMtKM/Gp5+fbGp0r
 iWgAypdti0v419+FbYhBMgjWzN7sdyL9Km9YoL8+GQ7IUOt/G52s+joevgmdzBfzrne8
 wceQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uUN2+dkHlHkrNnp9Qrs5YMputjygwrRikpkIKif8NWY=;
 b=ouyerMAZmtxfYi0YhDjZ+IKO/EoqNyB9zN3Z/H7d1Wysoc9zF1JKeaseR23/JZprOC
 aqkfeRDG8Y314lRdT9Rs0YFT5QOrzwqo5lAtF0DAHQLnw711tsxkpkIE2HQVXAPm6Yv0
 KdnEl6e3CUnj9qorW2PerJIYTaETO2yra6nwyVEOmaFHrvwHhwCe5yETNMiZNvZecEiq
 jYgeazEw8/O9aOGeLJPLVjFB+npekAg+jRGoRiXTouZdJtA4ZdN/Mw/RHbASEk+4E/Wu
 PfE3BRs+MRqBiYBkagHYHSCt32QGFzbmu7zyyzl2Z/WNZmypAAD1uHvibuMvk5EKiukD
 Jw9A==
X-Gm-Message-State: APjAAAUX2+OiO6y3EbqvxowC4TOk8SepJko85d508t06wrUkeaZxEnFN
 cVLJTT7jo3XYZ4WpgGU3nmZ1F64S6wLqcHyFtxA1+g==
X-Google-Smtp-Source: APXvYqzW15tFpxr1Unlybal3wBF+XKD1YMEkxDUMLZN9p0HvgUwoRnL7j/qWihYFiMOG+SeTerhcE4S6TLJXXAv9OIg=
X-Received: by 2002:a9d:6b12:: with SMTP id g18mr44390994otp.211.1582653619687; 
 Tue, 25 Feb 2020 10:00:19 -0800 (PST)
MIME-Version: 1.0
References: <26020d4c1e714ec59a1c4f79f2963cb7@mbda-systems.com>
 <5E541933.5060300@gmail.com>
In-Reply-To: <5E541933.5060300@gmail.com>
Date: Tue, 25 Feb 2020 13:00:08 -0500
Message-ID: <CAB__hTRZAMF3A3UPU-VKF2F+fHTw1EkA0u+NvKnFAcW1=3CqkQ@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] Issues using TwinRX and x310 (phase shift)
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5920049521108260572=="
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

--===============5920049521108260572==
Content-Type: multipart/alternative; boundary="000000000000ce1ce1059f6a424d"

--000000000000ce1ce1059f6a424d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Etienne,
I didn't see anything about "timed commands" in your email.  These are
needed in order to get phase synchronization.  In particular, the
"set_time_now" function is a red flag because you should be using instead
"set_time_next_pps".  See this
<http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-December/=
061112.html>
topic regarding use of timed commands.
Rob


On Mon, Feb 24, 2020 at 1:43 PM Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> On 02/24/2020 05:06 AM, VAILLANT.Etienne via USRP-users wrote:
>
> Hi all,
>
>
>
> I would like to perform DOA measurements and I am using a USRP x310 with
> two TwinRX.
>
>
>
> First I am trying to perform some very basic tests in order to understand
> what I am doing: I generate a CW at 1850 MHz, going through a power
> splitter (4-ways 0=C2=B0), feeding the 4 inputs of the two TwinRX (A:0, A=
:1 and
> B:0, B:1).
>
> I save the raw IQ data via Gnuradio Companion in a file and I repeat the
> procedure several times, generating several files. All the files are save=
d
> with the same USRP tuning (I don=E2=80=99t stop or retune the signal/USRP=
 between
> two acquisitions). Basically I just click on a *Save* QT GUI Check Box in
> GRC many times which triggers a *File Sink* block and thus generates as
> many files.
>
>
>
> Then I want to re-plot the signals from the IQ data via Matlab, and my
> problem is that I get some different phase shift between the signals.
> Please find attached a screenshot of 12 identical acquisitions (12
> successive clicks on *Save*). What is important to me is the phase shift
> between the two signals, and I expected it to be identical in all cases
> (since all the acquisitions are identical). It seems to be OK for almost
> all the acquisitions, except for the 8, 9 and 10, where the phase shift i=
s
> different from all the others (and the three of them look identical=E2=80=
=A6). I
> have perform this test several times and every time some random
> acquisitions are shifted from the others (sometimes there are 2 or 3
> different values of phase shift, it is not always 90=C2=B0 or else).
>
>
>
> There is something I misunderstood or I do wrong but I can=E2=80=99t find=
 what. I
> have read some people with a similar issue discussing about the function
> *set_time_now()* but I don=E2=80=99t really know how to deal with it.
>
>
>
> To acquire the signal I am using either * UHD: USRP Source* block with 4
> channels or the *TwinRX USRP Source* block. In the first case, LO
> parameters are the following:
>
> -          Ch0 Source Internal / export True
>
> -          Ch1 Source Companion / export False
>
> -          Ch2 Source External / export False
>
> -          Ch3 Source External / export False
>
>
>
> I work on *Ubuntu* 18.04 (I can=E2=80=99t change since some other activit=
ies rely
> on this computer).
>
> -          *GRC* 3.7.10.1 (minimum version required for *gr-doa*
> application)
>
> -          *UHD* 3.10.3.0 (with the v3.10.1.0 recommended for *gr-doa *ap=
plication,
> my TwinRX were not detected (*Unknown*) via *uhd_usrp_probe*)
>
> -          *gr-doa* installed from source but all the make test have
> failed (I guess this is another topic since I don=E2=80=99t use *gr-doa*
> functions in my basic test presented above?).
>
>
>
> I am quite a new comer to this SDR world, thus any help would be much
> appreciated, thanks very much in advance!
>
>
>
> Kind regards,
>
>
>
> *Etienne VAILLANT*
>
>
>
> Perhaps you could share your GRC flow-graph with us?
>
> Also, there have been some phase-offset fixes in later versions of UHD,
> but it's not clear at this point whether that applies in your case or not=
,
>   which is where having the GRC flow-graph to look at would be useful.
>
> Cheers
>

> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ce1ce1059f6a424d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Etienne,</div><div>I didn&#39;t see anything about=
 &quot;timed commands&quot; in your email.=C2=A0 These are needed in order =
to get phase synchronization.=C2=A0 In particular, the &quot;set_time_now&q=
uot; function is a red flag because you should be using instead &quot;set_t=
ime_next_pps&quot;.=C2=A0 See <a href=3D"http://lists.ettus.com/pipermail/u=
srp-users_lists.ettus.com/2019-December/061112.html">this</a> topic regardi=
ng use of timed commands.</div><div>Rob</div><div><br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Feb 24, 2020=
 at 1:43 PM Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div>On 02/24/2020 05:06 AM,
      VAILLANT.Etienne via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">Hi all,<u></u><u></u></=
span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">I would like to perform
            DOA measurements and I am using a USRP x310 with two TwinRX.<u>=
</u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">First I am trying to
            perform some very basic tests in order to understand what I
            am doing: I generate a CW at 1850 MHz, going through a power
            splitter (4-ways 0=C2=B0), feeding the 4 inputs of the two Twin=
RX
            (A:0, A:1 and B:0, B:1).<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">I save the raw IQ data
            via Gnuradio Companion in a file and I repeat the procedure
            several times, generating several files. All the files are
            saved with the same USRP tuning (I don=E2=80=99t stop or retune=
 the
            signal/USRP between two acquisitions). Basically I just
            click on a <i>Save</i> QT GUI Check Box in GRC many times
            which triggers a
            <i>File Sink</i> block and thus generates as many files.<u></u>=
<u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">Then I want to re-plot
            the signals from the IQ data via Matlab, and my problem is
            that I get some different phase shift between the signals.
            Please find attached a screenshot of 12 identical
            acquisitions (12 successive clicks on <i>Save</i>). What is
            important to me is the phase shift between the two signals,
            and I expected it to be identical in all cases (since all
            the acquisitions are identical). It seems to be OK for
            almost all the acquisitions, except for the 8, 9 and 10,
            where the phase shift is different from all the others (and
            the three of them look identical=E2=80=A6). I have perform this=
 test
            several times and every time some random acquisitions are
            shifted from the others (sometimes there are 2 or 3
            different values of phase shift, it is not always 90=C2=B0 or
            else).<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">There is something I
            misunderstood or I do wrong but I can=E2=80=99t find what. I ha=
ve
            read some people with a similar issue discussing about the
            function
            <i>set_time_now()</i> but I don=E2=80=99t really know how to de=
al
            with it.<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">To acquire the signal I
            am using either <i>
              UHD: USRP Source</i> block with 4 channels or the <i>TwinRX
              USRP Source</i> block. In the first case, LO parameters
            are the following:<u></u><u></u></span></p>
        <p><span lang=3D"EN-GB"><span>-<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><span lang=3D"EN-GB">Ch0
            Source Internal / export True<u></u><u></u></span></p>
        <p><span lang=3D"EN-GB"><span>-<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><span lang=3D"EN-GB">Ch1
            Source Companion / export False<u></u><u></u></span></p>
        <p><span lang=3D"EN-GB"><span>-<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><span lang=3D"EN-GB">Ch2
            Source External / export False<u></u><u></u></span></p>
        <p><span lang=3D"EN-GB"><span>-<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><span lang=3D"EN-GB">Ch3
            Source External / export False<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">I work on <i>Ubuntu</i>
            18.04 (I can=E2=80=99t change since some other activities rely =
on
            this computer).<u></u><u></u></span></p>
        <p><span lang=3D"EN-GB"><span>-<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><i><span lang=3D"EN-GB">GRC</span></i><s=
pan lang=3D"EN-GB"> 3.7.10.1 (minimum version required for
            <i>gr-doa</i> application)<u></u><u></u></span></p>
        <p><span lang=3D"EN-GB"><span>-<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><i><span lang=3D"EN-GB">UHD</span></i><s=
pan lang=3D"EN-GB"> 3.10.3.0 (with the v3.10.1.0 recommended for
            <i>gr-doa </i>application, my TwinRX were not detected (<i>Unkn=
own</i>)
            via <i>uhd_usrp_probe</i>)<u></u><u></u></span></p>
        <p><span lang=3D"EN-GB"><span>-<span style=3D"font:7pt &quot;Times =
New Roman&quot;">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
              </span></span></span><i><span lang=3D"EN-GB">gr-doa</span></i=
><span lang=3D"EN-GB"> installed from source but all the make test
            have failed (I guess this is another topic since I don=E2=80=99=
t use
            <i>gr-doa</i> functions in my basic test presented above?).
            <u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">I am quite a new comer
            to this SDR world, thus any help would be much appreciated,
            thanks very much in advance!<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB">Kind regards,<u></u><u>=
</u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-GB"><u></u>=C2=A0<u></u></s=
pan></p>
        <p class=3D"MsoNormal"><b><span>Etienne
              VAILLANT<u></u><u></u></span></b></p>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
      </div>
      <br>
    </blockquote>
    Perhaps you could share your GRC flow-graph with us?<br>
    <br>
    Also, there have been some phase-offset fixes in later versions of
    UHD, but it&#39;s not clear at this point whether that applies in your
    case or not,<br>
    =C2=A0 which is where having the GRC flow-graph to look at would be
    useful.<br>
    <br>
    Cheers=C2=A0</div></blockquote><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div bgcolor=3D"#FFFFFF">
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000ce1ce1059f6a424d--


--===============5920049521108260572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5920049521108260572==--


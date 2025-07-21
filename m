Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A31B0BDE3
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jul 2025 09:41:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 97082385AEB
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jul 2025 03:41:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753083669; bh=dsy3J3kc9XFpzx1Lb+qKyvXrEb4bWAgoBidPqDsXExI=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=occuNCpA66vZHrCgt1q4m8AGveg4sV1RedxSndlnvVjp1ZOQvVR0TLKx413aF9KMI
	 78573GFw7Cp6cgP4RFO9kPe2B+RclRxhfnmC6wSAOj8Y0t1hHj/r7OXxYs5UNFCSe8
	 jQYfwWIxoc+iEptRDgSuA05wnzY9kGEj4Y5fWFXw6D9l9SccAaSPJORWd1NREwumcX
	 QuSFPNmkhHpL95xg/HFylLIO5bMPTLilF+apKu6LunQ6OkqoO1XERJrtUJyaCTbG6I
	 qUiwSzmB5uesaMXp76fO3bXPEuYNMWnC1qbrI9rLlRT5R5V0z7QZDuFmAbP2yE9/qT
	 g7KncwpV+OudA==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 875993859EB
	for <usrp-users@lists.ettus.com>; Mon, 21 Jul 2025 03:40:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="W6KNLXBa";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-607cc1a2bd8so6391189a12.2
        for <usrp-users@lists.ettus.com>; Mon, 21 Jul 2025 00:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1753083614; x=1753688414; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EgIO89prifP8KDrWx83n5Ylg906fuZ3r/yQZDil/JMQ=;
        b=W6KNLXBaagU4Bw5UkbBPgub7VSoo8DddWAZhas/cYhdGxVHuxrRf9hdN+7tpsTFUs1
         2/83DAngJCjOC5xnBiZhMGJWtjdfSlvnFauAwM4GlWR0giBtHO7A3tyfyxbZdy7WGOrU
         KGZynbxrnql2QS8heXf0qd2OEydUpgOKRLqLcDBEDGqxW5fg4zQ6ZgRJ3g3H8aj75iA0
         r95D+IdVfdvjWbXj7eG/y7YSZ1NpMp3Hn2XywRkMfeVhRED7rmqWID5F/WXnHHIWJfpj
         DKVOb48fR+m84ZPAp24bwLjsJtjYuG4Jpr0xmjrj0LRNEhC36oj2rnNND6iy/IX7EsHL
         8Dog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753083614; x=1753688414;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EgIO89prifP8KDrWx83n5Ylg906fuZ3r/yQZDil/JMQ=;
        b=Ng7PPahFLJnMbXfRzCsmJs0sii36fdFnD7vQTUiHjtVxo2CBvW4n6DEHPFwcyauk2X
         DMmSpeXJbt6Zmfzg1pLzQCf4tN2Ig8fzfOlMaba/t/lxA+9YwggZabPI8lVS4irj3EIr
         /SFbLY83yMxfOMNmYYDmuUJiAc1KzeBv4c+WTT6VztB9wRep6r8J1umXysWxaOTNlVM7
         16efTOVFDL+PwmF39IaMueceiHdz3a1sgP4gX8OGlE984UP1Vn5vrK9sHGxnLYrpSaX3
         9MoAds1KhL571tVEQUp03rGD/8UoFr98XB9zUsVNcMV5mQPLhxvK4xAGatDrbWm4T0mB
         ZR7w==
X-Gm-Message-State: AOJu0YwZSV7iiV3uFQ0mnDGLUDBeIb1RY3hbArhsyeWNTCd51T7wKl/E
	17Ig4sX+0T18D4FoPPxRX3bsmgpbU90DhJQzkfaC6QE52AKIFeuYkE8xZUkFVco1unOxXRBCsH9
	FBWIvwEWf/+oIvr0pPzfdCgXXZIOQSYFoseIurpGh7EMtcRK8y47wy5AVlA==
X-Gm-Gg: ASbGncsmgwfVghDkCOafQTYjtMyawnNfIMyDvULg6mNLdLpnqi5mV7Tci9aQB/cYTxD
	06is5dvnT6k6RMOso6U+3JxLGH5JinAoVA1lwk6oFKHPc4gdYqCbEaw7xd/xZFPX5X03WjcLtTA
	Sw0UKdFxMaU/GS/AGP34me4bDwr03WPKmhfBZIgGxBuUjzoVG3YkS9PoVUyCfEyv63K1hj8Dvp/
	x1Rz0diuyiqHPxJIIBoH6YUnSwQ8oiPZXjU2AE=
X-Google-Smtp-Source: AGHT+IG1pE7Fr6nYcjJhyPJpAH+12mfe/pmJd8Kn6BK+V+wlDhoACt1gqecs1OosCFG8e8U9P3Voz72GCJjAF7Quntc=
X-Received: by 2002:a17:906:2a5b:b0:ae9:c2b9:7eba with SMTP id
 a640c23a62f3a-ae9cde4ab94mr1436431666b.24.1753083614090; Mon, 21 Jul 2025
 00:40:14 -0700 (PDT)
MIME-Version: 1.0
References: <ec4918a482a04faf966f5a25e876c7e4@tu-braunschweig.de>
In-Reply-To: <ec4918a482a04faf966f5a25e876c7e4@tu-braunschweig.de>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 21 Jul 2025 09:40:03 +0200
X-Gm-Features: Ac12FXwqwNeGnqLNljzpPPhLXEZq-7U0gw0HCYl7WgQKng1Po-1iOPgnGLFRP6M
Message-ID: <CAFOi1A73qeod4Y_gKJNPL_Fu3zu+iYoF-g5EdevBqr0P8QgJkQ@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: BFUYLU33657XA6Y4GXF32EJD6WZD7RWE
X-Message-ID-Hash: BFUYLU33657XA6Y4GXF32EJD6WZD7RWE
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows when recording samples with the X410 stand-alone
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BFUYLU33657XA6Y4GXF32EJD6WZD7RWE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5649993432788054565=="

--===============5649993432788054565==
Content-Type: multipart/alternative; boundary="000000000000146de6063a6b965e"

--000000000000146de6063a6b965e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Jonas,

the onboard CPU (ARM64) is not for high loads, and like you suspect, is not
powerful enough to handle high loads by itself.

If you just want to capture samples at 15.36Msps, you can buffer them in
the onboard DRAM, of which you have 4 GiB in the XG_200 image, which is >
60s of streaming data if my math is correct. We have an example for how to
do that, it used to be called replay_capture.py, and was recently renamed
to rfnoc_rx_replay_samples_to_file.py (in host/examples/python).

--M

On Mon, Jul 21, 2025 at 8:37=E2=80=AFAM von Be=C3=B6czy, Jonas <
j.von-beoeczy@tu-braunschweig.de> wrote:

> Dear all,
>
> I cross-compiled a small C++ application that records some IQ samples
> and runs stand-alone on the X410.
> I want to use a sampling rate from 7.68e6 up to 15.36e6 samples per
> second. The IQ samples are written into the /run directory.
> Unfortunately I often get overflows, so that the system is not running
> stable. The amount of overflows increases if I increase the sampling rate=
.
>
> I also see overflows, when I run the example benchmark, e. g. like this:
> /usr/lib/uhd/examples/benchmark_rate --rx_rate 15.36e6 --rx_delay 2
> --priority high --rx_spb 64
>
> I tried to play around with rx_spb from 64 to 4096, since I thought that
> the buffer size would make a difference. But they all showed the same
> behavior (sometimes overflows, sometimes not).
>
>
> Within htop I cannot see any other CPU consuming services.
>
> I was wondering if the processor is to weak to run stand-alone at these
> data rates. Since I also wanted to run additional decoding on low
> Modulation and Coding schemes on the processor this might be a problem fo=
r
> me.
>
> Could you please give me some information if the x410 should be able to
> run the benchmark at such a sampling rate stand-alone?
> For that specific case I unfortunately cannot find and results.
>
> Many thanks again and best regards!
> Jonas
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000146de6063a6b965e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Jonas,</div><div><br></div><div>the onboard CPU (A=
RM64) is not for high loads, and like you suspect, is not powerful=C2=A0eno=
ugh to handle high loads by itself.</div><div><br></div><div>If you just wa=
nt to capture samples at 15.36Msps, you can buffer them in the onboard DRAM=
, of which you have 4 GiB in the XG_200 image, which is &gt; 60s of streami=
ng data if my math is correct. We have an example for how to do that, it us=
ed to be called replay_capture.py, and was recently renamed to rfnoc_rx_rep=
lay_samples_to_file.py (in host/examples/python).</div><div><br></div><div>=
--M</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div di=
r=3D"ltr" class=3D"gmail_attr">On Mon, Jul 21, 2025 at 8:37=E2=80=AFAM von =
Be=C3=B6czy, Jonas &lt;<a href=3D"mailto:j.von-beoeczy@tu-braunschweig.de">=
j.von-beoeczy@tu-braunschweig.de</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div class=3D"msg6224468671066932622">




<div dir=3D"ltr">
<div id=3D"m_6224468671066932622divtagdefaultwrapper" style=3D"font-size:12=
pt;color:rgb(0,0,0);font-family:Calibri,Helvetica,sans-serif" dir=3D"ltr">
<p><span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;=
Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont=
;font-size:15px">Dear all,<br>
<br>
I cross-compiled a small C++ application that records some IQ samples and=
=C2=A0runs stand-alone on the X410.=C2=A0<br>
I want to use a sampling rate from 7.68e6 up to 15.36e6 samples per second.=
=C2=A0<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&qu=
ot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiF=
ont;font-size:15px">The IQ samples are written
 into the /run directory.</span><br>
Unfortunately I often=C2=A0get overflows, so that the system is not running=
 stable. The amount of overflows increases if I increase the sampling rate.=
</span><br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quo=
t;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFo=
nt;font-size:15px">
<br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe=
 UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font=
-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">I also see overflows, when I run the example benchmark, e. g.=
 like this:</span><br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_=
normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,se=
rif,EmojiFont;font-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">/usr/lib/uhd/examples/benchmark_rate --rx_rate 15.36e6 --rx_d=
elay 2 --priority high --rx_spb 64<br>
</span><br>
I tried to play around with rx_spb from 64 to 4096, since I thought that th=
e buffer size would make a difference. But they all showed the same behavio=
r (sometimes overflows, sometimes not).</p>
<p><br>
</p>
<p>Within htop I cannot see any other CPU consuming services.<br>
<br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe=
 UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font=
-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">I was wondering if the processor is to weak to run stand-alon=
e at these data rates. Since I also wanted
 to run additional=C2=A0decoding on low Modulation and Coding schemes on th=
e processor this might be a problem for me.</span><br>
<br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe=
 UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font=
-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">Could you please give me some information if the x410 should =
be able to run the benchmark at such a
 sampling=C2=A0rate stand-alone?<br>
For that specific case I unfortunately cannot find and results.</span><br s=
tyle=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe UI&q=
uot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font-size=
:15px">
<br style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe=
 UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font=
-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">Many thanks again and best regards!</span><br style=3D"color:=
rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Segoe UI&quot;,&quot;Seg=
oe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;font-size:15px">
<span style=3D"color:rgb(33,33,33);font-family:wf_segoe-ui_normal,&quot;Seg=
oe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif,serif,EmojiFont;fo=
nt-size:15px">Jonas</span><br>
</p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000146de6063a6b965e--

--===============5649993432788054565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5649993432788054565==--

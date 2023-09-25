Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 514E07AD9C7
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 16:11:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E6FD384E94
	for <lists+usrp-users@lfdr.de>; Mon, 25 Sep 2023 10:11:57 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1695651117; bh=Rtx6DD/3m7/0ZJHUoH1uaFB8sgVL3zT6AV48rPrESfs=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=RK7HPiE6dDiJC+pKFG6JHZ4XczSK9Z4ywIejqzbKiJ1sFXy/svBoUwRS6GDGu1Cl2
	 vBm8PLgL3m0c7XWmvzohQuBifFe8dAUGjxb1GTD39MN6dsPTXOs/FfS6+iyaDwQ1qu
	 kJeWrdWML56jtPT/qgsAH33h6vQ7NIIxqKOhqOFrDfKIXqnccO9mlxGS/oNHPPjBmM
	 HPkEVrfLyaEB57wIl/x5kVM7SQ/dqLTPkoTvckvbiRpbepEc8N8cpe7GuqYFrpM6fs
	 mcdPG8LbhZfm8cUVwlfYBimbhAZ0rbahr0G7Mny6GWpiL3JCwb7u914XX4pkobqdS1
	 xwcayddwyOnrQ==
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by mm2.emwd.com (Postfix) with ESMTPS id ACF5C380EE7
	for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 10:11:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="f9hpgT8E";
	dkim-atps=neutral
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-533e7d127d4so3415160a12.3
        for <usrp-users@lists.ettus.com>; Mon, 25 Sep 2023 07:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1695651102; x=1696255902; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xpYSedOr2vTHQt5mGLzjM8i7xXhzo8UqtSdmORUFSmA=;
        b=f9hpgT8Eq0nyu/k8q5bGWCd0wysujHbBrffN6G/Q6BjKHAmtp71o0FyJHStvAHPO3Y
         0dxVvT5ytLi3l+eVyXgalhCn8qBco6OP27mUy+fpoK8HwI9zGGagkSJp0Cqx6WtaqRwO
         6OPkckPaYMNi4tiCMF2NV4uE3KXmlxI2WID7IsEL3v9c6Q4tHUYNqd15ustCiHMJWNPi
         mXdBYRPCTcr6QKYF7lEvSOngcnfM7TObRbSTs04oJkrvHJHyserYK4PidgTvYW5BHOcD
         3CJ0PMJZtIbRPjvKyxhVr3fgcSAACQmaO0CDQOWHr+AK0jh/fSOLbPkmon0Lmb23haGg
         HVYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695651102; x=1696255902;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xpYSedOr2vTHQt5mGLzjM8i7xXhzo8UqtSdmORUFSmA=;
        b=jbGWSv4BHv2RmDgrwwKuEHWqOD1ngZjRC7ln1nXpfgxJ4KPlbrDnMvCjUd85txRacT
         mw3KCfEuLPl+hxdkP1aib0biq+Xl+r3EpgVsTaI8mG6MyC+LIrF3v3DyykXFbQjXIKrV
         BKYJ2OIgiPexNPLeKxdbh3LyP7E4+33wqNu8HxDqUzRQv7nfmclbl7gxcKSf2UOk7TV6
         23ZoDdNfdG9tmGbRsUWfBWrePTwJFM0Ajd1aFu0s6eghk55w4G5u+lJo5kXqam8Oy5SP
         S3mb7FGCLmqmNcjed15awVR7GzsEmSoJ/7Qi5gwlvzYO3AhPFw6D2YO/pRZbZnvhPcgE
         YElQ==
X-Gm-Message-State: AOJu0Yxb8KFAqbUKxZq1Uc951xm90/iUbXMSFe6r9DRJJZ8Z+2FqYpWl
	hg0oH6KMv13p1W2oQCEDlONr4dKbCksvoQacFCvb9C/MqUYNpT9X
X-Google-Smtp-Source: AGHT+IGzsCyPkcWLRnmB3pqARQpkSUsnnZDSkSUDHofBhTtZ0LPlClB6GkpaK4Rd7JIqfbrIIFneZiZozC+5NnU735g=
X-Received: by 2002:aa7:d049:0:b0:531:2b0b:9b8 with SMTP id
 n9-20020aa7d049000000b005312b0b09b8mr5885028edo.7.1695651102387; Mon, 25 Sep
 2023 07:11:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAANLyuawttfqk9emcKXbJR-7NXAcL5xC-pih1xyzrh4Rcjg_QQ@mail.gmail.com>
 <523cda22-5051-28b0-c10d-9fb221222763@gmail.com>
In-Reply-To: <523cda22-5051-28b0-c10d-9fb221222763@gmail.com>
Date: Mon, 25 Sep 2023 10:11:31 -0400
Message-ID: <CAB__hTSt93LkvuuRdWMKC_dO+=AiSXJOzGs7_ELGK07QHrhZkA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: OFAG5BR4377RSCAP6MZ2LZNMFKZEJQ6K
X-Message-ID-Hash: OFAG5BR4377RSCAP6MZ2LZNMFKZEJQ6K
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TX Streamer Send Time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OFAG5BR4377RSCAP6MZ2LZNMFKZEJQ6K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4774694886406463790=="

--===============4774694886406463790==
Content-Type: multipart/alternative; boundary="0000000000009f262506062f89a1"

--0000000000009f262506062f89a1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 25, 2023 at 9:26=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 25/09/2023 08:57, Devin Kelly wrote:
>
> Hello,
>
> I have an application where I=E2=80=99m sending many short bursts to a US=
RP B210
> using uhd::tx_streamer.send() (link below) and I occasionally set the PPS
> time to 0 using set_time_last_pps.
>
> Sometimes I set the PPS time to 0 when there=E2=80=99s still a burst in t=
he USRPs
> queue.  When I do this the burst is transmitted much later than I want.
>
> Is there a way to clear the queue on the USRP or UHD?  That is, if I send
> a TX burst in the distant future can I cancel it before it gets
> transmitted?  Can I clear everything in the TX queue?
>
> I=E2=80=99ve read on this list that calling the stream destructor will do=
 this, is
> that right? I=E2=80=99ve tried this without success.
>
> Thanks!
> Devin
>
> This is an unusual scenario -- what is the reason for constantly resettin=
g
> the timer to zero?   This is not the kind of scenario that
>   was contemplated in the architecture.  I don't think there's a "flush
> pending things in the queue" operation possible--although
>   I admit it might be useful.
>

Like Marcus, I don't know of a way to flush the stream.  But, I do want to
add my two cents of the utility of such a capability.

In many cases, samples get "stuck" in RFNoC blocks.  There are a variety of
reasons such as the timing reason that is the cause of this post, badly
written custom RFNoC blocks (my specialty), and blocks such as FFT that can
get a partial vector of samples in the queue.  In any case, it is not
uncommon to need to power cycle the device for the simple reason of
clearing samples out of the queue of one block or another.  It seems that
there could be an "agreed upon RFNoC standard for 'clear'" or something
similar such that a block would be expected to clear its queues (in a
similar manner to the way in which an RFNoC block is supposed to respect
the 'reset' signal).
Rob

>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009f262506062f89a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 25, 2023 at 9:26=E2=80=AF=
AM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonb=
raun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 25/09/2023 08:57, Devin Kelly wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"auto">
       =20
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">Hello,</span><br st=
yle=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;fo=
nt-style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;white-space:normal=
;word-spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none"></span><br style=3D=
"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-sty=
le:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">I
          have an application where I=E2=80=99m sending many short bursts t=
o a
          USRP B210 using uhd::tx_streamer.send() (link below) and I
          occasionally set the PPS time to 0 using set_time_last_pps. =C2=
=A0</span><br style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none"></span><br style=3D=
"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-sty=
le:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">Sometimes
          I set the PPS time to 0 when there=E2=80=99s still a burst in the
          USRPs queue.=C2=A0 When I do this the burst is transmitted much
          later than I want.</span><br style=3D"color:rgb(0,0,0);font-famil=
y:UICTFontTextStyleBody;font-size:17px;font-style:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;text-decoration:=
none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none"></span><br style=3D=
"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-sty=
le:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">Is
          there a way to clear the queue on the USRP or UHD?=C2=A0 That is,
          if I send a TX burst in the distant future can I cancel it
          before it gets transmitted?=C2=A0 Can I clear everything in the T=
X
          queue?</span><br style=3D"color:rgb(0,0,0);font-family:UICTFontTe=
xtStyleBody;font-size:17px;font-style:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;white-space:normal;word-spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none"></span><br style=3D=
"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-sty=
le:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">I=E2=80=99ve
          read on this list that calling the stream destructor will do
          this, is that right? I=E2=80=99ve tried this without success.</sp=
an><br style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-siz=
e:17px;font-style:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;white-spa=
ce:normal;word-spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none"></span><br style=3D=
"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;font-sty=
le:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">Thanks!</span><br s=
tyle=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;font-size:17px;f=
ont-style:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;white-space:norma=
l;word-spacing:0px;text-decoration:none">
        <span style=3D"color:rgb(0,0,0);font-family:UICTFontTextStyleBody;f=
ont-size:17px;font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wh=
ite-space:normal;word-spacing:0px;text-decoration:none">Devin</span></div>
      <br>
    </blockquote>
    This is an unusual scenario -- what is the reason for constantly
    resetting the timer to zero?=C2=A0=C2=A0 This is not the kind of scenar=
io that<br>
    =C2=A0 was contemplated in the architecture.=C2=A0 I don&#39;t think th=
ere&#39;s a
    &quot;flush pending things in the queue&quot; operation possible--altho=
ugh<br>
    =C2=A0 I admit it might be useful.<br></div></blockquote><div><br></div=
><div>Like Marcus, I don&#39;t know of a way to flush the stream.=C2=A0 But=
, I do want to add my two cents of the utility of such a capability.=C2=A0=
=C2=A0</div><div><br></div><div>In many cases, samples get &quot;stuck&quot=
; in RFNoC blocks.=C2=A0 There are a variety of reasons such as the timing =
reason that is the cause of this post, badly written custom RFNoC blocks (m=
y specialty), and blocks such as FFT that can get a partial vector of sampl=
es in the queue.=C2=A0 In any case, it is not uncommon to need to power cyc=
le the device for the simple reason of clearing samples out of the queue of=
 one block or another.=C2=A0 It seems that there could be an &quot;agreed u=
pon RFNoC standard for &#39;clear&#39;&quot; or something similar such that=
 a block would be expected to clear its queues (in a similar manner to the =
way in which an RFNoC block is supposed to respect the &#39;reset&#39; sign=
al).</div><div>Rob</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--0000000000009f262506062f89a1--

--===============4774694886406463790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4774694886406463790==--

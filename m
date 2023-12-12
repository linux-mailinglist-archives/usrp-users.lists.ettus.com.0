Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44DBD80F15D
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 16:42:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4C6A4384D10
	for <lists+usrp-users@lfdr.de>; Tue, 12 Dec 2023 10:42:03 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702395723; bh=fH4K44Vibit5KX1mmSioUTOWhIXELqjmbC+4QTDV0ow=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=n6wngGATSvQokL++rM2g8vTk5dnVdNtdigyKqwbu5xc90Zv6W8ErIFkCzn4/EQ27a
	 pj4OwT/evCci8ewCXTThJ6OzACFMUhdXZuB6pWTBTQD55KjtuAITn53C0l00kzudxK
	 /pDme9vWaAcdJDvv6QtAjIY7EussPMUafj6JrvwD6TycUX+7uXfz54WjKyLvKpHGL4
	 8TV29gkwQHkc2rzgdwy15IBninIdYBpnx46zbDz70vKcUVhOp2/h9Y+7IST65xzMuO
	 xKhnO5JQvXwSrW3UatsD2MwoXUK6N6UaHk6q8K8vuMFfPGlMzL6/edopeaRl0B0WBX
	 KC/W28BKgBJlw==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id CC5563849E9
	for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 10:41:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="OGcxleqA";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-54c7744a93fso8182236a12.2
        for <usrp-users@lists.ettus.com>; Tue, 12 Dec 2023 07:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1702395715; x=1703000515; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=47/HPICT+yarvkIo07g3uvR20Hh0x0Et1f2YorhLlB0=;
        b=OGcxleqAlZRIYqcC9bhya42lpxH+cQbqDBW3r7bBDoP8G48F29mQIkKlZYNErVv7zS
         jHcZRKdqFoUifqHdCBMlEU+QjwFImF+DG49pXfbi6nrLds+T4UekJfLQwdFc8pTxiLaB
         kZ1gMKCW7j9c4CXMWIszsSYE/LOUOwaOLignxMs7E8iJQem2BpM9lgdmzOYOqUq/CBOj
         QSQO0tGpyDGxZHhOq97B+A+7nWJVoPBfastpunVh+mapzHvMXahhpAo9Y+Fj++6cVPam
         VPdFBxogGWW+Xb7wnP3rI1YTkXcyNvVmF+5XCZVjB13AMAUwd1GgTbWM5Jjbg7Mt+A4S
         9S+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702395715; x=1703000515;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=47/HPICT+yarvkIo07g3uvR20Hh0x0Et1f2YorhLlB0=;
        b=xEjr0C0F8sUavAHLrKoX0wcyqugDjTZ9P8P8B9oqEI6Jv4ZtROoUpORwrtpgaThpIX
         dtKTfKwcnQSqS4Wj2AQJexjLp9qZDZAwnly1twESs8Z3nHDnNQiDvBt0A8wPLOzWwAY7
         a/lESIWp457UWvlnkVsKEWsAv18SDuCQnYplFHXJBqMSJNBPqEAVOGCdF79YCFLs8Ery
         /3F7ZxqUqpb5xEn/wk4AN3S4rvpTMoQzSFTnmMm0qBZMzlqWDG0lBk3nOJ69LpwF12xK
         af9hTZPJ4Op2T026aopfo2IaihgCjaqZqXqJfwK86Rp3/a+YpmiZIOOs4Y7tBCFjKsQh
         qs0Q==
X-Gm-Message-State: AOJu0YyT4pGtq5z8jc/vhhuTXpnwVHA6JMPYCxCNndHw2dWJw10lGf33
	m/qtfKfhK/boqAHGntj3PW35q6RmssXz3++0EtY7wkQ6q556qDEs
X-Google-Smtp-Source: AGHT+IFkChpJSzWKaUZuhQbkZ6YbYy7dZOhgW1rmArpnQNLJZQM93tnopZJExqyhOI2bukzTM/eXHcttdhCwfh2MFIU=
X-Received: by 2002:a50:9fe6:0:b0:54c:b368:f468 with SMTP id
 c93-20020a509fe6000000b0054cb368f468mr3502740edf.16.1702395715372; Tue, 12
 Dec 2023 07:41:55 -0800 (PST)
MIME-Version: 1.0
References: <Ukuh0J7vQ5pN991Zc1p5jmNhY0n5RXivBEX15K5M4@lists.ettus.com> <3e2befc5-96c4-4651-8e97-b54f05e9ae44@gmail.com>
In-Reply-To: <3e2befc5-96c4-4651-8e97-b54f05e9ae44@gmail.com>
Date: Tue, 12 Dec 2023 10:41:46 -0500
Message-ID: <CAB__hTQX1GaYou93Ea_zeFn54+HMFvvM=aJUKMu3+0dgNpjsaw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: TTO7DVD6LMJMJX5VITGBKJWVD773DW6R
X-Message-ID-Hash: TTO7DVD6LMJMJX5VITGBKJWVD773DW6R
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Read user registers with RFNoC
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TTO7DVD6LMJMJX5VITGBKJWVD773DW6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7203073686594890392=="

--===============7203073686594890392==
Content-Type: multipart/alternative; boundary="000000000000e26382060c51e3ce"

--000000000000e26382060c51e3ce
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maria,
I don't know the exact problem, but I want to mention that UHD "properties"
can behave in unexpected ways. In my opinion, they are not well suited to
providing a changing property value if UHD is unaware that a change has
occurred. The UHD "get" function of the property does not execute unless
UHD thinks that the property is stale (dirty).  If UHD thinks that the
property is not stale, it just returns the previous value.  I think that
you can tell UHD that the property is "always dirty", but then this
will cause UHD to read it frequently.  I have not found a way to tell UHD
to execute my "get" property function only when I query the property.

Since I do not use gnuradio, I don't know if using "properties" is the only
way available to you.  By using UHD directly, I can just call "peek" or
whatever function I create whenever I want to read my FPGA register.  If
this is possible from gnuradio, this may be your answer.

Otherwise, I have found a workaround by calling the "set" property function
(with a bogus value that is ignored) which can be used to cause the "peek"
to execute and update the property value. You just need to make sure that
your bogus value is not equal to the current property value or else UHD
will think it doesn't need to execute anything.

Rob


On Tue, Dec 12, 2023 at 9:59=E2=80=AFAM Marcus D. Leech <patchvonbraun@gmai=
l.com>
wrote:

> On 12/12/2023 09:41, mamuki92@gmail.com wrote:
>
> Hi Marcus,
>
> Thanks for your answer.
> So, there shouldn=E2=80=99t be any problem on the UHD side with the readi=
ng, is a
> gnuradio thing, right?
> From what I see on the Python code generated for the Function Probe, it
> calls the =E2=80=9Cget_int_property=E2=80=9D register function, which see=
ms the one that is
> used for the register reading in UHD, but I will cross-post the question =
in
> discuss-gnuradio so they can help me clarify.
>
> Kind Regards,
>
> Maria
>
> I didn't immediately see anything, but I'm not an RFNOC expert.  I
> suggested the diagnostics within your flow-graph just to
>    make sure that it is actually getting called.  Just put a diagnostic
> print inside your "get_int_property" function.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000e26382060c51e3ce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Maria,<div>I don&#39;t know the exact problem, but I wa=
nt to mention that UHD &quot;properties&quot; can behave in unexpected ways=
. In my opinion, they are not well suited to providing a changing property =
value if UHD is unaware that a change has occurred. The UHD &quot;get&quot;=
 function of the property does not execute unless UHD thinks that the prope=
rty is stale (dirty).=C2=A0 If UHD thinks that the property is not stale, i=
t just returns the previous value.=C2=A0 I think that you can tell UHD that=
 the property is &quot;always dirty&quot;, but then this will=C2=A0cause UH=
D to read it frequently.=C2=A0 I have not found a way to tell UHD to execut=
e my &quot;get&quot; property function only when I query the property.</div=
><div><br></div><div>Since I do not use gnuradio, I don&#39;t know if using=
 &quot;properties&quot; is the only way available to you.=C2=A0 By using UH=
D directly, I can just call &quot;peek&quot; or whatever function I create =
whenever I want to read my FPGA register.=C2=A0 If this is possible from gn=
uradio, this may be your answer.=C2=A0</div><div><br></div><div>Otherwise, =
I have found a workaround by calling the &quot;set&quot; property function =
(with a bogus value that is ignored) which can be used to cause the &quot;p=
eek&quot; to execute and update the property value. You just need to make s=
ure that your bogus value is not equal to the current property value or els=
e UHD will think it doesn&#39;t need to execute anything.</div><div><br></d=
iv><div>Rob</div><div><br></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 12, 2023 at 9:59=E2=80=AFAM Mar=
cus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 12/12/2023 09:41, <a href=3D"mailto:mamuki92@gmail.com" target=
=3D"_blank">mamuki92@gmail.com</a>
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>Hi Marcus,</p>
      <p>Thanks for your answer.<br>
        So, there shouldn=E2=80=99t be any problem on the UHD side with the
        reading, is a gnuradio thing, right?<br>
        From what I see on the Python code generated for the Function
        Probe, it calls the =E2=80=9Cget_int_property=E2=80=9D register fun=
ction, which
        seems the one that is used for the register reading in UHD, but
        I will cross-post the question in discuss-gnuradio so they can
        help me clarify.</p>
      <p>Kind Regards,</p>
      <p>Maria</p>
    </blockquote>
    I didn&#39;t immediately see anything, but I&#39;m not an RFNOC expert.=
=C2=A0 I
    suggested the diagnostics within your flow-graph just to<br>
    =C2=A0=C2=A0 make sure that it is actually getting called.=C2=A0 Just p=
ut a
    diagnostic print inside your &quot;get_int_property&quot; function.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><span style=3D"white-space:pre-wrap">
</span></blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000e26382060c51e3ce--

--===============7203073686594890392==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7203073686594890392==--

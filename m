Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9EF9D4833
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2024 08:29:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DDC1B3860CB
	for <lists+usrp-users@lfdr.de>; Thu, 21 Nov 2024 02:29:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1732174170; bh=lUjImtL89ITQI8gCzdaQn3Q86n3bVyB1Jvq4MLG+xWw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Sbwmb+V90OKajwNDfGxWi4JRHxXLlOdr6Vtv2UbkKluBYAUycet/bPIMlCQ624BCa
	 ddJXi5Od88eftTlGRk+RDP/pTdafAjWHDoFUxI5dCMf3j8afUSevnZmoFa3Y83Cmvp
	 AcJMQLFg3NDJIEyIOBr+A3b9YFapGufFjfRkgUi+ks68ewO7NX7Tpazv40HMSPySvQ
	 bBPBByhKaZVQdncW1vYUv7mSMNF4Z+YZUCh0EOt+nKRMlCv5sNxRaTs4QlA9v9ASMs
	 j6HScgamkpjE/BiNlOWxHgDKdUInoIoXN4xRAGWCBcE4++cGc5PXNo7RVFdiXfDL1Z
	 ONEEWki5wNlsA==
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	by mm2.emwd.com (Postfix) with ESMTPS id B3732385DF1
	for <usrp-users@lists.ettus.com>; Thu, 21 Nov 2024 02:29:00 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="OiMP2hFz";
	dkim-atps=neutral
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2fb5fa911aaso10065921fa.2
        for <usrp-users@lists.ettus.com>; Wed, 20 Nov 2024 23:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732174139; x=1732778939; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2ghV0l+BqltOx0cSNIatKNrayRL6sUh+F7dggQOg3mY=;
        b=OiMP2hFzTTV0OET8ImgNnX4rvwXg+GC32Of598XJr2Bha3JxTUKwC5GzQ/G5/+xxB1
         qcBpYPMQeqD46NC0GKjNcVsJjifocP4MFivvBdtd0ZLbxem/+/qocWwDG/PVYX21nnqw
         i55admIjg5etNbU8Pgkn81uMCQFlzkYJSeajjgm9en5KyeFW1FHoEmaTnhxSjf6NJDB9
         PrEYm/R1WXfeetg6TaiGbt6fwOqB04ldhxyXQSh8XLl/jmP7AVCnxLLvYPZ7ihSX6DV+
         EjVkdW9BdX/VCA9kdr27uhgiS4hYLq4oAxvtQnBqFUAjbrGrpj3Py9eOynE9KQxSfi43
         /x9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732174139; x=1732778939;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ghV0l+BqltOx0cSNIatKNrayRL6sUh+F7dggQOg3mY=;
        b=ozShWCAArbM1xO4n+q3JaCHL//e/PzcbZq0gFPMqvL2DrOkDf6UaWc/t61Yaef33KI
         InmjcisW4TXqaLuJfFDB0/gR1hz9eDlXY4Crq0FG2IB5x3itpNtaB+w8w0pKRxnnlk2d
         CffabInnVgA8ijjNdFoiUxxDXSiTxw9ErgiGhcZat+7otXGOqCzE01wxDX31W33vkIJa
         W0TcrFIn52ceriv9wr/4+tHb6QP7oyKlr1Wau884DDy/uAKH5dW5mMZjwbFWxhwqot+P
         tmO82rNvRtvJhgLHSqTyOD6pzbO59sjBGepDxrnURSS31c1n9xIm4DhadfHxRlJyPkIV
         26sA==
X-Gm-Message-State: AOJu0YzHVGKulcccJP9vayM43vOYntnFjgguJy3jVTNFjWMcE8zYasab
	gt0DjDqIrtGxJn2F8toEzEOEixgWLxih1z19uEzs6GzRKdrQw/Be5j30+fh1hLvsmePuqVu3oJT
	mHBQ17NXW2bT8VIW8YXt4UGjqVPF8cpsa5Wrxm2CX
X-Google-Smtp-Source: AGHT+IHA2WcO5tsS1D5db8990Se4QYUTMSyDfNOoEWFcZFQ/hLpKng3qRrevhFBYpO0MyPZyPQvBZbT0FxDNyL9STOE=
X-Received: by 2002:a05:651c:989:b0:2fb:3960:9671 with SMTP id
 38308e7fff4ca-2ff8db4cd38mr43472961fa.15.1732174138751; Wed, 20 Nov 2024
 23:28:58 -0800 (PST)
MIME-Version: 1.0
References: <in6Vs0ePFYK6PpSML7FpRjOlYUak7skNKCPMx2ieI@lists.ettus.com> <CAEL-RA33wKKfLWP9NspssMucp8+yXMjg0fSiC6N8iuS7cF6FOQ@mail.gmail.com>
In-Reply-To: <CAEL-RA33wKKfLWP9NspssMucp8+yXMjg0fSiC6N8iuS7cF6FOQ@mail.gmail.com>
From: hui cj <cjh416593819@gmail.com>
Date: Thu, 21 Nov 2024 15:28:44 +0800
Message-ID: <CAEL-RA25oFPWg00N14WQM9BrWQtWKnzzEU83OXGghi_ZWnsZ3g@mail.gmail.com>
To: william.haftel@bluehalo.com
Message-ID-Hash: FQP4XW4JLH5TEAZY3L7ZX4LZMXTVNRAG
X-Message-ID-Hash: FQP4XW4JLH5TEAZY3L7ZX4LZMXTVNRAG
X-MailFrom: cjh416593819@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can only control 1 pin of x310 GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FQP4XW4JLH5TEAZY3L7ZX4LZMXTVNRAG/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0591216008625184285=="

--===============0591216008625184285==
Content-Type: multipart/alternative; boundary="0000000000003ac5b90627673890"

--0000000000003ac5b90627673890
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you want to set both pin 0 and pin 1 to high, the third parameter should
be 0x0003.

In this case:
If your last parameter is 0xFFFF, both pin 0 and pin 1 will be set to high,
while all other pins will be set to low.
However, if your last parameter is 0x0003, only pin 0 and pin 1 will change
to high, and the values of the other pins will remain unchanged.


hui cj <cjh416593819@gmail.com> =E4=BA=8E2024=E5=B9=B411=E6=9C=8821=E6=97=
=A5=E5=91=A8=E5=9B=9B 15:24=E5=86=99=E9=81=93=EF=BC=9A

> In your last example, it should be
> usrp->set_gpio_attr("FP0", "OUT",  0xFFF  , 0xFFF);
> The third parameter should also be a mask.
>
>
> Will Haftel via USRP-users <usrp-users@lists.ettus.com> =E4=BA=8E2024=E5=
=B9=B411=E6=9C=8821=E6=97=A5=E5=91=A8=E5=9B=9B
> 05:38=E5=86=99=E9=81=93=EF=BC=9A
>
>> This doesn=E2=80=99t quite work for me - in the last example I gave, I t=
ry using
>> 1 mask to set all of the bits high but still only pin 0 is set. I am abl=
e
>> to control all of the pins using ATR, but am not sure why the manual api
>> isn=E2=80=99t giving me the same results.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000003ac5b90627673890
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">If you want to set both pin 0 and pin 1 t=
o high, the third parameter should be 0x0003.<br><br>In this case:<br>If yo=
ur last parameter is 0xFFFF, both pin 0 and pin 1 will be set to high, whil=
e all other pins will be set to low.<br>However, if your last parameter is =
0x0003, only pin 0 and pin 1 will change to high, and the values of the oth=
er pins will remain unchanged.</div><div dir=3D"ltr"><br></div><div dir=3D"=
ltr"><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">hui cj &lt;<a href=3D"mailto:cjh416593819@gmail.com">cjh416593819@gmai=
l.com</a>&gt; =E4=BA=8E2024=E5=B9=B411=E6=9C=8821=E6=97=A5=E5=91=A8=E5=9B=
=9B 15:24=E5=86=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">In your last example, it should be<di=
v>usrp-&gt;set_gpio_attr(&quot;FP0&quot;, &quot;OUT&quot;,=C2=A0

0xFFF=C2=A0 , 0xFFF);</div><div>The third parameter should also be a mask.<=
/div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">Will Haftel via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; =
=E4=BA=8E2024=E5=B9=B411=E6=9C=8821=E6=97=A5=E5=91=A8=E5=9B=9B 05:38=E5=86=
=99=E9=81=93=EF=BC=9A<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><p>This doesn=E2=80=99t quite work for me - in the last example I gav=
e, I try using 1 mask to set all of the bits high but still only pin 0 is s=
et.  I am able to control all of the pins using ATR, but am not sure why th=
e manual api isn=E2=80=99t giving me the same results.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div></div>

--0000000000003ac5b90627673890--

--===============0591216008625184285==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0591216008625184285==--

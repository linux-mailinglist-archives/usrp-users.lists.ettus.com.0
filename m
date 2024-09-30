Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E633998A861
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2024 17:23:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F0223385799
	for <lists+usrp-users@lfdr.de>; Mon, 30 Sep 2024 11:23:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1727709789; bh=f/kxoZYCajaPH5FF5RDwVPOaCkEtnFoNThHpLHa2JLo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=bh5XSEw5vJsgjTbzsIfo4aDO7zyh+EpXI7VG54Z7eGfbVuf3uEsBhSihPjBdcDETb
	 XUNHPnBL9EO7WSKb55tjpacPkP86/yNc07nl7XFvXncOR3ihHWIU997uTYG03msqcx
	 w2dbSjNik4tqKhLW0Ste6y70XCM5JMJy1fT1lOgdQAc/hl3Hidvj9ItBPtEuHMGQGH
	 c6VtQVIRvG3XZ9lGSNyirtUnlCSOVjpIZDDBb8+tzGwrF9jiV4YsumMzQsgmgKpx7R
	 5hV9XQpAqCO6sDdHR6fQEEXfwu/HFkHNC7S5ZlDDeGCQdLH/pJYVRgQGkCuMcqGP/b
	 oNV3eArRuGi8Q==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id EDB83385301
	for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2024 11:22:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="mP3YVG2w";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5c5bca59416so5464321a12.1
        for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2024 08:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1727709731; x=1728314531; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0d5mnevItbyy2+Oj77kjvQxYGbu58quHeaTNQVosa2Q=;
        b=mP3YVG2w8tI0UC4vNZs2QkzaL3YYFEdMGfCUmLa853Wh6PXpqVBd9mHF7gaZr016n8
         2J2IpvgwreQ0feMIiLPMFJXtnow0CLL0ZRax/fugQM4ov7xHLJXvwrvfb3Tl7duO1z5x
         UHp2TkEXnzg7iU77bPYici8YEWYrxEifwIAAygz0mak+QP9GHfCV+9qjYpTUf05GP7Cx
         0uZ0fbOQiZT/u2jmeqFnvyfEP5cWp6CnmiBilpip8ughji0hYuPBNCSsW/MHDd+3WYXC
         Iup5G2LmrQ99OWPVgfUbI907SbkzJ31J4uzzxJGSJyUSaaMHYjQ69EI51h9Zr2mbD2sm
         h9xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727709731; x=1728314531;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0d5mnevItbyy2+Oj77kjvQxYGbu58quHeaTNQVosa2Q=;
        b=iQxFMzGFHPnk/Ys2mzNv3yfwyWQJuZDOlYg6Dpz0QcSb2IZkCrV8pHXqwKuiNuj6Oo
         QPqIFv+C1Y+rBoyka4UvflzJXmj/Cak+Kkva/GYvbpHbJmO5SW0Oo8wuuH8GIaFLmzXA
         Ktuyt/vgusjiW5txrwR/CjWf7Q6vKgKpTqTixTt64ic3EFr0LtuTdeBB5WKghyMguBfD
         rIXbD+rLpcuJA8XviwJUflNppe5eBvcQMihMRN2Jc0nge8lR9cNec4zZtJOOKFOjvSq4
         TxF0LI22Qg63IXKlK9uFCzsTqVY7kU8tMDfW9pqqhmjfLe7yaVn6IZJUxEVFYoZnDzEj
         EqtQ==
X-Gm-Message-State: AOJu0YxDBmBTDn8rL8quODbYU4Rm0hy+Tf7TINveLxC/PjRTbFY4XJpt
	AYROJCQZP2Z1eodQ5N9zDHx2YpBy3o8NyhGzjmfZMzAPvJ6BTeLGc1Z+L+N+WwFgKO03OLFD7cv
	+dBsSRuquCAUwSnowTiAoLvH9FBBjA2TlWy19m7k70tRVL/rNAGM=
X-Google-Smtp-Source: AGHT+IHcnbyWvWnP38oHZp8PQpNza8XO6cZTTJNDdcgMu0oSr7nLK3vhqh1Spk7E1VXGCNcDRhtttyYYUh9FAOzt/Oc=
X-Received: by 2002:a05:6402:529b:b0:5c8:77a5:d486 with SMTP id
 4fb4d7f45d1cf-5c882608f30mr9337786a12.33.1727709730630; Mon, 30 Sep 2024
 08:22:10 -0700 (PDT)
MIME-Version: 1.0
References: <Gkl893xWgZWj4UDsn7YJDkQPJN0TR7IO7eROIy5X30@lists.ettus.com>
In-Reply-To: <Gkl893xWgZWj4UDsn7YJDkQPJN0TR7IO7eROIy5X30@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 30 Sep 2024 17:21:59 +0200
Message-ID: <CAFOi1A5oHApWQeSxA3J+_cCb_LcP8UcvcNW7hSyiy-4GE0Biog@mail.gmail.com>
To: william.haftel@bluehalo.com
Message-ID-Hash: A4QZ22UHOJJWXCTPOHGXGM6IBMWRE4K4
X-Message-ID-Hash: A4QZ22UHOJJWXCTPOHGXGM6IBMWRE4K4
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble controlling GPIO on x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A4QZ22UHOJJWXCTPOHGXGM6IBMWRE4K4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0239761046130815966=="

--===============0239761046130815966==
Content-Type: multipart/alternative; boundary="000000000000c50a40062357c41e"

--000000000000c50a40062357c41e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

It's the latter. As you can see, physical pin 1 for example is +3.3V, and
not a data pin (and then you need to shift the rest up).

--M



On Mon, Sep 30, 2024 at 4:05=E2=80=AFPM Will Haftel via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Yes, I was measuring the pins with an oscilloscope while the application
> was running.
>
>
> Maybe I am misunderstanding how the pin mapping works. Does (1<<2)
> correspond to Pin 2/Data[0] or Pin 4/Data[2]? When writing this code, my
> assumption was the former.
>
>
> Thanks,
>
> Will
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c50a40062357c41e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It&#39;s the latter. As you can see, physical pin 1 f=
or example is +3.3V, and not a data pin (and then you need to shift the res=
t up).</div><div><br></div><div>--M<br></div><div><br></div><div><br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Sep 30, 2024 at 4:05=E2=80=AFPM Will Haftel via USRP-users &lt;<a h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Yes,=
 I was measuring the pins with an oscilloscope while the application was ru=
nning.</p><p><br></p><p>Maybe I am misunderstanding how the pin mapping wor=
ks.  Does (1&lt;&lt;2) correspond to Pin 2/Data[0] or Pin 4/Data[2]? When w=
riting this code, my assumption was the former.</p><p><br></p><p>Thanks,</p=
><p>Will</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c50a40062357c41e--

--===============0239761046130815966==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0239761046130815966==--

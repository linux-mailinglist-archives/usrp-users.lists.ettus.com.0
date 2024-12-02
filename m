Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AD29E091E
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 17:54:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B483D385937
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 11:54:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733158470; bh=lCw8GEi6CwgbRLFn0iBFQ8caIAe0bNG6WdWmbpPTLWE=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=li3gLpQa/5qISlYHC8VTJcW42YjhTBEM7YaSz6Sten9mCnX+ksLlOkRz13Dd9JuJe
	 R0nFEv3SfVApgggRQIkWAiscupDMy/oyW8tlFHh4IEr9/LzdtHRAQYqibNddBRG8Tg
	 wjxbQgoSuWf9EpbkpPcCLuRKPVeHSAqZUabJQr8a8VSCkFFIFZAE/Lmc1wcPrBPr6e
	 EJdXY81OHFJYJJdIjXaFtJb7etnVx8aa/UvLvXRhcpC9J8T8tJYm54NPgj40AEFQcH
	 IEA9CDZNDaA9FEMc4YS5NgGt6QwfhSdKLiQFiPW29Bh5tERBG7NUAbwRKmNWsj96f2
	 mzqtXvZcbKxGw==
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id C1C2D385849
	for <usrp-users@lists.ettus.com>; Mon,  2 Dec 2024 11:53:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HaX0+whc";
	dkim-atps=neutral
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e396c98af45so3912899276.1
        for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2024 08:53:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733158434; x=1733763234; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6kjRj0Ih3bVPWkoGLivOn+5aW6QihSE7MLjBmUV51qk=;
        b=HaX0+whcuczLOBjfi2bh/grMWgSereumQX4rU2B/h+hU1izrQmyqdOait3wLmOBH8P
         yuYPt8D5+ygdR/0Rox5LMhyXflR5WvnqcIFXbuoMqUp9HkVPHW2M47k/8YXjO+57zLcR
         0Rv40upz+ZsWdu3i2Uc2Kr9avHAWOC5R7LiWTOMX/p4nT5QVqgucHyJWp9o/1ULYkmAS
         ltPo6M7yJrvvM9fYhcleCwqHmjfd6l3EZE6T5tzEVevMKcMLFrRfwzSMpJQSK1ndlKrD
         uVO7wP4QOASZITNFnblBqsuC16oDUgxUMysy+KNFyOBR9d1Dek6JfTR5fUII4CBWOy9y
         /DKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733158434; x=1733763234;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6kjRj0Ih3bVPWkoGLivOn+5aW6QihSE7MLjBmUV51qk=;
        b=P7WDzcr/08xahBkAPl6sFXBqXD1gezLSbsLrbjCn48oaOLo6XCRqp3/r8VXXuxz893
         sP/ZeUta82u8QrrolU45I3WMIfY+v27cNDhfBB0btBHTzqhYsHjlxDTodVB5MxXrTnZH
         yNmfoPHQu/RLVzRHPo8+VzfIO5KsBX3Itk7qqnaq+S6+prr2tsA2KxY9ycDgcNAltiJ1
         xJX+KPbiBdewEW9SRS/0dSz8mz4eXSw4mkAQu/povWF+rLW2BlFp0l3tyBUfpYqYwtWC
         wUtNJRAoIFBIO5jJyHqXxuTRYNkJJ78ueKZqtbMZW/Mep6C/pqkbo5BvQqM7K47B0TdE
         cR/A==
X-Gm-Message-State: AOJu0Yw3DxIv9lrMvPAkvdALbyEOzVNa271GYWaUEtwyaSjgmPV8H1VX
	7kqSZXLavnwi+P0I1uzn7nsLF6Ispsjhzl/9TIQzr+n3avrCxn/FOLhI2JpZRU2zNyYLNm5fHYV
	2t0CCzHDbJLKWNXll5xjDCj0+cuce0UZF
X-Gm-Gg: ASbGncuG5DdU8Knk9jIOB8qWI7Hrtu4GjKGHpr1Ic7h5rNl0vWozcwOlYgKIK0B03wi
	DXJLILo3SJ2gFiah6wsV8WpiQlOuRBHJABg==
X-Google-Smtp-Source: AGHT+IE9bleR0SJXMJ2Bjt9PjUQOoz0VJzuslXUV46tmdyQgrz1DpkreCeMY5Qk7YrhR6ONHM7GeMztPtN9x+ULFfvE=
X-Received: by 2002:a05:6902:2b12:b0:e38:19a6:bbb7 with SMTP id
 3f1490d57ef6-e395b8ba84amr24123812276.18.1733158433877; Mon, 02 Dec 2024
 08:53:53 -0800 (PST)
MIME-Version: 1.0
References: <CACPignSFf5S5YPP93JKX+TMCMd-SF+wR1AammdqJhtJhZ-4V0w@mail.gmail.com>
 <af845f78-e539-428c-84ff-31cf459ef42b@gmail.com>
In-Reply-To: <af845f78-e539-428c-84ff-31cf459ef42b@gmail.com>
From: Muhammad Anas <anasg8274@gmail.com>
Date: Mon, 2 Dec 2024 21:53:41 +0500
Message-ID: <CACPignQtpeRaA0sqL_Xi=ersE2Qx+Ov0_KZ9_pFaV7r1Q3uKHw@mail.gmail.com>
To: patchvonbraun@gmail.com
Message-ID-Hash: Y6FLNPRGJXX46XWEBATKQQO4BUYQREDW
X-Message-ID-Hash: Y6FLNPRGJXX46XWEBATKQQO4BUYQREDW
X-MailFrom: anasg8274@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N210 Gain Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/Y6FLNPRGJXX46XWEBATKQQO4BUYQREDW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7967708796425717860=="

--===============7967708796425717860==
Content-Type: multipart/alternative; boundary="000000000000ca787206284c64f4"

--000000000000ca787206284c64f4
Content-Type: text/plain; charset="UTF-8"

Daughtercard is WBX, so how much gain should I achieve in Spectrum analyzer?

On Mon, Dec 2, 2024, 9:30 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 02/12/2024 05:43, Muhammad Anas wrote:
>
> Dear,
>
> I'm using USRP N210 with GNU radio companion for transmission of signal of
> 50M Hz and testing the signal on the R&S FSH20 Spectrum analyzer using SMA
> cable, unfortunately I am not getting the desired gain level of 20 dBm
> according to the datasheet of USRP, in the spectrum analyzer. I'm getting
> -92 dBm at 0 level gain from the usrp sink block in GNU radio and getting
> the only max -68 dBm gain at 25 gain level from USRP sink block. After 25,
> to even 100 level, I'm still getting the -68 dBm at the receiving point.
> Here are my settings of FSH20:
>
> Ref: -20 dBm
> Att: 20 dB
> RBW and VBW: 30k Hz
> SWT: 1.29 s
>
> Kindly, help me that if the problem is with the USRP or I will do
> something to achieve the desired gain of 20 dBm, without using any external
> amplifier. What are the reasons behind this problem and how I can diagnose
> them.
>
> Regards
> Muhammad Anas
>
> You haven't said which daughtercard you're using.  I don't think ANY of
> our radios will produce +20dBm, even at
>   MAX gain with high baseband magnitude.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ca787206284c64f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Daughtercard is WBX, so how much gain should I achieve in Sp=
ectrum analyzer?</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Dec 2, 2024, 9:30 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@=
gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 02/12/2024 05:43, Muhammad Anas
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"auto">Dear,
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">I&#39;m using USRP N210 with GNU radio companion =
for
          transmission of signal of 50M Hz and testing the signal on the
          R&amp;S FSH20 Spectrum analyzer using SMA cable, unfortunately
          I am not getting the desired gain level of 20 dBm according to
          the datasheet of USRP, in the spectrum analyzer. I&#39;m getting
          -92 dBm at 0 level gain from the usrp sink block in GNU radio
          and getting the only max -68 dBm gain at 25 gain level from
          USRP sink block. After 25, to even 100 level, I&#39;m still
          getting the -68 dBm at the receiving point. Here are my
          settings of FSH20:</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Ref: -20 dBm</div>
        <div dir=3D"auto">Att: 20 dB</div>
        <div dir=3D"auto">RBW and VBW: 30k Hz</div>
        <div dir=3D"auto">SWT: 1.29 s</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Kindly, help me that if the problem is with the
          USRP or I will do something to achieve the desired gain of 20
          dBm, without using any external amplifier. What are the
          reasons behind this problem and how I can diagnose them.</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Regards</div>
        <div dir=3D"auto">Muhammad Anas</div>
      </div>
    </blockquote>
    You haven&#39;t said which daughtercard you&#39;re using.=C2=A0 I don&#=
39;t think ANY
    of our radios will produce +20dBm, even at<br>
    =C2=A0 MAX gain with high baseband magnitude.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><span style=3D"white-space:pre-wrap">
</span></blockquote>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--000000000000ca787206284c64f4--

--===============7967708796425717860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7967708796425717860==--

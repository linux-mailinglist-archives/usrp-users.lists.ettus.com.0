Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 65092ABE606
	for <lists+usrp-users@lfdr.de>; Tue, 20 May 2025 23:27:30 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AF317383B85
	for <lists+usrp-users@lfdr.de>; Tue, 20 May 2025 17:27:29 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747776449; bh=ol3GH4L8p1k5uQIvL07E5JF50mSYujZDFt6FwPtzo0U=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=oPKjsHe7ycHA6pU0l/5MFg4dAMpb8D5GQBGX2wQjxMdFCk6HeZYjK9uXzact0Zhp2
	 lSOj1xXbjRYxLwXOAK/SCSke5K5et37A+jCRdazyVAUtC+7L3vvHvMaFsTmRiZaTZO
	 ZS53EqinG+EiyPgo1yTEGU5dVS/FnMqhwHW6zGPwTMjl33cf/zsva2mwt2J+mAGM6N
	 syiff1/HptzKxvMBCO/juwulYH6w2F0RrUblSgxXxvaD64sg2eAZsQSCMGoCXvwSBI
	 efwhPYL5SjyHudYtBCPVOWpXMCpjd5KQk66KY2uH2NywBvU3nzPiZboforYuPlVVpo
	 mMJmgVwassxRA==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id DA83838353A
	for <usrp-users@lists.ettus.com>; Tue, 20 May 2025 17:26:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="fnzsU+Si";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-60179d8e65fso1344287a12.0
        for <usrp-users@lists.ettus.com>; Tue, 20 May 2025 14:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1747776397; x=1748381197; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aXpjtbFJaE9jVOIQATJE+SRNXDbwOYMKCItxZiyT6Sk=;
        b=fnzsU+SithpV9RYajL7NjptGLagJVL++FVydCwwjKzZGkbRiX1EXMTmGbOe2StgKIx
         oyHrWM8kTLr+O8DTHLAdzxeubLHXCLMo/OU49DSundaTSSxzMhz61ZOFf9+fYNfBSopj
         X27X0zU01t5l4wNdRvD5Z8iCJlnGgofs6MJsXvAAoyQvqf4e7oWM71yPOHcdnnzO6Iox
         IcrVry5ia3puoKVP5dvDSzDDglr1E+Nc6kxXFqCp9XWMlxikC9eUMkQyLHgRhddg6IvE
         3FubleSEXKTk4xKhp4x3ltE9otP+PnVzyaVh6awrZm+GZuDVoLC/KJPBfxTMX9y4hNQm
         SK1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747776397; x=1748381197;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aXpjtbFJaE9jVOIQATJE+SRNXDbwOYMKCItxZiyT6Sk=;
        b=Iv/tVUgvmlAWN7PigiJ6VVURufWBfpE9Oz43MAmhnXj+dC14ya4VAzX0D48BMNBtnH
         So5QQek6F7M95kgoZWWDQ87u53F78NmgJtucKj7fC5FkYb7Sipr6cnDwngvVYlSoiF2l
         Yb8YQNWDwGUnYgDAL6iOdePiwhOCnH1a73dL91s78PiuLNyOpCW7phU7INA6QvctKEiG
         UIp1E4iZuqQUJLvSyKGMkneJccwuxcENLCjri2wU45luF/iaCfRi30/9T5ewrY/qpSZR
         8mfmmg1GWemQ7U4naHqL8iI7tCHOmzLddvczy7GtzZYPnMn2roJLQaSU2Q7F33wa5Q/K
         FscQ==
X-Gm-Message-State: AOJu0YzTWWz20mnyN7SsL1nEl5w/kPsBxLfsvD/pDFPo9QUl5zwwE/E8
	A7myYLdeqJOurUzvzd+c+pF+OizYQuggoQctPumFlj22a/VO3Bnbt4zAY4mSu2Gd+aqcnFke5tJ
	N9Gc+FiG1CYT/DqQl8eOqngDyx2w4b/WV97sa9h/6/EiCyt4BLC4=
X-Gm-Gg: ASbGncvWIO63du2exZ8vGnnqJcEC1AdBtsEVhijkkUhmrnie2qduz/iMIcDEuwvIMif
	w/325oBTojmtjSiyQe8rnf8KfmYFZzh6KF/2lTHHO60NRQtD9gsrlG95BJJkG1ZEJ149zVsEgo4
	JM8cLYcKknq6aHOBLDTNGkATewKlyuJoxI
X-Google-Smtp-Source: AGHT+IHSvk1AJ5TQdj2IvT8OnjACkXzTguLD4Ksn+5frnz41x1qqRIgFdXdXDVB5mHBiQ4fNxN+ZU6zfXJwQeOjO6ao=
X-Received: by 2002:a05:6402:2692:b0:601:f610:5dcd with SMTP id
 4fb4d7f45d1cf-601f6105e4fmr6593271a12.23.1747776397579; Tue, 20 May 2025
 14:26:37 -0700 (PDT)
MIME-Version: 1.0
References: <a9nwcsBWvolQr9UBhVy5xnNJ2NpKnDKXXkqNAUQFg@lists.ettus.com>
In-Reply-To: <a9nwcsBWvolQr9UBhVy5xnNJ2NpKnDKXXkqNAUQFg@lists.ettus.com>
Date: Tue, 20 May 2025 17:26:26 -0400
X-Gm-Features: AX0GCFuRmVsJVdUM9HmjubB4vYQW-qHz5XBmBZH-lhvRIt6yqNtq_BfGEJDywNk
Message-ID: <CAB__hTRgLRwiX2E29Le+J-kwgepCY=WRbPHZ_SXhDto4VKms5w@mail.gmail.com>
To: carmixdev@gmail.com
Message-ID-Hash: JWU7AO4HFKGJ7SEAEBIIQ6LW5QFYIBXP
X-Message-ID-Hash: JWU7AO4HFKGJ7SEAEBIIQ6LW5QFYIBXP
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal quality using RFNoC DUC blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JWU7AO4HFKGJ7SEAEBIIQ6LW5QFYIBXP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8347143088197197418=="

--===============8347143088197197418==
Content-Type: multipart/alternative; boundary="000000000000532fc6063597e733"

--000000000000532fc6063597e733
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Have you seen these topics in the manual?
tuning notes
<https://files.ettus.com/manual/page_general.html#general_tuning>
synchronizing phase
<https://files.ettus.com/manual/page_sync.html#sync_phase>



On Tue, May 20, 2025 at 5:10=E2=80=AFPM <carmixdev@gmail.com> wrote:

> Where can I find more info about the fine frequency tuning?
>
> In a more complex example where I need to set offset frequencies in a
> multichannel DUC what is the correct sequence to keep the fine tuning?
>
> Ty
>
>
> C
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000532fc6063597e733
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Have you seen these topics in the manual?=C2=A0=C2=A0<div>=
<a href=3D"https://files.ettus.com/manual/page_general.html#general_tuning"=
>tuning notes</a></div><div><a href=3D"https://files.ettus.com/manual/page_=
sync.html#sync_phase">synchronizing phase</a></div><div><br></div><div><br>=
</div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, May 20, 2025 at 5:10=E2=80=AFPM &lt;<=
a href=3D"mailto:carmixdev@gmail.com">carmixdev@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Where can I fin=
d more info about the fine frequency tuning?</p><p>In a more complex exampl=
e where I need to set offset frequencies in a multichannel DUC what is the =
correct sequence to keep the fine tuning?</p><p>Ty</p><p><br></p><p>C</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000532fc6063597e733--

--===============8347143088197197418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8347143088197197418==--

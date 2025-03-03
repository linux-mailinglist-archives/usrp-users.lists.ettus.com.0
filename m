Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 913FCA4C34D
	for <lists+usrp-users@lfdr.de>; Mon,  3 Mar 2025 15:23:54 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5E1633850CD
	for <lists+usrp-users@lfdr.de>; Mon,  3 Mar 2025 09:23:53 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1741011833; bh=t/hPqrNVG3yAZBiFIzHQpEKFkYuE0RmmarmAQqzImAM=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=zNTOmy6dLixi47BOCZ0JI771K8yTyd1ZyksPCAuVzmN9FuLL3gJodoLvEh5cyh/3j
	 UsecFFWHSZnVqcwKOjpk3H0GJNNAd51umfCanW4jm4LmNAFJYosypHKqvnIDVHIMvy
	 HUQz9Tkq43+Y+XCD2iNuvszvq/l6hSOof4jpp2TH69MZDAh/t0DtbezDoaW93WVTb6
	 JE2750yfMJixh5aJyieHL0uvg37jhkZa/KAsj3blhbUKESk6MbdBSXxptwPygisLbq
	 Ol+QE6CDHqN+MSeOios7iB6lFeK6C/LVtk9sa4dDDlzP0iYuZBnum8c2b5Zfm2N/s2
	 Cr+6AIZJBKymA==
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by mm2.emwd.com (Postfix) with ESMTPS id BD9553850C8
	for <usrp-users@lists.ettus.com>; Mon,  3 Mar 2025 09:23:49 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="xFPJ7I9B";
	dkim-atps=neutral
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5e04cb346eeso7752784a12.2
        for <usrp-users@lists.ettus.com>; Mon, 03 Mar 2025 06:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1741011828; x=1741616628; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fIhVLFVF5uSp830TyIbeT5Qftw8oHeFT3WpldS0g2YM=;
        b=xFPJ7I9BkejZIMc6l9wx/Bc+4JGNIZAWTH/jadBBlO0R7raKjsTF89GA673U5n0gce
         8X9ZuZM/wFYUE/1cFFkBFT68ZkmobiGNgwkJhDdMX7hVYula03Dcok38oIQKJS3pKIUK
         uaRR4CbAQYtfaflQeO2jh80rYFv6LglPO3Edcsfe4+4VzhOl5i32OJOSXtkIyXpcmzfi
         7r2ZDbtc/DGRJjwqJpN26b8vGs55lo/dgREJ4axodNEaAcRGO1yHzgyJ47jZsA22dA4J
         blaJiqaKWVDSjIBUlcZQJE2gO9TXN1DpdEsekxPybjp/ERM4xEJUOMtdkt8RNKYVY26Q
         gqPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741011828; x=1741616628;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fIhVLFVF5uSp830TyIbeT5Qftw8oHeFT3WpldS0g2YM=;
        b=QMvKOhVMHwOzZkrLd1DXEyITqLbHBZFAz41Q3Lj+WDqemBBGTikc7lVmupRSA9mBen
         40lOXlaZGLS+/n610nKSvRTXmT8aRdQojSwQCdw/bsivfQJRl7ggM2V/S9bRAz1QkkIP
         AX7iGyEldfdxVV5ekblUPxqpiRU8+ukU3/JKWrgTvqlSM5kGpCBWJR6PrnLif082f+1e
         oxc4shPJtpdOGPwYgfyYBJ2T49Lxj7YL0htYRysDRt9TopI+EzMrXarQIsr1s6AucElt
         K4mnHYGROYIWjwg01baL3FLokqG4h8mwWk0GMwyGf0lPs0Hbrcdre0pp3HM53vMGLopD
         vJxg==
X-Gm-Message-State: AOJu0YwzhxVSwbmt46BECUnYVchnKYcmo/7Wv9KWr79Y7yTAyN6oCc1j
	rSqCZETohIN25PBQ/fA0RQgIKWsbh8tOkT9dSNqFrWuFUMnjvsnzHg3BYrTh07Ory3mDXfvCEAH
	sYMsRDQ5lUa+/50CNi9b0HEDFb66PVXISgqFxPWTqivYJ/jePvFg=
X-Gm-Gg: ASbGncvyySxWsOSwDoJ5RSL3L3QlK1WzhmiNfyH/FUcIcNbwXVTxsMDHuoLLk5HhdAi
	gFtSzRZaKSSlFL2ewiRbiztMbYs0hh/b5PyyS2rF79adVN71qTmOGkNbSNldY1XpcDg7WDlwbky
	roPCJdD96CLPA5jDVbYreKrS/PVppqGndeBBeGcp0gl6oOpeFtw6f84NM=
X-Google-Smtp-Source: AGHT+IF2HT6nmgY1QcclQqFQ+8fOZ36fbYyJv7N2S9jUgG9VvX+x6x2HlUSKcto9u9m+WqAmLx4dgFOmty5euHVRJ7Y=
X-Received: by 2002:a05:6402:234e:b0:5e4:c532:d69a with SMTP id
 4fb4d7f45d1cf-5e4d6ac9bf1mr16845228a12.5.1741011828301; Mon, 03 Mar 2025
 06:23:48 -0800 (PST)
MIME-Version: 1.0
References: <fPZXzogk2L9MdOrWTomBOULw9AmFFNK4Ltl2CctpvA@lists.ettus.com>
In-Reply-To: <fPZXzogk2L9MdOrWTomBOULw9AmFFNK4Ltl2CctpvA@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Mon, 3 Mar 2025 15:23:37 +0100
X-Gm-Features: AQ5f1JrrVG3RbNGDQtiIBKLobp9oghNGnGIMHYcr-OJMV3S6OOSN4PMW05NtolQ
Message-ID: <CAFOi1A7uwf3dR0_zqQTrZPiafqui3OMxNOBnnUCpY4x199WjzQ@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: WNWRJCJ5FUEEYGZKNAS4M7HC7FRYABSK
X-Message-ID-Hash: WNWRJCJ5FUEEYGZKNAS4M7HC7FRYABSK
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: strange behavior related to gain
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WNWRJCJ5FUEEYGZKNAS4M7HC7FRYABSK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7747537754702195410=="

--===============7747537754702195410==
Content-Type: multipart/alternative; boundary="000000000000937a6a062f70e7dd"

--000000000000937a6a062f70e7dd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Are your TX and RX antennas right next to one another?

--M

On Sun, Mar 2, 2025 at 10:07=E2=80=AFAM <michalgorny01@gmail.com> wrote:

> There is one =E2=80=9CRF A=E2=80=9D channel, one antenna for the TX/RX po=
rt, and one
> antenna for the RX. I don=E2=80=99t need to use a circulator because I ma=
de my
> custom conjugate multiplication block.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000937a6a062f70e7dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Are your TX and RX antennas right next to one another=
?</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gma=
il_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Mar 2, 20=
25 at 10:07=E2=80=AFAM &lt;<a href=3D"mailto:michalgorny01@gmail.com">micha=
lgorny01@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><p>There is one =E2=80=9CRF A=E2=80=9D channel, one anten=
na for the TX/RX port, and one antenna for the RX. I don=E2=80=99t need to =
use a circulator because I made my custom conjugate multiplication block. <=
/p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000937a6a062f70e7dd--

--===============7747537754702195410==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7747537754702195410==--

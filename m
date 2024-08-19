Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AEF709564FC
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 09:51:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 023F8384920
	for <lists+usrp-users@lfdr.de>; Mon, 19 Aug 2024 03:51:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724053867; bh=RuqY1suyfZra3o4DLISRzMiyBANU40+BaTzUraUl6Mo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Yn1fwUbnhppu71LG0ub/Yo3zeMTk1ezeJAVziA2CUtUms84isMsduD5gOPxzrBRKb
	 Sm5AWWWSdaThvY2ujczA8R27vFSJboifVDCp5N1AV0SSf58p3ikbRUoSTQBDljSOGP
	 NgbjOVVMc47/v2pAU4++qg3Z5ZDW82NqjG+r3nimksUWKd6WIGqVP9AO3e8Rzg3K6n
	 2HcOIOM+3ql+B12IM0hTPU/+l7aa6jRX4HYEM/txb4DWyeBrSrlhpTLZz9rYqmfjEP
	 VyeyegXCwntj0HxXW8v8hk540GF3MWuk9DjcEADLkpjOEJ4AJwnpzVCj0iEbmZWMwH
	 smx4PoWnZpwLw==
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	by mm2.emwd.com (Postfix) with ESMTPS id BFECE384852
	for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 03:50:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="2y912vDa";
	dkim-atps=neutral
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-39d3c8bc608so5852795ab.0
        for <usrp-users@lists.ettus.com>; Mon, 19 Aug 2024 00:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1724053857; x=1724658657; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HYJlZ6hitL1TXj6kOVXJ/CXNY+lqEtBWIqCxHbzd5zU=;
        b=2y912vDaenRxjmN1n9DDGNyTqnt7+ARhMnL35stTP3CDJq1mivvjIlLKeSzVzrNzv1
         omh9YlhXoGtYKH6G/Zu3heUrbHwE2MofzzaT+szIrP7oYMwEZjvzzu6mSDTnINkP8McM
         gS/DHq+uPTO5pOKsghCZPll+t65MsTfjGKg3DJaruutepFfEuM7zJdOCb/DtFg0gEF/I
         RUoHf9nn2hrjp4kjlPGhohl39uPI5ZIFuwunMI102va78rPY9oeFnZICtYaElmAXQ6RR
         dPMi8rskSr/xr4KRc6KcIOLzsrM5iSht0nuglM8qrolKfS43wNUPrEdLkezI3xYoIfM2
         cXcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724053857; x=1724658657;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HYJlZ6hitL1TXj6kOVXJ/CXNY+lqEtBWIqCxHbzd5zU=;
        b=qYkJE7zj0ONOgKFu1TL6UpNLxfDsX7Z0YYBezSvC3jXuQY47La5usLLStjFs5SAQXn
         IfTzOq5nTHXUCoASVvn7wCUk6l4Rk/MKL0CIFEpfA9C4xVFJ2U2xJkzIW1UhRfkd1VHj
         +BlzyoRC7KwGrSvO8IfbvD4anUOaYQvYNZKOdNkTCHXEKZP35zKCYhpLgT7nZG7o7w0R
         Rw53ceUOScaQesaRXK5Ipl+RGIW7oIftNZaRcyqNwGkLTe1c5gpkkvzU25XB43ZMwkZ9
         oEruZQhfqyksIn49NBOQQ8NBNy0uDoW4XA617ir0H80WkvFjxkeDN0k34RbisVh33NKG
         16+A==
X-Gm-Message-State: AOJu0YzaGfWYensqPFnAXdOr0wiUNTdn6SVekk0SQV9hP4TJQJe1l5IK
	ggs+/j9+Oi7KgINZG/D7xhHohqTOCEvNbRyaCjffi5AZIYOGmD6R+eJnLuZCVvlaUtb/ZQB+jMJ
	6VihJ9MISx8ge1yivdLRuM35piA01Z8vcBuyJwXaiTCGsvs3+dRKH7Q==
X-Google-Smtp-Source: AGHT+IHktp/XQoRY0XwXFzpe8oiq2MAKGMPI3aOxBdm4J7e/xPAW5UbAHYbArio9CmLaCxKScKPpM9qKf9yRmBFrV/I=
X-Received: by 2002:a05:6e02:1e02:b0:398:16d1:610b with SMTP id
 e9e14a558f8ab-39d26c44403mr140682625ab.0.1724053857062; Mon, 19 Aug 2024
 00:50:57 -0700 (PDT)
MIME-Version: 1.0
References: <dkXWf45dHU7yrC9pw9gQm9Hz0bgRyvOF39GuZqDM@lists.ettus.com>
In-Reply-To: <dkXWf45dHU7yrC9pw9gQm9Hz0bgRyvOF39GuZqDM@lists.ettus.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Mon, 19 Aug 2024 02:50:21 -0500
Message-ID: <CACaXmv86YVoO9CpAuwCicOygq4a28jbOeYL8_KwHXnqOA7kZmQ@mail.gmail.com>
To: hafsa.hasaan.sohail@gmail.com
Message-ID-Hash: QEQ3THVHLNGC7TMPT7T5JKUFGWHI2KQR
X-Message-ID-Hash: QEQ3THVHLNGC7TMPT7T5JKUFGWHI2KQR
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LFRX daughter board compatibility with ni USRP 2930
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QEQ3THVHLNGC7TMPT7T5JKUFGWHI2KQR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0244227733767817621=="

--===============0244227733767817621==
Content-Type: multipart/alternative; boundary="000000000000b971ab06200491ea"

--000000000000b971ab06200491ea
Content-Type: text/plain; charset="UTF-8"

The USRP 2930 is equivalent to the USRP N210 + WBX + GPSDO.

https://kb.ettus.com/Mapping_Between_ER-USRP_and_NI-USRP_Product_Numbers

Yes, the LFTX and LFRX daughterboards are compatible with the USRP
N200/N210.

https://kb.ettus.com/N200/N210

https://kb.ettus.com/LFTX/LFRX

https://kb.ettus.com/USRP_N_Series_Quick_Start_(Daughterboard_Installation)


On Mon, 19 Aug 2024 at 02:44, <hafsa.hasaan.sohail@gmail.com> wrote:

> I am here to inquire about compatibility of NI USRP 2930 with Ettus LFRX
> daughterboard. previously i am using this daughterboard with NI USRP 2950.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b971ab06200491ea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">The USRP 2930 is equivalent to the USRP N210 + WBX + GPSDO.</di=
v><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br=
></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif=
"><a href=3D"https://kb.ettus.com/Mapping_Between_ER-USRP_and_NI-USRP_Produ=
ct_Numbers">https://kb.ettus.com/Mapping_Between_ER-USRP_and_NI-USRP_Produc=
t_Numbers</a><br></div><div class=3D"gmail_default" style=3D"font-family:ve=
rdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:verdana,sans-serif">Yes, the LFTX and LFRX daughterboards are compatible=
 with the USRP N200/N210.</div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"f=
ont-family:verdana,sans-serif"><a href=3D"https://kb.ettus.com/N200/N210">h=
ttps://kb.ettus.com/N200/N210</a></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif"><a href=3D"https://kb.ettus.com/LF=
TX/LFRX">https://kb.ettus.com/LFTX/LFRX</a><br></div><div class=3D"gmail_de=
fault" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gma=
il_default" style=3D"font-family:verdana,sans-serif"><a href=3D"https://kb.=
ettus.com/USRP_N_Series_Quick_Start_(Daughterboard_Installation)">https://k=
b.ettus.com/USRP_N_Series_Quick_Start_(Daughterboard_Installation)</a><br><=
/div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, 19 Aug 2024 at 02:44, &lt;<a href=3D"mailto:hafsa.hasaan.=
sohail@gmail.com">hafsa.hasaan.sohail@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><p>I am here to inquire=C2=
=A0about compatibility=C2=A0of NI USRP 2930 with Ettus LFRX daughterboard. =
previously i am using this daughterboard with NI USRP 2950.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b971ab06200491ea--

--===============0244227733767817621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0244227733767817621==--

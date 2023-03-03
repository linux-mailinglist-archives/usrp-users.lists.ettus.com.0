Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 567F26A951B
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 11:24:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EE94384910
	for <lists+usrp-users@lfdr.de>; Fri,  3 Mar 2023 05:24:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677839066; bh=AQDlf42Xxn3z9MqWNTKT5b/gk1fUr1KbOm7fiLSJ+6U=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=O/6lo44RRFUpLZe8xKQ4Q+XWi6enIcnxwuIAAY61sxkrc7au7YFMIFKDqVdnqeaoE
	 GLt5oG4Z8SAbMfFiWdDsH+3c8OTlj9KcsSv9YTvpghCeXZaQgpJtc4BeDLM9NDZ/U6
	 oiPAT/5lrszl/tqShYTgW/pta17xzqsAGdDUi5Na90RFRd3ml+qI7hZOrhfbOEngcl
	 ya4UyVlAk51+DengP/AOzqd47nbborNGy+NhLhJ6m0L7Dgbngc7kF+0RB2zketwh82
	 ZFFUY22wWcT2VmHKGIB/29RzMYeVYjLtHijLuCCH4BYwM3ucrvhYulJm9gmD6J3IgU
	 e7a9i667kzWIA==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 74BC43848AD
	for <usrp-users@lists.ettus.com>; Fri,  3 Mar 2023 05:23:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JeY1t22O";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id i34so8272628eda.7
        for <usrp-users@lists.ettus.com>; Fri, 03 Mar 2023 02:23:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1677839030;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DCq9BROr71PM5ElGHcYLxhVIVsBEOyL+9IijyCX6G4c=;
        b=JeY1t22OzyjvwwYPC6/MqVh87t8Hbz8+u3lWi1HY2HwdN8OElb4JwVd7gWiy/9QlhV
         hSYX79HVWelCQ6eYY3ZG3gG8NwMpKMfgYCdC0UzBKDgAyfenuSciC/EXFjtJHmhBqUI9
         Q0DQJuOhfyKeaZ3nHvFkBEiL8NZ/rINCr9rvrTJK+OLpC6yKAf1lgwtRSqhoTNrdblc8
         bL9bI582QO08+aaxP2WP+FJthiD4cQRpzlIpdGV3h/hDeSXIdoqHGclApCs34r6elVrh
         eTlBdVbgVxjFh73P5SpH8jaWfB5DgYN7NykYllhJ8eP+Dgr/wPGDLjon+SW2j0r9rLhv
         1vrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677839030;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DCq9BROr71PM5ElGHcYLxhVIVsBEOyL+9IijyCX6G4c=;
        b=YX8FYvivDQorHkTwaLfaSzQb5RyipZyuMAd51k4ZHUunRuldLTwQxAujFX6m52ajM9
         Xq4NOuwcDT97P0nY9Rc0kJxASwPu5jFZbdMZVVNHMiZsAbCE7RuMZLTMqmpRVjjVZWQB
         k5E8hBc4lUOhBoUNVJRDzW4Q/4/It9QzHTus2RExDt6s4brpTWwU+QbGOT8dnu8LEjc1
         7g8MxA4p6SSfo0pxk4vjbKeEGbGW4cC9hA0GT1LLltr3EYE8PZe/8pJFBu47+n6/51PP
         ix5GnMhQ2n+zXgfOkPezcXppE9K4+EPt3vR71GhAOsGhUF36lQCAdwKWezfUAGRkxMY7
         iE8A==
X-Gm-Message-State: AO0yUKXX3khw/R2GNr4rNSkFUxTHVf04SHZNuZoUifggoOdK98PJbKwA
	sofLf6ETcKPwjKTn02L/v1iXXbQsQi5ggdI8x0gg7pk=
X-Google-Smtp-Source: AK7set9NtKmDcBvfUqywap30wfaRMozRX8R57URevUb80gCLPz3bC/Iu4x6lCJ4O+UA72BG8pYtJ6AJHsJxzII9t6/Q=
X-Received: by 2002:a50:8750:0:b0:4c2:ed2:1196 with SMTP id
 16-20020a508750000000b004c20ed21196mr796078edv.5.1677839030100; Fri, 03 Mar
 2023 02:23:50 -0800 (PST)
MIME-Version: 1.0
References: <E1188D158AA7A048AF99B6A05DA3D62901B4EFEF75@SPROMMAIL03.spengtes.space>
In-Reply-To: <E1188D158AA7A048AF99B6A05DA3D62901B4EFEF75@SPROMMAIL03.spengtes.space>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Fri, 3 Mar 2023 13:23:38 +0300
Message-ID: <CALooG3_KJOzj26p5MXW9RH6PB6Emhp37koPw6vPzv64YzUpXAw@mail.gmail.com>
To: "STEFANI, Maurizio (External)" <maurizio.stefani.external@airbus.com>,
	usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: GQAA6IKVTB6HCGRU5UJIZF2T5FZB2TH3
X-Message-ID-Hash: GQAA6IKVTB6HCGRU5UJIZF2T5FZB2TH3
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: request for x310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GQAA6IKVTB6HCGRU5UJIZF2T5FZB2TH3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2539092237721896907=="

--===============2539092237721896907==
Content-Type: multipart/alternative; boundary="00000000000061278705f5fc57c7"

--00000000000061278705f5fc57c7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefani,
Your USRP's IP address is "192.168.10.2" and its netmask is
"255.255.255.0". Therefore; you need to make your host IP address
192.168.10.X where X can be any number between 1 and 255 except 2. You can
test it by making your Host IP Address "192.168.10.1" with netmask
"255.255.255.0".

Kind Regards,
Yasir.

STEFANI, Maurizio (External) via USRP-users <usrp-users@lists.ettus.com>, 3
Mar 2023 Cum, 13:06 tarihinde =C5=9Funu yazd=C4=B1:

> HI,
>
> I am using an x310 SDR,
>
> I am able to ping it 192.168.10.2, but if I try to issue: uhd_find-device=
s
> =E2=80=93args addr=3D192.168.10.2, it return:
>
> Linux, GNU C++ version 10.2.1 20201207; Boost_107400; UHD_3.15.0.0-4build=
1
>
> No UHD Devices Found
>
>
>
> Is there someone can help me?
>
> Thank you in advance
>
>
>
> maurizio
> The information in this e-mail is confidential. The contents may not be
> disclosed or used by anyone other than the addressee. Access to this e-ma=
il
> by anyone else is unauthorised.
> If you are not the intended recipient, please notify Airbus immediately
> and delete this e-mail.
> Airbus cannot accept any responsibility for the accuracy or completeness
> of this e-mail as it has been sent over public networks. If you have any
> concerns over the content of this message or its Accuracy or Integrity,
> please contact Airbus immediately.
> All outgoing e-mails from Airbus are checked using regularly updated viru=
s
> scanning software but you should take whatever measures you deem to be
> appropriate to ensure that this message and any attachments are virus fre=
e.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000061278705f5fc57c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Stefani,<div>Your USRP&#39;s IP address is &quot;192.16=
8.10.2&quot; and its=C2=A0netmask is &quot;255.255.255.0&quot;. Therefore; =
you need to make your host IP address 192.168.10.X where X can be any numbe=
r between 1 and 255 except 2. You can test it by making your Host IP Addres=
s &quot;192.168.10.1&quot; with netmask &quot;255.255.255.0&quot;.<br></div=
><div><br></div><div>Kind Regards,</div><div>Yasir.</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">STEFANI, Maurizio =
(External) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com"=
>usrp-users@lists.ettus.com</a>&gt;, 3 Mar 2023 Cum, 13:06 tarihinde =C5=9F=
unu yazd=C4=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div class=3D"msg4973474569007370857">





<div lang=3D"IT">
<div class=3D"m_4973474569007370857WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">HI,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using an x310 SDR,<u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am able to ping it 192.168.10=
.2, but if I try to issue: uhd_find-devices =E2=80=93args addr=3D192.168.10=
.2, it return:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Linux, GNU C++ version 10.2.1 2=
0201207; Boost_107400; UHD_3.15.0.0-4build1<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">No UHD Devices Found<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there someone can help me?<u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you in advance<u></u><u><=
/u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">maurizio<u></u><u></u></span></=
p>
</div>
<font style=3D"font-size:9px">The information in this e-mail is confidentia=
l. The contents may not be disclosed or used by anyone other than the addre=
ssee. Access to this e-mail by anyone else is unauthorised.<br>If you are n=
ot the intended recipient, please notify Airbus immediately and delete this=
 e-mail.<br>Airbus cannot accept any responsibility for the accuracy or com=
pleteness of this e-mail as it has been sent over public networks. If you h=
ave any concerns over the content of this message or its Accuracy or Integr=
ity, please contact Airbus immediately.<br>All outgoing e-mails from Airbus=
 are checked using regularly updated virus scanning software but you should=
 take whatever measures you deem to be appropriate to ensure that this mess=
age and any attachments are virus free.</font></div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--00000000000061278705f5fc57c7--

--===============2539092237721896907==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2539092237721896907==--

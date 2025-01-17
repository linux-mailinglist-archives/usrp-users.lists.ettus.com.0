Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 347C0A14DED
	for <lists+usrp-users@lfdr.de>; Fri, 17 Jan 2025 11:47:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 02D4E3859C8
	for <lists+usrp-users@lfdr.de>; Fri, 17 Jan 2025 05:47:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1737110835; bh=/HSOVGG+lb7MG6NSraiBCJk671so2S/RmtnvkCZM88s=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=p0aiez/T8s8eQTO5jASamkUE4kSFoXvRbxEw142VT8/F9zFFBdxSQWUbbveNfJ1Pz
	 AFtZ4p5/LW2jgb4OBZYSk/SDKNy0HwCVKWhLLBcEZznCGs7Q2gPRJX5GjkEtohmpg+
	 I89ZA+6gbtuFsNJJOkQAGF43bzyPG0pOX3Q3n5QG5KP6AAhF9WcnzTOOWUJBKZEugj
	 dd36wy1v1jLeENPh7f8sglhEgmVf8+Mut20J3HfP7Uo5o4PbcmfbBKjQsozFwOlkMm
	 oPDB7s2Nf6ZlT8TVRLNmyZNWpFKhLuVbCw9oQuPjE9KRaXnun5hIQOnCVc7Rn7i+LT
	 5GZcpOOdM9Pjg==
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by mm2.emwd.com (Postfix) with ESMTPS id D2ED63859C5
	for <usrp-users@lists.ettus.com>; Fri, 17 Jan 2025 05:46:18 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="e/Q/TC+k";
	dkim-atps=neutral
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5da12292b67so3311254a12.3
        for <usrp-users@lists.ettus.com>; Fri, 17 Jan 2025 02:46:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1737110777; x=1737715577; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tcjf2UOUCoTf2ZqTdfETqC/QOUB6qJ9IOpaOF81HlL0=;
        b=e/Q/TC+kuRdfbgV6M5RiRzUUAR0FV0fINa/JwYuLnmkPCM9ONADrTArOUZMjFfic90
         u7aQ3mqtdfJOVLnwZglknHYz7LBu8D50Jt8W/qWx7K2IN6W/aNSgXve1TNRfGlUzU2AU
         3yNESzn4291qrAbTp/UcuIT5XhSiIEIPiix2poOwt8Nd63qRUJM4DKdScyo/RNshrEso
         H7jZmsjtM5Rcw4EssTYbM9eH8Et3GUzhTh/I0BQAX8EiMlWpk7xVh66mVeFzhUbwO9CB
         Ga4jgh8EUxYyQLkgvNhQAvS/Qpglqv/TKi/FOlFiFk3JR+IKpVe3bUrSLiUb71qXBnT0
         sF+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737110777; x=1737715577;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tcjf2UOUCoTf2ZqTdfETqC/QOUB6qJ9IOpaOF81HlL0=;
        b=efAkjjyiwQ8LYSs4wOgnSiU47350QcjclEjishG/Xmt/FgntrI7dBI6W/ZkDvr3Ej9
         ZpcVVJHeJXsH2VwvnbdDKEgZe0eynlBvVOvX5X0OuuyKdmWArufWgOpM7W19m+aNqxHU
         Xo1NqCHobGqGxzLH8DYKUXuX8nkVMRinngnBNKqBsrKcD9kkEKl5bbQHNpIndaQGjtgM
         K/UaJmk8lLRR+wkm3V6evNmEl+utdAD7h2jVe5B6rk7s3oygpTmrX4cHXoblYKjgAQ1/
         bD1YEsM3hIycEMH39hnMzqUL49Kva00VIXkkMnkBowq6vyAxGIhdv78S4A51YsnnX6nf
         Q/8A==
X-Gm-Message-State: AOJu0Yz4bmT/Pq82SiXW3yiykoHRow/nGYs3IUxgcMWNpEO3bW6M3jCT
	lDvuOtAqT4ztN12d1iQThIXed++QY7t72bEUw32Gt8/2X8t0ewhRHTWplYWkrLj2w9jPphnUqpk
	Rg54zzx1/zQmuUBxtfKaPyajo21F/TeCVpzD+cAnSlt1o3sO5aRk=
X-Gm-Gg: ASbGncsfhZrFDwyKoQNw2M6nvgdolCA0ycMU/nak2DhOeTotPXUPXNMkVphR2iT+lAd
	Nw+rveRxzPmC6BM1S6nR6w24+CksiTleRe9f/t5bCYnFVYkNt1pgr8nbiVVTlfuj/nRks3g==
X-Google-Smtp-Source: AGHT+IEYPW8ZsK0XQELWcThFU+pQ1nP+TsjTc2a4PiPPOHwzNdwZbIRqJll+02PjeHyFqeopMNjeakaOhjH7IAO8bgc=
X-Received: by 2002:a05:6402:2706:b0:5d4:2ef7:1c with SMTP id
 4fb4d7f45d1cf-5db7db078c2mr4683252a12.24.1737110776972; Fri, 17 Jan 2025
 02:46:16 -0800 (PST)
MIME-Version: 1.0
References: <IA0PR02MB9266C22141173AE6BC3B0C0EDB1F2@IA0PR02MB9266.namprd02.prod.outlook.com>
In-Reply-To: <IA0PR02MB9266C22141173AE6BC3B0C0EDB1F2@IA0PR02MB9266.namprd02.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 17 Jan 2025 11:46:06 +0100
X-Gm-Features: AbW1kvasz-OPX5yyL77_kLcKGlaDFjvf_krci4nMF_Sg0A7imFRubTbI_kpIusc
Message-ID: <CAFOi1A7eUz8Vznqv75sved_MMeNBGVbt6tfngBzH5f_=zparpQ@mail.gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID-Hash: XHVHZHOO4UMTED4XKGRYCKNF4PLLMKW3
X-Message-ID-Hash: XHVHZHOO4UMTED4XKGRYCKNF4PLLMKW3
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Confirmation Regarding Windows Version
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XHVHZHOO4UMTED4XKGRYCKNF4PLLMKW3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8818744119513052679=="

--===============8818744119513052679==
Content-Type: multipart/alternative; boundary="000000000000cc28e8062be49e21"

--000000000000cc28e8062be49e21
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Namira,

you should be fine with Windows 11. In general, people around here prefer
Linux (especially when you start adding your own software on top of UHD),
and there is more experience with Linux. But if you're more proficient with
Windows, it's also fine.

--M

On Mon, Jan 13, 2025 at 8:57=E2=80=AFPM Namira Tahsin <nt4t@mtmail.mtsu.edu=
> wrote:

> Hello,
>
> I have started with the software setup part of N210 USRP. I am using
> Windows 11 now and in the installment guide I saw that it only fully
> supported windows 7,8,8.1 and 10. So, can I work with Windows 11? Also wh=
at
> would be the most convenient option to work with? Windows or Linux?
>
> Thank You.
>
> Best Regards,
> Namira Tahsin
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000cc28e8062be49e21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Namira,</div><div><br></div><div>you should be fin=
e with Windows 11. In general, people around here prefer Linux (especially =
when you start adding your own software on top of UHD), and there is more e=
xperience with Linux. But if you&#39;re more proficient with Windows, it&#3=
9;s also fine.</div><div><br></div><div>--M<br></div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">On Mon, Jan 13, 2025 at 8:57=E2=80=AFPM Namira Tahsin &lt;<a href=3D"mail=
to:nt4t@mtmail.mtsu.edu">nt4t@mtmail.mtsu.edu</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div class=3D"msg-363288610698=
2896866">




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have started with the software setup part of N210 USRP. I am using Window=
s 11 now and in the installment guide I saw that it only fully supported wi=
ndows 7,8,8.1 and 10. So, can I work with Windows 11? Also what would be th=
e most convenient option to work
 with? Windows or Linux?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thank You.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Best Regards,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Namira Tahsin</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000cc28e8062be49e21--

--===============8818744119513052679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8818744119513052679==--

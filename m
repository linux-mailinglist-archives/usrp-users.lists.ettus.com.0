Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45955AF8401
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jul 2025 01:13:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E123C386238
	for <lists+usrp-users@lfdr.de>; Thu,  3 Jul 2025 19:13:41 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1751584421; bh=KvjJQ1ql3/veKlpqcpC+/9mB179eD5qMMyXz2K7x7xg=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=V4NQQYnWYXimjgnY6rZiQ5sQNVCTbNz8/YLciUwZlTAK9C1kkQukQdtiVK/z1qgT0
	 Wq/stbEOZbsrXcq4O1LVAhFjz3u0515Dt1ltq4fEaWR3qurK64IPRbR1O3uqlRZwoN
	 e8o6j/ZAzGPac+UMp+H+o7Xzq5V77sjMtUets/5vUvwjE7e+0CTTMmBt7y4xOgT/U4
	 UeTjCjMidLBrtrR0jPnjc124EB7zn+JsAshA3a0xmcImNixImlylmXHENSXZbKaF8Q
	 CZzUAFQl/9roH1uwWc1PUfZNjW5YptGnk+Q7f4ZaEGzTydrmVR+LJMYMtQif6qXcyj
	 Dum0SAiqNcpTA==
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 5130A385CE0
	for <usrp-users@lists.ettus.com>; Thu,  3 Jul 2025 19:13:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="B/ET46US";
	dkim-atps=neutral
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-3df5249601cso3450235ab.1
        for <usrp-users@lists.ettus.com>; Thu, 03 Jul 2025 16:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751584382; x=1752189182; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YGvLIniZa7B43Fxi2EjsmH6ZaCsc2MK6MkRFscF9FXE=;
        b=B/ET46USbPu6UMShq48tds8qqvCXxMxTSgPI0OU3OJIRbehWpZZQi/LuhNPWFx1SL9
         CqnP6fxh3bS10foeD3yGRGr5gGP2A1Tdj/QBnAIzqR9TsTK5w83UEhQJ9yfsYzlkyWNg
         F/zEv9J9B8Rv8q7jjK8CTgYYnsQWw0aGgTzEfYsnBRwYopZVOU6kFiRsL0VBPuVBNkMg
         9pWMa2OGithwCUv5gfq/2Z7XvLHsfmZIAxy2c/E9bd1lFMWR+EQYy/q5SczDKiHOpT82
         IlfJsHyF2MjejTn07u8bvZPLRyTzMqSS3NeCvyvyvMXF/9KdIuHm74kp36XNB1Z3UcNz
         9glA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751584382; x=1752189182;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YGvLIniZa7B43Fxi2EjsmH6ZaCsc2MK6MkRFscF9FXE=;
        b=FnjNi9y9rZbpY+kSRIKjKeJUwm/nupihATOB+ePemEx+1EIs2wovCZHHIfbO66DePK
         C6r/qMIDD1U8F/Rip5C+YznKGsaYt03fdO0u/yNtb2I4hhh7AlnaIdvQu+ly0XPPyi+l
         hCsqqfU9whr1aWO7yIwqsdmAD2LhsRxN0vYk/1/ZYiKewkXDANHH0xxjA5HfNO7wHfuD
         Wg2geEtsBGytywwzihyaGgCMytleNegAL9MiEyT6k6+OpzW3UjCR6e8prao+pVMEzHmv
         Uqii0bjegHNQFeV+6hla9H8gmamJrEcuEiPWTKXzfClrbhdafbCC/BzLuXKhxPbbVRvm
         F4YA==
X-Gm-Message-State: AOJu0Yxr2HkLN9x8cVL8RPelbbQjsFAoVQKGuCf1m/0v9uhB04fq3/mg
	l0Xx70sCb74DQWjbjKYa5wydE5uoAvXbdyVpXmxNNVtCHZNYMkZDKbVV/AsdhLrxc4kxXlCxTLS
	35MDlD+Jq44Ug6SpRt5u9IgIbPyGipwclgg==
X-Gm-Gg: ASbGnctSrqZ5TsipF4P3aQg+Ra4Sy5EC3x0Ikd6PIU5FjDwe2U8L3+DFNzibZ+u81eG
	q9YKzU0ZGguVEdULS4eQlaugOzDjRJufgqIDEetN5svL79WZxx/neg2ZYCwumHBlu1krLU0j6la
	DhpCaIWhil0pU7MlxMeW8m0EUlx1+CtaLeEDVmOArL1jZH
X-Google-Smtp-Source: AGHT+IHptnTRbGwwHwHrtdNEAyI6l1rZWQMj+nN9fXXP9zHLka+m7kq/ZB2MR/joNcgID73Zi+IMMQ1UKozO2xD6iNQ=
X-Received: by 2002:a05:6e02:2504:b0:3da:71c7:5c7f with SMTP id
 e9e14a558f8ab-3e1355fb95cmr3323115ab.15.1751584382617; Thu, 03 Jul 2025
 16:13:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2ENx9VGASt1Oy+LMwyohE_130u39oBp7R1o8M6FRrA3Ag@mail.gmail.com>
In-Reply-To: <CAAxXO2ENx9VGASt1Oy+LMwyohE_130u39oBp7R1o8M6FRrA3Ag@mail.gmail.com>
From: Nikos Balkanas <nbalkanas@gmail.com>
Date: Fri, 4 Jul 2025 02:12:51 +0300
X-Gm-Features: Ac12FXzoZKW7wdTrZ5s2dHMV-GwCtcoeSYv6yPV6cDNyUlMqniawcPE3GPGckBE
Message-ID: <CAAxXO2GmKYWHudC+-MhR6Uz4iXriHA4vpm+3dFPXVj5--o5niA@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: 45BYGP7CR4AWBKTL3HU3HR53C3X3SR6U
X-Message-ID-Hash: 45BYGP7CR4AWBKTL3HU3HR53C3X3SR6U
X-MailFrom: nbalkanas@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: uhd 4-6-0 crash in Ubuntu 24.04
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/45BYGP7CR4AWBKTL3HU3HR53C3X3SR6U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0637387174049557983=="

--===============0637387174049557983==
Content-Type: multipart/alternative; boundary="000000000000eb93e406390e84b2"

--000000000000eb93e406390e84b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Please disregard,

Restored app from a backup and forgot to size I/O buffers.
Issue resolved.

BR
Nikos

On Thu, Jul 3, 2025 at 10:38=E2=80=AFPM Nikos Balkanas <nbalkanas@gmail.com=
> wrote:

> Something to do with C++ keys & hashtables:(
> gdb stack attached.
>
> TIA
> Nikos
>
>
>
>

--000000000000eb93e406390e84b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Ple=
ase disregard,</div><div class=3D"gmail_default" style=3D"font-size:small">=
<br></div><div class=3D"gmail_default" style=3D"font-size:small">Restored a=
pp from a backup and forgot to size I/O buffers.</div><div class=3D"gmail_d=
efault" style=3D"font-size:small">Issue resolved.</div><div class=3D"gmail_=
default" style=3D"font-size:small"><br></div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">BR</div><div class=3D"gmail_default" style=3D"font=
-size:small">Nikos</div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 3, 2025 at 10:38=
=E2=80=AFPM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com">nbalk=
anas@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-s=
ize:small">Something to do with C++ keys &amp; hashtables:(</div><div class=
=3D"gmail_default" style=3D"font-size:small">gdb stack attached.</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">TIA</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small">Nikos</div><div class=3D"gmail_default" style=
=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"font-s=
ize:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small"=
><br></div></div>
</blockquote></div>

--000000000000eb93e406390e84b2--

--===============0637387174049557983==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0637387174049557983==--

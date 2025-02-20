Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8C3A3E00E
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 17:13:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5347B386092
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 11:13:28 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740068008; bh=/cugpA7asocQQgAs0EKnz/eJTGS62coRg4GaYMkwRoM=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=sHl8/WJblcmXqs6Io2w2aZjIlvsKwvJtJhQ9GWgmSNTL8bRv3qAZpGwmRnoh6Ysgw
	 Xgfs+VaXv4gwyXwTWvKmD6YRvUlYQ2NduhU4RsES0ZbHb8SQQnSRs21m7oFy7dtmUs
	 wtvKniBkXPWKtbPQvhQ96quVZ8xIi9bLla9KDQ0trKt+6EHCp1By/n5c9/DChWug6a
	 ukbHoXPKM4jV3it4DJUywxBGsL9P+Oxo6TjZPDBn23/mW7ybGJzjqnSZAvVC55QbVx
	 TkGFsgmBld9zH44/CjK3O6QKJbi1MN4BbIAC+4OblWQJi6LY11k/WgQKSooQnVau9G
	 S7z+2MQWZWZbQ==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 7B030385F9A
	for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 11:12:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="eHdE5zky";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-e5dd164ee34so1102116276.2
        for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 08:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740067958; x=1740672758; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=z8cnIgSkaFTeCEB6lQcPbQs27xBQwlL0WWareYe3xsE=;
        b=eHdE5zky/hV1jrIQ2oHuO0AvZ+xbS6D4G6I8jIOuw0sYmiQAvONL5RCo1itK+jiPOb
         h0w42oi6MP8pL+OZlFklk3RilHWLb2COPRBk+O3EJJAtvow0qN95qq9P/6rwIf7S/9zy
         VfyiHMCQhKhKe4QL+yFlRtEH18kbKvPEBpr2vRplkL66pbgRslajbfiATYVH3PAZacjI
         vavwTp5Atw+rd8lFK5iTPA2pcPtynqSFjeuSxhouGYSaF0jR0xpwsF+SA0ouBGHIf4Md
         VJdHmBavbjCgpFsdX017JGGYKdWNtnmatCQmdIuL3Wc7kKQpKjiaYJ5DVSTPiJKH5Kij
         1NeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740067958; x=1740672758;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z8cnIgSkaFTeCEB6lQcPbQs27xBQwlL0WWareYe3xsE=;
        b=HizigXzdjC8BogooQ0UdCL4BJib2sjuRelwIqnrijamo7ECIOY0tgg++etUfI/80Om
         s405ACzUO7MJZgQ4FXD7MxTBShHVx9rmQNWB18v/N+q7T82XAkeUO61vDHnYcmJPwDV9
         erLGXPoC2wpRUMpooONMuGVtYBsQqNbLQPTbCcSH0numD05OXBX0osCuyXa6yXORfv3i
         DJMoewMmZEQZQqrdjA0gc/ZXKAJn31iqQP+cLZ2DzHZQdz2MIWmI078TTpoRHmc+lPxn
         4cgjvr+bqaT1DvKWxiNmNV+bN65CUlW68EufnI2lIOz1V/Y/1R8lQOYPZnQvilvSz284
         aO6A==
X-Gm-Message-State: AOJu0Yz+/Dv86k2DChV0F6eCWo3iucW+Bhb49wyIq2KEXyV4k21EUuSy
	aOgGgJHGBi92Pu/xH1SYO5mDVwNAmkAiGkiOZROFo2EcZQwS1DJRuEuCfEYNf8VUqrwJwetOE8N
	R5RCOxhFvJC+98Txxv80S2PlXjDPORyJF
X-Gm-Gg: ASbGncvP572yH0P2N/2lkEMtksyDeIEPfeXc1KJ4+/nQhs+cG36wnGNs/JlYo8YBkBp
	iL785ftWkovjUM/EyvQflYn75C+gYKZEzZ0zrnXLMOFzvPobyCefuuf+aZOBpl6+m484JP8sehQ
	==
X-Google-Smtp-Source: AGHT+IGuItaPyCZaX9haf3qR2gd3Lj0SLNp7p+7bHRHMYdmiSF18K/4D+QZbYs50tsqoql9LV3CFyXxljBQ3+LWsLvk=
X-Received: by 2002:a05:690c:358a:b0:6fb:aa4b:5001 with SMTP id
 00721157ae682-6fbaa4b5416mr57393377b3.5.1740067957648; Thu, 20 Feb 2025
 08:12:37 -0800 (PST)
MIME-Version: 1.0
From: Muhammad Anas <anasg8274@gmail.com>
Date: Thu, 20 Feb 2025 21:12:25 +0500
X-Gm-Features: AWEUYZmQOu5j70MpDLbsWgSSNZ5oovXzUH15KkRYlVcYwqL1Js0ViPGpSXzm7YA
Message-ID: <CACPignQ2NHBxXnd4nVjHd8PprL4hDUYvC5W9k_b7JRHVCfJDJw@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: ZQESTXIPOOJ6S4M3N7DMN3FPHRVLBN2L
X-Message-ID-Hash: ZQESTXIPOOJ6S4M3N7DMN3FPHRVLBN2L
X-MailFrom: anasg8274@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USRPN210 frequency changing through serial port data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZQESTXIPOOJ6S4M3N7DMN3FPHRVLBN2L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8751663835922519710=="

--===============8751663835922519710==
Content-Type: multipart/alternative; boundary="00000000000080377b062e9524ff"

--00000000000080377b062e9524ff
Content-Type: text/plain; charset="UTF-8"

Dear Community,

I want to control the channel frequency in the RF options in the USRP sink
block on GNU Radio Companion from the float data coming from serial port
through a custom python block and the data coming is showing in the GRC
environment in bar sink as float values and I am trying to save these float
values in the variable 'frequency' by using another python block, and when
I write the same variable 'frequency' in place of USRP channel frequency
option, it's not recognizing this variable.

Is there any way to control the USRP channel frequency through the data
coming from serial port in real time. Kindly help me in this regard.

Best regards
Muhammad Anas

--00000000000080377b062e9524ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Dear Community,<div dir=3D"auto"><br></div><div dir=3D"au=
to">I want to control the channel frequency in the RF options in the USRP s=
ink block on GNU Radio Companion from the float data coming from serial por=
t through a custom python block and the data coming is showing in the GRC e=
nvironment in bar sink as float values and I am trying to save these float =
values in the variable &#39;frequency&#39; by using another python block, a=
nd when I write the same variable &#39;frequency&#39; in place of USRP chan=
nel frequency option, it&#39;s not recognizing this variable.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Is there any way to control the USRP =
channel frequency through the data coming from serial port in real time. Ki=
ndly help me in this regard.</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Best regards</div><div dir=3D"auto">Muhammad Anas</div></div>

--00000000000080377b062e9524ff--

--===============8751663835922519710==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8751663835922519710==--

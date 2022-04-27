Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B302F511CB3
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 19:44:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B0EB4384411
	for <lists+usrp-users@lfdr.de>; Wed, 27 Apr 2022 13:44:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1651081486; bh=GPKt9bT63vuLEGOOGKYz0ZK8LDevZrxMbR6C1Sl+was=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0Nfvdp3wtoROz8NryXVk/jMIp24uXnkzrSS66oviBaRvkijoZfK1uxU6YjQAcPnmA
	 vpsdEzQOCK/Vc0gb8xVZKEJJori9d6wWLamf628q5MYNVzfe7g+UXTOwvsHQ9M+stS
	 vq1B9T7nebEV13hVr1aj6mQU+uYv8S8PJXu4AzYpf6+6pj/NdcLngYe1BTn4QnaSbj
	 fNo0dzTM4iPEOJELOCRokBtVl2VVPfJry5hxEC/PSjbRg32Is3q36p31zvfNV0Wh0x
	 +ihc5GnrCFwj9L0MFmrGMAQDxWJJPU5CgrI0gjn34So76AkLkRqH09/qqNlHiyqW6R
	 hGnBJq/+MfXqw==
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	by mm2.emwd.com (Postfix) with ESMTPS id DE3DC3841E3
	for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 13:43:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="pV4WuD+3";
	dkim-atps=neutral
Received: by mail-yb1-f173.google.com with SMTP id y76so4758761ybe.1
        for <usrp-users@lists.ettus.com>; Wed, 27 Apr 2022 10:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=0+KohbIpkGWCWZupu/8vgritm3bt698wAEy0/i38CSA=;
        b=pV4WuD+3tNoY+B/SEE6skp38Vyqe+knFjNhzwkbUdNHK+oXMnz+yQHyuokvlNuGhHo
         eCJUCxrjbEN8uaCzXs6LGplvWya6ND+BGN2DZcWcn2xdlUyNyxgUgCeGCfM3sKZSsEvK
         hXv77LVO0AIqhAsdOHPKHRUelBkiBuFKhH4jBtNSaoXO9xkUmHyV/xwL4vqEt4W/Pc5A
         FGcJLJhPtr6HOAL+KrhK/qU8EFeA3BAmvXFXu8xtkAxqupxeBcM5Siub5kBG5IWLcugZ
         SR1SgWdyn2y9ETAUJrppgCx91UjtfpWapCEf6mc9sDT4KEUDKXrLjH/8AEk69vzbp5A4
         TbJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=0+KohbIpkGWCWZupu/8vgritm3bt698wAEy0/i38CSA=;
        b=BoupMlo6WRSUCDa37r8J2zYIDoZtqkhCEIJg68jHeioDgVJycOVVbl1C9pYGhEy7hh
         +eTZkmXMQFn0GzvkvLgZNv4LvqrzO6exuHmtOY5vKUD+Hng9KbKrj5kqe/v2DyO7anjP
         LiDkc8Uvy5IFV2Xw2jsHw57rRCtUnO8nVvNLeOesz/pZfRrAFkpR20PwsGUhefI5iAV4
         wBB89ckohmD6e4QuxUEjwPRzLcdeYPWYzZsFB3qmDBpSfy/yazlc30DQg0VOiPkM3Vkc
         WPKma+IWl5hSnTY2J6GcFqeSGYKDCuLBDuoI8yIYs8+J1bG+ezrb1ezCGhsjpUoCu9tz
         R68g==
X-Gm-Message-State: AOAM5339KSVWaIGpqCdnZbBRUzwrAamEyG5aNmo+YBbFNB3yE/gtAg5q
	kpak5YMvR8tRlDivT87Oe9SbRudBss9U3h1+EQE+947G
X-Google-Smtp-Source: ABdhPJwOzECNv2IVr3feZMYSsEo7w94wEn48VHdEvJBReuR7JcU3486uW+EMW/bKIt39ywJzw84xa5cNhYEqTXXCdV8=
X-Received: by 2002:a05:6902:704:b0:644:5c76:f0b9 with SMTP id
 k4-20020a056902070400b006445c76f0b9mr28475571ybt.80.1651081424320; Wed, 27
 Apr 2022 10:43:44 -0700 (PDT)
MIME-Version: 1.0
References: <CANzM3hzZTO6wDcketH+6iXLyr6wFO0vZF8=YwGxoozbZhz0Vpw@mail.gmail.com>
 <01dc4628-97ff-f1d5-81e6-538bb06e80b8@gmail.com> <CANzM3hzTUXtT=-pnSdbXf-FfAJhLxVgU60BaB6-ZP3PUpz1TBw@mail.gmail.com>
 <fc08b2fd-86ce-ae60-0ff7-27f45b3f0752@gmail.com> <CANzM3hzEPUtXqqf-FvynCxJEbujBb_yiR4trxhF5-aU6=M1RBg@mail.gmail.com>
 <66069968-236e-a309-13dc-14577c2fa095@gmail.com>
In-Reply-To: <66069968-236e-a309-13dc-14577c2fa095@gmail.com>
From: Arash Jafari <arash.jafari.telecom@gmail.com>
Date: Wed, 27 Apr 2022 19:43:33 +0200
Message-ID: <CANzM3hxCfMTOGuAoZELo1Un6tsLOBNoA8YMLd11m_dQkjHBEyA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>, usrp-users@lists.ettus.com
Message-ID-Hash: YDVY54C46OGPTGEMM34U2YVC2VNL3WOZ
X-Message-ID-Hash: YDVY54C46OGPTGEMM34U2YVC2VNL3WOZ
X-MailFrom: arash.jafari.telecom@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP-B200-Digital Down Conversion
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YDVY54C46OGPTGEMM34U2YVC2VNL3WOZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2378975462047922188=="

--===============2378975462047922188==
Content-Type: multipart/alternative; boundary="000000000000cabd7805dda6596f"

--000000000000cabd7805dda6596f
Content-Type: text/plain; charset="UTF-8"

Hello Marcus,

You can consider A and C points.

Kind regards

Arash

--000000000000cabd7805dda6596f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello=C2=A0Marcus,<br><br>You can consider A and C points.=
<br><br>Kind=C2=A0regards<br><br>Arash</div>

--000000000000cabd7805dda6596f--

--===============2378975462047922188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2378975462047922188==--

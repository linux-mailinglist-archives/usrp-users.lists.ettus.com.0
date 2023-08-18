Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6B478042A
	for <lists+usrp-users@lfdr.de>; Fri, 18 Aug 2023 05:06:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 67398383FCD
	for <lists+usrp-users@lfdr.de>; Thu, 17 Aug 2023 23:06:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692327971; bh=YPzbavnOZRblT7nfi6Mz1HzvwPpEiasJ/F0iJxQ33eY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ZJVtSb2Ho9gvy/xBKxk+Sd9VClChZsFtWh22GIBYi26YlbbFu/V5DTsVFJ2iaotBu
	 d+Fybj3dqdwrl8+eQKA0VMmrvbYdbsVgGHtXFkCH4pizdE8o3TilvxVDiCQlFfZrIE
	 rOM5KaDgvfDerX0UFV1q0hga9+s4wGefK2cdpwS6K4ou5Q0yFxWFOmGPVwTcTVHrUM
	 eZT+AQBZ2FFh3mbVcV7m5D1c524zZKvU+Q+S+jE8XbHcxYRTj+0QPnlrz4apkZzegM
	 EjiS1zr1uAxQqvXMul5hyzGyu5tC9r1ONejTbEAHNPRKtm72qwRIv7kojJpbwzdfeg
	 eiDVAfxc0coNw==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 4DA94380D98
	for <usrp-users@lists.ettus.com>; Thu, 17 Aug 2023 23:05:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="TyB3g4pY";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-997c4107d62so53445366b.0
        for <usrp-users@lists.ettus.com>; Thu, 17 Aug 2023 20:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692327940; x=1692932740;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=pi9aC1ffIdz+lATKfnBocJshfYv7Llw82WzplgyMHfY=;
        b=TyB3g4pYSIijdBmKshS1mYPdbsEZNgCz88TUMr/z010SpB9qti0Z4AiwTIR0doh+qh
         gDd++jLCrZVSeMORJqGtykunVhTX9LrxW6hDURm+CYAUimkjEy5hbtcCw/vwKiAH/Wvl
         LCPTODLGei4w3rbA/bsl/+3dc6sh0jA7jKIss/nfGKsBmWOeWOSIyFdhEMapR501q7G8
         txMvfBuCVK7/XtHdR+cJvW/N9yvH0jI0lD7ttazmM50P8OZ3b1oHmICvTxq4JgURdLDi
         qjZ5Mk4aXE+EIJAx5tpJkxIKTStCaonD+aVqdsLQRisKGs3ZIO8CDu3Rvk8imxvVVOFi
         2k9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692327940; x=1692932740;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pi9aC1ffIdz+lATKfnBocJshfYv7Llw82WzplgyMHfY=;
        b=Qbj80OTlBFM+X6yu4EfqrK8ve9DUtGjJegeLgKMR8oYzHI0DnbO2r8K9YVvjI6em19
         Ololof2o+GTMMItBokp1htH0P7uaevi0Da2+Sg0MY1zLh3RAkInl1hM0BA2B7za37NOI
         1vdhVRVwOiF5yGM34yC/XRAzSFOE3ZUXDg31NzF9kZHAbDW0SlXp64IHZHIcs/NI5u4n
         UChkDsYIeJa4fu4uqXEFwBflbW0Mx5BOenrTrHpP2jQ4BrVp0waUwxXSLSf6YTJKrTJV
         MjRsouNlCe6z96foivaJ/Hcj78m2lHDCwa1b/2xHss9P2OwhN0kUCk/pz/sAlq8Eq4Mj
         gzbA==
X-Gm-Message-State: AOJu0YxJAMDoWaDz/K+EhrJ137/b12VBa0pSWz+WbjsBBCiWOPgd2JOr
	obTDKwmrgx7qqG1nNnTE9+w9yPrbjhDRCryCchlHpf070rAB0gyRJQs=
X-Google-Smtp-Source: AGHT+IFBO7lbDrx4nW2JrxDZ/1idpi+1E4WqsbGAApZjukcibkHaBULAKNanRVhkWWP/EqS1l9BDs7hqaJ1nr98SL8g=
X-Received: by 2002:a17:907:7754:b0:99d:dfd:a5ba with SMTP id
 kx20-20020a170907775400b0099d0dfda5bamr879399ejc.43.1692327939903; Thu, 17
 Aug 2023 20:05:39 -0700 (PDT)
MIME-Version: 1.0
References: <S9XLA3fWiFJA8eLb3OEJrkZ18oEgvwJLEj66AmU9vws@lists.ettus.com>
In-Reply-To: <S9XLA3fWiFJA8eLb3OEJrkZ18oEgvwJLEj66AmU9vws@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 17 Aug 2023 22:05:23 -0500
Message-ID: <CAFche=j1eR=xEkMU+651QM=Ww8MNmETFdy-rq_ov7DaRamNVWw@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: ZEWJFATDNMBDTESIYMBUA2R53CIAQL4A
X-Message-ID-Hash: ZEWJFATDNMBDTESIYMBUA2R53CIAQL4A
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZEWJFATDNMBDTESIYMBUA2R53CIAQL4A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0218917731415298647=="

--===============0218917731415298647==
Content-Type: multipart/alternative; boundary="000000000000b3a56f060329cd6e"

--000000000000b3a56f060329cd6e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

What was the error message or symptom that told you that you were getting
an overflow? RFNoC has flow control throughout the datapath, so when things
can't keep up, the pipe normally backs up into the radio and that's where
the overrun occurs. In other words, when the radio receives a new sample
but has no place to put it.

Wade

On Thu, Aug 17, 2023 at 10:51=E2=80=AFAM <jmaloyan@umass.edu> wrote:

> Increasing PYLD_FIFO_SIZE does in fact allow me to increase the burst siz=
e
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b3a56f060329cd6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>What was the error message or symptom that told you t=
hat you were getting an overflow? RFNoC has flow control throughout the dat=
apath, so when things can&#39;t keep up, the pipe normally backs up into th=
e radio and that&#39;s where the overrun occurs. In other words, when the r=
adio receives a new sample but has no place to put it.<br></div><div><br></=
div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, Aug 17, 2023 at 10:51=E2=80=AFAM &lt;<a href=
=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><p>Increasing PYLD_FIFO_SI=
ZE does in fact allow me to increase the burst size</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b3a56f060329cd6e--

--===============0218917731415298647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0218917731415298647==--

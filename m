Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EDEA485AB
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2025 17:50:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFCCB385D89
	for <lists+usrp-users@lfdr.de>; Thu, 27 Feb 2025 11:50:25 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740675025; bh=tnmJYKQwWE2Q8SVsjlFBnpxs3BBmY9My+twX+j0TJss=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vUEksbzhEkANoXBPJ22n9q20YmjCqM9VVqooDQ+2MsJaqYYW7YWoLZE8mMGKGRtTp
	 vhKhQWi5ldJOlBQHv+cKNCl/LMBeYgrq81IezdeBjxrlgXinWtF5eKkQbr+bDFk61r
	 gPQbeQKPLl4aEgzP/eTChHzega6S/5zKNRvOQa6LKTCCW5MgLom8u+A7PHwWvBBxBX
	 Grxp6bXAtbcX6vq5dc7MVEaK3emw+GBG541OuAwNyxOaZWAiReRJdVSVSX1Fxzq2O8
	 qNadJFYLzuxKDS8BeJDvKDCrmiHXrdPMm26nI3LVs9prD7nIr3tv54zFPnRvC9zEXV
	 U64wGpSF/356A==
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id A678F38503A
	for <usrp-users@lists.ettus.com>; Thu, 27 Feb 2025 11:49:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="IfGMX0HP";
	dkim-atps=neutral
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e53ef7462b6so1004176276.3
        for <usrp-users@lists.ettus.com>; Thu, 27 Feb 2025 08:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1740674971; x=1741279771; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7XyeQdo27QmUintF6gJo9JpAoPFOQdZ9Yck8/C6y8tg=;
        b=IfGMX0HPu8rLHvrPK2/3XY6uMKjtIQDQoRm/FVNPBLBesGMU+LmfFGr35A5j5aa3it
         OMLYt6OsaM68BCY0oc3hecXRuXBvH7F86OJDWS7O9wLX0enSY7kNvt/ymNGKF7XveKx1
         4bzswl3gIcyR6O1BLIfvNIE9DABq+jvqFbY6ftTc4pDccFyzIYgRXJ67gptYKBc5Ug/Z
         TD+WixJ/K8m7PN2kexM7OE4pHSiw4+ct3JUJzRsZQMAp93JQTAdjyDnkG9PzzGoTIjBu
         HJxlMhNYATcT36rPzzfiMqdbz5DlHPUC9hwkreW3E5fcWZy5YnxrjAzSzTiDV8Tuz0/u
         epSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740674971; x=1741279771;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7XyeQdo27QmUintF6gJo9JpAoPFOQdZ9Yck8/C6y8tg=;
        b=Ame6bWa7rUWVL3mymk25/WsBMqgmW0p1yK6aOWv7Ge+oeKUXF6ogzU1fg3ZpKZsOCE
         CukNhIco6KvkOoTDh/zusyML71ZYOtQFdGpl/Khz3mO9tAVFUNBmP8ThlcopEagfa7p+
         lIqSexMlvZFQdS7WizptoHr5keWcsDouJsjjQGun4n5hC+D+Tvr5gSSHDJ4hmZmHvnLR
         V9QkIHNnrf0upzyrWdRAIKD+ElWr69ko7RiQM4+TDWPRm7P4cDvRGBuLdkm6ZlsQC4H3
         fE8+TJOcsGwzegwvoWSyaXn9nHMtGz+8831LItfqB6d8OyDitoGjOWw4J00KJ3yTTNtS
         1SWQ==
X-Gm-Message-State: AOJu0YxTEmt6FK9HYG2Ct4WqtUnvYJQiMAEZPg3YUYKQK0zRQsp+Rgfa
	HiOpSFg1Dv5fqlNk+5CBKPRY0AYhXaR9zMm2tHeIgZsL2z4kSIeBCvej4WepT/a2TbAAQfcGASl
	C9wSS1nJB09V/qULBInIq/ZeL3T6Ss+rMFJpTMpC8P9Qby4H85K0=
X-Gm-Gg: ASbGncu2iwgHXxMrgu+B784pGZDW6BH6jAbeebC0X8zec32SIvLjlmZevz95uRkjqQw
	bDXeWM6n7x4Tymj2lVWbGW9NEJE5lNV6ottMiaBQr1jAdpW/Fs9uKFyjz78wJFsvYjvbSOdywsr
	elRFMn
X-Google-Smtp-Source: AGHT+IGoePmnnMaLlsZGXvz1TRVOlpthr4pV/jmf6WE5JNMTIZ2OovY4MCDNf21syKcAWM6xeN3lDscIaZ2RkodGqEM=
X-Received: by 2002:a05:6902:118f:b0:e5b:248a:bf3a with SMTP id
 3f1490d57ef6-e607a550444mr11142321276.30.1740674971073; Thu, 27 Feb 2025
 08:49:31 -0800 (PST)
MIME-Version: 1.0
References: <evhr7kyxKbT1wvGRcwhHudfUyiOtnz1bsf0u7wa0h6k@lists.ettus.com>
In-Reply-To: <evhr7kyxKbT1wvGRcwhHudfUyiOtnz1bsf0u7wa0h6k@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Thu, 27 Feb 2025 10:49:13 -0600
X-Gm-Features: AQ5f1JpA28A9QFFdme19Reh8MtD0oRY-Zpp9iktcRT0haQ_REgHt3egpJQULe-s
Message-ID: <CAFche=iOs+dwUdgLfj7Zkjjyv13DSWtxEhMJ-U39pOh3uXQgcA@mail.gmail.com>
To: mslusarski@xysensing.pl
Message-ID-Hash: 7NTJ6GCNZ5NHTPSRR357MVPUFCWJGNYJ
X-Message-ID-Hash: 7NTJ6GCNZ5NHTPSRR357MVPUFCWJGNYJ
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 configuration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/7NTJ6GCNZ5NHTPSRR357MVPUFCWJGNYJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8510172276429285518=="

--===============8510172276429285518==
Content-Type: multipart/alternative; boundary="000000000000521c4d062f2279fe"

--000000000000521c4d062f2279fe
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes, using one channel is supported.

Wade

On Tue, Feb 25, 2025 at 3:58=E2=80=AFPM <mslusarski@xysensing.pl> wrote:

> Hello,
>
> We have done a project for gen3 x410 usrp 200MHz bandwidth 4channels
> enabled. When we try to change configuration to 1 channel, tx/rx works bu=
t
> we got strange behaviour in a custom part of design. Is 1 channel support=
ed
> for x410 200 configuration and/or tested?
>
> Regards
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000521c4d062f2279fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes, using one channel is supported.</div><div><br></=
div><div>Wade</div></div><br><div class=3D"gmail_quote gmail_quote_containe=
r"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 25, 2025 at 3:58=E2=80=
=AFPM &lt;<a href=3D"mailto:mslusarski@xysensing.pl">mslusarski@xysensing.p=
l</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><p>Hello, </p><p>We have done a project for gen3 x410 usrp 200MHz bandwidt=
h 4channels enabled. When we try to change configuration to 1 channel, tx/r=
x works but we got strange behaviour in a custom part of design. Is 1 chann=
el supported for x410 200 configuration and/or tested?</p><p>Regards</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000521c4d062f2279fe--

--===============8510172276429285518==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8510172276429285518==--

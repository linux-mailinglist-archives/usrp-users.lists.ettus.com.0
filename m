Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D33AA78D0F
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 13:27:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8FCE9385B33
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 07:27:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743593263; bh=IxVVc0TIykDORqewU8LYtQ3ybhU59BRk9UZDdcR7G68=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=tCd939HbDATUwltzDAsWTANbcAJVk/h9k6MBw9ad9lH/ifPlZ/O0gzVIgi95IrbJm
	 2+5N93HJVM4AUFFZS+FipluuQ+5b2sN5QvU3rMxnhQUEcPGVdYdGrIuuQe5G2p9sEG
	 VHrcE6bpSb0HxsmkK2L0ckuk01gXOH1jNhIwglF85aT2pkS/+MOVAtU/kJG+5pndQh
	 qXpjslBjbNfcBIOHbyoYytRtufMfU8tOJY78K/zyJoOtQAPjpU+FrdB0p9NLXsSp0Z
	 GzXlR9T9eSMvZ14DagKKKCcKFxeBFCiD+lgWF9jnNSpmyfV9Y76zw6nY6TicF7cs7X
	 qjOIbTqBKE4mQ==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id DA9DB38596E
	for <usrp-users@lists.ettus.com>; Wed,  2 Apr 2025 07:26:54 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="rQQOlKLI";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5e6167d0536so8017074a12.1
        for <usrp-users@lists.ettus.com>; Wed, 02 Apr 2025 04:26:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1743593213; x=1744198013; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iSzm75mO1E6tlEC23UgJLJn2BgJ0/i4VBdpwRWtCnFM=;
        b=rQQOlKLIUw17O6+QqaAa//g4kOAPYq1vMSYmmbjo587neALIXMlgxlnhVLkF9h4zti
         wdb+OprEdoPmOD6g5bX4zfjh8VbzVfgGe35q2RZH+nD9rMxGS/nwiS9sq08QSLSYHc0f
         gv1C7nyWhGt/K1CjRVxjqv6idcRyU9cZkMu9XwfTtqnMvzQDYKhPEdGn8hFAYdFxr3FD
         vWVvlIZ1myrSP14yt/P4nw6UKD4Qq9uTS6d6Q/HgmaPVReJ33pMoxn8JfvXsRoBq5f33
         lmuT+dvtEn7EEA1GZEVgCnJwbpyXN4Yfi/6lsDMxRkbjioTzVZGDL8Ws+r1NAjOoNpv8
         y7GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743593213; x=1744198013;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iSzm75mO1E6tlEC23UgJLJn2BgJ0/i4VBdpwRWtCnFM=;
        b=egI55H0XvwVAfH9F60u24GVEIOEps7OtG5YKzJH0sVD2H0HEF5yV+OQVsSi4xnElKr
         YOyhjhzXcpbUjwaKApDfvnKQen7obD9P63PuExX8G07FsI0LKceEQuBxHd8x79/MkGfm
         D42IO4g0H0QXkEotbCKIc7ZhRXORSAvXA/rPx6NZU61Q1CocPi5u4VHCBcczg/UkuaB2
         6rfH06S07XNZ0CumJTd37SqokOougY777bBRRs/1ErIN9ZgfoPeOEVj+HyR7uqGjDqsF
         2W5J+Gb5k9kLqZYXS6qEslQ6j3NdXnvCf8NipbXVoTqxslOtlIeWzZ7/oRMmG8MLEA4V
         dI6g==
X-Gm-Message-State: AOJu0Yy6gpfnXVthLs/8b4T0YbKIld7bFbBlG8QpDMnQ/AKzvagPx3FN
	lU7ZCwuJ0zKAp2clSsvgXjR+tYE6cPbR5QPqaaUYzYFCk7hwoTc4Y8aShKo6cmcrfgNG9ZIw1KN
	d8qxqtygi4quMfUsOpuZFk8Y/JK6t9HiqybWtqMFuuU1ap0YcD1s=
X-Gm-Gg: ASbGnctwmZl2IG7ym+HA7DEz0a6KwVgZj1m423FG46YqXraoFz+mVgreWEi9kYwwzPZ
	Cfy/vcafr4XntUyXZwbDZX2NwlIn1YwlMIdUt3T7VdVi7rKRoNnLkbE5UxFVcoXL+E3S0yh3r24
	VYAjplYFmfBfGmJeEQurmJO7XqXtDbd1ithku7h6d6pikhELPjcCrBOA1Ahw==
X-Google-Smtp-Source: AGHT+IGbuZv0ZD0A6bFx5N6MbhTP2xKecs4IUrTYtWsgTFGGgOaNlgM/AJlJWY51Mdl9NanWNJwWxhaqS6r9YsYNQ8s=
X-Received: by 2002:a05:6402:3511:b0:5eb:534e:1c6c with SMTP id
 4fb4d7f45d1cf-5f02b1c161fmr5989658a12.20.1743593213317; Wed, 02 Apr 2025
 04:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <JMqWbvSPBRKayyCCDmZIum8iLocHYI7Jm023Zxfc@lists.ettus.com>
In-Reply-To: <JMqWbvSPBRKayyCCDmZIum8iLocHYI7Jm023Zxfc@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 2 Apr 2025 13:26:42 +0200
X-Gm-Features: AQ5f1JpvTh2eVT-trmMcL5WWuasz-t34vqOqKe_tdybND9iKP-rawGd-5Z8v2dA
Message-ID: <CAFOi1A4+qyBOwXtrSLTnSd8+zER6eiXyqv9tq87gxG8sPyVADg@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: KOTAK6FMAV5OGJS7HULXE4G5KFHGPAVE
X-Message-ID-Hash: KOTAK6FMAV5OGJS7HULXE4G5KFHGPAVE
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Monitor X310 health status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KOTAK6FMAV5OGJS7HULXE4G5KFHGPAVE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0939292002165473868=="

--===============0939292002165473868==
Content-Type: multipart/alternative; boundary="0000000000001cf1680631c9ee15"

--0000000000001cf1680631c9ee15
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Like I said, it's currently in no stable release.

--M

On Wed, Apr 2, 2025 at 12:30=E2=80=AFPM <carmixdev@gmail.com> wrote:

> ok, thank you, but this api is also available in the 4.8.0 stable release=
?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001cf1680631c9ee15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Like I said, it&#39;s currently in no stable release.=
</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote gmai=
l_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 2, 202=
5 at 12:30=E2=80=AFPM &lt;<a href=3D"mailto:carmixdev@gmail.com">carmixdev@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>ok, thank you, but this api is also available in the 4.8.0 st=
able release?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001cf1680631c9ee15--

--===============0939292002165473868==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0939292002165473868==--

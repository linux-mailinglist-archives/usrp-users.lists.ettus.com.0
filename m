Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5ECAD72DB
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jun 2025 16:01:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 77978386163
	for <lists+usrp-users@lfdr.de>; Thu, 12 Jun 2025 10:00:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1749736859; bh=ncjsffTjRx53hQQdox/nO28/YyPXV1LBrSE910EJ+N0=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=SYiS4TrN8pmv6xXP2XoF2bBaI4SPybNv1/rKIs3PDKK6VRb3t+DtAghWxe90EVyEK
	 Ljmwuc1XjGGthGh3hT4vQyVqreiTBXCZ5OcaaKlN5jGM/PZiCJ3lG+Vf5Y9fMnVU5N
	 aQ8o4PSVqD6dZ/4pKtHaoRW2I9CDXi3Q4fzzskC288ZfoqMXTkAxMeoj6SbXwQMZ/G
	 OiVs7Oy/uKe9Vs1CCX7PyEEvM+MPBpLNTPydOcSw4PKr66xp+EegQ6C7+1+sA8M0va
	 H/xEztyiG/AT8HMN8ITsqujocfsonXVB1zUAeDaZpie+sts+zjWQ2kRTWPfVaQ2gEI
	 b3+CMbLSQuqyg==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 2CAE338612D
	for <usrp-users@lists.ettus.com>; Thu, 12 Jun 2025 10:00:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="nlVp9RYf";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-607b59b447bso1797568a12.1
        for <usrp-users@lists.ettus.com>; Thu, 12 Jun 2025 07:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1749736835; x=1750341635; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eGjIXbLmxUxim00fRvHOOivZaCfx3BD6ENiFBNH7H9U=;
        b=nlVp9RYfXK1vl9p8iE2xeuPp5lKIYcqWamz/zl9VDkJKlvZChVp8I4EV1AcbdAMMhw
         vnaE6hXltnCN9js+l8lRffSLiSnNS6dvKzUZQe7NL60kbqhnmLynTa35tceNzvF7Tq5x
         crNlJ2AMgEiezesPp45fEELgqLFvGKF9Cy08BiNTWrTIDVh8TFYhyoPJ7IobTW26+van
         U+cosk//UOPwcWmUGtGZzP4tb/fqzSM9SqYMd2ky3wFcH1gUqxcNDB99fj9VP5EVO0cW
         cd8Lv8ikePzRhRXpMjYWwNrEcsgomLpdR9BritjJAh7lIaXcghBsAeH5iriYwjjSTnBL
         5zDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749736835; x=1750341635;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eGjIXbLmxUxim00fRvHOOivZaCfx3BD6ENiFBNH7H9U=;
        b=GuC4zEAAdvKsVCIyxiC7J+LksXlO0NRDh5QVi01gSWS+G7nrWZopgwyQE4oI8UAZT7
         /dkLAYEmXeSF+WiA38ucBGKLxegzi0D0buvuRpORC0PvUh9IONpdAPXcYSjBycJoUq4d
         GtlZ81WBQeSFtBIEmnFgPxyjcDJcOTzfV/wKs/TDW88S1lOgNYJJmKIyJTCPpYBFX+2y
         b8wvIT1y8IxmtCVhpBDApLUxd1e1/dwDCigwEimB0MMJoK9K/Bfv1hJWx2VKEJ+qvC6r
         p+bM1LNLa6WHWpyXdxaY0OcnnM+BJCFWqQLyaFEdcAEQD6rf7CKXaujCm4JHp75zZ6ML
         PbYQ==
X-Gm-Message-State: AOJu0YyN8sBOYzBa+LnpJm8SpgaxF34gEUyVgb3jWf89rHh6M5VWcOTv
	5zUmE+RGHz0sMyI1tuTeHGhV/YT02T7vixzO2di4g8JWSg5bsoiYlQ3IhFTpK+k6o3Q3tw6nOuk
	f2ZoXlhvgHTJ/rye/9X9iHGvlCVqJNvkU0vzK0ZQcwi+EJKm7TlA7o5Q=
X-Gm-Gg: ASbGnctVd+1K2CasSkM1kpHfNYVGqLtrwkjF1gYrllTo5x9Bd1dY63DCQIm6rqmY9ag
	elqHe5P1alu7M6Sq7/xeQYJufhkHtpIdHjIb6GumyIZcDPKdK1umkn2WCoCdGO1PKH01UW+tHkn
	ntx0VbZ3Z+e1LU1A7OLhALZc8THToHiAaJ1sw4EW1drVHQpXnhz9Dmko4sTc+r88fYQLPexJECo
	2Q=
X-Google-Smtp-Source: AGHT+IHcSMsODwp4Js0pq5e4COAtOH7VBuGUHYrgrAjQdRKPxhhxAjuyjy0xGcsoi/7xn3wU3zGPRHksdfOD7jmON5g=
X-Received: by 2002:a17:907:724c:b0:ad1:e7f0:d8e5 with SMTP id
 a640c23a62f3a-adea925a4eemr334911966b.16.1749736834668; Thu, 12 Jun 2025
 07:00:34 -0700 (PDT)
MIME-Version: 1.0
References: <cHOXhjPOGYttftfh3A9LILE2Xhl6GSEcpu77wggfk@lists.ettus.com>
In-Reply-To: <cHOXhjPOGYttftfh3A9LILE2Xhl6GSEcpu77wggfk@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 12 Jun 2025 16:00:23 +0200
X-Gm-Features: AX0GCFv5XJ1KPBy3B80xNEFUJ5raHhG0EyU3QF1zWQY-UaPBef07GXrpqmLB_mM
Message-ID: <CAFOi1A4q0SN0Lb=UtSOGpkYxYb-EMOg+4bAyGwN3FdF+_a8AXQ@mail.gmail.com>
To: tommytsui@w5tech.com
Message-ID-Hash: HDRMEAK2KUUWV3WMC7ZHTPAT4RALDSY4
X-Message-ID-Hash: HDRMEAK2KUUWV3WMC7ZHTPAT4RALDSY4
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: tx_offset and rx_offset parameter usage on UHD calibration utilities
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HDRMEAK2KUUWV3WMC7ZHTPAT4RALDSY4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5448168775261523979=="

--===============5448168775261523979==
Content-Type: multipart/alternative; boundary="0000000000007b2c9f0637605a1c"

--0000000000007b2c9f0637605a1c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 12, 2025 at 12:59=E2=80=AFAM <tommytsui@w5tech.com> wrote:

> Hi Martin,
>
> I have been trying to find out whether the lo-offset applies to the first
> LO or the second LO as there is no documentation on how it applies to a
> specific radio daughter card. From what I have learned, a lo-offset can
> apply regardless of the RF receive frequency is above or below 500MHz. Wh=
en
> the RF Rx frequency > 500MHz the first RF stage uses direct frequency
> conversion. Hence, 1st LO is not used. This leads me to believe lo-offset
> applies the 2nd LO.
>

This is correct. Another way to think about this is to realize that the
lowband LO is nowhere near our signal of interest, i.e., it has a built-in
LO offset.
--M

--0000000000007b2c9f0637605a1c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><br><div class=3D"gmail_quote gmail=
_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jun 12, 202=
5 at 12:59=E2=80=AFAM &lt;<a href=3D"mailto:tommytsui@w5tech.com">tommytsui=
@w5tech.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>Hi Martin,</p><p>I have been trying to find out whether the l=
o-offset applies to the first LO or the second LO as there is no documentat=
ion on how it applies to a specific radio daughter card. From what I have l=
earned, a lo-offset can apply regardless of the RF receive frequency is abo=
ve or below 500MHz. When the RF Rx frequency &gt; 500MHz the first RF stage=
 uses direct frequency conversion. Hence, 1st LO is not used. This leads me=
 to believe lo-offset applies the 2nd LO.</p></blockquote><div><br></div><d=
iv>This is correct. Another way to think about this is to realize that the =
lowband LO is nowhere near our signal of interest, i.e., it has a built-in =
LO offset.</div></div><div class=3D"gmail_quote gmail_quote_container">--M<=
/div></div>

--0000000000007b2c9f0637605a1c--

--===============5448168775261523979==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5448168775261523979==--

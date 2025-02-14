Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FEFDA366B4
	for <lists+usrp-users@lfdr.de>; Fri, 14 Feb 2025 21:13:17 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 32A1D386124
	for <lists+usrp-users@lfdr.de>; Fri, 14 Feb 2025 15:13:16 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1739563996; bh=05FDWD8vquy2TgTxWHYXRrESqlflMGmDIWqyBu5xiNA=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=kZ+GU0+ilA4vjBmp+k3lOsIQLPFioTvCRhdeYHVHwPalY75R5h8uhHS4Nv83w9sR1
	 uHM15wgSN5GNHyFtIZFdKUTH//FoiFYRX81BENp9L8JJlx8nvWi7MuRI0N9e43ix1w
	 dcNBCAs7lYnLvszdNn/WdzoLXwL/c+2rAKQJ3R1IYh6Zhh5O0b+DxB7FcQBu+eVzK/
	 gG5YUpqXE60tNs7mL5HFiBnGEsiSOJblj9LjSqsVUDyJesVc7o2Y5IbPOPH8yBfuI6
	 VsBqa77xdNQYDj2xgVi2Ylvfa88MGTqCIwGpEDl94Es2FZHCDQgZKvtyg3CqwkbcL2
	 M2/WoIqJwBl4A==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B7AF386100
	for <usrp-users@lists.ettus.com>; Fri, 14 Feb 2025 15:12:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="rtWDz5IP";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5de4a8b4f86so3500781a12.2
        for <usrp-users@lists.ettus.com>; Fri, 14 Feb 2025 12:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1739563946; x=1740168746; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=md6ssWyWcmwAWDPV5/iFJzH8uiJDnSoWyw3MHyKR59o=;
        b=rtWDz5IPVsPYpegzQhDxFFHsHrdcdkdLf/IriB4Q5i9la5g+PKkMp+sSZTL8sPYm36
         uu1vYu8v8N55FPw6r3gTWVINN6AErYbosoKh6xqK9R3Q9shAj9PbJ+bro0neVA2WExyj
         8R0ZOSX7DDNo7KvnPggbJEiD33yQww4qG8bkPh3QvuB3CjP2KSoZj9N2KN73zbd9CXwG
         Y83GdqGcZDHz271SP+9inxwpAj2zudUrNWHWjQObfK7HAvv4o63kqDDwEKScXSintZJ4
         TRWjd61z0PmzhewqXSxrYvSrYKWTq9wbKe9BeQxOF0QeHF4zdQlDxB8+KUk6kPeb7CMU
         ay2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739563946; x=1740168746;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=md6ssWyWcmwAWDPV5/iFJzH8uiJDnSoWyw3MHyKR59o=;
        b=bwKICl5uVwRYcn4eYpyDtjldVw0EinLZCIxwsNsagVQL7uu1LmIx5+0EWV0QcBtQ7+
         HmFRebZhnLSTYl4WpgDpArkLi0QXfeUQUXuSlUq9zdWehSsyC0j60p66b60+A64wtlko
         OX6k1a7dwPPHzBNQxIiDgiNsBLWFBfaFHVYiA8Bf6jsBSaxvCunkhnO9LaEgDSHoiGAE
         lHSPj51DZUblKZoXGJaTDbsseFotDVPOvgkrDSJo+GQ1471UnuXjpz6F+keX+sUNo4vi
         gIPaErIrxpl3m5olcGQjUB7k3zSCSQfYU3kRErny3ZS9faV0gyHJiETaFwmRp2MCMp0N
         SuzQ==
X-Gm-Message-State: AOJu0YyPnppmoMwIIbcx8g6DMvlVH4Z1MIJr+Vu7JYwIdBv2LbkiEvok
	tsi1ZRXzktveyfbcAmRQnayDyrHnZJObq4uWPee1NHIoUdUMxQjS6qK7N2hFc4K63aig1DRFLqn
	FMNBoOOToUPHL795Z7k5xw1gczA36kZZYg4vEd55j4oTyZuEZbCYBZw==
X-Gm-Gg: ASbGnctWsbXDBdveagnTHQF3nb8tEuQ5L7nM1ersFjy0N377VMQdJOn6IsZlWNT/e+9
	UJCqQq98PWxYivHV6UimOGWtEba9x04oPO5jJ6PSdpdgCLS4wV/mpAtDOfx0S18jrxbNkjDdIcb
	X1Wmxcz2DKpO2dDMfA5r9GJ0MvOaJ0
X-Google-Smtp-Source: AGHT+IF9sVCwBOhQIjZcEW8rGXD5TAsAwq53JVNYFNzhCEYYDE/Qi0RdQW88zF1hUkgwbJJMqL1uboWFoKCGgblgqZw=
X-Received: by 2002:a05:6402:1ecd:b0:5df:6de2:1e38 with SMTP id
 4fb4d7f45d1cf-5e03607e9b2mr627021a12.17.1739563946229; Fri, 14 Feb 2025
 12:12:26 -0800 (PST)
MIME-Version: 1.0
References: <t5XM0SPgDq4GtQkEsa3p8w3Q8ZboseLEq4aYivL6q4@lists.ettus.com>
In-Reply-To: <t5XM0SPgDq4GtQkEsa3p8w3Q8ZboseLEq4aYivL6q4@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 14 Feb 2025 21:12:15 +0100
X-Gm-Features: AWEUYZkJWza631Q2oR1BkD0m1ZOgEecuGRqK4VZs4Wef6Ygmj-PSlNP6VUYKHUM
Message-ID: <CAFOi1A67XZpqsHhNwSpA5B8urQqkc-f_0E4YMqhD3Dk-jcYckA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: KS2GAX6OOXV5OXYDU3MR4PLGIWAWZTUC
X-Message-ID-Hash: KS2GAX6OOXV5OXYDU3MR4PLGIWAWZTUC
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Reading/Write registers - Timeout
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KS2GAX6OOXV5OXYDU3MR4PLGIWAWZTUC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0860334833541262368=="

--===============0860334833541262368==
Content-Type: multipart/alternative; boundary="000000000000145f7e062e1fcb3e"

--000000000000145f7e062e1fcb3e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If the control FIFO is full and is not getting cleared in time, the
software will eventually throw an op_timeout. (Originating here:
https://github.com/EttusResearch/uhd/blob/master/host/lib/rfnoc/ctrlport_en=
dpoint.cpp#L458-L468
).

--M

On Thu, Feb 13, 2025 at 9:16=E2=80=AFPM <cyberphox@gmail.com> wrote:

> Hi Martin
>
> Thank your for your reply.
>
> This is a software question, related to register peek and poke. For
> example, if a register read (via ctrlport_endpoint_impl::peek32) is
> performed, is there a chance that the software can block (or get stuck)?
>
> Note: I am using UHD-4.7
>
> kind regards,
>
> Marino
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000145f7e062e1fcb3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>If the control FIFO is full and is not getting cleare=
d in time, the software will eventually throw an op_timeout. (Originating h=
ere: <a href=3D"https://github.com/EttusResearch/uhd/blob/master/host/lib/r=
fnoc/ctrlport_endpoint.cpp#L458-L468">https://github.com/EttusResearch/uhd/=
blob/master/host/lib/rfnoc/ctrlport_endpoint.cpp#L458-L468</a>).</div><div>=
<br></div><div>--M</div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 13, 2025 at 9:16=
=E2=80=AFPM &lt;<a href=3D"mailto:cyberphox@gmail.com">cyberphox@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
p>Hi Martin</p><p>Thank your for your reply.</p><p>This is a software quest=
ion, related to register peek and poke.  For example, if a register read (v=
ia ctrlport_endpoint_impl::peek32) is performed, is there a chance that the=
 software can block (or get stuck)?  </p><p>Note: I am using UHD-4.7</p><p>=
kind regards,</p><p>Marino</p><p><br></p><p><br></p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000145f7e062e1fcb3e--

--===============0860334833541262368==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0860334833541262368==--

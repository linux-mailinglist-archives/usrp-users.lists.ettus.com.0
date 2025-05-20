Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 07754ABDEB4
	for <lists+usrp-users@lfdr.de>; Tue, 20 May 2025 17:20:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2F3DE38541B
	for <lists+usrp-users@lfdr.de>; Tue, 20 May 2025 11:20:36 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747754436; bh=pIsnKKmEutvJmfCDbD79Epg4ufr3cOHT3jFwEnc13rM=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ZoR7hRDtHaaVEMkUiueYf0iZPKKQm9ANU9+QJVpOvTTNvoZcfac+8PSImdLQfODCa
	 voizjhT8vzkciw3jU5AyqkEv40VKbsryb3nxQ8i2AkkOQSniBBx4nL3OZAuDQJfh8E
	 RfHPDAalwXaPfsQOJjT7/GWPKx2Gf8q3kICf+W+KY3jiNGDSNTDBdENMFCSJ5YWO28
	 70yMP7ZHlbATh/WBJ95GjuaU9c9f2fMcRb8NelTV8TMeOIBRN1pxzzroZT1QqqsreD
	 f5cFMJKWXrfWadVBTIpQF6p6Pdm7sRl85hAAoE31t2IiiaRakrEgs/200/NEE3Y0Um
	 671dLsyVcxQYA==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 82A313850CD
	for <usrp-users@lists.ettus.com>; Tue, 20 May 2025 11:20:00 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="GyWzpUm5";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ad5533c468cso472791666b.0
        for <usrp-users@lists.ettus.com>; Tue, 20 May 2025 08:20:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1747754399; x=1748359199; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hfe3tUv3lM+/dX2i4nGUPeyoGeS23L0zhPRnsuYKdl8=;
        b=GyWzpUm5Yvqoq7usIGuVQsgDdA9OCflQDDanj+TvOd9+sKCTqjhGSM9YwyY+xeWh97
         Z57jH8xA1w1isq9bTMlaEJMsRbl6pdHaySmbtMNE5ks9Q/JfDT8F2pOi/wDuGws7qkL3
         h7pPPmkwbhswGf6Krq3R5WjFJWwGGtcgKOwI5OZ13nfb5zt6t4yuNweiGt+IsZoOFIQm
         PeYcLWCz/nJuiE7dInD80XuK9gKwdRnzIEtQVzkS5MhTUcrMkD9cMiMf2BQbv5NyYad4
         0/JJhzG/XIfBx/rOUAEuzq3VzkoIJctILN0VsTczlXM4qSmh/o8mstBP9ym2iGJrbDDs
         x6Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747754399; x=1748359199;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hfe3tUv3lM+/dX2i4nGUPeyoGeS23L0zhPRnsuYKdl8=;
        b=NORLf0f4ASDzQrycBR3+mmrjstpM5jY1yxeNtQkjgwbUO2xCDc1arTAQva7spGOR4F
         xUOwrMFCo2J9AowhxbIdMGcFy13dpTgF47JtJsKHUSyL1oujKJ2fu1f4WJOrwzxNuznU
         b9xm/zHx7/11P2opeRwfUTkgGFPvKiRryzzr3LxWMT82u1UolAt6dzLq9RddktenTWMR
         gWx4hqG5ZC+kYRgNu413Y/wOAnVow/5BlJylDtXJrTCSnbFpsl+/0qaXDSjW6L5EVxoC
         cKdKnFmY7A30bmWRkFDjEaSJ3/nJ+hYNVjlSiHn+Jsea7tSIsW9OEj6Rl9Lam2bF0xzc
         E4oQ==
X-Gm-Message-State: AOJu0Yzx7tJdtiQhMo1RsYOcBNofzOoKusEG0wrZdrvg/JlsLyJknL3x
	HebJqA1UWt9fRPLEpwEiwLubtGJp9I87BDU54T7aL2rpN8NJBwLyCa+ciKw0CjYT29D2IAt8yKH
	U7Ej8Q5b6F61OmkE2Uu/V78r1/nt3JhR06Fh6Uh/8g97YOVpj5L643Cc=
X-Gm-Gg: ASbGncuvbQavDWzfWxb94n+vL3BSZ6+G3jzc1EotfekuHzBaJG4Gxe73eib+NcntspD
	Yhk9wGfU4k3JvrbjTHsbMKYv/0bUK0nw4sZGIkRwcRwimwzOHvn+LroLl/9Ui8HyKUyAE2OKORm
	GxRhhY10fchulgcQu58b1ksqz4A76nx8XVdfIje/krEG65JbALIrp5G8LiPsDFfbY/
X-Google-Smtp-Source: AGHT+IHwWbkHf8v4zYUBqxkC5RmnZqTW5UpJ0Srl3GVu5bnNIcYe8iOBPU+nmd/SAFEqkPdOkgktP6v8QlgTXo81YI8=
X-Received: by 2002:a17:907:7205:b0:ad2:2dc9:e3d3 with SMTP id
 a640c23a62f3a-ad536ffc80dmr1965807466b.57.1747754399023; Tue, 20 May 2025
 08:19:59 -0700 (PDT)
MIME-Version: 1.0
References: <yuCEofPQj7xWtaI6HmXPDI9JolEWljK2hUYzvKLX5k@lists.ettus.com>
In-Reply-To: <yuCEofPQj7xWtaI6HmXPDI9JolEWljK2hUYzvKLX5k@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 20 May 2025 17:19:47 +0200
X-Gm-Features: AX0GCFvcLXy0kGoR1dwceq3-TzxWXDIKPWbwTyKIsMUomDKoA4vp2EJY5N7k9c4
Message-ID: <CAFOi1A5krjvTwdvz3M1vnrSygeEEnGiojGNMZGH3ciTCAtEsFw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 2DC326EEVQEHRICRSEOG4HZVA7JQM4G5
X-Message-ID-Hash: 2DC326EEVQEHRICRSEOG4HZVA7JQM4G5
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Signal quality using RFNoC DUC blocks
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2DC326EEVQEHRICRSEOG4HZVA7JQM4G5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2577057348313480629=="

--===============2577057348313480629==
Content-Type: multipart/alternative; boundary="0000000000001bd6a2063592c82c"

--0000000000001bd6a2063592c82c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yeah this is a new-ish feature (sending tune requests through the graph).
Previously, you would have to set the frequency both on the radio block,
and then on the DUC block.

--M

On Wed, May 14, 2025 at 10:21=E2=80=AFPM <carmixdev@gmail.com> wrote:

> I discovered it myself, I wasn=E2=80=99t sending the tune_request_action =
to the
> system, but just setting the radio frequency through the radio_control
> block.
>
> If you forget the tune request the radio will not fine tune to the desire=
d
> frequency
>
> It was not obvious and maybe I=E2=80=99m wrong but it seems not well docu=
mented(
> the unique clue that I found was the tune request on the replay example,
> but it was sent on the replay block)
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001bd6a2063592c82c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yeah this is a new-ish feature (sending tune requests=
 through the graph). Previously, you would have to set the frequency both o=
n the radio block, and then on the DUC block.</div><div><br></div><div>--M<=
/div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, May 14, 2025 at 10:21=E2=80=AFPM &lt;<a =
href=3D"mailto:carmixdev@gmail.com">carmixdev@gmail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><p>I discovered it m=
yself, I wasn=E2=80=99t sending the tune_request_action to the system, but =
just setting the radio frequency through the radio_control block.</p><p>If =
you forget the tune request the radio will not fine tune to the desired fre=
quency </p><p>It was not obvious and maybe I=E2=80=99m wrong but it seems n=
ot well documented( the unique clue that I found was the tune request on th=
e replay example, but it was sent on the replay block)</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001bd6a2063592c82c--

--===============2577057348313480629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2577057348313480629==--

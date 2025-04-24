Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC4BA9B933
	for <lists+usrp-users@lfdr.de>; Thu, 24 Apr 2025 22:29:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 804ED385F5B
	for <lists+usrp-users@lfdr.de>; Thu, 24 Apr 2025 16:29:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745526571; bh=H/micPyZzwJLjN6sJPCH7uNlYqFsnKHhCg3zxuG8SXU=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=bTT6WgrdvH4ngl+unKtAtrjMtnX+g3IcpGXKh2au6DtjAtMreB8JFhxKWayWDHRUc
	 /cF1NKvcjzEZ9EF2I005xi1mGW3yo6BXB1FutzydZJ19WS/QL/oLds86EkiGyrxFEH
	 t/DsThkJ4+PVGykcCQ3iLBN+u+Ph+MjLAZkZW2hb1y4CIPeNUHoMtsaXB0KfKgDkYf
	 PGgB7L9Z4VvySSQzX5gSluiYrCKxNT9Rsy2hId4qEsQ8oeCAxZpIDcHDuzlXyPRRTx
	 BkFWLyk5IynDux3QUeec5i1zUWLNJUeJcpKYXcqBxxgCHl1u4LHKJPp+f87xBXSy/T
	 McxTq8eangM/w==
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 77F73385E59
	for <usrp-users@lists.ettus.com>; Thu, 24 Apr 2025 16:29:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="Vqa6/fY/";
	dkim-atps=neutral
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-524125f6cadso1289434e0c.2
        for <usrp-users@lists.ettus.com>; Thu, 24 Apr 2025 13:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google; t=1745526553; x=1746131353; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SdP/UgTLz5QYx5HqFn6T/d0dVj0rFQBl/tMGDVUat9I=;
        b=Vqa6/fY/rA6Ew428pcykIowanAAJ2eCNCnoqyAmbpgO6qweUKetStOs16wSBBfn1dQ
         trY5GFHNlPYOCSrnylCUKKjLeLMWD1PSaB4XzucJo9V4mRybZqmArKenUSinIa9D61AB
         RBm5we9PbZM/ewM6cp7yVFls9zSfZfjkZzRtfAD8PKk9LwU+vFRT+l0Zdc3D6zR/4mLZ
         n/uTgsL16st4JfI/9FzuvBPk10z/J0fnH53JhxSrl13GQT7MPZBg0EfS3rkA2sfDytCO
         mnHpHeoTWY1Q4Q/DtHe9RsKIoUMJN7BxR0mraRnBe/xwmLIgJzMKjWVErlrWlKvlsGiV
         wZlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745526553; x=1746131353;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SdP/UgTLz5QYx5HqFn6T/d0dVj0rFQBl/tMGDVUat9I=;
        b=J7Pf8l1TFjWecQSAxxsTtoIGs4rTVj/CVUI6D64/sWz+K7VU/vPEyFbdCvB30cVm6Y
         R+ScHNpHOZ5xXw4uiXGFFhxmdSOOAMf3RKTLRRewERgV4uXAu52Hci8s9xw+WCod/YG9
         RjAC6+mGKcFKOSZ1dienrKOqrFA47yjyOXucdNm7ZKGwSyKwVvKQdPBzGq5f5o4k+cVf
         PYXxDUu6oKY0gfmWfbDRF6RI0+QtAOYH4GxkJ2HRIna46u+HSdVRq8ZoJSKSkGzWreSb
         PpWiG43RFQg7CLaCP/kflABOxwA3L95S6Ino+tPqCGzOsoQ0L5xp7sySXXqVV6Qb6rGD
         TiSw==
X-Gm-Message-State: AOJu0YxMoaYwa6neBFskGFfC+S5BAqsKS51q3AlMXNH7mL45WNGRr+4I
	jjCaD6zBpQJUU+Kid3xuUC+k+dNk6bAgbVtQHfv+by2/ZKpBDoZX8HydvvrHe+FoZe2BIDWRu0p
	aJoIbyfo5vX1t9hFf9sw7dGRnhHxOxftfrSGD
X-Gm-Gg: ASbGncv3WCJgsVu4JtrUObFK4sz5uL059jSgluAvwmoyVgk9c0zvm95D110ZlpjdfyO
	djVIBLbNekB+QmXTpUSH3r8kpTvHOKgJittzMb+ENxLUPrPyGy6DBcRn1eEuDUkJOn2+A/RdSww
	3R+m4G62hwZmLx1qvCOXmtpXTUIv7LkZ7Q
X-Google-Smtp-Source: AGHT+IGMk7SCALRryLTXMw1L3jvwLGNj22jk/RgczToFWq/nIDQO8Q18ysO1prQZDukLShF6N+X8o6bXumywjOgEK4Q=
X-Received: by 2002:a05:6122:8c1c:b0:520:61ee:c821 with SMTP id
 71dfb90a1353d-52a85a54105mr1511737e0c.3.1745526552747; Thu, 24 Apr 2025
 13:29:12 -0700 (PDT)
MIME-Version: 1.0
References: <QZ3CeUSqtbH3RilvMEluhE5fEuHlSmyeLojBsvtcg@lists.ettus.com>
In-Reply-To: <QZ3CeUSqtbH3RilvMEluhE5fEuHlSmyeLojBsvtcg@lists.ettus.com>
Date: Thu, 24 Apr 2025 16:29:01 -0400
X-Gm-Features: ATxdqUFhPcjxWZgMwSPVYkSZDb8PSrTKtUNtbR5lprVpODAHJ4V_vLmJF-e3JZI
Message-ID: <CANvw1+SNdgXUbkF6NqzRVvgvWvip_BqfDnW8W1__gjWwcP_XCw@mail.gmail.com>
To: temirkarakurum@gmail.com
Message-ID-Hash: 2ODGB5ARJHODJSAI3MAUXBJCO44AW6AS
X-Message-ID-Hash: 2ODGB5ARJHODJSAI3MAUXBJCO44AW6AS
X-MailFrom: agurses@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: max input power
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2ODGB5ARJHODJSAI3MAUXBJCO44AW6AS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Anil Gurses via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Anil Gurses <agurses@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============4455932096237088689=="

--===============4455932096237088689==
Content-Type: multipart/alternative; boundary="0000000000001f7e8406338c12b2"

--0000000000001f7e8406338c12b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

It's the peak power input, not average. Anything beyond that level might
damage the RF chain.

A.

On Thu, Apr 24, 2025 at 4:25=E2=80=AFPM <temirkarakurum@gmail.com> wrote:

> I have a quick question regarding the max input power. -15 dBm is the
> suggested max power rating for B210. Is this average or peak power?
>
> If I have a +10dBm peak power signal with a duty cycle of 0.1% (30dB),
> thus an average power of -20 dBm, would this mean that I am safe? Or is
> there still a chance of damaging the SDR?
>
> Best,
> T
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001f7e8406338c12b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>It&#39;s the peak power input, not average. Any=
thing beyond that level might damage the RF chain. <br><br>A.</div><br><div=
 class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Apr 24, 2025 at 4:25=E2=80=AFPM &lt;<a href=3D"mailto:temir=
karakurum@gmail.com">temirkarakurum@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><p>I have a quick question reg=
arding the max input power. -15 dBm is the suggested max power rating for B=
210. Is this average or peak power?<br><br>If I have a +10dBm peak power si=
gnal with a duty cycle of 0.1% (30dB), thus an average power of -20 dBm, wo=
uld this mean that I am safe? Or is there still a chance of damaging the SD=
R?<br><br>Best,<br>T </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001f7e8406338c12b2--

--===============4455932096237088689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4455932096237088689==--

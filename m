Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 521EF917C5A
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jun 2024 11:24:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 071C03855F6
	for <lists+usrp-users@lfdr.de>; Wed, 26 Jun 2024 05:24:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1719393849; bh=AnPITmF6yQKKj9E8OpbSts/S+/Gx9uINym0XSch7zCg=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=D/z0LB8g2IhsS50B0BNfI20QUu6+o6ajaBx8M67HtZT4/LwUq4Pjq1rEh1v3vBDQM
	 i4hckR+2hajd/CcKXm/sDExHV3FMbBIBy+GH1ryfWJGPPOksg0ATb849VTVThfsEse
	 97kh338FgZKSZ9dLp1Yk332a0JzOGC5x0dapBEjBaaWaP9Y811h1hKMtplAJUr4ZNI
	 e+uUR2uv/wYN/mE5GjRZ7Emy4+fOfLw038T5IaZoLbVQKUQWTJNRedx2afKCndpatO
	 yxS82aXOqQdWZ0hPMVKoYJy//sGZcnYxNHHid7vHNOL3GFht1oDS1akETxWXCX19TL
	 zaIkEhOeg27ig==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 07219384779
	for <usrp-users@lists.ettus.com>; Wed, 26 Jun 2024 05:23:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="NNIMQt3u";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a7252bfe773so392196766b.1
        for <usrp-users@lists.ettus.com>; Wed, 26 Jun 2024 02:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1719393823; x=1719998623; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8vWb2KNzbbdhg538HgVsPITa6zafMS7dd/2ci2gqMYM=;
        b=NNIMQt3uzIMnpAmuW0o29bK8mtzmFJBTHOEBRh5lcjBY9jLCNg8qrHvnma6PUZXQIs
         JVrMQIA12XH97iK7mXzHjAwSWNnOXEfm5GI2REh+wY7c7t9S/PTYtLWZO7kYFAmHvUc3
         GcolCbZPgbgH2URvKH1q2Ikly+OAeQdrb2D/bqmM6HkKUxeh6H2jNGoiHsznCOKL2gy6
         SY5l6GfnWMl63wVa4bZKRqpf9YxMAj11hMgHN3Xg9xzxLbL92DPTvBQx1Hb0Rarb9Zpy
         ZbFCvieGYx9Z/1TVhj/YUCatc59q98XedB1dH/XGBo3FzQi8+PNbLiNlQgk3ac1qVtBq
         eD7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719393823; x=1719998623;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8vWb2KNzbbdhg538HgVsPITa6zafMS7dd/2ci2gqMYM=;
        b=XjPoQXBjBV9c+OHcZ4d1fcKb8RYP0nL+khQFBJiucZcNtxii98kRkPsCa8Rfhl1GgE
         yjH2BPKhIh5t5ePZg/SYXuFufc+zlBebIrxtt7m466p62wveA66adWWZB3/kC+x2uQe3
         0x7stQ+Dot2nnwKbPTaVt3P3xcNurP7Ea4GHNAPIlz2x6JRQnlrO40Mvzas08xp80i0x
         4L+NNVpe+yA8w4OAcJVd/TO3DuXpuQtTlIXlUNIErwH3jG+MhME3cvytEf5Yp9QOhZy/
         HbkoxESxx/KhG0PuCaFZYa73NUgRP0799AIe2gVUs0XLNpP0n++9dhadcpJBt7P0FHHb
         NmiA==
X-Gm-Message-State: AOJu0YwbJO6WGJlOe42p5xkOmY9ldu9oFmboOVdEbupfzVbqPtCkzOST
	imIST5MAa7HH+X1mwBMEUIk/f85DvhhVSm03nYBXl7RTib35n/2ZIzCc7lxdcWBErRcEYDScAcK
	q1CosJBm8lDQEjkGtqO1on2VZU64XJviFZ7y/Ybsn
X-Google-Smtp-Source: AGHT+IGkEmjTRWr+o4VBvD+1GRq9WNXZANp8PM5EbRqmEbJ/PjPLH4p9g4935EzWXISq5Z/+wPY5M992zU0TXTPrzQ8=
X-Received: by 2002:a17:906:99d0:b0:a72:5ba0:193e with SMTP id
 a640c23a62f3a-a725ba022aamr491505666b.61.1719393822648; Wed, 26 Jun 2024
 02:23:42 -0700 (PDT)
MIME-Version: 1.0
References: <_4kdSpsp43uA23Twys44Eh47XROibC7bGW1EtuHVazp72VtZNIzis015AGTjDHX6Gf-vkZ9BDq2Zu1nSgoW4oYJHHDJog31BbkZm38TcJ9E=@protonmail.com>
 <CAFOi1A7an4Tn=-X3HSJ0xC86Wi1+xtCvkDu=SSNdkzVjfSzCrg@mail.gmail.com> <lipjO127VfagcNKPNeeto8O2cbocBN1mwWu-aEhco26IkMh5uYMnbajhQVJ1s7_VO2L52lZNEbNhOMmz8FIDpSmHYcd6dfLVzgQd8BPLGq0=@protonmail.com>
In-Reply-To: <lipjO127VfagcNKPNeeto8O2cbocBN1mwWu-aEhco26IkMh5uYMnbajhQVJ1s7_VO2L52lZNEbNhOMmz8FIDpSmHYcd6dfLVzgQd8BPLGq0=@protonmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 26 Jun 2024 11:23:31 +0200
Message-ID: <CAFOi1A5hipHriJb7iP=R-LjDLmCx+3YKDZBf=X758s-_Sy8_hw@mail.gmail.com>
To: Olo <olo1618@protonmail.com>
Message-ID-Hash: YR5TTYCZM2DNQ5AGJLCOUSIXHL7DPIUC
X-Message-ID-Hash: YR5TTYCZM2DNQ5AGJLCOUSIXHL7DPIUC
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Clarification on Benchmark Rate Testing for USRP X310 with two TwinRX
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YR5TTYCZM2DNQ5AGJLCOUSIXHL7DPIUC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3260940444517324951=="

--===============3260940444517324951==
Content-Type: multipart/alternative; boundary="000000000000074987061bc7924a"

--000000000000074987061bc7924a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 26, 2024 at 6:52=E2=80=AFAM Olo via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I understand that each TwinRX daughterboard provides two independently
> tunable channels, each capable of 80 MHz bandwidth. With two TwinRX
> daughterboards installed, I should be able to achieve a total of 320 MHz
> across four channels (4x80 MHz).
>
> Could you please confirm if this understanding is correct?
>

Yes.

> Additionally, I would appreciate your guidance on software recommendation=
s
> to control the X310 with this setup. Specifically, I am looking for
> software that allows me to manage the tunable channels independently
> without interference between them.
>
>
Start by reading the example twinrx_freq_hopping.cpp in the UHD repo. For
the most part, TwinRX behaves like any other daughterboard, except for the
whole companion-mode and LO-sharing.

Happy RXing,

--M

--000000000000074987061bc7924a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 26, 2024 at 6:52=E2=80=AF=
AM Olo via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usr=
p-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div style=3D"font-family:Arial,sans-serif;font-size=
:14px"></div><div style=3D"line-height:1.5"><p style=3D"font-size:1em;margi=
n:1em 0px">I understand that each TwinRX daughterboard provides two indepen=
dently tunable channels, each capable of 80 MHz bandwidth. With two TwinRX =
daughterboards installed, I should be able to achieve a total of 320 MHz ac=
ross four channels (4x80 MHz).</p><p style=3D"font-size:1em;margin:1em 0px"=
>Could you please confirm if this understanding is correct?</p></div></bloc=
kquote><div><br></div><div>Yes. <br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div style=3D"line-height:1.5"><p style=3D"font-size:1em;m=
argin:1em 0px">Additionally, I would appreciate your guidance on software r=
ecommendations to control the X310 with this setup. Specifically, I am look=
ing for software that allows me to manage the tunable channels independentl=
y without interference between them.</p><br></div></blockquote><div><br></d=
iv><div>Start by reading the example twinrx_freq_hopping.cpp in the UHD rep=
o. For the most part, TwinRX behaves like any other daughterboard, except f=
or the whole companion-mode and LO-sharing.</div><div><br></div><div>Happy =
RXing,</div><div><br></div><div>--M <br></div></div></div>

--000000000000074987061bc7924a--

--===============3260940444517324951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3260940444517324951==--

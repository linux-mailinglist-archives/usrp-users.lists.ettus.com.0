Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D2B3D8CA5
	for <lists+usrp-users@lfdr.de>; Wed, 28 Jul 2021 13:22:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6824B383F89
	for <lists+usrp-users@lfdr.de>; Wed, 28 Jul 2021 07:22:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AgklT7ZV";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D794383EBB
	for <usrp-users@lists.ettus.com>; Wed, 28 Jul 2021 07:22:15 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id t66so1846304qkb.0
        for <usrp-users@lists.ettus.com>; Wed, 28 Jul 2021 04:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=Zr0hXM/y30EFsaFaskBPgTS/e52a6wBgnI7OBuZjeOg=;
        b=AgklT7ZVylGfgOYLjpNJJS7NzVMgWzoi+E/5RN3CqCGxyRz+9TemMmd5jt8JB+ZLp5
         r9y+mIyFhC6Y7kvoRnAdc9650fNfpATjeFXGbICKL82YsUoIW0MZBhyl6tTuHEbFo8sq
         3QFvCQEGDJDGliTB6e4UQWo9ryaKuD8j61zCfQS7ug7GZTG5kiy/1b9LU1yVnxtEUEAO
         hLKse6t6SebmVfuQwPIdyS7H8CgqcPNHtO1UClXOsK5uqV/ZqXAfANPebU0DDq4eZlCu
         IYYgkLkwypzfa3OTfO25Sz6vL43zvlmW5E2gF/zEu8y4R7QkVZgZVwxrbNVL3Lzhdabn
         mH5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=Zr0hXM/y30EFsaFaskBPgTS/e52a6wBgnI7OBuZjeOg=;
        b=lAb7UE2LTFUaSYH5MUFJJZAagtM2OUyWafH9oUe3tnWgV84zeAa8WKBKv6yjSYcfpN
         TV6ZcSp9BfukThqKyPAYDDXwfVqvDyPEo5gxB7lpshxRfiXVyXbDew+u+FUvcC7RforT
         lKP+IJWb7C4KwMl/Zbyzbc/B7FWz8h/o8N8VgOji9yx6cR9XRj3E6fEVohFg3MH2GUOg
         gp5/qnceFfE4PYIBjc74RhqIXVrPvfNYgt76z42YHyDk8cJvN4FePZ/JyKI5j/oZJyyU
         d+YTb3+AGLM+f7jKHbxfY4gdN68VSXXBSmaBNh0FRRnbExgrK+NM0zkRcA9MdqLmE19G
         giWw==
X-Gm-Message-State: AOAM531UsYfNgBappe4tl0ysiWv8m7z4UzxH4aG+gG3/gYGRdHf8BcW/
	T4UIRadiAimfsWMxfeJ1JNcrNBQtpwI=
X-Google-Smtp-Source: ABdhPJwiCeawQ3/Q8WjSjC+zJWgmCLzIHTW82WnkFfO85njPiQPYBi9JzGpDdAlcmBdm1BPPPDehAw==
X-Received: by 2002:a37:65ca:: with SMTP id z193mr26174466qkb.174.1627471334488;
        Wed, 28 Jul 2021 04:22:14 -0700 (PDT)
Received: from smtpclient.apple ([2601:151:c000:a810:2115:3421:ad95:38be])
        by smtp.gmail.com with ESMTPSA id i123sm3207078qkf.60.2021.07.28.04.22.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 04:22:13 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Wed, 28 Jul 2021 07:22:13 -0400
Message-Id: <A73A8381-F728-4FF0-A778-6501EBC65A3A@gmail.com>
References: <4istUhQdwqkLnvXe6MaqvBVsaHcuVfiXOtF9UvSUs@lists.ettus.com>
In-Reply-To: <4istUhQdwqkLnvXe6MaqvBVsaHcuVfiXOtF9UvSUs@lists.ettus.com>
To: rblack@swri.org
X-Mailer: iPhone Mail (18F72)
Message-ID-Hash: BTBM5TS5VPZDQE7XMP3ITIFJD3AMFDRR
X-Message-ID-Hash: BTBM5TS5VPZDQE7XMP3ITIFJD3AMFDRR
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoc Fosphor + RFNOc Qt Fosphor Display
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BTBM5TS5VPZDQE7XMP3ITIFJD3AMFDRR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4967878288894468060=="


--===============4967878288894468060==
Content-Type: multipart/alternative; boundary=Apple-Mail-48936B19-2CBF-4B3D-A873-8CF4E2FF4D54
Content-Transfer-Encoding: 7bit


--Apple-Mail-48936B19-2CBF-4B3D-A873-8CF4E2FF4D54
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Follow this post to the letter.=20

https://lists.ettus.com/empathy/thread/3G73TSCWNNMMHDV3RRXZYTSJP7SP4JDU

Also, make sure the data type on the streamers isn=E2=80=99t set to =E2=80=98=
auto=E2=80=99. Explicitly define sc16 input and s8 output. The Auto data typ=
e appears to be broken.=20

<end transmission>

> On Jul 28, 2021, at 01:22, rblack@swri.org wrote:
>=20
> =EF=BB=BF
> Has anyone had success running RFNoc Fosphor Block connected to the RFNoc Q=
T Fosphor Display?
>=20
> The error messages indicate a data mismatch between the two blocks, and I c=
annot find a set of parameters that allow valid data connections between the=
 blocks?
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-48936B19-2CBF-4B3D-A873-8CF4E2FF4D54
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto"><div>Follow this post to the letter.&nbsp;<=
/div><div><br></div><div><a href=3D"https://lists.ettus.com/empathy/thread/3=
G73TSCWNNMMHDV3RRXZYTSJP7SP4JDU">https://lists.ettus.com/empathy/thread/3G73=
TSCWNNMMHDV3RRXZYTSJP7SP4JDU</a></div><div><br></div>Also, make sure the dat=
a type on the streamers isn=E2=80=99t set to =E2=80=98auto=E2=80=99. Explici=
tly define sc16 input and s8 output. The Auto data type appears to be broken=
.&nbsp;<br><br><div dir=3D"ltr">&lt;<span class=3D"Apple-style-span" style=3D=
"-webkit-tap-highlight-color: rgba(26, 26, 26, 0.298);">end transmission&gt;=
</span></div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Jul 28, 2021,=
 at 01:22, rblack@swri.org wrote:<br><br></blockquote></div><blockquote type=
=3D"cite"><div dir=3D"ltr">=EF=BB=BF<p>Has anyone had success running RFNoc =
Fosphor Block connected to the RFNoc QT Fosphor Display?</p><p>The error mes=
sages indicate a data mismatch between the two blocks, and I cannot find a s=
et of parameters that allow valid data connections between the blocks?</p>

<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-48936B19-2CBF-4B3D-A873-8CF4E2FF4D54--

--===============4967878288894468060==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4967878288894468060==--

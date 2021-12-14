Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D32B2474D0C
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 22:11:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 147AD385579
	for <lists+usrp-users@lfdr.de>; Tue, 14 Dec 2021 16:11:17 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="St1Y2iqg";
	dkim-atps=neutral
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 073C23852F5
	for <USRP-users@lists.ettus.com>; Tue, 14 Dec 2021 16:09:42 -0500 (EST)
Received: by mail-oo1-f46.google.com with SMTP id v30-20020a4a315e000000b002c52d555875so5282734oog.12
        for <USRP-users@lists.ettus.com>; Tue, 14 Dec 2021 13:09:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eo6eoBn/cYmKWo/QNbImTLr85cqUjN8HxQx6kBbA2Xk=;
        b=St1Y2iqgq6Nlddwti27NRUG3+5KG0AuSuj6I2Mjey/1JHfemDXMbSDU3GjjeT3BGRq
         Dn4oQpH8sqn5TwvWtzoedK0EN+Lj24kMYvmSHIg51zAL6OTF0CC5BdGmro/KF//ciIDB
         V1l/0uIsoku104CW50wIUj7M6w2FSqz8Frh6pMKkGnzKSmXwQSSdMj59L1HhTjza7hlc
         GjV2ftsAZ0qvK1rD0f3hQFlkuU/sf8gg8aLRvQDX9QXV+vGCBcuFDFPDksPKTsesPdBm
         G8QFZMkedEuQUxiuw9uB4nir+uglgX+59t+AW69bWmjbD8Ra1VVl2B/IeJU6K9pCfoKO
         HoEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eo6eoBn/cYmKWo/QNbImTLr85cqUjN8HxQx6kBbA2Xk=;
        b=08PR7NYoLZwDp4UJbWJSbMogEEqJj9NU52cMaMo1+7F5fOe4398JSw004HNqZpXTXK
         UA/dUdxdfuMb3nDVQAXVMfYrqZSBD5y38bG9rzMr3qWRdO/KJo69xhwgl1nfV6d8K/rM
         1dToigCyUC5bqquzMwMjSqR4kpfZFoSHSS1jTzp/1JOcJblsi19fyxtfdso3Iqc5olYE
         +XFj4yMHB5+8cMSD4JbCaEqRbDers3iFLkBgRewiC8C2u04rAQghMTc/l4AcitmypZJV
         eCS/D+6xB1cJlom9RZ7FiSO+sRg7u2aFVi1K/J+tF5qISt/ezQcv+P4H+jHZBi3gw1yM
         bzOQ==
X-Gm-Message-State: AOAM533Kkyz4KMiC3xsyw5YxT0CQ4oL+nTQz/XYDi9HUorI2nPrLXZNb
	ZYr4aSJRk49sCU9WEfVBVPdm3vasDUaR+/zl/iPfyBKabVo=
X-Google-Smtp-Source: ABdhPJwar6drWxpzsinzEdUxORn43JiCJ2ZSUrm8xHxjkqBfruG5Z+X7BgdtjjWfb8YHkhAbUyVgX57jpG0VMKLkQqY=
X-Received: by 2002:a4a:da1a:: with SMTP id e26mr4985282oou.79.1639516182149;
 Tue, 14 Dec 2021 13:09:42 -0800 (PST)
MIME-Version: 1.0
References: <CANP_axJsUAxh+rppzZoBD8Ks8PDGqXS1SD1=n+8N-m915t975A@mail.gmail.com>
 <B6AB1F59-B0AB-434C-966C-1D88AA955709@gmail.com>
In-Reply-To: <B6AB1F59-B0AB-434C-966C-1D88AA955709@gmail.com>
From: Temir Karakurum <temirkarakurum@gmail.com>
Date: Wed, 15 Dec 2021 00:09:31 +0300
Message-ID: <CANP_axLQZQMLjkHS1AvzhNgfNE_C08B-Ox=KT3NrebA9Yts+bQ@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: BAJZ2TFBF5USSHCJSXDCF4KYGBVJE47I
X-Message-ID-Hash: BAJZ2TFBF5USSHCJSXDCF4KYGBVJE47I
X-MailFrom: temirkarakurum@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bias power on E312's RX ports (was: USRP and GPS antennas)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BAJZ2TFBF5USSHCJSXDCF4KYGBVJE47I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5828149575650850993=="

--===============5828149575650850993==
Content-Type: multipart/alternative; boundary="000000000000a3fe8305d3219b67"

--000000000000a3fe8305d3219b67
Content-Type: text/plain; charset="UTF-8"

Hi,

Thanks for finding time to answer while commuting :)
Quickly checking LC_XO webpage (
http://www.jackson-labs.com/index.php/products/lc_xo):
"The unit includes internal 3.3V to 5V DC-DC power supplies and filters,
and can provide 5V at up to 50mA to external customer circuitry, as well as
to the external GPS antenna."
This seems compatible with the Trimble antenna recommended for N-series but
maybe I am missing something.

Best,
Temir

--000000000000a3fe8305d3219b67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Thanks for finding time =
to answer while commuting :)=C2=A0</div>Quickly checking LC_XO webpage (<a =
href=3D"http://www.jackson-labs.com/index.php/products/lc_xo">http://www.ja=
ckson-labs.com/index.php/products/lc_xo</a>):<div>&quot;<span style=3D"colo=
r:rgb(76,76,76);font-family:Helvetica,Arial,sans-serif;font-size:14px">The =
unit includes internal 3.3V to 5V DC-DC power supplies and filters, and can=
 provide 5V at up to 50mA to external customer circuitry, as well as to the=
 external GPS antenna.&quot;</span></div><div><div>This seems compatible wi=
th the Trimble antenna recommended for N-series but maybe I am missing some=
thing.</div><div><br></div><div>Best,</div><div>Temir</div></div><div><div>=
<br></div></div></div>

--000000000000a3fe8305d3219b67--

--===============5828149575650850993==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5828149575650850993==--

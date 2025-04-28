Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F2CD6A9F397
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 16:38:21 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E77E9380AC7
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 10:38:20 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745851100; bh=IGpzQSJlH4UNJ0MMULoWWzX1iuuP2E6heg84FYox30I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Z0E0KVOHqiMaxxVUOY4x/3FHpn4cgVMriAu9q4EDU8OClUdMNvbhHd8/twSscT5cR
	 yit4jeHx7EGjEn4Jj2MS/nyMz2kelxhqgQXEwgxThm7CEunwKHn7zSpc1eY4S3OysV
	 MeGyb+vX4bhE7v2HpKhS9szspxCg2kJD94n732w593sQ6xxV2Ja1vLo3NOHp0OLB+E
	 tIXgcI7hXPyGYJGd8Iy+S7xZBqsxcvWxMdlhHSJs0R+vcEsv94ykzTgoEronlMV5no
	 oY0qyR6f7qO3zKZoFyu72T1GxqklYGefugWA5+Y1kvIMq7wetB5Cc4oMhjzCzxY6xD
	 rfRbV6hVUh4Wg==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 41C61385E2D
	for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 10:37:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AVDQW7Pn";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5e5bc066283so8788329a12.0
        for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 07:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745851041; x=1746455841; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=s+/zN/a+q3xiHCTxg5bQ2VaUE1djlpeOLen/e9BFmAk=;
        b=AVDQW7Pnj5p2b4GGMjY5pXIEGhsGWGhLggs7DfwxN1LmKh2JPa897fUVTZzNaKGvhr
         npdIr+CP+p42Fciv511PrvXDONREY0q+ZwQ5tY99tzRmBYzfDtrlWYduiWrOEyCb1a8z
         wBPECWS4dD2IzCXF0Nb/2XzYpkBAr6o21e+kfvpyM49ZNOhVNwTrXp2UKVCO5YwUK1TB
         LON6R7Jxenu/P0ZQtnmJDNNVG/krk0m8JY5hDK3r8hykh7nHw9SLeUyGjB8r3Wvj8EE+
         kasDLh+6hYeqYTkNLtYM/qqahvAtkcWC/V5on1kz+E7XrLIl5PvcxWh7CoDGvXsOKTJD
         8zvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745851041; x=1746455841;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s+/zN/a+q3xiHCTxg5bQ2VaUE1djlpeOLen/e9BFmAk=;
        b=R1+tw5uuX0o2eZXVnzykJv0uvAz98vmHtmFdLHllbBPZHfDQhE8rXjmduHEagwTiSu
         BhvIMEHVxWdK9QciKKyePsxYILq4fQuuAeByry4cazDH5eTg4/Aids3IDVfbVYMbUkkR
         6s46JTulZTHzcF4tbKV9IiMZJF0R5O75jb13eZ8Qx/KPL5dc4nFqDxUecMlH+3GKSRUe
         coR+LUalg8K9zJWKHGGLsUUvLso+LRCl3IGZmp8UkSsiHFS+TZVQhgVnRpZWDfzZ6l5V
         vYoCi9cM3iksPaXfAN5mlseFz5k3CG2Hy/Q6U2gET6ZeJntdfn15CYRAIesDMGg/A6yx
         +xqg==
X-Gm-Message-State: AOJu0YzLSjQUIjGn6Uz/+TcZ5Puq2zQUqXg5Kc5N37LksQrCVcdJxy89
	8tj+tDRWaHs1hDzdX6l2I6te8NDoh3wUXootgRKU/uS9tqhf3T6u3U7gqmghl53xyqSuKJETYtG
	PUX3XgvAGkdGoc3vu8fiywVGFqucTqw==
X-Gm-Gg: ASbGnct2fzJ//biRK3QedLi7/9xdkijbMZ7KoKsFkCSt6d651U7x+kMPZz7nIZMBNp6
	qtx+vPkYH4kIdR+XDh/8U21JzecBHGTdHx/fW3BVY2QZCNXJBx6UBEDEac13aHFlgF8QP+BcW4z
	VUtQTZuM7K7V0wXmIxugNhqg==
X-Google-Smtp-Source: AGHT+IEja9DpB906MnDmPv+lRtUdm/g+jbEtrj7pkC5FtHD4D9CT7gMwimD6DvHOb5b4S0kVGL/6VHXiRLPcjG3wmyU=
X-Received: by 2002:a17:906:38cc:b0:ac7:b7:c0ce with SMTP id
 a640c23a62f3a-ace713def6emr867348866b.53.1745851040847; Mon, 28 Apr 2025
 07:37:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4_EZt1CN7eic+zX89q_UM9xkLRrgDYOfQgAJa-vxgkEA@mail.gmail.com>
 <CAFche=hXaVLyqJA7Ay7k8NqnVaKyWni1h7JwapVwue2iwAM5MA@mail.gmail.com>
 <CAEXYVK5W_kupokFpwQY+GpwEUO1nN4Y0cH6Bhj8z1HFMYP54uw@mail.gmail.com>
 <CAFche=iRsVwbop=mzORPq9HoOwFkMc-uBkaEYocerg9Es+QXrQ@mail.gmail.com>
 <CAEXYVK6S7adZNCzgVd124OyHJd8erXqUQZxNcODdn_WdQLiNZg@mail.gmail.com> <CAFche=iEJC+aFVHJwqJFFdC_WDM5hh7uXBEx8gVQ2hdzQRHc9A@mail.gmail.com>
In-Reply-To: <CAFche=iEJC+aFVHJwqJFFdC_WDM5hh7uXBEx8gVQ2hdzQRHc9A@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 28 Apr 2025 10:37:09 -0400
X-Gm-Features: ATxdqUEWrbNFWkWB4tkgMnCTqZV7A5xg0cFoarvjExvZ-Ch-EtTcWBKSEaFXbnQ
Message-ID: <CAEXYVK7rk9=61SOaofikn=K5C7UiWOvcYwdz_nA6ee9wbLi9Tg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: DMDCAAH6LCJASAQMWRKZDCBZS3K67YGJ
X-Message-ID-Hash: DMDCAAH6LCJASAQMWRKZDCBZS3K67YGJ
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC CHDR DstEPID and Virtual Channels Clarification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DMDCAAH6LCJASAQMWRKZDCBZS3K67YGJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5747063119269389308=="

--===============5747063119269389308==
Content-Type: multipart/alternative; boundary="0000000000001edaf70633d79fa8"

--0000000000001edaf70633d79fa8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 28, 2025 at 10:33=E2=80=AFAM Wade Fife <wade.fife@ettus.com> wr=
ote:

> In practice, you can't have a large number of stream endpoints in a singl=
e
> USRP, because the crossbar and associated logic adds up. Something on the
> order of 16 or so might be a practical limit, depending a lot on what's o=
n
> those endpoints. If you need to distinguish between more data streams, th=
en
> you'd want to use something like virtual channels or prepending your data
> with some kind of identifier.
>

Thanks for this answer.

Does static routing help with this or not particularly?

I have only a single configuration I ever want to run, and it's endpoints
directly into a modified radio block - no other blocks.

Thanks,
Brian

>

--0000000000001edaf70633d79fa8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Apr 28, 2025 at 10:33=E2=80=AFAM =
Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a=
>&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_container"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>In practice=
, you can&#39;t have a large number of stream endpoints in a single USRP, b=
ecause the crossbar and associated logic adds up. Something on the order of=
 16 or so might be a practical limit, depending a lot on what&#39;s on thos=
e endpoints. If you need to distinguish between more data streams, then you=
&#39;d want to use something like virtual channels or prepending your data =
with some kind of identifier.</div></div></blockquote><div><br></div><div>T=
hanks for this answer.</div><div><br></div><div>Does static routing help wi=
th=C2=A0this or not particularly?</div><div><br></div><div>I have only a si=
ngle configuration I ever want to run, and it&#39;s endpoints directly into=
 a modified radio block - no other blocks.</div><div><br></div><div>Thanks,=
<br>Brian</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div></div>

--0000000000001edaf70633d79fa8--

--===============5747063119269389308==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5747063119269389308==--

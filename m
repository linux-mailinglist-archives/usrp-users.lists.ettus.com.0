Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A4682B211
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jan 2024 16:47:09 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4E772384B02
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jan 2024 10:47:08 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704988028; bh=+yb36rR4Op/8HiYhWvX09jYO+2wOAe78O8IRIxPUxko=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=YjGgsXiJajG0gt/A61HXZQXFgjS/RkfkpzDuyBl8Hl86gVkj1/PQqQ3pMMBY2NBtP
	 JrAhU5zMC0LZhkjzjPC0zFLsiqbmgIZd9nxzJkIgUaXOoOFYxD11a8FIeEB7XE6srg
	 t1d9OVyLEjboUmQJCiurZGCOk6oi+HNB3+bM/PQFIe3E4IbRWA8z0mm4pekwL30YIQ
	 d8dMK4HK3C04rJ6FHX61Je8x3Ng8FtYigtSja9KpbKO71b6zLZrJru7hkCAlABeDrt
	 1GNdR6DmBdDjEg0JCy+u9jqaXcVDFicyYSQ/vpHKhdGjWQahN66iISAojcckIcSPwl
	 DaMEY9cySCyLg==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id BFF0F383C33
	for <usrp-users@lists.ettus.com>; Thu, 11 Jan 2024 10:46:31 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="y8IURv1f";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dbed71baa91so4225254276.0
        for <usrp-users@lists.ettus.com>; Thu, 11 Jan 2024 07:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1704987991; x=1705592791; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ltdWSAsxa8CoPTuuEKvW7Z70eR9M6KOvwbzB5BMl4h4=;
        b=y8IURv1fBV6OBKHTdD9XmvpKM6dm9Gj19coHz7ACWfr2sHZH3G8fSvd8etIoD5knZc
         g/mg8hb/+xSY/+8ZTg1/30IwLs8RXoi/NPuosZllPbb3TLB2/55cE0qdaFEYLdW5ZiYF
         j6E2yAN4yzfxfJH9ZV80qDC96NykMpM8+1cwToqTJ8ihqtMK7SmqVhIOEEmtxzdQB/HO
         +5jM2kVQBR4zquLUzqLSE9BuKI6i/UJxCgOOuXxbPiK8vshovm4Uu5V9E29rUOtBCy/L
         64WhKPiCAMRnaStCBC7KsmUUhsV3PFl6H5PUfglOoPgJf9ZiWCQX7w4TLiDRQkV1wE6c
         WLfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704987991; x=1705592791;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ltdWSAsxa8CoPTuuEKvW7Z70eR9M6KOvwbzB5BMl4h4=;
        b=csl7wryPhqDgLEwkZq7Juasgu3e2lm8BJGwnyjMh7aeukAg6gdjLbSzVPhWHyvmqaJ
         ofsYWL5epUjFavmWG9DT+hALu/zFvDVVj/yJA1F8sf3ZUlUrz5X23s9nDmhXXIBAfFYt
         rpt8bbzzwLRthgqjJaNrtwrHbG4wHCuUZU3Cnfrdvh1/7kkR3DbtnRpnzXAE/gEHR3LB
         Ujqiwov+YSygj6h38UhLt8zsMuPPeIh0N3L81+6L5RGcsyTYrhBBNqp2pW/S5TQoMDHr
         p3yPdOOcaunILFnzBaXDqd/zJaJUpV6/kSlnB7j+iosFFgK4OfkvFWrQkrvbj9k8EbB0
         lNiw==
X-Gm-Message-State: AOJu0Yz+TBN7Rv+1l7LIx/L23RVqtMsONomHJXPzmn6Wm6OJSep8xhak
	NC3vJ7+IsEiyhlHnqjeu2Qb1YxgDpNC3vilAnhrUNQXBZD/9uATr
X-Google-Smtp-Source: AGHT+IHCy4NRyS6JI6fmJiZyKXqnCz0PodqPFKG1FfSpwV1qiAyqfwPE1Kzl+0KXp/xjRn92U99RBTYVD2RZLZ9y6Fg=
X-Received: by 2002:a25:8042:0:b0:dbd:83db:6ba4 with SMTP id
 a2-20020a258042000000b00dbd83db6ba4mr1157003ybn.110.1704987990971; Thu, 11
 Jan 2024 07:46:30 -0800 (PST)
MIME-Version: 1.0
References: <9KOjCmwUHbMAfT0J0L1LfR26A5WC08yoWPGg0aBc58@lists.ettus.com>
In-Reply-To: <9KOjCmwUHbMAfT0J0L1LfR26A5WC08yoWPGg0aBc58@lists.ettus.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Thu, 11 Jan 2024 10:46:19 -0500
Message-ID: <CAGNhwTORcgcdxCYtS2zHYJmcLaosB6T=LPqrbxkKB05fmEpkXA@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: B6FSLQPXVQ63DGKJGQO6BISDETGBAZG4
X-Message-ID-Hash: B6FSLQPXVQ63DGKJGQO6BISDETGBAZG4
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Benchmarking x410 with Mellanox with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B6FSLQPXVQ63DGKJGQO6BISDETGBAZG4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0309355596635126136=="

--===============0309355596635126136==
Content-Type: multipart/alternative; boundary="0000000000008c6deb060ead737e"

--0000000000008c6deb060ead737e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for reporting back your success & how you got there! - MLD


On Mon, Jan 8, 2024 at 11:55=E2=80=AFAM <jmaloyan@umass.edu> wrote:

> I should have updated this chain a bit ago. But I managed to solve the
> issue a few days ago.
>
> I managed to get it to work and there is a few things that went wrong tha=
t
> when I fixed the problem was solved=E2=80=A6
>
> It is mentioned in the tutorials that the =E2=80=9Cuhd.conf=E2=80=9D file=
 needs to specify
> exactly the amount of ports being used to stream data. Well additionally,
> you need to specify no =E2=80=9Cextra=E2=80=9D cores. For example, if you=
 are using 1 QSFP
> port for data streaming, you may use =E2=80=9Cdpdk_corelist=3D2,3=E2=80=
=9D, then use
> =E2=80=9Cdpdk_lcore=3D3=E2=80=9D for the first address.
>
> Secondly, and I am not immediately at my desk to test this, but I have a
> suspicion that the order of the arguments matter. =E2=80=9Cmgmt_addr=E2=
=80=9D must be
> specified prior to =E2=80=9Caddr=E2=80=9D. Also, it helps to define the R=
F-45 port
> statically.
>
> Hope this helps. Here is an example of a command that worked.
>
> ./benchmark_rate --rx_rate 245.76e6 --rx_channels 0 --tx_rate 245.76e6
> --tx_channels 0 --args
> "mgmt_addr=3D192.168.1.184,addr=3D192.168.10.2,use_dpdk=3D1"
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008c6deb060ead737e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for reporting back your success=C2=A0&amp; how you =
got there! - MLD<div><div><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div style=3D"border:0px;font-stretc=
h:inherit;line-height:inherit;margin:0px;padding:0px;vertical-align:baselin=
e;color:rgb(0,0,0)"><br></div></div></div></div></div></div></div></div></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, Jan 8, 2024 at 11:55=E2=80=AFAM &lt;<a href=3D"mailto:jmaloyan@u=
mass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><p>I should have updated this chain a bit ago. =
But I managed to solve the issue a few days ago.</p><p>I managed to get it =
to work and there is a few things that went wrong that when I fixed the pro=
blem was solved=E2=80=A6</p><p>It is mentioned in the tutorials that the =
=E2=80=9Cuhd.conf=E2=80=9D file needs to specify exactly the amount of port=
s being used to stream data. Well additionally, you need to specify no =E2=
=80=9Cextra=E2=80=9D cores. For example, if you are using 1 QSFP port for d=
ata streaming, you may use =E2=80=9Cdpdk_corelist=3D2,3=E2=80=9D, then use =
=E2=80=9Cdpdk_lcore=3D3=E2=80=9D for the first address.</p><p>Secondly, and=
 I am not immediately at my desk to test this, but I have a suspicion that =
the order of the arguments matter. =E2=80=9Cmgmt_addr=E2=80=9D must be spec=
ified prior to =E2=80=9Caddr=E2=80=9D. Also, it helps to define the RF-45 p=
ort statically.</p><p>Hope this helps. Here is an example of a command that=
 worked.</p><p>./benchmark_rate --rx_rate 245.76e6 --rx_channels 0 --tx_rat=
e 245.76e6 --tx_channels 0 --args &quot;mgmt_addr=3D192.168.1.184,addr=3D19=
2.168.10.2,use_dpdk=3D1&quot;</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008c6deb060ead737e--

--===============0309355596635126136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0309355596635126136==--

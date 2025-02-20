Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D245A3DAB7
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 14:05:07 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id EDC7C385DFB
	for <lists+usrp-users@lfdr.de>; Thu, 20 Feb 2025 08:05:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1740056705; bh=UN+KTV6wXHjWKiWeKXQpXEKqkwWQkiYdnvVPQAVn+qA=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Y2NKXJrjcQuRUPHInTWP0R0mz3OgI9OeD5PxeJG/0fP9OjdFmVWID1zdoG33y5Xlk
	 jVCdC45cIgth+umEwiFfGTf8TuDlNiJVizXWj9HBiGpGPhKUDY3AmXZlHryh2AXdsh
	 J+kZnYPPNWzf4uHBCuDYVKRi+h1zPryvDe9RDeyhln2utwMbxgIsq6/V0oKENQXZCH
	 VV5np0MdHgv/vvEv5czqsqsscZkQQU4G1DMfqlSx9liAe2c44GFRptoExvUVOdSnsi
	 Rn6UUHNYFzFNToMTwjXCKQu3JNCc6M6z+CQIFcA1YlF4aZlBBNZyRN7gKMskPJa9Pi
	 Hb8xTxaAyklOg==
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 70660385A3B
	for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 08:04:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="1TYJGvAh";
	dkim-atps=neutral
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5e04cb346eeso1418890a12.2
        for <usrp-users@lists.ettus.com>; Thu, 20 Feb 2025 05:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1740056654; x=1740661454; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ybLoNfn4Oi/vu8Anq6yy74l//4M/Aklv0tXoLxrBkfM=;
        b=1TYJGvAhv2ljGQHcCFOd5CFE5ongyWJIgBSrwZwhj3QPialhXyFDqEOWolUwAZj2vZ
         K1kvP0Hv16RU29EXl845h9ijMxC2IrzPGXvAZk/EQKRDIBEONo+kbVy4dVRX9vlDUwyw
         +HGO34yAt/zBS1aUX652ARlZhbRofyCDyvn1KdG58gUR3J8WxNnlpTY5Ag9ZvfuEwm5i
         rvwpZDuL6CyD2q313qNCtwr3us1bxJDz2immxAtK6nGSv3Ecuc+GiKNqn/ataCjGYOoX
         yVtUNuttAhCSEC2X/VkU3eBT8IbseGcgueqJkBrh6e/66+CB+bNPgYGHJUNGCewIVoTQ
         jT7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740056654; x=1740661454;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ybLoNfn4Oi/vu8Anq6yy74l//4M/Aklv0tXoLxrBkfM=;
        b=cu0ed/MkZ8wCUpNmZgt7Ve8DKsID530T+1LU2pUnMIEV9a+mjxr5aBe0qMMbbtU/uq
         OhuR+sVXXZGRpQS+SnvTcPetrzp7iqniFmQeMCs5lT3D97QlX9nVK602kZLcxnewh3J1
         WUj84nld8S5Jd/5M/yRpT1BZef5klY61rMGhVofbrfbFpgPPc+szrFUG2avM1pcUvl0a
         mgzxYYfcXczoagz3eD/kYBxsjTSRXnghM5GzCVUHUuRZZBdZfqFeeWOqkX/qsRrKStjH
         8CT4rZdHPurjlr9V3YjYnYDwOa3V467zW8mp0mQJ0q5ussLl63Hd6LV5PtnU3EfJsPam
         RGmQ==
X-Gm-Message-State: AOJu0YxpgpFtYtFw8Uv6htoZgXWxAqI6HBQILWfEw8SXihvsA9LphrG0
	jiiMmP7MM/MeURPXvU5xVZWSfGr2jS5EOOKScqLdBRIWOcGHEm/F70iD6M7ALKQD2n/Ayh2nFjO
	Uznbpwxd6A7EnCZXU2Pfn0hJTiTuXhdS2YT3jKf7UkCwaZBQq8Yc=
X-Gm-Gg: ASbGncs+eD2UqlBkRNu+JBNla+7dKS834J5hg4b7FQTfUgeIBQ2Il6LUfSouziBUf3p
	EEtRRrA4lzOnzdQmIVJo4aDkmqAxPxexTj1bSrKxrw7pjyLoJae8Ldn9vU+aoTh6x9oQcKDe2pE
	5ykCCR4vqMJWjCPOzJ+xSL3iMRz8k=
X-Google-Smtp-Source: AGHT+IGZzIk+BxP2kZEK11g0y0DOjvrQ3C2WUUu5iC3d5/C+A9cgvBgZBDhOCURZ5q2djT4QkivOwgWRaKVXn9LeP3w=
X-Received: by 2002:a05:6402:40c6:b0:5e0:445f:9576 with SMTP id
 4fb4d7f45d1cf-5e0a4b2cd35mr2518515a12.18.1740056653307; Thu, 20 Feb 2025
 05:04:13 -0800 (PST)
MIME-Version: 1.0
References: <9f5ab4765e004de6a89e7352edbf7773@atindriya.co.in>
In-Reply-To: <9f5ab4765e004de6a89e7352edbf7773@atindriya.co.in>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 20 Feb 2025 14:04:02 +0100
X-Gm-Features: AWEUYZkYuoKU7tq5AMHwljz-XnLi6dtOdiw9IXUnV44IzTJTpdpDvGfft_8U8m8
Message-ID: <CAFOi1A5BMEZp=dmMR1FPFipbGNQe+dKaTd86JT8tGWcs1J1+Bw@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 3DQG5LN5UHBMKAL45B4I3SFFVPVONJHJ
X-Message-ID-Hash: 3DQG5LN5UHBMKAL45B4I3SFFVPVONJHJ
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: REG : USRP B205 MINI-I
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3DQG5LN5UHBMKAL45B4I3SFFVPVONJHJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2266650276025211496=="

--===============2266650276025211496==
Content-Type: multipart/alternative; boundary="000000000000b5cac2062e9282e3"

--000000000000b5cac2062e9282e3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You can only use a single USRP from within a single process.

---M

On Thu, Feb 20, 2025 at 7:23=E2=80=AFAM <kavinraj@atindriya.co.in> wrote:

> Hi,
>    How to access the same USRP board simultaneously in both GNURADIO and
> Eclipse software. For transmission, GNURADIO is used and for receiving
> Eclipse software is used.
>    If i run in gnuradio for transmitting means In eclipse it is showing
> error as empty devices found.
>    How to resolve it?
>
> Thanks.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000b5cac2062e9282e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You can only use a single USRP from within a single p=
rocess.</div><div><br></div><div>---M</div></div><br><div class=3D"gmail_qu=
ote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Fe=
b 20, 2025 at 7:23=E2=80=AFAM &lt;<a href=3D"mailto:kavinraj@atindriya.co.i=
n">kavinraj@atindriya.co.in</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Hi,<br>
=C2=A0 =C2=A0How to access the same USRP board simultaneously in both GNURA=
DIO and <br>
Eclipse software. For transmission, GNURADIO is used and for receiving <br>
Eclipse software is used.<br>
=C2=A0 =C2=A0If i run in gnuradio for transmitting means In eclipse it is s=
howing <br>
error as empty devices found.<br>
=C2=A0 =C2=A0How to resolve it?<br>
<br>
Thanks.<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000b5cac2062e9282e3--

--===============2266650276025211496==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2266650276025211496==--

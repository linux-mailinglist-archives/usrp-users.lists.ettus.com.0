Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C0E1A7906C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 15:57:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 23527385B93
	for <lists+usrp-users@lfdr.de>; Wed,  2 Apr 2025 09:57:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1743602236; bh=UgrbzqPub35ZZ6wR6z5YE/NFNb6mg/9C4wz4LXTAPcw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=X0d15GcgJ3TuPNuCv262aB4VPe6liGaUE/RvL1m/uyxAYApYI8AEvzRTsOr/yFh5t
	 guXPVsibPziNPQ5etISkY66CfXeKQy1R/NyM6uGzWDdnaFlCMm4NMn6Cmelm+5LUne
	 hA3uCUZ/Wl+VKPtlRwjQmslS5/ma0TwDoOfIppT2cvWsM9aikn6Y3P3bk5LVxI06VO
	 Yx2sn0UGVHUSKw5hFm7cPfDsBTWmLQF+Z3IVIAXMQo3RH3UQQPE4nz1Y5qJVWERBuy
	 HME499BjVlTkWRLzjTNC8iiSEpx1ZqqHRFe+UvhXoF0WYTdw76rB4XPKO1fr+dcpI2
	 377X8pDKWFevg==
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by mm2.emwd.com (Postfix) with ESMTPS id E2B2D38593F
	for <usrp-users@lists.ettus.com>; Wed,  2 Apr 2025 09:57:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="LbsiKuwU";
	dkim-atps=neutral
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-6f6ca9a3425so74785437b3.2
        for <usrp-users@lists.ettus.com>; Wed, 02 Apr 2025 06:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1743602222; x=1744207022; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZBtgyNRhIwJirrtnzGK6csGllWYIt550OBqgjlYQXaQ=;
        b=LbsiKuwUapx1vmMkaTCHc6g5aW+CLS3ZE5VW0pwnjJiT0SI9ZcOdmxCdtxKBS922n+
         fN4FHpb3JTlANK3qluLNmZWTiV9jFtiTMEZIM6RescBpMfYaZRN1nhz9oTUN0BSJ3tiw
         Xn+7QCXYFcZrpN3HBkQioCgA7Bgf4APzSgSGKjcwJTVd3n5m/WIO1VXhtr89/JuZtn20
         r1NLMrVH3eDrFI73No3ovJbCG5VyJuuecRzx3zWfKbUzh9suq+xN2wuW0UVAjWnlZi5F
         A6s8s1PfmYffMYlNRJdzb9zT1UFncaDisJrGyN2GQU9vWtPEhFaZ8jM3KU5AJai+ZM+B
         Hpdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743602222; x=1744207022;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZBtgyNRhIwJirrtnzGK6csGllWYIt550OBqgjlYQXaQ=;
        b=cNHs09BkQE2Y4RKkJOoqW1lwTuv4BttlSMuv6xAoWZuGJvn3Igd4KPuoE/FAT/lx5H
         anYLBNlntm3DC/iZG5QWpqZM4euMnAL6CZOJvlxZDMs3cYw48DfDkM1D2Bs3qZ/zQqUU
         67hwuqJa7tFJFmYeLjjiIo+wrfyCXAKpwpbQUFK1D/Ds+bkfIT2rujj2LgDl0rALOknM
         IKsK8FdDeQba76F6qqFAQR6pGAX0+WP0kLa12LDB2GA/e3LwO69RYbuYt23cDXa0YZyw
         05Go4mJNLp95E8pdh81F3C4trioMWiWntEy6sq5yUHCIba8MzbQ5y21wp3zAyISf7HQI
         AZoA==
X-Gm-Message-State: AOJu0Yzn+fV7LfJ/aCCuiymd8eMC6bx0Kaw2oFJ7o7o2mjIjQQWsv7pY
	tFhbr5pDfAewSu3K19fgRQOecD+T3Tj0F2O6AT/GNfPH8pyT8vylZR76ZUvhx2h4/0g3M8Xyioc
	VWDyMn/wCfRrLa3buu3c9Y9u8hfvJrfnT2kMBJcDDx5DGgZwvM0MplQ==
X-Gm-Gg: ASbGncsZCZRAlxfIYE8KBFJInUf0kkVNPyKfB0m29W/bm7v8q9SyFFtfj9n6qZxKhJx
	Gz4av4Y6zC1hnGf6mPam4oR6gXE/0V2HRwt+orBV89ddYMCVCHeT4zC45PSxYQ5FGuo9hYmT4Xv
	60T3I9oydjnR48mqjqSWLdRfHTXcSH5r3Y9cxr
X-Google-Smtp-Source: AGHT+IFE78TMC5D9cX1KfOHb8SBpxeWTgEayrS9hm5Ot75C7xt2pT/BlEzn7iTcs5PWnVdltgzwEcL5vJfGRn3EpQOw=
X-Received: by 2002:a05:6902:2486:b0:e6b:8256:5d6d with SMTP id
 3f1490d57ef6-e6df449c313mr4895432276.10.1743602222328; Wed, 02 Apr 2025
 06:57:02 -0700 (PDT)
MIME-Version: 1.0
References: <JMqWbvSPBRKayyCCDmZIum8iLocHYI7Jm023Zxfc@lists.ettus.com> <CAFOi1A4+qyBOwXtrSLTnSd8+zER6eiXyqv9tq87gxG8sPyVADg@mail.gmail.com>
In-Reply-To: <CAFOi1A4+qyBOwXtrSLTnSd8+zER6eiXyqv9tq87gxG8sPyVADg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 2 Apr 2025 08:56:46 -0500
X-Gm-Features: AQ5f1JrwPw-_nkVzhADXpwQ8KqW7MYBeeOgRNp2flOxFW5-kmUfzyXuAv_YOLGU
Message-ID: <CAFche=hKfpThO7uCRp0A4L35zNq-Rsud5uJro3XiwCEOUwzNpg@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Message-ID-Hash: YQT53RNTDFMJBIGU5LEINJT3VFAX7ZAM
X-Message-ID-Hash: YQT53RNTDFMJBIGU5LEINJT3VFAX7ZAM
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Monitor X310 health status
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YQT53RNTDFMJBIGU5LEINJT3VFAX7ZAM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1871995612289520451=="

--===============1871995612289520451==
Content-Type: multipart/alternative; boundary="0000000000001790a40631cc079e"

--0000000000001790a40631cc079e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The API to read the FPGA temperature isn't in a release yet, but the
register for the temperature is there. You can find an example of how to
read it in this thread.

https://lists.ettus.com/empathy/thread/FV3ZZ4C2EOBOOHKHKLAD66KN7INWNWX6

Wade

On Wed, Apr 2, 2025 at 6:27=E2=80=AFAM Martin Braun <martin.braun@ettus.com=
> wrote:

> Like I said, it's currently in no stable release.
>
> --M
>
> On Wed, Apr 2, 2025 at 12:30=E2=80=AFPM <carmixdev@gmail.com> wrote:
>
>> ok, thank you, but this api is also available in the 4.8.0 stable releas=
e?
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000001790a40631cc079e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The API to read the FPGA temperature isn&#39;t in a r=
elease yet, but the register for the temperature is there. You can find an =
example of how to read it in this thread.</div><div><br></div><div><a href=
=3D"https://lists.ettus.com/empathy/thread/FV3ZZ4C2EOBOOHKHKLAD66KN7INWNWX6=
">https://lists.ettus.com/empathy/thread/FV3ZZ4C2EOBOOHKHKLAD66KN7INWNWX6</=
a></div><div><br></div><div>Wade</div></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Apr 2, =
2025 at 6:27=E2=80=AFAM Martin Braun &lt;<a href=3D"mailto:martin.braun@ett=
us.com">martin.braun@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Like I said, it&#39;s c=
urrently in no stable release.</div><div><br></div><div>--M</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Ap=
r 2, 2025 at 12:30=E2=80=AFPM &lt;<a href=3D"mailto:carmixdev@gmail.com" ta=
rget=3D"_blank">carmixdev@gmail.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><p>ok, thank you, but this api is also a=
vailable in the 4.8.0 stable release?</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000001790a40631cc079e--

--===============1871995612289520451==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1871995612289520451==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A17078FF59
	for <lists+usrp-users@lfdr.de>; Fri,  1 Sep 2023 16:41:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6AB00384E9A
	for <lists+usrp-users@lfdr.de>; Fri,  1 Sep 2023 10:41:11 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693579271; bh=EYHR2xw8aFrzzmR+Y3CxSDuOvyabJvGLTQDfqo5cMCU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=0QoXqAhAqJ3Z0wRMJ/uCr5WcEA9tnatEAlBIxU+dQBl29laD/row7jH+54p3HONnd
	 EG9EIO5/j/8MnaMTewKLxC0SdU9F00+Q/bgFpPhPgZH6z1HEY5fNUkdtLIXjQQ23w3
	 Ni7Xdl6aaR+A7I6CJwUgBLnDObW2PATJBNF9NS1Aiip/mQS91Hack4HiwsaipvVfYn
	 Ls8+pm5jqhJp3BTKxa8cg7K0IogIWOxv3oclRND9uviVVQ2v9iLIOezRAGhb+FXZkt
	 x7hMy5xHHY6x+iruv2dNhAnn6M8QCsyI/6624A6hk6vrDGdv9FCn3UlQ15YlO/yjHY
	 Lrc8cNehx3Liw==
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	by mm2.emwd.com (Postfix) with ESMTPS id F3927384E38
	for <usrp-users@lists.ettus.com>; Fri,  1 Sep 2023 10:40:41 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oVsjgdaM";
	dkim-atps=neutral
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-99c0cb7285fso236559766b.0
        for <usrp-users@lists.ettus.com>; Fri, 01 Sep 2023 07:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693579241; x=1694184041; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gTF0KyxR3r5fSUuTOzFr/YYNRX6+JL4LiHrMhhS1dh4=;
        b=oVsjgdaMAvcW6AK0CoF6f6VdXA818uQml3TtKHQkAac0YuLXgKZLYLXJmVIgg8UkTb
         7APzxavs0RBYdxJGLjnzzom2Xq1PbFiFRXyUkuu1Y7+1PYLWlSBhBMMcYNd8vK94FwOn
         o7g/CxFY/iiG6M23CJfTH6tEXXeFbtBVYXFyDPp2e+Z1VtXa8/u+rpnptG4ivU8NfxhM
         rdo0oURwGZLWa85mRI3Txqmc4Zilv53WO0W5RcLMOfPJJlqzgVHj1hIsZ4KyghZzHD4L
         BgDuSdY3pvnl995nL1RPIkyXSpPo990KUBbfzWL1c/P8N86GwnP9qhxcGgD3wuAsbjsi
         8O4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693579241; x=1694184041;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gTF0KyxR3r5fSUuTOzFr/YYNRX6+JL4LiHrMhhS1dh4=;
        b=VUT64WMhzRkZ3bHLUUFb7f3JY/f5mRd4l+IuCxegYDE6JqqhyXC6rBVh3yB3fvt2VU
         oxtpLGeyWqkSmfR8/5LBYqxaVMQrdTk4w/gBJJ41rJRhlLgZ1kyk1VVjoTNC8e8yC1rp
         2zyDrK9rU+9CrP/WiK+MSKwDDTIH7PUpQpZummcDuyj0u++BRw8WV9zoa+bfT0DApYDx
         3uZFtFxnyY5BqPGYXa3AIyFxHlTJLBgaeOckBAHNwFCnyDZwGAOZ8tFJ/CHKTGJqoZOS
         OmscNRhJDrrHRFwZM4MPrKPcomEBjtY2jdfSfKLFr84p2jdggGCAoe6LZntBFfJ1pA1s
         LWBw==
X-Gm-Message-State: AOJu0YwKrUE0FzJK8hY5UW/Iz2AWovVjJXMoDmqlRWdItoANVB2+vDzd
	9Ib3zVCsbk4qGh/JLjK6j9nS9+5U/m10OwfzFZsw5KGe
X-Google-Smtp-Source: AGHT+IFG0uT01YR2ImzDR26dLTJqsq5HQBIiSek0cbUIwf9onAN7Cfb69KPemaE7j3XEf1fg6pKv7Oih/kHGUqQF/m0=
X-Received: by 2002:a17:907:a0c6:b0:9a2:26d8:f184 with SMTP id
 hw6-20020a170907a0c600b009a226d8f184mr1899817ejc.51.1693579240531; Fri, 01
 Sep 2023 07:40:40 -0700 (PDT)
MIME-Version: 1.0
References: <bicWs4ePNOM2GhiBysnRkx3JUvc4PY1GXalyIJPGoA@lists.ettus.com>
In-Reply-To: <bicWs4ePNOM2GhiBysnRkx3JUvc4PY1GXalyIJPGoA@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 1 Sep 2023 10:40:29 -0400
Message-ID: <CAEXYVK60AyP2jZCyPJ=t7upa9zQ9v44nuSvQuOe3rQLq8RQwQw@mail.gmail.com>
To: seckinoncu8070@gmail.com
Message-ID-Hash: WYSENSRP4KHGZ5O4QAMFBOWVVRRCJPP2
X-Message-ID-Hash: WYSENSRP4KHGZ5O4QAMFBOWVVRRCJPP2
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Pulse distortion of N320
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WYSENSRP4KHGZ5O4QAMFBOWVVRRCJPP2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1100486282285584807=="

--===============1100486282285584807==
Content-Type: multipart/alternative; boundary="00000000000007ecc506044d2506"

--00000000000007ecc506044d2506
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 1, 2023 at 8:58=E2=80=AFAM <seckinoncu8070@gmail.com> wrote:

> I have an N320 that I am using. Currently UHD 4.4 is installed. When I
> send a pulsed signal and choose the pulse amplitude between 0.9 and 1, th=
e
> beginning and end of the pulses are distorted with the same pattern.
>

This is most likely due to the digital filtering happening before hitting
the DAC.

What sample rate are you running your N320 application at?  In other words,
what input sample rate are you giving the N320 that it then has to
interpolate up to the master clock rate it runs out to the DAC?

Brian

--00000000000007ecc506044d2506
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Sep 1, 2023 at 8:58=E2=80=AFAM &l=
t;<a href=3D"mailto:seckinoncu8070@gmail.com">seckinoncu8070@gmail.com</a>&=
gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><p>I have an N320 that I am using. Currently UHD 4.4 =
is installed. When I send a pulsed signal and choose the pulse amplitude be=
tween 0.9 and 1, the beginning and end of the pulses are distorted with the=
 same pattern.</p></blockquote><div><br></div><div>This is most likely due =
to the digital filtering happening before hitting the DAC.</div><div><br></=
div><div>What sample rate are you running your N320 application at?=C2=A0 I=
n other words, what input sample rate are you giving the N320 that it then =
has to interpolate up to the master clock rate it runs out to the DAC?</div=
><div><br></div><div>Brian</div></div></div>

--00000000000007ecc506044d2506--

--===============1100486282285584807==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1100486282285584807==--

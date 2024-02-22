Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C39BC86064A
	for <lists+usrp-users@lfdr.de>; Fri, 23 Feb 2024 00:14:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB1E638511C
	for <lists+usrp-users@lfdr.de>; Thu, 22 Feb 2024 18:14:00 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1708643640; bh=Er7MRPBJHfKXuPn5i9DnqJWTuvlOl/TIHYD/cKdhQis=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=LGtAkv1DYp9CNKcu6B1/YxxMByJtkV0GcmWmApPYOR5Ncb0ha5WC/iFfYJVd7CHza
	 HUi1M4d4kab87EeJ9U99afCCf1G/pwNaSw7P2o2YE5lW2xhqNgvrA1dQefwJ/DaWlH
	 /hrGLvDLzvxaPQrGvvYJnYmK5YKOcuBsdY6ct3AYDWPAitBSHtCD8pu2XtwhhSvga4
	 7JNohN9yuTf7YOc8bhdhunLe+AQ6MuZiQIDJYS8dT0KFZw8lLpC4Owh4+L+9vpYKX5
	 W2meTzpVYtGH6pBITT310ljWnQiHu9ZU14qp4K/LUe/id1rK3JUNDKXjSpsLjcHml8
	 7Vz6QGIFex3FQ==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D1BD384DF5
	for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 18:13:01 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="NBi+5CCL";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-564647bcdbfso158754a12.2
        for <usrp-users@lists.ettus.com>; Thu, 22 Feb 2024 15:13:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1708643580; x=1709248380; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Rso/ytq7BuhqkURb/7+BxmhJtr0uFNhXKSNBDQu6vkw=;
        b=NBi+5CCLc3tmNVqlURyhLpl8AOeWqvu8odZe3Vjv1OrtzH3z/dYBE+UfQySmSPVBT5
         rrcwlUrn8W/FWr7qMu0f4XyGnhtZAiBWnKHsCbfvZc6nihe8C+b3QJDkLwKIkpKEZLKo
         7VINYj0DtBUvAaM6Ejh7Xk1OeJmyYYX6sVPZJYVVYsu16l+2MR/8+7GXmCGiqRXy7qX5
         /2WG08RtuCLhQ3nTk3l4jJ6Ra0p1q2OziisFd45h1nM2ZQ08L7OY0KYkAbeIQca+p+HN
         TsGTMfYKcwbF/XMA8NbN+kCT83cEo/4LSHXBQKhA8CFI5F8n2US/6prbAoYWN/bZk1rp
         d+7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708643580; x=1709248380;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rso/ytq7BuhqkURb/7+BxmhJtr0uFNhXKSNBDQu6vkw=;
        b=beEuTwnJDyUE49wv6qiGZEcJMBfeya5IP3EyDDO8+Dp09++tsjDNOwBxX2tBoyoIuG
         ihOkS/BeWlmXINdbAes+RWM7OLAYMQPOOmsmhkGV2D0O0BlYPY4T5XTAgaDY6o+srwEU
         ABC/FNruPft4rIyC4QB1S3W8ZjB7ZgH7YDr1j3lWJZvyfcd0pS0iVIW9TKgN+9kx1Hk9
         VLb2tFh0nVB8Zg4HMutLLH6Jkxs+12br4t2X5RsZqaMQ/9eabBfIn5kdRr24oUMhALpL
         m+iE10cP4RWXb41iVpiJ4Se9PQur50jfyB5XEqVHmSIQP4YIVMuDuuNUUdWnx1nDtLjv
         KP7g==
X-Gm-Message-State: AOJu0Ywx/w0hmGQX4skshGn8l4ht0vuvfhGyzx/wm0pErCUPkDu3a6To
	kk9AkSL24PviGQNn+V68BLxVlA7xkg6dQcPm0XBdr/1nhLRQs7XAwXRvHj13gYbdAi/YuXfxctq
	jf80hKdn3Po2F1ARlkgO/9cv1IGIw4RyxPYeBC8I0e92vgEI=
X-Google-Smtp-Source: AGHT+IGDvm0hyMh600SLyfW47BaxBfQrh3Ray9KKalzxbjob7QGtkqM7IpxyajHDKN8xFZIXSlJxpgn8kZZzZusWzNk=
X-Received: by 2002:aa7:d60f:0:b0:564:6b09:92f6 with SMTP id
 c15-20020aa7d60f000000b005646b0992f6mr110395edr.18.1708643580245; Thu, 22 Feb
 2024 15:13:00 -0800 (PST)
MIME-Version: 1.0
References: <SA1PR09MB9275DEEA7594782B53D7CEC392562@SA1PR09MB9275.namprd09.prod.outlook.com>
In-Reply-To: <SA1PR09MB9275DEEA7594782B53D7CEC392562@SA1PR09MB9275.namprd09.prod.outlook.com>
Date: Thu, 22 Feb 2024 18:12:48 -0500
Message-ID: <CAB__hTQ9jGweT4cd9Uyj2Brp2MSAzPkexAiOevmuCsWktMkivA@mail.gmail.com>
To: "Rohde, Zach (US 333G)" <zachary.s.rohde@jpl.nasa.gov>
Message-ID-Hash: LZJ5V63JHGZIHDQYNKY6PNORVPY6DDX5
X-Message-ID-Hash: LZJ5V63JHGZIHDQYNKY6PNORVPY6DDX5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Multiple Streamers
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LZJ5V63JHGZIHDQYNKY6PNORVPY6DDX5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============7467129923520557532=="

--===============7467129923520557532==
Content-Type: multipart/alternative; boundary="000000000000a617260612009517"

--000000000000a617260612009517
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Zach,
There can definitely be multiple tx streamers (& rx streamers).  Take a
look at the Ettus rx_samples_to_file example which does this with rx
streamers. You are probably doing everything right already.  The
documentation might be just poorly worded such that maybe it should say
that you can only have one streamer per channel.
Rob

On Thu, Feb 22, 2024 at 5:08=E2=80=AFPM Rohde, Zach (US 333G) via USRP-user=
s <
usrp-users@lists.ettus.com> wrote:

> Hello,
>
>
>
> I have been running tests with multiple TX channels so that each channel
> can run at a different sample rate, using multiple calls to get_tx_stream=
()
> to generate a unique streamer for each thread. This has been successful
> using the X440 and results in no errors or warnings.
>
>
>
> My question is the documentation
> <https://files.ettus.com/manual/classuhd_1_1device.html#a66d1bf289dd03a03=
df3860f3eee578c0>
> states: =E2=80=9CNote: There can always only be one streamer. When callin=
g
> get_tx_stream() a second time, the first streamer must be destroyed
> beforehand.=E2=80=9D Is this true? Why am I not seeing any undefined beha=
vior or
> errors/warnings?
>
>
>
> In the documentation for multi_usrp_rfnoc
> <https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/multi_usr=
p_rfnoc.cpp#L78>,
> I noticed a documentation stub that mentioned, =E2=80=9CIf there is only =
ever one
> Tx streamer, this will work as expected. For multiple streamers, only the
> last streamer's async messages will make it through.=E2=80=9D So, it seem=
s the
> documentation is sort of contradicting one another on whether multiple TX
> streams are allowed.
>
>
>
> Thanks,
>
> Zach
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a617260612009517
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Zach,<div>There can definitely be multiple tx streamers=
 (&amp; rx streamers).=C2=A0 Take a look at the Ettus rx_samples_to_file ex=
ample which does this with rx streamers. You are probably doing everything =
right already.=C2=A0 The documentation might be just poorly worded such tha=
t maybe it should say that you can only have one streamer per channel.</div=
><div>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, Feb 22, 2024 at 5:08=E2=80=AFPM Rohde, Zach (US 333=
G) via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div class=3D"msg3832231064655142379">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"m_-6980986093345291933WordSection1">
<p class=3D"MsoNormal">Hello,</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have been running tests with multiple TX channels =
so that each channel can run at a different sample rate, using multiple cal=
ls to get_tx_stream() to generate a unique streamer for each thread. This h=
as been successful using the X440
 and results in no errors or warnings.</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">My question is <a href=3D"https://files.ettus.com/ma=
nual/classuhd_1_1device.html#a66d1bf289dd03a03df3860f3eee578c0" target=3D"_=
blank">
the documentation</a> states: =E2=80=9CNote: There can always only be one s=
treamer. When calling get_tx_stream() a second time, the first streamer mus=
t be destroyed beforehand.=E2=80=9D Is this true? Why am I not seeing any u=
ndefined behavior or errors/warnings?</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">In the <a href=3D"https://github.com/EttusResearch/u=
hd/blob/master/host/lib/usrp/multi_usrp_rfnoc.cpp#L78" target=3D"_blank">
documentation for multi_usrp_rfnoc</a>, I noticed a documentation stub that=
 mentioned, =E2=80=9CIf there is only ever one Tx streamer, this will work =
as expected. For multiple streamers, only the last streamer&#39;s async mes=
sages will make it through.=E2=80=9D So, it seems the
 documentation is sort of contradicting one another on whether multiple TX =
streams are allowed.</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks,</p>
<p class=3D"MsoNormal">Zach</p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000a617260612009517--

--===============7467129923520557532==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7467129923520557532==--

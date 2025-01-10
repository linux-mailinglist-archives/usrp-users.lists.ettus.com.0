Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EC9A0984E
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2025 18:19:37 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C71B1385D05
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2025 12:19:35 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1736529575; bh=GOrXzfLNOErWm0nBgNylAkg0hUhvNvY6sS09U4Q/kV8=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=gKe7IPTVJTAxgqp5ZOitwN+tS6f7EEzLSjXnyv7ppxX0rE2lIbWFd6dtew5w3eyuk
	 qRmELiPo4k7r6pJOcylfS6gB4IBWVXoTF0Us1RG4Tb054hhmCp/rSip2Y+HbiAY/h2
	 w4kWAiyRmCPd/rzoGUTxJoWCBpIgTQPMt+MH3Y9Lq5RMq7C4U4PUnZk3Q+S5ApRvi6
	 hhUkbx/F2bWuCjCtLDM9iqE/aqe9ZQZsl5J/SSWK5HxfjPiBBzZMT1FygjLfRa8pnX
	 sP7oGHp0PI0gidc/OZ29huW6XqBdE79l/7aTBwqjc5W132DbP0eMZzFc/lWeGsUkKJ
	 JVkKcrS5MYiNA==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 2901D385CE6
	for <usrp-users@lists.ettus.com>; Fri, 10 Jan 2025 12:18:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="bhmvc5d2";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5d122cf8dd1so3622339a12.2
        for <usrp-users@lists.ettus.com>; Fri, 10 Jan 2025 09:18:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1736529527; x=1737134327; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=kN55ZWmmOe4Y96XRceNLTfOX41D4kbCRQO3RS5F1Tzs=;
        b=bhmvc5d21BYpBAXMOuDBObFiRtUWskX0wR4WQX3q8DwCslSIIBuNl8XyZEDP3BrpVe
         NVJ1PDISZxPE//+RqaNZqgf7Z+HC+PUNpOAkRaYF0CdekbHMzX2eVgIcT4XhRORtFDLb
         b12LW1GgX1V/oJ9sL4+X/D2wdLVw0T4ofdEA7ZTVQHRn/6hfC9Z7hd+bjEA7JnMQM+dg
         an/7QBqXpUD1g6AaOBeyYPazxIYEen8YDy+Z8a97qTbfkkXO6L+WCnXdQg6knVUGCKWQ
         s/NPCQNOa0uQW0Z5NY+m6RzUXsZoLacsaYCRhRcAGwTf4lGl3HDZJ5dhEid23U0NhdGQ
         Se6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736529527; x=1737134327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kN55ZWmmOe4Y96XRceNLTfOX41D4kbCRQO3RS5F1Tzs=;
        b=UKZnjwlRs5j8gaEUc6d4CaaiL/7lxVzrXguDMbqQKMsfr8XzNeM2SUfIAzkeIbS+1E
         PI6r5Y2eIreeztp4+KFAJzxBIQARw6v0WwDSImvp3CblWlju8QrIkilF1qAibovnyqNE
         CaNGWqT4W3KHZuh7mRtaXrShqWNcLXY6wYE44gvN3IiTtgVlDn64BGbzXxqorSBAjCbp
         hGR1K6j+lABkIBCwrsA+hp/XT/aXmW/Mrm5QZMi1IxuKtt+WhW2UkFNAOsc4h1BxPR4v
         1fVQr/sNcmVn6TTa8HkOaZQBawKIXee/TYOEIqG9NHtBF5b0YKc56LyYD6q0ioXQg0i0
         JXSA==
X-Gm-Message-State: AOJu0YyyccfEse1GFOvO8Rzqq6dEsVCT116fkDZS4Pmzka5uIaJK9lug
	G6ccat1at9uwvc1HncB+JbC+wo+FDshHd1mI6toEAGF6RV9XLVxVODsTXUbXHjMwpq6pBZbtvNi
	Li421y4DEYlDXkruFXQp3u1jk0qSf8J0ZPnntuDqOkGctVeAUOQ==
X-Gm-Gg: ASbGnctGyM3It17wM2pK4JZGcVW/08qnp48W9b49B5//dNBlbE5vFI87jK2kHpehDNA
	KFlJvBv1I7+1iBblCl5RVtkRvcrtO4Sp9jftqmR8IfBsXIkUCEvgUn2UaM4ULju/6YSBUH+M=
X-Google-Smtp-Source: AGHT+IGARszSJ4Rxb+4ZAOF5z9TleBabpGm8YoVrsYep5sRZ+LqJmhEBLK98cjsaOz2hu3vx1WUwdvU+kFVFZRinP5s=
X-Received: by 2002:a05:6402:34cb:b0:5d0:e73c:b7f6 with SMTP id
 4fb4d7f45d1cf-5d972e6f2dfmr10460251a12.31.1736529526847; Fri, 10 Jan 2025
 09:18:46 -0800 (PST)
MIME-Version: 1.0
References: <P0aQim8oOP68fuSSxYNakwJrxkytWewyOfYZsgVhz7w@lists.ettus.com>
In-Reply-To: <P0aQim8oOP68fuSSxYNakwJrxkytWewyOfYZsgVhz7w@lists.ettus.com>
Date: Fri, 10 Jan 2025 12:18:35 -0500
X-Gm-Features: AbW1kvaeY3HGtwe155WX4t7Dnc40D0DgxBU2l7JcbT0pHJ01kaGbjhI4tH2pYsc
Message-ID: <CAB__hTTh14TW5VrksnYkZOUog2pYHBwYXsaxYGzaEUehc_0i4g@mail.gmail.com>
To: cjohnson@serranosystems.com
Message-ID-Hash: G6INI73OTIB5PSX7HNZ7CJJAXRCANGQM
X-Message-ID-Hash: G6INI73OTIB5PSX7HNZ7CJJAXRCANGQM
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 Bursts/Buffering with Timestamp data
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G6INI73OTIB5PSX7HNZ7CJJAXRCANGQM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============4524535742994519075=="

--===============4524535742994519075==
Content-Type: multipart/alternative; boundary="0000000000009724d9062b5d49e5"

--0000000000009724d9062b5d49e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Perhaps the graph is not really created until you call get_tx_stream() such
that you need to pass the argument to this call??


On Thu, Jan 9, 2025 at 10:24=E2=80=AFPM <cjohnson@serranosystems.com> wrote=
:

> Hi Rob and Team,
>
> I enabled the streamer=3Dreplay_buffered option as shown below. However, =
I
> did not notice any difference, as it still buffers 64 packets.
>
> Is there any additional configuration or step I need to take for this to
> work as expected?
>
> uhd::device_addr_t
> addr_args("addr0=3D192.168.30.2,streamer=3Dreplay_buffered");
>
> uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::multi_usrp::make(addr_arg=
s);
>
> Best
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009724d9062b5d49e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Perhaps the graph is not really created u=
ntil you call get_tx_stream() such that you need to pass the argument to th=
is call??</div><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 9, 2025 at 10:24=E2=80=AFPM=
 &lt;<a href=3D"mailto:cjohnson@serranosystems.com" target=3D"_blank">cjohn=
son@serranosystems.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><p>Hi Rob and Team,</p><p>I enabled the <code>streame=
r=3Dreplay_buffered</code> option as shown below. However, I did not notice=
 any difference, as it still buffers 64 packets.</p><p>Is there any additio=
nal configuration or step I need to take for this to work as expected?<br><=
br>uhd::device_addr_t addr_args(&quot;addr0=3D192.168.30.2,streamer=3Drepla=
y_buffered&quot;);</p><p>uhd::usrp::multi_usrp::sptr usrp =3D uhd::usrp::mu=
lti_usrp::make(addr_args);<br><br>Best</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div>

--0000000000009724d9062b5d49e5--

--===============4524535742994519075==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4524535742994519075==--

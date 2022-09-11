Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2B35B505E
	for <lists+usrp-users@lfdr.de>; Sun, 11 Sep 2022 19:48:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5FC5C3837B5
	for <lists+usrp-users@lfdr.de>; Sun, 11 Sep 2022 13:48:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662918526; bh=CUXb+ULMhtKc5B9CY/Sw5cj1zduCtTQa+z+VvkWz3Lc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Kcw265pkhr4rgzuok607wzLs31WkZntIrR+1qoSLrdy0KDx0W8SEiRSon7N2PfTyT
	 imQPP1aqzIG6JUlXnyBAvAM20Rrmsyl5jTD7q7zaJLJyZ0DQUEv8Y6g4UtU8FMaV7r
	 M8fWWD+oIUVMpcmGyR1p7NpomCo8A66poXZ/D9Di9gw+WGuHXw5DfK+AnTMvKzAo/b
	 8ndnXq4TZUC/bnS+qW822DOEQz1rvDOvu6tJS80U+uSQTO7Ne98wEuGAvKH1v0HtqP
	 ZlG2oMDVErYzGztLkH3EggApnvrNaoq7f5W6H32v7s+GG5/osrkv1Q4evvWk4D/CNP
	 2I8ie6lTEpyDw==
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	by mm2.emwd.com (Postfix) with ESMTPS id 206DC383C0B
	for <USRP-users@lists.ettus.com>; Sun, 11 Sep 2022 13:47:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ieYf5BCD";
	dkim-atps=neutral
Received: by mail-ed1-f47.google.com with SMTP id f20so5230480edf.6
        for <USRP-users@lists.ettus.com>; Sun, 11 Sep 2022 10:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=o4oq6bfC30yDK05pEtL/WXQjcLvzxVwsQNEKrY3m0Do=;
        b=ieYf5BCDshsJjyZstFtDy3WqRAKpqJ8JCBfUJOxzhFiqjPOIQLQ2QYctxjCcfkARwr
         kLkEA2jJ7/04KMLGXrFD7KrHXt6Sd6wApMF4Fy97lg26cFNLGwdMu+El5tB7uQHNDVwg
         zjiL2gUWIijlSOTTZktuvkIdld5CwbzTbHTmai0HRAH9dgQBclJ5x9iepu1cAugpAfq3
         vL8JeIHZHWwQ8VgmwKn8Lt0SD1dvXtHV3Hkjkz9knQcdFuojbi0WNckx4eeiZxQvCAqF
         UislBo7fBG1VOWp5UuqDTa9XeGN9Ywu/mxe3MOVE9KBgc7lYO4e7cb6KvL40du0l9p19
         O0yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=o4oq6bfC30yDK05pEtL/WXQjcLvzxVwsQNEKrY3m0Do=;
        b=EHbmSFATZJlMq5VmlW/Z+hXUo8tRty9eQTMRuj+6lr4Wg4VzCk4ZxpRPQdQM7kqcgW
         RYB7t++cI8UBcVixAOmenJKCIkUWuyJDnxrPtGRScZtA87yw3TobKXSIwZcc3IX+ChaO
         nlMgyem3VRS6bdE+Zx+J51E7b/wphQl+tNwUOs3cxTURfX6usPNf5/bteWnf76eh6eyg
         jtjp44XehHeJhqycs6ZF7D92IN8kTghWDMpgQDNzHMFLTAJunYzq5kecFde+l+HUbqWS
         6hKFRkQ8U9zcgrrI3KmRnhrfHuqHX4NQWfjAG9rS7z5JlLcXOULGpRa8Ew3s98vv0brs
         bERg==
X-Gm-Message-State: ACgBeo24Bs2IoV2bCQrKsblTvXHbxQK5povc2fIC1EArAU3tb1V2frYC
	2sY523Dk26IDN+fkGZi5//23oSl6LRKuIO1JtVc=
X-Google-Smtp-Source: AA6agR6ZxpLR6ZcbJYPsk+/MDZE5AuCcFHitybF4rVWTsZ2n5RwaAnOmZC3ERvDB9sWwpCew96Rh0yi8p38nCkUOxWw=
X-Received: by 2002:a05:6402:40d1:b0:44f:e974:f981 with SMTP id
 z17-20020a05640240d100b0044fe974f981mr15864816edb.222.1662918450952; Sun, 11
 Sep 2022 10:47:30 -0700 (PDT)
MIME-Version: 1.0
References: <CANgrtSUhV0LyJoxnzjFXJi9W_OyD2p-cU=Q_6bcUC-qjKw1JEQ@mail.gmail.com>
 <D20BFF5F-CAE7-423D-9B79-42FAED8D1BB8@gmail.com>
In-Reply-To: <D20BFF5F-CAE7-423D-9B79-42FAED8D1BB8@gmail.com>
From: YENDstudio <yend19@gmail.com>
Date: Sun, 11 Sep 2022 20:47:19 +0300
Message-ID: <CANgrtSVLfGCkrWVjMYAUw=qqJZyX0gSp3nKU23ddVQ-pW+8p_A@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Message-ID-Hash: MVHLQLJW24VUI7NDOLM6WPVFB6PD3LD4
X-Message-ID-Hash: MVHLQLJW24VUI7NDOLM6WPVFB6PD3LD4
X-MailFrom: yend19@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <USRP-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: External reference clock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MVHLQLJW24VUI7NDOLM6WPVFB6PD3LD4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6878039004727245208=="

--===============6878039004727245208==
Content-Type: multipart/alternative; boundary="0000000000008f3f9d05e86a5f84"

--0000000000008f3f9d05e86a5f84
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Marcus,

Thanks for the info.
I'm using usrp b200.


On Sun, Sep 11, 2022, 16:21 Marcus D Leech <patchvonbraun@gmail.com> wrote:

> It depends on which type of USRP. But in general it=E2=80=99s OK.
>
> Sent from my iPhone
>
> > On Sep 11, 2022, at 6:34 AM, YENDstudio <yend19@gmail.com> wrote:
> >
> > =EF=BB=BF
> > Hello,
> >
> > I wanted the usrp to use the external reference clock whenever possible=
.
> When the external reference is not available, the usrp would use the
> internal clock. Is it safe to call usrp->set_clock_source("external") eve=
n
> when the external reference is missing? Or, could it impact the performan=
ce?
> > _______________________________________________
> > USRP-users mailing list -- usrp-users@lists.ettus.com
> > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008f3f9d05e86a5f84
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi Marcus,</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Thanks for the info.</div><div dir=3D"auto">I&#39;m using usrp b2=
00.</div><div dir=3D"auto"><br><br><div class=3D"gmail_quote" dir=3D"auto">=
<div dir=3D"ltr" class=3D"gmail_attr">On Sun, Sep 11, 2022, 16:21 Marcus D =
Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">It depends on whic=
h type of USRP. But in general it=E2=80=99s OK. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Sep 11, 2022, at 6:34 AM, YENDstudio &lt;<a href=3D"mailto:yend19@g=
mail.com" target=3D"_blank" rel=3D"noreferrer">yend19@gmail.com</a>&gt; wro=
te:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello,<br>
&gt; <br>
&gt; I wanted the usrp to use the external reference clock whenever possibl=
e. When the external reference is not available, the usrp would use the int=
ernal clock. Is it safe to call usrp-&gt;set_clock_source(&quot;external&qu=
ot;) even when the external reference is missing? Or, could it impact the p=
erformance?<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.co=
m" target=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lis=
ts.ettus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.e=
ttus.com</a><br>
</blockquote></div></div></div>

--0000000000008f3f9d05e86a5f84--

--===============6878039004727245208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6878039004727245208==--

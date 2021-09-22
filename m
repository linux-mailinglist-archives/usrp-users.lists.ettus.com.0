Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9745A414FFC
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 20:37:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B424C385017
	for <lists+usrp-users@lfdr.de>; Wed, 22 Sep 2021 14:37:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="dld/m1BB";
	dkim-atps=neutral
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 9A2543840E8
	for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 14:36:38 -0400 (EDT)
Received: by mail-vs1-f53.google.com with SMTP id l19so3968387vst.7
        for <usrp-users@lists.ettus.com>; Wed, 22 Sep 2021 11:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JFKgZSwQrxhI5YE0mups+CJIZ72+hcgwrDEigfmEHLM=;
        b=dld/m1BBumBMU1RYvgEFb8n9c9aRwPeDx6vuu26fexqSyRV18u9RaV13xB3FcQF4D0
         1aGe/vMit7y4xjfvAzYUfHh2aKtbEPuhLXowOFpHdMOCPnrDGr+ouCbZ7RfWjOXUg9wn
         eAbRK6gfxjaqVMfZZPgF2hK1MK81yE5kKhzMKHQ4Jhvr4owjqjnazre8UGFAWrxGvTMG
         cFF5IDCfd5DeieIHOQyOfouVVQw3Y70fbPsvnhfuvokdmxILRhOgqMo1UDLiucMQrDvH
         h7IrUOCCAVNULyj/xXtrcicDwcJjkLnqP6DGyDG16zyL+lyouawCUcRXG1UeF61LwReZ
         oOJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JFKgZSwQrxhI5YE0mups+CJIZ72+hcgwrDEigfmEHLM=;
        b=KwYNKZNri2oySLvgXWtrQl7pWXtOxy7hGFvym/SfGjgERNbkMZzUmj4coDc7knQHly
         fYKC2FnuJCUXRrjOfSQ+66D5fQSSWFMANTOUkRnRynSMzVfWQJr3SCks/bZH8x/VoQBK
         8I7h3tFgrZadZb1kImYRjXOR1pm43iiep6wFa3V76PKTx+nTukf2kVJuyuB+pIjuts/Z
         QKm1fbFZn5BVhZhIk09E6GQn9NwCpz859fnDHHY8RUrpOid2twYdX7ebQqn9LmpYE6s6
         TDUrqwSzuMy9cjM70c0zBJDXWvQ13dnuuwjdoAbQCqtUiR2j6ZThW9w+YHjUZZuznCN2
         Pt9w==
X-Gm-Message-State: AOAM532Gi65jX4mmoBco+p44ivaV3BPYV11gha2jzR/ZUsP532wFLTCl
	mmkgfvJEGxDayikg4R0WNRBjahApvNLp0b4Tdq6boO3e
X-Google-Smtp-Source: ABdhPJxIp3OK1VZQdltfYJB2ctWngTa3aF/gKeRzw6nZj9WHmlb2TdB8EV6coZ9MAIukNSm5QLhFxCn6gjAgCmGIjAc=
X-Received: by 2002:a67:2c58:: with SMTP id s85mr882693vss.35.1632335797670;
 Wed, 22 Sep 2021 11:36:37 -0700 (PDT)
MIME-Version: 1.0
References: <Qyw2Pyhhc4QwrWaK7o3ZFf3tM8Zlughem29JThOhtks@lists.ettus.com>
In-Reply-To: <Qyw2Pyhhc4QwrWaK7o3ZFf3tM8Zlughem29JThOhtks@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 22 Sep 2021 14:36:01 -0400
Message-ID: <CAL7q81u5ujvSzQbXenysWAcx-OUvACXnRdDo_f_=4ZWbE8vOtA@mail.gmail.com>
To: thebouleoffools@gmail.com
Message-ID-Hash: CGVVR7ZDOZNZAP3XBY6ESGDQNYTMWAMH
X-Message-ID-Hash: CGVVR7ZDOZNZAP3XBY6ESGDQNYTMWAMH
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Radio loopback / "scaling@OUTPUT_EDGE:0" error
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CGVVR7ZDOZNZAP3XBY6ESGDQNYTMWAMH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0746213481141761339=="

--===============0746213481141761339==
Content-Type: multipart/alternative; boundary="0000000000005fe90105cc99cbc2"

--0000000000005fe90105cc99cbc2
Content-Type: text/plain; charset="UTF-8"

I suggest trying the 4.1.0.2 release. There was a fix for
rfnoc_radio_loopback and a few others since the initial UHD 4.0 release.

On Wed, Sep 22, 2021 at 1:46 PM <thebouleoffools@gmail.com> wrote:

> 4.0.0.0. Version string: 4.0.0.HEAD-0-g90ce6062.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005fe90105cc99cbc2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I suggest trying the 4.1.0.2 release. There was a fix for =
rfnoc_radio_loopback and a few others=C2=A0since the initial UHD 4.0 releas=
e.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Sep 22, 2021 at 1:46 PM &lt;<a href=3D"mailto:thebouleoffools@gma=
il.com">thebouleoffools@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><p>4.0.0.0. Version string: 4.0.0.HEAD-0-g=
90ce6062.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005fe90105cc99cbc2--

--===============0746213481141761339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0746213481141761339==--

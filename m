Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C2B3AA511
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 22:17:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4516D384B14
	for <lists+usrp-users@lfdr.de>; Wed, 16 Jun 2021 16:17:45 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Vg27ukSu";
	dkim-atps=neutral
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 1BEE73849AC
	for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 16:16:54 -0400 (EDT)
Received: by mail-io1-f42.google.com with SMTP id f10so571149iok.6
        for <usrp-users@lists.ettus.com>; Wed, 16 Jun 2021 13:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ht6Ym7O57q8jGQzahRdoQq6iuU+9BHHVD0OgdKeIeLs=;
        b=Vg27ukSubZLsr6CdP5adELfAClxpnaTAR54sYWhBGyAeT9iOXfDVGV6zLfXNGhMZRO
         GwtQPseIGuDgMVTyG92Xv9wt9uIoQSjXPYAT1qoI8CLPLV21DGSOBBPtRXO2N54jf0ZL
         xO2y6Hd/goUom2zF3w9KiHkjaIedvuNiU95KJSuRu2vRODZ4HHuuPItSaNe6jW/4cJuL
         5MpoZXLRijheZqB9rBY36VWZC2WPpfHcxhQigbqUqVJxH688B3UE0+ik9pxhXVUswoUy
         SC9TMNyEpXpxNzh7nUnkMPwgfKYE7UkJmbSJTsgH6rHiIG4JfHRRhwn5nIFJMMcUazY9
         kIew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ht6Ym7O57q8jGQzahRdoQq6iuU+9BHHVD0OgdKeIeLs=;
        b=eu1CAtngnY0GwxYRqkeTEI16pPSRfCibMZvSC8qxNogF1mpbVULg3xByS+PWiFGtt9
         PtEotMsLVVeLEioMvBHrnxJmTUmyyU2ck2DJmbAkJB07Kpafi07x4v5blBBnzqdjsxlm
         /qeY38ZBk8NzkiKhXfb/iAYGLVOOhZ4gNyx2wD99HiS/+KS+Ncut3xcdTpoqyqsNtz9q
         z/0HTG5asNbmTivSGHfdcBIeLBpfGXEWps6dwM29yXK5cH2nA653KyV5CBDzID4y1cz/
         LnAEMchygOr1VFVuxoxpw/fsSv2LP643sbv1S1lL2f+LK6AiAX64NCeMPF1WVMWQxj1t
         Wz/w==
X-Gm-Message-State: AOAM530X9E28HZ08xz52dHAX70CgSBlOSTeQcVDNjtNhFJfsP3zCZ18t
	1+8cSmtwO40wCGLlELvMOe5qwDrlshp3cRJvxXqVdZ9yui8=
X-Google-Smtp-Source: ABdhPJx2xcfbvH9yW1q5/wBUPPR+uPe3Moi2m156BbGayGPBqjOmZaJvKueE6WckDLP1kERV6916l5q6O9lShZmR7o4=
X-Received: by 2002:a6b:f81a:: with SMTP id o26mr909823ioh.56.1623874614417;
 Wed, 16 Jun 2021 13:16:54 -0700 (PDT)
MIME-Version: 1.0
References: <ennj27wwYFEWXXNJu1B7vkFGp1uIiIFwxJA9U6LBKNY@lists.ettus.com>
In-Reply-To: <ennj27wwYFEWXXNJu1B7vkFGp1uIiIFwxJA9U6LBKNY@lists.ettus.com>
From: Nick Foster <bistromath@gmail.com>
Date: Wed, 16 Jun 2021 13:16:43 -0700
Message-ID: <CA+JMMq_y38U11HibkQvQhXCiZHmoPBOvwdJgR14x8V4Mc5hRwg@mail.gmail.com>
To: paradis@kwesst.com
Message-ID-Hash: A3IQLOQ75HLJUX4CW4IHJSC2EHTRUAWP
X-Message-ID-Hash: A3IQLOQ75HLJUX4CW4IHJSC2EHTRUAWP
X-MailFrom: bistromath@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: is there a UHD v4.0.0.0 for Ubuntu 20.04 LTS?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A3IQLOQ75HLJUX4CW4IHJSC2EHTRUAWP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6035448277630296900=="

--===============6035448277630296900==
Content-Type: multipart/alternative; boundary="0000000000008d616c05c4e7c58f"

--0000000000008d616c05c4e7c58f
Content-Type: text/plain; charset="UTF-8"

That's what I'm describing. Bitbake is an environment which lets you
generate cross-compiled filesystems for embedded devices. It's a big hammer
because you need to have locally consistent versions of all the libraries
and headers UHD depends on, in order to compile a working UHD. This means
it's also compiling an entire Linux distribution alongside UHD. The weird
method I described above is a way to attempt to get around that by linking
against the libraries your embedded device already has.

Nick

On Wed, Jun 16, 2021 at 12:57 PM <paradis@kwesst.com> wrote:

> alternately, is there a way to cross-compile the UHD v4.0.0.0 libraries on
> my x86 machine but target the ARM processor on my SBC?
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000008d616c05c4e7c58f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>That&#39;s what I&#39;m describing. Bitbake is an env=
ironment which lets you generate cross-compiled filesystems for embedded de=
vices. It&#39;s a big hammer because you need to have locally consistent ve=
rsions of all the libraries and headers UHD depends on, in order to compile=
 a working UHD. This means it&#39;s also compiling an entire Linux distribu=
tion alongside UHD. The weird method I described above is a way to attempt =
to get around that by linking against the libraries your embedded device al=
ready has.</div><div><br></div><div>Nick<br></div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 16, 2021 at 1=
2:57 PM &lt;<a href=3D"mailto:paradis@kwesst.com">paradis@kwesst.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>alte=
rnately, is there a way to cross-compile the UHD v4.0.0.0 libraries on my x=
86 machine but target the ARM processor on my SBC?</p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000008d616c05c4e7c58f--

--===============6035448277630296900==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6035448277630296900==--

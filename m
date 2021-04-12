Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 960A835CFAB
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 19:47:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 76150384C2E
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 13:47:24 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=virginia.edu header.i=@virginia.edu header.b="PXLHfEQ1";
	dkim-atps=neutral
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A493384C2E
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 13:46:41 -0400 (EDT)
Received: by mail-io1-f53.google.com with SMTP id e186so14310242iof.7
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 10:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=virginia.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uJbe72tcAm3Ht/GPxVE0MNLGkghxrVHnN7j/hkFQ2Pw=;
        b=PXLHfEQ16xXlseljqeMXYA4NcZZBHDUwlaCUHbvL+hu+xH43vK+UwdTtmEz1BrjM71
         iNXmQGzbbuUNVaxgIisOaZRjdBWsEp6ZbbZCAZzhKtn+NvBj+MJiz9EFGtK9Bg3HcaoF
         lL8RGwXfTPffXyq+GeXCHOiEEx/g01d38AUv99Pkp/8zDlvpmBYTGUTli4pTW2rhIyC9
         VquXcTu+WVkOaHqU7h1JHiWvbCNapS45TvRM3bZejb0F+2sxr65nT0uBwjig/b3QiOc1
         +caSvv8CgZEugSBb+B/K+lg3wAseXtahLT89HuC99ApZNBN2JnFPKTZtsM0TUXWAs9jt
         ylrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uJbe72tcAm3Ht/GPxVE0MNLGkghxrVHnN7j/hkFQ2Pw=;
        b=kwWVdqPoKUKvJMB3lsFnqr08GSCTMG99e3daYYdvuYGCCzkDnuAOJuqsfD5D8ahxQH
         y7m+gG/Ayq+grzSOqL9KY4K8lzfXL20SU+fEZ0p4ZyO+QJar8DYzQkUq8JWYjJUtYnoY
         lessSYjMkoo3cM1TEvYDGxVtpFOBsvW0179dGnQELwiCqqD1J0KukLT0u9Uj9M8MHOqS
         wdDZoRBjkChCrO4Q5PIzqWo9aHIXMfDDAi4uuntdJoBM708LLH33rpFxRIgXjSnpwCbf
         FglN8wpCttoN4rr7Vm2Y72pVNtQH24IHOhoIXK7MEUx2KtkDYCirOoJZYIQ2Ccn60SH1
         UW1A==
X-Gm-Message-State: AOAM5334C+IvmbwgF4oBLUSNlKqnGZswFQjIO0k6f+obZAGeR6N63KJD
	umSEGu0w+r2N5Mp0yM/P1f51AQqbZnrMRV/bxDMWkE7qUxojYg==
X-Google-Smtp-Source: ABdhPJxDJ6tldyrVbGqumxnN133a0cRkUvPgnUjohElFjPsJCQHLDV33slgOXviMxk7NWuPpMGpLf8gfe8VCMi5zxLs=
X-Received: by 2002:a05:6638:6a8:: with SMTP id d8mr14235295jad.98.1618249600850;
 Mon, 12 Apr 2021 10:46:40 -0700 (PDT)
MIME-Version: 1.0
References: <ezDdaGlOKFC9wsh9ehlxUzpCqL3PXFenPTX7PB0uuc@lists.ettus.com>
In-Reply-To: <ezDdaGlOKFC9wsh9ehlxUzpCqL3PXFenPTX7PB0uuc@lists.ettus.com>
From: Dustin Widmann <dw2zq@virginia.edu>
Date: Mon, 12 Apr 2021 13:46:04 -0400
Message-ID: <CAAv0A=NUkz96guSeBhUppNhZX8muNXgwKEud_HnVL9QUxUfgRQ@mail.gmail.com>
To: paradis@kwesst.com
Message-ID-Hash: LUNNL5H4KXSPVBIWLRL554PS42SVVAV7
X-Message-ID-Hash: LUNNL5H4KXSPVBIWLRL554PS42SVVAV7
X-MailFrom: dw2zq@virginia.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LUNNL5H4KXSPVBIWLRL554PS42SVVAV7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0115755351215292860=="

--===============0115755351215292860==
Content-Type: multipart/alternative; boundary="0000000000009e1f7305bfca18ac"

--0000000000009e1f7305bfca18ac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Oh, it seems I may have misread your email, particularly the bit about it
"reappearing" after unplugging/replugging it (resetting the interface
programmatically had the same effect). The issue I had is that
uhd_find_devices would work again after doing that ...   Sorry for the
distraction.

Dustin

On Mon, Apr 12, 2021, 1:03 PM <paradis@kwesst.com> wrote:

> Thanks Dustin,
>
> Did resetting the USB fix your problem?
>
> I don=E2=80=99t think I=E2=80=99m having any USB issues per say, I can pl=
ug the B205 in
> and after doing an =E2=80=98lsusb=E2=80=99 I can see the device on the bu=
s. The problem I=E2=80=99m
> having is that when I do a =E2=80=98uhd_find_devices=E2=80=99 it doesn=E2=
=80=99t find anything. My
> gut feeling is telling me that there=E2=80=99s an issue with the hardware=
, but I=E2=80=99d
> like to exhaust any other possibilities before trying to debug the actual
> B205 itself.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000009e1f7305bfca18ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Oh, it seems I may have misread your email, particula=
rly the bit about it &quot;reappearing&quot; after unplugging/replugging it=
 (resetting the interface programmatically had the same effect). The issue =
I had is that uhd_find_devices would work again after doing that ... =C2=A0=
 Sorry for the distraction.</div><div><br></div><div>Dustin<br></div></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon=
, Apr 12, 2021, 1:03 PM  &lt;<a href=3D"mailto:paradis@kwesst.com" target=
=3D"_blank">paradis@kwesst.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><p>Thanks Dustin, </p><p>Did resetting the US=
B fix your problem? </p><p>I don=E2=80=99t think I=E2=80=99m having any USB=
 issues per say, I can plug the B205 in and after doing an =E2=80=98lsusb=
=E2=80=99 I can see the device on the bus. The problem I=E2=80=99m having i=
s that when I do a =E2=80=98uhd_find_devices=E2=80=99 it doesn=E2=80=99t fi=
nd anything. My gut feeling is telling me that there=E2=80=99s an issue wit=
h the hardware, but I=E2=80=99d like to exhaust any other possibilities bef=
ore trying to debug the actual B205 itself.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--0000000000009e1f7305bfca18ac--

--===============0115755351215292860==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0115755351215292860==--

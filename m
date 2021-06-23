Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9848C3B1D06
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jun 2021 17:02:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 902573845CB
	for <lists+usrp-users@lfdr.de>; Wed, 23 Jun 2021 11:02:14 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="OzPFtfR7";
	dkim-atps=neutral
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 7AAEE384207
	for <usrp-users@lists.ettus.com>; Wed, 23 Jun 2021 11:01:27 -0400 (EDT)
Received: by mail-il1-f178.google.com with SMTP id v5so2899315ilo.5
        for <usrp-users@lists.ettus.com>; Wed, 23 Jun 2021 08:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MByTha2aJyyhZmJB32W9t/FzHBtzzRhIoWhKt6jaUQY=;
        b=OzPFtfR7XoRSyz80AeheEW1BQjTLN6S6ZRpQ2dgMvGasSra2TK6YmJp/xuDcuqJW+Z
         KKWW/dMzXFpagV7VHklo2E547xqpMnMckqFo848SzpC8hD3My0qas2kewFbKMYw9FhXA
         cnlFZKtMrOSOZKa9si4+WIIEwkd2fMvJNT5jbazqHihWltbD++tpIHNZrqpfB3mEBjun
         QclWFBO8sdE06jq4CoPEQWn89tcwkBE6WU5fiv6DqMZ0pTUIthzRwK11QFHLM4nLndRz
         v703wTH6QEe2fff3vEuSJXIcjuXC9J4xh6a1CZX0fKMwiju8MrcuvyK4Ubn4MwM68rad
         XUwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MByTha2aJyyhZmJB32W9t/FzHBtzzRhIoWhKt6jaUQY=;
        b=VmQkJyMJqo/lPkin2b9UedkLKL6WumhjIl7O23N2a2GtMBwLNjsHF8oxi37D18DzgT
         N+3sYjJ2T3AllglyG4BDofFdGz/hF2S1AvHsPc5qIkXWHShv1rPniERPKhJHBo+o9sF9
         WfqvpVa1Hkdt5Tb63dJDdqtkGtAOObIbRgMsVXywtihMgrRemNI1foL+hSM1S38rFJRl
         0qZhX6zMJomN7I6tOSOb4i6hvB/AwZ/XL06rUVFFZgEQUkcEsYZqShhPE3SsDIX4XHz9
         SHdA2aVuyg5srIrQ53acylOvdy0nqcZOJ9nDJSuK6P9XgImooAXAAAFoh53e5SLd0wyD
         LX6Q==
X-Gm-Message-State: AOAM532zJmwdIxqZS7pUylCDb/fPlDF0tfICxOWASuTx94FTU7pNBUUi
	pNC+AiOMqQUVvlilydYLbs3cJdoiFahVrn3zu3mwB7Mv
X-Google-Smtp-Source: ABdhPJzKkFGolUsvUS3foDD71q734lX3miPuU26GIxfkThV98dEszN1eu5nWdXXDQ91pEDtWTVNQQInXQOvjw0CWYw0=
X-Received: by 2002:a92:cbd0:: with SMTP id s16mr3203142ilq.19.1624460486920;
 Wed, 23 Jun 2021 08:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAKazox0Np_582yPH4wv-aK3E8RmNS6t-AR2d=uca4L+ZshfqSg@mail.gmail.com>
 <CAGNhwTONgQ=yLgn_2oTjoUD=jYEsRnaUSLy3AM5-YZ++cMmrnw@mail.gmail.com>
In-Reply-To: <CAGNhwTONgQ=yLgn_2oTjoUD=jYEsRnaUSLy3AM5-YZ++cMmrnw@mail.gmail.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Wed, 23 Jun 2021 10:00:50 -0500
Message-ID: <CACaXmv8kc6FKgekOS6xV05r9iOnfjE8tgrOxJgC0qqyjo68yOQ@mail.gmail.com>
To: Daniel May <danielmay83@gmail.com>
Message-ID-Hash: FVIQLROZVLCJ4U2N73QJKXRNU5ZRLJTU
X-Message-ID-Hash: FVIQLROZVLCJ4U2N73QJKXRNU5ZRLJTU
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 EOL Schedule?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FVIQLROZVLCJ4U2N73QJKXRNU5ZRLJTU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5208417253558012006=="

--===============5208417253558012006==
Content-Type: multipart/alternative; boundary="00000000000046600005c5702e42"

--00000000000046600005c5702e42
Content-Type: text/plain; charset="UTF-8"

Hello Daniel May:

We have plans to sell and support the USRP E310 at least through 2026.

Please let me know if you need any further information.

--Neel Pandeya




On Wed, 23 Jun 2021 at 09:49, Michael Dickens <michael.dickens@ettus.com>
wrote:

> Hi Daniel - There is no schedule to EOL the E310 or any other
> currently available USRP. - MLD
>
>
> On Wed, Jun 23, 2021 at 10:20 AM Daniel May <danielmay83@gmail.com> wrote:
>
>> Is there currently an EOL schedule for the E310, or will the E310 be
>> available for the foreseeable future?
>>
>> Thanks,
>> Daniel
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000046600005c5702e42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-family:verdana,sans-serif">Hello=C2=A0Daniel May:</div><div class=3D"gmai=
l_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D=
"gmail_default" style=3D"font-family:verdana,sans-serif">We have plans to s=
ell and support the USRP E310 at least through 2026.</div><div class=3D"gma=
il_default" style=3D"font-family:verdana,sans-serif"><br></div><div class=
=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Please let me k=
now if you need any further information.</div><div class=3D"gmail_default" =
style=3D"font-family:verdana,sans-serif"><br></div><div><div dir=3D"ltr" cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><font face=3D"verdana, sans-serif">--Neel Pandeya</font><div><br></div><di=
v><br></div><div><br></div></div></div></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 23 Jun 2021 at 09:49, =
Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.com">michael.di=
ckens@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Daniel - There is no schedule to EO=
L the E310 or any other currently=C2=A0available USRP. - MLD<br><br></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed,=
 Jun 23, 2021 at 10:20 AM Daniel May &lt;<a href=3D"mailto:danielmay83@gmai=
l.com" target=3D"_blank">danielmay83@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Is ther=
e currently an EOL schedule for the E310, or will the E310 be available for=
 the foreseeable future?</div><div><br></div><div>Thanks,</div><div>Daniel<=
br></div></div>
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
</blockquote></div></div>

--00000000000046600005c5702e42--

--===============5208417253558012006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5208417253558012006==--

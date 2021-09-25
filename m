Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 624AE4181C4
	for <lists+usrp-users@lfdr.de>; Sat, 25 Sep 2021 13:59:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0B679383EB7
	for <lists+usrp-users@lfdr.de>; Sat, 25 Sep 2021 07:59:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="C8e24TUy";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 8A8AD383BB7
	for <usrp-users@lists.ettus.com>; Sat, 25 Sep 2021 07:58:27 -0400 (EDT)
Received: by mail-yb1-f181.google.com with SMTP id z5so11814277ybj.2
        for <usrp-users@lists.ettus.com>; Sat, 25 Sep 2021 04:58:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=TktULJkWJ1J5Jkd/AXtRTApUrqHGLswNzBsmyomZfsI=;
        b=C8e24TUyuHZw11mI8rxqDjU4Gt9pSGGlg0qbtrHKn9oVZgWTETsiCmOd54kBBtdeKM
         6J5IKtRYekLQWjmoqbYxzvgf5st/kQZelIfEqhK79aDDG/i91U/SqkR7LNnDQNNA5pcm
         eijIYvtmJGhIBrKe26aXDZ8jLZjzU7lDSRg2XUgisoTia7bZu3vbat/nRYpPe0eJg8CP
         UBSEHyXiJ0q8nCy/qYuj86gaknqz3B+I1jqnccf/sae4iFr2+HR7vkgCwSCOg98y1LYJ
         cN1azfLK0CM/KQL31Jpdf8QF3IRJS1zqfSvEBAGfkH673XiwH9H04UDpyxqsZaglrLfw
         Ps4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=TktULJkWJ1J5Jkd/AXtRTApUrqHGLswNzBsmyomZfsI=;
        b=0qzzstzf2Hzitcf3nljlG07qgEp0tSRoXxEMBF/cKY1DZ/WK/iCgiZQv2JwAptneBn
         pkJ3w5gAGWitLu1YBaPTQhTTyBoh9GCxOH3acXt6FWQ2XXqXDDg1ZwrMNa3BpR52L3G4
         XqS/9daSxU7lds431wC5h6EZmI5hDDfQWPX67bGTgD496UVsvEwpkeoXNGA3+kssKw5b
         LMCPTJxfcAeleUIZgG4pklvO9PleAHDQHAXShae0QT6S8x5WmUu5TJ3fk2C9hqXqnTjh
         sHBEHInPNfO5UabvpdjGArf8pmh16ghlHx6ocII5T8lCU+xbfXtvjVjuKDZCcR/4HgUZ
         f1vw==
X-Gm-Message-State: AOAM532a45GsI7g37ZE5YCviaO3S1TrAFgnT4KUjCuMBLUh1cLkAuF3I
	oJ5y4fswjtUg+vMNnuz4quhj8mlCaLxqDKhfcMmASVnJ
X-Google-Smtp-Source: ABdhPJwtCuNQYUyT1RcF/0WA2emdm3SVwwexUsLLa5MCLDYG4blLXJ+HOXPdNr0e4ZDFUfCQUkFSpl7UAsfNmpvdcJQ=
X-Received: by 2002:a25:c006:: with SMTP id c6mr18589443ybf.480.1632571106962;
 Sat, 25 Sep 2021 04:58:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAGeA34HFnL3h5cDLj8mh_fjjO32w3sYDwS=rw7qN12Vj6-ejTw@mail.gmail.com>
In-Reply-To: <CAGeA34HFnL3h5cDLj8mh_fjjO32w3sYDwS=rw7qN12Vj6-ejTw@mail.gmail.com>
From: Shamil Prematunga <shamildilshan.b@gmail.com>
Date: Sat, 25 Sep 2021 17:28:16 +0530
Message-ID: <CAGeA34EfStvwPr3+yNURh=KY2e=ENaSab-c6y0FrM+aatXFsxQ@mail.gmail.com>
To: Openair5g-user <openair5g-user@lists.eurecom.fr>, usrp-users@lists.ettus.com
Message-ID-Hash: XM542QWB44FVWT7OA35OXAW5TBF3VZTD
X-Message-ID-Hash: XM542QWB44FVWT7OA35OXAW5TBF3VZTD
X-MailFrom: shamildilshan.b@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 and USRP B210 didn't connect through RF
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XM542QWB44FVWT7OA35OXAW5TBF3VZTD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6766637828668965762=="

--===============6766637828668965762==
Content-Type: multipart/alternative; boundary="000000000000e6b07e05ccd094ef"

--000000000000e6b07e05ccd094ef
Content-Type: text/plain; charset="UTF-8"

Dear Community,

I would appreciate it if anyone has the experience of the situation
mentioned in the previous email please help me to sort it out.

Thank you,
Shamil

On Thu, Sep 23, 2021 at 9:30 PM Shamil Prematunga <shamildilshan.b@gmail.com>
wrote:

> Dear All,
>
> In my lab I am trying to create an OAI 5G SA network. We are using USRP
> N310 as a gNB and USRP B210 as a nrUE. We were able to start gNB without an
> error. Once nrUE (B210) starts it doesn't attach to the gNB. It loops as
> mentioning "Starting sync detection" as shown in the attachment (ue_log).
> We made basic configurations correctly. Same config files over the
> rfsimulator works fine.
>
> Can someone please leave feedback, what we can do (any other changes in
> parameters related to the USRPs) to connect gNB and UE over the radio
> interface.
>
> Thanks and Regards,
> Shamil
>
>

--000000000000e6b07e05ccd094ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Community,=C2=A0<div><br></div><div>I would appreciat=
e it if anyone has the experience=C2=A0of the situation mentioned in the pr=
evious email please help me to sort it out.=C2=A0</div><div><br></div><div>=
Thank you,</div><div>Shamil</div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 23, 2021 at 9:30 PM Shamil Pre=
matunga &lt;<a href=3D"mailto:shamildilshan.b@gmail.com">shamildilshan.b@gm=
ail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex"><div dir=3D"ltr">Dear All,<div><br></div><div>In my lab I am trying =
to create an OAI 5G SA network. We are using USRP N310 as a gNB and USRP B2=
10 as a nrUE. We were able to start gNB without an error. Once nrUE (B210) =
starts it doesn&#39;t attach to the gNB. It loops as mentioning &quot;Start=
ing sync detection&quot; as shown in the attachment (ue_log). We made basic=
 configurations correctly. Same config files over the rfsimulator=C2=A0work=
s fine.=C2=A0</div><div><br></div><div>Can someone please leave feedback, w=
hat we can do (any other changes in parameters related to the USRPs) to con=
nect gNB and UE over the radio interface.=C2=A0</div><div><br></div><div>Th=
anks and Regards,</div><div>Shamil</div><div><br></div></div>
</blockquote></div>

--000000000000e6b07e05ccd094ef--

--===============6766637828668965762==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6766637828668965762==--

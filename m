Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5D94AE932
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 06:26:25 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BF3C4384A38
	for <lists+usrp-users@lfdr.de>; Wed,  9 Feb 2022 00:26:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="M12Zwyl+";
	dkim-atps=neutral
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
	by mm2.emwd.com (Postfix) with ESMTPS id A348F384285
	for <usrp-users@lists.ettus.com>; Wed,  9 Feb 2022 00:25:27 -0500 (EST)
Received: by mail-yb1-f181.google.com with SMTP id g14so2842535ybs.8
        for <usrp-users@lists.ettus.com>; Tue, 08 Feb 2022 21:25:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S35O7hvFyZGh2oeHMfYKIIhKYTsKKegRVi2fm0N+IL0=;
        b=M12Zwyl+tXR7yKUEaqBmweYnUcX95aPyrLRbL8okpZEJ1eE5BrDgjvhfHzjxJetfS5
         Ly/6YbYXlCLXMrWsYAh0lysPxoW+jcCy8uO5klvxYE7/GynR24VT1ehux1VQoWQdMddk
         IVq5ggcWOHk0ZsmuSJgvm3X1CVO1HZ9dvThcWtLzzQaTjWmDiDjdBPWKiWeaSgMWrm3A
         L/kwFNyvU7iovQZsIcnGGiR42wA54ccb5VoeDfWWDKelzZXG7EbF3Q1zLoZEbntgc3Ub
         N84mKH50pRhCPPdZpyYUplkO7mi2eBO6S7tBSAM0n3lYMhN2u066dJcb3mx55gr9WilN
         H/9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S35O7hvFyZGh2oeHMfYKIIhKYTsKKegRVi2fm0N+IL0=;
        b=WQU245/6aAFhb5wrNkv4BbzO12oh+qhoTkvtJsVKM+eujMUQhVPGanbG8np/7ESHzL
         Bc5m/BRwqUYZTnzIH6yywAxcbgh8pgv0U9BgHpSZ54vJauJ+Snwp0/UlAf+URxLoYxKj
         neXZ71JjfN9oX6hKWcsCmzg8lzndzb//KDa3iPxq/lET+xwkgJRCO/Ld3qjQLoWL/KFo
         YQ/rj7WJwrxDR7yNNFd+y0YrECl/8nhEOYkghdyf2j2uWOh2pViV+wVWtoJcEFXD3uHL
         zyN/DvoSl0B2iyOAg0sQVsqse3qZFOhwBaxc4zHxlxhEJGTv/IoopmzwwbNakQFrnNQa
         3Bbw==
X-Gm-Message-State: AOAM530G0axd9VKEQVnOAvPQgvchwKsUWntMN7rx4lC6VeLa+GVorHpW
	aoX6c6fCxcRY7AsfPpiKJ9Zsg1dSldW0zQJ/ETgafQ1k77dUEQ==
X-Google-Smtp-Source: ABdhPJyCJFAcjQHbTb9B4S/LaNQ+S41kFbHnCs2wSFj2rCVs7bIJOJDaGIYH1gfMT3MNdF+AWXVvb5DdFLGM1YGIltI=
X-Received: by 2002:a81:e908:: with SMTP id d8mr606623ywm.82.1644384326888;
 Tue, 08 Feb 2022 21:25:26 -0800 (PST)
MIME-Version: 1.0
References: <BY5PR16MB3491497C4FC584665B18E6BBB92D9@BY5PR16MB3491.namprd16.prod.outlook.com>
In-Reply-To: <BY5PR16MB3491497C4FC584665B18E6BBB92D9@BY5PR16MB3491.namprd16.prod.outlook.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 9 Feb 2022 00:25:16 -0500
Message-ID: <CAB__hTRpmxsA9KWmQtg1PnUiodxa2pPNxqz2riKLDeAXiTzSOQ@mail.gmail.com>
To: Jonathan Pratt <jpratt@srcaus.com>
Message-ID-Hash: MUT3DV3ZFUI4ZI5LEESC5AI7UUCB46HW
X-Message-ID-Hash: MUT3DV3ZFUI4ZI5LEESC5AI7UUCB46HW
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 10GbE Fibre SFP+ module on an X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MUT3DV3ZFUI4ZI5LEESC5AI7UUCB46HW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5810671873081299945=="

--===============5810671873081299945==
Content-Type: multipart/alternative; boundary="000000000000ae060e05d78f0f60"

--000000000000ae060e05d78f0f60
Content-Type: text/plain; charset="UTF-8"

Hi Jonathan,
We use fiber all the time with the X310 - both single mode and multimode
SFP+ transceivers.  We started off using Intel transceivers, but later
moved to much cheaper 10Gtek and FiberStore transceivers.  On occasion we
have had trouble with a transceiver when used in an Intel NIC such as X520,
but I don't think we've seen an issue with the transceiver not working in
the X310.
Rob

On Tue, Feb 8, 2022 at 3:36 PM Jonathan Pratt <jpratt@srcaus.com> wrote:

> Hi usrp-users
>
>
> Has anyone had experience using 10GbE SFP+ modules on the X310 for fibre
> connections rather than copper?
>
> We have an X310 and a 10GbE switch. Both are able to take SFP+ modules.
> The X310 is programmed with an FPGA image that allows for 1GbE on port 0
> and 10GbE on port 1.
>
> We have some 1GbE fibre SFP+ modules which work on the switch and the X310
> (in either port) for 1Gb ethernet.
> We have some 10GbE fibre SFP+ modules which work on the switch but won't
> work on the X310 (in either port). We can use them on the switch to
> communicate with a 1GbE SFP+ module on the X310 (in either port).
> We had a similar (but reverse) problem with a 10GbE Cu SFP+ module that
> would work on the X310 but not in an NIC that we were trying to use at the
> time.
>
> So does anyone have experience with a brand of 10GbE fibre SFP+ module
> that works with the X310 or is there a reason why this won't work?
>
> Thanks!
> Jonathan Pratt
>
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000ae060e05d78f0f60
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jonathan,<div>We use fiber all the time with the X310 -=
 both single mode and multimode SFP+ transceivers.=C2=A0 We started off usi=
ng Intel transceivers, but later moved to much cheaper 10Gtek and FiberStor=
e transceivers.=C2=A0 On occasion we have had trouble with a transceiver wh=
en used in an Intel NIC such as X520, but I don&#39;t think we&#39;ve seen =
an issue with the transceiver not working in the X310.</div><div>Rob</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Feb 8, 2022 at 3:36 PM Jonathan Pratt &lt;<a href=3D"mailto:jpratt@s=
rcaus.com">jpratt@srcaus.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Hi usrp-users<br>
<br>
<br>
Has anyone had experience using 10GbE SFP+ modules on the X310 for fibre co=
nnections rather than copper?<br>
<br>
We have an X310 and a 10GbE switch. Both are able to take SFP+ modules. The=
 X310 is programmed with an FPGA image that allows for 1GbE on port 0 and 1=
0GbE on port 1.<br>
<br>
We have some 1GbE fibre SFP+ modules which work on the switch and the X310 =
(in either port) for 1Gb ethernet.<br>
We have some 10GbE fibre SFP+ modules which work on the switch but won&#39;=
t work on the X310 (in either port). We can use them on the switch to commu=
nicate with a 1GbE SFP+ module on the X310 (in either port).<br>
We had a similar (but reverse) problem with a 10GbE Cu SFP+ module that wou=
ld work on the X310 but not in an NIC that we were trying to use at the tim=
e.<br>
<br>
So does anyone have experience with a brand of 10GbE fibre SFP+ module that=
 works with the X310 or is there a reason why this won&#39;t work?<br>
<br>
Thanks!<br>
Jonathan Pratt <br>
<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000ae060e05d78f0f60--

--===============5810671873081299945==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5810671873081299945==--

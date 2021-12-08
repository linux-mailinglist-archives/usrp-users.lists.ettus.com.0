Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCCD46D94A
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 18:10:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B9BF63848FF
	for <lists+usrp-users@lfdr.de>; Wed,  8 Dec 2021 12:10:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="dZEASVLK";
	dkim-atps=neutral
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	by mm2.emwd.com (Postfix) with ESMTPS id E28533840C7
	for <usrp-users@lists.ettus.com>; Wed,  8 Dec 2021 12:09:17 -0500 (EST)
Received: by mail-yb1-f179.google.com with SMTP id x32so7434454ybi.12
        for <usrp-users@lists.ettus.com>; Wed, 08 Dec 2021 09:09:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xdmqc+CcpH4sNCcsFyVuAYNlZBQ89AXiT/V5xP/Jljc=;
        b=dZEASVLKGzAf5ZbFJkkc1t26otwPcRP7DqOZ/gYjKjzh3Zj0tPMUE6ce7ZQLbBuLsf
         Y62PSoqoBAt0CUKZ4u/WxWNQXU6iRzFw2J3lO+tixerXiUueLoNVxINlrMD4sxJWDVHm
         HN61KI2HqKfnVbvYfTeZCc826eLwTNSzDmVzq4EqMJE7sxLKvvqX/fKCvaKerGe5UJFZ
         BQ/2+loWCiIHscgohMpsN502CUnle8UjlF5jkhGKeh3Q7qrBQyBR7VqXiu5TcLmSRBSF
         9MyWGItEmucQlcURq/XxKF0VVfTXfk0WM0x1pwHM/O51tiwmFAL+OOhk7C6Et4mPCYvd
         A88w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xdmqc+CcpH4sNCcsFyVuAYNlZBQ89AXiT/V5xP/Jljc=;
        b=PFV38ad7b/ibhGnBAcWilQ9RvO3Je0eHe3AydWpp054L0rvvSPk7buuVusYHhPlTcq
         +llvFYKBwj7m7d1+aYj4YA1rnCduEif+htG8J5eIqLFQvRLk6tz7iOt8R1pCmkgQfzr7
         0To5ibh4IwDY+un9htRmH8XYvX6n7jGgrvsn8Meze5saf1IMKbilJLT0bk9AdoFKRQg4
         73X0N5Miq4CU2jxWB4Was/ne7il3MTAMT/P0cU08XjQBMQw5X8cw7p3DLgqd9y0PeEK6
         650Kr9bITLU/bNXBh58M1+66Nw0PDMpjomWl+QhPJW/BthO3gz2CB/XpplstDNVtUfT/
         7Hkw==
X-Gm-Message-State: AOAM530fZECUcX9nvv/m1nK1lFtmYnVhEfWNB8NQQa5hPPkNEOPPW3sq
	7XweHIsU/E1gXLImuQP6GIAa4YTkrpjpIxgb/GZVDw==
X-Google-Smtp-Source: ABdhPJxlKE1B7j0we3oXv7MrUh3q0YhkqSFJDGiPrLUo8CP0qOjjR7bTgGcLgDYnlprHDmAZ3hlPrtvodeAd5h73GKY=
X-Received: by 2002:a05:6902:4ec:: with SMTP id w12mr61536523ybs.298.1638983357009;
 Wed, 08 Dec 2021 09:09:17 -0800 (PST)
MIME-Version: 1.0
References: <RqiQXYE4JslXB2HqXFXDRGKC2w8G87gnXkJcWmPZLU@lists.ettus.com>
In-Reply-To: <RqiQXYE4JslXB2HqXFXDRGKC2w8G87gnXkJcWmPZLU@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 8 Dec 2021 12:09:06 -0500
Message-ID: <CAB__hTSLhWVRr3usu6MuVB0FTDVj2rkJfYaTHFtSSjLkHdYqmA@mail.gmail.com>
To: enrico.petraglio@heig-vd.ch
Message-ID-Hash: T6BKKDEYULLRHC77ZW6NVERXSU53UZ2P
X-Message-ID-Hash: T6BKKDEYULLRHC77ZW6NVERXSU53UZ2P
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC OOT block integration problem
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T6BKKDEYULLRHC77ZW6NVERXSU53UZ2P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3706702438981270142=="

--===============3706702438981270142==
Content-Type: multipart/alternative; boundary="000000000000c9dfe705d2a58cd8"

--000000000000c9dfe705d2a58cd8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Glad it is working. But, I want to mention that if you fixed the issue that
is causing UHD to NOT locate your custom gain block controller, then it
would be possible to call issue_stream_cmd() from the rx_streamer as
usual.  I really mentioned calling from the DDC block controller only as a
"test case". In the end, you will probably want to figure out why the gain
block controller is not being found by UHD.


On Wed, Dec 8, 2021 at 3:43 AM <enrico.petraglio@heig-vd.ch> wrote:

> Thank you Rob,
>
> I=E2=80=99ve got the same suggestion on git hub and the fix works.
>
> (see https://github.com/EttusResearch/uhd/issues/538)
>
> Regards
>
> Enrico.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c9dfe705d2a58cd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Glad it is working. But, I want to mention that if you fix=
ed the issue that is causing UHD to NOT locate your custom gain block contr=
oller, then it would be possible to call issue_stream_cmd() from the rx_str=
eamer as usual.=C2=A0 I really mentioned calling from the DDC block control=
ler only as a &quot;test case&quot;. In the end, you will probably want to =
figure out why the gain block controller is not being found by UHD.<div><br=
></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Wed, Dec 8, 2021 at 3:43 AM &lt;<a href=3D"mailto:enrico.petragli=
o@heig-vd.ch">enrico.petraglio@heig-vd.ch</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><p>Thank you Rob, </p><p>I=E2=80=
=99ve got the same suggestion on git hub and the fix works. </p><p>(see <a =
href=3D"https://github.com/EttusResearch/uhd/issues/538" target=3D"_blank">=
https://github.com/EttusResearch/uhd/issues/538</a>)</p><p>Regards</p><p>En=
rico.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c9dfe705d2a58cd8--

--===============3706702438981270142==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3706702438981270142==--

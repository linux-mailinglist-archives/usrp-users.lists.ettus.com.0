Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 526E02E0DD4
	for <lists+usrp-users@lfdr.de>; Tue, 22 Dec 2020 18:26:09 +0100 (CET)
Received: from [::1] (port=56760 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1krlQF-0006N4-9t; Tue, 22 Dec 2020 12:26:07 -0500
Received: from mail-oo1-f45.google.com ([209.85.161.45]:43634)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1krlQB-00068v-LG
 for usrp-users@lists.ettus.com; Tue, 22 Dec 2020 12:26:03 -0500
Received: by mail-oo1-f45.google.com with SMTP id y14so3103615oom.10
 for <usrp-users@lists.ettus.com>; Tue, 22 Dec 2020 09:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gAqkeo9ly7ehtULvrZ0vxOnAg204w9ir2s2pOACBOtA=;
 b=XHY8PKfPVKtRCzzbxkI+/TSRK5JKLXk4ltu7qNEMnK/iBbrRWqLnuKF/iNG3goQC7T
 gV3sgwH7ARabfrH6c1I1ZYsw93gnl3ZNsZjCwuk+fvafkPyU9Wsjv3jWXjw0lwI/khnB
 s+ZxCHmwAdXh5XRMdV2XK0L6jSa9tEAeaEDTNmbyAPvtaIktxwksZzHCoA8WrKCR4bPs
 X5y7uVnlIACSj5KaGUpwbNT6JGiR8130hpp2dHl9bkoEMwK/d0USxA0lgG5GY9DlWeEU
 ASCEWiVKgaPYzYBaQ+vujBcSxj2v0thfvW8hMVxm0Ero7FqeQc2eAa56qH8tynyrBrif
 pJJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gAqkeo9ly7ehtULvrZ0vxOnAg204w9ir2s2pOACBOtA=;
 b=q6MbdffI34v2C1VXV/mPT7BDF8Wvr7As8gdr+ps+CvZt5u/zI6vDxzQmjrT1ULopwx
 htRXyd/TrtRb8QQCYMBhpZ55iUxgfpmYoomRfVkNUUCuTwHhHVFWQQGszULZXKih2qZI
 OSrToNLNtgN3TwWg7Tfyz1O3q14BBy6H5hwTHc2X+Rmp+NW3aC1iEjuoBaAGYZQynbMc
 lFxKTkLhMXPnZ4w1JK0a2lUfZ1Nxio/g4ETO1zgF7BT6aRVeMcB20Ad0wxMgbnWM6jec
 6bRAcGBmZNGmP0Alr5f97OkNCo5dr8c7lMtHlzDYaTXE667Houzgb7+LDWmKqbbGOlQA
 miZQ==
X-Gm-Message-State: AOAM530JC/MvWI4GgdYlKKMpr7EzBVAOKIargwyi4DBe4d5EyB1H1bSj
 xkZRx20qcEUPYwdm3AFPPgZAYLl/+UY7QhZ7PiP7nA==
X-Google-Smtp-Source: ABdhPJzIpD6thk/ykFbkN8USypPTQgOuDMnqCn9IjDZ4PlhBPchQ1lV8GI6f8HC2xjExM6Q7g59PM7giQgcZjzejPwU=
X-Received: by 2002:a4a:751a:: with SMTP id j26mr15656940ooc.68.1608657922763; 
 Tue, 22 Dec 2020 09:25:22 -0800 (PST)
MIME-Version: 1.0
References: <CABmbpx7A9oRM=F1NFGp0gnqnpVXV+iwMwJOBYyPtM3+N4e-2RQ@mail.gmail.com>
In-Reply-To: <CABmbpx7A9oRM=F1NFGp0gnqnpVXV+iwMwJOBYyPtM3+N4e-2RQ@mail.gmail.com>
Date: Tue, 22 Dec 2020 12:25:12 -0500
Message-ID: <CAB__hTQJyNwgiznOhsYxb33fmaO3WrCCB5-2G-9UgyDd2dLnww@mail.gmail.com>
To: Wouter Jan Ubbels <wjubbels@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] UHD4 rfnoc-devel build issue
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============6682610789003465912=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6682610789003465912==
Content-Type: multipart/alternative; boundary="0000000000000da3ea05b710dc88"

--0000000000000da3ea05b710dc88
Content-Type: text/plain; charset="UTF-8"

Hi Jan,
The rfnoc-devel branch is old and no longer updated.  I think you will want
to use master or UHD-4.0.
Rob

On Tue, Dec 22, 2020 at 12:18 PM Wouter Jan Ubbels via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi all,
>
> I am trying to build UHD4.0 from the rfnoc-devel branch on Ubuntu 20.04,
> but it complains that dependencies for the LibUHD Python API are not met.
> The master branch builds perfectly fine. Any pointers appreciated. Error
> message is as follows:
>
> CMake Error at cmake/Modules/UHDComponent.cmake:56 (MESSAGE):
>   Dependencies for required component LibUHD - Python API not met.
> Call Stack (most recent call first):
>   CMakeLists.txt:433 (LIBUHD_REGISTER_COMPONENT)
>
> Many thanks,
>
> Wouter PE4WJ
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000da3ea05b710dc88
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jan,<div>The rfnoc-devel branch is old and no longer up=
dated.=C2=A0 I think you will want to use master or UHD-4.0.</div><div>Rob<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, Dec 22, 2020 at 12:18 PM Wouter Jan Ubbels via USRP-users &lt;=
<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I am trying to build UH=
D4.0 from the rfnoc-devel branch on=20
Ubuntu 20.04, but it complains that dependencies for the LibUHD Python API =
are not met. The master branch builds perfectly fine. Any pointers apprecia=
ted. Error message is as follows:</div><div><br></div><div>CMake Error at c=
make/Modules/UHDComponent.cmake:56 (MESSAGE):<br>=C2=A0 Dependencies for re=
quired component LibUHD - Python API not met.<br>Call Stack (most recent ca=
ll first):<br>=C2=A0 CMakeLists.txt:433 (LIBUHD_REGISTER_COMPONENT)<br></di=
v><div><br></div><div>Many thanks,</div><div><br></div><div>Wouter PE4WJ<br=
></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000da3ea05b710dc88--


--===============6682610789003465912==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6682610789003465912==--


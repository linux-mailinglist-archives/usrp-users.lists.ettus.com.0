Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E758CA3F16
	for <lists+usrp-users@lfdr.de>; Fri, 30 Aug 2019 22:41:45 +0200 (CEST)
Received: from [::1] (port=43566 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i3niE-000325-C0; Fri, 30 Aug 2019 16:41:38 -0400
Received: from mail-qk1-f175.google.com ([209.85.222.175]:42831)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <support@ettus.com>) id 1i3niB-0002qY-28
 for usrp-users@lists.ettus.com; Fri, 30 Aug 2019 16:41:35 -0400
Received: by mail-qk1-f175.google.com with SMTP id f13so7289348qkm.9
 for <usrp-users@lists.ettus.com>; Fri, 30 Aug 2019 13:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:sender:from:date:message-id
 :subject:to:cc;
 bh=8alQj13yBp9xTuuGJGc5NF2Fj5xIGQODm/i/v63k7UY=;
 b=BJFlnjJw8xcMvyxRQr4ZMNjuEII77bfWZtD0n34j488bQZBpyWOgtVhalzEKAKrlMf
 yzBFD3CsdpKJSQiOxRdnLoWvpPW9wn2LVbdqdL0bpmC/40CBLqXzph6a0rgF7NY8y9/5
 xyZbUzS9T5HufWZhTdB2u0SNzRHXD1fR5IZXNfLcU5aN2thwfd/8eHZX21O8QSWp10wB
 3G4afwXJmfzfdMeIooYHreyJfB3WzgnxZxyBDWfqkmvmcHACFHFxfRAU79ZjiFdxa5f9
 5iRnvrFI7gfU1o6VVP11ygsOpHYit8UKxYRRy4TEjCGOUrZrXMgm6Tzentyzm5CRe4eU
 nqVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:sender:from
 :date:message-id:subject:to:cc;
 bh=8alQj13yBp9xTuuGJGc5NF2Fj5xIGQODm/i/v63k7UY=;
 b=cemQXmiUV7IraZQhKTkn1sx2Yg5p/2SSl4mfu7+ZvGtu6QQdtJid2R27NRBehAP08b
 T5QjwQDwWlrTm/aObnWNUd00K1NrBZiQXtqP98ciLc0FmmnO2fYf6M5bWWKutoq4tGro
 SMtRZ8TnKHRYSdcBqA7EhYpDG7LKFpiaiq3pyrbdxbfcJfPbN+GzLBUUi+ETKY7bvx90
 SLv9qnvtxSnp782TykN/Y1k9n6Mv51PpQr65yko1IiBy00PRdcK27S0J/WmXwYE1yGOW
 gPyxo2xP+EG14uaR9jjwYh5uUyS2VAUcl+3+1pFrVKv49wO5gOus6YiWQtwplD7RjxYD
 KfcA==
X-Gm-Message-State: APjAAAWNMen1Wjeb2uibVBBL2WtJxWy6/ZDP887NHJ8jWA5r6e8NHP84
 XaZK8kTsfoAUuNK+eWNujdph3qwVBAiW6lVw2QMQI2vs
X-Google-Smtp-Source: APXvYqwNzCQfIcoFOfUk9FMriuC1ogDiZAh62gYJrj9quFVgEh6nkv4CdqoKJCKCM05Z4M/JiUPiclCfoNgEzBdrqB0=
X-Received: by 2002:a37:bb06:: with SMTP id l6mr16656385qkf.1.1567197654303;
 Fri, 30 Aug 2019 13:40:54 -0700 (PDT)
MIME-Version: 1.0
References: <CA+QOOBtfJo_5K_oZUfF5Kcjps_wbSRRjN0-UifROY6Dx8RdS_Q@mail.gmail.com>
In-Reply-To: <CA+QOOBtfJo_5K_oZUfF5Kcjps_wbSRRjN0-UifROY6Dx8RdS_Q@mail.gmail.com>
X-Google-Sender-Delegation: nate.temple@ettus.com
Date: Fri, 30 Aug 2019 13:41:09 -0700
X-Google-Sender-Auth: 7yXa-Rl917lx3_iYCOUu1usWbTg
Message-ID: <CACSOXP1y1--+2F90LXav=WDKs5B2+ejg0xyqnduRctzso7D50w@mail.gmail.com>
To: Martin K <martin.klingensmith@gmail.com>
Subject: Re: [USRP-users] Building UHD installer
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Ettus Research Support via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ettus Research Support <support@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8401395445839891274=="
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

--===============8401395445839891274==
Content-Type: multipart/alternative; boundary="0000000000007a5fa505915ba3df"

--0000000000007a5fa505915ba3df
Content-Type: text/plain; charset="UTF-8"

Hi Martin,

Are you using the PythonAPI within your custom version of UHD?

You could disable it if you are not using the PythonAPI.
Regards,
Nate Temple


On Wed, Aug 28, 2019 at 1:17 PM Martin K via USRP-users <
usrp-users@lists.ettus.com> wrote:

> In Windows I am attempting to create an installer for a custom built UHD.
> UHD works as it should, however the PACKAGE target does not finish. I
> get the following error. This seems to be a common error when
> specifying an absolute path rather than a relative path. Is there a
> way around this?
>
> 85>------ Build started: Project: PACKAGE, Configuration: Release x64
> ------
> 85>CPack: Create package using NSIS
> 85>CPack: Install projects
> 85>CPack: - Install project: UHD
> 85>CPack: -   Install component: libraries
> 85>CPack: -   Install component: pythonapi
> 85>CMake Error at
> C:/martin/uhd_stack_build/uhd_build/python/cmake_install.cmake:42
> (message):
> 85>  ABSOLUTE path INSTALL DESTINATION forbidden (by caller): C:/Program
> 85>  Files/UHD/Lib/site-packages/uhd
> 85>Call Stack (most recent call first):
> 85>  C:/martin/uhd_stack_build/uhd_build/cmake_install.cmake:73 (include)
> 85>
> 85>
> 85>EXEC : CPack error : Error when generating package: UHD
>
> --
> Martin K.
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000007a5fa505915ba3df
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hi Martin,<br><br>Are you using the PythonAPI within your custo=
m version of UHD?<br><br>You could disable it if you are not using the Pyth=
onAPI.<br>Regards,<br>Nate Temple<br><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 28, 2019 at 1:17=
 PM Martin K via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">In Windows I am attempting to create an instal=
ler for a custom built UHD.<br>
UHD works as it should, however the PACKAGE target does not finish. I<br>
get the following error. This seems to be a common error when<br>
specifying an absolute path rather than a relative path. Is there a<br>
way around this?<br>
<br>
85&gt;------ Build started: Project: PACKAGE, Configuration: Release x64 --=
----<br>
85&gt;CPack: Create package using NSIS<br>
85&gt;CPack: Install projects<br>
85&gt;CPack: - Install project: UHD<br>
85&gt;CPack: -=C2=A0 =C2=A0Install component: libraries<br>
85&gt;CPack: -=C2=A0 =C2=A0Install component: pythonapi<br>
85&gt;CMake Error at<br>
C:/martin/uhd_stack_build/uhd_build/python/cmake_install.cmake:42<br>
(message):<br>
85&gt;=C2=A0 ABSOLUTE path INSTALL DESTINATION forbidden (by caller): C:/Pr=
ogram<br>
85&gt;=C2=A0 Files/UHD/Lib/site-packages/uhd<br>
85&gt;Call Stack (most recent call first):<br>
85&gt;=C2=A0 C:/martin/uhd_stack_build/uhd_build/cmake_install.cmake:73 (in=
clude)<br>
85&gt;<br>
85&gt;<br>
85&gt;EXEC : CPack error : Error when generating package: UHD<br>
<br>
-- <br>
Martin K.<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000007a5fa505915ba3df--


--===============8401395445839891274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8401395445839891274==--


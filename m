Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4316E281D16
	for <lists+usrp-users@lfdr.de>; Fri,  2 Oct 2020 22:47:25 +0200 (CEST)
Received: from [::1] (port=43554 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kORxZ-00058a-5X; Fri, 02 Oct 2020 16:47:21 -0400
Received: from mail-lf1-f48.google.com ([209.85.167.48]:42945)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter8@gmail.com>)
 id 1kORxV-00054k-Jn
 for usrp-users@lists.ettus.com; Fri, 02 Oct 2020 16:47:17 -0400
Received: by mail-lf1-f48.google.com with SMTP id b12so3435310lfp.9
 for <usrp-users@lists.ettus.com>; Fri, 02 Oct 2020 13:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ACPkYSzA6LfgafFw58/xBBOJ0mMK+AA2TnKbWN1E0lA=;
 b=YlEGiPMwYMjl4rc57ZjuGYWaX6WofGSP07GThpeWErrDD/1LNX/BHaESvzWCsuKFk4
 fxvEjemxPWl5aUmXSyeBntUVCIgoodzLdUZMn3WuKYb5+ebrI3lK4pWV5qSU9xh50wCl
 yJ+vvD7bJJbA+pUQf02FNSVeYAoix427WZ/mStfbrOXyVAjsIVZVApaULXxBCytqB+eb
 lcKmAtAg8ybK1ED2TUJaI0sIlhMSS6sCde0rk7aNY+BcT2EjpSzxA/xJ1nB3LkN0G4Rv
 jNQ4kwkmQ2dkn/iUveBQ7Aw8rWrRff1apLjmE/diEfvcRbckP4GlWtyTkiaF+ggh1eju
 2GBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ACPkYSzA6LfgafFw58/xBBOJ0mMK+AA2TnKbWN1E0lA=;
 b=YsbVx8LkYAP2jxvqK7FEexHDtjd6c8x+lbZzfRuUk2yIGcCCb27dr2i2Co8ByptHEI
 DL0oONwH87QTgwWgAynnc75nGdrjTgk4T5SBnKDm5M33l4YbIVaFq5iXDtbSE4fVKc4M
 FRJ4iRmsUnfzhnUhQhyySJ5jEdbh2ZI/jELP5pt/7QwxNFh8QeAaINtL5cmWvsTMSS0p
 9MgmQtu/JIiSPf41zCrQkYhiL2gF7XqNLYD/1eZAbTuTlg+aL/SeBB3VO5184JCza77C
 vX9dJ5msuTqNABPSLVlw9vXP7JqG9xnKTlpgl0PClnHJvrbXHWir02WoTyIUbvsjMjN6
 W7yw==
X-Gm-Message-State: AOAM532+yme0AohJmyANp2IUthejvpQAH70qLdtHQpfVKkQQzMO7kXES
 rBP5hUIvWJMr2p/PH1kC3HXaHkROYYvRYcm8HUk=
X-Google-Smtp-Source: ABdhPJw1Yex7HnKxpE6FeN2dVB8QVClEbfc4BI9EWnU/TwBFC0oYZs552o9/6Q3AnvMEW7QKLqmQDIpzs7kiE74VbOQ=
X-Received: by 2002:a05:6512:1142:: with SMTP id
 m2mr1326342lfg.22.1601671596079; 
 Fri, 02 Oct 2020 13:46:36 -0700 (PDT)
MIME-Version: 1.0
References: <CACSyVY2dm3ASsdK_b6k1v_CRk3G9J-wdh9_FLWHCZi+JGv=TAg@mail.gmail.com>
In-Reply-To: <CACSyVY2dm3ASsdK_b6k1v_CRk3G9J-wdh9_FLWHCZi+JGv=TAg@mail.gmail.com>
Date: Fri, 2 Oct 2020 15:46:24 -0500
Message-ID: <CADBWrHjmb7niNhg0Sr1TK6HFK65+4XzymvcB5hTca6n2Urc-7Q@mail.gmail.com>
To: Kelvin Lok <kelvin.lok266@gmail.com>
Cc: "usrp-users (usrp-users@lists.ettus.com)" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Loading B210 firmware takes forever (i.e. hang)
 after installing NI-USRP driver
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter8@gmail.com>
Content-Type: multipart/mixed; boundary="===============3870516069785726988=="
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

--===============3870516069785726988==
Content-Type: multipart/alternative; boundary="00000000000087fcc305b0b63a4d"

--00000000000087fcc305b0b63a4d
Content-Type: text/plain; charset="UTF-8"

Kelvin,

If I remember correctly, NI-USRP overwrites a handful of environment
variables in Windows to point to RFNoC image paths for NI-USRP. However, I
can't imagine why the B210 image would be any different between UHD and
NI-USRP. You might try changing these paths to point back at the images
from your installation of UHD.

Alternative solution would be to just uninstall NI-USRP and reinstall UHD
:)

-Sam

On Thu, Oct 1, 2020 at 8:18 PM Kelvin Lok via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I am running on the latest release of UHD (3.15.0.0) from github. Using
> Windows 10, installed with the UHD binary installer.
>
> Typically, running ./uhd_usrp_probe takes only a few moments for the
> firmware to be loaded onto the USRP. However, recently I have installed
> labview runtime and NI-USRP and after that, I am no longer able to use UHD
> to communicate to the USRP. Running uhd_usrp_probe or any of the uhd_xx_xx
> commands will result in an endless wait for 'Loading firmware image'.
>
> I suspect that installing NI-USRP has resulted in a clash with my UHD.
> Anyone have any suggestions?
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000087fcc305b0b63a4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Kelvin,<div><br></div><div>If I remember correctly, NI-USR=
P overwrites a handful of environment variables in Windows to point to RFNo=
C image paths for NI-USRP. However, I can&#39;t imagine why the B210 image =
would be any different between UHD and NI-USRP. You might try changing thes=
e paths to point back at the images from your installation of UHD.=C2=A0</d=
iv><div><br></div><div>Alternative solution would be to just uninstall NI-U=
SRP and reinstall UHD :)=C2=A0</div><div><br></div><div>-Sam</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, O=
ct 1, 2020 at 8:18 PM Kelvin Lok via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I am runn=
ing on the latest=C2=A0release of UHD (3.15.0.0) from github. Using Windows=
 10, installed with the UHD binary installer.=C2=A0<div><br></div><div>Typi=
cally, running ./uhd_usrp_probe takes only a few moments for the firmware t=
o be loaded onto the USRP. However, recently I have installed labview runti=
me and NI-USRP and after that, I am no longer able to use UHD to communicat=
e to the USRP. Running uhd_usrp_probe or any of the uhd_xx_xx commands will=
 result in an endless wait for &#39;Loading firmware image&#39;.<div><br></=
div><div>I suspect that installing NI-USRP has resulted in a clash with my =
UHD. Anyone have any suggestions?</div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000087fcc305b0b63a4d--


--===============3870516069785726988==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3870516069785726988==--


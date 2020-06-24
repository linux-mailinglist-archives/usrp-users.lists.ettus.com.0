Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FE620703D
	for <lists+usrp-users@lfdr.de>; Wed, 24 Jun 2020 11:40:46 +0200 (CEST)
Received: from [::1] (port=59942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jo1tb-0005M0-BR; Wed, 24 Jun 2020 05:40:43 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:38040)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <andreas.hagstrom@testteknik.se>)
 id 1jo1tW-00056F-Mo
 for usrp-users@lists.ettus.com; Wed, 24 Jun 2020 05:40:38 -0400
Received: by mail-qk1-f180.google.com with SMTP id e13so1226845qkg.5
 for <usrp-users@lists.ettus.com>; Wed, 24 Jun 2020 02:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=testteknik-se.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=SeTJ3A6NnD8AZ9jiRVq6wzxAb8jD2c1vPvHAcOzpwSc=;
 b=12LuVGA6oUI9+mQfiFV2ZSMtb7cAgNUmGNMVzqbl1xNpL94OCUi4S27Yc9YX8bwxff
 QHgE0RvMNy5Q7OMpBq8b9lN+qmQ6V70kwLzGvninEjA9YkMLIcOZ6Bou3vpNFQitI26v
 0gzR2V+herDdZVNFRxtXn1edAK571VtoTfsPTzd6IQoYEHSG37N5svdEi0c6toDh1wc6
 jVAR7jK8iqecBrhoJ5ZmkGtT6xa1QwgAWGKcaThalHoBnZN9pwMWeAARXsKwkiZRMeKF
 d/p8zP+7UvbrSUqRK4T5HxPx/1xxGJAmOHSTNbo47iAo2sjIfEdDg8WPKB/rEO2sXDyg
 8etA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=SeTJ3A6NnD8AZ9jiRVq6wzxAb8jD2c1vPvHAcOzpwSc=;
 b=H/GS5mV6WhTm2erIoNI+zkJ5tJCQTL1e41IkDUqDGwILeFPsPLJP1DuaaHgcr6VhpE
 NfZ9bEGPw89hWp1SSELqM9x/Xtc+YnTdax3W/NRwZIKYGlsqTrp08PMzKEsFSeg+2LHN
 Ld225GO2oCS4rTfcyaTGR3EpF6Ma78/Pw1zuahMc+KOMXboOcm4ulJs/mU86Pl9JNKRW
 gxwo2TfpZPas7zTBAxelB+IC0AQo7jxoMYtUzejAFSisrmPi1zjoBBFmXwwS7iTf9m6f
 9+LH8SX9K2tY+xTCAjDNRzPhJeQd/JQbU1uqjXecrDkMxm2e5z/55Ot/knYTAnh6mGaI
 GoZw==
X-Gm-Message-State: AOAM533KgY2rlTCDenW2Csmja1ki7+Mz1WBThxoj0KU6wZnC4SG4YPO0
 tUbYYIwwMN9AEqtm4M/FIldTbjEW0OqNwXhPloEiEnrz
X-Google-Smtp-Source: ABdhPJwLNAYumwNssYD8xjwe9YxBV2Nj6mIxRqTKSs85BAhY4bML1NeWqMo1u29DjspXPpe0ObHFp4Da5dJ+AnsfWjU=
X-Received: by 2002:a05:620a:81c:: with SMTP id
 s28mr8395340qks.133.1592991597819; 
 Wed, 24 Jun 2020 02:39:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAKo1dg8K+KaY8mJbr1Wxp=OKzhb3NE8yfubvewRF7=qcu6-_5w@mail.gmail.com>
 <0F07FBF3-3FB7-461A-A33A-F6C5A559D138@gmail.com>
 <CAKo1dg9oOM6ZTKBWv-=BK7zHmwotBhm0ry8CGZnby9zb-fhWyw@mail.gmail.com>
In-Reply-To: <CAKo1dg9oOM6ZTKBWv-=BK7zHmwotBhm0ry8CGZnby9zb-fhWyw@mail.gmail.com>
Date: Wed, 24 Jun 2020 11:39:45 +0200
Message-ID: <CAKo1dg_C4jd84__5xQctkOjwsu+od9+1O0ajmS1pdB8QxY+Zag@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Fwd:  Included headers in the installer:
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
From: =?utf-8?q?Andreas_Hagstr=C3=B6m_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Andreas_Hagstr=C3=B6m?= <andreas.hagstrom@testteknik.se>
Content-Type: multipart/mixed; boundary="===============0465996309844385798=="
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

--===============0465996309844385798==
Content-Type: multipart/alternative; boundary="000000000000518ef605a8d14248"

--000000000000518ef605a8d14248
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ---------
Fr=C3=A5n: Andreas Hagstr=C3=B6m <andreas.hagstrom@testteknik.se>
Date: ons 24 juni 2020 kl 09:36
Subject: Re: [USRP-users] Included headers in the installer:
To: Marcus D Leech <patchvonbraun@gmail.com>


Sorry, here is the complimentare information:
Windows 64 bit version and built on vs2017.

Den tis 23 juni 2020 kl 18:04 skrev Marcus D Leech <patchvonbraun@gmail.com
>:

> You have not said which installer you=E2=80=99ve used, for which OS. So i=
t=E2=80=99s hard
> to comment.
>
> Sent from my iPhone
>
> > On Jun 23, 2020, at 11:33 AM, Andreas Hagstr=C3=B6m via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Hello, I downloaded the installer for the UHD library and I wanted to
> use the bindings for the python API. But when I tried importing the packa=
ge
> and run the sample program the Python interpreter does not seem to find t=
he
> package. All information related to the python bindings seems to be relat=
ed
> to building from source. So my question is: is the python bindings enable=
d
> in the installer version? If not, is the C-bindings included?
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000518ef605a8d14248
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">---------- Forwarded message ---------<br>Fr=C3=A5n: <b cla=
ss=3D"gmail_sendername" dir=3D"auto">Andreas Hagstr=C3=B6m</b> <span dir=3D=
"auto">&lt;<a href=3D"mailto:andreas.hagstrom@testteknik.se">andreas.hagstr=
om@testteknik.se</a>&gt;</span><br>Date: ons 24 juni 2020 kl 09:36<br>Subje=
ct: Re: [USRP-users] Included headers in the installer:<br>To: Marcus D Lee=
ch &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</=
a>&gt;<br></div><br><br><div dir=3D"ltr"><div>Sorry, here is the compliment=
are information:<br></div><div>Windows 64 bit version and built on vs2017.<=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">Den tis 23 juni 2020 kl 18:04 skrev Marcus D Leech &lt;<a href=3D"mail=
to:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&g=
t;:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">You have not=
 said which installer you=E2=80=99ve used, for which OS. So it=E2=80=99s ha=
rd to comment. <br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Jun 23, 2020, at 11:33 AM, Andreas Hagstr=C3=B6m via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello, I downloaded the installer for the UHD library and I wanted to =
use the bindings for the python API. But when I tried importing the package=
 and run the sample program the Python interpreter does not seem to find th=
e package. All information related to the python bindings seems to be relat=
ed to building from source. So my question is: is the python bindings enabl=
ed in the installer version? If not, is the C-bindings included?<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></div>

--000000000000518ef605a8d14248--


--===============0465996309844385798==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0465996309844385798==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B452ED057
	for <lists+usrp-users@lfdr.de>; Thu,  7 Jan 2021 14:03:30 +0100 (CET)
Received: from [::1] (port=42138 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kxUwo-00073P-Ti; Thu, 07 Jan 2021 08:03:26 -0500
Received: from mail-ot1-f48.google.com ([209.85.210.48]:39368)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ashutoshsingh7589@gmail.com>)
 id 1kxUwl-0006zX-Qy
 for usrp-users@lists.ettus.com; Thu, 07 Jan 2021 08:03:23 -0500
Received: by mail-ot1-f48.google.com with SMTP id d8so6177027otq.6
 for <usrp-users@lists.ettus.com>; Thu, 07 Jan 2021 05:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yO2oh7i9kUtp4IiNmAGjar7m+IaF+chiY1BZHVYIbmM=;
 b=Ifq27VI7mSMK9XqRZe6xVO4UFVaeLj7mzzsh/2IhXNVQXdSJ9vyOpgPm7lc76Tw3Uz
 VYc2tkpWzTc1+fZmsCaYjElT7Eo42FFiiBU4u9DtOVSYO6EGHdYs+ypssB3fT+BQ2n0s
 zqzrJuRMsQUl6SrzBr7R/jtJv3aQQiFD86FXV1nPIuIaM1w3qETqhs4pAQzZr6btGJxl
 n9Lk0fPEMFNYLvvADVlHIVnBxXcQMzdld6CG/W++iTzfMQhfji2Mfv2H3bmuS/nXxZQq
 a9+hugYryOzg5jtUfVt7aNBtExawjZVTxZwwjhQ0HMgmTp754ezeYbPD49gqwC4C0Ta4
 HrNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yO2oh7i9kUtp4IiNmAGjar7m+IaF+chiY1BZHVYIbmM=;
 b=eNAEc3QErudHp95zwVVlx+0BovGrJtX2a7dz+yzqI1nSnzoNueuWH0lZSNQ8yKXdq/
 HmbLVFhSKde+T8x8e1nn1vGFzippc2ntOZGvQMSNETfeiILRwmMd1At1ClBB0HupPexL
 h8BshzW3zm8IE517ixuEMqdrUjrR3Cqmu4Ug7KglAcTW4XVBRqgKm+WO5TKmMEbRxnEF
 c+nDbhE9PYxOHaIS63hRocuTTr1mJvA0ZDR4oihHql6sBXXibdR6VTb/qlH+Sx+kT/F6
 3FFIlr+Mc8OLKo1+QfoHsXVyJDwWJvqgpy3T60TayHk+Gp6nntI5tOfKPpH7jSTulwlT
 qbcA==
X-Gm-Message-State: AOAM5331h9CBBPlEuW5bPBT01vkdjIr1ojFj5xo1FAcfzIuB3Ci8DD3o
 OuwhKs6QN62vON7xj5KzYhHC3c5ySWSiM9ENhnw=
X-Google-Smtp-Source: ABdhPJyrK7N6fPdSgdFFFcHGtSzEna3HPndGVyfXgO6ItOa3+IDEunw2/n4eb62oQ614P8i1FWNaXNW/sKEzsAEpwwo=
X-Received: by 2002:a05:6830:402c:: with SMTP id
 i12mr6453612ots.25.1610024562683; 
 Thu, 07 Jan 2021 05:02:42 -0800 (PST)
MIME-Version: 1.0
References: <CAMvz+5YESdxLKVL=XmZt6=5K3+Kq9pKkE91NAmkxbbk4thaksw@mail.gmail.com>
In-Reply-To: <CAMvz+5YESdxLKVL=XmZt6=5K3+Kq9pKkE91NAmkxbbk4thaksw@mail.gmail.com>
Date: Thu, 7 Jan 2021 14:02:31 +0100
Message-ID: <CAO38sJ624y=MZZSNLK236fWOVhi3J-AoUTjaT9aLzKQZcrURhA@mail.gmail.com>
To: Matt Lanoue <mattlanoue22@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] USRP B210 UHD library installation issue
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
From: Ashutosh Singh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ashutosh Singh <ashutoshsingh7589@gmail.com>
Content-Type: multipart/mixed; boundary="===============0671162030061387233=="
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

--===============0671162030061387233==
Content-Type: multipart/alternative; boundary="0000000000002373ed05b84f0e78"

--0000000000002373ed05b84f0e78
Content-Type: text/plain; charset="UTF-8"

Hi Matt,
Thank you for the mail .

If you see my other mail thread "connect OAI UE with OAI enb using DOCKER
EPC S1 interface" I have already tried these things,

Nothing worked out sadly!!

Even adding ppa is also not possible ..Some repo is broken I don't know ,
so I manually downloaded the packages for libuhd and compiled them. Please
check my mail thread. I am forwarding you . You will understand the exact
issue!!




On Wed, Jan 6, 2021 at 7:22 PM Matt Lanoue <mattlanoue22@gmail.com> wrote:

> Ashutosh,
>
> If you have already installed the UHD libraries for other OAI software
> applications, then you can run your build command without the -I flag.
> If your D2D build requires additional packages not currently installed
> on your system (which I doubt), then you may have to install them via
> your favorite package manager manually. Otherwise, you can modify the
> build script to try a different PPA such as ppa:ettusresearch/uhd
> (like Marcus suggested) or remove all UHD packages installed by the
> OAI script and build UHD from source in the same target destination.
> Be warned that the OAI scripts don't check if you have built UHD
> libraries from source, so if you installed them via a package manager
> at a future time, you might get version mismatches (Marcus helped me
> figure out this same problem on this list).
>
> If you are having troubles with the actual UHD library build, I
> recommend looking into your "cmake_targets/tools/build_helper" file to
> see what OAI actually does with " check_install_usrp_uhd_driver() " or
> "install_usrp_uhd_driver_from_source()". The "check" function actually
> performs the install and the "install from source" command doesn't
> appear to be called. I have made this complaint to the OAI distro and
> am working on pushing a better solution.
>
> Cheers,
> Matt
>

--0000000000002373ed05b84f0e78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><font color=3D"#0000ff">Hi Matt,</font><d=
iv><font color=3D"#0000ff">Thank you for the mail .</font></div><div><font =
color=3D"#0000ff"><br></font></div><div><font color=3D"#0000ff">If you see =
my other mail thread &quot;<span style=3D"font-family:&quot;Google Sans&quo=
t;,Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:22px;font-varian=
t-ligatures:no-contextual">connect OAI UE with OAI enb using DOCKER EPC S1 =
interface</span>&quot; I have already tried these things,</font></div><div>=
<font color=3D"#0000ff"><br></font></div><div><font color=3D"#0000ff">Nothi=
ng worked out sadly!!</font></div><div><font color=3D"#0000ff"><br></font><=
/div><div><font color=3D"#0000ff">Even adding ppa is also not possible ..So=
me repo is broken I don&#39;t=C2=A0know , so I manually downloaded=C2=A0the=
 packages for libuhd and compiled them. Please check my mail thread. I am f=
orwarding you . You will understand the exact issue!!</font></div><div><br>=
</div><div><br></div><div><br></div></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 6, 2021 at 7:22 PM Ma=
tt Lanoue &lt;<a href=3D"mailto:mattlanoue22@gmail.com" target=3D"_blank">m=
attlanoue22@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">Ashutosh,<br>
<br>
If you have already installed the UHD libraries for other OAI software<br>
applications, then you can run your build command without the -I flag.<br>
If your D2D build requires additional packages not currently installed<br>
on your system (which I doubt), then you may have to install them via<br>
your favorite package manager manually. Otherwise, you can modify the<br>
build script to try a different PPA such as ppa:ettusresearch/uhd<br>
(like Marcus suggested) or remove all UHD packages installed by the<br>
OAI script and build UHD from source in the same target destination.<br>
Be warned that the OAI scripts don&#39;t check if you have built UHD<br>
libraries from source, so if you installed them via a package manager<br>
at a future time, you might get version mismatches (Marcus helped me<br>
figure out this same problem on this list).<br>
<br>
If you are having troubles with the actual UHD library build, I<br>
recommend looking into your &quot;cmake_targets/tools/build_helper&quot; fi=
le to<br>
see what OAI actually does with &quot; check_install_usrp_uhd_driver() &quo=
t; or<br>
&quot;install_usrp_uhd_driver_from_source()&quot;. The &quot;check&quot; fu=
nction actually<br>
performs the install and the &quot;install from source&quot; command doesn&=
#39;t<br>
appear to be called. I have made this complaint to the OAI distro and<br>
am working on pushing a better solution.<br>
<br>
Cheers,<br>
Matt<br>
</blockquote></div>

--0000000000002373ed05b84f0e78--


--===============0671162030061387233==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0671162030061387233==--


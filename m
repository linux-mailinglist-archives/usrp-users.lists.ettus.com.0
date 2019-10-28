Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B48E6E5E
	for <lists+usrp-users@lfdr.de>; Mon, 28 Oct 2019 09:38:52 +0100 (CET)
Received: from [::1] (port=35504 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iP0Y4-0008D7-EX; Mon, 28 Oct 2019 04:38:48 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:42449)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <wa2el.ali@gmail.com>) id 1iP0Y0-00089b-Rs
 for USRP-users@lists.ettus.com; Mon, 28 Oct 2019 04:38:44 -0400
Received: by mail-qt1-f174.google.com with SMTP id z17so6808065qts.9
 for <USRP-users@lists.ettus.com>; Mon, 28 Oct 2019 01:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=AC22460kOe9LIsKti+Kjc02BKjPrhZSsDrdk9HDnz28=;
 b=H6ZdgAKd9E7DMNur513VsU17opvDgkrdUPs5LNhwunp79uXERodTBIU5/PCMaSZpak
 nJjxJO2L1JPQL9t1qJcUxlUkLT3iKD0kNs0BbkRGQg3TpUu3Dxx2QHKoBUSVozLIjoqs
 qWAYEeMVsN4T2OyZP8C2kOMGeHPQtaLYoi1NMhZmL2gAnR38fxP2e+R/1uqiBe9tWOjV
 vBhuIzkNAel+iPEIt1KXXI8cvtelI4QCVQt5/g2gyxdQiRX3ANP3XAiOpB9/OknT8wr1
 Zf2cU7UClg6P0XwAJbPxGVPGYNa12rf1/ago6Zh/17Q0Q8um454+moZHt1XfGAGLbk1D
 yjgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=AC22460kOe9LIsKti+Kjc02BKjPrhZSsDrdk9HDnz28=;
 b=EPo5JewlF7ISVNKxsbjXcszuMVKQPMBJq9+aprgmVDUq50wH58/p8bRSJ9xP7IZzFP
 bB+sJMqI3iUSzFV3QBuVuQ/JKeEnk4NIKJaXZ5HKgfrrlVhrg56VWkMntIjbphBCuF7Q
 kMkB3dSwTNfx5Ev1kwYX5IEuuCdU6oNKu9P+hx/GU8NpqFbgnPws5SnKYBzLQLO+s+Bs
 PJbzCKHzGHM2LzID4TC/Jun/itX+lVx0cXHfC219Mt/Pf7/Oh3cJRB395ZHzdwmrBVIb
 moUT8IBaUf5ui1gvukr7BYhKf4mZG64FTCujkldndkeQYZmhfukWrfBySUBgTBWr/2dj
 MwqQ==
X-Gm-Message-State: APjAAAWop4+xc8WqQaGDaslctO+fVmvOUrs3SgS9Y+BhLrkk+py4etCe
 vlzMqeXem/Og73gRAS4JlGYTkBlJKqYLbRVebEE=
X-Google-Smtp-Source: APXvYqyocauvyAoel7EJLv0pXhBkzOgx8H3j65is0664+7zD1qlWlvzwTxGmL+XnxAOBnU1sZ6Fi9UfcWXaF8A1p1M8=
X-Received: by 2002:ac8:4781:: with SMTP id k1mr10502929qtq.319.1572251884044; 
 Mon, 28 Oct 2019 01:38:04 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 28 Oct 2019 10:37:53 +0200
Message-ID: <CAOCyOuMgOBYobBLsP0GWC1zZm+5bMqWVxdbxxQ0LQQhCALPNiA@mail.gmail.com>
To: Philip Balister <philip@balister.org>,
 Marcus D Leech <patchvonbraun@gmail.com>, USRP-users@lists.ettus.com
Subject: [USRP-users] cannot gr-uhd in poky
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
From: Wael Ali via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Wael Ali <wa2el.ali@gmail.com>
Content-Type: multipart/mixed; boundary="===============5203150079184666025=="
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

--===============5203150079184666025==
Content-Type: multipart/alternative; boundary="0000000000000bc6b60595f46bc3"

--0000000000000bc6b60595f46bc3
Content-Type: text/plain; charset="UTF-8"

Dear all,

I'm building a new poky yocto image with gnuradio and uhd pre-installed for
a wandboard, and I'm using meta-sdr (sumo) layer, and I'm bitbaking a
gnuradio-dev-image.
And the problem is,
1- when I used the default recipes in meta-sdr sumo branch, uhd package
gives a compilation error.
2- then I changed to uhd 3.13 but I kept all recipes in sumo branch as the
same, after doing this, bitbake gives no errors, but after finishing, I
didn't find any uhd installed.
3- I've tried many things for example,
         - I add "uhd" to PACKAGECONFIG in gnuradio core recipe.
         - I've created a new image recipe (gnuradio-custom-image.bb) where
I manually add uhd and uhd-examples in "CORE_IMAGE_EXTRA_INSTALL".
         - I changed all meta-sdr to "master" branch and I faced a
integration problem with other layers as they are all "sumo" branch.
4- in all my trails I always get a gnuradio package with gr-uhd missing.

I hope I was missing something, and it's easy to solve.
please I need help with this,
thanks in advance

--0000000000000bc6b60595f46bc3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear all,=C2=A0<div><br></div><div>I&#39;m building=C2=A0a=
 new poky yocto image with gnuradio and uhd pre-installed for a wandboard, =
and I&#39;m using meta-sdr (sumo) layer, and I&#39;m bitbaking a gnuradio-d=
ev-image.</div><div>And the problem is,</div><div>1- when I used the defaul=
t recipes in meta-sdr sumo branch, uhd package gives a compilation=C2=A0err=
or.</div><div>2- then I changed to uhd 3.13 but I kept all recipes in sumo =
branch as the same, after doing this, bitbake gives no errors, but after fi=
nishing, I didn&#39;t find any uhd installed.</div><div>3- I&#39;ve tried m=
any things for example,</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- I add=
 &quot;uhd&quot; to=C2=A0PACKAGECONFIG in gnuradio core recipe.</div><div>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- I&#39;ve created a new image recipe (<a=
 href=3D"http://gnuradio-custom-image.bb">gnuradio-custom-image.bb</a>) whe=
re I manually add uhd and uhd-examples in &quot;CORE_IMAGE_EXTRA_INSTALL&qu=
ot;.</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0- I changed all meta-sdr t=
o &quot;master&quot; branch and I faced a integration problem with other la=
yers as they are all &quot;sumo&quot; branch.</div><div>4- in all my trails=
 I always get a gnuradio package with gr-uhd missing.</div><div><br></div><=
div>I hope I was missing something, and it&#39;s easy to solve.</div><div>p=
lease I need help with this,</div><div>thanks in advance</div></div>

--0000000000000bc6b60595f46bc3--


--===============5203150079184666025==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5203150079184666025==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 28AA7D483D
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2019 21:11:56 +0200 (CEST)
Received: from [::1] (port=53982 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iJ0KQ-0001n8-UH; Fri, 11 Oct 2019 15:11:54 -0400
Received: from mail-oi1-f180.google.com ([209.85.167.180]:39932)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <michael.dickens@ettus.com>)
 id 1iJ0KN-0001XJ-6X
 for usrp-users@lists.ettus.com; Fri, 11 Oct 2019 15:11:51 -0400
Received: by mail-oi1-f180.google.com with SMTP id w144so8915550oia.6
 for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2019 12:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XMxZsqkMscXqQm9/3ay16yM/uBcGchZyQFwMrtCPs1A=;
 b=m5OPkmbCGB3cCs2ju9ruE734rpC95fqeXLhgjYxmk6ECDdI5Hq7HRcD+zJDY6rZ//e
 JSww9DmNR2HHi6tXZUYfG2sQf0byg4HrVXeQpsQGcoPbP46hDRhibGMcjl8i9P4VuACM
 xou95L+Pq/D+9vOtHH8Ld1u03LmlLSEMfHmiUsDLXim+36/iH86+qbxFgtPreW/E8Vge
 QgP9rdX5IW9mcJXChdflZ8FxzwKmcGZ96Lh/JKMNbsJauMmdJJh5XfYQsZxyDkDSM0wV
 WO7Q6UqdaLXSS0iVOn9Y9h/9g/WdIJHgF4DYPQCMDdQkuxnqR5CsSpjViOp/6FuAceNH
 DAhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XMxZsqkMscXqQm9/3ay16yM/uBcGchZyQFwMrtCPs1A=;
 b=laAXAkKDbod25L3aWkxAUIaWKz7gcgONm5O6WB+yH6leX7Sy8xc6xlQFJM+kcXBUz8
 9VyEmFZQj7IMv2FK9HbKJH5XUzX4Ui6rorlmNq/R5mHqge1Rbz1JQqr/FbrDHO+qAFoF
 mV5ZakbP7NcfkmAErMl2ZVKSmVdkySfzgLrFjWnYwSn3y3MSTEwqK42BWPTR1+6STskN
 4Tho1lTgJNIAe1Vx7L8jsmJmylrmpvXPJwp8VaF++1fshBpb7AYn3bjGMUe/y6fHenTm
 LdMm1Q1MjGUu2A95Y9AUAzEyG1oefWGahvMYrFJtDphI0OQBTua/5DA50TwF/AM1uRks
 US9g==
X-Gm-Message-State: APjAAAWGV47sr838ubRapq6oxjy6N8r356K2mQV4UlVyJkE5h4f8MNzS
 B0Uaajp7tVGJ4Nqpr/+9H7IOe1+9UQaFnO1N0QH8bvdE
X-Google-Smtp-Source: APXvYqxiJKzPgcRD7J0fNTmy6ZdnizlLdZguIPNfAqxt47ezsEVU8rzHeBodlQQpwHl4PEnNAXG/jZzxsQWFGYu6g6g=
X-Received: by 2002:a05:6808:689:: with SMTP id
 k9mr14095411oig.117.1570821070347; 
 Fri, 11 Oct 2019 12:11:10 -0700 (PDT)
MIME-Version: 1.0
References: <CANQ3h3_fwR=baRxHo+Aicms8C3CFnWzR51qSS99xo2u--OY2vg@mail.gmail.com>
 <CAGNhwTNRQwC2-gVFQFFyfk0ubGCfoL2a1kShguyMny1Y_9Xw_g@mail.gmail.com>
 <CANQ3h39_-YDpCHEgCcR=r3z=iK7QOmJPFYnY8DATs5++zh+uug@mail.gmail.com>
In-Reply-To: <CANQ3h39_-YDpCHEgCcR=r3z=iK7QOmJPFYnY8DATs5++zh+uug@mail.gmail.com>
Date: Fri, 11 Oct 2019 15:10:59 -0400
Message-ID: <CAGNhwTPELUny7ZaVY18KzPvmD3enezmhMLvypUxUZ5qD3zw+cg@mail.gmail.com>
To: Saeid Hashemi <saeidh@gmail.com>
Subject: Re: [USRP-users] uhd_fft failure
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6394139523320578874=="
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

--===============6394139523320578874==
Content-Type: multipart/alternative; boundary="000000000000e771d10594a747eb"

--000000000000e771d10594a747eb
Content-Type: text/plain; charset="UTF-8"

Hi Saeid - Thanks for the followup. I totally agree that if you just "sudo
apt install gnuradio", compatible versions should be installed. Are you
using Ubuntu 16.04.6 LTS (Xenial Xerus)? If you choose to install from
source, you can follow instructions such as the GR recommended way here <
https://wiki.gnuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29
>. I have an Ubuntu 18.04 install that went very smoothly using this guide,
but maybe the guide is outdated for older Ubuntu; or, our packages need to
be updated for that OS version ... Cheers! - MLD

On Fri, Oct 11, 2019 at 2:24 PM Saeid Hashemi <saeidh@gmail.com> wrote:

> I will follow your advice, but it's worth mentioning I simply did apt-get
> gnuradio and should therefore have a compatible version of uhd installed
> automatically as a dependency. I did not install uhd separately.
>
-- 
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/

--000000000000e771d10594a747eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi=C2=A0Saeid - Thanks for the followup. =
I totally agree that if you just &quot;sudo apt install gnuradio&quot;, com=
patible versions should be installed. Are you using Ubuntu 16.04.6 LTS (Xen=
ial Xerus)? If you choose to install from source, you can follow instructio=
ns such as the GR recommended way here &lt;=C2=A0<a href=3D"https://wiki.gn=
uradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29">https://wiki.g=
nuradio.org/index.php/UbuntuInstall#Xenial_Xerus_.2816.04.29</a> &gt;. I ha=
ve an Ubuntu=C2=A018.04 install that went very=C2=A0smoothly using this gui=
de, but maybe the guide is outdated for older Ubuntu; or, our packages need=
 to be updated for that OS version ... Cheers! - MLD</div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 11, 2019 at=
 2:24 PM Saeid Hashemi &lt;<a href=3D"mailto:saeidh@gmail.com">saeidh@gmail=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">I will follow your advice, but it&#39;s worth mentioni=
ng I simply did apt-get gnuradio and should therefore have a compatible ver=
sion of uhd installed automatically as a dependency. I did not install uhd =
separately.</div></blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_=
signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Michael Dickens<br>Ettus =
Research Technical Support<br>Email: <a href=3D"mailto:support@ettus.com" t=
arget=3D"_blank">support@ettus.com</a><br>Web: <a href=3D"https://ettus.com=
/" target=3D"_blank">https://ettus.com/</a></div></div></div></div></div>

--000000000000e771d10594a747eb--


--===============6394139523320578874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6394139523320578874==--


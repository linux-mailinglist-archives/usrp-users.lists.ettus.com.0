Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E912A80C7
	for <lists+usrp-users@lfdr.de>; Thu,  5 Nov 2020 15:23:40 +0100 (CET)
Received: from [::1] (port=43868 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kagAq-0003sB-OE; Thu, 05 Nov 2020 09:23:36 -0500
Received: from mail-ed1-f50.google.com ([209.85.208.50]:39854)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <michael.dickens@ettus.com>)
 id 1kagAn-0003m5-Hb
 for usrp-users@lists.ettus.com; Thu, 05 Nov 2020 09:23:33 -0500
Received: by mail-ed1-f50.google.com with SMTP id e18so1728319edy.6
 for <usrp-users@lists.ettus.com>; Thu, 05 Nov 2020 06:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7kBd5M7ATW/mSxQZLDS22IueK+Wt5AAd1PerSSwCRKE=;
 b=CuKWvLtiGjjyjIUU0x2p+M79RdLA7/oD96UhGAKuEzq2W2C/iXC/UyMTyFFlvonZIQ
 6BsZYRxSLu8Sa+Su3x/qOXZ4e+qVw5jT5IkWykoxB3w4wl4qmZDFoK0v+en/a6X9TRPF
 BCOWEQXEYUxlp49V3x7qhdtMh4sk1imiFqwWwsxg2XhNOV+rcnoqP3L5LT6/ZfXdVtzV
 R0kS4KaSkdzSNzz03/3ji7k7fdPH7t2syw6jCjHS19kBKFTAp5Uap1MNrwQO6+pn/Sdm
 S1rniMPiwj4fvTYnSeHjlNa10I2d+9PiROQhf+rHxiKEocATWGMGy4IaTykXyuJDVyym
 vdhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7kBd5M7ATW/mSxQZLDS22IueK+Wt5AAd1PerSSwCRKE=;
 b=IhIlT/tzlOhRWgF1zhYP7MIW094iwy9oi6jcckvQO4XlAuv3Jv9K8OBXcLzoB7VlzI
 3OGU+mlSg3JMG+DF1aT2Eoi2hXcGceoUIaHr0Y+wow9sIlUT5xpAJG+TdOttZOVTXIPD
 NdHbd4kWGsqsnETGqGSaxwzJp/HL8Ft8hxXiOJpOolQielM36csX7ofTn/2rpg3MRRP5
 xjQUBnvY7KWxIyU0BwK5GcxBEC/ViOHNMXrTduLm10f2kZJqtcjOobQv3ST9GqEwoRcl
 FOoK7Nk0j8Flwa+VvzltrP8acjLkfilVzTOfVbqWDNqrbWIxTsBqaw9jrmd0Q0Cy6oTZ
 ww0w==
X-Gm-Message-State: AOAM533T/BEPndwwzE16qeHZqALQJh15A0SGX2whmcILsBw2g1XzN8LD
 D7YtjdVklUPpx+oNgupdGhGyRIe08llylktixIrBFopv
X-Google-Smtp-Source: ABdhPJxpDop9UKfINMnYtIny6uNW4b+a1Hr3OHicwT7cyUkv2nb2fcEiBIVYOiqlRm6/cFOZDZiYsN9xqOSmgacK/Xs=
X-Received: by 2002:a50:ec10:: with SMTP id g16mr2463449edr.63.1604586172558; 
 Thu, 05 Nov 2020 06:22:52 -0800 (PST)
MIME-Version: 1.0
References: <CAKx8PBi=-d5=yfyPf_=AVJYrvQq1-eshS5EW=jLzogS9uO6nRw@mail.gmail.com>
In-Reply-To: <CAKx8PBi=-d5=yfyPf_=AVJYrvQq1-eshS5EW=jLzogS9uO6nRw@mail.gmail.com>
Date: Thu, 5 Nov 2020 09:22:41 -0500
Message-ID: <CAGNhwTMz2w-kD=a4m9EeLHqsXP9cKgXhok+jsW1Tu=einSvgyQ@mail.gmail.com>
To: Ben Magistro <koncept1@gmail.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] meta-ettus-v4.0.0.0 segfault
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
From: Michael Dickens via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Michael Dickens <michael.dickens@ettus.com>
Content-Type: multipart/mixed; boundary="===============2250394771482883738=="
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

--===============2250394771482883738==
Content-Type: multipart/alternative; boundary="000000000000d3ded705b35cd4ff"

--000000000000d3ded705b35cd4ff
Content-Type: text/plain; charset="UTF-8"

Hi Ben - This issue has been reported to R&D internally. If you wish to
create a public-facing UHD issue on our Github tracker please go ahead & do
so, and tag me on it so that we can keep track of it internally. - MLD

On Wed, Nov 4, 2020 at 11:25 PM Ben Magistro via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Is anyone else using meta-ettus-v4.0.0.0 yet?  if so, have you had any
> issues with libfftw?
>
> Using the image on an E310, adding a single OOT module (gr-ais) and trying
> to run an app distributed with it, the app segfaults.  To further
> troubleshoot, I added gdb and it comes back with the following.  I have a
> separate development host that has gnuradio 3.8 setup using pybombs and do
> not experience this issue there.
>
> Thread 1 "python3" received signal SIGSEGV, Segmentation fault.
> 0xb6947836 in ?? () from /usr/lib/libfftw3f.so.3
>
> To compile, I've needed to override PYTHON_EXECUTABLE as it points to a
> non-existent path in /home/oe-builder.... in
> /usr/lib/cmake/gnuradio/GnuradioConfig.cmake.  To run I also needed to
> define LD_EXPORT_PATH pointing to /usr/local/lib/.
>
> Thanks in advance.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d3ded705b35cd4ff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Ben - This issue has been reported to =
R&amp;D internally. If you wish to create a public-facing UHD issue on our =
Github tracker please go ahead &amp; do so, and tag me on it so that we can=
 keep track of it internally. - MLD<br><br></div><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 4, 2020 at 11:25 PM Ben =
Magistro via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">u=
srp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>Is anyone else using meta-et=
tus-v4.0.0.0 yet?=C2=A0 if so, have you had any issues with libfftw?<br></d=
iv><div><br></div><div>Using the image on an E310, adding a single OOT modu=
le (gr-ais) and trying to run an app distributed with it, the app segfaults=
.=C2=A0 To further troubleshoot, I added gdb and it comes back with the fol=
lowing.=C2=A0 I have a separate development host that has gnuradio 3.8 setu=
p using pybombs and do not experience this issue there.<br></div><div><br><=
/div><div>Thread 1 &quot;python3&quot; received signal SIGSEGV, Segmentatio=
n fault.<br>0xb6947836 in ?? () from /usr/lib/libfftw3f.so.3</div><div><br>=
</div><div>To compile, I&#39;ve needed to override PYTHON_EXECUTABLE as it =
points to a non-existent path in /home/oe-builder.... in /usr/lib/cmake/gnu=
radio/GnuradioConfig.cmake.=C2=A0 To run I also needed to define LD_EXPORT_=
PATH pointing to /usr/local/lib/.</div><div><br></div><div>Thanks in advanc=
e.<br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000d3ded705b35cd4ff--


--===============2250394771482883738==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2250394771482883738==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D85D2BAF2F
	for <lists+usrp-users@lfdr.de>; Fri, 20 Nov 2020 16:45:35 +0100 (CET)
Received: from [::1] (port=48260 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kg8bO-0002OI-78; Fri, 20 Nov 2020 10:45:34 -0500
Received: from mail-vs1-f48.google.com ([209.85.217.48]:44285)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <koncept1@gmail.com>) id 1kg8bK-000220-9v
 for usrp-users@lists.ettus.com; Fri, 20 Nov 2020 10:45:30 -0500
Received: by mail-vs1-f48.google.com with SMTP id u7so5198432vsq.11
 for <usrp-users@lists.ettus.com>; Fri, 20 Nov 2020 07:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OG79K88A+qddbu8hhr0cBk0cXtITHZ0qjUkso5k2kDY=;
 b=TRlB/Ss//GGyv4YAi/KX580RvKN88ieDQ3zJdfK2/kmKGnnKOTgjUJhV5sLDqcMq3F
 fudT13/d7RT7D51YTPVT9qkXmAlRZP3tH+5VaGwidqEnu9kt4PLysupWQFZoUe8YodpZ
 62UjI8ANrpXi/TQY5NJ4BpkKRkxyVDtCXC76ahituf2gaL9nzUvPOH9AiAljHcEB/JXz
 yDGfYRFEfzsJC9qNfp0zPt0GjzdAYCvKx9jyiX7vZcFllu/LTvN0KpVh1JbOvjDJ4B7/
 Om8kuflF1rvbUTx+vX//AzcYjsbLTpXnugPBKanodO1bWna0AAB7wSqBJxFtiepC3djK
 NlSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OG79K88A+qddbu8hhr0cBk0cXtITHZ0qjUkso5k2kDY=;
 b=A0rny9bT40hNyRZ1duq31WjoJS4g2kqiizMJdFaOhq57CDebSPUtrRp9ZkL/Wk+J4j
 o+PYFMIWikuNUsbwxhs4RqFI8Kgqxr5iT7jlWZREEO3c/CnMLiJlainaOVPmLejqNc0c
 /KhEK0Q96EdysZtHRXPYEw0qI22RXJ7aQwMUOEIAdpY4CjuRB5zUTHdBVZ7VGv8lIEWd
 y1rMv0tJG0JDRfWNJOUghvlnHvz3eDTrVySb5RiCuzXwO0CIVjcnu0WxGg3WTeYTbrp8
 ldMPQGISXAgZ6zWqyPUm8HNTq7QdEfs075i0bkIm2PSeFDufCYeHKNPN5OP42LQH+NKF
 7MZg==
X-Gm-Message-State: AOAM5332+GmE6q6ad7ej9SLwltjVpEV53jrTbNlbgFdd7AkyfWUSOwP6
 B8cJ3Q+d5EYl0+zz5UM7xIaRj7JPqHuKMF2Ctd6CjK/9F7x0FA==
X-Google-Smtp-Source: ABdhPJxN3tJbWyVGGo0poP1kldwkUXhroOUHaT5QMmEu/n+D1oAJuUuVx7HSVENhnzRUi/SHiEorCjw/JoK6yqcSNM8=
X-Received: by 2002:a67:e2c1:: with SMTP id i1mr13896050vsm.2.1605887089450;
 Fri, 20 Nov 2020 07:44:49 -0800 (PST)
MIME-Version: 1.0
References: <CAKx8PBiYjS+iH+ZnPKKm2yhGHe3qWmVXZW=aXzgLRqVHZSwg_w@mail.gmail.com>
 <258c1b45-3f6c-b278-a5f6-47f08e4e3d8c@balister.org>
In-Reply-To: <258c1b45-3f6c-b278-a5f6-47f08e4e3d8c@balister.org>
Date: Fri, 20 Nov 2020 10:44:38 -0500
Message-ID: <CAKx8PBhdgm0VYZQfHDUTOJZUbZfR8CWSiKORw1DV0j2BLs+rRQ@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: USRP list <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Building Debug FS Image
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
From: Ben Magistro via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ben Magistro <koncept1@gmail.com>
Content-Type: multipart/mixed; boundary="===============8717483565844582265=="
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

--===============8717483565844582265==
Content-Type: multipart/alternative; boundary="000000000000842a5105b48bb956"

--000000000000842a5105b48bb956
Content-Type: text/plain; charset="UTF-8"

I'm open to that idea but am not familiar with openembedded/yocto/mender or
what that process would look like (and the little bit of googling hasn't
shed enough light yet) so I fall back to the tools that I have found and
that is the ettus docker container with oe-build (
https://github.com/EttusResearch/ettus-docker/tree/master/oe-build) and the
instructions there.  As far as I know I only need the sdimg, but this goes
back to not being familiar with the build process so I could be off base.
Looking at the `setup_build_env.sh` script, mender seems to be tied in both
as a layer and what the image may inherit from.  I don't know if it is as
simple as removing the references to mender in that file and calling build
or if that will break the resulting image (technically already broken since
it segfaults for me -- libfftw see
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-November/063062.html)
but I'd like to know I'm not introducing new problems at the same time I am
trying to resolve my first problem.

Ben

On Thu, Nov 19, 2020 at 5:22 PM Philip Balister <philip@balister.org> wrote:

> Build without mender?
>
> Philip
>
> On 11/19/20 4:51 PM, Ben Magistro via USRP-users wrote:
> > I've been trying to rebuild meta-ettus (in this case -v4.0.0.0) with
> debug
> > enabled but am hitting an issue with image size being larger than an 8GB
> sd
> > card and can't seem to get past that.  It says I should increase
> > `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is larger but
> increasing
> > this in `local.conf` this seems to have no effect.  I am using the ettus
> > docker image for oe-builder with the command
> > `./meta-ettus/contrib/build_imgs_package.sh e310_sg3 v4.0.0.0`.  For the
> > debug portion I've added a few lines to `build/conf/local.conf` to add
> the
> > packages.  Anyone know how to increase the total storage size so that it
> > can build the image?
> >
> > Thanks in advance.
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >
>

--000000000000842a5105b48bb956
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m open to that idea but am not familiar with openemb=
edded/yocto/mender or what that process would look like (and the little bit=
 of googling hasn&#39;t shed enough light yet) so I fall back to the tools =
that I have found and that is the ettus docker container with oe-build (<a =
href=3D"https://github.com/EttusResearch/ettus-docker/tree/master/oe-build"=
>https://github.com/EttusResearch/ettus-docker/tree/master/oe-build</a>) an=
d the instructions there.=C2=A0 As far as I know I only need the sdimg, but=
 this goes back to not being familiar with the build process so I could be =
off base.=C2=A0 Looking at the `setup_build_env.sh` script, mender seems to=
 be tied in both as a layer and what the image may inherit from.=C2=A0 I do=
n&#39;t know if it is as simple as removing the references to mender in tha=
t file and calling build or if that will break the resulting image (technic=
ally already broken since it segfaults for me -- libfftw see <a href=3D"htt=
p://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-November/0630=
62.html">http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2020-N=
ovember/063062.html</a>) but I&#39;d like to know I&#39;m not introducing n=
ew problems at the same time I am trying to resolve my first problem.<div><=
br></div><div>Ben</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Thu, Nov 19, 2020 at 5:22 PM Philip Balister &lt;=
<a href=3D"mailto:philip@balister.org">philip@balister.org</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Build without men=
der?<br>
<br>
Philip<br>
<br>
On 11/19/20 4:51 PM, Ben Magistro via USRP-users wrote:<br>
&gt; I&#39;ve been trying to rebuild meta-ettus (in this case -v4.0.0.0) wi=
th debug<br>
&gt; enabled but am hitting an issue with image size being larger than an 8=
GB sd<br>
&gt; card and can&#39;t seem to get past that.=C2=A0 It says I should incre=
ase<br>
&gt; `MENDER_STORAGE_TOTAL_SIZE_MB` if the actual size is larger but increa=
sing<br>
&gt; this in `local.conf` this seems to have no effect.=C2=A0 I am using th=
e ettus<br>
&gt; docker image for oe-builder with the command<br>
&gt; `./meta-ettus/contrib/build_imgs_package.sh e310_sg3 v4.0.0.0`.=C2=A0 =
For the<br>
&gt; debug portion I&#39;ve added a few lines to `build/conf/local.conf` to=
 add the<br>
&gt; packages.=C2=A0 Anyone know how to increase the total storage size so =
that it<br>
&gt; can build the image?<br>
&gt; <br>
&gt; Thanks in advance.<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
&gt; <br>
</blockquote></div>

--000000000000842a5105b48bb956--


--===============8717483565844582265==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8717483565844582265==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C374C318D91
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 15:45:23 +0100 (CET)
Received: from [::1] (port=56722 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lADDd-0004lH-Dg; Thu, 11 Feb 2021 09:45:21 -0500
Received: from mail-io1-f47.google.com ([209.85.166.47]:36971)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <cwolsief@gmail.com>) id 1lADDY-0004dk-Rt
 for USRP-users@lists.ettus.com; Thu, 11 Feb 2021 09:45:16 -0500
Received: by mail-io1-f47.google.com with SMTP id m17so5895807ioy.4
 for <USRP-users@lists.ettus.com>; Thu, 11 Feb 2021 06:44:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HEGbmoNXWLH9c/zj5PJsu9vfYngjYZCh6R7rO6n/jZ8=;
 b=GIKPqmjBokmJKOz+eJBfm0HGofPS+nSzsvgnJcmq4yXk64YGx3u3dP3eit6GlxD69q
 yVbOW66vc/PYQwlTrhvAIJYnbKVMIY6gt4ze02tsmqaePQ+WJxi2ZvlJmktCdtHJJH56
 EGpE0HSwJpDgIdkIZOp4+mt4qczglK4ciNQ0KBGVlE22X6iZublS23iDsAPFO1FTqVFV
 xwO8QMhldsSjmYcYq33uZ/Q0SQs92rDkRO+JYVQBVWn6gkyQbe9rFb6fkZHBVRW7krPR
 kLlhPzuKU9Xnfh+nPjM4s/P11LKMwR9A+mJp6sMlTAvy8ZZeItUmQC4V3jRoRPzDUnF/
 dQHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HEGbmoNXWLH9c/zj5PJsu9vfYngjYZCh6R7rO6n/jZ8=;
 b=OGTDxQ3z6Nd77gl6isBx3gYUlOs5OyqyxzN0baih7FBQdq4bzaaYEYNgzqDx1tmjhr
 ZnXGcfo+T74bPOIYi1wFr3JiP28VaBqKK5ojfX0sfILhR8eUanb4zhss2LOD/mbAzCO1
 5pdTfXMwfFwQrXnWLI60Y2e6LHT+n4oaOvOJIUOYlHMt9bZGTsfr3LJRKW+Z/NseuQxa
 el6UptSaEwzrXh2JVvKdecA4zoQiG9MjBszZ1aI335arket30mnkW9ouwiKb1BSEnzkO
 Y54xNrglBtlcdcmRmVw0kvJbgaT8oXR9fPxKs/a6+B5vC2362+woHFMrU9SRR0PjskSX
 GPfQ==
X-Gm-Message-State: AOAM5326f1tS6NAsIQwx1lC7Tn5rlC1ZO8LGKTWlBc9t/ZaDdyflzXvu
 dT93X4Wb8zyAyAuTZ1Yzvg8VWO+zYNganRpagEw=
X-Google-Smtp-Source: ABdhPJzro6+aHNjGMP+LWV8fkU5fl6cLDPzfWl13nVZxnxeATxY5rttsAlqSpwJAY3Y8S6cFroZR+zjKeIx5nkjfnX4=
X-Received: by 2002:a05:6638:3f7:: with SMTP id
 s23mr9134333jaq.80.1613054676044; 
 Thu, 11 Feb 2021 06:44:36 -0800 (PST)
MIME-Version: 1.0
References: <CAM06ataJCyM_x3o24-H59EXnB9go=LuxFuEyUiWZebP8ktGShQ@mail.gmail.com>
 <CA5120D6-2F5E-4CCD-8390-728A2810CA11@gmail.com>
In-Reply-To: <CA5120D6-2F5E-4CCD-8390-728A2810CA11@gmail.com>
Date: Thu, 11 Feb 2021 09:44:25 -0500
Message-ID: <CAM06atZG1mrZyx+4qFLyvjCi0BmN8PhxDgX1WN72=cUrzeJ2vA@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: USRP-users@lists.ettus.com
Subject: Re: [USRP-users] Python API install help - Ubuntu 20.04
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
From: Casey Wolsieffer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Casey Wolsieffer <cwolsief@gmail.com>
Content-Type: multipart/mixed; boundary="===============6327726971759510228=="
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

--===============6327726971759510228==
Content-Type: multipart/alternative; boundary="000000000000f8165205bb108e8b"

--000000000000f8165205bb108e8b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I did sudo make install yes,


I'm assuming you mean /usr/local, I tried that in .conf file but that
doesn't seem to work either


On Thu, Feb 11, 2021, 8:57 AM Marcus D Leech <patchvonbraun@gmail.com>
wrote:

> Your install prefix is /use/local
>
> Did you sudo make install?
>
>
>
> Sent from my iPhone
>
> > On Feb 11, 2021, at 8:30 AM, Casey Wolsieffer via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >
> > =EF=BB=BF
> > Hello, I have tried several times to install Python3 uhd on my system
> but when I attempt >>>import uhd in python3 environment I always receive
> ModuleNotFoundError: no module named 'uhd'
> >
> > As far as I can see there are no hang ups on install and after $make, I
> run $make test and get 0 out of 82 fails. Below is my enabled components
> after I run
> >
> > $cmake ../
> >
> > I've also put a uhd.conf file in my ld.so.conf file and ran $sudo
> ldconfig. Although I'm not certain I'm putting in correct path, right now
> it's [my_directory]/uhd/host/build/lib/
> >
> > I'm on Ubuntu 20.04, any help is greatly appreciated!
> >
> > -- ######################################################
> > -- # UHD enabled components
> > -- ######################################################
> > --   * LibUHD
> > --   * LibUHD - C API
> > --   * LibUHD - Python API
> > --   * Examples
> > --   * Utils
> > --   * Tests
> > --   * USB
> > --   * B100
> > --   * B200
> > --   * USRP1
> > --   * USRP2
> > --   * X300
> > --   * MPMD
> > --   * SIM
> > --   * N300
> > --   * N320
> > --   * E320
> > --   * E300
> > --   * OctoClock
> > --   * Manual
> > --   * API/Doxygen
> > --   * Man Pages
> > --
> > -- ######################################################
> > -- # UHD disabled components
> > -- ######################################################
> > --   * DPDK
> > --
> > -- ******************************************************
> > -- * You are building the UHD development master branch.
> > -- * For production code, we recommend our stable,
> > -- * releases or using the release branch (maint).
> > -- ******************************************************
> > -- Building version: 4.0.0.0-93-g3b9ced8f
> > -- Using install prefix: /usr/local
> > -- Configuring done
> > -- Generating done
> > -- Build files have been written to:
> /home/casey/Projects/UHD/uhd/host/build
> >
> >
> > _______________________________________________
> > USRP-users mailing list
> > USRP-users@lists.ettus.com
> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f8165205bb108e8b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I did sudo make install yes,<div dir=3D"auto"><br></div><=
div dir=3D"auto"><br></div><div dir=3D"auto">I&#39;m assuming you mean /usr=
/local, I tried that in .conf file but that doesn&#39;t seem to work either=
</div><br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Thu, Feb 11, 2021, 8:57 AM Marcus D Leech &lt;<a href=
=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">Your install prefix is /use/local<b=
r>
<br>
Did you sudo make install?<br>
<br>
<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Feb 11, 2021, at 8:30 AM, Casey Wolsieffer via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"noreferre=
r">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello, I have tried several times to install Python3 uhd on my system =
but when I attempt &gt;&gt;&gt;import uhd in python3 environment I always r=
eceive ModuleNotFoundError: no module named &#39;uhd&#39;<br>
&gt; <br>
&gt; As far as I can see there are no hang ups on install and after $make, =
I run $make test and get 0 out of 82 fails. Below is my enabled components =
after I run<br>
&gt; <br>
&gt; $cmake ../<br>
&gt; <br>
&gt; I&#39;ve also put a uhd.conf file in my ld.so.conf file and ran $sudo =
ldconfig. Although I&#39;m not certain I&#39;m putting in correct path, rig=
ht now it&#39;s [my_directory]/uhd/host/build/lib/<br>
&gt; <br>
&gt; I&#39;m on Ubuntu 20.04, any help is greatly appreciated!<br>
&gt; <br>
&gt; -- ###################################################### <br>
&gt; -- # UHD enabled components=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<br>
&gt; -- ###################################################### <br>
&gt; --=C2=A0 =C2=A0* LibUHD <br>
&gt; --=C2=A0 =C2=A0* LibUHD - C API <br>
&gt; --=C2=A0 =C2=A0* LibUHD - Python API <br>
&gt; --=C2=A0 =C2=A0* Examples <br>
&gt; --=C2=A0 =C2=A0* Utils <br>
&gt; --=C2=A0 =C2=A0* Tests <br>
&gt; --=C2=A0 =C2=A0* USB <br>
&gt; --=C2=A0 =C2=A0* B100 <br>
&gt; --=C2=A0 =C2=A0* B200 <br>
&gt; --=C2=A0 =C2=A0* USRP1 <br>
&gt; --=C2=A0 =C2=A0* USRP2 <br>
&gt; --=C2=A0 =C2=A0* X300 <br>
&gt; --=C2=A0 =C2=A0* MPMD <br>
&gt; --=C2=A0 =C2=A0* SIM <br>
&gt; --=C2=A0 =C2=A0* N300 <br>
&gt; --=C2=A0 =C2=A0* N320 <br>
&gt; --=C2=A0 =C2=A0* E320 <br>
&gt; --=C2=A0 =C2=A0* E300 <br>
&gt; --=C2=A0 =C2=A0* OctoClock <br>
&gt; --=C2=A0 =C2=A0* Manual <br>
&gt; --=C2=A0 =C2=A0* API/Doxygen <br>
&gt; --=C2=A0 =C2=A0* Man Pages <br>
&gt; --=C2=A0 <br>
&gt; -- ###################################################### <br>
&gt; -- # UHD disabled components=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 <br>
&gt; -- ###################################################### <br>
&gt; --=C2=A0 =C2=A0* DPDK <br>
&gt; --=C2=A0 <br>
&gt; -- ****************************************************** <br>
&gt; -- * You are building the UHD development master branch. <br>
&gt; -- * For production code, we recommend our stable, <br>
&gt; -- * releases or using the release branch (maint). <br>
&gt; -- ****************************************************** <br>
&gt; -- Building version: 4.0.0.0-93-g3b9ced8f <br>
&gt; -- Using install prefix: /usr/local <br>
&gt; -- Configuring done <br>
&gt; -- Generating done <br>
&gt; -- Build files have been written to: /home/casey/Projects/UHD/uhd/host=
/build<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D=
"noreferrer">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus=
.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000f8165205bb108e8b--


--===============6327726971759510228==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6327726971759510228==--


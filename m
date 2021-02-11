Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F13318D88
	for <lists+usrp-users@lfdr.de>; Thu, 11 Feb 2021 15:41:30 +0100 (CET)
Received: from [::1] (port=56686 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lAD9q-0004Qg-SF; Thu, 11 Feb 2021 09:41:26 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:38819)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1lAD9n-0004KE-Ae
 for USRP-users@lists.ettus.com; Thu, 11 Feb 2021 09:41:23 -0500
Received: by mail-oi1-f176.google.com with SMTP id h6so6296912oie.5
 for <USRP-users@lists.ettus.com>; Thu, 11 Feb 2021 06:41:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dM5aUuwEaPL4pqeGYg3G96h5bcGxRJ06VCWXzxRMJNQ=;
 b=LuW8PmK8gVqEQwWgr5lNYGQoSEsLyd2eOisGPLlpTjIdG9dNoKXH5bZ2t/Q5wivITC
 r/sNaenz6EWCovYGDkYPoa1czHYYhbk3ufRABzE2JBu+XnpAKR3TOA8sQ0rpNztAXffu
 J2nmP3+z1afwOLv+3n3WuszR7k5WOaBCqB60ZA80cnKvkIc5ot0lTHejzPQMo4qwGHDb
 lAwTQApf4ABo4TdpEPCOkI6VYiJg1raNmOtOciDH6U7HMpAoFZIKpz0GiSwOki5t3Mr7
 Y5HOy+toUFQ8YqR5vXaWFKxSVjN9hL/31/v5//PWzK4lU/wQNPwWLqld+h9Ob4dGy9b5
 CHBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dM5aUuwEaPL4pqeGYg3G96h5bcGxRJ06VCWXzxRMJNQ=;
 b=VYJzrst4u6fqA14NwPDIf+qAnVBIYswaLTsZXm92F1kAV87MKD/D9XuV9eNBQWtc8+
 tgjRk06+h8ChdYkUxC6I/dd4WeFK0D5KniIRmShCO4RAp5W3uvhcY8cmjneFbgkdRIao
 S0U4psnfG09hFjYXQXDP3sPBjlBBti0ksE96bvVUU2g7eKZ6UQbtGQbi++BMHbz3jOgz
 yGF+mQP7G8b5Dn7UWBP7ywdhjX1h7IrRiLJrn2qfLwKuKfd0eiTWYwXGfft783xiK9tH
 C0FN6tKS6Atj0HgIDaoTxNkcW4780Ct3MMb/4k7jItaKyBzaqtYg1kMugcyeGNfZ43sz
 bdvA==
X-Gm-Message-State: AOAM531puKzfwjZWftmuhnAM7KmxKfnbTY1Wa3cNVGfy3Ss0GdKGKW8Z
 nEEKmPIAq1KF3WbUrlXyMrN9qUx0v2pVObBbl6t6dw==
X-Google-Smtp-Source: ABdhPJwZ+3s5WC4UrXsJQqw6qZVR9qxyG5SVYhntqy3e0jkxt3Dn9gctXReUy/5bGZ5vEXMPRCpzdqNy4pZ0tMpN9og=
X-Received: by 2002:aca:6089:: with SMTP id u131mr2912034oib.150.1613054442226; 
 Thu, 11 Feb 2021 06:40:42 -0800 (PST)
MIME-Version: 1.0
References: <CAM06ataJCyM_x3o24-H59EXnB9go=LuxFuEyUiWZebP8ktGShQ@mail.gmail.com>
 <CA5120D6-2F5E-4CCD-8390-728A2810CA11@gmail.com>
In-Reply-To: <CA5120D6-2F5E-4CCD-8390-728A2810CA11@gmail.com>
Date: Thu, 11 Feb 2021 09:40:31 -0500
Message-ID: <CAB__hTQ=tTLZYO65zgDDpLBphvR1sfbR26qp_A55sQ9bMcsaFg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Cc: usrp-users <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1201844808455954667=="
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

--===============1201844808455954667==
Content-Type: multipart/alternative; boundary="0000000000000877d705bb108101"

--0000000000000877d705bb108101
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Perhaps set PYTHONPATH such as:
export PYTHONPATH=3D/usr/local/lib/python3.8/site-packages/

On Thu, Feb 11, 2021 at 8:57 AM Marcus D Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

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
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000000877d705bb108101
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Perhaps set PYTHONPATH such as:<div>export PYTHONPATH=3D/u=
sr/local/lib/python3.8/site-packages/<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 11, 2021 at 8:57=
 AM Marcus D Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.et=
tus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">Your install prefix is /use/local<br>
<br>
Did you sudo make install?<br>
<br>
<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Feb 11, 2021, at 8:30 AM, Casey Wolsieffer via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br>
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
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-u=
sers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailma=
n/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000000877d705bb108101--


--===============1201844808455954667==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1201844808455954667==--


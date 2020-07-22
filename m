Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BAAC0229E6B
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 19:23:36 +0200 (CEST)
Received: from [::1] (port=52878 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyISt-0007F4-Jf; Wed, 22 Jul 2020 13:23:35 -0400
Received: from mail-qk1-f178.google.com ([209.85.222.178]:43658)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1jyISq-00074T-6E
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 13:23:32 -0400
Received: by mail-qk1-f178.google.com with SMTP id z15so2712143qki.10
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 10:23:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gXAZn4P/+biYCxNzQVdpBJW7LfNlTzHEnot8BlRe5mw=;
 b=ddjtOpuagYLGYi8XzQVybXD8wMnH7bi4cON7lFCzqOU0/UnbujD5mZ2fwmFFsYDrL5
 JuiSe04HwnPCJxowP5z7SOwJEVEx0+QB5UVEBF+dy96KMQyqguGBX+VQfI16O2tXDZ4I
 nJiX4cj31mSUAykU8/FTZDcGPAz1b22Hhc38dja0Bjo37Xi8AacytUmvG4BgcQU4tiFv
 gna4bb57kBvVY7nQnr6XaPKEjPHMwH2Z7xs1PvIYEFLVFignVVCKCdOOBz403ki7r/TX
 yQ8NklyFKkv/FLXZukvB/dbQe5Qpqdkxug2ZWzkRXR7/qbGrNgJEx7nv6ugVIeklqXgg
 cRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gXAZn4P/+biYCxNzQVdpBJW7LfNlTzHEnot8BlRe5mw=;
 b=B4WcmeDuqXaUUmKZUYkiagbH4oz2d8+ESOWvnY5VxrFwk1ragxv4zM4ku53yvjCEtw
 uPj/1ZH7qGJBqFinKU/2jcuYUMAtNj9F+3j+QKVmr/m4rnrEFS9XyXICbPQ90afRlzCb
 Dy3qn9I4YD0wNZ/YBEmHHzXT7tYmqQSOIifCsgCOW29t7P7aAibqE9ij798p5WuODVHD
 vJAu3lW9uJ6cV9KORLw5iB/oSQsHENDP2fu1HGFgmXkQiQGgsPIC+DkqV8FdKeV4t5hG
 BGLEtfkYO/UVwXEMcV0hLjmY+UnBh4bWAvppHKZ1dUYKhVW2fCoWVWO+uSMSCDf+6UeK
 rkPQ==
X-Gm-Message-State: AOAM532ezbyH+r8dNH3tjaN7JDultvX/5ipJ9WVHQ5nGnai06zUVmxto
 5e+ArkKQ/Uy2coHVE9t3t2gDzrNaE3D48snShsg=
X-Google-Smtp-Source: ABdhPJyCPAd8QTSqyQyFqcpVukLqeBlI/Gs2YjHPWD0QInhtjxMwmLHMZMgwrgdQ6A5zQ8mHmvzO/7KGK2QMgaFTn/Y=
X-Received: by 2002:a37:8e42:: with SMTP id q63mr1085018qkd.16.1595438571508; 
 Wed, 22 Jul 2020 10:22:51 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
 <5F187365.7030104@gmail.com>
In-Reply-To: <5F187365.7030104@gmail.com>
Date: Wed, 22 Jul 2020 19:22:38 +0200
Message-ID: <CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] C++ thread Priority.
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
From: David Carsenat via USRP-users <usrp-users@lists.ettus.com>
Reply-To: David Carsenat <carsenat@gmail.com>
Content-Type: multipart/mixed; boundary="===============3699184230421213697=="
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

--===============3699184230421213697==
Content-Type: multipart/alternative; boundary="00000000000050d92f05ab0afd80"

--00000000000050d92f05ab0afd80
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ok thanks. The code is really simple and i don't think it can be optimized.
Is there other linux OS i can try ?
Thanks again.

Le mer. 22 juil. 2020 =C3=A0 19:12, Marcus D. Leech via USRP-users <
usrp-users@lists.ettus.com> a =C3=A9crit :

> On 07/22/2020 12:56 PM, David Carsenat via USRP-users wrote:
> > Hello, I have made a c++ code which sends samples in the main function
> > and receives samples in a thread launched in this main function.
> > I have read that we can set the real time priority with the
> > set_thread_priority function.
> > I have tried to call this function (with parameters (1,true) inside
> > the main function but it doesn't seem to change the priority of the
> > executable. When I launch another application, I have lots of U and O.
> >
> > Do you have an idea how to achieve what I want ? i.e. allocate almost
> > all computer resources to my uhd program ? What is the best way ?
> > I have already tuned my ubuntu with advice given on Ettus site.(
> > cpu-freq set etc...)
> >
> > Many thanks
> >
> > David
> >
> In general, applications have only very-rough control over the behavior
> of the scheduler.  This is true in most general-purpose operating system
>    environments, whether it's Windows, Linux, *BSD, MacOS, etc.
>
> If you've played with priorities, and starting up other programs causes
> OU to happen, you should probably consider:
>
> (A) Optimizing your code -- find out where the hot-spots are, and see if
> they can be improved
> (B) Choosing a faster CPU
>
> The CPU usage of a DSP flow is roughly proportional to:
>
> inherent-per-sample-complexity X sample-rate
>
> Can you lower the sample rate and still achieve what you need to
> achieve?  Can you improve the main-path per-sample complexity?
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000050d92f05ab0afd80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Ok thanks. The code is really simple and i don&#39;t thin=
k it can be optimized.=C2=A0<div dir=3D"auto">Is there other linux OS i can=
 try ?</div><div dir=3D"auto">Thanks again.</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le mer. 22 juil. 2020 =C3=
=A0 19:12, Marcus D. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@=
lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; a =C3=A9crit=C2=A0:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">On 07/22/2020 12:56 PM, David Carsenat=
 via USRP-users wrote:<br>
&gt; Hello, I have made a c++ code which sends samples in the main function=
 <br>
&gt; and receives samples in a thread launched in this main function.<br>
&gt; I have read that we can set the real time priority with the <br>
&gt; set_thread_priority function.<br>
&gt; I have tried to call this function (with parameters (1,true) inside <b=
r>
&gt; the main function but it doesn&#39;t seem to change the priority of th=
e <br>
&gt; executable. When I launch another application, I have lots of U and O.=
<br>
&gt;<br>
&gt; Do you have an idea how to achieve what I want ? i.e. allocate almost =
<br>
&gt; all computer resources to my uhd program ? What is the best way ?<br>
&gt; I have already tuned my ubuntu with advice given on Ettus site.( <br>
&gt; cpu-freq set etc...)<br>
&gt;<br>
&gt; Many thanks<br>
&gt;<br>
&gt; David<br>
&gt;<br>
In general, applications have only very-rough control over the behavior <br=
>
of the scheduler.=C2=A0 This is true in most general-purpose operating syst=
em<br>
=C2=A0 =C2=A0environments, whether it&#39;s Windows, Linux, *BSD, MacOS, et=
c.<br>
<br>
If you&#39;ve played with priorities, and starting up other programs causes=
 <br>
OU to happen, you should probably consider:<br>
<br>
(A) Optimizing your code -- find out where the hot-spots are, and see if <b=
r>
they can be improved<br>
(B) Choosing a faster CPU<br>
<br>
The CPU usage of a DSP flow is roughly proportional to:<br>
<br>
inherent-per-sample-complexity X sample-rate<br>
<br>
Can you lower the sample rate and still achieve what you need to <br>
achieve?=C2=A0 Can you improve the main-path per-sample complexity?<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000050d92f05ab0afd80--


--===============3699184230421213697==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3699184230421213697==--


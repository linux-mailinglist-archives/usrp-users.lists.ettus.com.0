Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C37622B453
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 19:14:06 +0200 (CEST)
Received: from [::1] (port=35454 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyenB-0003Oj-Qd; Thu, 23 Jul 2020 13:14:01 -0400
Received: from mail-qk1-f182.google.com ([209.85.222.182]:37166)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1jyen7-0003I1-RQ
 for usrp-users@lists.ettus.com; Thu, 23 Jul 2020 13:13:57 -0400
Received: by mail-qk1-f182.google.com with SMTP id b14so4353911qkn.4
 for <usrp-users@lists.ettus.com>; Thu, 23 Jul 2020 10:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OPJYVwKtlTpvCzNxQr57FNrJXD7Yh8mawUECtak/enU=;
 b=YvQpxFTuv7WP1tX64blomYMTkQw8E34PNsFg7HHoZRjW/u32aBQZ9q3azOmL88E5TO
 3iL27T5Fu4yMNQZcQnwm1jHSC6DgCsCgTB39hPq+A5QettrdrWpgheP+TiKw1kYCnYSe
 bSjX6L6yqpJLzVTB11iPmohGA5FUf+Dhfm9gvpbKQZhwLS+LsMgW4L2V+YPXuIe4+Gvc
 /0AOzoqpyOXJnTUfXIROSQII7bgJZOpatfXeo6zUzMqVhCj1jju5UQQkwblmitDP/gUo
 zqHecO8eMURrOiYXRoyCGeG3ynoNbxFJ0Q8ERe9rnZBXkwoP37EhR9kw9quIjLA6K2J0
 rKZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OPJYVwKtlTpvCzNxQr57FNrJXD7Yh8mawUECtak/enU=;
 b=hVIhpGHCZzqd9ug3kgJfQWB7nFUr2/6p6JUf3xI2iyXq6VkWDL78VBT7BC5aelE0KI
 XFV+2Hz74Or3x0oj/0fP0lREB4hhrQSEdqrOFeL5GqLI7vMUyplBwdSUIWoxYdTReZFR
 6Nwf+tbIPJcpbaGcQmWKc3oum7Q/CTBUffbcHMz5XXM2v9lP67f0Lx/OBhw+CBw6G4GB
 ENmYV8qxNVTmJViwljroQGdbmNRFwTOyLA5Oed0jmNHu2gXMau/7WjUrVZrDjyFmOJCg
 /Zg2vv6FY9AV+ZDqyOIfULzXJp/tf2sT7lBugIm2sHPKrGHL690sbX7DLsHvlV+dF2hR
 XSwg==
X-Gm-Message-State: AOAM531qd+hHVyNN+S1bpwUZPOeVbRNYjHrhyklCA5IUCgVB4pJeAqpJ
 4t/zkusEfQ5d4G1zKnNmy+fBRt9OMY3YKS/UrbY=
X-Google-Smtp-Source: ABdhPJzDVgkUcPJprnGzP36LODJ70C6PCVpPiQRSK+WfHSqM8WfLxirmECvXJSnRB8cswR9ZY9SQOvDIDSdEMpxRywQ=
X-Received: by 2002:a37:8e42:: with SMTP id q63mr6152357qkd.16.1595524397094; 
 Thu, 23 Jul 2020 10:13:17 -0700 (PDT)
MIME-Version: 1.0
References: <CA+w2ZysadneVug92CO58wFPBKZBBtoK31xdAfV89rt73qVD3Cg@mail.gmail.com>
 <5F187365.7030104@gmail.com>
 <CA+w2ZytN3PA3TGCbrTZ2mED0rCsgyaOU57w8=pkKkAW=1oAR5Q@mail.gmail.com>
 <5F187873.2040206@gmail.com>
 <CA+w2ZytC0pPxp7GOCzE8m6m9FgUZLqDHwAgM1GzH8HLgV26O=A@mail.gmail.com>
 <5F187B7C.2090909@gmail.com>
 <CAB__hTS2cwTwXdQSMoaE=d_je4sXaEUvwzz=JH36oD0TDksS=w@mail.gmail.com>
 <5F189F72.7060404@gmail.com>
 <CA+ce6i1t0VGE3ZpD10SAPrkJ3F0pMKRGiqJqYjeYtKWhyxS0Eg@mail.gmail.com>
In-Reply-To: <CA+ce6i1t0VGE3ZpD10SAPrkJ3F0pMKRGiqJqYjeYtKWhyxS0Eg@mail.gmail.com>
Date: Thu, 23 Jul 2020 19:13:04 +0200
Message-ID: <CA+w2ZyuKtuKzSLXjvG4q6QjXyG8uWkfwcJthw1=7W98JkmqFzg@mail.gmail.com>
To: Luke Whittlesey <luke.whittlesey@gmail.com>
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
Cc: usrp-users <usrp-users@lists.ettus.com>, Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5260626670262112687=="
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

--===============5260626670262112687==
Content-Type: multipart/alternative; boundary="000000000000eb5d1405ab1ef890"

--000000000000eb5d1405ab1ef890
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Many thanks but I am already in O3.

Le jeu. 23 juil. 2020 =C3=A0 15:46, Luke Whittlesey via USRP-users <
usrp-users@lists.ettus.com> a =C3=A9crit :

> This is probably not the issue, but sometimes I forget to turn the
> compiler optimizations on and that can give you a little boost
> depending on the code. gcc -O2 ...
>
> On Wed, Jul 22, 2020 at 4:20 PM Marcus D. Leech via USRP-users
> <usrp-users@lists.ettus.com> wrote:
> >
> > On 07/22/2020 03:18 PM, Rob Kossler wrote:
> >
> > If you are using X310 or N310, you might try DPDK. Even though it is a
> pain, it would be a whole lot easier than trying a new OS, I believe.
> Using DPDK enabled my application (which was storing Rx samples to SSD) t=
o
> run a bunch faster than without DPDK.
> >
> > Thanks, Rob.  DPDK does facilitate lower-cost higher data transfer into
> the application.  That may, or may not, be the issue here.
> >
> >
> >
> > On Wed, Jul 22, 2020 at 1:47 PM Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> wrote:
> >>
> >> On 07/22/2020 01:40 PM, David Carsenat wrote:
> >>
> >> It just put received samples in a circular buffer and  transmit this
> buffer. A delay line.
> >> But the SR is 50 Msps... 8 bits.
> >>  Do you have ideas about OS ?
> >> Thanks.
> >>
> >> There are commercial real-time low-latency OS "out there" that aren't
> free, and UHD has not been ported to them as far as I know.
> >>
> >>
> >> Le mer. 22 juil. 2020 =C3=A0 19:33, Marcus D. Leech <patchvonbraun@gma=
il.com>
> a =C3=A9crit :
> >>>
> >>> On 07/22/2020 01:22 PM, David Carsenat wrote:
> >>>
> >>> Ok thanks. The code is really simple and i don't think it can be
> optimized.
> >>> Is there other linux OS i can try ?
> >>> Thanks again.
> >>>
> >>> If it's really simple, what is the sample-rate?  Is it trying to writ=
e
> data to the filesystem at high rates?  No amount of code optimization can
> get
> >>>   around the fact that the disk subsystem is very slow compared to
> other parts of the computer, like memory, CPU, etc.
> >>>
> >>>
> >>> Le mer. 22 juil. 2020 =C3=A0 19:12, Marcus D. Leech via USRP-users <
> usrp-users@lists.ettus.com> a =C3=A9crit :
> >>>>
> >>>> On 07/22/2020 12:56 PM, David Carsenat via USRP-users wrote:
> >>>> > Hello, I have made a c++ code which sends samples in the main
> function
> >>>> > and receives samples in a thread launched in this main function.
> >>>> > I have read that we can set the real time priority with the
> >>>> > set_thread_priority function.
> >>>> > I have tried to call this function (with parameters (1,true) insid=
e
> >>>> > the main function but it doesn't seem to change the priority of th=
e
> >>>> > executable. When I launch another application, I have lots of U an=
d
> O.
> >>>> >
> >>>> > Do you have an idea how to achieve what I want ? i.e. allocate
> almost
> >>>> > all computer resources to my uhd program ? What is the best way ?
> >>>> > I have already tuned my ubuntu with advice given on Ettus site.(
> >>>> > cpu-freq set etc...)
> >>>> >
> >>>> > Many thanks
> >>>> >
> >>>> > David
> >>>> >
> >>>> In general, applications have only very-rough control over the
> behavior
> >>>> of the scheduler.  This is true in most general-purpose operating
> system
> >>>>    environments, whether it's Windows, Linux, *BSD, MacOS, etc.
> >>>>
> >>>> If you've played with priorities, and starting up other programs
> causes
> >>>> OU to happen, you should probably consider:
> >>>>
> >>>> (A) Optimizing your code -- find out where the hot-spots are, and se=
e
> if
> >>>> they can be improved
> >>>> (B) Choosing a faster CPU
> >>>>
> >>>> The CPU usage of a DSP flow is roughly proportional to:
> >>>>
> >>>> inherent-per-sample-complexity X sample-rate
> >>>>
> >>>> Can you lower the sample rate and still achieve what you need to
> >>>> achieve?  Can you improve the main-path per-sample complexity?
> >>>>
> >>>>
> >>>>
> >>>> _______________________________________________
> >>>> USRP-users mailing list
> >>>> USRP-users@lists.ettus.com
> >>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> >>>
> >>>
> >>
> >> _______________________________________________
> >> USRP-users mailing list
> >> USRP-users@lists.ettus.com
> >> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
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

--000000000000eb5d1405ab1ef890
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Many thanks but I am already in O3.</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le jeu. 23 juil. 202=
0 =C3=A0 15:46, Luke Whittlesey via USRP-users &lt;<a href=3D"mailto:usrp-u=
sers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; a =C3=A9crit=C2=A0=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">This is probably not the issue, b=
ut sometimes I forget to turn the<br>
compiler optimizations on and that can give you a little boost<br>
depending on the code. gcc -O2 ...<br>
<br>
On Wed, Jul 22, 2020 at 4:20 PM Marcus D. Leech via USRP-users<br>
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"=
noreferrer">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 07/22/2020 03:18 PM, Rob Kossler wrote:<br>
&gt;<br>
&gt; If you are using X310 or N310, you might try DPDK. Even though it is a=
 pain, it would be a whole lot easier than trying a new OS, I believe.=C2=
=A0 Using DPDK enabled my application (which was storing Rx samples to SSD)=
 to run a bunch faster than without DPDK.<br>
&gt;<br>
&gt; Thanks, Rob.=C2=A0 DPDK does facilitate lower-cost higher data transfe=
r into the application.=C2=A0 That may, or may not, be the issue here.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Wed, Jul 22, 2020 at 1:47 PM Marcus D. Leech via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" rel=3D"norefer=
rer">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 07/22/2020 01:40 PM, David Carsenat wrote:<br>
&gt;&gt;<br>
&gt;&gt; It just put received samples in a circular buffer and=C2=A0 transm=
it this buffer. A delay line.<br>
&gt;&gt; But the SR is 50 Msps... 8 bits.<br>
&gt;&gt;=C2=A0 Do you have ideas about OS ?<br>
&gt;&gt; Thanks.<br>
&gt;&gt;<br>
&gt;&gt; There are commercial real-time low-latency OS &quot;out there&quot=
; that aren&#39;t free, and UHD has not been ported to them as far as I kno=
w.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Le mer. 22 juil. 2020 =C3=A0 19:33, Marcus D. Leech &lt;<a href=3D=
"mailto:patchvonbraun@gmail.com" target=3D"_blank" rel=3D"noreferrer">patch=
vonbraun@gmail.com</a>&gt; a =C3=A9crit :<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 07/22/2020 01:22 PM, David Carsenat wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Ok thanks. The code is really simple and i don&#39;t think it =
can be optimized.<br>
&gt;&gt;&gt; Is there other linux OS i can try ?<br>
&gt;&gt;&gt; Thanks again.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; If it&#39;s really simple, what is the sample-rate?=C2=A0 Is i=
t trying to write data to the filesystem at high rates?=C2=A0 No amount of =
code optimization can get<br>
&gt;&gt;&gt;=C2=A0 =C2=A0around the fact that the disk subsystem is very sl=
ow compared to other parts of the computer, like memory, CPU, etc.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Le mer. 22 juil. 2020 =C3=A0 19:12, Marcus D. Leech via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" re=
l=3D"noreferrer">usrp-users@lists.ettus.com</a>&gt; a =C3=A9crit :<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 07/22/2020 12:56 PM, David Carsenat via USRP-users wrot=
e:<br>
&gt;&gt;&gt;&gt; &gt; Hello, I have made a c++ code which sends samples in =
the main function<br>
&gt;&gt;&gt;&gt; &gt; and receives samples in a thread launched in this mai=
n function.<br>
&gt;&gt;&gt;&gt; &gt; I have read that we can set the real time priority wi=
th the<br>
&gt;&gt;&gt;&gt; &gt; set_thread_priority function.<br>
&gt;&gt;&gt;&gt; &gt; I have tried to call this function (with parameters (=
1,true) inside<br>
&gt;&gt;&gt;&gt; &gt; the main function but it doesn&#39;t seem to change t=
he priority of the<br>
&gt;&gt;&gt;&gt; &gt; executable. When I launch another application, I have=
 lots of U and O.<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; Do you have an idea how to achieve what I want ? i.e.=
 allocate almost<br>
&gt;&gt;&gt;&gt; &gt; all computer resources to my uhd program ? What is th=
e best way ?<br>
&gt;&gt;&gt;&gt; &gt; I have already tuned my ubuntu with advice given on E=
ttus site.(<br>
&gt;&gt;&gt;&gt; &gt; cpu-freq set etc...)<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; Many thanks<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; &gt; David<br>
&gt;&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;&gt; In general, applications have only very-rough control over=
 the behavior<br>
&gt;&gt;&gt;&gt; of the scheduler.=C2=A0 This is true in most general-purpo=
se operating system<br>
&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 environments, whether it&#39;s Windows, Linux=
, *BSD, MacOS, etc.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; If you&#39;ve played with priorities, and starting up othe=
r programs causes<br>
&gt;&gt;&gt;&gt; OU to happen, you should probably consider:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; (A) Optimizing your code -- find out where the hot-spots a=
re, and see if<br>
&gt;&gt;&gt;&gt; they can be improved<br>
&gt;&gt;&gt;&gt; (B) Choosing a faster CPU<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; The CPU usage of a DSP flow is roughly proportional to:<br=
>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; inherent-per-sample-complexity X sample-rate<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Can you lower the sample rate and still achieve what you n=
eed to<br>
&gt;&gt;&gt;&gt; achieve?=C2=A0 Can you improve the main-path per-sample co=
mplexity?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; USRP-users mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_b=
lank" rel=3D"noreferrer">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">http:/=
/lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" re=
l=3D"noreferrer">USRP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D=
"noreferrer">USRP-users@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.et=
tus.com" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus=
.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank" rel=3D"nore=
ferrer">USRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/=
mailman/listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000eb5d1405ab1ef890--


--===============5260626670262112687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5260626670262112687==--


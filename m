Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A75A122F077
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jul 2020 16:25:00 +0200 (CEST)
Received: from [::1] (port=45390 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k043m-0001GI-7H; Mon, 27 Jul 2020 10:24:58 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:34080)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carsenat@gmail.com>) id 1k043h-000124-KA
 for usrp-users@lists.ettus.com; Mon, 27 Jul 2020 10:24:53 -0400
Received: by mail-qk1-f172.google.com with SMTP id x69so15385373qkb.1
 for <usrp-users@lists.ettus.com>; Mon, 27 Jul 2020 07:24:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=MpXFk+wpeAlF7F4V4yQyizQGy8sOqUFZjGuk2NvZlrM=;
 b=B0KaqvsUTzmb13E3QVW2lozmiZi47q6r+kV26LsVw0GLS0+SG5R5DkDay9/iCOSk55
 A0r9SL372Frwl/R5z0Oq2B/fRj511KyTtFuIQv6+gvZmYjp+PMw6VmMtwOFK+zEJgrZr
 W3wL99YJW0ZBzK8V1LcYeJTnmN3fBaawuxILV67PCvb5VAJDkNAF6FwGkK3hBSy1Royz
 5bx4DPz/o/VmkNLLiYgE8mfBZ/yP7DFK+YJWM7airwGof54mUekOXPgf5aK/38oO1Vdn
 2KPqKFV1jkV2XxLn3xqoOJIlfgwzLDh/EMb9+Lf+lvhc69qAvxb99vOmjsqUnQeq9WCR
 ZrYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MpXFk+wpeAlF7F4V4yQyizQGy8sOqUFZjGuk2NvZlrM=;
 b=VGwyEFX2pY4euzjfnQqNms49pXOhDGTf3xuHeIRTJ42TSonZaMBx2EtAV8r5V/aE+I
 PjKfZgqQn/hVL36xi9ZPS/Ku/TKlOWrPLutbPmzW7+gHacvqNC1f289tAh+i4NO7eI//
 5CwiHr8q5nzyzDYX9RhepnHU2aeg0pJMGp7PZt/Iv232Br7YelzkRFjjYEd9ouF2RR6i
 N4fvjY+nMeAK/NzvFsLiuZzxDNH7RVn+gNKRomKTo8l5Wc7teYE+mXZYl+5A/G2lW2Sg
 maNpU1O7M80ujNofjxBA+8jVcm4cNS9x3t2Z6VeedlBIAxsDVFNBCtIn1aQHVk027SBs
 Jmjg==
X-Gm-Message-State: AOAM5334ex0TLX3rQAzwGFFjiS/FMaUOrc+D3T0TAkQj3y2nSRg92Aqj
 8bVgexcSx/j9d5TeBDDY57Q969gnsgia+9vC9ek=
X-Google-Smtp-Source: ABdhPJwc8QbsqsZtDjmIEXsTZFIW7Rm1drm8OXvQq63ksyfzhlbLsQPkA6zFhuJDI1U3Z2BuWXPyZYi+/iLlp2K+FN4=
X-Received: by 2002:a37:8305:: with SMTP id f5mr23693456qkd.497.1595859852375; 
 Mon, 27 Jul 2020 07:24:12 -0700 (PDT)
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
Date: Mon, 27 Jul 2020 16:24:01 +0200
Message-ID: <CA+w2ZyugXWWSy97zV_8u6ve-umyv5JnZDAW+g9sFuvj3AYsy7Q@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5964753376310409792=="
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

--===============5964753376310409792==
Content-Type: multipart/alternative; boundary="0000000000009cfcc505ab6d13ca"

--0000000000009cfcc505ab6d13ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Just to say how I have solved the problem :
- Set the CPU gouvernor to performance with cpufreq-set -g performance
- Use a low latency linux kernel, really simply installed following a tuto
found on the net for ubuntu.
- Add RT priority in the Cpp code (set_thread_priority())
- Reserve a CPU for my application, avoiding Kernet to preempt it

Add in Debian/Ubuntu in the file /etc/default/grub to the option
GRUB_CMDLINE_LINUX:

GRUB_CMDLINE_LINUX=3D"isolcpus=3DX" X is the CPU allocated for my UHD appli=
cation.

Launch the application with taskset on the X CPU.

Launched since 2 days without unerflow or overflow


Hope this will help some peoples

 David



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

--0000000000009cfcc505ab6d13ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div><div><div>Just to say how I have sol=
ved the problem :<br></div><div>- Set the CPU gouvernor to performance with=
 cpufreq-set -g performance<br></div>- Use a low latency linux kernel, real=
ly simply installed following a tuto found on the net for ubuntu.<br></div>=
- Add RT priority in the Cpp code (set_thread_priority())<br></div>- Reserv=
e a CPU for my application, avoiding Kernet to preempt it <br><p>Add in Deb=
ian/Ubuntu in the file <code>/etc/default/grub</code> to the option <code>G=
RUB_CMDLINE_LINUX</code>:</p>

<pre><code>GRUB_CMDLINE_LINUX=3D&quot;isolcpus=3DX&quot; <span style=3D"fon=
t-family:arial,sans-serif">X is the CPU allocated for my UHD application.<b=
r><br></span></code></pre><pre><code><span style=3D"font-family:arial,sans-=
serif">Launch the application with taskset on the X CPU.<br><br></span></co=
de></pre><pre><code><span style=3D"font-family:arial,sans-serif">Launched s=
ince 2 days without unerflow or overflow<br></span></code></pre><pre><code>=
<span style=3D"font-family:arial,sans-serif"><br></span></code></pre><pre><=
code><span style=3D"font-family:arial,sans-serif">Hope this will help some =
peoples<br></span></code></pre><pre><code><span style=3D"font-family:arial,=
sans-serif">=C2=A0David</span><br></code></pre><div><div><br></div></div></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">Le=C2=A0jeu. 23 juil. 2020 =C3=A0=C2=A015:46, Luke Whittlesey via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">This is probably not the issue, but sometimes I forget =
to turn the<br>
compiler optimizations on and that can give you a little boost<br>
depending on the code. gcc -O2 ...<br>
<br>
On Wed, Jul 22, 2020 at 4:20 PM Marcus D. Leech via USRP-users<br>
&lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-us=
ers@lists.ettus.com</a>&gt; wrote:<br>
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
href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br>
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
"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com<=
/a>&gt; a =C3=A9crit :<br>
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
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; a =C3=A9crit :<br>
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
lank">USRP-users@lists.ettus.com</a><br>
&gt;&gt;&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-us=
ers_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettu=
s.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; USRP-users mailing list<br>
&gt;&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">US=
RP-users@lists.ettus.com</a><br>
&gt;&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_list=
s.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/ma=
ilman/listinfo/usrp-users_lists.ettus.com</a><br>
&gt;<br>
&gt;<br>
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

--0000000000009cfcc505ab6d13ca--


--===============5964753376310409792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5964753376310409792==--


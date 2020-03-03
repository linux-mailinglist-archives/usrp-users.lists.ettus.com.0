Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 01371177C8A
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 17:59:51 +0100 (CET)
Received: from [::1] (port=53088 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9AtK-0004sP-8a; Tue, 03 Mar 2020 11:59:34 -0500
Received: from mail-oi1-f176.google.com ([209.85.167.176]:39217)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1j9AtG-0004UM-BD
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 11:59:30 -0500
Received: by mail-oi1-f176.google.com with SMTP id r16so3725945oie.6
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 08:59:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wK9LM70LlVi/7oAdqGOGzzTzp95gnjBnOo5v4YPRz5Y=;
 b=TCfcHqCZbnn4zFhotsRTuEnGMsku91+Oit9fF3dOgybESJFQBUZPlCqiuF6iz9QPZ4
 Z50uHYtBhVLMRUiF6CXBEtBeDTyVxzyEo+f7OMLkMpzUIsug0xwPShBu+rI3t4qF00AP
 8N0XPYsfSTN1sw6T4M+bMTYAJ3SwXqC6bL5XSJ0BzRaDZ6WrAHjCwjFXRz1ktscDAtqQ
 wJrH9IRusDKwZGvXF9RqCfpFbC9eBYWDXaemcSFxt6E33XZcNw/B1MxaSMPgYV0WqBUT
 XszhgniY08Ipk5eIQ+1vlLAZfIkxhrXpUZywQMNQiBhn24WLsio+CmoB9Qxz/jWsDCxX
 YAFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wK9LM70LlVi/7oAdqGOGzzTzp95gnjBnOo5v4YPRz5Y=;
 b=KUOqKyFoWiO6x0CyIapFCE36rRimguu9DLVVxufuzEn6QzF3kUJHcxOpPpp0zpLznS
 RNkn4/4br3im7oR9Vj9klQG58gflHVZlm9ju3i3T9Bkn7ZxPrSQulTNgj6EXUFAuQnxs
 R2x7ngsoGGkhnPC62cw97lF4+092Q768abEP7pw6r8buLkw7dSGu3cy98Z8E9Yh1s0P2
 WZiIC+Cs8O/7/unpqiuJLxG/OmrK2fraii2dNJqPTnTFwwlf0ivbg2LB0/A91/93FZsg
 fmap7/aLzvMvt5nO2Bfz3SgqrJXN/7zU+XrXWlViUnvD+bYpEWdDceDEivovYmTvGnYb
 GVcA==
X-Gm-Message-State: ANhLgQ1VLLZ3eg09iKXaNmzebRanECHAxtFU+1eDzmMfTMW9zGJuTY3J
 6PkVJ+68AlOVaet4d8+88MIK4U1zikZJuhecYO0FZw==
X-Google-Smtp-Source: ADFU+vshO2YjIJ7wQsd74tjL4pz5SJJTkl+w/gFFjvbXut5gRBxwz+L/JBiimuqFvbZQrNJMVH4zAMf6cUeqSdAQ24M=
X-Received: by 2002:aca:889:: with SMTP id 131mr2971505oii.3.1583254729467;
 Tue, 03 Mar 2020 08:58:49 -0800 (PST)
MIME-Version: 1.0
References: <trinity-6d081d85-efab-4ee6-9dfd-d15b3f6ff1b5-1583161440082@3c-app-gmx-bs64>
In-Reply-To: <trinity-6d081d85-efab-4ee6-9dfd-d15b3f6ff1b5-1583161440082@3c-app-gmx-bs64>
Date: Tue, 3 Mar 2020 11:58:38 -0500
Message-ID: <CAB__hTSgAJcWu=AwsRYs6HmGYMOqk1kAKC4fFgmVWVd8Fw0THQ@mail.gmail.com>
To: Lukas Haase <lukashaase@gmx.at>
Subject: Re: [USRP-users] USRP X310 ignored DSP retuning on TX when using a
 timed command
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3985884200560581486=="
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

--===============3985884200560581486==
Content-Type: multipart/alternative; boundary="000000000000bd7377059ff63718"

--000000000000bd7377059ff63718
Content-Type: text/plain; charset="UTF-8"

I wonder if the issue is related to a missing time stamp on the baseband
samples going from GR to UHD.  If the stream does not have a time stamp,
the DUC is unable to apply the timed command because the DUC does not
really know the time - it must pull the time from the streaming samples.
This is in contrast to the radio block which does have access to time and
can apply timed commands by referring to the motherboard clock.

I am not too familiar with GR so I'm not sure how to know if GR is putting
a time stamp on the streaming samples.
Rob

On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Marcus,
>
> Thank you that would be amazing!
>
> I followed the tutorial and built everything from source:
>
> $ lsb_release -a
> No LSB modules are available.
> Distributor ID: Ubuntu
> Description:    Ubuntu 18.04.4 LTS
> Release:        18.04
> Codename:       bionic
> $ uname -a
> Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UTC
> 2020 x86_64 x86_64 x86_64 GNU/Linux
> $ cd uhd
> $ git status
> HEAD detached at v3.15.0.0
> $ cd ../gnuradio
> $ git status
> HEAD detached at v3.7.14.0
>
>
> Thank you!
>
> Lukas
>
>
>
> PS: For some reason I sometimes do not get responses from this list. I
> just saw it looking at the mailman archives. Hence I cannot respond (to
> keep headers intact) but need to create a new message and manually "quote".
> I hope that still preserves the context somehow.
>
>
>
> Marcus Leech wrote:
> > On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:
> >> Hi again,
> >>
> >> I created a minimum example (gnuradio) that shows the issue described
> below.
> >> To summarize: Retuning to a different dsp frequency on an USRP X310
> (+UBX160) does not work (command ignored) ONLY if a timed command (in
> future is used).
> >> The code shows it in a simple manner. Commenting out the single line
> with set_command_time makes the example work.
> >>
> >> I am absolutely out of ideas and would appreciate any input!
> >>
> >> Best,
> >> Lukas
> > Lukas.
> >
> > Thanks for sticking with this.  I'll have a discussion with Ettus R&D to
> > see if this is a known issue and/or if there's a workaround.
> >
> > Remind me which version of UHD you're using?
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000bd7377059ff63718
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I wonder if the issue is related to a missing time stamp o=
n the baseband samples going from GR to UHD.=C2=A0 If the stream does not h=
ave a time stamp, the DUC is unable to apply the timed command because the =
DUC does not really know the time - it must pull the time from the streamin=
g samples. This is in contrast to the radio block which does have access to=
 time and can apply timed commands by referring to the motherboard clock.<d=
iv><br></div><div>I am not too familiar with GR so I&#39;m not sure how to =
know if GR is putting a time stamp on the streaming samples.<br><div>Rob</d=
iv></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Mar=
cus,<br>
<br>
Thank you that would be amazing!<br>
<br>
I followed the tutorial and built everything from source:<br>
<br>
$ lsb_release -a<br>
No LSB modules are available.<br>
Distributor ID: Ubuntu<br>
Description:=C2=A0 =C2=A0 Ubuntu 18.04.4 LTS<br>
Release:=C2=A0 =C2=A0 =C2=A0 =C2=A0 18.04<br>
Codename:=C2=A0 =C2=A0 =C2=A0 =C2=A0bionic<br>
$ uname -a<br>
Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UTC 20=
20 x86_64 x86_64 x86_64 GNU/Linux<br>
$ cd uhd<br>
$ git status<br>
HEAD detached at v3.15.0.0<br>
$ cd ../gnuradio<br>
$ git status<br>
HEAD detached at v3.7.14.0<br>
<br>
<br>
Thank you!<br>
<br>
Lukas<br>
<br>
<br>
<br>
PS: For some reason I sometimes do not get responses from this list. I just=
 saw it looking at the mailman archives. Hence I cannot respond (to keep he=
aders intact) but need to create a new message and manually &quot;quote&quo=
t;. I hope that still preserves the context somehow.<br>
<br>
<br>
<br>
Marcus Leech wrote:<br>
&gt; On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:<br>
&gt;&gt; Hi again,<br>
&gt;&gt;<br>
&gt;&gt; I created a minimum example (gnuradio) that shows the issue descri=
bed below.<br>
&gt;&gt; To summarize: Retuning to a different dsp frequency on an USRP X31=
0 (+UBX160) does not work (command ignored) ONLY if a timed command (in fut=
ure is used).<br>
&gt;&gt; The code shows it in a simple manner. Commenting out the single li=
ne with set_command_time makes the example work.<br>
&gt;&gt;<br>
&gt;&gt; I am absolutely out of ideas and would appreciate any input!<br>
&gt;&gt;<br>
&gt;&gt; Best,<br>
&gt;&gt; Lukas<br>
&gt; Lukas.<br>
&gt;<br>
&gt; Thanks for sticking with this.=C2=A0 I&#39;ll have a discussion with E=
ttus R&amp;D to<br>
&gt; see if this is a known issue and/or if there&#39;s a workaround.<br>
&gt;<br>
&gt; Remind me which version of UHD you&#39;re using?<br>
<br>
<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000bd7377059ff63718--


--===============3985884200560581486==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3985884200560581486==--


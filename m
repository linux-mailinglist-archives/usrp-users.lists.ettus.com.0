Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 655A6177CD6
	for <lists+usrp-users@lfdr.de>; Tue,  3 Mar 2020 18:09:28 +0100 (CET)
Received: from [::1] (port=45266 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j9B2t-0000Vj-F5; Tue, 03 Mar 2020 12:09:27 -0500
Received: from mail-lf1-f52.google.com ([209.85.167.52]:36142)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter@ettus.com>)
 id 1j9B2p-0000Jg-R7
 for usrp-users@lists.ettus.com; Tue, 03 Mar 2020 12:09:23 -0500
Received: by mail-lf1-f52.google.com with SMTP id s1so3428509lfd.3
 for <usrp-users@lists.ettus.com>; Tue, 03 Mar 2020 09:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ONz+aov6V13Slbrr1MXQ7J9tsiQy7m6Nfxo9lDFHAZk=;
 b=Pa4xS6xRsk+htMyEcp1zKT37cKGOGagHbYPMdahGlh/lbMawdVx7mKboiXrDCTvSqe
 sbOfL8nHLpw7bw6ZRpZLkjySgzFurqDX+lyxuhntfAqYEdAd7U2cCMof0yV1doch87Es
 nPRw0culb7ZSZ6Iyu0srmzOzKgMbYcPJrZnSijayEE4MKrPaRLQ97+LLGcDBtSlsfBXR
 /Jg49SyvZ1clHIYa3SHG0jPyWnYh/5D+y/iU+a9K0GhsKfR3Mxu6TsnfO5cLtKK7A8sM
 G1FyJNYcfW1cb2eumnUl4C525YrHSnl+ecFYrSo6oolkgIY0pY2x8efsa1oxummgvpT5
 ceDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ONz+aov6V13Slbrr1MXQ7J9tsiQy7m6Nfxo9lDFHAZk=;
 b=BKaGojRsqg1rAEaD+Fb+N0QVC3dTW2NMUUbT/FKIrNxT1onswMQVmJbb7W0J4PNF9L
 AwbFvg4ELItfCk1c9pS/2Ad1gl2dSLtP6Og4QnaEvqjDIHFwcUi4yPzEHPsVBtGsTkQB
 11IDoTWHJ5kAsQZdMWu+V2nJJ6YeajfRI1jDhndaljjgIH+2vTTtrk7sIh+BgCUvcBdK
 pfyDeOiRHDpyXk6KK6aCmfa/KJn9ivik63frFaIkAI5GMl7yK/DiAG1URkTbpLdbA++q
 Z/lZDweUMy/VM+h2CoII4FmGwCi1H1HR6EgB9HKc1uX5dSRaNi59GyDDm/2c7rum7BT4
 ajyQ==
X-Gm-Message-State: ANhLgQ0iXs/iJVt+nztmVFg/e2sRLd2fXqG4KKCu+9AjLYeBzc/xeXNH
 GbUMvZMBsWVArCaU4Z49zp4XSwPdwi3cBUH5x3rOMbZM
X-Google-Smtp-Source: ADFU+vt1Voa7fZBPeL2fNbpHe49LMUH7dHYrL+Sifbh84qZ32M91FxdIGLwvFnIsMhzakFFs8Ega4GKrdhVyxDwD2Ik=
X-Received: by 2002:ac2:5473:: with SMTP id e19mr3484689lfn.202.1583255322557; 
 Tue, 03 Mar 2020 09:08:42 -0800 (PST)
MIME-Version: 1.0
References: <trinity-6d081d85-efab-4ee6-9dfd-d15b3f6ff1b5-1583161440082@3c-app-gmx-bs64>
 <CAB__hTSgAJcWu=AwsRYs6HmGYMOqk1kAKC4fFgmVWVd8Fw0THQ@mail.gmail.com>
In-Reply-To: <CAB__hTSgAJcWu=AwsRYs6HmGYMOqk1kAKC4fFgmVWVd8Fw0THQ@mail.gmail.com>
Date: Tue, 3 Mar 2020 11:08:31 -0600
Message-ID: <CANf970YbM=F5UBzKQsQ2jGH4X=BKScx1YbNJ=TFhEKfDg-XBww@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
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
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: Lukas Haase <lukashaase@gmx.at>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1770164241380003231=="
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

--===============1770164241380003231==
Content-Type: multipart/alternative; boundary="00000000000017140d059ff65b87"

--00000000000017140d059ff65b87
Content-Type: text/plain; charset="UTF-8"

For what it's worth, I was able to reproduce the behavior described here,
but didn't get to dig into it much. My leading suspicion would be what Rob
mentioned about timestamping. Lukas' code sets a command time, but I'm not
clear on how timestamp metadata for packets being sent to the radio are
handled. Might be a good question to loop the discuss-gnuradio mailing list
in on?

Sam Reiter

On Tue, Mar 3, 2020 at 10:59 AM Rob Kossler via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I wonder if the issue is related to a missing time stamp on the baseband
> samples going from GR to UHD.  If the stream does not have a time stamp,
> the DUC is unable to apply the timed command because the DUC does not
> really know the time - it must pull the time from the streaming samples.
> This is in contrast to the radio block which does have access to time and
> can apply timed commands by referring to the motherboard clock.
>
> I am not too familiar with GR so I'm not sure how to know if GR is putting
> a time stamp on the streaming samples.
> Rob
>
> On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi Marcus,
>>
>> Thank you that would be amazing!
>>
>> I followed the tutorial and built everything from source:
>>
>> $ lsb_release -a
>> No LSB modules are available.
>> Distributor ID: Ubuntu
>> Description:    Ubuntu 18.04.4 LTS
>> Release:        18.04
>> Codename:       bionic
>> $ uname -a
>> Linux sdr 5.3.0-40-generic #32~18.04.1-Ubuntu SMP Mon Feb 3 14:05:59 UTC
>> 2020 x86_64 x86_64 x86_64 GNU/Linux
>> $ cd uhd
>> $ git status
>> HEAD detached at v3.15.0.0
>> $ cd ../gnuradio
>> $ git status
>> HEAD detached at v3.7.14.0
>>
>>
>> Thank you!
>>
>> Lukas
>>
>>
>>
>> PS: For some reason I sometimes do not get responses from this list. I
>> just saw it looking at the mailman archives. Hence I cannot respond (to
>> keep headers intact) but need to create a new message and manually "quote".
>> I hope that still preserves the context somehow.
>>
>>
>>
>> Marcus Leech wrote:
>> > On 02/28/2020 01:01 PM, Lukas Haase via USRP-users wrote:
>> >> Hi again,
>> >>
>> >> I created a minimum example (gnuradio) that shows the issue described
>> below.
>> >> To summarize: Retuning to a different dsp frequency on an USRP X310
>> (+UBX160) does not work (command ignored) ONLY if a timed command (in
>> future is used).
>> >> The code shows it in a simple manner. Commenting out the single line
>> with set_command_time makes the example work.
>> >>
>> >> I am absolutely out of ideas and would appreciate any input!
>> >>
>> >> Best,
>> >> Lukas
>> > Lukas.
>> >
>> > Thanks for sticking with this.  I'll have a discussion with Ettus R&D to
>> > see if this is a known issue and/or if there's a workaround.
>> >
>> > Remind me which version of UHD you're using?
>>
>>
>>
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000017140d059ff65b87
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For what it&#39;s worth, I was able to reproduce the behav=
ior described here, but didn&#39;t get to dig into it much. My leading susp=
icion would be what Rob mentioned about timestamping. Lukas&#39; code sets =
a command time, but I&#39;m not clear on how timestamp metadata for packets=
 being sent to the radio are handled. Might be a good question to loop the =
discuss-gnuradio mailing list in on?<div><div><br clear=3D"all"><div><div d=
ir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><di=
v dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=A0</div></div></div></div=
></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, Mar 3, 2020 at 10:59 AM Rob Kossler via USRP-use=
rs &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr">I wonder if the issue is related to a missing time sta=
mp on the baseband samples going from GR to UHD.=C2=A0 If the stream does n=
ot have a time stamp, the DUC is unable to apply the timed command because =
the DUC does not really know the time - it must pull the time from the stre=
aming samples. This is in contrast to the radio block which does have acces=
s to time and can apply timed commands by referring to the motherboard cloc=
k.<div><br></div><div>I am not too familiar with GR so I&#39;m not sure how=
 to know if GR is putting a time stamp on the streaming samples.<br><div>Ro=
b</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, Mar 2, 2020 at 10:04 AM Lukas Haase via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users=
@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi Marcus,<br>
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
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000017140d059ff65b87--


--===============1770164241380003231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1770164241380003231==--


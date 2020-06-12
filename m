Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDFE1F7EB6
	for <lists+usrp-users@lfdr.de>; Sat, 13 Jun 2020 00:06:24 +0200 (CEST)
Received: from [::1] (port=54554 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjrob-0002We-08; Fri, 12 Jun 2020 18:06:21 -0400
Received: from mail-il1-f180.google.com ([209.85.166.180]:34259)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <bistromath@gmail.com>)
 id 1jjroW-0002O6-Ef
 for usrp-users@lists.ettus.com; Fri, 12 Jun 2020 18:06:16 -0400
Received: by mail-il1-f180.google.com with SMTP id x18so10202494ilp.1
 for <usrp-users@lists.ettus.com>; Fri, 12 Jun 2020 15:05:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FVSlDo1/JL1ZpsNcEI/qWlaiJw9sogufoWBf1IbNuzI=;
 b=Kb5fqJzOLoqMjCEcewwp2ajMRBBvQ7cHmj33Q31qOYv8jzeoPItR+K87cNE4fVvdoH
 iTPOco+9pOwlZDQH9WnUKjVEO6NWhoMUvQKW3KFX+bnSxNhCHju92RsaKAhwIu2H9WXa
 bylzrbQLtlEJaMVLHexyVIwkP5yXv+nJ5iinHxC9vcUKYwFzjkWmlu36DDnnd9DF2yU4
 HTNnlfz0B63kzAxUmbOx2NsstHL4pE65QBu9FfkDscdXbcNNj3Q8HEM69Qdrah5Pimar
 o8TaXSFjsjVDiOy26v30AKX2ORgLE4Xfwdr9Y4lXzCZk9qghaeIL2gzAN2IuTQuCu8pY
 hw4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FVSlDo1/JL1ZpsNcEI/qWlaiJw9sogufoWBf1IbNuzI=;
 b=SizY46sh8gkKC4dmbV/H16bq8hPRFo7jhOhRcSeZh8KwBKq6obg/hozHPPHtsMG8ir
 h/Vys1KjltgM4ONB5QlSAYZwqARoH8DVviCjeoaU1E5FT1FrzLeisbxKjl/nEdEGQyDU
 r6cVDB4M4qirbA2cK49hQwq+qSlfgcwLf/nhg8jxlV9dRvkBI46upZ3tmnfHLAXqNOhK
 Rb4U9Vu0M/LEaDlePj5KfVzEu0EewyWYoGG1iTRP8RmunVWv/qgo5j+v3uVuQPniTfHf
 qCnBMJrPAd3svJYKSCo0JLLlkuAhcs0jQW+BWhCGJQFz70HevXJEmUWRderiobZs6UxZ
 tgtg==
X-Gm-Message-State: AOAM5308fO57d1KyjrE0wf3WvqTysq66u6dGlcIBP9m3rElF9NLujQcP
 IzT3YgRTLeDUDMkXFTTEdIAZdEZ+9KfOtnkOBn8=
X-Google-Smtp-Source: ABdhPJwZGr9liahi9X0GGVceAIUI7sPKyoMTrtLEFB1gJV7fI1MH97Fpvkl0jzplATnHKqeoT+2033i416Cr5T/XhVA=
X-Received: by 2002:a92:cd49:: with SMTP id v9mr14712669ilq.272.1591999535650; 
 Fri, 12 Jun 2020 15:05:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAH2Hh71qD9o27hGbe3DEtZkgXyWsfcScNX-RB6NbuOCq5DVUGg@mail.gmail.com>
In-Reply-To: <CAH2Hh71qD9o27hGbe3DEtZkgXyWsfcScNX-RB6NbuOCq5DVUGg@mail.gmail.com>
Date: Fri, 12 Jun 2020 15:05:24 -0700
Message-ID: <CA+JMMq9n4LDNc_8ZjDm=Wpu04V1jALL4Z-CfkvTJ0__aH1Yzjg@mail.gmail.com>
To: Aaron Smith <aarsmith54@gmail.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Precise Time Synchronization In B200/N210
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
From: Nick Foster via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nick Foster <bistromath@gmail.com>
Content-Type: multipart/mixed; boundary="===============6106217984128544506=="
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

--===============6106217984128544506==
Content-Type: multipart/alternative; boundary="000000000000ce1d1d05a7ea46bd"

--000000000000ce1d1d05a7ea46bd
Content-Type: text/plain; charset="UTF-8"

The change in time of arrival with B200s is due to phase ambiguity. Do you
have a 10MHz reference shared between your devices as well?

Don't know why N210 has that off-by-one timestamp. I'm guessing that
there's an extra flop in the logic for the PPS timing chain somewhere -- as
in, the clock starts ticking on the first tick after PPS comes in. I've
made that error about half a million times, myself.

Nick

On Fri, Jun 12, 2020 at 2:23 PM Aaron Smith via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hello all,
>
> I have two separate, but related, questions.
>
> I am trying to trigger an RF transmission every second, and I am receiving
> the transmission with a receiver that has very precise time stamps. I am
> driving the receiver with the same 1 PPS source as the B200 and N210. For
> my simple test, I want the time of arrival at the receiver to register at 1
> PPS + propagation delay of the RF coax cable + the USRP front end delay. In
> all cases I am running UHD 3.15.LTS
>
> With the N210 I can achieve this. However when I call
>
> usrp->set_time_next_pps(uhd::time_spec_t(0.0));
>
> and poll the last pps time, I see that it is consistently 20 ns before a
> second. That is, the pps shows at:
>
> 999999980 ns
> 1999999980 ns
> 2999999980 ns
>
> If I call usrp->set_time_next_pps(uhd::time_spec_t(20.0e-9)); then the 1
> PPS registers on the second. It's almost like the clock is biased by 20 ns.
> I have observed this across 3 different N210s. What could be causing this?
>
> With the B200, every time I destroy and recreate the uhd::usrp::multi_usrp
> there is a random change in the time of arrival at the receiver that
> appears to be uniformly distributed between 0 and 1/master_clock_rate. Is
> this expected? The Ettus website says "All functions that directly interact
> with the AD93xx (tuning, gain change, etc) are subject to the scheduling of
> the AD93xx. The determinism of these operations are not guaranteed. "
>
> Is this what I am experiencing?
>
> Thank you for the help!
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000ce1d1d05a7ea46bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The change in time of arrival with B200s is due to ph=
ase ambiguity. Do you have a 10MHz reference shared between your devices as=
 well?</div><div><br></div><div>Don&#39;t know why N210 has that off-by-one=
 timestamp. I&#39;m guessing that there&#39;s an extra flop in the logic fo=
r the PPS timing chain somewhere -- as in, the clock starts ticking on the =
first tick after PPS comes in. I&#39;ve made that error about half a millio=
n times, myself.<br></div><div><br></div><div>Nick<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 12,=
 2020 at 2:23 PM Aaron Smith via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello al=
l,</div><div><br></div><div>I have two separate, but related, questions.</d=
iv><div><br></div><div>I am trying to trigger an RF transmission every seco=
nd, and I am receiving the transmission with a receiver that has very preci=
se time stamps. I am driving the receiver with the same 1 PPS source as the=
 B200 and N210. For my simple test, I want the time of arrival at the recei=
ver to register at 1 PPS + propagation delay of the RF coax cable + the USR=
P front end delay. In all cases I am running UHD 3.15.LTS<br></div><div><br=
></div><div>With the N210 I can achieve this. However when I call=20
<pre>usrp-&gt;set_time_next_pps(uhd::time_spec_t(0.0));</pre>

</div><div>and poll the last pps time, I see that it is consistently 20 ns =
before a second. That is, the pps shows at:</div><div><br></div><div>999999=
980 ns<br></div><div>1999999980 ns<br></div><div>2999999980 ns<br></div><di=
v><br></div><div>If I call=20
usrp-&gt;set_time_next_pps(uhd::time_spec_t(20.0e-9)); then the 1 PPS regis=
ters on the second. It&#39;s almost like the clock is biased by 20 ns. I ha=
ve observed this across 3 different N210s. What could be causing this?</div=
><div><br></div><div>With the B200, every time I destroy and recreate the=
=20
uhd::usrp::multi_usrp there is a random change in the time of arrival at th=
e receiver that appears to be uniformly distributed between 0 and 1/master_=
clock_rate. Is this expected? The Ettus website says
&quot;All functions that directly interact with the AD93xx (tuning, gain=20
change, etc) are subject to the scheduling of the AD93xx. The=20
determinism of these operations are not guaranteed. &quot;<br></div><div><b=
r></div><div>Is this what I am experiencing? <br></div><div><br></div><div>=
Thank you for the help!<br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000ce1d1d05a7ea46bd--


--===============6106217984128544506==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6106217984128544506==--


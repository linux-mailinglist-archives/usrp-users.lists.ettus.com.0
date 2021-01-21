Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E352FF6A6
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 22:00:48 +0100 (CET)
Received: from [::1] (port=51400 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2h4N-0003Jq-Vv; Thu, 21 Jan 2021 16:00:43 -0500
Received: from mail-ot1-f48.google.com ([209.85.210.48]:45264)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l2h4K-0003CP-Ot
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 16:00:40 -0500
Received: by mail-ot1-f48.google.com with SMTP id n42so2997686ota.12
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 13:00:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Gy87uYJ9C478jvlccAhuutkMzhJB6QKO0pOUWB9SCw4=;
 b=EGCXF/T/J32atPdENW5SZCg/G3Q8O6AcZ6OLFueoF4sE4NilJgpZlwkFUOSvolNthf
 5JDQjq8qxDyThtWk/Y7JuqQfPCVWC1U8kYSZ1acVh86BeTtEYitSrB49JuS+x3hqr8Zm
 /0G8qGS890D5PKuJ2s+AU/Id8tTQdgOktZc4PyVH3/U/dTVKEQs0p68GQcfk7PYdhAhC
 PT1xQRJGoMUbQoLDD4OUyVkqkb4t0OEbrPT/WFrssj9yF7iDQ8HQ6liGGYGtn4l6YvjU
 WvEz2c6wEn5ZBPa4gTGwoAtV5PQy+AGG0hXYe94YEs7sXMOf1wFQk2ab/ruz+DF+zKJM
 /JZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Gy87uYJ9C478jvlccAhuutkMzhJB6QKO0pOUWB9SCw4=;
 b=Lqoyd7qknPN9pmkawdZcZb5DRO58+d+dkvOgq1rnUFbRiaaHTTS0onXCUgmZf2b8Pp
 Mj4Re4CsciCQTZphB7vu3hqF6LFQHFoMUswMGBSSeR//yxbyw9gy+RxdYmV+d8wlQEXz
 Lfjq8mkgp0CX0x104To5erdvkEs3IMyNpPG+e7N08zrkm3BO4Kgn8u8I+HdSvfgzfKls
 zoVr5BeVsUKgyZixSn8G/P1Hzsqjb20E6dkNUVw+XKv4rVjhz7u/At+vghV+mRY7GQ9U
 LlYk+vAT/CzRAD3x9wJbTIp8+VVMrEyyvZZSm/GlzXTU1Ld8AoI3NvG0Vqmea5vB2K/O
 rfYg==
X-Gm-Message-State: AOAM532sX7di/YdGzaso2187TXOQbTVvjiysuIVxKc2RoBXgnMOns/Uj
 6EJfHUqwFfwVCUNY6jCO7MiueRtWHEuNF4AkkBa01Q==
X-Google-Smtp-Source: ABdhPJwS4Pg5ETIxjRWzy+crcukKTUlUGgdSg3Uh5n/vDArLBZnfeR1ZnlTdHCu3BVPYshS549/LEda2MJTF2TbbGZw=
X-Received: by 2002:a05:6830:1587:: with SMTP id
 i7mr759301otr.301.1611262799833; 
 Thu, 21 Jan 2021 12:59:59 -0800 (PST)
MIME-Version: 1.0
References: <CABD0DOsMsDopeeSyOGkZmC2UuFgt=Abf3yO_fw2hXfva6V3hgA@mail.gmail.com>
In-Reply-To: <CABD0DOsMsDopeeSyOGkZmC2UuFgt=Abf3yO_fw2hXfva6V3hgA@mail.gmail.com>
Date: Thu, 21 Jan 2021 15:59:49 -0500
Message-ID: <CAB__hTTj4g2S30uSsOZYgAn48E1PX4M+w3-GzBTtO2GvF6y=9A@mail.gmail.com>
To: Glenn Hazelwood <hazelnutvt04@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] N310 Tuning Two Channels with Two Threads
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
Content-Type: multipart/mixed; boundary="===============6183939446564742628=="
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

--===============6183939446564742628==
Content-Type: multipart/alternative; boundary="000000000000d331da05b96f5add"

--000000000000d331da05b96f5add
Content-Type: text/plain; charset="UTF-8"

I don't know for certain, but I think it should work.  You will need to use
2 channels from different daughterboards (e.g., channels 0 and 2) since
each daughterboard shares the same rx LO.
Rob

On Thu, Jan 21, 2021 at 2:57 PM Glenn Hazelwood via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I have an N310 and I wish to scan from 10 MHz to 5910 MHz with two
> channels. The frontend bandwidth is 100 MHz. So I do 60 tunings overall. I
> am directly using the UHD 3.15.0.0 C++ API
>
> The retune time is typically ~120 ms. My sample rate is 125 Msps.
> Therefore, the time to receive samples is relatively small. For example,
> receiving time for 32768 samples is ~1.3 ms. WIth one thread and one
> channel, my overall tune and receive time for the 60 tunings is ~7200 ms.
>
> I wanted to try to reduce the overall runtime by using two threads and two
> channels. One thread would do half the tunings and the other thread would
> do the other half at the same time.
>
> I see that I can make separate rx_streamers in separate threads, each with
> its own channel to receive samples. I think rx_streamers[chan].recv()
> should work for two threads. I'm not so confident about
> 'usrp->set_rx_frequency()' for two threads.
>
> Is it possible to have two separate threads each tune to different
> frequencies at the same time with the N310?
>
> Also: Is there a way to search the Archives to see if someone has already
> asked this question. Google doesn't always seem to help.
>
> -
> Diftor heh smusma
> -Famous Vulcan Phrase ;)
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d331da05b96f5add
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I don&#39;t know for certain, but I think it should w=
ork.=C2=A0 You will need to use 2 channels from different daughterboards (e=
.g., channels 0 and 2) since each daughterboard shares the same rx LO.</div=
><div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Jan 21, 2021 at 2:57 PM Glenn Hazelwood via USRP-users &lt=
;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">I have an N310 and I wish to scan from 10=C2=A0MHz to 5910 M=
Hz with two channels. The frontend bandwidth is 100 MHz. So I do 60 tunings=
 overall. I am directly using the UHD 3.15.0.0 C++ API<div><br clear=3D"all=
"><div>The retune time is typically ~120 ms. My sample rate is 125 Msps. Th=
erefore, the time to receive samples is relatively small. For example, rece=
iving time for 32768 samples is ~1.3 ms. WIth one thread and one channel, m=
y overall tune and receive time for the 60 tunings is ~7200 ms.=C2=A0</div>=
<div><br></div><div>I wanted to try to reduce the overall runtime by using =
two threads and two channels. One thread would do half the tunings and the =
other thread would do the other half at the same time.=C2=A0</div><div><br>=
</div><div>I see that I can make separate=C2=A0rx_streamers in separate thr=
eads, each with its own channel to receive samples. I think rx_streamers[ch=
an].recv() should work for two threads. I&#39;m not so confident about &#39=
;usrp-&gt;set_rx_frequency()&#39; for two threads.</div><div><br></div><div=
>Is it possible to have two separate threads each tune to different frequen=
cies at the same time with the N310?</div><div><br></div><div>Also: Is ther=
e a way to search the Archives to see if someone has already asked this que=
stion. Google doesn&#39;t always seem to help.<br></div><div><br></div><div=
>-=C2=A0</div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr"><span=
 style=3D"line-height:19.0469px;background-color:rgb(255,255,255)"><font co=
lor=3D"#000000" face=3D"trebuchet ms, sans-serif">Diftor heh smusma<br></fo=
nt></span></div><div><span style=3D"line-height:19.0469px;background-color:=
rgb(255,255,255)"><font color=3D"#000000" face=3D"trebuchet ms, sans-serif"=
>-Famous Vulcan Phrase ;)<br></font></span></div></div></div></div></div></=
div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000d331da05b96f5add--


--===============6183939446564742628==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6183939446564742628==--


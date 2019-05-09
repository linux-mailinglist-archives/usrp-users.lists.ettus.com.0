Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F295818C22
	for <lists+usrp-users@lfdr.de>; Thu,  9 May 2019 16:40:27 +0200 (CEST)
Received: from [::1] (port=60444 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hOkDi-0003Jv-Tu; Thu, 09 May 2019 10:40:26 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:46094)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <dwwkelly@gmail.com>) id 1hOkDA-0002yE-O3
 for usrp-users@lists.ettus.com; Thu, 09 May 2019 10:40:22 -0400
Received: by mail-oi1-f193.google.com with SMTP id 203so2035724oid.13
 for <usrp-users@lists.ettus.com>; Thu, 09 May 2019 07:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=uCrAupgVN5UrkrLjl/KB4dAIRW1ZaFUIvMrp7LNVBhA=;
 b=aRtCBKbE2PZa69ForSxzMU8eSt3YlL+w5I9W5pv1Aok2/QabOZq4FemA74lZwwhahg
 CtpkId2P5hOC3+ypoL41ecJSlsyefmlJz/9fkgxd2wpw3EFgv3roB/c6IichM1E28x23
 KwjXJ5lYav91oBj3tBBfS8WKBPa9qN7BFj+rwKn/vopaegWpsMOeFrz1CMA7wU2N/O/h
 y0/Zu74gTQhljRtKZYI3iWk2KSWz4IFNVSurLcBErhdQnTvxJhEHUcWIJwNAla0krVe0
 hg27vJcUJrV35DOKXvo7pi6QAOLJNX0Gt92/r9AcrQBOaIAGKskQWT4jboIkv3qrda7N
 mR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=uCrAupgVN5UrkrLjl/KB4dAIRW1ZaFUIvMrp7LNVBhA=;
 b=cseSX+SuKIazxR9zwq2ZSD/FlISqQewYN2D6SumhwpO2qmKEt7cA3JWYNLaMMclwzc
 jkr8BlB3CTD3Rp86MwPl1LyezrZrFJKJ4EW1gacRYY6Pqf5Vbz6y4PgiI1izSR4PSAZ9
 SkduRTUFh+S8d8XXSEBmf9sxcgAv2NQKDVbOHa7cnEVBfVkgztLcK6egPl0s2CdEML9b
 eBrAo760WgjM4XAFqoqru9AzvW8zhsIIUifKpqAQbjF6xu7A3vhR2emBwo2nZZbG96BE
 BijWPTSV6ChkFbOJ0wfe4HDJP6B6VAGr5oDh5eyNXeQef8ezFYf0XlVBVb83eU8DsUdY
 9ruw==
X-Gm-Message-State: APjAAAXremJC4I/vQ2dOcxsU2N/FdlD8xlUGmY+c6BUudv36vnra07Kv
 K0Nj6WNxopCtf9UM0nCuysYmT/KY7SYEldfh8isb1Z/L
X-Google-Smtp-Source: APXvYqyRG2SHvaXfFkRHxKTeNZ6buHq7ttJr9XcVCAvce1No7YD+xU79MX3Pgc7nvYwyRr5poYECOCjKqclcXfeD1gg=
X-Received: by 2002:aca:4d48:: with SMTP id a69mr1740161oib.113.1557412751701; 
 Thu, 09 May 2019 07:39:11 -0700 (PDT)
MIME-Version: 1.0
References: <5C962B24-32A4-4F26-BE53-67D6DD7F66E7@lmco.com>
In-Reply-To: <5C962B24-32A4-4F26-BE53-67D6DD7F66E7@lmco.com>
Date: Thu, 9 May 2019 10:39:00 -0400
Message-ID: <CAANLyubLL9ZxzhRd72jzi3knoL_TwV91BUKoTH0+0Bm81s=DhA@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] X310 witn TwinRX: master_clock_rate issue
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Devin Kelly via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Devin Kelly <dwwkelly@gmail.com>
Content-Type: multipart/mixed; boundary="===============7306592068493277854=="
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

--===============7306592068493277854==
Content-Type: multipart/alternative; boundary="000000000000d57db6058875699d"

--000000000000d57db6058875699d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sorry to revive an old post but I'm having the same problem with UHD
3.12.0.0.  Am I doing something wrong with uhd_rx_cfile or should I just
upgrade to a newer UHD?

$ uhd_rx_cfile -r 10e6 -f 850e6 -a
'args=3D192.168.40.2,master_clock_rate=3D200e6' tmp.dat
[INFO] [UHD] linux; GNU C++ version 4.8.5 20150623 (Red Hat 4.8.5-36);
Boost_105300; UHD_3.12.0.heads-v3.12.0.0-0-gec786351
[WARNING] [X300] Cannot update master clock rate! X300 Series does not
allow changing the clock rate during runtime.
[WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
MHz. Actual rate is: 100 MHz.
[WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
MHz. Actual rate is: 100 MHz.
[UHD_RX] Defaulting to mid-point gains:
[UHD_RX] Channel 0 gain: 49.5 dB
^C

Thanks,
Devin

On Thu, Jan 17, 2019 at 12:48 PM Rigney, Kevin E via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I=E2=80=99m working with the TwinRX and am having the same results as Ema=
nuel. I
> was ignoring the warning about the sample rate but you said that it must
> run at 200MHz. Can you explain why UHD sets the sample rate to 100MHz if
> 200 is required?
>
> Thanks,
>
> -Kevin
>
> On Mon, 14 Jan 2019 at 7:06 AM Emanuel via USRP-users <
> usrp-users@lists.ettus.com<mailto:usrp-users@lists.ettus.com>> wrote:
>
> Dear Martin,
>
> thank you for clarification. Yes, please add this to the manual. We bough=
t
> those TwinRX for some phase-coherent LTE signal reception, and now they
> seem to be not useful at all (without effort spent in sample rate
> conversion in post-processing etc.)
>
> I'm still wondering about the master clock rate though: I tried the
> benchmark with the following settings: ./benchmark_rate --args
> "master_clock_rate=3D200e6" --rx_subdev A:0 --rx_rate 10e6
> The TwinRX is mounted on slot A and a CBX-120 is mounted on slot B. I
> simply wanted a streaming test on the first TwinRX channel.
> During device initialization I get the following warnings, see below. Can
> you please comment on them?
>
> [INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)
> [WARNING] [X300] Cannot update master clock rate! X300 Series does not
> allow changing the clock rate during runtime.
> [WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200
> MHz. Actual rate is: 100 MHz.
> Using Device: Single USRP:
>   Device: X-Series Device
>   Mboard 0: X310
>   RX Channel: 0
>     RX DSP: 0
>     RX Dboard: A
>     RX Subdev: TwinRX RX0
>   TX Channel: 0
>     TX DSP: 0
>     TX Dboard: A
>     TX Subdev: Unknown (0x0094) - 0
>   TX Channel: 1
>     TX DSP: 0
>     TX Dboard: B
>     TX Subdev: CBX-120 TX
>
> [00:00:05.874991] Setting device timestamp to 0...
> .....
>
> Cheers,
> Emanuel
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000d57db6058875699d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Sorr=
y to revive an old post but I&#39;m having the same problem with UHD 3.12.0=
.0.=C2=A0 Am I doing something wrong with uhd_rx_cfile or should I just upg=
rade to a newer UHD?<br></div><div><br></div><div style=3D"margin-left:40px=
">$ uhd_rx_cfile -r 10e6 -f 850e6 -a &#39;args=3D192.168.40.2,master_clock_=
rate=3D200e6&#39; tmp.dat<br>[INFO] [UHD] linux; GNU C++ version 4.8.5 2015=
0623 (Red Hat 4.8.5-36); Boost_105300; UHD_3.12.0.heads-v3.12.0.0-0-gec7863=
51<br>[WARNING] [X300] Cannot update master clock rate! X300 Series does no=
t allow changing the clock rate during runtime.<br>[WARNING] [X300 RADIO] R=
equesting invalid sampling rate from device: 200 MHz. Actual rate is: 100 M=
Hz.<br>[WARNING] [X300 RADIO] Requesting invalid sampling rate from device:=
 200 MHz. Actual rate is: 100 MHz.<br>[UHD_RX] Defaulting to mid-point gain=
s:<br>[UHD_RX] Channel 0 gain: 49.5 dB<br>^C<br></div></div></div><div><br>=
</div><div>Thanks,</div><div>Devin<br></div><div><br></div><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jan 17, 2019 at 12=
:48 PM Rigney, Kevin E via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">I=E2=80=99m working with the TwinRX =
and am having the same results as Emanuel. I was ignoring the warning about=
 the sample rate but you said that it must run at 200MHz. Can you explain w=
hy UHD sets the sample rate to 100MHz if 200 is required?<br>
<br>
Thanks,<br>
<br>
-Kevin<br>
<br>
On Mon, 14 Jan 2019 at 7:06 AM Emanuel via USRP-users &lt;<a href=3D"mailto=
:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</=
a>&lt;mailto:<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
">usrp-users@lists.ettus.com</a>&gt;&gt; wrote:<br>
<br>
Dear Martin,<br>
<br>
thank you for clarification. Yes, please add this to the manual. We bought =
those TwinRX for some phase-coherent LTE signal reception, and now they see=
m to be not useful at all (without effort spent in sample rate conversion i=
n post-processing etc.)<br>
<br>
I&#39;m still wondering about the master clock rate though: I tried the ben=
chmark with the following settings: ./benchmark_rate --args &quot;master_cl=
ock_rate=3D200e6&quot; --rx_subdev A:0 --rx_rate 10e6<br>
The TwinRX is mounted on slot A and a CBX-120 is mounted on slot B. I simpl=
y wanted a streaming test on the first TwinRX channel.<br>
During device initialization I get the following warnings, see below. Can y=
ou please comment on them?<br>
<br>
[INFO] [0/DUC_1] Initializing block control (NOC ID: 0xD0C0000000000000)<br=
>
[WARNING] [X300] Cannot update master clock rate! X300 Series does not allo=
w changing the clock rate during runtime.<br>
[WARNING] [X300 RADIO] Requesting invalid sampling rate from device: 200 MH=
z. Actual rate is: 100 MHz.<br>
Using Device: Single USRP:<br>
=C2=A0 Device: X-Series Device<br>
=C2=A0 Mboard 0: X310<br>
=C2=A0 RX Channel: 0<br>
=C2=A0 =C2=A0 RX DSP: 0<br>
=C2=A0 =C2=A0 RX Dboard: A<br>
=C2=A0 =C2=A0 RX Subdev: TwinRX RX0<br>
=C2=A0 TX Channel: 0<br>
=C2=A0 =C2=A0 TX DSP: 0<br>
=C2=A0 =C2=A0 TX Dboard: A<br>
=C2=A0 =C2=A0 TX Subdev: Unknown (0x0094) - 0<br>
=C2=A0 TX Channel: 1<br>
=C2=A0 =C2=A0 TX DSP: 0<br>
=C2=A0 =C2=A0 TX Dboard: B<br>
=C2=A0 =C2=A0 TX Subdev: CBX-120 TX<br>
<br>
[00:00:05.874991] Setting device timestamp to 0...<br>
.....<br>
<br>
Cheers,<br>
Emanuel<br>
<br>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000d57db6058875699d--


--===============7306592068493277854==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7306592068493277854==--


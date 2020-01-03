Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B4412FD65
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 21:02:16 +0100 (CET)
Received: from [::1] (port=46892 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inT9C-0000WM-6F; Fri, 03 Jan 2020 15:02:14 -0500
Received: from mail-lj1-f178.google.com ([209.85.208.178]:36877)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1inT97-0000MM-Qu
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 15:02:10 -0500
Received: by mail-lj1-f178.google.com with SMTP id o13so33510671ljg.4
 for <usrp-users@lists.ettus.com>; Fri, 03 Jan 2020 12:01:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hI2YRDFBwAd61D+4mjq3hnxWXPb+opF66B3nXPeHyf4=;
 b=JydPr+Lik+7rCp1eSkDbTjCTlAuAuDem/UxDz5SsajG9nVyOhLiNzlu1IgbLnxJ2Sk
 v6CKfzhgDVaib28s2aFi3Alcv7cyPM6s3hjZ7rOZng3/5T6iAq+kSAwaqNyktP6HiFxw
 vU89Nt9wLgSir+YuAdpXrWbz7pd89hBbQ/jA+zJCXF4xjSHRhBvTS8zO1ajf3X4+2mLc
 x5U3aLg3zu7NVvb5ga8/oEsPgoncP5Fzas/zdAPOXve6fsfRjV1nzAiOrFkitJ9c0a0O
 w5NnMejAfzNzFKWd4ZB2JwSqf6WnKOXPwokwBlTYAQqBMhK6pa0Hsydj0esdBRb1+Esn
 W+DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hI2YRDFBwAd61D+4mjq3hnxWXPb+opF66B3nXPeHyf4=;
 b=t4SgL+deVmI4HlaWQ+uAnLZjXA3s6ZcDtBb03XCpMQJNkuAdTyfwVf9N0n4MoyHgsh
 6Ui/pnrCeDz4toPZKDh4Ge1dS0keRmXdasMnqd8aPZl1YZ0B77OdzHh9/URtBbXpF3Qb
 d0IbGLxznvvW1c72iGzWXmuQ6bsO8P2rcZJKPsI5sg4BMUn4TtOI2XZBJqoCZ3AGm390
 unQm4qEbXJE5vQr1QNFjXBfK/WsdpxB1wGKxjUbLfDA7qCCxl72AZWmWVAxyhoSfTp1a
 yEId62jBgMalk/ACjMpS7kydAvTftoUg5Ahqrzo6iaC7EBb5vivx4L99M7FMlRIvDUsa
 0ONw==
X-Gm-Message-State: APjAAAVEhQjpdBo7zo8inoo6zRVjeo+UJ76vlbI214AzJT7GCjKYeEnA
 dz3e/W3iShZ0c7t3kmS1KxT3vfb05rhLzkvVq/2gggdD
X-Google-Smtp-Source: APXvYqyhZWbg/nfKXGblWy72+MAwZNVM6cT98swE8znH3ul1TnN9Lnq8CbuubGrPxvIHOR1U+kNLHyc54VZKSpZIyZY=
X-Received: by 2002:a2e:9691:: with SMTP id q17mr52692323lji.91.1578081688529; 
 Fri, 03 Jan 2020 12:01:28 -0800 (PST)
MIME-Version: 1.0
References: <BN6PR19MB1635ECADF20FD97282F02D06A42D0@BN6PR19MB1635.namprd19.prod.outlook.com>
In-Reply-To: <BN6PR19MB1635ECADF20FD97282F02D06A42D0@BN6PR19MB1635.namprd19.prod.outlook.com>
Date: Fri, 3 Jan 2020 14:01:18 -0600
Message-ID: <CANf970YOQViU4LbeUTqSXd4-QsjyhS01qHOHcao96n=far9h2g@mail.gmail.com>
To: Jeff S <e070832@hotmail.com>
Subject: Re: [USRP-users] GPIO Example Failure on N310
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8237770414931897797=="
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

--===============8237770414931897797==
Content-Type: multipart/alternative; boundary="00000000000078c184059b41c69e"

--00000000000078c184059b41c69e
Content-Type: text/plain; charset="UTF-8"

Hey Jeff,

Could you give this a shot on 3.15.0.0 and let me know the results? Based
on that output, the issue looks confined to ATR but it's not something I've
seen reported up to this point.

If 3.15.0.0 shows this issue as well, I'll reproduce it on my end and get a
bug filed.

Sam Reiter
Ettus Research

On Fri, Dec 20, 2019 at 10:19 AM Jeff S via USRP-users <
usrp-users@lists.ettus.com> wrote:

> I built the UHD example, gpio.cpp (no modifications), and ran it on my
> N310 to start experimenting with the GPIO.  It returned with two failures:
>
> Testing ATR TX output...fail:
> Bit 2 should be set, but is not
>        Bit  10  9  8  7  6  5  4  3  2  1  0
>       CTRL:  0  0  0  0  0  0  0  1  1  1  1
>        DDR:  0  0  0  0  0  0  1  1  1  1  1
>     ATR_0X:  0  0  0  0  0  0  0  0  0  0  1
>     ATR_RX:  0  0  0  0  0  0  0  0  0  1  0
>     ATR_TX:  0  0  0  0  0  0  0  0  1  0  0
>     ATR_XX:  0  0  0  0  0  0  0  1  0  0  0
>        OUT:  0  0  0  0  0  0  0  0  0  0  0
>   READBACK:  1  1  1  1  1  1  0  0  0  0  1
>
> Testing ATR full duplex output...fail:
> Bit 3 should be set, but is not
>        Bit  10  9  8  7  6  5  4  3  2  1  0
>       CTRL:  0  0  0  0  0  0  0  1  1  1  1
>        DDR:  0  0  0  0  0  0  1  1  1  1  1
>     ATR_0X:  0  0  0  0  0  0  0  0  0  0  1
>     ATR_RX:  0  0  0  0  0  0  0  0  0  1  0
>     ATR_TX:  0  0  0  0  0  0  0  0  1  0  0
>     ATR_XX:  0  0  0  0  0  0  0  1  0  0  0
>        OUT:  0  0  0  0  0  0  0  0  0  0  0
>   READBACK:  1  1  1  1  1  1  0  0  0  0  1
>
> 2 tests failed
>
> Done!
>
>
> Is this something that I should be concerned about?
>
> If I compile and run the same example with my X310, everything passes.
>
> Here's the uhd_config_info --print-all from my N310:
>
> UHD 3.14.1.1-0-g0347a6d8
> Build date: Thu, 26 Sep 2019 01:26:32
> C compiler: GNU 7.3.0
> C++ compiler: GNU 7.3.0
> C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
> -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBER
> IO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon
> -oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot  -O2 -pipe -g
> -feliminate-unused-debug-types -fdebug-prefix-map=/home/oe-builder/bu
> ild/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=/usr/src/debug/uhd/3.14.1.1-r1
> -fdebug-prefix-map=/home/oe-build
> er/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot=
> -fdebug-prefix-map=/home/oe-builder/build/t
> mp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot-native=
>   -march=armv7-a -marm -mfpu=neon -mfloat-abi=
> hard -mcpu=cortex-a9
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroo
> t
> C++ flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
> -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIB
> ERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-ne
> on-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot  -O2 -pipe -g
> -feliminate-unused-debug-types -fdebug-prefix-map=/home/oe-builder/
> build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=/usr/src/debug/uhd/3.14.1.1-r1
> -fdebug-prefix-map=/home/oe-bui
> lder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot=
> -fdebug-prefix-map=/home/oe-builder/build
> /tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot-native=
>  -fvisibility-inlines-hidden  -march=armv7-a
>  -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi
> /uhd/3.14.1.1-r1/recipe-sysroot -fvisibility=hidden
> -fvisibility-inlines-hidden
> Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
> LIBERIO, USB, GPSD, MPMD, N300, N320, E320
> Install prefix: /usr
> Boost version: 1.66
> Libusb version: 1.0.23
> Package path: /usr
> Images directory: /usr/share/uhd/images
> ABI version string: 3.14.1
>
> Thanks,
> Jeff
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--00000000000078c184059b41c69e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Jeff,<div><br></div><div>Could you give this a shot on=
 3.15.0.0 and let me know the results? Based on that output, the issue look=
s confined to ATR but it&#39;s not something I&#39;ve seen reported up to t=
his point.=C2=A0</div><div><br></div><div>If 3.15.0.0 shows this issue as w=
ell, I&#39;ll reproduce it on my end and get a bug filed.=C2=A0</div><div><=
br></div><div><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmai=
l=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr">Sam Reiter=C2=
=A0<div>Ettus Research</div></div></div></div></div></div></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec=
 20, 2019 at 10:19 AM Jeff S via USRP-users &lt;<a href=3D"mailto:usrp-user=
s@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I built the UHD example, gpio.cpp (no modifications), and ran it on my N310=
 to start experimenting with the GPIO.=C2=A0 It returned with two failures:=
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<span>Testing ATR TX output...fail:<br>
</span>
<div>Bit 2 should be set, but is not<br>
</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0Bit =C2=A010 =C2=A09 =C2=A08 =C2=A07 =C2=A0=
6 =C2=A05 =C2=A04 =C2=A03 =C2=A02 =C2=A01 =C2=A00<br>
</div>
<div>=C2=A0 =C2=A0 =C2=A0 CTRL: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=
=A00 =C2=A00 =C2=A01 =C2=A01 =C2=A01 =C2=A01<br>
</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0DDR: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A0=
0 =C2=A00 =C2=A01 =C2=A01 =C2=A01 =C2=A01 =C2=A01<br>
</div>
<div>=C2=A0 =C2=A0 ATR_0X: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =
=C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A01<br>
</div>
<div>=C2=A0 =C2=A0 ATR_RX: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =
=C2=A00 =C2=A00 =C2=A00 =C2=A01 =C2=A00<br>
</div>
<div>=C2=A0 =C2=A0 ATR_TX: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =
=C2=A00 =C2=A00 =C2=A01 =C2=A00 =C2=A00<br>
</div>
<div>=C2=A0 =C2=A0 ATR_XX: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =
=C2=A00 =C2=A01 =C2=A00 =C2=A00 =C2=A00<br>
</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0OUT: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A0=
0 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00<br>
</div>
<div>=C2=A0 READBACK: =C2=A01 =C2=A01 =C2=A01 =C2=A01 =C2=A01 =C2=A01 =C2=
=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A01<br>
</div>
<div><br>
</div>
<div>Testing ATR full duplex output...fail:<br>
</div>
<div>Bit 3 should be set, but is not<br>
</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0Bit =C2=A010 =C2=A09 =C2=A08 =C2=A07 =C2=A0=
6 =C2=A05 =C2=A04 =C2=A03 =C2=A02 =C2=A01 =C2=A00<br>
</div>
<div>=C2=A0 =C2=A0 =C2=A0 CTRL: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=
=A00 =C2=A00 =C2=A01 =C2=A01 =C2=A01 =C2=A01<br>
</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0DDR: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A0=
0 =C2=A00 =C2=A01 =C2=A01 =C2=A01 =C2=A01 =C2=A01<br>
</div>
<div>=C2=A0 =C2=A0 ATR_0X: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =
=C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A01<br>
</div>
<div>=C2=A0 =C2=A0 ATR_RX: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =
=C2=A00 =C2=A00 =C2=A00 =C2=A01 =C2=A00<br>
</div>
<div>=C2=A0 =C2=A0 ATR_TX: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =
=C2=A00 =C2=A00 =C2=A01 =C2=A00 =C2=A00<br>
</div>
<div>=C2=A0 =C2=A0 ATR_XX: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =
=C2=A00 =C2=A01 =C2=A00 =C2=A00 =C2=A00<br>
</div>
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0OUT: =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A0=
0 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A00<br>
</div>
<div>=C2=A0 READBACK: =C2=A01 =C2=A01 =C2=A01 =C2=A01 =C2=A01 =C2=A01 =C2=
=A00 =C2=A00 =C2=A00 =C2=A00 =C2=A01<br>
</div>
<div><br>
</div>
<div>2 tests failed<br>
</div>
<div><br>
</div>
<span>Done!</span></div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt">Is t=
his something that I should be concerned about?</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt"><br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt"></di=
v>
If I compile and run the same example with my X310, everything passes.</div=
>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
Here&#39;s the uhd_config_info --print-all from my N310:
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<blockquote style=3D"margin-top:0px;margin-bottom:0px">
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<span>UHD 3.14.1.1-0-g0347a6d8<br>
</span>
<div>Build date: Thu, 26 Sep 2019 01:26:32<br>
</div>
<div>C compiler: GNU 7.3.0<br>
</div>
<div>C++ compiler: GNU 7.3.0<br>
</div>
<div>C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_LEV=
EL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBER<br>
</div>
<div>IO -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcort=
ex-a9 =C2=A0--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-ne=
on<br>
</div>
<div>-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot =C2=A0-O2 -pipe -g -f=
eliminate-unused-debug-types -fdebug-prefix-map=3D/home/oe-builder/bu<br>
</div>
<div>ild/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=3D=
/usr/src/debug/uhd/3.14.1.1-r1 -fdebug-prefix-map=3D/home/oe-build<br>
</div>
<div>er/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-=
r1/recipe-sysroot=3D -fdebug-prefix-map=3D/home/oe-builder/build/t<br>
</div>
<div>mp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-=
sysroot-native=3D =C2=A0 -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3D=
<br>
</div>
<div>hard -mcpu=3Dcortex-a9 =C2=A0--sysroot=3D/home/oe-builder/build/tmp-gl=
ibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroo<br>
</div>
<div>t<br>
</div>
<div>C++ flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=3D1 -DUHD_LOG_CONSOLE_L=
EVEL=3D2 -DUHD_LOG_FILE_LEVEL=3D2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIB<br>
</div>
<div>ERIO -march=3Darmv7-a -marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dco=
rtex-a9 =C2=A0--sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-=
ne<br>
</div>
<div>on-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot =C2=A0-O2 -pipe -g =
-feliminate-unused-debug-types -fdebug-prefix-map=3D/home/oe-builder/<br>
</div>
<div>build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=
=3D/usr/src/debug/uhd/3.14.1.1-r1 -fdebug-prefix-map=3D/home/oe-bui<br>
</div>
<div>lder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.=
1-r1/recipe-sysroot=3D -fdebug-prefix-map=3D/home/oe-builder/build<br>
</div>
<div>/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recip=
e-sysroot-native=3D =C2=A0-fvisibility-inlines-hidden =C2=A0-march=3Darmv7-=
a<br>
</div>
<div>=C2=A0-marm -mfpu=3Dneon -mfloat-abi=3Dhard -mcpu=3Dcortex-a9 =C2=A0--=
sysroot=3D/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gn=
ueabi<br>
</div>
<div>/uhd/3.14.1.1-r1/recipe-sysroot -fvisibility=3Dhidden -fvisibility-inl=
ines-hidden<br>
</div>
<div>Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests, LI=
BERIO, USB, GPSD, MPMD, N300, N320, E320<br>
</div>
<div>Install prefix: /usr<br>
</div>
<div>Boost version: 1.66<br>
</div>
<div>Libusb version: 1.0.23<br>
</div>
<div>Package path: /usr<br>
</div>
<div>Images directory: /usr/share/uhd/images<br>
</div>
<div>ABI version string: 3.14.1<br>
</div>
<span></span><br>
</div>
</blockquote>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Thanks,<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Jeff<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--00000000000078c184059b41c69e--


--===============8237770414931897797==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8237770414931897797==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C09B41361BC
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jan 2020 21:26:52 +0100 (CET)
Received: from [::1] (port=36330 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipeOJ-0004xg-Ko; Thu, 09 Jan 2020 15:26:51 -0500
Received: from mail-lj1-f175.google.com ([209.85.208.175]:36974)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ipeOE-0004qY-NX
 for usrp-users@lists.ettus.com; Thu, 09 Jan 2020 15:26:46 -0500
Received: by mail-lj1-f175.google.com with SMTP id o13so8655311ljg.4
 for <usrp-users@lists.ettus.com>; Thu, 09 Jan 2020 12:26:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qjRK+8N8dRKvJocX+h/bvEZuHeI/1RUxyCWr7JWlhGY=;
 b=uHrK1soTJUKWvX4NYNKcEiNzjY+trO0Ow5+gOoOoCBao7wyF1EiKCHpoFEsa0uq71M
 WfYZxoHWC0l0X0nuVIxprBXwdfc7fX6B4zp8uZR84+iYJtXTN4ThEy00NlIoH+QaXuUx
 cPrs2ff4jsIQrfUPdI9mrk76FoVNwl+q3m6JBHFdAX4JNMWZixIfgpZ+0pJwrKMwzGFV
 BCtCabdrEcBe5CWwm1fHXLCv5AKEuk0DU453u9y3nqylLrRelm/DXH5uCQE0J9thtEg8
 bfPEPbAeVdjnlJL5NDKMWo8Gjk+yM9Ws+Mnfwii3KfF63jHhDMw7mkwgiX0I2pcxVxyP
 bnzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qjRK+8N8dRKvJocX+h/bvEZuHeI/1RUxyCWr7JWlhGY=;
 b=c5DLmgmP/SP1g+qLhzDrV3MvaslSS+nU+Gi9Iq791Mb9LzFadyvItGQOnW2oFuI9aD
 w8ePlNxEPh9TJEbBYwAfxrEdjNAShM+dM4SrUBlyBN2auHdWkYxuhWr5LXgibCKg43VX
 /OIGFAIrpo1jAaBu/24Zf/PEskxi1SxglQxQ6b6B5QyRCyPaNk+8TpwSH6ubhFu+jb6x
 Coi0E5VhMNkTUVo980LW/QtEVYLMtLTsqIDlc1GzLS++ujUW8mmrKW1B57Y3iAs1HKRl
 YXxFqg6K2DDNlXyQTEPgWXKqdNpa6rBUts8gHZ25XD/7MgISK/6uadFW/m1fLHr5FdSF
 xFRA==
X-Gm-Message-State: APjAAAWW0X2QCs39z9QmJGwLAA8VbDRLcLgIcKrUn8u2cyCa0uRMFEhA
 j+6MdVvZHjfFRwRpCVBE6zAXn0TKFcCd9TZ8//n29Isp
X-Google-Smtp-Source: APXvYqw+TQcgw3SAGicZ+QBBXfBeB4JZldkZ6W/fG77Dd9RJvUGnUzIkbQ+STjmPVRAVi7up0PGP6ChuoXiT1z3UwME=
X-Received: by 2002:a2e:86c4:: with SMTP id n4mr7647606ljj.97.1578601565441;
 Thu, 09 Jan 2020 12:26:05 -0800 (PST)
MIME-Version: 1.0
References: <BN6PR19MB1635ECADF20FD97282F02D06A42D0@BN6PR19MB1635.namprd19.prod.outlook.com>
 <CANf970YOQViU4LbeUTqSXd4-QsjyhS01qHOHcao96n=far9h2g@mail.gmail.com>
 <CANf970bGoJ2tLgeEE_WMXW+7aGcHtdmTAmwwyBdEdH3Z711_3A@mail.gmail.com>
 <CY4PR19MB16373C3CA76A77DF1B984119A43F0@CY4PR19MB1637.namprd19.prod.outlook.com>
In-Reply-To: <CY4PR19MB16373C3CA76A77DF1B984119A43F0@CY4PR19MB1637.namprd19.prod.outlook.com>
Date: Thu, 9 Jan 2020 14:25:54 -0600
Message-ID: <CANf970bw3E3iUfZ0i2q6o1WSktdKaXwoAhPp8mPBq7rNX4920A@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============8235962312262759226=="
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

--===============8235962312262759226==
Content-Type: multipart/alternative; boundary="0000000000008ce8a7059bbad1f6"

--0000000000008ce8a7059bbad1f6
Content-Type: text/plain; charset="UTF-8"

Jeff,

I'd say it's worth trying. Do you currently have any cabling or external
connections to your GPIO port?

Sam Reiter
Ettus Research


On Mon, Jan 6, 2020 at 6:27 PM Jeff S <e070832@hotmail.com> wrote:

> Sam,
>
> Everything was downloaded from the images_downloader. I have not modified
> the FPGA image or any of the UHD code. I have just been trying to learn how
> to use the N310, and compiling examples on it.
>
> I will be back in the lab tomorrow. Should I go ahead and try installing
> 3.15.0.0?
>
> Jeff
>
>
>
> -------- Original message --------
> From: Sam Reiter <sam.reiter@ettus.com>
> Date: 1/6/20 4:46 PM (GMT-06:00)
> To: Jeff S <e070832@hotmail.com>
> Cc: usrp-users@lists.ettus.com
> Subject: Re: [USRP-users] GPIO Example Failure on N310
>
> Jeff,
>
> Follow-up on this. I ran the GPIO example on my N310 with 3.14.1.1
> (g0347a6d8) and all GPIO tests passed. Are your FPGA image and UHD release
> modified?
>
> Sam Reiter
> Ettus Research
>
> On Fri, Jan 3, 2020 at 2:01 PM Sam Reiter <sam.reiter@ettus.com> wrote:
>
>> Hey Jeff,
>>
>> Could you give this a shot on 3.15.0.0 and let me know the results? Based
>> on that output, the issue looks confined to ATR but it's not something I've
>> seen reported up to this point.
>>
>> If 3.15.0.0 shows this issue as well, I'll reproduce it on my end and get
>> a bug filed.
>>
>> Sam Reiter
>> Ettus Research
>>
>> On Fri, Dec 20, 2019 at 10:19 AM Jeff S via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> I built the UHD example, gpio.cpp (no modifications), and ran it on my
>>> N310 to start experimenting with the GPIO.  It returned with two failures:
>>>
>>> Testing ATR TX output...fail:
>>> Bit 2 should be set, but is not
>>>        Bit  10  9  8  7  6  5  4  3  2  1  0
>>>       CTRL:  0  0  0  0  0  0  0  1  1  1  1
>>>        DDR:  0  0  0  0  0  0  1  1  1  1  1
>>>     ATR_0X:  0  0  0  0  0  0  0  0  0  0  1
>>>     ATR_RX:  0  0  0  0  0  0  0  0  0  1  0
>>>     ATR_TX:  0  0  0  0  0  0  0  0  1  0  0
>>>     ATR_XX:  0  0  0  0  0  0  0  1  0  0  0
>>>        OUT:  0  0  0  0  0  0  0  0  0  0  0
>>>   READBACK:  1  1  1  1  1  1  0  0  0  0  1
>>>
>>> Testing ATR full duplex output...fail:
>>> Bit 3 should be set, but is not
>>>        Bit  10  9  8  7  6  5  4  3  2  1  0
>>>       CTRL:  0  0  0  0  0  0  0  1  1  1  1
>>>        DDR:  0  0  0  0  0  0  1  1  1  1  1
>>>     ATR_0X:  0  0  0  0  0  0  0  0  0  0  1
>>>     ATR_RX:  0  0  0  0  0  0  0  0  0  1  0
>>>     ATR_TX:  0  0  0  0  0  0  0  0  1  0  0
>>>     ATR_XX:  0  0  0  0  0  0  0  1  0  0  0
>>>        OUT:  0  0  0  0  0  0  0  0  0  0  0
>>>   READBACK:  1  1  1  1  1  1  0  0  0  0  1
>>>
>>> 2 tests failed
>>>
>>> Done!
>>>
>>>
>>> Is this something that I should be concerned about?
>>>
>>> If I compile and run the same example with my X310, everything passes.
>>>
>>> Here's the uhd_config_info --print-all from my N310:
>>>
>>> UHD 3.14.1.1-0-g0347a6d8
>>> Build date: Thu, 26 Sep 2019 01:26:32
>>> C compiler: GNU 7.3.0
>>> C++ compiler: GNU 7.3.0
>>> C flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1 -DUHD_LOG_CONSOLE_LEVEL=2
>>> -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR -DHAVE_LIBER
>>> IO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>>>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon
>>> -oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot  -O2 -pipe -g
>>> -feliminate-unused-debug-types -fdebug-prefix-map=/home/oe-builder/bu
>>> ild/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=/usr/src/debug/uhd/3.14.1.1-r1
>>> -fdebug-prefix-map=/home/oe-build
>>> er/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot=
>>> -fdebug-prefix-map=/home/oe-builder/build/t
>>> mp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot-native=
>>>   -march=armv7-a -marm -mfpu=neon -mfloat-abi=
>>> hard -mcpu=cortex-a9
>>>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroo
>>> t
>>> C++ flags: -DHAVE_CONFIG_H -DUHD_LOG_MIN_LEVEL=1
>>> -DUHD_LOG_CONSOLE_LEVEL=2 -DUHD_LOG_FILE_LEVEL=2 -DUHD_LOG_CONSOLE_COLOR
>>> -DHAVE_LIB
>>> ERIO -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>>>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-ne
>>> on-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot  -O2 -pipe -g
>>> -feliminate-unused-debug-types -fdebug-prefix-map=/home/oe-builder/
>>> build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1=/usr/src/debug/uhd/3.14.1.1-r1
>>> -fdebug-prefix-map=/home/oe-bui
>>> lder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot=
>>> -fdebug-prefix-map=/home/oe-builder/build
>>> /tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi/uhd/3.14.1.1-r1/recipe-sysroot-native=
>>>  -fvisibility-inlines-hidden  -march=armv7-a
>>>  -marm -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a9
>>>  --sysroot=/home/oe-builder/build/tmp-glibc/work/cortexa9hf-neon-oe-linux-gnueabi
>>> /uhd/3.14.1.1-r1/recipe-sysroot -fvisibility=hidden
>>> -fvisibility-inlines-hidden
>>> Enabled components: LibUHD, LibUHD - C API, Examples, Utils, Tests,
>>> LIBERIO, USB, GPSD, MPMD, N300, N320, E320
>>> Install prefix: /usr
>>> Boost version: 1.66
>>> Libusb version: 1.0.23
>>> Package path: /usr
>>> Images directory: /usr/share/uhd/images
>>> ABI version string: 3.14.1
>>>
>>> Thanks,
>>> Jeff
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>

--0000000000008ce8a7059bbad1f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Jeff,</div><div><br></div><div>I&#39;d say it&#39;s w=
orth trying. Do you currently have any cabling or external connections to y=
our GPIO port?<br></div><div><br></div><div><div><div dir=3D"ltr" class=3D"=
gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><=
div dir=3D"ltr">Sam Reiter <br><div>Ettus Research<br></div></div></div></d=
iv></div></div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Mon, Jan 6, 2020 at 6:27 PM Jeff S &lt;<a href=
=3D"mailto:e070832@hotmail.com">e070832@hotmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex">




<div>
<div>Sam,</div>
<div><br>
</div>
<div>Everything was downloaded from the images_downloader. I have not modif=
ied the FPGA image or any of the UHD code. I have just been trying to learn=
 how to use the N310, and compiling examples on it.</div>
<div><br>
</div>
<div>I will be back in the lab tomorrow. Should I go ahead and try installi=
ng 3.15.0.0?</div>
<div><br>
</div>
<div>Jeff</div>
<div id=3D"gmail-m_-4008979200261088173composer_signature">
<div dir=3D"auto" style=3D"font-size:85%;color:rgb(87,87,87)"><br>
</div>
</div>
<div><br>
</div>
<div><br>
</div>
<div>-------- Original message --------</div>
<div>From: Sam Reiter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D=
"_blank">sam.reiter@ettus.com</a>&gt; </div>
<div>Date: 1/6/20 4:46 PM (GMT-06:00) </div>
<div>To: Jeff S &lt;<a href=3D"mailto:e070832@hotmail.com" target=3D"_blank=
">e070832@hotmail.com</a>&gt; </div>
<div>Cc: <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a> </div>
<div>Subject: Re: [USRP-users] GPIO Example Failure on N310 </div>
<div><br>
</div>
<div>
<div dir=3D"ltr">
<div>Jeff,</div>
<div><br>
</div>
<div>Follow-up on this. I ran the GPIO example on my N310 with 3.14.1.1 (g0=
347a6d8) and all GPIO tests passed. Are your FPGA image and UHD release mod=
ified?<br>
</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter <br>
<div>Ettus Research<br>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 3, 2020 at 2:01 PM Sam Re=
iter &lt;<a href=3D"mailto:sam.reiter@ettus.com" target=3D"_blank">sam.reit=
er@ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr">Hey Jeff,
<div><br>
</div>
<div>Could you give this a shot on 3.15.0.0 and let me know the results? Ba=
sed on that output, the issue looks confined to ATR but it&#39;s not someth=
ing I&#39;ve seen reported up to this point.=C2=A0</div>
<div><br>
</div>
<div>If 3.15.0.0 shows this issue as well, I&#39;ll reproduce it on my end =
and get a bug filed.=C2=A0</div>
<div><br>
</div>
<div>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">
<div>
<div dir=3D"ltr">Sam Reiter=C2=A0
<div>Ettus Research</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<div class=3D"gmail_quote">
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 20, 2019 at 10:19 AM Jeff=
 S via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=
=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
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
</blockquote>
</div>
</blockquote>
</div>
</div>
</div>

</blockquote></div>

--0000000000008ce8a7059bbad1f6--


--===============8235962312262759226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8235962312262759226==--


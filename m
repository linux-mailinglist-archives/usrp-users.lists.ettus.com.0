Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 375ED14AC56
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 23:59:44 +0100 (CET)
Received: from [::1] (port=60868 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwDM5-0007Yr-0p; Mon, 27 Jan 2020 17:59:41 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:33063)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1iwDM1-0007HS-CW
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 17:59:37 -0500
Received: by mail-ot1-f50.google.com with SMTP id b18so10199183otp.0
 for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2020 14:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u+P3MtPhk9QRXtB4v9Y147gop5QYibhK4Si6NJNRw4U=;
 b=adP9St35Tk9siPvT+tISk2LzH0Y3uhpAgneViiGFEWKydaOYsFsIlHb6xUIIgGNHRj
 UMF8enVXJ40LGyUaglpx/WqvuCAmOaJjOh/tASQwbyBR+oMyBbhVumwSUPcRtulq+5Yd
 XiZQf4m2Z5rJmFDmxM9cFKYJkitw+gp6o1hpZmnp+Fq7bTB83LWRdiauJ5LnJ4T6gQk7
 Zi7ZbOFfonAm3cX4GL2vtAxqyWzToYDjPl51mEyOWOvSiB/d4NofxUsUXTggMNn3lQHy
 37dDFP8iRnkRNKEQUOheMkuoHc6vF+ti966SQ2Z19sF/mC0tMRuAK1a+TllCgI6govzF
 YtMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u+P3MtPhk9QRXtB4v9Y147gop5QYibhK4Si6NJNRw4U=;
 b=KImPxjp7vNS/u6W7rFAgFd35KOBMlob6I+T/wr1b40awGaUlETgOBqfQa9n+S0G126
 9NnqnRaEwvzpWkORikCGHzkCkZoX0LeW9CsRnB0juX1ZtYLwpQAbosFIiijMUjjzrLSv
 JTfsGAIqv1OhQpnGUrvdXayaD2UvRkD8HVEErKNa49pg649FIed5vna/Zo6OALfxZXO7
 +BOEMnLnY6bETcYgsOQYytcG6DBmtNFm2XyAg3c+s+7rGS7CBALZapOOEVzkQirn1T1D
 aFED7YPgIlVPuPXk2rW1zgRd9YCdN7boRN+wLP+Z4VB2SI5ftqtLyzKNtCJfT3QseTOm
 PltA==
X-Gm-Message-State: APjAAAXMQof3cHKjCSKs9h+nTIZc2KgxKLnI5d5TdoBAFai+9gZPMVHV
 WDgWMsjx8htYLndkas/Ba/5hhu++KfKCiW4K81Vz7g==
X-Google-Smtp-Source: APXvYqzQbFC5qZfdRecaV39q3PRJZPnLufMWx/VO7FTbyzAhAvAjLdV2BIgS+WlV+dq138hnVTr8F6F9qBn9FVdpnjY=
X-Received: by 2002:a9d:3d0a:: with SMTP id a10mr14476015otc.327.1580165936575; 
 Mon, 27 Jan 2020 14:58:56 -0800 (PST)
MIME-Version: 1.0
References: <CAE6G02_pDDd2H5yX8Sf2jqBC7bo1hnqBMgz5-i09NBCBYSoZgQ@mail.gmail.com>
 <5E2DD2CA.60502@gmail.com>
 <CAE6G02_gbpWZENFyB0EuGdDiGfWKBOitqE0VamkNRuqPTd_MgA@mail.gmail.com>
 <1eae252bad4344f2b296e8bb4fb0d278@dlr.de>
 <CAE6G028jQc8Fd8U8-EmTCCZwyKjN5+MJGcEJs5FKvm1PyrNofw@mail.gmail.com>
 <9386a8b56e9b4514bfd076ce7c106cec@dlr.de>
 <CAB__hTSXvtRmb41qd2i5tL-EKG+YbWb-YqEhw6Hoey3Wj_tE6g@mail.gmail.com>
 <CAL263izVZA5A7jpX+5GbCMaVy4Jq=CvZkDd6-ng0xTT9-zb15A@mail.gmail.com>
 <CAB__hTS=qwkz6-y7fKP54dz6Jr8ZR_n6=2Eu11NiyHsHFOYP5A@mail.gmail.com>
 <CAL263iwYWeO-OLvsiUTmLRvWGa_fGsg4hv-MYnppQmCKGtAipQ@mail.gmail.com>
 <CAL263iwTvw6evt9es0RGK1BT+t_=bFhhsNe2NwLe9ap7Yd6FRg@mail.gmail.com>
 <CAB__hTQExE6M5q4jNkM+pbFowL5p65ZErZaTyW0wwkZhL=V96Q@mail.gmail.com>
 <CAB__hTR_jPt0Lit8ZsG5tuAK2drmp6zMWWi_4y7Mj+TYhBcnxA@mail.gmail.com>
 <CAB__hTS7LzLv8Z_ky7vbuAtesW4+D=p49o59Zf5SnBTBk9Gmog@mail.gmail.com>
 <CAL263izzHZtu1MJPRjx2OZ4QsQTALqsoKMnQdqoHyn+xqowbCw@mail.gmail.com>
In-Reply-To: <CAL263izzHZtu1MJPRjx2OZ4QsQTALqsoKMnQdqoHyn+xqowbCw@mail.gmail.com>
Date: Mon, 27 Jan 2020 17:58:45 -0500
Message-ID: <CAB__hTSzNsujXDGSDsd+1j9ph4tSHxik1nshB-uL=bOYas_Q3w@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: Re: [USRP-users] N310 phase jumps with 1 daughterboard
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7813918728942394510=="
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

--===============7813918728942394510==
Content-Type: multipart/alternative; boundary="00000000000056346c059d270d77"

--00000000000056346c059d270d77
Content-Type: text/plain; charset="UTF-8"

Sure, I understand the comment about the tagged release.  And, I don't have
a compelling reason why I can't switch from 3.14 to 3.15.  I have not
switched yet only because I'm being cautious and 3.14 has worked well for
me.  But, I will plan to switch - at least for now.
Rob

On Mon, Jan 27, 2020 at 5:51 PM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Rob,
>
> Thanks for trying your setup with 3.15.0.0.
>
> I will see what I can do about getting these fixes backported to 3.14, any
> changes will need to be on the UHD-3.14 branch (the maint branch for 3.14),
> we won't be able to apply these changes to 3.14.1.1, as it's a tagged
> release.
>
> Regards,
> Nate Temple
>
> On Mon, Jan 27, 2020 at 2:46 PM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Nate,
>> After switching to 3.15, I now get consistent results such that the
>> relative phase between channels is as follows:
>> - chan 0 to chan 1: constant
>> - chan 1 to chan 2: constant +/- 180 deg
>> - chan 2 to chan 3: constant
>>
>> So, it seems that the problem was in 3.14.
>> Rob
>>
>> On Mon, Jan 27, 2020 at 3:45 PM Rob Kossler <rkossler@nd.edu> wrote:
>>
>>> Nate,
>>> So, I retested with 3.14.1.1 and got erratic results (same as last
>>> week).  Now I am attempting to go to 3.15.0.0.  To make things as painless
>>> as possible, I tried to just re-build MPM on the device and then update the
>>> other stuff on the host (rather than flashing a new file system).  However,
>>> MPM doesn't seem to build (see error below). I'm guessing this error is
>>> related to something in the file system that is going to force me to
>>> re-flash the file system.  Can you take a look and let me know if there is
>>> an easier way.
>>> Rob
>>>
>>> root@ni-n3xx-318F043:~/build_mpm# make -j2
>>> [  5%] Built target periphs
>>> [ 10%] Built target dboards
>>> [ 27%] Built target mykonos
>>> [ 32%] Built target spi
>>> [ 34%] Building C object lib/i2c/CMakeFiles/i2c.dir/i2cdev.c.o
>>> Scanning dependencies of target types
>>> [ 36%] Building CXX object lib/types/CMakeFiles/types.dir/lockable.cpp.o
>>> /home/root/uhd/uhd/mpm/lib/i2c/i2cdev.c: In function 'i2cdev_open':
>>> /home/root/uhd/uhd/mpm/lib/i2c/i2cdev.c:26:33: error: 'O_LARGEFILE'
>>> undeclared (first use in this function); did you mean '__O_LARGEFILE'?
>>>      *fd = open(device, O_RDWR | O_LARGEFILE);
>>>                                  ^~~~~~~~~~~
>>>                                  __O_LARGEFILE
>>> /home/root/uhd/uhd/mpm/lib/i2c/i2cdev.c:26:33: note: each undeclared
>>> identifier is reported only once for each function it appears in
>>> make[2]: *** [lib/i2c/CMakeFiles/i2c.dir/build.make:111:
>>> lib/i2c/CMakeFiles/i2c.dir/i2cdev.c.o] Error 1
>>> make[1]: *** [CMakeFiles/Makefile2:466: lib/i2c/CMakeFiles/i2c.dir/all]
>>> Error 2
>>> make[1]: *** Waiting for unfinished jobs....
>>> [ 38%] Building CXX object lib/types/CMakeFiles/types.dir/log_buf.cpp.o
>>> [ 40%] Building CXX object
>>> lib/types/CMakeFiles/types.dir/mmap_regs_iface.cpp.o
>>> [ 40%] Built target types
>>> make: *** [Makefile:141: all] Error 2
>>> root@ni-n3xx-318F043:~/build_mpm#
>>>
>>>
>>> On Mon, Jan 27, 2020 at 2:21 PM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> ok.
>>>>
>>>> Yes, I always use timed tune commands. If that were not happening
>>>> correctly, I don't think I could get consistent results with TwinRx.
>>>>
>>>> I am presently using 3.14.1.1.  I will complete the testing (using
>>>> internal LO) I've already begun with this version and then re-test some/all
>>>> using 3.15.  Assuming that the results are different, it would seem that
>>>> Ettus should consider applying the fixes to the 3.14 branch.
>>>>
>>>> Rob
>>>>
>>>>
>>>> On Mon, Jan 27, 2020 at 2:18 PM Nate Temple <nate.temple@ettus.com>
>>>> wrote:
>>>>
>>>>> Hi Rob,
>>>>>
>>>>> One other thing, if you're not on UHD v3.15.0.0, I'd recommend to
>>>>> update to it. There was some phase reset and accumulator fixes with
>>>>> 3.15.0.0.
>>>>>
>>>>> https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/CHANGELOG#L44
>>>>>
>>>>>
>>>>> Regards,
>>>>> Nate Temple
>>>>>
>>>>> On Mon, Jan 27, 2020 at 11:17 AM Nate Temple <nate.temple@ettus.com>
>>>>> wrote:
>>>>>
>>>>>> Hi Rob,
>>>>>>
>>>>>> You should always use a tune request with a timed command when you
>>>>>> want to align channels.
>>>>>>
>>>>>> One thing you could test is to try using the internal LO and see if
>>>>>> you get different results.
>>>>>>
>>>>>> Also you could try using the integer N tuning mode, but I don't think
>>>>>> it will make any difference for this issue. Checkout this great blog post
>>>>>> on USRP tuning if you haven't seen it before that covers a few more tips on
>>>>>> USRP tuning:
>>>>>> http://www.radio-science.net/2017/12/adventures-in-usrp-tuning.html
>>>>>>
>>>>>> Regards,
>>>>>> Nate Temple
>>>>>>
>>>>>> On Mon, Jan 27, 2020 at 9:33 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>>>>
>>>>>>> Hi Nate,
>>>>>>> I changed the subject as to not further hijack the other thread. Of
>>>>>>> the 16 captures I collected, some of them included a tuning command (but
>>>>>>> using the same timed commands I use for other devices such as TwinRx). But,
>>>>>>> others did not.  For example, for the first two data points below (with
>>>>>>> measured phase difference of -77 and -19 respectively).  I simply issued
>>>>>>> two consecutive timed streaming commands.  So, I was very perplexed by the
>>>>>>> results.
>>>>>>>
>>>>>>> In any event, I plan to re-take the data today both with and without
>>>>>>> a DDC.  Hopefully, if I get rid of the DDC, I will see consistent phase
>>>>>>> results, but we'll see.  Let me know if you have other ideas.
>>>>>>> Rob
>>>>>>>
>>>>>>> On Mon, Jan 27, 2020 at 12:04 PM Nate Temple <nate.temple@ettus.com>
>>>>>>> wrote:
>>>>>>>
>>>>>>>>
>>>>>>>> @Rob: With the current init process of the N310, yes it is required
>>>>>>>> to first set the external LO to 5 GHz.
>>>>>>>>
>>>>>>>> With regards to the offsets you're seeing, I believe you should
>>>>>>>> only see a possible phase difference of 180* within the two channels on the
>>>>>>>> same DB. Are you issuing a tune request at the start of streaming?
>>>>>>>>
>>>>>>>> Regards,
>>>>>>>> Nate Temple
>>>>>>>>
>>>>>>>> On Mon, Jan 27, 2020 at 8:20 AM Rob Kossler via USRP-users <
>>>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>>>
>>>>>>>>> Robert, Sammy,
>>>>>>>>> I am presently running some tests which compare the X310/TwinRx
>>>>>>>>> and the N310 with regard to channel-to-channel phase.  In my setup, I have
>>>>>>>>> a signal source that is split 8 ways (1:8 splitter) to feed the 4 channels
>>>>>>>>> of my TwinRx and 4 channels of my N310. I have seen some strange behavior
>>>>>>>>> of the N310 that perhaps Robert has experienced?  Take a look:
>>>>>>>>>
>>>>>>>>>    - For the TwinRx (for which I am a more experienced user with
>>>>>>>>>    LO sharing), I get consistent channel-to-channel phase difference among all
>>>>>>>>>    channels. This is true regardless of power cycles, re-starts of UHD, etc.
>>>>>>>>>    - For the N310 (for which I am a beginner when it comes to
>>>>>>>>>    external LO operation)
>>>>>>>>>       - it seems more complex to run in this mode (as compared to
>>>>>>>>>       TwinRx).  In order to get it to work, I have had to disable startup QEC
>>>>>>>>>       calibration because it seems that the N310 initial cal occurs at 2500 MHz
>>>>>>>>>       RF such that I would need to have my external LO at 5000 MHz for startup
>>>>>>>>>       (during the UHD deveice 'make') and then later switch my external LO to the
>>>>>>>>>       desired RF*2. Is this true?
>>>>>>>>>       - when I run with either external LO or internal LO, I see
>>>>>>>>>       inconsistent channel-to-channel phase results even between the two channels
>>>>>>>>>       of a given daughterboard that share the same LO.  I do not understand how
>>>>>>>>>       this is possible.  My results over 16 captures (with some re-starts of UHD,
>>>>>>>>>       device reboots, and switching between internal/external LO) show the
>>>>>>>>>       following channel-to-channel phase difference between channels 0 and 1
>>>>>>>>>       which share the same LO: (values in degrees) -77, -19, -77, -19, -77, -19,
>>>>>>>>>       -19, 39, -19, -19, -77, -19, -77, 39, -19, -19.  Note that there are only 3
>>>>>>>>>       unique values and the delta happens to be 58 deg, but I don't know what
>>>>>>>>>       that implies...
>>>>>>>>>
>>>>>>>>> Rob
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>

--00000000000056346c059d270d77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Sure, I understand the comment about the tagged release.=
=C2=A0 And, I don&#39;t have a compelling reason why I can&#39;t switch fro=
m 3.14 to 3.15.=C2=A0 I have not switched yet only because=C2=A0I&#39;m bei=
ng cautious and 3.14 has worked well for me.=C2=A0 But, I will plan to swit=
ch - at least for now.<div>Rob</div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 2020 at 5:51 PM Nate Te=
mple &lt;<a href=3D"mailto:nate.temple@ettus.com">nate.temple@ettus.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helvet=
ica,sans-serif">Hi Rob,<br><br>Thanks for trying your setup with 3.15.0.0.<=
br><br>I will see what I can do about getting these fixes backported to 3.1=
4, any changes will need to be on the UHD-3.14 branch (the maint branch for=
 3.14), we won&#39;t be able to apply these changes to 3.14.1.1, as it&#39;=
s a tagged release.<br><br>Regards,<br>Nate Temple</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 202=
0 at 2:46 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_=
blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr">Nate,<div>After switching to 3.15, I=
 now get consistent results such that the relative phase between channels i=
s as follows:</div><div>- chan 0 to chan 1: constant</div><div>- chan 1 to =
chan 2: constant=C2=A0+/- 180 deg</div><div>- chan 2 to chan 3: constant</d=
iv><div><br></div><div>So, it seems that the problem was in 3.14.</div><div=
>Rob</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, Jan 27, 2020 at 3:45 PM Rob Kossler &lt;<a href=3D"mailto=
:rkossler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Nate,<d=
iv>So, I retested with 3.14.1.1 and got erratic results (same as last week)=
.=C2=A0 Now I am attempting to go to 3.15.0.0.=C2=A0 To make things as pain=
less as possible, I tried to just re-build MPM on the device and then updat=
e the other stuff on the host (rather than flashing a new file system).=C2=
=A0 However, MPM doesn&#39;t seem to build (see error below). I&#39;m guess=
ing this error is related to something in the file system that is going to =
force me to re-flash the file system.=C2=A0 Can you take a look and let me =
know if there is an easier way.</div><div>Rob</div><div><br></div><div>root=
@ni-n3xx-318F043:~/build_mpm# make -j2<br>[ =C2=A05%] Built target periphs<=
br>[ 10%] Built target dboards<br>[ 27%] Built target mykonos<br>[ 32%] Bui=
lt target spi<br>[ 34%] Building C object lib/i2c/CMakeFiles/i2c.dir/i2cdev=
.c.o<br>Scanning dependencies of target types<br>[ 36%] Building CXX object=
 lib/types/CMakeFiles/types.dir/lockable.cpp.o<br><span style=3D"background=
-color:rgb(255,255,0)">/home/root/uhd/uhd/mpm/lib/i2c/i2cdev.c: In function=
 &#39;i2cdev_open&#39;:<br>/home/root/uhd/uhd/mpm/lib/i2c/i2cdev.c:26:33: e=
rror: &#39;O_LARGEFILE&#39; undeclared (first use in this function); did yo=
u mean &#39;__O_LARGEFILE&#39;?<br>=C2=A0 =C2=A0 =C2=A0*fd =3D open(device,=
 O_RDWR | O_LARGEFILE);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~~~=
~~~~~~<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0__O_LARGEFILE</span>=
<br>/home/root/uhd/uhd/mpm/lib/i2c/i2cdev.c:26:33: note: each undeclared id=
entifier is reported only once for each function it appears in<br>make[2]: =
*** [lib/i2c/CMakeFiles/i2c.dir/build.make:111: lib/i2c/CMakeFiles/i2c.dir/=
i2cdev.c.o] Error 1<br>make[1]: *** [CMakeFiles/Makefile2:466: lib/i2c/CMak=
eFiles/i2c.dir/all] Error 2<br>make[1]: *** Waiting for unfinished jobs....=
<br>[ 38%] Building CXX object lib/types/CMakeFiles/types.dir/log_buf.cpp.o=
<br>[ 40%] Building CXX object lib/types/CMakeFiles/types.dir/mmap_regs_ifa=
ce.cpp.o<br>[ 40%] Built target types<br>make: *** [Makefile:141: all] Erro=
r 2<br>root@ni-n3xx-318F043:~/build_mpm#=C2=A0<br></div><div><br></div></di=
v><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On M=
on, Jan 27, 2020 at 2:21 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.e=
du" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">ok.=C2=A0=C2=A0<div><=
br></div><div>Yes, I always use timed tune commands. If that were not happe=
ning correctly, I don&#39;t think I could get consistent results with TwinR=
x.</div><div><br></div><div>I am presently using 3.14.1.1.=C2=A0 I will com=
plete the testing (using internal LO) I&#39;ve already begun with this vers=
ion and then re-test some/all using 3.15.=C2=A0 Assuming that the results a=
re different, it would seem that Ettus should consider applying the fixes t=
o the 3.14 branch.</div><div><br></div><div>Rob</div><div><br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon,=
 Jan 27, 2020 at 2:18 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettu=
s.com" target=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=
=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Hi Rob,=
<br><br>One other thing, if you&#39;re not on UHD v3.15.0.0, I&#39;d recomm=
end to update to it. There was some phase reset and accumulator fixes with =
3.15.0.0.<br><br><a href=3D"https://github.com/EttusResearch/uhd/blob/UHD-3=
.15.LTS/CHANGELOG#L44" target=3D"_blank">https://github.com/EttusResearch/u=
hd/blob/UHD-3.15.LTS/CHANGELOG#L44</a><br><br><br>Regards,<br>Nate Temple</=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Mon, Jan 27, 2020 at 11:17 AM Nate Temple &lt;<a href=3D"mailto:nate=
.temple@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">=
<div class=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-seri=
f">Hi Rob,<br><br>You should always use a tune request with a timed command=
 when you want to align channels.<br><br>One thing you could test is to try=
 using the internal LO and see if you get different results.<br><br>Also yo=
u could try using the integer N tuning mode, but I don&#39;t think it will =
make any difference for this issue. Checkout this great blog post on USRP t=
uning if you haven&#39;t seen it before that covers a few more tips on USRP=
 tuning: <a href=3D"http://www.radio-science.net/2017/12/adventures-in-usrp=
-tuning.html" target=3D"_blank">http://www.radio-science.net/2017/12/advent=
ures-in-usrp-tuning.html</a><br><br>Regards,<br>Nate Temple</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Ja=
n 27, 2020 at 9:33 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" ta=
rget=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Nate,</div><div>I=
 changed the subject as to not further hijack the other thread. Of the 16 c=
aptures I collected, some of them included a tuning command (but using the =
same timed commands I use for other devices such as TwinRx). But, others di=
d not.=C2=A0 For example, for the first two data points below (with measure=
d phase difference of -77 and -19 respectively).=C2=A0 I simply issued two =
consecutive timed streaming commands.=C2=A0 So, I was very perplexed by the=
 results.</div><div><br></div><div>In any event, I plan to re-take the data=
 today both with and without a DDC.=C2=A0 Hopefully, if I get rid of the DD=
C, I will see consistent phase results, but we&#39;ll see.=C2=A0 Let me kno=
w if you have other ideas.</div><div>Rob</div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 2020 at 12:04 PM Na=
te Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">na=
te.temple@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:arial,helveti=
ca,sans-serif"><br>@Rob: With the current init process of the N310, yes it =
is required to first set the external LO to 5 GHz. <br><br>With regards to =
the offsets you&#39;re seeing, I believe you should only see a possible pha=
se difference of 180* within the two channels on the same DB. Are you issui=
ng a tune request at the start of streaming?<br><br>Regards,<br>Nate Temple=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Jan 27, 2020 at 8:20 AM Rob Kossler via USRP-users &lt;<a hre=
f=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.=
ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Robert, Sammy,<div>I am presently running some =
tests which compare the X310/TwinRx and the N310 with regard to channel-to-=
channel phase.=C2=A0 In my setup, I have a signal source that is split 8 wa=
ys (1:8 splitter) to feed the 4 channels of my TwinRx and 4 channels of my =
N310. I have seen some strange behavior of the N310 that perhaps Robert has=
 experienced?=C2=A0 Take a look:</div><div><ul><li>For the TwinRx (for whic=
h I am a more experienced user with LO sharing), I get consistent channel-t=
o-channel phase difference among all channels. This is true regardless of p=
ower cycles, re-starts of UHD, etc.</li><li>For the N310 (for which I am a =
beginner when it comes to external LO operation)</li><ul><li>it seems more =
complex to run in this mode (as compared to TwinRx).=C2=A0 In order to get =
it to work, I have had to disable startup QEC calibration because it seems =
that the N310 initial cal occurs at 2500 MHz RF such that I would need to h=
ave my external LO at 5000 MHz for startup (during the UHD deveice &#39;mak=
e&#39;) and then later switch my external LO to the desired RF*2. Is this t=
rue?</li><li>when I run with either external LO or internal LO, I see incon=
sistent channel-to-channel phase results even between the two channels of a=
 given daughterboard that share the same LO.=C2=A0 I do not understand how =
this is possible.=C2=A0 My results over 16 captures (with some re-starts of=
 UHD, device reboots, and switching between internal/external LO) show the =
following channel-to-channel phase difference between channels 0 and 1 whic=
h share the same LO: (values in degrees) -77, -19, -77, -19, -77, -19, -19,=
 39, -19, -19, -77, -19, -77, 39, -19, -19.=C2=A0 Note that there are only =
3 unique values and the delta happens to be 58 deg, but I don&#39;t know wh=
at that implies...</li></ul></ul><div>Rob</div></div><div><br></div></div><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"><br></div><=
/div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--00000000000056346c059d270d77--


--===============7813918728942394510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7813918728942394510==--


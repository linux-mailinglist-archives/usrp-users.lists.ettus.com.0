Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 210E414AB41
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 21:46:08 +0100 (CET)
Received: from [::1] (port=40426 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iwBGm-0001Cb-Pr; Mon, 27 Jan 2020 15:46:04 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:33583)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1iwBGj-00019B-PG
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 15:46:01 -0500
Received: by mail-oi1-f175.google.com with SMTP id q81so8093331oig.0
 for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2020 12:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vepg5WO6vXrdlWoxUc3P5wankYoaf7JPKZ6FkNBz/XM=;
 b=EfqVNE44a7xiPL0/vzy2v8N81QpFBKgZT011TubNYH6vBeetsXNtoBTRIeUgYw1BRf
 A+chfxMqKDrZcVU953YOK7boVWbiL/fLvdxxs+DPqiV+LOXujOrS+HjJxt1L8svhSZ/8
 oTJliEuzEvb3KQtz7a7YfXcX61kQPPSr0gXk+Lcu2bESDl2tPOnQ6x+Tzu6sJN6wVoCN
 QjvsrcwhMa/9Sny3+rJMngo+lSQI6WRxsOHkIo2xabferWGwTpFhBJBo6qTZgdXeHXqw
 86Bd185p9SrflVOz+COPhRr2O5ggsfp8w96sQv17sGpmhik/3W+n+XYnCsCf2X46DbZi
 W7cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vepg5WO6vXrdlWoxUc3P5wankYoaf7JPKZ6FkNBz/XM=;
 b=ujIMpFqngt/qkbpbhF2UPJVn8OnP7CzT2BJgXlzIlBReTUni65P3ZHxQiDmfARK65t
 ZPbvXAiQTAqQTq5/XacwnDhKS8fVyQPqEoJuULvof5txGHhDiOty3209c30Wh4E6dc+0
 jEiwXVXgq++rHX3j1+kPn0RPZcduQVVonDJ+93NPVQf2eT8/+DyRO9v4+yASGb5v8pKD
 JZ5amg8zUn+I3reFWFxf3x6N684gGdcUKfSuXZye0+hlEELwL8N8t9HvVDxDGwe6cwCA
 M3FYo48yDVJrKoht8TFTkJaeKd96Kcz6amuAYkxkZI1jRNu60s9aZ6o+rY9F1V1xgx2N
 +pCA==
X-Gm-Message-State: APjAAAVpD6pD1Fyid7BR5w8LsV/3eUj776vFxRFCFIcxbrUo3wCp4Gpb
 ph1QGcFSzsYio1pJys0foQTsSfOY8VQzFI6gJAyEQw==
X-Google-Smtp-Source: APXvYqzLwRgImNJSvFvumveAbrN/eP5ZJkaV5ue+TFOlaCD0BuJxCNW6J+YIDJxZcu0EBQ1FtTGlyYNjkLlrKc6h/zo=
X-Received: by 2002:aca:889:: with SMTP id 131mr637375oii.3.1580157920767;
 Mon, 27 Jan 2020 12:45:20 -0800 (PST)
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
In-Reply-To: <CAB__hTQExE6M5q4jNkM+pbFowL5p65ZErZaTyW0wwkZhL=V96Q@mail.gmail.com>
Date: Mon, 27 Jan 2020 15:45:09 -0500
Message-ID: <CAB__hTR_jPt0Lit8ZsG5tuAK2drmp6zMWWi_4y7Mj+TYhBcnxA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============4985675383355524307=="
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

--===============4985675383355524307==
Content-Type: multipart/alternative; boundary="0000000000008eaff0059d252f94"

--0000000000008eaff0059d252f94
Content-Type: text/plain; charset="UTF-8"

Nate,
So, I retested with 3.14.1.1 and got erratic results (same as last week).
Now I am attempting to go to 3.15.0.0.  To make things as painless as
possible, I tried to just re-build MPM on the device and then update the
other stuff on the host (rather than flashing a new file system).  However,
MPM doesn't seem to build (see error below). I'm guessing this error is
related to something in the file system that is going to force me to
re-flash the file system.  Can you take a look and let me know if there is
an easier way.
Rob

root@ni-n3xx-318F043:~/build_mpm# make -j2
[  5%] Built target periphs
[ 10%] Built target dboards
[ 27%] Built target mykonos
[ 32%] Built target spi
[ 34%] Building C object lib/i2c/CMakeFiles/i2c.dir/i2cdev.c.o
Scanning dependencies of target types
[ 36%] Building CXX object lib/types/CMakeFiles/types.dir/lockable.cpp.o
/home/root/uhd/uhd/mpm/lib/i2c/i2cdev.c: In function 'i2cdev_open':
/home/root/uhd/uhd/mpm/lib/i2c/i2cdev.c:26:33: error: 'O_LARGEFILE'
undeclared (first use in this function); did you mean '__O_LARGEFILE'?
     *fd = open(device, O_RDWR | O_LARGEFILE);
                                 ^~~~~~~~~~~
                                 __O_LARGEFILE
/home/root/uhd/uhd/mpm/lib/i2c/i2cdev.c:26:33: note: each undeclared
identifier is reported only once for each function it appears in
make[2]: *** [lib/i2c/CMakeFiles/i2c.dir/build.make:111:
lib/i2c/CMakeFiles/i2c.dir/i2cdev.c.o] Error 1
make[1]: *** [CMakeFiles/Makefile2:466: lib/i2c/CMakeFiles/i2c.dir/all]
Error 2
make[1]: *** Waiting for unfinished jobs....
[ 38%] Building CXX object lib/types/CMakeFiles/types.dir/log_buf.cpp.o
[ 40%] Building CXX object
lib/types/CMakeFiles/types.dir/mmap_regs_iface.cpp.o
[ 40%] Built target types
make: *** [Makefile:141: all] Error 2
root@ni-n3xx-318F043:~/build_mpm#


On Mon, Jan 27, 2020 at 2:21 PM Rob Kossler <rkossler@nd.edu> wrote:

> ok.
>
> Yes, I always use timed tune commands. If that were not happening
> correctly, I don't think I could get consistent results with TwinRx.
>
> I am presently using 3.14.1.1.  I will complete the testing (using
> internal LO) I've already begun with this version and then re-test some/all
> using 3.15.  Assuming that the results are different, it would seem that
> Ettus should consider applying the fixes to the 3.14 branch.
>
> Rob
>
>
> On Mon, Jan 27, 2020 at 2:18 PM Nate Temple <nate.temple@ettus.com> wrote:
>
>> Hi Rob,
>>
>> One other thing, if you're not on UHD v3.15.0.0, I'd recommend to update
>> to it. There was some phase reset and accumulator fixes with 3.15.0.0.
>>
>> https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/CHANGELOG#L44
>>
>>
>> Regards,
>> Nate Temple
>>
>> On Mon, Jan 27, 2020 at 11:17 AM Nate Temple <nate.temple@ettus.com>
>> wrote:
>>
>>> Hi Rob,
>>>
>>> You should always use a tune request with a timed command when you want
>>> to align channels.
>>>
>>> One thing you could test is to try using the internal LO and see if you
>>> get different results.
>>>
>>> Also you could try using the integer N tuning mode, but I don't think it
>>> will make any difference for this issue. Checkout this great blog post on
>>> USRP tuning if you haven't seen it before that covers a few more tips on
>>> USRP tuning:
>>> http://www.radio-science.net/2017/12/adventures-in-usrp-tuning.html
>>>
>>> Regards,
>>> Nate Temple
>>>
>>> On Mon, Jan 27, 2020 at 9:33 AM Rob Kossler <rkossler@nd.edu> wrote:
>>>
>>>> Hi Nate,
>>>> I changed the subject as to not further hijack the other thread. Of the
>>>> 16 captures I collected, some of them included a tuning command (but using
>>>> the same timed commands I use for other devices such as TwinRx). But,
>>>> others did not.  For example, for the first two data points below (with
>>>> measured phase difference of -77 and -19 respectively).  I simply issued
>>>> two consecutive timed streaming commands.  So, I was very perplexed by the
>>>> results.
>>>>
>>>> In any event, I plan to re-take the data today both with and without a
>>>> DDC.  Hopefully, if I get rid of the DDC, I will see consistent phase
>>>> results, but we'll see.  Let me know if you have other ideas.
>>>> Rob
>>>>
>>>> On Mon, Jan 27, 2020 at 12:04 PM Nate Temple <nate.temple@ettus.com>
>>>> wrote:
>>>>
>>>>>
>>>>> @Rob: With the current init process of the N310, yes it is required to
>>>>> first set the external LO to 5 GHz.
>>>>>
>>>>> With regards to the offsets you're seeing, I believe you should only
>>>>> see a possible phase difference of 180* within the two channels on the same
>>>>> DB. Are you issuing a tune request at the start of streaming?
>>>>>
>>>>> Regards,
>>>>> Nate Temple
>>>>>
>>>>> On Mon, Jan 27, 2020 at 8:20 AM Rob Kossler via USRP-users <
>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>
>>>>>> Robert, Sammy,
>>>>>> I am presently running some tests which compare the X310/TwinRx and
>>>>>> the N310 with regard to channel-to-channel phase.  In my setup, I have a
>>>>>> signal source that is split 8 ways (1:8 splitter) to feed the 4 channels of
>>>>>> my TwinRx and 4 channels of my N310. I have seen some strange behavior of
>>>>>> the N310 that perhaps Robert has experienced?  Take a look:
>>>>>>
>>>>>>    - For the TwinRx (for which I am a more experienced user with LO
>>>>>>    sharing), I get consistent channel-to-channel phase difference among all
>>>>>>    channels. This is true regardless of power cycles, re-starts of UHD, etc.
>>>>>>    - For the N310 (for which I am a beginner when it comes to
>>>>>>    external LO operation)
>>>>>>       - it seems more complex to run in this mode (as compared to
>>>>>>       TwinRx).  In order to get it to work, I have had to disable startup QEC
>>>>>>       calibration because it seems that the N310 initial cal occurs at 2500 MHz
>>>>>>       RF such that I would need to have my external LO at 5000 MHz for startup
>>>>>>       (during the UHD deveice 'make') and then later switch my external LO to the
>>>>>>       desired RF*2. Is this true?
>>>>>>       - when I run with either external LO or internal LO, I see
>>>>>>       inconsistent channel-to-channel phase results even between the two channels
>>>>>>       of a given daughterboard that share the same LO.  I do not understand how
>>>>>>       this is possible.  My results over 16 captures (with some re-starts of UHD,
>>>>>>       device reboots, and switching between internal/external LO) show the
>>>>>>       following channel-to-channel phase difference between channels 0 and 1
>>>>>>       which share the same LO: (values in degrees) -77, -19, -77, -19, -77, -19,
>>>>>>       -19, 39, -19, -19, -77, -19, -77, 39, -19, -19.  Note that there are only 3
>>>>>>       unique values and the delta happens to be 58 deg, but I don't know what
>>>>>>       that implies...
>>>>>>
>>>>>> Rob
>>>>>>
>>>>>>
>>>>>>

--0000000000008eaff0059d252f94
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Nate,<div>So, I retested with 3.14.1.1 and got erratic res=
ults (same as last week).=C2=A0 Now I am attempting to go to 3.15.0.0.=C2=
=A0 To make things as painless as possible, I tried to just re-build MPM on=
 the device and then update the other stuff on the host (rather than flashi=
ng a new file system).=C2=A0 However, MPM doesn&#39;t seem to build (see er=
ror below). I&#39;m guessing this error is related to something in the file=
 system that is going to force me to re-flash the file system.=C2=A0 Can yo=
u take a look and let me know if there is an easier way.</div><div>Rob</div=
><div><br></div><div>root@ni-n3xx-318F043:~/build_mpm# make -j2<br>[ =C2=A0=
5%] Built target periphs<br>[ 10%] Built target dboards<br>[ 27%] Built tar=
get mykonos<br>[ 32%] Built target spi<br>[ 34%] Building C object lib/i2c/=
CMakeFiles/i2c.dir/i2cdev.c.o<br>Scanning dependencies of target types<br>[=
 36%] Building CXX object lib/types/CMakeFiles/types.dir/lockable.cpp.o<br>=
<span style=3D"background-color:rgb(255,255,0)">/home/root/uhd/uhd/mpm/lib/=
i2c/i2cdev.c: In function &#39;i2cdev_open&#39;:<br>/home/root/uhd/uhd/mpm/=
lib/i2c/i2cdev.c:26:33: error: &#39;O_LARGEFILE&#39; undeclared (first use =
in this function); did you mean &#39;__O_LARGEFILE&#39;?<br>=C2=A0 =C2=A0 =
=C2=A0*fd =3D open(device, O_RDWR | O_LARGEFILE);<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0^~~~~~~~~~~<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0__O_LARGEFILE</span><br>/home/root/uhd/uhd/mpm/lib/i2c/i2cdev.c:2=
6:33: note: each undeclared identifier is reported only once for each funct=
ion it appears in<br>make[2]: *** [lib/i2c/CMakeFiles/i2c.dir/build.make:11=
1: lib/i2c/CMakeFiles/i2c.dir/i2cdev.c.o] Error 1<br>make[1]: *** [CMakeFil=
es/Makefile2:466: lib/i2c/CMakeFiles/i2c.dir/all] Error 2<br>make[1]: *** W=
aiting for unfinished jobs....<br>[ 38%] Building CXX object lib/types/CMak=
eFiles/types.dir/log_buf.cpp.o<br>[ 40%] Building CXX object lib/types/CMak=
eFiles/types.dir/mmap_regs_iface.cpp.o<br>[ 40%] Built target types<br>make=
: *** [Makefile:141: all] Error 2<br>root@ni-n3xx-318F043:~/build_mpm#=C2=
=A0<br></div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 2020 at 2:21 PM Rob Kossler &=
lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">ok.=
=C2=A0=C2=A0<div><br></div><div>Yes, I always use timed tune commands. If t=
hat were not happening correctly, I don&#39;t think I could get consistent =
results with TwinRx.</div><div><br></div><div>I am presently using 3.14.1.1=
.=C2=A0 I will complete the testing (using internal LO) I&#39;ve already be=
gun with this version and then re-test some/all using 3.15.=C2=A0 Assuming =
that the results are different, it would seem that Ettus should consider ap=
plying the fixes to the 3.14 branch.</div><div><br></div><div>Rob</div><div=
><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Mon, Jan 27, 2020 at 2:18 PM Nate Temple &lt;<a href=3D"mailt=
o:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettus.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,san=
s-serif">Hi Rob,<br><br>One other thing, if you&#39;re not on UHD v3.15.0.0=
, I&#39;d recommend to update to it. There was some phase reset and accumul=
ator fixes with 3.15.0.0.<br><br><a href=3D"https://github.com/EttusResearc=
h/uhd/blob/UHD-3.15.LTS/CHANGELOG#L44" target=3D"_blank">https://github.com=
/EttusResearch/uhd/blob/UHD-3.15.LTS/CHANGELOG#L44</a><br><br><br>Regards,<=
br>Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Mon, Jan 27, 2020 at 11:17 AM Nate Temple &lt;<a hre=
f=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.temple@ettus.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,hel=
vetica,sans-serif">Hi Rob,<br><br>You should always use a tune request with=
 a timed command when you want to align channels.<br><br>One thing you coul=
d test is to try using the internal LO and see if you get different results=
.<br><br>Also you could try using the integer N tuning mode, but I don&#39;=
t think it will make any difference for this issue. Checkout this great blo=
g post on USRP tuning if you haven&#39;t seen it before that covers a few m=
ore tips on USRP tuning: <a href=3D"http://www.radio-science.net/2017/12/ad=
ventures-in-usrp-tuning.html" target=3D"_blank">http://www.radio-science.ne=
t/2017/12/adventures-in-usrp-tuning.html</a><br><br>Regards,<br>Nate Temple=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Jan 27, 2020 at 9:33 AM Rob Kossler &lt;<a href=3D"mailto:rko=
ssler@nd.edu" target=3D"_blank">rkossler@nd.edu</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi Nat=
e,</div><div>I changed the subject as to not further hijack the other threa=
d. Of the 16 captures I collected, some of them included a tuning command (=
but using the same timed commands I use for other devices such as TwinRx). =
But, others did not.=C2=A0 For example, for the first two data points below=
 (with measured phase difference of -77 and -19 respectively).=C2=A0 I simp=
ly issued two consecutive timed streaming commands.=C2=A0 So, I was very pe=
rplexed by the results.</div><div><br></div><div>In any event, I plan to re=
-take the data today both with and without a DDC.=C2=A0 Hopefully, if I get=
 rid of the DDC, I will see consistent phase results, but we&#39;ll see.=C2=
=A0 Let me know if you have other ideas.</div><div>Rob</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 2020=
 at 12:04 PM Nate Temple &lt;<a href=3D"mailto:nate.temple@ettus.com" targe=
t=3D"_blank">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"font-famil=
y:arial,helvetica,sans-serif"><br>@Rob: With the current init process of th=
e N310, yes it is required to first set the external LO to 5 GHz. <br><br>W=
ith regards to the offsets you&#39;re seeing, I believe you should only see=
 a possible phase difference of 180* within the two channels on the same DB=
. Are you issuing a tune request at the start of streaming?<br><br>Regards,=
<br>Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Jan 27, 2020 at 8:20 AM Rob Kossler via USRP-u=
sers &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">us=
rp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr">Robert, Sammy,<div>I am presently =
running some tests which compare the X310/TwinRx and the N310 with regard t=
o channel-to-channel phase.=C2=A0 In my setup, I have a signal source that =
is split 8 ways (1:8 splitter) to feed the 4 channels of my TwinRx and 4 ch=
annels of my N310. I have seen some strange behavior of the N310 that perha=
ps Robert has experienced?=C2=A0 Take a look:</div><div><ul><li>For the Twi=
nRx (for which I am a more experienced user with LO sharing), I get consist=
ent channel-to-channel phase difference among all channels. This is true re=
gardless of power cycles, re-starts of UHD, etc.</li><li>For the N310 (for =
which I am a beginner when it comes to external LO operation)</li><ul><li>i=
t seems more complex to run in this mode (as compared to TwinRx).=C2=A0 In =
order to get it to work, I have had to disable startup QEC calibration beca=
use it seems that the N310 initial cal occurs at 2500 MHz RF such that I wo=
uld need to have my external LO at 5000 MHz for startup (during the UHD dev=
eice &#39;make&#39;) and then later switch my external LO to the desired RF=
*2. Is this true?</li><li>when I run with either external LO or internal LO=
, I see inconsistent channel-to-channel phase results even between the two =
channels of a given daughterboard that share the same LO.=C2=A0 I do not un=
derstand how this is possible.=C2=A0 My results over 16 captures (with some=
 re-starts of UHD, device reboots, and switching between internal/external =
LO) show the following channel-to-channel phase difference between channels=
 0 and 1 which share the same LO: (values in degrees) -77, -19, -77, -19, -=
77, -19, -19, 39, -19, -19, -77, -19, -77, 39, -19, -19.=C2=A0 Note that th=
ere are only 3 unique values and the delta happens to be 58 deg, but I don&=
#39;t know what that implies...</li></ul></ul><div>Rob</div></div><div><br>=
</div></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
"><br></div></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000008eaff0059d252f94--


--===============4985675383355524307==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4985675383355524307==--


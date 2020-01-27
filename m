Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B47A14A90A
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 18:34:20 +0100 (CET)
Received: from [::1] (port=53480 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iw8HC-0005O4-Tv; Mon, 27 Jan 2020 12:34:18 -0500
Received: from mail-oi1-f177.google.com ([209.85.167.177]:34517)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1iw8H9-0005I6-DZ
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 12:34:15 -0500
Received: by mail-oi1-f177.google.com with SMTP id l136so7461120oig.1
 for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2020 09:33:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mkfagi+e75gp1tB9UdZSGwpX1xKqYE97qJ+eKNxpIwE=;
 b=Mqbp28NzQ+/3x7aH1GcRwKoePKpX21AGNWpeT4tmKZEG5yY1Q7exWww3JVtNr29Cip
 JWgn40Ntf6ITLtM1dQH3AiVvlisKFPpxaEdXBBV9T+8zxI73JEWDGUffRykfBUB8w87X
 jTMDr63siQhwbNZ51UxHAWbw7yjSNCy/uYfV1HwLsMtGnF8hTp77McVBAF64yy+VdZe9
 Hya6Z8RN8jFSXwis1T2hzQpVCxDznvA4VrMe8yVqmVYlHHg63/WaiNjP92GKM+Y/y7my
 i5ONNQbVGpl8z1owD3zz+uwDka/pCdh81+dt/l4x0v0al8VJNbTpq55aq/zhR6O4HHS4
 sYQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mkfagi+e75gp1tB9UdZSGwpX1xKqYE97qJ+eKNxpIwE=;
 b=dqRaP3T42NuES4ESZZ4gAMcUOhM6xZgIfNLitEqfB+8d2tabIJX11FZcnr/V9ETQXD
 I7WE4y7FA9HjXvsF6ai6jDyi+ICgXHyQERsBlLBiht7QaimIFWdRU6zN6UvNTGEZwOSu
 XqV/Yfa3DtNXnuao9ApgOcs90dI8lgbAV18Jbx6l7NepSu59uYe8I9GjET0edWoxRCUl
 d/kUCIzlf5WzRFSPylUVRv4AXZJ2jtdFrX1aByuk7IW5v9kA9Ct2ccjd1dGGobci675U
 Ys3XZQqm6acRi0MABVX5zDxPDZsIS/w5KVC9bmgtzNv88RD+TSI6pvQGy0sknZtvV31F
 /NXw==
X-Gm-Message-State: APjAAAXCPGW7oSQJRgGOxwu0HYZNiE+RE+25a+CrjyklXnPjqyfAhkj0
 u1PQRJVCC7n4P34U5iyOje0ZCZaBVeBJDRBjuVe9dQ==
X-Google-Smtp-Source: APXvYqy9mYosDni8eWoYeLNMzFTG2iYugnghxPiLOQEvzwLKTfzu1efelqeN99PWJB564Y/kMit5TQ9wHVjW4TiOFBQ=
X-Received: by 2002:aca:4587:: with SMTP id s129mr119950oia.124.1580146414545; 
 Mon, 27 Jan 2020 09:33:34 -0800 (PST)
MIME-Version: 1.0
References: <CAE6G02_pDDd2H5yX8Sf2jqBC7bo1hnqBMgz5-i09NBCBYSoZgQ@mail.gmail.com>
 <5E2DD2CA.60502@gmail.com>
 <CAE6G02_gbpWZENFyB0EuGdDiGfWKBOitqE0VamkNRuqPTd_MgA@mail.gmail.com>
 <1eae252bad4344f2b296e8bb4fb0d278@dlr.de>
 <CAE6G028jQc8Fd8U8-EmTCCZwyKjN5+MJGcEJs5FKvm1PyrNofw@mail.gmail.com>
 <9386a8b56e9b4514bfd076ce7c106cec@dlr.de>
 <CAB__hTSXvtRmb41qd2i5tL-EKG+YbWb-YqEhw6Hoey3Wj_tE6g@mail.gmail.com>
 <CAL263izVZA5A7jpX+5GbCMaVy4Jq=CvZkDd6-ng0xTT9-zb15A@mail.gmail.com>
In-Reply-To: <CAL263izVZA5A7jpX+5GbCMaVy4Jq=CvZkDd6-ng0xTT9-zb15A@mail.gmail.com>
Date: Mon, 27 Jan 2020 12:33:23 -0500
Message-ID: <CAB__hTS=qwkz6-y7fKP54dz6Jr8ZR_n6=2Eu11NiyHsHFOYP5A@mail.gmail.com>
To: Nate Temple <nate.temple@ettus.com>
Subject: [USRP-users] N310 phase jumps with 1 daughterboard
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
Content-Type: multipart/mixed; boundary="===============5092792436075877799=="
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

--===============5092792436075877799==
Content-Type: multipart/alternative; boundary="000000000000bbbda5059d2281a9"

--000000000000bbbda5059d2281a9
Content-Type: text/plain; charset="UTF-8"

Hi Nate,
I changed the subject as to not further hijack the other thread. Of the 16
captures I collected, some of them included a tuning command (but using the
same timed commands I use for other devices such as TwinRx). But, others
did not.  For example, for the first two data points below (with measured
phase difference of -77 and -19 respectively).  I simply issued two
consecutive timed streaming commands.  So, I was very perplexed by the
results.

In any event, I plan to re-take the data today both with and without a
DDC.  Hopefully, if I get rid of the DDC, I will see consistent phase
results, but we'll see.  Let me know if you have other ideas.
Rob

On Mon, Jan 27, 2020 at 12:04 PM Nate Temple <nate.temple@ettus.com> wrote:

>
> @Rob: With the current init process of the N310, yes it is required to
> first set the external LO to 5 GHz.
>
> With regards to the offsets you're seeing, I believe you should only see a
> possible phase difference of 180* within the two channels on the same DB.
> Are you issuing a tune request at the start of streaming?
>
> Regards,
> Nate Temple
>
> On Mon, Jan 27, 2020 at 8:20 AM Rob Kossler via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Robert, Sammy,
>> I am presently running some tests which compare the X310/TwinRx and the
>> N310 with regard to channel-to-channel phase.  In my setup, I have a signal
>> source that is split 8 ways (1:8 splitter) to feed the 4 channels of my
>> TwinRx and 4 channels of my N310. I have seen some strange behavior of the
>> N310 that perhaps Robert has experienced?  Take a look:
>>
>>    - For the TwinRx (for which I am a more experienced user with LO
>>    sharing), I get consistent channel-to-channel phase difference among all
>>    channels. This is true regardless of power cycles, re-starts of UHD, etc.
>>    - For the N310 (for which I am a beginner when it comes to external
>>    LO operation)
>>       - it seems more complex to run in this mode (as compared to
>>       TwinRx).  In order to get it to work, I have had to disable startup QEC
>>       calibration because it seems that the N310 initial cal occurs at 2500 MHz
>>       RF such that I would need to have my external LO at 5000 MHz for startup
>>       (during the UHD deveice 'make') and then later switch my external LO to the
>>       desired RF*2. Is this true?
>>       - when I run with either external LO or internal LO, I see
>>       inconsistent channel-to-channel phase results even between the two channels
>>       of a given daughterboard that share the same LO.  I do not understand how
>>       this is possible.  My results over 16 captures (with some re-starts of UHD,
>>       device reboots, and switching between internal/external LO) show the
>>       following channel-to-channel phase difference between channels 0 and 1
>>       which share the same LO: (values in degrees) -77, -19, -77, -19, -77, -19,
>>       -19, 39, -19, -19, -77, -19, -77, 39, -19, -19.  Note that there are only 3
>>       unique values and the delta happens to be 58 deg, but I don't know what
>>       that implies...
>>
>> Rob
>>
>>
>>

--000000000000bbbda5059d2281a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Nate,</div><div>I changed the subject as to not fu=
rther hijack the other thread. Of the 16 captures I collected, some of them=
 included a tuning command (but using the same timed commands I use for oth=
er devices such as TwinRx). But, others did not.=C2=A0 For example, for the=
 first two data points below (with measured phase difference of -77 and -19=
 respectively).=C2=A0 I simply issued two consecutive timed streaming comma=
nds.=C2=A0 So, I was very perplexed by the results.</div><div><br></div><di=
v>In any event, I plan to re-take the data today both with and without a DD=
C.=C2=A0 Hopefully, if I get rid of the DDC, I will see consistent phase re=
sults, but we&#39;ll see.=C2=A0 Let me know if you have other ideas.</div><=
div>Rob</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Jan 27, 2020 at 12:04 PM Nate Temple &lt;<a href=3D"mailto:n=
ate.temple@ettus.com">nate.temple@ettus.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div style=3D"f=
ont-family:arial,helvetica,sans-serif"><br>@Rob: With the current init proc=
ess of the N310, yes it is required to first set the external LO to 5 GHz. =
<br><br>With regards to the offsets you&#39;re seeing, I believe you should=
 only see a possible phase difference of 180* within the two channels on th=
e same DB. Are you issuing a tune request at the start of streaming?<br><br=
>Regards,<br>Nate Temple</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 2020 at 8:20 AM Rob Kossler v=
ia USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_=
blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">Robert, Sammy,<div>I am p=
resently running some tests which compare the X310/TwinRx and the N310 with=
 regard to channel-to-channel phase.=C2=A0 In my setup, I have a signal sou=
rce that is split 8 ways (1:8 splitter) to feed the 4 channels of my TwinRx=
 and 4 channels of my N310. I have seen some strange behavior of the N310 t=
hat perhaps Robert has experienced?=C2=A0 Take a look:</div><div><ul><li>Fo=
r the TwinRx (for which I am a more experienced user with LO sharing), I ge=
t consistent channel-to-channel phase difference among all channels. This i=
s true regardless of power cycles, re-starts of UHD, etc.</li><li>For the N=
310 (for which I am a beginner when it comes to external LO operation)</li>=
<ul><li>it seems more complex to run in this mode (as compared to TwinRx).=
=C2=A0 In order to get it to work, I have had to disable startup QEC calibr=
ation because it seems that the N310 initial cal occurs at 2500 MHz RF such=
 that I would need to have my external LO at 5000 MHz for startup (during t=
he UHD deveice &#39;make&#39;) and then later switch my external LO to the =
desired RF*2. Is this true?</li><li>when I run with either external LO or i=
nternal LO, I see inconsistent channel-to-channel phase results even betwee=
n the two channels of a given daughterboard that share the same LO.=C2=A0 I=
 do not understand how this is possible.=C2=A0 My results over 16 captures =
(with some re-starts of UHD, device reboots, and switching between internal=
/external LO) show the following channel-to-channel phase difference betwee=
n channels 0 and 1 which share the same LO: (values in degrees) -77, -19, -=
77, -19, -77, -19, -19, 39, -19, -19, -77, -19, -77, 39, -19, -19.=C2=A0 No=
te that there are only 3 unique values and the delta happens to be 58 deg, =
but I don&#39;t know what that implies...</li></ul></ul><div>Rob</div></div=
><div><br></div></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr"><br></div></div>
</blockquote></div>
</blockquote></div></div>

--000000000000bbbda5059d2281a9--


--===============5092792436075877799==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5092792436075877799==--


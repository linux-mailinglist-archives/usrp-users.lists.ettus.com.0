Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A524F14AA57
	for <lists+usrp-users@lfdr.de>; Mon, 27 Jan 2020 20:18:58 +0100 (CET)
Received: from [::1] (port=55764 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iw9uT-0005Sf-Gj; Mon, 27 Jan 2020 14:18:57 -0500
Received: from mail-ot1-f50.google.com ([209.85.210.50]:33471)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <nate.temple@ettus.com>)
 id 1iw9uP-0005KS-MK
 for usrp-users@lists.ettus.com; Mon, 27 Jan 2020 14:18:53 -0500
Received: by mail-ot1-f50.google.com with SMTP id b18so9567989otp.0
 for <usrp-users@lists.ettus.com>; Mon, 27 Jan 2020 11:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FK6X1R2YLx/r5IBJfygLLLJX0tkpC/e/CB8pC5/DQ+I=;
 b=tnJlWgB3cdw5jNtWPXGCJhxvwc6ZwRjUrKWDjfXGY5LYBuz2VFAeqkFpJbvQj2e4Pd
 1LqYSXmtyUtk5H1PmiF+tSrC0dd7a1G249nWXOgV75UrT+giSCVbfpdabQc+mzM9f9i/
 RiR/NvH0jhG2bRQjmsNfHis+2rsQPBN0qsjjDuQasBcKgrOseDPer87Lpwn4Y7i/UbUC
 5w341VMGdt1dSKMkwfSPK7guXd6GTuHbWCGDrcNQ+OqqQ+V3uMJfno1fuZhOw3ROdKcM
 lG4dhnKF7DtgM03GytAl0o0EK8sxxcICmSLrUt4YwL4ev2vRwJ7q6p01aREA8LjsZ0vo
 WmyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FK6X1R2YLx/r5IBJfygLLLJX0tkpC/e/CB8pC5/DQ+I=;
 b=KUnOwE1c3RpTfOnltqnN5jVsOh+RvWV3H1tjUNQO5paZBZuBIUhCLFMa/shXANSAEa
 +4Zn8krXgC6mR2Pie2q3ObO7alsrMYL22BogOOqZJQoU5+nX5SEum2dqJnGsGH28rbxc
 de2cE+O924y0GJKeytbTwsUoxvKFXuH0GoAs/Jc3NkteGGUsa4ur1ByCOWPE8vUm83u6
 PIZUyH5Zpe0K3OrJaD06YbW4a6OMRGPLKQ58wz46YjJ/Z2R8u4jOQj3Bl020gorSS6S9
 GXQg03mnqYskD529TGlzbg3e/WuJ0b19YSzk+3Wgu/VLNj5w4+MScBgvfetTULqMEWZ0
 WGKw==
X-Gm-Message-State: APjAAAX3om2vwl4MZ1MoaxA4HHJr7NyFDP+HfyLyT7oGPt/1PwU2Nxls
 n8vA+74hj07iJ0j4Yt44foqucHbViL3+H71PPVgjpY6ZDgAiMQ==
X-Google-Smtp-Source: APXvYqwtLEySyWyuFpznj49HCr/chpG4Chs0DNnwUqIRGxYzbMbBHoDxnUFkT3o3ciqu/RMRItElyKLivBqPjuqa5ng=
X-Received: by 2002:a05:6830:1e2d:: with SMTP id
 t13mr14015008otr.128.1580152692943; 
 Mon, 27 Jan 2020 11:18:12 -0800 (PST)
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
In-Reply-To: <CAL263iwYWeO-OLvsiUTmLRvWGa_fGsg4hv-MYnppQmCKGtAipQ@mail.gmail.com>
Date: Mon, 27 Jan 2020 11:20:06 -0800
Message-ID: <CAL263iwTvw6evt9es0RGK1BT+t_=bFhhsNe2NwLe9ap7Yd6FRg@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
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
From: Nate Temple via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Nate Temple <nate.temple@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7440639638706760707=="
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

--===============7440639638706760707==
Content-Type: multipart/alternative; boundary="000000000000f436fd059d23f746"

--000000000000f436fd059d23f746
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

One other thing, if you're not on UHD v3.15.0.0, I'd recommend to update to
it. There was some phase reset and accumulator fixes with 3.15.0.0.

https://github.com/EttusResearch/uhd/blob/UHD-3.15.LTS/CHANGELOG#L44


Regards,
Nate Temple

On Mon, Jan 27, 2020 at 11:17 AM Nate Temple <nate.temple@ettus.com> wrote:

> Hi Rob,
>
> You should always use a tune request with a timed command when you want to
> align channels.
>
> One thing you could test is to try using the internal LO and see if you
> get different results.
>
> Also you could try using the integer N tuning mode, but I don't think it
> will make any difference for this issue. Checkout this great blog post on
> USRP tuning if you haven't seen it before that covers a few more tips on
> USRP tuning:
> http://www.radio-science.net/2017/12/adventures-in-usrp-tuning.html
>
> Regards,
> Nate Temple
>
> On Mon, Jan 27, 2020 at 9:33 AM Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi Nate,
>> I changed the subject as to not further hijack the other thread. Of the
>> 16 captures I collected, some of them included a tuning command (but using
>> the same timed commands I use for other devices such as TwinRx). But,
>> others did not.  For example, for the first two data points below (with
>> measured phase difference of -77 and -19 respectively).  I simply issued
>> two consecutive timed streaming commands.  So, I was very perplexed by the
>> results.
>>
>> In any event, I plan to re-take the data today both with and without a
>> DDC.  Hopefully, if I get rid of the DDC, I will see consistent phase
>> results, but we'll see.  Let me know if you have other ideas.
>> Rob
>>
>> On Mon, Jan 27, 2020 at 12:04 PM Nate Temple <nate.temple@ettus.com>
>> wrote:
>>
>>>
>>> @Rob: With the current init process of the N310, yes it is required to
>>> first set the external LO to 5 GHz.
>>>
>>> With regards to the offsets you're seeing, I believe you should only see
>>> a possible phase difference of 180* within the two channels on the same DB.
>>> Are you issuing a tune request at the start of streaming?
>>>
>>> Regards,
>>> Nate Temple
>>>
>>> On Mon, Jan 27, 2020 at 8:20 AM Rob Kossler via USRP-users <
>>> usrp-users@lists.ettus.com> wrote:
>>>
>>>> Robert, Sammy,
>>>> I am presently running some tests which compare the X310/TwinRx and the
>>>> N310 with regard to channel-to-channel phase.  In my setup, I have a signal
>>>> source that is split 8 ways (1:8 splitter) to feed the 4 channels of my
>>>> TwinRx and 4 channels of my N310. I have seen some strange behavior of the
>>>> N310 that perhaps Robert has experienced?  Take a look:
>>>>
>>>>    - For the TwinRx (for which I am a more experienced user with LO
>>>>    sharing), I get consistent channel-to-channel phase difference among all
>>>>    channels. This is true regardless of power cycles, re-starts of UHD, etc.
>>>>    - For the N310 (for which I am a beginner when it comes to external
>>>>    LO operation)
>>>>       - it seems more complex to run in this mode (as compared to
>>>>       TwinRx).  In order to get it to work, I have had to disable startup QEC
>>>>       calibration because it seems that the N310 initial cal occurs at 2500 MHz
>>>>       RF such that I would need to have my external LO at 5000 MHz for startup
>>>>       (during the UHD deveice 'make') and then later switch my external LO to the
>>>>       desired RF*2. Is this true?
>>>>       - when I run with either external LO or internal LO, I see
>>>>       inconsistent channel-to-channel phase results even between the two channels
>>>>       of a given daughterboard that share the same LO.  I do not understand how
>>>>       this is possible.  My results over 16 captures (with some re-starts of UHD,
>>>>       device reboots, and switching between internal/external LO) show the
>>>>       following channel-to-channel phase difference between channels 0 and 1
>>>>       which share the same LO: (values in degrees) -77, -19, -77, -19, -77, -19,
>>>>       -19, 39, -19, -19, -77, -19, -77, 39, -19, -19.  Note that there are only 3
>>>>       unique values and the delta happens to be 58 deg, but I don't know what
>>>>       that implies...
>>>>
>>>> Rob
>>>>
>>>>
>>>>

--000000000000f436fd059d23f746
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi Rob,<br><br>One other thing, if you&#39;re not on UH=
D v3.15.0.0, I&#39;d recommend to update to it. There was some phase reset =
and accumulator fixes with 3.15.0.0.<br><br><a href=3D"https://github.com/E=
ttusResearch/uhd/blob/UHD-3.15.LTS/CHANGELOG#L44">https://github.com/EttusR=
esearch/uhd/blob/UHD-3.15.LTS/CHANGELOG#L44</a><br><br><br>Regards,<br>Nate=
 Temple</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, Jan 27, 2020 at 11:17 AM Nate Temple &lt;<a href=3D"ma=
ilto:nate.temple@ettus.com">nate.temple@ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div clas=
s=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif">Hi Rob=
,<br><br>You should always use a tune request with a timed command when you=
 want to align channels.<br><br>One thing you could test is to try using th=
e internal LO and see if you get different results.<br><br>Also you could t=
ry using the integer N tuning mode, but I don&#39;t think it will make any =
difference for this issue. Checkout this great blog post on USRP tuning if =
you haven&#39;t seen it before that covers a few more tips on USRP tuning: =
<a href=3D"http://www.radio-science.net/2017/12/adventures-in-usrp-tuning.h=
tml" target=3D"_blank">http://www.radio-science.net/2017/12/adventures-in-u=
srp-tuning.html</a><br><br>Regards,<br>Nate Temple</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 202=
0 at 9:33 AM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_=
blank">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div>Hi Nate,</div><div>I changed th=
e subject as to not further hijack the other thread. Of the 16 captures I c=
ollected, some of them included a tuning command (but using the same timed =
commands I use for other devices such as TwinRx). But, others did not.=C2=
=A0 For example, for the first two data points below (with measured phase d=
ifference of -77 and -19 respectively).=C2=A0 I simply issued two consecuti=
ve timed streaming commands.=C2=A0 So, I was very perplexed by the results.=
</div><div><br></div><div>In any event, I plan to re-take the data today bo=
th with and without a DDC.=C2=A0 Hopefully, if I get rid of the DDC, I will=
 see consistent phase results, but we&#39;ll see.=C2=A0 Let me know if you =
have other ideas.</div><div>Rob</div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">On Mon, Jan 27, 2020 at 12:04 PM Nate Temple=
 &lt;<a href=3D"mailto:nate.temple@ettus.com" target=3D"_blank">nate.temple=
@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr"><div style=3D"font-family:arial,helvetica,sans-=
serif"><br>@Rob: With the current init process of the N310, yes it is requi=
red to first set the external LO to 5 GHz. <br><br>With regards to the offs=
ets you&#39;re seeing, I believe you should only see a possible phase diffe=
rence of 180* within the two channels on the same DB. Are you issuing a tun=
e request at the start of streaming?<br><br>Regards,<br>Nate Temple</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Mon, Jan 27, 2020 at 8:20 AM Rob Kossler via USRP-users &lt;<a href=3D"mai=
lto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr">Robert, Sammy,<div>I am presently running some tests whic=
h compare the X310/TwinRx and the N310 with regard to channel-to-channel ph=
ase.=C2=A0 In my setup, I have a signal source that is split 8 ways (1:8 sp=
litter) to feed the 4 channels of my TwinRx and 4 channels of my N310. I ha=
ve seen some strange behavior of the N310 that perhaps Robert has experienc=
ed?=C2=A0 Take a look:</div><div><ul><li>For the TwinRx (for which I am a m=
ore experienced user with LO sharing), I get consistent channel-to-channel =
phase difference among all channels. This is true regardless of power cycle=
s, re-starts of UHD, etc.</li><li>For the N310 (for which I am a beginner w=
hen it comes to external LO operation)</li><ul><li>it seems more complex to=
 run in this mode (as compared to TwinRx).=C2=A0 In order to get it to work=
, I have had to disable startup QEC calibration because it seems that the N=
310 initial cal occurs at 2500 MHz RF such that I would need to have my ext=
ernal LO at 5000 MHz for startup (during the UHD deveice &#39;make&#39;) an=
d then later switch my external LO to the desired RF*2. Is this true?</li><=
li>when I run with either external LO or internal LO, I see inconsistent ch=
annel-to-channel phase results even between the two channels of a given dau=
ghterboard that share the same LO.=C2=A0 I do not understand how this is po=
ssible.=C2=A0 My results over 16 captures (with some re-starts of UHD, devi=
ce reboots, and switching between internal/external LO) show the following =
channel-to-channel phase difference between channels 0 and 1 which share th=
e same LO: (values in degrees) -77, -19, -77, -19, -77, -19, -19, 39, -19, =
-19, -77, -19, -77, 39, -19, -19.=C2=A0 Note that there are only 3 unique v=
alues and the delta happens to be 58 deg, but I don&#39;t know what that im=
plies...</li></ul></ul><div>Rob</div></div><div><br></div></div><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"><br></div></div>
</blockquote></div>
</blockquote></div></div>
</blockquote></div>
</blockquote></div>

--000000000000f436fd059d23f746--


--===============7440639638706760707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7440639638706760707==--


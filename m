Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 284EB60E9C4
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 22:04:23 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CFCC7383BAE
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 16:04:21 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666814661; bh=yYjWXgvRKpMQtNyajWdjBzXKYK0hrb8qx6IuznmZg3M=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=EahdCTJ4c8jQNvyVjaocvAtlrMldSClw2nXLKZ5hMxGuMTTvNMFwdq0u1QO6mcmaM
	 g3REvMzjzNEVUZ4gRt36DNglc+P56Pp96vfF9Y8IqNdVpHWzYbzv3LMWbXWmrg/PwR
	 vVHpNYNy0K+kqRBdkhlg5pU2joxeb5tC9fhRm0Q8ShnGNRfz01382Nu7rx5o36yIPa
	 ZtKo584RrwSyTZwqzLR/MIpwzPqsJDU3Egvn/JtCzcpf1eRG+bh2S5gHTeie+ojqFs
	 912ZB1m1YTrjV1YqTNsvGF1D4jCLvQq5Vkp64A/yHbW6/JxGUOl5RFiLsSIhXY4Ih9
	 zgy1AC/l2Nk5Q==
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	by mm2.emwd.com (Postfix) with ESMTPS id A1A7938009D
	for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 16:03:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="h5QkXK60";
	dkim-atps=neutral
Received: by mail-ot1-f44.google.com with SMTP id z11-20020a05683020cb00b00661a95cf920so10676601otq.5
        for <usrp-users@lists.ettus.com>; Wed, 26 Oct 2022 13:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LkLUJ+wpuURXIphfXVokgYUmKjLhCuMi8yIy3HnvE1g=;
        b=h5QkXK60Y1YAS+AwubTBZFofA8UiUr+YE8VeVFl2Xv5c1rtKmRkmxepOmY95YtzS6l
         YOaDbtwiU8hywlsOQl6+hgq3NCAGw5/I/zokWK/+0/t4o+a7YeUri6yaKqzn/1kFuJBO
         q8ufyUZZU+WMzfZZv5kNJobabzbsLzML+3MHLuooULPKcYo4F/Uywu5ddoeDksuaf2DY
         phz8M3QECb+i7PtQdoA94yuhEA0Uw5MsmmN0DWU2/7RgIsrafEI8FbX452bB6ZyC7uBm
         oTNOkR+Jp/hohrlfGv9+3BpaJN1d7r0M20bXEoRn5l8gxNHAi7TZ9NCZ7nc60k7Epx8X
         eaRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LkLUJ+wpuURXIphfXVokgYUmKjLhCuMi8yIy3HnvE1g=;
        b=V98aNvaUbF6OP77jq8mMrCVomBE526zsSiH0TmBXPkM5+OnetZWbTEChdGUsLi5P3Q
         f179/G3BgXJCv9rE+Zcl94peIgyJaNBPoNG01bWWmZ1/m8HKfolYn62hAYRTw31E5+Z8
         2m/WbWbr+3xbS/NFiCdYI+gWt74SvPp9spRsIe1zFoxXA28uli45p9VJTBIkUucRWUjy
         RD/4itnrW8jrWhOE4KwXu5P3r803XcLCAmfblf5mGR30Un1B3JoH05pHvwknbs63BeGM
         mL9bZdew2wIvSrNbjWiR07dvJTtggNYbbmAOE/Yia8lwrMm0ArLKfZRfXSstwr1vCRhL
         Lk5Q==
X-Gm-Message-State: ACrzQf3zTWQFYH9gpZ3qJ1WZGyGL6tDvBp6qvl5KzFxfkZ9zWoDLDiIb
	1bH8I+AkjatEuiS7A0jgRs7xAuL33srMwVr7DpLA1LIs
X-Google-Smtp-Source: AMsMyM7snCLNQc4tD48+bvpeum4x7/kryLkp1ZxKqCuEBij0ly/TnKSrQ4MfnC2U8JRv0GKknd7fRuo7KOt/YY6rnwM=
X-Received: by 2002:a05:6830:2005:b0:662:28ac:de19 with SMTP id
 e5-20020a056830200500b0066228acde19mr13972323otp.116.1666814592618; Wed, 26
 Oct 2022 13:03:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
 <CAOcXSJyEbqEUD+3+yyFQ=AJk-kzse==UVDfoy75+AqiHD758aw@mail.gmail.com>
 <CAEXYVK5nnW0xt=EOpMT-G_13FkWZSPs4d9w29J+RVgdtBDS4SQ@mail.gmail.com>
 <CAOcXSJxfY+_0RmMWri6Zxg_pd0MHe-TMPY1iLdgprKw_g0pXpA@mail.gmail.com> <CAEXYVK7j70E=3R+kLuuhKVOTa39S+ra_Ux4aUb4QgqwR-+cLDQ@mail.gmail.com>
In-Reply-To: <CAEXYVK7j70E=3R+kLuuhKVOTa39S+ra_Ux4aUb4QgqwR-+cLDQ@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 26 Oct 2022 16:03:01 -0400
Message-ID: <CAEXYVK4qwCaMdx+qhdTo8m_rPzJMeQfuRxUxSgczTEC_i6jJTw@mail.gmail.com>
To: Wan Liu <wan.liu@ettus.com>
Message-ID-Hash: B2J5VR4XVMNZ73ZLKKRHAR7AAHLO3GTH
X-Message-ID-Hash: B2J5VR4XVMNZ73ZLKKRHAR7AAHLO3GTH
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX Channel Isolation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B2J5VR4XVMNZ73ZLKKRHAR7AAHLO3GTH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5922851365504541889=="

--===============5922851365504541889==
Content-Type: multipart/alternative; boundary="000000000000b313c805ebf5832a"

--000000000000b313c805ebf5832a
Content-Type: text/plain; charset="UTF-8"

After a bunch of testing, I ended up with the following solution which
seems to have fixed the vast majority of the issue.  There's still extra
noise, but not nearly as bad as it was previously so I'd appreciate it if
Ettus still looked into a more complete solution.

For now, I just enabled the "mute till lock detect" feature of the ADF5356
and ADF4351 PLLs.  I modified gen_adf5356_regs.py and gen_adf4351_regs.py
to default it to be on, and the ld_cyc_count to be the longest possible.

Brian

On Wed, Oct 26, 2022 at 9:38 AM Brian Padalino <bpadalino@gmail.com> wrote:

> Hey Wan,
>
> On Tue, Oct 25, 2022 at 10:53 PM Wan Liu <wan.liu@ettus.com> wrote:
>
>> Hello Brian,
>>
>> Thank you for the additional information.
>>
>> Regarding  #6, I meant that if you have two TwinRX daughterboards, see if
>> you get this problem when the fixed channel is on one daughterboard, and
>> the tuned channel is on the other.
>>
>
> Ah, I see.  Unfortunately my setup is a mixed USB/TwinRX setup so maybe it
> isn't exactly testing what you're asking for, but I did use the subdev spec
> to target the UBX RX2 for hopping around, and the TwinRX Channel 0 was
> fixed.  In this case, the fixed spectrum stayed nice and clean the whole
> time.
>
>
>>
>> Regarding screenshots, are you referring to any particular frequency and
>> time region, or is everything above the noise floor associated with the
>> tuning? In other words, is the clean spectrum where there is nothing above
>> the noise floor in both time and frequency plots?
>>
>
> The captures were taken with terminated RF inputs.  Channel 0 of the
> TwinRX was fixed at some frequency (I believe 400 MHz) and Channel 1 was
> hopping around.  The recording was observing Channel 0 - the fixed
> frequency channel.  When no hopping happens, there is clean spectrum with
> just a noise floor which is what I expected to see.  When hopping is
> happening, every so often we will see these sweeping signals show up.  They
> last around 10 ms or so and then the spectrum is back to being clean.
>
>
>>
>> Also can you explain what you mean by "shows some analog PLL-style
>> locking for around 10 ms of time, then goes away"? Are you referring to the
>> burst from 3 ms to 13 ms, or something specifically at 10 ms?
>>
>
> I meant the phenomenon that starts at around 3 ms and lasts until around
> 13 ms.  It looks like an analog PLL settling to me.  Here is a zoomed in
> version:
>
>
> https://drive.google.com/file/d/1NDax78i3UQh7X_R4g8SHBkBLibI1ICQZ/view?usp=sharing
>
>
>>
>> Lastly, what are your spectrogram parameters to generate the waterfall?
>>
>
> I am using an FFT size of 2048 with a blackmanharris window of the same
> size, and overlapping by 1024.  My MATLAB command is:
>
>   spectrogram(slice, blackmanharris(2048), 1024, 2048, 50e6, 'centered');
>
>
>>
>> I'll reach out again after I attempt to reproduce.
>>
>
> Sounds good.  Let me know if you need any other data or clarifications on
> what I am seeing.
>
> Thanks,
> Brian
>
>>

--000000000000b313c805ebf5832a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">After a bunch of testing, I ended up with the following so=
lution which seems to have fixed the vast majority of the issue.=C2=A0 Ther=
e&#39;s still extra noise, but not nearly as bad as it was previously so I&=
#39;d appreciate it if Ettus still looked into a more complete solution.<di=
v><br></div><div>For now, I just enabled the &quot;mute till lock detect&qu=
ot; feature of the ADF5356 and ADF4351 PLLs.=C2=A0 I modified gen_adf5356_r=
egs.py and gen_adf4351_regs.py to default it to be on, and the ld_cyc_count=
 to be the longest possible.</div><div><br></div><div>Brian</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Oc=
t 26, 2022 at 9:38 AM Brian Padalino &lt;<a href=3D"mailto:bpadalino@gmail.=
com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hey Wan,</div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, O=
ct 25, 2022 at 10:53 PM Wan Liu &lt;<a href=3D"mailto:wan.liu@ettus.com" ta=
rget=3D"_blank">wan.liu@ettus.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><div><div>Hello Bria=
n,<br><br></div>Thank you for the additional information. <br><br></div>Reg=
arding=C2=A0 #6, I meant that if you have two TwinRX daughterboards, see if=
 you get this problem when the fixed channel is on one daughterboard, and t=
he tuned channel is on the other.</div></div></blockquote><div><br></div><d=
iv>Ah, I see.=C2=A0 Unfortunately my setup is a mixed USB/TwinRX setup so m=
aybe it isn&#39;t exactly testing what you&#39;re asking for, but I did use=
 the subdev spec to target the UBX RX2 for hopping around, and the TwinRX C=
hannel 0 was fixed.=C2=A0 In this case, the fixed spectrum stayed nice and =
clean the whole time.</div><div>=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div><br></div>Regarding screenshots, a=
re you referring to any particular frequency and time region, or is everyth=
ing above the noise floor associated with the tuning? In other words, is th=
e clean spectrum where there is nothing above the noise floor in both time =
and frequency plots?<br></div></blockquote><div><br></div><div>The captures=
 were taken with terminated RF inputs.=C2=A0 Channel 0 of the TwinRX was fi=
xed at some frequency (I believe 400 MHz) and Channel 1 was hopping around.=
=C2=A0 The recording was observing Channel 0 - the fixed frequency channel.=
=C2=A0 When no hopping happens, there is clean spectrum with just a noise f=
loor which is what I expected to see.=C2=A0 When hopping is happening, ever=
y so often we will see these sweeping signals show up.=C2=A0 They last arou=
nd 10 ms or so and then the spectrum is back to being clean.</div><div>=C2=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div><br></div><div>Also can you explain what you mean by &quot;shows some=
 analog PLL-style locking for around 10 ms of time, then goes away&quot;? A=
re you referring to the burst from 3 ms to 13 ms, or something specifically=
 at 10 ms?<br></div></div></blockquote><div><br></div><div>I meant the phen=
omenon that starts at around 3 ms and lasts until around 13 ms.=C2=A0 It lo=
oks like an analog PLL settling to me.=C2=A0 Here is a zoomed in version:</=
div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://drive.google.com/fil=
e/d/1NDax78i3UQh7X_R4g8SHBkBLibI1ICQZ/view?usp=3Dsharing" target=3D"_blank"=
>https://drive.google.com/file/d/1NDax78i3UQh7X_R4g8SHBkBLibI1ICQZ/view?usp=
=3Dsharing</a></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div><br></div><div>Lastly, what are your spec=
trogram parameters to generate the waterfall?<br></div></div></blockquote><=
div><br></div><div>I am using an FFT size of 2048 with a blackmanharris win=
dow of the same size, and overlapping by 1024.=C2=A0 My MATLAB command is:<=
/div><div><br></div><div>=C2=A0=C2=A0spectrogram(slice, blackmanharris(2048=
), 1024, 2048, 50e6, &#39;centered&#39;);</div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><br></div><div=
>I&#39;ll reach out again after I attempt to reproduce.<br></div></div></bl=
ockquote><div><br></div><div>Sounds good.=C2=A0 Let me know if you need any=
 other data or clarifications on what I am seeing.</div><div><br></div><div=
>Thanks,</div><div>Brian</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
</blockquote></div>
</blockquote></div></div>
</blockquote></div>

--000000000000b313c805ebf5832a--

--===============5922851365504541889==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5922851365504541889==--

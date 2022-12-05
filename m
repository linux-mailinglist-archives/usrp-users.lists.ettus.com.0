Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 959AA642B2C
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 16:15:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE45B383F55
	for <lists+usrp-users@lfdr.de>; Mon,  5 Dec 2022 10:15:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670253343; bh=kh465Bj4CQLRJbhvISQw22He016+V/pyMvgLFKXeq5Y=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Z1uks0v9C6VfcT0UBSuVAGWrv7/e6/J5VSTy6cERN0Vko9sCBFmEoEySteYPNyqXd
	 fr3dOluPVpzRMUDyXQwSlduEJ0WNmmWfqGcMbFjCZEDKIRwkZzm2nZdTlcjxq7FcyF
	 5QkB3BuaOmywEn83NwD4eludtNyuHXOszxE9TTfCKF4NCC+yL33G/9Eo6qY3NibkaT
	 VcHfhfAV4oIqIcTHYjC3hrYDR4Cnj7aUoYzs9S/94bv4DeGKjgnykywbLL07h3JHCu
	 LWI2VXswDo30YWsqn/Z4H7EWDc2AFTrNUDTvlPNf0cx9ynQXg9jvw1CnvDqiw8ef0F
	 wQ9N5fj1jEoQg==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 12523383EBB
	for <usrp-users@lists.ettus.com>; Mon,  5 Dec 2022 10:14:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="CmEZH8t6";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id t17so3234900eju.1
        for <usrp-users@lists.ettus.com>; Mon, 05 Dec 2022 07:14:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7h995XUprPReeHOSAGOtAgiIAGKDi+j+zR7uT65zVSM=;
        b=CmEZH8t6zRl9ftlGOi4Fhpl1HMLc2JY1dqQd2uGT9kFwvSf3r8YJgdoV8CbyV4uRH/
         DOaYbi++ungbT5NTv5lk9MPGZODtKjzSTrFJS3Ss+yJ+Fm24f3D/4MEqFuSV85Yd+Yyp
         oSMxoVRANYsrZdG8j7qn8DiDiFq/8pKcM1ccwSLAZP7I0Ts5WxCn16U0esbtFPbH2+fD
         Hyw8ewsV19r8l7WD7CZElsRf3ZO4Iplyw7Rk+VjmyVKDOosyyaKS+tNEcsL9NzLj/N8C
         m4kiApMIhDf+7qkBJOYrMyHNm6Gs158pfk3yaqqQUw3a5sYTdAeTKrbVk4hEkvCTz4bK
         /acg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7h995XUprPReeHOSAGOtAgiIAGKDi+j+zR7uT65zVSM=;
        b=yTKnB4THV0ypDgHoIcq6q+2jYIdtuI41i3RBKByS2mI8/y7Zbi7kpL2s9ESlArW9yO
         PEykM89u88/Epv7DRATl1p96enxiviXHX3dqO4VSdoTIPdKxvTE0T0OhO9x3Yv/EOr/J
         F6sDsMw0WMMwcZEhjL9/TQsPiYgajxMOC4y/wzdtWtuEy0tNwG5uGAOo2gWW0fhrwVy1
         QnVw74bPLUxIh+GtT39JjUHsuHe3VljPHDLi0MAO+ixTsfqWy8celeWB4p/R/6Mw09g3
         /wGiDzBhYKX4hsIRTwWV13igrzhz9mlcQKPsDELGBV+4NaaAJXgv4/rbhPLKLKKOGXO5
         G4EA==
X-Gm-Message-State: ANoB5pkAZSKARl+mUVL83VKFbDdVQE1YL44sda1zgWabPLEDpPeytOED
	/k7xsMhJmTgISytWXS3+uKGDgj1sphiJzLYV3cmxyWM=
X-Google-Smtp-Source: AA0mqf703pP1XBmpOr19hB+6EuOlrJPUJFArjTVnmW62nD5RIELpIvnD+alTmMyKW5unlnMxeo0cljqck/gp0boU8gI=
X-Received: by 2002:a17:906:cb:b0:7c0:d6b1:b3e8 with SMTP id
 11-20020a17090600cb00b007c0d6b1b3e8mr8514108eji.1.1670253286966; Mon, 05 Dec
 2022 07:14:46 -0800 (PST)
MIME-Version: 1.0
References: <CANV7_JNctBkVjQX2gaQYnwbD2OxdWyCta14=d_75Rah92mZkxA@mail.gmail.com>
 <CAB__hTSw1TWoGqdW+ARytxWG_Va8q9_Cx3xCxUmB5v9_8ifqHw@mail.gmail.com>
In-Reply-To: <CAB__hTSw1TWoGqdW+ARytxWG_Va8q9_Cx3xCxUmB5v9_8ifqHw@mail.gmail.com>
From: Roberto Rigamonti <roberto.rigamonti@gmail.com>
Date: Mon, 5 Dec 2022 16:14:35 +0100
Message-ID: <CANV7_JPioLmC9yFM-N+vX=ZBYHYryypUjsLQd-i2ep7-et60tQ@mail.gmail.com>
To: usrp-users@lists.ettus.com
Message-ID-Hash: J4L3O6H7ZDEAO5L3DC4TNTY7DF2DP4TL
X-Message-ID-Hash: J4L3O6H7ZDEAO5L3DC4TNTY7DF2DP4TL
X-MailFrom: roberto.rigamonti@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Single multi-usrp or multiple, synchronised usrp -- which is best ?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J4L3O6H7ZDEAO5L3DC4TNTY7DF2DP4TL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8289364580385120928=="

--===============8289364580385120928==
Content-Type: multipart/alternative; boundary="000000000000dae92c05ef1625ef"

--000000000000dae92c05ef1625ef
Content-Type: text/plain; charset="UTF-8"

Hello,

Thank for your quick reply! I've never considered creating multiple
streamers for sub-sets of channels in a multi-usrp configuration (I either
had used a single streamer for a multi-usrp, or per-boards streamers in
separate threads), and I hadn't thought having a look at UHD sources for
inspiration (from a quick glance, I would say that multi-usrp basically
does the job for me...)... Thanks for the suggestions ! :)

Best,
Rob

On Mon, 5 Dec 2022 at 15:55, Rob Kossler <rkossler@nd.edu> wrote:

> Hi Rob,
> I don't know the direct answer to your question about whether it is better
> to use a single "device" instance or to handle multiple boards in different
> threads. But, I'm wondering if perhaps the only thing that is critical is
> the handling of streamers.  In either case you mentioned, you can have
> multiple streamer threads (one for each channel if you want). In the past,
> I experienced better performance by running each streamer in its own
> thread, but I can't confirm if that is still true in more recent versions
> of UHD.  On a side note, you might want to take a look at the Ettus file
> host/lib/usrp/multi_usrp_rfnoc.cpp. This file shows how Ettus implements
> the multi_usrp object using the lower level commands of the RFNoC API.
> Rob
>
> On Mon, Dec 5, 2022 at 9:32 AM Roberto Rigamonti <
> roberto.rigamonti@gmail.com> wrote:
>
>> Hello,
>>
>> I have a mix of N320/N321 boards, and I would like to make synchronised
>> acquisitions using White Rabbit.
>> I have already achieved that using a custom software that creates a
>> single multi-usrp that encompasses all my boards (as it is suggested in
>> https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD),
>> but I've just stumbled upon Ettus Multichannel RF Reference Architecture (
>> https://kb.ettus.com/Multichannel_RF_Reference_Architecture) where
>> individual boards have their acquisitions made by separate threads.
>>
>> I was wondering which of the two approaches is best --- I would have bet
>> on the former, since it leaves the burden of dealing with multiple boards
>> to UHD (more elegant, less error-prone), but the other one is THE reference
>> architecture...
>>
>> Thanks in advance for your help! :)
>>
>> Best,
>> Rob
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000dae92c05ef1625ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>Thank for your quick =
reply! I&#39;ve never considered creating multiple streamers for sub-sets o=
f channels in a multi-usrp configuration (I either had used a single stream=
er for a multi-usrp, or per-boards streamers in separate threads), and I ha=
dn&#39;t thought having a look at UHD sources for inspiration (from a quick=
 glance, I would say that multi-usrp basically does the job for me...)... T=
hanks for the suggestions ! :)</div><div><br></div><div>Best,</div><div>Rob=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">On Mon, 5 Dec 2022 at 15:55, Rob Kossler &lt;<a href=3D"mailto:rk=
ossler@nd.edu">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Rob,<div=
>I don&#39;t know the direct answer to your question about whether it is be=
tter to use a single &quot;device&quot; instance or to handle multiple boar=
ds in different threads. But, I&#39;m wondering=C2=A0if perhaps the only th=
ing that is critical is the handling of streamers.=C2=A0 In either case you=
 mentioned, you can have multiple streamer threads (one for each channel if=
 you want). In the past, I experienced better performance by running each s=
treamer in its own thread, but I can&#39;t confirm if that is still true in=
 more recent versions of UHD.=C2=A0 On a side note, you might want to take =
a look at the Ettus file host/lib/usrp/multi_usrp_rfnoc.cpp. This file show=
s how Ettus implements the multi_usrp object using the lower level commands=
 of the RFNoC API.</div><div>Rob</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, Dec 5, 2022 at 9:32 AM Robert=
o Rigamonti &lt;<a href=3D"mailto:roberto.rigamonti@gmail.com" target=3D"_b=
lank">roberto.rigamonti@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello,</div><div><br=
></div><div>I have a mix of N320/N321 boards, and I would like to make sync=
hronised acquisitions using White Rabbit. <br></div><div>I have already ach=
ieved that using a custom software that creates a single multi-usrp that en=
compasses all my boards (as it is suggested in <a href=3D"https://kb.ettus.=
com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UHD" target=3D"_blank=
">https://kb.ettus.com/Synchronizing_USRP_Events_Using_Timed_Commands_in_UH=
D</a>), but I&#39;ve just stumbled upon Ettus Multichannel RF Reference Arc=
hitecture (<a href=3D"https://kb.ettus.com/Multichannel_RF_Reference_Archit=
ecture" target=3D"_blank">https://kb.ettus.com/Multichannel_RF_Reference_Ar=
chitecture</a>) where individual boards have their acquisitions made by sep=
arate threads.</div><div><br></div><div>I was wondering which of the two ap=
proaches is best --- I would have bet on the former, since it leaves the bu=
rden of dealing with multiple boards to UHD (more elegant, less error-prone=
), but the other one is THE reference architecture...</div><div><br></div><=
div>Thanks in advance for your help! :)</div><div><br></div><div>Best,</div=
><div>Rob<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div>

--000000000000dae92c05ef1625ef--

--===============8289364580385120928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8289364580385120928==--

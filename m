Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C036A60D848
	for <lists+usrp-users@lfdr.de>; Wed, 26 Oct 2022 02:01:10 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 68E78383C5A
	for <lists+usrp-users@lfdr.de>; Tue, 25 Oct 2022 20:01:09 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666742469; bh=hz0B9oph1oW/thg12YjCj/OWnVGgtxz14F2P1pPh+lI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ihiOcrvT7YepgaFnTA8o6vuQ/egbFzYKhNiOC0eLHEFmxF2IV+uKVzoeBYDX0AMa8
	 Z8RgifGazM3+jyHlF3HhwI70vO6DKifAK87vB+DIDuldsS0+6t/ixCXAgna9vuij6a
	 xuaEKJeMD47zdy1b6Cf0EVCxqlAut6IWFqENZB7IDrL6nZ92SwAKWqBiOihR5Sqxzc
	 o/zaxWjj52Xxcwgmp3lomQ6h6ScnYRBDUXUWHX1XIzXpDzyzjt85EJIIaxD2kekL8K
	 UR4I70HScMwmn9XaUc9zTB9nGbh0GCbcPjpJRfnUYFwSCL4LvRVN4Q9I8Y4esF8XjY
	 nxRVCpMbLOoXw==
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	by mm2.emwd.com (Postfix) with ESMTPS id CA1A4383C51
	for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 19:59:56 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="SbYjy0es";
	dkim-atps=neutral
Received: by mail-pg1-f176.google.com with SMTP id 20so13183415pgc.5
        for <usrp-users@lists.ettus.com>; Tue, 25 Oct 2022 16:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2y+GFXCM6YGOlBF3i5XEDUs4FBWRnaedUdulVplSijM=;
        b=SbYjy0esVdE23s58A9aP7OAgyzCvNLczwH3bRcmiDR5ywuJhdUorN3BbKatTDlCMKO
         KZlXbgXtR9A3AnLRNr+dZAqnL9QBpz/deaCAbypd7aH04ojr1mdDc/swJbCzgCtkAQw2
         g/CgtAzdVzFSpIVbk9yr8vxE4iFTdb9L6Vj7HLlCJhEutyDFe32wx0o9/oU7uPEKeW01
         MEQ9GAcXSXltpyTy6tKAbE3qSwXE+y9AoxsxSejhdDiV8D0f62vrq/2TSmO7P2xnk/vH
         OrGBivv2Ie0nwrQ1y3uK9GN8qLi/v2YZbCZizfUz64t1/NSBvCPoFIVfzUunaabhhItY
         lCZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2y+GFXCM6YGOlBF3i5XEDUs4FBWRnaedUdulVplSijM=;
        b=kR+kybHn4GQmBhUxXwlAgQy5KwbRI2ui2rbBiXq0XrC38E1eEXIz6vCsL8TFrbj0og
         zeoYr93X9y813RBBY0KuT+28cjnn+ru+P04/rs4XJIFB1AysCwts5PwvlSSepNAoX1gR
         Ae2qfJeqRA7HP4lVgCf+eArpAMGjtcV+onvYtdDMIe+vwhwwTcepTYL5IGryo4WQ/Xc9
         UUlaDRNjdpUKyG7spyWLqbqjlt+sJts5dAgVD58qZmUtqiHfNOjem5VCMisQHnwZtNdH
         kcpPBr+Wx5huFYFLe6UB7yMHyIJ2XbyX8f6f5qGFuFrGouaMwNFx2aO0TsJKRb/EmidJ
         LcVA==
X-Gm-Message-State: ACrzQf3iEeY+925wPj0cTvF7lovey3J9VYefj9xUUQ7vozDeiYAGQroj
	JLDynINrV2tApi5SW3tx6RVQBbJBlEYm6bUpxEp2jaj8fRC65w==
X-Google-Smtp-Source: AMsMyM4jDNrERdJ/j2aYs8vd0H9KTh6iG7T210LiKaDtsgGQl9Pw6o7y46nI/eNlvw8xp+yhGsbDWcIur24Gm2h8Vgo=
X-Received: by 2002:a05:6a00:2446:b0:52b:e9a8:cb14 with SMTP id
 d6-20020a056a00244600b0052be9a8cb14mr41070276pfj.32.1666742395746; Tue, 25
 Oct 2022 16:59:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
In-Reply-To: <CAEXYVK4siP3O0-qP24bpp=Phjj0JRt1rB9n0R=9CxDOyTCiyTQ@mail.gmail.com>
From: Wan Liu <wan.liu@ettus.com>
Date: Tue, 25 Oct 2022 19:59:44 -0400
Message-ID: <CAOcXSJyEbqEUD+3+yyFQ=AJk-kzse==UVDfoy75+AqiHD758aw@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: 546SS66FJSBEDM4IEZ35XAJDGLCLAXGX
X-Message-ID-Hash: 546SS66FJSBEDM4IEZ35XAJDGLCLAXGX
X-MailFrom: wan.liu@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: TwinRX Channel Isolation
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/546SS66FJSBEDM4IEZ35XAJDGLCLAXGX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7963186105258101611=="

--===============7963186105258101611==
Content-Type: multipart/alternative; boundary="0000000000006e50a105ebe4b4af"

--0000000000006e50a105ebe4b4af
Content-Type: text/plain; charset="UTF-8"

Hello Brian,

I'll see if  I can reproduce with my TwinRX. Please provide some more
information to help me reproduce...

1. Center Frequency of fixed channel 0
2. Tuning range on channel 1
3. What tuning rate have you tried and what's the threshold between a clean
spectrum and a bad one?
4. Please share screenshots of what you are seeing
5. Please share uhd_usrp_probe output so I know your serial, revision, uhd
version, etc
6. Can you reproduce this problem when it's two channels on different
daughterboards? In other words, ch 0 and ch 1 on the same TwinRX, and ch 0
and ch 1 across each DB slot.

There's several switchable routes before and after each stage LO going
across channels, so it's possible there are some isolation problems between
channels. My first thought is also to remove LO sharing cables, but as you
said, it doesn't improve.

Maybe switching the switches that are not used might help give better
isolation. From schematic, if channel 1 uses its own LO, then only switch
16 is needed, and switch 14 which routes LO 1 to the sister channel 2 isn't
used. So I'm wondering if the state of switch 14 makes a difference in
terms of isolation. I'd have to check the software to see if you can
independently flip these switches, and if it's recommended, to test this
hypothesis. I will also check internally if similar issue is reported and
get back to you.

Regards,

Wan Liu

On Tue, Oct 25, 2022 at 6:16 PM Brian Padalino <bpadalino@gmail.com> wrote:

> I have an application where I am using both channels of the TwinRX without
> using LO sharing.  I am using channel 0 as a single frequency channel, and
> I am using channel 1 to tune to different frequencies.
>
> I am noticing that some transients happen on channel 0 - the fixed
> frequency channel - as I am changing channel 1.  This happens with even
> terminated inputs on both channels.  I also notice that if I change the
> rate at which I am changing channel 1, the spectrum, on average, is much
> cleaner but the transients stay there from a "max hold" perspective.  So
> once the LO has settled, things don't seem to be as noisy.
>
> My setup does not install the LO sharing cables, so those MMCX connectors
> are left floating/open.
>
> My question is if Ettus has seen this or knows about this?  As I stated
> previously, I don't need the LO sharing feature of the TwinRX and I am
> worried that constantly retuning the PLLs might be causing the noise and
> distributing it to the fixed frequency channel?  If that is the case, are
> there some resistors or modifications I might be able to make to the TwinRX
> that could remove this as a source of noise knowing I never want to perform
> the LO sharing?  If I didn't connect the MMCX LO sharing ports, am I
> already removing this as a possible noise source?
>
> Lastly, a thought is that the noise might be coming from digital switching
> noise to reprogram the LOs.  How feasible is this?
>
> Thanks,
> Brian
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006e50a105ebe4b4af
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Brian,<br><br></div><div>I&#39;ll see if=C2=A0 =
I can reproduce with my TwinRX. Please provide some more information to hel=
p me reproduce...<br><br></div><div>1. Center Frequency of fixed channel 0<=
br></div><div>2. Tuning range on channel 1<br></div><div>3. What tuning rat=
e have you tried and what&#39;s the threshold between a clean spectrum and =
a bad one?<br></div><div>4. Please share screenshots of what you are seeing=
<br></div><div>5. Please share uhd_usrp_probe output so I know your serial,=
 revision, uhd version, etc</div><div>6. Can you reproduce this problem whe=
n it&#39;s two channels on different daughterboards? In other words, ch 0 a=
nd ch 1 on the same TwinRX, and ch 0 and ch 1 across each DB slot. <br></di=
v><div><br></div><div>There&#39;s several switchable routes before and afte=
r each stage LO going across channels, so it&#39;s possible there are some =
isolation problems between channels. My first thought is also to remove LO =
sharing cables, but as you said, it doesn&#39;t improve. <br></div><div><br=
></div><div>Maybe switching the switches that are not used might help give =
better isolation. From schematic, if channel 1 uses its own LO, then only s=
witch 16 is needed, and switch 14 which routes LO 1 to the sister channel 2=
 isn&#39;t used. So I&#39;m wondering if the state of switch 14 makes a dif=
ference in terms of isolation. I&#39;d have to check the software to see if=
 you can independently flip these switches, and if it&#39;s recommended, to=
 test this hypothesis. I will also check internally if similar issue is rep=
orted and get back to you. <br><br></div><div>Regards,<br><br></div><div>Wa=
n Liu<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Oct 25, 2022 at 6:16 PM Brian Padalino &lt;<a href=
=3D"mailto:bpadalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I have =
an application where I am using both channels of the TwinRX without using L=
O sharing.=C2=A0 I am using channel 0 as a single frequency channel, and I =
am using channel 1 to tune to different frequencies.<div><br></div><div>I a=
m noticing that some transients happen on channel 0 - the fixed frequency c=
hannel - as I am changing channel 1.=C2=A0 This happens with even terminate=
d inputs on both channels.=C2=A0 I also notice that if I change the rate at=
 which I am changing channel 1, the spectrum, on average, is much cleaner b=
ut the transients stay there from a &quot;max hold&quot; perspective.=C2=A0=
 So once the LO has settled, things don&#39;t seem to be as noisy.</div><di=
v><br></div><div>My setup does not install the LO sharing cables, so those =
MMCX connectors are left floating/open.</div><div><br></div><div>My questio=
n is if Ettus has seen this or knows about this?=C2=A0 As I stated previous=
ly, I don&#39;t need the LO sharing feature of the TwinRX and I am worried =
that constantly retuning=C2=A0the PLLs might be causing the noise and distr=
ibuting it to the fixed frequency channel?=C2=A0 If that is the case, are t=
here some resistors or modifications I might be able to make to the TwinRX =
that could remove this as a source of noise knowing I never want to perform=
 the LO sharing?=C2=A0 If I didn&#39;t connect the MMCX LO sharing ports, a=
m I already removing this as a possible noise source?</div><div><br></div><=
div>Lastly, a thought is that the noise might be coming from digital switch=
ing noise to reprogram the LOs.=C2=A0 How feasible is this?</div><div><br><=
/div><div>Thanks,</div><div>Brian</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006e50a105ebe4b4af--

--===============7963186105258101611==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7963186105258101611==--

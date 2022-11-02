Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9988D616EED
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 21:41:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC7F33841C2
	for <lists+usrp-users@lfdr.de>; Wed,  2 Nov 2022 16:41:38 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667421698; bh=DAbILfSEa3c5fa7OyEEnWVPia1WhxG52/dvEdKNR/cw=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=aFLdKGR5VABg6yRryAsZ/0UX4tpAT5DPlQPeTK8VNAhh6diWVGERCrO0StEy3a8Qz
	 2ik3q+XhKqquyDKnqR9EHJr8SMxX56pxLgg/l8hqyujzPJ5X50/8yvQXYB7s4lU6ix
	 Q6ROsjx2Llf8F7ZF20/AAaS6Ir+EfRSmc/8RjH8X25GdvU/eH3AEkryOX+S0w7IPAx
	 Bmv1CKpMM600NwZNwMA7McsJdYRuj1prOszdOU2UbQUm7mB9BFV0I3rJCn8VYVYW+V
	 bs5RoeyVSVWBWmntd48SGBaWRv51mqmgQiWGjBpVs+cx765iXbyyQSWGH8mvz423RM
	 Ad6JV1VRy+Gzg==
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	by mm2.emwd.com (Postfix) with ESMTPS id EDF8C384176
	for <usrp-users@lists.ettus.com>; Wed,  2 Nov 2022 16:39:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ourowndomain-com.20210112.gappssmtp.com header.i=@ourowndomain-com.20210112.gappssmtp.com header.b="QJI8ye1A";
	dkim-atps=neutral
Received: by mail-vk1-f169.google.com with SMTP id g4so6202873vkk.6
        for <usrp-users@lists.ettus.com>; Wed, 02 Nov 2022 13:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ourowndomain-com.20210112.gappssmtp.com; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RzrtuExkBCdjIZGHlVHpq4q5oN7nP8/d6E9tnW0Zh68=;
        b=QJI8ye1AAcbN64gGgChl7Ss3G4b8wM8YJdDHVqYFV2TZ7QgZdcbw3KL4SBOwsAvRQv
         2Pfwnn1BkUWqiT7oMDT9HJgPxJDGpR7vBHcHrEgtqAlHSSoLXURKyFn7nDu2JW0FNxgW
         VndbuEs379cpVtz1Axn/uMaR191L5EhDP1QPJ4uB9crDk5yrCuiFfkiqpISztZ50e8LQ
         KdhYjm84uQ/VCMFaeXCdB2ELiKZSNAb29+hst5vuPoyjj5qVvZoBOWpuWTD3mpR17E8x
         BB6TztCP2ci8SzyyxFNo70AFr1NtNnKhZKcK/S7HP6/dujWFBu86BA11pyZ83DkBITMY
         8ziw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RzrtuExkBCdjIZGHlVHpq4q5oN7nP8/d6E9tnW0Zh68=;
        b=wnTwvhAw6W9iN5IfQD2unl2K7RW9I560+cSw97TzHYWIlvQSGGLKTlmwEsRXF76dqv
         mkAcbwB5M/mYgL+L46dVufFcvYD0YRcIWp7JZUG2h/BNFGaRsaf55wonnZvCqPqgvo5X
         EyFHHP6VCUfow7ab1fih6uRwgV9GuKcDpg0PLjc/wIDbjIsizr153iBoMOqN0MNmsz1K
         HHPQ9GhgNP0ydylwpGx9b0tncnoTfRJFWq5Ilpi5EiExksvky4bM+OZYPL4MxGCgp37W
         7YiLn1UV2WvL0nspt8gXj+wc1eq6lbqKtrDuYzsykBtPjCnTKCnqW56hgtAnBTO/vZCm
         doYg==
X-Gm-Message-State: ACrzQf3TwlWW0+Mcvrhf/c9z1XQTNP12mrA/OXodGeFxoejXNAZ8Uk4A
	H/3LIyUO0jEZmkeBlP3uzHACjrHSHOUg+SDhPujT4cUxaE+l2w==
X-Google-Smtp-Source: AMsMyM70hP8TuYEvpATNqLZjjGJsZsYKlc5QWV4mNRIMDn67NfAF5XS1oIAnIp3lkmNoC405f0GF6w8hEhiKYVKRLtc=
X-Received: by 2002:a1f:1f08:0:b0:3b8:2d74:5faf with SMTP id
 f8-20020a1f1f08000000b003b82d745fafmr11005101vkf.26.1667421587076; Wed, 02
 Nov 2022 13:39:47 -0700 (PDT)
MIME-Version: 1.0
References: <CANsNear2pq3y6SP31Z=Y0Qk=aLhS-4qRqBg1g8W6Lk+0nwM_sw@mail.gmail.com>
In-Reply-To: <CANsNear2pq3y6SP31Z=Y0Qk=aLhS-4qRqBg1g8W6Lk+0nwM_sw@mail.gmail.com>
From: Rich Gopstein <rich@ourowndomain.com>
Date: Wed, 2 Nov 2022 16:39:35 -0400
Message-ID: <CANsNeapRKvT4Uu_cmJ9tF-qrg2D10FYUZmoTFgq4521ODFUt-g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: VXUSIRQISHBABUV2B2RDD5KTDAJXSWGE
X-Message-ID-Hash: VXUSIRQISHBABUV2B2RDD5KTDAJXSWGE
X-MailFrom: rich@ourowndomain.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 GnuRadio upgrade?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VXUSIRQISHBABUV2B2RDD5KTDAJXSWGE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6208225844097594979=="

--===============6208225844097594979==
Content-Type: multipart/alternative; boundary="000000000000638c1a05ec82d7da"

--000000000000638c1a05ec82d7da
Content-Type: text/plain; charset="UTF-8"

I tried following the instructions in here:
https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source
to cross compile GnuRadio on my Ubuntu box, but the cmake failed
because the OE environment was from 2016 and had old library versions.

I could really use some suggestions on how to get a more modern GnuRadio
(3.9+) on the E310.

Thanks.
Rich

On Tue, Oct 25, 2022 at 2:32 PM Rich Gopstein <rich@ourowndomain.com> wrote:

> I'd like to run GR 3.9 or later on the E310.  Is there a documented
> process to upgrade GR on the E310?
>
> Thanks.
> Rich
>
>

--000000000000638c1a05ec82d7da
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I tried following the instructions in here:=C2=A0<a href=
=3D"https://kb.ettus.com/Software_Development_on_the_E3xx_USRP_-_Building_R=
FNoC_UHD_/_GNU_Radio_/_gr-ettus_from_Source">https://kb.ettus.com/Software_=
Development_on_the_E3xx_USRP_-_Building_RFNoC_UHD_/_GNU_Radio_/_gr-ettus_fr=
om_Source</a><div>to cross compile GnuRadio on my Ubuntu box, but the cmake=
 failed because=C2=A0the OE environment was from 2016 and had old library v=
ersions.</div><div><br></div><div>I could really use some suggestions on ho=
w to get a more modern GnuRadio (3.9+) on the E310.</div><div><br>Thanks.</=
div><div>Rich</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, Oct 25, 2022 at 2:32 PM Rich Gopstein &lt;<a hre=
f=3D"mailto:rich@ourowndomain.com">rich@ourowndomain.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>I&#39;d like to run GR 3.9 or later on the E310.=C2=A0 Is there a docume=
nted process to upgrade GR on the E310?</div><div><br></div><div>Thanks.</d=
iv><div>Rich</div><div><br></div></div>
</blockquote></div>

--000000000000638c1a05ec82d7da--

--===============6208225844097594979==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6208225844097594979==--

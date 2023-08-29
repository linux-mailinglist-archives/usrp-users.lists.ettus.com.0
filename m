Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 074EA78CD73
	for <lists+usrp-users@lfdr.de>; Tue, 29 Aug 2023 22:19:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C435E384B0D
	for <lists+usrp-users@lfdr.de>; Tue, 29 Aug 2023 16:19:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1693340372; bh=lSOB8i6Z1KS/kAsIj/9Zzyt/C68L0H7WHbp+1bouVeA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=oSu+Tmu1u5/cGpqW7qzmoLG8dRmqZtDRIsN3C/mPhgCebrwkPMeo5ilXO2XJU4TPT
	 D54qBgJhxJCMzK/5A6tXC3g5SI5wPjAyxrpSwcD3pjA8QhcyjqcBYKiwTeY0ORemyh
	 zX873zb002WIhIrCKZeGrbdPs68oV1pS4p0MqpxyLb4bvZNIre94fAj3n2LGBAPI8p
	 issOZx4y7lmpPU3DP+3rR6/iipskmGwyJGuWt793tBp5sncJZyvzfWol9C1XuwiJ6h
	 qg7wep5lEYFd0L+NrD6CXx9f98QzNNKXVWsnLraZRQ+LhU6upkv0w4RhiTwzDiTpRO
	 KaVMIttlO/lXg==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id B3A3C384B0D
	for <usrp-users@lists.ettus.com>; Tue, 29 Aug 2023 16:19:03 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="uN7y3fTI";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-9936b3d0286so654512666b.0
        for <usrp-users@lists.ettus.com>; Tue, 29 Aug 2023 13:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1693340342; x=1693945142; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oK4wGVoqs+k4ErT2UMnmCm7wRAyL4nmnU7nBg1fI5zI=;
        b=uN7y3fTIcPD5i99qpy+ZqLEKDyPk540JQX++ubPI6L428Y0voHKUjKilCF9Jmv68+1
         8VUh4MZ2RtlTPpc4X8l6A4EiUVFG8iAPSA2Wm6DfW60nH9DOaGOJPYNHGX7dTdIKvUpI
         2JVyKYSq5kjpHNWEtAgQlg1Q5bNNgeOX2mBwxHfwbZ67o8oPJ6d/AJY/jks1Wzx3ANwL
         XuIGBNsd/d9GxuaRSI/NeRYY7zAbRYqkGzXrSfzsfhTI+IChzAoMHva77cNDcscVx6/4
         oa/DeAy5Q2h63AtO7RYr3ITq5JqSLpom9spQlqF8D0FGRUQ11hgqLX2Z4OJ+50inxUHb
         3yjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693340342; x=1693945142;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oK4wGVoqs+k4ErT2UMnmCm7wRAyL4nmnU7nBg1fI5zI=;
        b=iT7pRhX5JruYNGNWm7gmAD7aXx8JO5KlFBeYM4Q9Gc4+SBeOkIOk9VszX0z5XYFAy/
         x8gFAELgmc6XxLgjg+cM2ykNVffC7zB/b/vSYsPF1PQM/DXGelfqsEIuh/3Y7W+605eQ
         IwvgbeRO9EMlvhK8P7j1MigwLSTPr9uKaMveG1SbSPJ+/dnHE/FlrTQ0dVzVx3rc+Sq/
         OFdgqZpW+2hGqxE5+tl9HSwVcMPzAZL4QxlxpmnX+j5fvUlCx2t9A5Buvx3ZjA27kXFd
         Gkm42jjiJeOcX7pXZjuxOOHcsdFAfbPoCY1qsb/0Fp1Jlqn3ILUm6nHBqAFWzFeG4vin
         7FeQ==
X-Gm-Message-State: AOJu0Yx5Oe8QLhYt/IslQntTyuapWPpix64QvdL3YViL3xr2ZyUFVmHf
	ZWH82k9Hpam3Moks8WLvs4lQl3rIWUCLVfR9/v3E0yAeAIbP1+UeS+aVYg==
X-Google-Smtp-Source: AGHT+IEth28L6ukjG48WDVxC7bskt0pVNlL5r1HRImCsN9xjy6NxrJ+A1aQTCtZyvb/P/mvA9hFkomngTaksuB7MkM8=
X-Received: by 2002:a17:906:3d22:b0:9a1:bb8f:17de with SMTP id
 l2-20020a1709063d2200b009a1bb8f17demr83389ejf.35.1693340342371; Tue, 29 Aug
 2023 13:19:02 -0700 (PDT)
MIME-Version: 1.0
References: <8HDAKdbuUpu1lNxONDfQeJgOuTGPsP42tgZ2iu7DFg@lists.ettus.com>
In-Reply-To: <8HDAKdbuUpu1lNxONDfQeJgOuTGPsP42tgZ2iu7DFg@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 29 Aug 2023 15:18:46 -0500
Message-ID: <CAFche=jWLJAgNV4ECkEha=9BvEU0dAnonkXwS1SqTkjVFUUwvQ@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: HD7PNGTM6XO354ALVYULTIYXIEULB27H
X-Message-ID-Hash: HD7PNGTM6XO354ALVYULTIYXIEULB27H
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Specifications of host computer for 100 Gb/s streaming with x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HD7PNGTM6XO354ALVYULTIYXIEULB27H/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7637747934051305875=="

--===============7637747934051305875==
Content-Type: multipart/alternative; boundary="00000000000097592e0604158598"

--00000000000097592e0604158598
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There are some general recommendations here:
https://kb.ettus.com/X410#100_Gigabit_Ethernet

The CPUs listed there are a bit old now. High single-thread CPU performance
is important. Having several CPU cores dedicated for streaming is important
too, but you can only use so many cores for streaming, so really high core
counts aren't necessarily required.

Wade

On Tue, Aug 29, 2023 at 10:35=E2=80=AFAM <jmaloyan@umass.edu> wrote:

> Hello,
>
> We are shopping around for a new host computer to stream data off an x410
> with 100 Gb/s. We could not find any PC recommendations on the x410
> website. Does anybody here have any prebuilt recommendations or bought
> parts separately. Any recommendations is much appreciated
>
> Thanks,
>
> Joe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000097592e0604158598
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There are some general recommendations here:</div><di=
v><a href=3D"https://kb.ettus.com/X410#100_Gigabit_Ethernet">https://kb.ett=
us.com/X410#100_Gigabit_Ethernet</a></div><div><br></div><div>The CPUs list=
ed there are a bit old now. High single-thread CPU performance is important=
. Having several CPU cores dedicated for streaming is important too, but yo=
u can only use so many cores for streaming, so really high core counts aren=
&#39;t necessarily required. <br></div><div><br></div><div>Wade<br></div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, Aug 29, 2023 at 10:35=E2=80=AFAM &lt;<a href=3D"mailto:jmaloyan@umass=
.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><p>Hello,</p><p>We are shopping around for a new ho=
st computer to stream data off an x410 with 100 Gb/s. We could not find any=
 PC recommendations on the x410 website. Does anybody here have any prebuil=
t recommendations or bought parts separately. Any recommendations is much a=
ppreciated</p><p>Thanks,</p><p>Joe </p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000097592e0604158598--

--===============7637747934051305875==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7637747934051305875==--

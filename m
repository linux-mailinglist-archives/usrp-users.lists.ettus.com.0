Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD625B91D0
	for <lists+usrp-users@lfdr.de>; Thu, 15 Sep 2022 02:38:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8F15B383C4A
	for <lists+usrp-users@lfdr.de>; Wed, 14 Sep 2022 20:38:54 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663202334; bh=dQVwsInKdyNNlk5Ug38urbtbiT6k6KnsKBtuWRZKMTA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=OZCtTbJ6zI126T+ZmLsbJ+whAhhErG4lcfzkRy1AHWSyJLJ5uAQz5neA4EfJbImGH
	 Kk9zwxhFbq0DNrcCCzboWPcQBtmRadCAgIXl4oF++dHB4maHoBiAqk6PVYOEVv5QVv
	 3+JMx7XQxVo/xh/GPaUPBrARBqduSqHdbh7DdqphP4FM+5i4ibotQhR2oiUcC0AfSZ
	 1+ybBAySEKm8X3QWKyhzje7bwq6FVyaN6qTJxhPgopXTj0Cq8udj/VOg57o6yrOKdb
	 uZZbf3U1M9cjjdg1dQua+kZ1gupszDYDnISEQ5WQCOSWL1Pc61zaRy9rrtoqAEDjld
	 ablaLFd7hcD8Q==
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 8584D383B5C
	for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 20:37:30 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="hnPe9xgn";
	dkim-atps=neutral
Received: by mail-io1-f44.google.com with SMTP id e205so9673429iof.1
        for <usrp-users@lists.ettus.com>; Wed, 14 Sep 2022 17:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=SdAgYiEa6YxbT3NF/bqJ319hBORB+v5SuPzVk+50jus=;
        b=hnPe9xgnE+y8I0UJ3GL8NNNYM3HbBECpycoEzDfb5e/4A1TRhd3dE4P41crTsRO70K
         TGUGjONdmA3Bs1wAbRWz0iV8ecztMpRU9fW5DNX80ys3eGWg5okldas23zUL2FJ6ZHwn
         8H8CEN0op/QoTVGeOy8s5mK7Ws6s8SD54kqYIFDVGGr24fw0/qdtv7EogkXKSDvO4kyd
         iTlHDGmgkc6W3/EberAyQgb3W47+MxoM6J8f/kQAQlq+F5VKvFWv8XB95/gZWTeRT850
         o7cM2irPhLfqovvvGK4Hqx3ZuT/Hx6/WfCV2I9WIakZgsk/AQCQ9+Xb7nE6MW5C4O58/
         FHhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=SdAgYiEa6YxbT3NF/bqJ319hBORB+v5SuPzVk+50jus=;
        b=KRm4gsXPIt1qtPODU/sQb0EeQWTNwgYyWzoXUyBmt3TPknTSqN8ACKPr/uDGo9bDo+
         iMBOD7zBQbhlMAdlq9ugJUWWJiNVU5ghgPhhfZK3j0RdgNBVNRYBi4Tg4NMpt+t7tE7P
         nHQ86e20M7XECe3ym5whZF10Ln4fHN462557FdRCDu1X4la6Dt0tzKDuMMwUgTpC06Cm
         OioG9OVbFJ6uF/6MclM4L+9yhRiswSTJhluIzraKusLknUJo+wNhHzH1qkD/u+v40wsf
         tkxc+8PLCeq0ouG+6YD/uMzwHYRmE3kuAKckqLZ/YU2XTpJ5OqE7FHVwhrpVI85TzSv2
         cZ2A==
X-Gm-Message-State: ACgBeo2qZdJR7iL7EjCf1BOonFY2WIPA3cGwEWRXD0ZZ3yaHKlKcPmFM
	W9KvLQZ0yWzXw3XEKHULktD9AC/RN43GdFmyoNJwPBsz
X-Google-Smtp-Source: AA6agR5ERz+v4X51nIHCAFPHodaH4u8h7pZSj3CsPwYFSyJMR4o3lEHtjs8RgRFoV9DNZhiyC7+0LpLWE7nsVSf8nAo=
X-Received: by 2002:a6b:e714:0:b0:6a1:35af:82dc with SMTP id
 b20-20020a6be714000000b006a135af82dcmr7121488ioh.205.1663202249692; Wed, 14
 Sep 2022 17:37:29 -0700 (PDT)
MIME-Version: 1.0
References: <KrQPMifKSF0coFKMQej2bH2vaF7jbszkyw2xMsXA0ZA@lists.ettus.com> <CAMMoi3tLd7c7QkufZbRQdn1WjEn2KUO8QTTLxhHHWn4+x7Nubw@mail.gmail.com>
In-Reply-To: <CAMMoi3tLd7c7QkufZbRQdn1WjEn2KUO8QTTLxhHHWn4+x7Nubw@mail.gmail.com>
From: Neel Pandeya <neel.pandeya@ettus.com>
Date: Wed, 14 Sep 2022 19:36:53 -0500
Message-ID: <CACaXmv_fBnm0uMRPfTiDx34yEpLtsb437coQP+V4AihFcvf0ew@mail.gmail.com>
To: Richard Bell <richard.bell4@gmail.com>
Message-ID-Hash: QMGCGRRSVPJAJC6KJFHFRBDZWF777ZHN
X-Message-ID-Hash: QMGCGRRSVPJAJC6KJFHFRBDZWF777ZHN
X-MailFrom: neel.pandeya@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: eduard.sivolenko@ni.com, usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 Multi-channel Transmit
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QMGCGRRSVPJAJC6KJFHFRBDZWF777ZHN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0061813318672665953=="

--===============0061813318672665953==
Content-Type: multipart/alternative; boundary="000000000000486e5005e8ac73ca"

--000000000000486e5005e8ac73ca
Content-Type: text/plain; charset="UTF-8"

Hello Richard Bell:

The issue here is that the AD9371 on the N300/N310 has the same limitation
as with the AD9361 on the USRP B200/B210, where the LO is shared between
the two Tx channels, and between the two Rx channels.  So it is not
possible to independently tune between the two Tx channels, or between the
two Rx channels.

--Neel Pandeya



On Wed, 14 Sept 2022 at 16:29, Richard Bell <richard.bell4@gmail.com> wrote:

> Hi Eduard,
>
> Yes that was my mistake. I am talking about the N310 family.
>
> Richard
>
> On Wed, Sep 14, 2022 at 1:13 AM <eduard.sivolenko@ni.com> wrote:
>
>> Hello Richard,
>>
>> In the title, you mentioned N310. However, the description is about E310.
>>
>> Could you please clarify the USRP family, i.e. N or E?
>>
>>
>> Thanks,
>>
>> Eduard
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000486e5005e8ac73ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D""><font face=3D"verd=
ana, sans-serif">Hello=C2=A0Richard Bell:</font></div><div class=3D"gmail_d=
efault" style=3D""><font face=3D"verdana, sans-serif"><br></font></div><div=
 class=3D"gmail_default" style=3D""><font face=3D"verdana, sans-serif">The =
issue here is that the AD9371 on the N300/N310 has the same limitation as w=
ith the AD9361 on the USRP B200/B210, where the LO is shared between the tw=
o Tx channels, and between the two Rx channels.=C2=A0 So it is not possible=
 to independently tune between the two Tx channels, or between the two Rx c=
hannels.<br></font></div><div class=3D"gmail_default" style=3D""><font face=
=3D"verdana, sans-serif"><br></font></div><div><div dir=3D"ltr" class=3D"gm=
ail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><fo=
nt face=3D"verdana, sans-serif">--Neel Pandeya</font></div><div><font face=
=3D"verdana, sans-serif"><br></font></div><div><br></div></div></div></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Wed, 14 Sept 2022 at 16:29, Richard Bell &lt;<a href=3D"mailto:richard.b=
ell4@gmail.com">richard.bell4@gmail.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Eduard,<div><br>=
</div><div>Yes that was my mistake. I am talking about the N310 family.</di=
v><div><br></div><div>Richard</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, Sep 14, 2022 at 1:13 AM &lt;<a h=
ref=3D"mailto:eduard.sivolenko@ni.com" target=3D"_blank">eduard.sivolenko@n=
i.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><p>Hello Richard,</p><p>In the title, you mentioned N310. However, the=
 description is about E310.</p><p>Could you please clarify the USRP family,=
 i.e. N or E?</p><p><br></p><p>Thanks,</p><p>Eduard</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000486e5005e8ac73ca--

--===============0061813318672665953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0061813318672665953==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BC275BC65B0
	for <lists+usrp-users@lfdr.de>; Wed, 08 Oct 2025 20:50:22 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0A245385CDD
	for <lists+usrp-users@lfdr.de>; Wed,  8 Oct 2025 14:50:22 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1759949422; bh=tUYbWflipraCTOaNntDO81Sp1wR7x2qhnImGGCrN288=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=ltDJlbOjIwgA5Ct+Brn0FQgY1PFiHSe4JjisdZBNhMSN83O7NkY/+YqfunsmOMcEf
	 99FDLuJIU6K+wERJO1jZHxcVyrqnRI/3JeTNiWjDD72OAB1qzYMBtFkk9GABPQN4Gw
	 xmlfNS7IiYYTrevl9Q4V8J+2ozOJiG4dVCk/shMZkazdfL4/MYbfJaZejgU5pdV/Wl
	 ZySsSsHCGhRUChMEHunJtmP7TnDXbl3Xyza/AhjRxtGfZSmVDL0CHPwnZ8XZHInH/u
	 wHtcTdIrbzm4XQIgT2YSbhn+VIJW1lYwhNT+mxC78sJAr7r2nUJZQ7lnO5FI3JMxiG
	 DWX4rTcU6SSzQ==
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 7BA573858AF
	for <usrp-users@lists.ettus.com>; Wed,  8 Oct 2025 14:50:01 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WnyQ76QV";
	dkim-atps=neutral
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b48d8deafaeso32096566b.1
        for <usrp-users@lists.ettus.com>; Wed, 08 Oct 2025 11:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759949400; x=1760554200; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=14asBah3seEoM3kPHICrzwnGUK2jb/6dM1hELxhmv0s=;
        b=WnyQ76QVv7/cm+bEvENd1+V/EILmLDyy1/QhGkdnxajLRanLeWG7WKJ8MylOXx1/JH
         oRWvdVLu3rq8orARw0iET8G1miNqv5/HAuhYVXs0z1oXSPjbuidqV3TR2AdA8Vlw2xEK
         gqaQpalYhidcFjkV+Cb6neyI+pH1mB/pyZ4lFT0ZHiUOgpwOtluruXOQNJW76M1fvTS/
         xpZ4wlBS9mhzquz5DZmGMHcYTgDGl05YYeUyRulCspzdVyGiw2BJ7wwU+BXFMyCy/j4P
         S6H/yDjzePcI05ukMCYzVpHWMWBEr0EIs1QSUG40d6XtAoAv9lVtbPIwApyFCk6HPrXs
         2QWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759949400; x=1760554200;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=14asBah3seEoM3kPHICrzwnGUK2jb/6dM1hELxhmv0s=;
        b=a1amT9KdTT3yscYc4pIK0L3mA712Omcmz9nhMFehdSqO51EfSYe87sj8sfpeTkeLJ0
         hveX7AHhD/73RAHi2hs/4OEk+XNw2FqP3oAZ8pQpQfTKr223T2K0qDFndDshFPvPmmia
         1TLSxPQSFoJekMFYTND3qfx55YVJkJga5HmoSjGwv8/sFCPJLcYHpP1OR7sWmS72T0KP
         EDy540uHlVq1AAmBEv7G9a1WRr54yfEXF87wCTRXouHb5yaEqeoD6yzeDNxlGLmQ/WO4
         D6gQPCaMsLJAK/FF86+6aHAkMBWUVCSRq9KdQrySsPiSnnE4yaSynFPq9tOaXTOcAMIx
         2Dkg==
X-Gm-Message-State: AOJu0YwM94WLqHu//6mkAZCUw0GpWU99cpuPImexD3YZnxKkHf0hHvT/
	/ER6LdXuWGY58IFGwe3DiDyDIuCCRzE9nCs95Vpb0mnBUcj0jvL4fJohL3Ey6kEd1tCBbHaKfqN
	S08yYt8NktnCyscsmZBmRKX9k09scz3Y=
X-Gm-Gg: ASbGncu8rS5k95vLHueUlrCkpRRcPqKNISjBsX8iwR5aH4a0ElEnM5qv2MO/+6jefnl
	jipJpnumKQKCB9xwSF7n8mrt03/6ce2RujW6+jDcHZH3nXNT0Rusqv6J6ffaNE0a9zTzHD6sSfi
	tkMm1whU3O2fa+7wn6CSuDRbJynHgVoCXbHHMMV+X5MinYT8uC1alYGgi2lSNaqqhGaXT1TSVrJ
	33m+fLlLsu2VveXltdhzl5baZ5SBzY=
X-Google-Smtp-Source: AGHT+IHVBN7HR1i594lpBamtNGUlhUs2ZunUXyN8PyaQRtYi2GCtwtqV4j67JKOe9vZk7YjRS/0Ri6NN920V9KOewIQ=
X-Received: by 2002:a17:907:2d8a:b0:b3e:e16a:8cf2 with SMTP id
 a640c23a62f3a-b50aca0b087mr487716066b.56.1759949400027; Wed, 08 Oct 2025
 11:50:00 -0700 (PDT)
MIME-Version: 1.0
References: <5D6pJksoat65AvVsHRzz6mSqsEI3UGvJsMi93HDD0e0@lists.ettus.com>
In-Reply-To: <5D6pJksoat65AvVsHRzz6mSqsEI3UGvJsMi93HDD0e0@lists.ettus.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Wed, 8 Oct 2025 14:49:48 -0400
X-Gm-Features: AS18NWDMTjgAv7lHoPAI6yAevEgoVlSv1qNC_1QljrNDnw51AriESYZl3pPqWRk
Message-ID: <CAEXYVK5i4e8s8=s-oB+53HVOwe7A7GVLe+58CVZNJfjg5qzn7w@mail.gmail.com>
To: ryan.a.wolfarth@gmail.com
Message-ID-Hash: UX74GWTYW6QTGVDSGG4ASPS2MQ5MQZUL
X-Message-ID-Hash: UX74GWTYW6QTGVDSGG4ASPS2MQ5MQZUL
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Accessing DDR within OOT RFNoC Block
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UX74GWTYW6QTGVDSGG4ASPS2MQ5MQZUL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7497508787808174951=="

--===============7497508787808174951==
Content-Type: multipart/alternative; boundary="000000000000cfb5540640aa26b3"

--000000000000cfb5540640aa26b3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 8, 2025 at 2:40=E2=80=AFPM <ryan.a.wolfarth@gmail.com> wrote:

> Greetings,
>
> I'm writing to request a heading-check on the design of an RFNoC block
> that needs to conditionally save/recall an arbitrary number of samples. I
> successfully built & ran a version of the gain example to convince myself
> that the build environment was setup correctly. Now I'm struggling to add
> the DDR interface to the design.
>
> My first thought was to port the functionality of the replay block to an
> OOT block that contains decision logic to save/recall the samples. By usi=
ng
> the replay block's YAML file as a starting point, I expected rfnoc_modtoo=
l
> to generate HDL similar to what can be seen in rfnoc_block_replay.v.
> Unfortunately, the AXI memory mapped interface is absent in the resulting
> HDL. That makes me think that my YAML definition lacks specificity, or th=
at
> the interface was added manually. I understand rfnoc_modtool is meant to =
be
> a starting point, so am I expecting too much?
>
I believe I ran into a similar issue when I was asking about it here:


https://lists.ettus.com/empathy/thread/6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ?has=
h=3D6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ#6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ

I solved it by hand writing my HDL since I am more proficient in that, but
the links to the files in the above post are the places to modify the code
generation to get the HDL to better reflect the interfaces you're
requesting.

HDL is not in my wheelhouse, but I'm working with another engineer who has
> experience. We appreciate any insight & advice that this forum provides.
>

Good luck - hopefully a pull request can come from this work since it's a
useful interface for blocks.

Brian

--000000000000cfb5540640aa26b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Wed, Oct 8, 2025 at 2:40=E2=80=AFPM &l=
t;<a href=3D"mailto:ryan.a.wolfarth@gmail.com">ryan.a.wolfarth@gmail.com</a=
>&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_container"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><p>Greetings,</p><p>I&#39;m writi=
ng to request a heading-check on the design of an RFNoC block that needs to=
 conditionally save/recall an arbitrary number of samples. I successfully b=
uilt &amp; ran a version of the gain example to convince myself that the bu=
ild environment was setup correctly. Now I&#39;m struggling to add the DDR =
interface to the design. </p><p>My first thought was to port the functional=
ity of the replay block to an OOT block that contains decision logic to sav=
e/recall the samples. By using the replay block&#39;s YAML file as a starti=
ng point, I expected rfnoc_modtool to generate HDL similar to what can be s=
een in rfnoc_block_replay.v. Unfortunately, the AXI memory mapped interface=
 is absent in the resulting HDL. That makes me think that my YAML definitio=
n lacks specificity, or that the interface was added manually. I understand=
 rfnoc_modtool is meant to be a starting point, so am I expecting too much?=
</p></blockquote><div>I believe I ran into a similar issue when I was askin=
g about it here:</div><div><br></div><div>=C2=A0=C2=A0<a href=3D"https://li=
sts.ettus.com/empathy/thread/6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ?hash=3D6UOYGN=
TMTCP2SFP4PKYH2RF3IWPXWQVJ#6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ">https://lists.=
ettus.com/empathy/thread/6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ?hash=3D6UOYGNTMTC=
P2SFP4PKYH2RF3IWPXWQVJ#6UOYGNTMTCP2SFP4PKYH2RF3IWPXWQVJ</a></div><div><br><=
/div><div>I solved it by hand writing my HDL since I am more proficient in =
that, but the links to the files in the above post are the places to modify=
 the code generation to get the HDL to better reflect the interfaces you&#3=
9;re requesting.</div><div><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><p> </p><p>HDL is not in my wheelhouse, but I&#39;m working wit=
h another engineer who has experience. We appreciate any insight &amp; advi=
ce that this forum provides.</p></blockquote><div><br></div><div>Good luck =
- hopefully a pull request can come from this work since it&#39;s a useful =
interface for blocks.</div><div><br></div><div>Brian</div></div></div>

--000000000000cfb5540640aa26b3--

--===============7497508787808174951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7497508787808174951==--

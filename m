Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A52D77CFC1
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 17:58:33 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D74A5384A94
	for <lists+usrp-users@lfdr.de>; Tue, 15 Aug 2023 11:58:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692115112; bh=2Wh+1IO7r8gpoUulyqSFhwJxDbjCW14TsECrlYYk41Y=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=vgGoJTDgRSg3JPGfu7ZHb1huZoSHtHgzOUjfFF0nHBez6AK49XV8ztYtKj8uFKET9
	 LfkEmzm8wigBc55gbrT2oHpPxzVwWlgL24dLG2HTmPhgfXdbVBm8rwZrYEvx5Fe3Aq
	 i0gQ/5wTwBHN9f43/F9m5WXQK/+xjiIbF9acZKbQN/4VGf0Ar/TxCa6BsjnDfN275D
	 tnk4e1fy+9FtXskfgf9viuNVajxuqwxl6YEbVbKpG2kvx17XXs0cKfNIfMSHZAqDea
	 upj3vJZKVGAH5Gb5g9KXnIB2F0EnU8ZwyL+/ZOETKHefvJQ535Kn9DfKBgWgDJDaRn
	 6eZpLO58CbxEg==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B068384A6B
	for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 11:57:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="VRpLjiku";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-99c0cb7285fso688276866b.0
        for <usrp-users@lists.ettus.com>; Tue, 15 Aug 2023 08:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1692115078; x=1692719878;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eDhbGpoHAJvDi9zIYjPmELISfxtlItQOcPejsMSLnZI=;
        b=VRpLjikuPjXAofvDY+NyxErKO+FcxGDb4mPizSSrYxTW5klqQgVPg7OSgSwnS9XxAh
         rr11wJaqTzv5KC6WHHQqLe0BuuGTI8XTmyYC41Kg81d6yeJFodCIiUh1iUqMqeT2wG/R
         ykqkWKRovUmOUb3nTPXgQ/6j0+0u4onxMLJs2qXsasA/Z8O3LcilLIWwl5QCUvZqg1U9
         +Tow1cQB5GEKn7/NMgTHgBrJPE4NSLuSlUTcqmuQ/IjMCqP051ijGCukd1zlpQHTR5Ch
         ggvOeJOXGysbIkWekFlLFdUgnRGAQSOg2FqGLkB6G4twjq6lZDBbJ+FIQcwV8wL1rRkt
         rD3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692115078; x=1692719878;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eDhbGpoHAJvDi9zIYjPmELISfxtlItQOcPejsMSLnZI=;
        b=a1vgMPJR7MKi3lSl0YAXodoGRf2IYrdg0u/q09av3uh3Oi0p6B+ysPW82n4C/iiUgd
         dOiqL0oWmob8dGHq74B8c0c7G8CMidIw1/9RgOzSxLuAH5jMzxMiLIs6LnjfQS0aH0hH
         iHbnwPzVFs9IRrlhIweWEUpb4du8kboq7mTSwwgf+Xco4Jory7F6RCeU8pMxX7AR7iDR
         0Qznlw24vvhvn3U4jGzJ3p4F47zmYqAzOQ/0krgw9smL66DV2GHjdmoJietS1X+1HSqj
         UiFELsTOIwLtuZUvjo2VizyDVfnAJMrB/tqpk4m0LAA22Uh4IA/YV93XI3AZvsvmF86D
         Fc2w==
X-Gm-Message-State: AOJu0YzSH/ky/tKc2wGstV79ZVeph1msdteWKhdeiE0oVs/I6Rqm+rM2
	hDvQsm5enYrWrh8Z0qEoafBuu1bTb42JFYwYpGOFdVuCu9icAatkuCKFdA==
X-Google-Smtp-Source: AGHT+IEzaWAux8cDkJdumXlmlcHqtTy4WzPGOuzV6aEouAZ/i4NT19erZnbAMpFHcTYoz6nk88hrssDhv+9OJ97NJgY=
X-Received: by 2002:a17:906:8a59:b0:99b:ddac:d9d9 with SMTP id
 gx25-20020a1709068a5900b0099bddacd9d9mr10522515ejc.53.1692115078042; Tue, 15
 Aug 2023 08:57:58 -0700 (PDT)
MIME-Version: 1.0
References: <AlrlUbtJRqp9G75dpx0Ivd0jCFHjTxWhCCtERGNkQs@lists.ettus.com>
In-Reply-To: <AlrlUbtJRqp9G75dpx0Ivd0jCFHjTxWhCCtERGNkQs@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Tue, 15 Aug 2023 10:57:41 -0500
Message-ID: <CAFche=jqK5_BT4u8w9MwNLGpcmh4DAgP3ZY8k+T-MuU0sBt8Dg@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: JIHUXDWL3FN4VJAM5GC3CODNDKBGKAFR
X-Message-ID-Hash: JIHUXDWL3FN4VJAM5GC3CODNDKBGKAFR
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows with CHDR_W = 128 on x410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JIHUXDWL3FN4VJAM5GC3CODNDKBGKAFR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2877597012118402874=="

--===============2877597012118402874==
Content-Type: multipart/alternative; boundary="0000000000002566c90602f83e9b"

--0000000000002566c90602f83e9b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Joe,

Did you change the chdr_width in the rfnoc_image_core YAML file and rerun
rfnoc_image_builder on that file?

Which version of UHD are you using to build the FPGA?

Streaming over 10 GbE to 128-bit CHDR with 500 Msps radio isn't a use case
we test, since 10 GbE can't keep up. Normally we would pair that with 100
GbE. That doesn't explain why you're getting worse performance though. I
don't know why it wouldn't work as well as 64-bit CHDR.

Wade

On Tue, Aug 15, 2023 at 10:00=E2=80=AFAM <jmaloyan@umass.edu> wrote:

> Hello,
>
> I am currently running into buffer overflows with the x410 where I am
> unable to stream for data rates larger than ~0.32 Gb/s when the CHDR_W is
> 128. However, if I stream using a CHDR_W of 64, I am able to push the dat=
a
> rate much higher(at least 3.2 Gb/s). I compiled a custom image using X4_4=
00
>
> My current set up transmits data over 1 SFP port, which is rated for 10
> Gb/s. I guess is that since technically this port cant sustain the data
> rate of 500 MS/s(equal to 16 Gb/s), there could be at least 1 buffer than
> can not sustain the given data rate, even if I am not sampling continuous=
ly.
>
>
> I tried increasing the endpoint buffer sizes (REQ_BUFF_SIZE_EP) as well a=
s
> increasing the buffer size set by the host computer, but both seem to hav=
e
> no impact on solving this buffer overflow issue.
>
> I saw a hard coded value in the x4xx.v where BYTE_MTU was set to
> clog(8192). Do I need to increase this buffer size as well?
>
> Thanks
>
> Joe
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002566c90602f83e9b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Joe,</div><div><br></div><div>Did you change the c=
hdr_width in the rfnoc_image_core YAML file and rerun rfnoc_image_builder o=
n that file?</div><div><br></div><div>Which version of UHD are you using to=
 build the FPGA?</div><div><br></div><div>Streaming over 10 GbE to 128-bit =
CHDR with 500 Msps radio isn&#39;t a use case we test, since 10 GbE can&#39=
;t keep up. Normally we would pair that with 100 GbE. That doesn&#39;t expl=
ain why you&#39;re getting worse performance though. I don&#39;t know why i=
t wouldn&#39;t work as well as 64-bit CHDR. <br></div><div><br></div><div>W=
ade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Tue, Aug 15, 2023 at 10:00=E2=80=AFAM &lt;<a href=3D"mailto=
:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><p>Hello,</p><p>I am currently runni=
ng into buffer overflows with the x410 where I am unable to stream for data=
 rates larger than ~0.32 Gb/s when the CHDR_W is 128. However, if I stream =
using a CHDR_W of 64, I am able to push the data rate much higher(at least =
3.2 Gb/s). I compiled a custom image using X4_400</p><p>My current set up t=
ransmits data over 1 SFP port, which is rated for 10 Gb/s. I guess is that =
since technically this port cant sustain the data rate of 500 MS/s(equal to=
 16 Gb/s), there could be at least 1 buffer than can not sustain the given =
data rate, even if I am not sampling continuously.</p><p><br>I tried increa=
sing the endpoint buffer sizes (REQ_BUFF_SIZE_EP) as well as increasing the=
 buffer size set by the host computer, but both seem to have no impact on s=
olving this buffer overflow issue.</p><p>I saw a hard coded value in the x4=
xx.v where BYTE_MTU was set to clog(8192). Do I need to increase this buffe=
r size as well? </p><p>Thanks</p><p>Joe</p><p><br></p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002566c90602f83e9b--

--===============2877597012118402874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2877597012118402874==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D87B72756F
	for <lists+usrp-users@lfdr.de>; Thu,  8 Jun 2023 05:06:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9D92C384A3C
	for <lists+usrp-users@lfdr.de>; Wed,  7 Jun 2023 23:05:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1686193559; bh=TaLGnQX84QPnoI3sGwfj5w6OepfSFiXTAzWNIr42/KM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=SrLXDbDYU+p0NuDIVKZDgaQu4USWsU7bL1e5UxVdh71ZZ8obFW8eXIjMTJFkxt/fm
	 9/r07GtV5Z46THud4nah6ZsNgFf27/Huo938li2kPTIa6sL5do0B21yf4uDXNgXv1c
	 qNWRmzcn6WnyYcHptZvQXeY53q1EDODOhSuh7/b8vWVFCxOd74tXvLBGkTtnM3tIxr
	 8ARHOkeFBX0AdlSP1hbawEexRJQQJD4NAGpYCDiZeiVlU4dsFrBdppb3Wk/qdhlpLW
	 eI0/v7KBFozNvaP10lb4H6LjM8aDiYC+hyIrwCYVulLO21RhlfmwlFa/S2FyR7iP69
	 Gwx2lG2+U6CCg==
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 976943849EF
	for <usrp-users@lists.ettus.com>; Wed,  7 Jun 2023 23:04:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="ODi6kg0w";
	dkim-atps=neutral
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-970028cfb6cso30758666b.1
        for <usrp-users@lists.ettus.com>; Wed, 07 Jun 2023 20:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1686193498; x=1688785498;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1h6pKsrT23YuwKbPeOkHFZij4520ryd7w+4Ixw4B0eI=;
        b=ODi6kg0wzyjK0csrQbhp9lDCRmXNxVJHS87Y/zaSSqcTG0teCI7vrl/Zom9l++QRfQ
         FCU/kzAIrsW8M1jCdHtDGvTbFo4s2aPOVmDN1MnI+X6EHkpbsLw8fxhMZf+rctH98kd/
         cOqzuAkWMe55n5KjJqhLAmDauULtI0q6+bCiNafyVoqQvC/FZEOy+NTNw/dqHS/9rXID
         ov5xaKS/qK5gyW27R2XKToDesLX9Jhj3i9bex0FgvjuYV3jYthuGGIixbjHq+yorlvpH
         zDxx2GiVrInG5Cv5OouPFgwjpsg5Qbgu12NTg/22zJZwn6Rbe+/N95s1R7TV7rBRxVGG
         V7EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686193498; x=1688785498;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1h6pKsrT23YuwKbPeOkHFZij4520ryd7w+4Ixw4B0eI=;
        b=J3ok5T1jlrugTe2iplc6jHgWgOSZSMwkF3skSQDac3PM5JoGOlLfVT9HI6pvoz39bD
         O+FXJ09ZvRUnIxRiKt7H8GJ4/EyjmGWmzkrrA5rH0cExcWFBZwhx4TbxXO9koC7+NAD+
         etAtFuUv5ipqiOLyM8ZsyZPNlfWP2HdyMImfjymX0+JfM/RBbyvBWctF46ybYuPVgU5q
         eL5ymYsnp2kYqdnSK94NBC33Bxn93oQtl5l3R4aGQ2Z3ZghS/vRFmE4GvxyvE5XqAxgW
         O/sfSrt8JHUg6+D8cOEfk9khzDdOs2JEV4PaM0yh9s6Po0Tlc3C0/rWA/wTN/4CUGGVI
         cBnA==
X-Gm-Message-State: AC+VfDwMUrHF+NQ2C135XcEAK2qeezC+NSpEQjroMiiC17JTd/7xYc2c
	vGVC1+xkS0B7mLwzUgjk6UyZaTZSgAOd6sOQ+H70kUaN
X-Google-Smtp-Source: ACHHUZ6YB9CFbnwnRZcO4CW+g74SQV2rW9tEwCWBLss7I9SM+qS1Y2rkIMbA9yTNOsA5tPUikmsfToRBzFXgcLD/2fA=
X-Received: by 2002:a17:907:3189:b0:974:c32c:b484 with SMTP id
 xe9-20020a170907318900b00974c32cb484mr7268393ejb.72.1686193498482; Wed, 07
 Jun 2023 20:04:58 -0700 (PDT)
MIME-Version: 1.0
References: <N3fKSStSZAGPhU6N5NQRaojaGsm8MFCrw0jLixgRKi8@lists.ettus.com>
In-Reply-To: <N3fKSStSZAGPhU6N5NQRaojaGsm8MFCrw0jLixgRKi8@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 7 Jun 2023 22:04:42 -0500
Message-ID: <CAFche=jr0uQpg+0i6bwWXKw_WitVet50tgEPOtMLQJcH3byvYw@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: AE4GQVGNKJDB3UCKBRTCND3NEUMEUSOW
X-Message-ID-Hash: AE4GQVGNKJDB3UCKBRTCND3NEUMEUSOW
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: x410 TX issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/AE4GQVGNKJDB3UCKBRTCND3NEUMEUSOW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4599999792851265202=="

--===============4599999792851265202==
Content-Type: multipart/alternative; boundary="0000000000007ffbc305fd9584aa"

--0000000000007ffbc305fd9584aa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wow, I don't know why running it in the GUI would matter. You mentioned you
did some customization in the Vivado GUI. Could that have something to do
with it?

I looked over your YAML and I noticed you have MEM_DATA_W on the Replay
block set to 128 but you're building for the X410_X4_200 target which
expects 64-bit interfaces. I think that would corrupt the data, but not
prevent TX. So I don't know if that entirely explains the issue. But it
does need to be 64 unless you've made changes elsewhere to compensate.

Wade

On Wed, Jun 7, 2023 at 8:30=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> If I use the same yml file I pasted above, I am able to generate an image
> that properly transmits. However, if I use the same yml file, but when I
> use the rfnoc_image_builder but with a GUI option, the transmit fails to
> work. I do not edit anything in the GUI, I just tested the bitstream
> created as is after invoking rfnoc_image_builder with the GUI option. I
> would imagine that GUI option or not, the constraints have to be identica=
l.
> Is there any chance they are not?
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000007ffbc305fd9584aa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Wow, I don&#39;t know why running it in the GUI would=
 matter. You mentioned you did some customization in the Vivado GUI. Could =
that have something to do with it?<br></div><div><br></div><div>I looked ov=
er your YAML and I noticed you have MEM_DATA_W on the Replay block set to 1=
28 but you&#39;re building for the X410_X4_200 target which expects 64-bit =
interfaces. I think that would corrupt the data, but not prevent TX. So I d=
on&#39;t know if that entirely explains the issue. But it does need to be 6=
4  unless you&#39;ve made changes elsewhere to compensate.</div><div><br></=
div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Wed, Jun 7, 2023 at 8:30=E2=80=AFPM &lt;<a href=
=3D"mailto:jmaloyan@umass.edu">jmaloyan@umass.edu</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><p>If I use the same yml f=
ile I pasted above,  I am able to generate an image that properly transmits=
. However, if I use the same yml file, but when I use the rfnoc_image_build=
er but with a GUI option, the transmit fails to work. I do not edit anythin=
g in the GUI, I just tested the bitstream created as is after invoking rfno=
c_image_builder with the GUI option. I would imagine that GUI option or not=
, the constraints have to be identical. Is there any chance they are not?</=
p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000007ffbc305fd9584aa--

--===============4599999792851265202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4599999792851265202==--

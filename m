Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF976F0BA0
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 19:55:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9C8DB3845A5
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 13:55:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682618116; bh=AGnSMKhlbv0QqBxY+7yOOgm/GgeS4B1uUzULesyT8wY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Pw6WIcR+mvcZfcLaoWBhvRpKzl+fDh6WoXhu6GPX7zQOhyy5OdDuF5paZtpvGZQ6Y
	 K0vUo1aex4ykYH4kMTXLrlCJuZgIKGPD6D87UIfaEtloD8UL/4D8uvfDyrOfrtK+V5
	 lnGocrp4j0L8AVjuqaEivAj5f6CzV3OI3KRZNHvOG3cZ2m2Oq2zLb33Pyexq2BL8Tt
	 EcknEfOdkwyDKyNiocbH08PriOuwYrll9E1v6sdgdS9gNKhbhGjYv5SDO85TTa27vu
	 eTBTVTrOrRJpBKZp+2LwkX1YU6RMZqodkI53S5kWN8M18wtNoQ9oyBHtDudoxaQ3Uy
	 2y909wsXLShZA==
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 8737B384709
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 13:54:07 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="CYjdVKzz";
	dkim-atps=neutral
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-24ba5c1be6dso4015089a91.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 10:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1682618046; x=1685210046;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wrLhCFMSx2i4V3AEXMG/QbDWP/gH5/sD9X2DCdH8WzY=;
        b=CYjdVKzzk6EBa9A0A1rEBsUJIuSogh/OSwWSCHRNo+Z2XJleSlqyu9GIEdzy4wsSqV
         +NqSmMF8LVRYJfIVt2uX3Psv1zAxJuL7p+zzE4A4S/SPcEEWV/3Lm1QMKI7PnZOhQyyM
         V/Zlr4xQuV2UdVcghkcjXM1rP4QL2BS8tO/b0M2MIe2TgDQnZvMlX4dcXpbfby/HDY3j
         /xHvtiLA6mhBS4MlEsnrfHU/W+1hoGB1nYJSWvAOR+Q4noAOWsUsN5wClLwn6VLeloVI
         czwOtYy8PeLlM7iUrdGko+uwQB3ThCQzrh4yntSceXrj2CkT5TA639KWMXB3zkvxGRKJ
         VgPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682618046; x=1685210046;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wrLhCFMSx2i4V3AEXMG/QbDWP/gH5/sD9X2DCdH8WzY=;
        b=WkNjsfKKpZDLA7z9IGJFpImixXLsCCRtwE5HfxF/kcSTUiDXF1amgofiJaGJK4WgHd
         EY7TePUKjH5kSRuGnUvx7rj5KjNPhUbQQCd0mGDE5NO61jPNu+OVdBalKgZV11Ehk0hG
         CT6TSDvLtPLfz99gICze1fiU9eEE+qiQCiHut994hrim8ODIPTx1mKUgFvUcaa4gmmVo
         q4iYyA/aT4ysw/tPVaSTEqSGSQrMVqHQOVA5j6uvZu4wxnxqI6nbYgf8EzILYOn8c548
         SZZ2m8nBl+l0/wATtgZXJ0CMyp4cbcJ5KnlAQKM3kBZYkjETkLO6XWftvfj3qN48S5ag
         rQDw==
X-Gm-Message-State: AC+VfDzO+LEIaZuU1bi6J6tUT7O44N74EYFBlPb7HSi5kb5/X34ZcGsV
	BECrYXsP8ea+VYCpNVeLblRGUuEcXmVBTspxlCQlCvmj8sysLVAeo5E=
X-Google-Smtp-Source: ACHHUZ5D1JFZKNJP086SxNYrpo+3z9hBg7jZXd4yUlRDF7gA3q3VAeyewNiiQsSXG8l1ZhSWRGUz0pyD0RtsSy7CfNA=
X-Received: by 2002:a17:90a:1d42:b0:247:3e0a:71cd with SMTP id
 u2-20020a17090a1d4200b002473e0a71cdmr2649643pju.6.1682618046333; Thu, 27 Apr
 2023 10:54:06 -0700 (PDT)
MIME-Version: 1.0
References: <2YLk2Sb1V9f9se7RFlT6GZj18jnduEl6ElBMc6Ie74@lists.ettus.com>
In-Reply-To: <2YLk2Sb1V9f9se7RFlT6GZj18jnduEl6ElBMc6Ie74@lists.ettus.com>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Thu, 27 Apr 2023 13:53:55 -0400
Message-ID: <CAGNhwTOOtvfxu7pTpkjOzcKjUCcRgyPK+jK=A9vxH+h36RztgQ@mail.gmail.com>
To: jmaloyan@umass.edu
Message-ID-Hash: XLBT2KPBAPSPKDLYQ4F3Y2B4MVTHNY2O
X-Message-ID-Hash: XLBT2KPBAPSPKDLYQ4F3Y2B4MVTHNY2O
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XLBT2KPBAPSPKDLYQ4F3Y2B4MVTHNY2O/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5862205656124088906=="

--===============5862205656124088906==
Content-Type: multipart/alternative; boundary="000000000000f1e23105fa550a4f"

--000000000000f1e23105fa550a4f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

That card -- 10Gtek X540-T2 -- should work OK; I've used them in the past
with decent success.

FYI the SFP+ adapter that comes with the N32x only provides 1 GbE
(technically 1.25 I think, but the USRP only does 1 or 10, so 1 it is). If
you want to do 10 GbE, you need other SFP+ adapters. If you don't have
other adapters, I can point you to some that I use that work well & are
reasonably priced. - MLD


On Thu, Apr 27, 2023 at 1:45=E2=80=AFPM <jmaloyan@umass.edu> wrote:

> I am using this card
> <https://www.amazon.com/10Gtek-X540-T2-Converged-Network-Adapter/dp/B01HM=
GWOU8?th=3D1>,
> which as the intel x540 controller. The lights on the ethernet card do
> light up, but the lights of the SFP port on the N321 does not. I verified
> it works when working with the 10/100/1000 Mb Ethernet (mgmt address). I =
am
> using the SFP+ to Rj45 adapter that comes with the N321
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f1e23105fa550a4f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"=
><div dir=3D"ltr"><div>That card -- 10Gtek X540-T2 -- should work OK; I&#39=
;ve used them in the past with decent success.</div><div><br></div><div>FYI=
 the SFP+ adapter that comes with the N32x only provides=C2=A01 GbE (techni=
cally 1.25 I think, but the USRP only does 1 or 10, so 1 it is). If you wan=
t to do 10 GbE, you need other SFP+ adapters. If you don&#39;t have other a=
dapters, I can point you to some that I use that work well &amp; are reason=
ably priced. - MLD</div></div></div></div></div></div></div><br></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr=
 27, 2023 at 1:45=E2=80=AFPM &lt;<a href=3D"mailto:jmaloyan@umass.edu">jmal=
oyan@umass.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><p>I am using this <a href=3D"https://www.amazon.com/10Gtek-X=
540-T2-Converged-Network-Adapter/dp/B01HMGWOU8?th=3D1" title=3D"" target=3D=
"_blank">card</a>, which as the intel x540 controller. The lights on the et=
hernet card do light up, but the lights of the SFP port on the N321 does no=
t. I verified it works when working with the 10/100/1000 Mb Ethernet (mgmt =
address). I am using the SFP+ to Rj45 adapter that comes with the N321</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000f1e23105fa550a4f--

--===============5862205656124088906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5862205656124088906==--

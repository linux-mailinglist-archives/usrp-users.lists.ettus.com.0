Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B65646466A1
	for <lists+usrp-users@lfdr.de>; Thu,  8 Dec 2022 02:43:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5ED4C384253
	for <lists+usrp-users@lfdr.de>; Wed,  7 Dec 2022 20:43:47 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1670463827; bh=otYWhg1H6Ss9PVbIUPyzbdfcdvgt2gaDewFOMq9F1p8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=hD+Yyj1nC09t3LzwIVnOI6mJd/8DlOmT7xsDwj6cNKAVq9CK1lSZNC3OhG6FkjjoB
	 ErrHZ9OAe/+4YkmQPLKEc5UcoogOtvLIpkm/98osncqooD5ImOTBOk1WEwVcQ06+7n
	 FcSGyUtnoN84hCeSmR6fBjjMA2h1Y/vgITCspEng9NZS6X/BFHFAgR1uosAXXsemih
	 AWvyB1a2HbdIK5FCIXXrRK7i7fqsJaHm4zFWmyLrIS6tfKVZ2LKB1D/VS1VfKzxw/1
	 hrVMH16fwjv1ynHlugPyAWpCqoVst99O3ZRurxC7idpPPKH7JtC5F/iX4VDeqM/FqS
	 3ac54fhqvf8sQ==
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 6B7DF38403E
	for <usrp-users@lists.ettus.com>; Wed,  7 Dec 2022 20:43:40 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="mMAbZByD";
	dkim-atps=neutral
Received: by mail-ua1-f53.google.com with SMTP id x24so11508uaf.4
        for <usrp-users@lists.ettus.com>; Wed, 07 Dec 2022 17:43:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iKJIUSaYegipmX41txB67OZTG+MDhH6740N3lWOejw0=;
        b=mMAbZByDJVjbKZ8dS6tRI1Ep4vVei7I3Xo6ZfAIdxaDOgRxkSW3eewFE2ZCd5UK9RJ
         YDBXzGQ7lWZy/ncir0H+LA8PXe3ErTc723Wrdfe9nOZOAtAzFMP9satpVHWDRdFOH6SM
         ppVXUhsZzqyQUhwbP0ZdLyR/B6mnLtpevRMNkvrOQCoVyYh6Vd2orhy3P9pM4HY8VM59
         5oQ7PjCzSgtn/EHNAJVlME+LQia+fei9ptUi5IVMRunlTu9XnJAXatSW08IBhrJD/7sU
         uIQBCcZa8vIXc79waRWhgZeDxJgbfFUlq2p9X3oCN1/HguEK/IueGovCH43DWjNXh/qc
         XDYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iKJIUSaYegipmX41txB67OZTG+MDhH6740N3lWOejw0=;
        b=4kg+8/2q6y9GJiqpGZb5hihElmpaVZnMX7g4BxRckNra6sq3Ri7zFSqg/V6B8lH2ms
         63LR/sL/esTGeANjSf6znUJ8YRbZQEhs0Uxn5UGZ8nc7b0tPpgGa29OTHlcx7IXwgSmm
         r1xoFpmvmRPxNKULzkL92Mw88RGrU5OziqJX8Z8jXOxsRieZySJ5tRWKiscX0Q219hbi
         ZKFDtvp/e12FhyXOIhFaMeAMkt/AR0rnxMdvOwaYHFMVgoClvJM3tHepTpUiYgQhBsjQ
         GxkCycBJV6VqrULqMTmVQodBgmDnT1+fZRtHOletaped8hUErodv8debHw0o1eLObB46
         w/Vw==
X-Gm-Message-State: ANoB5pm2A2BFdyOBnVS2Wk0TkUaADUi8Z3SncLHM2l2+1y0gUv4g16Vn
	WWGS3pqfcO1cTKRwr0fTaHr8QiO6qg7j0R//C6U1wXKl
X-Google-Smtp-Source: AA0mqf6J1ohU1wR7eZ91z6Ywt2Rse7TFgcIU1DwhE1la55G7vsHLglTXnzLO9QwnfvIke3C8TF9G08q/ESP82a5m+Sk=
X-Received: by 2002:ab0:15a5:0:b0:411:336c:b7be with SMTP id
 i34-20020ab015a5000000b00411336cb7bemr51171711uae.6.1670463819802; Wed, 07
 Dec 2022 17:43:39 -0800 (PST)
MIME-Version: 1.0
References: <frShdjYTRSZLl0lHVPvus03FqxrsCI1cqvsrtowPo@lists.ettus.com>
In-Reply-To: <frShdjYTRSZLl0lHVPvus03FqxrsCI1cqvsrtowPo@lists.ettus.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Wed, 7 Dec 2022 20:43:04 -0500
Message-ID: <CAL7q81v51Bp2rGOmKayb9CQHj+0CxK7HpOujWyZ+9skkZSC9hA@mail.gmail.com>
To: ri28856@mit.edu
Message-ID-Hash: ATZE26WAEIWLK3C6CH7ZCMSK3CLNYVRT
X-Message-ID-Hash: ATZE26WAEIWLK3C6CH7ZCMSK3CLNYVRT
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Debugging RFNoC exception "Timed out waiting for ACK"
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ATZE26WAEIWLK3C6CH7ZCMSK3CLNYVRT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4897173870096292051=="

--===============4897173870096292051==
Content-Type: multipart/alternative; boundary="00000000000097001205ef472ac5"

--00000000000097001205ef472ac5
Content-Type: text/plain; charset="UTF-8"

Hello,

Does this happen after one or multiple calls to set_freq()?

Jonathon

On Tue, Dec 6, 2022 at 5:37 PM <ri28856@mit.edu> wrote:

> Hello,
>
> I have a C++ application running on RHEL 9, UHD 4.2, using USRP x310s.
> Recently I encountered the following exception:
>
> terminate called after throwing an instance of 'uhd::op_timeout'
>
> what(): RfnocError: OpTimeout: Control operation timed out waiting for ACK
>
>
> I know the exception is triggered somewhere in either the
> ddc_ctrl->set_freq() or duc_ctrl->set_freq() functions. I am using the base
> RFNoC graph that comes with the multi_usrp class, I just modified UHD to
> expose the ddc and duc pointers. The reason for this is the RFNoC api
> exposes per channel timed frequency commands, whereas using
> multi_usrp->set_freq() requires using multi_usrp->set_timed_command(),
> which does not have a channel parameter.
>
> Has anybody else encountered a similar situation, or have tips for
> debugging the problem?
>
> Thank you!
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000097001205ef472ac5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>Does this happen after one or mu=
ltiple calls to set_freq()?</div><div><br></div><div>Jonathon</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, =
Dec 6, 2022 at 5:37 PM &lt;<a href=3D"mailto:ri28856@mit.edu">ri28856@mit.e=
du</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><p>Hello, </p><p>I have a C++ application running on RHEL 9, UHD 4.2, usi=
ng USRP x310s. Recently I encountered the following exception:</p><p><code>=
terminate called after throwing an instance of &#39;uhd::op_timeout&#39;</c=
ode></p><p><code>  what():  RfnocError: OpTimeout: Control operation timed =
out waiting for ACK</code></p><p><br></p><p>I know the exception is trigger=
ed somewhere in either the ddc_ctrl-&gt;set_freq() or duc_ctrl-&gt;set_freq=
() functions. I am using the base RFNoC graph that comes with the multi_usr=
p class, I just modified UHD to expose the ddc and duc pointers. The reason=
 for this is the RFNoC api exposes per channel timed frequency commands, wh=
ereas using multi_usrp-&gt;set_freq() requires using multi_usrp-&gt;set_tim=
ed_command(), which does not have a channel parameter.</p><p>Has anybody el=
se encountered a similar situation, or have tips for debugging the problem?=
</p><p>Thank you!</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000097001205ef472ac5--

--===============4897173870096292051==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4897173870096292051==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F5059115E
	for <lists+usrp-users@lfdr.de>; Fri, 12 Aug 2022 15:26:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3590E3812DF
	for <lists+usrp-users@lfdr.de>; Fri, 12 Aug 2022 09:26:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1660310795; bh=rGh8hUGJSDcNc2yTalVHRcpPlWUeBL8PjJ23vMs8Zcw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=r+FX3aZDxD5Tvne1lg+1tyINbA92G7APTbjb2Sba0sQYoLybp17/PmDUHsv+Q2S+t
	 Ky7UOocZkOaPpo4CmBx1he1AbkXupxEL6h6IY3/VuW5Kx3kD+131VNnGjNZcepajur
	 OJ1p6yjwLMnjMMgAbvj/PG3SRxBWJjWYgAVsTyatETOF1N43jqtg1H2c94Pf46RC/v
	 sEqlO5/Kg2ebZrVk19OjRUqcZCVoSmx/9zgTZU4/Ausp+lZSG3UBgywzWwdZQ7k2Np
	 eKursySjIjlsBXgFCuOjb4iKDCA1dHEd+hvlXjcFEVNrZaw67B6bvx1WmT8U9p81dA
	 W6Y7avU86mlFA==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 082A33808F0
	for <usrp-users@lists.ettus.com>; Fri, 12 Aug 2022 09:24:43 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jIadsxuP";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id cb8so747361qtb.0
        for <usrp-users@lists.ettus.com>; Fri, 12 Aug 2022 06:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc;
        bh=mMQZPsrm1AV6WH0MvG7gIYngCxRqz0IMZqdFmr29UPs=;
        b=jIadsxuP1PG98RWw/C45rAUSt/CavA7TEYdWwNEIjycsZxIBJEpQwYtEWdd/ETlKWs
         xsq/tkFMVlcc19vCm1A1Y+pPyM8uScLuip3xPbRsEnOJdVTSK7dEOqM/L121wC7I9BfV
         bR6eK1vm0nJKPFuBphzFI6v8/6SXfhXaMNWedzwB3Si/RyIi/yX4zLMBbpIxkGmZM7Kq
         eMjhZMWhe3v6TguUoEJNFzEuMghZ4KLhEJreDkynAk0PH9Sudn79E93CPn2m8O5cXf6U
         JIYpNZV9Bc03/j9E/xQxtxi4K6OuVovzTJnFyn+qG7Mn7a8IoJCTwG5h7QS2ETBthfD7
         bp/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc;
        bh=mMQZPsrm1AV6WH0MvG7gIYngCxRqz0IMZqdFmr29UPs=;
        b=yawsh48iojEDo/Q98OBQiNm8PWGHHn9vXMDSKnuBRdcdLcjliJFLisohJAgYjYTYtY
         lXUkuTxjZmIbw3ZklOrvZRIB2EFASIV9atRpHE+aKb3jWKj4KPpjt6bRsKu3Ma3/I4TZ
         Oc/zt5/a6Surqf53FBftfda/2VR1qDSIcqszG2Q7PPhuMO0ftOJxlXiQEVeZ+EyAuwFz
         nCoEQZrsiNPctRVJx5BuxoJYoCRr+wTqr/0r71MWhFyP5zGXj5CHPF+1DRa1Ne8z+qhE
         artyZR+Gqw2RyNt2yBBwfVPfEPJG46/NYb231Amdycp/4s2nu9BYfJCvR/epyntA9Qz5
         uF7A==
X-Gm-Message-State: ACgBeo0nx55H/HzAtXeEu2icd3nmepP9b+LmBu8XRFKHPdB865izCrt6
	BEHa51z1G3iaGBi+NbApV5kR32PhTq8=
X-Google-Smtp-Source: AA6agR4S9POxBdxboDT58eVedPuylMSXvtjqgpgurWLsKca+/GEj1ECsxxuzvcLaooY45+Mop6FOxg==
X-Received: by 2002:a05:622a:178b:b0:341:9469:6451 with SMTP id s11-20020a05622a178b00b0034194696451mr3379129qtk.645.1660310682796;
        Fri, 12 Aug 2022 06:24:42 -0700 (PDT)
Received: from [192.168.2.186] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id b16-20020ac87550000000b0031ee3449f34sm1675967qtr.86.2022.08.12.06.24.41
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 06:24:42 -0700 (PDT)
Message-ID: <7a946105-afca-2626-a3f0-d02c163f185c@gmail.com>
Date: Fri, 12 Aug 2022 09:24:41 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <12wYRWCywXfMMcKx6Fwi6NjTp3hBNGO5cXWdkuHEg@lists.ettus.com>
 <2138502946.461336.1660308543302@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <2138502946.461336.1660308543302@mail.yahoo.com>
Message-ID-Hash: 3LNC23HOQXE4OKNSJQU6OO75N7G7XZ6R
X-Message-ID-Hash: 3LNC23HOQXE4OKNSJQU6OO75N7G7XZ6R
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Power gain control in USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3LNC23HOQXE4OKNSJQU6OO75N7G7XZ6R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9166987408480800248=="

This is a multi-part message in MIME format.
--===============9166987408480800248==
Content-Type: multipart/alternative;
 boundary="------------Gu1tHc3aOVA90iVQEu9AiMdo"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------Gu1tHc3aOVA90iVQEu9AiMdo
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-08-12 08:49, zhou via USRP-users wrote:
> Hi,
>
> I have general question on power control in USRPs. I know the gain=20
> range is from 0dB - 30dB. How is gain control realized, by using=20
> active amplifier or adjusting passive attenuators?
> Thanks,
> Hongwei
>
>
RF gain control is nearly *ALWAYS* through variable attenuators, and in=20
USRPs, it's no different.

You can adjust the gain a little on RF amplifiers by playing with bias=20
voltages, but doing so nearly always
 =C2=A0 results in other important properties (like linearity and noise=20
figure) being negatively affected.=C2=A0 So, you
 =C2=A0 optimize the bias to achieve a balance of "good" properties, and =
then=20
use a variable attenuator if you
 =C2=A0 need variable gain.


--------------Gu1tHc3aOVA90iVQEu9AiMdo
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-08-12 08:49, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:2138502946.461336.1660308543302@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpce9dfed5yahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I have general question on
          power control in USRPs. I know the gain range is from 0dB -
          30dB. How is gain control realized, by using active amplifier
          or adjusting passive attenuators?</div>
        <div dir=3D"ltr" data-setdir=3D"false">=C2=A0</div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks,</div>
        <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <br>
      </div>
    </blockquote>
    RF gain control is nearly *ALWAYS* through variable attenuators, and
    in USRPs, it's no different.<br>
    <br>
    You can adjust the gain a little on RF amplifiers by playing with
    bias voltages, but doing so nearly always<br>
    =C2=A0 results in other important properties (like linearity and nois=
e
    figure) being negatively affected.=C2=A0 So, you<br>
    =C2=A0 optimize the bias to achieve a balance of "good" properties, a=
nd
    then use a variable attenuator if you<br>
    =C2=A0 need variable gain.<br>
    <br>
    <br>
  </body>
</html>

--------------Gu1tHc3aOVA90iVQEu9AiMdo--

--===============9166987408480800248==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9166987408480800248==--

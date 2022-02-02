Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD984A737A
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 15:44:42 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9B27E383EB7
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 09:44:41 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="oF6A6v9A";
	dkim-atps=neutral
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id EA984383EB7
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 09:43:39 -0500 (EST)
Received: by mail-qv1-f41.google.com with SMTP id k4so19110028qvt.6
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 06:43:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=PEbGBgrqu7G/zcIwQWAuBMw02gcY8dMNvxEa6dPgNXE=;
        b=oF6A6v9Ax2XkCudVOOhO1ktijGXK7oHAL2iixX2FakhYVBOET2i77efZyL0egPdPuN
         6Cu6aydEMEnLZxQl9A+6ug+UQ2NQy/ZRNKBSGfidrfY5rIcfo3in1h+sao/r7ma8jnPj
         sBLZoR4OHuFeVtA6BAKjcpkAnVQsoHd1QO7Frhm/6Oz0BiV7dx3MegilQ9EYUInRECyV
         vkYlDa9yJoP4L7ooKDFzs8EQFEKscCAgQcoZwRPqnJjvzzScfH5GUTou+DwHXdDp/aAT
         sDUd/y6rzU98MYDnk/smI3c9hSti2IAgXcTC4GnbCQbEOWxLuqFvdP03wnnIkM4iGwtY
         gCmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=PEbGBgrqu7G/zcIwQWAuBMw02gcY8dMNvxEa6dPgNXE=;
        b=xfhuFTLOnoDB4/9mc7x0BgYTQGz06abS3DOYs+PymIQttpbR56Wyh8Evqk67dln9/C
         2TZReml3dZjjJHj1F0rTOXbRgrnCJlTVuNEc2Vk1hgW2rJfjjgEg1SkFwGTTmFD4tJNV
         mrrgx/xGX2fjP5yEeu4bks0hvC5U3aQTD+couys2uNSCGDDyF61J7iv3dSm4Sf4ZjTLf
         DRM8NI83GYrH1xDoNXJcuvoRqZgZ4m39NDFTdh3VX/nkA5B6/U4DH7vSo4RtOGtWSkjk
         4TvaoRx6Y7caOKXWk5fp6UgQFe7e1gR7igKEKisRylztQtEuVP6+86NCsoAp/PN76X8+
         zslQ==
X-Gm-Message-State: AOAM530KK2Go5AibYIQeQkCgNoDClbcrEpe24gB21lCDXauIqO6I9N8I
	w0638CTLRD1UpEUl9U434cEaKFz5Wsg6xg==
X-Google-Smtp-Source: ABdhPJxHgUIvXBmRse3vzJs5ZxdmnUvJeKOd/5obqLMibOW6wZ8bzVhvn/izkCe8hjX7+UCBaK3EOw==
X-Received: by 2002:a05:6214:e8c:: with SMTP id hf12mr26431379qvb.68.1643813019265;
        Wed, 02 Feb 2022 06:43:39 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id u21sm11502827qtw.80.2022.02.02.06.43.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 06:43:38 -0800 (PST)
Message-ID: <5aecd4ae-7679-a70e-85c1-6c97f5dfe381@gmail.com>
Date: Wed, 2 Feb 2022 09:43:38 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <bmRt66VHp2qQcNS8bpEAvK8fofebZiXQ5fHqmnCfBx0@lists.ettus.com>
 <CAB__hTRpPmA548JmuK=w1SAU_WPWLHhD_viYv8rJzDwCuNphCQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTRpPmA548JmuK=w1SAU_WPWLHhD_viYv8rJzDwCuNphCQ@mail.gmail.com>
Message-ID-Hash: EJGD5YEN3WEZBZWSWOQUJP5SENECPVEK
X-Message-ID-Hash: EJGD5YEN3WEZBZWSWOQUJP5SENECPVEK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 two channel transmit
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/EJGD5YEN3WEZBZWSWOQUJP5SENECPVEK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4747304722523096022=="

This is a multi-part message in MIME format.
--===============4747304722523096022==
Content-Type: multipart/alternative;
 boundary="------------9mOP9kOjQl0ZZQDAD3WKVZ44"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------9mOP9kOjQl0ZZQDAD3WKVZ44
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-02 09:39, Rob Kossler wrote:
> Ok. If benchmark_rate fails, this means that either your host is not=20
> optimized or else it is underpowered, I think. Did you try the items=20
> at this=20
> <https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks#Adju=
st_Network_Buffers>link?=C2=A0=20
> Are you getting any error messages or warnings (other than those=20
> shown) when you run benchmark_rate?=C2=A0 How about rx_streaming - are =
you=20
> able to consume Rx streaming at high rates without errors?
>
Or there's something wrong with the ethernet interface hardware, or the=20
drivers for it.

Other folks have (quite recently) done 2-channel transmit experiments=20
with N320/N321 without any issue.=C2=A0 I don't have one of these myself,=
 so=20
I cannot do
 =C2=A0 experiments.

But if "benchmark_rate" fails at low sample rates (and 5Msps X 2 is=20
pretty modest), then something is woefully wrong with your system.


--------------9mOP9kOjQl0ZZQDAD3WKVZ44
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-02 09:39, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTRpPmA548JmuK=3Dw1SAU_WPWLHhD_viYv8rJzDwCuNphCQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Ok. If benchmark_rate fails, this means that eithe=
r
        your host is not optimized or else it is underpowered, I think.=C2=
=A0
        Did you try the items at <a
href=3D"https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks=
#Adjust_Network_Buffers"
          moz-do-not-send=3D"true">this </a>link?=C2=A0 Are you getting a=
ny
        error messages or warnings (other than those shown) when you run
        benchmark_rate?=C2=A0 How about rx_streaming - are you able to
        consume Rx streaming at high rates without errors?</div>
      <br>
    </blockquote>
    Or there's something wrong with the ethernet interface hardware, or
    the drivers for it.<br>
    <br>
    Other folks have (quite recently) done 2-channel transmit
    experiments with N320/N321 without any issue.=C2=A0 I don't have one =
of
    these myself, so I cannot do<br>
    =C2=A0 experiments.<br>
    <br>
    But if "benchmark_rate" fails at low sample rates (and 5Msps X 2 is
    pretty modest), then something is woefully wrong with your system.<br=
>
    <br>
    <br>
  </body>
</html>

--------------9mOP9kOjQl0ZZQDAD3WKVZ44--

--===============4747304722523096022==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4747304722523096022==--

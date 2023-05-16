Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CF8704971
	for <lists+usrp-users@lfdr.de>; Tue, 16 May 2023 11:37:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 88C79384A85
	for <lists+usrp-users@lfdr.de>; Tue, 16 May 2023 05:37:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684229848; bh=No0pJf/LWNWx1pjDBJOBOCYWxctGDE6iAtSeg3vJUKw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=gR41h0akbEqcY4Yyg/Eo5bbtviCQYMnADYSdnofsT2XRZCh5/8MW5lizJWpzgT3Iu
	 6OoWrqEF2kZyCLcqKoyz3pFSj/7psnOX8v/Gu9TEhrhc57umCNgVlVMActVHfXIqAe
	 EAepHGQpAZiaUJofOxReXhSAfQ80nli1u7Sl4FJuoUqeeHj81PiQaOWzc5fwTPC95E
	 V0t88TN71vQBlMyyCyUn55Kp1SbLz1FWTXZvXibo3+ooH17EmRdFPVMiWf+4gWyPn4
	 dBuWG3wZ5ZwkobjimciitK3EJxZlapZi2oYzKujvmAdjpRGvz1sWhQcQZx8FVJgfs3
	 RLRqYQIZHBi8A==
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 2EE7E384A76
	for <usrp-users@lists.ettus.com>; Tue, 16 May 2023 05:36:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="AbC5h9tB";
	dkim-atps=neutral
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-3f4c6c4b425so43703475e9.2
        for <usrp-users@lists.ettus.com>; Tue, 16 May 2023 02:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1684229787; x=1686821787;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=W+9Sx4Gpn3jYgbnlN/RvvRi+fr7zZ3PEVr8UJTMSM7Y=;
        b=AbC5h9tBlP73rFCXfmdgID9nskzdj0adnVPLr7amEOtlJ/M9u+3z1Ekvk3JgLlKZNt
         FyczoWhjdxeUWLsOMzIcZ0wjFkgpwzpkJMoQ4uMfxUwInritUCha+XYemVPRC41gVY58
         NyIkIAN5mFspgJQKPElZb48OJpEnhv2U8WI4Sw2ADgXgvREk92IdotgayGTKkpGQvpF3
         vatWEoJOw3AJyMnz59tFNpA6sZ6RovXW9a9/MbyXr1S4DrZb8iQXF9bQy7fioJgH1oeY
         j87eKRFx1hHv1FtxptfKRzqYgEiVc0CQfgpLDYNHACRoXJp4WokEtd+74wrLL6V52Djn
         077Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684229787; x=1686821787;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=W+9Sx4Gpn3jYgbnlN/RvvRi+fr7zZ3PEVr8UJTMSM7Y=;
        b=cosIa/H47Fy+NY8D6C5wN1mzKE6CaMs71dvAK8b7RyuaaIkX/FgxqQflXzxi6x7hS/
         do0Kiph9f2QcZMyj9dui4lFOC2dTBTTyTTxX7nH3M7cptSoW9WVc4JWJRWscuEfSYVD+
         Flm4drd+Gy/zwAQMfLZRozSahyVCvj/U9SY80bvlt4R+bjIsT17U16kPqWePQ2F3fvpK
         A0L6ZlmUiEcjYUzspBSuKchkCDDIY0NplSFHwFzoIZWdiDJRHy9XScIne5nqwU2mMhFD
         DyOOagt73/WKZ9ma0R2siCzRBZqOO12VJZGjU/mvg6h+JaBMjiIMWz+JDHZud3lRYxcp
         mPIw==
X-Gm-Message-State: AC+VfDy2SkUQj538Km10XonzBG1hglN9Ax2Zvbr1bq/6a0v05eEh3BxT
	9I0CWVtu5IAsrBou6DqV+Gasf+iCImmBcvoqkFt1UQ==
X-Google-Smtp-Source: ACHHUZ4GznGlzuAXQm9hoVJEmmoGIOs/VAUWAx04N8ZJKMFqvwLLUQ0D5/kjt/nyp801XT3pSVMTjQ==
X-Received: by 2002:a7b:c006:0:b0:3f4:ecdc:5069 with SMTP id c6-20020a7bc006000000b003f4ecdc5069mr11939615wmb.33.1684229786775;
        Tue, 16 May 2023 02:36:26 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3855:6800:998f:ca6a:6065:3212? ([2001:9e8:3855:6800:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id a3-20020adfeec3000000b0030649242b72sm1950201wrp.113.2023.05.16.02.36.26
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 May 2023 02:36:26 -0700 (PDT)
Message-ID: <1d8ac26f-6918-c3ed-05ba-4bca6d071d8f@ettus.com>
Date: Tue, 16 May 2023 11:36:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <1996905205.4381093.1684228201264.ref@mail.yahoo.com>
 <1996905205.4381093.1684228201264@mail.yahoo.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <1996905205.4381093.1684228201264@mail.yahoo.com>
Message-ID-Hash: SFVUB7SDNH7DQL6B5MO4ZTNUAF7UXTTM
X-Message-ID-Hash: SFVUB7SDNH7DQL6B5MO4ZTNUAF7UXTTM
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: X310 independent executables
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SFVUB7SDNH7DQL6B5MO4ZTNUAF7UXTTM/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5117041650393356636=="

This is a multi-part message in MIME format.
--===============5117041650393356636==
Content-Type: multipart/alternative;
 boundary="------------qdn7X77mbWMLoQddDbYPZ6BU"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------qdn7X77mbWMLoQddDbYPZ6BU
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Andrea,

No, that's not possible.

Best,
Marcus

On 16.05.23 11:10, Andrea De Jesus Torres via USRP-users wrote:
> Hi,
>
> is it possible to use a single X300/X310 equipped with two daughterboards (say, UBX-160) 
> with a single host connected with two Ethernet cables to the USRP with two different 
> executables?
>
> For instance, is it possible to run simultaneously two instances of rx_samples_to_file 
> each of which receiving data from a single daughetrboard?
>
> Thanks,
> Andrea
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------qdn7X77mbWMLoQddDbYPZ6BU
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Andrea,<br>
    </p>
    <p>No, that's not possible.</p>
    <p>Best,<br>
      Marcus<br>
    </p>
    <div class="moz-cite-prefix">On 16.05.23 11:10, Andrea De Jesus
      Torres via USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1996905205.4381093.1684228201264@mail.yahoo.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div class="yahoo-style-wrap" style="font-family:Helvetica Neue,
        Helvetica, Arial, sans-serif;font-size:16px;">
        <div dir="ltr" data-setdir="false">Hi,</div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">is it possible to use a
          single X300/X310 equipped with two daughterboards (say,
          UBX-160) with a single host connected with two Ethernet cables
          to the USRP with two different executables?</div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">For instance, is it possible
          to run simultaneously two instances of rx_samples_to_file each
          of which receiving data from a single daughetrboard?</div>
        <div dir="ltr" data-setdir="false"><br>
        </div>
        <div dir="ltr" data-setdir="false">Thanks,</div>
        <div dir="ltr" data-setdir="false">Andrea<br>
        </div>
      </div>
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------qdn7X77mbWMLoQddDbYPZ6BU--

--===============5117041650393356636==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5117041650393356636==--

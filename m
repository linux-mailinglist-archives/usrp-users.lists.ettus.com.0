Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 070BF4A737C
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 15:45:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C0873854F6
	for <lists+usrp-users@lfdr.de>; Wed,  2 Feb 2022 09:45:56 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="nqORXWSa";
	dkim-atps=neutral
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 2B005385292
	for <usrp-users@lists.ettus.com>; Wed,  2 Feb 2022 09:44:58 -0500 (EST)
Received: by mail-qk1-f175.google.com with SMTP id o10so18332034qkg.0
        for <usrp-users@lists.ettus.com>; Wed, 02 Feb 2022 06:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=oFEp4PdIAtn89SWMC35xFGCFMfskAc7OfEDWlhKFAvk=;
        b=nqORXWSaV8mwOtEfbST7N23xNuY7M1o3149+Yg8UyUewzo4B8/Be7JLRmq765VhxNy
         bElE7wV9BjslhKXwZro5FKjIsPh2c6hkfADnEUCygAsUxnj6/0iEWS7WHPO6MF6eCZsM
         8vvZExN7/tlBTLxQgB1MyvtCTNasQCgHoAeg0Y67SIL7Of1qpA5PdkR8bYUYbqYEG7H3
         IIXoucu7bE0qj2kDAWyoSrMMlF4IyRJwdn4c+tgQxaDmgI6/OlWuVguqCKl5LvxZcJBc
         uE6Jwg6ulh+m1EIFWMgoQLCKCLLTZMEn24EmLZfRysEsvZSANM3FfFzsGvba+LRntkdu
         MeOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=oFEp4PdIAtn89SWMC35xFGCFMfskAc7OfEDWlhKFAvk=;
        b=eh27KGdHJT2l7bNI8zMvfx8ouWh3zCQK/2xA4Kq2aD0Q8r0NqFC0il6SkS0oD8ssDZ
         bOh+l7XpkdEOjo26Rl0Hc9eH00KYAA1P65EXEkG8SpF8p1F35eAfkCADvzlgax+xw299
         U/CWUQdIUEbH+N1Tv+TpR8uW/hdB/8+1Hj7eaj2R5m/O6lqDzXvMNZgcaTqSULRGg43c
         tO0FZvS7z8p19BJmo2RB/1od+z4pUH4Q5rBtWIxWitIgQbRyP6GE4PryWE4ma3wdtlJw
         /qZcvejogj49d6eAj4Jobv/FDz+2JDLZDNopWc43KYnqT2TbOSQX//gTuXHllv7zM5Bh
         L6Rg==
X-Gm-Message-State: AOAM530bmRZ1qEB81agIaIn7W30p3yESyooSt8CoKXtMkvPd+1k0mgUU
	FRLvYN9K1xTneAINBa4HcQ2HdBGKnKg0Dw==
X-Google-Smtp-Source: ABdhPJxREJcUgDqQURjl22yJUv3IrO1X86l88hVPMdh0QHjG3eirT7BLPN0o6thiAJWIu11wUhabbw==
X-Received: by 2002:a05:620a:1792:: with SMTP id ay18mr20569442qkb.12.1643813098509;
        Wed, 02 Feb 2022 06:44:58 -0800 (PST)
Received: from [192.168.2.216] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id j13sm9298958qko.46.2022.02.02.06.44.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Feb 2022 06:44:58 -0800 (PST)
Message-ID: <8291ea48-606c-ad3a-3836-56ae1106bdd8@gmail.com>
Date: Wed, 2 Feb 2022 09:44:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jim Palladino <jim@gardettoengineering.com>,
 "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <MN2PR12MB3312C4A465FF575C85EF59DEB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <fe43546f-cde5-f442-0d76-1967bc5dfebc@gmail.com>
 <MN2PR12MB33129A29C695F7A0ABC8BB6EB8269@MN2PR12MB3312.namprd12.prod.outlook.com>
 <4acbc3b9-354e-1a85-5758-fccf65b17835@gmail.com>
 <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12.prod.outlook.com>
Message-ID-Hash: S4JWYX6EOS2HOUDO5YROXVGL7WJ3F4XA
X-Message-ID-Hash: S4JWYX6EOS2HOUDO5YROXVGL7WJ3F4XA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Timed Commands Not Working
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S4JWYX6EOS2HOUDO5YROXVGL7WJ3F4XA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4507463820907565421=="

This is a multi-part message in MIME format.
--===============4507463820907565421==
Content-Type: multipart/alternative;
 boundary="------------utt6HcNN20B1A0ZowKJ0v7cp"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------utt6HcNN20B1A0ZowKJ0v7cp
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-02-02 07:30, Jim Palladino wrote:
> Marcus, thanks for the suggestions. I made sure to set the master=20
> clock rate on both the E320 and N320. In the app I'm developing, I=20
> also tried set_time_unknown_pps() instead of set_time_now() as you=20
> suggested. Unfortunately, neither one of those made a difference.
>
>
Thanks, Jim.

I've put in a query to R&D about this.=C2=A0 It is curious that this appe=
ars=20
to be a problem on both N320 and E320.

I shall do a test on N310 (which is the closest MPM-type USRP I have)=20
and see what happens.


--------------utt6HcNN20B1A0ZowKJ0v7cp
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-02-02 07:30, Jim Palladino
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:MN2PR12MB331282717C011B8FA78D241EB8279@MN2PR12MB3312.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Marcus, thanks for the suggestions. I made sure to set the
        master clock rate on both the E320 and N320. In the app I'm
        developing, I also tried set_time_unknown_pps() instead of
        set_time_now() as you suggested. Unfortunately, neither one of
        those made a difference.</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <br>
    </blockquote>
    Thanks, Jim.<br>
    <br>
    I've put in a query to R&amp;D about this.=C2=A0 It is curious that t=
his
    appears to be a problem on both N320 and E320.<br>
    <br>
    I shall do a test on N310 (which is the closest MPM-type USRP I
    have) and see what happens.<br>
    <br>
    <br>
  </body>
</html>

--------------utt6HcNN20B1A0ZowKJ0v7cp--

--===============4507463820907565421==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4507463820907565421==--

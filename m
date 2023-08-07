Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C14772520
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 15:10:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 07525384ADC
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 09:10:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691413833; bh=BuSzoYXNt4mYI825liFDWYO0HlKjPYyW5qq1r69PpnY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OlTj+eRpfamENQQleIKvRbMniAuNnFmO+fBqxsESJgj6i8wEI83JgJmuMilv5ErLT
	 f87tAQB8arKa8O8L6lD4xizrRd3u/v4ae2WwJUic+3lzgDuc/zG3dmOFc17aO6wUrg
	 tuzdch2OdYOt4DktY0/lpn90+w8wpNlrvB2wYIa17V8shN0UigXOz2wnhMDRUVHRwz
	 1/Q8qTIpIxBairnG1iFBYHn1rV5f0U7LjAwFo7s+p6nhzzq5ku1rJBRPg0N7nCPesd
	 ysrghUMsoGQA+sqKYKQRINJmJQgEqUVjLShjKHOBdd5r79MD+i9KDVuZOEz/klxL+P
	 2mOoPdY1KsVfw==
Received: from mail-oi1-f178.google.com (mail-oi1-f178.google.com [209.85.167.178])
	by mm2.emwd.com (Postfix) with ESMTPS id A8FC53849A1
	for <usrp-users@lists.ettus.com>; Mon,  7 Aug 2023 09:10:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NAHbKQol";
	dkim-atps=neutral
Received: by mail-oi1-f178.google.com with SMTP id 5614622812f47-3a3efee1d44so3547987b6e.3
        for <usrp-users@lists.ettus.com>; Mon, 07 Aug 2023 06:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691413817; x=1692018617;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fnWTlyUfYhKHVdqztj9kIsZUzvynazndM+gpRf7eWs4=;
        b=NAHbKQolbrPePa7jnSd+6DHYfOCt1F30bQt9jCwkyJSXU6dPmZdEwBy1+AefvCWs3d
         ZNq67BXj8DQIrRGs8vp2IJtdgEcuhYFRIRP4+n6cD9HTjkmxtCeVpY5fNwreAQbzg6Ik
         THixVPA6UFSMOIVJE88fGwLqMMHVyjl3vweTcyW5hOI3q7Xn6UOpnQBAZmJKAN2K6Nyb
         l9k5eQIouHEVNNZcajYsmnXtmaSrapjn378kUHPGupz41BEGLYxZFqPnMi5s7hvKg5Yo
         UPp7vZyHaC5iOu5JrxT9mi5ZUmUga/EXMX61aOXL1b3r7xoc+Ggbkr96E1NUhFBa5zDy
         KTlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691413817; x=1692018617;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fnWTlyUfYhKHVdqztj9kIsZUzvynazndM+gpRf7eWs4=;
        b=Wy5AjWGu8Wx2Ua0pjYXAwsmrDbZFFRQI7Ygikc2ZrnalWzzzSyHt4LcfbajuozGSs2
         ao8V9TjtOvDbeR0hT4mFsj8kd7wcGjK1o/fomlOIU1POTkSBLkrM334AHmEp8uaWKzsA
         ROjRMs/xo+mdSsxr3WmDu4q+CrgYV+ENepjmPKqljyJENItXIvwSvR8g3WoqFQTQg+1X
         3lEU20uWvTwJSEOuuyekqmED7IfcimdqTDv5RAEcOO8l3A+VRFlLWMsB5cBB/BgR8vaC
         VVWZjnOLI8p/sF3qYRLcfwY86SRCkPkmDs6BHBoc/ka6rNm2LxDiLeCfmXyaA8CnVMIu
         DtSQ==
X-Gm-Message-State: AOJu0YyWMWhq2xyngcGxcA/NzqLfzNPys4HevseWK8sRatzUvJmgwiy0
	ZpCwhUxOVgUg4e5FYmgKeDT84SkCTF8=
X-Google-Smtp-Source: AGHT+IHSvX2nraX1lWC3Wu0ky19D/ez8o0uy4ii73H6dqG0g7ilXJPwed8ERvI9u1rykHy/uLD2sHg==
X-Received: by 2002:a05:6808:20a9:b0:3a3:654d:b2e5 with SMTP id s41-20020a05680820a900b003a3654db2e5mr12608804oiw.42.1691413817498;
        Mon, 07 Aug 2023 06:10:17 -0700 (PDT)
Received: from [192.168.2.164] ([174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id 24-20020a05620a06d800b00767ed2e6436sm2574827qky.78.2023.08.07.06.10.17
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 06:10:17 -0700 (PDT)
Message-ID: <100d04b2-9cae-4fe6-e024-b68a99da766f@gmail.com>
Date: Mon, 7 Aug 2023 09:10:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <JY69MVrXA1ftfNlnyzeN8KI5JuYFOwHyCm5H1oY83cU@lists.ettus.com>
 <33990667-b547-dc4b-8e98-649b560df3df@gmail.com>
 <2081896548.419499.1691397648533@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <2081896548.419499.1691397648533@mail.yahoo.com>
Message-ID-Hash: 4WS2YQUT3TYT4D3N2R4WJHGV5NYKU6MD
X-Message-ID-Hash: 4WS2YQUT3TYT4D3N2R4WJHGV5NYKU6MD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4WS2YQUT3TYT4D3N2R4WJHGV5NYKU6MD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8233083768276084879=="

This is a multi-part message in MIME format.
--===============8233083768276084879==
Content-Type: multipart/alternative;
 boundary="------------yJG8zauIJOqY4p8nG7mCkrK2"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------yJG8zauIJOqY4p8nG7mCkrK2
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 07/08/2023 04:40, zhou via USRP-users wrote:
> Hi,
>
> I have a question regarding USRP calibration. I am using X310 and UHD 4=
.4.
> To save calibration time, the step size is set to be 5MHz and the freq=20
> range is [600MHz, 6GHz].
> My questions are:
> 1. will the compensation be made at these discrete frequencies only,=20
> or interpolation will be applied to frequencies which are between the=20
> steps?
Interpolation is applied.

> 2. how to compensate DC offset in case there is DSP freq?
The DC offset compensation is applied based on the *analog* frequency=20
setting of the RF PLL.=C2=A0 The DSP component
 =C2=A0 is "perfect" from a offset and balance perspective.


>
> Thanks,
> Hongwei
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------yJG8zauIJOqY4p8nG7mCkrK2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 07/08/2023 04:40, zhou via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:2081896548.419499.1691397648533@mail.yahoo.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div class=3D"ydpf6d16e8dyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">I have a question regardin=
g
          USRP calibration. I am using X310 and UHD 4.4.</div>
        <div dir=3D"ltr" data-setdir=3D"false">To save calibration time, =
the
          step size is set to be 5MHz and the freq range is [600MHz,
          6GHz].</div>
        <div dir=3D"ltr" data-setdir=3D"false">My questions are:</div>
        <div dir=3D"ltr" data-setdir=3D"false">1. will the compensation b=
e
          made at these discrete frequencies only, or interpolation will
          be applied to frequencies which are between the steps?</div>
      </div>
    </blockquote>
    Interpolation is applied.<br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:2081896548.419499.1691397648533@mail.yahoo.com">
      <div class=3D"ydpf6d16e8dyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false">2. how to compensate DC
          offset in case there is DSP freq?</div>
      </div>
    </blockquote>
    The DC offset compensation is applied based on the *analog*
    frequency setting of the RF PLL.=C2=A0 The DSP component<br>
    =C2=A0 is "perfect" from a offset and balance perspective.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
      cite=3D"mid:2081896548.419499.1691397648533@mail.yahoo.com">
      <div class=3D"ydpf6d16e8dyahoo-style-wrap"
        style=3D"font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks,</div>
        <div dir=3D"ltr" data-setdir=3D"false">Hongwei</div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
        <div dir=3D"ltr" data-setdir=3D"false"><br>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------yJG8zauIJOqY4p8nG7mCkrK2--

--===============8233083768276084879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8233083768276084879==--

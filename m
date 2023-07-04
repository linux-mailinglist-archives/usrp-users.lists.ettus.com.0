Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DE01174723D
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jul 2023 15:06:46 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04F85383D15
	for <lists+usrp-users@lfdr.de>; Tue,  4 Jul 2023 09:06:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688476006; bh=r/fbCwWN1bs+wNdG9k9npLBh2rW+l9JsBe0LE7am04Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XC5Q0pR0icWcnLS7cR1o8l87DZhpmXn+iDJKdMO3ZE0ZsxjkXDSkJ6J7TV2YANhWX
	 ZkNXmJKZIeR4mpXqmtYQmY8vBv3v5fVspf1FJrJygkt5hpv1rGpdFrQ1uXN1aKKEgb
	 gAHLN14kL5ITbibq35tfG6t6XdsFk0r17chKPRbPcOBqTRfgtWv5lo1Q4F4+NW9afI
	 2GHNYT8cBT6S6M+tgkXOkigsbmLvapyQ5oP02UXf/ygUMRfwb6DQgaNnflPVtO0NGS
	 Yp6y/r0m2F9mFB7Yyyq713rK3OmwzIAtVRo1JuPo+GuzKvhZq6afCVs0p79tu1xEN+
	 b1T7NIudF9eRQ==
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 58BCD383C41
	for <usrp-users@lists.ettus.com>; Tue,  4 Jul 2023 09:06:19 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="KXl7Ozh+";
	dkim-atps=neutral
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-4fb7589b187so8694818e87.1
        for <usrp-users@lists.ettus.com>; Tue, 04 Jul 2023 06:06:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1688475978; x=1691067978;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IsDl/NV10vdn/++Wv9T+kCCo+lwV0shkCeyCApXquFc=;
        b=KXl7Ozh+CovMAiPkkBhVASpV+ccKLsocIByd1NRN+XiX9oWNuhXd/Yp+SxuWmrydIu
         MDBnbPbv/roKtrd7ir3tGxZerRbuEol2wzn9icbUi/Y6XMEnjzC8L+0Ui+hosCmfUojM
         4zW9X9EJ6Y33ICKgldsBycfSBetuA5icOUEkpZ0W/Glh3dMY8mWblr4O1iQPXkfK+1uD
         9fx4t2fGBoPu/3QQz6vRfdF3iybRL7T+gJtREegP7sh+zVUWKHgiuNABAM7oPpv/+vrH
         IK4OXHjYMtegV7GZZpjnE/0tPLosZGvFIcZ+x7hqMn9F554Sb7wvVN8bB4fXTs1s6tuk
         mxfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688475978; x=1691067978;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IsDl/NV10vdn/++Wv9T+kCCo+lwV0shkCeyCApXquFc=;
        b=BLhl4DtOJlL/amCVDSOVvYBHUz26cwwrtAHRagdGix0285SEwtPRD4cQ02sD/QAJs2
         WhCEVo1uGSLVEajP5iZ8uS0kFzZsgVdM3iUNnBY8rLnubTBhGGQdwo2SuijCcR9Sdqfe
         TzviYeStJijdubzB9M6gg+FtOQTbOL+UHPknrRyDhgcMRLz/+ZDZKLaAmNcZZgR9h5xV
         fnwLsaQ3Pp3PgunmJeNWQ8lDuLiYtGkx6ztiPYLfNY2qu28lp0ENZyBtcz2ThX4jJ5yH
         0GDR7pcX13NpiCB/+21i2yv7ESVJ44sPuKjhFrqswPnlywVN8NAf4xcedHUxWncNxbwk
         9joQ==
X-Gm-Message-State: ABy/qLZ3q1AYpcF/enPzZGgL+/dPRsE1njjH4+naZwJ8q9pN8joOwFPQ
	hkJ75Pvhhj21x39FoRrIFhb/t5bknO08SQlr9ENSGA==
X-Google-Smtp-Source: APBJJlEUVziILtFjuuf4p/EivErvTWppK8QPZBm/hPY70WzABU8yeMdAXQHQ0nFRTxaGk5Y2sVJmVA==
X-Received: by 2002:a05:6512:36c7:b0:4f9:5718:70b0 with SMTP id e7-20020a05651236c700b004f9571870b0mr7581553lfs.41.1688475977484;
        Tue, 04 Jul 2023 06:06:17 -0700 (PDT)
Received: from ?IPV6:2001:9e8:386a:5500:998f:ca6a:6065:3212? ([2001:9e8:386a:5500:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id p2-20020a056402044200b0051beb873d98sm11612205edw.27.2023.07.04.06.06.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jul 2023 06:06:17 -0700 (PDT)
Message-ID: <f712c75c-7a76-37ba-75df-21988746b9a3@ettus.com>
Date: Tue, 4 Jul 2023 15:06:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <DM4PR12MB6302B710D9A979014A7547FE8C25A@DM4PR12MB6302.namprd12.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <DM4PR12MB6302B710D9A979014A7547FE8C25A@DM4PR12MB6302.namprd12.prod.outlook.com>
Message-ID-Hash: LLH2IOLCSZVTLTJ3FJEOHQJ6SZVL53UY
X-Message-ID-Hash: LLH2IOLCSZVTLTJ3FJEOHQJ6SZVL53UY
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Problems streaming with X310 using Rust
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LLH2IOLCSZVTLTJ3FJEOHQJ6SZVL53UY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9023745237527668162=="

This is a multi-part message in MIME format.
--===============9023745237527668162==
Content-Type: multipart/alternative;
 boundary="------------za2a44QqbxlUBjK9RqkULIj8"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------za2a44QqbxlUBjK9RqkULIj8
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi Mark,


first time I see samcrow's uhd-rust! Interesting, and it does quite a few=
 things.


Now, I'll guess that the uhd-rust streamer objects are working subtly dif=
ferently than the=20
underlying C++ objects, and you notice that here. It does seem to make a =
few assumption on=20
internals of UHD, which I can't from the top of my head confirm. Generall=
y, it uses the=20
UHD C API, as far as I can glimpse, and that of course means the whole ch=
ain of ownership is


uhd_rust -> UHD C API offering opaque handles -> UHD C API function takin=
g these handles=20
-> calling C++ methods through shared pointers internally -> UHD (which i=
s C++, not C)


I do see the chance for unpleasant surprises there, so that's where I'd s=
tart looking.


Best,

Marcus


On 29.06.23 15:40, Mark Koenig wrote:
> Hello,
>
> I am attempting to use Rust to task a continuous stream with the B200mi=
ni, N210 and=20
> X310.=C2=A0 I have it working quite well for the B200mini and N210, but=
 having trouble with=20
> the X310.
>
> With the X310 I am unable to have the stream be continuous and task mor=
e than 1 channel=20
> for the streamer.=C2=A0 I am using the Github https://github.com/samcro=
w/uhd-rust=C2=A0for the UHD=20
> bindings and have verified all of the required C++ libraries have been =
imported correctly.
>
> Does anyone have any examples, experience or suggestions on how to get =
the X310 working=20
> correctly?
>
> Thank you very much
>
> Mark
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------za2a44QqbxlUBjK9RqkULIj8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <p>Hi Mark,</p>
    <p><br>
    </p>
    <p>first time I see samcrow's uhd-rust! Interesting, and it does
      quite a few things.</p>
    <p><br>
    </p>
    <p>Now, I'll guess that the uhd-rust streamer objects are working
      subtly differently than the underlying C++ objects, and you notice
      that here. It does seem to make a few assumption on internals of
      UHD, which I can't from the top of my head confirm. Generally, it
      uses the UHD C API, as far as I can glimpse, and that of course
      means the whole chain of ownership is</p>
    <p><br>
    </p>
    <p>uhd_rust -&gt; UHD C API offering opaque handles -&gt; UHD C API
      function taking these handles -&gt; calling C++ methods through
      shared pointers internally -&gt; UHD (which is C++, not C)</p>
    <p><br>
    </p>
    <p>I do see the chance for unpleasant surprises there, so that's
      where I'd start looking.</p>
    <p><br>
    </p>
    <p>Best,</p>
    <p>Marcus</p>
    <p><br>
    </p>
    On 29.06.23 15:40, Mark Koenig wrote:<br>
    <blockquote type=3D"cite"
cite=3D"mid:DM4PR12MB6302B710D9A979014A7547FE8C25A@DM4PR12MB6302.namprd12=
.prod.outlook.com">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <style type=3D"text/css" style=3D"display:none;">P {margin-top:0;ma=
rgin-bottom:0;}</style>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        Hello,</div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        I am attempting to use Rust to task a continuous stream with the
        B200mini, N210 and X310.=C2=A0 I have it working quite well for t=
he
        B200mini and N210, but having trouble with the X310.</div>
      <div class=3D"elementToProof" style=3D"font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof ContentPasted0" style=3D"font-family:
        Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color:
        rgb(0, 0, 0);">
        With the X310 I am unable to have the stream be continuous and
        task more than 1 channel for the streamer.=C2=A0 I am using the
        Github=C2=A0<a href=3D"https://github.com/samcrow/uhd-rust"
          id=3D"LPNoLPOWALinkPreview" moz-do-not-send=3D"true"
          class=3D"moz-txt-link-freetext">https://github.com/samcrow/uhd-=
rust</a>=C2=A0for
        the UHD bindings and have verified all of the required C++
        libraries have been imported correctly.</div>
      <div class=3D"elementToProof ContentPasted0" style=3D"font-family:
        Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color:
        rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof ContentPasted0" style=3D"font-family:
        Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color:
        rgb(0, 0, 0);">
        Does anyone have any examples, experience or suggestions on how
        to get the X310 working correctly?</div>
      <div class=3D"elementToProof ContentPasted0" style=3D"font-family:
        Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color:
        rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof ContentPasted0" style=3D"font-family:
        Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color:
        rgb(0, 0, 0);">
        Thank you very much</div>
      <div class=3D"elementToProof ContentPasted0" style=3D"font-family:
        Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color:
        rgb(0, 0, 0);">
        <br>
      </div>
      <div class=3D"elementToProof ContentPasted0" style=3D"font-family:
        Calibri, Arial, Helvetica, sans-serif; font-size: 12pt; color:
        rgb(0, 0, 0);">
        Mark</div>
      <div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
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
  </body>
</html>

--------------za2a44QqbxlUBjK9RqkULIj8--

--===============9023745237527668162==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9023745237527668162==--

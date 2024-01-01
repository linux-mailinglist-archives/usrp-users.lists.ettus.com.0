Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8BE82154C
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jan 2024 21:57:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 00682380E74
	for <lists+usrp-users@lfdr.de>; Mon,  1 Jan 2024 15:57:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1704142626; bh=fCyAWX7TpmAx8m5cDE7BcatvFo6Q38JtKlOJpY2XKGM=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JMlAJgmFT0hQ4oM+3o3OFG61vsaBcs4EhH5VFQpoRwOeQQ4ObXSRWVu0BoebQVcuX
	 ScSNVzS8UFTzBQ/w5LC8mJumtigDIh/uTU9VQ4UDOcS9bcCXnpmIgVubxZ//L9W/Eo
	 ycPrJN3O7NtZIlRRu8bJJowOZl9D7DUUYU0wdjSAEs3SEbe+UeqYZZnx1dCEJ0Dxzl
	 ROtiF3hJovVpmhCCq0cx/sjIzvFjBsZTp4K7iuaL68G40yXOe3q9mn61VxKZQNBZFx
	 1n5gi2hIazsXNO4FzEUOxqouRSEzIOJIY0vsjcVy5602Lc32pVqvDmPezKnTFCufoW
	 s43AxH3lAzV8A==
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 8C9B9380E2D
	for <usrp-users@lists.ettus.com>; Mon,  1 Jan 2024 15:56:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ozZcwW2M";
	dkim-atps=neutral
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40d88f9e602so7949355e9.3
        for <usrp-users@lists.ettus.com>; Mon, 01 Jan 2024 12:56:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1704142606; x=1704747406; darn=lists.ettus.com;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l/Cp56NjGF5Qu8cx5c9Sr8KoxcyjMsB4Fvul/WhwWfg=;
        b=ozZcwW2MuarYairWRolu2dFkZiHdjm3T1OuT/AA31s1Km76QS10ww8aAYBd0T6nhkM
         /N9VojMk2hJyFTMCFDgzuM71vpzBPxPah4LFISL56Y+nBaxC6a1zYEpXFxyLUIoAjEDS
         /vKwVPzJ27+0j6QZssCVFcxORrWWwOItH7vqzup+M/RnuZ5ItMFYynML4liobULGzkIX
         Rd5cDCEFypRyKA9JbJsqKF+Y8PqhiSOHMcV6yW5MGM9Cc+u6JThouaZg7+x9gOzIsrhf
         Bb/2t8y6YBE5ut1Hs5+Q+zSY0WHYNi6ANKxKdZR6AXcfi9JddKSd2uSCWwxmuyMtL9ia
         MO6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704142606; x=1704747406;
        h=in-reply-to:from:content-language:references:to:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l/Cp56NjGF5Qu8cx5c9Sr8KoxcyjMsB4Fvul/WhwWfg=;
        b=X+CsAwberPPGgWkLFdPelQBhWyjN3q8kVZY5GGSo+1gYCQlHRMXfC0fcLVbMk4plXv
         hvkacOW7yOkKr3mshh77WKdCbVi79jVX2utw9LvQgR9ZUYBoY6MqtQ1gmEGu7fhx1Y7v
         NMrz+B+Zca/DRNO6vQ71oSMdbINtbFAbKufxZfFXv39pK+belKWm3RKVcaamKelhNljz
         Rt6YiOuFMC+8WoKywAf9BFWONepsNcQgu0uiGWq2u0HhpmC7Wiua6I/xtDyGgfiEQ3S/
         KJdB/7jrJpt+qx9VnFMEkGXMS4RcuK96TUBL3dIxpjgmqbqJxnAOcHmY7RTCMJ5c9e8T
         QYZQ==
X-Gm-Message-State: AOJu0YwNYcVqtaMaS121gVb9JEo9pU+qf4JGuBL0bu0n3TKe/rd1oA8b
	70wMiolapIS5ZDBZCNqJ/9FFOBICKjKw1k8zMleHE1nftvEfwg==
X-Google-Smtp-Source: AGHT+IHhNjnus59wSp62XA5ca6E8MLXMVNzsi26jHS5KouRtROp8lZEJ1bJtOpTpF13oGeMHKpNjOA==
X-Received: by 2002:a05:600c:4505:b0:40d:83e1:6c62 with SMTP id t5-20020a05600c450500b0040d83e16c62mr1706670wmo.7.1704142606524;
        Mon, 01 Jan 2024 12:56:46 -0800 (PST)
Received: from ?IPV6:2001:9e8:385b:5b00:10fc:1619:bea3:90d1? ([2001:9e8:385b:5b00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id b16-20020a056000055000b003372dcd739csm7407206wrf.86.2024.01.01.12.56.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Jan 2024 12:56:46 -0800 (PST)
Message-ID: <6fbb6605-101d-4aaf-82f2-f104c00270ae@ettus.com>
Date: Mon, 1 Jan 2024 21:56:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: usrp-users@lists.ettus.com
References: <BMXPR01MB35586505648133E016DAD48CD69FA@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <BMXPR01MB35586505648133E016DAD48CD69FA@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: VKPXUUDUJ53AD3O2JVVSRHM2WWBEJI2I
X-Message-ID-Hash: VKPXUUDUJ53AD3O2JVVSRHM2WWBEJI2I
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: WIFI Accesspoint for B210
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/VKPXUUDUJ53AD3O2JVVSRHM2WWBEJI2I/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4620397377110144811=="

This is a multi-part message in MIME format.
--===============4620397377110144811==
Content-Type: multipart/alternative;
 boundary="------------DFWRCtYCBKpVRxNHr1PT95NP"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------DFWRCtYCBKpVRxNHr1PT95NP
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Long story short: That will be excessively hard, and I don't see any chance of you 
achieving lower latency than gr-ieee802-11 [1], which is not *quite* fast enough for an 
access point, because you would need your USRP to react with ACK packages faster than the 
USB and host software latency allows.


So, what you want is impossible.


 > please help me to give some document to how to convert USRP as an access point.


To the best of my knowledge, no such thing exists. You can use gr-ieee802-11 to use a B210 
in a slightly non-standard adhoc network mode, but not as an Access Point. This is not a 
limitation of gr-ieee-802-11, but simply of the fact that the wifi standard requires 
reaction times faster than you can physically achieve.


Best regards,
Marcus


[1] https://github.com/bastibl/gr-ieee802-11/


On 27.12.23 11:39, Sivanesh Kumar K via USRP-users wrote:
> Hi team,
>
> I need to convert USRP b210 to access point to broadcast as a wifi signal withich is 
> connected to 5G core via N3iwf.
>
> please help me to give some document to how to convert USRP as an access point.
>
> Regards,
> Sivaneshkumar K
> Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message, including any attachments, 
> is for the sole use of the intended recipient(s) and may contain proprietary 
> confidential or privileged information or otherwise be protected by law. Any 
> unauthorized review, use, disclosure or distribution is prohibited. If you are not the 
> intended recipient, please notify the sender and destroy all copies and the original 
> message.
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
--------------DFWRCtYCBKpVRxNHr1PT95NP
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Long story short: That will be excessively hard, and I don't see
      any chance of you achieving lower latency than gr-ieee802-11 [1],
      which is not *quite* fast enough for an access point, because you
      would need your USRP to react with ACK packages faster than the
      USB and host software latency allows.</p>
    <p><br>
    </p>
    <p>So, what you want is impossible.<br>
    </p>
    <p><br>
    </p>
    <p>&gt; please help me to give some document to how to convert USRP
      as an access point.</p>
    <p><br>
    </p>
    <p>To the best of my knowledge, no such thing exists. You can use
      gr-ieee802-11 to use a B210 in a slightly non-standard adhoc
      network mode, but not as an Access Point. This is not a limitation
      of gr-ieee-802-11, but simply of the fact that the wifi standard
      requires reaction times faster than you can physically achieve.<br>
    </p>
    <p><br>
    </p>
    <p>Best regards,<br>
      Marcus</p>
    <p><br>
    </p>
    <p>[1] <a class="moz-txt-link-freetext" href="https://github.com/bastibl/gr-ieee802-11/">https://github.com/bastibl/gr-ieee802-11/</a><br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 27.12.23 11:39, Sivanesh Kumar K via
      USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:BMXPR01MB35586505648133E016DAD48CD69FA@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class="elementToProof">
        Hi team,</div>
      <div
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class="elementToProof">
        <br>
      </div>
      <div
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class="elementToProof">
        I need to convert USRP b210 to access point to broadcast as a
        wifi signal withich is connected to 5G core via N3iwf.</div>
      <div
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class="elementToProof">
        <br>
      </div>
      <div
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class="elementToProof">
        please help me to give some document to how to convert USRP as
        an access point.</div>
      <div
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class="elementToProof">
        <br>
      </div>
      <div
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class="elementToProof">
        Regards,</div>
      <div
style="font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);"
        class="elementToProof">
        Sivaneshkumar K<br>
      </div>
      Mobiveil INC., CONFIDENTIALITY NOTICE: This e-mail message,
      including any attachments, is for the sole use of the intended
      recipient(s) and may contain proprietary confidential or
      privileged information or otherwise be protected by law. Any
      unauthorized review, use, disclosure or distribution is
      prohibited. If you are not the intended recipient, please notify
      the sender and destroy all copies and the original message.
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------DFWRCtYCBKpVRxNHr1PT95NP--

--===============4620397377110144811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4620397377110144811==--

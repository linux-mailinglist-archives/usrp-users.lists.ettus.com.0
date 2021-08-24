Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FA173F62DB
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 18:41:50 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F21343842C3
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 12:41:48 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QI8vNB/2";
	dkim-atps=neutral
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 21565380DE8
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 12:41:05 -0400 (EDT)
Received: by mail-qv1-f51.google.com with SMTP id ew6so4239717qvb.5
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 09:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=a/gC6y8ELP9gFB8O4k2iprLfxBUslf8/XGc8viVjeRc=;
        b=QI8vNB/28wgdQHSZxs8YXXpfYeaySZul+qM/WO0ogyDlxlqE6RJOWA+dueLcnY2+mY
         PYye3PRjFbHJxWKjtlI5376YaDa24Szjq2lpl6Ckl4a+Th0IO9XsJfwOrlNKLoHQYM6o
         lGP2OK4Euvmn2V7aBMMfHxi2ZUtN6aGZNC/qm/BBvAQAeJdF8TElP3hJEIbkaBLADFWH
         LtF9oPLFnyg2nN8xAw8EaJVN4DoWwTtmBQIU3OMjCUh6MeiEmGuft+ujkhRJOVLo/vU0
         KOLki42PR6EkLZ6fHWD+R2hG6PIt79Y5qfpdRpnlwhwabd8D/LM7ucGdE8qlku/gknSY
         SRuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=a/gC6y8ELP9gFB8O4k2iprLfxBUslf8/XGc8viVjeRc=;
        b=QtLd93ncHoLu4TZk4YbNuZYz/lkTsg2zpLoFmBpe1/MVjlsmWLvODs6sqsqeLpyt8M
         3wvFUTckpIKwocvgzTlQJ2+3BiYsOpd3xgBeYzrYtQD2FY9Qphm4xwGs+8RGo9RT3HgP
         kuWiugElkS+5/XUs1HzFQwc75ZjvuXA5LPGxaIAzWVeELuSb8EYBWVrRVwagCT3cTK1c
         o95omNjWvr1V4Y560mlyZDZLHlM4pEvSD4bKnY6AP0ob/q2VPdL+h1kgDIS59hoEg29+
         UZpatDSubqfXlqWIdvrtV2xgF9jXJ73E1qY1u6qOh2SCid0bcZWsQuKLFCfG83+vYO7N
         tOSg==
X-Gm-Message-State: AOAM530goJWFkEAfTXdNutd+vWsOOsre/8pldExBxjoIt6tZ1z2IwsJJ
	DqjhiK/iEfaR79GRjNBaVRm0aJShQIKqzg==
X-Google-Smtp-Source: ABdhPJwc7dSnRNVKuW5yRhX/763AQpSvZUM5QHY/q85SSy5FvbqXfxe3xMGSR8H1DtsmZ6c+IcBFDA==
X-Received: by 2002:a05:6214:d83:: with SMTP id e3mr39699857qve.24.1629823264474;
        Tue, 24 Aug 2021 09:41:04 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id v24sm6484082qkv.11.2021.08.24.09.41.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 09:41:04 -0700 (PDT)
To: Tellrell White <t_whit_87@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1603286005.133827.1629816455930.ref@mail.yahoo.com>
 <1603286005.133827.1629816455930@mail.yahoo.com>
 <881b16c4-161c-6edf-5a7f-de0cafdc47a0@gmail.com>
 <1800716940.152466.1629819588887@mail.yahoo.com>
 <10eb8f95-de74-f86d-e638-2d519f35ed33@gmail.com>
 <983558461.158295.1629821292551@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1cb46b16-2f3a-eb92-a55e-a8b09a64370d@gmail.com>
Date: Tue, 24 Aug 2021 12:41:02 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <983558461.158295.1629821292551@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: B2NCFHFB56PR7D7ZRSKSSRYVUPMWOMZJ
X-Message-ID-Hash: B2NCFHFB56PR7D7ZRSKSSRYVUPMWOMZJ
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running rfnoc replay example on n310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B2NCFHFB56PR7D7ZRSKSSRYVUPMWOMZJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2978451008054466707=="

This is a multi-part message in MIME format.
--===============2978451008054466707==
Content-Type: multipart/alternative;
 boundary="------------7A77B9CD6D483DC055FD72CD"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------7A77B9CD6D483DC055FD72CD
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-08-24 12:08 p.m., Tellrell White wrote:
> Yep. Marcus you caught it!! That worked. Do I need to complete the 
> sections on "Compiling MPM Natively" and "Building UHD"?? I understand 
> that I need the cross-compiler for compiling SW for the device but I 
> don't see the need for completing the other two parts. Is there 
> something additional that needs to be done other than cross compiling 
> on the host machine and ssh'ing over the executable?
>
As far as I know, you should be able to just cross-compile the code 
you're interested in.



--------------7A77B9CD6D483DC055FD72CD
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-08-24 12:08 p.m., Tellrell
      White wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:983558461.158295.1629821292551@mail.yahoo.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div class="ydp967d6306yahoo-style-wrap"
        style="font-family:Helvetica Neue, Helvetica, Arial,
        sans-serif;font-size:13px;">
        <div dir="ltr" data-setdir="false">Yep. Marcus you caught it!!
          That worked. Do I need to complete the sections on "Compiling
          MPM Natively" and "Building UHD"?? I understand that I need
          the cross-compiler for compiling SW for the device but I don't
          see the need for completing the other two parts. Is there
          something additional that needs to be done other than cross
          compiling on the host machine and ssh'ing over the executable?
          <br>
        </div>
        <br>
      </div>
    </blockquote>
    As far as I know, you should be able to just cross-compile the code
    you're interested in.<br>
    <br>
    <br>
  </body>
</html>

--------------7A77B9CD6D483DC055FD72CD--

--===============2978451008054466707==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2978451008054466707==--

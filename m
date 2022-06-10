Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A089545998
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jun 2022 03:32:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7C01384967
	for <lists+usrp-users@lfdr.de>; Thu,  9 Jun 2022 21:32:17 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1654824737; bh=lyY9fZN6ZcU8V2RjGXSwBgAnYr/4Lv+eRaNBvvNqz6k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=vWtukCkECByPi3vr8tT0Se/BklWA/E9nMRq1c9E3GLOcIO1wk5y7VQS1FhkoT+FIr
	 OdlLNjK0XO9SLgblUnxBxQToIbNvoqa6JvsVS+Sn6Dt0QvN+/riGaNfOSMIdM2hOaq
	 AcYsnwTGgSwkKTcP8mfxtvP7HmGsAT1WjgJo/v/0Pc1MJ5WLVtWgMxdhH0NNIyEjBh
	 ePfpnOo6h9ab1Fp85ziDHL4oKSXrBwExz2KtsJG4Y//NEsd3ENGCpuAdbiNPfbhJTA
	 9urJBBa89cLlVpT998HvpXKbl24Mf1u7ZmSRsY1vOKGSuBYAb9w90Kp9nfLdYWoFeh
	 uG0NqduxfWFEg==
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by mm2.emwd.com (Postfix) with ESMTPS id BC8E9384A2A
	for <usrp-users@lists.ettus.com>; Thu,  9 Jun 2022 21:29:21 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Jf3HsF5F";
	dkim-atps=neutral
Received: by mail-qt1-f169.google.com with SMTP id c8so18456016qtj.1
        for <usrp-users@lists.ettus.com>; Thu, 09 Jun 2022 18:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=fIhtmBB1jXuRz+lEVkLuvALspqfXf1IrcPUh8HAzk3s=;
        b=Jf3HsF5FbFt986GGZEyF7kbCgIf+aIEbymJgIrHmkM/wivsaQbLX7NggYwt9+rOqZa
         Yh6oS8MMIWYYU0NSmXv6e9+iaIKQB7S3t85Z09BKVwXpu9oTo4DZ9Qk+mmEZ0nNoQG05
         SFsXWM8e/y94s1Va42Yiha+20y6wvi2HFG8qLOPV039xKkaiv/LDqHZ9nXcKO4TViqQ2
         n2r5MqIDFT1/O+psVk3f88TlBp5Plc0UevtmJtezNMCYfO5QNgo7kWE2pS15vF6xC7x+
         ORImIFKf8hKVQNX8xgVZ/saku/aCfAdnI273v0p7PFkaQ1QbH02x2WBw64nvNkZt/2Th
         Hj4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=fIhtmBB1jXuRz+lEVkLuvALspqfXf1IrcPUh8HAzk3s=;
        b=FxCNkrub+e4o1/uZm/B3yhIoJJJ4KJsyrTANbGlUTKxw6J7UOxLLESXpfFuZikCKh0
         fLU7NrSSNjRc41kDb4N+a7c99Il4YLS5uHy0Qipk5L34BhCS/2s7naNhiBd62udllDGJ
         kPNneOil8XL9+z7NBz97Ul6MZC/w9c2n65TcyQcWNRYJyA8jdYpqSQWCujKsll5wQZHm
         nulUm8A3YuwvYmjeuNsYI/rzHVGdhLFM6UHO5iEDNu0EDM+AA4cIdEZV5OlCL9OX5Mq9
         10bS1U6d+XOJCPMrfhEh30NGbBqEsLQLugpW6MFgfSLlJVmyMSNpHCg68GENx62OVftC
         xTNg==
X-Gm-Message-State: AOAM532OAt/xZX5W6FGyocdvg5qACdYRSRSykkzY/RaatNzUp3FjYlDr
	p85TGTy6Xv4gLWy1Rs7kzjx6LZGuUCEtTXDO
X-Google-Smtp-Source: ABdhPJwLvv/O16NM3TBm/QawDDHWoWLkgQc6Dub9ifCnGqWUvrUliHv+4LJsaSjqxGJwVstkAywx6A==
X-Received: by 2002:ac8:594e:0:b0:304:d914:2ef8 with SMTP id 14-20020ac8594e000000b00304d9142ef8mr31791989qtz.149.1654824560857;
        Thu, 09 Jun 2022 18:29:20 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id k11-20020a05620a414b00b0069fc13ce235sm12807277qko.102.2022.06.09.18.29.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jun 2022 18:29:20 -0700 (PDT)
Message-ID: <2211cddd-4e05-17ca-bad3-96361926feca@gmail.com>
Date: Thu, 9 Jun 2022 21:29:19 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BYAPR03MB4678FD7625EC090FBDA33CB4D3A79@BYAPR03MB4678.namprd03.prod.outlook.com>
 <MN2PR03MB4685CC11694062B7A6499B0CD3A69@MN2PR03MB4685.namprd03.prod.outlook.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MN2PR03MB4685CC11694062B7A6499B0CD3A69@MN2PR03MB4685.namprd03.prod.outlook.com>
Message-ID-Hash: ZJ7ONOWDNERYF44HTRAVGBNO7MG5PDJC
X-Message-ID-Hash: ZJ7ONOWDNERYF44HTRAVGBNO7MG5PDJC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 GPIO
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZJ7ONOWDNERYF44HTRAVGBNO7MG5PDJC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9158173134674537835=="

This is a multi-part message in MIME format.
--===============9158173134674537835==
Content-Type: multipart/alternative;
 boundary="------------kenRWCP4jhs5BJgnjU32VXlW"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------kenRWCP4jhs5BJgnjU32VXlW
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-06-09 20:22, Minutolo, Lorenzo wrote:
> Update,
> I found an error in my wiring and now shorting a data pin and GPIO GND 
> makes the bit flip from 1 to 0.
> Still sounds like a weird behavior for a floating pin to be stuck at 1 
> but that's not an issue for me.
https://learn.sparkfun.com/tutorials/pull-up-resistors/all

Having built-in pull-ups on I/O lines is not that uncommon.


--------------kenRWCP4jhs5BJgnjU32VXlW
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-06-09 20:22, Minutolo, Lorenzo
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:MN2PR03MB4685CC11694062B7A6499B0CD3A69@MN2PR03MB4685.namprd03.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Update,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I found an error in my wiring and now shorting a data pin and
        GPIO GND makes the bit flip from 1 to 0.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Still sounds like a weird behavior for a floating pin to be
        stuck at 1 but that's not an issue for me.</div>
    </blockquote>
    <a class="moz-txt-link-freetext" href="https://learn.sparkfun.com/tutorials/pull-up-resistors/all">https://learn.sparkfun.com/tutorials/pull-up-resistors/all</a><br>
    <br>
    Having built-in pull-ups on I/O lines is not that uncommon.<br>
    <br>
    <br>
  </body>
</html>

--------------kenRWCP4jhs5BJgnjU32VXlW--

--===============9158173134674537835==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9158173134674537835==--

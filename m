Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6D07A018A
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 12:21:25 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCED2384B46
	for <lists+usrp-users@lfdr.de>; Thu, 14 Sep 2023 06:21:24 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694686884; bh=WhYTG0oVSRPSjxUNYaJMrtqr931SV70ngi9FQz3jxxA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Vk8z+HiVF6g5eQyEvH8yDtEhsCeMhxpRemNR5JxvWidPH+VAEVELKAD27g60d0MDk
	 mf77FBDBn8nPXFwpuKQBeNzu+I9Pa8UbP+o9TQIIWE2+IogR8U3UVZOOg/aMpbcrNB
	 6eGmktxHT6ZsNeL6EwAMmcMfdDaKaKa09zSg9ORvudLO5ZkpA4IydS4kQ666HPdtdN
	 C9GwU7k1UVZdgkgBxhWhS3K6tGw5xTucE6E2JZO0JnH75d8F9PdGnXuHSxO5+qBB8g
	 eGD49hg2r2crKRNrbzev04ZJskB44ZxKXDvtpsjlETgQCpjDXc+X6ITUC2jI385ynv
	 vgW7wQWEy05jA==
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by mm2.emwd.com (Postfix) with ESMTPS id EF3A5384A9D
	for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 06:21:06 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="SZ1Nk5Up";
	dkim-atps=neutral
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-52f33659d09so881039a12.1
        for <usrp-users@lists.ettus.com>; Thu, 14 Sep 2023 03:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1694686865; x=1695291665; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FEhR659Qbd6rPIltfIZZa7CJGPWKUy896dt21OXu2yg=;
        b=SZ1Nk5UpgaE4gqJ9OqQ0DYb2D/3xHQ0iRUJnxn5oFw4VU1BdVQ0L6TjNgMn3kootqF
         VJdwsQP7gcy0wa0SL/4HfQbP7hUhQoQzEMyG/Mo9zeKsRgD10NU/6LHen6Ezw5srLWpw
         HJ4Zts0dL4jyu+tHQ2GRPjmKNNi8I2JyW7G09E/EPyHwuPyoclnv5wOtuUx2lnxvR0zu
         Q723rny1P0Fs1WKFdVtVKTUZaaaJum6lBJCY+uy94nwlDG4xbidj76FGpoRitSAAOUc5
         6RdMDxuHXymTHQztW4DN/seseD4Ne0DV1coHKLK6Ls9pjfhXNDeLCZUQorHvZVqiJO6Q
         LgKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694686865; x=1695291665;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FEhR659Qbd6rPIltfIZZa7CJGPWKUy896dt21OXu2yg=;
        b=j960qqIMAdcsCSf8CIArxyNK7Xs50eU8eKMBpYWthHGe4ztbg9qDd28MP+HFQ7ncV1
         jyRkvFslOizJThe3SaIIx5k51XBteBWZVYNYJrc7c2VW1L8ckW6fGPzLKeai0vIMdtjK
         sLwbvrD4ujuH4BuuFH3IM62aaAFidkRJehw3/jL0y3Px8He2Q/T0cD4VySDcVj3s8X7m
         OHXxBP7AXdGndLanqwDcNcpUsdLaQEQuBfeR/h/pRMxHQUOk7ieabDfX/ZgeNWlyS9kB
         nrMiEO/eP0YdCo1gK7rYBvn9SZSkxp9KFvQW4h6s6/uzD/D1WAA0VaYMbbX2ADPgxHRR
         +eZQ==
X-Gm-Message-State: AOJu0YwH/2B/xEPppRqmg5DsMOoXe1esQq+TZp1f7DoORda90ns9Uj7Q
	/1jJecwnfnKbOYhWDwbokKcNRvuwLlOjmhRMFNP6og==
X-Google-Smtp-Source: AGHT+IFOnc+UL3g2GcqgSGjLjT8S7zE8FbXLhC48FvMpQ/5vHA412xgshJTHEvY7TQa0Cd7UZ6KhPg==
X-Received: by 2002:aa7:cc0b:0:b0:525:73dd:4f71 with SMTP id q11-20020aa7cc0b000000b0052573dd4f71mr4047683edt.14.1694686865367;
        Thu, 14 Sep 2023 03:21:05 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3876:a400:10fc:1619:bea3:90d1? ([2001:9e8:3876:a400:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id l2-20020aa7c3c2000000b005257f90c976sm726411edr.3.2023.09.14.03.21.03
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 03:21:04 -0700 (PDT)
Message-ID: <d2078af4-c806-ade1-ab94-4951616ff704@ettus.com>
Date: Thu, 14 Sep 2023 12:21:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <BMXPR01MB3558BDD10C2CA34EE1843FAED6F7A@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <BMXPR01MB3558BDD10C2CA34EE1843FAED6F7A@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM>
Message-ID-Hash: WL7GQ7P53OXBYFNCOR7VPMOPTOQLBDR2
X-Message-ID-Hash: WL7GQ7P53OXBYFNCOR7VPMOPTOQLBDR2
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to connect usrpb210 to google cloud
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WL7GQ7P53OXBYFNCOR7VPMOPTOQLBDR2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5769782402165866816=="

This is a multi-part message in MIME format.
--===============5769782402165866816==
Content-Type: multipart/alternative;
 boundary="------------WokULu6uJ6GEBC6lDZQo00WK"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------WokULu6uJ6GEBC6lDZQo00WK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Sivanesh,


this is a bit confusing: Google Cloud runs on Google's datacenters. Your USRP is connected 
to your PC, not to google's datacenter. So, long story short: you need to do initial 
signal processing on your PC, then can transfer signal, or data, very likely at a starkly 
reduced data rate, to the cloud, for further processing, if that's what you want. I'm 
really not sure what you want, though:


On 14.09.23 11:48, Sivanesh Kumar K wrote:
> After connecting usrp in local mechicne which as google cloud , usrp is not detecting

I'm sorry, English isn't my first language (I guess it isn't yours, either!), and I really 
don't understand what you're telling us here. Could you please elaborate what **exactly** 
you're trying to do, and on which machine?



Best regards,
Marcus

--------------WokULu6uJ6GEBC6lDZQo00WK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p>Hi Sivanesh,</p>
    <p><br>
    </p>
    <p>this is a bit confusing: Google Cloud runs on Google's
      datacenters. Your USRP is connected to your PC, not to google's
      datacenter. So, long story short: you need to do initial signal
      processing on your PC, then can transfer signal, or data, very
      likely at a starkly reduced data rate, to the cloud, for further
      processing, if that's what you want. I'm really not sure what you
      want, though:</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 14.09.23 11:48, Sivanesh Kumar K
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:BMXPR01MB3558BDD10C2CA34EE1843FAED6F7A@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <style type="text/css" style="display:none;">P {margin-top:0;margin-bottom:0;}</style>
      <div class="elementToProof" style="font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
      </div>
    </blockquote>
    <blockquote type="cite"
cite="mid:BMXPR01MB3558BDD10C2CA34EE1843FAED6F7A@BMXPR01MB3558.INDPRD01.PROD.OUTLOOK.COM">
      <div class="elementToProof" style="font-family: Calibri, Arial,
        Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
        After connecting usrp in local mechicne which as google cloud ,
        usrp is not detecting
        <br>
      </div>
    </blockquote>
    <p>I'm sorry, English isn't my first language (I guess it isn't
      yours, either!), and I really don't understand what you're telling
      us here. Could you please elaborate what **exactly** you're trying
      to do, and on which machine?</p>
    <p><br>
    </p>
    <p><br>
    </p>
    <p>Best regards,<br>
      Marcus<br>
    </p>
  </body>
</html>

--------------WokULu6uJ6GEBC6lDZQo00WK--

--===============5769782402165866816==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5769782402165866816==--

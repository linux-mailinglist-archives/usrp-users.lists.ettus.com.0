Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4593F6207
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 17:51:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4EA8A38469A
	for <lists+usrp-users@lfdr.de>; Tue, 24 Aug 2021 11:51:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jTcFm3Kc";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 7542938459F
	for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 11:51:09 -0400 (EDT)
Received: by mail-qk1-f173.google.com with SMTP id a10so14773067qka.12
        for <usrp-users@lists.ettus.com>; Tue, 24 Aug 2021 08:51:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=fbYAA27avOSWc4kI1Uk9Y+YRPVA/Qazvy3k6gsZG080=;
        b=jTcFm3Kc96++GPFbDdVTGxWS8JOjDXKx1ku/pKksT6fv6N7qtCMD4rxznYMXN4crFY
         1R9F46nysMUBmRuaZRkgwaIFr5UJGzDq9LBeJFrtrdoHhK75oPCfToZxXjcbh79c9Awi
         If6lvsqPyLLQQw4p2B71BiBoHXM7FH5z5t2qIf0yoObkyBauA0xLBz5d9bpS176PfUiq
         i7UrzbytMiuREu3WAYs6vGT1wn2mpKe6K6f7i5eEDojVzsCh5ZhDeIZ1l6a9hU+LsxPE
         pZahATuTND6ZSzXLh80Tchel1X06VXEw2GwlbgkOxWgHE1U3qcmUTpxRjhOghQejKsxo
         AgOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=fbYAA27avOSWc4kI1Uk9Y+YRPVA/Qazvy3k6gsZG080=;
        b=QQzAkcHB65G68yXazlYEvMbz5CNBrgI+NIvUe1mPmgCh7qd3JOGsAGIs3Jce/2J0KF
         S4VsSBxY6Cp7zD5fApM0mSQKRfPsajpdD246fNLPut/MMweYXUwCZO6ILHZwgJPO9oLq
         x7xtcYk3KGys9ZRkzubqtYQT1qcE3/d9rwzEI+GIoMQg6ns6NWyYzY5mcaDP7DzrxXKT
         s2sQWljPer4nBdWVRS1X68uppeAeLDUNAW51jXUFf1Vs+LcYQl8Kkcam9VqYoPxmUBA6
         1cMvvWkVhA3bInii8pmnp3g1HQmRar+ioWx0nNH8mLWNmgTTTttrqeC2M84WennAJz1B
         TETA==
X-Gm-Message-State: AOAM531gPsRZa3QaeDofVsnWT9le6HW1Hw8h/VeVepDLfs3db08K+mOu
	qGvk37lNv3wGXxJF2oz5r9NFjC3VGihhCg==
X-Google-Smtp-Source: ABdhPJxva5Ul8JMdpHZv4gUVmUyiULtkg0CIdSz1xrcz1MFEP1gzMBpl/d+slQgKGmdBbuYuz3HrXQ==
X-Received: by 2002:a37:aa82:: with SMTP id t124mr23703573qke.293.1629820268709;
        Tue, 24 Aug 2021 08:51:08 -0700 (PDT)
Received: from [192.168.2.19] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id c7sm9136785qtv.9.2021.08.24.08.51.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Aug 2021 08:51:08 -0700 (PDT)
To: Tellrell White <t_whit_87@yahoo.com>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <1603286005.133827.1629816455930.ref@mail.yahoo.com>
 <1603286005.133827.1629816455930@mail.yahoo.com>
 <881b16c4-161c-6edf-5a7f-de0cafdc47a0@gmail.com>
 <1800716940.152466.1629819588887@mail.yahoo.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <10eb8f95-de74-f86d-e638-2d519f35ed33@gmail.com>
Date: Tue, 24 Aug 2021 11:51:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <1800716940.152466.1629819588887@mail.yahoo.com>
Content-Language: en-US
Message-ID-Hash: T26YDZUGPBK2ALMDBVN75XAIBOKNONK7
X-Message-ID-Hash: T26YDZUGPBK2ALMDBVN75XAIBOKNONK7
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Running rfnoc replay example on n310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/T26YDZUGPBK2ALMDBVN75XAIBOKNONK7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8223639265951986616=="

This is a multi-part message in MIME format.
--===============8223639265951986616==
Content-Type: multipart/alternative;
 boundary="------------856A8F7A9509D56771664D2A"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------856A8F7A9509D56771664D2A
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-08-24 11:39 a.m., Tellrell White wrote:
> The following step under "SDK Usage"
> $ . $SDKPATH/environment-setup-armv7ahf-vfp-neon-oe-linux-gnueabi
>
> doesn't seem to be working for me. I'm assuming $SDKPATH is the path used for installation since I haven't seen this discussed anywhere else in the directions. I get the following printout.
>
> tw@tw-virtual-machine:/usr/local/share/uhd/images/y$ . 
> usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi 
> bash: 
> usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi: 
> No such file or directory
>
Looks like you're missing a leading "/" on that filename.



--------------856A8F7A9509D56771664D2A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-08-24 11:39 a.m., Tellrell
      White wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:1800716940.152466.1629819588887@mail.yahoo.com">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      <div class="ydp829e9487yahoo-style-wrap" style="font-family:
        Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 13px;">
        <div dir="ltr" data-setdir="false">The following step under "SDK
          Usage" <br>
        </div>
        <div dir="ltr" data-setdir="false"><span>
            <pre class="ydp989e7542fragment">$ . $SDKPATH/environment-setup-armv7ahf-vfp-neon-oe-linux-gnueabi

doesn't seem to be working for me. I'm assuming $SDKPATH is the path used for installation since I haven't seen this discussed anywhere else in the directions. I get the following printout. 

<div>tw@tw-virtual-machine:/usr/local/share/uhd/images/y$ . usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi
bash: usr/local/share/uhd/images/y/environment-setup-cortexa9t2hf-neon-oe-linux-gnueabi: No such file or directory

</div></pre>
          </span><br>
        </div>
      </div>
    </blockquote>
    Looks like you're missing a leading "/" on that filename.<br>
    <br>
    <br>
  </body>
</html>

--------------856A8F7A9509D56771664D2A--

--===============8223639265951986616==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8223639265951986616==--

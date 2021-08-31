Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BACBE3FC6A8
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 14:03:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6C01238155E
	for <lists+usrp-users@lfdr.de>; Tue, 31 Aug 2021 08:03:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZOOMhdvZ";
	dkim-atps=neutral
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	by mm2.emwd.com (Postfix) with ESMTPS id 43D82383F5C
	for <usrp-users@lists.ettus.com>; Tue, 31 Aug 2021 08:02:17 -0400 (EDT)
Received: by mail-qt1-f172.google.com with SMTP id t9so14327244qtp.2
        for <usrp-users@lists.ettus.com>; Tue, 31 Aug 2021 05:02:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language;
        bh=McWbWGoyJQH9tFDC3WnIWVCuPsc5QpfpaPjToC1uGDU=;
        b=ZOOMhdvZYd6RVyx3nflPSEaGg76gmaIdVZaax9xkGfRVYUnfz5iVnIj6jIkzZaLfC8
         qanUIiWlrdK4GBAZXMkuxS5lnJg7nyZLU5QaQfAeJiPTjpvC5ZEWpTYGGzw/8aXpVgp0
         hgd329x/fTYXFKwV8OT5V+leW2GHVgOciaTbIpNgZFD7vZ/KQ0CHDwXhXYfzS+SZL7FO
         5xw+VrtxHDqVrfYDgcOM2Ykm95pYmXn2AMRS6R31ibPJxouM2aaBoQObsXjNu600A9zY
         PxqD78t4X4a6t89r6bLO4AOdoCf2HEQ1G+KpBCeh1Ty99CvCksDIPXrf1d8l+uO8c7np
         gwgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=McWbWGoyJQH9tFDC3WnIWVCuPsc5QpfpaPjToC1uGDU=;
        b=HxwgRE7hb3R3R0IDJputI+RnS99YqpFPGiWosUlHyDC5N4l9aWtCF/K1xAM48a0d78
         4vt4Y5U6QLSzdrM+HiwNRNsnlOlWxO6dKTj1TW3MZWieQ0KFbmGtrUpsBxlp8TDZ17dc
         coJ2Ou9x3jt/CwVEdCCTBCTFLHb+IIRWmcZDWxzVrpogPv6HJ/u/k2Uhlz0h39PACHlU
         QXcGOGb7tx8fO8BlhY7RLdL+y1or0W57JcDq55zoegibAtFviJlaECo44dinrBpmshpk
         W5DupdZ80YSzSH2VQ2ICU6umm0e603//aSMfy7VccBBrK4fWLl6TAycfXL1x5kJgPH9E
         wAQA==
X-Gm-Message-State: AOAM531aygyjsEcWlIsWOgJC4t0rHDe+7j55qYf0w99OlX00dYKZyCCq
	IIgasW6Jzvv121ZeAFDBu/+M6JMZ/FN3pQ==
X-Google-Smtp-Source: ABdhPJxeDLkjq4g5twt9nv0nGrTveAzReWdhOlUHzK5ttbqKerNn5ErIO0FKeuPvxIuGrxIwyxdWew==
X-Received: by 2002:ac8:729a:: with SMTP id v26mr2322090qto.79.1630411336476;
        Tue, 31 Aug 2021 05:02:16 -0700 (PDT)
Received: from [192.168.2.229] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id i14sm13323091qka.66.2021.08.31.05.02.15
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 05:02:15 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <A0DtKWrNwk4KRUYC7EJXxfzVMWxPQLAQ2aR0QOmIE4@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <6ebacd08-c0ab-270c-9163-29b0617ef52e@gmail.com>
Date: Tue, 31 Aug 2021 08:02:14 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <A0DtKWrNwk4KRUYC7EJXxfzVMWxPQLAQ2aR0QOmIE4@lists.ettus.com>
Content-Language: en-US
Message-ID-Hash: RLI2Y57PX4MVQMAPKOSNOZFFNAPVRPHU
X-Message-ID-Hash: RLI2Y57PX4MVQMAPKOSNOZFFNAPVRPHU
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Contents implemented in the B205mini-i FPGA configuration file distributed in GitHub
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RLI2Y57PX4MVQMAPKOSNOZFFNAPVRPHU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3372300113080559444=="

This is a multi-part message in MIME format.
--===============3372300113080559444==
Content-Type: multipart/alternative;
 boundary="------------0F0667630816B920D5CBB67E"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------0F0667630816B920D5CBB67E
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2021-08-31 4:48 a.m., hiroki_iwata--- via USRP-users wrote:
>
> Dear community members,
>
>
> I am new to touch the USRP device and design FPGA.
>
> I would like to confirm and understand the contents (such as signal 
> processing blocks) in the FPGA bin file for B205mini-i distributed in 
> GitHub (EttusResearch).
>
> As a first step, I installed ISE tool from Xilinx and confirm the 
> schematic using Project Navigator, but I cannot understand it clearly.
>
> Does anyone know the details for signal processing on FPGA? Or Does 
> anyone have some materials for the design details?
>
> Especially, I want to understand how the parameters for RFIC (such as 
> center frequency, bandwidth, and gain) are sent from a USB Host to the 
> RFIC via USB controller and FPGA.
>
> Thank you so much in advance.
>
> Hiroki
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
The source code is freely available:

https://github.com/EttusResearch/uhd


--------------0F0667630816B920D5CBB67E
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2021-08-31 4:48 a.m.,
      hiroki_iwata--- via USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:A0DtKWrNwk4KRUYC7EJXxfzVMWxPQLAQ2aR0QOmIE4@lists.ettus.com">
      <meta http-equiv="content-type" content="text/html;
        charset=windows-1252">
      <p>Dear community members,</p>
      <p><br>
      </p>
      <p>I am new to touch the USRP device and design FPGA.</p>
      <p>I would like to confirm and understand the contents (such as
        signal processing blocks) in the FPGA bin file for B205mini-i
        distributed in GitHub (EttusResearch).</p>
      <p>As a first step, I installed ISE tool from Xilinx and confirm
        the schematic using Project Navigator, but I cannot understand
        it clearly.</p>
      <p>Does anyone know the details for signal processing on FPGA? Or
        Does anyone have some materials for the design details?</p>
      <p>Especially, I want to understand how the parameters for RFIC
        (such as center frequency, bandwidth, and gain) are sent from a
        USB Host to the RFIC via USB controller and FPGA.</p>
      <p>Thank you so much in advance.</p>
      <p>Hiroki</p>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list -- <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class="moz-txt-link-abbreviated" href="mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    The source code is freely available:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://github.com/EttusResearch/uhd">https://github.com/EttusResearch/uhd</a><br>
    <br>
  </body>
</html>

--------------0F0667630816B920D5CBB67E--

--===============3372300113080559444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3372300113080559444==--

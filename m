Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 942D92288FD
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 21:18:01 +0200 (CEST)
Received: from [::1] (port=43244 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxxm4-0002Sa-Jl; Tue, 21 Jul 2020 15:18:00 -0400
Received: from mail-qt1-f179.google.com ([209.85.160.179]:38382)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxxm0-0001q7-6A
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 15:17:56 -0400
Received: by mail-qt1-f179.google.com with SMTP id a32so17036247qtb.5
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 12:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=CcEiMsh6W8LtHmM4ul5AY2yuPsOFEbuII7cx8e8XmuE=;
 b=fUEkogmilL/ecHVLE3HzJ1qg5jzgqAu2qKtagLevX4BGg5TqmW7qRivXcqQjPKUOSg
 y+E9DqP4TCNK4KAE1rZihVFhnA3RdPexx/BD/dqjQNqWEkjmF7bOsjxJCEMDPw8iwK7Y
 zx1FkS7Y8NnpE6F6ZlQDr/qocdYsG4LqXgsyMpvP6oilcIN/4KV+pdQhL5e15pw0REwB
 QR1Pt5G4qKvdwsX6w+logcfmdsr9/Ipb3msk3QTmxJTu//MS/Di8Xko7KJpv5wCF/Ine
 s0hHcG6NYmd+kUv24rrvngmxDFvh+gW4rHx4i5//lIiSx28YPRiipnYWT3prBLCwnyeJ
 5Scw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=CcEiMsh6W8LtHmM4ul5AY2yuPsOFEbuII7cx8e8XmuE=;
 b=i6wBJCKiU5lo/e68Dq1HwX51xYc/ji+NSJf4f0YgHXEIXFOt89EGsd/m+wx2C/yrqm
 5cG6dK7y8/XYel+tLKCpsmdDTvy6ZEctFs+GvjzG22ciEscqNuH4FSdYf2Nel2Z+2xIf
 4BRUH0h9pxcR+7Z7oT3RERn5HsTAoffIY4z6WUE4LtSfVkfQGcmBlu0GEuyQeV4/Wl6a
 90RWrx+alTn7lRx95PHPd/U/LTHXpTUg4nOkR9OCqB4xAs4trpfetsoxOlIOzlZrVnNf
 UjYnKvOY8fljUpWsAsERVEnSxzyKo1qgctoXStF74a2I0QgzbQRSs5Os3ChMQpbvRIP1
 k5sA==
X-Gm-Message-State: AOAM533WhID+koFPiGaAIO4Zqi1Q4u6iDdDWYu8XGdlFvmOAZsj3i/Qq
 jbXomyYUy+duJ+TL5VYnLB+dCcpoHhLmYQ==
X-Google-Smtp-Source: ABdhPJys4sh5+xnJuIlbvb8cSI36cnAHSK+dL3B44RBjZbgPx5jUfvyz+y9p4YHjR/Rivt5U7Vs7ag==
X-Received: by 2002:a37:8fc6:: with SMTP id
 r189mr19916984qkd.159.1595359032850; 
 Tue, 21 Jul 2020 12:17:12 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id u68sm3130961qkd.59.2020.07.21.12.17.12
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jul 2020 12:17:12 -0700 (PDT)
Message-ID: <5F173F37.2060809@gmail.com>
Date: Tue, 21 Jul 2020 15:17:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAOqZ52a5gp6KREUZqht2oA7RVPNwxg3T7=y+Jb7Sr0f=pfXn_g@mail.gmail.com>
In-Reply-To: <CAOqZ52a5gp6KREUZqht2oA7RVPNwxg3T7=y+Jb7Sr0f=pfXn_g@mail.gmail.com>
Subject: Re: [USRP-users] LFRX/LFTX daughterboard combination.
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============0137094412681141582=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

This is a multi-part message in MIME format.
--===============0137094412681141582==
Content-Type: multipart/alternative;
 boundary="------------030707020104080807080100"

This is a multi-part message in MIME format.
--------------030707020104080807080100
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 07/21/2020 03:15 PM, Stephen Spears via USRP-users wrote:
> Hi there,
>
> I have a question about using the LFRX and LFTX daughterboards 
> together. I tried contacting Ettus through their website, but received 
> no response, so I thought I might find answers here instead. I need to 
> do both RX and TX at low frequencies (<30 MHz), but according to the 
> Ettus website, there is no combined TX/RX daughterboard for this range.
> I am wondering if I need separate N200s for each board, or if there is 
> a way to fit both in a single N200. I ask this because the boards LFRX 
> and LFTX boards look significantly smaller on the website 
> (https://www.ettus.com/product-categories/rf-daughterboards/page/2/) 
> than the combined RX/TX boards. If any of you have experience using 
> these boards, please let me know whether using a single N200 is possible.
>
> Thanks,
> Stephen Spears
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
The N200 will support a single card *IN EACH DIRECTION*.  So, there's no 
problem having both a LFRX and LFTX in a single N200 or N210.



--------------030707020104080807080100
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/21/2020 03:15 PM, Stephen Spears
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAOqZ52a5gp6KREUZqht2oA7RVPNwxg3T7=y+Jb7Sr0f=pfXn_g@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hi there,
        <div><br>
        </div>
        <div>I have a question about using the LFRX and LFTX
          daughterboards together. I tried contacting Ettus through
          their website, but received no response, so I thought I might
          find answers here instead. I need to do both RX and TX at low
          frequencies (&lt;30 MHz), but according to the Ettus website,
          there is no combined TX/RX daughterboard for this range.</div>
        <div>I am wondering if I need separate N200s for each board, or
          if there is a way to fit both in a single N200. I ask this
          because the boards LFRX and LFTX boards look significantly
          smaller on the website (<a moz-do-not-send="true"
href="https://www.ettus.com/product-categories/rf-daughterboards/page/2/">https://www.ettus.com/product-categories/rf-daughterboards/page/2/</a>)
          than the combined RX/TX boards. If any of you have experience
          using these boards, please let me know whether using a single
          N200 is possible.</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Stephen Spears</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    The N200 will support a single card *IN EACH DIRECTION*.  So,
    there's no problem having both a LFRX and LFTX in a single N200 or
    N210.<br>
    <br>
    <br>
  </body>
</html>

--------------030707020104080807080100--


--===============0137094412681141582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0137094412681141582==--


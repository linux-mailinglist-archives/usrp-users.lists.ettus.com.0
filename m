Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A9B2B86FB
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 22:46:40 +0100 (CET)
Received: from [::1] (port=58942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfVHh-0005jF-Vu; Wed, 18 Nov 2020 16:46:37 -0500
Received: from mail-qk1-f178.google.com ([209.85.222.178]:38147)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kfVHd-0005c9-R4
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 16:46:33 -0500
Received: by mail-qk1-f178.google.com with SMTP id 11so3439499qkd.5
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 13:46:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=YYboHLDcVcZSxQxxNasAiN6uh7R7B+aQRXaR9+xnL7o=;
 b=WsIQ8cASMmXc4GTqLyLNz4JGymEiJVcyHVa4vv5/5ApPdjj5mOGJdUoef6w0+D6Jmy
 BZzb9C1Yzm8r/h5f9/ls1+fAqUbh/4VPGvmJ3MrdU88Q/pK+g0qtbKSSyPJt1FnUKjfs
 IMEfXeIqI3/ExbSvdgQsKuoaztQL5dzfEsoOo04sNVocubzaQUtzppfDJGZpbSpKd9jk
 Js9CMgyEt68nq3obYIGDy1Saoev9aTw5Ak45Xw1G31WCZ8O2XAWflJSm+BhIukTaKENQ
 TaRGj5z8YBPXcCFAwxmi+xeSpCVxKP1kIIhRtRc/jIEcRP6mOW+NuwgccN84KSVza7xq
 25gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=YYboHLDcVcZSxQxxNasAiN6uh7R7B+aQRXaR9+xnL7o=;
 b=hDd/Llh8a/Hkky120T357uwlE0F3G4IoeBu8Bf6Auvjjx9zfETomu266jriJV78kcS
 lsH5yfxrGllEJg0q86ddcQn07OjKMxwOLYTePjWoidSCqi6t/nGeYtBHR1hQmcC9RTuT
 FHBdoCuAK2oTvQWfA6YiMVgh2qg92B/jTmEg3Zmkj49kn+EbHz9NSEZNC9f+JwV7qpwC
 ddGVZg7N28f30TE4MHqqozoI23HKn/8Jn7ZV6PaJ88q50YKGiG6n4PVrhFqZs+On8ti6
 V7D79ZX9cHip/ll0cl8/ldxghD9pNGPHsJXY39HzmXvHIw0NIvrCGz+j7vVgK+8ON3bg
 enVw==
X-Gm-Message-State: AOAM532liQGcZ5Bmqx4EiqXmJ/BMbScQc1eXJf2JV1bfvHoH4n35uRMv
 2QTGX4A+raOGPnd3HDiCj4S8iEl4Rss=
X-Google-Smtp-Source: ABdhPJys80ie/i8chxMdOulVOL15M13TJFO6xo0WIX/05Ndlm8kLAom2K55W7EPLTTm0F2RMeIPsHw==
X-Received: by 2002:a37:8143:: with SMTP id c64mr7079669qkd.485.1605735952996; 
 Wed, 18 Nov 2020 13:45:52 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id
 e10sm18255950qkn.126.2020.11.18.13.45.52
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Nov 2020 13:45:52 -0800 (PST)
Message-ID: <5FB59610.5020902@gmail.com>
Date: Wed, 18 Nov 2020 16:45:52 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CA+1FM8pa+r2V98HZver=btdMVxoNCmrm0O4FXftszhruHLaT2w@mail.gmail.com>
In-Reply-To: <CA+1FM8pa+r2V98HZver=btdMVxoNCmrm0O4FXftszhruHLaT2w@mail.gmail.com>
Subject: Re: [USRP-users] Overflows at flowgraph start using gr-uhd
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
Content-Type: multipart/mixed; boundary="===============0630916503288247585=="
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
--===============0630916503288247585==
Content-Type: multipart/alternative;
 boundary="------------000002020801020807050109"

This is a multi-part message in MIME format.
--------------000002020801020807050109
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/18/2020 07:27 AM, Josh via USRP-users wrote:
> I'm seeing a difference in behavior between gr-uhd and plain uhd c++ api:
>
> Setup:
> B210, 2 channels, 5MSPS, master_clock_rate 20MSPS, PPS sync
> Receive only flowgraph
>
> With gr-uhd, there is always a "OOD" when the flowgraph first starts
>
> But, if I replicate the setup in a simple compiled program using the 
> uhd API with all the same settings, this never occurs.
>
> So my question is - is the GR scheduler doing something at the 
> beginning of the flowgraph that delays the work() calls and causes 
> overflows, and are there settings I use to mitigate this?  My problem 
> is that once these overflows occur, I can't trust my timing 
> synchronization on the received samples (or have to do further 
> calculations on the rx_time tags).
>
> Thanks,
> Josh
>
>
> _______________________________________________
>
Try specifying "num_recv_frames=128" in your device arguments.

Also, are you running this on naked hardware or through a VM?



--------------000002020801020807050109
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 11/18/2020 07:27 AM, Josh via
      USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CA+1FM8pa+r2V98HZver=btdMVxoNCmrm0O4FXftszhruHLaT2w@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div>I'm seeing a difference in behavior between gr-uhd and
          plain uhd c++ api:</div>
        <div><br>
        </div>
        <div>Setup:</div>
        <div>B210, 2 channels, 5MSPS, master_clock_rate 20MSPS, PPS sync<br>
        </div>
        <div>Receive only flowgraph</div>
        <div><br>
        </div>
        <div>With gr-uhd, there is always a "OOD" when the flowgraph
          first starts</div>
        <div><br>
        </div>
        <div>But, if I replicate the setup in a simple compiled program
          using the uhd API with all the same settings, this never
          occurs.</div>
        <div><br>
        </div>
        <div>So my question is - is the GR scheduler doing something at
          the beginning of the flowgraph that delays the work() calls
          and causes overflows, and are there settings I use to mitigate
          this?  My problem is that once these overflows occur, I can't
          trust my timing synchronization on the received samples (or
          have to do further calculations on the rx_time tags).</div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Josh<br>
        </div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________

</pre>
    </blockquote>
    Try specifying "num_recv_frames=128" in your device arguments.<br>
    <br>
    Also, are you running this on naked hardware or through a VM? <br>
    <br>
    <br>
  </body>
</html>

--------------000002020801020807050109--


--===============0630916503288247585==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0630916503288247585==--


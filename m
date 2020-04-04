Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B5F19E6DD
	for <lists+usrp-users@lfdr.de>; Sat,  4 Apr 2020 19:50:45 +0200 (CEST)
Received: from [::1] (port=40110 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jKmwO-0002Ip-2D; Sat, 04 Apr 2020 13:50:44 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:42212)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jKmwK-0002Bn-0K
 for usrp-users@lists.ettus.com; Sat, 04 Apr 2020 13:50:40 -0400
Received: by mail-qk1-f174.google.com with SMTP id 139so11673607qkd.9
 for <usrp-users@lists.ettus.com>; Sat, 04 Apr 2020 10:50:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=oT//D0AyZjkCd9O9yCdj3GOK77Jj/jV+Y41/GA3XpP0=;
 b=JynVPGMUezZVIF+LsWnxjaUpxVF0t2KZmptsWWmmvEtrsAReRtA1gVEPKhyNYDp9Kh
 XNYwTa27X5vTXwKAXrsYzW/8WcoQMlwO+2GtvLAiKY0ItDNYTKRdwFc+IxSCsKw/8e8C
 Xu/rjRktw4uGdoSFPuDJDzHKfDA8ggY1HQ/UDRLqtH4JMFg+Qn2S8XEfZA4FTWP/a+77
 uuG2MVHxx8ZV+mTfMDO3XEePUZsGklVPV4kdoZqfGclA6FZFB2ZPYYreapt8DJ3tGXPx
 ovH1JuBylmFGFgYF8f19ckr9qgtjGyz99W6f0bVgUdQ3JPjC0rATuwhmmvmiBv+GGVHO
 Hl0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=oT//D0AyZjkCd9O9yCdj3GOK77Jj/jV+Y41/GA3XpP0=;
 b=SSOFCW5hmrqcoD2SutELvNTq3AFqHVkqpFIpmxHwfIaBE9UFESwPZWybVZCCqZ3OhB
 2JXu+urCHCNfMVtJJTFHpI8yzuNatnaWXXosUantkWPzppdpehEnA10OSXXq1TlHBdKM
 Pm7IPU8z0P1+6hBQiXXpMDNZRRioqGyeCzGfctwXEStF0wVRu4R9T//H7WAz3PHuiSH8
 r0zOR9j2F4E43RLykMjgj0WeDV5mfCqAQ0EuFWNi86kP/MHMS2Ce7bAE3MiV+up6fx+i
 L625El2iysdRnGvYK3qe1eWC+dsuDNw62HgZCwM8b8FOb70wOVk6u3Xhby0cbej7nv24
 UDww==
X-Gm-Message-State: AGi0PubDM2i88MZykykjdNILC3D/svoPLC6CBUrQey6tdCmnz0QXkx/h
 aYUj3rkvdEDnSb3N+4ZloUqa1uyo
X-Google-Smtp-Source: APiQypIoejFDbdndT+N+6NaJ6bG9hM1CUf0e9db/4X2II1RbODfi49ofZqiiLw+xpLIt4Nx8bdqSAA==
X-Received: by 2002:a37:6244:: with SMTP id w65mr14791334qkb.350.1586022599310; 
 Sat, 04 Apr 2020 10:49:59 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-12-204.dsl.bell.ca.
 [174.95.12.204])
 by smtp.googlemail.com with ESMTPSA id c12sm10381059qtb.49.2020.04.04.10.49.58
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 Apr 2020 10:49:58 -0700 (PDT)
Message-ID: <5E88C8C6.7070201@gmail.com>
Date: Sat, 04 Apr 2020 13:49:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAPRRyxu2JFofL0pDvrm46YEv-FMgdhf=sG7=nUgo1E-JdArhWQ@mail.gmail.com>
In-Reply-To: <CAPRRyxu2JFofL0pDvrm46YEv-FMgdhf=sG7=nUgo1E-JdArhWQ@mail.gmail.com>
Subject: Re: [USRP-users] Recieve on two channels simultaneously USRP E310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Content-Type: multipart/mixed; boundary="===============3030054681498406510=="
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
--===============3030054681498406510==
Content-Type: multipart/alternative;
 boundary="------------090003000108050705080507"

This is a multi-part message in MIME format.
--------------090003000108050705080507
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/04/2020 01:39 PM, Ivan Zahartchuk via USRP-users wrote:
>
> Hello. Can I create a binary file with two fft blocks and two window 
> blocks for usrp E310 for rfnoc? And if so, how ? The idea is to 
> receive a signal from two channels simultaneously.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
There may not be enough room for two FFT blocks in the E310 FPGA. But 
regardless, you'd need Xylinx Vivado tooling to generate up an RFNOC
   FPGA image that has the appropriate blocks generated into it. There 
is no "dynamic" generation of blocks in the FPGA.  The only "dynamic"
   part is the connection of those blocks across the cross-bar construct 
that RFNoC uses.

This document may be helpful:

https://kb.ettus.com/Getting_Started_with_RFNoC_Development

--------------090003000108050705080507
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 04/04/2020 01:39 PM, Ivan Zahartchuk
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAPRRyxu2JFofL0pDvrm46YEv-FMgdhf=sG7=nUgo1E-JdArhWQ@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br class="gmail-Apple-interchange-newline">
        <span
style="font-family:arial,sans-serif;font-size:28px;white-space:pre-wrap;background-color:rgb(248,249,250)">Hello.
          Can I create a binary file with two fft blocks and two window
          blocks for usrp E310 for rfnoc? And if so, how ? The idea is
          to receive a signal from two channels simultaneously.</span><br>
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
    There may not be enough room for two FFT blocks in the E310 FPGA. 
    But regardless, you'd need Xylinx Vivado tooling to generate up an
    RFNOC<br>
      FPGA image that has the appropriate blocks generated into it.
    There is no "dynamic" generation of blocks in the FPGA.  The only
    "dynamic"<br>
      part is the connection of those blocks across the cross-bar
    construct that RFNoC uses.<br>
    <br>
    This document may be helpful:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://kb.ettus.com/Getting_Started_with_RFNoC_Development">https://kb.ettus.com/Getting_Started_with_RFNoC_Development</a><br>
  </body>
</html>

--------------090003000108050705080507--


--===============3030054681498406510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3030054681498406510==--


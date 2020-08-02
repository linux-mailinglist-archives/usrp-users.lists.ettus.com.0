Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B643E2357A0
	for <lists+usrp-users@lfdr.de>; Sun,  2 Aug 2020 16:33:43 +0200 (CEST)
Received: from [::1] (port=36096 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k2F3U-0005ef-Dy; Sun, 02 Aug 2020 10:33:40 -0400
Received: from mail-qk1-f171.google.com ([209.85.222.171]:41480)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k2F3R-0005aB-0h
 for usrp-users@lists.ettus.com; Sun, 02 Aug 2020 10:33:37 -0400
Received: by mail-qk1-f171.google.com with SMTP id l64so26270374qkb.8
 for <usrp-users@lists.ettus.com>; Sun, 02 Aug 2020 07:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=3huScSkEIqYpjrL7dfc8NnDfqgw8/7uGcQnRtUr0TqE=;
 b=q+F/A7zU0qY2Jbd+LD9sxstLSP0sjguCm9XaMFaYhOc7P6180ciTSbN3IWOQZe5U/7
 8lVznT6ewmzsv+Y5J2GN1T0Wg/eYgqdShtx5XmtQExn0denKMkoX7i8T4ssxDrgj0yfQ
 r3nJQGyFDnVkvoG+XVAHpGCyNN93GwZVXo6ZsTZVln77S0shR7283VEOjM9Ucy9vrMDP
 6/LmX0+C33C1aquvf+6cwqYQyhb9AQxYGzXGh9JBijy02B3kkWBGWHKYXCDEpyUs9RBb
 TcQ4RmYxKkQ5x+QW3dUMkhGRTpr1/pwUed2W4jtPNl4YZ9t+D3hC6trvGkYWgHjvYwkz
 /V8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=3huScSkEIqYpjrL7dfc8NnDfqgw8/7uGcQnRtUr0TqE=;
 b=SOgqsZPSSN9Ph5atnK9XJ7kkhX5wjswfnM4+eu/ybqQc9yX53YKU8yMM+gQMe+i1D2
 tx1q2em14V1P/AEUB4S0WqDN+LJOE+q7ww24CJBxdtgrkWUhBQmaQtMVy3Huhyf1U1Cp
 hhY4SSYnZ74xAwsG7VjxdFf1O4NsURrXgcHpU4Oq1rsVsnkjHxgYpPbyL34RP6QHrwO8
 9OFsWtNo23dUISJOATNW1+hxHnA3TTPEuXWjGZUbvQ4onM/BlWdfYCeqyjnu6SWlDnRQ
 gNarv8Eon8/xIZ83TJaHePTQXP2SSA1sDo3k8AQlmF5mfGq5qraoldnlk4AF3hWx+Ash
 nEzw==
X-Gm-Message-State: AOAM533sDplIs0l5qja8G3RlAMarCcjS4ZYPSfKShTy3DN9avYFY9P1U
 rEZX4X/JDS3eKQNK5xOGAyessNfa+78=
X-Google-Smtp-Source: ABdhPJz8GpnhE3e+kwLdnaMvK09gwmEL/fXJ5XnSlXt2N7YHeKfpuGCMclyUZkzcVP0Odtcz2u8hTA==
X-Received: by 2002:a05:620a:21c1:: with SMTP id
 h1mr12296102qka.178.1596378776135; 
 Sun, 02 Aug 2020 07:32:56 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id p4sm16230043qkj.135.2020.08.02.07.32.55
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 02 Aug 2020 07:32:55 -0700 (PDT)
Message-ID: <5F26CE96.5000505@gmail.com>
Date: Sun, 02 Aug 2020 10:32:54 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <VI1PR09MB420653970012266F2BFABB4FE34C0@VI1PR09MB4206.eurprd09.prod.outlook.com>
In-Reply-To: <VI1PR09MB420653970012266F2BFABB4FE34C0@VI1PR09MB4206.eurprd09.prod.outlook.com>
Subject: Re: [USRP-users] Working on USRP N310 with host computer
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
Content-Type: multipart/mixed; boundary="===============5496050015844006085=="
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
--===============5496050015844006085==
Content-Type: multipart/alternative;
 boundary="------------080804010001070909070100"

This is a multi-part message in MIME format.
--------------080804010001070909070100
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/02/2020 06:03 AM, Anthony Johnson via USRP-users wrote:
> Hey, how are you ?
> I'm trying to work on the USRP N310 with host computer (exactly like 
> the X310) and I can't figure out how to do it..
> I have connected N310 through port SFP0 to my computer and I can ping 
> the device.
> But when I'm using uhd_find_devices on the host computer, it can't 
> find the device.
> On the E310 I know that there's a bin called "usrp_e3xx_network_mode" 
> that if I understand correctly makes the E310 work with host.
> Is there a similar bin in N310?
> If not, then how can I work on the N310 with a host computer?
>
> Thank you so much!
> Anthony.
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
Anthony:

Have you read this:

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide

What version of UHD are you running on your host computer?



--------------080804010001070909070100
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/02/2020 06:03 AM, Anthony Johnson
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:VI1PR09MB420653970012266F2BFABB4FE34C0@VI1PR09MB4206.eurprd09.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hey, how are you ? </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <span style="color: rgb(0, 0, 0); font-family: Calibri, Arial,
          Helvetica, sans-serif; font-size: 12pt;">I'm trying to work on
          the USRP N310 with host computer (exactly like the X310) and I
          can't figure out how to do it..</span></div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I have connected N310 through port SFP0 to my computer and I can
        ping the device. </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        But when I'm using uhd_find_devices on the host computer, it
        can't find the device.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        On the E310 I know that there's a bin called
        "usrp_e3xx_network_mode" that if I understand correctly makes
        the E310 work with host. </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Is there a similar bin in N310? </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        If not, then how can I work on the N310 with a host computer? </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thank you so much!</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Anthony.</div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    Anthony:<br>
    <br>
    Have you read this:<br>
    <br>
    <a class="moz-txt-link-freetext" href="https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide">https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide</a><br>
    <br>
    What version of UHD are you running on your host computer?<br>
    <br>
    <br>
  </body>
</html>

--------------080804010001070909070100--


--===============5496050015844006085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5496050015844006085==--


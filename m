Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E4ECE23E257
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 21:37:39 +0200 (CEST)
Received: from [::1] (port=54236 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3lhp-0001yM-RJ; Thu, 06 Aug 2020 15:37:37 -0400
Received: from mail-qv1-f54.google.com ([209.85.219.54]:38179)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k3lhm-0001qu-DA
 for USRP-users@lists.ettus.com; Thu, 06 Aug 2020 15:37:34 -0400
Received: by mail-qv1-f54.google.com with SMTP id x7so6735420qvi.5
 for <USRP-users@lists.ettus.com>; Thu, 06 Aug 2020 12:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=uQ7ufiZT334IoXEte/wbgqr98U8gBSkuKSQXYeXJTkA=;
 b=EDpAyAuzp6cJC7aHiezlvIxeqB0sCV5+8HO006qEBEhcPm+SjyxMbITD2q7m/evwDa
 +oUTNLgaU3Mg1Tngna51OlF/Ueuc6kcNYLhX0vdFOTCo/R0cOLH75o2ibx2OEVQSjyoc
 crF6rh6pA++CANrRfWdfGkBnkAVbWbxCf9VIRVeXsQ3Nfe6WpM03hPgq5QgNXLlIwSPi
 59Re3NVmAgldsxvhiSy/dRBAfchUCdSZKR2pa+67MFipIQFEqZuSG8B+QWvFi86grwXr
 1BUZTbosc7EU89cmmuyGJViuH8q1QGm3+2KW+dYisTmjgFpgtYgJnqPcev0DvHFio5tT
 uHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=uQ7ufiZT334IoXEte/wbgqr98U8gBSkuKSQXYeXJTkA=;
 b=g3wF4Wm9Q9PkgqxNIaKpPAwEYSEq40KqXzeNt+4xVhph5hHckuMx/GyzEBAxf0/zyX
 MbNLxdnZA6P2tEJ2XqfwmThxV3Y7Bd7vAkdkYg0nzQY92Uc8AlGPj93jWXJkMYpe+Vyl
 7A9pygYxf5HRpb7pa6+RtpIRCPSZLORqYq2/pFrUokpyrkA33MRrPpUWnoQ2N9b8vSsN
 lep9yqfZd2RSADG/1tMLSt//vB1WW0yBR9hl0PggJhmQ1hx+f/rP75X+d0L/KWQtqq9c
 NzwjLO/ugeSRYHcJsaN3VYXgbLCWyautc89VAwq35F+/+zB7znTvQ0Mbsbfpj1o1EwRF
 AHyg==
X-Gm-Message-State: AOAM532nrKRg9B+4oSFZ/9xdDUY1jpdxGDjY0qzRC1AUsl3sjXistCKJ
 yjjmPBRv8bwLtrX/pUVYs0OifZWcfXw=
X-Google-Smtp-Source: ABdhPJwTUuKLy8oEcs2MHupvnWj3lYRRVfBYn70Mm1fXlelfq3142c062oEaLdtBxRtVGWLcWoohrA==
X-Received: by 2002:a0c:fa85:: with SMTP id o5mr10935167qvn.91.1596742613527; 
 Thu, 06 Aug 2020 12:36:53 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id g49sm5954426qtk.74.2020.08.06.12.36.52
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Aug 2020 12:36:53 -0700 (PDT)
Message-ID: <5F2C5BD4.30009@gmail.com>
Date: Thu, 06 Aug 2020 15:36:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Brian Padalino <bpadalino@gmail.com>, 
 Jerrid Plymale <jerrid.plymale@canyon-us.com>
CC: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
References: <MW3PR19MB42683E64A27B9B0C0A3D0683C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CA9262F8-E745-4A74-934E-557490486CD4@gmail.com>
 <MW3PR19MB42688D343319432B7156AE09C6480@MW3PR19MB4268.namprd19.prod.outlook.com>
 <CAEXYVK5y-7cf9Y1uCpU3CpQ8KKuueu3eq28SvtfErvgXu-+X+Q@mail.gmail.com>
In-Reply-To: <CAEXYVK5y-7cf9Y1uCpU3CpQ8KKuueu3eq28SvtfErvgXu-+X+Q@mail.gmail.com>
Subject: Re: [USRP-users] Signal transmission on a USRP X310
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
Content-Type: multipart/mixed; boundary="===============2490017854982403202=="
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
--===============2490017854982403202==
Content-Type: multipart/alternative;
 boundary="------------080709030904050407050301"

This is a multi-part message in MIME format.
--------------080709030904050407050301
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/06/2020 02:08 PM, Brian Padalino wrote:
> On Thu, Aug 6, 2020 at 2:02 PM Jerrid Plymale via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     It does, and actually it has a strength closer to -70 dBm, I had
>     my markers in the wrong place when I thought the signal was at
>     -100 dBm.
>
>
> If you transmit all 0's with the gain turned all the way down, what 
> strength do you see coming from the radio on the carrier?
>
> Brian
So, the MAX2871 has an "enable RF out" pin, and it's tied to the FPGA.

I suspect that pin is set to "disable" whenever there isn't a TX stream 
associated with it, but I'm pretty sure that UHD doesn't expose an
   explicit control for LO enables.



--------------080709030904050407050301
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/06/2020 02:08 PM, Brian Padalino
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAEXYVK5y-7cf9Y1uCpU3CpQ8KKuueu3eq28SvtfErvgXu-+X+Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">
        <div dir="ltr">On Thu, Aug 6, 2020 at 2:02 PM Jerrid Plymale via
          USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <div class="gmail_quote">
          <blockquote class="gmail_quote" style="margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div lang="EN-US">
              <div class="gmail-m_-5386344111819584029WordSection1">
                <p class="MsoNormal">It does, and actually it has a
                  strength closer to -70 dBm, I had my markers in the
                  wrong place when I thought the signal was at -100 dBm.</p>
              </div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>If you transmit all 0's with the gain turned all the way
            down, what strength do you see coming from the radio on the
            carrier?</div>
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
    </blockquote>
    So, the MAX2871 has an "enable RF out" pin, and it's tied to the
    FPGA.<br>
    <br>
    I suspect that pin is set to "disable" whenever there isn't a TX
    stream associated with it, but I'm pretty sure that UHD doesn't
    expose an<br>
      explicit control for LO enables.<br>
    <br>
    <br>
  </body>
</html>

--------------080709030904050407050301--


--===============2490017854982403202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2490017854982403202==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8302865CE
	for <lists+usrp-users@lfdr.de>; Wed,  7 Oct 2020 19:21:46 +0200 (CEST)
Received: from [::1] (port=40230 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQD8L-0004sN-9k; Wed, 07 Oct 2020 13:21:45 -0400
Received: from mail-qk1-f180.google.com ([209.85.222.180]:35093)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kQD8H-0004jJ-9U
 for usrp-users@lists.ettus.com; Wed, 07 Oct 2020 13:21:41 -0400
Received: by mail-qk1-f180.google.com with SMTP id 140so1978280qko.2
 for <usrp-users@lists.ettus.com>; Wed, 07 Oct 2020 10:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Fbmrjjrczbo7cpRTYY3YO9UAZ3fbOxIU4az7ZBXtUZ0=;
 b=q06F13tRgaH9g38UmUfpfBSO+km1/PJzU/wyZhcp1fxU2Hqcz/jy3IVeHkPPHx+rp3
 V9GD8V3BFqa3rpXoRTMqEu3IZ+WrWM3EdcLBQN+zPbW+Mu8wz905FvbHqn7PYOGi1DSj
 S0gEgjef3qN5m6+3xQHItyZpwcNBzhjlitSY+0czaEWeiTAdZR44ZLDmEmnMBIK/Vfd1
 JSt/yJS/5xB+1A92eXWFFN98FcA4WUT7Z35z/pgHjKxWvsMxEUvKKNpNAaBODIDo35BK
 qSA0wJRUIolPSMs7G0cFPyBgfc6FnRc8Eu3PyZrEk/YSIGpgGd1cMguAG4C8Xhg5AzZM
 XjgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Fbmrjjrczbo7cpRTYY3YO9UAZ3fbOxIU4az7ZBXtUZ0=;
 b=fi3laFiay54zpnviKODvlJ9qtXksogr6hmYECWobiJ+pc9emi5tXYYUwSmcMeGDfeC
 SvsMvWlx0Akw1UFWkJ9imrhU1KiTVE7ohYgg7dpEFWyVKPLzYHtXSS1fILO6fquFAtys
 cETkkpHwWSoLcaGRBQJ0DaGKELUdcBlDPNWbUFqOhMKam1y1cN74CJu9TMPZIc+5ruH6
 hNrhPW6eE3MU4PL9dOvaHM0N7YGo7tjozh2eiHCsdREFoBpeu3bD7eV5Vi0KsyFq8ntc
 5lYEW4WQoK+cZfWgdUuDiUeg8J3mdnoqH/ai+XKmajRZU9itm7qoQf1iY2VgCXyXIl+w
 NTSg==
X-Gm-Message-State: AOAM5333yVXSwpXfh1MKCfVm6whG6jXlIMy4k2TwCFRKVrJjpKNbjhTN
 hZfaIVI4NtzIg6lrazfXRoECqTtXccOtbA==
X-Google-Smtp-Source: ABdhPJyXRDgXf0l4nreDrh1ADi9okJXMsWaq/BVxxNeGwP22WXsu5AI2dkG9TsqNq6gDcilNKGcRkg==
X-Received: by 2002:a05:620a:2057:: with SMTP id
 d23mr3895752qka.487.1602091260560; 
 Wed, 07 Oct 2020 10:21:00 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id 7sm1878262qkc.73.2020.10.07.10.20.58
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Oct 2020 10:20:59 -0700 (PDT)
Message-ID: <5F7DF8FA.707@gmail.com>
Date: Wed, 07 Oct 2020 13:20:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <977DB5BC614A438B9066262CBAEDBC75@PC1>
In-Reply-To: <977DB5BC614A438B9066262CBAEDBC75@PC1>
Subject: Re: [USRP-users] B210 USRP object creation
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
Content-Type: multipart/mixed; boundary="===============4740194659898661783=="
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
--===============4740194659898661783==
Content-Type: multipart/alternative;
 boundary="------------000207020309080102070704"

This is a multi-part message in MIME format.
--------------000207020309080102070704
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/07/2020 10:08 AM, David Taylor (manx.net) via USRP-users wrote:
> Hi.
> I am trying to exercise the GPIO bits on my B210 and to run other UHD 
> member functions in a C++ OOT block.
> Can anyone provide me with a
> suitable make (object) statement for use with this transceiver.
> Many thanks,
> David Taylor
>
You might look at the "gpio" example code that comes with the UHD source.



--------------000207020309080102070704
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/07/2020 10:08 AM, David Taylor
      (manx.net) via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:977DB5BC614A438B9066262CBAEDBC75@PC1"
      type="cite">
      <div dir="ltr">
        <div style="FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR:
          #000000">
          <div>
            <div style="FONT-SIZE: small; TEXT-DECORATION: none;
              FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
              COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline">Hi.</div>
          </div>
          <div>
            <div style="FONT-SIZE: small; TEXT-DECORATION: none;
              FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
              COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline"> </div>
          </div>
          <div>
            <div style="FONT-SIZE: small; TEXT-DECORATION: none;
              FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
              COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline">I am
              trying to exercise the GPIO bits on my B210 and to run
              other UHD member functions in a C++ OOT block.</div>
          </div>
          <div>
            <div style="FONT-SIZE: small; TEXT-DECORATION: none;
              FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
              COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline"> </div>
          </div>
          <div>
            <div style="FONT-SIZE: small; TEXT-DECORATION: none;
              FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
              COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline">Can
              anyone provide me with a </div>
            <div style="FONT-SIZE: small; TEXT-DECORATION: none;
              FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
              COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline">suitable
              make (object) statement for use with this transceiver.</div>
          </div>
          <div>
            <div style="FONT-SIZE: small; TEXT-DECORATION: none;
              FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
              COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline"> </div>
          </div>
          <div>
            <div style="FONT-SIZE: small; TEXT-DECORATION: none;
              FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
              COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline">Many
              thanks,</div>
          </div>
          <div>
            <div style="FONT-SIZE: small; TEXT-DECORATION: none;
              FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
              COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline"> </div>
          </div>
          <div>
            <div style="FONT-SIZE: small; TEXT-DECORATION: none;
              FONT-FAMILY: &quot;Calibri&quot;; FONT-WEIGHT: normal;
              COLOR: #000000; FONT-STYLE: normal; DISPLAY: inline">David
              Taylor</div>
          </div>
          <br>
        </div>
      </div>
    </blockquote>
    You might look at the "gpio" example code that comes with the UHD
    source.<br>
    <br>
    <br>
  </body>
</html>

--------------000207020309080102070704--


--===============4740194659898661783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4740194659898661783==--


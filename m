Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B07BB26DF9A
	for <lists+usrp-users@lfdr.de>; Thu, 17 Sep 2020 17:27:43 +0200 (CEST)
Received: from [::1] (port=33778 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kIvoz-0005F9-LZ; Thu, 17 Sep 2020 11:27:41 -0400
Received: from mail-qk1-f170.google.com ([209.85.222.170]:34765)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kIvov-00053m-PY
 for usrp-users@lists.ettus.com; Thu, 17 Sep 2020 11:27:37 -0400
Received: by mail-qk1-f170.google.com with SMTP id w186so2640166qkd.1
 for <usrp-users@lists.ettus.com>; Thu, 17 Sep 2020 08:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=5rS2T9FIJe+hNPFhork7V5bKlg70e+LKVsq/HJ4gxeU=;
 b=fNR9d/9chcTK6ZMC6DLbv2BOU0D5N7kn+hNoH35TBvB3TL7I3cadp2SO+ZhbUOVavg
 rKYlUafqGU2+vzMOT824LkpStu2v0bErb1VT0Ev0GbSMGput3KOGqnL1JC9yyHnxh8/K
 iVTUQuxuh2dLM0dcX/8BPuwEWn89U4S6KP0/qtefrhFjJMnZShvVho6e9T3VwlYiJpb/
 PVQIWWkIItezI0kGTykVPtFiMdLUoVOxhAYCVfNHLoOlQU6u1t3SZBFEZOyg1ozu99pR
 Jcif5JDp5TREGUDC83YysVxukhiS8iXXSViufjBc/2jaMh7pxfmSx4+FuJwoA8TKcyoc
 u5Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=5rS2T9FIJe+hNPFhork7V5bKlg70e+LKVsq/HJ4gxeU=;
 b=lh3GXsT7xsvrnHNL6AcJOnkur4j9ZtxJ3Yhi55OfkeeIceqvQLyaf1M2/YaDFxsDcp
 ttSnE73oEhTnGFHAibmYyZvTlJly3CCx6y5swHKBH1evfQfa/FN9jX4aRqW+BegXDENa
 FCmSIIxtbXjSAmccLcaaG01WQNN7hq1nSVdjm2gK3oPmUoSwqd9xZEMkuH4at0tdzyNA
 0h9eLO8sh2nj89oM8P9OK6G/9K9TK9LyTm9jhnCUcpQvfN9eXdzse+2iMVFwVft25N2B
 8uN9U7feF36wsMuqx6QGWPS7egrEY/zHTJkGpCkgUwqvSOCzWP9d4fZhOnk2lwJS84Pq
 pf9A==
X-Gm-Message-State: AOAM530zX4pqKzHX2E8AOeWb0VCVFT83/qySTuH2fcrU2Sw4Z5XAO18T
 NMUSpAXVKCKUfarKY/jDqovNwTMMDsWVZA==
X-Google-Smtp-Source: ABdhPJyn/rgeSlTLI6agj/LTteGL8oxB8jjKgHxR4mNCs6NXO9t1mYeAj6qtuvlk8M88qOBJ906fuQ==
X-Received: by 2002:a37:4711:: with SMTP id u17mr26968137qka.54.1600356417082; 
 Thu, 17 Sep 2020 08:26:57 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id k52sm7564qtc.56.2020.09.17.08.26.56
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 17 Sep 2020 08:26:56 -0700 (PDT)
Message-ID: <5F638040.9080705@gmail.com>
Date: Thu, 17 Sep 2020 11:26:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>
In-Reply-To: <HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com>
Subject: Re: [USRP-users] what is the TPM used for N310
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
Content-Type: multipart/mixed; boundary="===============7376051106456841120=="
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
--===============7376051106456841120==
Content-Type: multipart/alternative;
 boundary="------------060807090307070104010208"

This is a multi-part message in MIME format.
--------------060807090307070104010208
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/17/2020 08:41 AM, Thomas james via USRP-users wrote:
> Hi,
> i learned that N310 have the version with or without TPM. i want to 
> know more about it. what is the TPM used for?
>
Nothing as far as I know--it's available to be used for custom applications.


--------------060807090307070104010208
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/17/2020 08:41 AM, Thomas james
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:HK0PR03MB5091FC4CE234C553C0B88B319D3E0@HK0PR03MB5091.apcprd03.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hi,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        i learned that N310 have the version with or without TPM. i want
        to know more about it. what is the TPM used for?<br>
      </div>
      <br>
    </blockquote>
    Nothing as far as I know--it's available to be used for custom
    applications.<br>
    <br>
  </body>
</html>

--------------060807090307070104010208--


--===============7376051106456841120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7376051106456841120==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EA4731FA5D
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 15:12:21 +0100 (CET)
Received: from [::1] (port=54190 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD6W3-0000d1-Dg; Fri, 19 Feb 2021 09:12:19 -0500
Received: from mail-wr1-f54.google.com ([209.85.221.54]:41776)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1lD6Vz-0000Tj-LI
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 09:12:15 -0500
Received: by mail-wr1-f54.google.com with SMTP id a4so6485871wro.8
 for <usrp-users@lists.ettus.com>; Fri, 19 Feb 2021 06:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=z4h+fvD/43sCEIeWGyCInHeuO0SvQPm9IDB62DUQIRs=;
 b=JOQKIrZqmt7trNq1xpv3mdVlQkW+XsalacJbNlercAPEY7JQUzWNUWQ9YPnGjGizap
 14lZo8g4PcFd3UplBWVMjv1YxCzcMrr4sPFKDR3DAZGW+pryL5DFBs2DX45jpBT5qs7X
 gLhe9zIYWJ0E/fX1rbLX1eAXDPpi1geVegIZwpdQIwepEE/4AlQbRc22aKbr1bgbH6za
 S8STAGZxEgWOzHFdRivdCzqKxCsIC1z8ejddjEyZ069sU+M7NQcV+ueXaIabBlgdub45
 f5vCnq+lksRLNiT1ES+j4pDGHcMC4rDooVqiPDIceTofX0G9mS4k4lb8ThWHn/9tmIMz
 mJug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=z4h+fvD/43sCEIeWGyCInHeuO0SvQPm9IDB62DUQIRs=;
 b=keFWX3pxqEQXXxAGq4dVcrC75ymyMUswxqBK5iw5o7nAy8UVrJzi9RYg/KgqfgK8oz
 gnQEcOXRvC26Rpqjigv4+0FWYisC0exvsHD12hWtXUSBMyIZOHyVKZT+WZqcS01a/yKE
 rt9ufCvIsU9wJDNmPreTJspLHdm4Jo1AmQhKjAPUi0D83gfwd8hepGyT9bkTR8KVNXzZ
 SwcnRH+2XTkGNMXVu08yyDCNrW0z0P9dGVSVZkcoEGMxzhDaWiU4f08tiSysGvcHZoZN
 bRcTM7Lf3klvh6XkOmN1vx0O6bpr/J82js/H1ncLQswMD/jpCoiD7zvn+HQk8VoXEp+I
 REaA==
X-Gm-Message-State: AOAM5311Erlt5j5B6MDuyFmVdFAMdWbYX6XjNCSU56PGqPQzDJ7AqRVr
 tB8fVIRjXZMC1XxQ3VeE3YG+1HdgbBSuS2IHLXQ=
X-Google-Smtp-Source: ABdhPJxZ3kpsbpIS9GXnBsto+xul1vx+pPvWzWpN+M2bP3tqs9RsWCHFYbyPjSbtjs8t/de7dD7HZQ==
X-Received: by 2002:a5d:554a:: with SMTP id g10mr9127052wrw.383.1613743894295; 
 Fri, 19 Feb 2021 06:11:34 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id c18sm26013376wmk.0.2021.02.19.06.11.33
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Feb 2021 06:11:33 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <1d1dadb54b24b1d1c27f58b0b1ce4af99128dfdd@webmail>
Message-ID: <d3f10e78-b183-7fbb-06f5-574b5712876c@ettus.com>
Date: Fri, 19 Feb 2021 15:11:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <1d1dadb54b24b1d1c27f58b0b1ce4af99128dfdd@webmail>
Content-Language: en-US
Subject: Re: [USRP-users] gr-ettus Cross-Compile "Target
 'gnuradio::runtime_swig' not found."
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi Dennis,

that's probably not the case here but I've seen similar with installations where older CMake with newer CMake libraries were present (or vice versa). What does `cmake --version` say?
Don't have an E310 SDK at hand to check myself, but when you run `which cmake`, is that the cmake you want to run, or is there a different one that's in /home/labuser/rfnoc/oe/sysroots/x86_64-oesdk-linux/usr/bin ?

Best regards,
Marcus



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

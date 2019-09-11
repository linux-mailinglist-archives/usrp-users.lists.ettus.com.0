Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0BAB01B5
	for <lists+usrp-users@lfdr.de>; Wed, 11 Sep 2019 18:36:53 +0200 (CEST)
Received: from [::1] (port=49372 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i85bw-0001pL-1S; Wed, 11 Sep 2019 12:36:52 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:38776)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1i85bs-0001dE-Gy
 for usrp-users@lists.ettus.com; Wed, 11 Sep 2019 12:36:48 -0400
Received: by mail-oi1-f172.google.com with SMTP id 7so14663009oip.5
 for <usrp-users@lists.ettus.com>; Wed, 11 Sep 2019 09:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=GlqX3iDFFG8RDHUMxM+9WdAC/NvZ7btxiew5DQB1qjo=;
 b=ZtaMxd1p8bLfY0E8HutAo8NBlG/asL5Rlmk4bvCWKRGJm0em1g00u3SoVSLX1XjUhw
 EAZlC5F29XJAkt891BihO/9+js+UP5hF06uOmprXGcKJcbWzQUqwqgXbgX2QbVvksZcU
 CD1TRdqxY3Em9ML2rPPqilHF9a1rNh7zGxFllcWsCaOSH+04F0zwO1BJ0yUK9eGhFjcD
 eahY0nXfFd3YHPLBeHa+rmSyHxHYsPRv1UdXUokwPHHjJfdsaabpYQTAjYIY8Lf1qAJk
 f6CorM29XdA0uUyjf63Z4aW5aW8EUrU8kLYSe3u0n2VILX52BNsKTCJ8sBKNLCfdUL3P
 SX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=GlqX3iDFFG8RDHUMxM+9WdAC/NvZ7btxiew5DQB1qjo=;
 b=lJYr3beczrwa6WPidWaAbaLQRJ9vzd8L4AchCVRam6LVy85XDt100gx8pc3biK758/
 plri8BOO7FOHH4HHsxJvwnotqRRxbp9EBQh7Zro1sGwWU3NMM0MizjMtqgIUC3UaulyP
 iYKDwra5vGR4o46IwGS7cG7B6pvbB+9coKOw5CyF6M3UsS1+tRdzJ3lsg/D16ZNBUeDL
 uPoeLv6Ubd+3J0HmUqSiPinI1UjATUEQ34dEOLCZYlDxtaxiOve9wBPFgUG1PzweKD+L
 fVQAas5t9RJAfNAKy3mn7JxIT0baU2RLtx4AO1e1GlTr/lxvmHpazOSabIl0MOVaneWk
 20tQ==
X-Gm-Message-State: APjAAAU6A3X588ZnrtTRNvSHzozlK5CygCA8N5cLKpDRyMojLzXzbBDi
 knQa62ypO1DyRjL4yHbPs6sIRWWd
X-Google-Smtp-Source: APXvYqwflMG4At/LKv82ImlCPuiX9eX5g8Rlk61FAjPZoYvyhs3ivqSzgnuSt9Xu9VHE8hPrh46xgQ==
X-Received: by 2002:aca:5bd4:: with SMTP id p203mr4677593oib.153.1568219767822; 
 Wed, 11 Sep 2019 09:36:07 -0700 (PDT)
Received: from racer.ni.corp.natinst.com ([130.164.62.197])
 by smtp.gmail.com with ESMTPSA id 59sm8185678otq.9.2019.09.11.09.36.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Sep 2019 09:36:07 -0700 (PDT)
Message-ID: <0047c71d410263624fdb2e46e3e0f1e6d17fc4af.camel@ettus.com>
To: Josh <jbmsdr@gmail.com>, "USRP-users@lists.ettus.com"
 <usrp-users@lists.ettus.com>
Date: Wed, 11 Sep 2019 11:36:06 -0500
In-Reply-To: <CA+1FM8rABFGmjTHf-GrW9w1agB_vMybCLRr_WjDaMjXsbtbg5Q@mail.gmail.com>
References: <CA+1FM8rABFGmjTHf-GrW9w1agB_vMybCLRr_WjDaMjXsbtbg5Q@mail.gmail.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] UHD sink transmit at 100 MSPS
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Reply-To: Marcus =?ISO-8859-1?Q?M=FCller?= <marcus.mueller@ettus.com>
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

Hi Josh,

maybe https://kb.ettus.com/USRP_Host_Performance_Tuning_Tips_and_Tricks
 is of relevance to you?

Best regards,
Marcus

On Wed, 2019-09-11 at 10:50 -0400, Josh via USRP-users wrote:
> Hello,
> 
> I'm looking to transmit a wideband signal from an X310 at 100 MSPS,
> so I'll start by posing the very general question of what tips and
> optimizations do I need to make to be able to do this reliably.
> 
> Here is what I already have set up (this is using a powerful server -
> 60 cores at 3.4GHz)
> GNU Radio 3.7, Ubuntu 16
> UHD 3.14.1.1
>   - have also downgraded to UHD 3.9 and get generally higher
> throughput, less buffer underruns
> MTU/frame size set to 8000
> 
> But no matter what I try - continuous stream, or TSB bursts, there is
> a string of U's when I first start transmitting.  With TSBs, there is
> also a string of Us on every burst I send to the UHD sink (with the
> newer UHD).  I've monkeyed around with parts of gr-uhd and uhd - but
> nothing of consequence.  
> 
> So any tips to get up to 100MSPS transmit would be greatly
> appreciated
> 
> Thanks,
> Josh
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8C01F5EAE
	for <lists+usrp-users@lfdr.de>; Thu, 11 Jun 2020 01:26:53 +0200 (CEST)
Received: from [::1] (port=34650 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jjA7O-0004jq-9p; Wed, 10 Jun 2020 19:26:50 -0400
Received: from mail-qt1-f178.google.com ([209.85.160.178]:40653)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jjA7K-0004eO-8M
 for usrp-users@lists.ettus.com; Wed, 10 Jun 2020 19:26:46 -0400
Received: by mail-qt1-f178.google.com with SMTP id i16so3257451qtr.7
 for <usrp-users@lists.ettus.com>; Wed, 10 Jun 2020 16:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=jPw3LQre7Ew2EeFIlF2Iex17CYHfeJugPW936qmYFEk=;
 b=taR1hpPbfyG8+dZQBxGWdPbsMzHZWslWdc8kIamKoS9Qyb3PPAinQzN2tynXiL/RC/
 zREtaik3An6xEgYo9LYmFymLRh2JlI7vXXnkQIsg0cu+NgtMf1wP9+/Uv3SAurOWcIOQ
 phNw5u5apxTKugwqIRa9qIn58gPBoBVpv6+YjpBk3tRxm8vk31J0fG+BZHWOvFq1s7V7
 O/WasjbCdZzIL2iaHWM7vNxNXpFxegmYnQdigdwOA24oPtLFq4MI7yO0tO/gh1i7TqFu
 XJCj/9huvAf6/X0mTyKReoOaiwhyeflXELowOkXsIoZ71rIZY+Z2okckW8u08Fh0ihRi
 Esrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=jPw3LQre7Ew2EeFIlF2Iex17CYHfeJugPW936qmYFEk=;
 b=LANrVogBCaClZKPD3yomoB0ATyWgG2hYc753e/T4Cl2WP/lH9D6MxmCrMMZFTrKeu7
 pY+PyOaiuDJ0VXMOG84PpWbKJdQRh99gQtPbZDmcZjbghO9Rwl8rRRFa2v8ykx7Tf0IM
 n6dN20nBQxYkXD/Wg/PjLvDYbqbCQ3uNgd0LI5KWbrMvLeSCX7FsmZbQjtP2AKkBNeuo
 /w8f2apC2Y0bfnJlEvgmRD1m1uBva65LChHDak7vlPT5XYQDZQcEU9h7UtoC219AX21T
 3+0mKfLtQ1fxXlEE1uEfKlzJpn0jjkEelXj6ZDLNPCJVCYyXQ5qKrH0bQax9w0Lp2gzR
 XtKw==
X-Gm-Message-State: AOAM533S2CMYyjXU8t/2euIYMaBHUkUQi8PbCspE/h3pFu4zHZIyE1Ur
 5iAGv5s00rpidQrY6DfCd4Nnh1V+KQA=
X-Google-Smtp-Source: ABdhPJw6fy+D1jS4tPUqwWJs6lY/sbHDb7nB/TCCKAgmOLVIfqpGU5VUN/RWttMJDFJZC6tMUyt5Ew==
X-Received: by 2002:aed:3ec4:: with SMTP id o4mr6075391qtf.357.1591831565485; 
 Wed, 10 Jun 2020 16:26:05 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id m53sm1175838qtb.64.2020.06.10.16.26.04
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 10 Jun 2020 16:26:04 -0700 (PDT)
Message-ID: <5EE16C0C.3090001@gmail.com>
Date: Wed, 10 Jun 2020 19:26:04 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <trinity-ba8bb5a5-c5df-431b-8626-79fdb3b336d3-1591770642546@3c-app-gmx-bs66>
 <trinity-1b562fcc-3001-478f-a2ee-e4b4809b2fa6-1591821996530@3c-app-gmx-bap09>
In-Reply-To: <trinity-1b562fcc-3001-478f-a2ee-e4b4809b2fa6-1591821996530@3c-app-gmx-bap09>
Subject: Re: [USRP-users] How to debug timed commands on FPGA side?
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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

On 06/10/2020 04:46 PM, Lukas Haase via USRP-users wrote:
> Just some additional info: I enabled the maximum possible debug on the host (UHD_LOG_CONSOLE_LEVEL=trace and debug_level = debug in .gnuradio/config.conf) and sent both versions to a file.
> Again, the diff is identical!
> (This debug contains the debug messages from gr-uhd but uhd itself does not seem to generate any debug/trace messages for timed commands).
You are free to add trace/debug messages in your local code-base, using 
the existing trace/debug framework within UHD to add more debug/trace
   info to the code base.   It's nearly impossible for the devs of a 
code-base like this to anticipate all the debugging needs of the 
"clients" of
   the API, so the beauty of an open-source codebase like this is that 
trace/debug can be added fairly easily for situations that don't currently
   support the debugging of a specific class of problem.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8AA32000A
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 21:58:14 +0100 (CET)
Received: from [::1] (port=57202 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lDCqo-0005px-Fs; Fri, 19 Feb 2021 15:58:10 -0500
Received: from mail-qk1-f177.google.com ([209.85.222.177]:36642)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1lDCqk-0005mk-PJ
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 15:58:06 -0500
Received: by mail-qk1-f177.google.com with SMTP id v206so6937094qkb.3
 for <usrp-users@lists.ettus.com>; Fri, 19 Feb 2021 12:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=L7+2TfzB8TsUzhUaw5m32QSr/OJordLsYvvapEmRsxA=;
 b=A7nyqgZ74qI9/3NWRs7bUPr/8r0UDBWV4ZVyXAN5lXSkSyb3JK7dzUO9i/Lbout0EA
 gJpE0ZEUmzVSOpYLXKweXCcm/+JpdB/RgCSpvOzXH8ONb6G6JSUn/7YSeKbaXdIuqJNC
 MYShhlMGCYHilsigbq/sI84owQ/XEiM+a6/iA+izrPR40QtlxuBuzQeWj1Z8ys6lN5e2
 gU+XeQ7stXo7hunHBqdi0KIAJAkRmN5BKWp7Fte85UIOzB7y2FOjiLoCJhLD7U6V9RTa
 1zZLN9UkdunvHuGHTGfupwkqAviEBXgBSrTimKF9ME9DWJXrYrw3tnPMRsNAE967TNcq
 4T5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=L7+2TfzB8TsUzhUaw5m32QSr/OJordLsYvvapEmRsxA=;
 b=IkNLTENYxJGrZc1NvgrT9MeM3ShpjOrZnfcuR4++0BOak6UhBNmRBNiZEdnVrPgA/p
 UIKzVjS0oQ1s8SLt4//ZM5UQ424Zd+fI4DFOX4IpEh0HXAk19HlklT1vIKZDHyO3EHqv
 MYvolE9SeHVIt5Nypw9/N3p+lcLYpnDc/jxeNEqGxR6n49pKM40IGkpKKElKuwx2MI+y
 RIPiL1/tCZt4r1nx1GFbi0mxowxNWcMaomn+fWEPcTT9e5aU6mSzg+ZSMbSGrKX6b49d
 p619sA1yXSkNgtTCpPrtYDR9jKEZD3pJ95G/aPKu2Jnm4vY1vWV5DgcfHGQRTRotRPjO
 lGmg==
X-Gm-Message-State: AOAM533YKQjy9jpIqnPXPNCyM2sJgIPtLnG7N4ibkRb2Rbj0kMXCtYfl
 bDTVSeUiOCfvT7VSpcXnJ8My8NOV8fM=
X-Google-Smtp-Source: ABdhPJyz5cBxJlp9IIrObes5qHaRtPsKaOvLhBzZb1IcvxXq1VJlhYrSyp63udjZQetVYyBx9UT17g==
X-Received: by 2002:a05:620a:8dc:: with SMTP id
 z28mr11452789qkz.404.1613768245979; 
 Fri, 19 Feb 2021 12:57:25 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id b137sm7343273qkg.51.2021.02.19.12.57.25
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 19 Feb 2021 12:57:25 -0800 (PST)
Message-ID: <60302634.1080503@gmail.com>
Date: Fri, 19 Feb 2021 15:57:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CA+EePfQ=qcn=P7hT9+dze2oEj0Ya08mKRP-tJW6CteNcrHUAkg@mail.gmail.com>
In-Reply-To: <CA+EePfQ=qcn=P7hT9+dze2oEj0Ya08mKRP-tJW6CteNcrHUAkg@mail.gmail.com>
Subject: Re: [USRP-users] Problem with tx_waveform reference lock
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

On 02/19/2021 12:31 PM, Guillermo Gancio via USRP-users wrote:
> Dear all,
>
> I'm using a B205 as a CW signal generator with the example
> tx_waveform, in general it works ok, but if I try to use a 10MHz
> external reference (option --ref external) I got the error, same issue
> if I replace the 10MHz with a PPS, (--pps external), power levels are
> ok.
>
>
> Checking TX: Ref: unlocked ...
> Error: AssertionError: ref_locked.to_bool()
>    in int _main(int, char**)
>    at /home/ggancio/uhd/host/examples/tx_waveforms.cpp:285
>
> This is with a fresh install
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
> UHD_4.0.0.0-93-g3b9ced8f
>
> Any idea on this? Thank you very much!
>
> Cheers.
>
>
You should probably check the quality of your 10MHz signal going into 
the B210. I've used all kinds of external 10MHz references for B210
   and it has never complained.   10MHz OCXO with a TTL buffer. Rubidium 
clock with a TTL buffer.    Octoclock-G.  Never had a problem.

Check what your 10MHz signal looks like into a 50Ohm termination on a 
good quality oscilloscope.  Does it look reasonably pure, or are there
   unwanted ringing artifacts?

If you're driving the reference input "too hard", you may be creating 
unwanted spurs that confuse the reference PLL.  Make sure the level
   is not too "loud".



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

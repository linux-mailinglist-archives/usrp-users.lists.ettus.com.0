Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F164328E696
	for <lists+usrp-users@lfdr.de>; Wed, 14 Oct 2020 20:42:04 +0200 (CEST)
Received: from [::1] (port=60626 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kSliq-0002bY-Kl; Wed, 14 Oct 2020 14:42:00 -0400
Received: from mail-qk1-f182.google.com ([209.85.222.182]:37938)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kSlin-0002Vd-Ab
 for usrp-users@lists.ettus.com; Wed, 14 Oct 2020 14:41:57 -0400
Received: by mail-qk1-f182.google.com with SMTP id f21so335873qko.5
 for <usrp-users@lists.ettus.com>; Wed, 14 Oct 2020 11:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=lGgZjqW8gbhZB7n+ThVXerhaIoHX5Y63C/RCLEceI8Y=;
 b=iAWN/z7niFjfsiInNWN4VQksqfVE+2WjfzFCnzd5gcUAV5fuRZhk8L3geH949d16JW
 315KFJlq+eTlaH6+ITaPO+6PJbFclA4yslmxNbpTZUlqOCoEaVbCMoAWfJNQgokyYKFy
 Biyqn1ziZDFhD3HtobkmJf77ocpOBSLRduSPQFGWbdPFGJGBEKnYKwIZEl9O4I8EQFFS
 evH/sBZZc6E2Iud61oKBifrxDUCxtcjtYRrLrRW/jx69Bax8mXKRU3fRsMjkxOGbZ5w7
 4dSVKtYzXwAGxumfFsSaHWmsdgBQuQ92z5rEV8xJvNe2xRccrZFKBFRlBVA/sO5wYJwf
 X0RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=lGgZjqW8gbhZB7n+ThVXerhaIoHX5Y63C/RCLEceI8Y=;
 b=b1M6KybOpUCxOlXAJnmvo0EgjZRs7UcKN52FESxuA1o1z1z2WvY41LRBDmU1uyOJYC
 dARi5olYajA1n0YrUponJ9NqbC8Qr7Maq1DhB4ZlFTNIQmHcDswBL390gI9xVlI0oTqn
 mH3pTvBCzrapQK+uhWFbUOCssl/yidA128qElkgRuxlCwlTzvQDx1f8lej+JriWNhzHq
 QYe1EjtBe8I/0z3Sag1GupUjQNXWuDS4HZQ3LQDORrQ7zVTSvxp2oCBW5aE/KoQD4HIR
 1C7zfu2ci5R28qUyIr5YdlFlZurOgFT5TTR1u7Rx+ayJSrFeg2R6JKZfaf/yud/wYlf6
 XETA==
X-Gm-Message-State: AOAM530zaax4eJXtI8ft8z8BDXtPSHPmWJj1jpMALWFPBZzufEQZ5vAu
 OjQbaYgyUfCFzff8m+7wJnN5gqiADTf3Z/m6
X-Google-Smtp-Source: ABdhPJzIJXW4kkJGr2JbOWM7uBHQke6Y+lcxF2KTDUqd9hARIChXFDAPzhw/Out0Ui6QQxsk44Wgzg==
X-Received: by 2002:a37:448c:: with SMTP id r134mr381807qka.357.1602700876426; 
 Wed, 14 Oct 2020 11:41:16 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-07-174-93-0-246.dsl.bell.ca. [174.93.0.246])
 by smtp.googlemail.com with ESMTPSA id p187sm201191qkd.129.2020.10.14.11.41.15
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Oct 2020 11:41:16 -0700 (PDT)
Message-ID: <5F87464B.4010002@gmail.com>
Date: Wed, 14 Oct 2020 14:41:15 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <d37f331e-e5a0-6d4b-160a-b98c6cfbacdb@3db-labs.com>
In-Reply-To: <d37f331e-e5a0-6d4b-160a-b98c6cfbacdb@3db-labs.com>
Subject: Re: [USRP-users] N320 inverted spectrum when tuned below 450 MHz
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

On 10/14/2020 01:28 PM, Jason Roehm via USRP-users wrote:
> I have an N320 that I'm trying out for the first time. I'm using UHD 
> 4.0.0, and I loaded the corresponding root filesystem data for that 
> release to the N320. I find that when the receiver is tuned to 
> frequencies below 450 MHz, the spectrum is inverted. When you tune to 
> 450 MHz or above, the spectrum is upright as expected. See the 
> attached screenshots for example spectral plots.
>
> There are several ATSC signals visible in the spectrum. I simply used 
> an indoor antenna, so there is a lot of multipath on the signals 
> causing their spectra to be very non-flat, but the telltale sign of 
> spectral inversion here is where the pilot tone is appearing on each 
> one. In the first plot, tuned to 440 MHz, they appear on the right of 
> each signal; this is not where they should be. When you tune to 450 
> MHz, the location of the signals flip to the right half of the plot, 
> and the pilot tone is on the left, where they belong.
>
> Is this a known issue?
>
> Thank you.
>
> Jason
I'm discussing this with R&D right now.  It's *conceivable*, because 
there's an extra mixer stage in the below-450-mhz pathway, and that
   mixer stage uses "high side" LO injection, which would produce an 
inverted spectrum, but the FPGA would "know" this and invert it back...



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

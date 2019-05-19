Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 291F222857
	for <lists+usrp-users@lfdr.de>; Sun, 19 May 2019 20:35:51 +0200 (CEST)
Received: from [::1] (port=37060 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hSQex-0000Q9-3h; Sun, 19 May 2019 14:35:47 -0400
Received: from mail-wm1-f47.google.com ([209.85.128.47]:53633)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <marcus.mueller@ettus.com>)
 id 1hSQeP-0000L6-GC
 for USRP-users@lists.ettus.com; Sun, 19 May 2019 14:35:43 -0400
Received: by mail-wm1-f47.google.com with SMTP id 198so11069435wme.3
 for <USRP-users@lists.ettus.com>; Sun, 19 May 2019 11:34:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=/xzDdt5um7REfIjzqLWfdDLwyyC9OwCTVWKS2pB2FRg=;
 b=xzLeO1/dsMhmOVfPxgMyQrNi12Z69vgGvecgySqXOmB7Koq0nA4m9wGYD3jQq8oT2c
 5CWz3n+GEibHBNufjhCIXFDay/wmttHBUSCBRSROohxjaSBP7frxyiNuSLUra0ESTwTQ
 bAEyete/a753U5sfxZCCe8Nq5avBR080uhNOktWek4ETWw3KouQ1VwoR8kliYHXyiIst
 b4F5jPAImwon41HwDIjEgQ5hJy2cOtAj67VCr0EU2aq9yK0kNt1ANltz6+HcIzNWOu3a
 UQCshaCSEA2VpEiWo/izwswsnTHihY4oxzNyTlkZl8SbYYptLCSpn+MAb+6djyA5OyWR
 wK6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=/xzDdt5um7REfIjzqLWfdDLwyyC9OwCTVWKS2pB2FRg=;
 b=HkLQiAB4VDoWXSifSumswompS/HTLQi5guiHSAp2u7eQSQEBdZ6ZCI0O1euGA1q3nu
 GHTe94lhAQ9kaP8ayh9kWOLDw7F6hjMdkHZdlZ/qY497EzcMfzPRMOreoH94jeKKpsMm
 LkdMTTuaw9ah9MUaNrMhSg3/kONBZCJePTFfiiO8wPLRBTk9FL6DXu3f3qDNCRS2Ir5H
 8Bp3V+7Pb1GbcEX8jJLCzwtPFbwUIqmM38V5kgy1konIJaNsltzW8BnR5gENO71FYLi4
 tWbWY04O91VO2OAuoVRQ7gU1kv0vSq2pGuiN83AqwRnG6bxfpkYbxY1HeIS/yj2lFwkI
 9dqg==
X-Gm-Message-State: APjAAAVEU6dVWauD5opKCwB3B/Zx+XlFLt+rUf0xXUBdb41G4w7iaSUA
 2Xfel+G44jqk6gJrcgmRxiDVib4s
X-Google-Smtp-Source: APXvYqwyahwEby+nLSn3Y0tE4gPSqCj0wYG8c9NSUh5ihXub9PREwoh1XZXnoqsaznqv+5yOMQeCWw==
X-Received: by 2002:a1c:98cf:: with SMTP id a198mr9604958wme.51.1558290872424; 
 Sun, 19 May 2019 11:34:32 -0700 (PDT)
Received: from workhorse.lan (ip-37-201-4-220.hsi13.unitymediagroup.de.
 [37.201.4.220])
 by smtp.googlemail.com with ESMTPSA id 88sm35667826wrc.33.2019.05.19.11.34.30
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 19 May 2019 11:34:31 -0700 (PDT)
Message-ID: <b1c1fd3ce159c46e19c09f914a1312315e5171e0.camel@ettus.com>
To: MASDR GS <masdrgs@gmail.com>, USRP-users@lists.ettus.com
Date: Sun, 19 May 2019 20:34:29 +0200
In-Reply-To: <CAH2gDtmquSDVaR3yyZWW8Ri-KmXnxrREL6oPEnDWKejkiDGN9w@mail.gmail.com>
References: <CAH2gDtmquSDVaR3yyZWW8Ri-KmXnxrREL6oPEnDWKejkiDGN9w@mail.gmail.com>
User-Agent: Evolution 3.30.4 (3.30.4-1.fc29) 
Mime-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Running network mode on E310 and N300
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

Hi!

Network mode on E310 was highly undesirable (reliable rates below
2MS/s) and not compatible with RFNoC, and hence has been disabled in
recent versions of UHD. I've always considered Network Mode on the E310
to be a testing tool, not something you'd want to do for streaming, to
be completely honest!

The N300's network interfacing is fundamentally different and optimized
for network streaming. The typical use case for the N300 would use one
of the (up to 10Gb/s) SFP+ ports for network sample streaming, and the
1Gb/s RJ45 ethernet port to "talk" to the ARM host inside, for
control. 
Versions of UHD supporting the N300 start at 3.12.0.0 (but only for
hardware revisions up to motherboard revision G; you'll need 3.13.0.2
for that); starting with 3.13.0.0, there is no network mode on the
E310.
I'll be honest and say: while this sounds like you could be using
3.12.0.0 to run your E310 in network mode and still use your N300
(given it's not rev G or later), that would be a suboptimal solution
considering the N3xx improvements that were introduced with 3.13. and
3.14.0.0.

So, maybe you could elaborate on the application you're having for the
E310 network mode in combination with N300? There might be an easy way
around the obstacle you're encountering, but I don't really know what
you're planning to do from here.

Best regards,
Marcus

On Wed, 2019-05-15 at 12:53 -1000, MASDR GS via USRP-users wrote:
> Would it be possible to run network mode on both E310 and N300 using
> the latest UHD driver v3.14.0?
> 
> The N300 requires v3.12.0 or greater to run host mode and I currently
> have release-4 with a UHD version v3.9.2 on the E310. But the
> condition to run network mode is that the UHD drivers of radio and
> host machine must match. I couldn't find any information on how to
> update the E310 UHD drivers directly, but I have tried creating a SDK
> version using release-4 building UHD v3.14.0 but wasn't successful
> running network mode with E310. Any suggestions or help would be
> really appreciated.
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

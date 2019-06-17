Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E9814923D
	for <lists+usrp-users@lfdr.de>; Mon, 17 Jun 2019 23:18:00 +0200 (CEST)
Received: from [::1] (port=35890 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hcz0p-00054F-5g; Mon, 17 Jun 2019 17:17:59 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:41083)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hcz0l-0004wc-SR
 for usrp-users@lists.ettus.com; Mon, 17 Jun 2019 17:17:55 -0400
Received: by mail-qt1-f175.google.com with SMTP id d17so7690167qtj.8
 for <usrp-users@lists.ettus.com>; Mon, 17 Jun 2019 14:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=7RgLiXwSW3Lm+sNEOQ+P45N0AtWPEP2W4QUYwSMdNHM=;
 b=a1g7TkdxmmhsRLExveOsVIf+0371GrN3Tg3Z9T9iEQkNU8kXF1JBLN5UQhB4N/uZ3l
 M1rYVpVymCU8c/UqWk56JgQDXzYzmwShx1FmYmQKCs9xKUE4qahUpvN7vpdXcnCnGuuK
 XRkoTpzZOaNJ4rXVJpX5FI9msTNlS4kvgy15V2BxQ3fpwfhGLWYP5apxcVSoo9slgFeJ
 JYHUYInk2UPSsXtQJj5ELfggkVCgngXQWwGE7hMvBCYQfL/3Jz1mxjibXL5h3nWdHprs
 o4eJI3sTng1/yRb3Vp37CQn0zbEoV//fezy6xDzx7EUNGXaIUdjEJOH8mzzVY2tqszSj
 T7zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=7RgLiXwSW3Lm+sNEOQ+P45N0AtWPEP2W4QUYwSMdNHM=;
 b=uOHZW2aiLzeAAWrfevBzxTzY15i82jggHipqw926GVFZ6m4gFWCKPSU7l5HK+M+i0h
 X7Uzm+t52Gb++xW72hPonPIhKTDZ4fQuZd/zuO16y7o1KmBodikMFlDnXsyqKFeIpYTl
 Pv1R0fh7zW16WYJl7k0l+CuAIyLUeTzQEGkBTkDtg0WvKWgvoOjreuEeu6OIP0zVXPoX
 2XNfGsh30t0Q/A5mbRXPb3uKf4H+RAJmSgg/JAr+rcfejxakNfz9VUshCeH/MSsoIgmw
 uHs1gLD1CTDR0WIQcVM/9zaU/rrZyjtDgNr7k5cn54hspRx1oNpcAh1/8pDfNbnAYXfV
 aRYQ==
X-Gm-Message-State: APjAAAWEKla8DrYpG2Wm5H9DCZTgcNWZqiZ2MDDr75u4Bi+MHLHxp7hR
 2poL3sGETzRrtSqUdWnggtGr7YSn
X-Google-Smtp-Source: APXvYqxS7lVSgwVodDJ+WgCGtQRbMvKxi6BYvxGIHj4uOY8At0zZESQtVWSkym6NbnOaoDq0w3tb5w==
X-Received: by 2002:ac8:2535:: with SMTP id 50mr57428051qtm.373.1560806235300; 
 Mon, 17 Jun 2019 14:17:15 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id i35sm1252947qtc.9.2019.06.17.14.17.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 14:17:14 -0700 (PDT)
Message-ID: <5D080359.8070609@gmail.com>
Date: Mon, 17 Jun 2019 17:17:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Donnie C <dbc23910@gmail.com>
References: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
 <5D07FF68.9080804@gmail.com>
 <CAO_1D1W9h1hg_182mQ5oDZbaVqHNgFnu9gjPnMZ08ZLd0eSNgA@mail.gmail.com>
In-Reply-To: <CAO_1D1W9h1hg_182mQ5oDZbaVqHNgFnu9gjPnMZ08ZLd0eSNgA@mail.gmail.com>
Subject: Re: [USRP-users] E310 Startup/Boot not working
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
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

On 06/17/2019 05:09 PM, Donnie C wrote:
> Im pretty sure the speed grade matches so it must be an incorrect sd 
> card burn, but as far as I can tell I followed the ettus tutorial for 
> sd image burning, is there any extra steps involved they don't go over?
Bad card?  Bad card burner?  Pulled the card before the I/O had been 
fully flushed out to it?  Downloaded the image in text mode?  Got the
   device name wrong when burning, and now you have a large file under 
/dev, instead of written out to the actual card?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

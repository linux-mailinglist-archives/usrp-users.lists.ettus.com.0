Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3738613A6A
	for <lists+usrp-users@lfdr.de>; Sat,  4 May 2019 15:44:44 +0200 (CEST)
Received: from [::1] (port=46944 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hMuxw-0007Bo-Vc; Sat, 04 May 2019 09:44:36 -0400
Received: from mail-wr1-f49.google.com ([209.85.221.49]:38112)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <marcus.mueller@ettus.com>)
 id 1hMuxO-00075a-QD
 for usrp-users@lists.ettus.com; Sat, 04 May 2019 09:44:32 -0400
Received: by mail-wr1-f49.google.com with SMTP id k16so11313726wrn.5
 for <usrp-users@lists.ettus.com>; Sat, 04 May 2019 06:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:user-agent
 :mime-version:content-transfer-encoding;
 bh=mCUpS0rk8cByL5YAWdcrdSiu6yfk9Cj4CjPPgmX+4GI=;
 b=snnf3/C4bxCHm27QPphHYjeZY25y68+wmy5G7nsR0gu2YqcYKU6CU2aAYQtyllIalV
 iYKOdyFGZQ5T/z/phDX7FtzGJBiBp0b4kS3a8mkPxu3+hK2if9wS1P0G07rqnW5n7e0B
 aqeGMmLXPfuHlMJOIwGtw5W4HNhL4/sVSgR85h+De3Bj9MkeBgMkG6yu/kxiQFzt0Vta
 Y/dXJcSwC6/zm97ZsbFq+kGPxLd8+iCgWhGAZT0mRNu0OD7Ow7PIn/sls6uezKZ2xIn5
 k1NATtZlYmMiJezByZukPlmLH8QgWD61Axa1FgjI+pjrX1zHHyZ4TvMTw0T3pupiN8yC
 7XmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=mCUpS0rk8cByL5YAWdcrdSiu6yfk9Cj4CjPPgmX+4GI=;
 b=uJ80+EIWiwK90k8XH8kQfbGxWLIaze/NdYFMiucZaENgo63+bX3ZGxrWFt5hPyYcrf
 xo7asdWiQjzeSBBU7vCseQo62jZZzOUWHtunQu2p+bjxUdmp+JAErfXcyrREo93AgSln
 ySgzk4mcP2hNJPh8YIezLtxt1TDFwuS+YunbLKGcGWLjPLZ/wE5RQ1zI8VaYVRHVLuQy
 wIO5LtpPvk0LlUQe5GRX4m0VkjoxRtZIBnkDOZMkSwprT06O8UGW7uQlQlooMHonRqvw
 +pJwUlewcb7fwQgoiw8rHXdCWAr0l+Bt7rob99cvJShnyWuC6BVryxGIr0Lk3sX9nlKl
 yNXw==
X-Gm-Message-State: APjAAAV6Pl7EB+T74ovuxdZYcoAjnHlWw3azjiPx/dlN0henPo5ITdhA
 bv5UjNedJLadU2TyO7ePOzHkzsfD
X-Google-Smtp-Source: APXvYqxSs1mjkjVv2NQQbaSJ61OPgcDo0vko+wBKqCvBw52v7+rbptmPFsOV2r25j7VsqG1mESqV/g==
X-Received: by 2002:a05:6000:10:: with SMTP id
 h16mr11032684wrx.151.1556977401646; 
 Sat, 04 May 2019 06:43:21 -0700 (PDT)
Received: from workhorse.lan (ip-37-201-4-220.hsi13.unitymediagroup.de.
 [37.201.4.220])
 by smtp.googlemail.com with ESMTPSA id 195sm10267351wme.32.2019.05.04.06.43.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 04 May 2019 06:43:20 -0700 (PDT)
Message-ID: <26baba59a3468cb6e980b63e5c88ec1a6af459c1.camel@ettus.com>
To: Rensi Mathew <rensisam@yahoo.co.in>, Vsr Ravi via USRP-users
 <usrp-users@lists.ettus.com>
Date: Sat, 04 May 2019 15:43:19 +0200
In-Reply-To: <1432742277.62002.1556943355674@mail.yahoo.com>
References: <1432742277.62002.1556943355674.ref@mail.yahoo.com>
 <1432742277.62002.1556943355674@mail.yahoo.com>
User-Agent: Evolution 3.30.4 (3.30.4-1.fc29) 
Mime-Version: 1.0
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B200 Overrun
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

Dear Rensi, 

16 MS/s is actually pretty decent; modern PCs should be up to that,
yes, but considering that is 512 Mb/s in pure data, imperformant
hardware or OS parts might be a real showstopper here. 
So, what is your computer, its USB3 controller? What are the settings
of usrp_spectrum_sense that you use? FFTs aren't "free",
computationally...

Best regards
Marcus

On Sat, 2019-05-04 at 04:15 +0000, Rensi Mathew via USRP-users wrote:
> Dear sir
> I am using B200 SDR to run the program usrp_spectrum_sense.py with a
> sampling frequency of 16e6.
> I think I am using a fairly low sampling rate.
> Still I am getting some 'OOOO'.
> 
> Could someone tell me the possible reasons for the same? And how I
> can avoid the same?
> 
> Thanking you
> Rensi Sam
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

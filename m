Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E4912FD29
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jan 2020 20:39:38 +0100 (CET)
Received: from [::1] (port=37304 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1inSnB-0006Ji-Jr; Fri, 03 Jan 2020 14:39:29 -0500
Received: from mail-wr1-f44.google.com ([209.85.221.44]:34727)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1inSn7-0006Ef-OR
 for usrp-users@lists.ettus.com; Fri, 03 Jan 2020 14:39:25 -0500
Received: by mail-wr1-f44.google.com with SMTP id t2so43429842wrr.1
 for <usrp-users@lists.ettus.com>; Fri, 03 Jan 2020 11:39:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=2Iuq5M3wa2S9CQ5ohOm4R5XEoXTYoC/wO6yKbokLpow=;
 b=p8d2QmT/jkKybGB6638gt9ODZAcQmMtmx4KnGluncpV/7a6ZUfi5nfh2GiFyx6blxK
 Tt3EYp8TYZTW3tqmvYrrn2XWddP9+RhyuxN0Xzb7O4H+2vVER2EqJR0P0VdxbcMbCqyf
 OTgkc38Jr7YWsLUIHdOsLrmo54YcYvatBL81iGUfIS1b4RVG1CZhK5apxLVsM/+EYE6b
 DaA/Yh3xJY8tFr/JXYmagA3nR363F7+8FMtXrOLTY5Cv2w9LolZ02owWk/WjpFo6dw4u
 1qLZ74+WeDNBUcu9vuGfb1jOlmN99qN4Y6M6V7gdE7o7bosVRbFrOceA6dAUmPf0qha5
 YNlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=2Iuq5M3wa2S9CQ5ohOm4R5XEoXTYoC/wO6yKbokLpow=;
 b=RJTd9dyIq0kio4OElMT4rWdiL6NsxcygbgOTNM7wifbyAqrPTmi3ezQmTUdBiGgiNm
 gtReVATMofj1QWmZxkLZYC7MFwo5ZSoirqLOt4zqI8exBFfrojKun1SOosOWEx793dsG
 gvKXjvKsff5IjQjTeF9Ot/cc0BiXBwrcDBpqq+lFxgr/xbOA+Vi909MNQzZuC2tDPn0u
 /nN/ABBs6I8bwBd+YOKEyuLrllFI3MA614V+XC2gZlCcet384vU0/mTMzO5wm0ADOpxa
 40UR5mfEFRS0atWLVfMnbjgWRtbcu2vrsB9B60EZKYbOkUD7DD+OGySfSwgw8qWo9ySQ
 S99g==
X-Gm-Message-State: APjAAAVdLnFfCqYNHq2pcOCzh2YYZkpftGPhOu4unSUDW65oCI6HNB84
 W8Ev8/C/E44Qp9M/lrgbYFCka75j
X-Google-Smtp-Source: APXvYqx2eWDZWTOPXKasQuNkp/dlI7lbf00Sb9xUWkjHu6/k2WHwFoaE/DDPdO/4/nXPtSf1PA721g==
X-Received: by 2002:a5d:42c5:: with SMTP id t5mr91727396wrr.73.1578080324593; 
 Fri, 03 Jan 2020 11:38:44 -0800 (PST)
Received: from workhorse.lan
 (HSI-KBW-46-223-163-146.hsi.kabel-badenwuerttemberg.de. [46.223.163.146])
 by smtp.googlemail.com with ESMTPSA id t12sm61195220wrs.96.2020.01.03.11.38.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 11:38:44 -0800 (PST)
Message-ID: <561a56d5090d31eaf0987af64c691510b742cc4e.camel@ettus.com>
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
Date: Fri, 03 Jan 2020 20:38:43 +0100
In-Reply-To: <MW2PR1901MB2137F7BEF77557EA8B539737C6230@MW2PR1901MB2137.namprd19.prod.outlook.com>
References: <MW2PR1901MB2137B5985ADB1D60955CA0E6C6230@MW2PR1901MB2137.namprd19.prod.outlook.com>
 <0986444f6acfa153422d73f3f3787ea1d04ef1de.camel@ettus.com>
 <MW2PR1901MB2137F7BEF77557EA8B539737C6230@MW2PR1901MB2137.namprd19.prod.outlook.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: [USRP-users] IOError: [Errno 2] No such file or directory -
 uhd_image_builder_gui crashes when trying to run
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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

Ah, wonderful :)

that should be a git repository, so `git describe` typically delivers a
string that is "last tag on the current branch - commits since then -
gCommit Hash", typically.

Best regards,
Marcus

On Fri, 2020-01-03 at 19:27 +0000, Jerrid Plymale wrote:
> Hey Marcus,
> 
> Thanks for your reply, it reminded me what I needed to do. In the
> version I am running, the e300 folder has been replaced with the e31x
> folder, so I just changed the e300 target to e31x in the
> uhd_image_builder_gui python file and it is working again now. Not
> sure how to check the version of uhd-fpga repo to tell you the truth.
> 
> Best Regards, 
> 
> Jerrid
> 


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

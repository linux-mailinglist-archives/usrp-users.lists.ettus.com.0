Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 007F012A852
	for <lists+usrp-users@lfdr.de>; Wed, 25 Dec 2019 15:19:18 +0100 (CET)
Received: from [::1] (port=40548 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ik7VH-0002yb-VU; Wed, 25 Dec 2019 09:19:11 -0500
Received: from mail-wr1-f43.google.com ([209.85.221.43]:36324)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <marcus.mueller@ettus.com>)
 id 1ik7VE-0002rh-7R
 for usrp-users@lists.ettus.com; Wed, 25 Dec 2019 09:19:08 -0500
Received: by mail-wr1-f43.google.com with SMTP id z3so21885797wru.3
 for <usrp-users@lists.ettus.com>; Wed, 25 Dec 2019 06:18:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:in-reply-to:references:organization
 :user-agent:mime-version:content-transfer-encoding;
 bh=XFQ1LJ2sag7PA3W7HlM+fBfTT4Mbe6olzP9Og839cqo=;
 b=SU/pwZRGwNIoShVmd6I/28eg0pPmTbtpw7eZZrIeg6mKQOocEMR2db+kOydRdNLxcc
 WbxBJ+Jor4jg860wKgGiaE1SGo/oIuCB+kZHWgB3WpnG94tOp5rO+vSyHZ16N6yv+eEY
 QOi3s/zOTUXhKxWX4MQS6XV7r002hAXvSw4iv7ZJV7CavcDNzTtg8axKJEr6X620VG9q
 0ntJ/ePfBX/8hekMvSucWvTVkxo3QqZulsDpaiw376Mtj2SVRc5g+oSGpDYcyK7q7gvA
 YOUMJ5ikrofYH2B/w9SRdLNJ2LsdLnqFiCtD/8yE2sUolFjSUkrHMXQ8JfLry2mAqf7x
 jryA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=XFQ1LJ2sag7PA3W7HlM+fBfTT4Mbe6olzP9Og839cqo=;
 b=CS5DW5jpphfjlMq0FkIqVL0mDy5hW45NkHsAhJhEOCMOpVPzCST75Mis0Ll/ABT3rL
 i5N/YAJdgj4ZIiRx8373sW0Afo113ULKfWutMQYgyroq9jiFVBC09hPn7jQSq4PB2BIW
 qzaDXIoHpLOJpibWu1jWQ1Iqw7lf5GYzFa7HZGzg5AkcAoH387KIeJaZySfr1+J5rmv2
 uZ5Wa9SlHNUqSB/eBC78qVx/0Zt/1NEZ6jdQ5Ig2SzLslhr+OI7nW1B3IuOhgDrrG+gB
 01ufSo4icrTkg5uDow55dTCiS8bKoxuorPKLEjlyMvdEVbM7P5tBm2GEMW0KJ2AcZFVt
 RCBQ==
X-Gm-Message-State: APjAAAUMewF6jiVz7/X2Xn3b5YDVrx7NRGqkZDqgNPI4JLM5wrmlpcxL
 EJ3orJlfybY0cimKZmV1e+wkug4l
X-Google-Smtp-Source: APXvYqw3y44740e2IXzUMfg/ioCNxPrqPCuPxbEOAZCDigrtJu+eIpMiuH/ul9w2zvBHzeYKwwVuNA==
X-Received: by 2002:adf:ea0f:: with SMTP id q15mr39481842wrm.324.1577283507284; 
 Wed, 25 Dec 2019 06:18:27 -0800 (PST)
Received: from localhost (dslb-094-220-198-130.094.220.pools.vodafone-ip.de.
 [94.220.198.130])
 by smtp.gmail.com with ESMTPSA id t190sm5673877wmt.44.2019.12.25.06.18.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Dec 2019 06:18:26 -0800 (PST)
Message-ID: <d750d9ab21391528e690db20bc4e4530baaebcb1.camel@ettus.com>
To: Baroch Oren <baroch@6tzvaim.com>, usrp-users@lists.ettus.com
Date: Wed, 25 Dec 2019 15:18:25 +0100
In-Reply-To: <c00377a3-bfc9-79eb-a033-6b11611b372d@6tzvaim.com>
References: <c00377a3-bfc9-79eb-a033-6b11611b372d@6tzvaim.com>
Organization: Ettus Research
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] Gain difference in 4 RX on N310
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

Hi Baroch,

oh, that's interesting and I must admit I don't really know where to
start looking into this, but let's take this top-down:
How are you setting the gain, and how are you doing the capturing?
My gut feeling tells me there's something in UHD not handling multi-
channel gain setting right, but lacking an N310 on my desk right now, I
can't just trace this with a debugger.
How did you build and install your UHD?
Best regards,
Marcus

On Wed, 2019-12-25 at 15:29 +0200, Baroch Oren via USRP-users wrote:
> Hello.
> I've been capturing with N310 on 4 channels simultaneously. A strange
> behavioure occurs:
> First experiment: capturing on a single channel when all the other 3
> rx channels are terminated, I get a similar captured gain on every
> one of the RX channels.
> Second experiment: capturing simultaneously, channel 3 (RF2 RX2)
> shows a decreased capture gain in about -14db. all other channels
> show capture gain similar to first experiment.
> Third experiment: capturing simultaneously on 4 channels, all inputs
> terminated: thermal noise of same gain on all 4 channels.
> 
> Anyone has any clue for direction to further research this?
> 
> My setup: UHD_3.14.1.HEAD-0-g0347a6d8 on Ubuntu
> 
> Thanks,
> Baroch Oren
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 858F022E220
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jul 2020 21:05:45 +0200 (CEST)
Received: from [::1] (port=36776 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzlxv-00070F-Up; Sun, 26 Jul 2020 15:05:43 -0400
Received: from mail-qk1-f176.google.com ([209.85.222.176]:33550)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jzlxr-0006sI-U6
 for usrp-users@lists.ettus.com; Sun, 26 Jul 2020 15:05:39 -0400
Received: by mail-qk1-f176.google.com with SMTP id l23so13440311qkk.0
 for <usrp-users@lists.ettus.com>; Sun, 26 Jul 2020 12:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=taLQ18daVVDtgtUgm4oeFWmklQQSr/OdJyQVpLZF7r8=;
 b=DkdlhKTq4dpqHxn+MOMjGXjUa2YrVawAAAgrK1sSr3SAuyFlYD0jL5N7ZckFPJ+dHy
 5icDHfGUmmTRy78qdwSIOW8nMiXehS9QryBg2KSe272JlzxpQg0hZ1/ePgecWz2b3TzU
 rrmP4BHJrPpE3fieS9FCnnGZH15ZrlY6GpspKo9SF8YsBRgJjCxy/0GnngJP+23ciyXj
 m9HWnDRqcZXWTZyFD8AC2dnIfEuYAFd3rluNd0H1qaONe2SVWBasFKyzXhRRcbktCV3Y
 39ek/04TOYIip0i3mzYOyUgI40s1d2N8zy60cmutiWm0LhHVuVB0lzFRcxeUvFoqGDdj
 iyaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=taLQ18daVVDtgtUgm4oeFWmklQQSr/OdJyQVpLZF7r8=;
 b=ACbWio6Vi4IWLUsfzMBJF6lIHRLw+051cLLCxinfcHi6HOd6YYM7SrnHaCFtyK0GDI
 fiiq6PVbMnJxn1SZBnqM9eahjuEd2w8yKIc3BOqjwdAKiPrqEymUPWJrJ1MGSafX/Efu
 1R22IIC+y3HM+CaOBUmbcV1AtFHeaNX+1/scZmmEcGvCRrhi3hAGsAr3M2JuI/7+81Ve
 22wBmRz8W9kZ0WxOvwr7t0CdA5Q2HHv5ZL5HyXISyox5Anb2+Fgk4W8gGc0sth4O8IrA
 /ukW7vq6VXpT7y/OTN7cSZ89tNw7TOkWZengomlcdaC2TLe59t1RI3r1MxBOxSznD86U
 /34A==
X-Gm-Message-State: AOAM5339InfAZcCMPctNviKji2g8b9p7FuDFU3AM/V80MkBY8pQusiu1
 mVcBk0x8iL4KEPQwbhdXfkPjV+pLY6w=
X-Google-Smtp-Source: ABdhPJxCBUrf2w/r+0BM6a7KE3aItASBDu2X9s2N0F1AMn0iOCxMg7Zyd3aFEfHPTK/ykqavf5C+Nw==
X-Received: by 2002:a37:44c1:: with SMTP id
 r184mr20256555qka.232.1595790299221; 
 Sun, 26 Jul 2020 12:04:59 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id w2sm12986755qkf.6.2020.07.26.12.04.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 Jul 2020 12:04:58 -0700 (PDT)
Message-ID: <5F1DD3DA.9070300@gmail.com>
Date: Sun, 26 Jul 2020 15:04:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: David Carsenat <carsenat@gmail.com>
CC: usrp-users <usrp-users@lists.ettus.com>
References: <CA+w2Zyvz7XGRkKWy2tqeTqYdFuhU2DQV5QdjekCZi=4Av0ctuQ@mail.gmail.com>
 <5F1DCB58.7090804@gmail.com>
 <CA+w2Zytm2=5ZRrB-BaY91fax-9xpK8fpkVpB+ep4mzvZ3tH-oA@mail.gmail.com>
 <5F1DD036.5030509@gmail.com>
 <CA+w2ZythQQvQG3Zm6+bv8c+pWV42XFbtdUGw=vOZKnP0_qZmZg@mail.gmail.com>
In-Reply-To: <CA+w2ZythQQvQG3Zm6+bv8c+pWV42XFbtdUGw=vOZKnP0_qZmZg@mail.gmail.com>
Subject: Re: [USRP-users] AD936x disable DC offset removal
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

On 07/26/2020 02:59 PM, David Carsenat wrote:
> I have tried that, but I see 2 issues (but perhaps I'm wrong) :
> - I need 25 Mhz of BW so if I want to push the LO outside, I need to 
> have a sample rate of 50 MHz --> difficult to have Tx / Rx loopback.
> - I have tried to set the master clock rate at 60 MHz, the DDC offset 
> at 25 MHz, and a sample rate at 25 MHz. I thought that it could work 
> but I have a cutoff frequency at 12.5 MHz ...
>
> David
>
Try setting master-clock at 50MHz, and then set the analog bandwidth to 
50MHz.  Then use the offset tuning.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

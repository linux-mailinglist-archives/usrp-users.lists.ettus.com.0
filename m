Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C65274B88
	for <lists+usrp-users@lfdr.de>; Tue, 22 Sep 2020 23:50:30 +0200 (CEST)
Received: from [::1] (port=59826 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kKqBA-0001yB-6k; Tue, 22 Sep 2020 17:50:28 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:36037)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kKqB5-0001s4-Oq
 for USRP-users@lists.ettus.com; Tue, 22 Sep 2020 17:50:23 -0400
Received: by mail-qk1-f169.google.com with SMTP id q63so20754659qkf.3
 for <USRP-users@lists.ettus.com>; Tue, 22 Sep 2020 14:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=nd5S7jZG//ao9OWiBDoM2QGiuKP21+7RRLKCBvR0Oew=;
 b=nJI/Xn0mU0ybLeIkADDku5xeDDPZ+EYYMk9QwKPc01nMnphBm4MWLeSL5XCz7TwYt2
 rzvxx/MDEEqWNiW6YlRtLAk1ZrookUwgOWlwhuSC2Y+8p03c2IuIYyLbasrkm4n2CPEX
 IfYlTsr3Qw+HMbCjNNgMrZtsLb2qoGK4Mi99sIU1NHuXQ4e+J7jojpgUHICLwd2BwVbg
 sgFx5zCOawTS/AXZN1+31Yzut/NvKkWbgXH/xvMgebAOuJqs1q9LzgZhEdyQ0rb/8R8F
 gs4JnHHXtAOmK6VF+BKfTBi/+iHLa4jF64qo3nsTBRIHGGhjcgcoU8ylnFW4njNZf6yi
 Jr5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=nd5S7jZG//ao9OWiBDoM2QGiuKP21+7RRLKCBvR0Oew=;
 b=SRjFwUhVIsQ8pUzFxiJ0vv98KXyKW30J6BIBd2ZtCFljsDs0kuuv5uxmWRU0dvLfJg
 GZOL4nWqvwgz3tSv4hghGoY7HEcKz/2fMjzCAAhP8X7ziNMDNsgTeilYde89/zO6rEsd
 e1+f+xfFsxfGCnIHEb1zpY2bR4Yzsiu5FE0OdvxNJ5NQGSAR8Ouy2PMCQTLQt8aWeL4V
 0oaVvWurrMjN2QivomvICZ8rgR4kQQskYM+WpP5NoraDsRqmNi1U5QlIDDK9Sdh5kMYt
 EyZxaJM/2vg3xEGUFfFPJWVZnLQ4Qc7V8ezFr1huYLUEWuEZne5rRrOa7PYhfBbhN+hj
 25Sw==
X-Gm-Message-State: AOAM531hb8isESeLrILENMXLadhuCbO3yPBvh1xLVOlRC6datl0m2YJ0
 oBMoKFZK3QGOW3qa5DufdhpCG0o5RJ8QiA==
X-Google-Smtp-Source: ABdhPJz0SwziuUt9FU3iYkjXmaBccObPrO53FQRKsH9ksSRueD3kDlP8BHOk4/zBcKZXs+tewMLfeQ==
X-Received: by 2002:a37:9e87:: with SMTP id h129mr6712722qke.276.1600811383116; 
 Tue, 22 Sep 2020 14:49:43 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id f24sm12203985qka.5.2020.09.22.14.49.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Sep 2020 14:49:42 -0700 (PDT)
Message-ID: <5F6A7173.4040504@gmail.com>
Date: Tue, 22 Sep 2020 17:49:39 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Christopher.Flood@colorado.edu
CC: USRP-users@lists.ettus.com
References: <CAM+cdhJsqS=h8E1KruwNC0gHk-fvb6TLt_r64W9aR4Vk4ZZ22Q@mail.gmail.com>
 <0A090987-67A8-41CB-ACF6-66356B789250@gmail.com>
 <CAM+cdh+6dRDx1wLytKDhi_oOSkUxse71qzQW7gEXWN39RUdrNQ@mail.gmail.com>
 <5F6A6701.6030604@gmail.com>
 <CAM+cdhLmg-7j=DL=BXX2pxDvtcHj5SMXcb_8QZmbSVVYnk5wcw@mail.gmail.com>
In-Reply-To: <CAM+cdhLmg-7j=DL=BXX2pxDvtcHj5SMXcb_8QZmbSVVYnk5wcw@mail.gmail.com>
Subject: Re: [USRP-users] Ettus N310: Tuning in GNU Radio
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

On 09/22/2020 05:14 PM, Christopher Flood wrote:
> Sorry about that, I should have mentioned that first.
>
> Okay, so it seems like there is a lower limit on frequency resolution. 
> I saw some of the device arguments make it possible to bypass the DDC 
> and the DUC - would that buy me any resolution?
>
> -Chris
>
I suppose that in the best of all possible worlds your tuning precision 
is commensurate with your clock accuracy, but the clock accuracy can
   vary wildly over several orders of magnitude--from the roughly 1e-6 
of the onboard clock to someone using an H1 maser at 1e-15.

I'm not an FPGA guy, so I can't comment on how easy it would be to 
extend the size of the phase registers in the DUC and DDC, but I'm fairly
   sure it would require host-side changes as well.  The "model" used by 
UHD is that all the numerical and logic smarts in terms of register
   configuration live on the host and the FPGA is "stupid" in this regard.





_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

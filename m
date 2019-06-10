Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 903023BCBF
	for <lists+usrp-users@lfdr.de>; Mon, 10 Jun 2019 21:21:27 +0200 (CEST)
Received: from [::1] (port=51200 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1haPrA-0003AS-Pk; Mon, 10 Jun 2019 15:21:24 -0400
Received: from mail-ua1-f41.google.com ([209.85.222.41]:44592)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1haPr7-00032V-85
 for usrp-users@lists.ettus.com; Mon, 10 Jun 2019 15:21:21 -0400
Received: by mail-ua1-f41.google.com with SMTP id p5so3526472uar.11
 for <usrp-users@lists.ettus.com>; Mon, 10 Jun 2019 12:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=dF/OcnzJIvhcTzuCjWlFlYo/ocKENeBDrEIm0fCTmIg=;
 b=qvg8h936vbTfJ7W1dFnSDIMZWYyTUOvw6t1OZbSnVnwJhRQOciE5STiOB0IEJ+kAe4
 KsxIIIxTkkl2aGFGXjdfSuFFAHc1p2Pm6Go+6FnU+QesL+JiCF5OwrQ7H2KjQ4s5rE1I
 qpYC/ypFcv1cwF09FPHp/gr+BUBi4kc/EAHg8XJOXQ48N2VT2hmznkQgCbu4RUdTRE31
 pcMuIJUs3ak/x1gGHr36WWQlwDM0QyNlLLsZq/3yIv51Qho5sOQtWp8R1orEufI0i3gG
 K8GVm2hO8vmAqP8zISGKgzCnITm93WdocQSsRTD4sEFQ//dPe8fzs63X1fFln2c8DAs+
 X/Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=dF/OcnzJIvhcTzuCjWlFlYo/ocKENeBDrEIm0fCTmIg=;
 b=BGCuKY19y4gdeFkNFDDlaC1mgZd8GxAI0wVPLSAiSVgLM/oc6fe0MLhdMLLFMJdv/i
 MpHGCUfOHgwttiEqr96daGdLlveRTy8/049qASUiE1EF5M0FdxhFNcwW2ploPEuHXqTO
 I2kIlsCEYkPR3DO4q8LvnQNRSc0Sct531ArXSgMm1f4LNgCf8DQEOiz3XYWdT5KU7+u3
 RI9sNtUiheMl06bBwOdF2+zJQNisNLwCgnkEWwJ/lr7YX8fedgaB1C/YW0Uuz8aBVWef
 GFEiw1/Zq8BEMUsuoauwF2t943GCfS+KMxR2c5G8C8u5GI0UB8SCtlVShaHxIfWJwObf
 Z33Q==
X-Gm-Message-State: APjAAAVlXLE/4l4uTI6p0bRuDtkxXb0/+etuMGS8Cufs+L47urTCwRTD
 PJ1oOJjGKcOHFa92nTAkA8q6BGV/mPQ=
X-Google-Smtp-Source: APXvYqzH1f7kV8vU2GYJIAmuUQRmm2BmAEB4bL8+vY9r2OXBg9icXQANeiB/lUI6HbnGstoLI3O7EA==
X-Received: by 2002:a9f:248b:: with SMTP id 11mr7969077uar.9.1560194440551;
 Mon, 10 Jun 2019 12:20:40 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id y71sm618127vsc.19.2019.06.10.12.20.39
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 12:20:39 -0700 (PDT)
Message-ID: <5CFEAD86.3000305@gmail.com>
Date: Mon, 10 Jun 2019 15:20:38 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <b53bf201-38fb-01bc-5bd8-7d70c1548c4a@bham.ac.uk>
In-Reply-To: <b53bf201-38fb-01bc-5bd8-7d70c1548c4a@bham.ac.uk>
Subject: Re: [USRP-users] Dip in frequency spectrum.
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

On 06/10/2019 01:51 PM, J Subash via USRP-users wrote:
> Hi,
>
> I am recording a 20MHz wide signal centred at 370MHz.
>
> Attached is an averaged frequency spectrum, and there is a 6dB dip at 
> the centre of the spectrum. Is there a obvious reason for this. I am 
> using the python API and a B200 for doing this.
>
> Is there any way to avoid this from happening?
>
> Thanks
>
> BW
>
> JS
>
How do you know that your signal doesn't have this dip?

Use of a good flt noise source allows you to differentiate between the 
case of your signal, and the receiver.

There is DC-offset removal in the signal chain, so if you aren't using 
offset tuning, you can see some amount of "over-correction" for the 
DC-offset,
   leading to a dip in the response, although it's usually fairly small.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EE21F3F88
	for <lists+usrp-users@lfdr.de>; Tue,  9 Jun 2020 17:37:30 +0200 (CEST)
Received: from [::1] (port=41048 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jigJb-0004x6-JL; Tue, 09 Jun 2020 11:37:27 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:34119)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jigJX-0004qS-6U
 for usrp-users@lists.ettus.com; Tue, 09 Jun 2020 11:37:23 -0400
Received: by mail-qk1-f196.google.com with SMTP id f18so21228445qkh.1
 for <usrp-users@lists.ettus.com>; Tue, 09 Jun 2020 08:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=V8AdEtMdQZRVZDf6d59L8N2E9Ryh6/ofbS3lZ7GNLsA=;
 b=ZXYeOdiGKaGvtGy6j5Bi/9e5UgcewXBrlD0rNV4OOM23m5fhmnregdaSZMcBqJBpKD
 kBfYlzqZDpZdJqlwiW3kN+DHBZo7rnVUF4FWJ/1k+708g6Exrl25dCRqxKMZtoJ2nbhI
 mEUlyqnzsS6GFuppmQ9wFEWibESBWpoqEqI9O660ISByQ/e6oc4QsuNr5wRogZoAkNQ0
 697nmozbSFwqBdLUjANrLME3XXLb2l3H1IE3sb3wmGhca3zCzBy0D7IU2EjH20Wuk5ui
 Ll1YNn1Xez7RtxbQnuMaTLfQ/uO0uF0/OLPRsY2XGZPEvo84KwnGLmXcRTb+Inm3Sstx
 58Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=V8AdEtMdQZRVZDf6d59L8N2E9Ryh6/ofbS3lZ7GNLsA=;
 b=d9u89XXOi+CCnV7TaskOTZk/DIyepmjvhddXGKhrQZDhUU1QuHrWpba4wDR8kUbVlV
 ONaHGSNDI0rqUpCDahdoE2kzqd5COewq2LSq6qfpSnjnq/6qAarwvt812vcBeom0E/N2
 6Mlgg4gTcsD5MSy2nGIVJlOCwcv8FfoWu5SAA7ExgNDvhVT07p6xyQ/r8YuBOC8WU5dk
 GoXTusY684a2J38cWtrv+KdKB6Y4iS8z+ZJRJxeYuKFHiwybPA0yC52r1uQGlAY05KQI
 F8gD4as4ldtiRl+u4JGCmTDZC8WB4u2Y6haUeW5+LzX3s5VJor4HOCQT9ENkBMnSES1h
 MYPg==
X-Gm-Message-State: AOAM531YvkNivQx4ApuJ18PVEu/IPO+d69Gf2uJQCrTmQewuqoHUdykH
 GLf4Rji7FSRrjXH9YwwGDTnO7IyJWMc=
X-Google-Smtp-Source: ABdhPJypxsmB5OivW4/i8ZZ5l+f3DN4td/IN8+Xt1jRrp4SttGLWa319RQuxi73xusxffpYKFd1gYg==
X-Received: by 2002:a37:9cd5:: with SMTP id
 f204mr28987306qke.346.1591717002337; 
 Tue, 09 Jun 2020 08:36:42 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109]) by smtp.googlemail.com with ESMTPSA id
 l188sm9461145qke.127.2020.06.09.08.36.41
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Jun 2020 08:36:41 -0700 (PDT)
Message-ID: <5EDFAC88.3060508@gmail.com>
Date: Tue, 09 Jun 2020 11:36:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <1782458469.1080360.1591711728131.ref@mail.yahoo.com>
 <1782458469.1080360.1591711728131@mail.yahoo.com>
In-Reply-To: <1782458469.1080360.1591711728131@mail.yahoo.com>
Subject: Re: [USRP-users] Help Required B210 GNU Radio
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

On 06/09/2020 10:08 AM, Farhan Naeem via USRP-users wrote:
> Hello,
>
> I have USRP B210 board. I am trying to find tutorials or getting 
> started guide to use it with GNU radio but coupd not find one.
>
> Can any one share gnu radio examples for this particular board and 
> relevant documentation regarding Ettus GNU radio plugin. Thanks.
>
>
> -Farhan
>
99% of Gnu Radio is completely independent of the hardware that you use.

The base of the Gnu Radio documentation tree is here:

https://www.gnuradio.org/docs/

And the Wiki here:

https://wiki.gnuradio.org/index.php/Main_Page

The Ettus USRP documentation is here:

https://kb.ettus.com/Knowledge_Base



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

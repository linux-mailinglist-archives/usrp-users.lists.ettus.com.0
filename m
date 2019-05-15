Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 425B91F6F8
	for <lists+usrp-users@lfdr.de>; Wed, 15 May 2019 16:53:44 +0200 (CEST)
Received: from [::1] (port=46154 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hQvHr-0006FK-8W; Wed, 15 May 2019 10:53:43 -0400
Received: from mail-qk1-f182.google.com ([209.85.222.182]:37208)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hQvHI-00064H-Pj
 for usrp-users@lists.ettus.com; Wed, 15 May 2019 10:53:38 -0400
Received: by mail-qk1-f182.google.com with SMTP id d10so151697qko.4
 for <usrp-users@lists.ettus.com>; Wed, 15 May 2019 07:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=M4cnD4bKhYO862dcYXsPMhdj22o9PiYPDw1eGPPItoY=;
 b=gveuel29WNiRZtUcHKzD/4gM2ZeSswnCTlWKUNijB4hufdEtHd8WLmj5tS4gbxMrza
 4EgzZoZCRFYJcYJtnS3XA8l/t8vlIdQeAlJs5bHp6ExQKQIgveRedHoW7dOdfdaZsheY
 CKYcYa9aOibhHmPK6430mJKGm/0vuHTLMdvbll+os5+QgNKVnxCEE7xqivCOB4qM1a2X
 GI59xvQiTsYHhqU3KePjZshmHK0ns3wwi6iIHZR85ysP5/90BM8WFlrLyhJ1d+X6GqZG
 19yaX8G12EfYdNsjy177pcs/J0E+a9Lq8q1SdKQ5Em2fO89a/6hGHY1NgymCfoFs0smT
 itBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=M4cnD4bKhYO862dcYXsPMhdj22o9PiYPDw1eGPPItoY=;
 b=BQI2ARlCD2z8bxYRhEbUxoV/axNV/kMhNdlf4okD7SRscj6gyBj+gm5bqv2pBmaytU
 7O12TKCrkL93OMTj2ut1VDabdR1jzJ0xL/bH2fSxE4IAVEn/BhB/Z0sYCcLlNpfWIG0e
 X+D+xDfHNePpsnOULPdBreRMsEZsI5u6jyVUSoO5awCaqI1ix7tB38s1UIkTI+vKtCH7
 uZwHb2S63tlItHO7ScLbNbyCSOMOpgcISxwmrJCPgJ4dS5jsBOOblq1v6ZvFOysT9ACm
 uCZVRXQXodiO54z5Nbb7SCSXN9UT5ynWD1mfD0/2QXCrxwVWwoQLwz24ImY7faK+YTpV
 AAPg==
X-Gm-Message-State: APjAAAU/ygRIacpihwYL/Fz5X3zPFzYXHG8o8rHRLi5Y3Hx/XN7Y4XWe
 /JB43oNxBi8jFRH9K6C3phWHGv+h
X-Google-Smtp-Source: APXvYqyq9QbzGWJigY2WT7axhEfxj1xP435n1DluHp8voTksbQgSlUCYCXIxpPsafPWiunbMF9EuMg==
X-Received: by 2002:a37:4e42:: with SMTP id c63mr8503909qkb.137.1557931948200; 
 Wed, 15 May 2019 07:52:28 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id r129sm861045qkb.9.2019.05.15.07.52.27
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 07:52:27 -0700 (PDT)
Message-ID: <5CDC27AB.6080403@gmail.com>
Date: Wed, 15 May 2019 10:52:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CADpWGZ0aCJvX_Pjw+ba2WmLWQNysuwpk9z1zSf7w3Hcas=a=OQ@mail.gmail.com>
In-Reply-To: <CADpWGZ0aCJvX_Pjw+ba2WmLWQNysuwpk9z1zSf7w3Hcas=a=OQ@mail.gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] Question regarding connecting REF OUT --> REF IN
 on X310s
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

On 05/15/2019 10:47 AM, Achilleas Anastasopoulos via USRP-users wrote:
>  Hi all,
>
> Is it OK to connect the REF OUT of one USRP (X310) to the REF IN of 
> another?
> The REF OUT says 3.3V and the REF IN says +15dBm MAX.
> I used to do that all the time without burning anything but now I am 
> skeptical...
>
> thanks
> Achilleas
>
Yes, that will be just fine.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

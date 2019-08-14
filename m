Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 117FB8D577
	for <lists+usrp-users@lfdr.de>; Wed, 14 Aug 2019 16:00:00 +0200 (CEST)
Received: from [::1] (port=59218 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hxtok-0001yb-I0; Wed, 14 Aug 2019 09:59:58 -0400
Received: from mail-qk1-f174.google.com ([209.85.222.174]:44562)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hxtog-0001uB-SR
 for usrp-users@lists.ettus.com; Wed, 14 Aug 2019 09:59:54 -0400
Received: by mail-qk1-f174.google.com with SMTP id d79so82476510qke.11
 for <usrp-users@lists.ettus.com>; Wed, 14 Aug 2019 06:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=+AsqIE5HEkdE7JtBFE2Xf4e467u5VuIm4UNzW42zMNk=;
 b=pTkbEa4/o2IblWqyjTciGxb5HaY21Zz+uXigrAMd6Y0U+XyyL8gZ49vlWlalvSkgnM
 Pwja26L1PoOMfNsrdq5TA00J1jPua9bReeC0kLNVvqDYym8c0O3JWToubDaT4GwYeORQ
 7IHfLwyLozGSnXTxaD5HZS8UX8TSUtMS7zNgKPVn4nJJb8O2KoTkIHvojTN/CTWLOkkZ
 XZlbkyALMuT2Es1XKENfb127F6709XlIOQEL0dhRjmeJO8I280Y7rjjoCJswg/eYi+D5
 2ySDhEyU9/r/7osifvCQOlXtKATkshiEYNk3mha6XQbiODA3LX9/hXiCclUdK7ysUcNW
 P0Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=+AsqIE5HEkdE7JtBFE2Xf4e467u5VuIm4UNzW42zMNk=;
 b=rOwLbVONnFejf9OF6ojz+xEgJaPZbb91LMfqd64X+KapAUlU0Qv7KMwa8IPGJaqKbf
 JZLDYs3wxByHjbjdDMCoX10uq/m3Zhns3YtKBOZTVHLbT0AbCxHZEDAu1w8dNoxmzYsX
 ZXP39CVxIipYHMXd0gt7c6PN+V1KVN4lwSvclJyuNPdnDU+PEXClGwD69nCDAKkvyGam
 chxbgyFRzXFtzN8EMiG+cn6W0uqH7N0HHpxgYMuCa+ygUom3EzZkgHoBgnhNpufxV4+o
 3OWpwVZTFB2VD42xtD3DR7W7Q5Qmpm9HJP7Qd6p0ImeLhWemKo6Y5CzO4T4DeJmrYxDe
 l49g==
X-Gm-Message-State: APjAAAVAXYrvG4ERyf0ijSWQPDCTsRmSPAMFENmJsd7S8OLhHQAT1Q3b
 h20yC1jXPtBopS/0+5qZ7o777Ju9
X-Google-Smtp-Source: APXvYqyGoSk68Ir/yr9EHLCi18nPTvVPDRpjWzxsauxUG4BEOFSpZY7UKW+2KJeRpM0yViQTzLMarQ==
X-Received: by 2002:a05:620a:1254:: with SMTP id
 a20mr9065269qkl.162.1565791154302; 
 Wed, 14 Aug 2019 06:59:14 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id l11sm2354287qtr.11.2019.08.14.06.59.13
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 06:59:13 -0700 (PDT)
Message-ID: <5D5413B1.3050602@gmail.com>
Date: Wed, 14 Aug 2019 09:59:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAGBdiiZ1Kb_Ht5ZEe4qiF3Yk_=Sj7X9AgHu+9NUNVztNwczytA@mail.gmail.com>
In-Reply-To: <CAGBdiiZ1Kb_Ht5ZEe4qiF3Yk_=Sj7X9AgHu+9NUNVztNwczytA@mail.gmail.com>
Subject: Re: [USRP-users] Interrupt Request on N310
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

On 08/14/2019 09:43 AM, Erivelton Castro via USRP-users wrote:
> Hello,
>
> I need to implement interrupt request on linux, using the N310 
> hardware. There are some example on UHD? I need to read the I/Q Data 
> when to occur hardware even. I must to use interrupt request. The UHD 
> has support for it? Or I need to implement IRQ on linux embedded?
>
> Best Regards
>
> Erivelton.
>
If you need to directly respond to interrupts on Linux, you'll likely 
need to write a kernel-level device driver.


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

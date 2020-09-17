Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 214C126D3B0
	for <lists+usrp-users@lfdr.de>; Thu, 17 Sep 2020 08:31:56 +0200 (CEST)
Received: from [::1] (port=58216 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kInSU-0003a3-Th; Thu, 17 Sep 2020 02:31:54 -0400
Received: from mail-ej1-f53.google.com ([209.85.218.53]:42303)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kInSQ-0003R2-Ta
 for usrp-users@lists.ettus.com; Thu, 17 Sep 2020 02:31:50 -0400
Received: by mail-ej1-f53.google.com with SMTP id q13so1576792ejo.9
 for <usrp-users@lists.ettus.com>; Wed, 16 Sep 2020 23:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=+ibgsgym/b8aoibDFKtDYssGj8PhT6AYmUU3RTfnOjk=;
 b=VCRYtZ5FyeJC3jRzgm7cyeUahNBOtwjwUBDvKim1yv2R5VKXASC49fEoJX5sVdMI7r
 QjoCLVoHt38qhI0W/U34XkIQFpdpmOifRTWCTIeTk6+N7qbsF1eUPuxkLFwpqop48sfm
 kONkQUMtMruEffv/lz1B2rG4BdjAp7kqiDTMc6rmmnsta9jrHmM3y5yeT0WjOWwzpu/w
 oJQj91S5GhIlwywBzWVjwgDYT24fa1KsMNAkpY65UQx24aSge0WcENWj/XvNJPYyFfCq
 t7H90hPnBrkDzC8Rr3XaamkkRncGrtUagiRpzHsJZhr8ueTNYs/ptVBLYgOytfqW/PYR
 KVBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+ibgsgym/b8aoibDFKtDYssGj8PhT6AYmUU3RTfnOjk=;
 b=EwjY8fawXZjuW97y+kT0RsDdMQ0Rra7GmzQNUaE1DOTbIDRfj1OlFgRcKrSVUpOpu+
 2vRtwVVC9sGtMT0Y6/cdZsTyaCM0C93jPb5gJYDe7v/NrUD4k1SOP/L7f6VvMTvU7C7I
 gCzy9WAnaPFXep0ySj16ScYpzqeroaP7QRJ3p9GIZ5UTCUwfGS5pnPA83WqQYE4puI3S
 b4Qaj9xB/OtUzQOLGMpDfmmasiA9NIGdHs+QT9A9o4uaAb/9nZnD4CZPvvByb2L8Rg3C
 fykA4l5ci5Va9deRJfyKC5bXMJ9N/bRJyqRhkW8xNg69g8YrAlLwYkyHNBhfs6E5Z7Sk
 vGNQ==
X-Gm-Message-State: AOAM533C98x0o8WJRQBBWUjp6mTkXJX0U9nFPCKQ/Lm8fhm7CkdsCmNB
 zjBRAQTo+nDtDArGRzzH/ztoXyyAIcfrJ7fX
X-Google-Smtp-Source: ABdhPJyZb/2GZNlD0aHEObdVA+K1FEmlM0vtzdyhQ6YzQfcRGczS8oIKRT58Gh8asv0jCUZ43wGI1Q==
X-Received: by 2002:a17:906:2752:: with SMTP id
 a18mr16158775ejd.350.1600324269622; 
 Wed, 16 Sep 2020 23:31:09 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id k19sm14301428ejz.28.2020.09.16.23.31.08
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Sep 2020 23:31:08 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAB__hTSOe=zRoKHchG3cPARPZEmnDCyw8DLYskQdspGJT9d2eQ@mail.gmail.com>
 <CAB__hTQsBwV_rhUZNG=MA-4TsfT-bt_1GYuCfPdY70R_SrdQjg@mail.gmail.com>
Message-ID: <3c60e134-4e1c-5e57-d58f-013d2f47b0a1@ettus.com>
Date: Thu, 17 Sep 2020 08:31:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAB__hTQsBwV_rhUZNG=MA-4TsfT-bt_1GYuCfPdY70R_SrdQjg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] UHD 4.0 / RFNoC 4.0 questions
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
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
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

On 9/17/20 3:58 AM, Rob Kossler via USRP-users wrote:
> and one more question:
> 
>   * How do we include 'rfnoc_chdr_utils.vh' in our out-of-tree rfnoc
>     module? Is there a way to specify an include path so that we don't
>     have to hardcode it?

That looks like something for us to improve.

--M

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

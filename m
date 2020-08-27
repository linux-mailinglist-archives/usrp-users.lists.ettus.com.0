Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5322A254A1A
	for <lists+usrp-users@lfdr.de>; Thu, 27 Aug 2020 18:00:07 +0200 (CEST)
Received: from [::1] (port=59244 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBKJl-0008SS-6X; Thu, 27 Aug 2020 12:00:01 -0400
Received: from mail-ej1-f45.google.com ([209.85.218.45]:44462)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kBKJh-0008L8-Kc
 for usrp-users@lists.ettus.com; Thu, 27 Aug 2020 11:59:57 -0400
Received: by mail-ej1-f45.google.com with SMTP id bo3so8330464ejb.11
 for <usrp-users@lists.ettus.com>; Thu, 27 Aug 2020 08:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=eBNHK6hq+qIOMnfr2cVH2cLYGQcBGwjW1/OP0A2X2cY=;
 b=UfowUGRG/pDm/XuG6pDb2o4EPXOmrmaHaIquzA2xRlgFNI0FwwzSQOmvR4uHfMctdt
 kT293QukMydHF9dcssR1Tnil0gWzxvvkm6mwFNX6JLzaTw5BgX6PC9NZPylpFNgxv0dr
 8RsSMmOjxJ2v4/jepEQxMQKJKitWpGcw575RliXbUPadRkAxRMytX65+P4++TtW0q4/d
 Rg2qpdiqD3slCnqS7VscOSYV7x3ThWJSYgc6FpyF42uR2IMyMHwNeVYzHnpYpm1v4wPO
 /dhWoo43JSo2pEfIvoRqz82ZdDIIr8gZ9OmUFi13kDvi7its2RIsZ1b/U8oHrGLpmBc8
 56zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=eBNHK6hq+qIOMnfr2cVH2cLYGQcBGwjW1/OP0A2X2cY=;
 b=UL/IGslNuoSqM5085GV1o0BPxQYIgBslh45mv954NYxZazim+lqWv6ov5Ok13UwcxG
 +Cb34Rkvc5idXfxKb+0I/4VnR9GHkTP/+SqGWAuIm8FYVOMAre6IxaorRvwKedCkLPh3
 0sze9yoHNTxtpJoWpMxUpSptBffWJOKPc7nPdu1UMltlWpkSKWqnONd2AIfkVYri2OaR
 ps+XsvLbuZTDtXeAXco3BkUeZP+hspgnBlzNohVZs/pmYBbkl/xt6+ESyZ8hiBMYNyJI
 50xKRCYzQ/dkrj6z6W+UCDPv/0YXgKBNN/+AHS++3VE9czvd7jnhTpN24Hf1odte0NJ9
 d6Xg==
X-Gm-Message-State: AOAM532FeFue3BdRMidNjllvZSrST1GuoqLCmKjQBuD6bzaMh5L+Bxyx
 uF7f9UKWkLNZRiXP+bmmVOFUTzh5PPmxKk3reYA=
X-Google-Smtp-Source: ABdhPJzHHfrcLEltAAuFqr3EyHX2B0gulBjkXmVnDia6OzXVDwbX5CICdkQ1OJrUxcThfcuEaGbOgw==
X-Received: by 2002:a17:906:4f11:: with SMTP id
 t17mr19159475eju.371.1598543956289; 
 Thu, 27 Aug 2020 08:59:16 -0700 (PDT)
Received: from ?IPv6:2003:f0:f71e:b388:b7f7:a70a:1121:b0e8?
 ([2003:6:61f4:2f88:b7f7:a70a:1121:b0e8])
 by smtp.gmail.com with ESMTPSA id dr21sm2319840ejc.112.2020.08.27.08.59.15
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Aug 2020 08:59:15 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <BM1PR0101MB1491979F3271BB642990E69188570@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <3ff659ce-8c88-3098-c00c-dfee83236dbc@ettus.com>
Date: Thu, 27 Aug 2020 17:59:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <BM1PR0101MB1491979F3271BB642990E69188570@BM1PR0101MB1491.INDPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
Subject: Re: [USRP-users] Query regarding rfnoc
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

On 8/25/20 11:03 AM, Snehasish Kar via USRP-users wrote:
> We are trying to implement some filters in rfnoc, we wanted to use fixed
> point numbers. As per my knowledge, I and Q are I16 bits individually
> and IQ combined I32 bits. We wanted to convert them into fixed
> point=A0numbers. But I am concerned about the host UHD driver's
> interpretation=A0of the data. Do we need to keep a stage at the last where
> we are converting from fixed point back to integer I32?

Out of the box, UHD can handle the following fixed point types:
- sc16 (I+Q, each 16 bits)
- sc12 (I+Q, each 12 bits, packed)
- s16 (real, 16 bits)
- s8 (real, 8 bits)
- u8 (unsigned real, 8 bits. Usually used for arbitrary data, packets, etc.)

You can add more types, but it's awkward and not super well documented.
If you do want to add types, check the convert subsystem.

Now, I don't understand what you mean by "convert to fixed point", b/c
you're already at fixed point. But let's assume you're trying to convert
to a different, specific fixed point representation, then you can keep
using sc16 (for complex) or s16 (for real) or the corresponding 8-bit
versions. Nothing in UHD will actually touch the data, other than some
unpacking and endianness swapping, if necessary.

This is different if you've configured your host to use floating point
(fc32). Then, UHD will convert your fixed point to floating point before
returning your buffer.

--M


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

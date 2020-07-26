Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CCFB22E214
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jul 2020 20:50:16 +0200 (CEST)
Received: from [::1] (port=36672 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzliu-0005zc-Qa; Sun, 26 Jul 2020 14:50:12 -0400
Received: from mail-qv1-f51.google.com ([209.85.219.51]:42466)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jzliq-0005rC-NB
 for usrp-users@lists.ettus.com; Sun, 26 Jul 2020 14:50:08 -0400
Received: by mail-qv1-f51.google.com with SMTP id dm12so6454467qvb.9
 for <usrp-users@lists.ettus.com>; Sun, 26 Jul 2020 11:49:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to:content-transfer-encoding;
 bh=1wd19E8QcbbqybnL1S9R3mrR8Iq6yxPSIImTuunZVRg=;
 b=A6H0tZ89BxduTZARdJi5duKaDXQr6ZYDjS9Wjz+Q6UeqjJmdeu9Ne2fdIj4eK+CcKT
 QnStOMhCQRUH1RS1IioN3pGUpLFmTeYPZ2bL7XIgod4EpcQel6KJMNUOFTSC9fF8+XFj
 a0uA/Q15yRVlSgxZoupwtWpxHEcNfO6D9aRWGv7KfGESckAz4/FNbTfdY531iSQ94Lu3
 hEkyZsuw5t9MgUo+dC7Ibv/PMeail03Nrnjva8wiXEUyIgseQNnG3RrxSXnYGa3qaYbg
 LLR7Lfq0fg/bl7GZTarhFse9wJxiAPmmG8OcSU7q1ntZfwPSxPySMUaSKnqvCM+WgeRl
 Cntg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to:content-transfer-encoding;
 bh=1wd19E8QcbbqybnL1S9R3mrR8Iq6yxPSIImTuunZVRg=;
 b=L1LEekm2yiyPVVQ/o/yRjetAlTcV5S+JPay2kENRkfE+/QuuaBObwhlwt9qtKUarpK
 4DwChXudSXPI/7epjnRcTchWwJYZOmRq74a2kWr3ey8HdeVOVxEb/0oHBoDZaKtgHbQn
 0+3CptR+yuhb5gW+O9WnqE+UbwdB2rWVX/AllaAUlxIBeF1FHUc80DBnzpBv+EyODrIm
 klUQUkTohX5gnV0WGaKw9LWdS+QaRrRg5thrqOPPxkmKH1ZjTJqVSdcJpcZqxBmow8D6
 8i/2lpWVSsNBtCiQmyMr+km8OViHZC39AlF72IzqEhW4MvRaqjW/lMG+mPG0AZlpdQKa
 FOUg==
X-Gm-Message-State: AOAM5304rIPpOUyBHWV8MbotkuS5els3yWXeEGCysdo2RRNwEZWEb1Q3
 718xXESqTcfz+SrES4MaGCog6s3r1/k=
X-Google-Smtp-Source: ABdhPJzN5oeg2f4leUH4Vm3D8oJzvPN8PaGVVEgz14UUulHa44qFKEzpspxeROXswPcXSd6SuSW3AQ==
X-Received: by 2002:a0c:e30c:: with SMTP id s12mr2173402qvl.138.1595789367989; 
 Sun, 26 Jul 2020 11:49:27 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id x29sm10676434qtv.80.2020.07.26.11.49.27
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 Jul 2020 11:49:27 -0700 (PDT)
Message-ID: <5F1DD036.5030509@gmail.com>
Date: Sun, 26 Jul 2020 14:49:26 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: David Carsenat <carsenat@gmail.com>
CC: usrp-users <usrp-users@lists.ettus.com>
References: <CA+w2Zyvz7XGRkKWy2tqeTqYdFuhU2DQV5QdjekCZi=4Av0ctuQ@mail.gmail.com>
 <5F1DCB58.7090804@gmail.com>
 <CA+w2Zytm2=5ZRrB-BaY91fax-9xpK8fpkVpB+ep4mzvZ3tH-oA@mail.gmail.com>
In-Reply-To: <CA+w2Zytm2=5ZRrB-BaY91fax-9xpK8fpkVpB+ep4mzvZ3tH-oA@mail.gmail.com>
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

On 07/26/2020 02:36 PM, David Carsenat wrote:
> What a fast response ! Many thanks. But what do you mean by offset 
> tuning ?
>
> For example at a time, I can have a signal at F0rx and at another time 
> at F0rx + df. Always with some Signal at F0rx. The RX DC offset 
> correction will disturb the Signal for the second example.
> The signal can hop.
You can have the hardware offset the LO by some suitable amount, so that 
the LO actually sits at the edge of your bandwidth, for example.

See the two-step tuning process here:

https://files.ettus.com/manual/page_general.html



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

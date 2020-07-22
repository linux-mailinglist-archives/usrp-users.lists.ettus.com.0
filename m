Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 54805229DB3
	for <lists+usrp-users@lfdr.de>; Wed, 22 Jul 2020 19:03:18 +0200 (CEST)
Received: from [::1] (port=52698 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyI9F-0005D0-0e; Wed, 22 Jul 2020 13:03:17 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:36911)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jyI9A-00054K-Gy
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 13:03:12 -0400
Received: by mail-qt1-f175.google.com with SMTP id d27so2343491qtg.4
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 10:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=oHakeh945Y5uRlEeHuSTpGAaVVYfEAgE+7lOheQO8Cs=;
 b=QXF32Sf9EE9A7MSDGfH6scxVgQsGyslGWixMmq9QHI8SoiQUQbSButYbQED7rvo55b
 aQr56LMbtLpRqz2pHY9Qp+Jf6qDzqhRABQvqzPt4a8FZGpDO/XJY5REyv6b55YdiKgRK
 PMtcQLhx7Hyw/GrEnaIZ+GQSGwDXMGXiyIQlftcFqypPJuFq5wbHeyXy9OjF+mnbTl7S
 JscCPGtIAEcXwQUwUYkoce7MpOuZIzTUbdvTQfUd26iQW6OQBc2L/ge7oDjX9vYDSST6
 U5D6D58LT/h0BnO6CxMsO6A5L4vnpc5sB3Ac2vgBGORRiP8ZDgW2CkRWcTXhGeCcFVJe
 tOpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=oHakeh945Y5uRlEeHuSTpGAaVVYfEAgE+7lOheQO8Cs=;
 b=gVa+1iQSzNTOgAH2uk1/XR7oTXKXRXcjb7nbnmmYRjVpeiOZbXvE9qRo8OynADWb/t
 duU6KN/3vcPiWhlOp0TD65QRrSqJw+3RfyNCqqBLUuwhVpYN9m5xFi3bpWiADR5VxmTI
 MPq/AR9hYCfCUuMjh8wFsN4aKOc9+328dCJZX2gE1IUkLXNuo6+lgtby0/LGc5TWm5cl
 NajeoQRc1UzXttcva7TyOGBbkw6rua2GnYVmL2IY3mrqGXrWuDaSYbxTOzwxtAwMB/Et
 3yFiB3TP8AyB8iCnwGrwYRPksbh9xoN9vTlIDq+dAFVEQGuRYzGygtdw89StQgwLkgds
 SZyA==
X-Gm-Message-State: AOAM531E+fsx0Lr8L+m378BORDc485RxlDic4D+9Xb14cHB3t3RhAy+Z
 FFFpqgQCixAPMvr+fsFPAjl/6B60neo=
X-Google-Smtp-Source: ABdhPJz3FGh9KOq9DoTCY59gj7gQQ8JvOlgrYgFzd7cIFwrkJaKzGZONiJkC0P0HPb2FOPkGk2yJCg==
X-Received: by 2002:aed:2c23:: with SMTP id f32mr319067qtd.164.1595437350871; 
 Wed, 22 Jul 2020 10:02:30 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id j18sm445000qko.95.2020.07.22.10.02.30
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 Jul 2020 10:02:30 -0700 (PDT)
Message-ID: <5F187125.5020508@gmail.com>
Date: Wed, 22 Jul 2020 13:02:29 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAMVZM+_-CjX8EEzSNuAXrLuDTA2BN1d01eMyfnNHLf79Q88fQw@mail.gmail.com>
In-Reply-To: <CAMVZM+_-CjX8EEzSNuAXrLuDTA2BN1d01eMyfnNHLf79Q88fQw@mail.gmail.com>
Subject: Re: [USRP-users] Which ports to secure with RF terminators and how
 to setup loopback testing.
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

On 07/22/2020 05:12 AM, Pavlos Basaras via USRP-users wrote:
> Hello,
>
> i am a newbie to this so i would appreciate all help and pointers for 
> reading/understanding what i should (please excuse possibly newbie 
> questions, thanks!).
>
> I have configured 2 usrp n310 devices, following the instructions 
> from: https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide
> I am connected to both over all available ports eth0/sfp0/sfp1, and 
> both "usrp_find_devices" and "uhd_usrp_probe" seem to be working properly.
>
> I would like to proceed with some real testing 
> (https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio).
>
> Q1: which TX ports should be secured with RF terminators? Assuming 
> that we use e.g., only RF 0, all TX ports in the remaining RF1-3 
> should be terminated, correct? As we are not currently using any other 
> port from the
> front panel (e.g., gps, ref in, trig out, pps ), should these also be 
> terminated?  What about the daughterboard ports?
>
> Q2:  the loopback configuration refers to using one usrp to test 
> TX/RX, correct?. So the setup for this testing is a single usrp, and 
> focusing on e.g., only on RF 0, by using sma-m to sma-m cable with 
> 30dB attenuator to start testing?
>
> all the best,
> Pavlos.
>
Putting terminators on unused ports is good laboratory "hygiene" but not 
strictly necessary.

Placing 30-40dB "inline" in a loopback connection (direct connect 
between RX and TX) is mandatory, to prevent possible damage to the receiver.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

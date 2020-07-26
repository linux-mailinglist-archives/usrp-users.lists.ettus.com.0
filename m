Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D2722E1F8
	for <lists+usrp-users@lfdr.de>; Sun, 26 Jul 2020 20:29:27 +0200 (CEST)
Received: from [::1] (port=36526 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jzlOo-0004am-JL; Sun, 26 Jul 2020 14:29:26 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:37214)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jzlOj-0004TC-Vy
 for usrp-users@lists.ettus.com; Sun, 26 Jul 2020 14:29:22 -0400
Received: by mail-qk1-f169.google.com with SMTP id b14so11645418qkn.4
 for <usrp-users@lists.ettus.com>; Sun, 26 Jul 2020 11:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=u7zeQfKG039u2UztXdtYt+CujIZjWOeoHu7x1Q1Z4c8=;
 b=ouZVCrithsAAiRnyHE4Oqpe8tSUF4U7b3lCDJuDUJbhqBnIC9bqH22D8M8Ot/dsG98
 hKNsoa8zneh4Lni1l/rK8AGk1AISBpV4YvPGtIp3p7ha8t5vbSbOoK9Iv6Blnsg+Axv0
 bWGu9jA794NgcmyoR6loSXqYDiL1y9HpmSzEu2+HQLcrZ7+ZZDEBcs+j9STInAJh012R
 ICGV7jul9Sj9OdFqjyn+cc/GZIhrEV9uObuEy1RpnAskE3nkH9bx/+hTrDnl0034vlvM
 nxqEXbchzN6v+rDZxUFlUuflr9xTUeUv8VKGnytSwvPFh7rMZ4VYzSuR2s0nK9/QfdEn
 mifw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=u7zeQfKG039u2UztXdtYt+CujIZjWOeoHu7x1Q1Z4c8=;
 b=k63F29S0P0vMcg+jsqinPWo9WcF/+3NmN3SRd8vvKS49govQ3i78YZRFGx5BcOGOeK
 1oYEi33uDR7MnJazpsakklAU3JdXD5fxlVtVGUfZWJG3nya8D+Pjj2nVA3/GyYiCwAxS
 d2+1sdtqTQVZuSwKOyoXxmug8qwHCmKvih3IDmgpcm1+yRQvhLZ40pjQ9CYNvawm4EcZ
 x/suPwey+/G1Y0O6uf5v4ppgsB5pNvqVUabLizCB74Y7s9u68Kg0zBYWM2/pFZPO0drG
 mn62zisUN9TyyZzStbTddJw8tL1ZMJesIs+rFv3p3dh8VtxMPbfAjb/OKfAWpjvsInI4
 oMkg==
X-Gm-Message-State: AOAM533SsxvyWqF5/2XOaBeRBfzcGAy5w+x7OeISXAjR2RDkmmjj20tV
 oPQ8D7uoCRJJUfsL+iEidSJ6hliBvuc=
X-Google-Smtp-Source: ABdhPJxRFGTwWJcDLPjihdv53Wior2IyRNQQFlIoGEEgD1vMKxU4mZbcOIYn6/P97j44SzvX468XSw==
X-Received: by 2002:a37:b785:: with SMTP id
 h127mr19759869qkf.260.1595788121097; 
 Sun, 26 Jul 2020 11:28:41 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id w2sm12885645qkf.6.2020.07.26.11.28.40
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 Jul 2020 11:28:40 -0700 (PDT)
Message-ID: <5F1DCB58.7090804@gmail.com>
Date: Sun, 26 Jul 2020 14:28:40 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CA+w2Zyvz7XGRkKWy2tqeTqYdFuhU2DQV5QdjekCZi=4Av0ctuQ@mail.gmail.com>
In-Reply-To: <CA+w2Zyvz7XGRkKWy2tqeTqYdFuhU2DQV5QdjekCZi=4Av0ctuQ@mail.gmail.com>
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

On 07/26/2020 02:25 PM, David Carsenat via USRP-users wrote:
> Hello, could someone help me where one can find the UHD Cpp file where 
> the DC offset correction of AD936x is enabled ?
>
> I need to make a Rx --> Tx loop which is independent of the center 
> frequency of the Rx signal.
>
> Thanks a lot
>
> David
>
If your bandwidth is fixed, you can just use offset-tuning, rather than 
disabling DC offset correction.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

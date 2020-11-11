Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E4C2AE52F
	for <lists+usrp-users@lfdr.de>; Wed, 11 Nov 2020 01:58:16 +0100 (CET)
Received: from [::1] (port=43376 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kceSk-0000SQ-BA; Tue, 10 Nov 2020 19:58:14 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:44222)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kceSg-0000Jt-PG
 for usrp-users@lists.ettus.com; Tue, 10 Nov 2020 19:58:10 -0500
Received: by mail-qk1-f180.google.com with SMTP id d28so217037qka.11
 for <usrp-users@lists.ettus.com>; Tue, 10 Nov 2020 16:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=R6kKB4CaxX7Q4VTDDxie/eUhViPDE5QdhRWHdckdpAw=;
 b=n3dWOPXz7HPoKZcglBoOykshk7ryzVPy8leFA2+Dy2dx4PIz0mWabDF7SupmPRJAN3
 P6dmAPCskb7RfjXeMesI+0oUKVKz9v0zzxQ7Nljvoc91zLmz6qgVfvf8fBkCC50U8HrT
 Yw0bgVTKBPBryNpTwytX3fMpT+bRK5m28zsyo5C8+RfX8gQ6KsXx6cUDOib3kj/HZS/k
 a7W/iKesUNtwfPKIRNT1610xX/jbXQjDqi2ayBByzs7m97cXyuHjIIgijmM8NFSbxi3r
 oMFCicyEwWLWZYj4wmgTVL/lwhXfzJeZrPNhckTBlGRlpCKw2PCTsyZkYq3yxheQZ7JN
 F3vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=R6kKB4CaxX7Q4VTDDxie/eUhViPDE5QdhRWHdckdpAw=;
 b=QddCj4V4bPQSA/WRKf29ToYRj/xEtOuXjoQ6wxofG7h0wCQDkC6izcL3mYi/t1DVp3
 cyE446GPdrnva9KaOtFGfxjy0hXdz25tEg3MsxGjfW4QoX2nK/r/KZhGP1H8JIuvk3e2
 fk+9hElBCibCOwuxZy/Y4Yko0WxAipscdRbH3D2uXe/9jYsqtdOPWT83FhW2btMfavpi
 5VZaXg/80V3d6FSwHdul0ykFYpPh/pIzNbQ/d/V1TvQ5ET2Om82aF/DCX6JQmpTLp6I/
 ZUpmpg5wPrnvZbWwWIPHwsvvD7YH7r9qLct0/aySFthgAKAwyOQQONi19+QB5LTr3BQ5
 TvEg==
X-Gm-Message-State: AOAM530IPj12Y1VTnrsqoF8nRdHpPPlsl2H6ZyywYU4j872baSwlc5dZ
 GHtMTIVon6p6N44+VD6L0F4zEP4+Z/w=
X-Google-Smtp-Source: ABdhPJwbCs5wrf6e486sgEzN4gWM8pm14935Sl5M4wLuEKmgd0mps8zDQMVgFpVzr7TB7IDJTXnasA==
X-Received: by 2002:a37:ae07:: with SMTP id x7mr19692180qke.299.1605056250068; 
 Tue, 10 Nov 2020 16:57:30 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id t65sm588811qkc.52.2020.11.10.16.57.29
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 Nov 2020 16:57:29 -0800 (PST)
Message-ID: <5FAB36F8.7000003@gmail.com>
Date: Tue, 10 Nov 2020 19:57:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <mailman.63.1605027605.18432.usrp-users_lists.ettus.com@lists.ettus.com>
 <trinity-33c8f7bb-57cb-4bec-88b6-bf569d11f29a-1605053182553@3c-app-gmx-bs25>
In-Reply-To: <trinity-33c8f7bb-57cb-4bec-88b6-bf569d11f29a-1605053182553@3c-app-gmx-bs25>
Subject: Re: [USRP-users] How exactly is "Receiver Gain" defined?
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

On 11/10/2020 07:06 PM, Lukas Haase via USRP-users wrote:
>
> The reason why I am asking about this is because I would like to cross-check my measurements.
>
> My original question was about RX gain but it actually also relates to TX gain.
>
> With an X310 and UBX-160, TX Gain=0 and sending out a full-scale sinusoid at 915MHz, I measure approx. -2.5dBm.
>
> This is not consistent at all with the file above (assuming I interpret how "gain" is defined correctly, hence my original question).
>
> Would anyone with an UBX-160 be so kind to confirm/disconfirm which power level I would expect to see?
>
> (Preferably at 915MHz with TXgain=0 and full-scale sinusoid but I'm happy with any other configuration that I can x-check).
>
> Thank you!
> Lukas
So, according to the charts, at 900Mhz, you'd expect about -9dBm with a 
0dB gain setting, with a full-scale baseband signal.

So, there's a discrepancy of about 6.5dB.  How did you measure the power 
level?   I could easily expect a couple of
   dB discrepancy just due to component batch-to-batch variability.    
So, how was the power measured?


>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

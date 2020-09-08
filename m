Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63589261372
	for <lists+usrp-users@lfdr.de>; Tue,  8 Sep 2020 17:24:44 +0200 (CEST)
Received: from [::1] (port=50646 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kFfUB-0006WE-7C; Tue, 08 Sep 2020 11:24:43 -0400
Received: from mail-ej1-f44.google.com ([209.85.218.44]:46526)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1kFfU7-0006Oz-LW
 for usrp-users@lists.ettus.com; Tue, 08 Sep 2020 11:24:39 -0400
Received: by mail-ej1-f44.google.com with SMTP id z23so23070036ejr.13
 for <usrp-users@lists.ettus.com>; Tue, 08 Sep 2020 08:24:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=EiOICtICwN8P4sCY9mfBvRaFuDEnzLlA0QaW64qSeoo=;
 b=pHVtp6up//hjtKA25y0Tx/dy3NoiMQyZR7g7R0jUqFphKp0SL9curwhMzM+dHjW/B/
 eqSMZpcYEPBTgKsgubDps4LkgJD9U33xda0nmnywJniVc7uZJfzpxW9SJnan68szJErU
 ie59as6DqHxQC2Fyo8b/YWcYYLOVGYjSzVaEUT49982BaT2ACBXu49LMNSrO4WJdNQeD
 6gGP5zvWpBWLjbcPlBt+OAuHyiMwUeMocw62OgkITzn9JHAFn12KNLJWf3zyHtvDlZSB
 lNjgBkwPFuB/XxqrpiNiurOhjgsylvd9rPq8MR53UENqd8nHkqcqio00DDyjIQ9mVfNQ
 XiuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EiOICtICwN8P4sCY9mfBvRaFuDEnzLlA0QaW64qSeoo=;
 b=g0+Wn7ENa2MNkidY8qpDYEVBkzciUbxltbB2ZFuAvpgUmlP7VJIW22ySYuyir55jBu
 2skmfGZ2fhNgH4hBFaNZDtXPyPmc7uPFV80a+Qx1saS/0Vn1+OfjjtXw1icuuIdX41L+
 b5bbu0hP7ZV79gU+iL2IDTksuX9lPAIEuBc8Gb1MyrCg5//WT5z1rkn9EKBKSdbAwI3P
 1wczOztFHUrdz+EWizdnF3lgbdQWEEGviH5AALa7EsbXi3D326yQjfqMqbSeSqrQ/s/f
 ebmdw5LtRlkqS67PaNH47Ocu3aGEXUmL3d64pTM22HjWiQUCbKReeueNKCU7hfcQ/EEh
 N+Lg==
X-Gm-Message-State: AOAM530TldIYco1b5tfEan1XX5Fwh9fKs1olLD8Ec5VFwdo4TaIzeulU
 gUH8mwwwdMRg4LToq9cYk2bhuyd2AgD9TGA/KZo=
X-Google-Smtp-Source: ABdhPJwgOMB07sX2tD2p+gcaoLCHKdgbpbRa9cBPR92w7jESbqr06xMCGNEzlFw6nkJP7PWeMOvWSA==
X-Received: by 2002:a17:907:264c:: with SMTP id
 ar12mr27603833ejc.80.1599578637969; 
 Tue, 08 Sep 2020 08:23:57 -0700 (PDT)
Received: from ?IPv6:2a02:8071:2c80:c4f0::e6a? ([2a02:8071:2c80:c4f0::e6a])
 by smtp.gmail.com with ESMTPSA id r15sm17543384edv.94.2020.09.08.08.23.57
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Sep 2020 08:23:57 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <MA1PR01MB25887D46F7718F3B577EB766902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
 <MA1PR01MB25885B58121EBCF0777551D1902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <28485733-4c7f-6b74-3455-fe3575a7eecf@ettus.com>
Date: Tue, 8 Sep 2020 17:23:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <MA1PR01MB25885B58121EBCF0777551D1902A0@MA1PR01MB2588.INDPRD01.PROD.OUTLOOK.COM>
Content-Language: en-US
Subject: Re: [USRP-users] USRP sensitivity
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

On 9/5/20 4:59 PM, Koyel Das (Vehere) via USRP-users wrote:
> NI told me magnitude of IQ samples received in usrp is the voltage in volts.

Can you point us to where you got that information?

For the list archives: UHD 4.0 will have the ability to map digital
signals to power levels for X3x0 and B200 series, if you can provide
your own calibrated gear.

--M

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

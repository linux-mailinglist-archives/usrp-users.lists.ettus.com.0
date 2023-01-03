Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id ED39765C2FB
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 16:28:30 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3BB5B384179
	for <lists+usrp-users@lfdr.de>; Tue,  3 Jan 2023 10:28:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1672759710; bh=zBvUs+0dvmIro14ZqdWzZySWM2CORWDJUL+MeyqKFWI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=dANI7ke0oqbC+zxGEiEOqk8TbESheU1kCP3bnXHwkkI2yYg+d/rUywowWuYeBvw93
	 65AaNKDbH8oowI7L543FzYwc79H1PcOwxNvgajt9TfeDnPVid6yMUZMrn9XzDhezLH
	 Kymv2TzgUfAUGjw4IvBCbLpfLM1yZnqlgT1ThHrt9PA60jGbTIWg1OGFgqSemkyhy2
	 Z0/rzPf5FPwwhQo0/K7hCW/rj/EfWwCbiYvR5hI9smQ3mTEuQkTDeSmXfOt1zfJdmh
	 8m/kBpS0AeV/vvCUkeEztPaLbNVqqxXiUOdysB2kO3VjyftLUIkx4hnvjCSgX3mmgs
	 63A8c/JSK14/A==
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by mm2.emwd.com (Postfix) with ESMTPS id EAC4F3808F8
	for <usrp-users@lists.ettus.com>; Tue,  3 Jan 2023 10:27:35 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="pTaW8Fme";
	dkim-atps=neutral
Received: by mail-wr1-f50.google.com with SMTP id w1so17706328wrt.8
        for <usrp-users@lists.ettus.com>; Tue, 03 Jan 2023 07:27:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AcJ4o2WK3Bf8hrBNOkT6jhaBR+5m3MV//PDZNX5aao0=;
        b=pTaW8FmeKE8ImvZsBFIiR5jPm6cBaF7dVx9s9WYOHX2CggX68Ey8W0b5Jlri2BxVci
         +08MgV+TCIymEPcP9SI9f6LEqZD/TyZEjL3LrrVVXfQ3hykvPv7ZX7JMHEvRID+1biJp
         riyLkZTn6gUBJHyhG/EIukrpzC6HGFqpF9O11/QPg3pS5KJmE7aaZ74HduQsXA7O7MIw
         i9xmSjAZ99VdIjPyuO9YG7X+4PUub2nGCVBl8duDtSWDiQ/z8KeNIuShsys/JVtMdimt
         EkBpeID3lOPNab37aGFURdtAmhF/lMlI3gYmGnh+b/2eLLeufiynfve9fML/pwVXLY6M
         6npA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AcJ4o2WK3Bf8hrBNOkT6jhaBR+5m3MV//PDZNX5aao0=;
        b=EpBs4MVWG3FMFEa8+soGp7zLraE1wUSA3eeLhHv85ffmoC8WbgFPw2YtivFnb5h/g+
         gBFTM/jPg6I0hOy/asgLdOSf+yzPAO1L36m/BzpnhkN1WPYFf4VxpkhpG26D4LH1QFjS
         yB2Ci9U+1cEazlPNz3Tg+QIG2TX1u0h2aWDmEMMT+uL8BTzNLRZvBc1oVMcTHLCibtDa
         cmrPV0WHKd5y2ph+Ttzy2NmUN2v26Q6LZyetKCzRn5r7YYIyaGIq0fXIzFBUjoqK47mQ
         O0AI07f9CIQm4LFiebLXot7qKYeImuDbo6UqPWMzL97mU8IOhSTbtx5x3FKuDTNDWCqG
         9qxA==
X-Gm-Message-State: AFqh2koGWUHnObyEwwghNECYwXaaUlz4KNbh02Y2iibi9iKCWB13J9sk
	43oVEwTTj1XAKKsRe9hHJ8WzQGid1+XXwYQZVNg=
X-Google-Smtp-Source: AMrXdXu1ZPAWwit2l3iJ90Ms36IEyK0ghq6wisNR1m62U/F99B4WnKXWwCiuk8gQQ4P8ndnhbenvmw==
X-Received: by 2002:a05:6000:383:b0:242:8198:625e with SMTP id u3-20020a056000038300b002428198625emr29935403wrf.63.1672759654572;
        Tue, 03 Jan 2023 07:27:34 -0800 (PST)
Received: from ?IPV6:2001:9e8:3867:8800:998f:ca6a:6065:3212? ([2001:9e8:3867:8800:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id h18-20020adfa4d2000000b00241cfa9333fsm32539594wrb.5.2023.01.03.07.27.34
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jan 2023 07:27:34 -0800 (PST)
Message-ID: <07078a09-0298-3589-1a2a-ce901a8c6907@ettus.com>
Date: Tue, 3 Jan 2023 16:27:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <oaoH3ypG8i9DaeJkv3J70sqRD8lHbEmBsowSjpK6M@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <oaoH3ypG8i9DaeJkv3J70sqRD8lHbEmBsowSjpK6M@lists.ettus.com>
Message-ID-Hash: 3TSNLVN32BNPRWTBZ4ACBGDR376JDRJD
X-Message-ID-Hash: 3TSNLVN32BNPRWTBZ4ACBGDR376JDRJD
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Channel out of range
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3TSNLVN32BNPRWTBZ4ACBGDR376JDRJD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi again :)

I just confirmed that at least as far as the maintainer of the UHD and GNU Radio anaconda 
packaging is concerned, the anaconda builds are 64 bit, but yours seems to be 32 bit, so 
this *very* likely is a competing installation!

Best regards,
Marcus

On 03.01.23 16:14, henry.powell.xx@gmail.com wrote:
>
> I installed via Anaconda and the code which i run benchmark is anaconda prompt actually. 
> So, my uhd environment is in anaconda.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

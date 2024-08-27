Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F599613BD
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 18:13:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 204B838568C
	for <lists+usrp-users@lfdr.de>; Tue, 27 Aug 2024 12:13:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724775194; bh=5LEWUTsCZTVc5OkWemMO/dLwgH6zRGrOqzRJu+YX9sc=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=0xZTx+PF5zXrc9nApLtyUvW5F1KleCzXU+r1ygx4iuYn+j37PnlKqWMtXTulX7r5E
	 rbpAWai1wBsAK6gwr49e/f0J+WBJCMMFtOtBdHL7dudZuJSx8R16mEYTrp0A7QtC/h
	 0ZxM5oVT+PiDbgC5ifr+GOIaKZQwaGYPgc+2QHnaKiEjDfURO5f+jFq/8EO0EJmoM6
	 ZGu0pukLolEiNdsIp/TRP/yVoMuqzJl1eO6sHG25y57XxR6303LcL9b6iAcdoGhuiD
	 INHwChd5mFdershE0M4Bi3aXpKztx8PUXY+T4OF6c1fHJTkkh4JVPFpmsCUaVBbGeu
	 H66KueyTH6WVQ==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 971B638568C
	for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 12:12:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="AK1uuC47";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id d75a77b69052e-44fe9aa3bfaso32354001cf.0
        for <usrp-users@lists.ettus.com>; Tue, 27 Aug 2024 09:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724775148; x=1725379948; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aZMghOo7gcH+kSSlwKTFpN4oYxBNNdOHP+/ZvE4YqVM=;
        b=AK1uuC47UkG01ro7JU0nqlin1okPFrjGFgHBYky6a5pk0GGCwxOjV66AESCFYQurhe
         bNkk/wcjPhabxtfFgv7JrAZBPmilHFu2sgLhio74hk1HvUdYJasjvqSl1J3/skAwoxee
         HvnrXVfN0TElvJ2mGW4flHLqXUe++SLGi7niYWa9w4F3lQ1TfCuuvO2M9vS4AI/J+0pE
         iPr/lWz+rk8TRsCc+CzYn1UgQ+QkUKyrcTiyaL2I1JtJBRZQSa1RB0Yr188mtYfnI1GB
         AX7pD6ZAiQgvFXeoAn/bewzYd5nPzEf58AI0PmW31mZvQcDYUUfcBw8IfflPkkQOU0Mx
         BUaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724775148; x=1725379948;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aZMghOo7gcH+kSSlwKTFpN4oYxBNNdOHP+/ZvE4YqVM=;
        b=fkHVecDnYzBMMLVFihp4monQcI0ivLu8Ec1HLAvO5g5zWhFQKAZpgaORzD4KcGzkr4
         Ja94vCSwa5p4fmmjUas652gXFRRt3ajO5GDLBthB89NBPwM/eKaUyAZPirbAkyf1c1t3
         BsXjqdaFA8R3u8pntlK5ROpK8x/K5oSDJ9N10gIiaX8oEuNpLUStJLRdn/xqAOMlrVrc
         W+gDOeZ22Tnrn+kRIDp8qwFBaGA4CDHu7hxG1XS9fOuu/2r38IdNOgurKTnsapwkrtB+
         hsKCntD5/MKHSk9gW37Y67Uj4qlo6rCDzpwwXrRJkqm3I6eX4nNQDPkPY6+qPzFV7nZb
         dOfQ==
X-Gm-Message-State: AOJu0YxecD9j1ne4GHFYlAV3j7cwoC9TM2iWiVTBhAcWzljolc1AAiTO
	WEuGj8ecv/NVaX+xeCB7tiARbzw4/te53UxTYNPkgpVkQcYVCQ/QrrMBsw==
X-Google-Smtp-Source: AGHT+IF4zX4I/fimZ4ggvNSUkf6wEIEfvw9XVSESISWkHLwCOIrHO1dEzkKFwpsqaoUlKO2ER4O/wA==
X-Received: by 2002:ac8:47d5:0:b0:455:ad6:9deb with SMTP id d75a77b69052e-4550ad69e9emr118189881cf.57.1724775147644;
        Tue, 27 Aug 2024 09:12:27 -0700 (PDT)
Received: from [192.168.2.170] ([64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id d75a77b69052e-454fe1967a3sm54018581cf.68.2024.08.27.09.12.27
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Aug 2024 09:12:27 -0700 (PDT)
Message-ID: <0e62daa2-67a9-41de-96bd-3c8dd5f56d18@gmail.com>
Date: Tue, 27 Aug 2024 12:12:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAL4V06o-TJRDA4VYCFAKh1Sh4VdweBXF1SqFsPC2pZAFGYTPTw@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAL4V06o-TJRDA4VYCFAKh1Sh4VdweBXF1SqFsPC2pZAFGYTPTw@mail.gmail.com>
Message-ID-Hash: DS33AORMDKREE32IZ32YB7RHO7GHPO76
X-Message-ID-Hash: DS33AORMDKREE32IZ32YB7RHO7GHPO76
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Command for burning image on N210R4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DS33AORMDKREE32IZ32YB7RHO7GHPO76/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 27/08/2024 12:04, Brajesh wrote:
> After building setup for N210R4, I am able to generate new image for 
> N210R4. I want to burn newly generated image on the N210R4 FPGA. 
> Looking for command to do the needful.
>
> Thanks and regards.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
https://files.ettus.com/manual/page_usrp2.html#usrp2_loadflash_imageloader

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

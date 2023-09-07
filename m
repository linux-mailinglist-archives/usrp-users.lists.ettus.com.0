Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF2F797ED4
	for <lists+usrp-users@lfdr.de>; Fri,  8 Sep 2023 00:53:57 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5EFAD385354
	for <lists+usrp-users@lfdr.de>; Thu,  7 Sep 2023 18:53:56 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1694127236; bh=3sgjIcGnXFNzyQC4Rc0xqd1eTGdLLfuU26ajND4qr2g=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Fhy2QE+KQ7Rm+9JNJr6oIeDilDw87XiL6LOMdVo/w4/u0rlIeS0Pdy1xgXnDPm5P3
	 aYls5HJmKbbwpgJ5unj70U8oelEyH8JBY5sBn/+6JWl25D50ctqJKz/Rka2aPTozKK
	 lfXSBmAJRoAK0YB+nJnoK0QUctz2uCwWMoDRpe5l54SmabQvheru5JFtnslOzOxQDX
	 d2c5w7EXCP3yeD3+i99nxCjPIoXK5F+npKiENR/9Iwj4hQ82sUm8yp5hfM2tUW+uzm
	 Km17LaIc95HIoIr2S302AbYl3cYX9ZWF18KfuUd3RlIyiB5NZQc8agRrf7KH+w19Jg
	 IAUsZEc0G9Lgg==
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	by mm2.emwd.com (Postfix) with ESMTPS id 007D3384FDD
	for <usrp-users@lists.ettus.com>; Thu,  7 Sep 2023 18:52:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Li9WqD1s";
	dkim-atps=neutral
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-76ef6d98d7eso82341285a.0
        for <usrp-users@lists.ettus.com>; Thu, 07 Sep 2023 15:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694127179; x=1694731979; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hm6xDACvWtSKUbPK7gTcDW9lvq+oxymOSR8M9f3sWcg=;
        b=Li9WqD1sBiem/0o7Rk+cJT2Q96OBE00QULB0hy4pE9SoKIQMYzhKxtZ2ILA7duoxMi
         Dsbo6k0JwRV5GI8nL1NzlEHe4+AUO5qO0RCiXk9AeCoGgoEp8EytOvDLe9RzJ0PX4jE/
         35FlCxkVClej4io76GHixGgVWWs9b90nukbTBrRj+UcfQrK2scp6QMG/Fk6+2657o1NM
         8zuYjppShdNSSh3SWmLCcbSOLCMYFMA759OgDETaXX1mYeqanozcJK05iGJeYUtb8OAM
         0lEX7OjnQUr2uPVjrQ70NKL7qabXNuG3p0qNKwMtWl6+uFJNuC/t0pPMahaeYhsTIasI
         t9ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694127179; x=1694731979;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hm6xDACvWtSKUbPK7gTcDW9lvq+oxymOSR8M9f3sWcg=;
        b=ehpve3PtPMJzDEc1eA8Lu7y1IaT8L69ShuxtFAGbgULSBwHYYdSaySVresB33VX1i+
         A/MTrXubAhcyTZAda5mrDWeg0cL+F9UTVaqPThl4Aosq1RUZZMd0JSQ0AFomSP7mvS+p
         0lOQzucbxJ5eXk7Gdib0LAR1NIN19Gu9VwTjZmd2PwM4h5gBNvrv0LIju+3ARnj8kNxM
         VCjOLjWnWJWKxl9hZOjOp5vhupOVZdw7ICH5AnHgzSzvOhDRSmIFtJK015/1dOMYVnmR
         EU0uspO+M4oIIJDRurOFrwNeEPr1lknTpf7eE6GXmLd+O8f/G3AJfH2+0zcmArjrNFup
         UrtQ==
X-Gm-Message-State: AOJu0YzUhOdv72howP36EGT88KkDqeu6r4y6FCpwCJW0ohq34nBl0RsW
	5bklHpdFnQmUZEint4Fcygzc3Fzl4tTmKQ==
X-Google-Smtp-Source: AGHT+IGRnPG2Uw2NlAQ5NfRzk6IqdqhFbpdD1Pmc6H8pZ4DewSF/mE16qDpc13Anx+HGbU34bj8llQ==
X-Received: by 2002:a05:620a:4687:b0:76d:af99:3af1 with SMTP id bq7-20020a05620a468700b0076daf993af1mr1033719qkb.52.1694127179176;
        Thu, 07 Sep 2023 15:52:59 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id g8-20020a05620a13c800b00767b0c35c15sm123508qkl.91.2023.09.07.15.52.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Sep 2023 15:52:58 -0700 (PDT)
Message-ID: <4efbc4b1-973d-15f7-5f43-fb0f7ff82c45@gmail.com>
Date: Thu, 7 Sep 2023 18:52:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <D6A559C5-8B6D-4970-B55D-D4D229176390@apple.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <D6A559C5-8B6D-4970-B55D-D4D229176390@apple.com>
Message-ID-Hash: 5774AG5F4NOZ47QJE63UUGJAEBHU2SWR
X-Message-ID-Hash: 5774AG5F4NOZ47QJE63UUGJAEBHU2SWR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can DPDK compiled UHD still work with B210/USB devices?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5774AG5F4NOZ47QJE63UUGJAEBHU2SWR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 07/09/2023 17:31, Victor Levin via USRP-users wrote:
> Hi all,
>
> I have a system that uses X410 with DPDK but I want to also use B210 on the same host. Is there anyway to have UHD compiled with DPDK still work with B210 (USB) or is a non DPDK compiled UHD binary needed?
>
> Thanks,
> Victor
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
I don't think that they're mutually exclusive.

IF you:

uhd_usrp_probe --args "type=b200"

It should "Just Work(tm)" -- that is UNLESS all other device types were 
turned off when the DPDK version of UHD was built.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

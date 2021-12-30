Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6D1481C70
	for <lists+usrp-users@lfdr.de>; Thu, 30 Dec 2021 14:24:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 79DD0384015
	for <lists+usrp-users@lfdr.de>; Thu, 30 Dec 2021 08:24:25 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="xNAUFCFp";
	dkim-atps=neutral
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 38F3838481C
	for <usrp-users@lists.ettus.com>; Thu, 30 Dec 2021 08:23:24 -0500 (EST)
Received: by mail-wr1-f48.google.com with SMTP id r17so50437305wrc.3
        for <usrp-users@lists.ettus.com>; Thu, 30 Dec 2021 05:23:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=3xoxF3OBii8ITmD2m/7GdzRN1R2N4P0GJzx24W7SgEU=;
        b=xNAUFCFp1OjQISpeJC/1KYgjJQEORIHhBhg5lh4pgTj7CQXcDc6SRKY2iC66eMB6dA
         Bm+SPdQ0il2utuJuvy8CoaThJw0jzXZWdbNWmlwL7n3qVSbg5VXnz1UQw6/7Ww6UCn27
         pNZDemagT6I/luTiwji5NLs7lamygdsjtygEozOXidsldLJr/7JG8OcAf71BD3QeWTFX
         SvLu/jSEG36S8J0n0mbPU5YAWEstCDFe5rP0lRWWl8otf9L/dj7mEGoey0yHvYt/1qRv
         HeQZknRvo6oKXmynGAxcaGGFLHwx5J2g3y28PiKuJ1sedE8b3Akkl4N3Bl/jgc4HUrz8
         WGHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=3xoxF3OBii8ITmD2m/7GdzRN1R2N4P0GJzx24W7SgEU=;
        b=IKPpDCTSBb5bHIRdmdTg3vJ4SDrkp0ERS+j3Sl6D2ce/GHgP34L2qFLRxSVfdjhbCI
         hKgt1oa7KG3YsVJH8g6n134XoEydQHOF3OMlLss8sJs6fAsbK5hl+DzgTbJHIQPNTk3h
         S9b93duZ3RLPRA+0Xxb/FugtzGoaL2odIB6p3V0KtP5YMS4Ox8JUlrRGARSr1WCmLmWj
         108TRGUcuYhf6ABcdhnbF/EZxdxxN2aLfeE2bwUK486MX+X4xv0FAVXNXgsLt7bU83HN
         HgUpv7/qQb9IwTVY1g99SN82Go/A9JHgWNeMtY6ZZrfJ6pzlYz7lySDh9YkyojoEqKdT
         uXLA==
X-Gm-Message-State: AOAM532TwmMaVRHxc7XXy0DwNPqG4lq+q7UjWXMwmMpjZGi7j+YJpc+3
	kiXKnSWOY7iZQxbl2/DxyMlsmX+VFPR90dAs
X-Google-Smtp-Source: ABdhPJyTpxpH6bsAW9QO0+RSdhpyfcZgxktaicouDUnMM55diGIwJ/FFtnxCPY2FPobq7PL9EtzIrg==
X-Received: by 2002:a05:6000:c6:: with SMTP id q6mr24962649wrx.181.1640870602937;
        Thu, 30 Dec 2021 05:23:22 -0800 (PST)
Received: from [192.168.128.8] (HSI-KBW-46-223-163-31.hsi.kabel-badenwuerttemberg.de. [46.223.163.31])
        by smtp.gmail.com with ESMTPSA id m5sm21266329wml.14.2021.12.30.05.23.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Dec 2021 05:23:22 -0800 (PST)
Message-ID: <ebe7b6b2-a984-71cb-f45c-f2c7a43faaba@ettus.com>
Date: Thu, 30 Dec 2021 14:23:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <6UuAQNkHTbe1DPjs9gKffsECQGhJqj9mr4J6OueQ@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <6UuAQNkHTbe1DPjs9gKffsECQGhJqj9mr4J6OueQ@lists.ettus.com>
Message-ID-Hash: A6VEZXNVW5MLRGOQQYM5SU6P3CEUZTU4
X-Message-ID-Hash: A6VEZXNVW5MLRGOQQYM5SU6P3CEUZTU4
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N320 LO leakage cancelation
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/A6VEZXNVW5MLRGOQQYM5SU6P3CEUZTU4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hello Seckin,

if I remember correctly, the N320 should have a maximum gain of 60 dB, but you're only 
using 10 dB; does the figure get better when you increase the gain to say, 55 dB? I'm well 
aware the resulting signal might be too strong for you, but it'd give us a lead.


Best regards,
Marcus


On 30.12.21 09:11, seckinoncu8070@gmail.com wrote:

> Hello,
>
> I am using N320 with UHD 4.1 on Ubuntu 20.04. When I try to transmit signal, there is a 
> powerful signal at the center because of LO leakage. Is there a way to cancel this leakage.
>
> You can see the problems at attached pictures for both CW and pulsed signals. Pulsed 
> signal recorded over N320 and replayed back.
>
> Seckin
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

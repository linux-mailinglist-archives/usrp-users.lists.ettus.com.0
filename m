Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 066079B4F2C
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 17:21:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4A4ED38662E
	for <lists+usrp-users@lfdr.de>; Tue, 29 Oct 2024 12:21:26 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730218886; bh=6stcGOukmCPBoLzi+RprHlgTv9pv0MOAmCqDET+439c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=cwEnBRBYJDU+dVIEz2+e4gDVrAGSAw5wiFzxAvsy/Ef/gWQ92DSreqUefie5XaO5W
	 FtzDRClDqVkutOEPymxLdZIjsuSDixHKatnqsKgVpsaS3gOoBdF5eYtCEEexJfjJcx
	 nC2+g17acAjKoy4VTlJkNwdJYq3AwyBEI+i0d2fT0QwGnzOF1hLcS6jTpo8xlI9VEf
	 hGFKz8vmLHzcgvqr5H5zV/ui4djayUBuszd5W5qaBb7xVpiVzCzxU36T7MXkon8cIC
	 oRT92LMgHum2ELyjSPWSPXcU1wx/nypgYeALGaIbUfZIjvrTHh2mvaeqjSUdtfmyv+
	 tADRVbhm9nOdA==
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 2FF25385F0B
	for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 12:21:13 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="F5f8YLuH";
	dkim-atps=neutral
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6cbd57cc35bso54832186d6.1
        for <usrp-users@lists.ettus.com>; Tue, 29 Oct 2024 09:21:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730218872; x=1730823672; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=h70bbjTTqaizs+EcEVZzqq0u4m6SHlzm1fEr76PVf9k=;
        b=F5f8YLuHMrmOG5nTAOiM2uLLsP17nvb5gOOvzn+DEWajWRk9IY3NLsP1ih3dLlznbl
         KsWbXWBQucNtGMWmnDok+bKeqr9X9AVmswAfN8t0Qx1LFT6HGRjxJeSp9byJe45JUUTV
         UmIrAFQE/03TJIwggys+DZl8Ltj1wC0uAefU18Is2zOtokYXuRcqvzMfNqjoxDQKbafB
         utgdub2KLkHJDnQFyrf2V7y7VqNaw7PLyW/lLQywxNH98kDKUUop41AdEf4z7vhha4uM
         7AiFuO3/wAHEsRH2PPOYqUvnWvtz3tYPlgik3nwJKuaXIMUW2D5Op+owVOaPZtgiRJYM
         n5wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730218872; x=1730823672;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=h70bbjTTqaizs+EcEVZzqq0u4m6SHlzm1fEr76PVf9k=;
        b=olMhZuL4Ntno9UwQbmUMdMuZcNzHbc06vmPk+Ij2/aMo75CTPj36NN7UfOzDt24PRn
         lPgq6uvyJ+mT6+vAK1h9ybGkAfCtIo0QkLWcaxbG0QIZMQmc9DK2ARtP7iz0NLHsfMF2
         hg7FkjQcDF2oHWhfDj34wqAIoUvYnhXfbO05HAN9ho5YWdPHRZx5Um7DLLeucofTYjO5
         0E43Ubv7wKXxuuDQ1OLNKgkdtx2jntTA7KDINYyMdIIIYR8oFqVZwhLHje+GeQtLUEop
         8rVnyXi15x6h1YtMRbK8tEofoKWQdPB+SRc/rXKWvTZJsf6oczfOo3SwrmDNXWIhyJf8
         x8nw==
X-Gm-Message-State: AOJu0Yx10QcuRB3zD7o4vJ9LSinKjKr5VYFERdffxi7wOtfqwhnJILx2
	M0f6AGgL/3eFp8WlhMWmYfKxTuWe5kVMB2yqIh6iFFqvISEZL20nWKfe2A==
X-Google-Smtp-Source: AGHT+IEmMe4JdbqHInJXM+JKsxVzSO6zwUHmv4pALQjEtJnJVpXE28Lnh2F7whvZcr8e75IjNVL01w==
X-Received: by 2002:a05:6214:2c0e:b0:6cb:e9da:bd4 with SMTP id 6a1803df08f44-6d2d91a5301mr46380376d6.5.1730218872375;
        Tue, 29 Oct 2024 09:21:12 -0700 (PDT)
Received: from [192.168.2.170] (bras-base-smflon1825w-grc-05-174-88-53-166.dsl.bell.ca. [174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d17991e1absm43542036d6.71.2024.10.29.09.21.11
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 09:21:11 -0700 (PDT)
Message-ID: <b0f4b0ae-8e7d-457f-8606-bc7818c1714e@gmail.com>
Date: Tue, 29 Oct 2024 12:21:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <WGfcxlBtqxO3ZgfMtpMzIJmBaZS3j2LEPtDNutE@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <WGfcxlBtqxO3ZgfMtpMzIJmBaZS3j2LEPtDNutE@lists.ettus.com>
Message-ID-Hash: 2NUABZV5ASLHA6LP2YAP7FXWKEAIJF63
X-Message-ID-Hash: 2NUABZV5ASLHA6LP2YAP7FXWKEAIJF63
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Error: RuntimeError: Failure to create rfnoc_graph on USRP N310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2NUABZV5ASLHA6LP2YAP7FXWKEAIJF63/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 29/10/2024 11:42, pigatoimdeafrancesco@gmail.com wrote:
>
> Hi Marcus,
>
> N310 can be pinged with both addresses.
>
> I set up port 49152 and should be listed:
>
>
> $sudo firewall-cmd --list-ports
>
> 49152/udpv
>
I'm not that familiar with "firewalld", but a protocol of "udpv" should 
perhaps be "udp" instead?


>
> however, the problem still persists
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

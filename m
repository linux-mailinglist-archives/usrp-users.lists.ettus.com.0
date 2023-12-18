Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED72817732
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 17:16:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 580F5385938
	for <lists+usrp-users@lfdr.de>; Mon, 18 Dec 2023 11:16:45 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702916205; bh=MjIBZoOCORowteDHhleq0kRNHPUVdJU+rBPPVZEcYIQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=I9mF7rACg3hdlCKXajHH/AjPzzbXH4TRRXiuRHRePi5NjY+dPW6hcwKQoyVeWrU2v
	 6kGPK+nSskbGpJ4KqyHVXsq1C0GtX9p60XDidKEvNzQ/o2JwvaRoPSu+kLVN7y0/4C
	 NkIq8HywhDyRd9PwgO0PGbIWiWzkYfFizgKnY6dMy8opQHcZR/4Ow3CcCghJw+lbdX
	 Kq6a3hVCrKrVL9s/xPUksQkWTg5828YtV/fL7QgHzhULKQKo9GZ0C3BgU9PfqKlfpG
	 DQCdS8wzpwIXCb1meLXTg9dksqkjii1ZkY2DyF/+rX/DbI7pNea+m5YUDyTm/xTyqz
	 5qMyWZrEqLzkg==
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 19AAC38526F
	for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 11:16:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="0u/CtWq9";
	dkim-atps=neutral
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-3366af69d4bso811230f8f.0
        for <usrp-users@lists.ettus.com>; Mon, 18 Dec 2023 08:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1702916171; x=1703520971; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wZsZ5bvh7f/CJEAl9NNnxY0yHoLbwH8qyt2mzawTN7s=;
        b=0u/CtWq9jZwRPR7HB64+4Q+YmFOT7VYZ0L7nGSw8840ue2UIep4xfJNnl6w5ijfCyz
         OxSTd5lykqk8RU6o4fGesCw6rvxSzR+FQGW3k0AiXKHn5sSYy6OYnjdpN8yooeCrMzTK
         N4MYpytSdXBjF92nQ6VmImZfJOczGLcwU72A/BOmMPK8EGi2F2FSJDA1derDxdXf4nOX
         QzAc8tX3mrhBioBPO6XYwwiAJHZV87l+pc4gA+CL5/Y8DVWa8WOZWUsUNXMhZZBW3Xkc
         lhrlZgaaDwDq+V6gJUgkX65RlR09QbxRs6iGgzDYyqbsBQia3bBuqjGkDuYZB4nTkBna
         EwSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702916171; x=1703520971;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wZsZ5bvh7f/CJEAl9NNnxY0yHoLbwH8qyt2mzawTN7s=;
        b=GCSSToPv8UwQxYKetf9I6392o917dOom3zt5prhRrPogVOZGRs9epTZjz6iIFzSia9
         etikRK9n3/WABUPjMYLo8KsjqmYqBPEcI1zDVMVDZ4kRy66w6k/TjziZEyaKHcVTNb3x
         SiDxFaKKKPmmgQh5Qu+jRuCtSr5SNluFoZ2OlCU63nLyD41l7z/PDJVLniCSo3TClfwJ
         UZ9ULQDZ7JMPAYjp78U8hoTtTyDuUWpCYLfyFBgWSvQ+GUgR1KBMSGNT7FVxiYbqsRVo
         P0E+IlkNbR006A1GqJp3HWJVUEA9q1hloz9sORoF0tFXoBKMyDChc4h+Zh0jbUevGG8+
         QYew==
X-Gm-Message-State: AOJu0YynCvapJGt264mz/brh1fBQ2N/fgOvIgLu7c9bx1DVNQyaza6zf
	hgd7anEUVOPqfAUqkUPNfFsqQ2n/6H+/vQWMviYxLQ==
X-Google-Smtp-Source: AGHT+IFUjWeNxg31zVWIYUO3liGm6Ol0/wLXzV0xPuS4Y4KXWByaeHnyn3w/VCD58XlvDUxh62vMaQ==
X-Received: by 2002:a05:600c:4d0e:b0:40c:23ed:6d69 with SMTP id u14-20020a05600c4d0e00b0040c23ed6d69mr7851153wmp.42.1702916171119;
        Mon, 18 Dec 2023 08:16:11 -0800 (PST)
Received: from ?IPV6:2001:9e8:3853:b600:10fc:1619:bea3:90d1? ([2001:9e8:3853:b600:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id o3-20020a05600c4fc300b004042dbb8925sm45260731wmq.38.2023.12.18.08.16.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Dec 2023 08:16:10 -0800 (PST)
Message-ID: <7b622ac7-9a29-4df2-83a5-31454dd60558@ettus.com>
Date: Mon, 18 Dec 2023 17:16:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <InkWHIlNo7WYrkVjT0Ab938c2c9N0oJhSGLaNRP2FAc@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <InkWHIlNo7WYrkVjT0Ab938c2c9N0oJhSGLaNRP2FAc@lists.ettus.com>
Message-ID-Hash: J74T563DSPTGWFGTNQS5S7WKTGCAS6ZT
X-Message-ID-Hash: J74T563DSPTGWFGTNQS5S7WKTGCAS6ZT
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N310 A timeout event occured!
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/J74T563DSPTGWFGTNQS5S7WKTGCAS6ZT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Purva Joshi,

let's pick this apart:

On 18.12.23 12:41, purva.joshi@phd.unipi.it wrote:
> Dear Users,
>
> I am using USRP N310, with UHD 4.0 version in Ubuntu 20.04. When I want to test my uplink sniffing using N310, it gives me following errors:
>
> 1) \[WARNING\] \[MPM.RPCServer\] A timeout event occured!
not an error, just a warning. This might be benign, but probably is symptomatic of 
something else.
> 2) \[WARNING\] \[0/Radio#0\] Attempting to set tick rate to 0. Skipping.
Another warning, not an error. This is something that happens when you don't initialize 
with an MCR, so probably benign.
> 3) \[ERROR\] \[UHD RF\] std::bad_alloc

This! Is the actually point where a problem leads to an error. However, that logging 
format looks like srsRAN, not UHD to me. So probably, what happened is that the USRP was 
not correctly initialized by srsRAN, then srsRAN asks UHD for something and bases a buffer 
allocation on that, which then goes wrong. (this is but a guess).


Could you do two things, please?

1.) Make sure `uhd_usrp_probe --args 'arguments as specified in srsRAN'` works (please 
redirect the output into a file and attach that!). The arguments, if any, are specified in 
your srsran config under `ru_sdr:`, `device_args`. Generally, please also attach your 
srsRAN config .yml file

2.) Try to run this on a more modern UHD. IIRC, you can install srsRAN quite 
straightforwardly on Ubuntu 22.04; using `podman`, you can try doing that in a container 
without touching your main operating system at all (`sudo podman run -it -v $(pwd):/data:Z 
--network=host ubuntu:23.10`, then `apt update; apt install software-properties-common; 
add-apt-repository ppa:softwareradiosystems/srsran-project; apt update; apt install 
srsran-project`).


Best regards,

Marcus

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

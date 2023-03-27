Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3659D6CA994
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 17:53:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 29EDE384346
	for <lists+usrp-users@lfdr.de>; Mon, 27 Mar 2023 11:53:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679932423; bh=RTjiWAPCQx/V238aTjUCuqEX+oBGRKhEVEB9d0HcCC4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=OpxAXNl7hlng65+jf5/DYQXB27zs9XUupy+B6H8+HH3lXHO3MDmJJalZbp83DUMlt
	 Z0rhFzcC7uKPmH6ZpHkfO31rR9eQrYhXfak/wBKLSeeHXZouMaW5w2iy03Og2pMSTp
	 +hPU1HJc8N81OrHwCKJM7mK73RoN0VGLQQo80uJ5pUfZoHFWidtjxxydOmSiwturF9
	 IIEsIRGt/aXeEqRcFwnIdFZkXodkvtw6HNgqOMOudLp0Wm4YASkTUwugZoiTl2phog
	 38Uq+AI5PD7ZwlOlnmctALWc7fJLzzFL1nedKvgpro+i76uGfahtGqYmd2eK0jJgWS
	 pnzkUhaq50sFQ==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id BE3CA384346
	for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 11:53:36 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="4CsW1Qhk";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id y4so38237838edo.2
        for <usrp-users@lists.ettus.com>; Mon, 27 Mar 2023 08:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112; t=1679932415;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JUq6yP2oQV3kpeFT+nwnQ237VtMXwHCIncN7TJhATvo=;
        b=4CsW1QhkXVpmDpeZsoj/QG2KY9DJlSHXqC/6tRO9y3aOzNif2CoXCeAQZN6h4FCAkn
         nivsgBtQpnJuwnaIuj0o6ExYwEh6F4QCEsnaRPfp5d//aI+ojebOIUGFK4odqnk6Yr9f
         SQIzOjqZIJDygqZXJjnzqP/u+WppKdxsl2BPLQ93Zhd+CIwsA6KRYo5WODDYwG8frLoA
         lk07dvCgvSCLyANv6zu1SMkn4jgZYM/qq4nEmQWn5ld3aPyMDk2YqOEUAVV8i7oQcEJQ
         VdfR/lRQuxzuVnoYVbfjJKnLSpPGX6aOau+2Odosi3LrdAnBBG4bHknyxCaMSMfINcCz
         SO0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679932415;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JUq6yP2oQV3kpeFT+nwnQ237VtMXwHCIncN7TJhATvo=;
        b=46K+cS3peIvcQkQ0hWObgRr+4p58NGh8v6LTYsU+8EOsGQtA5AQtJfXZboc09QFzMf
         BAy+2G40Or71EyuQyOQE2XkjLK8ihfl0QNlaN0P9CewCtVALMAFohfF2vgtX8MkCS7E2
         RvFqlAUdTnD6yFgsgoDU00EHYuGSL0YFMN6WlM1W6Ui+OBiosbEUvRfC7E0cZ1IyVpE9
         xrz4Vh1dJIFpvQwAkxCkknRhq5OF91NEqDttd0Vs23AWef/J1iD1VW5OWrY7kV/qWI8M
         HWth0xECL3gVF6JGs5wp1UAj6tl3wjQASqqchTARz/20RaxsC9PtTcwKjNKC9WSHYGKC
         4rcw==
X-Gm-Message-State: AAQBX9eEkEGQNd+WL/167T55dym36Oz8ex3poOQNFP+4VedDVMpi/vc1
	QtoatvS+Y/L+u+hnggj3VbbRbmi6nL4xydWf1VyiqA==
X-Google-Smtp-Source: AKy350b8lkd2SAq9Zh+4ZsYwjY0wUcqWnT/fE42n2XaHjKwWF9etAjmMRj3EaRor6C9D/YON17vs5Q==
X-Received: by 2002:a05:6402:445:b0:502:3ff1:2fcc with SMTP id p5-20020a056402044500b005023ff12fccmr4769050edw.35.1679932415371;
        Mon, 27 Mar 2023 08:53:35 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3877:800:c317:6064:27d7:e952? ([2001:9e8:3877:800:c317:6064:27d7:e952])
        by smtp.gmail.com with ESMTPSA id z21-20020a50cd15000000b004acbda55f6bsm14828057edi.27.2023.03.27.08.53.35
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 08:53:35 -0700 (PDT)
Message-ID: <1cc6f5ff-cf57-fc56-e0d8-a17e8dd6159f@ettus.com>
Date: Mon, 27 Mar 2023 17:53:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAJQWkW7MjbjvCsrQ2dcmTSQxzN-qvh9f6DGHtznUEXFW5DqhkA@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAJQWkW7MjbjvCsrQ2dcmTSQxzN-qvh9f6DGHtznUEXFW5DqhkA@mail.gmail.com>
Message-ID-Hash: WV5RAGRIFDDWI7U2E7TQTRHXVSWGNHPR
X-Message-ID-Hash: WV5RAGRIFDDWI7U2E7TQTRHXVSWGNHPR
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Host-usrp communication with VPN
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WV5RAGRIFDDWI7U2E7TQTRHXVSWGNHPR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Ojas,

it's a bit hard to know how that VPN of yours is actually set up. In general, doing 
arbitrary other networking on the same machine has absolutely no effect on UHD, as long as 
the packets to and from the USRP still go through regularly.

What might be happening here is that the VPN establishes itself as the default route, 
including for the broadcast address and other addresses of the private network you only 
use to connect to the USRP.

Best,
Marcus
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

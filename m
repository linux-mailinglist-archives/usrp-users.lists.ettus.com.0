Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E79E991A9A
	for <lists+usrp-users@lfdr.de>; Sat,  5 Oct 2024 22:17:13 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2FB39384FE3
	for <lists+usrp-users@lfdr.de>; Sat,  5 Oct 2024 16:17:12 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728159432; bh=cmhdpRmksO76TDM29Qemaa8gvHAz2EaYvmWMl8jklag=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mmKuBbJqkFqvDA9w5srqe/q3V4qj/P6vTTOuW7DFN8gy7aCPoZwpCj9IFid0Hof+6
	 /SBUsQXjFSkGHouhdIo/hQ0W9xN5Q4/hbwhmghJ4Htb/N7kt2Mk8MBi0GsTvmdSk5O
	 p9dAxdXsqqUgAuJkv9A3yBts6tDf6Okp6h3b9XcnTEOLTZNre1SHiGU3ZERIawTPac
	 oFGiZgM2Ir3OJ6hJwHoCX98SRv8BXS3WvYZ56u8QMSrWYNmdpqq2LOqFUNech95TS2
	 ZH0uTcqrXtEWlt+jTgSfJXerWJ8XXBbcZrjz3IvBcL8kaw8jAL3V4jgsYC9rmqPtUx
	 +JV0l5744vEPg==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 8684D384E82
	for <usrp-users@lists.ettus.com>; Sat,  5 Oct 2024 16:17:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JwLsBb5d";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6cb2a6d3144so16133066d6.2
        for <usrp-users@lists.ettus.com>; Sat, 05 Oct 2024 13:17:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728159428; x=1728764228; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bqj+x4u7UPRvHqvSrGMSRBK50sU5KurJ0XA/Twaxals=;
        b=JwLsBb5dcZ3vZO8hKbILfaPDh1H/o1D+Tcfo1rUDBuR+uFCMRnojGIoYE7SnvkbHhK
         1NTVnT+Iw6gBVo0/v3CvVtq5vuIVPwY02fNjGh+L9u+R9IjXAr/CJeV2MqFS8aCHGWjS
         F5ffAJ8ET7Kg0GLBGLVOrKWKgKMk0XbGi4b0sKd3ZXCRFrioB97H7sOHky8xhDdTPGrD
         aG4E/s8G0L8/jl2Tmj2R6WsH0M3M12Y7WvnsXleyZJVGw0HjQ6j/VAVbp4DUoQb0tW7W
         taQa19RZXCFDwnqET1lMoYq0FXiva259yiV789tU2WW18Jtc2vQYKvA5dWhTEOtxyNUh
         wDsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728159428; x=1728764228;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bqj+x4u7UPRvHqvSrGMSRBK50sU5KurJ0XA/Twaxals=;
        b=pa6U0pS5k00EuTNCGssumU16b36/gqOghXeld+HYgST93OLj5p5mox4EkJ2thqYrsN
         Y+sZVn/5sLBucG/AlOWASyGZdYfrXrkhzKvZUyb7VRWab2Oo3WquT8J35xTZbXMrBWpw
         hPyrxIeoibjZxS3K5AhOH6HjNJG9hCE1bZ6EjMZQYyjONthOD4uivMpNb511DEEd5mS7
         SWb6W3Ne5TIR9ot5BOt2AXfy8JcdSArT95Hr/TSOgWmM+ERfhpc1i8UshxBv32rQ8A4P
         FRBqKBWnyc6PX6Zf/YSlwbsunt5Mi5fGNupK/dmNat+cJYhH/Ouf7s57UJUh2PckknsF
         F4Vg==
X-Gm-Message-State: AOJu0YyGVzLf7f3Y7mjJUrn8lTzSUACwz13JW8hIm9arMY1z9DZeQpG6
	SCXrYLXTfFwA2+/doP6Wm9Qn5yQDCMPJPeySGeL2YZiS69FBw+FrXSuSTw==
X-Google-Smtp-Source: AGHT+IGlAOdwsR1KX2NMB8yTtOSSuvyf477qHzvkvbZP1OGBPjRpIz7XesMbohfX/+EN5X3D0vC72g==
X-Received: by 2002:a05:6214:4b0f:b0:6cb:3c08:31bf with SMTP id 6a1803df08f44-6cb9a440c49mr124160926d6.12.1728159427627;
        Sat, 05 Oct 2024 13:17:07 -0700 (PDT)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6cba46cd0f4sm11145016d6.8.2024.10.05.13.17.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Oct 2024 13:17:07 -0700 (PDT)
Message-ID: <91f06c25-bbb8-46d8-93c4-6f7f5bbc2f44@gmail.com>
Date: Sat, 5 Oct 2024 16:16:56 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Q8Zi4kYkuUCdqDwPBEJVCYuXvohIjLfcRdP4nn2w@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Q8Zi4kYkuUCdqDwPBEJVCYuXvohIjLfcRdP4nn2w@lists.ettus.com>
Message-ID-Hash: 2THBKXARYB4E73JHAKN34QKXGW24OLKS
X-Message-ID-Hash: 2THBKXARYB4E73JHAKN34QKXGW24OLKS
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Using 10GbE to stream receiver data to remote FPGA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2THBKXARYB4E73JHAKN34QKXGW24OLKS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 05/10/2024 15:54, steve.wakelam@roke.co.uk wrote:
>
> Thanks, I am struggling to see how this would connect to the RFNOC 
> block. Are there any examples as to how the RFNOC block is architected 
> to allow a remote streamer?
>
> Thanks
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
Assuming your "stuff" terminates in an RX streamer block, I think this 
sets it up:

https://files.ettus.com/manual/page_stream.html#stream_remote

But I don't know about architectures that might side-step the streaming 
blocks in RFNoC.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

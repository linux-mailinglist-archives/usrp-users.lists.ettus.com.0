Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AD5150ECA
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2020 18:41:35 +0100 (CET)
Received: from [::1] (port=33906 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iyfj4-0000V2-6Z; Mon, 03 Feb 2020 12:41:34 -0500
Received: from mail-qk1-f173.google.com ([209.85.222.173]:42091)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iyfj0-0000PT-S9
 for usrp-users@lists.ettus.com; Mon, 03 Feb 2020 12:41:30 -0500
Received: by mail-qk1-f173.google.com with SMTP id q15so15008068qke.9
 for <usrp-users@lists.ettus.com>; Mon, 03 Feb 2020 09:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=3KAilKrjwbHELYoxeFV3XVSJL43g3earE8PIgtwzZPI=;
 b=TJemmRk3d4NFum4A36emyoCyV8o2cRPG4laKcHhlMioYUmm9KLl7wd3pApuUtPtxcZ
 3JBuPfCWuchPLlZVk+4J4URFub31C7LWNNsBcRuJSoALMfALyUJAdoAILWOA2Sy9lQQ0
 NiaRzmvp6z0R8/QvdbYl4yGS2MXMeQfiPz3+HLWy4IZXkJ9q1eKCbWD8pqA0usgD7YVY
 k9kfffjMrXNmMNevwW0ILJ8MiMVprV5+sdGILj+hQ0aVUuwswDR5nJ7ECYpkAuA8E0Ax
 kyV7zO9KwrCUdYuzrMgslYQAB1SIyGmWGzeO+R2xciKXsopryzxN4k/k0nK3d1h59xCO
 ln2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=3KAilKrjwbHELYoxeFV3XVSJL43g3earE8PIgtwzZPI=;
 b=lRBR44M+CLNGazNPNcVHqigbJmFsfhctLPqJd6derHBEJxTodVmbc5/DMUOtErh5Pz
 Pt2zy1T+n9wj7h0HY1NS78EPT1lWQI72ZLkWxsH/D0fwEGA100gbU4r5YfBjVH12HhSc
 9gvZ0p/k5SQpksQ2AaVFLuLl5tp/55IGlJ+Z9hfBMDKUKJq9LrBkaO2cej3q5LG2HIXf
 NJ50ipWK3F1MELKwBXSo/OmzmwPWI9k6FCcbPZNbvJBUDQEwecdcDcXfoV3VQUhX6CVS
 +euQV1SAuwlafOWaW/3xCX/6kS3DYRwjrwBxkVCvaw1xkefGq2a/YQsI9iaajp9m8wyF
 3Z6Q==
X-Gm-Message-State: APjAAAWKjUllUS1yRtKLjs/pYcoQZCT1PgNxdO2wMPzc25prds95cO05
 92SGLdBE6TxB48mDwMaxZQu+rEoI
X-Google-Smtp-Source: APXvYqy/9ZqWEPzUCu/TcDhwoO8ASxIRWY6Iz9poCl+VpPhzrRd8aNteP7GcSOZ6bHEIovhMbimecQ==
X-Received: by 2002:a37:a451:: with SMTP id n78mr9481512qke.481.1580751650220; 
 Mon, 03 Feb 2020 09:40:50 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id d25sm9932055qtq.11.2020.02.03.09.40.49
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Feb 2020 09:40:49 -0800 (PST)
Message-ID: <5E385B20.4010005@gmail.com>
Date: Mon, 03 Feb 2020 12:40:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CANgrtSVJ2_DKHYU7SU0P2dZaRh2aH9-Ggpq5Uip0Mp9dyYWbig@mail.gmail.com>
In-Reply-To: <CANgrtSVJ2_DKHYU7SU0P2dZaRh2aH9-Ggpq5Uip0Mp9dyYWbig@mail.gmail.com>
Subject: Re: [USRP-users] USRP filter delay
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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

On 02/02/2020 04:40 AM, YENDstudio . via USRP-users wrote:
> Hi,
>
> I want to know the actual timestamp of TX and RX signals at the RF 
> antenna. For this I have add/subtract the group delay introduced by 
> digital filters in the TX and the RX paths from the UHD timestamp. 
> Through loopback test, I am able to calculate the aggregate delay, but 
> cannot know the TX delay and the RX delay separately. The UHD driver 
> has APIs to get the list of filters used in the signal paths. But my 
> calculated values do not match with the loopback delay I measured. 
> Could someone help me with this? I am using USRPB200 set with 30.72 
> MHz master clock rate and 1.92 MHz sampling rate.
>
> Regards!
>
>
So, you use a timed transmit sequence, or you just note the time the 
samples left your application?  Latency measured through the entire
   stack will be MUCH larger, and variable, than if measured using a 
timed-command transmit sequence.

Quite apart from the analog delay that Nick has already mentioned, 
filter-delay will be "shared" between filters in the FPGA, and filters 
in the
   AD9361 chip--there's a kind of "shared" DSP going on there.  The 
AD9361 datasheet might be a fruitful place to look at DUC/DDC filter
   latencies within the chip.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

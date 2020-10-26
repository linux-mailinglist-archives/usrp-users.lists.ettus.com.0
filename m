Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7520F29923C
	for <lists+usrp-users@lfdr.de>; Mon, 26 Oct 2020 17:22:40 +0100 (CET)
Received: from [::1] (port=41348 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kX5GW-0005um-Gf; Mon, 26 Oct 2020 12:22:36 -0400
Received: from mail-qv1-f46.google.com ([209.85.219.46]:43063)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kX5GT-0005oi-6A
 for usrp-users@lists.ettus.com; Mon, 26 Oct 2020 12:22:33 -0400
Received: by mail-qv1-f46.google.com with SMTP id bl9so4549628qvb.10
 for <usrp-users@lists.ettus.com>; Mon, 26 Oct 2020 09:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=NVlA9KZ1bBOAfv85+POTmlSw91UKjDLkpptVvkgOKok=;
 b=U/651ayKmdgo+VEihixwG0X+a1wApKyE68GyCrwFmG5mcWc0JzkZHFklTOvWX6BFW6
 N8CjydnryFM4uQ9UTIOYr2p4eKx84F/k3KxhS2sTAy0XzHm8GU3DFui/QnTQhKElh++p
 Rbx+d7DG+zLS6a0DKkORkzE3or+AEhrkjyw0Vt9JkmStjFOhlazznjfKn0ljIyxd/D+j
 H+eMbxfr9/zHOgpRwDLgshuSBihKc9FXvdjA82P7+Wk2FFl2QOPJ3QHzFMkMqvZ8jbk7
 NloEtUC/K8k8p/VA2v3co/IFBTtwyGodCqKozKwJN79/PChFHL7ndv4UUC7YywiEtwrA
 a7dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=NVlA9KZ1bBOAfv85+POTmlSw91UKjDLkpptVvkgOKok=;
 b=l3YfDrlpJiQNb/WWC0vIk5bxXJ9u4cMcYdbB+IXOXXfnGWDemGrArg4NW2IDbqdM1H
 Aw3AiEyzpsTQcwNjssWZaWjanteqFWots6I2GTAH0MucWbi7k0+k7n1DA/U/OVz6bk5D
 EuaufxW+AwSAuPSotpLv4cqpEKzBUsGz4oYBYby2iWxPrEFYn+58pQXaLR+PQXDh1tRi
 1rnLYnfydD3kH7dITVkVJAGVw73EwDdpzBtHGaqsHORKn2Yrw7j95o0WVJOzutzhlu9R
 CHRZkLZOHWBcjMXMXPTktSD7sXwrdCKYd9udsISxilLWJLVwYPnlwyOEi7Rbe4+SYqwL
 4LEQ==
X-Gm-Message-State: AOAM533XIbW+1e0RfeH01RWoF2kYTXYqFVwxCReUBvHrpeFf+M02nAmy
 KwE07zumeEgTLC9H0F0U8IBUBj8FbuBk6A==
X-Google-Smtp-Source: ABdhPJyU81YJTHEsQTJEjnalt9t0aag5xWx2qEHsNco/LKkU+kNUPjoxzU/gdDNt2ZhivcuLXcMqqA==
X-Received: by 2002:ad4:5748:: with SMTP id q8mr2337249qvx.1.1603729312404;
 Mon, 26 Oct 2020 09:21:52 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id z69sm6903592qkb.7.2020.10.26.09.21.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 26 Oct 2020 09:21:51 -0700 (PDT)
Message-ID: <5F96F79E.3090807@gmail.com>
Date: Mon, 26 Oct 2020 12:21:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jon Beniston <jon@beniston.com>, usrp-users@lists.ettus.com
References: <011c01d6a95b$6570aed0$30520c70$@beniston.com>
 <5F9308DC.3000306@gmail.com> <013101d6a96a$1e911360$5bb33a20$@beniston.com>
 <5F932C22.60505@gmail.com> <013501d6a972$dec8dd40$9c5a97c0$@beniston.com>
 <5F932FEA.4010402@gmail.com> <013801d6a976$9626ab40$c27401c0$@beniston.com>
 <5F933834.8090101@gmail.com> <020201d6ab9a$4717be60$d5473b20$@beniston.com>
In-Reply-To: <020201d6ab9a$4717be60$d5473b20$@beniston.com>
Subject: Re: [USRP-users] B210 set_tx_bandwidth and LO leakage
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

On 10/26/2020 09:16 AM, Jon Beniston wrote:
> Hi Marcus,
>
> I think this may be a problem in UHD's
> d9361_device_t::_tx_quadrature_cal_routine()
>
> This calculates a variable max_cal_freq, that's the maximum frequency used
> by the calibration. It then checks this against bbbw (the baseband
> bandwidth), but it doesn't seem to check the LPF's bandwidths to make sure
> they are sufficiently wide.
>
> Looking at what I think is the equivalent in the Analog Devices reference
> API:
>
> https://github.com/analogdevicesinc/no-OS/blob/master/ad9361/sw/ad9361.c
>
> in the function: ad9361_tx_quad_calib(), on line 3179, they compare the
> required frequency against the RX and TX LPF's bandwidth, and if they aren't
> 4x greater, it looks like they are temporarily increased during the
> calibration.
>
> Cheers,
> Jon
>
>
Thanks for your persistence on this.

I'll put together a ticket for Ettus R&D to look at.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

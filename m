Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 66938228867
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 20:40:37 +0200 (CEST)
Received: from [::1] (port=42958 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxxBp-0007AY-U6; Tue, 21 Jul 2020 14:40:33 -0400
Received: from mail-ed1-f54.google.com ([209.85.208.54]:42790)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jxxBl-000723-Gw
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 14:40:29 -0400
Received: by mail-ed1-f54.google.com with SMTP id z17so16002870edr.9
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 11:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=xakh0mgfRtvkojlaqpQAe0cYNiC5wEclZO08kLdWVxM=;
 b=VnEENWo9TpQJ/ufMKSXITf5I+sxr+Aefs4mPypFkZqqUn4gNiMtaaeRHg2K0sYFoV2
 /xwfB0bTSqzzM2WbayuEESapjUwEPaaOy7T3nXJyNHU8E2aux4E7JACV6xMPe205y8SS
 +aeD01PqA+Se2xoXCjagtF1qQLb+uQcqC5jx14mnnrq3Z1ojcgjE2DzN8yB0RutSqMWj
 QoVFiEQjESw3Rvl4n8lF3OwQ6r0kScQv7HFVFocmFCcHB4DAOOnhgZCmofEuen6sX17j
 mszeVXYuwzQrauKfBLMczZo04BQAOTQasVbtl4+GF2l3q0aplHEKfUrKdrOXgzAb1AO/
 hnnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xakh0mgfRtvkojlaqpQAe0cYNiC5wEclZO08kLdWVxM=;
 b=oZOE7Ug/tKD57SqI/FvyW8JPuuipwwuvylj/b9HJTEfLzyDVdKxhcNrBnhZSQcGCro
 L4s6/+EvaNbnJn7DBr/dMLFFe/8pyLJUIAB1/2uCyYH06aZ8yldWcfvVsJh1YE75bEAo
 shv2BA7gH+SJ6LJUvSH3EOk748Zi+RfD104m5QeTplDWA2B2CUTDo8Qj0arhGy5YTcd8
 K7mV9Ean3mf8qsjn+xK8H6Vx3Ol3MTA358xZZHNHPZeNnEIBvcSLrcvYLGT/P3Q7C8Y5
 lcJY27YuTSatE0QZiYjSEsxa1WdSwfSCAzQER98QWYUy8n5PtlCy7rHmOqpIM/ZlAFnU
 DUaQ==
X-Gm-Message-State: AOAM533JAfLrBuyJtKdFt0Pu5xeOqF+cjmsg4yO/F9/PdKRwzm9gHKVS
 1Iaf0oyteRtiv1gJnu5rOOmc5zqb3PiHuQ==
X-Google-Smtp-Source: ABdhPJyWAHQhT4VGvmY2xC5Ppi6Uk2Oql2ChbiHiQN12qxDthcAvue6/FhHifRhFh/h7U0jvmfbtFQ==
X-Received: by 2002:a05:6402:1687:: with SMTP id
 a7mr26845655edv.358.1595356788240; 
 Tue, 21 Jul 2020 11:39:48 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-150.hsi.kabel-badenwuerttemberg.de. [46.223.163.150])
 by smtp.gmail.com with ESMTPSA id g21sm17868340edr.45.2020.07.21.11.39.47
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jul 2020 11:39:47 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <CAN6+RzkMFo8AtOYqM=i-56KKBkeZ_ss1nogCmDLpt2cY5K5FRg@mail.gmail.com>
Message-ID: <f67cfd2e-7acc-9950-d1b9-545aaaf9569b@ettus.com>
Date: Tue, 21 Jul 2020 20:39:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAN6+RzkMFo8AtOYqM=i-56KKBkeZ_ss1nogCmDLpt2cY5K5FRg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] gnuradio-companion can not find RFNOC blocks
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hi Cherif,

this is typically an issue encountered if you didn't install the blocks
into a directory GNU Radio companion looks into.

Make sure that you've used `-DCMAKE_INSTALL_PREFIX=` with a prefix that
contains a path that GNU Radio looks into; GRC prints the paths into the
console when it's started!

Best regards,
Marcus

On 24.06.20 20:03, cherif chibane via USRP-users wrote:
> Hello,
> 
> I have just installed RFNOC using the app note:
> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
> 
> I used the manual way because I was having some weird problems using
> Pybombs and I am using X300 under Ubuntu 18.4. I can successfully use  all
> the UHD commands, load FPGA with new images etc.I can also successfully use
> the Gnuradio-comapnion gnuradio blocks.
> 
> But when I use gnuradio-comapnion graphs with  RFNOC blocks, it can not
> find them.
> Here is the error:
> Loading: "/home/rfnocdev/rfnoc/gr-ettus/examples/rfnoc/rfnoc_ddc.grc"
> Block key "variable_uhd_device3" not found
> Block key "uhd_rfnoc_streamer_ddc" not found
> Block key "uhd_rfnoc_streamer_fifo" not found
> Block key "uhd_rfnoc_streamer_radio" not found
> 
> 
> Any ideas What I am missing here.
> 
> Thanks,
> Cherif
> 
> 
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> 

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

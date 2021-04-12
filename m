Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 146C535CAF4
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 18:21:27 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5A6FF384B97
	for <lists+usrp-users@lfdr.de>; Mon, 12 Apr 2021 12:21:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KmZuTIfb";
	dkim-atps=neutral
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id C3B2E3842BE
	for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 12:20:37 -0400 (EDT)
Received: by mail-qv1-f50.google.com with SMTP id 30so6539570qva.9
        for <usrp-users@lists.ettus.com>; Mon, 12 Apr 2021 09:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=nvFaZAys5ltUxJyI13P+jMCdfgrdrtSDPOrh+gfda+M=;
        b=KmZuTIfb269f3k0CFEogOiPfpiGwc2E0e5eIyPYrDLb+luHBfrCDQlznywakSbX3sU
         qcCw5gUATIEk3qHwOia/hthxFRrxd77T1hMwh7gmVhfXnn4OiPxVSX49gIEAdWh2tkiT
         rs3hW7O/++HJs3zjELJbP4cdaLiKPhvdzwOEcujW+YtZBRL7BUu8RyMcwi8TeV2fwuA/
         GwT+1FuBfPoWLUicWXrGKYWUHtSJShk+IP9tZbbkx4Zbdz8GK9BkTB5LL3eG7QHOzV+6
         WiQptRjYtEAGPXi/RPKvKcsAHfeBQigflfkc3MnvVYKblIiCc5VwIhVsus+PHCIoKcS3
         dqrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=nvFaZAys5ltUxJyI13P+jMCdfgrdrtSDPOrh+gfda+M=;
        b=trXU7AuE5c+aB7HU1/Qi3JNMSkvCLPgNvS1WM26uH44Llh/eXtQ4iMrwDn913m4O92
         NokEp8j95ELHhu7MG6mxdFB/vSv3JEZkaOVTd7/Fx/tfCk9aZbHqrkVeGiQIVOCbFPal
         fdVHhH8Vj4+ue0XwGp9aCF41iVgNAOdEVMzR5IAsCnG09egK/rCUIxEBxroYgIGpXPDd
         YE51POA+3+4Ib6CrIqfRjUqERiTb2WDCRLRWdGZDm/s3wG2awCz6bYyUHVTCXRtaIm3B
         Fmy05KO1qiN+hEkEqaK8XsEpmcxjU3NyWCC940fwYztrLIlDIk7COxMz4b0vk+D8vQ+G
         qc/Q==
X-Gm-Message-State: AOAM532RMastxkXFrVmiE9y5gTyvvINMbuQc3UJNc8eca0iX4SjaIb7i
	dRcCr3umWvE8aazGVeCnmMJPRKXhjzE=
X-Google-Smtp-Source: ABdhPJzng2Yv+kBHziyoow6l/UhwOKfgeNAHSmMC/yQjx4G5gTaOea9Jwc9LT1ewTluDCyISDE/z0A==
X-Received: by 2002:ad4:438d:: with SMTP id s13mr6388817qvr.59.1618244436894;
        Mon, 12 Apr 2021 09:20:36 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x24sm8006301qtm.95.2021.04.12.09.20.36
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:20:36 -0700 (PDT)
Message-ID: <60747353.1070808@gmail.com>
Date: Mon, 12 Apr 2021 12:20:35 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <JA2MRIzFOSKLo9kP4Ql6TOblW2j1MCRkMV0mVGcXg@lists.ettus.com>
In-Reply-To: <JA2MRIzFOSKLo9kP4Ql6TOblW2j1MCRkMV0mVGcXg@lists.ettus.com>
Message-ID-Hash: SQDO6FJPJK4HCH54XILIHLETJGCNLSXR
X-Message-ID-Hash: SQDO6FJPJK4HCH54XILIHLETJGCNLSXR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B205 mini-i isn't found by uhd_find_devices
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SQDO6FJPJK4HCH54XILIHLETJGCNLSXR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 04/12/2021 12:06 PM, paradis@kwesst.com wrote:
>
> Hi everyone, I'm just starting out with the USRP B205 mini-i, and I'm 
> having some issues.
>
> I'm running Ubuntu 20.04 LTS, I've also installed the UHD toolchain 
> using the instructions on the Ettus website (Building and Installing 
> the USRP Open-Source toolchain (UHD and GNURadio) on Linux. The UHD 
> version is v4.0.0.0.
>
> So, after installing UHD and running the 'make test' diagnostic, 
> everything passes 100%, so it seems like everything is working 
> correctly. I've also made sure that the 'uhd-usrp.rules' file has been 
> copied to the /etc/udev/rules.d directory.
>
> When I plug in the B205 mini and do a 'lsusb', it finds a device with 
> the VID/PID of 2500:0022 called "Cypress WestBridge". This is the B205 
> because when I unplug and run 'lsusb' it disappears, then if I plug it 
> back in it reappears. Great!
>
> So next I try 'uhd_find_devices' and it finds nothing. It returns with:
>
> [INFO] [UHD] linux; GNU C++ version 9.3.0; Boost_107100; 
> UHD_4.0.0.HEAD-0-g90ce6062
>
> No UHD Devices Found
>
> Questions:
>
> 1) Should the uhd-usrp.rules have a specific entry for the B205?
>
My "rules" file has the following for B2xx devices:

#B200
SUBSYSTEMS=="usb", ATTRS{idVendor}=="2500", ATTRS{idProduct}=="0020", 
MODE:="0666"
SUBSYSTEMS=="usb", ATTRS{idVendor}=="2500", ATTRS{idProduct}=="0021", 
MODE:="0666"
SUBSYSTEMS=="usb", ATTRS{idVendor}=="2500", ATTRS{idProduct}=="0022", 
MODE:="0666"
SUBSYSTEMS=="usb", ATTRS{idVendor}=="3923", ATTRS{idProduct}=="7813", 
MODE:="0666"
SUBSYSTEMS=="usb", ATTRS{idVendor}=="3923", ATTRS{idProduct}=="7814", 
MODE:="0666"

You could try:

uhd_usrp_probe --args type=b200

If that fails, try again as root.

If it works as root, then you have a rules issue.
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

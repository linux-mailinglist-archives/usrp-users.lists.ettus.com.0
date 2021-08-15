Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BD7C83EC90F
	for <lists+usrp-users@lfdr.de>; Sun, 15 Aug 2021 14:39:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A1ECE383D2A
	for <lists+usrp-users@lfdr.de>; Sun, 15 Aug 2021 08:39:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="a6IiVX2J";
	dkim-atps=neutral
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 9E957383A2B
	for <usrp-users@lists.ettus.com>; Sun, 15 Aug 2021 08:38:48 -0400 (EDT)
Received: by mail-qt1-f178.google.com with SMTP id b1so12199011qtx.0
        for <usrp-users@lists.ettus.com>; Sun, 15 Aug 2021 05:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=TQ3ITY9vTCksWMWeBCVgKE1Oue/jNTk6Ntm5iF0TYs8=;
        b=a6IiVX2JM2N9YaMltqySmhCj0/TXiQZJMrj5sSLXnW1WV8x4RSPIC5+Kf81WvA6Zlr
         9nQBztJcuTp7gsfCb3C1yAL1bUt94QlNUmCtNkddsJLhJu10/0ocJZz2zlOo/y/cUH0N
         aSZnNzjK0dDHKRw8wnFlaaqkZ91hHvFqQfqy/lzkriWNNN25TDQrNWLVXrxOkqEQ2rhW
         fA8t09WW7r+sV9mUR3wbIeDzuFbWSn9VhOceNIWsRekvUr0MbNUMaKTf3lbByYSuFCzn
         +T3+JjuiJ33Y3ljdcR4mTxV1PwJ6+nI6AofCeQHzIMDTVMIg/Mb4I80TOBIXbXyD+I9w
         IvKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=TQ3ITY9vTCksWMWeBCVgKE1Oue/jNTk6Ntm5iF0TYs8=;
        b=jU2FOIiQ18cJY7WwLQnBXVFUSO0OwC0EZfvXjcxDv+/IjEP2QfaHudIcrZboIkHVMU
         Wmx0t/B79F+Of+1f9etHvd/IMwf/OAJtlOoigUYr35CR55QjhFe4EixgIvnYmfcvq/29
         fVg+2TcALDbTImwHrtk7fo7WGq2inRGdF+DLyxuDJU3i+41F/BHvSNMznb32oWfplM8F
         j8S16bSTllX9r8I3f5gsPQMGrBNC5Y7K3dXam/DaXWg6KtxDsPSfJ/qqQ6rIPmvoOyUO
         zV5+077mSpG1Mxx2wfC3zYtmyAeWM3TeWQh2lbgx2nurTq3giSqI0mT3L5m3nOjBPWDM
         ZZnQ==
X-Gm-Message-State: AOAM531vcLf5mlswXr43/yLGTKSSbrdm29TBP4TtxKNiRfKQuzKH2TG1
	sCgIOtcU6aDNx8Dw13irR7g7B8KBiuv74A==
X-Google-Smtp-Source: ABdhPJzoy1kvu0ENogDiWl8LwURtZ8L5HY2QTXvBVr0EduYksT/5hHQbkPrK62+d3CMZmtLWbmjcZQ==
X-Received: by 2002:ac8:6b90:: with SMTP id z16mr9514404qts.70.1629031127719;
        Sun, 15 Aug 2021 05:38:47 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id 69sm4397449qkf.23.2021.08.15.05.38.46
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Aug 2021 05:38:47 -0700 (PDT)
Message-ID: <61190AD6.6070904@gmail.com>
Date: Sun, 15 Aug 2021 08:38:46 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACDReSwEpVpga34h2ge5-XPMwA+6X45a7WWmdX5+EGiUn+FkRw@mail.gmail.com>
In-Reply-To: <CACDReSwEpVpga34h2ge5-XPMwA+6X45a7WWmdX5+EGiUn+FkRw@mail.gmail.com>
Message-ID-Hash: SIZP35XGXQV3BSRSV3DQQMSHBT3UMCP5
X-Message-ID-Hash: SIZP35XGXQV3BSRSV3DQQMSHBT3UMCP5
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1 on E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SIZP35XGXQV3BSRSV3DQQMSHBT3UMCP5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 08/15/2021 01:01 AM, Ofer Saferman wrote:
> Hello,
>
> I have a E320 that came out-of-the-box with an image on the SD card of 
> UHD 3.15.
> What would be the easiest way to upgrade it to UHD 4.1?
> Is there an SD image that is ready to program?
> Do I have to rebuild it on the E320?
>
> Also, can you please comment if the FPGA image of UHD 4.1 comes with 
> the RFNoC Replay block?
> What would be the shortest path for me to get any UHD version on the 
> E320 that has the RFNoC replay block built-in without needing to 
> rebuild the FPGA image by myself?
>
> Thanks,
> Ofer Saferman
>
>
Ofer:

The uhd_images_downloader lets you download sd-card images these days, 
as shown in this document:

https://kb.ettus.com/Writing_the_USRP_File_System_Disk_Image_to_a_SD_Card

So load up 4.1 on your host, and then use uhd_images_downloader to pull 
down the relevant sd-card image.


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

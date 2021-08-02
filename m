Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DFAB63DD4F4
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 13:53:26 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C8F1C38408E
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 07:53:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="daW3Qb5V";
	dkim-atps=neutral
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by mm2.emwd.com (Postfix) with ESMTPS id BE949383C1B
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 07:52:39 -0400 (EDT)
Received: by mail-qk1-f173.google.com with SMTP id b20so16249641qkj.3
        for <usrp-users@lists.ettus.com>; Mon, 02 Aug 2021 04:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to:content-transfer-encoding;
        bh=5t+WKQ88G+CFsEw3n+Szi2qoFikxw0+CSiKX6NnG7xM=;
        b=daW3Qb5VaUXn6MCiLFxsk56NG6rVW/B0uFFcF0fwmWPd/iXCtFka/fPunU+3NfDDFQ
         pILYc19NzwoAqE0DynSJkKm9MDbXh11RdcWVUO5KO7Z5lM/1Vz+uDmxZ6hc+pMBf2/QR
         AAQsEhYNQ6jMDs6dd/qqyuhmXyYmgRmKpKD6QQD8E6YYPxMGuR7VTpq3m5I94svkIWbs
         Jdf6KgoWZo5YS5j1b7TOEfNJnGt/9qaLjDi+7bzzI9e4ecjWlx2PmclRZK3ppKu8Q4vM
         ywfzIuKK3PqA8phgUoPJdK+pQCcdOVG0EBP56rNaXmpBWMg0LYUVxWqoy0ieyWUsB7JV
         VqBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to:content-transfer-encoding;
        bh=5t+WKQ88G+CFsEw3n+Szi2qoFikxw0+CSiKX6NnG7xM=;
        b=B8mSjnvMH9pwo0iss0LjqwNpn5djJyql6xqu+domkCnM9SM0d58dqXgpgzEOJzcg8J
         43FLITCNlK0ZE4NaZpwbE9lbezhlNwSNvADzNt45U6sPScIJUcKHmsbA/FFpoD3PFSx2
         4RjYVatXc17DnSHGRcfefdPqCJuvfWYS8RqvYcIBvEERXjZOpVljObmatR3LBa4yoEC/
         9c0lUg39UpzQWvBdl0231h8Iat797fcYtj37t07IHa8Yea6u0Q3fzkUWfp9zCmoAC75A
         VSpzpLqD6cx81gaUU26tFLUkkCJtxIfb4Ibll1snp13XkNTOzj5qOg6+xW5XdKOsb1Xu
         3HPg==
X-Gm-Message-State: AOAM532kTMDL2UhRgNtNgUfgr5/4xIWRkl0kGe21uzjh9PcKF3e8Z1Zc
	SZRFlz3qmgR7azo6OU8ZcMH5yXlfpEg=
X-Google-Smtp-Source: ABdhPJxCHBTzrAYimNf9HBAsef//65CbNo2Su9rotwqXaHwh7lcxlMpPBomBzC7uTXCL95J+s39kEA==
X-Received: by 2002:a05:620a:14b8:: with SMTP id x24mr15375321qkj.475.1627905158990;
        Mon, 02 Aug 2021 04:52:38 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id c3sm5807595qkd.12.2021.08.02.04.52.38
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 04:52:38 -0700 (PDT)
Message-ID: <6107DC85.3000707@gmail.com>
Date: Mon, 02 Aug 2021 07:52:37 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <SEaQg3yWRMSvPjUzuvgS5c74SvOZTCQeVOUDuDHbTo@lists.ettus.com>
In-Reply-To: <SEaQg3yWRMSvPjUzuvgS5c74SvOZTCQeVOUDuDHbTo@lists.ettus.com>
Message-ID-Hash: U6UIQSGVQYVEWM64KWUNZGZ2RWEQA33P
X-Message-ID-Hash: U6UIQSGVQYVEWM64KWUNZGZ2RWEQA33P
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 with ODR tools
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U6UIQSGVQYVEWM64KWUNZGZ2RWEQA33P/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 08/02/2021 06:48 AM, fabien.cuny7@orange.fr wrote:
>
> Hello everyone,
> I have been using a USRP B210 for 6 months now transmitting a home 
> DAB+ mux (with Open Digital Radio tools), and since this yesterday, 
> I'm stuck with this error and unable to broadcast again :
>
> [INFO] [UHD] linux; GNU C++ version 8.2.0; Boost_106700; UHD_3.13.1.0-3
> [INFO] [B200] Loading firmware image: 
> /usr/share/uhd/images/usrp_b200_fw.hex...
> [INFO] [B200] Detected Device: B210
> [INFO] [B200] Loading FPGA image: 
> /usr/share/uhd/images/usrp_b210_fpga.bin...
> [INFO] [B200] Operating over USB 2.
> [INFO] [B200] Detecting internal GPSDO....
> [INFO] [GPS] No GPSDO found
> [INFO] [B200] Initialize CODEC control...
> Error: RuntimeError: [ad9361_device_t] TX charge pump cal failure
>
> I've tried with USB3 and USB2, second TX output, same problem.
> As anyone had encountered this before ? It seems like a DC-to-DC failure ?
> I post the question here as it seems more USRP related problem than 
> ODR. Even if I run the uhd_usrp_probe command, the same error is 
> displayed.
> Any explanation/help is welcome :)
>
> Fabien Cuny
>
>
This is overwhelmingly likely to be a hardware problem, unfortunately.

I don't know whether AD9361 has external passives that support the loop 
filter for the synthesizers, but if so, it could be that one of those 
passives
   has popped off the board.

I don't recall ever seeing this error before, and I've been supporting 
B210 and other USRP products for over 10 years.

Send a note to support@ettus.com to see if anything can be done.



_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

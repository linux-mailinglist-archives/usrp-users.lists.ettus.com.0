Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CD50C46C099
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 17:19:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 602F83846AD
	for <lists+usrp-users@lfdr.de>; Tue,  7 Dec 2021 11:19:30 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IXGbkHsa";
	dkim-atps=neutral
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 1CAEC384659
	for <usrp-users@lists.ettus.com>; Tue,  7 Dec 2021 11:18:22 -0500 (EST)
Received: by mail-qv1-f42.google.com with SMTP id gu12so13549544qvb.6
        for <usrp-users@lists.ettus.com>; Tue, 07 Dec 2021 08:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=oVl7dNm4h+VXCEAKhOtsKY+xUu/10h7boKwU1KB3LuY=;
        b=IXGbkHsa498D6GIs9gucWXfUxUHerWXC9ylhga+alte+tzr1R+oAX/dWYVQT/OFxKL
         u7hhJsVrS8nVBxj7rcilqqO34Lbg5ybu0jhWcJAG7nq5AIPO6L5xMwt73rCIplMMvYnd
         nPDwIYUY78ycoWk3pdoa13sk6sE/G2GiaXczQP4QP9tfWsgDSz1CutsM+RRzUY4qq/Kf
         AtQZoUfc/CKus8hH+RKpWtIub0zTtVpFbpjhQpndvwVhK7iNd8l2j/we7YxWJ69i0a+g
         WMhLhUyPMMM0QddIKFC9VR5yVWK7vmpxB84Vhwu2XP7QMZbk/qkqlCfQVPZlBmldqPMU
         f2Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=oVl7dNm4h+VXCEAKhOtsKY+xUu/10h7boKwU1KB3LuY=;
        b=TFATiB7vTv9JwM7uIxf6lyBDHfUOd9t8R8A4zxiONHg0h8QpmI4LcqXirMfI+N/2cD
         YQnVlKONJ+vyJR2mUzy+wUym7XUhAhqlqz1bARz2ubt69/lvCCMsCfCZmAqckL+zoxTN
         qQQgO037pvqVve7sw85Agol9+sNmfVLVcOs9LYH1sSKZGbT/vzdqr8hWowcaGT2w/EnQ
         i3f9+/dZFQXUizmrO/BZ2/WWrZxVDXARXcfW89gWsl93ryi5nj4xjKb9KemhghpUPOaS
         G90yw++c4r4Sje0HPVmmVQ1TiBPGBAdpkCSmnMO3F/I5P+S5aoUOpEF0dEk3j7fPXr+Y
         1oTA==
X-Gm-Message-State: AOAM533sFU70glDSJEXAmrnYyM8uFj3SZ0TVUr2HQ1a5RVXPiSGEZUAF
	A/97gmJJuKkRlbcyOlv0EZQFOg2WrrQ=
X-Google-Smtp-Source: ABdhPJxPp710sAXMvix4S1IJGpCAcP+y1M9ixjKWvAB6QvdDJKx37WWVkLbWFS8sJ+70x0x0GJzg8w==
X-Received: by 2002:a05:6214:8c8:: with SMTP id da8mr102748qvb.23.1638893901346;
        Tue, 07 Dec 2021 08:18:21 -0800 (PST)
Received: from [192.168.2.16] ([130.44.161.78])
        by smtp.googlemail.com with ESMTPSA id a15sm98957qtb.5.2021.12.07.08.18.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Dec 2021 08:18:20 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <3bad87fa-cd22-7b4d-a57d-26987fa59655@vectalabs.com>
From: Ryan Volz <ryan.volz@gmail.com>
Message-ID: <391fee11-e4cc-a84b-3758-cd0281f29a09@gmail.com>
Date: Tue, 7 Dec 2021 11:18:20 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <3bad87fa-cd22-7b4d-a57d-26987fa59655@vectalabs.com>
Content-Language: en-CA
Message-ID-Hash: 46MYJY6BADOCLWKZGRKK4SERJTIF5RNT
X-Message-ID-Hash: 46MYJY6BADOCLWKZGRKK4SERJTIF5RNT
X-MailFrom: ryan.volz@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Compilation Windows - package directory does not exist
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/46MYJY6BADOCLWKZGRKK4SERJTIF5RNT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 12/6/21 7:29 PM, Jack Riley wrote:
> Hi,
> 
> I'm attempting to build UHD on Windows from source so I can use the Python libraries but encountering the following error building usrp_mpm:
> 
> package directory 'C:Users\Jack\uhd\host\build\python\simulator\usrp_mpm' does not exist
> 
> Noting the lack of a backslash between C: and Users at the start of the problematic path, this appears to be the issue. For some reason the path within the build task is wrong for this project. What is the process for fixing this error?
> 
> Regards,
> Jack Riley
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

Hi Jack,

Does this patch fix your problem?
https://github.com/conda-forge/uhd-feedstock/blob/master/recipe/0004-cmake-Don-t-set-package_dir-in-setup.py.in.patch

I seem to recall encountering this and fixing it for myself, but I'm not sure if that was what did it.

Cheers,
Ryan
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

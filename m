Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 44351496504
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 19:28:59 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1513D384962
	for <lists+usrp-users@lfdr.de>; Fri, 21 Jan 2022 13:28:58 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YJGK+s3Y";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id EB586384949
	for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 13:28:02 -0500 (EST)
Received: by mail-qt1-f171.google.com with SMTP id w6so10876405qtk.4
        for <usrp-users@lists.ettus.com>; Fri, 21 Jan 2022 10:28:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=Wb54H+cHnA7YrnQ369bgeUw37WbCpbff1CXYOmR/rKk=;
        b=YJGK+s3YYukUjsKSp7lw29n1HnjM4408hj6rC8Cykf6x81gRyN3VHhJStCF9dqOg7k
         q/U4R394Awld2uAlqTQa6q9ihlX9X+WohW0O7scZP3EDqJJDrb3bdyH+0ZogxG9Uex00
         3md8Gw3bb4u2QIRllCu834ECi/ubnlkpJItPto2/vexKa1ttEm5O+p2IGbp+65bW0maE
         t4Z9WomkeEIUPYWnAp7SNn5FC4sY/NHKml1hFka9yTFGMN8FuKTKpHqLTxwq1kubsi2G
         LNH+DFcJObDhwue3QjXBcCA08sySkx4g2n7j55+EAQ7HBh6FZKDzoV8zxgeZlypFqAuR
         eTaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Wb54H+cHnA7YrnQ369bgeUw37WbCpbff1CXYOmR/rKk=;
        b=uF/cTjk7ObYc8Coxq4oUNhEqYIBZgkBTBtbu9LGoSojsi1kq0Dp0NhrB8dVPICxUDY
         ZitdzSMXXTJOwJvSdS0seC/xcJ32CXQwKvTIjS1bwr0ARuRXWrMeQZ2l+oTS6BeyS6JH
         +mvFPnPAQVpbJLjEUS5PJ4Cm+6GvLGk6niYnAlR/KlRVA5jPxXS0HgHuySPSQelx8l6m
         1KK7lnX1F4QzlhTFzytyAp4ZZkVoZVdim+/QkrBoqUXnHr56EErjU7TVQ9+FJSmAqfZa
         1Cz/lSzSxZ8ZoAvIbHQhaJ/qbQICM5TmWplqlbD0SZ+BF4hevPkIX7TU0Yk35qJDBTWL
         0ltA==
X-Gm-Message-State: AOAM5305o7aFx+pZaiY6wnpPIXQMvK+Fsxp6fHzSe51NJLSrGF5WKIAI
	TRF8svPLdEIqJYQjVHVz5F5cqShiNqXhBw==
X-Google-Smtp-Source: ABdhPJxtitkIfCTv21vPQjucJ7Jmyz+iqJ6GL5bZEm+zihYjhKLwhmAoOJVAlaNrFUmdy9BTsiLVcw==
X-Received: by 2002:a05:622a:2c1:: with SMTP id a1mr3965963qtx.289.1642789682165;
        Fri, 21 Jan 2022 10:28:02 -0800 (PST)
Received: from [192.168.2.223] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id x11sm3427973qtw.60.2022.01.21.10.28.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Jan 2022 10:28:01 -0800 (PST)
Message-ID: <ef6c3c86-582f-a954-9483-bcc8db257f7c@gmail.com>
Date: Fri, 21 Jan 2022 13:27:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CANP_axL6-SFaBZJmhHr07eQFge-s3h91Xqx+4urgFn+zB33fMA@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CANP_axL6-SFaBZJmhHr07eQFge-s3h91Xqx+4urgFn+zB33fMA@mail.gmail.com>
Message-ID-Hash: KHTDAAHYL44YRJ7VSKH6TIARBKZ3XZ4K
X-Message-ID-Hash: KHTDAAHYL44YRJ7VSKH6TIARBKZ3XZ4K
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus E320 Power Consumption
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KHTDAAHYL44YRJ7VSKH6TIARBKZ3XZ4K/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-01-21 13:25, Temir Karakurum wrote:
> Hi,
>
> E320 datasheet mentions 10 - 14 Vdc, 3A max 30W power consumption. I 
> assume this maximum value is for the Tx scenario. What power levels 
> should I expect when receiving on only one channel with the GPSDO active?
>
> Best,
> Temir
>
My guess is that it will be not hugely less than 30W, since the TX 
output power on all USRPs is very modest--as much as 10dBm, but not a 
lot more.

Granted, the TX side of the FPGA will be "idle", but I wouldn't expect 
more than a watt or two less as a result of that.


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC4D2D17A4
	for <lists+usrp-users@lfdr.de>; Mon,  7 Dec 2020 18:36:16 +0100 (CET)
Received: from [::1] (port=38062 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kmKQn-0004sP-Cl; Mon, 07 Dec 2020 12:36:13 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:42817)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kmKQj-0004mi-B8
 for usrp-users@lists.ettus.com; Mon, 07 Dec 2020 12:36:09 -0500
Received: by mail-qk1-f175.google.com with SMTP id z188so13247551qke.9
 for <usrp-users@lists.ettus.com>; Mon, 07 Dec 2020 09:35:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=OfyE5KfN6OSO4jXeUp1DCO3kDY2biPTrkTuGcOLOMGE=;
 b=gJvKx+c+wPzPlnwXwjshXJJSUgczowoTv2okDpQDIOVw3HQ7BcEpBmGHJHgsK/9G9C
 AzTmb0dJPkd5fQm3Dvzsu8Cz6RUJqn9dg277tuq/HrmBH4Sz8yapk1755c6XHSdlDzXn
 XT3MSr2GLSY0S3CFlcfLa9nD0ig2Hxj+gRyZar8QpkcvhxE3Fm43zM6+M4rIxuSJbNxP
 cGj0nnXarO7smdw9XGdwdEcY9G02EyS/IaFfHI+6P+pWmv8aP7JWAh5goGoeVjAkWBbK
 dFJ0LOS/Tu6DTNS2I+CmJuxUDdGRu0Os8MSTK3s6gNa0me9ueMMplAY19bv2H/s0rIV7
 zcwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=OfyE5KfN6OSO4jXeUp1DCO3kDY2biPTrkTuGcOLOMGE=;
 b=g8ZtenyA8kDVlUapVKEtjLnua8L1P+X1L7VZeFifX78GtqMO5FeQBlGUaHCgvtG1Kg
 SURv6o8V5mokBs4j66aTsWuEEC8sKp/+1Jaqdd/9wmLkneNw1FiPjEKKFKYzzx5+WvDc
 eK1g8r8IVEDtRHgPyOnjH9kbSaB+1VIWF9GOjYIzv5PPL/dL6+oJXl31RB1prwLYW2VP
 ySYCuaDzoHG3WNd7KYw+vTCktIuyWa+mO2IOkq+Kw62Qlsf0TGPwS07XB4rj7NgyZkK9
 vs8DChBoWofYVBDYQfm2b8amMW9l037RvJBOXQ/hKeNifL4xLtyb1Ho9uwC6byOjNvWs
 vvuA==
X-Gm-Message-State: AOAM531qKCF1880/xy1r6Ve4kZptipGc0r6JMG1KE4V6J2OE6cLKcVY+
 hwqBQ/p+WgxliJfpY6hiDs2QJKvG1kQ=
X-Google-Smtp-Source: ABdhPJxCVgXLJiWqVgJcN+69eAZA83XkdRiaejYPKZgMOHPPRO8g4m6sKYdbVircCHrcTDOta7uI/w==
X-Received: by 2002:a37:4384:: with SMTP id q126mr25541659qka.30.1607362528559; 
 Mon, 07 Dec 2020 09:35:28 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id h24sm11943425qkj.85.2020.12.07.09.35.28
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Dec 2020 09:35:28 -0800 (PST)
Message-ID: <5FCE67DF.8030502@gmail.com>
Date: Mon, 07 Dec 2020 12:35:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <F479266F97CCAE47854721C82406934E30729EF6@EXDAG0-B2.intra.cea.fr>
In-Reply-To: <F479266F97CCAE47854721C82406934E30729EF6@EXDAG0-B2.intra.cea.fr>
Subject: Re: [USRP-users] b210 and x310 synchronisation from non-GPSDO
 external clock
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

On 12/07/2020 11:24 AM, BERTOLINI Rodolphe via USRP-users wrote:
> Dear all,
>
> I put both mailing list (OAI and USRP) because both may have something to do with my problem. I apologize if it is not appropriate.
>
> I would like to synchronize a b210 and an x310 using a square signal generated by a function generator. It has a 10MHz ref output, so I generate a 1Hz square clock through a regular front output.
> Except the output voltage, is there something I should care about ? I use them with OAI, and they both are used as LTE base stations. When the base station is on external ref, UE doesn't detect the base station. When the base station is on internal ref, UE detects base station broadcasts and connects to the base station.
>
> Note 1 : PPS and REF are well detected by the USRP, when I change for example PPS frequency, x310 led changes respectively.
> Note 2 : only one USRP is used at the same time, I want to make it work first with only one base stations, and then when base stations are both on and synchronised
> Note 3 : in OAI code, there is something like :
>
> usrp_master_clock = 30.72e6;
> args += boost::str(boost::format(",master_clock_rate=%f") % usrp_master_clock);
> args += ",num_send_frames=256,num_recv_frames=256, send_frame_size=7680, recv_frame_size=7680" ;
>
> Is this master clock related to the sampling rate, or should it be changed to 10MHz?
The master clock rate is related to the available sampling rates, and 
not the external reference frequency, which is 10MHz.  The B210 is
   quite flexible in its master clock rate, but the X310 is much more 
limited in the master-clock rates it supports.



>
> Note 4 : I looked at the spectrum of signal sent by base station, I don't see any difference between the setup with external clock and the setup with internal clock
Unless you have your spectrum analyser set-up for very-fine resolution, 
you likely won't see much difference--the internal clocks are
   already pretty good.


>
> Any pointer would be much appreciated
> Thank you.
>
> Regards,
> Rodolphe
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

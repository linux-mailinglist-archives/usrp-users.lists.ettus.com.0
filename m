Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AFB32FC90
	for <lists+usrp-users@lfdr.de>; Sat,  6 Mar 2021 20:12:30 +0100 (CET)
Received: from [::1] (port=59182 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lIcLl-00053o-Da; Sat, 06 Mar 2021 14:12:29 -0500
Received: from mail-wr1-f48.google.com ([209.85.221.48]:39728)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1lIcLh-0004xD-Sg
 for usrp-users@lists.ettus.com; Sat, 06 Mar 2021 14:12:25 -0500
Received: by mail-wr1-f48.google.com with SMTP id b18so6530955wrn.6
 for <usrp-users@lists.ettus.com>; Sat, 06 Mar 2021 11:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=zH5i76JbWUaz+ICesO06rIvmtdOdaIiVzW7DKiR0cek=;
 b=ZQxlgLTszIY0GI8okPq0H/TPiD8f3yv93HDquTYhNMtC/tqLEaNiY20IHPo7Y/wc7Q
 HYSzcNd47eO4hdvV5oBIOWQPkFJfdlYYUiAAVJP641GG8Fbc9iacYjVtfXUBahIE7Kum
 i4K1arD79/oTnucXBW4OOZuzEb8QifHIEjXWI6RjCBBfV9osKS8wLa2B0Ltc2jgrstgo
 Zb4E3cANhD4cOuR6WGQOnugXS8tdfV0JjJ0g/6imT3hCX00HoehwfSdZRzN1hW4m0BzB
 2CHJeBhK3GYGKPcPQti/9hRjrMfSV0RcDS0farKpGknXSf6NAq0DHZol3VYjO6U8gzVp
 rheQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=zH5i76JbWUaz+ICesO06rIvmtdOdaIiVzW7DKiR0cek=;
 b=ndmCnIJVGClflIUjmlKZE3zgtk3zjoGRxykL2xsP4xtQpQpA2L/C5e80S6LHev9YIj
 WvGtt+Tl7yhGZh5uSESKeXAivyCpfSFl5Nol0Yrqh8c6U/cWC27NBJTc15UpQzagFqN8
 KBBFQDu4eRNP1tzoA7X+pYqKC73zzPwzH7ZhkT2gaTwg2eeTF6v7CvckrbQbS3E7CAnE
 z9AzpvaQ5pMKo9vpSx+/iazx3yVLZrxAJOxRcpu71walYhfhjZEt+Nm4lt0mXdE7i5uZ
 rIoEye8PwGRAvfC+E1i0wEp1UJ1/r7MQAMmbJ/USUdUXahBQt8j3Il+MxXaw59SjtenR
 9cnQ==
X-Gm-Message-State: AOAM533T3PJ6pdK04n1vvFLigh0Rb9ALyLlwE3p08dTuGpr/jq+qSBAD
 2ZZbLYzinzHVLZ6cUAiAxlmyllzGwtBDg+JpBEk=
X-Google-Smtp-Source: ABdhPJyyCWrvvFeqS8nPwUYuEz0cxFqDJjdnfDZ/5VTisNTC/xEOMMOSZDEIig7mPhi3ytulmQTdLQ==
X-Received: by 2002:adf:c752:: with SMTP id b18mr15006585wrh.233.1615057904568; 
 Sat, 06 Mar 2021 11:11:44 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id b15sm9936759wrr.47.2021.03.06.11.11.44
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 06 Mar 2021 11:11:44 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <SN6PR1901MB4688DACB2A5FEFC8E433A70BA4979@SN6PR1901MB4688.namprd19.prod.outlook.com>
Message-ID: <54732d0c-9515-3b01-6221-b8b177e52e6d@ettus.com>
Date: Sat, 6 Mar 2021 20:11:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <SN6PR1901MB4688DACB2A5FEFC8E433A70BA4979@SN6PR1901MB4688.namprd19.prod.outlook.com>
Content-Language: en-US
Subject: Re: [USRP-users] Current Recommended UHD RFNoC Versions?
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

By the way, if RFNoC 4 is what you're interested in, the current master bra=
nch of
gr-ettus, GNU Radio 3.8 and UHD 4.x are what you're aiming for!


On 04.03.21 22:08, Jeff S via USRP-users wrote:

> I'm getting ready to help someone install code and I'm seeing conflicting=
 things
> regarding GNURadio v3.7/v3.8 with respect to wanting to do RFNoC developm=
ent.=A0 They are
> going to use an N310 and I've been using maint-3.7 for quite a while.
>
> Are we still using the rfnoc-devel branches of UHD and FPGA, maint-3.7 of=
 GNURadio, and
> master for gr-ettus?=A0 Or is there some later, stable recommendations?
>
> Sorry if there was any recent related posts, but I didn't find any.
>
> Thanks,
> Jeff
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

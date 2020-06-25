Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6523020A836
	for <lists+usrp-users@lfdr.de>; Fri, 26 Jun 2020 00:23:52 +0200 (CEST)
Received: from [::1] (port=55428 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1joaHd-0000Q6-G3; Thu, 25 Jun 2020 18:23:49 -0400
Received: from mail-qv1-f41.google.com ([209.85.219.41]:35997)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1joaHZ-0000MY-FV
 for usrp-users@lists.ettus.com; Thu, 25 Jun 2020 18:23:45 -0400
Received: by mail-qv1-f41.google.com with SMTP id h18so3636025qvl.3
 for <usrp-users@lists.ettus.com>; Thu, 25 Jun 2020 15:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=ASlQ9Zpk2ZlywazZtzFy5ePYcFaffN9UFHZp4vREefU=;
 b=iEBgCo2RIy0jNCC2epWStGL+YmiZoF5hKR2Njbw82sOkwTG/45rk0jl+uQHaPGTxXQ
 eP1Pm74ocGzDsy8L5vDFuHRxGsWWexkKgxwnMIL2fjM2nK2Ve5OYjY9sCkCSyprSkwvz
 dly3/zAtfvhaJ1yGAfgY5HGSLbOhyVtFud5++2haJZzifF1rHS8ApHe0Ipq7q00Q7mNP
 Xjrw0IKx01QsH7U7LmeNEBPop/CT0kdanCRsBYWciJRn/Pxb9NKenDlxo7XIsE/uLVtt
 LDbcK+Wcojk48inSBvjexpF5qGHFiURbyVE6/48174cpWUfMd0FeoElGXyxEFqBLYRYa
 yHKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=ASlQ9Zpk2ZlywazZtzFy5ePYcFaffN9UFHZp4vREefU=;
 b=Lam3JTWxyvW06nFEu4ndqr1zBCZfi71SL/jzWEFRCiL/3t2PO1BvllZZUoisMXky+h
 U5jXNV2SoDPRlKX5Lv6FkKI4EW56SczGD9bJf2C9COLMKkXBEWzCuSdnfOtaF5ExSA+5
 Nmc1JhcTn8W3Ipbhgd2xMVC7HmEzWLrigrWPYxCXT97omTf2hlQUemrXYqCOSaz4NYk9
 2AhuG23Wk9dEZmOdfe3mG3T5r3OuXlxG9jlbWxM8J2p4k1CW7YIPE9ZL7hOO/Nmdnpg0
 mfwTOGlgzO+ce6UOM0WwSPnoRoDLhwR48fKrIQMm9wdwuMSDHkJBiL+gbkYU+7Y8JNr8
 yq9w==
X-Gm-Message-State: AOAM532qlxW9VTOTErytVvHBLoxlQe2vU6uK2HWGXIYi6iac2a669qCt
 N41pnM2nnOWHIcAksclYLo/zvrtBUWI=
X-Google-Smtp-Source: ABdhPJytODIw5HvVx2WdG9kko4lL+KWk5OUWQAaVqELVntIgPy8I6PBazqhMpr4fgoOEw5TqZUHkRw==
X-Received: by 2002:a0c:9ae2:: with SMTP id k34mr277521qvf.247.1593123784702; 
 Thu, 25 Jun 2020 15:23:04 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id m4sm1811205qtf.43.2020.06.25.15.23.03
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 25 Jun 2020 15:23:04 -0700 (PDT)
Message-ID: <5EF523C7.9040800@gmail.com>
Date: Thu, 25 Jun 2020 18:23:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CA+w2Zyujk0sToEj0rSYqqL0tS7PJmTKXOZSmPS-jz5Njkk3n_w@mail.gmail.com>
In-Reply-To: <CA+w2Zyujk0sToEj0rSYqqL0tS7PJmTKXOZSmPS-jz5Njkk3n_w@mail.gmail.com>
Subject: Re: [USRP-users] b205 RX -> TX loopback
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

On 06/25/2020 03:04 PM, David Carsenat via USRP-users wrote:
> Hello.
> We are trying to make a simple RX on TX loopback by changing the FPGA 
> image.
> We get it by adding a wire between the DDC output and DUC input, but 
> we are still limited by the sample rate we specify via UHD.
>  We have specified the analog bandwidth at 56 MHz, and the master 
> clock rate at 60 MHz, but no change.
> Same behaviour if we add a wire before the DDC and DUC. We suspect 
> a link between UHD sample rate and AD9364 sample rate.
> Is there a way to have the full rate(56 MHz) available on the loopback 
> despite, for example, 1MHz sample rate specified via UHD ?
>
> We could also put the sample rate of 56 MHz but the underflow and 
> overflow cut the RF signal, perhaps there is a way to avoid this 
> phenomenon also.
>
> Thanks a lot.
>
> David
>
My suggestion would be to wade even deeper into the FPGA and have it not 
send samples to the host or always only send them at 1Msps, or
   something.   But regardless, there's no "simple button I can push" to 
make this happen.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

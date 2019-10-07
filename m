Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1909ECEC66
	for <lists+usrp-users@lfdr.de>; Mon,  7 Oct 2019 21:02:28 +0200 (CEST)
Received: from [::1] (port=44406 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iHYH0-00027N-VV; Mon, 07 Oct 2019 15:02:22 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:40412)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iHYGx-000230-Cf
 for usrp-users@lists.ettus.com; Mon, 07 Oct 2019 15:02:19 -0400
Received: by mail-qt1-f182.google.com with SMTP id m61so9700981qte.7
 for <usrp-users@lists.ettus.com>; Mon, 07 Oct 2019 12:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Pq7I7JqwN+BU19ASqaBbW7rzCYuvUSRiJPoOV1HiXGw=;
 b=kbxedSZ9PJ8iv1chPYPkljZ9KoGKmEuhxLVrPOVW8CAok6PoK1yH898yJD+r1J4wMJ
 VfYSlqWlkIhtqkur64OSIbG6Nzf7JFzTgxcyphaNZYeZuhugcsAsBq1t/aDKpqztj58f
 JasEruhb21qvDXVW7ZkmPXncLwGnDkdlQwFSUh485lT34eUmLHEYgFesGdmFxp2F6KKX
 KzolwLB5n1LkVJ8A7zX+guPEhbegduIjgS/00ZVtFp9XYPjnlHWUqWMD/tb1KFD4Wykn
 hcQizqQrDhH8cX94z2BagLlyf4BBw3iN7B+i4GOmFkh9Y4d8mBXQpcqvro1GddQccm8T
 ljlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Pq7I7JqwN+BU19ASqaBbW7rzCYuvUSRiJPoOV1HiXGw=;
 b=mK9KJX9dcGNB3Ygr3Oi8xhSecCkVWdEIz/Br6qsSKSEdbkA0u/kje2booAIRpoHPFi
 YkF+69WbL8RMv7cIWl2ytmDcTHdTJ4gQQl9f2Zf1oR/0xzL7ebZn4TpYVvlyvTXxv5e/
 mp2mBaK8PKTllTmrbkaOC3OMZSfqwp1s9gdkVjVZ0iG1ooRVqFJa3DcK6fJ6kWyD3VUh
 yPAa9pU/ckyvekm6UIpM5jR1I7eIwH/LBUXIfX1ty0SET55nPRvs1uRlOE2Pror/AIF7
 dFci3XJEOUiT26D9o1Gm/SwRMqPHOauTrG05WbgtS3FhweZIgKwy9vIkeBlCVG3iBoFl
 Pltw==
X-Gm-Message-State: APjAAAU/f/gV1lrRZEevLiMdoW4ucsFMqZvuLShA5672Tf4H3aZwK7hl
 F5w1wFLAfSruI3oNUCizHDpss+glV8Y=
X-Google-Smtp-Source: APXvYqxAk/3bZyaPyE0zuFl8LeS10ZFYoM070DGC5QUDmrfguYoq9MVlqH371zVU4l+E3roP/5VZag==
X-Received: by 2002:a0c:ae9a:: with SMTP id j26mr7251559qvd.163.1570474898546; 
 Mon, 07 Oct 2019 12:01:38 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.googlemail.com with ESMTPSA id g31sm9753559qte.78.2019.10.07.12.01.37
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Oct 2019 12:01:38 -0700 (PDT)
Message-ID: <5D9B8B8F.4060602@gmail.com>
Date: Mon, 07 Oct 2019 15:01:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <dee4f507-7c7c-024c-a57b-a1417d02f98b@gmail.com>
In-Reply-To: <dee4f507-7c7c-024c-a57b-a1417d02f98b@gmail.com>
Subject: Re: [USRP-users] Problems with N210 FPGA bitfile -- image not valid?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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

On 10/07/2019 11:19 AM, Francesco Restuccia via USRP-users wrote:
> Hi all,
>
> I've built an N210 image using the source code provided by Ettus--
>
> When I try to burn the FPGA image onto the N210, though, I receive the 
> following error:
>
> frank@frank-iMac:~$ uhd_image_loader 
> --args="type=usrp2,addr=192.168.10.2" --no-fw 
> --fpga-path=/home/frank/u2plus.bit
> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; 
> UHD_3.15.0.git-74-g9ea710b1
> Unit: USRP N210 r4 (F2E28F, 192.168.10.2)
> Error: RuntimeError: The file at path "/home/frank/u2plus.bit" is not 
> a valid FPGA image.
> frank@frank-iMac:~$
>
> This is the size of the image:
>
> frank@frank-iMac:~$ ls -la /home/frank/u2plus.bit
> -rw-r--r-- 1 frank frank 1303318 Oct  7 11:07 /home/frank/u2plus.bit
> frank@frank-iMac:~$
>
> Again, no modifications to the Verilog designs -- everything, 
> including makefile, is out of the box.
>
> Any suggestion?
>
> Thanks,
>
> Francesco
>
You must use the .bin file uhd_image_loader




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

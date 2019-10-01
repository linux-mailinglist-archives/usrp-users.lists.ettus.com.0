Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BC9C2BCC
	for <lists+usrp-users@lfdr.de>; Tue,  1 Oct 2019 04:10:29 +0200 (CEST)
Received: from [::1] (port=36182 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iF7cM-0008Qz-9X; Mon, 30 Sep 2019 22:10:22 -0400
Received: from mail-qt1-f172.google.com ([209.85.160.172]:40388)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iF7cJ-0008LP-1Q
 for usrp-users@lists.ettus.com; Mon, 30 Sep 2019 22:10:19 -0400
Received: by mail-qt1-f172.google.com with SMTP id f7so19653967qtq.7
 for <usrp-users@lists.ettus.com>; Mon, 30 Sep 2019 19:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=zb0ZV58GA0JxM0OnYkqACD3zDq8vZf0MbQS+Pks5uKI=;
 b=h12segVp475UP1IJ9q6AXaI2MPxi7AYl7sljUv36bOZ9SoODamrpy9zPWpZHFIhEw7
 OKqaKGbzTnwDXsgCbkyWt9MUs43iUEZTWSib+l06+dcEJqqgvCoUYPy+i0o9MoVdnkxI
 9e7DCIEZjMLCa52lyVZ9rVec8bNAOPnuS2hVei2erMIG094uchuSRYpoMnQuFFMfJyke
 gHa2FuYD+GtJKmo8MHZP1UCrpXtMitO3Q2GsTmYuaDu+a6izwa17rC+Ws72PKvF5dk18
 h+jGmY1IoTb4vLUXKymWBb3zJWXCtOwZlw8sU5Ti+OvE+O18WfzXhFv14jEwkjan89cK
 U7fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=zb0ZV58GA0JxM0OnYkqACD3zDq8vZf0MbQS+Pks5uKI=;
 b=VN6FWIIz4vrpDotbRyRSfE5CVOCqPlcptfnaOCeMMhlZhU+JOcgf0YpvPz1COsPxpU
 l8mhtPe9YBPSlDaxo0mcAJXRBb6yQ3ORGwZnhb4kChOfBsJ3se0qwJg6n/QWl8vamF/7
 MG75Z6DRH3NIPCTCobkLeuY0zsMQpy6jI2qaHvPS+M8BMMmnC1SVREyAV0U2bed45alt
 iXLDojHsgzKglheLlyoudCOD96MuQ2obxhGUKYJnzZsuJ8srmnj9XA7FJSoUmY56Z7dR
 BxrdSrTbI93iHvD9zXXt42zWDS1TcFNXuFJaawqrZQDZF5slWhvhSDW/KfJsLq2LUwAO
 g1nw==
X-Gm-Message-State: APjAAAXvXE4rAfgSyd47hSweHTDVPTZq+eXrOzFZL8VpRi7oDgNgyRmW
 imO4RFgNK2Udb4AQuL/l0wLfQnaf
X-Google-Smtp-Source: APXvYqxHiTuych7S7WK1MefxEO3LEeTFqGnYxma6yxgwwna5lAhsEP4f1RaXoaFtEvqOGsdjqeAwfw==
X-Received: by 2002:ac8:3ff2:: with SMTP id v47mr28665674qtk.15.1569895778316; 
 Mon, 30 Sep 2019 19:09:38 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id e5sm10360044qtk.35.2019.09.30.19.09.37
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 30 Sep 2019 19:09:37 -0700 (PDT)
Message-ID: <5D92B55F.4040501@gmail.com>
Date: Mon, 30 Sep 2019 22:09:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <4e2861db-3333-ffee-e0c0-cf8f525dcecb@gmail.com>
In-Reply-To: <4e2861db-3333-ffee-e0c0-cf8f525dcecb@gmail.com>
Subject: Re: [USRP-users] uhd_usrp_loader script defaults firmware to
 pre-built bin file
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

On 09/30/2019 05:58 PM, Francesco Restuccia via USRP-users wrote:
> Dear all,
>
> I am trying to load my customized firmware into an USRP N210. I have 
> tried the following but it defaults to the default image, regardless 
> of the input:
>
> frank@frank-iMac:~$ uhd_image_loader 
> --args="type=usrp2,addr=192.168.10.2" 
> --fw-path="/opt/uhd/firmware/usrp2/build/usrp2p/usrp2p_txrx_uhd.bin" 
> --no-fpga
> [INFO] [UHD] linux; GNU C++ version 8.3.0; Boost_106700; 
> UHD_3.15.0.git-71-g18bc320d
> Unit: USRP N210 r4 (F2E28F, 192.168.10.2)
> Firmware image: 
> /opt/uhd_gnuradio_installs/share/uhd/images/usrp_n210_fw.bin
> -- Erasing firmware image...successful.
> -- Writing firmware image...successful.
> -- Verifying firmware image...successful.
>
> Any suggestion?
>
> Thanks,
>
> Francesco
>
Could you check to make sure the file is actually there and readable to 
you?

What does "which uhd_image_loader" return?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

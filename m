Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CC04DBA68
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 22:55:26 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 09EF4385501
	for <lists+usrp-users@lfdr.de>; Wed, 16 Mar 2022 17:55:26 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fqNr+gay";
	dkim-atps=neutral
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 23BE9384C6C
	for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 17:54:25 -0400 (EDT)
Received: by mail-qk1-f182.google.com with SMTP id 1so3048986qke.1
        for <usrp-users@lists.ettus.com>; Wed, 16 Mar 2022 14:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=0IROhTr++BVD4xS/gPTqVMmG3di8U8GPuEZUEvGr8IM=;
        b=fqNr+gaybyn8DP9MsADfS1FhbWaOL0Wkoh69rxvbJkbYQeLm5ANulEgkZQmi7h38J+
         o4auwK1ixmFbBQa93CPHRPYB3lyvC3l3wX58vS56kbmDaZC4vMxEgtqvHN3g0j2AoRk9
         S6VN+vnguH+DTsBFcVrWq3i08lVSaxlkx7QeaefFTeqKpZeSewnfqCnNj9BD1J0JzS1U
         sjVdX3sshuqkFe4WyCI7chFWY1AGvbvMsol3Kd5ep1rq8VPRRKZe2+ewZgkIbaa6RKtr
         nu5sUEhWWh0xS+Re42DCqfxKGQHkkLlzEK5DvCZlxFBpDDZ3DhNd7J6VbNjLXpQR+hXt
         SpqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=0IROhTr++BVD4xS/gPTqVMmG3di8U8GPuEZUEvGr8IM=;
        b=OqSGUDhxmUXGvnFutCrRPEy8mRewkfSA4a1NAzdx1fvkUs7A9wdJBcfDoYHK361FWr
         Pr/pgvcIGMc1BmsGtljdiqrPcQlFk5LxfFi9ERCKKGw7Zw0hHvnTOXwSW+E0NzmDZYK5
         i8ThcwwI/p1WhsgCIplB4zCI/qpkcZnmo/Keil3LBWGGoCA+Yl/ozKaD2HtMvlybgv7a
         658/eCkbNXW5MluhG0Ju2Ie5+MNUE2HEHi2Oiv9yw7n/ov1S/DgbgBzDXWVoV0ShhiUG
         Wacv3qWASRcPFIVlMBIZrTAyQKmWnbMszbiXKsvNp8MHdfy7lGVOPgATLdiH2unjiFLb
         o1nA==
X-Gm-Message-State: AOAM533fmG7sfPy7nnPnIpyBTKwjr7mgvO6S5RHSFv3g6e74cym70P3E
	jRF61tXxlhHHb7dVmF9pwpnxAiXSSKs=
X-Google-Smtp-Source: ABdhPJwtDczv0mIP/W3Zy8e1f65ZnyBcFfyqRfgMor7iCrsNq5hDMJSzHF3cbgCdqUIEFJAI1EEobQ==
X-Received: by 2002:a37:6c45:0:b0:478:a755:8845 with SMTP id h66-20020a376c45000000b00478a7558845mr1155864qkc.362.1647467665202;
        Wed, 16 Mar 2022 14:54:25 -0700 (PDT)
Received: from [192.168.2.208] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id v7-20020ac85787000000b002e1c8376517sm2289283qta.22.2022.03.16.14.54.23
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Mar 2022 14:54:24 -0700 (PDT)
Message-ID: <d0314806-9391-b22d-6ccb-70f3fdc7251c@gmail.com>
Date: Wed, 16 Mar 2022 17:54:23 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <2b09f1a4-02a6-e7ac-31bc-9d4064d1678a@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <2b09f1a4-02a6-e7ac-31bc-9d4064d1678a@gmail.com>
Message-ID-Hash: LBLEJWOZ7WAAA6GZ4ZCPBTOBK6I6ZJDW
X-Message-ID-Hash: LBLEJWOZ7WAAA6GZ4ZCPBTOBK6I6ZJDW
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: LP0965 Antenna
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LBLEJWOZ7WAAA6GZ4ZCPBTOBK6I6ZJDW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-03-16 17:34, Giuseppe Santaromita wrote:
> Dear community,
>
> I have purchased a few LP0965 Antennas 
> (https://www.ettus.com/all-products/lp0965/) because I would like to 
> do a 5G transmission at 3.5 GHz (using OpenAirInterface).
>
> Is there any guidelines that I can follow for deployment? For example, 
> in the link it mentions that "The SMA connector is supplied but needs 
> to be soldered in place.", but soldered how?
>
> Thanks in advance,
>
> Giuseppe
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
I believe those antennas are manufactured by WA5VJB, and there's a bit 
of a user guide here:

https://www.wa5vjb.com/pcb-pdfs/LP8565A2.pdf

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

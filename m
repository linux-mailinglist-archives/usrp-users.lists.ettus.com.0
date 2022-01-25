Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9671449B53F
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 14:41:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DD31F384BC7
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 08:41:43 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="aFPsW6qV";
	dkim-atps=neutral
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 6F92A3845CC
	for <USRP-users@lists.ettus.com>; Tue, 25 Jan 2022 08:40:53 -0500 (EST)
Received: by mail-wm1-f42.google.com with SMTP id r7so301060wmq.5
        for <USRP-users@lists.ettus.com>; Tue, 25 Jan 2022 05:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=Z1F8T8sEbxLgVgag96q1esgRCS0CqTP781iBki3on3A=;
        b=aFPsW6qVLC9c8zklgbM6MidRdbgXhL8V3s7IjTDdKktnSs2T3imZsurbgGj916JdxX
         RFaw99f7TnG7f+wp6vicLFPkMxscPSYUbFrSd9IX6HR9VvnI6nwQAQ+NjBG6g+urBHny
         XjSYI2rEhAkytD36EdgKJHijfkJ/gYBKn6JWp03hc/4nzW9cmifJZZFLS9AVHcEw0ZN/
         ZjrNjxSfXBXIVRbIreBC8TOJGBabOW1rR1beONJ1v9g23UxXjQR65PZtRpkAq1HizYUf
         ss8We2Hd4jgry/SJ/brZkpSFpc0iVXhArTrgyJ8gG+oBwFM/MuU38X+LWAb7QMjpJvON
         Nefg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Z1F8T8sEbxLgVgag96q1esgRCS0CqTP781iBki3on3A=;
        b=H0gOYF0rZ2MQWWy4q3PY5lDePw0KviKs78jwWn5EBuXTFmGMIs21ttNg88izHMfrz5
         SxlB3GQF2jafMyuxULhSjHAWVhRdJW4GR2fWa8GFNlKmQ/lmgmvqO4oH6Gh0g/kNef3T
         Dc3DmBCUAqtw+JxvSbJj1SVxcqbqb91tSI0HwrO726MYAjfFnpANQ5juR3bl9dEJqNXi
         VJPkJEtwSeF3YzzK1M3DccLAatZ4VW0lesq5H4t6Ru/+uDSU7+z/9E5kvm2IfJ3JjNdZ
         eDgLIEldyiH9hpg03HY84GR4U9twOMLj+JFZAltIUlEmWI/HKFKK2Ee6wH7S7Pizmn4X
         proQ==
X-Gm-Message-State: AOAM532/zivAW8+XHoeHSxk/oNSV42BEHN7eI9cTRg9wLxflY3ZzNZjR
	HzPG77oLZwIy0JOlOP9kGsVCttfwK0aJUgas
X-Google-Smtp-Source: ABdhPJwe2f2hrpjsJKpnFY+AiX4DvUqs2uvfFpdgwQYj5T1h0uDh0u+rGBFz/oDD0BxYE9ayhCzNIw==
X-Received: by 2002:a7b:ce04:: with SMTP id m4mr3058478wmc.157.1643118052200;
        Tue, 25 Jan 2022 05:40:52 -0800 (PST)
Received: from [192.168.178.39] ([87.123.247.137])
        by smtp.gmail.com with ESMTPSA id i94sm16999668wri.21.2022.01.25.05.40.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jan 2022 05:40:51 -0800 (PST)
Message-ID: <aa7a095b-3477-d59b-8eba-102dfb9ff8ef@ettus.com>
Date: Tue, 25 Jan 2022 14:40:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: arash karaji <arashkaraji1375@gmail.com>, USRP-users@lists.ettus.com
References: <CAC=jf=8Maiz0CdjWpQqJGVTDJSJS1+vR-T3GpGg6KLzRvFyh2Q@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAC=jf=8Maiz0CdjWpQqJGVTDJSJS1+vR-T3GpGg6KLzRvFyh2Q@mail.gmail.com>
Message-ID-Hash: OWKUF3ADSRNCA5FCDADXPZFNZWNTZSNW
X-Message-ID-Hash: OWKUF3ADSRNCA5FCDADXPZFNZWNTZSNW
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: subscrib removal
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OWKUF3ADSRNCA5FCDADXPZFNZWNTZSNW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Dear Arash,

you've got a gmail account. It definitely works to click on the "unsubscribe" button next 
to the "From" field. We can't do this for you.

Best regards,

Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or validated as a product, for use in a deployed application or system, or for use in hazardous environments. You assume all risks for use of the Code. Use of the Code is subject to terms of the licenses to the UHD or RFNoC code with which the Code is used. Standard licenses to UHD and RFNoC can be found at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that the goods or services (i) are not for the use in the production or development of any item produced, purchased, or ordered by any entity with a footnote 1 designation in the license requirement column of Supplement No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a company is not a party to the transaction.  If our understanding is incorrect, please notify us immediately because a specific authorization may be required from the U.S. Commerce Department before the transaction may proceed further.

On 25.01.22 14:26, arash karaji wrote:
> Please remove email address
> arashkaraji1375@gmail.com  from the distribution
> list.  Any incoming links to do so are blocked by our email manager.
> Thanks,
> arash karaji
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

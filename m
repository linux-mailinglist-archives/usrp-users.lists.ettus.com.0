Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C4A48EBC2
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 15:36:36 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E5C6D384F52
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 09:36:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PM/bKQ+/";
	dkim-atps=neutral
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 76DBF385482
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 09:35:00 -0500 (EST)
Received: by mail-qv1-f46.google.com with SMTP id jr5so10164187qvb.11
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 06:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=qpZcPcZ2CLo2ai2RPJuCPtcHgSxu+ryPRNUb0uiE6kY=;
        b=PM/bKQ+/cYadG9KYPHYS1VlY9vq7fQQVl86dP3M7IQJ/lPOa/gDV1VJX5BDwNf1Oh/
         RPN3uunytFCMbPVVGlXcMLYfNaHgmxxsZvQ+l0OlbC2/31y0CBS32iO55ew5Y/f+eZ/h
         dYx1Tum90QCmtoX5m2s8nZVuBqCBI/444UxnH5ls5/7fIHoWS+cFv7EQW5n2EbUhb/Ti
         zNfuG2QJcvVKPowErfSEgniIbK57OudyQ5+eDBIi45LsHFwX3J+hCumakN+0Mhgd+ob5
         0vsruj0T76yYVkoPez2w1tkTyWPg+GCPDlH/QawWn/y/CQNuSYbg4evrUWu6CfW6BEL/
         UpoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qpZcPcZ2CLo2ai2RPJuCPtcHgSxu+ryPRNUb0uiE6kY=;
        b=Yk+41HL0iCoIEa66FLIxpg92vnDfo2gAB+vgLJ82bIsYazGxvGQz04NiC9uyIdjvrp
         zgUYozL27q31QavDWCwMq5DJlvhKTUL2bLu1wTNzRKgUvcQkR5DaEPLC/yIoEeWKe7oi
         ozc9PS+Alahmn3D+yD4F70YR2ChUpfS2QGRHdwW6/xjwvezK3pTtvKgzAgRxBy6lcU74
         vGWhcm1V5OW+ocPiCrGThoH03Z481dKPUWQWEYpdnl5CBDlpwdcGmbNSMsezJdL/K4+1
         Oth5Y8VKqniQgPhxn8jOIPRS0XLFP6OQ/c4FA9IvnyNWnOQzXqnjBmM/MTRDXeXoi01S
         4h0w==
X-Gm-Message-State: AOAM530IY3t6giBZleJpkGNQKb2FGSBGRNWsXaoo7pTGo+GbP6oNJ8Sd
	nU3xbD+qZbnkOVvigEpeS9O3ORM4huI7Ng==
X-Google-Smtp-Source: ABdhPJxhzfXZfZ0NHXAoC9DBnqOaPwW5GjmRC8D5En3utuQ1eJlja/50yGMGqmDZ+GqsG0OYP62b8g==
X-Received: by 2002:a05:6214:d6b:: with SMTP id 11mr8294800qvs.69.1642170899311;
        Fri, 14 Jan 2022 06:34:59 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id f33sm4013542qtb.56.2022.01.14.06.34.58
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Jan 2022 06:34:58 -0800 (PST)
Message-ID: <2b2c4d7b-ead1-3769-ceec-2c745e8408f6@gmail.com>
Date: Fri, 14 Jan 2022 09:34:57 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <9A9A1A5E-7E18-4FA6-9E1E-263E88992806@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <9A9A1A5E-7E18-4FA6-9E1E-263E88992806@gmail.com>
Message-ID-Hash: SPWSZXT7DTERR6M6XB7G6KYTQPZSWST4
X-Message-ID-Hash: SPWSZXT7DTERR6M6XB7G6KYTQPZSWST4
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/SPWSZXT7DTERR6M6XB7G6KYTQPZSWST4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 2022-01-14 01:11, Paul Atreides wrote:
> I am trying to configure the N321 to take some TX phase measurements between RF0 and RF1
> I have updated the file system to the latest release using the KB guidance.
>
> My host/software side is:
> GNURadio 3.9.5
> UHD 4.1.0.5
> Ubuntu 20.04
>
> My gr-uhd block has the LO settings:
> Channel 0 export = true
> Channel 0 LO = internal
>
> Channel 1 export = false
> Channel 1 LO = external
>
> On the hardware side am I understanding the LO diagram correctly that in order to achieve the highest phase accuracy between channels i need to share the LO between the transmit ports of RF0 and RF1?
> If so, would I do that by physically connecting the TX LO OUT0 (really 0-3) to TX LO IN1?
>
> Am I missing anything obvious for the settings and/or is there a more desirable way to do this?
>
> Thanks
>
> <end transmission>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
This KB article may be of some help:

https://kb.ettus.com/USRP_N320/N321_LO_Distribution

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

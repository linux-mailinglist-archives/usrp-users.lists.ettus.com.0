Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FAE5370E3
	for <lists+usrp-users@lfdr.de>; Sun, 29 May 2022 14:03:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 482A6384397
	for <lists+usrp-users@lfdr.de>; Sun, 29 May 2022 08:03:42 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1653825822; bh=scQkpOTRoeGZ11j6qbhor4dDWTdOop3N9jiDh9IIB/M=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Lf46h1rGEErvVIzDSJOer3EzVzNuzVq6teLJHgx7lQjo6jnHc1dPpN4mPkvXJCkE4
	 3oYDpNsor1SvYCS34kwO0xiA/LESsFJT6EHFsa74fwSz2FITV3IPybWMT87UJwIY8W
	 4a4TlmyzMIBBiU5e8OPmTrVvHvF5VYeac9HGSzFRIyUPUsWdX2QSrFmbL58wyz2M4/
	 znODUHh5lISG/N0Fr2MMco7gcxGhoxYdgLvhicsUR9AV52dFY70WLHT6TVElIkSW0T
	 ztF+je6A9QG4LenofFtoJ1eCezRAhI17gVNVRoFBRIiOwcNdrRc/Jqkc8UTQC/7m/1
	 Y2jxwSKhBovaA==
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	by mm2.emwd.com (Postfix) with ESMTPS id A43B6384035
	for <usrp-users@lists.ettus.com>; Sun, 29 May 2022 08:02:33 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="m1yRnGwt";
	dkim-atps=neutral
Received: by mail-ej1-f50.google.com with SMTP id rs12so16107465ejb.13
        for <usrp-users@lists.ettus.com>; Sun, 29 May 2022 05:02:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=cbIbdqmm4Mnxg355Uo2G+N8JbmLPhjMFsEFjWH0XB2M=;
        b=m1yRnGwtvAamjm42XtGV1DJtnOWzyuY0Do8sgFRsdPDCl2yYipsrQZCqYCyvA1heQO
         yhn0Nl95CyyyTPdX5+rpR1A4xhXAgFluDh5sxA37QUnaDi8O+XHPYo3DK/ZmgOc/QzyJ
         gGFoOMdWvc4irf3WCFd6hlDokoPye3QbzpNwB+FxM1VXPs/7SgmFfDT45s1BSvimdqV7
         xsle26tfRR5WP9Z58MQe3BRc7QD7aLOlt+xesW98VK27Pzkc36OkxM+STA04p9ZAoEeF
         CVKSi+5uuuPwxtdIEjKrVeCJXA50HkROPxAOsQQIesy9gvWFjtuuMYHk1QA1Vh21B7+2
         Lpqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cbIbdqmm4Mnxg355Uo2G+N8JbmLPhjMFsEFjWH0XB2M=;
        b=WDA7bgxRvyk7GkONxEL3cRmc/wnGtWY5dord55InEhIPLs5hOW973VL64MDXCjeN23
         12rmkiEdEYcV4witwB0qZKhJp/fqApY5pG0iHgiZN3EKRpSBsOnVgTVeEFzdd2Znwdck
         vQF7KOue+Bi0KRJoHWpszocx5AV/XepOb8Qu0R4sP3sPuMR1FTvBEX2eKY60XlLYBHov
         FmnFLESzi62W1UvUtmJ/0+ntZ6jkIOLsnBhLFLtMhS9yHoZgtfpZ0cIcDc+d53vPZRl4
         Cl2msYh0e/nOVhMfEX2dQ+hLVj1j2ql/PX4Ba3AVpmDQ9Vlc8i8+foYqUe8KEYIB44kw
         AoFg==
X-Gm-Message-State: AOAM530iGvJkvBcC0Jl0rAM4FMOIpD572Qzy3HqN+d2vf0jIjbQSJuIU
	gZ0n4IGSuCj+UASbqL962znVKrd84h6/U1Xl
X-Google-Smtp-Source: ABdhPJzkKpYj7TnaTUDgVuY9ZllT57MkYaqNsljTnFFJdP3SPqCeGUbtPEY7mTGJjO6HyYj1C3HzYg==
X-Received: by 2002:a17:907:2d8e:b0:6fe:b423:9693 with SMTP id gt14-20020a1709072d8e00b006feb4239693mr37646694ejc.698.1653825752297;
        Sun, 29 May 2022 05:02:32 -0700 (PDT)
Received: from ?IPV6:2001:9e8:3846:61fc::d8d? ([2001:9e8:3846:61fc::d8d])
        by smtp.gmail.com with ESMTPSA id 12-20020a50874c000000b0042bc5a536edsm4868519edv.28.2022.05.29.05.02.31
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 29 May 2022 05:02:31 -0700 (PDT)
Message-ID: <5995527a-8d4b-90c0-a335-11a026e520f3@ettus.com>
Date: Sun, 29 May 2022 14:02:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAA=S3PtTWd58=86uj1n-Ac7WJ6zftigHEw+nkZqJtvyz9t+9tA@mail.gmail.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <CAA=S3PtTWd58=86uj1n-Ac7WJ6zftigHEw+nkZqJtvyz9t+9tA@mail.gmail.com>
Message-ID-Hash: DXKARF2NPWCTX5Z5RVY2QGXM5Y6FEF4R
X-Message-ID-Hash: DXKARF2NPWCTX5Z5RVY2QGXM5Y6FEF4R
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: What's RFNOC image builder Unit in gr-ettus and Gnuradio?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DXKARF2NPWCTX5Z5RVY2QGXM5Y6FEF4R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Hi Stackprogrammer,

have you read 
https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0#Running_the_Image_Builder ?

Best regards,
Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or validated as a product, for use in a deployed application or system, or for use in hazardous environments. You assume all risks for use of the Code. Use of the Code is subject to terms of the licenses to the UHD or RFNoC code with which the Code is used. Standard licenses to UHD and RFNoC can be found at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that the goods or services (i) are not for the use in the production or development of any item produced, purchased, or ordered by any entity with a footnote 1 designation in the license requirement column of Supplement No. 4 to Part 744, U.S. Export Administration Regulations and (ii) such a company is not a party to the transaction.  If our understanding is incorrect, please notify us immediately because a specific authorization may be required from the U.S. Commerce Department before the transaction may proceed further.

On 29.05.22 10:48, sp h wrote:
> What's RFNOC image builder Unit in gr-ettus and Gnuradio?
> I can work with RFNOC blocks but I can not understand the application RFNOC image 
> builder Unit can anyone has any knowledge?
> Screenshot from 2022-05-29 13-15-41.png
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

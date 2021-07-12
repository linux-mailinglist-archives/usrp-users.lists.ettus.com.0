Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 365753C6208
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 19:35:45 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B72D384D47
	for <lists+usrp-users@lfdr.de>; Mon, 12 Jul 2021 13:35:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NCaNV4cn";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 4E7A2384559
	for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 13:35:02 -0400 (EDT)
Received: by mail-qt1-f173.google.com with SMTP id g12so14499746qtb.2
        for <usrp-users@lists.ettus.com>; Mon, 12 Jul 2021 10:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-transfer-encoding;
        bh=nLKryL3zG1GFgbIx4j7bh0NRkXcaMgh7kALrkh+p5NA=;
        b=NCaNV4cn6k75BYQlj77elOwpptTPWX/b1driOmzuYh2CJYgQTqqNX+w58rxd2Uu1NF
         tM+R4//GhuRmflQliUzG97CKFOVgN2HACbDqfkbkPYD6Oiy2Ie4zfu65/47NjtlI2mgw
         As8fuDN20R7+wUAbJu5ZzFa3zX5CUegvuOTU4AueswQ8WwmCFSJ7pxjrVcCit4Tr6yOR
         0ypVMfeYrrzFy3XGMdmKmcpR7fW1AsT68LRSaQslMcLbmjSjqCF4N6GnCK60XtnsyY39
         bKfhy908fvmb7TeFx8yC81B79w7P/qqtqQrKj5sCkq06crPJ69LjFlG6rpMjKxrtuiVh
         L8Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to:content-transfer-encoding;
        bh=nLKryL3zG1GFgbIx4j7bh0NRkXcaMgh7kALrkh+p5NA=;
        b=PJ2MVFBVdkD3Gz1QANWtUf7nQdo4z3qsNQpRP0K0W9m4CMzSEcveColzpgyJzJ3oAv
         rACSKgudiRoIeLHoFlUZMlYV1lyjDDG3HSpILDgAIR6hv/PlF5cT+JKh504uihhKqIJP
         gSP2cKFGkYQbtkAAYlI0rc8Ar62C5+PpDryAzIYepZEsTww1PadnKKvScDI1ubsxeFSV
         6vWZAOk29ZTneqXO/D4Ol94nC2RrGrVeUkzOkyrIRalmyARhtkejfQ3Gd/TI53kghW7m
         UXpTCYwBn8Hcq3IXfU3Tk1+UgD6znJVknXy3NuFeHJMhCwFUu/3DbF2EYP+GHwmUAPmc
         3N4A==
X-Gm-Message-State: AOAM532bmFSa82isCkHf7/E3JRj0yprp+jtEOkEFo+CxF744A+4ygKfa
	Plm55jgrWAnUnZ3gh+ORcEF3BkyFHjQVBA==
X-Google-Smtp-Source: ABdhPJyYsT22jLxYN8bGQU4albdtd9tPxcaGtoID9dVhkXTExgSNfRt3zD4l4wEHzVFK6IiW/rtCRg==
X-Received: by 2002:ac8:604:: with SMTP id d4mr48323438qth.304.1626111301247;
        Mon, 12 Jul 2021 10:35:01 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id x20sm6930713qkp.15.2021.07.12.10.35.00
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Jul 2021 10:35:00 -0700 (PDT)
Message-ID: <60EC7D43.8010204@gmail.com>
Date: Mon, 12 Jul 2021 13:34:59 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Arjan Feta <arjan.feta@unifi.it>
References: <gKHN30YZKExbabEwNniBHHVITTM428uKVVSUcEE1f4@lists.ettus.com> <60EC778A.7050201@gmail.com> <CADH2tdNkH7OdYLjX4AYyWu+3u8DzrB_OTzf7HEfqabK3aCm=PA@mail.gmail.com>
In-Reply-To: <CADH2tdNkH7OdYLjX4AYyWu+3u8DzrB_OTzf7HEfqabK3aCm=PA@mail.gmail.com>
Message-ID-Hash: QHKJY5JZSQHNGNOZVLIRGYSJXP7G7FJF
X-Message-ID-Hash: QHKJY5JZSQHNGNOZVLIRGYSJXP7G7FJF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Power calibration subject to temperature variations (X300+TwinRX)
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QHKJY5JZSQHNGNOZVLIRGYSJXP7G7FJF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

On 07/12/2021 01:31 PM, Arjan Feta wrote:
> Helloo Marcus and thank you!
> I have already did some tests with the two physical channels, fom TX 
> to right before the X300 SMA ports, once with: Ch1->RX1, Ch2->RX2; and 
> then I exchanged to: Ch2->RX1, Ch1->RX2.
> The results showed instability with temperature gradients in RX1 only. 
> This throughs suspitions mainly to what comes after, hence the USRP 
> device. The main suspect for us is obviously the TwinRX. More 
> specifically the temperature gradients inside the x300 case, being 
> that RX1 SMA port is nearer to the case's edge. Could it be the reason?
> If that is so, do you recomend to take the device off from it and use 
> it like that?
>
> Regards,
> Arjan
>
What is the magnitude of the temperature effect you're talking about?  
When you did your TX--->RX tests I hope that you used plenty of
   attenuation, otherwise, you risk damaging the front-end of the TwinRX.

I'm not sure what you mean by "take the device off from it"--please clarify.

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E3AE5342F6B
	for <lists+usrp-users@lfdr.de>; Sat, 20 Mar 2021 20:59:57 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A138D38370B
	for <lists+usrp-users@lfdr.de>; Sat, 20 Mar 2021 15:59:56 -0400 (EDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 513293836C0
	for <usrp-users@lists.ettus.com>; Sat, 20 Mar 2021 15:59:47 -0400 (EDT)
Received: by mail-wr1-f46.google.com with SMTP id j18so12565009wra.2
        for <usrp-users@lists.ettus.com>; Sat, 20 Mar 2021 12:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=psw4EmwwFJok6LcBsHcGf1bt/YXyQcQeFXvtUWo9Qi0=;
        b=Qu+XB6WMty5Jz8HDAObbgMYTVLbpknT/D4miRqN9Z2ZjbvAkzZqrmpH/X+C5elOafm
         ijtoGIvbNqLe9xCf/x9wMBEiPouPz98Gd01SWX82MHorSUAKpnbBZTWogdcdEB+UCfGo
         wZY9ihwHei2KHlcSbXLOjKmyuI0Wy/wTkxQ0RpL+IoLusGdcaO/ucovg6x3SnVFaLBNW
         UXT4CwsLBIOMLzkjWpvLvyOiUb6YIoHl5lfqxqe10h2k04XX3rPqsKgTHUn/crIS1BgS
         dAkhPWMDda6EXhJeOl3tcGhqtCwkUL+8VpenbaGcLhbjr2TA6OVLu7EcWbh6mQRbBUlG
         3qxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=psw4EmwwFJok6LcBsHcGf1bt/YXyQcQeFXvtUWo9Qi0=;
        b=fQorvF7iyqLN/NT71oeURonAix+yMl1NqOvoOs/g4MdwnaUXC0ezFGccEVHVAqyrjQ
         JTEpFYI6gR7Szlr3CyamleY7ZVsp9Nea2CRuqjbrJSKqHTxQR/J3jG1AyNjtf3BMjYLL
         oF+73dggFPeSccnTZffgsaKP5UZsU8jmOhD/YR8tMbo14++buJhyej+SxoE64yDZNccd
         acTO4c53scZbca2TYAV6RFcFiuhQqkJ4DVsSykqA1e8UlvvKwegAh0dVMeQjZpO0g4Db
         vLyrFqHCqePb3cdGuWFJoVKuCsFhrB6STBxfhtrQ4Mzi4gdN7aA8pYviiCjU/6ZN22qH
         N75g==
X-Gm-Message-State: AOAM533uLSLgTzgihkKVU47R8TgFWW0wEV0Y65e7bU5kcLdIwsxIzZcd
	9sa7zFR88FsImjz8qXH3vGpAZRJhhe87fx92
X-Google-Smtp-Source: ABdhPJy6ZwgUC0PIs7Do6ZBlPqxX1Ts0mgjYsEGsYkFSD7NAVFtsdSiqpnE2vTfur423dnFR7tfgyQ==
X-Received: by 2002:adf:dc4e:: with SMTP id m14mr11066427wrj.248.1616270386093;
        Sat, 20 Mar 2021 12:59:46 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
        by smtp.gmail.com with ESMTPSA id e17sm17062864wra.65.2021.03.20.12.59.45
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Mar 2021 12:59:45 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <8b9169b13f17449cbd494459bf943fdb@kth.se>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <db60037f-0a46-7553-086a-97338b0e8279@ettus.com>
Date: Sat, 20 Mar 2021 20:59:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <8b9169b13f17449cbd494459bf943fdb@kth.se>
Content-Language: en-US
Message-ID-Hash: YFEHF7XLHE6TZLPFZHUGFHMUWI44JE7J
X-Message-ID-Hash: YFEHF7XLHE6TZLPFZHUGFHMUWI44JE7J
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E320
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/YFEHF7XLHE6TZLPFZHUGFHMUWI44JE7J/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Seyed,


the E320 is probably not the device you want: While you attach B210 and X31=
0 to a powerful
PC, which would then run OAI on the samples gotten from the USRP, the real =
strength of the
E320 is being an embedded system, especially for people who want to develop=
 FPGA logic and
embedded software to run on the Zynq *inside* the E320. As far as I can tel=
l, OAI is far
far *far* too CPU-hungry to run it on the 800 MHz dual-core ARM inside the =
E320.

You can indeed also use the SFP+ to stream samples to a PC, but then just b=
e buying a
pretty expensive to the B210 with no added benefits.


Best regards,

Marcus

DISCLAIMER: Any attached Code is provided As Is. It has not been tested or =
validated as a product, for use in a deployed application or system, or for=
 use in hazardous environments. You assume all risks for use of the Code. U=
se of the Code is subject to terms of the licenses to the UHD or RFNoC code=
 with which the Code is used. Standard licenses to UHD and RFNoC can be fou=
nd at https://www.ettus.com/sdr-software/licenses/.

NI will only perform services based on its understanding and condition that=
 the goods or services (i) are not for the use in the production or develop=
ment of any item produced, purchased, or ordered by any entity with a footn=
ote 1 designation in the license requirement column of Supplement No. 4 to =
Part 744, U.S. Export Administration Regulations and (ii) such a company is=
 not a party to the transaction.  If our understanding is incorrect, please=
 notify us immediately because a specific authorization may be required fro=
m the U.S. Commerce Department before the transaction may proceed further.

On 12.03.21 15:57, Seyed Samie Mostafavi wrote:
> Hi everyone,
>
> We are starting a project and we want to buy a batch of E320s and our goa=
l is to run
> Openaireinterface 5G on them.
> These=A0cellular communication=A0softwares like=A0Openaireinterface and s=
rsLTE they recommend
> USRP devices such as=A0B210 or X310 and not E320. I wanted to ask if anyo=
ne has tried E320
> with srsLTE or OAI or not.
> I guess since OAI works with UHD driver and the RF chip is AD9361 like B2=
10, there
> should be no difference. However I am not sure.
> Do you see any major difference in the drivers or capabilities of E320 an=
d B210 or X310
> such that it could=A0become a roadblock for us?
>
> Best,
> Samie
>
> -------------------------------------------------------------------------=
-----------------
> Kth Logo
> =A0
> Seyed Samie Mostafavi
> Doctoral Student
> KTH
> /School of electrical engineering and computer science (EECS)/
> /Department of information systems and engineering (ISE)/
> Malvinas v=E4g 10, 100 44 Stockholm
> ssmos@kth.se
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

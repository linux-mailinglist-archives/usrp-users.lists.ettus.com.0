Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 461C33AF872
	for <lists+usrp-users@lfdr.de>; Tue, 22 Jun 2021 00:31:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DAC51383EF2
	for <lists+usrp-users@lfdr.de>; Mon, 21 Jun 2021 18:31:46 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="PowRcb2z";
	dkim-atps=neutral
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	by mm2.emwd.com (Postfix) with ESMTPS id 6B873383734
	for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 18:30:55 -0400 (EDT)
Received: by mail-wr1-f46.google.com with SMTP id j2so10806477wrs.12
        for <usrp-users@lists.ettus.com>; Mon, 21 Jun 2021 15:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=ZrgkuExYVR92Rkl8wwLQuvHVzW6ajgXGV2Y7nZJsCJY=;
        b=PowRcb2zO6uNboeWdsHIK5ccpzBvwCn+C5NI0E9v7wkQQynoOVA7vnCkLeu524g0BK
         jd4ueklMzTef7tASh8GQjR3srgGfcx8yYrGWYCgFo9t8b//BbqbXksXulPRl5ClhYD0F
         1E68CLbKuC+N7psOs+VX563GaNhQQIe3R5FKD33EQUH21ouiF40s4KBN+46b4iE75NaK
         D8I+ARwOl4VTUyFyUYiOWXcGtDNsNQTaW5Q1GZohUzidi5+EuNCK1cg2i1TFHsKvBW08
         HDq0onhlm6LjaK1TX2VWIsaz/+qESZEMrvUJXDVojEfS6MHLSpUNuXoA/M0xuN0B28B2
         XHMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=ZrgkuExYVR92Rkl8wwLQuvHVzW6ajgXGV2Y7nZJsCJY=;
        b=qMwTKmWZTGQThO5vaiPcb+UVO1J85UdIzG2nNkjyvhuJrh9bM6EL2mBuBukNy/8wxo
         WTZbmGB3iDUQ4b9KFT/IfUiu4qeonkhJczlaEOhT7m5vqntbovQdu3zybUZNiHnSbiGf
         A9RHxlfrHCgvwG2M72YI3iT5CCHdpzsKEWveXaBo8YoftgIEg2s4V0owtgl89cAOz9Ey
         AutLQPmbT/teKtodvnG0sUxIz2yq6zM+N2z1ffxY839TCshlmIGuFvV4aKxcg8gZkOh9
         bQTNk9YQa+kU2wvmoWipJopxSRLzxokIkeA5XkRCZAk0gY6ZgiVk0xcdQ5kyB4D2f4dm
         nSAw==
X-Gm-Message-State: AOAM5320uFPBAWsrRy3RfJjgZckPBgRJWhtkvKQ1BOmrKkGzHgrBgz1T
	Hk2QrG9TKemkSNXp5iUVIJBlbG3Hxicq22dGYAM=
X-Google-Smtp-Source: ABdhPJyJwUcr7ehUWEhiTh4QClnPDd0rjsEp+JKYp9dBkHnQsbIuLAXOV+xB82tj7RIIyhpSRjFrcA==
X-Received: by 2002:a5d:64c3:: with SMTP id f3mr792001wri.263.1624314654266;
        Mon, 21 Jun 2021 15:30:54 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-183.hsi.kabel-badenwuerttemberg.de. [46.223.162.183])
        by smtp.gmail.com with ESMTPSA id g15sm729558wri.75.2021.06.21.15.30.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 15:30:53 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <BYAPR06MB53523BE92F6B1451D1BD12BDD90A9@BYAPR06MB5352.namprd06.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <e1133a28-c110-2368-18e0-aa5ac38246b1@ettus.com>
Date: Tue, 22 Jun 2021 00:30:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <BYAPR06MB53523BE92F6B1451D1BD12BDD90A9@BYAPR06MB5352.namprd06.prod.outlook.com>
Content-Language: en-US
Message-ID-Hash: XCAQUKP6QISCLYYK4AT3SJDLIHJZRCQZ
X-Message-ID-Hash: XCAQUKP6QISCLYYK4AT3SJDLIHJZRCQZ
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Adding Timestamps to B210 RX Samples
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XCAQUKP6QISCLYYK4AT3SJDLIHJZRCQZ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

that's the right (and only) approach: Metadata contains the time stamp for =
the first
sample in a packet; the rest is counting!

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

On 22.06.21 00:24, Alex Bouvy via USRP-users wrote:
>
> Hello,
>
> =A0
>
> In the paper below, the authors say that they have set up their USRP devi=
ce to include
> timestamps for each recorded sample, but do not provide detail on how thi=
s was achieved:
>
> =A0
>
> https://ieeexplore.ieee.org/document/6533293 <https://ieeexplore.ieee.org=
/document/6533293>
>
> =A0
>
> I have been looking into what is required to achieve something similar. P=
articularly, I
> have been working with the source code of the rx_timed_samples.cpp exampl=
e provided in
> the UHD files, along with this page in the Ettus manual:
>
> =A0
>
> https://files.ettus.com/manual/page_sync.html
> <https://files.ettus.com/manual/page_sync.html>
>
> =A0
>
> Looking through the rx_timed_samples code, it appears that the metadata a=
ssociated with
> the recv(..) function contains a time_spec field which is the timestamp f=
or the first
> sample in the IO stream, but it=92s not immediately clear to me how that =
might be used to
> timestamp all of the samples, which makes me think this may be the wrong =
approach. Is
> there a simpler method to do this that is known?
>
> =A0
>
> Tangentially, I=92ve also looked into adding the timestamps through GNURa=
dio, but there
> does not appear to be a way to do this as far as I can tell.
>
> =A0
>
> Any help is much appreciated.
>
> =A0
>
> Thank you,
>
> Alex
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

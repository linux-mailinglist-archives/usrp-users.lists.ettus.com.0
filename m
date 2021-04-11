Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A73A635B5EB
	for <lists+usrp-users@lfdr.de>; Sun, 11 Apr 2021 17:34:43 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6F256383CC3
	for <lists+usrp-users@lfdr.de>; Sun, 11 Apr 2021 11:34:42 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="tlEg2kq2";
	dkim-atps=neutral
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 0A667383CC3
	for <usrp-users@lists.ettus.com>; Sun, 11 Apr 2021 11:33:55 -0400 (EDT)
Received: by mail-wr1-f43.google.com with SMTP id s7so10234653wru.6
        for <usrp-users@lists.ettus.com>; Sun, 11 Apr 2021 08:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-transfer-encoding:content-language;
        bh=VNIk84JsZg4yklNz8p6hjt1vBU7CZ2xfpnPd4iIBsD8=;
        b=tlEg2kq2IJi3wd76C1AfKZYvqryCJkWaTfjh3nUqlJ0bt1L3dBwOr/g6UrG0BpIaTM
         gb+KX3x/GTep8JtoyLsO3KWH3axT1jgQWrm5GmQEtZRe8+EGtv5Nf7iVuEk0oZSMVecl
         YNxLVwIvcqKrjNszTlL+94fB4HJ9Y/ZZOFtc57wHuOtpQJ+p1XfeMV0/tJYxrZ+ixdyg
         V2W3xzwkZFhk2SfZEJdTTcTncKojKmmaRjDzoaMTY9skiOfcV5o+KQ1FBmX9XM5epjjf
         1LoUu4J9FpW8T4OuCh3Ejk4HqxO7eprl6Cd3vH+bzMwXek00yAk881CF9S1BYyFJc+CS
         0guA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=VNIk84JsZg4yklNz8p6hjt1vBU7CZ2xfpnPd4iIBsD8=;
        b=ccTG/eKNm+Bnhx5Rmn212liycDIoV7Nzobseb6gqAcBQnZlPcQQZZ/RkmVmSbH2QmT
         NNk/tOb5GZvzR6oh9BOabb4J/oDrTAaZXtfgrUUoxMIUNFVdR+VqyJCkVvWLOCMZXoT2
         VC0NrCuaAzLSXP8bJYLFZys6VahgJd+4g5/HJVqfu1usTjXm3R30LwXl1j1g7SEY4IE+
         u33HbqRKgmCfv7HiNmlDen6KvcpMk1Z/kB5voylNbFgnHTGJaWeuq6FNlKoCZrdJubs5
         DF3oYNCzYoqENvM4A4j0rx22zIHKjfROHChSeo/GM5rXoI3ZjiXl0+FIJBzTJyobs+3I
         +r9A==
X-Gm-Message-State: AOAM531+hNlt/w35fDGLuKB0ys9MGICc06l51YyIzjV2RQStCkBV+tU4
	jAfb8cCe0X5IUdwQZ7Ii6CNS8Mn8XIY8bYeM
X-Google-Smtp-Source: ABdhPJw4BA0P6qVL+o0tuDo5+uuud7XW2phkYhdwmei+s+JMtI+VrPgfLAcz0eC2tddO6vy3FX5j5w==
X-Received: by 2002:adf:eec1:: with SMTP id a1mr22155905wrp.81.1618155234762;
        Sun, 11 Apr 2021 08:33:54 -0700 (PDT)
Received: from [192.168.128.8] (HSI-KBW-46-223-162-193.hsi.kabel-badenwuerttemberg.de. [46.223.162.193])
        by smtp.gmail.com with ESMTPSA id c16sm15754467wrs.81.2021.04.11.08.33.54
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 08:33:54 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <SN6PR03MB416058F4E10D32E71F77AFC6B1729@SN6PR03MB4160.namprd03.prod.outlook.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
Message-ID: <0e94f6de-0a76-f8fe-0914-0aa9738b67e8@ettus.com>
Date: Sun, 11 Apr 2021 17:33:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <SN6PR03MB416058F4E10D32E71F77AFC6B1729@SN6PR03MB4160.namprd03.prod.outlook.com>
Content-Language: en-US
Message-ID-Hash: HAV6WEMT65KKMDJESNWQKF4KRVBCZHKC
X-Message-ID-Hash: HAV6WEMT65KKMDJESNWQKF4KRVBCZHKC
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Verilog Module Directory
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HAV6WEMT65KKMDJESNWQKF4KRVBCZHKC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Rylee,

did you add the files to the Makefile or Makefile.inc or Makefile.srcs (dep=
ending on where
your files ended up in) that contains the instruction to build your main mo=
dule .v file?

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

On 10.04.21 23:15, Mattingly, Rylee wrote:
>
> =A0
>
> I have broken the code for my RFNoC block into a couple of different Veri=
log modules to
> help with single file complexity. Unfortunately, when I try to build the =
image it
> doesn=92t find the module files when I put them in fpga/ directory of the=
 OOT tree module.
> I have also tried one of the UHD lib directories where other .v modules a=
re located but
> that doesn=92t seem to work either.
>
> =A0
>
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

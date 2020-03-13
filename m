Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF085184F4F
	for <lists+usrp-users@lfdr.de>; Fri, 13 Mar 2020 20:32:50 +0100 (CET)
Received: from [::1] (port=52290 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jCq2z-0004dT-KY; Fri, 13 Mar 2020 15:32:41 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:40728)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <martin.braun@ettus.com>)
 id 1jCq2w-0004Xi-D3
 for usrp-users@lists.ettus.com; Fri, 13 Mar 2020 15:32:38 -0400
Received: by mail-ot1-f42.google.com with SMTP id h17so11309303otn.7
 for <usrp-users@lists.ettus.com>; Fri, 13 Mar 2020 12:32:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=jkLIJMTTQ7NeUbeuOLfVZJLRWw4rj+a4ifuTQPtBr0w=;
 b=pVWVCdCAQb2MA3CIqaN27hrDjm8MJJ1pwIL54byutmoBnKRLEY6KYMRHPkKn8jOzK4
 WILTnEpKgqel64PoFgW86cHfLXmftAYR7MpPc/3g2Bb7pd66k4UugpqlcmeQ2DhoWpgv
 U2gNP/T5us774jhlkyGVZj0aqxyuWiHKKcxjHQYLfBH5UwQvmCx2Oui5WiBcFU15XMgt
 yhjQ7cBPoDNrbKAerbzWXm7FZgOVIcT1+5O9X2Qd4SAZ33i4eHRidwI9d3X0fUGWWroH
 IqeaxZ5LDdMXf4Qll8Te4viVqwZz6P3TVrKOB5jylJSUMwHVhf5mJuD/DoUB1tudvsjH
 ZQdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jkLIJMTTQ7NeUbeuOLfVZJLRWw4rj+a4ifuTQPtBr0w=;
 b=fk8ZE7DZBBcxkBBI9B304P4MCwX3z+/KBPxEtjMOnaDFjPH3hS4jCq2TGzsihprm7U
 jKZxOqzGeWz0A+HlxTN7Dh8HgFyoMCrC6k4QugbMBXjIIS+H8l7JfSYfpzGGBFeM4Vog
 vuUXoCcfqQ9HN50MmB5mr1TpyhXt90/ushiTbOWtYW9PO3v6iz1Ot6S6ZpwdpI3eDYh8
 BI5ea9czhjmuRIGfVcWe/gUMLpr14L2c7jZWsPfOXQEvq9NzEWibuiss98ebzZ8SVigk
 TkCuAhkZtBmgUX7ugFlqF/6xzc31GBw17wE8kEdFk5xTuMid0uUmKrs6MSRaGnGVU4sl
 wTMg==
X-Gm-Message-State: ANhLgQ13nhAL7R3rIoFIjfOA3KzQ6KmlTj9B3Le7G8rEZTmqXyfpqBxp
 Gu2/rSrwOoNbu9ZgiwWGGxcfKQF5+LpgJwHD
X-Google-Smtp-Source: ADFU+vvBiPN/hAEclrB4gzHH8UwNqUsm5B2kOIqE014lRXo2GUkQu1knyGRXIFPDlBveCrZA+T6hVw==
X-Received: by 2002:a9d:64d4:: with SMTP id n20mr11827777otl.193.1584127916894; 
 Fri, 13 Mar 2020 12:31:56 -0700 (PDT)
Received: from [192.168.1.141] (c-98-207-66-182.hsd1.ca.comcast.net.
 [98.207.66.182])
 by smtp.gmail.com with ESMTPSA id e64sm1776142oif.10.2020.03.13.12.31.55
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 12:31:56 -0700 (PDT)
To: usrp-users@lists.ettus.com
References: <3106_1583404341_5E60D534_3106_145_1_CANZpvRrDj5ZyvNmmeBoT1W6o76MezH7mePEPO2UQimtWoXWMGw@mail.gmail.com>
 <MN2PR09MB4077640ADBCA3D047EEFCE25D9E20@MN2PR09MB4077.namprd09.prod.outlook.com>
Message-ID: <c3208963-b644-4d8c-2f8e-a7478468f49b@ettus.com>
Date: Fri, 13 Mar 2020 12:31:54 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <MN2PR09MB4077640ADBCA3D047EEFCE25D9E20@MN2PR09MB4077.namprd09.prod.outlook.com>
Content-Language: en-US
Subject: Re: [USRP-users] N310 Chipscope?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Martin Braun via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Martin Braun <martin.braun@ettus.com>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
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

On 3/5/20 2:53 PM, Long, Jeffrey P. via USRP-users wrote:
> Maybe this is a stupid question but I can=92t find anything in google
> land. Can we use the jtag port on the N310 to chipscope? I have
> successfully built and run images and so I created a build with some
> debug via a single ILA. It looks good and I loaded it using
> uhd_image_loader. Usrp probe it and all looks good. Then I fired up the
> Vivado hardware manager with my microusb cable plugged into N310 but it
> does not find the ILA. Anything special I need to do to use that jtag
> console jack for this? The jack seems to work great for connecting a
> terminal which had me wondering if we can really use it for chipscope
> jtag too?

Jeff,

no, you shouldn't have to do anything special. That's exactly what that
micro-USB connector is there for. Maybe a permissions thing? Does Vivado
just not find the ILA, or not even the FPGA?

--M

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

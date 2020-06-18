Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1AD1FF51D
	for <lists+usrp-users@lfdr.de>; Thu, 18 Jun 2020 16:45:31 +0200 (CEST)
Received: from [::1] (port=54284 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jlvnE-0000I3-8g; Thu, 18 Jun 2020 10:45:28 -0400
Received: from mail-qk1-f173.google.com ([209.85.222.173]:43579)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jlvnA-0000Bi-Ck
 for usrp-users@lists.ettus.com; Thu, 18 Jun 2020 10:45:24 -0400
Received: by mail-qk1-f173.google.com with SMTP id j68so2382200qkb.10
 for <usrp-users@lists.ettus.com>; Thu, 18 Jun 2020 07:45:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=k9oFidpoGc1z+D75Mq9cemv6a0cHHcZcG/cNeolUL6g=;
 b=dBo4dT2LDvaEqQVTrOJQ6gEAkOHyu8KyG3TzDN+WLhHxHkVTlImO5RnwVydvf0/JEG
 rcd1qcdKdpt4m2A0i8c5WKalUHKKNjfEsk3PRBO5wIYpcI0odRBna8T4O9Md37h0mEtF
 +ZqT0mD74mT/6QfmDn2EASyerhZgNvkD0chpfb5oNmx/jc2XvZ3uDiIoogOG1TPoGfa7
 lg8D9k+ZPpPKOuy78iSs4vTUl7b8ttDNpusI7z3SZ63f0NGquwWiO4ogisrEbTrnUUJi
 k8SOSHloJuMk3CHZYuw0Fy69TfgbikDZrVQG9ZENJ1nvER+16fL0BMswv7ft0DpgIF/G
 JR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=k9oFidpoGc1z+D75Mq9cemv6a0cHHcZcG/cNeolUL6g=;
 b=fHOiyHTY7siNaKyU1BWehLAwsJGr6CFX5p4WKsh5yvhGbvf1Wme8nfIobncqyG/Cu4
 FIRrPaw4Rc/zKrVElcKOwWZjzCxTuFf8VT1SWqfwnhrCvjh5rDIUKTQHb9Dam9CFpsxR
 peSCL1o3fN7n5Xm4DLaoJ0wn6yDY2kmA0QhBWYpwBIx+edhzgiOcGv7c3ov/QR44Ar91
 FpEmWN1xz4v4Mj1+F1zpEJb8oX8kOw5vRpIe1UIoeuA2mSRz+sfsi8UR+EOi6eU2Soa/
 2kjloq+P8ZaAGpa48VrqAMRkmBDbfNZzLGX8SQpC29gQrm41zEHoiQ6k5+XlMoay5g8H
 pqXw==
X-Gm-Message-State: AOAM531MzTFkuChxj3DAFBSqYTM8NUAepuMRxMQef7f/GIlnhryq6LxZ
 Dvf2vto5LaJH79t3j4PG0MI7yssPo+0=
X-Google-Smtp-Source: ABdhPJzIoaAZADs9YUBjiP4dNIyw2lYwNyfcQGOvfHEUclYmUzlpnF/UDtntuQgbAtXKiqJxXPkDKQ==
X-Received: by 2002:a05:620a:2050:: with SMTP id
 d16mr4338305qka.215.1592491483593; 
 Thu, 18 Jun 2020 07:44:43 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id k17sm3590737qtb.5.2020.06.18.07.44.43
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jun 2020 07:44:43 -0700 (PDT)
Message-ID: <5EEB7DDA.2060403@gmail.com>
Date: Thu, 18 Jun 2020 10:44:42 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CACxOa3Zr_hPaEtu1_OGHfZn=7B_t1CWmYBYasVYVkrg4ZOaSpg@mail.gmail.com>
In-Reply-To: <CACxOa3Zr_hPaEtu1_OGHfZn=7B_t1CWmYBYasVYVkrg4ZOaSpg@mail.gmail.com>
Subject: Re: [USRP-users] SW control of DB TX/RX DSA on N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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

On 06/17/2020 02:31 PM, Colby Boyer via USRP-users wrote:
> Dear All,
>
> I have a question about the control of the TX/RX DSAs on the N310 
> platform.
>
> I have a specific line-up for the RX and TX chains and I'd like to set 
> specific values to the TX and RX DSAs that are on the N310's daughter 
> board card. Are the control lines for the DSA's hooked up to SW for 
> control via UHD/MPM? From what I can tell, this is not a SW enabled 
> feature on the N310.
>
> Looking through the FPGA code, the DSAs are hooked up to the 
> dsa_tx<1,2>_<a,b>_out_iob buffers. I've traced these lines as follows:
>
> IO buffer => db_gpio_out wire in top module n3xx => n3xx_core => 
> db_fe_core => db_control => db_gpio_atr (gpio_atr module).
>
> Inside the gpio_atr verilog module, there are some registers related 
> to the ATR logic but not DSAs. There is logic to control the db_gpio 
> via a gpio_out_fab signal line, but I trace this signal and it goes 
> back up to the top level n3xx module as an unconnected wire.
>
> Is there a connection that I am missing?
>
> Thank you,
> Colby
>
Took me a while to find the schematic for the N3XX daughtercard.

The DSAs are made by Peregrine (PE43704 in the RX direction, PE42553 in 
the TX direction).

I'd be surprised if these weren't actually supported in UHD.  If you use 
the "get_gain_names" API call:

https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html#a756c14c66c5d9530f69e99afd6a4bb2d

You can see which individual gain-control elements are available to the 
UHD, and then you can use a specific one of those gain-control elements
   in a "set_gain" call:

https://www.gnuradio.org/doc/doxygen/classgr_1_1uhd_1_1usrp__block.html#a81ee1048dbd04c8664f1ea95129203f4


Using the 2nd form of the call that takes a gain name.   Without using a 
gain name, UHD will distribute gain settings over the gain-setting
   elements that are available to it, typically optimizing for noise 
figure in those settings.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

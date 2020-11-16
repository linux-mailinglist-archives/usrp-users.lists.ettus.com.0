Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E31C12B5443
	for <lists+usrp-users@lfdr.de>; Mon, 16 Nov 2020 23:27:15 +0100 (CET)
Received: from [::1] (port=37356 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kemxt-0006MQ-8F; Mon, 16 Nov 2020 17:27:13 -0500
Received: from mail-qk1-f178.google.com ([209.85.222.178]:45272)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kemxp-0006Fg-RJ
 for usrp-users@lists.ettus.com; Mon, 16 Nov 2020 17:27:09 -0500
Received: by mail-qk1-f178.google.com with SMTP id q5so18620008qkc.12
 for <usrp-users@lists.ettus.com>; Mon, 16 Nov 2020 14:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=fuDwmtUe9NvHY+O2AJj6q80EEiJZLoxK08EwlpcP9ns=;
 b=Xe6ghKIrCKlyKr1JBx1ziR4AH/ZtOoN/FzVthIybwqli2F3y9gtM+w/iQHtkNkdZqy
 i8SS9fBNzHJIuhYIqhN3CJCIx9MXMd1BVyzp/2+NeKQPJw07tRBRwy2eLx2KKU2Jz/OK
 UEXLFhBZxbaaRgX5e3Y4JXJKPWcO6ucIROicLBJSKLap1J9bYdU+X8H+sJz/nqbpZros
 ZwFvD5m6vu9C/7GrxDYZavb4clNlnuJuVRrHj0mbmGITZIz5ZuzQ/QRdVWzwLt6s9wmK
 C+EnJOr8Ib8SRInlK1lCBBJaMcyJiECoTvsNYMW+cVqyeEbgXoRKs//6vL2qLHGVVK26
 JRXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=fuDwmtUe9NvHY+O2AJj6q80EEiJZLoxK08EwlpcP9ns=;
 b=tbZacVK2F003CZpyWyBsrN427AbC0jvecXB5yZsHqY8sZJU1ZxZkgypLdFbjYjkXGQ
 jM6fnf5tDs1vmYzgaqWmfOoQj7ljFnFB8ATJ1ktTCbezdfJq/0wWx0+ITvq6VpEPW8Rx
 305+L84NxOvFxiU+mS9GL9xsn5L5uitoLHU1U2o58mkleUy6tvWJNC7vQ+ozG8f+nZDd
 dqVTHiJQjLFThFDIahzp6bs95d5nhK0NczHWo28Vyg7a039NHjtdNjTIJotBxYoodfEt
 u6tkNDly5b124eUWOit9zaDz4hkL8lSsmyhN702vkMszcQRg4KXio3kcqmZNv8yyTtU2
 MZNA==
X-Gm-Message-State: AOAM5314yf1l9QyDB+pnsBJOdyntj7LfaQT6PEY4V0HNylns8pvbWeI+
 3bW6nlulZdouqSSUy1xoZXCbt8OdsjE=
X-Google-Smtp-Source: ABdhPJzHkBJoiKB3rFChUTrBRGW2yYVS8/IslXLBQwyFKh5eFUeDYfvIsaeN4dNluOssj/fZFY+Pow==
X-Received: by 2002:a37:9a8f:: with SMTP id
 c137mr15761520qke.404.1605565588865; 
 Mon, 16 Nov 2020 14:26:28 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id t60sm12395549qtd.65.2020.11.16.14.26.28
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Nov 2020 14:26:28 -0800 (PST)
Message-ID: <5FB2FC93.4020809@gmail.com>
Date: Mon, 16 Nov 2020 17:26:27 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <5aef8e21-77a8-e3a0-1542-8f9075039eb9@pari.edu>
 <5FB2C107.60309@gmail.com> <7c355116-88f5-35b5-2ba8-2d851ed4af68@pari.edu>
 <7269bb32-af6f-1631-1c33-5b78e9b03ef9@pari.edu>
 <96cd5a7a-0f92-d15a-280c-375e0a002144@pari.edu>
In-Reply-To: <96cd5a7a-0f92-d15a-280c-375e0a002144@pari.edu>
Subject: Re: [USRP-users] UHD version that supports older DBSRX on a USRP1.
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

On 11/16/2020 03:32 PM, Lamar Owen via USRP-users wrote:
>
>
> [TRACE] [DBSRX] DBSRX: trying ref_clock 4000000.000000 and m_divider 4
> [TRACE] [DBSRX] DBSRX R:2
>
> [ERROR] [DBMGR] The daughterboard manager encountered a recoverable 
> error in init.
> Loading the "unknown" daughterboard implementations to continue.
> The daughterboard cannot operate until this error is resolved.
> AssertionError: m and ref_clock/m >= 1e6 and ref_clock/m <= 2.5e6
>   in double dbsrx::set_lo_freq(double)
>   at 
> /home/conda/feedstock_root/build_artifacts/uhd_1602712704625/work/host/lib/usrp/dboard/db_dbsrx.cpp:306
If you look at the context of this assertion--it should never be 
asserted.   ref_clock is 4e6 and m is 4, so the test is satisfied, and 
therefore the
   assertion shouldn't fail.  I wonder if this is a compiler issue, or 
an issue with the UHD_ASSERT logic?


>
> [TRACE] [USRP1] poke32( 6, 0xffff0000)
> [TRACE] [USRP1] poke32(10, 0xffff0000)
> [TRACE] [USRP1] poke32(23, 0x       0)
> [TRACE] [USRP1] poke32( 5, 0xffff0000)
> [TRACE] [USRP1] poke32( 9, 0xffff0000)
> [TRACE] [USRP1] poke32(20, 0x       0)
> [TRACE] [USRP1] poke32( 8, 0xffff0000)
> [TRACE] [USRP1] poke32(12, 0xffff0000)
> [TRACE] [USRP1] poke32(29, 0x       0)
> [TRACE] [USRP1] poke32( 7, 0xffff0000)
> [TRACE] [USRP1] poke32(11, 0xffff0000)
> [TRACE] [USRP1] poke32(26, 0x       0)
> [TRACE] [USRP1] codec control write reg: 0x     808
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 2056  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     808
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 2056  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] poke32( 1, 0x       1)
> [TRACE] [USRP1] poke32(33, 0x      1f)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] poke32( 0, 0x       1)
> [TRACE] [USRP1] poke32(32, 0x      1f)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] poke32(34, 0x       0)
> [TRACE] [USRP1] poke32(35, 0x       0)
> [TRACE] [USRP1] poke32(38, 0x      41)
> [TRACE] [USRP1] poke32(39, 0x     981)
>   _____________________________________________________
>  /
> |       Device: USRP1 Device
> |     _____________________________________________________
> |    /
> |   |       Mboard: USRP1
> |   |   serial: 45d0d3fa
> |   |
> |   |   Time sources:  none
> |   |   Clock sources: internal
> |   |   Sensors:
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX DSP: 0
> |   |   |
> |   |   |   Freq range: -32.000 to 32.000 MHz
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX DSP: 1
> |   |   |
> |   |   |   Freq range: -32.000 to 32.000 MHz
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: A
> |   |   |   ID: DBSRX (0x0002)
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 0
> |   |   |   |   Name: Unknown (0xffff) - 0
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: 0.000 to 0.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Codec: A
> |   |   |   |   Name: ad9522
> |   |   |   |   Gain range pga: 0.0 to 20.0 step 1.0 dB
> |   |     _____________________________________________________
> |   |    /
> |   |   |       RX Dboard: B
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Frontend: 0
> |   |   |   |   Name: Unknown (0xffff) - 0
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: 0.000 to 0.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   |       RX Codec: B
> |   |   |   |   Name: ad9522
> |   |   |   |   Gain range pga: 0.0 to 20.0 step 1.0 dB
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX DSP: 0
> |   |   |
> |   |   |   Freq range: -44.000 to 44.000 MHz
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX DSP: 1
> |   |   |
> |   |   |   Freq range: -44.000 to 44.000 MHz
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: A
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: 0
> |   |   |   |   Name: Unknown (0xffff) - 0
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: 0.000 to 0.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Codec: A
> |   |   |   |   Name: ad9522
> |   |   |   |   Gain range pga: -20.0 to 0.0 step 0.1 dB
> |   |     _____________________________________________________
> |   |    /
> |   |   |       TX Dboard: B
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Frontend: 0
> |   |   |   |   Name: Unknown (0xffff) - 0
> |   |   |   |   Antennas:
> |   |   |   |   Sensors:
> |   |   |   |   Freq range: 0.000 to 0.000 MHz
> |   |   |   |   Gain Elements: None
> |   |   |   |   Bandwidth range: 0.0 to 0.0 step 0.0 Hz
> |   |   |   |   Connection Type: IQ
> |   |   |   |   Uses LO offset: No
> |   |   | _____________________________________________________
> |   |   |    /
> |   |   |   |       TX Codec: B
> |   |   |   |   Name: ad9522
> |   |   |   |   Gain range pga: -20.0 to 0.0 step 0.1 dB
>
> [TRACE] [USRP1] codec control write reg: 0x     808
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 2056  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     808
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 2056  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] poke32( 6, 0xffff0000)
> [TRACE] [USRP1] poke32(10, 0xffff0000)
> [TRACE] [USRP1] poke32(23, 0x       0) 
> https://www.amazon.ca/Breakout-Connector-Female-Adapter-Terminal/dp/B07DL13B32/ref=sr_1_23_sspa?dchild=1&gclid=Cj0KCQiA48j9BRC-ARIsAMQu3WS6mqz1QoEYjrHj2vHgONo0eOz7jWLd7vf1879y7aTpPzTauZuEmF8aAvu5EALw_wcB&hvadid=208320688227&hvdev=c&hvlocphy=9000707&hvnetw=g&hvqmt=e&hvrand=9845139346444461649&hvtargid=kwd-301399804745&hydadcr=1500_9454465&keywords=usb+to+rs-232&qid=1605565159&sr=8-23-spons&tag=googcana-20&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUE3N1BFTEhCQjBFVzImZW5jcnlwdGVkSWQ9QTAxODU5NjgyU0NJT0EwRUFXTllZJmVuY3J5cHRlZEFkSWQ9QTAzMTcwMTUxSDdXTFpLRERMR1BJJndpZGdldE5hbWU9c3BfbXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ==
> [TRACE] [USRP1] poke32( 5, 0xffff0000)
> [TRACE] [USRP1] poke32( 9, 0xffff0000)
> [TRACE] [USRP1] poke32(20, 0x       0)
> [TRACE] [USRP1] poke32( 8, 0xffff0000)
> [TRACE] [USRP1] poke32(12, 0xffff0000)
> [TRACE] [USRP1] poke32(29, 0x       0)
> [TRACE] [USRP1] poke32( 7, 0xffff0000)
> [TRACE] [USRP1] poke32(11, 0xffff0000)
> [TRACE] [USRP1] poke32(26, 0x       0)
> [TRACE] [USRP1] codec control write reg: 0x    2400
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 9216  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2500
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 9472  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2600
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 9728  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2a00
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 10752  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2b00
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 11008  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     107
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 263  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     80f
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 2063  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2400
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 9216  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2500
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 9472  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2600
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 9728  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2a00
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 10752  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2b00
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 11008  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     107
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 263  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     80f
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 2063  num_bits: 16 
> readback: 0
> (base) [pari-sdr@dhcp-pool167 ~]$
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1012B53B9
	for <lists+usrp-users@lfdr.de>; Mon, 16 Nov 2020 22:21:28 +0100 (CET)
Received: from [::1] (port=36706 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kelwD-0001hR-Lf; Mon, 16 Nov 2020 16:21:25 -0500
Received: from mail-qt1-f181.google.com ([209.85.160.181]:39164)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kelw8-0001Zz-Pd
 for usrp-users@lists.ettus.com; Mon, 16 Nov 2020 16:21:20 -0500
Received: by mail-qt1-f181.google.com with SMTP id b16so13930319qtb.6
 for <usrp-users@lists.ettus.com>; Mon, 16 Nov 2020 13:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=W8R5x0bVftaOUiL/+i735NlwgmYmCW65aAaakMFh2rc=;
 b=Dsjg7skaUKY6ffr49J+dmOE6h24wTFEndYLzBkrb23Q1KQZhS7fSdwkwQYeH9gmnMr
 H6Jd5HTvIk2+GdSUVPWZPzpVZb/Cjwu6ia+bU9kA18NwTeM+oLo5OzX2friJY+kO1ebS
 LA98e7ZlYbKXHkR6qH2K1cxpO5yGwsPspKJdSXf5cbyObYibI2FYbr0Krez1poLkUKsi
 hYMkE0VrPSpYniyN77OEuFykzmum0M1M4BJi2FqX/I03baHN0eC9pLahvrYuN9PMiMkE
 u86CyhCle1Vp4B3+fThFVDZ4UYItyzzUCg3ffXLIylXgw8aigmmmXrglYEVyg0mviInQ
 hBgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=W8R5x0bVftaOUiL/+i735NlwgmYmCW65aAaakMFh2rc=;
 b=afEIl4tN4e90W/kF6RO+XT1uphKCQnEKVIdYMs6X7IHJNzZlYW3KtVc3Y9mUkPm+tc
 20YCWLm8wlIMKDBs7hHkaWl95BnEtpmm8wr0AL7Arsj0Rpp6znHTHhX7CtNlCJL6MrKB
 TOhAj/TmgwdLrxxxqdAAtGicfn8e9jobjWb694ZUzyl1+Bzw9ZmCdThn9NQvqYFq5/vX
 yfnLp4EmYWYF+zGLoGLDewZHXWRd8kNfPrfBqReF6ezNpZ60HKvC3Fuv15AaLfqF2gI5
 SLrKr67zrGcb9gHacUs7960hUjDSb3oaDiUodG++0PiAf1y+BSc0zI4AwvjtZNXML8/M
 Vm/g==
X-Gm-Message-State: AOAM533Ukfg+1i5FDhmRjippS53AfgQD7BsBR6wmH1A6de4obH5RdqLP
 PE4ItRz5DNftJSlCy+o21C2r9mEdY0c=
X-Google-Smtp-Source: ABdhPJxc195veb20FtnGfPByPOSEPmU0sugzHA1gEk6Rcb7N4R8MTqHS4q8QF6D1USyLDsRplbH/zQ==
X-Received: by 2002:a05:622a:188:: with SMTP id
 s8mr16348914qtw.186.1605561639399; 
 Mon, 16 Nov 2020 13:20:39 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id r41sm13373507qtj.23.2020.11.16.13.20.38
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Nov 2020 13:20:39 -0800 (PST)
Message-ID: <5FB2ED26.8010007@gmail.com>
Date: Mon, 16 Nov 2020 16:20:38 -0500
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
> On 11/16/20 3:14 PM, Lamar Owen via USRP-users wrote:
>> So, I'm looking at issue report #304 related to the RFX board, and a 
>> related text patch file, 
>> https://github.com/EttusResearch/uhd/files/3881213/0001-rfx-Fix-calculation-of-prescaler-and-band-select.patch.txt 
>> that seem to have a similar construct in 
>> https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/dboard/db_dbsrx.cpp 
>> along about line 302.  Am I barking up the wrong tree, or if the 'for 
>> (auto ....' construct needed changing in one case it needs changing 
>> in this case, too?  I'll need to move from the conda package to the 
>> EPEL8 RPM package, because I know how to rebuild those and can test 
>> patches with those.  I don't know enough c++ to be able to generate 
>> the patch, though. 
> Just in case this helps, here's logging output:
> (base) [pari-sdr@dhcp-pool167 ~]$ UHD_LOG_CONSOLE_LEVEL=0 uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_107400; 
> UHD_3.15.0.HEAD-release
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [TRACE] [UDP] Creating udp transport for 127.255.255.255 49600
> [TRACE] [UDP] Creating udp transport for 192.168.122.255 49600
> [TRACE] [UDP] Creating udp transport for 192.168.1.255 49600
> [DEBUG] [USRP1] USRP1 firmware image: 
> /home/pari-sdr/anaconda3/share/uhd/images/usrp1_fw.ihx
> [TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
> [TRACE] [NIRIO] rpc_client connection request cancelled/aborted.
> [TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.1.255 50000
> [TRACE] [UDP] Creating udp transport for 192.168.122.255 50000
> [TRACE] [UHD] Device hash: 6433317707856818692
> [DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
> [DEBUG] [PREFS] Loaded user config file /home/pari-sdr/.uhd/uhd.conf
> [INFO] [USRP1] Opening a USRP1 device...
> [DEBUG] [USRP1] USRP1 FPGA image: 
> /home/pari-sdr/anaconda3/share/uhd/images/usrp1_fpga.rbf
> [TRACE] [USRP1] poke32(13, 0x       0)
> [TRACE] [USRP1] poke32(14, 0x       0)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [DEBUG] [USRP1] USRP1 Capabilities    number of duc's: 2    number of 
> ddc's: 2    rx halfband:     1    tx halfband:     0
> [INFO] [USRP1] Using FPGA clock rate of 64.000000MHz...
> [TRACE] [USRP1] codec control write reg: 0x      20
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 32  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x       0
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 0  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     106
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 262  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     280
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 640  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     380
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 896  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     400
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 1024  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     504
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 1284  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     608
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 1544  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     700
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 1792  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     800
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 2048  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     900
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 2304  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     a00
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 2560  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     b00
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 2816  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     c00
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 3072  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     d00
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 3328  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     ec0
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 3776  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     fc0
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4032  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    10c7
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4295  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1100
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4352  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1249
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4681  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1312
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4882  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1410
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 5136  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1500
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 5376  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1600
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 5632  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1700
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 5888  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1849
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 6217  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1940
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 6464  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2209
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 8713  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     280
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 640  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     380
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 896  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    10ff
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4351  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x      20
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 32  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x       0
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 0  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     106
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 262  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     280
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 640  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     380
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 896  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     400
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 1024  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     504
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 1284  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     608
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 1544  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     700
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 1792  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     800
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 2048  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     900
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 2304  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     a00
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 2560  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     b00
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 2816  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     c00
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 3072  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     d00
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 3328  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     ec0
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 3776  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     fc0
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4032  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    10c7
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4295  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1100
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4352  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1249
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4681  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1312
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4882  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1410
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 5136  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1500
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 5376  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1600
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 5632  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1700
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 5888  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1849
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 6217  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1940
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 6464  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2209
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 8713  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     280
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 640  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     380
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 896  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    10ff
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4351  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] poke32(16, 0x       0)
> [TRACE] [USRP1] poke32(17, 0x       0)
> [TRACE] [USRP1] poke32(15, 0x       3)
> [TRACE] [USRP1] poke32(18, 0x       0)
> [TRACE] [USRP1] poke32(19, 0x       0)
> [TRACE] [USRP1] poke32(15, 0x       f)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] poke32( 6, 0xffff0000)
> [TRACE] [USRP1] poke32(10, 0xffff0000)
> [TRACE] [USRP1] poke32(23, 0x       0)
> [TRACE] [USRP1] poke32( 5, 0xffff0000)
> [TRACE] [USRP1] poke32( 9, 0xffff0000)
> [TRACE] [USRP1] poke32(20, 0x       0)
> [TRACE] [DBSRX] DBSRX: send reg 0x00, value 0x0003, start_addr = 
> 0x0000, num_bytes 3
> [TRACE] [DBSRX] DBSRX: send reg 0x01, value 0x00b6, start_addr = 
> 0x0000, num_bytes 3
> [TRACE] [DBSRX] DBSRX: send reg 0x02, value 0x003d, start_addr = 
> 0x0000, num_bytes 3
> [TRACE] [DBSRX] DBSRX: send reg 0x03, value 0x007f, start_addr = 
> 0x0003, num_bytes 3
> [TRACE] [DBSRX] DBSRX: send reg 0x04, value 0x0002, start_addr = 
> 0x0003, num_bytes 3
> [TRACE] [DBSRX] DBSRX: send reg 0x05, value 0x001f, start_addr = 
> 0x0003, num_bytes 3
> [TRACE] [DBSRX] DBSRX GC1 Gain: 0.000000 dB, dac_volts: 2.700000 V
> [TRACE] [USRP1] codec control write reg: 0x    24d1
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 9425  num_bits: 16 
> readback: 0
> [TRACE] [DBSRX] DBSRX GC2 Gain: 0.000000 dB, reg: 31
> [TRACE] [DBSRX] DBSRX: send reg 0x05, value 0x001f, start_addr = 
> 0x0005, num_bytes 1
> [TRACE] [USRP1] poke32(23, 0x       0)
> [TRACE] [USRP1] poke32( 6, 0xffff0001)
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
> |   |   serial: 4460cd30
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
> And with a second USRP1:
> (base) [pari-sdr@dhcp-pool167 ~]$ UHD_LOG_CONSOLE_LEVEL=0 uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_107400; 
> UHD_3.15.0.HEAD-release
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [TRACE] [UDP] Creating udp transport for 127.255.255.255 49600
> [TRACE] [UDP] Creating udp transport for 192.168.1.255 49600
> [DEBUG] [MPMD] Discovering MPM devices on port 49600
> [TRACE] [UDP] Creating udp transport for 192.168.122.255 49600
> [DEBUG] [USRP1] USRP1 firmware image: 
> /home/pari-sdr/anaconda3/share/uhd/images/usrp1_fw.ihx
> [INFO] [FX2] Loading firmware image: 
> /home/pari-sdr/anaconda3/share/uhd/images/usrp1_fw.ihx...
> [INFO] [FX2] Firmware loaded
> [TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
> [TRACE] [NIRIO] rpc_client connection request cancelled/aborted.
> [TRACE] [UDP] Creating udp transport for 192.168.1.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.122.255 49152
> [TRACE] [UDP] Creating udp transport for 192.168.1.255 50000
> [TRACE] [UDP] Creating udp transport for 192.168.122.255 50000
> [TRACE] [UHD] Device hash: 11462434024067858173
> [DEBUG] [PREFS] Loaded system config file /etc/uhd/uhd.conf
> [DEBUG] [PREFS] Loaded user config file /home/pari-sdr/.uhd/uhd.conf
> [INFO] [USRP1] Opening a USRP1 device...
> [DEBUG] [USRP1] USRP1 FPGA image: 
> /home/pari-sdr/anaconda3/share/uhd/images/usrp1_fpga.rbf
> [INFO] [FX2] Loading FPGA image: 
> /home/pari-sdr/anaconda3/share/uhd/images/usrp1_fpga.rbf...
> [INFO] [FX2] FPGA image loaded
> [TRACE] [USRP1] poke32(13, 0x       0)
> [TRACE] [USRP1] poke32(14, 0x       0)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [DEBUG] [USRP1] USRP1 Capabilities    number of duc's: 2    number of 
> ddc's: 2    rx halfband:     1    tx halfband:     0
> [INFO] [USRP1] Using FPGA clock rate of 64.000000MHz...
> [TRACE] [USRP1] codec control write reg: 0x      20
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 32  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x       0
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 0  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     106
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 262  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     280
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 640  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     380
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 896  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     400
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 1024  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     504
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 1284  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     608
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 1544  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     700
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 1792  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     800
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 2048  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     900
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 2304  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     a00
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 2560  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     b00
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 2816  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     c00
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 3072  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     d00
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 3328  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     ec0
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 3776  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     fc0
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4032  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    10c7
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4295  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1100
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4352  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1249
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4681  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1312
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4882  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1410
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 5136  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1500
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 5376  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1600
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 5632  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1700
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 5888  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1849
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 6217  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1940
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 6464  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2209
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 8713  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     280
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 640  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     380
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 896  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    10ff
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 4351  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x      20
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 32  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x       0
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 0  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     106
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 262  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     280
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 640  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     380
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 896  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     400
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 1024  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     504
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 1284  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     608
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 1544  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     700
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 1792  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     800
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 2048  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     900
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 2304  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     a00
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 2560  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     b00
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 2816  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     c00
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 3072  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     d00
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 3328  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     ec0
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 3776  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     fc0
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4032  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    10c7
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4295  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1100
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4352  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1249
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4681  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1312
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4882  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1410
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 5136  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1500
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 5376  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1600
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 5632  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1700
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 5888  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1849
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 6217  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    1940
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 6464  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    2209
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 8713  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     280
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 640  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x     380
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 896  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] codec control write reg: 0x    10ff
> [TRACE] [USRP1] transact_spi:   slave: 4  bits: 4351  num_bits: 16 
> readback: 0
> [TRACE] [USRP1] poke32(16, 0x       0)
> [TRACE] [USRP1] poke32(17, 0x       0)
> [TRACE] [USRP1] poke32(15, 0x       3)
> [TRACE] [USRP1] poke32(18, 0x       0)
> [TRACE] [USRP1] poke32(19, 0x       0)
> [TRACE] [USRP1] poke32(15, 0x       f)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] peek32( 3)
> [TRACE] [USRP1] poke32( 6, 0xffff0000)
> [TRACE] [USRP1] poke32(10, 0xffff0000)
> [TRACE] [USRP1] poke32(23, 0x       0)
> [TRACE] [USRP1] poke32( 5, 0xffff0000)
> [TRACE] [USRP1] poke32( 9, 0xffff0000)
> [TRACE] [USRP1] poke32(20, 0x       0)
> [TRACE] [DBSRX] DBSRX: send reg 0x00, value 0x0003, start_addr = 
> 0x0000, num_bytes 3
> [TRACE] [DBSRX] DBSRX: send reg 0x01, value 0x00b6, start_addr = 
> 0x0000, num_bytes 3
> [TRACE] [DBSRX] DBSRX: send reg 0x02, value 0x003d, start_addr = 
> 0x0000, num_bytes 3
> [TRACE] [DBSRX] DBSRX: send reg 0x03, value 0x007f, start_addr = 
> 0x0003, num_bytes 3
> [TRACE] [DBSRX] DBSRX: send reg 0x04, value 0x0002, start_addr = 
> 0x0003, num_bytes 3
> [TRACE] [DBSRX] DBSRX: send reg 0x05, value 0x001f, start_addr = 
> 0x0003, num_bytes 3
> [TRACE] [DBSRX] DBSRX GC1 Gain: 0.000000 dB, dac_volts: 2.700000 V
> [TRACE] [USRP1] codec control write reg: 0x    24d1
> [TRACE] [USRP1] transact_spi:   slave: 2  bits: 9425  num_bits: 16 
> readback: 0
> [TRACE] [DBSRX] DBSRX GC2 Gain: 0.000000 dB, reg: 31
> [TRACE] [DBSRX] DBSRX: send reg 0x05, value 0x001f, start_addr = 
> 0x0005, num_bytes 1
> [TRACE] [USRP1] poke32(23, 0x       0)
> [TRACE] [USRP1] poke32( 6, 0xffff0001)
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
I'll note that there was a fair amount of churn between UHD 3.15 and UHD 
4.0 on dbs_rx -- whether that fixes this issue or not is another
   matter.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

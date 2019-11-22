Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FA1A10753B
	for <lists+usrp-users@lfdr.de>; Fri, 22 Nov 2019 16:52:28 +0100 (CET)
Received: from [::1] (port=35274 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iYBEO-0004Q0-3k; Fri, 22 Nov 2019 10:52:24 -0500
Received: from mail-lj1-f179.google.com ([209.85.208.179]:45293)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <jlockhartrt@gmail.com>)
 id 1iYBEK-0004Kq-E2
 for usrp-users@lists.ettus.com; Fri, 22 Nov 2019 10:52:20 -0500
Received: by mail-lj1-f179.google.com with SMTP id n21so7867115ljg.12
 for <usrp-users@lists.ettus.com>; Fri, 22 Nov 2019 07:52:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CtM4vztWYUHmrJNPS8STf5Fk6aDUanGBFKWSvqeBvIc=;
 b=nJfSW0tJvHzwJd/Z8eXjvjILowQyPqE9yh+LsyWapf70hxfPuUKtB+FOZj/1brzm/q
 AbIOf9sBRIlGIfPCM13xQxFYr3593wW98tP8dBmRzZMFOhThwsx6Kz2L6s+a7HJwzu9D
 Qs52Pyft3bACySV4P6V72XUkxPXeW/cacsDyDRTOjc1bbX9kMs5oWosN0UKZOL29pYa0
 JG/GL0m1+LAVtg022TknJKOJbPuInyTjpfGtVI+KL+mtYbfhvoUyINcXInCnXZ8LWtvP
 jHzwQbVSgZHc6pQ2gOMsXN/9off3LZHfucX1yZD2X+LazZgmuXLWpwKO+A/1nYECe2D8
 WKbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CtM4vztWYUHmrJNPS8STf5Fk6aDUanGBFKWSvqeBvIc=;
 b=RsV3V4LFYPo5Mpz7Adr0lH2f0vvoYNLrpaeKLkfaO6o9v0bzLGNkfBuvxyzaRPkrJb
 BAIuikOHclT2/hCinXkTyZ6WpcwV5xr9WDXu+uKLMHlumNzgS2mCDEy0pAw9rHLdikpN
 1IYexq5BoentYlu/EpGO9UL1SQUapLo4A0tShs80uhNLY3KG3HFimyULcvsWY+J2gqL9
 2Z8UgEcFeOdVMRl+K0VKUosGAwYrwsYb2jUMSTFoRDNUufwY6cO82r7AcrKjG/5Xv/9Q
 ShsityE+mDebwDQQdvWGJefqw7mnjvaAyXl/ST3WWiBL0jKRmuWcBSUchdzmpI+27Sr+
 Hmkw==
X-Gm-Message-State: APjAAAX7a40fOdxFrqk8GYvvoYwd/Em2SJljLWj9+PeUGXxCbGk/C6SJ
 cB7DmJQsr1ctEOmADLGBWx0ScBxBJ620tRO+3wk=
X-Google-Smtp-Source: APXvYqwQLjTWyXopAQzj/+YYB1X+F8TTjLSTnsMS9odPGFnxFPpUCQyixapJk0x8rhASPw/YW9i818adPUv5hc1Jdyw=
X-Received: by 2002:a2e:84d0:: with SMTP id q16mr1219522ljh.48.1574437899056; 
 Fri, 22 Nov 2019 07:51:39 -0800 (PST)
MIME-Version: 1.0
References: <CALY+5sLFttRpt+J_PSv1Oa7afRJDHr027vvpA9u2BNME7qmscg@mail.gmail.com>
 <CALY+5sKSb9dq-rQM9nJ8i_2UxpmzPBksNoFChccd0YnHQh1arw@mail.gmail.com>
 <CADRnH236gbeUcGXJLePy+=zGiQLdrMCnMb9QJWna-7GHZOxpmg@mail.gmail.com>
 <CALY+5sJjLEtyF9R2wvA+eiCOQyMpS6=89=HR0J+e-teE+-Du_A@mail.gmail.com>
 <CALY+5sKfTtaUu-qhvbKcVNPke3Lb4zkurwqf7LmDJVmn3vyL+Q@mail.gmail.com>
 <CADRnH2296cr7moDbDLPg1gSt2Q+VT_P_Jin5Vh8r_s=eCZdbwQ@mail.gmail.com>
 <CALY+5sK3D-ndWG-anNPEejrpGkk2vNz2EpfBA6eQ7edjj3q3NA@mail.gmail.com>
 <CADRnH23e-pQNbFNE7C9qPv6a3PpuLY6daaXSAhBkx+VGYo3=+g@mail.gmail.com>
In-Reply-To: <CADRnH23e-pQNbFNE7C9qPv6a3PpuLY6daaXSAhBkx+VGYo3=+g@mail.gmail.com>
Date: Fri, 22 Nov 2019 10:51:27 -0500
Message-ID: <CALY+5sKym9oDpbHb48n4DopxMsnxkHKLDsV+zA_XVJ+pPN3jTg@mail.gmail.com>
To: EJ Kreinar <ejkreinar@gmail.com>
Subject: Re: [USRP-users] E312 - Migrating OOT Modules to the USRP
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
From: Jonathan Lockhart via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathan Lockhart <jlockhartrt@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1381949141151588033=="
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

--===============1381949141151588033==
Content-Type: multipart/alternative; boundary="000000000000b1ba7e0597f16331"

--000000000000b1ba7e0597f16331
Content-Type: text/plain; charset="UTF-8"

NVM, I got it set. I am teasing through the long console output now. Might
of wanted to set the file log instead. Live and learn.

On Fri, Nov 22, 2019 at 10:20 AM EJ Kreinar <ejkreinar@gmail.com> wrote:

> Good progress, agreed it looks like the gain arg isn't getting created
> here...
>
> If you run with log level trace, rfnoc should (might?) indicate the xml
> file it loaded. I'd try to find that xml and confirm it looks like what you
> expect, with the gain arg entry.
>
> Also, perhaps grep your prefix and share directories on the embedded
> device to search for any other xml files that might match the noc id or
> provide the same "gain" block... I've definitely fought with conflicting
> xml definitions before, you might be seeing that here.
>
> EJ
>
> On Fri, Nov 22, 2019, 9:36 AM Jonathan Lockhart <jlockhartrt@gmail.com>
> wrote:
>
>> Hey EJ,
>>
>> Sorry for being slow I had to dig around to set that UHD Log variable,
>> which easy enough it was just a simple export. I then ran uhd_usrp_probe
>> with the --tree and setting the fpga to my bit file. Here is the output
>> from the probe.
>>
>> root@ettus-e3xx-sg3:~# uhd_usrp_probe
>> --args="fpga=./newinstall/e300.bit" --tree
>> [INFO] [UHD] linux; GNU C++ version 4.9.2; Boost_105700;
>> UHD_3.14.1.HEAD-0-g0347a6d8
>> [INFO] [E300] Loading FPGA image: ./newinstall/e300.bit...
>> [INFO] [E300] FPGA image loaded
>> [INFO] [E300] Detecting internal GPS
>> .... [INFO] [E300] GPSDO found
>> [INFO] [E300] Initializing core control (global registers)...
>>
>> [INFO] [E300] Performing register loopback test...
>> [INFO] [E300] Register loopback test passed
>> [INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12AD100000000000)
>> [WARNING] [RFNOC] Can't find a block controller for key gain, using
>> default block controller!
>> [INFO] [0/gain_0] Initializing block control (NOC ID: 0xB7DD64941A952AAC)
>> [INFO] [0/DDC_0] Initializing block control (NOC ID: 0xDDC0000000000000)
>> [WARNING] [RFNOC] Can't find a block controller for key FFT, using
>> default block controller!
>> [INFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)
>> /
>> /name
>> /mboards
>> /mboards/0
>> /mboards/0/name
>> /mboards/0/codename
>> /mboards/0/fpga_version
>> /mboards/0/fpga_version_hash
>> /mboards/0/clock_source
>> /mboards/0/clock_source/value
>> /mboards/0/clock_source/options
>> /mboards/0/sensors
>> /mboards/0/sensors/temp
>> /mboards/0/sensors/ref_locked
>> /mboards/0/sensors/gps_locked
>> /mboards/0/sensors/gps_time
>> /mboards/0/sensors/gps_position
>> /mboards/0/sensors/gps_gpgga
>> /mboards/0/sensors/gps_gprmc
>> /mboards/0/eeprom
>> /mboards/0/dboards
>> /mboards/0/dboards/A
>> /mboards/0/dboards/A/rx_eeprom
>> /mboards/0/dboards/A/tx_eeprom
>> /mboards/0/dboards/A/gdb_eeprom
>> /mboards/0/dboards/A/rx_frontends
>> /mboards/0/dboards/A/rx_frontends/A
>> /mboards/0/dboards/A/rx_frontends/A/name
>> /mboards/0/dboards/A/rx_frontends/A/sensors
>> /mboards/0/dboards/A/rx_frontends/A/sensors/temp
>> /mboards/0/dboards/A/rx_frontends/A/sensors/rssi
>> /mboards/0/dboards/A/rx_frontends/A/sensors/lo_locked
>> /mboards/0/dboards/A/rx_frontends/A/gains
>> /mboards/0/dboards/A/rx_frontends/A/gains/PGA
>> /mboards/0/dboards/A/rx_frontends/A/gains/PGA/range
>> /mboards/0/dboards/A/rx_frontends/A/gains/PGA/value
>> /mboards/0/dboards/A/rx_frontends/A/connection
>> /mboards/0/dboards/A/rx_frontends/A/enabled
>> /mboards/0/dboards/A/rx_frontends/A/use_lo_offset
>> /mboards/0/dboards/A/rx_frontends/A/bandwidth
>> /mboards/0/dboards/A/rx_frontends/A/bandwidth/value
>> /mboards/0/dboards/A/rx_frontends/A/bandwidth/range
>> /mboards/0/dboards/A/rx_frontends/A/freq
>> /mboards/0/dboards/A/rx_frontends/A/freq/range
>> /mboards/0/dboards/A/rx_frontends/A/freq/value
>> /mboards/0/dboards/A/rx_frontends/A/dc_offset
>> /mboards/0/dboards/A/rx_frontends/A/dc_offset/enable
>> /mboards/0/dboards/A/rx_frontends/A/iq_balance
>> /mboards/0/dboards/A/rx_frontends/A/iq_balance/enable
>> /mboards/0/dboards/A/rx_frontends/A/gain
>> /mboards/0/dboards/A/rx_frontends/A/gain/agc
>> /mboards/0/dboards/A/rx_frontends/A/gain/agc/enable
>> /mboards/0/dboards/A/rx_frontends/A/gain/agc/mode
>> /mboards/0/dboards/A/rx_frontends/A/gain/agc/mode/value
>> /mboards/0/dboards/A/rx_frontends/A/gain/agc/mode/options
>> /mboards/0/dboards/A/rx_frontends/A/filters
>> /mboards/0/dboards/A/rx_frontends/A/filters/DEC_3
>> /mboards/0/dboards/A/rx_frontends/A/filters/DEC_3/value
>> /mboards/0/dboards/A/rx_frontends/A/filters/FIR_1
>> /mboards/0/dboards/A/rx_frontends/A/filters/FIR_1/value
>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_1
>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_1/value
>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_2
>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_2/value
>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_3
>> /mboards/0/dboards/A/rx_frontends/A/filters/HB_3/value
>> /mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB
>> /mboards/0/dboards/A/rx_frontends/A/filters/LPF_BB/value
>> /mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA
>> /mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA/value
>> /mboards/0/dboards/A/rx_frontends/A/antenna
>> /mboards/0/dboards/A/rx_frontends/A/antenna/options
>> /mboards/0/dboards/A/rx_frontends/A/antenna/value
>> /mboards/0/dboards/A/rx_frontends/B
>> /mboards/0/dboards/A/rx_frontends/B/name
>> /mboards/0/dboards/A/rx_frontends/B/sensors
>> /mboards/0/dboards/A/rx_frontends/B/sensors/temp
>> /mboards/0/dboards/A/rx_frontends/B/sensors/rssi
>> /mboards/0/dboards/A/rx_frontends/B/sensors/lo_locked
>> /mboards/0/dboards/A/rx_frontends/B/gains
>> /mboards/0/dboards/A/rx_frontends/B/gains/PGA
>> /mboards/0/dboards/A/rx_frontends/B/gains/PGA/range
>> /mboards/0/dboards/A/rx_frontends/B/gains/PGA/value
>> /mboards/0/dboards/A/rx_frontends/B/connection
>> /mboards/0/dboards/A/rx_frontends/B/enabled
>> /mboards/0/dboards/A/rx_frontends/B/use_lo_offset
>> /mboards/0/dboards/A/rx_frontends/B/bandwidth
>> /mboards/0/dboards/A/rx_frontends/B/bandwidth/value
>> /mboards/0/dboards/A/rx_frontends/B/bandwidth/range
>> /mboards/0/dboards/A/rx_frontends/B/freq
>> /mboards/0/dboards/A/rx_frontends/B/freq/range
>> /mboards/0/dboards/A/rx_frontends/B/freq/value
>> /mboards/0/dboards/A/rx_frontends/B/dc_offset
>> /mboards/0/dboards/A/rx_frontends/B/dc_offset/enable
>> /mboards/0/dboards/A/rx_frontends/B/iq_balance
>> /mboards/0/dboards/A/rx_frontends/B/iq_balance/enable
>> /mboards/0/dboards/A/rx_frontends/B/gain
>> /mboards/0/dboards/A/rx_frontends/B/gain/agc
>> /mboards/0/dboards/A/rx_frontends/B/gain/agc/enable
>> /mboards/0/dboards/A/rx_frontends/B/gain/agc/mode
>> /mboards/0/dboards/A/rx_frontends/B/gain/agc/mode/value
>> /mboards/0/dboards/A/rx_frontends/B/gain/agc/mode/options
>> /mboards/0/dboards/A/rx_frontends/B/filters
>> /mboards/0/dboards/A/rx_frontends/B/filters/DEC_3
>> /mboards/0/dboards/A/rx_frontends/B/filters/DEC_3/value
>> /mboards/0/dboards/A/rx_frontends/B/filters/FIR_1
>> /mboards/0/dboards/A/rx_frontends/B/filters/FIR_1/value
>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_1
>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_1/value
>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_2
>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_2/value
>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_3
>> /mboards/0/dboards/A/rx_frontends/B/filters/HB_3/value
>> /mboards/0/dboards/A/rx_frontends/B/filters/LPF_BB
>> /mboards/0/dboards/A/rx_frontends/B/filters/LPF_BB/value
>> /mboards/0/dboards/A/rx_frontends/B/filters/LPF_TIA
>> /mboards/0/dboards/A/rx_frontends/B/filters/LPF_TIA/value
>> /mboards/0/dboards/A/rx_frontends/B/antenna
>> /mboards/0/dboards/A/rx_frontends/B/antenna/options
>> /mboards/0/dboards/A/rx_frontends/B/antenna/value
>> /mboards/0/dboards/A/tx_frontends
>> /mboards/0/dboards/A/tx_frontends/A
>> /mboards/0/dboards/A/tx_frontends/A/name
>> /mboards/0/dboards/A/tx_frontends/A/sensors
>> /mboards/0/dboards/A/tx_frontends/A/sensors/temp
>> /mboards/0/dboards/A/tx_frontends/A/sensors/lo_locked
>> /mboards/0/dboards/A/tx_frontends/A/gains
>> /mboards/0/dboards/A/tx_frontends/A/gains/PGA
>> /mboards/0/dboards/A/tx_frontends/A/gains/PGA/range
>> /mboards/0/dboards/A/tx_frontends/A/gains/PGA/value
>> /mboards/0/dboards/A/tx_frontends/A/connection
>> /mboards/0/dboards/A/tx_frontends/A/enabled
>> /mboards/0/dboards/A/tx_frontends/A/use_lo_offset
>> /mboards/0/dboards/A/tx_frontends/A/bandwidth
>> /mboards/0/dboards/A/tx_frontends/A/bandwidth/value
>> /mboards/0/dboards/A/tx_frontends/A/bandwidth/range
>> /mboards/0/dboards/A/tx_frontends/A/freq
>> /mboards/0/dboards/A/tx_frontends/A/freq/range
>> /mboards/0/dboards/A/tx_frontends/A/freq/value
>> /mboards/0/dboards/A/tx_frontends/A/filters
>> /mboards/0/dboards/A/tx_frontends/A/filters/FIR_1
>> /mboards/0/dboards/A/tx_frontends/A/filters/FIR_1/value
>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_1
>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_1/value
>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_2
>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_2/value
>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_3
>> /mboards/0/dboards/A/tx_frontends/A/filters/HB_3/value
>> /mboards/0/dboards/A/tx_frontends/A/filters/INT_3
>> /mboards/0/dboards/A/tx_frontends/A/filters/INT_3/value
>> /mboards/0/dboards/A/tx_frontends/A/filters/LPF_BB
>> /mboards/0/dboards/A/tx_frontends/A/filters/LPF_BB/value
>> /mboards/0/dboards/A/tx_frontends/A/filters/LPF_SECONDARY
>> /mboards/0/dboards/A/tx_frontends/A/filters/LPF_SECONDARY/value
>> /mboards/0/dboards/A/tx_frontends/A/antenna
>> /mboards/0/dboards/A/tx_frontends/A/antenna/options
>> /mboards/0/dboards/A/tx_frontends/A/antenna/value
>> /mboards/0/dboards/A/tx_frontends/B
>> /mboards/0/dboards/A/tx_frontends/B/name
>> /mboards/0/dboards/A/tx_frontends/B/sensors
>> /mboards/0/dboards/A/tx_frontends/B/sensors/temp
>> /mboards/0/dboards/A/tx_frontends/B/sensors/lo_locked
>> /mboards/0/dboards/A/tx_frontends/B/gains
>> /mboards/0/dboards/A/tx_frontends/B/gains/PGA
>> /mboards/0/dboards/A/tx_frontends/B/gains/PGA/range
>> /mboards/0/dboards/A/tx_frontends/B/gains/PGA/value
>> /mboards/0/dboards/A/tx_frontends/B/connection
>> /mboards/0/dboards/A/tx_frontends/B/enabled
>> /mboards/0/dboards/A/tx_frontends/B/use_lo_offset
>> /mboards/0/dboards/A/tx_frontends/B/bandwidth
>> /mboards/0/dboards/A/tx_frontends/B/bandwidth/value
>> /mboards/0/dboards/A/tx_frontends/B/bandwidth/range
>> /mboards/0/dboards/A/tx_frontends/B/freq
>> /mboards/0/dboards/A/tx_frontends/B/freq/range
>> /mboards/0/dboards/A/tx_frontends/B/freq/value
>> /mboards/0/dboards/A/tx_frontends/B/filters
>> /mboards/0/dboards/A/tx_frontends/B/filters/FIR_1
>> /mboards/0/dboards/A/tx_frontends/B/filters/FIR_1/value
>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_1
>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_1/value
>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_2
>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_2/value
>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_3
>> /mboards/0/dboards/A/tx_frontends/B/filters/HB_3/value
>> /mboards/0/dboards/A/tx_frontends/B/filters/INT_3
>> /mboards/0/dboards/A/tx_frontends/B/filters/INT_3/value
>> /mboards/0/dboards/A/tx_frontends/B/filters/LPF_BB
>> /mboards/0/dboards/A/tx_frontends/B/filters/LPF_BB/value
>> /mboards/0/dboards/A/tx_frontends/B/filters/LPF_SECONDARY
>> /mboards/0/dboards/A/tx_frontends/B/filters/LPF_SECONDARY/value
>> /mboards/0/dboards/A/tx_frontends/B/antenna
>> /mboards/0/dboards/A/tx_frontends/B/antenna/options
>> /mboards/0/dboards/A/tx_frontends/B/antenna/value
>> /mboards/0/global_regs
>> /mboards/0/global_regs/misc
>> /mboards/0/global_regs/pll
>> /mboards/0/tick_rate
>> /mboards/0/xbar
>> /mboards/0/xbar/Radio_0
>> /mboards/0/xbar/Radio_0/noc_id
>> /mboards/0/xbar/Radio_0/input_buffer_size
>> /mboards/0/xbar/Radio_0/input_buffer_size/0
>> /mboards/0/xbar/Radio_0/input_buffer_size/1
>> /mboards/0/xbar/Radio_0/mtu
>> /mboards/0/xbar/Radio_0/mtu/0
>> /mboards/0/xbar/Radio_0/mtu/1
>> /mboards/0/xbar/Radio_0/ports
>> /mboards/0/xbar/Radio_0/ports/in
>> /mboards/0/xbar/Radio_0/ports/in/0
>> /mboards/0/xbar/Radio_0/ports/in/1
>> /mboards/0/xbar/Radio_0/ports/out
>> /mboards/0/xbar/Radio_0/ports/out/0
>> /mboards/0/xbar/Radio_0/ports/out/1
>> /mboards/0/xbar/Radio_0/args
>> /mboards/0/xbar/Radio_0/args/0
>> /mboards/0/xbar/Radio_0/args/0/spp
>> /mboards/0/xbar/Radio_0/args/0/spp/type
>> /mboards/0/xbar/Radio_0/args/0/spp/value
>> /mboards/0/xbar/Radio_0/args/1
>> /mboards/0/xbar/gain_0
>> /mboards/0/xbar/gain_0/noc_id
>> /mboards/0/xbar/gain_0/input_buffer_size
>> /mboards/0/xbar/gain_0/input_buffer_size/0
>> /mboards/0/xbar/gain_0/mtu
>> /mboards/0/xbar/gain_0/mtu/0
>> /mboards/0/xbar/gain_0/registers
>> /mboards/0/xbar/gain_0/registers/sr
>> /mboards/0/xbar/gain_0/registers/sr/Gain
>> /mboards/0/xbar/gain_0/ports
>> /mboards/0/xbar/gain_0/ports/in
>> /mboards/0/xbar/gain_0/ports/in/0
>> /mboards/0/xbar/gain_0/ports/out
>> /mboards/0/xbar/gain_0/ports/out/0
>> /mboards/0/xbar/gain_0/args
>> /mboards/0/xbar/gain_0/args/0
>> /mboards/0/xbar/DDC_0
>> /mboards/0/xbar/DDC_0/noc_id
>> /mboards/0/xbar/DDC_0/input_buffer_size
>> /mboards/0/xbar/DDC_0/input_buffer_size/0
>> /mboards/0/xbar/DDC_0/input_buffer_size/1
>> /mboards/0/xbar/DDC_0/mtu
>> /mboards/0/xbar/DDC_0/mtu/0
>> /mboards/0/xbar/DDC_0/mtu/1
>> /mboards/0/xbar/DDC_0/registers
>> /mboards/0/xbar/DDC_0/registers/sr
>> /mboards/0/xbar/DDC_0/registers/sr/N
>> /mboards/0/xbar/DDC_0/registers/sr/M
>> /mboards/0/xbar/DDC_0/registers/sr/CONFIG
>> /mboards/0/xbar/DDC_0/registers/sr/DDS_FREQ
>> /mboards/0/xbar/DDC_0/registers/sr/SCALE_IQ
>> /mboards/0/xbar/DDC_0/registers/sr/DECIM_WORD
>> /mboards/0/xbar/DDC_0/registers/sr/MODE
>> /mboards/0/xbar/DDC_0/registers/sr/RELOAD
>> /mboards/0/xbar/DDC_0/ports
>> /mboards/0/xbar/DDC_0/ports/in
>> /mboards/0/xbar/DDC_0/ports/in/0
>> /mboards/0/xbar/DDC_0/ports/in/1
>> /mboards/0/xbar/DDC_0/ports/out
>> /mboards/0/xbar/DDC_0/ports/out/0
>> /mboards/0/xbar/DDC_0/ports/out/1
>> /mboards/0/xbar/DDC_0/args
>> /mboards/0/xbar/DDC_0/args/0
>> /mboards/0/xbar/DDC_0/args/0/freq
>> /mboards/0/xbar/DDC_0/args/0/freq/type
>> /mboards/0/xbar/DDC_0/args/0/freq/value
>> /mboards/0/xbar/DDC_0/args/0/input_rate
>> /mboards/0/xbar/DDC_0/args/0/input_rate/type
>> /mboards/0/xbar/DDC_0/args/0/input_rate/value
>> /mboards/0/xbar/DDC_0/args/0/output_rate
>> /mboards/0/xbar/DDC_0/args/0/output_rate/type
>> /mboards/0/xbar/DDC_0/args/0/output_rate/value
>> /mboards/0/xbar/DDC_0/args/0/fullscale
>> /mboards/0/xbar/DDC_0/args/0/fullscale/type
>> /mboards/0/xbar/DDC_0/args/0/fullscale/value
>> /mboards/0/xbar/DDC_0/args/0/scalar_correction
>> /mboards/0/xbar/DDC_0/args/0/scalar_correction/type
>> /mboards/0/xbar/DDC_0/args/0/scalar_correction/value
>> /mboards/0/xbar/DDC_0/args/1
>> /mboards/0/xbar/DDC_0/args/1/freq
>> /mboards/0/xbar/DDC_0/args/1/freq/type
>> /mboards/0/xbar/DDC_0/args/1/freq/value
>> /mboards/0/xbar/DDC_0/args/1/input_rate
>> /mboards/0/xbar/DDC_0/args/1/input_rate/type
>> /mboards/0/xbar/DDC_0/args/1/input_rate/value
>> /mboards/0/xbar/DDC_0/args/1/output_rate
>> /mboards/0/xbar/DDC_0/args/1/output_rate/type
>> /mboards/0/xbar/DDC_0/args/1/output_rate/value
>> /mboards/0/xbar/DDC_0/args/1/fullscale
>> /mboards/0/xbar/DDC_0/args/1/fullscale/type
>> /mboards/0/xbar/DDC_0/args/1/fullscale/value
>> /mboards/0/xbar/DDC_0/args/1/scalar_correction
>> /mboards/0/xbar/DDC_0/args/1/scalar_correction/type
>> /mboards/0/xbar/DDC_0/args/1/scalar_correction/value
>> /mboards/0/xbar/DDC_0/legacy_api
>> /mboards/0/xbar/DDC_0/legacy_api/0
>> /mboards/0/xbar/DDC_0/legacy_api/0/rate
>> /mboards/0/xbar/DDC_0/legacy_api/0/rate/value
>> /mboards/0/xbar/DDC_0/legacy_api/0/rate/range
>> /mboards/0/xbar/DDC_0/legacy_api/0/freq
>> /mboards/0/xbar/DDC_0/legacy_api/0/freq/value
>> /mboards/0/xbar/DDC_0/legacy_api/0/freq/range
>> /mboards/0/xbar/DDC_0/legacy_api/1
>> /mboards/0/xbar/DDC_0/legacy_api/1/rate
>> /mboards/0/xbar/DDC_0/legacy_api/1/rate/value
>> /mboards/0/xbar/DDC_0/legacy_api/1/rate/range
>> /mboards/0/xbar/DDC_0/legacy_api/1/freq
>> /mboards/0/xbar/DDC_0/legacy_api/1/freq/value
>> /mboards/0/xbar/DDC_0/legacy_api/1/freq/range
>> /mboards/0/xbar/FFT_0
>> /mboards/0/xbar/FFT_0/noc_id
>> /mboards/0/xbar/FFT_0/input_buffer_size
>> /mboards/0/xbar/FFT_0/input_buffer_size/0
>> /mboards/0/xbar/FFT_0/mtu
>> /mboards/0/xbar/FFT_0/mtu/0
>> /mboards/0/xbar/FFT_0/registers
>> /mboards/0/xbar/FFT_0/registers/sr
>> /mboards/0/xbar/FFT_0/registers/sr/FFT_RESET
>> /mboards/0/xbar/FFT_0/registers/sr/FFT_SIZE_LOG2
>> /mboards/0/xbar/FFT_0/registers/sr/MAGNITUDE_OUT
>> /mboards/0/xbar/FFT_0/registers/sr/FFT_DIRECTION
>> /mboards/0/xbar/FFT_0/registers/sr/FFT_SCALING
>> /mboards/0/xbar/FFT_0/registers/sr/FFT_SHIFT_CONFIG
>> /mboards/0/xbar/FFT_0/registers/rb
>> /mboards/0/xbar/FFT_0/registers/rb/RB_FFT_RESET
>> /mboards/0/xbar/FFT_0/registers/rb/RB_MAGNITUDE_OUT
>> /mboards/0/xbar/FFT_0/registers/rb/RB_FFT_SIZE_LOG2
>> /mboards/0/xbar/FFT_0/registers/rb/RB_FFT_DIRECTION
>> /mboards/0/xbar/FFT_0/registers/rb/RB_FFT_SCALING
>> /mboards/0/xbar/FFT_0/registers/rb/RB_FFT_SHIFT_CONFIG
>> /mboards/0/xbar/FFT_0/ports
>> /mboards/0/xbar/FFT_0/ports/in
>> /mboards/0/xbar/FFT_0/ports/in/0
>> /mboards/0/xbar/FFT_0/ports/out
>> /mboards/0/xbar/FFT_0/ports/out/0
>> /mboards/0/xbar/FFT_0/args
>> /mboards/0/xbar/FFT_0/args/0
>> /mboards/0/xbar/FFT_0/args/0/spp
>> /mboards/0/xbar/FFT_0/args/0/spp/type
>> /mboards/0/xbar/FFT_0/args/0/spp/value
>> /mboards/0/xbar/FFT_0/args/0/shift
>> /mboards/0/xbar/FFT_0/args/0/shift/type
>> /mboards/0/xbar/FFT_0/args/0/shift/value
>> /mboards/0/xbar/FFT_0/args/0/direction
>> /mboards/0/xbar/FFT_0/args/0/direction/type
>> /mboards/0/xbar/FFT_0/args/0/direction/value
>> /mboards/0/xbar/FFT_0/args/0/scaling
>> /mboards/0/xbar/FFT_0/args/0/scaling/type
>> /mboards/0/xbar/FFT_0/args/0/scaling/value
>> /mboards/0/xbar/FFT_0/args/0/otype
>> /mboards/0/xbar/FFT_0/args/0/otype/type
>> /mboards/0/xbar/FFT_0/args/0/otype/value
>> /mboards/0/xbar/FFT_0/args/0/reset
>> /mboards/0/xbar/FFT_0/args/0/reset/type
>> /mboards/0/xbar/FFT_0/args/0/reset/value
>> /mboards/0/xbar/FFT_0/args/0/magnitude_out
>> /mboards/0/xbar/FFT_0/args/0/magnitude_out/type
>> /mboards/0/xbar/FFT_0/args/0/magnitude_out/value
>> /mboards/0/time
>> /mboards/0/time/now
>> /mboards/0/time/pps
>> /mboards/0/time/cmd
>> /mboards/0/time_source
>> /mboards/0/time_source/value
>> /mboards/0/time_source/options
>> /mboards/0/rx_codecs
>> /mboards/0/rx_codecs/A
>> /mboards/0/rx_codecs/A/name
>> /mboards/0/rx_codecs/A/gains
>> /mboards/0/tx_codecs
>> /mboards/0/tx_codecs/A
>> /mboards/0/tx_codecs/A/name
>> /mboards/0/tx_codecs/A/gains
>> /mboards/0/gpio
>> /mboards/0/gpio/INT0
>> /mboards/0/gpio/INT0/SRC
>> /mboards/0/gpio/INT0/CTRL
>> /mboards/0/gpio/INT0/DDR
>> /mboards/0/gpio/INT0/OUT
>> /mboards/0/gpio/INT0/ATR_0X
>> /mboards/0/gpio/INT0/ATR_RX
>> /mboards/0/gpio/INT0/ATR_TX
>> /mboards/0/gpio/INT0/ATR_XX
>> /mboards/0/gpio/INT0/READBACK
>> /mboards/0/rx_dsps
>> /mboards/0/rx_dsps/0
>> /mboards/0/rx_dsps/0/stream_cmd
>> /mboards/0/rx_dsps/0/freq
>> /mboards/0/rx_dsps/0/freq/value
>> /mboards/0/rx_dsps/0/freq/range
>> /mboards/0/rx_dsps/0/rate
>> /mboards/0/rx_dsps/0/rate/value
>> /mboards/0/rx_dsps/1
>> /mboards/0/rx_dsps/1/stream_cmd
>> /mboards/0/rx_dsps/1/freq
>> /mboards/0/rx_dsps/1/freq/value
>> /mboards/0/rx_dsps/1/freq/range
>> /mboards/0/rx_dsps/1/rate
>> /mboards/0/rx_dsps/1/rate/value
>> /mboards/0/tx_dsps
>> /mboards/0/tx_dsps/0
>> /mboards/0/tx_dsps/0/freq
>> /mboards/0/tx_dsps/0/freq/value
>> /mboards/0/tx_dsps/0/freq/range
>> /mboards/0/tx_dsps/0/rate
>> /mboards/0/tx_dsps/0/rate/value
>> /mboards/0/tx_dsps/1
>> /mboards/0/tx_dsps/1/freq
>> /mboards/0/tx_dsps/1/freq/value
>> /mboards/0/tx_dsps/1/freq/range
>> /mboards/0/tx_dsps/1/rate
>> /mboards/0/tx_dsps/1/rate/value
>> /mboards/0/rx_subdev_spec
>> /mboards/0/tx_subdev_spec
>> [INFO] [E300] Loading FPGA image:
>> /home/root/newinstall/usr/share/uhd/images/usrp_e3xx_fpga_idle_sg3.bit...
>> [INFO] [E300] FPGA image loaded
>>
>> The failure output I got from running the python script shows that it
>> can't find "/mboards/0/xbar/gain_0/args/0/gain/value" and when I look at
>> the tree, there is no value instantiated by the probe. It only looks like
>> the furthest that the probe goes down in the mboards is
>> "/mboards/0/xbar/gain_0/args/0". I am assuming its something in the
>> arguments file not getting loaded, but everything appears ok to me on
>> glance in that XML file.
>>
>> Regards,
>> Jon
>>
>> On Thu, Nov 21, 2019 at 4:49 PM EJ Kreinar <ejkreinar@gmail.com> wrote:
>>
>>> Okay, great...
>>>
>>> You might want to try increasing the log level. Export
>>> UHD_LOG_CONSOLE_LEVEL=trace or debug and try to make sure the correct xml
>>> file is getting applied to the block correctly.
>>>
>>> There's also something like a "--tree" parameter in the uhd_usrp_probe
>>> so try running the probe with the tree option to print out the device tree
>>> and look for the arguments assigned to your new block.
>>>
>>> Let's see if any of that helps figure out what's going on...
>>> EJ
>>>
>>> On Thu, Nov 21, 2019, 4:01 PM Jonathan Lockhart <jlockhartrt@gmail.com>
>>> wrote:
>>>
>>>> Also, when I compiled from the OOT directory for ARM, I used this
>>>> command, which I pieced together from the RFNoC build guide, and the
>>>> release-4 guide for cross-compiling gr-ettus.
>>>>
>>>> cmake
>>>> -DCMAKE_TOOLCHAIN_FILE=~/rfnoc/src/gnuradio/cmake/Toolchains/oe-sdk_cross.cmake
>>>> -DCMAKE_INSTALL_PREFIX=/usr
>>>> -DUHD_FPGA_DIR="/home/jon/rfnoc/src/uhd/fpga-src/" ../
>>>>
>>>> Regards,
>>>> Jon
>>>>
>>>> On Thu, Nov 21, 2019 at 3:48 PM Jonathan Lockhart <
>>>> jlockhartrt@gmail.com> wrote:
>>>>
>>>>> Greetings EJ,
>>>>>
>>>>> So, from the tutorial, they have you edit the gain.xml file, and this
>>>>> is what I have for it.
>>>>>
>>>>> <?xml version="1.0"?>
>>>>> <!--Default XML file-->
>>>>> <nocblock>
>>>>>   <name>gain</name>
>>>>>   <blockname>gain</blockname>
>>>>>   <ids>
>>>>>     <id revision="0">B7DD64941A952AAC</id>
>>>>>   </ids>
>>>>>   <!-- Registers -->
>>>>>   <registers>
>>>>>     <setreg>
>>>>>       <name>Gain</name>
>>>>>       <address>128</address>
>>>>>     </setreg>
>>>>>   </registers>
>>>>>   <!-- Args -->
>>>>>   <args>
>>>>>     <args>
>>>>>       <name>gain</name>
>>>>>       <type>double</type>
>>>>>       <value>1.0</value>
>>>>>       <check>GE($gain, 0.0) AND LE($gain, 32767.0)</check>
>>>>>       <check_message>Invalid Gain!</check_message>
>>>>>       <action>
>>>>>         SR_WRITE("GAIN", IROUND($gain))
>>>>>       </action>
>>>>>     </args>
>>>>>   </args>
>>>>>   <!--One input, one output. If this is used, better have all the info
>>>>> the C++ file.-->
>>>>>   <ports>
>>>>>     <sink>
>>>>>       <name>in0</name>
>>>>>       <type>sc16</name>
>>>>>     </sink>
>>>>>     <source>
>>>>>       <name>out0</name>
>>>>>       <type>sc16</name>
>>>>>     </source>
>>>>>   </ports>
>>>>> </nocblock>
>>>>>
>>>>> There is an args value and it is declared as gain.
>>>>>
>>>>> So from there, I followed your second suggestion and tried to find
>>>>> where it was installed when I did the cross compile. It was not placed in
>>>>> the "GRC_BLOCKS_PATH" of "/share/gnuradio/grc/blocks" like the default
>>>>> RFNoC blocks. It was instead placed in "/share/uhd/rfnoc/bocks" so I added
>>>>> that to the setup.env file, included below.
>>>>>
>>>>> LOCALPREFIX=~/newinstall/usr
>>>>> export PATH=$LOCALPREFIX/bin:$PATH
>>>>> export LD_LOAD_LIBRARY=$LOCALPREFIX/lib:$LD_LOAD_LIBRARY
>>>>> export LD_LIBRARY_PATH=$LOCALPREFIX/lib:$LD_LIBRARY_PATH
>>>>> export PYTHONPATH=$LOCALPREFIX/lib/python2.7/site-packages:$PYTHONPATH
>>>>> export PKG_CONFIG_PATH=$LOCALPREFIX/lib/pkgconfig:$PKG_CONFIG_PATH
>>>>> export
>>>>> GRC_BLOCKS_PATH=$LOCALPREFIX/share/gnuradio/grc/blocks:$GRC_BLOCKS_PATH
>>>>> export UHD_RFNOC_DIR=$LOCALPREFIX/share/uhd/rfnoc/
>>>>> export UHD_IMAGES_DIR=$LOCALPREFIX/share/uhd/images
>>>>> export
>>>>> GRC_BLOCKS_PATH=$LOCALPREFIX/share/uhd/rfnoc/blocks:$GRC_BLOCKS_PATH
>>>>>
>>>>> Unfortunately, after re-sourcing the setup.env, I still get the same
>>>>> message.
>>>>>
>>>>>   File "rfnoc_myGain_usrp.py", line 223, in <module>
>>>>>     main()
>>>>>   File "rfnoc_myGain_usrp.py", line 212, in main
>>>>>     tb = top_block_cls(fpga_path=options.fpga_path,
>>>>> rx_gain=options.rx_gain, rx_digital_gain=options.rx_digital_gain,
>>>>> rx_freq=options.rx_freq, host_ip_addr=options.host_ip_addr)
>>>>>   File "rfnoc_myGain_usrp.py", line 117, in __init__
>>>>>     self.tutorial_gain_0.set_arg("gain", rx_digital_gain)
>>>>>   File
>>>>> "/home/root/newinstall/usr/lib/python2.7/site-packages/tutorial/tutorial_swig.py",
>>>>> line 315, in set_arg
>>>>>     return _tutorial_swig.gain_sptr_set_arg(self, *args)
>>>>> RuntimeError: LookupError: Path not found in tree:
>>>>> /mboards/0/xbar/gain_0/args/0/gain/value
>>>>>
>>>>> I looked at some of your examples (which have been very helpful to get
>>>>> me this far) from what I believe is your github someone linked me.
>>>>> Everything appears to match what it should, for what gain is trying to
>>>>> accomplish.
>>>>>
>>>>> Regards,
>>>>> Jon
>>>>>
>>>>> On Thu, Nov 21, 2019 at 3:27 PM EJ Kreinar <ejkreinar@gmail.com>
>>>>> wrote:
>>>>>
>>>>>> Hi Jon,
>>>>>>
>>>>>> The rfnoc "nocscript" xml definition can create arguments and attach
>>>>>> to the device tree like you are trying to set there (it's not compiled
>>>>>> directly, but rather created dynamically from the xml definition)
>>>>>>
>>>>>> Recommended debugging...
>>>>>> 1. Check your OOT gain block xml (in rfnoc/blocks) and make sure it
>>>>>> has a "gain" field in the "args" list. You'll also want to make sure it
>>>>>> writes your desired register, but I don't think you're even getting that far
>>>>>> 2. Make sure the block xml is installed on the e310 embedded prefix
>>>>>> and is found at run time during uhd_usrp_probe and when running your
>>>>>> application. If it's not in the right place or not attaching to your block
>>>>>> then it won't create the gain argument
>>>>>>
>>>>>> I'm guessing it's one of those two possibilities...
>>>>>> EJ
>>>>>>
>>>>>> On Thu, Nov 21, 2019, 3:19 PM Jonathan Lockhart via USRP-users <
>>>>>> usrp-users@lists.ettus.com> wrote:
>>>>>>
>>>>>>> Greetings,
>>>>>>>
>>>>>>> I was able to get the ARM cross compile working. I removed the build
>>>>>>> directory and re-sourced the dev environment and then the cross-compile
>>>>>>> used the -mfloar=hard flag. Not sure what caused the issue earlier and why
>>>>>>> it wasn't picking it up.
>>>>>>>
>>>>>>> Now I have a different issue. So I have completed this guide:
>>>>>>> https://kb.ettus.com/Getting_Started_with_RFNoC_Development
>>>>>>>
>>>>>>> I modified the GNURadio just a bit so that the output from gain was
>>>>>>> placed on a ZMQ push, and the graphics were on the host to graph the signal
>>>>>>> (seen in the screenshots below).
>>>>>>>
>>>>>>> [image: Screenshot from 2019-11-21 15-06-33.jpg]
>>>>>>>
>>>>>>> [image: Screenshot from 2019-11-21 15-010-44.jpg]
>>>>>>>
>>>>>>> However, when I run the top file for the USRP, I am running into
>>>>>>> this error.
>>>>>>>
>>>>>>> Traceback (most recent call last):
>>>>>>>   File "rfnoc_myGain_usrp.py", line 223, in <module>
>>>>>>>     main()
>>>>>>>   File "rfnoc_myGain_usrp.py", line 212, in main
>>>>>>>     tb = top_block_cls(fpga_path=options.fpga_path,
>>>>>>> rx_gain=options.rx_gain, rx_digital_gain=options.rx_digital_gain,
>>>>>>> rx_freq=options.rx_freq, host_ip_addr=options.host_ip_addr)
>>>>>>>   File "rfnoc_myGain_usrp.py", line 117, in __init__
>>>>>>>     self.tutorial_gain_0.set_arg("gain", rx_digital_gain)
>>>>>>>   File
>>>>>>> "/home/root/newinstall/usr/lib/python2.7/site-packages/tutorial/tutorial_swig.py",
>>>>>>> line 315, in set_arg
>>>>>>>     return _tutorial_swig.gain_sptr_set_arg(self, *args)
>>>>>>> RuntimeError: LookupError: Path not found in tree:
>>>>>>> /mboards/0/xbar/gain_0/args/0/gain/value
>>>>>>>
>>>>>>> No where else in building GNURadio scripts and .bit files does this
>>>>>>> "/mboards" arise, and I have looked through my verilog file for gain
>>>>>>> (gain.v) and it is correct per the instructions in the linked guide, and I
>>>>>>> built the python and gnuradio hook exactly as the instructions stated to.
>>>>>>>
>>>>>>> Anyone have an troubleshooting ideas b/c I am currently at a loss.
>>>>>>> It did past the test bench they have you build with no issues.
>>>>>>>
>>>>>>> Regards,
>>>>>>> Jon
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>> On Wed, Nov 20, 2019 at 3:21 PM Jonathan Lockhart <
>>>>>>> jlockhartrt@gmail.com> wrote:
>>>>>>>
>>>>>>>> Greetings,
>>>>>>>>
>>>>>>>> I am having some issues completing the RFNOC build tutorial on the
>>>>>>>> Ettus E312. The reference documentation is using an X3xx series radio, and
>>>>>>>> from the final python script it appears to be running the GNR script
>>>>>>>> natively on the host. I built the exact script from the KB but when running
>>>>>>>> on the radio it fails stating it can't "import tutorial." I realized all
>>>>>>>> the files that were installed were placed on the host but not cross
>>>>>>>> compiled for the E3xx using the SDK and ARM cross compile tool. I tried to
>>>>>>>> complete this task, but unfortunately the compilation dies here.
>>>>>>>>
>>>>>>>> /home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/gnu/stubs.h:7:11:
>>>>>>>> fatal error: gnu/stubs-soft.h: No such file or directory
>>>>>>>>  # include <gnu/stubs-soft.h>
>>>>>>>>            ^~~~~~~~~~~~~~~~~~
>>>>>>>> compilation terminated.
>>>>>>>>
>>>>>>>> Now I did find the stubs-soft.h file in the libc6-dev-armel-cross
>>>>>>>> in the apt repo. I installed it and tried to cp the file into the
>>>>>>>> /home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/gnu/
>>>>>>>> location but it still doesn't like that. I verified that on my echo $CC
>>>>>>>> that the -mfloat is set to hard as shown here.
>>>>>>>>
>>>>>>>> jon@jon-OptiPlex-9020:~/rfnoc/src/rfnoc-tutorial$ echo $CC
>>>>>>>> arm-oe-linux-gnueabi-gcc -march=armv7-a -mfloat-abi=hard -mfpu=neon
>>>>>>>> --sysroot=/home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi
>>>>>>>>
>>>>>>>> So I am not sure why the gain module in the tutorial is looking for
>>>>>>>> the soft file.
>>>>>>>>
>>>>>>>> If anyone has experience in porting their OOT modules over to the
>>>>>>>> E-series of radios I would appreciate the help.
>>>>>>>>
>>>>>>>> Regards,
>>>>>>>> Jon
>>>>>>>>
>>>>>>> _______________________________________________
>>>>>>> USRP-users mailing list
>>>>>>> USRP-users@lists.ettus.com
>>>>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>>>>>
>>>>>>

--000000000000b1ba7e0597f16331
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">NVM, I got it set. I am teasing through the long console o=
utput now. Might of wanted to set the file log instead. Live and learn. <br=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Fri, Nov 22, 2019 at 10:20 AM EJ Kreinar &lt;<a href=3D"mailto:ejkreina=
r@gmail.com">ejkreinar@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"auto">Good progress, agreed it=
 looks like the gain arg isn&#39;t getting created here...=C2=A0<div dir=3D=
"auto"><br></div><div dir=3D"auto">If you run with log level trace, rfnoc s=
hould (might?) indicate the xml file it loaded. I&#39;d try to find that xm=
l and confirm it looks like what you expect, with the gain arg entry.</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">Also, perhaps grep your prefi=
x and share directories on the embedded device to search for any other xml =
files that might match the noc id or provide the same &quot;gain&quot; bloc=
k... I&#39;ve definitely fought with conflicting xml definitions before, yo=
u might be seeing that here.</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">EJ</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Fri, Nov 22, 2019, 9:36 AM Jonathan Lockhart &lt;<a href=3D=
"mailto:jlockhartrt@gmail.com" rel=3D"noreferrer noreferrer" target=3D"_bla=
nk">jlockhartrt@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>Hey EJ,</div><div><br></div>=
<div>Sorry for being slow I had to dig=20
around to set that UHD Log variable, which easy enough it was just a=20
simple export. I then ran uhd_usrp_probe with the --tree and setting the
 fpga to my bit file. Here is the output from the probe. <br></div><div><br=
></div><div>root@ettus-e3xx-sg3:~# uhd_usrp_probe --args=3D&quot;fpga=3D./n=
ewinstall/e300.bit&quot; --tree<br>[INFO] [UHD] linux; GNU C++ version 4.9.=
2; Boost_105700; UHD_3.14.1.HEAD-0-g0347a6d8<br>[INFO] [E300] Loading FPGA =
image: ./newinstall/e300.bit...<br>[INFO] [E300] FPGA image loaded<br>[INFO=
] [E300] Detecting internal GPS <br>.... [INFO] [E300] GPSDO found<br>[INFO=
] [E300] Initializing core control (global registers)...<br><br>[INFO] [E30=
0] Performing register loopback test... <br>[INFO] [E300] Register loopback=
 test passed<br>[INFO] [0/Radio_0] Initializing block control (NOC ID: 0x12=
AD100000000000)<br>[WARNING] [RFNOC] Can&#39;t find a block controller for =
key gain, using default block controller!<br>[INFO] [0/gain_0] Initializing=
 block control (NOC ID: 0xB7DD64941A952AAC)<br>[INFO] [0/DDC_0] Initializin=
g block control (NOC ID: 0xDDC0000000000000)<br>[WARNING] [RFNOC] Can&#39;t=
 find a block controller for key FFT, using default block controller!<br>[I=
NFO] [0/FFT_0] Initializing block control (NOC ID: 0xFF70000000000000)<br>/=
<br>/name<br>/mboards<br>/mboards/0<br>/mboards/0/name<br>/mboards/0/codena=
me<br>/mboards/0/fpga_version<br>/mboards/0/fpga_version_hash<br>/mboards/0=
/clock_source<br>/mboards/0/clock_source/value<br>/mboards/0/clock_source/o=
ptions<br>/mboards/0/sensors<br>/mboards/0/sensors/temp<br>/mboards/0/senso=
rs/ref_locked<br>/mboards/0/sensors/gps_locked<br>/mboards/0/sensors/gps_ti=
me<br>/mboards/0/sensors/gps_position<br>/mboards/0/sensors/gps_gpgga<br>/m=
boards/0/sensors/gps_gprmc<br>/mboards/0/eeprom<br>/mboards/0/dboards<br>/m=
boards/0/dboards/A<br>/mboards/0/dboards/A/rx_eeprom<br>/mboards/0/dboards/=
A/tx_eeprom<br>/mboards/0/dboards/A/gdb_eeprom<br>/mboards/0/dboards/A/rx_f=
rontends<br>/mboards/0/dboards/A/rx_frontends/A<br>/mboards/0/dboards/A/rx_=
frontends/A/name<br>/mboards/0/dboards/A/rx_frontends/A/sensors<br>/mboards=
/0/dboards/A/rx_frontends/A/sensors/temp<br>/mboards/0/dboards/A/rx_fronten=
ds/A/sensors/rssi<br>/mboards/0/dboards/A/rx_frontends/A/sensors/lo_locked<=
br>/mboards/0/dboards/A/rx_frontends/A/gains<br>/mboards/0/dboards/A/rx_fro=
ntends/A/gains/PGA<br>/mboards/0/dboards/A/rx_frontends/A/gains/PGA/range<b=
r>/mboards/0/dboards/A/rx_frontends/A/gains/PGA/value<br>/mboards/0/dboards=
/A/rx_frontends/A/connection<br>/mboards/0/dboards/A/rx_frontends/A/enabled=
<br>/mboards/0/dboards/A/rx_frontends/A/use_lo_offset<br>/mboards/0/dboards=
/A/rx_frontends/A/bandwidth<br>/mboards/0/dboards/A/rx_frontends/A/bandwidt=
h/value<br>/mboards/0/dboards/A/rx_frontends/A/bandwidth/range<br>/mboards/=
0/dboards/A/rx_frontends/A/freq<br>/mboards/0/dboards/A/rx_frontends/A/freq=
/range<br>/mboards/0/dboards/A/rx_frontends/A/freq/value<br>/mboards/0/dboa=
rds/A/rx_frontends/A/dc_offset<br>/mboards/0/dboards/A/rx_frontends/A/dc_of=
fset/enable<br>/mboards/0/dboards/A/rx_frontends/A/iq_balance<br>/mboards/0=
/dboards/A/rx_frontends/A/iq_balance/enable<br>/mboards/0/dboards/A/rx_fron=
tends/A/gain<br>/mboards/0/dboards/A/rx_frontends/A/gain/agc<br>/mboards/0/=
dboards/A/rx_frontends/A/gain/agc/enable<br>/mboards/0/dboards/A/rx_fronten=
ds/A/gain/agc/mode<br>/mboards/0/dboards/A/rx_frontends/A/gain/agc/mode/val=
ue<br>/mboards/0/dboards/A/rx_frontends/A/gain/agc/mode/options<br>/mboards=
/0/dboards/A/rx_frontends/A/filters<br>/mboards/0/dboards/A/rx_frontends/A/=
filters/DEC_3<br>/mboards/0/dboards/A/rx_frontends/A/filters/DEC_3/value<br=
>/mboards/0/dboards/A/rx_frontends/A/filters/FIR_1<br>/mboards/0/dboards/A/=
rx_frontends/A/filters/FIR_1/value<br>/mboards/0/dboards/A/rx_frontends/A/f=
ilters/HB_1<br>/mboards/0/dboards/A/rx_frontends/A/filters/HB_1/value<br>/m=
boards/0/dboards/A/rx_frontends/A/filters/HB_2<br>/mboards/0/dboards/A/rx_f=
rontends/A/filters/HB_2/value<br>/mboards/0/dboards/A/rx_frontends/A/filter=
s/HB_3<br>/mboards/0/dboards/A/rx_frontends/A/filters/HB_3/value<br>/mboard=
s/0/dboards/A/rx_frontends/A/filters/LPF_BB<br>/mboards/0/dboards/A/rx_fron=
tends/A/filters/LPF_BB/value<br>/mboards/0/dboards/A/rx_frontends/A/filters=
/LPF_TIA<br>/mboards/0/dboards/A/rx_frontends/A/filters/LPF_TIA/value<br>/m=
boards/0/dboards/A/rx_frontends/A/antenna<br>/mboards/0/dboards/A/rx_fronte=
nds/A/antenna/options<br>/mboards/0/dboards/A/rx_frontends/A/antenna/value<=
br>/mboards/0/dboards/A/rx_frontends/B<br>/mboards/0/dboards/A/rx_frontends=
/B/name<br>/mboards/0/dboards/A/rx_frontends/B/sensors<br>/mboards/0/dboard=
s/A/rx_frontends/B/sensors/temp<br>/mboards/0/dboards/A/rx_frontends/B/sens=
ors/rssi<br>/mboards/0/dboards/A/rx_frontends/B/sensors/lo_locked<br>/mboar=
ds/0/dboards/A/rx_frontends/B/gains<br>/mboards/0/dboards/A/rx_frontends/B/=
gains/PGA<br>/mboards/0/dboards/A/rx_frontends/B/gains/PGA/range<br>/mboard=
s/0/dboards/A/rx_frontends/B/gains/PGA/value<br>/mboards/0/dboards/A/rx_fro=
ntends/B/connection<br>/mboards/0/dboards/A/rx_frontends/B/enabled<br>/mboa=
rds/0/dboards/A/rx_frontends/B/use_lo_offset<br>/mboards/0/dboards/A/rx_fro=
ntends/B/bandwidth<br>/mboards/0/dboards/A/rx_frontends/B/bandwidth/value<b=
r>/mboards/0/dboards/A/rx_frontends/B/bandwidth/range<br>/mboards/0/dboards=
/A/rx_frontends/B/freq<br>/mboards/0/dboards/A/rx_frontends/B/freq/range<br=
>/mboards/0/dboards/A/rx_frontends/B/freq/value<br>/mboards/0/dboards/A/rx_=
frontends/B/dc_offset<br>/mboards/0/dboards/A/rx_frontends/B/dc_offset/enab=
le<br>/mboards/0/dboards/A/rx_frontends/B/iq_balance<br>/mboards/0/dboards/=
A/rx_frontends/B/iq_balance/enable<br>/mboards/0/dboards/A/rx_frontends/B/g=
ain<br>/mboards/0/dboards/A/rx_frontends/B/gain/agc<br>/mboards/0/dboards/A=
/rx_frontends/B/gain/agc/enable<br>/mboards/0/dboards/A/rx_frontends/B/gain=
/agc/mode<br>/mboards/0/dboards/A/rx_frontends/B/gain/agc/mode/value<br>/mb=
oards/0/dboards/A/rx_frontends/B/gain/agc/mode/options<br>/mboards/0/dboard=
s/A/rx_frontends/B/filters<br>/mboards/0/dboards/A/rx_frontends/B/filters/D=
EC_3<br>/mboards/0/dboards/A/rx_frontends/B/filters/DEC_3/value<br>/mboards=
/0/dboards/A/rx_frontends/B/filters/FIR_1<br>/mboards/0/dboards/A/rx_fronte=
nds/B/filters/FIR_1/value<br>/mboards/0/dboards/A/rx_frontends/B/filters/HB=
_1<br>/mboards/0/dboards/A/rx_frontends/B/filters/HB_1/value<br>/mboards/0/=
dboards/A/rx_frontends/B/filters/HB_2<br>/mboards/0/dboards/A/rx_frontends/=
B/filters/HB_2/value<br>/mboards/0/dboards/A/rx_frontends/B/filters/HB_3<br=
>/mboards/0/dboards/A/rx_frontends/B/filters/HB_3/value<br>/mboards/0/dboar=
ds/A/rx_frontends/B/filters/LPF_BB<br>/mboards/0/dboards/A/rx_frontends/B/f=
ilters/LPF_BB/value<br>/mboards/0/dboards/A/rx_frontends/B/filters/LPF_TIA<=
br>/mboards/0/dboards/A/rx_frontends/B/filters/LPF_TIA/value<br>/mboards/0/=
dboards/A/rx_frontends/B/antenna<br>/mboards/0/dboards/A/rx_frontends/B/ant=
enna/options<br>/mboards/0/dboards/A/rx_frontends/B/antenna/value<br>/mboar=
ds/0/dboards/A/tx_frontends<br>/mboards/0/dboards/A/tx_frontends/A<br>/mboa=
rds/0/dboards/A/tx_frontends/A/name<br>/mboards/0/dboards/A/tx_frontends/A/=
sensors<br>/mboards/0/dboards/A/tx_frontends/A/sensors/temp<br>/mboards/0/d=
boards/A/tx_frontends/A/sensors/lo_locked<br>/mboards/0/dboards/A/tx_fronte=
nds/A/gains<br>/mboards/0/dboards/A/tx_frontends/A/gains/PGA<br>/mboards/0/=
dboards/A/tx_frontends/A/gains/PGA/range<br>/mboards/0/dboards/A/tx_fronten=
ds/A/gains/PGA/value<br>/mboards/0/dboards/A/tx_frontends/A/connection<br>/=
mboards/0/dboards/A/tx_frontends/A/enabled<br>/mboards/0/dboards/A/tx_front=
ends/A/use_lo_offset<br>/mboards/0/dboards/A/tx_frontends/A/bandwidth<br>/m=
boards/0/dboards/A/tx_frontends/A/bandwidth/value<br>/mboards/0/dboards/A/t=
x_frontends/A/bandwidth/range<br>/mboards/0/dboards/A/tx_frontends/A/freq<b=
r>/mboards/0/dboards/A/tx_frontends/A/freq/range<br>/mboards/0/dboards/A/tx=
_frontends/A/freq/value<br>/mboards/0/dboards/A/tx_frontends/A/filters<br>/=
mboards/0/dboards/A/tx_frontends/A/filters/FIR_1<br>/mboards/0/dboards/A/tx=
_frontends/A/filters/FIR_1/value<br>/mboards/0/dboards/A/tx_frontends/A/fil=
ters/HB_1<br>/mboards/0/dboards/A/tx_frontends/A/filters/HB_1/value<br>/mbo=
ards/0/dboards/A/tx_frontends/A/filters/HB_2<br>/mboards/0/dboards/A/tx_fro=
ntends/A/filters/HB_2/value<br>/mboards/0/dboards/A/tx_frontends/A/filters/=
HB_3<br>/mboards/0/dboards/A/tx_frontends/A/filters/HB_3/value<br>/mboards/=
0/dboards/A/tx_frontends/A/filters/INT_3<br>/mboards/0/dboards/A/tx_fronten=
ds/A/filters/INT_3/value<br>/mboards/0/dboards/A/tx_frontends/A/filters/LPF=
_BB<br>/mboards/0/dboards/A/tx_frontends/A/filters/LPF_BB/value<br>/mboards=
/0/dboards/A/tx_frontends/A/filters/LPF_SECONDARY<br>/mboards/0/dboards/A/t=
x_frontends/A/filters/LPF_SECONDARY/value<br>/mboards/0/dboards/A/tx_fronte=
nds/A/antenna<br>/mboards/0/dboards/A/tx_frontends/A/antenna/options<br>/mb=
oards/0/dboards/A/tx_frontends/A/antenna/value<br>/mboards/0/dboards/A/tx_f=
rontends/B<br>/mboards/0/dboards/A/tx_frontends/B/name<br>/mboards/0/dboard=
s/A/tx_frontends/B/sensors<br>/mboards/0/dboards/A/tx_frontends/B/sensors/t=
emp<br>/mboards/0/dboards/A/tx_frontends/B/sensors/lo_locked<br>/mboards/0/=
dboards/A/tx_frontends/B/gains<br>/mboards/0/dboards/A/tx_frontends/B/gains=
/PGA<br>/mboards/0/dboards/A/tx_frontends/B/gains/PGA/range<br>/mboards/0/d=
boards/A/tx_frontends/B/gains/PGA/value<br>/mboards/0/dboards/A/tx_frontend=
s/B/connection<br>/mboards/0/dboards/A/tx_frontends/B/enabled<br>/mboards/0=
/dboards/A/tx_frontends/B/use_lo_offset<br>/mboards/0/dboards/A/tx_frontend=
s/B/bandwidth<br>/mboards/0/dboards/A/tx_frontends/B/bandwidth/value<br>/mb=
oards/0/dboards/A/tx_frontends/B/bandwidth/range<br>/mboards/0/dboards/A/tx=
_frontends/B/freq<br>/mboards/0/dboards/A/tx_frontends/B/freq/range<br>/mbo=
ards/0/dboards/A/tx_frontends/B/freq/value<br>/mboards/0/dboards/A/tx_front=
ends/B/filters<br>/mboards/0/dboards/A/tx_frontends/B/filters/FIR_1<br>/mbo=
ards/0/dboards/A/tx_frontends/B/filters/FIR_1/value<br>/mboards/0/dboards/A=
/tx_frontends/B/filters/HB_1<br>/mboards/0/dboards/A/tx_frontends/B/filters=
/HB_1/value<br>/mboards/0/dboards/A/tx_frontends/B/filters/HB_2<br>/mboards=
/0/dboards/A/tx_frontends/B/filters/HB_2/value<br>/mboards/0/dboards/A/tx_f=
rontends/B/filters/HB_3<br>/mboards/0/dboards/A/tx_frontends/B/filters/HB_3=
/value<br>/mboards/0/dboards/A/tx_frontends/B/filters/INT_3<br>/mboards/0/d=
boards/A/tx_frontends/B/filters/INT_3/value<br>/mboards/0/dboards/A/tx_fron=
tends/B/filters/LPF_BB<br>/mboards/0/dboards/A/tx_frontends/B/filters/LPF_B=
B/value<br>/mboards/0/dboards/A/tx_frontends/B/filters/LPF_SECONDARY<br>/mb=
oards/0/dboards/A/tx_frontends/B/filters/LPF_SECONDARY/value<br>/mboards/0/=
dboards/A/tx_frontends/B/antenna<br>/mboards/0/dboards/A/tx_frontends/B/ant=
enna/options<br>/mboards/0/dboards/A/tx_frontends/B/antenna/value<br>/mboar=
ds/0/global_regs<br>/mboards/0/global_regs/misc<br>/mboards/0/global_regs/p=
ll<br>/mboards/0/tick_rate<br>/mboards/0/xbar<br>/mboards/0/xbar/Radio_0<br=
>/mboards/0/xbar/Radio_0/noc_id<br>/mboards/0/xbar/Radio_0/input_buffer_siz=
e<br>/mboards/0/xbar/Radio_0/input_buffer_size/0<br>/mboards/0/xbar/Radio_0=
/input_buffer_size/1<br>/mboards/0/xbar/Radio_0/mtu<br>/mboards/0/xbar/Radi=
o_0/mtu/0<br>/mboards/0/xbar/Radio_0/mtu/1<br>/mboards/0/xbar/Radio_0/ports=
<br>/mboards/0/xbar/Radio_0/ports/in<br>/mboards/0/xbar/Radio_0/ports/in/0<=
br>/mboards/0/xbar/Radio_0/ports/in/1<br>/mboards/0/xbar/Radio_0/ports/out<=
br>/mboards/0/xbar/Radio_0/ports/out/0<br>/mboards/0/xbar/Radio_0/ports/out=
/1<br>/mboards/0/xbar/Radio_0/args<br>/mboards/0/xbar/Radio_0/args/0<br>/mb=
oards/0/xbar/Radio_0/args/0/spp<br>/mboards/0/xbar/Radio_0/args/0/spp/type<=
br>/mboards/0/xbar/Radio_0/args/0/spp/value<br>/mboards/0/xbar/Radio_0/args=
/1<br>/mboards/0/xbar/gain_0<br>/mboards/0/xbar/gain_0/noc_id<br>/mboards/0=
/xbar/gain_0/input_buffer_size<br>/mboards/0/xbar/gain_0/input_buffer_size/=
0<br>/mboards/0/xbar/gain_0/mtu<br>/mboards/0/xbar/gain_0/mtu/0<br>/mboards=
/0/xbar/gain_0/registers<br>/mboards/0/xbar/gain_0/registers/sr<br>/mboards=
/0/xbar/gain_0/registers/sr/Gain<br>/mboards/0/xbar/gain_0/ports<br>/mboard=
s/0/xbar/gain_0/ports/in<br>/mboards/0/xbar/gain_0/ports/in/0<br>/mboards/0=
/xbar/gain_0/ports/out<br>/mboards/0/xbar/gain_0/ports/out/0<br>/mboards/0/=
xbar/gain_0/args<br>/mboards/0/xbar/gain_0/args/0<br>/mboards/0/xbar/DDC_0<=
br>/mboards/0/xbar/DDC_0/noc_id<br>/mboards/0/xbar/DDC_0/input_buffer_size<=
br>/mboards/0/xbar/DDC_0/input_buffer_size/0<br>/mboards/0/xbar/DDC_0/input=
_buffer_size/1<br>/mboards/0/xbar/DDC_0/mtu<br>/mboards/0/xbar/DDC_0/mtu/0<=
br>/mboards/0/xbar/DDC_0/mtu/1<br>/mboards/0/xbar/DDC_0/registers<br>/mboar=
ds/0/xbar/DDC_0/registers/sr<br>/mboards/0/xbar/DDC_0/registers/sr/N<br>/mb=
oards/0/xbar/DDC_0/registers/sr/M<br>/mboards/0/xbar/DDC_0/registers/sr/CON=
FIG<br>/mboards/0/xbar/DDC_0/registers/sr/DDS_FREQ<br>/mboards/0/xbar/DDC_0=
/registers/sr/SCALE_IQ<br>/mboards/0/xbar/DDC_0/registers/sr/DECIM_WORD<br>=
/mboards/0/xbar/DDC_0/registers/sr/MODE<br>/mboards/0/xbar/DDC_0/registers/=
sr/RELOAD<br>/mboards/0/xbar/DDC_0/ports<br>/mboards/0/xbar/DDC_0/ports/in<=
br>/mboards/0/xbar/DDC_0/ports/in/0<br>/mboards/0/xbar/DDC_0/ports/in/1<br>=
/mboards/0/xbar/DDC_0/ports/out<br>/mboards/0/xbar/DDC_0/ports/out/0<br>/mb=
oards/0/xbar/DDC_0/ports/out/1<br>/mboards/0/xbar/DDC_0/args<br>/mboards/0/=
xbar/DDC_0/args/0<br>/mboards/0/xbar/DDC_0/args/0/freq<br>/mboards/0/xbar/D=
DC_0/args/0/freq/type<br>/mboards/0/xbar/DDC_0/args/0/freq/value<br>/mboard=
s/0/xbar/DDC_0/args/0/input_rate<br>/mboards/0/xbar/DDC_0/args/0/input_rate=
/type<br>/mboards/0/xbar/DDC_0/args/0/input_rate/value<br>/mboards/0/xbar/D=
DC_0/args/0/output_rate<br>/mboards/0/xbar/DDC_0/args/0/output_rate/type<br=
>/mboards/0/xbar/DDC_0/args/0/output_rate/value<br>/mboards/0/xbar/DDC_0/ar=
gs/0/fullscale<br>/mboards/0/xbar/DDC_0/args/0/fullscale/type<br>/mboards/0=
/xbar/DDC_0/args/0/fullscale/value<br>/mboards/0/xbar/DDC_0/args/0/scalar_c=
orrection<br>/mboards/0/xbar/DDC_0/args/0/scalar_correction/type<br>/mboard=
s/0/xbar/DDC_0/args/0/scalar_correction/value<br>/mboards/0/xbar/DDC_0/args=
/1<br>/mboards/0/xbar/DDC_0/args/1/freq<br>/mboards/0/xbar/DDC_0/args/1/fre=
q/type<br>/mboards/0/xbar/DDC_0/args/1/freq/value<br>/mboards/0/xbar/DDC_0/=
args/1/input_rate<br>/mboards/0/xbar/DDC_0/args/1/input_rate/type<br>/mboar=
ds/0/xbar/DDC_0/args/1/input_rate/value<br>/mboards/0/xbar/DDC_0/args/1/out=
put_rate<br>/mboards/0/xbar/DDC_0/args/1/output_rate/type<br>/mboards/0/xba=
r/DDC_0/args/1/output_rate/value<br>/mboards/0/xbar/DDC_0/args/1/fullscale<=
br>/mboards/0/xbar/DDC_0/args/1/fullscale/type<br>/mboards/0/xbar/DDC_0/arg=
s/1/fullscale/value<br>/mboards/0/xbar/DDC_0/args/1/scalar_correction<br>/m=
boards/0/xbar/DDC_0/args/1/scalar_correction/type<br>/mboards/0/xbar/DDC_0/=
args/1/scalar_correction/value<br>/mboards/0/xbar/DDC_0/legacy_api<br>/mboa=
rds/0/xbar/DDC_0/legacy_api/0<br>/mboards/0/xbar/DDC_0/legacy_api/0/rate<br=
>/mboards/0/xbar/DDC_0/legacy_api/0/rate/value<br>/mboards/0/xbar/DDC_0/leg=
acy_api/0/rate/range<br>/mboards/0/xbar/DDC_0/legacy_api/0/freq<br>/mboards=
/0/xbar/DDC_0/legacy_api/0/freq/value<br>/mboards/0/xbar/DDC_0/legacy_api/0=
/freq/range<br>/mboards/0/xbar/DDC_0/legacy_api/1<br>/mboards/0/xbar/DDC_0/=
legacy_api/1/rate<br>/mboards/0/xbar/DDC_0/legacy_api/1/rate/value<br>/mboa=
rds/0/xbar/DDC_0/legacy_api/1/rate/range<br>/mboards/0/xbar/DDC_0/legacy_ap=
i/1/freq<br>/mboards/0/xbar/DDC_0/legacy_api/1/freq/value<br>/mboards/0/xba=
r/DDC_0/legacy_api/1/freq/range<br>/mboards/0/xbar/FFT_0<br>/mboards/0/xbar=
/FFT_0/noc_id<br>/mboards/0/xbar/FFT_0/input_buffer_size<br>/mboards/0/xbar=
/FFT_0/input_buffer_size/0<br>/mboards/0/xbar/FFT_0/mtu<br>/mboards/0/xbar/=
FFT_0/mtu/0<br>/mboards/0/xbar/FFT_0/registers<br>/mboards/0/xbar/FFT_0/reg=
isters/sr<br>/mboards/0/xbar/FFT_0/registers/sr/FFT_RESET<br>/mboards/0/xba=
r/FFT_0/registers/sr/FFT_SIZE_LOG2<br>/mboards/0/xbar/FFT_0/registers/sr/MA=
GNITUDE_OUT<br>/mboards/0/xbar/FFT_0/registers/sr/FFT_DIRECTION<br>/mboards=
/0/xbar/FFT_0/registers/sr/FFT_SCALING<br>/mboards/0/xbar/FFT_0/registers/s=
r/FFT_SHIFT_CONFIG<br>/mboards/0/xbar/FFT_0/registers/rb<br>/mboards/0/xbar=
/FFT_0/registers/rb/RB_FFT_RESET<br>/mboards/0/xbar/FFT_0/registers/rb/RB_M=
AGNITUDE_OUT<br>/mboards/0/xbar/FFT_0/registers/rb/RB_FFT_SIZE_LOG2<br>/mbo=
ards/0/xbar/FFT_0/registers/rb/RB_FFT_DIRECTION<br>/mboards/0/xbar/FFT_0/re=
gisters/rb/RB_FFT_SCALING<br>/mboards/0/xbar/FFT_0/registers/rb/RB_FFT_SHIF=
T_CONFIG<br>/mboards/0/xbar/FFT_0/ports<br>/mboards/0/xbar/FFT_0/ports/in<b=
r>/mboards/0/xbar/FFT_0/ports/in/0<br>/mboards/0/xbar/FFT_0/ports/out<br>/m=
boards/0/xbar/FFT_0/ports/out/0<br>/mboards/0/xbar/FFT_0/args<br>/mboards/0=
/xbar/FFT_0/args/0<br>/mboards/0/xbar/FFT_0/args/0/spp<br>/mboards/0/xbar/F=
FT_0/args/0/spp/type<br>/mboards/0/xbar/FFT_0/args/0/spp/value<br>/mboards/=
0/xbar/FFT_0/args/0/shift<br>/mboards/0/xbar/FFT_0/args/0/shift/type<br>/mb=
oards/0/xbar/FFT_0/args/0/shift/value<br>/mboards/0/xbar/FFT_0/args/0/direc=
tion<br>/mboards/0/xbar/FFT_0/args/0/direction/type<br>/mboards/0/xbar/FFT_=
0/args/0/direction/value<br>/mboards/0/xbar/FFT_0/args/0/scaling<br>/mboard=
s/0/xbar/FFT_0/args/0/scaling/type<br>/mboards/0/xbar/FFT_0/args/0/scaling/=
value<br>/mboards/0/xbar/FFT_0/args/0/otype<br>/mboards/0/xbar/FFT_0/args/0=
/otype/type<br>/mboards/0/xbar/FFT_0/args/0/otype/value<br>/mboards/0/xbar/=
FFT_0/args/0/reset<br>/mboards/0/xbar/FFT_0/args/0/reset/type<br>/mboards/0=
/xbar/FFT_0/args/0/reset/value<br>/mboards/0/xbar/FFT_0/args/0/magnitude_ou=
t<br>/mboards/0/xbar/FFT_0/args/0/magnitude_out/type<br>/mboards/0/xbar/FFT=
_0/args/0/magnitude_out/value<br>/mboards/0/time<br>/mboards/0/time/now<br>=
/mboards/0/time/pps<br>/mboards/0/time/cmd<br>/mboards/0/time_source<br>/mb=
oards/0/time_source/value<br>/mboards/0/time_source/options<br>/mboards/0/r=
x_codecs<br>/mboards/0/rx_codecs/A<br>/mboards/0/rx_codecs/A/name<br>/mboar=
ds/0/rx_codecs/A/gains<br>/mboards/0/tx_codecs<br>/mboards/0/tx_codecs/A<br=
>/mboards/0/tx_codecs/A/name<br>/mboards/0/tx_codecs/A/gains<br>/mboards/0/=
gpio<br>/mboards/0/gpio/INT0<br>/mboards/0/gpio/INT0/SRC<br>/mboards/0/gpio=
/INT0/CTRL<br>/mboards/0/gpio/INT0/DDR<br>/mboards/0/gpio/INT0/OUT<br>/mboa=
rds/0/gpio/INT0/ATR_0X<br>/mboards/0/gpio/INT0/ATR_RX<br>/mboards/0/gpio/IN=
T0/ATR_TX<br>/mboards/0/gpio/INT0/ATR_XX<br>/mboards/0/gpio/INT0/READBACK<b=
r>/mboards/0/rx_dsps<br>/mboards/0/rx_dsps/0<br>/mboards/0/rx_dsps/0/stream=
_cmd<br>/mboards/0/rx_dsps/0/freq<br>/mboards/0/rx_dsps/0/freq/value<br>/mb=
oards/0/rx_dsps/0/freq/range<br>/mboards/0/rx_dsps/0/rate<br>/mboards/0/rx_=
dsps/0/rate/value<br>/mboards/0/rx_dsps/1<br>/mboards/0/rx_dsps/1/stream_cm=
d<br>/mboards/0/rx_dsps/1/freq<br>/mboards/0/rx_dsps/1/freq/value<br>/mboar=
ds/0/rx_dsps/1/freq/range<br>/mboards/0/rx_dsps/1/rate<br>/mboards/0/rx_dsp=
s/1/rate/value<br>/mboards/0/tx_dsps<br>/mboards/0/tx_dsps/0<br>/mboards/0/=
tx_dsps/0/freq<br>/mboards/0/tx_dsps/0/freq/value<br>/mboards/0/tx_dsps/0/f=
req/range<br>/mboards/0/tx_dsps/0/rate<br>/mboards/0/tx_dsps/0/rate/value<b=
r>/mboards/0/tx_dsps/1<br>/mboards/0/tx_dsps/1/freq<br>/mboards/0/tx_dsps/1=
/freq/value<br>/mboards/0/tx_dsps/1/freq/range<br>/mboards/0/tx_dsps/1/rate=
<br>/mboards/0/tx_dsps/1/rate/value<br>/mboards/0/rx_subdev_spec<br>/mboard=
s/0/tx_subdev_spec<br>[INFO] [E300] Loading FPGA image: /home/root/newinsta=
ll/usr/share/uhd/images/usrp_e3xx_fpga_idle_sg3.bit...<br>[INFO] [E300] FPG=
A image loaded</div><div><br></div><div>The failure output I got from runni=
ng the python script shows that it can&#39;t find &quot;/mboards/0/xbar/gai=
n_0/args/0/gain/value&quot;
 and when I look at the tree, there is no value instantiated by the=20
probe. It only looks like the furthest that the probe goes down in the=20
mboards is &quot;/mboards/0/xbar/gain_0/args/0&quot;. I am assuming its=20
something in the arguments file not getting loaded, but everything=20
appears ok to me on glance in that XML file. <br></div><div><br></div><div>=
Regards,</div><div>Jon</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, Nov 21, 2019 at 4:49 PM EJ Kreinar &l=
t;<a href=3D"mailto:ejkreinar@gmail.com" rel=3D"noreferrer noreferrer noref=
errer" target=3D"_blank">ejkreinar@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Okay, great..=
.<div dir=3D"auto"><br></div><div dir=3D"auto">You might want to try increa=
sing the log level. Export UHD_LOG_CONSOLE_LEVEL=3Dtrace or debug and try t=
o make sure the correct xml file is getting applied to the block correctly.=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">There&#39;s also someth=
ing like a &quot;--tree&quot; parameter in the uhd_usrp_probe so try runnin=
g the probe with the tree option to print out the device tree and look for =
the arguments assigned to your new block.</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">Let&#39;s see if any of that helps figure out what&#39;s =
going on...</div><div dir=3D"auto">EJ</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 21, 2019, 4:01 PM Jo=
nathan Lockhart &lt;<a href=3D"mailto:jlockhartrt@gmail.com" rel=3D"norefer=
rer noreferrer noreferrer noreferrer" target=3D"_blank">jlockhartrt@gmail.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr"><div>Also, when I compiled from the OOT directory for AR=
M, I used this command, which I pieced together from the RFNoC build guide,=
 and the release-4 guide for cross-compiling gr-ettus. <br></div><div><br><=
/div><div>cmake -DCMAKE_TOOLCHAIN_FILE=3D~/rfnoc/src/gnuradio/cmake/Toolcha=
ins/oe-sdk_cross.cmake -DCMAKE_INSTALL_PREFIX=3D/usr -DUHD_FPGA_DIR=3D&quot=
;/home/jon/rfnoc/src/uhd/fpga-src/&quot; ../</div><div><br></div><div>Regar=
ds,</div><div>Jon<br></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Nov 21, 2019 at 3:48 PM Jonathan Lockhar=
t &lt;<a href=3D"mailto:jlockhartrt@gmail.com" rel=3D"noreferrer noreferrer=
 noreferrer noreferrer noreferrer" target=3D"_blank">jlockhartrt@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr"><div>Greetings EJ,</div><div><br></div><div>So, from the tu=
torial, they have you edit the gain.xml file, and this is what I have for i=
t. <br></div><div><br></div><div>&lt;?xml version=3D&quot;1.0&quot;?&gt;<br=
>&lt;!--Default XML file--&gt;<br>&lt;nocblock&gt;<br>=C2=A0 &lt;name&gt;ga=
in&lt;/name&gt;<br>=C2=A0 &lt;blockname&gt;gain&lt;/blockname&gt;<br>=C2=A0=
 &lt;ids&gt;<br>=C2=A0 =C2=A0 &lt;id revision=3D&quot;0&quot;&gt;B7DD64941A=
952AAC&lt;/id&gt;<br>=C2=A0 &lt;/ids&gt;<br>=C2=A0 &lt;!-- Registers --&gt;=
<br>=C2=A0 &lt;registers&gt;<br>=C2=A0 =C2=A0 &lt;setreg&gt;<br>=C2=A0 =C2=
=A0 =C2=A0 &lt;name&gt;Gain&lt;/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;addres=
s&gt;128&lt;/address&gt;<br>=C2=A0 =C2=A0 &lt;/setreg&gt;<br>=C2=A0 &lt;/re=
gisters&gt;<br>=C2=A0 &lt;!-- Args --&gt;<br>=C2=A0 &lt;args&gt;<br>=C2=A0 =
=C2=A0 &lt;args&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;name&gt;gain&lt;/name&gt;<b=
r>=C2=A0 =C2=A0 =C2=A0 &lt;type&gt;double&lt;/type&gt;<br>=C2=A0 =C2=A0 =C2=
=A0 &lt;value&gt;1.0&lt;/value&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;check&gt;GE(=
$gain, 0.0) AND LE($gain, 32767.0)&lt;/check&gt;<br>=C2=A0 =C2=A0 =C2=A0 &l=
t;check_message&gt;Invalid Gain!&lt;/check_message&gt;<br>=C2=A0 =C2=A0 =C2=
=A0 &lt;action&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 SR_WRITE(&quot;GAIN&quot;=
, IROUND($gain))<br>=C2=A0 =C2=A0 =C2=A0 &lt;/action&gt;<br>=C2=A0 =C2=A0 &=
lt;/args&gt;<br>=C2=A0 &lt;/args&gt;<br>=C2=A0 &lt;!--One input, one output=
. If this is used, better have all the info the C++ file.--&gt;<br>=C2=A0 &=
lt;ports&gt;<br>=C2=A0 =C2=A0 &lt;sink&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;name=
&gt;in0&lt;/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;type&gt;sc16&lt;/name&gt;<=
br>=C2=A0 =C2=A0 &lt;/sink&gt;<br>=C2=A0 =C2=A0 &lt;source&gt;<br>=C2=A0 =
=C2=A0 =C2=A0 &lt;name&gt;out0&lt;/name&gt;<br>=C2=A0 =C2=A0 =C2=A0 &lt;typ=
e&gt;sc16&lt;/name&gt;<br>=C2=A0 =C2=A0 &lt;/source&gt;<br>=C2=A0 &lt;/port=
s&gt;<br>&lt;/nocblock&gt;</div><div><br></div><div>There is an args value =
and it is declared as gain. <br></div><div><br></div><div>So from there, I =
followed your second suggestion and tried to find where it was installed wh=
en I did the cross compile. It was not placed in the &quot;GRC_BLOCKS_PATH&=
quot; of &quot;/share/gnuradio/grc/blocks&quot; like the default RFNoC bloc=
ks. It was instead placed in &quot;/share/uhd/rfnoc/bocks&quot; so I added =
that to the setup.env file, included below. <br></div><div><br></div><div>L=
OCALPREFIX=3D~/newinstall/usr<br>export PATH=3D$LOCALPREFIX/bin:$PATH<br>ex=
port LD_LOAD_LIBRARY=3D$LOCALPREFIX/lib:$LD_LOAD_LIBRARY<br>export LD_LIBRA=
RY_PATH=3D$LOCALPREFIX/lib:$LD_LIBRARY_PATH<br>export PYTHONPATH=3D$LOCALPR=
EFIX/lib/python2.7/site-packages:$PYTHONPATH<br>export PKG_CONFIG_PATH=3D$L=
OCALPREFIX/lib/pkgconfig:$PKG_CONFIG_PATH<br>export GRC_BLOCKS_PATH=3D$LOCA=
LPREFIX/share/gnuradio/grc/blocks:$GRC_BLOCKS_PATH<br>export UHD_RFNOC_DIR=
=3D$LOCALPREFIX/share/uhd/rfnoc/<br>export UHD_IMAGES_DIR=3D$LOCALPREFIX/sh=
are/uhd/images<br>export GRC_BLOCKS_PATH=3D$LOCALPREFIX/share/uhd/rfnoc/blo=
cks:$GRC_BLOCKS_PATH</div><div><br></div><div>Unfortunately, after re-sourc=
ing the setup.env, I still get the same message. <br></div><div><br></div><=
div>=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;, line 223, in &lt;module&g=
t;<br>=C2=A0 =C2=A0 main()<br>=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;,=
 line 212, in main<br>=C2=A0 =C2=A0 tb =3D top_block_cls(fpga_path=3Doption=
s.fpga_path, rx_gain=3Doptions.rx_gain, rx_digital_gain=3Doptions.rx_digita=
l_gain, rx_freq=3Doptions.rx_freq, host_ip_addr=3Doptions.host_ip_addr)<br>=
=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;, line 117, in __init__<br>=C2=
=A0 =C2=A0 self.tutorial_gain_0.set_arg(&quot;gain&quot;, rx_digital_gain)<=
br>=C2=A0 File &quot;/home/root/newinstall/usr/lib/python2.7/site-packages/=
tutorial/tutorial_swig.py&quot;, line 315, in set_arg<br>=C2=A0 =C2=A0 retu=
rn _tutorial_swig.gain_sptr_set_arg(self, *args)<br>RuntimeError: LookupErr=
or: Path not found in tree: /mboards/0/xbar/gain_0/args/0/gain/value</div><=
div><br></div><div>I looked at some of your examples (which have been very =
helpful to get me this far) from what I believe is your github someone link=
ed me. Everything appears to match what it should, for what gain is trying =
to accomplish. <br></div><div><br></div><div>Regards,</div><div>Jon<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Thu, Nov 21, 2019 at 3:27 PM EJ Kreinar &lt;<a href=3D"mailto:ejkreina=
r@gmail.com" rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer"=
 target=3D"_blank">ejkreinar@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hi Jon,<div dir=3D"=
auto"><br></div><div dir=3D"auto">The rfnoc &quot;nocscript&quot; xml defin=
ition can create arguments and attach to the device tree like you are tryin=
g to set there (it&#39;s not compiled directly, but rather created dynamica=
lly from the xml definition)</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Recommended debugging...</div><div dir=3D"auto">1. Check your OOT gain=
 block xml (in rfnoc/blocks) and make sure it has a &quot;gain&quot; field =
in the &quot;args&quot; list. You&#39;ll also want to make sure it writes y=
our desired register, but I don&#39;t think you&#39;re even getting that fa=
r</div><div dir=3D"auto">2. Make sure the block xml is installed on the e31=
0 embedded prefix and is found at run time during uhd_usrp_probe and when r=
unning your application. If it&#39;s not in the right place or not attachin=
g to your block then it won&#39;t create the gain argument</div><div dir=3D=
"auto"><br></div><div dir=3D"auto">I&#39;m guessing it&#39;s one of those t=
wo possibilities...=C2=A0</div><div dir=3D"auto">EJ</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 21, 20=
19, 3:19 PM Jonathan Lockhart via USRP-users &lt;<a href=3D"mailto:usrp-use=
rs@lists.ettus.com" rel=3D"noreferrer noreferrer noreferrer noreferrer nore=
ferrer noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Greetings,</di=
v><div><br></div><div>I was able to get the ARM cross compile working. I re=
moved the build directory and re-sourced the dev environment and then the c=
ross-compile used the -mfloar=3Dhard flag. Not sure what caused the issue e=
arlier and why it wasn&#39;t picking it up. <br></div><div><br></div><div>N=
ow I have a different issue. So I have completed this guide: <a href=3D"htt=
ps://kb.ettus.com/Getting_Started_with_RFNoC_Development" rel=3D"noreferrer=
 noreferrer noreferrer noreferrer noreferrer noreferrer noreferrer" target=
=3D"_blank">https://kb.ettus.com/Getting_Started_with_RFNoC_Development</a>=
</div><div><br></div><div>I modified the GNURadio just a bit so that the ou=
tput from gain was placed on a ZMQ push, and the graphics were on the host =
to graph the signal (seen in the screenshots below).</div><div><br></div><d=
iv><img src=3D"https://mail.google.com/mail/?ui=3D2&amp;ik=3D1ae818862e&amp=
;attid=3D0.1&amp;th=3D16e8fa0d29d41a0b&amp;view=3Dfimg&amp;rm=3D16e8fa0d29d=
41a0b&amp;sz=3Dw1600-h1000&amp;attbid=3DANGjdJ9y7gFvlLamcYxSJn6AlQPaOWxC-yK=
bQfs66eomTeFYM6q3_niAOKNUXc1Zg3SMXvqL5kKB2WW0iVIUpeHmo3J5jnu8i5PrKbSufhNtuN=
cli1NuCSF6ANVjs9A&amp;disp=3Demb&amp;realattid=3Dii_k395j53q0&amp;zw" alt=
=3D"Screenshot from 2019-11-21 15-06-33.jpg" width=3D"566" height=3D"323"><=
/div><div><br></div><div><div><div><img src=3D"https://mail.google.com/mail=
/?ui=3D2&amp;ik=3D1ae818862e&amp;attid=3D0.2&amp;th=3D16e8fa0d29d41a0b&amp;=
view=3Dfimg&amp;rm=3D16e8fa0d29d41a0b&amp;sz=3Dw1600-h1000&amp;attbid=3DANG=
jdJ-pgUA2IxgobGph9ydEXrRSxBiZ2abKuAIUC6-7E30-eRFqzoPp7Si4HBspS4AqGUMX1xI3Fn=
JFhwEqKs4fyPQ6s4_qFai45x5QazbWRR2aPlrFaKrc6EfeGhw&amp;disp=3Demb&amp;realat=
tid=3Dii_k395j8qd1&amp;zw" alt=3D"Screenshot from 2019-11-21 15-010-44.jpg"=
 width=3D"566" height=3D"335"><br></div></div><div><br></div><div>However, =
when I run the top file for the USRP, I am running into this error. <br></d=
iv><div><br></div><div>Traceback (most recent call last):<br>=C2=A0 File &q=
uot;rfnoc_myGain_usrp.py&quot;, line 223, in &lt;module&gt;<br>=C2=A0 =C2=
=A0 main()<br>=C2=A0 File &quot;rfnoc_myGain_usrp.py&quot;, line 212, in ma=
in<br>=C2=A0 =C2=A0 tb =3D top_block_cls(fpga_path=3Doptions.fpga_path, rx_=
gain=3Doptions.rx_gain, rx_digital_gain=3Doptions.rx_digital_gain, rx_freq=
=3Doptions.rx_freq, host_ip_addr=3Doptions.host_ip_addr)<br>=C2=A0 File &qu=
ot;rfnoc_myGain_usrp.py&quot;, line 117, in __init__<br>=C2=A0 =C2=A0 self.=
tutorial_gain_0.set_arg(&quot;gain&quot;, rx_digital_gain)<br>=C2=A0 File &=
quot;/home/root/newinstall/usr/lib/python2.7/site-packages/tutorial/tutoria=
l_swig.py&quot;, line 315, in set_arg<br>=C2=A0 =C2=A0 return _tutorial_swi=
g.gain_sptr_set_arg(self, *args)<br>RuntimeError: LookupError: Path not fou=
nd in tree: /mboards/0/xbar/gain_0/args/0/gain/value</div><div><br></div><d=
iv>No where else in building GNURadio scripts and .bit files does this &quo=
t;/mboards&quot; arise, and I have looked through my verilog file for gain =
(gain.v) and it is correct per the instructions in the linked guide, and I =
built the python and gnuradio hook exactly as the instructions stated to. <=
br></div><div><br></div><div>Anyone have an troubleshooting ideas b/c I am =
currently at a loss. It did past the test bench they have you build with no=
 issues. <br></div><div><br></div><div>Regards,</div><div></div><div></div>=
<div>Jon</div><div><br></div><div><br></div><div><br></div></div></div></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Nov 20, 2019 at 3:21 PM Jonathan Lockhart &lt;<a href=3D"mailto:j=
lockhartrt@gmail.com" rel=3D"noreferrer noreferrer noreferrer noreferrer no=
referrer noreferrer noreferrer" target=3D"_blank">jlockhartrt@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div>Greetings,</div><div><br></div><div>I am=
 having some issues completing the RFNOC build tutorial on the Ettus E312. =
The reference documentation is using an X3xx series radio, and from the fin=
al python script it appears to be running the GNR script natively on the ho=
st. I built the exact script from the KB but when running on the radio it f=
ails stating it can&#39;t &quot;import tutorial.&quot; I realized all the f=
iles that were installed were placed on the host but not cross compiled for=
 the E3xx using the SDK and ARM cross compile tool. I tried to complete thi=
s task, but unfortunately the compilation dies here. </div><div><br></div><=
div>/home/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/incl=
ude/gnu/stubs.h:7:11: fatal error: gnu/stubs-soft.h: No such file or direct=
ory<br>=C2=A0# include &lt;gnu/stubs-soft.h&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0^~~~~~~~~~~~~~~~~~<br>compilation terminated.</div><div><b=
r></div><div>Now I did find the stubs-soft.h file in the libc6-dev-armel-cr=
oss in the apt repo. I installed it and tried to cp the file into the /home=
/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi/usr/include/gnu/ =
location but it still doesn&#39;t like that. I verified that on my echo $CC=
 that the -mfloat is set to hard as shown here.</div><div><br></div><div>jo=
n@jon-OptiPlex-9020:~/rfnoc/src/rfnoc-tutorial$ echo $CC<br>arm-oe-linux-gn=
ueabi-gcc -march=3Darmv7-a -mfloat-abi=3Dhard -mfpu=3Dneon --sysroot=3D/hom=
e/jon/rfnoc/oe/sysroots/armv7ahf-vfp-neon-oe-linux-gnueabi</div><div><br></=
div><div>So I am not sure why the gain module in the tutorial is looking fo=
r the soft file. <br></div><div><br></div><div>If anyone has experience in =
porting their OOT modules over to the E-series of radios I would appreciate=
 the help. <br></div><div><br></div><div>Regards,</div><div>Jon<br></div></=
div></div>
</blockquote></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" rel=3D"noreferrer noreferrer =
noreferrer noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">U=
SRP-users@lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer noreferrer noreferrer noreferrer noreferrer noreferre=
r noreferrer noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/l=
istinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000b1ba7e0597f16331--


--===============1381949141151588033==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1381949141151588033==--


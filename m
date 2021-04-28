Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0758C36DF61
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 21:11:38 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 492D1384569
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 15:11:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=softwareradiosystems-com.20150623.gappssmtp.com header.i=@softwareradiosystems-com.20150623.gappssmtp.com header.b="rQDLoJUe";
	dkim-atps=neutral
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 174BF3841C7
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 15:10:40 -0400 (EDT)
Received: by mail-wr1-f49.google.com with SMTP id a4so64258699wrr.2
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 12:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=softwareradiosystems-com.20150623.gappssmtp.com; s=20150623;
        h=to:from:subject:message-id:date:user-agent:mime-version
         :content-language:content-transfer-encoding;
        bh=5t1VjW3wlB9q/cUnbZ4LfSgXJ+NWBZba37CLkx7r26I=;
        b=rQDLoJUejI9jDF2Xr0iqPFlnUZXer6JlIaf6N2ikf3XVfZnFp+Wh8uvM0Zpr2Q6yER
         KJjFbbmUf5uT2GGRw3LdFm7nxMCRpyMIj23sJsdMYSToO3ok4I4leCRnbkfTDLqV8zAd
         0vIMDwHfVnfypAf1DDY6IeVFGPlI9UbVoi5d/ZhntVTFTDRaisMwjIqohxVrAF6Ax1gF
         x3O4UXSH2BNY/ayAOOLU0xmHLerriJNoqzuB85WSF0E+ELxH4IWZHOKYDqcv2J+Azb6G
         SrX+BYnmIt+gdxnBH8j9SPkPlsWZtvvUykOBqF3kR/hfbmbf4udBpnH9h+A9mUD0TEbl
         Qrzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:from:subject:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=5t1VjW3wlB9q/cUnbZ4LfSgXJ+NWBZba37CLkx7r26I=;
        b=FRI7ICSXFws+VD8w1dGQH3d7kbMXAmMMH9MaR9gZ+2Q7PELVXelGVNcHLidynA+i5t
         cW3pS/WJfAEqkHU9z/w70r//CYQZR8omd25b7uL7IIFmW4mOLxZJms9lopoNowdRcXAJ
         HtHcs2GreyAcCRkVkFqHWYNMpSOhaNU/ymjVyEWFnAgis5BXOu1eBhCads623QLGdyCF
         VX8Q5TEUhzYNKOLbdnB7aRorqwEVc0Gm0KSBLqOS6O3pRHXJyZu4iPGwQFze4ZTF4Gje
         ew6uVuaU65i4v0JLzzcP3bpP7DhtDJ8PTk6rpjwZXA+mTeZUyKSiifzFWKrQ9zMitopg
         l15w==
X-Gm-Message-State: AOAM531dV93My59YgKWuoVGdSdov7Z6DHg20g8QUm4fVwtrGSYd/9Gm9
	MVY2Z6BcnKKjERenh2k3mFAThq13EDokaA==
X-Google-Smtp-Source: ABdhPJzeTIurFhrJv63pxu/TVI10HQLuWPM7YVXbYRwCGKByLpBlBsmBqM36kgO2ck4aDsLk6MUoVw==
X-Received: by 2002:adf:fb91:: with SMTP id a17mr39068855wrr.118.1619637039699;
        Wed, 28 Apr 2021 12:10:39 -0700 (PDT)
Received: from [10.11.14.134] (80.224.76.224.static.user.ono.com. [80.224.76.224])
        by smtp.gmail.com with ESMTPSA id x8sm901976wru.70.2021.04.28.12.10.39
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 12:10:39 -0700 (PDT)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: Andre Puschmann <andre.puschmann@softwareradiosystems.com>
Message-ID: <824188a4-2ee2-5bed-351c-59f044a0d7b9@softwareradiosystems.com>
Date: Wed, 28 Apr 2021 21:10:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
Content-Language: en-US
Message-ID-Hash: CGZIVIEUIWJ5FB3B23H52P7ZMIYUZ2VL
X-Message-ID-Hash: CGZIVIEUIWJ5FB3B23H52P7ZMIYUZ2VL
X-MailFrom: andre.puschmann@softwareradiosystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Sync source API question for N310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CGZIVIEUIWJ5FB3B23H52P7ZMIYUZ2VL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hey,

it's a pretty basic question I have but I really struggle to set the
clock and sync source via the UHD C API on a N310. This only happens
with UHD 4.

The same calls with a X310 work well. The same calls with UHD 3.15 LTS
work well for both N310 and X310.

Code is [1].

I've tried a few combination, including
 usrp->set_sync_source("internal", "internal") but all of them show the
below error:

$ ./lib/src/radio/test/benchmark_radio -a
"type=n3xx,sampling_rate=30.72e6,clock_source=internal,time_source=internal"
-s 30.72e6 -t 10 -g 5
Instantiating objects and allocating memory...
mlockall: Cannot allocate memory
Initialising instances...
Opening 1 channels in RF device= with
args=type=n3xx,sampling_rate=30.72e6,clock_source=internal,time_source=internal
[INFO] [UHD] linux; GNU C++ version 9.3.1 20200408 (Red Hat 9.3.1-2);
Boost_106900; UHD_4.0.0.0-50-ge520e3ff
Opening USRP channels=1, args:
type=n3xx,clock_source=internal,time_source=internal,master_clock_rate=122.88e6
[INFO] [LOGGING] Fastpath logging disabled at runtime.
[INFO] [UHD RF] RF UHD Generic instance constructed
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=10.12.1.187,type=n3xx,product=n310,serial=317F537,claimed=False,addr=192.168.20.2,clock_source=internal,time_source=internal,master_clock_rate=122.88e6
[INFO] [MPM.PeriphManager] init() called with device args
`clock_source=internal,master_clock_rate=122.88e6,mgmt_addr=10.12.1.187,product=n310,time_source=internal'.
Setting PPS source to internal and clock source to internal
set_clock_source
[ERROR] [RPC] unhashable type: 'dict'
/home/anpu/src/srsLTE/lib/src/phy/rf/rf_uhd_imp.cc.813: USRP reported
the following error: RuntimeError: Error during RPC call to
`set_clock_source'. Error message: unhashable type: 'dict'
/home/anpu/src/srsLTE/lib/src/phy/rf/rf_uhd_imp.cc.937: uhd_init failed,
freeing...
[ERROR] [MPM.RPCServer] Uncaught exception in method set_clock_source
:unhashable type: 'dict'
 Traceback (most recent call last):
  File "/usr/lib/python3.7/site-packages/usrp_mpm/rpc_server.py", line
186, in new_claimed_function
    return function(*args)
  File
"/usr/lib/python3.7/site-packages/usrp_mpm/periph_manager/n3xx.py", line
557, in set_clock_source
    if (clock_source, time_source) not in self.valid_sync_sources:
TypeError: unhashable type: 'dict'


I see it doesn't seem to find the sync source (internal) in the list of
available source, but I don't quite understand why.

Probe output is:

$ /opt/uhd-4.0/bin/uhd_usrp_probe
[INFO] [UHD] linux; GNU C++ version 9.3.1 20200408 (Red Hat 9.3.1-2);
Boost_106900; UHD_4.0.0.0-50-ge520e3ff
[INFO] [MPMD] Initializing 1 device(s) in parallel with args:
mgmt_addr=10.12.1.187,type=n3xx,product=n310,serial=317F537,claimed=False,addr=192.168.20.2
[INFO] [MPM.PeriphManager] init() called with device args
`mgmt_addr=10.12.1.187,product=n310,clock_source=internal,time_source=internal'.
  _____________________________________________________
 /
|       Device: N300-Series Device
|     _____________________________________________________
|    /
|   |       Mboard: ni-n3xx-317F537
|   |   dboard_0_pid: 336
|   |   dboard_0_serial: 3179927
|   |   dboard_1_pid: 336
|   |   dboard_1_serial: 317995C
|   |   eeprom_version: 2
|   |   fs_version: 20200914000806
|   |   mender_artifact: v4.0.0.0_n3xx
|   |   mpm_sw_version: 4.0.0.0-g90ce6062
|   |   pid: 16962
|   |   product: n310
|   |   rev: 6
|   |   rpc_connection: remote
|   |   serial: 317F537
|   |   type: n3xx
|   |   MPM Version: 3.0
|   |   FPGA Version: 8.0
|   |   FPGA git hash: be53058.clean
|   |
|   |   Time sources:  internal, external, gpsdo, sfp0
|   |   Clock sources: external, internal, gpsdo
|   |   Sensors: ref_locked, gps_locked, temp, fan, gps_gpgga, gps_sky,
gps_time, gps_tpv
|

Any ideas?

Thanks
Andre


[1]
https://github.com/srsLTE/srsLTE/blob/45486b6e2c622ab1d47906521662f087816d7d03/lib/src/phy/rf/rf_uhd_generic.h#L270
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

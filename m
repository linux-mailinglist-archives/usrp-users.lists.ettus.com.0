Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EECDE108F6D
	for <lists+usrp-users@lfdr.de>; Mon, 25 Nov 2019 14:59:51 +0100 (CET)
Received: from [::1] (port=41724 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iZEu4-0000A5-2r; Mon, 25 Nov 2019 08:59:48 -0500
Received: from mail-wr1-f47.google.com ([209.85.221.47]:46254)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92)
 (envelope-from <andre.puschmann@softwareradiosystems.com>)
 id 1iZEu0-00005G-Qf
 for usrp-users@lists.ettus.com; Mon, 25 Nov 2019 08:59:44 -0500
Received: by mail-wr1-f47.google.com with SMTP id z7so14723747wrl.13
 for <usrp-users@lists.ettus.com>; Mon, 25 Nov 2019 05:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=softwareradiosystems-com.20150623.gappssmtp.com; s=20150623;
 h=from:autocrypt:to:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=bgC2KfVXyMVxEWewvYkdclpKPVB1Rh3cot+CvNXFYts=;
 b=lpKOjvyWsHo9WZU8khI692S+E6v5AtjYpsvG1Qy9OFt3CJ6ZAT9P4Lx9DuD8WFoirX
 b2u0VnJ6OI5pHUd4kzlriktuzCeIaAG7WTDteBQfcuqFPGx6aKwYr/gF+RluOrVpmHh3
 IjM5sguh0Q4SkOqk0iCn20g3fyVNp2EzBPqJjLACgIow/4/EVXjFQFlsDLX5eix7bAD9
 oszJ2JoLZdCsFd21tp3Ys2vR8wuXfZg1hTIDCOWIoZSRvj7COfz/O+oEpwcdbN8perml
 UI2ZQ2KBvb6NLWRQBygJEIKkqV+VtK1swSPVty2lNZ/+PUaVm3Xps5u/VbHXEs9h5jJt
 YBZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:autocrypt:to:subject:message-id:date
 :user-agent:mime-version:content-language:content-transfer-encoding;
 bh=bgC2KfVXyMVxEWewvYkdclpKPVB1Rh3cot+CvNXFYts=;
 b=lBD+jmWBu4daDU28DDjg9iIkxzVS4asMkDAhcqEuVxzKQQyQfTxlGsWbrwgA1/89F6
 LZYb1OvoE76Lmnzc+C2JkLvBRsbCRahHM97KPndn+YfSpTj6gdrzK8Y2useu++zBfxzU
 o0ZchuNx19kscuwVNNvPW9IVLfljra3rgmxPPlucGlaaJ3qgwzjuSfvo0L5Kn5aV4tFo
 gVi3i2AtG8Wa34Oe53OU0WDuraqV7DZ1CBBeuHhZ/p8OkK2qHKNXQR9Qp0PENQmuxXYS
 pppJ7xXdl9eFHNgNfk9xeqhgz5laB8v2LrYMNI5TPWOWTRkX5XvvPnOok8gjYC2md83f
 1t1w==
X-Gm-Message-State: APjAAAWEfuXh2RJ4ubAVKmHoJo3Ly56s22Ddh4BtP13SmFMyz/JTRmBB
 t5xKOdZm3xpCNPblkZLPz1gEN3yWzpk=
X-Google-Smtp-Source: APXvYqzhnqzNpUhJ1Z1uNqxVOSA5J9+u2edCJxoDjTdHJNNPkoblweQ5NXR4qkevzV8lx5+L508NVA==
X-Received: by 2002:adf:aa92:: with SMTP id h18mr32919540wrc.150.1574690343288; 
 Mon, 25 Nov 2019 05:59:03 -0800 (PST)
Received: from [10.12.1.204] (81.red-79-144-58.dynamicip.rima-tde.net.
 [79.144.58.81])
 by smtp.gmail.com with ESMTPSA id g11sm8677338wmh.27.2019.11.25.05.59.02
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 Nov 2019 05:59:02 -0800 (PST)
Autocrypt: addr=andre.puschmann@softwareradiosystems.com;
 prefer-encrypt=mutual; keydata=
 mQINBFb8z4oBEACbd/ER/yfLXINqmO9Wswu+6piSfwYjkqY3jTmE9ELTNj3FzWh0x/7paRRN
 sfGeDN+3inYKjR6abjGcLlLvRy+jd4L+4f9/4Oc3Vb5vzgjqGYttH8VUrCFM0cv1bEQ2XS9Z
 mzTmxkNSw0bKK4RK+xcK/qTCAz+OY0VD/uLbIAXmW9UJm4NOjDdoB095QvO2cNcM3iQA/BGn
 s0pq76wC2V7mCF4/HY0WOWXwTVShFAAxppPXDutFI3S+vceiNNnBRbCen6ECaeI9T5WyEzqX
 DKF9PLDe1RTOxlM7HYMXckHYxjG5NGJHAvOz/WOX4WC5pzN1fe0cvBpsBXDv8VA89FfTkcnY
 1Cf5TUrmiRCtViEXQx/iVOPWA3FIkvXqEeDAcvMvYYyqvfR0zoG47m+PCbbceRkT4bf80AkD
 5LtKzFGRQ417HylklW1dYL0K7DN4vt2K+uxJD2E+9YqIC+LRIj7Lt/gYPbU0hPoyQ9LNRMBk
 R78OBWOIrJSFLY7QszG3HV9r9DVv4BELVy41onBuGqP6gDT/TYv5mUqKVgOv/OIXWBdj49Q3
 g9effVtMooVWfmQ7TL5LNowcBJusD5KUUyAYrsx+0fEQqd4C2hmXKdWWcWIORntOMyZc8Bbp
 AXDbn4denb6QPt7JtkGhdHmhMmKEsVAk43ZGr9Ay/EEEY4MEPwARAQABtDpBbmRyZSBQdXNj
 aG1hbm4gPGFuZHJlLnB1c2NobWFubkBzb2Z0d2FyZXJhZGlvc3lzdGVtcy5jb20+iQI/BBMB
 CAApBQJW/M+KAhsjBQkJZgGABwsJCAcDAgEGFQgCCQoLBBYCAwECHgECF4AACgkQ2HekmGxC
 qzH4Sw/+JONE1LdtPTWdVkJMAwwqvTsO/9fRFWNglFDlSIBT40a3CG6Co16wQdwwPekh9xfv
 aasI0KsxzvoU4FqbR7FA9QJddVrs2+VGGdjbvlBn5TX47GijqNSxc6cHaK/s47tbQeOvP5LJ
 flBOf7ix+lnWX5c4DovOgsQ//F/FPgCITS43BOUPiigNboSdOvohxk2W2Noy7KL2oUv9w5N1
 oO5+KdOwylf/XwjYEqh7Yk45V8uE87Aft+MaGq1kUwifJbTE+3TZzPGu2oXLGNM/cWBn5xQL
 4whq6FipS3jMLj6t6Qoyh2dXgjxlrve/fBx2QwVxNmUOHAIJM1/C19pldS4U6cbae9nbGmMI
 O/cljKIhabCnynBv3OGZtcAHif67c6UmeM8B1kDzWAgSVmKDxPfnoODS5iRgTidj5p7Vg7LL
 1H1ajC/zG/BCmgJdHdsiwm8k1o7vAc8VbSL33REYw96KkLBj+Bixf1sHi7kinT2Ruzy5Mxpy
 AbwbA3+t/5Cm3SN6h/cssAMbsH3OKoyMl3kxuVguiOHPWdLGxGE15Ul8oV3kz9YBOuRi03Rx
 2b2oCadhlbt+U/WbMiGnLWJ0hTQFiB8p5W44BiuivgWdyIxhX2wD+NcYnogxmgrMYpS/ScmT
 KrLcTgmTp+gmGNWoq9uPfweAMiAER6OujwcTedhiazi5Ag0EVvzPigEQALqVoRNBg8kCvgAX
 WpL8oCPuy8yYICQRQVjTmR/ndKlPEroRuk5FBZVh/0QRc+m5Rzf1/FEhdbePkB4ORWeimFV1
 8bo+/04Q5QUTzPVT3xkorNChHDDtNKq9w8PWIb2PgERWlz1C49MBWI5kzwT+Puiy1YFPPKXk
 YjcKOWW9rHp/4sUtoR9edYZBqX2eennWIumHu2RsTYPf+vMXTAONyZblNj3clJPxb37jG+0q
 zG2W7HCsxOD5wMD4+bL4D4OSC7a3UqkR2RHmFQiXf/BvOIg88s9xVdOifmXm83zt+jkMfY3S
 z4goEelE/CqFJCYRFRoDRu+lSw0kkPLtzckLFtHt1p9HX3XeW2N6vEKYGlRtMazr3niRQuHL
 +W80x0n3w9mwCStZSKNVbgJ+SAxpY6jQZmAJKk7QUkdkMSzga68dJseZqwPmw1Cwofj/lycB
 +uawj+arC9ANa2eQNBfFKwP/fq0e3JKxqADIyU/DmaVqjpChihV1o+LPI9i8Q1EXSi5YfEyh
 irnYSYnyp7lqIOyb000O7s823q+Qq9mVNx5g2rxnERQkAFMjav0E/6G7NIBrX/w5cvmLJAOI
 UYfIzWw18jErI3S3iaVS19fw8Hdt18yP8aeojonD+L4a6+dCNEdNWjdcQ+k/nUayy36mNsGV
 uh5PXVeybfqU7f/FNIfhABEBAAGJAiUEGAEIAA8FAlb8z4oCGwwFCQlmAYAACgkQ2HekmGxC
 qzHFgQ//RmeYPJzk+qHg7/tsxYT7pDjIWnSmFOx1KZZ0y6bBg8yKXNBFNRmIIqo0135VYpuN
 hv578X5eO00qBtf7hG+ghMbBHikJymWWBN7VOZczLwd3RbNBnaTXdHwRymxMGxPhddXZZRC8
 YXluAXXvUdGFWa+p+4Z9dA4prlDesrrcUoCva7haCQNQ+gQ7sr+CdGQUQfXS8R7sIY0tyew7
 KBV4ByAWvRZTGIkbXFLhEef58Y55SAx+gN66NfJ5YOCXqIa7fKzAP8arNMc/fDKEI6bwNhio
 0eKyYIksdR9hLJhSxEYII9Tvb5wO9dw7da4tuY0yObsXE7BOAHzdMHCiAZeJL/ZrC+wPvEYJ
 hDqQnyfKNq0O0DBH+plmds7/ybnQQRBEb2umyNvRgWrimOLyJL3/MfAOBhUMj+3Tu1yQedGg
 B3PFVVhzKLZivjy/nPTeYPW/+/wsUa50lPgKMZsLBUP+VtEv4b8y+AlV4L0yTmVHIesvsRCG
 bv5KQGMdH2WVG5D7N51QmoSnmMlZ88EaQUukGOaVFtWopV9jXqbct13VfPaeOQzFt/sB+5Dz
 iK8lZzAfS2kcDLjNqF1cvlu2Q50IIE0vTyNIwfC21mancxX3+eWkX/YFsJ/JHXWm6zQCCTW7
 p2JkUPsgjLqwWZfOPAqsc1MBaYHHm7wRBR+WrmgIJYM=
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <b1189850-f780-18b1-22b7-06a43bd2ebb3@softwareradiosystems.com>
Date: Mon, 25 Nov 2019 14:59:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
Content-Language: en-US
Subject: [USRP-users] Receiving UTC time synced samples with B210 and C API
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
From: Andre Puschmann via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Andre Puschmann <andre.puschmann@softwareradiosystems.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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

Hey,

I have a B210 with GPSDO that I'd like to receive samples at - lets say
full UTC time seconds - with. I am using the C API for that and have
gotten as far as that I can reproducibly receive samples from a also
GPS-synced transmitter. There are a few unknowns yet that I'd like to
ask help for. I've uploaded the function that contains most of the code
of interest (1). It's not a fully working example but I could create one
if needed. Here is the console output of an app that uses the function
cited below to set the USRP time to the current GPS time.

<console_output>
Current USRP time is 0 + 0.858
gps full_secs=0
gps frac_secs=1574688964.000000
gps after rounding full_secs=1574688964
[INFO] [MULTI_USRP]     1) catch time transition at pps edge
[INFO] [MULTI_USRP]     2) set times next pps (synchronously)
Calibration samples received start at 1574688966 + 0.202
Next desired recv at 1574688967 + 0.0000000000
Difference between first recv is 0 + 0.7982902607 or 12261738 samples
Realigning frame, reading 12261738 samples
Received 12261738 samples during alignmnet
Received samples start at 1574688967 + 0.0009999731
Ok - wrote 1536000 samples to /tmp/out2.dat
</console_output>

Anyway, the first issue I was having was when reading the GPS time from
the device using the C API. As one can see the full_secs is always zero.
But instead frac_secs contains the full seconds. Is this how it is
supposed to be or is "uhd_sensor_value_to_int" perhaps not the right way
to convert the GPS time?

A quick solution is to cast the frac_secs double to int to set the USRP
time.

The second issue is that using "uhd_usrp_set_time_next_pps" doesn't seem
to work, but "uhd_usrp_set_time_unknown_pps" does. If I am not mistaken
this shouldn't be the case, should it?

And last but not least, receiving the actual samples. Note that I am
using a continues streamer so the way I align samples to full UTC
seconds is to receive first, then, from the receive timestamp, calculate
the number of samples to the next full second and then drop that many
samples from the next calls. This seems to work fine but from the first
receive call after the calibration, the returned rx_time is roughly one
ms more than expected. I.e. "Received samples start at 1574688967 +
0.0009999731". Isn't the timestamp supposed to start from the first
sample in the buffer?

Thanks
Andre


(1) https://gist.github.com/andrepuschmann/fe6fa8917f7898855e401221015a2b6c

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

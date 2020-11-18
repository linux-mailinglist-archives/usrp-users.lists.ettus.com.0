Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFC92B87C5
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 23:32:51 +0100 (CET)
Received: from [::1] (port=59280 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfW0O-0008Qt-QT; Wed, 18 Nov 2020 17:32:48 -0500
Received: from mail-qv1-f53.google.com ([209.85.219.53]:45821)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <dw2zq@virginia.edu>) id 1kfW0L-0008Hq-07
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 17:32:45 -0500
Received: by mail-qv1-f53.google.com with SMTP id q7so1872555qvt.12
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 14:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=virginia-edu.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:date:user-agent:mime-version
 :content-transfer-encoding;
 bh=yc/AJ0tKcc2i93s1EB4YaMoEcLBZzSCfwiMKmBEAwpg=;
 b=Rqb/eLDvH6PwY8IqQ1E2m9xmiU+d3v/+PbwHlaVHCmKs9606kZ1tK/vDu81+CyDh22
 i2zOjfoBkUMcfZxlW5tcFi1CrxNCOwWuhgG3dfPvN/5u2/VRIzxB1vf7ryiuzcojxcms
 9ReITh1H5JmQJuOeZB5P8kINRHdSq8W/ZgiX+R94dxBAtRewGwjI2OI8bOk7BqUyMvQ3
 9O716zS7FrNwtoKDTYPLMsQkPwv/jlKlFWm9/Rir54ZwO/QF5+xAELcU6CibKlva8qJh
 am7h9UIwGqJ5vLv614kr/gC+DZON9Sw/ZpSRuBjzNNT03Qf2T7BJeQnzMj3NcIj48dhV
 Gyqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:user-agent
 :mime-version:content-transfer-encoding;
 bh=yc/AJ0tKcc2i93s1EB4YaMoEcLBZzSCfwiMKmBEAwpg=;
 b=IUsFPW2wh/YjYptpQ17OfL0IbcIcSEStjUV25BCFxOOKvvmsAzXWaHwTFVglBm1YMa
 qbmydgUbt/BT5XiZyX3l2G11GlrH9XD+LDTrQLhLzNlGrztEr+TrYh1uj3VKexdD20Ne
 JqACBRCqMtcbeRo6/xheBttIi+P23pvI3Vz60UStCQ6oC/29EXX1nT112/rbSZl6EuNo
 +T687f2i39xcZTIqiF6C26vxRUQ3NtTEFfFsZKfudwRX0pxpHOuL4AU3hxoi8Kh38EQ8
 NLGkOMmRMxQHnLwLHyWMUNUfALrpVR1rK90NvA33Vi7N0xvGso9wSXtTLUG5XfHmOMG3
 ExbA==
X-Gm-Message-State: AOAM532N6zIjc9wykM+Xwp+hyJ19zahk8ukshfsgSZrSx5unOvJnkt58
 zaNMHMD27sugvJLyufB7VYJJmDTLV8I3kw==
X-Google-Smtp-Source: ABdhPJwIaSGkYoJp8gVqYLAX1D+lJ/aTrtRmw0pWJZkIQnUHQJ9m/Oy1WRTDC5dJ2SfLpD0pKg92Ag==
X-Received: by 2002:a05:6214:247:: with SMTP id
 k7mr7237322qvt.32.1605738723957; 
 Wed, 18 Nov 2020 14:32:03 -0800 (PST)
Received: from [10.32.128.226] (c-73-40-68-102.hsd1.va.comcast.net.
 [73.40.68.102])
 by smtp.gmail.com with ESMTPSA id p127sm17155021qkc.37.2020.11.18.14.32.03
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Nov 2020 14:32:03 -0800 (PST)
Message-ID: <389b50bdd4933609c1d2edf5aea66d272802475d.camel@virginia.edu>
To: usrp-users <usrp-users@lists.ettus.com>
Date: Wed, 18 Nov 2020 17:32:06 -0500
User-Agent: Evolution 3.38.1 
MIME-Version: 1.0
Subject: [USRP-users] X310 UBX digital tune not occurring?
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
From: Dustin Widmann via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Dustin Widmann <dw2zq@virginia.edu>
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

Hi usrp-users,

I've noticed something strange with an experiment I've been doing. The
experiment is set up like a reflectometer. I'm using an X310 with a
UBX-160 for transmit and both channels of a TwinRX for receive. In
short, I put up a tone with the transmitter by applying a DC offset,
tune to a nearby frequency with the receiver (in this case, tuned 50KHz
away) and measure the tone. The problem is that the tone isn't being
observed at the expected frequency on the receiver.

The data with which I noticed it is in the table below, where I was
only using a 2^17 point FFT (763Hz resolution)

freq        target bin/freq     actual bin/freq     diff bin/freq       dsp freq    discrepancy
60MHz       65.536 (50e3)       64 (48,828)          1.536 (763)        1160         397
61MHz       65.536 (50e3)       66 (50,354)         -0.464 (-354)        -61         415
62MHz       65.536 (50e3)       67 (51,117)         -1.464 (-1,117)    -1282         165               
63MHz       65.536 (50e3)       69 (52,643)         -3.464 (-2,643)    -2503         140
64MHz       65.536 (50e3)       70 (53,405)         -4.464 (-3,406)    -3724         318
65MHz       65.536 (50e3)       72 (54,932)         -6.464 (-4,932)    -4945          13
66MHz       65.536 (50e3)       58 (44,250)          7.536 (5,750)      6044         294

The discrepancy looks like it could be explained by the radio's claimed
"dsp tune" not actually occuring. I ran the test over again with larger
FFTs (2^20 points) to see if the noted difference frequency would be
closer tot he dsp frequency...

freq        target bin/freq     actual bin/freq     diff bin/freq       dsp freq    discrepancy
60MHz       524.288 (50e3)      512 (48,828)         12.288 (1,172)      1160       12
61MHz       524.288 (50e3)      525 (50,068)         -0.712 (-68)         -61       -7
62MHz       524.288 (50e3)      538 (51,308)        -13.712 (-1,308)    -1282      -26
63MHz       524.288 (50e3)      551 (52,547)        -26.712 (-2,547)    -2503      -44
64MHz       524.288 (50e3)      563 (53,692)        -38.712 (-3,692)    -3724       32
65MHz       524.288 (50e3)      576 (54,932)        -51.712 (-4,932)    -4945       13
66MHz       524.288 (50e3)      461 (43,964)         63.288 (6,036)      6044       -8

... and it was indeed much closer. This suggests that the digital part
of the tune isn't occuring. Does anyone have any idea what might cause
this issue / is it a known problem / any alternate theories on what
might be happening?


Relevant infos:
USRP X310
* UBX-160 (1 TX channel)
* TwinRX  (2 RX channel, phase sync, lo sharing)
UHD 4.0

Dustin


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

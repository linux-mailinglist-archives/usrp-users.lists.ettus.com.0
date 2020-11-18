Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4A22B885E
	for <lists+usrp-users@lfdr.de>; Thu, 19 Nov 2020 00:28:11 +0100 (CET)
Received: from [::1] (port=59742 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfWrw-0002ry-N5; Wed, 18 Nov 2020 18:28:08 -0500
Received: from mail-qt1-f169.google.com ([209.85.160.169]:38210)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kfWrt-0002nN-CU
 for usrp-users@lists.ettus.com; Wed, 18 Nov 2020 18:28:05 -0500
Received: by mail-qt1-f169.google.com with SMTP id g17so3076960qts.5
 for <usrp-users@lists.ettus.com>; Wed, 18 Nov 2020 15:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=NNkJJGXxi43m6tmC4Jp1qqvBY9X1eUwojKpP8x02PKg=;
 b=nwQlk4wKkLzUHt27Dp8jOW/wfHWX9FlItLyEuP7lM7gt9u1RsIfjIX5rgPn0CGtoLu
 f1vf5b9IKNkAeZNBjqZNWBFJhk80ne5Uj4m5LYgSBor2PSYrQhnEKZvPktvGJ+grWVwe
 XP4dSHkg2llU1d9XDhR1RYH1ypBaSGecleEgN0qiMmPYxuJyUoQYyYsFuIrg4mjVawqa
 8QwIkGIGca0cy/fnWrIJqBDc44UY/clVqggpSGYf5LFrbdLdahRtwRiaW75GoHrH201j
 fEITyxpiVP6vtjiQHGKhh5EwGpCmok33gBeL8Uye4jNb7YOvDmnvuBhGxQASYauTxVg1
 NB1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=NNkJJGXxi43m6tmC4Jp1qqvBY9X1eUwojKpP8x02PKg=;
 b=XB1FI1lsonTraahQansNhiO/T9JQu+ecPwiVS8cRtos3v7w98oc9hu5ZA90goM0SHY
 RdbM4X73taydpUPy+h0Eunht2KvvcNuFi4nXHwg/lyDhAlyRDqSXmEud2GjmuRsVk5rF
 8pXoYeTp91kcYdV3Y0SnW/tDInbEGrAk4JZ+XndH45DMwiQ2Kuow2Z4zLYLxnQ1uE8di
 9n+9Lgt2Ba+zb8Ysub8X4qeJ12YFwZJ666T9RiLGsYuCs4olTrtVd775JzZGNn3yChjW
 c2lhyhEsOabjTtzNiE3OpgzqwnVHXZuIXDJPZvao+1MbVCeCgGcbsgYZINlvBrf96CDo
 V1oA==
X-Gm-Message-State: AOAM532mimiYJ6Rr3+NX03p402RictOs8nxbHSEUr/+6kZa4phyWzzCI
 0RD+zcAgsDWXr2So54xxy7aEPsuqP64=
X-Google-Smtp-Source: ABdhPJx1r6AalFfhT3NdFhE/lRoiC8ozpPIpl5weTNgA77RLqGG0bs3k+aaq/S4Iy2em65fuOSkE4g==
X-Received: by 2002:ac8:45c6:: with SMTP id e6mr7853071qto.163.1605742044431; 
 Wed, 18 Nov 2020 15:27:24 -0800 (PST)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.googlemail.com with ESMTPSA id y23sm8510549qkb.26.2020.11.18.15.27.23
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 18 Nov 2020 15:27:24 -0800 (PST)
Message-ID: <5FB5ADDB.4030608@gmail.com>
Date: Wed, 18 Nov 2020 18:27:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <389b50bdd4933609c1d2edf5aea66d272802475d.camel@virginia.edu>
In-Reply-To: <389b50bdd4933609c1d2edf5aea66d272802475d.camel@virginia.edu>
Subject: Re: [USRP-users] X310 UBX digital tune not occurring?
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

On 11/18/2020 05:32 PM, Dustin Widmann via USRP-users wrote:
> Hi usrp-users,
>
> I've noticed something strange with an experiment I've been doing. The
> experiment is set up like a reflectometer. I'm using an X310 with a
> UBX-160 for transmit and both channels of a TwinRX for receive. In
> short, I put up a tone with the transmitter by applying a DC offset,
> tune to a nearby frequency with the receiver (in this case, tuned 50KHz
> away) and measure the tone. The problem is that the tone isn't being
> observed at the expected frequency on the receiver.
>
> The data with which I noticed it is in the table below, where I was
> only using a 2^17 point FFT (763Hz resolution)
>
> freq        target bin/freq     actual bin/freq     diff bin/freq       dsp freq    discrepancy
> 60MHz       65.536 (50e3)       64 (48,828)          1.536 (763)        1160         397
> 61MHz       65.536 (50e3)       66 (50,354)         -0.464 (-354)        -61         415
> 62MHz       65.536 (50e3)       67 (51,117)         -1.464 (-1,117)    -1282         165
> 63MHz       65.536 (50e3)       69 (52,643)         -3.464 (-2,643)    -2503         140
> 64MHz       65.536 (50e3)       70 (53,405)         -4.464 (-3,406)    -3724         318
> 65MHz       65.536 (50e3)       72 (54,932)         -6.464 (-4,932)    -4945          13
> 66MHz       65.536 (50e3)       58 (44,250)          7.536 (5,750)      6044         294
>
> The discrepancy looks like it could be explained by the radio's claimed
> "dsp tune" not actually occuring. I ran the test over again with larger
> FFTs (2^20 points) to see if the noted difference frequency would be
> closer tot he dsp frequency...
>
> freq        target bin/freq     actual bin/freq     diff bin/freq       dsp freq    discrepancy
> 60MHz       524.288 (50e3)      512 (48,828)         12.288 (1,172)      1160       12
> 61MHz       524.288 (50e3)      525 (50,068)         -0.712 (-68)         -61       -7
> 62MHz       524.288 (50e3)      538 (51,308)        -13.712 (-1,308)    -1282      -26
> 63MHz       524.288 (50e3)      551 (52,547)        -26.712 (-2,547)    -2503      -44
> 64MHz       524.288 (50e3)      563 (53,692)        -38.712 (-3,692)    -3724       32
> 65MHz       524.288 (50e3)      576 (54,932)        -51.712 (-4,932)    -4945       13
> 66MHz       524.288 (50e3)      461 (43,964)         63.288 (6,036)      6044       -8
>
> ... and it was indeed much closer. This suggests that the digital part
> of the tune isn't occuring. Does anyone have any idea what might cause
> this issue / is it a known problem / any alternate theories on what
> might be happening?
>
>
> Relevant infos:
> USRP X310
> * UBX-160 (1 TX channel)
> * TwinRX  (2 RX channel, phase sync, lo sharing)
> UHD 4.0
>
> Dustin
>
Are you using an external clock, or the on-board clock?

If I'm interpreting your table correctly, the residual error is under 
1PPM in each case.  The absolute error of the system clock will be 
distributed over
   all the components involved, including the DAC, the ADCs, and the LO 
synthesizers in all the modules involved.  I'm not sure that they'll all 
perfectly
   cancel each other out, given that the TX and RX synthesizers are 
quite different.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

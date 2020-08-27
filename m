Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF48254083
	for <lists+usrp-users@lfdr.de>; Thu, 27 Aug 2020 10:17:47 +0200 (CEST)
Received: from [::1] (port=55810 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBD6N-0003iN-Ce; Thu, 27 Aug 2020 04:17:43 -0400
Received: from mail-wm1-f42.google.com ([209.85.128.42]:54072)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <246tnt@gmail.com>) id 1kBD6J-0003bb-IS
 for usrp-users@lists.ettus.com; Thu, 27 Aug 2020 04:17:39 -0400
Received: by mail-wm1-f42.google.com with SMTP id u18so4314373wmc.3
 for <usrp-users@lists.ettus.com>; Thu, 27 Aug 2020 01:17:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=/1VqM1teu4n4YysvOlXBleTKnjkKxswIepnMsFDDecc=;
 b=r67DGhR3jJkSTKQ0R3siyCdrZdeKDNDbnKkA6CWCxZBO2S+0oB45N7AtwrWXRTXJdC
 PGz8ol6S/nFMBBfrkNpRf0WeaUIbogdJBlT3GbQQZs7fRumWcTbHaTyaZv5DKktUZ9k0
 Xm/JDOARdbczqInQoq9IjSUwFh4KAZuQvH7Y0PwFvD281SOuaSru9kNds2Z1R6wUS+T0
 54xXJOX4QOs9eeZd2pkNEnzXbMLuucngRnl9Ak267SNtfd5duEQ8ohulIvVW9ITo9OkG
 5Lh2HpH1WfSyGnzqzT3Zf9o6wRU2KKqMmmWTzAgo1tOUqPESOEPyabTcyLNXlyF9/0Wr
 NGBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=/1VqM1teu4n4YysvOlXBleTKnjkKxswIepnMsFDDecc=;
 b=puFZcSguKgpKjsWOkLtakEzldWq0QGcTU85YwVG64Crz9kWQ87SiMk5Ri1SALw/0EL
 lWIT099lK58YNxw5sjVzqJRbc8uwF0FSqPlyy5XbYn5icEYHvhf9zQmBUK6nEvCxUkJr
 9A9GxLc9zi5hTe0nDdws+gqfqG0Q/6R3/Ssm13HzLVVHW9/Y785MR42VY1yA/DWt5HVM
 vI2YuUvLb7h7Gfm3NZ3aXfQQzs5Fv87fVABO4uV86D/Kil3JQS+M75RMn/Gi7nBr7Ahq
 99Hrss4P5kYK9BscoBLzX7/eO2XXQx/VsUp3YuUUFwFeXcE9P8if6YscC8B/oBS+3dSi
 4NWQ==
X-Gm-Message-State: AOAM530DahRAvpaCTCmUDzfRb2Aqks3RS2EiVRuDaK0pHlfzXeG/vzW5
 BKjANWXr/RwWu7xb6eDzyOZ24hfuA24xoYzMU8KwudcjE6JKhw==
X-Google-Smtp-Source: ABdhPJwDkTsBw5YK35BDxqGSI9A8XR6LygbIzg1BB95HLtxDwnqwMruO4x2yYNOtVTVvmnIgu08aP+N8seFCwmDIfQs=
X-Received: by 2002:a1c:7502:: with SMTP id o2mr10346612wmc.29.1598516217570; 
 Thu, 27 Aug 2020 01:16:57 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 27 Aug 2020 10:16:37 +0200
Message-ID: <CAHL+j08xqrt5H7K2xPGS5Exvi-nCO4ckiqJa9DJOD1RJuJ5bkg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] set_time_pps implementation mismatch between uhd &
 fpga (race condition)
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
From: Sylvain Munaut via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sylvain Munaut <246tnt@gmail.com>
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

Hi,

In UHD you find :

    void set_time_next_pps(const uhd::time_spec_t &time){
        const uint64_t ticks = time.to_ticks(_tick_rate);
        _iface->poke32(REG_TIME64_TICKS_LO, uint32_t(ticks >> 0));
        _iface->poke32(REG_TIME64_IMM, FLAG_TIME64_LATCH_NEXT_PPS);
        _iface->poke32(REG_TIME64_TICKS_HI, uint32_t(ticks >> 32));
//latches all 3
    }

with seemingly the write of the 'HI' part being the trigger point.

In the FPGA code (timekeeper.v) you have :

setting_reg #(.my_addr(SR_TIME_CTRL), .width(3)) sr_ctrl
(.clk(clk), .rst(reset), .strobe(set_stb), .addr(set_addr), .in(set_data),
.out({set_time_sync, set_time_pps, set_time_now}), .changed(cmd_trigger));

So the 'cmd_trigger' that synchronizes the action is on the 'CTRL'
(aka REG_TIME64_IMM) register and not on the hi part of the time.


TBH I'm not even sure how set_time_now works at all ... it has the
same issue and AFAICT it would always end up using the previous value
of the 'hi' register...

Am I missing something here ?

Cheers,

    Sylvain Munaut

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

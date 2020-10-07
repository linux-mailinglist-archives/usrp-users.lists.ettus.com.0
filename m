Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7F128574E
	for <lists+usrp-users@lfdr.de>; Wed,  7 Oct 2020 05:50:19 +0200 (CEST)
Received: from [::1] (port=59864 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQ0T3-00009W-96; Tue, 06 Oct 2020 23:50:17 -0400
Received: from mail-qk1-f181.google.com ([209.85.222.181]:33749)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kQ0Sz-0008TY-2E
 for usrp-users@lists.ettus.com; Tue, 06 Oct 2020 23:50:13 -0400
Received: by mail-qk1-f181.google.com with SMTP id y198so1128315qka.0
 for <usrp-users@lists.ettus.com>; Tue, 06 Oct 2020 20:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=p0iKUv6/gLq9b4A0i1gZh5a89eFhEcrxhrVj1QTFEFk=;
 b=UC6m6L4efV7nmEawtG4hu9PX0WOMLIsml4bFnmGunZvumZQ0JW6+ydMLV3lXSrUmSc
 B0FJRdOKObcPwC3DT5CdtyQuBTMu/OxkRRb0xJtRK8i7D5ymw/2RPWjL1fP66LiPhCSZ
 gP3HWsALPRBHYxw2XhP5L47RVjteH6ubQjonSMMe0yqvhLN/I11l+D+Wanr+TA96NN68
 mbMTocOvy7+uiKMNZ867e3S8+VHu3HmqR9nd0vg2xO8ndyUgZF+KKXWZqGfsfFg82BCY
 l351xW1TeR0+p1QsOTNGe7NqAwA6EJLxmz5Zxs+N42kxo/ZGr+U3jhfYFC9iTFj2b90I
 9e3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=p0iKUv6/gLq9b4A0i1gZh5a89eFhEcrxhrVj1QTFEFk=;
 b=f6YmGn4aZYF9o1Tshk63DmRe26VwGWKIBq63AkxJ1HdD3XNSAwDIBtPemEqACLUHt6
 RBOoryMLxhaxJscpYZ2JYiNqoBwPAOsuvIJ51g1OnB8pQC63eiDhd+4w4BWHrq1Vyk8Y
 sWbRBX4MlgU7iE9b0UGhToHUYaD+Nb0m9nP1eIW2RFT5u7EfcKo+toLAWZpp0qSEs5H9
 nI4OyNHfj8mAcAy0g4LbjkrzQt7NBnSizlC6j/yw+wgC/ir2dmnM0cFZgAKc39Ch7hZh
 CNR4A+4RZBX/kuytfoNz5bT0mqxUPVp/l466Ow0IZVyKqglK7bzf9denoKBiaL6+ToNS
 sLmg==
X-Gm-Message-State: AOAM5328/W8JAdpMOWr/UrLo1Mo1DucULJS63krbinGqJNjV+cEa1oqT
 dw2RkkA/fSUetE85+PM7InaasVDmko8xtg==
X-Google-Smtp-Source: ABdhPJyYUX8OUta6LBp/DPyRysFNbgueD3cpFvgS9VrYI1GlzS6TGKOKvxdTojtW/BZ0WhUxlRq5QA==
X-Received: by 2002:a37:c443:: with SMTP id h3mr1010995qkm.396.1602042572212; 
 Tue, 06 Oct 2020 20:49:32 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id d12sm507605qka.34.2020.10.06.20.49.31
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Oct 2020 20:49:31 -0700 (PDT)
Message-ID: <5F7D3ACA.1080406@gmail.com>
Date: Tue, 06 Oct 2020 23:49:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAL0m=NZHR7zZCGuYhO07r+KZEr6ZYQYvp41q+kYJo7fh1YLxpQ@mail.gmail.com>
In-Reply-To: <CAL0m=NZHR7zZCGuYhO07r+KZEr6ZYQYvp41q+kYJo7fh1YLxpQ@mail.gmail.com>
Subject: Re: [USRP-users] Question about N310 Internal synchronization
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

On 10/06/2020 10:29 PM, Zeng, Huacheng via USRP-users wrote:
> Hello:
>
> I am using N310 for 4x4 MIMO transmission. Are N310's 4 TX/RX channels 
> internally synchronized for MIMO applications? Does it need an 
> external device (e.g., OctoClock-G CDA-2990) to synchronize those 4 
> channels for MIMO applications?
>
> I am also exploring channel reciprocity using N310. I have successful 
> experience with SBX in the implementation of channel calibration. But 
> it seems WBX does not fit for this purpose because of some phase 
> ambiguity issue (if I remember correctly). Would the daughterboards in 
> N310 have the phase ambiguity issue?
>
> Many thanks in advance!
>
> Hua
>
The N310 has a pair of AD9371 RFFE chips.  Those chips have two channels 
each, and those channels are coherent with respect to each other.
   There will be an unknown phase offset due to the nature of 
(particularly Frac-N) synthesizers between the channels of the two halves.

Unless the N310 channels implement phase-resynch via timed commands (I 
don't think that they do), you'd need some external method for
   phase-aligning those channels.

Now because they're using a common reference clock, once the phase 
offset has been factored out they should be in perfect synchronization
   both in time and phase from that point forward.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

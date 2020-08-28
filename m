Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C204255EB5
	for <lists+usrp-users@lfdr.de>; Fri, 28 Aug 2020 18:22:08 +0200 (CEST)
Received: from [::1] (port=44432 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBh8g-0007GC-LO; Fri, 28 Aug 2020 12:22:06 -0400
Received: from mail-wm1-f52.google.com ([209.85.128.52]:34230)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <246tnt@gmail.com>) id 1kBh8c-00079Q-PN
 for usrp-users@lists.ettus.com; Fri, 28 Aug 2020 12:22:02 -0400
Received: by mail-wm1-f52.google.com with SMTP id c19so1134222wmd.1
 for <usrp-users@lists.ettus.com>; Fri, 28 Aug 2020 09:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S+09CLDVWvIqYv+AUP1op2QnRagnk4b6/E/kcMBcGcM=;
 b=gUCi7vzKc3dQp7eO1gU5wJXfJ1U7DWGySFXonwwT1teYv1Y/nexoW++4ug+/8ZJpPT
 sDYYtrXo8Lk5NqeCVQ48zewf2UYLkiuvp1Za5LwSN5ipG6wbGg/IE2rMQiHsUiQedXso
 sPykXXyiYN4/LDroYKn35Qc3DY+44T6zmZObbk8VRXCEsSA0CF9Hs4ZlbqXmnBE/HG6y
 OTUOkakjg8ZAzvf5f5gFopRooeKAphKafeQR+FDjJ8jUPLoW3GrQ/HoXYw2u7CP1bd58
 zRntoUW2BEcXMwnt7wciIyx2QKnnWl0rVsN+2Sl0ouhFuof1dxvEF2KNXTgm7HjK/zzr
 Dkqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S+09CLDVWvIqYv+AUP1op2QnRagnk4b6/E/kcMBcGcM=;
 b=nU4CWLcrmSJ+Oo2hcJjyOMSUc17WH0F6SLymtbYRspAl0yY9kUj6IVia+vWi59Hl7Z
 jNyoi6FKt4kH+rP+j9fTxbNmo8DUKvBO/2r+Rr1LLgrWn3KKMFFpYYUi706zwNHS2Okb
 /ZREX7w2RQTDSjjDz5tlMrRD2Yx9zGg9uY4opFCfEyvQJUKx01Afb8N1eKS3PZ8sCRx7
 pTxuhMBnaZnD/QTAZYF6VRxxZ+SyuifeFVP+V45pYNm6y0Uauo6KPUpXjKTRXnp6HcvA
 cWoTLTxfoDXP9HFxOMsaUe+6fjYw+4oS/Ao99W44VDpvlL4YrEcX40IUC36B5gb8G6q5
 TVWA==
X-Gm-Message-State: AOAM533IdybxTIqgb9L6QO8HbE5yZd50I3fzFU2DiQ8PANX/VxA8hZEO
 IcYKBNqMn9F/lr5A7jPCAk/iBz405dEo3sOtJwk=
X-Google-Smtp-Source: ABdhPJxGt/W+DRDjzSC8FPmUWyoUF3g+Vd9sUsoJvovcfovtqnhr0btWT4xPbxKextJdEsR8jpMA7rz/Uv4PpnSbnA0=
X-Received: by 2002:a7b:c3d2:: with SMTP id t18mr2226103wmj.45.1598631681657; 
 Fri, 28 Aug 2020 09:21:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAM4xKrrtSjhM1FFYGvuXrQFBop1d+H78JzQCx5OMh4iQ3rm3TQ@mail.gmail.com>
 <CAGNhwTMtPx8aygM-kUgcAyK_L2+nmLxtnJJDjpLXk5HpjK0uwQ@mail.gmail.com>
 <67e4d928-2f30-1faa-bb29-6e59916f6578@gmail.com> <5F492AC3.6070005@gmail.com>
In-Reply-To: <5F492AC3.6070005@gmail.com>
Date: Fri, 28 Aug 2020 18:21:07 +0200
Message-ID: <CAHL+j09qPSV6XAj-fvURxyR3KHwxjqc1y7rJmto-tjSZqTuqBw@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] [UHD] Announcing 4.0.0.0 Release Candidate 1
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

>
> num_recv_frames=128
>
> In the device arguments, or left it at the default?

I've always been curious why UHD doesn't automatically set those
parameters depending on the sample rate ... because AFAICT the
defaults universally sucks for high sample rate and changing them is
always the first thing to do to get things to work.

I understand at low sample rate you don't want useless buffering but
UHD knows the rate of data flow, so it could have defaults based on a
"time" measurement and then convert that time into buffer size /
buffer count so that the buffering is always about the same time-wise.

Cheers,

    Sylvain

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

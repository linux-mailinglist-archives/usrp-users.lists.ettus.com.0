Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6FA254156
	for <lists+usrp-users@lfdr.de>; Thu, 27 Aug 2020 10:58:26 +0200 (CEST)
Received: from [::1] (port=56020 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kBDjk-0005AR-Ui; Thu, 27 Aug 2020 04:58:24 -0400
Received: from mail-wm1-f43.google.com ([209.85.128.43]:34994)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <246tnt@gmail.com>) id 1kBDjh-00053c-Ja
 for usrp-users@lists.ettus.com; Thu, 27 Aug 2020 04:58:21 -0400
Received: by mail-wm1-f43.google.com with SMTP id o21so4401517wmc.0
 for <usrp-users@lists.ettus.com>; Thu, 27 Aug 2020 01:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wfZRibleXPhCpSkTGWBZkNr5croaGtrCssmmQ4mKxlA=;
 b=tlu9WTMuUtJjK8+mxlbo2B72KqysdNvTNjOOODtKmZ4sgoNM0k7K3t/uDgGbBS2/u8
 LKPHhbHhu0Q2k4ez43aOSABfAPZgfF7qDUFpqRH6IqWoLsjOiKWFtgPS3M9SMw8Tf+wZ
 4VtFF8tsMTe6+U6QZpcXyLI19ShsujojsuG2qYEArEnQlLBwYReAUcjJUeG+GHvB9cKm
 Fm/3dWQos/QlvTQqf+sluJze17nwcjs0UgY//ABcN8+1xuoT7BAu81JHLKWv1bNj9An5
 1ROBEc/BpxycbTxLaOtAInzj4gNI3TX+LCClil0QSwHbx1WUJbgeUzbeucz3X/1v/Ozf
 oUCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wfZRibleXPhCpSkTGWBZkNr5croaGtrCssmmQ4mKxlA=;
 b=K/DhKtK1XPhh9wDEWNJjEAE3qBhUvPTvU7P5aEWURkC/G/tKh2AzN6pyPO2rmdbCKu
 4GyvqYztel6bHfJ87CPa6heyyJfkUKthofFTQf/Ws//4Oi1WpYFekgz45dcABYAo9xae
 oZQ2CaooQopORvjIPVumKwGdVH5CsWLvSMk+zRTDW50CI8D8SBb2/drOHglbfL3L9MVL
 6EhFogsMmrbELJT7v69LINfOQyVWHXURg+pk2yrxLZVk/MhIQy5iL8cCIqAyDaJd/47V
 EOF/TFSnpRVfZg1u3P2FQ/I253a3A2T7H7k4+C44uq7XOSMFbM6HwSPOI4sURYpJf8BQ
 hReQ==
X-Gm-Message-State: AOAM533Lr+n7gVP/mSeN0AU1CzcKBOOlPbAn2oWU7QOBlUAaYbWGorws
 QA5Bdb05GbDIlVKROQR+lzwOl70/CQ95WBUf9fI=
X-Google-Smtp-Source: ABdhPJyFjp51jzm97aOS9Q3gNpl+v+wJmaPUARWKPYqNTPels26BW+GLZNYdYoOEoYVL1AMB+CP6vsr/34XDHq07lEU=
X-Received: by 2002:a1c:b342:: with SMTP id c63mr11209059wmf.85.1598518660503; 
 Thu, 27 Aug 2020 01:57:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAHL+j08xqrt5H7K2xPGS5Exvi-nCO4ckiqJa9DJOD1RJuJ5bkg@mail.gmail.com>
 <CAFOi1A6NL3MjND4feHEYGVKRLPTt3cG7zU_CNqk6njiWYk_FHw@mail.gmail.com>
In-Reply-To: <CAFOi1A6NL3MjND4feHEYGVKRLPTt3cG7zU_CNqk6njiWYk_FHw@mail.gmail.com>
Date: Thu, 27 Aug 2020 10:57:26 +0200
Message-ID: <CAHL+j08EiobsL5VQtQ1OJ35cv-144xjGLTXy9bg9d38mrOR7Ag@mail.gmail.com>
To: Martin Braun <martin.braun@ettus.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] set_time_pps implementation mismatch between uhd &
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

Hi Martin,

Thanks for the fast reply, makes sense.
Because the file I was looking at was time64_core_200.cpp , with a 200
in its name, I thought that was specifically for the b200.

Cheers,

   Sylvain

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

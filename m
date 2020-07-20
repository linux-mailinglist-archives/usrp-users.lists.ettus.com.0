Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B08226323
	for <lists+usrp-users@lfdr.de>; Mon, 20 Jul 2020 17:21:24 +0200 (CEST)
Received: from [::1] (port=55872 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxXbR-0003fH-KE; Mon, 20 Jul 2020 11:21:17 -0400
Received: from mail-qt1-f182.google.com ([209.85.160.182]:37251)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxXbO-0003X7-2M
 for usrp-users@lists.ettus.com; Mon, 20 Jul 2020 11:21:14 -0400
Received: by mail-qt1-f182.google.com with SMTP id d27so13306771qtg.4
 for <usrp-users@lists.ettus.com>; Mon, 20 Jul 2020 08:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=CfV8C9Mwq9qrPB0viwL1DBzFXWMElyK+gYccf8Wfgg4=;
 b=sJLqSA1bUO9eqYLa7U1wSlr/0jk4XqCjg2S4MbfGpPhjpWymJqL63NbcSPEwRJGzTR
 JmrOZz6DjdX+gns7Ul1LpfF51KQ+QhydlOKilWLjUEcbdANFnLXj+Rm+dX0VZ0svIw/S
 TsfwhlBrQAWxJQTfoneNrVCgw435U6mDPyR7ASrvybPy8KuBQnd8mP00j2ecTzHLXUO6
 cLBM8uVeHaWtUQej89YOFg4lwOAv6PqMDQtDQBd4XyKMTr+Um61uvNPNTtgwlgsYQiMa
 9ED4DbmSTf/8Geg5wW7a+ebVlLtk9oIf9kPh0ISQW8lSIKkDWLWDBLDx++MaHjUsa4uQ
 OWuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=CfV8C9Mwq9qrPB0viwL1DBzFXWMElyK+gYccf8Wfgg4=;
 b=V7mWYOgC0mOe9Coqvqk7SrGkyWHBVDnSl2k6DrzTmcV3QEF89+gsGa6sb2p6cAApvW
 PEp+QbKq3HM8fvHHGGwS5Sr3rIUwKcNGVZZ3odPZBiVYINJ6GDn5ks8e/GFuwZdJ8rIA
 0+ekaQdlzZgEEjAHVozQnkZyI5gnOg3W55134LGS5oEN/MDGXpcmcwUW9RqhIkug1zeH
 +QeQOCc6Czwtf4IovW9LN7s7KTEeoMb1hicYQQ+nOmdjX7pNMJguY20jZhjq3p9w0E2V
 Kht0WzPRr+myRlI1gck3uZGSElQLele0xfKHKlHBTbV320d+dlRdXOGaXc/RzIBG2WpW
 qljA==
X-Gm-Message-State: AOAM532PO9lhZE/69bX54aK19JiEp/D22Daf1faB8mFOy3/phdDr9JXM
 atMPzp6QPyhmu5bRy62FKTCX9ADbv4M=
X-Google-Smtp-Source: ABdhPJxcUgk958q3uMvTucQ9gEG//YXrGHZ1sjnU1sUJJ1Y/tLJVVb40cpIP2U9es+mIw/Uw2+cCfA==
X-Received: by 2002:ac8:24e8:: with SMTP id t37mr24865587qtt.319.1595258433112; 
 Mon, 20 Jul 2020 08:20:33 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148]) by smtp.googlemail.com with ESMTPSA id
 c133sm21048056qkb.111.2020.07.20.08.20.32
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 Jul 2020 08:20:32 -0700 (PDT)
Message-ID: <5F15B640.3060806@gmail.com>
Date: Mon, 20 Jul 2020 11:20:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAFZDN5J8ncEHAP1H=93cBUZ_sxOzydoXKc54sKgkCcFOHV9gYA@mail.gmail.com>
In-Reply-To: <CAFZDN5J8ncEHAP1H=93cBUZ_sxOzydoXKc54sKgkCcFOHV9gYA@mail.gmail.com>
Subject: Re: [USRP-users] Persistent red LINK LED,
 streaming samples valued zero
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

On 07/20/2020 01:52 AM, Hai Nguyen via USRP-users wrote:
> Hello,
>
> I'm having an error where received samples from RX chains of a X310 
> (after calling recv from the streamer) have values of 0 (both I and 
> Q), and those values don't change over time. One abnormal thing is 
> that the LINK LED in the front panel is persistently red during 
> streaming. I noticed that when streaming samples is ok this LED is 
> normally persistently orange instead.
>
> Do you have any ideas what would be the cause of this?
>
> Thank you and best regards,
> Hai
>
Are you getting any under-run indications?

What sample rate are you using?

Do you see this at the same sample rate with an example application like 
"rx_samples_to_file".   Are you using standard FPGA firmware or do
   you have your own modules in the FPGA?

What version of UHD are you using?



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

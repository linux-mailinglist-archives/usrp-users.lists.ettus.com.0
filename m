Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B831F1D7A
	for <lists+usrp-users@lfdr.de>; Mon,  8 Jun 2020 18:36:24 +0200 (CEST)
Received: from [::1] (port=50842 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jiKl3-0008Uw-K6; Mon, 08 Jun 2020 12:36:21 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:41930)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jiKkz-0008Ku-RE
 for usrp-users@lists.ettus.com; Mon, 08 Jun 2020 12:36:17 -0400
Received: by mail-qk1-f195.google.com with SMTP id n11so17867420qkn.8
 for <usrp-users@lists.ettus.com>; Mon, 08 Jun 2020 09:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=/Nk7mer/cjweTeikmm6QBmtPh2R+keUzKWmUiix1YS8=;
 b=J5gDkCMX8c07LvNPEezG21v7tUA62WY7N1JoSJ4n5hMlqPxx+ASBAsOmG+jNpQvyNl
 UNllAhjdJfC8Xb6IxEUTngdDuvuwYQ2GOqv3wpRr4mJc1k5wGMowVQrVXsSrN/bwIFR0
 BhfZjey+JZmqv02q2K+CuwUi6Cj+EIQkbNkWlqIyr9EMRnbAXZNofRrZ1x7l8vD5OdD6
 h+TbDkSSSm02ILVBFVaXHkKm+9k9S/ht+3rg5AVeeMZ6AQ/bZXCRSCjGhVwlCUKC7huy
 +lm4gTWWenxPtis5eeAvVysu7dZaO0MJTSWYxIrg3oRvZlGXNybJuk4h2uHRH3nRtPlg
 8hwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=/Nk7mer/cjweTeikmm6QBmtPh2R+keUzKWmUiix1YS8=;
 b=r/NavZk3vTyyQonXic3XdW8j6H3ugH5x3w0hS2xGqizRtO2tXku/sy0WfIIQyG8el1
 rWdF2xCHUOHmLGYFItXczGCuQmBhwakUfhND+Zg2Q/L6MWtElI7aBVebXPNFqc9PffEP
 rnPKz4lZPZpCV6TTDusDcmBSNiWeoIQz6W6TOlRxR8FlwwHL8pZmUer6TvD9Wm/8Ippr
 Fg8eLxbzLGZYpylkYPNggiv8jg6t5pThmPNiqlDF+4jvA6PMmBhRbc0K62QE2jSegdKP
 hq2DNTraewA42lldeTDlDODyCNi8KOTOXkHGTJ2HoHQEVtO43hdfidtDDUxOK9U0Jz7A
 p0Uw==
X-Gm-Message-State: AOAM532Z+xeBCotRAsdOyss0YzaGOeRc+XjODchIczFJvR5fYak5hUkz
 y7dH+3gZwwNHV0Di9zBRLvKB3oOyElU=
X-Google-Smtp-Source: ABdhPJwpnX03pffgSbgev/MwZucJh5MRVt8eSBSg+/7D3pRLyqYLiMHTZk5imwHf31MC7GXfSJyP9Q==
X-Received: by 2002:ae9:ebc5:: with SMTP id
 b188mr23056658qkg.203.1591634136933; 
 Mon, 08 Jun 2020 09:35:36 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-109.dsl.bell.ca.
 [174.95.14.109])
 by smtp.googlemail.com with ESMTPSA id z79sm7524414qkb.32.2020.06.08.09.35.35
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jun 2020 09:35:35 -0700 (PDT)
Message-ID: <5EDE68D7.6020002@gmail.com>
Date: Mon, 08 Jun 2020 12:35:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <6a634b94-5bf2-7131-dc41-48c39cdfef58@tuwien.ac.at>
In-Reply-To: <6a634b94-5bf2-7131-dc41-48c39cdfef58@tuwien.ac.at>
Subject: Re: [USRP-users] Python API error
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

On 06/08/2020 09:31 AM, Christian Spindelberger via USRP-users wrote:
> Hi,
>
> I have a little problem with the Python API. I installed the UHD 3.15 
> driver from source. When I want to utilize the uhd.usrp.MultiUSRP() 
> command it only works if I launch Python as normal user. If I open the 
> Python environment with sudo it does not work anymore and I receive 
> the following error:
>
> Python 3.6.9 (default, Apr 18 2020, 01:56:04)
> [GCC 8.4.0] on linux
> Type "help", "copyright", "credits" or "license" for more information.
> >>> import uhd
> >>> uhd.usrp.MultiUSRP()
> [INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501; 
> UHD_3.15.0.0-44-g5a9f9ed9
> [INFO] [X300] X300 initialization sequence...
> [INFO] [X300] Maximum frame size: 1472 bytes.
> [INFO] [X300] Radio 1x clock: 200 MHz
> [INFO] [GPS] Found an internal GPSDO: LC_XO, Firmware Rev 0.929b
> Traceback (most recent call last):
>   File "<stdin>", line 1, in <module>
>   File "/usr/lib/python3/dist-packages/uhd/usrp.py", line 20, in __init__
>     super(MultiUSRP, self).__init__(args)
> RuntimeError: AssertionError: Failed to find a valid XML path for 
> RFNoC blocks.
> Try setting the enviroment variable UHD_RFNOC_DIR to the correct location
>
>
> I have read in a former post that this might happen when the driver is 
> installed with "make install", but I already reinstalled with "sudo 
> make install" and the same problem remains.
> Does anyone know why this happens?
>
>
> Thank you,
>
> Christian
Because when you "sudo" various variables, such as PYTHONPATH from your 
non-sudo environment are not inherited by the shell that
   "sudo" creates.  This is expected behavior.

There is normally no reason to run any of this stuff under sudo. None 
whatsoever.  However, you can use the -E option on sudo to preserve
   your environment variables across a sudo call.



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

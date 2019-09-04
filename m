Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10385A86D6
	for <lists+usrp-users@lfdr.de>; Wed,  4 Sep 2019 19:07:53 +0200 (CEST)
Received: from [::1] (port=60862 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i5Yl4-0000wh-SN; Wed, 04 Sep 2019 13:07:50 -0400
Received: from mail-qk1-f179.google.com ([209.85.222.179]:38447)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1i5Yl1-0000qs-S3
 for usrp-users@lists.ettus.com; Wed, 04 Sep 2019 13:07:47 -0400
Received: by mail-qk1-f179.google.com with SMTP id x5so6179082qkh.5
 for <usrp-users@lists.ettus.com>; Wed, 04 Sep 2019 10:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=x+Mzi+r5vBTZGmIIK5LzVYviNXUUWecGJ/WgV+JhwuI=;
 b=kSmRlteiJVbOTDEqKXviws+hoPpUUp948U6sZfs6ry/M0Cu+BEOqaH7aK4Togtizhp
 xG/euuWOb+vm10dZ7pTbC4Ty/CKCrFIB3xfL05VohWFCyD/EX6nHlHvTCna7wWKdgB6n
 QNQ9SGBniMtljPpA7ZwoBngVcfulbASA0jbFZMFvMLBH0q1oi8atHSfjrR2O+tzYVFuH
 TT0fDqQAqrb6ho0TXJA/8Tqkgf1q4YWsDTrvwm7318+KhefTCMefLI69K+yOKR09K+Y0
 nNN9WLaaolG79DDQP49stlAJ/J5v5Qs+1CRi/jacCfLL6A+2Pb9hVeGBcHGIXe1Ie+vp
 8hDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=x+Mzi+r5vBTZGmIIK5LzVYviNXUUWecGJ/WgV+JhwuI=;
 b=A6nPO+a5umSRqKCjfkHs5oL9R3g2RKzNvQG/6XWaKLw0Y/dewWIbYGyeMjVQUFuC/2
 oM/x6brxWbiqMO3C2yTH3e5RuQtPqz+/3J0aOcwtBEotSwhwWATL2LRWg1JzxNgfTxE1
 vzPBCV716e000zP/wHVdaK+kZJd245OkcR6HYAfLg+0ky7NoGcW3s7UvdKDdrSFRR7rs
 vsUfSbeNy2TTzeM/U1kYMoN0LF8PMTHJa4I9+gr232ktCu/pqkikq0ht1putA7GnAe11
 /Qzusd+phjYzL3S4K7w+D8pOVQV67Lp+ANNO/8syHFnwG4sSWgBMTWxRxymcv3P/4uGS
 GKyw==
X-Gm-Message-State: APjAAAWLqbwd8zVHCq6UJ3X28zWZkqKfrLfJOQbpeff0nmCR3pCo5mZX
 7V2xMGE622RFiylyVb4tbbi6dx8m
X-Google-Smtp-Source: APXvYqz6OYYAOsIdHlyCsRQlLiPRzDvEeO5asyEz28GT065Y8oBch/Lt166clXhMb9fDDYh+1BWsRQ==
X-Received: by 2002:a37:4ecf:: with SMTP id c198mr22148784qkb.98.1567616827153; 
 Wed, 04 Sep 2019 10:07:07 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id h68sm4818054qkd.35.2019.09.04.10.07.06
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Sep 2019 10:07:06 -0700 (PDT)
Message-ID: <5D6FEF3A.4000706@gmail.com>
Date: Wed, 04 Sep 2019 13:07:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <4f5d8fc2bf9ab0410a972bbbacd07b3a@imapproxy.vub.ac.be>
In-Reply-To: <4f5d8fc2bf9ab0410a972bbbacd07b3a@imapproxy.vub.ac.be>
Subject: Re: [USRP-users] time_now and daughterboard synchronization
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
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

On 09/04/2019 10:54 AM, C=E9dric Hannotier via USRP-users wrote:
> Dear all,
>
> I have a synchronization issue when using the method "set_time_now()" =

> (https://files.ettus.com/manual/classuhd_1_1usrp_1_1multi__usrp.html#a351=
a2c3081944a0d2caab95e2a2f0926). =

> The setup is composed of two X310 usrps, one to transmit (T), the =

> other to receive (R), at 20 MHz. The A Tx/Rx frontend of T is =

> connected to A and B Rx2 of R with SMA wires (same length) and a =

> splitter. The transmission is handled by gnuradio and is not recorded. =

> When recording on R side, I expect that signals recorded at both =

> frontends (A RX2 and B RX2 of R) are aligned. When using the method =

> "set_time_now()" to set 0.0 time, signals are ~40 samples away. It =

> does not happend with "set_time_unknown_pps()".
>
> Attached files "rx_multi_samples.cpp" and "run.sh" are codes used to =

> run the experiment. Switching --sync from "now" to "pps" solves the =

> issue. Attached files "time_now.svg" and time_unknown_pps.svg" are =

> pictures showing the behaviour when using "set_time_unknown_pp()" or =

> "set_time_now()". From "set_time_now()" documentation, I cannot =

> conclude that it is an expected behaviour, is it?
> The uhd version is 3.12.0.0.
>
> Kind regards,
> C=E9dric Hannotier
>
>
The "set_time_now()" operation is unsynchronized--it simply transfers =

the host time to the device(s) without any hardware synchronization
   pulse.  Since it necessarily has to send multiple commands across the =

host-to-device interface, and the device sets its clock immediately
   to whatever value is provided, and the clock continues to run, then =

two or more devices will not tightly agree on the time when using
   this method.




_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

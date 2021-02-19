Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3E131FDE9
	for <lists+usrp-users@lfdr.de>; Fri, 19 Feb 2021 18:32:14 +0100 (CET)
Received: from [::1] (port=55976 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1lD9dT-00060P-L3; Fri, 19 Feb 2021 12:32:11 -0500
Received: from mail-ej1-f50.google.com ([209.85.218.50]:33245)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ganciogm@gmail.com>) id 1lD9dQ-0005uk-Gp
 for usrp-users@lists.ettus.com; Fri, 19 Feb 2021 12:32:08 -0500
Received: by mail-ej1-f50.google.com with SMTP id jt13so14985297ejb.0
 for <usrp-users@lists.ettus.com>; Fri, 19 Feb 2021 09:31:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=SM+o/lXRNN4z+oloqPgp3mKLm65BkXYCPjnmqDvszUM=;
 b=kp7OyMq/pvL90h8J3N8rAkjybye5d0qHhHaUYT9/q7lGSR3NSAsRpWRWLHPWOOy8IB
 9JMUKZJkoqchVrrx+d2iKLt9DNOLTCvCkBL+K1UGWYyMnaPg8WH8CcptsObqzDAxKM2s
 UGfx6/lS3tAEtGQI88FCyfyvllMLDsiInkNO16wMffdMtDusvDbFwVa22WIPOgIU/Voh
 wDyfrj/B4nfEYAGSzwC1xQRsrGThvKCdJyMHz98kwj23PERpQSLgfhkFuw2zmXlbSkhM
 q4fE1uYu5W0nM5h1O9hgEQmSUcCXRvfgaGw0xruGHfIrDdWRCivAy5X4jZLFJJCYfbbX
 6RCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=SM+o/lXRNN4z+oloqPgp3mKLm65BkXYCPjnmqDvszUM=;
 b=mMNTh3YceWnItAQnh0g1okvjtsX5AyftHyYhIBetKj7auTF1NidC3FJbgLl8+8vJdL
 bDr7dVDnJZ9nDx8u7sVLz2WwEI/5FKQMm21SkwCl19uXRj1yFtCCB2vPc4+pQJIfGKMh
 Nfj68pGhtXjfKUSYBdc3ABp+p7jB14WdSQ6upir6dPfQ4WKJMmltZFCOaKZ81jxGT/wr
 nYXv592ZUqyyGpTGOs9m07el5v+/9nf8VjCPn23aGtC5HoXJj7qwHnxs96LIGGtiOtRO
 edPzBEAfM+0RZRa5GyrHHL1dxvqtkAtxm/z6GcI7IQ6aMODDvHU6O8BjGcbDeQzyPsnN
 51Lg==
X-Gm-Message-State: AOAM533QmBlH9rxvGV2wQ8irqzz6/5hhSnUIXVG8B4mJdzANwXO2Slic
 fYSLWPZ7S87uyoL6v0qa+PkmLdP7XGGfgeiMQNdiWVXQ9OqpZQ==
X-Google-Smtp-Source: ABdhPJwQQiSjOnFKi3seA4xIHRX4CUAL/0CQZFs3lWpl/TXFnqwwPG898lRgLMhsPqzaetgdgjLdaM0nzPELHubr+lI=
X-Received: by 2002:a17:906:aacd:: with SMTP id
 kt13mr783510ejb.31.1613755887099; 
 Fri, 19 Feb 2021 09:31:27 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 19 Feb 2021 14:31:15 -0300
Message-ID: <CA+EePfQ=qcn=P7hT9+dze2oEj0Ya08mKRP-tJW6CteNcrHUAkg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Problem with tx_waveform reference lock
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
From: Guillermo Gancio via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Guillermo Gancio <ganciogm@gmail.com>
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

Dear all,

I'm using a B205 as a CW signal generator with the example
tx_waveform, in general it works ok, but if I try to use a 10MHz
external reference (option --ref external) I got the error, same issue
if I replace the 10MHz with a PPS, (--pps external), power levels are
ok.


Checking TX: Ref: unlocked ...
Error: AssertionError: ref_locked.to_bool()
  in int _main(int, char**)
  at /home/ggancio/uhd/host/examples/tx_waveforms.cpp:285

This is with a fresh install
[INFO] [UHD] linux; GNU C++ version 7.5.0; Boost_106501;
UHD_4.0.0.0-93-g3b9ced8f

Any idea on this? Thank you very much!

Cheers.

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

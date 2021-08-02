Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C510F3DDB31
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 16:37:58 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DC974383EF8
	for <lists+usrp-users@lfdr.de>; Mon,  2 Aug 2021 10:37:57 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="hBN2UQ5o";
	dkim-atps=neutral
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B5423842C0
	for <usrp-users@lists.ettus.com>; Mon,  2 Aug 2021 10:37:16 -0400 (EDT)
Received: by mail-qt1-f181.google.com with SMTP id l24so11770508qtj.4
        for <usrp-users@lists.ettus.com>; Mon, 02 Aug 2021 07:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Pd3CQLxktRzhwXkaL5IDxs4RxBFsPLofK2Km4MUgLDI=;
        b=hBN2UQ5oynq3PCCq8fnTPFS2nlXHJr1ISfOuHpS1Vz5AeJOEbbEddlBoZq0LBDxtIy
         JTvBAm7Yt70q/Z9JC0cyBctCQtI9bXJk0CJkVHyhqr0k5GiY41XfHnz8HTv+CFPeJ5Tj
         CO+UR53sEfP7CZBVg+QD9IYhfZ0jbtjAwtf2/e7D4fn2BYyW+3J87HzW7LhXrutMjKPR
         7Pa4dnwS/NmgqP8tuf+DTd8DlDSCKfQfuTxb5/+cHuF0JW5HUNs0vbP2GuaxDhg44q7V
         wFnZuiGPGU8NmNbmCoTo3FkMSJxi7lPwnayaMZGTdjYU8flaYtgo2wO8f0zXlkaZVTZ3
         4NTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Pd3CQLxktRzhwXkaL5IDxs4RxBFsPLofK2Km4MUgLDI=;
        b=WtDqiTpmHWidUNRw7+QILeqdPU4ZuVaTAmHdjUG2ltRIFRt0jPOZ7EzrAcIL2Uy2K3
         dT5mA7HiT5QS3LKRWzytz5SxNCboV50HFYIN4w2iZ8K07q/nTrlEWCeAldp3EGQbllLq
         IX50yC83KEkbR8LNF98c3tcYs0pfEKbAso2+W9Tt48I9HygQ9wDTpoWVmyM1zR9Xf+qB
         MxPdHeCY59Q+VZ5+d2l7FmIxOqU+a0GYW4T61mocDaq8dFu8cnHD2fXngu/NCE9j3W+c
         xV9Q3Y2hRo509QKX9uF8mxQL3N2ZDe3s9YQ1Pd60myStfzS3y5905Ww/M5bvBEBfoCtU
         DeJQ==
X-Gm-Message-State: AOAM532uXpvXnC6HFyr7O7efGvLOgGfv7LPneShJ7Ilq27nJA0Z5ZcLf
	mHWDCTujvZcR6hdvhYHq8ls=
X-Google-Smtp-Source: ABdhPJzlZ1nxqqUTgN126dIGmmUzgxLpnECdm14UL0hRQDBJxx9w/r+Tgjm+0/1+nm0rplJRVY8zrw==
X-Received: by 2002:ac8:698f:: with SMTP id o15mr14503192qtq.365.1627915035805;
        Mon, 02 Aug 2021 07:37:15 -0700 (PDT)
Received: from smtpclient.apple (50-110-161-61.mrbg.wv.frontiernet.net. [50.110.161.61])
        by smtp.gmail.com with ESMTPSA id d19sm5789382qkn.94.2021.08.02.07.37.15
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Aug 2021 07:37:15 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
From: Richard Stanley <richardlstanley@gmail.com>
In-Reply-To: <823ADE77-DFB9-4632-B924-C31C5B76B128@eastroad.org>
Date: Mon, 2 Aug 2021 10:37:14 -0400
Message-Id: <17BFD25F-4714-4789-AB3F-4503A89B25F2@gmail.com>
References: <823ADE77-DFB9-4632-B924-C31C5B76B128@eastroad.org>
To: Guy Mengel <guy@eastroad.org>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
Message-ID-Hash: TOMQBHGGCRWBC3ANBMW5TJCYFJEKBNGA
X-Message-ID-Hash: TOMQBHGGCRWBC3ANBMW5TJCYFJEKBNGA
X-MailFrom: richardlstanley@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Older B100 and associated Daughter cards.
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TOMQBHGGCRWBC3ANBMW5TJCYFJEKBNGA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

(Resent to include mailing list)

Hi Guy,

I've recently used B100s with the LFRX, BasicRX, and (EOL) TVRX2 with the latest UHD and GNU Radio 3.8 on Ubuntu 20.04. 

A challenge for me with the LFRX/TX and BasicRX/TX was finding the correct sub-device specification as they can acquire/transmit an IQ pair or real-valued signals. In addition, I required a Hilbert transform to convert real-valued samples in baseband to complex for some processing in GNU Radio for Rx. There are a lot of questions about these daughtercards in the mailing list archive and often the questions seem to be about sub-device specification and real-valued versus IQ.

Enjoy the B100!

HTH,
Richard

On Aug 2, 2021, at 09:47, Guy Mengel <guy@eastroad.org> wrote:

Hi All,
I am finally going to get started using an older B100 USRP with the LFTX, LFRX, WBX daughter boards.  I purchased these from a well known amateur radio op in January of this year. I had played with it for a short time on Ubuntu 18.04 with the older unsupported Python2 interface, this was a start.  Then the Covid Pandemic hit.
Well, I am now back.
Are there any users in the group using the B100 USRP with the LFTX, LFRX, WBX daughter boards using a newer Ubuntu 20.04 with updated Python 3.X with GNURADIO?  I wanted to see if there were any still using this older SDR.  My plans are to experiment with it and create a rig to be used at HF and possibly UHF to microwave down the road.

I would also like to have pointers too!

Thanks!
Guy Mengel N1GMM

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

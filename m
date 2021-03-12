Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTP id 27C9D33903C
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 15:46:33 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9E2AA383C0F
	for <lists+usrp-users@lfdr.de>; Fri, 12 Mar 2021 09:46:32 -0500 (EST)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id DA9043830D6
	for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 09:46:21 -0500 (EST)
Received: by mail-qk1-f180.google.com with SMTP id l4so24461986qkl.0
        for <usrp-users@lists.ettus.com>; Fri, 12 Mar 2021 06:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=c3commsystems-com.20150623.gappssmtp.com; s=20150623;
        h=from:content-transfer-encoding:mime-version:subject:message-id:date
         :to;
        bh=a9fIW8fVjm8KJ1Tom7M1WJ3WaiHroishlEqLGIbHx9Q=;
        b=ABlNOmSizasxYNjMOMiopM0ACy2TIrjgD6UAwpy4TnBpJ9OF+Lz0TJaDoJ5xhI5WuL
         MorLqQvbo96SP5wQtPaNoTbE+pvEGl3qEa5jwp/+Co1qruYuwu8BIPUCQQ9BWqAnE5ro
         LnXtoBI8xKYFirWB/9zjsvviZSNN2vw9eTCBT60TORMZ3heOej58CusQBpRaCaVlKq5+
         JtphM37cYzSMHJIzKkbhj2zShc2vIL92vPI6pfS6OuBBNDdwCdL4XXyWJcQ9IzGlavT/
         6KC3mw7bpciOc68CJiT+OcavjtBF7oz6llqlYw6Sf0cp4gRjKxYjoehJr1uHv703bptQ
         GeAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:content-transfer-encoding:mime-version
         :subject:message-id:date:to;
        bh=a9fIW8fVjm8KJ1Tom7M1WJ3WaiHroishlEqLGIbHx9Q=;
        b=ujmQqEfjqNLDVe0b0FpnxCk7Ea9ha4fBcSDjfFa6cUIpiv3kuez8xmijY982DNTyjJ
         8D3q+SBJOqJlFwU/FdV9FKEL58xyp7QHeXIBAa0vgQFXL33rFKwHvT/eQe5+ZZ4viGIB
         YsMGFS9pr0vAMBG5TBGgei4NWdv3+CL00eKf9TOPDvu0OUCtRyzR/CDCgX0ejwuYAhqo
         z3oTBL/XgKId7m8cZON09fW6Blz5wyXJHlYL6ag3VU5Kb9Xijns4c/xUwGu6d3t89ZgE
         0ev3xdf3pUJ5wThKsl18zWufPF9VkkDIcDre3DiGDdDihu62r/qWKBe8zv+9QXUmg/PO
         1ODg==
X-Gm-Message-State: AOAM530Xhjhs3c7cDj4MSQUcNLFETt3H0ujacJGkqToXqg26Bw9dzyPu
	TMOy2JgLTUBkMODIegs5Cs7Rs4QZGLLZIA==
X-Google-Smtp-Source: ABdhPJzYSNe7GgHC91vINMS1ZVrC9mcSU47ahOluEoZtwP1jMVxk+9NhBAOZYhTEN0xPGBMn+f0AGA==
X-Received: by 2002:a05:620a:681:: with SMTP id f1mr12866111qkh.280.1615560381058;
        Fri, 12 Mar 2021 06:46:21 -0800 (PST)
Received: from [192.168.2.118] (pool-173-66-203-125.washdc.fios.verizon.net. [173.66.203.125])
        by smtp.gmail.com with ESMTPSA id d24sm4481249qkl.49.2021.03.12.06.46.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Mar 2021 06:46:20 -0800 (PST)
From: "zcao@c3commsystems.com" <zcao@c3commsystems.com>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Message-Id: <FD198C20-65B8-46CA-BFF9-A17552914FB2@c3commsystems.com>
Date: Fri, 12 Mar 2021 09:46:19 -0500
To: USRP-users <usrp-users@lists.ettus.com>
X-Mailer: Apple Mail (2.3654.60.0.2.21)
Message-ID-Hash: ZFKQNHWSEDMGM4O3WLDDE6ZAW4II2RZU
X-Message-ID-Hash: ZFKQNHWSEDMGM4O3WLDDE6ZAW4II2RZU
X-MailFrom: zcao@c3commsystems.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Why TRX port has 20+ dB more loss than RX port for received signals?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ZFKQNHWSEDMGM4O3WLDDE6ZAW4II2RZU/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi, 

We are implementing a TDD system and using the TRX-A port in lab testing. To facilitate TX/RX switch, we built control logic to control the GPIO pin to flip SW1 on Page 7 of the published E310 daughter board schematics. 

What we noticed are:
1. The RX ports cannot be cut off, so we must disconnect antenna if we want to use TRX port only.
2. The received signal power from TRX is about 22 dB less than that received from the RX port, given the same TX power and testing configuration.

The above observations are consistent across multiple E310s between my company and our collaborators. So we have the following questions.

(Q1) Is this by design, or we might have missed something in our setup?
(Q2) If you think our design or setup may have problems, could you please offer some suggestions?

Thanks,
Arnold


_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

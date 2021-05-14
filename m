Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8403803AD
	for <lists+usrp-users@lfdr.de>; Fri, 14 May 2021 08:34:05 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 479FA383F12
	for <lists+usrp-users@lfdr.de>; Fri, 14 May 2021 02:34:04 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="p0H4mqC8";
	dkim-atps=neutral
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 1EAB4383EDB
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 02:33:12 -0400 (EDT)
Received: by mail-qk1-f180.google.com with SMTP id a2so27837657qkh.11
        for <usrp-users@lists.ettus.com>; Thu, 13 May 2021 23:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:date:subject:message-id
         :to;
        bh=dnLlXqkhAzPFrUnd1J5NAAQ/4LtkRwfxn+/OMNrGWGU=;
        b=p0H4mqC80JFwycxrtL1LChB0YzqxWKZLRP7TnyAfRgd9pAKx0HoGydWwvwsQzR6cMO
         ztagcy+1vAqwYrfi87iZYf4jhvRSnGeqvFZDlgxHmFN415/c/TJ9HqrYtqUFMnFWkdT7
         2nflwY76gnrHOj2FsJo8vXWg78645hrMuhRe8aA1CeMqR5gVut6nu9Uwg9FDsEpBNJwR
         9SRANQJ5DLPKxZmSg+ZJIVpt+luikU68V93I4SOsTEWO0L6VnAUPLriDySH37YU+Umsc
         SyrCqbE5IJ3b6sKSc0bUO3h9wQ4Mde0oOzQYjpr92zFijszqRVrYbCKfnWPWx2S/gxHU
         GeZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version:date
         :subject:message-id:to;
        bh=dnLlXqkhAzPFrUnd1J5NAAQ/4LtkRwfxn+/OMNrGWGU=;
        b=iRgIrtjRLzRctba/qc4Jp+53BDDsBMhRtryyGA9fN0GV5Doey1yCzmMX9tzKV2G9K6
         WsXfoigY+FgqfN/ZxGflcYaFbAwZnCpTZnE+iSmmlLDrhuEiQAJVWeeB4yZbX9EQtzwN
         noEoIPdAMVHpyDJ2N3ld8p+osY/u/BdBGcUblgCclSMFDAN+FONru9Y3xCmFgNj3Wuaq
         +SIfbRnM86OR9C7aiWFyYPLasMmsaXwTIOSs+uhieYNUggO1gi57lw39tPpC+pb9CmDJ
         njAWIi4F7a9QdlP5yi3cuDbfL2bTkdz2cRqtUHUwxASWhqo7kY+BJdW8etTicCDNmsHM
         dfuw==
X-Gm-Message-State: AOAM5324m3QvvqR4qekctutejkIxbPxFEBnoHaWzJoV/iPnAxpesVu1s
	+cQxHcKEHBxLwJSli6t9h7qMnPAG6jg=
X-Google-Smtp-Source: ABdhPJxn1xkyXfN+s2zAgdFwsCFf1bNpnOhjaueXmp44EdpVui/+huqN+MMjgF6cW9xPDygVaM7axQ==
X-Received: by 2002:a37:9e12:: with SMTP id h18mr42623453qke.483.1620973991465;
        Thu, 13 May 2021 23:33:11 -0700 (PDT)
Received: from ?IPv6:2601:151:c000:a810:6d6e:66c2:ad51:25b9? ([2601:151:c000:a810:6d6e:66c2:ad51:25b9])
        by smtp.gmail.com with ESMTPSA id a63sm4039133qkf.132.2021.05.13.23.33.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 May 2021 23:33:10 -0700 (PDT)
From: Paul Atreides <maud.dib1984@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 14 May 2021 02:33:09 -0400
Message-Id: <CD66EE6A-A119-43AE-B116-DC22797F6C39@gmail.com>
To: usrp-users@lists.ettus.com
X-Mailer: iPhone Mail (18D70)
Message-ID-Hash: MKEWJTRONAY7RXUMXBMYM2W2ZV3EGEIQ
X-Message-ID-Hash: MKEWJTRONAY7RXUMXBMYM2W2ZV3EGEIQ
X-MailFrom: maud.dib1984@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] SFP+ assignments in RFNoC on X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MKEWJTRONAY7RXUMXBMYM2W2ZV3EGEIQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgdGhlcmU6DQpJbSB0cnlpbmcgdG8gd3JhcCBteSBoZWFkIGFyb3VuZCB1c2luZyBSRk5vQy9V
SEQ0IGFuZCB0aGUgWDMxMC4gSXZlIGdvdHRlbiBiYXNpYyBmbG93Z3JhcGhzIHdvcmtpbmcgYW5k
IEnigJltIGJ1aWxkaW5nIGN1c3RvbSBpbWFnZXMgaW4gVml2YWRvLiBSaWdodCBub3cgSeKAmW0g
d29ya2luZyBvbiB0aGUgZGVmYXVsdCBYRyBpbWFnZS4gDQpJIHdvdWxkIGxpa2UgdG8gc2VuZCB0
aGUgcmVjZWl2ZWQgc2FtcGxlcyBmcm9tIG9uZSBVQlgxNjAgdG8gMiBkaWZmZXJlbnQgcGh5c2lj
YWwgb3V0cHV0cyBvbiB0aGUgeDMxMC4gVGhlIHN0cmVhbXMgd2lsbCBiZSBkZWNpbWF0ZWQgdG8g
ZGlmZmVyZW50IHJhdGVzIChpLmUuIHN0cmVhbTA9aGlnaC1yYXRlL3N0cmVhbTE9bG93LXJhdGUp
LiBJcyB0aGVyZSBhIHdheSBpbiBHTlVSYWRpby9yZm5vYyB0byByb3V0ZSByeCBzdHJlYW0wIHRv
IFNGUCsgUG9ydCAwIGFuZCByeCBzdHJlYW0xIHRvIFNGUCsgUG9ydCAxPyBJIGNhbuKAmXQgc2Vl
bSB0byBmaW5kIGFueSByZWxldmFudCBkb2N1bWVudHMgb24gYXNzaWduaW5nIHJhZGlvIElELCBh
ZGRyZXNzIG9yIHBvcnRzLiBDYW4geW91IGhlbHA/DQoNClRoYW5rcyENCg0KPGVuZCB0cmFuc21p
c3Npb24+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVT
UlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5j
b20K

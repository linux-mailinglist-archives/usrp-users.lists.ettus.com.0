Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E23C36138F4
	for <lists+usrp-users@lfdr.de>; Mon, 31 Oct 2022 15:29:01 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C98838392B
	for <lists+usrp-users@lfdr.de>; Mon, 31 Oct 2022 10:29:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1667226540; bh=Ap0Rc8B0PJHMGx4chwoeICQUujV9yoxMNUH3XuiBhlo=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=WvGT9uTu/OPB/j596bOPnJ8wr9a9eX8EYDMZGUx3J3a4mfuokW7beP8DMVUnsZ/se
	 EtutUcCGLdVfDw9pCaewnB27835mZQEXfm+J3iia+JqjK2kdg+fQAceykyrK7KH8tw
	 V+d62iSjiET+Njf7g2ZBDSpp5FLR6A7Tzqmle8cgrfU0OHFqQmBHKaR0KHr6bMC/Qj
	 Rkk9xjahwlAJhhsqP0pYBilFkdk2wiQeXQL1ErR2N6UIOdV6P7ochEBw9AgVRdjsTf
	 cFPBXy2SQ6WHpYlNNYOFdNSKjbVvGZIEh0F/9D54VlJnVOfeGXz7vqp0EPERtNo2kW
	 iFUT4K5SsrW2A==
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by mm2.emwd.com (Postfix) with ESMTPS id A6C8F3808DE
	for <usrp-users@lists.ettus.com>; Mon, 31 Oct 2022 10:28:10 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ZLacZWlx";
	dkim-atps=neutral
Received: by mail-qt1-f182.google.com with SMTP id h21so2480461qtu.2
        for <usrp-users@lists.ettus.com>; Mon, 31 Oct 2022 07:28:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6DBAYATfiF5XesYfmrhHqbxj+PNHpByGlticOhZ1xII=;
        b=ZLacZWlxEPci/J4nE9kWrwSFtPesZ7pe1ZDrXsm9tfjaJR63KzX3m1TSOkec8ralV4
         L5yC4jvM0XgVhivOLqdFQvz/RH88u7Bi+vDPGVcAFH3MTrk2Y7l0o5Eh+TFZnac74LC9
         YKK9vlyfOouVhDa40VhYOdQoIpRQnwT4fp0fqhJkWyUlJXMJqBkX/lV2kXxBF/MqV1vo
         mSR9iJ1m6yQSVs9yqAM0x8j4g/NDibcJSo6sXaZQRDYHxOJUjnHYAMm2k9DgAPkFt4O/
         Vsrf6btHjCXyJDgel4qYMkSjYdaVrmgYJl8N4VvkQnATHjP9WJiCTDg4ATyD684APe+B
         24RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6DBAYATfiF5XesYfmrhHqbxj+PNHpByGlticOhZ1xII=;
        b=thZo9uOO+5X0OnaTnITgJEqjr4ppu6fIUEzL55kudiAcKtmqixUU+K4v2yosbl1c9N
         dz1ezSEnJDyBfUTva7tLNNRZoGY+ReunrtTu645L+Jt8kwWtaLSN0V83kwG7t8ASG7EE
         FEWwtUUHR1WdUzcLfE38XDzGgUqs5SH4pXU06fBDuQv+thyxY8GS85O4PDb8Sip/Zx6v
         sZcyLiVg4JfCbXu6mfM3kn7oS8N91lI+b9iGiOsDNvKnkkwOZpExcheIneYdEfAJJ7Kq
         0crRWUFl249p0CO9/PXKZGLPGFnHWlr6CcKLFv9YMZH9YPqv7KBLco+YSnvAZT3qh8j0
         BrZQ==
X-Gm-Message-State: ACrzQf34On2Hkd8QVzv+YrmY6F7xtFzxHyOznFDeWz6KabdMhlxMVbz7
	l8sFO+rkC9t3h/b3tRmNOahWDrLd+9s=
X-Google-Smtp-Source: AMsMyM6gK4sNAGkn0nBgyc0lHrd6McKH91VxpUKPhNB25AtxXBFltpHesloBSRNU0iqGsRNCNdquBQ==
X-Received: by 2002:a05:622a:2304:b0:3a5:1f05:227 with SMTP id ck4-20020a05622a230400b003a51f050227mr5068530qtb.315.1667226489998;
        Mon, 31 Oct 2022 07:28:09 -0700 (PDT)
Received: from [192.168.2.163] (bras-base-smflon1825w-grc-09-174-93-2-222.dsl.bell.ca. [174.93.2.222])
        by smtp.googlemail.com with ESMTPSA id x10-20020a05620a448a00b006af0ce13499sm4814393qkp.115.2022.10.31.07.28.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 07:28:09 -0700 (PDT)
Message-ID: <b5364317-1222-7481-bc28-b7fe764798e5@gmail.com>
Date: Mon, 31 Oct 2022 10:28:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Content-Language: en-US
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: 6Z646YDE56ORO3DVS4ZOZLVNBD2MIUEX
X-Message-ID-Hash: 6Z646YDE56ORO3DVS4ZOZLVNBD2MIUEX
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] A test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6Z646YDE56ORO3DVS4ZOZLVNBD2MIUEX/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

U29ycnkgYWJvdXQgdGhpcy7CoCBDaGVja2luZyBteSBsaXN0IHN0YXR1cy4NCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QgLS0gdXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byB1c3JwLXVzZXJzLWxlYXZlQGxpc3RzLmV0dHVzLmNvbQo=

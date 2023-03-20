Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D366C1CF4
	for <lists+usrp-users@lfdr.de>; Mon, 20 Mar 2023 17:55:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C641B383F90
	for <lists+usrp-users@lfdr.de>; Mon, 20 Mar 2023 12:55:37 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1679331337; bh=+6RtmxXXi1BH9IJLFleRPJrVG7fRMDoUg87CygHvfrY=;
	h=Date:To:From:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=EyfpoPUFV4MhaTaTzG9KuZOm6UUi1IfmwG3Xw78ZdnCyN/Hqqe2A4cIULNssPN/3R
	 WvDOo+KuVMT9qHZp1uB6sDKzQvjO+XL/IEOZ31xtmkdd5Xoz1ZWKT5mYLVmX3Tx6hl
	 EL2TtbHC0IXU8EH3dgBqDtuvQKUCe+CzhAl3EKD9cLWESNy4wTsuLfXV5xkwJfqGSN
	 noB0ZE3gkZHC6aR8oUWC7gS3Q0EMBuyNdSOmybdL+eKlChxdfM2yLwJmwgl+ZMjMmL
	 wist6wmkXv0LY45H9owQms8r5PAGix4kyzuwwNwVA0N8yi5infPaZwgEU4M3eL30S+
	 YmyEgKw6gf+hg==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 99558380D05
	for <usrp-users@lists.ettus.com>; Mon, 20 Mar 2023 12:54:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Hv9oWYlf";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id x1so13837911qtr.7
        for <usrp-users@lists.ettus.com>; Mon, 20 Mar 2023 09:54:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679331290;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Thw6M10RZ2M7k4/0O4rbYX/70NyzlvEHnEVrGoItKz4=;
        b=Hv9oWYlftFGCHI0NamlkTea523/u/Ysa1hvHmAqGZp7+rJ5iCF4Rwy0oT9e3Pgwazk
         AQMlSPV18oiHcpMOPlCv5FezWxsMJcllOHswt5yTN4mTN8bWR004JPn/nPTXliYEOzFt
         QARGs8eTAj/NyMLnQTrKjFztl3neJZYyGGONJH5ZsC2ycUJVfVv2wGQq5GMlVS6M98My
         0RdHkjn4nFTi1MFmcGjgvB1vdXiwdsS7DWe2eteqbs+W+b3NOaPIHrZQzDvF2GhtJ8Yo
         FwVdyOgnW7jOblhkXNn3Nox0YyTKkoRgBxA6Fi48Zr3hUurynsNbPvyyO/Ud9aGtOUCE
         3wUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679331290;
        h=content-transfer-encoding:subject:from:to:content-language
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Thw6M10RZ2M7k4/0O4rbYX/70NyzlvEHnEVrGoItKz4=;
        b=hwf2/QL346/QfycYFsn34C/82QV6l0C4mJi/AV+JNF/wBjYAexWgW1qGFosABeqgHR
         c+jldV6h9nTriGimB/BD+ajANboI9bYIhTFQak2AfLpDHHBG8ckOc9lM0rE/j53ryKLE
         FtK7jhDGHdANS889Px9zIU0Okpmyo0JbaNE8wpjRl7vMiVPegAxByzUj9u6E+Twz8nPH
         bxfrvhvDConJ2ykvPFgZ9rwOuDCQiGhfZ2N4Hj20ce51y9xE//xdD6fRqiaEpLrmc793
         6XKj5XpwNHX3CRGT3O76iTQp/Py/a+cusRaIED+OgcKPkXsXdQ8B2W3IL0/zxzYAMT+P
         H7tA==
X-Gm-Message-State: AO0yUKUBl5OTHtrCkIO+DoNsvoFO6UyYxFN4AWCSWjkYYgNnPhc5P0wZ
	UfJws9k6yDCszXatP6JJN5SYg3SoVLQ=
X-Google-Smtp-Source: AK7set/LpIV0HpCWZ+gevbzhz5y3LzcddLfQZ0GjirXbgoCgbuJgQbOXQ5CACRRzhqS1A+Bycz2OUA==
X-Received: by 2002:a05:622a:1481:b0:3b9:e4cf:ce2d with SMTP id t1-20020a05622a148100b003b9e4cfce2dmr413454qtx.16.1679331289849;
        Mon, 20 Mar 2023 09:54:49 -0700 (PDT)
Received: from [192.168.2.177] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id e1-20020ac84901000000b003d460ec242esm6734111qtq.81.2023.03.20.09.54.48
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Mar 2023 09:54:48 -0700 (PDT)
Message-ID: <3d0a4761-13d6-1a52-d5ec-ef85ddcd28b4@gmail.com>
Date: Mon, 20 Mar 2023 12:54:48 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: MMC7LS6H3AU4T67U5ZEYU5WUQG4NZGIF
X-Message-ID-Hash: MMC7LS6H3AU4T67U5ZEYU5WUQG4NZGIF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Just a test
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MMC7LS6H3AU4T67U5ZEYU5WUQG4NZGIF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit

Am I still subscribed?

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

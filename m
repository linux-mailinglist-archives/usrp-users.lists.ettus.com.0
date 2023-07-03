Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FD28745F27
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 16:53:41 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8946E38451A
	for <lists+usrp-users@lfdr.de>; Mon,  3 Jul 2023 10:53:40 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688396020; bh=5ilMJtoUUkLa6cZgaPfXgSvCWxXtL27NLGjlj7ZrhRw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=MfoCEqK5GOZgp0oR4P6Wf3+l29JKbaWrmXDAP6xxKKiSRYcW+L569txzFqmpy47cn
	 Rms3CP1Nm5zdY+PGQ8B2lx72y44INKAFU0+JK0HagQZVn86Y//IcgtmE5KG505Bl+R
	 WYKkqDqkyuXCIrA8I4iQmS2P346Uvq4E7S6e6r+p+4L+ZIAFeSBw8H8GkU3hvig2Se
	 c4DcnsZViKIbsdm4TabbFJiJcmsy4W9HwRm5EMLTVhua/Bj0zZfHbbANCTbm6fa6Ym
	 QuNd9E+aPL9T7ZlEs4K0lLgNgbgGgrEqxsAnCupl1vZO4Pzvg5Qabox6n3q3pS6Azs
	 7OQ8rdwOUGhYw==
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	by mm2.emwd.com (Postfix) with ESMTPS id 8AE5A381521
	for <usrp-users@lists.ettus.com>; Mon,  3 Jul 2023 10:52:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ODA8unuC";
	dkim-atps=neutral
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7672073e7b9so344909385a.0
        for <usrp-users@lists.ettus.com>; Mon, 03 Jul 2023 07:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688395963; x=1690987963;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9xPU7eT0wvWpht+2gmRgGoejmwlYxvQNA7rVb+ZWD1A=;
        b=ODA8unuC4l3ePse7CgIk67GvTO9v9FD/39OO/eeC4rLeOlZMovwt9NI10Musno3AKY
         PE3iUQjETYjGMd4dJwnE637rFlMRu78GKrrZjMG0QlOD1kt430P7n3bY/xsNo/ZTsFy4
         c3f1Yg8CVBQSEImGb1wf434Hp+m3ykdu23bqOsvLVNYu9cRhjDldnlhoDFbau3bKuvJL
         OY60ps+dq1hYzW1DaTktL7cf0VIdxAKiOMROwJLo3wL6S6BXzqRm0O/FpUTXAChJXuy5
         8UL8o1fGMwyGZ0HP+qR5RuNra/wNokEEJ+hmyefBpjIWsoSDk+pHygTPOUl3B4qEbKQk
         5ITw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688395963; x=1690987963;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9xPU7eT0wvWpht+2gmRgGoejmwlYxvQNA7rVb+ZWD1A=;
        b=Sr1kHjMZaOS9bj57o44V6tAg9QgeuvqjCoacNAkc4GaTI1GA9/pPblh5DElcA25YCQ
         PW18C5EgOpZxJsFiv1tgaz0ZyV6W9HUNldhWLhUd6KswWK8J1BL+CDXZsZlRmN4Zedil
         UrNaplCLiLqDlDJKZpYoQ6YoVKNCj85hlr2o/TVqnJLdd1wfKBjNMf64nmIch8JX+Niv
         aIY4AITi9RbbJxmeU4IcOZAo4M1q/MFa1GinlF6+JKaZuwme3bUwecLhw0tNNVofhPNT
         UsktND8B8sHkMbVSMHLlyWkpa/NYe/T1IE6JyOM+Mw3uik7tyiQSjrVHrWmcJO2aOVBc
         GylQ==
X-Gm-Message-State: ABy/qLahRm3MVZQMqpp5JjkCwfZN402mGPNGJQ2/sGmmi1HHp9TYi01n
	v/C/hMH0hkLA3vBMxLT+go0iJqcXaQw=
X-Google-Smtp-Source: APBJJlF1wNxKzyr5MsZ2RuRt7NJKKN3U8JoFC/U3V+eCacapqIrn2IEe+14WfLftdPowaa+kluJzAA==
X-Received: by 2002:a0c:ec04:0:b0:631:f49a:6d34 with SMTP id y4-20020a0cec04000000b00631f49a6d34mr8638576qvo.64.1688395963646;
        Mon, 03 Jul 2023 07:52:43 -0700 (PDT)
Received: from [192.168.2.198] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id dk13-20020a056214092d00b0061a68b5a8c4sm11473950qvb.134.2023.07.03.07.52.42
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 07:52:43 -0700 (PDT)
Message-ID: <8587005d-f1b8-1c5a-59df-096f27b43891@gmail.com>
Date: Mon, 3 Jul 2023 10:52:42 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <kFf4qJoUX2uUXYBbT85GAuuJlcy84bXx4n3aHvBR95w@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <kFf4qJoUX2uUXYBbT85GAuuJlcy84bXx4n3aHvBR95w@lists.ettus.com>
Message-ID-Hash: ALWDBD6CJLVVWQUIQQF5Q6B4XEKYB25S
X-Message-ID-Hash: ALWDBD6CJLVVWQUIQQF5Q6B4XEKYB25S
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Understanding time differences in rx_time
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ALWDBD6CJLVVWQUIQQF5Q6B4XEKYB25S/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMDcvMjAyMyAxMDoyNiwgam51bmV6QGN1ZC51dmlnby5lcyB3cm90ZToNCj4NCj4gVGhh
bmtzLCBNYXJjdXMuDQo+DQo+IEkgZG9u4oCZdCB3YW50IHRoZSBzaWduYWxzIHRvIGJlIHN5bmNo
cm9uaXplZCBhcyBJIGNhbiBhbGlnbiB0aGVtIGxhdGVyIA0KPiBieSBsb29raW5nIGF0IHRoZSBk
ZWxheSBpbmZvcm1hdGlvbiBmcm9tIHRoZSBUYWcgRGVidWcgYmxvY2suIEkgd2FudCANCj4gb25s
eSB0byBrbm93IHdoYXQgdGhlIOKAnDQgc2Vjb25kc+KAnSBtZWFucyBpbiB0aGUg4oCcS2V5OiBy
eF90aW1lIFZhbHVlOiB7NCANCj4gMC4wOTY0MDUyfeKAnQ0KPg0KPiBSZWdhcmRzLA0KPg0KPiBK
b3NlDQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQo+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tDQo+IFRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBs
aXN0cy5ldHR1cy5jb20NCkl0IG1lYW5zIHRoYXQgeW91ciB0d28gcmFkaW9zIHdlcmUgc3luY2hy
b25pemVkIGF0IGRpZmZlcmVudCANCnRpbWVzLS1iZWNhdXNlIHRoZWlyIGluaXRpYWxpemF0aW9u
IGlzIHNlcmlhbGl6ZWQgd2l0aGluIEdudSBSYWRpby4NCg0KQWdhaW4sIGlmIHlvdSBsb29rIGF0
IHRoZSBjb2RlIGdlbmVyYXRlZCBieSBHbnUgUmFkaW8geW91IGNhbiBzZWUgd2hhdCdzIA0KZ29p
bmcgb24uDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
ClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1
cy5jb20K

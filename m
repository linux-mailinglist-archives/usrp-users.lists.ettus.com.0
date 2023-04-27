Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DFD6F088D
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 17:43:47 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3DCFA38460B
	for <lists+usrp-users@lfdr.de>; Thu, 27 Apr 2023 11:43:46 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1682610226; bh=Jjkh+bgkx+ueh47j1IXKnM9QNud6AwLtKN0nu4lcJ1Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=mzmu2qJqXCy72LxDVRkqhaYpFWCgW6GmnvzDkMOZgr4WQj8Oca6DaCcbQMPmkKE2I
	 /k3cRd9hGFwXr6vVRMR52Ujo2sx+RvfcayOuCqSghfJGpf5Jibo78WVv3oEGUaocet
	 92YKtYOU8XVp4X9YvJJ+FjUgoKjo3Zmly0hIwbEJ6hx1BBifgDuwjFtYkeaELGhx8z
	 Jy/uwhaDKf2LSA7T14rhGPoQofGXgzD82swSlMYDo1B8cUE0BjZTPa5PgXtkVA12Er
	 1Irx/gnSskWtN02CIQ3/T4DJMUQpjol37tgRkwSwa5oAUbVfdy49ZDDL7LgS0LmCys
	 WDdc6cO2RHLxA==
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	by mm2.emwd.com (Postfix) with ESMTPS id C58DE383F2E
	for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 11:43:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Fwv3XtKh";
	dkim-atps=neutral
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-74e3899037cso377924585a.2
        for <usrp-users@lists.ettus.com>; Thu, 27 Apr 2023 08:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682610188; x=1685202188;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pSJqA31HbaVxXj2VXXsK9pu4YRExT1RKUEdpcHaQWCE=;
        b=Fwv3XtKhAdxWtC7cCfKC+O5iWdP5xvq6DK0gxkBaTzEfq601AmlGZ+F84IrOPYaYY8
         7H73FA0D5aJBcSVJa0osc5yq8/zm23IxzCFUXx15k43Bn4BnxmyzAb1USp3pvTNLKR3S
         XQp12DPwfGsHu0qz6OSpH6/L6Mdr+Dr8xIPg4c97HIzJHV/v/wG0lTcFSNTBoh9SzmR/
         Wm07KKP86IOVASGzylV1BMkTVmE4YYKhInZQ/vYjxc89ntvA1F0zKJF+/6wF1Pxo/hMN
         SaxyPF6yvjquspFXQHjwWMuG+QGZUi9kGiQtHLSTg8fNapPHiWYLOXWcdIV0KfQ2cCfE
         3EJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682610188; x=1685202188;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pSJqA31HbaVxXj2VXXsK9pu4YRExT1RKUEdpcHaQWCE=;
        b=KGwi392e+37MHLoi7Pmo/zy5LFeVHk9uNHzq/z7pdEHtNGgL/d7Bm30zFnpTXMkdhP
         KwZ2hlVpZe03tq+7t67lqL7HzhCeqUl2SfV9EEVbQdCSPzGW/C4yaGCJ0JG1MogFUV47
         qSLAl2unV6PHYZjShned7AFJl2mgV86AeD2LwThXS8ADNKTccHb3q9GbKBUXJ2V4FWoL
         HmfvKtJXP1+/qFkktCqoDkJr2fuzB1vuwqhMOoxEZRpfDu1ZpTASQC59naPSWqra6jAj
         L27l8xBwQFKwm8Fy44hZhDhlO0cuwH6eIeqcPOvA+pp1sD5LZum+cH/STHjDnAOlA4r0
         lLog==
X-Gm-Message-State: AC+VfDxtn9092wZkqFp0jpYOXr6tGp0Kgked+l2UqHFMY9VAQZFXRdON
	3Q3x0/azLltGxQYuPc8tns7KIGf2RzE=
X-Google-Smtp-Source: ACHHUZ7funZsbPOLY0+93y2J4x08xS1XfJhCfOIPO0LzYEd+xVuCvQNWfEurcHHWnjCMor107Bw/0A==
X-Received: by 2002:a05:6214:411:b0:5e8:5167:e254 with SMTP id z17-20020a056214041100b005e85167e254mr2652461qvx.42.1682610188053;
        Thu, 27 Apr 2023 08:43:08 -0700 (PDT)
Received: from [192.168.2.159] (bras-base-smflon1825w-grc-09-174-93-2-82.dsl.bell.ca. [174.93.2.82])
        by smtp.googlemail.com with ESMTPSA id c5-20020ac84e05000000b003e64303bd2dsm6262630qtw.63.2023.04.27.08.43.07
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Apr 2023 08:43:07 -0700 (PDT)
Message-ID: <91ce2669-7e6a-0ad5-3480-1eb5123f33ee@gmail.com>
Date: Thu, 27 Apr 2023 11:43:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <KuusbYeOPC0uF3pwfDrygj9wwhVFmS6jDsRuNn30lr0@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <KuusbYeOPC0uF3pwfDrygj9wwhVFmS6jDsRuNn30lr0@lists.ettus.com>
Message-ID-Hash: 74AREXXLPDR4HLAOBZSLLPEQYZWUHUHK
X-Message-ID-Hash: 74AREXXLPDR4HLAOBZSLLPEQYZWUHUHK
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N321 SFP streaming issues
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/74AREXXLPDR4HLAOBZSLLPEQYZWUHUHK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjcvMDQvMjAyMyAxMTozNiwgam1hbG95YW5AdW1hc3MuZWR1IHdyb3RlOg0KPg0KPiBJIHN0
aWxsIGdldCB0aGUgc2FtZSBlcnJvciBhZnRlciB1c2luZyANCj4gImFkZHI9MTkyLjE2OC4xMC4y
LG1nbXRfYWRkcj0xOTIuMTY4LjEuMTUxIg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1
c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWls
IHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpBcmUgeW91IGNlcnRhaW4gdGhh
dCB0aGUgVUhEIG9uIHlvdXIgaG9zdCBpcyBjb21wYXRpYmxlIHdpdGggdGhlIFVIRCBvbiANCnRo
ZSBOMzIxP8KgwqAgVGhleSBuZWVkIHRvIGJlIHRoZSBzYW1lIHZlcnNpb24uDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K

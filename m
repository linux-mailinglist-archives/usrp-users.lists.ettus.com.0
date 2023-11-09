Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8938B7E67C4
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 11:21:16 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3AB64384E80
	for <lists+usrp-users@lfdr.de>; Thu,  9 Nov 2023 05:21:15 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1699525275; bh=rdEGQSZXxHogu/dcsGwsnCH+RiPNDzN420eWzpAIozw=;
	h=Date:References:To:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=uOIunduS8z4tbvNn3AFYxenhAR8Q96l8Ktsay1xR44MQJGBwAjuHZ+xy+KB9HiwVW
	 U9oWepI7+/e/udTVmMWItl3JNBRGrylctdbIl6lyRYT04tWZ/7XyjSIpzmp2qRDkjL
	 h3JePP6tKeXCqD+C6yQGJPLV6TVcRO2r+Jq31P1rneZWidz5y9JAoc1bqNSJNmOA1+
	 cLdQoC1ksuPlSVK7SoRE+3JUWa5ZzQG2R4owD+NH1O/xyB4Vx+CLKfDmsUIl048v2V
	 MCTld2cqaPauGzs1wjgXFqIloEzhNYrOESLZsZslore4VBltf90i5t9Ez0oZC0BYcA
	 aSkPuiNK418IA==
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	by mm2.emwd.com (Postfix) with ESMTPS id 62045384E70
	for <usrp-users@lists.ettus.com>; Thu,  9 Nov 2023 05:21:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="ranP50jy";
	dkim-atps=neutral
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-9d2e6c8b542so111232066b.0
        for <usrp-users@lists.ettus.com>; Thu, 09 Nov 2023 02:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1699525263; x=1700130063; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:to:references
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u3Tb3+8Pv7Ixq1zJ82/z3mqCdfCW61svtHAG+4zovSA=;
        b=ranP50jyFfPy9CZJihQ9RQJ1NNp3GP0Nufiz+idKJZFBmSdUx+IhfKMR8LlQ+ioDhh
         lEQvlIisUeOkXLV/+m7EuHRn5kCpxY7dPencMgRCE/BAOKOezNySXQipesrVIfAHaKky
         fIgFuBHn5TxCZhnh90C9nK1tyAIPCc73A/MKKVcgo0LKBwHkfKOKU3jJXo7nSyhwskbD
         OJzwvG5wkSL9eYeNSx8Ob4nY8I8eEPyD/XN1p++fKjYUvUcTqDpNvKHQl5Jqfs0/OBQA
         XclTduHQoM7Ucvl9UCYJb0z6KhH4UGMrFVjnrU8tDevXYMch0mLPk1mw4+W67QZxt8Lz
         d9OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699525263; x=1700130063;
        h=content-transfer-encoding:in-reply-to:from:to:references
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u3Tb3+8Pv7Ixq1zJ82/z3mqCdfCW61svtHAG+4zovSA=;
        b=Mv/5Lx69HwMClgtxDYmae+bY9COpgE6oE2fO3rJkDK7HbxZ74hVI+2lduDo6LSJ7Sk
         H0KCjho+O8h1XpHiwgim9b+aVPttAVdl6U70TRXQBHVEDXWbZsMju4jAQ6hO8j1lsaA0
         UhmwblQ/3cQIE1//S3anxG7f15JkNpu4OVtglVr8Y0P3svTNKfzEpjm5xtgoBoJHojCu
         VT1q3U0UCS3XNRb6nCGLjUPnY+LOPJxq3esNRGYQiw6pCJ7X5ekKwfk4RJ3+swGrBnwl
         OEzne/9ReOp1u0KdaNxKoHClQzJ+tA+ofiZhZOI+1uumJ/ZDm4HMF53DAHEM0xIXJBep
         EZJA==
X-Gm-Message-State: AOJu0YxyUGzz3x7LyzCg7swuw7WZXFPmMiHGh9wDMc3YHqkmXmJZlgPh
	3HD/0yIIRgwPx8kLWd85FA/EwsIhLCXzfMK/5AfpfQ==
X-Google-Smtp-Source: AGHT+IHf6LyoM5jlaTKUMpRZGUx0d/0tcbMtOjIwv1wXaAhq71HaIS9E4qP3LaA7d8xe9emD6j2FSw==
X-Received: by 2002:a17:907:9494:b0:9d2:414c:b92 with SMTP id dm20-20020a170907949400b009d2414c0b92mr3860072ejc.68.1699525263490;
        Thu, 09 Nov 2023 02:21:03 -0800 (PST)
Received: from ?IPV6:2001:9e8:385e:4e00:10fc:1619:bea3:90d1? ([2001:9e8:385e:4e00:10fc:1619:bea3:90d1])
        by smtp.gmail.com with ESMTPSA id s3-20020a1709067b8300b009adc77fe164sm2352444ejo.66.2023.11.09.02.21.01
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 02:21:01 -0800 (PST)
Message-ID: <b05e3208-57b3-4d7b-87f2-a7cddcb19388@ettus.com>
Date: Thu, 9 Nov 2023 11:21:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
References: <85ad85a4-c918-4862-8791-b4a8fbad23c3@gnuradio.org>
To: usrp-users <usrp-users@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=C3=BCller?= <marcus.mueller@ettus.com>
In-Reply-To: <85ad85a4-c918-4862-8791-b4a8fbad23c3@gnuradio.org>
X-Forwarded-Message-Id: <85ad85a4-c918-4862-8791-b4a8fbad23c3@gnuradio.org>
Message-ID-Hash: M7WXGWBH36NXFQCS6HC6VQ7G3V44DJTQ
X-Message-ID-Hash: M7WXGWBH36NXFQCS6HC6VQ7G3V44DJTQ
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Fwd: [CfP] Software-Defined Radio and Amateur Radio Devroom 2024
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M7WXGWBH36NXFQCS6HC6VQ7G3V44DJTQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

RGVhciBVU1JQLXVzZXJzLA0KDQptYW55IG9mIHVzIGRvIGludGVyZXN0aW5nIHdvcmssIHByb2R1
Y2luZyBGcmVlIGFuZCBPcGVuIFNvdXJjZSBzb2x1dGlvbiB0byByYWRpbyAoYW5kIA0Kb3RoZXIh
KSBwcm9ibGVtcy4gU2hvdWxkIHlvdSBoYXBwZW4gdG8gZmVlbCB0aGUgbmVlZCB0byB0YWxrIGFi
b3V0IHdoYXQgeW91J3JlIGRvaW5nIGluIA0KcHVibGljOiBUaGF0IGNhbiBiZSBoZWxwZWQhDQpQ
bGVhc2Ugc3VibWl0IHlvdXIgdGFsayAoMjDigJMyNSBtaW4pIHByb3Bvc2FsIGZvciBGT1NERU0n
MjQ7IHNlZSB0aGUgZnVsbCBDYWxsIGZvciANClByZXNlbnRhdGlvbnMgYmVsb3cuDQoNCkJlc3Qs
DQpNYXJjdXMNCg0KLS0tLS0tLS0gRm9yd2FyZGVkIE1lc3NhZ2UgLS0tLS0tLS0NClN1YmplY3Q6
IFtDZlBdIFNvZnR3YXJlLURlZmluZWQgUmFkaW8gYW5kIEFtYXRldXIgUmFkaW8gRGV2cm9vbSAy
MDI0DQoNCkRlYXIgRnJpZW5kcyBvZiBGcmVlIGFuZCBPcGVuIFNvdXJjZSBSYWRpbyENCg0KRk9T
REVNIDIwMjQsIHRoZSBGcmVlIGFuZCBPcGVuIFNvdXJjZSBEZXZlbG9wZXLigJlzIE1lZXRpbmcg
dGFraW5nIHBsYWNlIGluDQpCcnVzc2VscywgQmVsZ2l1bSwgMy4gJiA0LiBGZWJydWFyeSAyMDI0
LCB3aWxsIG9uY2UgYWdhaW4gZmVhdHVyZSBhIHRyYWNrIG9uDQpGT1NTLXBvd2VyZWQgUmFkaW87
IHRoaXMgeWVhciwgdGhlcmUgd2lsbCBiZSBhIGNvbWJpbmVkIEFtYXRldXIgUmFkaW8gYW5kIFNE
Ug0KRGV2cm9vbToNCg0KaHR0cHM6Ly9mb3NkZW0ub3JnLzIwMjQvc2NoZWR1bGUvdHJhY2svcmFk
aW8vDQoNCkluIGNhc2UgeW91J3JlIHdvbmRlcmluZyB3aGF0IEFtYXRldXIgUmFkaW8gYW5kIFNv
ZnR3YXJlLURlZmluZWQgUmFkaW8gYXJlLCB3ZQ0KaGF2ZSBhIHNtYWxsIGludHJvZHVjdGlvbiBi
ZWxvdy4gU2VlIHRoZSAiUmVjb21tZW5kZWQgVG9waWNzIiBzZWN0aW9uIQ0KDQpXZSBpbnZpdGUg
ZGV2ZWxvcGVycyBhbmQgdXNlcnMgb2YgRnJlZSBTb2Z0d2FyZSBmcm9tIHRoZXNlIGZpZWxkcyBh
bmQgdG8NCmNvbnRyaWJ1dGUgdG8gdGhpcyBldmVudCBieSBwcmVzZW50aW5nIHRoZWlyIHByb2pl
Y3RzLCBpZGVhcyBhbmQgdGhlaXIgd29yay4NCg0KUGxlYXNlIHJlYWQgb3VyIENhbGwgZm9yIFBy
ZXNlbnRhdGlvbnMgYmVsb3c6DQpTZWUgeW91IGluIEJydXNzZWxzIQ0KDQpCYXN0aWVuLCBNYXJj
IGFuZCBNYXJjdXMNCg0KU3VibWl0IFlvdXIgUHJlc2VudGF0aW9ucyENCj09PT09PT09PT09PT09
PT09PT09PQ0KDQpUbyBzdWdnZXN0IGEgdGFsaywgZ28gdG8NCg0KaHR0cHM6Ly9wcmV0YWx4LmZv
c2RlbS5vcmcvZm9zZGVtLTIwMjQvY2ZwDQoNCiJTdWJtaXQgYSBwcm9wb3NhbCIgYW5kIGZpbGwg
aW4gdGhlIGZpZWxkczsgbWFrZSBzdXJlIGl0J3MgaW4gdGhlIFNvZnR3YXJlDQpEZWZpbmVkIFJh
ZGlvIGFuZCBBbWF0ZXVyIFJhZGlvIHRyYWNrIQ0KDQpDb250ZW50IGFuZCBTaGFwZSBvZiBQcmVz
ZW50YXRpb25zDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNClBsZWFzZSBh
aW0gZm9yIHlvdXIgdGFsayB0byBiZSAyMCB0byAyNSBtaW51dGVzIGxvbmcsIHdoaWNoIGxlYXZl
cyBlbm91Z2ggdGltZQ0KZm9yIHF1ZXN0aW9ucyAmIGFuc3dlcnMgd2l0aGluIGEgMzAgbWludXRl
IHNsb3QuIFNob3VsZCB5b3UgZGVmaW5pdGVseSBuZWVkDQptb3JlIHRpbWUsIHdlIGNhbiBjb21i
aW5lIHRpbWUgc2xvdHM7IGJ1dCBwbGVhc2UgcmVhY2ggb3V0IHRvIHVzIGJlZm9yZQ0Kc3VibWl0
dGluZyB5b3VyIG92ZXJsZW5ndGggdGFsayBwcm9wb3NhbCENCg0KVGhlIGZpbmFsIHNjaGVkdWxl
IHdpbGwgYmUgYXZhaWxhYmxlIHRocm91Z2ggUHJldGFseCBhbmQgdGhlIG9mZmljaWFsIEZPU0RF
TQ0Kd2Vic2l0ZS4gTm90aWNlIHRoYXQgdGhlIHJlZmVyZW5jZSB0aW1lIHdpbGwgYmUgQnJ1c3Nl
bHMgbG9jYWwgdGltZSAoQ0VUKS4NCg0KSW4gdGhlIFNvZnR3YXJlIERlZmluZWQgUmFkaW8gYW5k
IEFtYXRldXIgUmFkaW8gZGV2cm9vbSwgd2UgYXJlbuKAmXQgY29uc3RyYWluZWQNCnRvIGhvbGRp
bmcgc2xpZGVzaG93IHByZXNlbnRhdGlvbiDigJMgYnJpbmcgeW91ciBkZW1vLCB5b3VyIHByb3Rv
dHlwZSEgSG93ZXZlciwNCnNpbmNlIHRoaXMgaXMgYSBzb2Z0d2FyZSBjb21tdW5pdHkgY29uZmVy
ZW5jZSwgcGxlYXNlIHJlZnJhaW4gZnJvbSBvZmZlcmluZw0KbWFya2V0aW5nLXN0eWxlIHByZXNl
bnRhdGlvbnMuIEdpdmUgdGhlIHJhZGlvIGV4cGVydHMgc29tZXRoaW5nIHRvIGNoZXcgb24hIFdl
DQpsaWtlIHRoZSBuaXR0eS1ncml0dHkgdGVjaG5pY2FsIGRldGFpbHMuDQoNClRyYXZlbCBBaWQN
Ci0tLS0tLS0tLS0NCg0KSWYgeW91IGFyZSBhIHlvdW5nIHBlcnNvbiwgYW5kIGNhbm5vdCBhZmZv
cmQgdG8gdHJhdmVsIHRvIEJydXNzZWxzIGFuZCBzdGF5DQp0aGVyZSwgcGxlYXNlIGRvIGNvbnRh
Y3QgdXMgYXMgZWFybHkgYXMgcG9zc2libGUgd2l0aCBhbiBpdGVtaXplZCBlc3RpbWF0ZSBvZg0K
eW91ciBmaW5hbmNpYWwgbmVlZHMsIGFuZCByZW1hcmsgdGhhdCB5b3UndmUgZG9uZSBzbyBpbiB5
b3VyIHByb3Bvc2FsJ3MNCiJTdWJtaXNzaW9uIE5vdGVzIi4gVGhlIEludGVybmF0aW9uYWwgQW1h
dGV1ciBSYWRpbyBVbmlvbiBSZWdpb24gMSBoYXMNCmdlbmVyb3VzbHkgb2ZmZXJlZCB0byBhc3Np
c3QgZmluYW5jaWFsbHkgZm9yIHVwIHRvIHR3byBjb250cmlidXRvcnMuDQoNClJlY29tbWVuZGVk
IFRvcGljcw0KLS0tLS0tLS0tLS0tLS0tLS0tDQoNClRvcGljcyBkaXNjdXNzZWQgaW4gdGhlIGRl
dnJvb20gaW5jbHVkZSwgYnV0IGFyZSBub3QgbGltaXRlZCB0bzoNCg0KLSBTRFIgZnJhbWV3b3Jr
cyBhbmQgdGhlIHRvb2xzIHRoYXQgbWFrZSB0aGVtIHVzZWZ1bA0KLSBOZXcgU0RSLWJhc2VkIGRl
dmVsb3BtZW50cyBpbiBoYW0gcmFkaW8gbW9kZXMNCi0gQ2VsbHVsYXIvdGVsZWNvbSBzb2Z0d2Fy
ZQ0KLSBBbWF0ZXVyIHJhZGlvIG9wZXJhdG9yIHNvZnR3YXJlIHRvb2xpbmcNCi0gRnJlZSAvIE9w
ZW4gcmFkaW8gaGFyZHdhcmUNCi0gV2lyZWxlc3Mgc2VjdXJpdHkgcmVzZWFyY2gNCi0gRW50ZXJ0
YWluaW5nIHdpcmVsZXNzIGhhY2tzDQotIFNEUiAmIGhhbSByYWRpbyBpbiBtYXNzIGFuZCBoaWdo
ZXIgZWR1Y2F0aW9uDQotIFNhdGVsbGl0ZSwgc3BhY2VjcmFmdCBhbmQgaW50ZXJwbGFuZXRhcnkg
Y29tbXVuaWNhdGlvbg0KDQpTb2Z0d2FyZS1EZWZpbmVkIFJhZGlvIGlzIHRoZSB0ZWNobm9sb2d5
IG9mIGVuYWJsaW5nIHJhZGlvIHNpZ25hbHMgdG8gYmUNCnByb2Nlc3NlZCBhbmQgZ2VuZXJhdGVk
IGFsZ29yaXRobWljYWxseSzCoCB0eXBpY2FsbHkgd2l0aGluIGdlbmVyYWwgcHVycG9zZQ0KcHJv
Y2Vzc29ycywgYnV0IGFsc28gd2l0aGluIEZQR0FzIGFuZCBHUFVzOyBGcmVlIGFuZCBPcGVuIFNv
dXJjZSAoRk9TUykNClNvZnR3YXJlIFJhZGlvIGFsbG93cyB0aGVzZcKgIGFsZ29yaXRobXMgdG8g
YmUgaW5zcGVjdGFibGUgYW5kIGltcHJvdmFibGUuIFdpdGgNCnRoZSBhZHZlbnQgb2YgdWJpcXVp
dG91cyBJb1QsIHNreS1maWxsaW5nIHNhdGVsbGl0ZSBtZWdhY29uc3RlbGxhdGlvbnMgYW5kDQo1
Ry82RyBhcyBzdGFuZGFyZHMgZGVzaWduZWQgd2l0aCBjb21tZXJjaWFsIFNvZnR3YXJlIFJhZGlv
cyBpbiBtaW5kLCB3aXJlbGVzcw0KaXMgYW4gZXhwbG9kaW5nIGZpZWxkIG9mIGludGVyZXN0IGlu
IHRoZSBGT1NTIHJlYWxtLg0KDQpIYW0gUmFkaW8sIGFsc28ga25vd24gYXMgYW1hdGV1ciByYWRp
bywgaXMgbW9yZSB0aGFuIGp1c3QgYSBob2JieSBvcmJpdGluZyB0aGUNCnVzYWdlIG9mIHJhZGlv
IGNvbW11bmljYXRpb24g4oCTIGl0J3MgYSBwYXNzaW9uIHRoYXQgbWVyZ2VzIHRoZSByZWFsbXMg
b2YNCmVsZWN0cm9uaWNzLCBodW1hbiBpbnRlcmFjdGlvbiwgYW5kIGNvbW11bmljYXRpb24uIEF0
IGl0cyBjb3JlLCBoYW0gcmFkaW8gaXMNCmFib3V0IGVzdGFibGlzaGluZyBjb25uZWN0aW9uczog
d2l0aCBwZW9wbGUsIHdpdGggdGVjaG5vbG9neSwgYW5kIHdpdGggdGhlDQp3b3JsZCBhdCBsYXJn
ZS4gSXQgaXMgYSBmcmVlIGFuZCBvcGVuIGNvbW11bml0eSBlZmZvcnQgYXQgaGVhcnQhDQoNCklt
cG9ydGFudCBEYXRlcw0KPT09PT09PT09PT09PT09DQoNCi0gU3VibWlzc2lvbiBEZWFkbGluZTog
MS4gRGVjZW1iZXIgMjAyMw0KLSBBbm5vdW5jZW1lbnQgb2Ygc2VsZWN0ZWQgdGFsa3M6IDE1LiBE
ZWNlbWJlciAyMDIzDQotIENvbmZlcmVuY2U6IDMuICYgNC4gRmVicnVhcnkgMjAyNA0KDQpPcmdh
bml6ZXIncyBDb250YWN0cw0KPT09PT09PT09PT09PT09PT09PT0NCg0KLSBTb2Z0d2FyZS1EZWZp
bmVkIFJhZGlvICYgQW1hdGV1ciBSYWRpbyBNYXRyaXggU3BhY2U6DQogwqAgaHR0cHM6Ly9tYXRy
aXgudG8vIy8jZm9zZGVtMjAyNDpjMS51YmEuYmUNCi0gRGV2cm9vbSBDaGF0Og0KIMKgIGh0dHBz
Oi8vbWF0cml4LnRvLyMvI3Nkci1hbmQtaGFtLXJhZGlvLWZvc2RlbTI0OmdudXJhZGlvLm9yZw0K
LSBBbWF0ZXVyIFJhZGlvIFByb2dyYW0gQ29tbWl0dGVlOg0KIMKgIEJhc3RpZW4gQ2FiYXksIE9O
NEJDWSA8b240YmN5QHViYS5iZT4sIE1hcmMgQmFsbWVyLCBIQjlTU0IgPG1hcmNAbXN5cy5jaD4N
Ci0gU29mdHdhcmUtRGVmaW5lZCBSYWRpbyBQcm9ncmFtIENvbW1pdHRlZToNCiDCoCBNYXJjdXMg
TcO8bGxlciA8bW11ZWxsZXJAZ251cmFkaW8ub3JnPg0KDQpZb3UgY2FuIGFsc28gZmluZCB0aGlz
IGFubm91bmNlbWVudCBvbg0KaHR0cHM6Ly9nbnVyYWRpby5vcmcvbmV3cy8yMDIzLTExLTA4LUZP
U0RFTTI0LUNmUA0Kc2hvdWxkIHlvdSB3YW50IHRvIHNoYXJlIGl0Lg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlz
dCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVt
YWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tCg==

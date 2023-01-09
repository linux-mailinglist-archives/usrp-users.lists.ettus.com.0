Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD43D6625A6
	for <lists+usrp-users@lfdr.de>; Mon,  9 Jan 2023 13:32:15 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F1A8384163
	for <lists+usrp-users@lfdr.de>; Mon,  9 Jan 2023 07:32:14 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673267534; bh=29eVhLX0LbGpSW+Baku0eq6jyRSQ4GLgQ8zy3rR7Z0Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=TdeHBbKUI6flO7fxucPlD179GQAv098Fb/Wzaw2yd88AGgkmO7Sp+2eKaEr6V9Y0E
	 Ftq8VfSzgWYLqaQF0JbTdC9cQwVkLweqitC92v66Mt41MymSR04w+8D7SYLes5M7ND
	 Y4PB/jHJDY8x9P5shSGo/qwXDtlxaAJssoiEOnqtGYDOhim4eyNJMldyQ68s0zvR1I
	 LbxATM8hWaFwKp1b226ZMtoJVJaQT4/mdsmIXcu5wPrkFBTmYtocI5nZ2X6+NPLVdk
	 U9Y72j3VTq+wJPDL91IQk8oA+nYsAJcJ9voYTUhysmjF7nTTBHCc5Cs9h5kpdIwF+f
	 K94K4iiD981kA==
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	by mm2.emwd.com (Postfix) with ESMTPS id BB202383E74
	for <usrp-users@lists.ettus.com>; Mon,  9 Jan 2023 07:31:24 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="l1UGo9lC";
	dkim-atps=neutral
Received: by mail-ej1-f42.google.com with SMTP id ud5so19686484ejc.4
        for <usrp-users@lists.ettus.com>; Mon, 09 Jan 2023 04:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uD229prbuC6QSjV7fbZMUxrMe/UHi35q9g1VOtKam/o=;
        b=l1UGo9lCC2vCV+YqTXPDSufFvgATRSJ2Oy+Cs1okNKsB6k+z1YGtLwAZCWbGx5w3GY
         U2ZokWKeFl5X5xJ+y9szuLebqhB2eBafWeuGqsTSc+2y5Qe/aIvv3f5c2N/fBsI+Yx9K
         VqgXOWGVr+cXLQxmuK+mS1TPdV3irz8RHv+o3yTwwBw2nP/kvpOKZg7WBHl6TVQRPe7d
         NUAYr3jeADsy/PTP5LVbYQWkCvCjWGtpQ6PiWWhYmE9jMIh8WMkcSREwlXeuF7TNNhRg
         CGJsv/VDsFPogn1VefHn0sykSZ2DHfK3uUYvCabItzpr7IiSRnL8fHvRPttlF4j4JVE+
         fv6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uD229prbuC6QSjV7fbZMUxrMe/UHi35q9g1VOtKam/o=;
        b=KF3HCQZYqtKcyZeOnd0LRUXkqdpASO5OMYSK/XDPRGyJhXAj2U6gmT7uwQI4BZvZTZ
         KHvrmtN1qSsaz8tphkNZec484RJ/BpVyvgxEQas20G1bhMek65TTjB18PewCZxNE4hy8
         FR8TnTzIDoD6A3Iuw1LcpxpE2KgStKW1HvuczAo9vkWwWSOBHfdYvT8sx9tNrZMQauNa
         +fOXCVWEfzkbkm2HdXpI5piKTwZDbsGDcs23yDyt52yBk1x8WQ0zen5w3Jsqm4lEshBQ
         +JO3dZXBg23tr8wPPzy+MZyshHrP4N6SMNmsnECTjXGFrBV79pMFjrfhmLaVbvB1taPI
         446w==
X-Gm-Message-State: AFqh2koHuvQpSJLbyk50XjKcvXs3PAkiaXmsgP1KI1ya6b18kxK9+bNm
	QpDY9wBlygqYHGoL9N7A4VYKujnYQzSPZdEaohE=
X-Google-Smtp-Source: AMrXdXt8hacsWYENNuMhugvLMANTT8yyFx+hWyMXz3gWPOoD95J5MvjxtSiaKL5pp9y3aD/EfUJ+XQ==
X-Received: by 2002:a17:907:c70b:b0:7c0:e535:13fd with SMTP id ty11-20020a170907c70b00b007c0e53513fdmr57461160ejc.70.1673267483351;
        Mon, 09 Jan 2023 04:31:23 -0800 (PST)
Received: from ?IPV6:2001:9e8:3850:7200:998f:ca6a:6065:3212? ([2001:9e8:3850:7200:998f:ca6a:6065:3212])
        by smtp.gmail.com with ESMTPSA id e2-20020a170906314200b007c08439161dsm3673013eje.50.2023.01.09.04.31.22
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 04:31:22 -0800 (PST)
Message-ID: <89b2c244-5a8f-3ba6-7760-7880b6acf0e5@ettus.com>
Date: Mon, 9 Jan 2023 13:31:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <LTCaJgnaSprcXYj9GHoBEVHVIk8ttCpJsNE3YNX8@lists.ettus.com>
From: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
In-Reply-To: <LTCaJgnaSprcXYj9GHoBEVHVIk8ttCpJsNE3YNX8@lists.ettus.com>
Message-ID-Hash: QVYJLC362EY5KITMIPP6A5445BWCBYKJ
X-Message-ID-Hash: QVYJLC362EY5KITMIPP6A5445BWCBYKJ
X-MailFrom: marcus.mueller@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RX Channel out of range
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QVYJLC362EY5KITMIPP6A5445BWCBYKJ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCmNhbiB5b3Ugc2hhcmUgdGhlIG91dHB1dHMgb2YNCg0Kd2hpY2ggc2gNCndoaWNoIGJl
bmNobWFya19yYXRlDQp3aGljaCB1aGRfZmluZF9kZXZpY2VzDQoNCndpdGggdXM/IENvdWxkIHlv
dSBhbHNvIHRyeSB0byBzZWFyY2ggZm9yIGFueSAibGlidWhkLmRsbCIgb24geW91ciBzeXN0ZW0s
IGFuZCB2ZXJpZnkgdGhhdCANCm9ubHkgdGhlcmUncyBvbmx5IHRoZSBvbmUgdGhhdCB5b3UgZXhw
ZWN0IHRvIGJlIHRoZXJlPw0KDQpUaGUgcGVyc29uIGFjdHVhbGx5IGluIGNoYXJnZSBvZiBtYWlu
dGFpbmluZyB0aGUgVUhEIHBhY2thZ2UgZm9yIGFuYWNvbmRhIHdhcyBwcmV0dHkgDQpjZXJ0YWlu
IHRoYXQgdGhlIGJ1aWxkIG9mIHRoZSBVSEQgbGlicmFyeSB1c2VkIHdoZW4geW91IHJ1biBgYmVu
Y2htYXJrX3JhdGVgIGlzIG5vdCB0aGUgDQpvbmUgZnJvbSB0aGUgYW5hY29uZGEgcmVwbzsgc28s
IHRoZSBwcm9ibGVtIHBlcnNpc3RzIHRoYXQgZm9yIHNvbWUgcmVhc29uLCBhIHdyb25nIFVIRCAN
CmxpYnJhcnkgYmVpbmcgbG9hZGVkIGluc3RlYWQgb2YgdGhlIG9uZSB0aGF0IHlvdXIgYnVpbGQg
b3IgYW5hY29uZGEncyBidWlsZC4NCg0KQmVzdCByZWdhcmRzLA0KTWFyY3VzDQoNCkRJU0NMQUlN
RVI6IEFueSBhdHRhY2hlZCBDb2RlIGlzIHByb3ZpZGVkIEFzIElzLiBJdCBoYXMgbm90IGJlZW4g
dGVzdGVkIG9yIHZhbGlkYXRlZCBhcyBhIHByb2R1Y3QsIGZvciB1c2UgaW4gYSBkZXBsb3llZCBh
cHBsaWNhdGlvbiBvciBzeXN0ZW0sIG9yIGZvciB1c2UgaW4gaGF6YXJkb3VzIGVudmlyb25tZW50
cy4gWW91IGFzc3VtZSBhbGwgcmlza3MgZm9yIHVzZSBvZiB0aGUgQ29kZS4gVXNlIG9mIHRoZSBD
b2RlIGlzIHN1YmplY3QgdG8gdGVybXMgb2YgdGhlIGxpY2Vuc2VzIHRvIHRoZSBVSEQgb3IgUkZO
b0MgY29kZSB3aXRoIHdoaWNoIHRoZSBDb2RlIGlzIHVzZWQuIFN0YW5kYXJkIGxpY2Vuc2VzIHRv
IFVIRCBhbmQgUkZOb0MgY2FuIGJlIGZvdW5kIGF0IGh0dHBzOi8vd3d3LmV0dHVzLmNvbS9zZHIt
c29mdHdhcmUvbGljZW5zZXMvLg0KDQpOSSB3aWxsIG9ubHkgcGVyZm9ybSBzZXJ2aWNlcyBiYXNl
ZCBvbiBpdHMgdW5kZXJzdGFuZGluZyBhbmQgY29uZGl0aW9uIHRoYXQgdGhlIGdvb2RzIG9yIHNl
cnZpY2VzIChpKSBhcmUgbm90IGZvciB0aGUgdXNlIGluIHRoZSBwcm9kdWN0aW9uIG9yIGRldmVs
b3BtZW50IG9mIGFueSBpdGVtIHByb2R1Y2VkLCBwdXJjaGFzZWQsIG9yIG9yZGVyZWQgYnkgYW55
IGVudGl0eSB3aXRoIGEgZm9vdG5vdGUgMSBkZXNpZ25hdGlvbiBpbiB0aGUgbGljZW5zZSByZXF1
aXJlbWVudCBjb2x1bW4gb2YgU3VwcGxlbWVudCBOby4gNCB0byBQYXJ0IDc0NCwgVS5TLiBFeHBv
cnQgQWRtaW5pc3RyYXRpb24gUmVndWxhdGlvbnMgYW5kIChpaSkgc3VjaCBhIGNvbXBhbnkgaXMg
bm90IGEgcGFydHkgdG8gdGhlIHRyYW5zYWN0aW9uLiAgSWYgb3VyIHVuZGVyc3RhbmRpbmcgaXMg
aW5jb3JyZWN0LCBwbGVhc2Ugbm90aWZ5IHVzIGltbWVkaWF0ZWx5IGJlY2F1c2UgYSBzcGVjaWZp
YyBhdXRob3JpemF0aW9uIG1heSBiZSByZXF1aXJlZCBmcm9tIHRoZSBVLlMuIENvbW1lcmNlIERl
cGFydG1lbnQgYmVmb3JlIHRoZSB0cmFuc2FjdGlvbiBtYXkgcHJvY2VlZCBmdXJ0aGVyLg0KDQpP
biAwOS4wMS4yMyAwODoxOSwgaGVucnkucG93ZWxsLnh4QGdtYWlsLmNvbSB3cm90ZToNCj4NCj4g
SGVsbG8sIGFnYWluLg0KPg0KPiBNeSBzeXN0ZW0gaXMgNjRiaXQgYW5kIEkgbWFkZSB1aGQgaW5z
dGFsbGF0aW9uIGFnYWluIHdpdGhvdXQgYW5hY29uZGEgY29tcGx5aW5nIHdpdGggDQo+IOKAnEJ1
aWxkaW5nIGFuZCBJbnN0YWxsaW5nIFVIRCBmcm9tIHNvdXJjZeKAnSBmcm9tIGhlcmU6IA0KPiBo
dHRwczovL2ZpbGVzLmV0dHVzLmNvbS9tYW51YWwvcGFnZV9idWlsZF9ndWlkZS5odG1sDQo+DQo+
IFNvLCB3aGVuIGkgdHJ5IHVoZF9maW5kX2RldmljZXMsIGl0IHdvcmtzIG5vIHByb2JsZW0uDQo+
DQo+IEJ1dCB3aGVuIHRyeSDigJxiZW5jaG1hcmtfcmF0ZSAtLXR4X3JhdGU9NmU2IC0tcnhfcmF0
ZT02ZTbigJ0sIGdhdmUgbWUgdGhpcyBlcnJvcjogRXJyb3I6IA0KPiBMb29rdXBFcnJvcjogSW5k
ZXhFcnJvcjogbXVsdGlfdXNycDogUlggY2hhbm5lbCAxNzY4MjAzMTUxMzc3IG91dCBvZiByYW5n
ZSBmb3IgDQo+IGNvbmZpZ3VyZWQgUlggZnJvbnRlbmRzLg0KPg0KPiBUaGUgcHJvYmxlbSBpcyBz
YW1lLg0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVA
bGlzdHMuZXR0dXMuY29tCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMu
Y29tClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0
cy5ldHR1cy5jb20K

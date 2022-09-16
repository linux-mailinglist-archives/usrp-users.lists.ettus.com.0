Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D07D25BB466
	for <lists+usrp-users@lfdr.de>; Sat, 17 Sep 2022 00:33:03 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 64C82383064
	for <lists+usrp-users@lfdr.de>; Fri, 16 Sep 2022 18:33:02 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1663367582; bh=n34j/X5wfnQ9mqQlCU0F+0c7E+3vrf6VbKsFDVFnT8Q=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=N3du9gzaVr43T2PsFVXBfgd+2yVRx720rJOo2UANWzLrzsLfyp9j5PnUzzBLUk0T7
	 WuEqEM8LRP08cCQjGu1AW/mlcDVybVSA22JUJCuJvvJjJaS4+oQegA7Qsy5m6z3grG
	 MCU+pQDpxDs6r5tfSdUmCs6bSelO6gXps8fIGzk84LB+FGTorwAiu2n8PSRDAM47CS
	 x0XvlUtwOUJang35PCAFFSU/BT/9qmtEKiWOAKm1N2iVM3oQO7otunW0obhWX0kfWM
	 hLYag+92vnFTyUidCJy9MasMSckyUNH97VHV52rpW1iq+3UmHZsTCfD0TzPQHQ1Zrp
	 YyHvX0CY6es9w==
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by mm2.emwd.com (Postfix) with ESMTPS id 724FC3837B1
	for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 18:32:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="JsnhIpqY";
	dkim-atps=neutral
Received: by mail-qv1-f53.google.com with SMTP id m9so17715152qvv.7
        for <usrp-users@lists.ettus.com>; Fri, 16 Sep 2022 15:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=+lTuR1FACbJzk6T/limFBWyJpblznN7Tl020+oz/pAc=;
        b=JsnhIpqYFbwFJDIhWTLn+iPK6lEtRboFkHG36gb41BIsBkSiDl7gFUffOGONm3SGzS
         50o2Bh0RZ7b5rAkraLGlqoVgz8EZKA9gSSRSfEe6ty1F3fE8mSBbjusMSIaGxnd+/Avg
         smurkSGaeQ/b1waZuaUNz0KNkqANz7OQSn2KFh/4/C/UFj+uD2hOxadDqdY9Xh6mBM6B
         hp54sxZZJazliNr97ydGGv8Cx+l/p5zscv8SbnnSCMACwyEiFxxUzf5JOeQw+fJHGIgD
         fn5vNLCTz7WNZm6lmaPg18bFW/il/8EUmnh11HGqVjNZMvQh2GXxrR1plYcAWDWfFJLc
         KOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=+lTuR1FACbJzk6T/limFBWyJpblznN7Tl020+oz/pAc=;
        b=GuNYY5tBn4YpqUdF8UCDbH2CvAzQHEEQfSmyI2X4EPoJMSGA87uXGgacFg6670opLX
         SWWTZr0TOw6XQYdl61p5Ke5A7B7JACm9lVC6LeOSPRznhzAn5UUI2+Npm1AAJxZWDIBa
         fvcBPrWbCYpLMNMY1lB1Gx3rIec0qNKr83mjFMD5+joZWNG7Z2O/jCmhYg+rpNGFUE5G
         g27PqCntkevWRxcpDM8+wVo8JwheWXMSGw1xs5YVnQUb1Mq65t6onSlVVrKKzcgJPabQ
         D9p26Q8AUaxxHCpmglnK0TOv9lL1xbTVKbIccPBIWkz6g0ei6Tq95ADySbl8CyCrxHF5
         Kvhg==
X-Gm-Message-State: ACrzQf3ADqDCet72SliA01Vl7O45WamQLC5xcrvuJ/PnNgeep2SzzEui
	/O9QPiSwvV3u80EZrISEX4Ck8bAPy2k=
X-Google-Smtp-Source: AMsMyM68xwWUVbB4P1LgCC+4/PGHT41lydyBG/fXzP/QjJTosEgogtTv6BmAZf8CKX14zo0iOeEOXA==
X-Received: by 2002:ad4:5282:0:b0:4a9:b75a:e33a with SMTP id v2-20020ad45282000000b004a9b75ae33amr6179280qvr.67.1663367531597;
        Fri, 16 Sep 2022 15:32:11 -0700 (PDT)
Received: from [192.168.2.161] (bras-base-smflon1825w-grc-09-174-93-2-254.dsl.bell.ca. [174.93.2.254])
        by smtp.googlemail.com with ESMTPSA id t14-20020ac86a0e000000b0035cd6a4ba3csm1242923qtr.39.2022.09.16.15.32.10
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Sep 2022 15:32:10 -0700 (PDT)
Message-ID: <3b0c47f2-2a06-098e-948c-0669dd0149b6@gmail.com>
Date: Fri, 16 Sep 2022 18:32:10 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <9ZdwbYWn5GGU2xrnA1UQVyOGdie1Qww5zN4HOOPQ7g@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <9ZdwbYWn5GGU2xrnA1UQVyOGdie1Qww5zN4HOOPQ7g@lists.ettus.com>
Message-ID-Hash: QXEF763DXNGNOR7XFARN4I2YUKZMCJUC
X-Message-ID-Hash: QXEF763DXNGNOR7XFARN4I2YUKZMCJUC
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Question: maximum single channel sample rate on X410 with DPDK
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QXEF763DXNGNOR7XFARN4I2YUKZMCJUC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMjAyMi0wOS0xNiAxODoxOCwgcGVycGVyQG8yLnBsIHdyb3RlOg0KPg0KPiBSZWdhcmRpbmcg
ZGlmZmVyZW50IGNvbmZpZ3VyYXRpb25zIG9mIFBDcyB0aGF0IHBlb3BsZSBtaWdodCB1c2U6IGlm
IA0KPiBzb21lb25lIGNhbiBwYXkgYWJvdmUgMjZrICQgZm9yIFg0MTAgKG9yIHNpbWlsYXIgYW1v
dW50IG1vbmV5IGZvciBhbnkgDQo+IG90aGVyIFJGU29DIGJhc2VkIGJvYXJkIGF2YWlsYWJsZSBm
cm9tIHJldGFpbGVycykgaGUgcHJvYmFibHkgaXNu4oCZdCANCj4gZm9yY2VkIHRvIHJldXNlIGEg
cmFuZG9tIFBDIHRoYXQgaGUgaGFzIGF2YWlsYWJsZS4gSGUgcHJvYmFibHkgY2FuIA0KPiBwYWly
IGl0IHdpdGggYSBjdXN0b20gUEMgYnVpbHQgZnJvbSBwYXJ0cyB0aGF0IGFyZSBwcm92ZW4gdG8g
d29yayANCj4gc2VhbWxlc3NseSwgaW4gb3JkZXIgdG8gZ2V0IGFzIG11Y2ggcGVyZm9ybWFuY2Ug
ZnJvbSB0aGUgVVNSUCBhcyANCj4gcG9zc2libGUuIFRvIGtub3cgd2hhdCBhcmUgcHJvdmVuIGNv
bmZpZ3VyYXRpb25zIHRoYXQgd29ya2VkIGZvciANCj4gc29tZW9uZSBiZWZvcmUgaXMgcXVpdGUg
dmFsdWFibGUgYXMgaXQgc2F2ZSB0aW1lIGFuZCBoYXNzbGUuDQo+DQpZZXMsIEkgY2Fubm90IGRp
c2FncmVlLsKgwqAgQnV0IHBlcmZvcm1hbmNlIHF1ZXN0aW9ucyBjb21lIHVwIGhlcmUgYWxsIHRo
ZSANCnRpbWUsIGFuZCBpdCdzIG5vdCBhbHdheXMgcG9zc2libGUgdG8gZ2l2ZSBhIGdlbmVyaWMN
CiDCoCBhbnN3ZXIgYmVjYXVzZSBvZiB0aGUgZGl6enlpbmcgYXJyYXkgb2YgdmFyaWFibGVzLsKg
IFdoaWxlIHRoaXMgbWF5IA0Kbm90IGFwcGx5IGluIHlvdXIgcGFydGljdWxhciBzaXR1YXRpb24s
IHdlIG9mdGVuIGhlcmUNCiDCoCBnZXQgb3Blbi1lbmRlZCBxdWVzdGlvbnMgb2YgdGhlIGZvcm0g
IlRoZSBVU1JQIGNsYWltcyB0byBzdXBwb3J0IGEgDQpyYXRlIG9mIDxYPiwgYnV0IG15IGNvbXB1
dGVyIGNhbm5vdCBhY2hpZXZlIHRoYXQsIHBsZWFzZQ0KIMKgIHRlbGwgbWUgd2h5LiIgQW5kIHRo
ZXJlIGlzIG9mIGNvdXJzZSBubyBjbG9zZWQtZm9ybSBhbnN3ZXIuLi4uDQoNCj4gSW4gY2FzZSBh
bnlvbmUgaXMgaW50ZXJlc3RlZCBJIGNhbiBwcm92aWRlIG1vcmUgaW5mbyBhYm91dCBzcGVjcyBv
ZiANCj4gdGhlIGNvbXB1dGVyIChpLmUuIHRoZSBuZXR3b3JrIGNhcmQgdXNlZCBoZXJlIHdhcyBJ
bnRlbCAxMEcgMlAgWDUyMCkuDQo+DQpJZiB5b3UncmUgd2lsbGluZyB0byBzaGFyZSB0aGF0IG9u
IHRoaXMgZm9ydW0sIHRoYXQgd291bGQgbWF4aW1pemUgDQp1dGlsaXR5IGZvciB0aGUgZm9sa3Mg
d2hvIG1heSBiZSBoZWFkaW5nIGRvd24gdGhlDQogwqAgInJ1bm5pbmcgYW4gWDQxMCBhdCBtYXhp
bXVtIHJhdGVzIiByb2Fkd2F5IG9uIHRoaXMgZm9ydW0uDQoNCkkgcGVyc29uYWxseSBkb24ndCBo
YXZlIGFuIFg0MTAsIHNvIEknbSBvcGVyYXRpbmcgc29tZXdoYXQgaW4gdGhlIGRhcmssIA0KYW5k
IEkgY2VydGFpbmx5IGRvbid0IGhhdmUgYSBjb21wdXRlciBpbg0KIMKgIG15IGNvbGxlY3Rpb24g
dGhhdCBpcyByZWFsbHkgInVwIiB0byB0aGUgdGFzayBvZiBydW5uaW5nIGl0IGF0IGZ1bGwgDQpj
YXBhY2l0eSBpbiBlaXRoZXIgZGlyZWN0aW9uLi4uDQoNCg0KPiBCZXN0IFJlZ2FyZHMsDQo+IFBp
b3RyIEtyeXNpaw0KPg0KPg0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMt
bGVhdmVAbGlzdHMuZXR0dXMuY29tDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpVU1JQLXVzZXJzIG1haWxpbmcgbGlzdCAtLSB1c3JwLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVh
dmVAbGlzdHMuZXR0dXMuY29tCg==

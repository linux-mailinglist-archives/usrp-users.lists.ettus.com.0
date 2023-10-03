Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5F17B727D
	for <lists+usrp-users@lfdr.de>; Tue,  3 Oct 2023 22:31:15 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 91240384C2F
	for <lists+usrp-users@lfdr.de>; Tue,  3 Oct 2023 16:31:14 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1696365074; bh=zjLkSeN5Eem0H4LQk505f0He/T+fCc5Ux47h+IXnFnQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=JqRNhbxcBcUygKP+7L/ocIGUGINlgjGDiFyDSVpGl5w8JUBUAZcO+mmx7oe2agdWo
	 FZF9twc6ssOUuArcLZt01NenFVIIL85pJDJ2gDiwclxKzZfTjswPdu8db8GoxfX+Fq
	 UgEX8JCUVbpLuEaZoc6uGkmGyOnIzCvUt5pn4l3o7W+LB+iCnohNdOnHZJ5RPclztX
	 7J+BDhVToVA2IxN6aylJk1Ltvbai84fIu5vEWRDPGuqPlSo8rtyF8mNOOYr00e9BAk
	 iA1jTy0J7ja1gKw3r/tT9n5wOV5kvkMEslsoNlo1SlwCu7JFYlGZ7f8Y5S4AJdDeh+
	 JEOe/FpsfgUBg==
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id D611B3840C0
	for <usrp-users@lists.ettus.com>; Tue,  3 Oct 2023 16:30:17 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Egbk14cA";
	dkim-atps=neutral
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-66437c96caeso8991176d6.3
        for <usrp-users@lists.ettus.com>; Tue, 03 Oct 2023 13:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696365017; x=1696969817; darn=lists.ettus.com;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WC1Dw+cLkpoW6PLhq2eg/9cg0cGIle03x7oMKQsZwxI=;
        b=Egbk14cAOCTnuMYOddkay4kV/5R5oVJYWvp7AXhwuFV+C0DXQVmeaLMO69fpP/Tr5/
         Q9A9Y+GNn6P1R0QTUWUTx8dWo28UN7uMLxUCv82qijYs1HN/u4S+ZHadcnnLmtGIvtbO
         uIO+HFEA3ZiEAIf4MGFPbTfspA7js3XYQa9xPrp6g7l33leqElqcYjNEXLQaKks0ieci
         7b9reAVBdERRle2b4xP3QloejZo32UPlLrcKnXv2wpZFWLb2HnxhdvAsHdAfbINLlGaf
         wTdVTQ3mhD6fINMvsg7pIEKlgTka39SAgab+xRshJLXP9AEx5kxNC0KEICdzPzSaPx7J
         xvGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696365017; x=1696969817;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WC1Dw+cLkpoW6PLhq2eg/9cg0cGIle03x7oMKQsZwxI=;
        b=X8lMXFrw3iiayaxL7hpxyfGU9HVPz+CvKCanHJOi6c/UM1BQXyBlkjed6Wc7VJc9wg
         KadfQEqx1OTM5cYqmvKh+cRXCRREdEiHUD7HnjPpi9uQbZbYStjPEIdKOSXZSNURFo83
         HxeT+BcfbWfdfFp9rv3TYWAeht7o5POs4R1HpT40lnnf7I8bgitYkBE3I6Vi3oapHSB3
         Z7NTQjsNDQgpxfEUl/sglhwBKXb5MBSHe0arJIB5kK8riV3XtgnwACzRm+oKXe4IfsDh
         Dh2EtkpI/MdLlywCGUiFTIv1ByG3FDTsIBWG71kn3sM0u4tg7jU4VUs81c9ltlKxzA5S
         YCIg==
X-Gm-Message-State: AOJu0Yz5ADeKIwrgtQZ94MEuahQ0bMsygdxrqkOHqxPfdu8eV0uj20mJ
	7rU1rhdSljWTZ1Sku28v/DtIeKxwtss=
X-Google-Smtp-Source: AGHT+IFcFfNgmi58J0v0oIdIVdCBXD86fIZn0yaIesauow89MtuzoUQAfu6rcWbn8IpCXtOTQqmC/A==
X-Received: by 2002:a0c:8e45:0:b0:658:6f71:1920 with SMTP id w5-20020a0c8e45000000b006586f711920mr363251qvb.38.1696365017029;
        Tue, 03 Oct 2023 13:30:17 -0700 (PDT)
Received: from [192.168.2.134] (bras-base-smflon1825w-grc-08-174-93-1-40.dsl.bell.ca. [174.93.1.40])
        by smtp.googlemail.com with ESMTPSA id f25-20020a0caa99000000b0065aff6b49afsm768444qvb.110.2023.10.03.13.30.16
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 13:30:16 -0700 (PDT)
Message-ID: <54f648b9-2878-18f1-df86-c43102a09560@gmail.com>
Date: Tue, 3 Oct 2023 16:30:16 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <iz6i3QZ3RxYkBuUIXtqZR2mdcy8vyJE5mQWpNVx4AQ@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <iz6i3QZ3RxYkBuUIXtqZR2mdcy8vyJE5mQWpNVx4AQ@lists.ettus.com>
Message-ID-Hash: CWLRWTGWCEHNYYJ2ZL2P5VEQU26FSLKD
X-Message-ID-Hash: CWLRWTGWCEHNYYJ2ZL2P5VEQU26FSLKD
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210 Channel B control for GPIO
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CWLRWTGWCEHNYYJ2ZL2P5VEQU26FSLKD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gMDMvMTAvMjAyMyAxNDo1NCwgYmxha2ViYWxkd2luQHV2aWMuY2Egd3JvdGU6DQo+DQo+IEhl
bGxvLCBJIGFtIHJldmlzaXRpbmcgdGhpcyBpc3N1ZSBhZ2FpbiBpbiBob3BlcyBvZiBzb21lb25l
IHdpdGggbW9yZSANCj4gZmFtaWxpYXJpdHkgc2VlaW5nIGl0IHRoaXMgdGltZS4gVG8gcmVpdGVy
YXRlIG15IHByb2JsZW0sIEkgYW0gdHJ5aW5nIA0KPiB0byBnZXQgdGhlIEdQSU8gcGlucyBjb250
cm9sbGVkIGJ5IHRoZSBBVFIgdGllZCB0byB0cmFuc21pdHRpbmcgYW5kIA0KPiByZWNlaXZpbmcg
b24gZWl0aGVyIGNoYW5uZWwgQSBvciBjaGFubmVsIEIgb24gdGhlIFVTUlAgQjIxMC4gQ3VycmVu
dGx5IA0KPiBJIG9ubHkgaGF2ZSBpdCB3b3JraW5nIG9uIGNoYW5uZWwgQS4gSSBoYXZlIHRyaWVk
IGFsbCBvZiB0aGUgZnVuY3Rpb25zIA0KPiByZWxhdGVkIHRvIHRoZSBiYW5rcyBhbmQgc291cmNl
cyBhbmQgY2FuIG5vdCBmaW5kIGFuIG9wdGlvbiB3aGljaCANCj4gYWxsb3dzIG1lIHRvIGRvIHRo
aXMuIFdoZW4gdHJ5aW5nIHRvIHJ1biB0aGVzZSB0byBjaGFuZ2UgdGhlIHNvdXJjZXMsIA0KPiBv
ciBldmVuIHJ1bm5pbmcgdGhlIGdldF9ncGlvX3NyY3MsIGl0IHJlc3VsdHMgaW4gYW4gZXJyb3Ig
bWVzc2FnZS4gSSANCj4gZmVlbCBsaWtlIEkgYW0gbWlzc2luZyBzb21ldGhpbmcgd2l0aCBlaXRo
ZXIgdGhlIHNvdXJjZXMgb3IgYmFua3MgYnV0IA0KPiBJIGNhbiBub3QgZmlndXJlIG91dCB3aGF0
LiBBbnkgaGVscCBpcyBhcHByZWNpYXRlZCwgdGhhbmtzLg0KPg0KPg0KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBVU1JQLXVzZXJzIG1haWxpbmcg
bGlzdCAtLSB1c3JwLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPiBUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIHVzcnAtdXNlcnMtbGVhdmVAbGlzdHMuZXR0dXMuY29tDQpZb3UgbWlnaHQg
bG9vayBhdCB0aGUgImdwaW8uY3BwIiBleGFtcGxlIGluIHRoZSBzb3VyY2UgY29kZS4gU29tZXRo
aW5nIA0KdGhhdCBpdCBub3RlcyBvbiBteSBCMjEwIGhlcmUgaXMgdGhhdCAiZ2V0X2dwaW9fc3Jj
KCkiIGlzDQogwqAgbm90IGltcGxlbWVudGVkIGZvciB0aGVzZSByYWRpb3MuDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNlcnMgbWFpbGlu
ZyBsaXN0IC0tIHVzcnAtdXNlcnNAbGlzdHMuZXR0dXMuY29tClRvIHVuc3Vic2NyaWJlIHNlbmQg
YW4gZW1haWwgdG8gdXNycC11c2Vycy1sZWF2ZUBsaXN0cy5ldHR1cy5jb20K

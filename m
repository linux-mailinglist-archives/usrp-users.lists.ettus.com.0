Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6886D2A9E8F
	for <lists+usrp-users@lfdr.de>; Fri,  6 Nov 2020 21:28:02 +0100 (CET)
Received: from [::1] (port=58942 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kb8L0-0004AC-LF; Fri, 06 Nov 2020 15:27:58 -0500
Received: from mail-qk1-f171.google.com ([209.85.222.171]:35351)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kb8Kw-00044u-O4
 for USRP-users@lists.ettus.com; Fri, 06 Nov 2020 15:27:54 -0500
Received: by mail-qk1-f171.google.com with SMTP id 140so2322599qko.2
 for <USRP-users@lists.ettus.com>; Fri, 06 Nov 2020 12:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:in-reply-to:to;
 bh=X3/bT5c79DADDZTcU0jh1HeGH7ijLFWb3dYx6e5v9Fs=;
 b=ccxjiYR91HgcYu4QbA3KsjCQzGzDy6hpWqtSiD527344qnRT5WvwsWYtTCZbi2IguQ
 iuY9eScDtLzSrUuZbt/3tiUYorqSl5nqjGUbxFgWwaVzTsJ/Wc/JZUnHEJSbjkdMjJFc
 Kr86rt6GHKyGV5UwYE6mYuObSbUcT5DZq8eZppMe74XjF8UrAMA1jYzdZA8VREx2YZTr
 o2amPLSrpIQuXLsgVxmud9ndrV8hkgvmDPxH72N+a3ZKti3EeJLaj2R1+G5k45ScK784
 +lSBbumEVKisrfppeJ5etyTiXHsgZ/e+6eSaJmBthiQBQaki0ZodWgIRNjq+URyxjHqF
 uD9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:in-reply-to:to;
 bh=X3/bT5c79DADDZTcU0jh1HeGH7ijLFWb3dYx6e5v9Fs=;
 b=ZUi+KbYU6hZvKg3DjC4jFkTd19oKFSrW/LrypZ1XX+J/OFsWMTo1CaPE5XzPXF2p1X
 hOtLseQJwYMjmDmIaNMM7MvaU7S52GYRnzph46I7AsCZt6azsvOp+A6kpwgWAw4hY6Xl
 FjQ043YohQ1oWMrfq/wFBYsjgPy6TXwTm3E02M/ua2tjP0FfUqO6TdX2d+szaCMwHtZo
 o8x+9U1fGIF+GnL5Ppby43pJeATBsQqCuNWSYvs6K4KCTZ45XiJZpOhu5boBrIAk/VNT
 crpY31zAnMRWBgx/7vG0R0En8JeJaD9j1tibByjhr43N0nwQLs7tlK34kA7T3Pypx0Sy
 Dz+g==
X-Gm-Message-State: AOAM530qF+fb4H2e1xQJb3og1n5JWxn67GbotROHHty7sHBLrY3U+258
 2l9MaEiCwS3bP+ZA8zpKRGCMeJWFgGo=
X-Google-Smtp-Source: ABdhPJyUmeXBs9Wa8fCkH20nAkVlMP9xugRlR7eZexw51ZcfHWrP7m1BHlYJrSVkCmNqDwuPXZtiHA==
X-Received: by 2002:a37:7e82:: with SMTP id z124mr3317646qkc.107.1604694434011; 
 Fri, 06 Nov 2020 12:27:14 -0800 (PST)
Received: from [192.168.0.176] (d24-146-32-64.commercial.cgocable.net.
 [24.146.32.64])
 by smtp.gmail.com with ESMTPSA id z1sm907244qtz.46.2020.11.06.12.27.13
 for <USRP-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Nov 2020 12:27:13 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Fri, 6 Nov 2020 15:27:12 -0500
Message-Id: <9049DD8E-FAAD-4C99-BD76-2774B14BBE8B@gmail.com>
References: <5FA1BD42.50500@gmail.com>
In-Reply-To: <5FA1BD42.50500@gmail.com>
To: USRP-users@lists.ettus.com
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] N320 inverted spectrum when tuned below 450 MHz
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

UiZEIGRpZCBzb21lIHRlc3RpbmcgYW5kIGluZGVlZCBhdCBsZWFzdCBpbiBVSEQgNC4wIHRoZSBz
cGVjdHJ1bSBpcyBpbnZlcnRlZC4gCgpIb3BlZnVsbHkgYSBmaXggd2lsbCBiZSBhdmFpbGFibGUg
c29vbiBub3cgdGhhdCBpdCBpcyBjb25maXJtZWQuIAoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBP
biBOb3YgMywgMjAyMCwgYXQgMzoyNyBQTSwgTWFyY3VzIEQuIExlZWNoIDxwYXRjaHZvbmJyYXVu
QGdtYWlsLmNvbT4gd3JvdGU6Cj4gCj4g77u/T24gMTEvMDMvMjAyMCAwMjo1NCBQTSwgSmFzb24g
Um9laG0gdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4+IAo+Pj4gT24gMTAvMTQvMjAgMjo0MSBQTSwg
TWFyY3VzIEQuIExlZWNoIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+Pj4gT24gMTAvMTQvMjAyMCAw
MToyOCBQTSwgSmFzb24gUm9laG0gdmlhIFVTUlAtdXNlcnMgd3JvdGU6Cj4+Pj4gSSBoYXZlIGFu
IE4zMjAgdGhhdCBJJ20gdHJ5aW5nIG91dCBmb3IgdGhlIGZpcnN0IHRpbWUuIEknbSB1c2luZyBV
SEQgNC4wLjAsIGFuZCBJIGxvYWRlZCB0aGUgY29ycmVzcG9uZGluZyByb290IGZpbGVzeXN0ZW0g
ZGF0YSBmb3IgdGhhdCByZWxlYXNlIHRvIHRoZSBOMzIwLiBJIGZpbmQgdGhhdCB3aGVuIHRoZSBy
ZWNlaXZlciBpcyB0dW5lZCB0byBmcmVxdWVuY2llcyBiZWxvdyA0NTAgTUh6LCB0aGUgc3BlY3Ry
dW0gaXMgaW52ZXJ0ZWQuIFdoZW4geW91IHR1bmUgdG8gNDUwIE1IeiBvciBhYm92ZSwgdGhlIHNw
ZWN0cnVtIGlzIHVwcmlnaHQgYXMgZXhwZWN0ZWQuIFNlZSB0aGUgYXR0YWNoZWQgc2NyZWVuc2hv
dHMgZm9yIGV4YW1wbGUgc3BlY3RyYWwgcGxvdHMuCj4+Pj4gCj4+Pj4gVGhlcmUgYXJlIHNldmVy
YWwgQVRTQyBzaWduYWxzIHZpc2libGUgaW4gdGhlIHNwZWN0cnVtLiBJIHNpbXBseSB1c2VkIGFu
IGluZG9vciBhbnRlbm5hLCBzbyB0aGVyZSBpcyBhIGxvdCBvZiBtdWx0aXBhdGggb24gdGhlIHNp
Z25hbHMgY2F1c2luZyB0aGVpciBzcGVjdHJhIHRvIGJlIHZlcnkgbm9uLWZsYXQsIGJ1dCB0aGUg
dGVsbHRhbGUgc2lnbiBvZiBzcGVjdHJhbCBpbnZlcnNpb24gaGVyZSBpcyB3aGVyZSB0aGUgcGls
b3QgdG9uZSBpcyBhcHBlYXJpbmcgb24gZWFjaCBvbmUuIEluIHRoZSBmaXJzdCBwbG90LCB0dW5l
ZCB0byA0NDAgTUh6LCB0aGV5IGFwcGVhciBvbiB0aGUgcmlnaHQgb2YgZWFjaCBzaWduYWw7IHRo
aXMgaXMgbm90IHdoZXJlIHRoZXkgc2hvdWxkIGJlLiBXaGVuIHlvdSB0dW5lIHRvIDQ1MCBNSHos
IHRoZSBsb2NhdGlvbiBvZiB0aGUgc2lnbmFscyBmbGlwIHRvIHRoZSByaWdodCBoYWxmIG9mIHRo
ZSBwbG90LCBhbmQgdGhlIHBpbG90IHRvbmUgaXMgb24gdGhlIGxlZnQsIHdoZXJlIHRoZXkgYmVs
b25nLgo+Pj4+IAo+Pj4+IElzIHRoaXMgYSBrbm93biBpc3N1ZT8KPj4+PiAKPj4+PiBUaGFuayB5
b3UuCj4+Pj4gCj4+Pj4gSmFzb24KPj4+IEknbSBkaXNjdXNzaW5nIHRoaXMgd2l0aCBSJkQgcmln
aHQgbm93LiAgSXQncyAqY29uY2VpdmFibGUqLCBiZWNhdXNlIHRoZXJlJ3MgYW4gZXh0cmEgbWl4
ZXIgc3RhZ2UgaW4gdGhlIGJlbG93LTQ1MC1taHogcGF0aHdheSwgYW5kIHRoYXQKPj4+ICBtaXhl
ciBzdGFnZSB1c2VzICJoaWdoIHNpZGUiIExPIGluamVjdGlvbiwgd2hpY2ggd291bGQgcHJvZHVj
ZSBhbiBpbnZlcnRlZCBzcGVjdHJ1bSwgYnV0IHRoZSBGUEdBIHdvdWxkICJrbm93IiB0aGlzIGFu
ZCBpbnZlcnQgaXQgYmFjay4uLgo+Pj4gCj4+IE1hcmN1cywKPj4gCj4+IERpZCB5b3UgZXZlciBn
ZXQgYW55IHJlc29sdXRpb24gb24gdGhpcyBpc3N1ZT8KPj4gCj4+IEphc29uCj4+IAo+PiAKPiBJ
J3ZlIHJhaXNlZCB0aGUgaXNzdWUgd2l0aCBSJkQsIGJ1dCBub3QgaGVhcmQgYmFjay4gIEknbSBo
YW1wZXJlZCBieSBub3QgaGF2aW5nIGFuIE4zMjAgaW4gbXkgb3duIGxhYiB0byB0ZXN0IHRoaXMu
Cj4gCj4gUHJlc3VtYWJseSwgdGhlIGlzc3VlIHlvdSBzZWUgaXMgdmVyc2lvbiBpbmRlcGVuZGVu
dD8KPiAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fClVTUlAtdXNlcnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0
dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0
dHVzLmNvbQo=

Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA8A2BFE35
	for <lists+usrp-users@lfdr.de>; Mon, 23 Nov 2020 03:40:47 +0100 (CET)
Received: from [::1] (port=42848 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kh1mX-0004Xn-9l; Sun, 22 Nov 2020 21:40:45 -0500
Received: from mail-qv1-f49.google.com ([209.85.219.49]:34453)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kh1mT-0004OB-QW
 for USRP-users@lists.ettus.com; Sun, 22 Nov 2020 21:40:41 -0500
Received: by mail-qv1-f49.google.com with SMTP id u23so8132373qvf.1
 for <USRP-users@lists.ettus.com>; Sun, 22 Nov 2020 18:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=aPac19UkjSXdxdvjN4sy98phhIoz1b45527AQbIjXOU=;
 b=klJwk8RtukzfnLNFATMV91CRlvzblaDMicwCSNzKFKkzdU5uvW3Fe3bUdD6ig1+Llx
 jKBlDT+0naH8eFIIccb4YNc8R7cjuzzXyWNrZZNTI+Q9aM0JB5M71BSxn6KCBTzseEmi
 jaa3oJY0eunnJi/NJrN5L25tOnFEzWLRqSR9O6viVTaxUqOqNZSQT98lpty/vPWo8W69
 j+VJaYDBYEiRtA/l3sX0sySo+KNRGs9xwdOmhAn+4RL+qTEboF97wVgfEJ+3FBJb6uOq
 jrAb1/IQN36zvjK33BbAMzf5IdT7i2u5Rj04SA+g09FXN6YE4Y/rNqwvcrG+17h9ZItm
 u8jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=aPac19UkjSXdxdvjN4sy98phhIoz1b45527AQbIjXOU=;
 b=OTou1YzZ0jj8toGa70sfrKlMd5CVHH/lpD/LP9XNYmfafSqbzHiOcj2AREdRIBefWe
 GNPiwIfLZJtXFu940OWIsDXPrxwMkz2EULk6fynPpoPCqegYDQQbwoiZovg2sMO/AHyp
 ccv5WWAtRpmUTAxcbUYx0gCVdin9UJyhR37kxbMez209OqjSF5+Zbdm68hPDlEh9mkPQ
 YlaDwdMI2OgEoeWG7NMW2n7weLdggCOvY8T3ifBIiQI26ojUUzlU9B6YAhKxeOz8/GzF
 3QcT3pUZLXLjhE1MNuH2djmBTQu4aBAVZi2jQo+b+DYHBtOxqr1it+0uqmZv0FqBfXWZ
 h9/w==
X-Gm-Message-State: AOAM530VdT5820lekJQJNGpmyVtgiemoV5bOxDJ0Pt8Fx52iv6Ts7R0/
 AQW2YMaIhW8KQc5tNE45cdY=
X-Google-Smtp-Source: ABdhPJzQtsMD3r7Bqj8VGGKwN3RLt6o2UwA/mU+bv4djb/O02Ut0n2mGb8gTIgLsHefax6qV6hKjqA==
X-Received: by 2002:a0c:9b82:: with SMTP id o2mr27171358qve.44.1606099201028; 
 Sun, 22 Nov 2020 18:40:01 -0800 (PST)
Received: from [192.168.2.130]
 (bras-base-smflon1825w-grc-05-174-88-53-7.dsl.bell.ca. [174.88.53.7])
 by smtp.gmail.com with ESMTPSA id e22sm7859190qtq.38.2020.11.22.18.40.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 22 Nov 2020 18:40:00 -0800 (PST)
Mime-Version: 1.0 (1.0)
Date: Sun, 22 Nov 2020 21:39:59 -0500
Message-Id: <D30FF576-A476-4AF6-BB8B-109DAB263461@gmail.com>
References: <CAEnX9dG87HxLnGoNeeEgK+QBYcB7idJnN4A715BzPye_4XYT2Q@mail.gmail.com>
Cc: Discuss-gnuradio@gnu.org, USRP-users@lists.ettus.com
In-Reply-To: <CAEnX9dG87HxLnGoNeeEgK+QBYcB7idJnN4A715BzPye_4XYT2Q@mail.gmail.com>
To: Joe Crossen <jmcrossen80@gmail.com>
X-Mailer: iPhone Mail (18A8395)
Subject: Re: [USRP-users] Poor Data Rates with the USRP E312
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

VGhlIEUzMXggc2VyaWVzIHJlYWxseSBhcmUgaW50ZW5kZWQgZm9yIGFwcGxpY2F0aW9ucyB3aGVy
ZSBhbGwgdGhlIGhpZ2ggc2FtcGxlIHJhdGUgc3R1ZmYgaGFwcGVucyBpbiB0aGUgRlBHQS4gCgpU
aGUgQVJNIGNwdSBpcyBvbmx5IGR1YWwgY29yZSBhbmQgcnVucyBhdCB1bmRlciAxR2h6LiAKClRo
ZSBzY2VuYXJpbyB5b3UgZGVzY3JpYmUgaXMgYSBsb3QgbGlrZSB3aGF0IHdlIHVzZWQgdG8gY2Fs
bCDigJxuZXR3b3JrIG1vZGXigJ0gZm9yIHRoZSBFMzF4LCBhbmQgaXQgd2FzIG5ldmVyIHJlY29t
bWVuZGVkIGZvciB0aGF0IHR5cGUgb2Ygc2NlbmFyaW8uIAoKCgoKClNlbnQgZnJvbSBteSBpUGhv
bmUKCj4gT24gTm92IDIyLCAyMDIwLCBhdCA5OjIxIFBNLCBKb2UgQ3Jvc3NlbiB2aWEgVVNSUC11
c2VycyA8dXNycC11c2Vyc0BsaXN0cy5ldHR1cy5jb20+IHdyb3RlOgo+IAo+IO+7vwo+IEhpIGFs
bCwgCj4gCj4gSSdtIGF0dGVtcHRpbmcgdG8gdXNlIHRoZSBVU1JQIEUzMTIgYXMgYSB3aWZpIG5v
ZGUgdXNpbmcgdGhlIGdyLWllZWU4MDIuMTEgbW9kdWxlLi4uIAo+IHRob3VnaCBmb3Igbm93IEkn
bSB0ZXN0aW5nIGJhc2ljIFVTUlAgZnVuY3Rpb25hbGl0eSB3aXRoIGEgY291cGxlIG9mIHNpbXBs
ZSBHTlUgZ3JhcGhzLiAKPiAKPiBIZXJlJ3MgbXkgc2V0dXA6Cj4gLSB0aGUgaG9zdCBpcyBhbiBV
YnVudHUgMTguMDQgdmlydHVhbCBtYWNoaW5lIHdpdGggYSBicmlkZ2VkIGFkYXB0b3IuIEZpcmV3
YWxsIGRpc2FibGVkLiAKPiAtIHRoZSBVU1JQIGlzIHRoZSBFMzEyLCBjb25uZWN0ZWQgdmlhIGV0
aGVybmV0IHRvIHRoZSBob3N0IG5ldHdvcmsuICAKPiAtIHRoZSBob3N0IGFuZCBVU1JQIGFyZSBi
b3RoIHJ1bm5pbmcgR1IzLjggYW5kIFVIRDQuMCAoWmV1cyBicmFuY2gpLiAKPiAtIHRoZSBob3N0
IGNhbiBzZWUgdGhlIFVTUlAgd2l0aCB1aGRfdXNycF9wcm9iZS4KPiAtIHRoZSBVU1JQIGlzIHJ1
bm5pbmcgdGhlIGZvbGxvd2luZyBHTlUgZ3JhcGggLSBVSEQ6VVNSUCBTb3VyY2UgLT4gVURQIFNp
bmsuCj4gLSBob3N0IGlzIHJ1bm5pbmcgdGhlIGZvbGxvd2luZyBHTlUgZ3JhcGggLSBVRFAgU291
cmNlIC0+IFFUIEdVSSBTaW5rLgo+IC0gYWxsIGJsb2NrIHBhcmFtZXRlcnMgYXJlIGRlZmF1bHQu
Cj4gCj4gSSdtIGV4cGVyaWVuY2luZyB0aGUgZm9sbG93aW5nIGlzc3VlczoKPiAxLiBGb3Igc2Ft
cGxlIHJhdGVzID4gfjJNc3BzLCB0aGUgVVNSUCBzcGFtcyBvdmVycnVuICJPIiBhbmQgIkQiIGNo
YXJhY3RlcnMgKHdoYXQgZG9lcyB0aGUgIkQiIHNpZ25pZnk/KSAsIHJlZ2FyZGxlc3Mgb2Ygd2hl
dGhlciB0aGUgaG9zdCBncmFwaCBpcyBydW5uaW5nIG9yIG5vdC4KPiAyLiBBdCBhbnkgc2FtcGxl
IHJhdGUgdGhlIGhvc3QgZ3JhcGggc3BhbXMgdGhlIGZvbGxvd2luZyBtZXNzYWdlICh3aGVuIHRo
ZSBVU1JQIGdyYXBoIGlzIHJ1bm5pbmcpIC0gImdyOjpsb2cgOldBUk46IHVkcF9zb3VyY2UwIC0g
VG9vIG11Y2ggZGF0YTsgZHJvcHBpbmcgcGFja2V0LiIKPiAKPiBBbmQgYSBxdWVzdGlvbjoKPiAz
LiBXaGF0IHNhbXBsZSByYXRlcyBhcmUgcmVhbGlzdGljIGZvciB0aGlzIHNldHVwLCBhbmQgd2hh
dCBhcmUgdGhlIGxpbWl0YXRpb25zPyB3aWZpIGNoYW5uZWxzIHNwYW4gMjBNSHosIHNvIEknbSBo
b3BpbmcgdG8gcnVuIGF0IDIwTXNwcwo+IAo+IFRoYW5rcywKPiBKb2UKPiAKPiAKPiAKPiAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IFVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0Cj4gVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KPiBodHRwOi8vbGlz
dHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19saXN0cy5ldHR1cy5jb20K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fClVTUlAtdXNl
cnMgbWFpbGluZyBsaXN0ClVTUlAtdXNlcnNAbGlzdHMuZXR0dXMuY29tCmh0dHA6Ly9saXN0cy5l
dHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3JwLXVzZXJzX2xpc3RzLmV0dHVzLmNvbQo=

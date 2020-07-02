Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB8E213036
	for <lists+usrp-users@lfdr.de>; Fri,  3 Jul 2020 01:42:33 +0200 (CEST)
Received: from [::1] (port=38994 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jr8qZ-000068-QA; Thu, 02 Jul 2020 19:42:27 -0400
Received: from mail-qt1-f180.google.com ([209.85.160.180]:32994)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jr8qV-0008T9-T0
 for usrp-users@lists.ettus.com; Thu, 02 Jul 2020 19:42:23 -0400
Received: by mail-qt1-f180.google.com with SMTP id h23so22742916qtr.0
 for <usrp-users@lists.ettus.com>; Thu, 02 Jul 2020 16:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to:content-transfer-encoding;
 bh=Yfq3+75vWPsB5Q18ffI2zFv1PxSeX5/UZZIcl4m3CTw=;
 b=EKgkPUHBZoNpNaj6cvqdBRG3xQQHQN5m855EgcgPr0sVyFGVAoCiQwys3nbUt9tKjy
 UN9VOlfpYez7SJYE34PDMXt2HWXbVNRHcqA0+L6keMOykGd667GiRh5foRtIEEKu5JkP
 29fCIynGajRbM4SE4gfC/A2ZK3ZGUiQj8n0acZ7PYWTq0eTfX0JPl5rnXfGNfncCK8GA
 vUWhh+gw58ZQUjdO/Ue45qLux2qrqhRxUUM4G30B87Nn9kS42/jQpPTzkjMBlI0xW6Dq
 2cLQu4G/rvskLkNdn1o8JrFYtdwyRmw8iXP4dgodnaQ3OUi2/1AFSH3EqZdWjwpG5845
 6iFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to:content-transfer-encoding;
 bh=Yfq3+75vWPsB5Q18ffI2zFv1PxSeX5/UZZIcl4m3CTw=;
 b=MBNRe6mPSCABF60Nqk9+zT2NpYxMg3vVbXPLS3STj5BrU9xZ0lcGe84JcF4zs76M9G
 r1AkFVdPzVpYI3yCxOXRRUt29mt/VgFZxKMdEMeptclPwycnA+yT5kiUew8iQuNQn+Rh
 LzgeInl4u7fO6135lNSApA3Sxls09gX9nNNBMvz5J99W/smZn3kxm2DQb0EBeGwbp1hn
 U1GelGNiu4f6w03MR1Wu96NSdloqKzA56Fx+jbYEZRL3+IHC/PWPs3GMZ2cXWcqd2tx0
 uI34kjFSY+4ZmhDGy/CGKJ3OvN7FthAYga1+a11ze7biCb4xAOq06KdnLlfYBegWd13I
 cMLw==
X-Gm-Message-State: AOAM531ZQKt3RqJskpdd7ukItxaDE5iKiNN4OYnHMqXgO9UKkA60IIRP
 OeA9oRFxHNfNdGxWAm7B5mOYfnvT
X-Google-Smtp-Source: ABdhPJxS9PLd4noKP+aGE/fX/k1GV+lU+Y/vybN2Wk49wr/7Ko6QQCTptQ3vKPSBnCj1dLR6PSzs1A==
X-Received: by 2002:ac8:2bab:: with SMTP id m40mr5646712qtm.50.1593733303117; 
 Thu, 02 Jul 2020 16:41:43 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id y143sm9789274qka.22.2020.07.02.16.41.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Jul 2020 16:41:42 -0700 (PDT)
Message-ID: <5EFE70AD.9010305@gmail.com>
Date: Thu, 02 Jul 2020 19:41:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Nando Pellegrini <i1ndp.nando@gmail.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <dd50baf6-aabd-1ce3-1014-f8ae91e4c969@gmail.com>
 <5EFB5394.2070507@gmail.com> <5b3b4166-d933-a37a-6766-07fac0f8429e@gmail.com>
 <5EFB6064.6090005@gmail.com> <16be290f-cbed-0bdb-f8d6-dd14bb4a44f0@gmail.com>
 <5EFB8617.4020009@gmail.com> <55428037-b8f0-503d-8474-87b06969b044@gmail.com>
 <5EFCAB02.70706@gmail.com> <fecb5498-762f-ad09-0305-47034c0d4bd8@gmail.com>
 <5EFCE5F3.4030904@gmail.com> <4446a7a9-11b3-651f-67bd-3a250b63d86c@gmail.com>
In-Reply-To: <4446a7a9-11b3-651f-67bd-3a250b63d86c@gmail.com>
Subject: Re: [USRP-users] Problems with "uhd::set_thread_priority_safe"
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
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

T24gMDcvMDIvMjAyMCAwMToxMSBBTSwgTmFuZG8gUGVsbGVncmluaSB3cm90ZToKPiBNYXJjdXMg
LAo+IFRoZSBiYXNlIFVidW50dSB2ZXJzaW9uIGhhcyBvbmx5IGJlZW4gMTguMDQgYnV0IGkgcmVj
ZWl2ZWQgdXBkYXRlcyAKPiBkdXJpbmcgLGxldCdzIHNheSB0aGUgcGFzdCA3LTEwIGRheXMsIHRo
ZSBsYXAgdG9wIGlzIGJyYW5kIG5ldyBhbmQgCj4gMTguMDQgaXMgdGhlIG9ubHkgVWJ1bnR1IHZl
cnNpb24gaW5zdGFsbGVkLgo+IEkgZG8gbifDrHQgYmVsaWV2ZSB0YWh0IHRoZSBVU0IgaGFzIHNv
bWV0aGluZyB0byBkbyB3aXRoIHRoZSBwcm9ibGVtICwgCj4gVVNCIGlzIGFjdHVhbGx5IGZhc3Rl
ciB0aGFuIHRoZSBzb2Z0d2FyZSB0YWtpbmcgc2FtcGxlcyBmcm9tIHRoZSAKPiBjaXJjdWxhciBi
dWZmZXIgdXNlZCBieSB0aGUgRXR0dHVzLgpOb3QgYWxsIFVTQjMgY29udHJvbGxlcnMgYXJlIGNy
ZWF0ZWQgZXF1YWwuICBNQU5ZIG9mIHRoZW0gYXJlIHVuYWJsZSB0byAKc3VwcG9ydCAqc3VzdGFp
bmVkKiB0cmFuc2ZlciByYXRlcyBjb21tZW5zdXJhdGUgd2l0aCB0aGUgbm90aW9uYWwKICAgd2ly
ZS1zcGVlZC4gRXR0dXMgYW5kIE51YW5kIGRpc2NvdmVyZWQgdGhpcyBtYW55IHllYXJzIGFnbyB3
aGVuIHRoZXkgCmludHJvZHVjZWQgVVNCMy1iYXNlZCBwcm9kdWN0cy4gIFNvbWUgY29udHJvbGxl
cnMgc2ltcGx5IGNhbm5vdAogICBzdXN0YWluIGxvbmctdGVybSBoaWdoLXNwZWVkIHRyYW5zZmVy
cywgKmRlc3BpdGUqIHRoZSBDUFUvUENJZS9NZW1vcnkgCmFkZXF1YWN5IG9mIHRoZSBzeXN0ZW0s
IHdoaWNoIGlzIHdoeSB3aGVuIHRoZXJlIGFyZSBwZXJmb3JtYW5jZQogICBpc3N1ZXMgb24gQjJ4
eCBsaWtlIHRoaXMsIEkgYW0gb2Z0ZW4gc3VzcGljaW91cyBvZiB0aGUgVVNCMyAKY29udHJvbGxl
ci4gIFRoaXMgc3RpbGwgaGFwcGVucyB0b2RheSwgYW5kIG1vcmUgb2Z0ZW4gb24gbGFwLXRvcHMg
dGhhbiAKZGVza3RvcAogICBzeXN0ZW1zLgoKPiBNeSBpbnRlcnByZXRhdGlvbiBvZiAib3ZlcmZs
b3cgZXJyb3IiIGlzIHRoYXQgdGhlIGJ1ZmZlciBpcyBmdWxsIGFuZCAKPiBzYW1wbGVzIGFyZSBs
b3N0LgpJdCBtZWFucyB0aGF0IHRoZSBzeXN0ZW0gaXNuJ3QgcmVtb3Zpbmcgc2FtcGxlcyBmcm9t
IHRoZSBidWZmZXIgYXMgZmFzdCAKYXMgdGhleSBhcmUgYXJyaXZpbmcsIG9uIGF2ZXJhZ2UsIGxl
YWRpbmcgdG8gZHJvcHBlZCBzYW1wbGVzLiBUaGlzCiAgIGNhbiBiZSBjYXVzZWQgYnkgaW5hZGVx
dWF0ZSBhdHRlbnRpb24gdG8gb3B0aW1pemF0aW9uIGluIHRoZSBzb2Z0d2FyZSAKc2lkZSwgb3Ig
aXQgY2FuIChhcyBJIHNhaWQgYWJvdmUpIGJlIGR1ZSB0byBhIHBvb3ItcGVyZm9ybWluZwogICBV
U0IzIGNvbnRyb2xsZXIsIGluYWRlcXVhdGUgbG9uZy10ZXJtIENQVS9NZW1vcnkvUENJZSBjYXBh
Y2l0eSwgZXRjLgoKCj4gSW5pdGlhbHkgaSB0aG91Z2h0IHRoYXQgdGhlIGZpcnN0IGV2ZW50IHdh
cyB0aGUgb3ZlcmZsb3cgZXJyb3IgYW5kIAo+IGhlbmNlIHRoZSBwcmlvcml0eSB3YXMgdGhlIGRl
c2lnbmVkIGd1aWx0LCBub3cgaSBoYXZlIHNlZW4gIHRoYXQgdGhlIAo+IGZpcnN0IGV2ZW50IHRv
IGhhcHBlbiBpcyB0aGUgZHJvcCBvZiBjcHUgc3BlZWQgYW5kIGF0IDkwME1oeiBpcyBtb3JlIAo+
IHRoYW4gcmVhc29uYWJsZSB0byBleHBlY3QgYW4gb3ZlcmZsb3cgYXQgbW9yZSB0aGFuIDQgR2Jp
dHMvc2Vjb25kIG9uIAo+IHRoZSBVU0IuCj4gSW4gYWRkaXRpb24sIGFuZCBhcyB0cmllZCB0byBl
eHBsYWluIHRvIHlvdSwgaSBzYXcgdGhlIHNhbWUgcnVubmluZyAKPiBwdXJlIENQVSBjYWxjdWxh
dGlvbiBkdXJpbmcgYSBwcmVwZm9sZCBvcGVyYXRpb24gd2l0aCBwcmVzdG8gd2l0aCBhIAo+IGZy
ZXF1ZW5jeSBzdGF5aW5nIGF0IDkwMCBNaHogd2l0aCAxNiB0aHJlYWRzIGVuZ2FnZWQgaW4gcHVy
ZSBjYWxjdWxhdGlvbi4KPiBJIGNvdWxkIG5vdCBmaW5kIGFueSBpbmZvcm1hdGlvbiBvZiB3aGlj
aCBjcHUgaXMgc3VwcG9ydGVkIGJ5IFVidW50dSAKPiB0b2RheSBhbmQgd2l0aCB3aGljaCB2ZXJz
aW9uLCBpIHNhdyB0aGF0IHRoZXJlIGlzIHNvbWUgY29uY2VybiBiZXR3ZWVuIAo+IHRoZSB1c2Vy
cyBhYm91dCB0aGUgY29tYmluYXRpb24gVWJ1bnR1ICsgMTB0aCBnZW5lcmF0aW9uIGludGVsIGNw
dS4KPiBuYW5kbwpDZXJ0YWlubHksIGluYXBwcm9wcmlhdGUgQ1BVIHRocm90dGxpbmcgaXMgdmVy
eSBmYXIgb3V0c2lkZSB0aGUgcHVydmlldyAKb2YgdGhlIFVIRCBkcml2ZXJzLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5n
IGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9t
YWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tCg==

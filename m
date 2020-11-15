Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 45DA82B3502
	for <lists+usrp-users@lfdr.de>; Sun, 15 Nov 2020 14:04:09 +0100 (CET)
Received: from [::1] (port=52030 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1keHhK-0006xk-EA; Sun, 15 Nov 2020 08:04:02 -0500
Received: from mail-ej1-f43.google.com ([209.85.218.43]:39693)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1keHhG-0006sh-U8
 for usrp-users@lists.ettus.com; Sun, 15 Nov 2020 08:03:59 -0500
Received: by mail-ej1-f43.google.com with SMTP id s25so20490316ejy.6
 for <usrp-users@lists.ettus.com>; Sun, 15 Nov 2020 05:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=2XGOvauWA0RngWOu/wykdg2U+dO/d+UvY4NDHwvAOlU=;
 b=TxLIxEPbsSoifAM3TH0N66d6YJ4ugJgRm+sxQ6FdI/nVYu0uslLyrnD9yfVaUhvgoF
 01YHAbTuSBdgUu9QxDXM3TOwSG2oGKrvpYJ/GdDrC3VKggC90maapidz/m9L0HSl1tuS
 /iDspn5p879E9XH7k5FHslNiU9hfnQpl+iW8UwFh6k4lni4NrBChAs7uVOCfodjC2Fng
 dy89Vl8BKxa9IgnHngFHN5QlI8ZokDkoW0ZJXh2Bt11J2VRnLvlt2RGZFYJsnXwTfd7a
 w884RwRM0qXe6/gM28Ptl3Dih1MoQvLab0/CYkvNFES/ZnSScGLtLOpqa/DqfQ1oEsX7
 M9+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=2XGOvauWA0RngWOu/wykdg2U+dO/d+UvY4NDHwvAOlU=;
 b=pGqb5nmJtWpJQi6WvsKuC71ZjBPwTG9aNG16XMFY/FichItpL9ZuFZtnG5+RtYGMWP
 HTIr5LdVelaiNgu6r1XmcUxcOqwclaEBnGhBbaPZRsrc8n3BOrsPQeGjVNrp9CPXs5TJ
 UBzhcipUFDE55s3DZKjUfyXL1+N18jXfNktxes189UAzAxdTF0gU3Zkt8kyXdmM9R2SG
 LTrGcNzHZDzs54g1qlAGiRxmKVgDl1G7BK+4n0MplOI0HgnzzG+rQHjsE9PHtaMyIwJD
 Xn3TLfc37hyftjxXPfc7U6GtHxir8RQd9wAiz6usaynrsIt1Gp0/tAWWI/R7sQ3N4gt4
 FcDQ==
X-Gm-Message-State: AOAM530ReQdborVVxyeoWxGyeevbOuQ2wvfvn+UDwq5Y8av7S20T711n
 UCyYoAKqGDasGKjO3pjg9UvPiFa0a21njieR
X-Google-Smtp-Source: ABdhPJwjQ0FCFtZtJ+Pqi5RlRhcvQMA3Vn6PWNwbIn2EhdwVBvE+SXcW01rKOoAYcFLCFuR2XEDG9w==
X-Received: by 2002:a17:906:2b06:: with SMTP id
 a6mr10932104ejg.283.1605445397441; 
 Sun, 15 Nov 2020 05:03:17 -0800 (PST)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-162-176.hsi.kabel-badenwuerttemberg.de. [46.223.162.176])
 by smtp.gmail.com with ESMTPSA id f25sm8961196edr.53.2020.11.15.05.03.16
 for <usrp-users@lists.ettus.com>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 15 Nov 2020 05:03:16 -0800 (PST)
To: usrp-users@lists.ettus.com
References: <SA0PR19MB4382E98531C1FD25FA6C10FEC6E60@SA0PR19MB4382.namprd19.prod.outlook.com>
 <a55d2f7a3cd1a43082212f48ee45054dfd0b263d.camel@virginia.edu>
Message-ID: <d2c80b2d-3462-3395-9c17-309367d15a3d@ettus.com>
Date: Sun, 15 Nov 2020 14:03:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <a55d2f7a3cd1a43082212f48ee45054dfd0b263d.camel@virginia.edu>
Content-Language: en-US
Subject: Re: [USRP-users] Expected FPGA Compatibility number 36, but got 38
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
From: =?utf-8?q?Marcus_M=C3=BCller_via_USRP-users?=
 <usrp-users@lists.ettus.com>
Reply-To: =?UTF-8?Q?Marcus_M=c3=bcller?= <marcus.mueller@ettus.com>
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

eWVwLCBleGNlbGxlbnQgZGlhZ25vc2lzIQoKc28sIG1ha2Ugc3VyZSB5b3UndmUgaGlkZGVuL3Jl
bW92ZWQgYWxsIFVIRCAzLjE1IGJlZm9yZSByZWJ1aWxkaW5nIEdOVQpSYWRpbyBhZ2FpbnN0IFVI
RCA0LjAuCgpCZXN0IHJlZ2FyZHMsCgpNYXJjdXMKCk9uIDEzLjExLjIwIDIyOjExLCBEdXN0aW4g
V2lkbWFubiB2aWEgVVNSUC11c2VycyB3cm90ZToKPiBIaSBKZXJyaWQsCj4KPiBZb3VyIGdudXJh
ZGlvIGlzIGJ1aWx0IGFnYWluc3QgVUhEIDMuMTUgaW5zdGVhZCBvZiBVSEQgNC4wLiBZb3UnbGwK
PiBwcm9iYWJseSBuZWVkIHRvIHJlYnVpbGQgZ251cmFkaW8gdGFraW5nIGNhcmUgdG8gbWFrZSBz
dXJlIHRvIG1ha2UKPiBzdXJlIGl0IGRvZXNuJ3QgdXNlIDMuMTUgd2hlbiB5b3UgZG8uCj4KPiBX
aXRoIHJlZ2FyZHMgdG8gdGhlIGNvbXBhdCBudW1iZXJzLi4uLgo+Cj4gV2l0aCB1aGQtMy4xNSBJ
IG9ic2VydmVkOgo+IExEX0xJQlJBUllfUEFUSD0vb3B0L3VoZC0zLjE1L2xpYsKgL29wdC91aGQt
My4xNS9iaW4vdWhkX2ltYWdlX2xvYWRlcgo+IC0tYXJncz0idHlwZT14MzAwLGFkZHI9MTkyLjE2
OC40MC4yIiAtLWZwZ2EtcGF0aAo+IC9vcHQvdWhkLTMuMTUvc2hhcmUvdWhkL2ltYWdlcy91c3Jw
X3gzCj4gMTBfZnBnYV9YRy5iaXQKPiAjIHJlc2V0IHRoZSBkZXZpY2UKPiBMRF9MSUJSQVJZX1BB
VEg9L29wdC91aGQtMy4xNS9saWIgL29wdC91aGQtMy4xNS9iaW4vdWhkX3VzcnBfcHJvYmUKPiAy
PiYxIHwgZmdyZXAgIkZQR0EgVmVyc2lvbiIKPiB8IMKgwqB8IMKgwqBGUEdBIFZlcnNpb246IDM2
LjAKPgo+IFdpdGggdWhkLTQuMCBJIG9ic2VydmVkOgo+IExEX0xJQlJBUllfUEFUSD0vb3B0L3Vo
ZC00LjAvbGliICIvb3B0L3VoZC00LjAvYmluL3VoZF9pbWFnZV9sb2FkZXIiCj4gLS1hcmdzPSJ0
eXBlPXgzMDAsYWRkcj0xOTIuMTY4LjQwLjIiIC0tZnBnYS1wYXRoIC9vcHQKPiAvdWhkLTQuMC9z
aGFyZS91aGQvaW1hZ2VzL3VzcnBfeDMxMF9mcGdhX1hHLmJpdAo+ICNyZXNldCB0aGUgZGV2aWNl
Cj4gTERfTElCUkFSWV9QQVRIPS9vcHQvdWhkLTQuMC9saWIgL29wdC91aGQtNC4wL2Jpbi91aGRf
dXNycF9wcm9iZSAyPiYxCj4gfCBmZ3JlcCAiRlBHQSBWZXJzaW9uIgo+IHwgwqDCoHwgwqDCoEZQ
R0EgVmVyc2lvbjogMzguMAo+Cj4gRHVzdGluCj4KPiBPbiBGcmksIDIwMjAtMTEtMTMgYXQgMjA6
NDggKzAwMDAsIEplcnJpZCBQbHltYWxlIHZpYSBVU1JQLXVzZXJzIHdyb3RlOgo+Pgo+PiBIZWxs
byBBbGwsCj4+Cj4+IMKgCj4+Cj4+IFNvIEkgaGF2ZSBiZWVuIHdvcmtpbmcgb24gdHJhbnNpdGlv
bmluZyB0byB1c2luZyBVSEQgNC4wIGZyb20gMy4xNSwKPj4gYW5kIEkgYW0gcnVubmluZyBpbnRv
IGEgcHJvYmxlbS4gSSB3YXMgYWJsZSB0byBnZXQgdGhlIHNvZnR3YXJlCj4+IHVwZGF0ZWQgd2l0
aG91dCBpc3N1ZSwgdGhlbiBJIGRvd25sb2FkZWQgdGhlIG5ldyBGUEdBIGltYWdlcyB1c2luZwo+
PiB0aGUgdWhkX2ltYWdlX2Rvd25sb2FkZXIgYW5kIHVwZGF0ZWQgdGhlIHR3byBVU1JQIFgzMTDi
gJlzIEkgYW0gd29ya2luZwo+PiB3aXRoLiBBZnRlciB0aGF0IEkgdHJpZWQgcnVubmluZyBvbmUg
b2YgbXkgZmxvd2dyYXBocyBpbiBHUkMgYW5kIEkKPj4gZ2V0IHRoZSBmb2xsb3dpbmc6IFJ1bnRp
bWVFcnJvcjogRXhwZWN0ZWQgRlBHQSBDb21wYXRpYmlsaXR5IG51bWJlcgo+PiAzNiwgYnV0IGdv
dCAzOC4gU28gZG8gSSBuZWVkIHRvIHVwZGF0ZSBVSEQgYWdhaW4gdG8gYSBuZXdlciB2ZXJzaW9u
LAo+PiBvciBpcyB0aGVyZSBhIHdheSBJIGNhbiBpbnN0YWxsIHRoZSBvbGRlciB2ZXJzaW9ucyBv
ZiB0aGUgRlBHQSBJbWFnZT8KPj4KPj4gwqAKPj4KPj4gQmVzdCBSZWdhcmRzLAo+Pgo+PiDCoAo+
Pgo+PiBKZXJyaWQKPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPj4gVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20gPG1haWx0bzpVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbT4KPj4gaHR0cDovL2xp
c3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29t
Cj4+IDxodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11c2Vyc19s
aXN0cy5ldHR1cy5jb20+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKPiBVU1JQLXVzZXJzQGxpc3Rz
LmV0dHVzLmNvbQo+IGh0dHA6Ly9saXN0cy5ldHR1cy5jb20vbWFpbG1hbi9saXN0aW5mby91c3Jw
LXVzZXJzX2xpc3RzLmV0dHVzLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KVVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5l
dHR1cy5jb20KaHR0cDovL2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNl
cnNfbGlzdHMuZXR0dXMuY29tCg==

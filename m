Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 060EC18D91A
	for <lists+usrp-users@lfdr.de>; Fri, 20 Mar 2020 21:25:59 +0100 (CET)
Received: from [::1] (port=60952 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jFODK-0004Mz-98; Fri, 20 Mar 2020 16:25:54 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:36311)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <marcus.mueller@ettus.com>)
 id 1jFODG-0004EF-4U
 for usrp-users@lists.ettus.com; Fri, 20 Mar 2020 16:25:50 -0400
Received: by mail-wm1-f65.google.com with SMTP id g62so7820760wme.1
 for <usrp-users@lists.ettus.com>; Fri, 20 Mar 2020 13:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=YyhGJVq904o9S2dd/W3fEwo40DuPATT2qfQnLXK82uI=;
 b=jLZOp48mb3fqm2OwSrU/nzoUiMBMFTUIJeD4gyYl7d6tl+p5t1YUaAYFp2ARwP1uiw
 JtRfHM6WNXCC5F4S/QZ+F6UCEil7uJOTewpUQiDhtI7s+RDwvtbf9FYZp5UoD0rFI7Ok
 Cor4sS3rBBMdD+U65E6xm5Xt6WhlwA+dUH8NglKJdZFuT746Luy3jnGZ30gnh+uWHAqv
 MqitVJs2BkGltVANwqUzhB5CViwbRz/m1zoE7aV7qOy8CicTYIOZ0RTXT8OHer5vlAY/
 outQ2zVgp1oQZFXXimxY/fEcdbIJDM7vqQ7pTx96qtPlAnjliiBdgE4B6dWCZrj3h2rN
 HjfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YyhGJVq904o9S2dd/W3fEwo40DuPATT2qfQnLXK82uI=;
 b=oily2IAYztyeoZ+k96SwlXIDukCAve2BRSrKFgo93noLqJKniP1ZYph2G1DdFTVQtV
 sJr06YNnz9UGxYB4MGgJzfLjos6I5jucyJHdzViFnt1SdK6mxQfVIU3pwa0DnJ7ZyF09
 GuAgg54mXrGb60ZP00v7z69yHeERFVU/jAHHsWMVXmrVT7QGDpyzvSp5A0DIMnoTBhzF
 nxretDxl2MG80njEjZj8KL8sndrf+iigKhIFUN5+PhOPtXmOGN7WzUGrkiLNf0ozmVtF
 lmFYD7q3SsV3lzveOTRrG5IJ27oNPnMGHC9+pu7KPmg/IsOJKwiEt5EN/M1e6T0geSTK
 769Q==
X-Gm-Message-State: ANhLgQ0Y9eb4IoyA+Z/4GqwcnJM6yc84hhllsP8uOfAuXQBgoa4g3WKI
 hTdNrYc4fdVfOWMnGl4ItH+DmMNyVWakkA==
X-Google-Smtp-Source: ADFU+vs/BFlg6KUgeSoPOX+fYMJTonvz65WKpx+g3qJtsZdwo1P83iZyzE8s2ssZk9w7Sz8/KWNxlw==
X-Received: by 2002:a7b:c7d4:: with SMTP id z20mr12202372wmk.48.1584735908775; 
 Fri, 20 Mar 2020 13:25:08 -0700 (PDT)
Received: from [192.168.128.8]
 (HSI-KBW-46-223-163-146.hsi.kabel-badenwuerttemberg.de. [46.223.163.146])
 by smtp.gmail.com with ESMTPSA id r15sm3626988wra.19.2020.03.20.13.25.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Mar 2020 13:25:07 -0700 (PDT)
To: guowang qiu <qiu.guowang007@gmail.com>, usrp-users@lists.ettus.com
References: <CACjmV_k87A4VzxoQm3h4fs8RAP=+3At9isCCzspzO+Awu+fARQ@mail.gmail.com>
 <CACjmV_ktkM=3yLeeWuRs_cjwfj26ey=dvPqKa--boEZVPttJmg@mail.gmail.com>
Message-ID: <8b1309b5-f22e-22e1-7430-af80f669c9b7@ettus.com>
Date: Fri, 20 Mar 2020 21:25:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CACjmV_ktkM=3yLeeWuRs_cjwfj26ey=dvPqKa--boEZVPttJmg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [USRP-users] Using DPDK with AQC107
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
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

SGkgRGFtb24sCgpzb3JyeSwgdGhhdCB3YXNuJ3QgbXkgaW50ZW50aW9uIDooIEJ1dCBsZXQgbWUg
bWFrZSBpdCBiZXR0ZXIhCgpNeSBjdXJyZW50IGd1ZXNzIGlzIHRoYXQgVUhEJ3MgRFBESyB0cmFu
c3BvcnQgZ2V0cyBjb25mdXNlZCBhbmQgdHJpZXMgdG8KdXNlIHRoZSB3cm9uZyBuZXR3b3JrIGNh
cmQuIEx1Y2tpbHksIHdlIGNhbiB0cnkgdG8gd29yayBhcm91bmQgdGhhdDoKCnVoZF9maW5kX2Rl
dmljZXMgLS1hcmdzPXVzZV9kcGRrPTEsYWRkcj0xOTIuMTY4LjYwLjIsZHBka19tYWM9WFlaCgp3
aGVyZSBYWVogd291bGQgYmUgdGhlIHNhbWUgTUFDIHlvdSd2ZSB1c2VkIGluIHlvdXIgdWhkIGNv
bmZpZywgaS5lLiB0aGUKTUFDIGFkZHJlc3Mgb2YgdGhlIHJpZ2h0IG5ldHdvcmsgY2FyZC4gRG9l
cyB0aGF0IGhlbHA/CgpCZXN0IHJlZ2FyZHMsCk1hcmN1cwoKT24gMjAuMDMuMjAgMTc6NTQsIGd1
b3dhbmcgcWl1IHdyb3RlOgo+IEhpIE1hcmN1cywKPiAKPiBUaGFuayB5b3UgZm9yIHlvdXIgcmVw
bHkuIFNpbmNlIHlvdSBmb3JlZ2V0IHRvIGNvcHkgdGhlIGVtYWlsIHRvIG1lLCBJCj4gaGF2ZSB0
byByZXBseSBmcm9tIG15IGxhc3QgZW1haWwuCj4gZHBka19pcHY0IGlzIHNldCB0byAxOTIuMTY4
LjYwLjEvMjQgPGh0dHA6Ly8xOTIuMTY4LjYwLjEvMjQ+LCB0aGUgaXAKPiBhZGRyZXNzIG9mIHBv
cnQgMSBvZiBYMzEwIGlzIHNldCB0byAxOTIuMTY4LjYwLjIuCj4gZHBka19pcHY0ID0gMTkyLjE2
OC42MC4xLzI0IDxodHRwOi8vMTkyLjE2OC42MC4xLzI0Pgo+IAo+IEJlc3QgcmVnYXJkcywKPiBE
YW1vbgo+IAo+IGd1b3dhbmcgcWl1IDxxaXUuZ3Vvd2FuZzAwN0BnbWFpbC5jb20gPG1haWx0bzpx
aXUuZ3Vvd2FuZzAwN0BnbWFpbC5jb20+Pgo+IOS6jjIwMjDlubQz5pyIMTfml6Xlkajkuowg5LiK
5Y2IMzowM+WGmemBk++8mgo+IAo+ICAgICBIaSBldmVyeW9uZSwKPiAKPiAgICAgSSBhbSB0cnlp
bmcgdG8gY29ubmVjdCBteSBub3RlYm9vayB0byBYMzEwIHdpdGggYSB0aHVuZGVyYm9sdCAzIHRv
Cj4gICAgIDEwR05CYXNlLVQgbW9kdWxlLCB3aGljaCBoYXMgYSBBUUMxMDcgY2hpcnAuCj4gICAg
IFRoZSBub3RlYm9vayBjYW4gZmluZCB0aGUgWDMxMCB3aXRob3V0IERQREsuIEJ1dCBpdCBjb3Vs
ZCBub3QgZmluZAo+ICAgICB0aGUgZGV2aWNlIHdpdGggRFBESy4gSXMgdGhlcmUgYW55IHN1Z2dl
c3Rpb24/Cj4gCj4gICAgIFVIRCBWZXJzaW9uOiA0LjAsIHRoZSBtYXN0ZXIgYnJhbmNoLgo+ICAg
ICBEUERLOiAxOC4xMSAoc3VwcG9ydGluZyBBcXVhbnRpYeKAmXMgQVF0aW9uIGZhbWlseSBvZiBj
aGlwc2V0czoKPiAgICAgQVFDMTA3L0FRQzEwOC9BUUMxMDkgKQo+ICAgICBVYnVudHU6IDE4LjA0
Cj4gCj4gICAgIHJvb3RAc2RyOn4jIGRwZGstZGV2YmluZCAtLXN0YXR1cy1kZXYgbmV0Cj4gICAg
IE5ldHdvcmsgZGV2aWNlcyB1c2luZyBEUERLLWNvbXBhdGlibGUgZHJpdmVyCj4gICAgID09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09Cj4gICAgIDAwMDA6M2M6MDAu
MCAnQVFDMTA3IE5CYXNlLVQvSUVFRSA4MDIuM2J6IEV0aGVybmV0IENvbnRyb2xsZXIKPiAgICAg
W0FRdGlvbl0gODdiMScgZHJ2PXZmaW8tcGNpIHVudXNlZD1hdGxhbnRpYwo+ICAgICBOZXR3b3Jr
IGRldmljZXMgdXNpbmcga2VybmVsIGRyaXZlcgo+ICAgICA9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQo+ICAgICAwMDAwOjAwOjFmLjYgJ0V0aGVybmV0IENvbm5lY3Rpb24gKDcp
IEkyMTktTE0gMTViYicgaWY9ZW5vMQo+ICAgICBkcnY9ZTEwMDBlIHVudXNlZD12ZmlvLXBjaSAq
QWN0aXZlKgo+ICAgICBPdGhlciBOZXR3b3JrIGRldmljZXMKPiAgICAgPT09PT09PT09PT09PT09
PT09PT09Cj4gICAgIDAwMDA6NmY6MDAuMCAnRGV2aWNlIDI3MjMnIHVudXNlZD12ZmlvLXBjaQo+
IAo+ICAgICByb290QHNkcjp+IyB1aGRfZmluZF9kZXZpY2VzIC0tYXJncz11c2VfZHBkaz0xLGFk
ZHI9MTkyLjE2OC42MC4yCj4gICAgIFtJTkZPXSBbVUhEXSBsaW51eDsgR05VIEMrKyB2ZXJzaW9u
IDcuNC4wOyBCb29zdF8xMDY1MDE7Cj4gICAgIFVIRF80LjAuMC4wLTUwNS1nMTM5MzU1M2QKPiAg
ICAgRUFMOiBEZXRlY3RlZCAxMiBsY29yZShzKQo+ICAgICBFQUw6IERldGVjdGVkIDEgTlVNQSBu
b2Rlcwo+ICAgICBFQUw6IE11bHRpLXByb2Nlc3Mgc29ja2V0IC92YXIvcnVuL2RwZGsvcnRlL21w
X3NvY2tldAo+ICAgICBFQUw6IE5vIGZyZWUgaHVnZXBhZ2VzIHJlcG9ydGVkIGluIGh1Z2VwYWdl
cy0xMDQ4NTc2a0IKPiAgICAgRUFMOiBQcm9iaW5nIFZGSU8gc3VwcG9ydC4uLgo+ICAgICBFQUw6
IFZGSU8gc3VwcG9ydCBpbml0aWFsaXplZAo+ICAgICBFQUw6IFBDSSBkZXZpY2UgMDAwMDowMDox
Zi42IG9uIE5VTUEgc29ja2V0IC0xCj4gICAgIEVBTDogwqAgSW52YWxpZCBOVU1BIHNvY2tldCwg
ZGVmYXVsdCB0byAwCj4gICAgIEVBTDogwqAgcHJvYmUgZHJpdmVyOiA4MDg2OjE1YmIgbmV0X2Ux
MDAwX2VtCj4gICAgIEVBTDogUENJIGRldmljZSAwMDAwOjNjOjAwLjAgb24gTlVNQSBzb2NrZXQg
LTEKPiAgICAgRUFMOiDCoCBJbnZhbGlkIE5VTUEgc29ja2V0LCBkZWZhdWx0IHRvIDAKPiAgICAg
RUFMOiDCoCBwcm9iZSBkcml2ZXI6IDFkNmE6ODdiMSBuZXRfYXRsYW50aWMKPiAgICAgRUFMOiDC
oCB1c2luZyBJT01NVSB0eXBlIDEgKFR5cGUgMSkKPiAgICAgW0VSUk9SXSBbRFBES10gQ291bGQg
bm90IGZpbmQgcm91dGUgdG8gZGVzdGluYXRpb24gYWRkcmVzcyAxOTIuMTY4LjYwLjIKPiAgICAg
W0VSUk9SXSBbWDMwMF0gWDMwMCBOZXR3b3JrIGRpc2NvdmVyeSBlcnJvciBSdW50aW1lRXJyb3I6
IERQREs6Cj4gICAgIENvdWxkIG5vdCBmaW5kIHJvdXRlIHRvIGRlc3RpbmF0aW9uIGFkZHJlc3Mg
MTkyLjE2OC42MC4yCj4gICAgIE5vIFVIRCBEZXZpY2VzIEZvdW5kCj4gICAgIERldmljZSB3aXRo
IHBvcnRfaWQ9MCBhbHJlYWR5IHN0b3BwZWQKPiAKPiAgICAgQmVzdCByZWdhcmRzLAo+ICAgICBE
YW1vbgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
VVNSUC11c2VycyBtYWlsaW5nIGxpc3QKVVNSUC11c2Vyc0BsaXN0cy5ldHR1cy5jb20KaHR0cDov
L2xpc3RzLmV0dHVzLmNvbS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMu
Y29tCg==
